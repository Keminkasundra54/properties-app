
const hubresolution = {
    property: {
        listing: function () {

            fetch('https://propertyapp.hubresolution.com/api/property/getAll')
                .then(response => response.json())
                .then(data => {
                    // hubresolution.property.listing(data);
                    if (data && data.data && Array.isArray(data.data)) {
                        console.log('Data received:', data.data);
                        createPropertyList(data.data);
                    } else {
                        console.error('Data is empty or invalid:', response);
                    }
                })
                .catch(error => console.error('Error fetching data:', error))


        }
    }
};

function createPropertyList(data) {

    const section = document.createElement('div')
    section.className = 'prop-sec'

    section.innerHTML = `

    <div class="content-wrapper">

        <div class="prop-in">

        </div>
    </div>
`

    // const wrapper = document.createElement('div')
    // wrapper.className = 'wrapper'
    // section.appendChild(wrapper)
    // const div = document.createElement('div');
    // div.className = 'propertyInr'
    // wrapper.appendChild(div);
    // const div2 = document.createElement('div');
    // div2.className = 'mainGroup'
    // div.appendChild(div2);

    document.body.appendChild(section);

    data.forEach(property => {
        // const li = document.createElement('li');
        // li.textContent = `Name: ${property.name}, Address: ${property.address}, Price: ${property.price}`;
        // ul.appendChild(li);

        const newData = document.getElementsByClassName('prop-in')[0]
        const box = document.createElement('div')
        box.className = 'prop-row'

        box.innerHTML = `



        <div class="prop-rowin">
            <div class="pro-left">
                <div class="prop-image">
                    <div class="prop-main" style="background-image: url(../Images/images.jpg);"></div>
                    <div class="prop-imaglist">
                        <div class="prop-imgbox">
                            <div class="prop-img" style="background-image: url(../Images/image-2.webp);">
                            </div>
                        </div>
                        <div class="prop-imgbox">
                            <div class="prop-img" style="background-image: url(../Images/image-2.webp);">
                            </div>
                        </div>
                        <div class="prop-imgbox">
                            <div class="prop-img" style="background-image: url(../Images/image-2.webp);">
                            </div>
                        </div>

                    </div>
                </div>
            </div>
            <div class="prop-rht">
                <div class="prop-rhtin">
                    <div class="prop-details">
                        <div class="prop-title">
                            <h3>${property.name}</h3>
                        </div>
                        <div class="prop-location">
                            <ul>
                                <li><strong>Location:</strong> ${property.address.house_name_number + ', ' + property.address.town + ', ' + property.address.postcode_1}</li>
                                <li><strong>user ID</strong> ${property.userId}</li>
                                <li><strong>Owned by:</strong> ${property.owner}</li>
                                <li><strong>Marketing Status: </strong>${property.marketingStatus}</li>
                                <li><strong>Minimume Tenancy: </strong>${property.minimumeTenancy}</li>
                            </ul>
                        </div>
                        <div class="prop-text">
                            <p>Book Now With 0% DP</p>
                            <p>Instant Discount on ICICI credit card flat 30%</p>
                        </div>
                    </div>
                    <div class="prop-descri">
                        <div class="prop-price">
                            <h3>${property.price_information.price}</h3>
                            <span>${property.price_information.administration_fee}</span>
                        </div>
                        <div class="prop-other">
                            <ul>
                                <li><strong>${property.letType}</strong></li>
                                <li><strong>500+ Users</strong></li>
                            </ul>
                        </div>
                        <div class="prop-link">
                            <a href="#">book now</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>

                `;
        newData.appendChild(box)

    });
}

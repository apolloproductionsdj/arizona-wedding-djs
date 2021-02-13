# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
djs = Dj.create([
    {
        name: “Apollo Productions” ,
        image_url: "http://static1.squarespace.com/static/5680a21305f8e2f75c7ac316/t/56a466571a5203313c32b1ee/1592580261943/"
    },
    {
        name: “The Beat Booth”,
        image_url: "https://www.google.com/search?q=the+beat+booth+az+dj&rlz=1C5CHFA_enUS932US932&source=lnms&tbm=isch&sa=X&ved=2ahUKEwiCuoLyyOXuAhXhJzQIHfDUAOMQ_AUoA3oECAkQBQ&biw=997&bih=656#imgrc=V1dwdS0kuTOyNM"
    }, 
    {
        name: “Push Play Entertainment”,
        image_url: "https://www.google.com/search?q=pushplay+entertainment+az+dj&rlz=1C5CHFA_enUS932US932&source=lnms&tbm=isch&sa=X&ved=2ahUKEwi8ypviyOXuAhX4FTQIHbiCASIQ_AUoAHoECAcQCg&biw=997&bih=656#imgrc=aVTo336r8UkPaM"
    },
    {
        name: “Vox DJ’s“,
        image_url: "https://www.google.com/search?q=vox+dj%27s&rlz=1C5CHFA_enUS932US932&source=lnms&tbm=isch&sa=X&ved=2ahUKEwiMpYCCyeXuAhUHJzQIHU5XDIAQ_AUoA3oECAoQBQ&biw=997&bih=656#imgrc=kWAvcCkAoK82vM"
    },
    # {
    #     name: “Downtown Browne Productions”,
    #     image_url: “https://www.google.com/search?q=dtbpro+dj+az&rlz=1C5CHFA_enUS932US932&source=lnms&tbm=isch&sa=X&ved=2ahUKEwijjNe7yOXuAhVVOH0KHRUGA-YQ_AUoA3oECAcQBQ&biw=1440&bih=732#imgrc=9Hbni5CXM8SxrM”
    # },
    { 
        name: “Tony The Entertainer”,
        image_url: "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.tonytheentertainer.com%2F&psig=AOvVaw1Tb9Yw_ChX7ajlcx8ToSsq&ust=1613261419218000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCIjqs6PJ5e4CFQAAAAAdAAAAABAD"
    }
])

reviews = Review.create([
    {
        title: "Great DJ” Company,
        description: “All of our guests couldn’t stop raving about the awesome job the APDJ’s crew did!“,
        score: 5,
        dj: djs.first
    },
    {
        title: “Best DJ’s out there!”,
        description: “The dance floor was never empty all night”,
        score: 1,
        dj: djs.first 
    }
])



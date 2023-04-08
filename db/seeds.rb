puts "🌱 Seeding spices..."

# Seed your database here
Brand.create([
    {
        name: "Beauty of Joseon"
    },
    {
        name: "Isntree"
    },
    {
        name: "Laneige"
    },
    {
        name: "Skin1004"
    },
    {
        name: "COSRX"
    },
    {
        name: "Frudia"
    },
    {
        name: "Sulwhasoo"
    }
])

Product.create([
    {
        name: "Isntree - Hyaluronic Acid Serum",
        image: "https://cdn.stylevana.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/i/s/isntree-hyaluronic-acid-water-essence-50ml-743.jpg",
        price: 18.99,
        brand_id: 2
    },
    {
        name: "COSRX - Advanced Snail Cream",
        image: "https://cdn.stylevana.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/c/o/cosrx-advanced-snail-92-all-in-one-cream-918.jpg",
        price: 14.91,
        brand_id: 5
    },    
    {
        name: "Laneige - Water leeping Mask",
        image: "https://cdn.stylevana.com/media/catalog/product/cache/1/image/1000x1231/17f82f742ffe127f42dca9de82fb58b1/l/a/laneige-water-sleeping-mask-ex-70ml-421.jpg",
        price: 20.99,
        brand_id: 3
    },
    {
        name: "BEAUTY OF JOSEON - Ginseng Essence",
        image: "https://cdn.stylevana.com/media/catalog/product/cache/1/image/1000x1231/17f82f742ffe127f42dca9de82fb58b1/b/e/beauty-of-joseon-ginseng-essence-water-150ml-5-fl-oz--512.jpg",
        price: 13.50,
        brand_id: 1
    }
])


puts "✅ Done seeding!"

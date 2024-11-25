<?php

namespace Database\Factories;

use App\Models\User;
use App\Models\JobType;
use App\Models\Category;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Job>
 */
class JobFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        $locations = ['Dhaka','Chittagong','Sylhet','Khulna','Barisal','Joypurhat','Mipur','Gagipur','Bogura','Rajshahi','Rongpur','Joshor','Bonani','gulshan','Badda','Hatirjel',
        ];

        $keywords = ['PHP', 'Javascript', 'Phyton', 'Java', 'C++', 'C#', 'Ruby', 'Node js', 'Express js', 'Vue', 'Angular', 'Django', 'Codeigniter', 'Symphony', 'PHP, Laravel, Backend Development', 'JavaScript, React, Frontend Development', 'Python, Django, Machine Learning', 'DevOps, AWS, Docker', 'UI/UX Design, Figma, Sketch'];

        $companys = ['Google', 'Tesla', 'Facebook', 'Meta', 'Microsoft', 'Alibaba', 'Daraz', 'Bkash', 'Nagad'];

        $titles = ['Software Engineer','Web Developer','Industrial Engineer','Mobile App Developer','System Administrator','DevOps Engineer','Cybersecurity Specialist','Database Administrator','IT Support Specialist','Fashion Designer','Financial Accountant','Data Analyst','Business Intelligence Analyst','Big Data Specialist','Fashion Illustrator','Cloud Architect'];

        return [
            'user_id' => User::inRandomOrder()->first()->id,
            'category_id' => Category::inRandomOrder()->first()->id,
            'job_type_id' => JobType::inRandomOrder()->first()->id,
            'title' => fake()->randomElement($titles),
            'vacancy' => fake()->numberBetween(1, 10),
            'salary' => fake()->numberBetween(10, 80) . 'k',
            'location' => fake()->randomElement($locations),
            'description' => fake()->sentence(30),
            'benefits' => fake()->sentence(30),
            'responsibility' => fake()->sentence(30),
            'keywords' => fake()->randomElement($keywords),
            'experience' => fake()->numberBetween(1, 10),
            'company_name' => fake()->randomElement($companys),
            'company_location' => fake()->address,
            'company_website' => fake()->domainName,
            'status' => fake()->randomElement([1]),
            'isFeatured' => fake()->boolean,
        ];
    }
}

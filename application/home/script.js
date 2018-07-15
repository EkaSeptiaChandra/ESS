$(document).ready(function () {

    var config = {
        type: 'doughnut',
        data: {
            datasets: [{
                    data: [
                        randomScalingFactor(),
                        randomScalingFactor(),
                        randomScalingFactor(),
                        randomScalingFactor(),
                        randomScalingFactor(),
                        randomScalingFactor(),
                        randomScalingFactor(),
                        randomScalingFactor(),
                        randomScalingFactor(),
                        randomScalingFactor(),
                        randomScalingFactor(),
                        randomScalingFactor(),
                        randomScalingFactor(),
                        randomScalingFactor(),
                        randomScalingFactor(),
                    ],
                    backgroundColor: [
                        window.chartColors.navy,
                        window.chartColors.barnred,
                        window.chartColors.yellow,
                        window.chartColors.orange,
                        window.chartColors.denim,
                        window.chartColors.blue,
                        window.chartColors.red,
                        window.chartColors.forest,
                        window.chartColors.black,
                        window.chartColors.green,
                        window.chartColors.fern,
                        window.chartColors.carmine,
                        window.chartColors.raspberry,
                        window.chartColors.sangria,
                        window.chartColors.pineapple,
                    ],
                    label: 'Dataset 1'
                }],
            labels: [
                'Red',
                'Orange',
                'Yellow',
                'Green',
                'Blue'
            ]
        },
        options: {
            responsive: true
        }
    };

    window.onload = function () {
        var ctx = document.getElementById('chart-area').getContext('2d');
        window.myPie = new Chart(ctx, config);
    };

});
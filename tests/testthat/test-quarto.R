test_that("`read_quarto_chunk_data()` works as expected", {

  skip_if_not_installed(pkg = "RcppTOML")

  expect_snapshot_value(read_quarto_chunk_data(path = "quarto_chunk_data.toml"),
                        style = "json2")
})

test_that("`quarto_chunks()` works as expected", {

  skip_if_not_installed(pkg = "RcppTOML")
  skip_if_not_installed(pkg = "fokus")

  expect_snapshot_value(read_quarto_chunk_data(path = "quarto_chunk_data.toml") |> quarto_chunks(),
                        style = "json2")
})

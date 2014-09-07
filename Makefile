all: honey-download

clean:
	rm -rf honey usr

honey-download: clean
	bash update_honey.sh

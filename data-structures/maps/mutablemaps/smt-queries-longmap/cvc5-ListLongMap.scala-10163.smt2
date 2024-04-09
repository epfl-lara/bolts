; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!119782 () Bool)

(assert start!119782)

(declare-fun b!1394849 () Bool)

(declare-fun e!789712 () Bool)

(declare-fun e!789713 () Bool)

(assert (=> b!1394849 (= e!789712 (not e!789713))))

(declare-fun res!934371 () Bool)

(assert (=> b!1394849 (=> res!934371 e!789713)))

(declare-datatypes ((SeekEntryResult!10384 0))(
  ( (MissingZero!10384 (index!43906 (_ BitVec 32))) (Found!10384 (index!43907 (_ BitVec 32))) (Intermediate!10384 (undefined!11196 Bool) (index!43908 (_ BitVec 32)) (x!125575 (_ BitVec 32))) (Undefined!10384) (MissingVacant!10384 (index!43909 (_ BitVec 32))) )
))
(declare-fun lt!612733 () SeekEntryResult!10384)

(assert (=> b!1394849 (= res!934371 (or (not (is-Intermediate!10384 lt!612733)) (undefined!11196 lt!612733)))))

(declare-fun e!789710 () Bool)

(assert (=> b!1394849 e!789710))

(declare-fun res!934374 () Bool)

(assert (=> b!1394849 (=> (not res!934374) (not e!789710))))

(declare-datatypes ((array!95382 0))(
  ( (array!95383 (arr!46045 (Array (_ BitVec 32) (_ BitVec 64))) (size!46596 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95382)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95382 (_ BitVec 32)) Bool)

(assert (=> b!1394849 (= res!934374 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46722 0))(
  ( (Unit!46723) )
))
(declare-fun lt!612732 () Unit!46722)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95382 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46722)

(assert (=> b!1394849 (= lt!612732 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95382 (_ BitVec 32)) SeekEntryResult!10384)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1394849 (= lt!612733 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46045 a!2901) j!112) mask!2840) (select (arr!46045 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1394850 () Bool)

(declare-fun res!934372 () Bool)

(assert (=> b!1394850 (=> (not res!934372) (not e!789712))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1394850 (= res!934372 (validKeyInArray!0 (select (arr!46045 a!2901) i!1037)))))

(declare-fun b!1394851 () Bool)

(declare-fun res!934367 () Bool)

(assert (=> b!1394851 (=> (not res!934367) (not e!789712))))

(assert (=> b!1394851 (= res!934367 (validKeyInArray!0 (select (arr!46045 a!2901) j!112)))))

(declare-fun b!1394852 () Bool)

(declare-fun res!934369 () Bool)

(assert (=> b!1394852 (=> (not res!934369) (not e!789712))))

(declare-datatypes ((List!32744 0))(
  ( (Nil!32741) (Cons!32740 (h!33973 (_ BitVec 64)) (t!47445 List!32744)) )
))
(declare-fun arrayNoDuplicates!0 (array!95382 (_ BitVec 32) List!32744) Bool)

(assert (=> b!1394852 (= res!934369 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32741))))

(declare-fun b!1394853 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95382 (_ BitVec 32)) SeekEntryResult!10384)

(assert (=> b!1394853 (= e!789710 (= (seekEntryOrOpen!0 (select (arr!46045 a!2901) j!112) a!2901 mask!2840) (Found!10384 j!112)))))

(declare-fun b!1394854 () Bool)

(declare-fun res!934366 () Bool)

(assert (=> b!1394854 (=> (not res!934366) (not e!789712))))

(assert (=> b!1394854 (= res!934366 (and (= (size!46596 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46596 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46596 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1394855 () Bool)

(declare-fun res!934370 () Bool)

(assert (=> b!1394855 (=> res!934370 e!789713)))

(assert (=> b!1394855 (= res!934370 (= lt!612733 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46045 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46045 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!95383 (store (arr!46045 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46596 a!2901)) mask!2840)))))

(declare-fun b!1394856 () Bool)

(assert (=> b!1394856 (= e!789713 (or (bvslt mask!2840 #b00000000000000000000000000000000) (bvsle mask!2840 #b00111111111111111111111111111111)))))

(declare-fun b!1394857 () Bool)

(declare-fun res!934368 () Bool)

(assert (=> b!1394857 (=> (not res!934368) (not e!789712))))

(assert (=> b!1394857 (= res!934368 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun res!934373 () Bool)

(assert (=> start!119782 (=> (not res!934373) (not e!789712))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119782 (= res!934373 (validMask!0 mask!2840))))

(assert (=> start!119782 e!789712))

(assert (=> start!119782 true))

(declare-fun array_inv!34990 (array!95382) Bool)

(assert (=> start!119782 (array_inv!34990 a!2901)))

(assert (= (and start!119782 res!934373) b!1394854))

(assert (= (and b!1394854 res!934366) b!1394850))

(assert (= (and b!1394850 res!934372) b!1394851))

(assert (= (and b!1394851 res!934367) b!1394857))

(assert (= (and b!1394857 res!934368) b!1394852))

(assert (= (and b!1394852 res!934369) b!1394849))

(assert (= (and b!1394849 res!934374) b!1394853))

(assert (= (and b!1394849 (not res!934371)) b!1394855))

(assert (= (and b!1394855 (not res!934370)) b!1394856))

(declare-fun m!1281413 () Bool)

(assert (=> b!1394850 m!1281413))

(assert (=> b!1394850 m!1281413))

(declare-fun m!1281415 () Bool)

(assert (=> b!1394850 m!1281415))

(declare-fun m!1281417 () Bool)

(assert (=> start!119782 m!1281417))

(declare-fun m!1281419 () Bool)

(assert (=> start!119782 m!1281419))

(declare-fun m!1281421 () Bool)

(assert (=> b!1394857 m!1281421))

(declare-fun m!1281423 () Bool)

(assert (=> b!1394852 m!1281423))

(declare-fun m!1281425 () Bool)

(assert (=> b!1394855 m!1281425))

(declare-fun m!1281427 () Bool)

(assert (=> b!1394855 m!1281427))

(assert (=> b!1394855 m!1281427))

(declare-fun m!1281429 () Bool)

(assert (=> b!1394855 m!1281429))

(assert (=> b!1394855 m!1281429))

(assert (=> b!1394855 m!1281427))

(declare-fun m!1281431 () Bool)

(assert (=> b!1394855 m!1281431))

(declare-fun m!1281433 () Bool)

(assert (=> b!1394851 m!1281433))

(assert (=> b!1394851 m!1281433))

(declare-fun m!1281435 () Bool)

(assert (=> b!1394851 m!1281435))

(assert (=> b!1394853 m!1281433))

(assert (=> b!1394853 m!1281433))

(declare-fun m!1281437 () Bool)

(assert (=> b!1394853 m!1281437))

(assert (=> b!1394849 m!1281433))

(declare-fun m!1281439 () Bool)

(assert (=> b!1394849 m!1281439))

(assert (=> b!1394849 m!1281433))

(declare-fun m!1281441 () Bool)

(assert (=> b!1394849 m!1281441))

(assert (=> b!1394849 m!1281439))

(assert (=> b!1394849 m!1281433))

(declare-fun m!1281443 () Bool)

(assert (=> b!1394849 m!1281443))

(declare-fun m!1281445 () Bool)

(assert (=> b!1394849 m!1281445))

(push 1)

(assert (not b!1394851))

(assert (not start!119782))

(assert (not b!1394853))

(assert (not b!1394850))

(assert (not b!1394857))

(assert (not b!1394849))

(assert (not b!1394855))

(assert (not b!1394852))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1394969 () Bool)

(declare-fun e!789775 () SeekEntryResult!10384)

(declare-fun lt!612773 () SeekEntryResult!10384)

(assert (=> b!1394969 (= e!789775 (Found!10384 (index!43908 lt!612773)))))

(declare-fun b!1394970 () Bool)

(declare-fun e!789776 () SeekEntryResult!10384)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95382 (_ BitVec 32)) SeekEntryResult!10384)

(assert (=> b!1394970 (= e!789776 (seekKeyOrZeroReturnVacant!0 (x!125575 lt!612773) (index!43908 lt!612773) (index!43908 lt!612773) (select (arr!46045 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1394971 () Bool)

(declare-fun e!789774 () SeekEntryResult!10384)

(assert (=> b!1394971 (= e!789774 Undefined!10384)))

(declare-fun b!1394972 () Bool)

(assert (=> b!1394972 (= e!789774 e!789775)))

(declare-fun lt!612774 () (_ BitVec 64))

(assert (=> b!1394972 (= lt!612774 (select (arr!46045 a!2901) (index!43908 lt!612773)))))

(declare-fun c!129719 () Bool)

(assert (=> b!1394972 (= c!129719 (= lt!612774 (select (arr!46045 a!2901) j!112)))))

(declare-fun b!1394973 () Bool)

(declare-fun c!129717 () Bool)

(assert (=> b!1394973 (= c!129717 (= lt!612774 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1394973 (= e!789775 e!789776)))

(declare-fun b!1394974 () Bool)

(assert (=> b!1394974 (= e!789776 (MissingZero!10384 (index!43908 lt!612773)))))

(declare-fun d!150573 () Bool)

(declare-fun lt!612775 () SeekEntryResult!10384)

(assert (=> d!150573 (and (or (is-Undefined!10384 lt!612775) (not (is-Found!10384 lt!612775)) (and (bvsge (index!43907 lt!612775) #b00000000000000000000000000000000) (bvslt (index!43907 lt!612775) (size!46596 a!2901)))) (or (is-Undefined!10384 lt!612775) (is-Found!10384 lt!612775) (not (is-MissingZero!10384 lt!612775)) (and (bvsge (index!43906 lt!612775) #b00000000000000000000000000000000) (bvslt (index!43906 lt!612775) (size!46596 a!2901)))) (or (is-Undefined!10384 lt!612775) (is-Found!10384 lt!612775) (is-MissingZero!10384 lt!612775) (not (is-MissingVacant!10384 lt!612775)) (and (bvsge (index!43909 lt!612775) #b00000000000000000000000000000000) (bvslt (index!43909 lt!612775) (size!46596 a!2901)))) (or (is-Undefined!10384 lt!612775) (ite (is-Found!10384 lt!612775) (= (select (arr!46045 a!2901) (index!43907 lt!612775)) (select (arr!46045 a!2901) j!112)) (ite (is-MissingZero!10384 lt!612775) (= (select (arr!46045 a!2901) (index!43906 lt!612775)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!10384 lt!612775) (= (select (arr!46045 a!2901) (index!43909 lt!612775)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!150573 (= lt!612775 e!789774)))

(declare-fun c!129718 () Bool)

(assert (=> d!150573 (= c!129718 (and (is-Intermediate!10384 lt!612773) (undefined!11196 lt!612773)))))

(assert (=> d!150573 (= lt!612773 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46045 a!2901) j!112) mask!2840) (select (arr!46045 a!2901) j!112) a!2901 mask!2840))))

(assert (=> d!150573 (validMask!0 mask!2840)))

(assert (=> d!150573 (= (seekEntryOrOpen!0 (select (arr!46045 a!2901) j!112) a!2901 mask!2840) lt!612775)))

(assert (= (and d!150573 c!129718) b!1394971))

(assert (= (and d!150573 (not c!129718)) b!1394972))

(assert (= (and b!1394972 c!129719) b!1394969))

(assert (= (and b!1394972 (not c!129719)) b!1394973))

(assert (= (and b!1394973 c!129717) b!1394974))

(assert (= (and b!1394973 (not c!129717)) b!1394970))

(assert (=> b!1394970 m!1281433))

(declare-fun m!1281541 () Bool)

(assert (=> b!1394970 m!1281541))

(declare-fun m!1281543 () Bool)

(assert (=> b!1394972 m!1281543))

(assert (=> d!150573 m!1281439))

(assert (=> d!150573 m!1281433))

(assert (=> d!150573 m!1281443))

(declare-fun m!1281545 () Bool)

(assert (=> d!150573 m!1281545))

(declare-fun m!1281547 () Bool)

(assert (=> d!150573 m!1281547))

(assert (=> d!150573 m!1281417))

(declare-fun m!1281549 () Bool)

(assert (=> d!150573 m!1281549))

(assert (=> d!150573 m!1281433))

(assert (=> d!150573 m!1281439))

(assert (=> b!1394853 d!150573))

(declare-fun d!150585 () Bool)

(assert (=> d!150585 (= (validMask!0 mask!2840) (and (or (= mask!2840 #b00000000000000000000000000000111) (= mask!2840 #b00000000000000000000000000001111) (= mask!2840 #b00000000000000000000000000011111) (= mask!2840 #b00000000000000000000000000111111) (= mask!2840 #b00000000000000000000000001111111) (= mask!2840 #b00000000000000000000000011111111) (= mask!2840 #b00000000000000000000000111111111) (= mask!2840 #b00000000000000000000001111111111) (= mask!2840 #b00000000000000000000011111111111) (= mask!2840 #b00000000000000000000111111111111) (= mask!2840 #b00000000000000000001111111111111) (= mask!2840 #b00000000000000000011111111111111) (= mask!2840 #b00000000000000000111111111111111) (= mask!2840 #b00000000000000001111111111111111) (= mask!2840 #b00000000000000011111111111111111) (= mask!2840 #b00000000000000111111111111111111) (= mask!2840 #b00000000000001111111111111111111) (= mask!2840 #b00000000000011111111111111111111) (= mask!2840 #b00000000000111111111111111111111) (= mask!2840 #b00000000001111111111111111111111) (= mask!2840 #b00000000011111111111111111111111) (= mask!2840 #b00000000111111111111111111111111) (= mask!2840 #b00000001111111111111111111111111) (= mask!2840 #b00000011111111111111111111111111) (= mask!2840 #b00000111111111111111111111111111) (= mask!2840 #b00001111111111111111111111111111) (= mask!2840 #b00011111111111111111111111111111) (= mask!2840 #b00111111111111111111111111111111)) (bvsle mask!2840 #b00111111111111111111111111111111)))))

(assert (=> start!119782 d!150585))

(declare-fun d!150589 () Bool)

(assert (=> d!150589 (= (array_inv!34990 a!2901) (bvsge (size!46596 a!2901) #b00000000000000000000000000000000))))

(assert (=> start!119782 d!150589))

(declare-fun bm!66810 () Bool)

(declare-fun call!66813 () Bool)

(assert (=> bm!66810 (= call!66813 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!112 #b00000000000000000000000000000001) a!2901 mask!2840))))

(declare-fun b!1395022 () Bool)

(declare-fun e!789807 () Bool)

(assert (=> b!1395022 (= e!789807 call!66813)))

(declare-fun d!150591 () Bool)

(declare-fun res!934464 () Bool)

(declare-fun e!789809 () Bool)

(assert (=> d!150591 (=> res!934464 e!789809)))

(assert (=> d!150591 (= res!934464 (bvsge j!112 (size!46596 a!2901)))))

(assert (=> d!150591 (= (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840) e!789809)))

(declare-fun b!1395023 () Bool)

(declare-fun e!789808 () Bool)

(assert (=> b!1395023 (= e!789808 call!66813)))

(declare-fun b!1395024 () Bool)

(assert (=> b!1395024 (= e!789808 e!789807)))

(declare-fun lt!612805 () (_ BitVec 64))

(assert (=> b!1395024 (= lt!612805 (select (arr!46045 a!2901) j!112))))

(declare-fun lt!612806 () Unit!46722)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!95382 (_ BitVec 64) (_ BitVec 32)) Unit!46722)

(assert (=> b!1395024 (= lt!612806 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2901 lt!612805 j!112))))

(declare-fun arrayContainsKey!0 (array!95382 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1395024 (arrayContainsKey!0 a!2901 lt!612805 #b00000000000000000000000000000000)))

(declare-fun lt!612804 () Unit!46722)

(assert (=> b!1395024 (= lt!612804 lt!612806)))

(declare-fun res!934465 () Bool)

(assert (=> b!1395024 (= res!934465 (= (seekEntryOrOpen!0 (select (arr!46045 a!2901) j!112) a!2901 mask!2840) (Found!10384 j!112)))))

(assert (=> b!1395024 (=> (not res!934465) (not e!789807))))

(declare-fun b!1395025 () Bool)

(assert (=> b!1395025 (= e!789809 e!789808)))

(declare-fun c!129734 () Bool)

(assert (=> b!1395025 (= c!129734 (validKeyInArray!0 (select (arr!46045 a!2901) j!112)))))

(assert (= (and d!150591 (not res!934464)) b!1395025))

(assert (= (and b!1395025 c!129734) b!1395024))

(assert (= (and b!1395025 (not c!129734)) b!1395023))

(assert (= (and b!1395024 res!934465) b!1395022))

(assert (= (or b!1395022 b!1395023) bm!66810))

(declare-fun m!1281567 () Bool)

(assert (=> bm!66810 m!1281567))

(assert (=> b!1395024 m!1281433))

(declare-fun m!1281569 () Bool)

(assert (=> b!1395024 m!1281569))

(declare-fun m!1281571 () Bool)

(assert (=> b!1395024 m!1281571))

(assert (=> b!1395024 m!1281433))

(assert (=> b!1395024 m!1281437))

(assert (=> b!1395025 m!1281433))

(assert (=> b!1395025 m!1281433))

(assert (=> b!1395025 m!1281435))

(assert (=> b!1394849 d!150591))

(declare-fun d!150597 () Bool)

(assert (=> d!150597 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840)))

(declare-fun lt!612811 () Unit!46722)

(declare-fun choose!38 (array!95382 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46722)

(assert (=> d!150597 (= lt!612811 (choose!38 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> d!150597 (validMask!0 mask!2840)))

(assert (=> d!150597 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112) lt!612811)))

(declare-fun bs!40597 () Bool)

(assert (= bs!40597 d!150597))

(assert (=> bs!40597 m!1281445))

(declare-fun m!1281573 () Bool)

(assert (=> bs!40597 m!1281573))

(assert (=> bs!40597 m!1281417))

(assert (=> b!1394849 d!150597))

(declare-fun b!1395099 () Bool)

(declare-fun e!789852 () SeekEntryResult!10384)

(assert (=> b!1395099 (= e!789852 (Intermediate!10384 true (toIndex!0 (select (arr!46045 a!2901) j!112) mask!2840) #b00000000000000000000000000000000))))

(declare-fun b!1395100 () Bool)

(declare-fun lt!612837 () SeekEntryResult!10384)

(assert (=> b!1395100 (and (bvsge (index!43908 lt!612837) #b00000000000000000000000000000000) (bvslt (index!43908 lt!612837) (size!46596 a!2901)))))

(declare-fun res!934489 () Bool)

(assert (=> b!1395100 (= res!934489 (= (select (arr!46045 a!2901) (index!43908 lt!612837)) (select (arr!46045 a!2901) j!112)))))

(declare-fun e!789855 () Bool)

(assert (=> b!1395100 (=> res!934489 e!789855)))

(declare-fun e!789854 () Bool)

(assert (=> b!1395100 (= e!789854 e!789855)))

(declare-fun d!150601 () Bool)

(declare-fun e!789856 () Bool)

(assert (=> d!150601 e!789856))

(declare-fun c!129761 () Bool)

(assert (=> d!150601 (= c!129761 (and (is-Intermediate!10384 lt!612837) (undefined!11196 lt!612837)))))

(assert (=> d!150601 (= lt!612837 e!789852)))

(declare-fun c!129762 () Bool)

(assert (=> d!150601 (= c!129762 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!612838 () (_ BitVec 64))

(assert (=> d!150601 (= lt!612838 (select (arr!46045 a!2901) (toIndex!0 (select (arr!46045 a!2901) j!112) mask!2840)))))

(assert (=> d!150601 (validMask!0 mask!2840)))

(assert (=> d!150601 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46045 a!2901) j!112) mask!2840) (select (arr!46045 a!2901) j!112) a!2901 mask!2840) lt!612837)))

(declare-fun b!1395101 () Bool)

(assert (=> b!1395101 (and (bvsge (index!43908 lt!612837) #b00000000000000000000000000000000) (bvslt (index!43908 lt!612837) (size!46596 a!2901)))))

(declare-fun res!934488 () Bool)

(assert (=> b!1395101 (= res!934488 (= (select (arr!46045 a!2901) (index!43908 lt!612837)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1395101 (=> res!934488 e!789855)))

(declare-fun e!789853 () SeekEntryResult!10384)

(declare-fun b!1395102 () Bool)

(assert (=> b!1395102 (= e!789853 (Intermediate!10384 false (toIndex!0 (select (arr!46045 a!2901) j!112) mask!2840) #b00000000000000000000000000000000))))

(declare-fun b!1395103 () Bool)

(assert (=> b!1395103 (and (bvsge (index!43908 lt!612837) #b00000000000000000000000000000000) (bvslt (index!43908 lt!612837) (size!46596 a!2901)))))

(assert (=> b!1395103 (= e!789855 (= (select (arr!46045 a!2901) (index!43908 lt!612837)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1395104 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1395104 (= e!789853 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!46045 a!2901) j!112) mask!2840) #b00000000000000000000000000000000 mask!2840) (select (arr!46045 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1395105 () Bool)

(assert (=> b!1395105 (= e!789856 e!789854)))

(declare-fun res!934490 () Bool)

(assert (=> b!1395105 (= res!934490 (and (is-Intermediate!10384 lt!612837) (not (undefined!11196 lt!612837)) (bvslt (x!125575 lt!612837) #b01111111111111111111111111111110) (bvsge (x!125575 lt!612837) #b00000000000000000000000000000000) (bvsge (x!125575 lt!612837) #b00000000000000000000000000000000)))))

(assert (=> b!1395105 (=> (not res!934490) (not e!789854))))

(declare-fun b!1395106 () Bool)

(assert (=> b!1395106 (= e!789856 (bvsge (x!125575 lt!612837) #b01111111111111111111111111111110))))

(declare-fun b!1395107 () Bool)

(assert (=> b!1395107 (= e!789852 e!789853)))

(declare-fun c!129763 () Bool)

(assert (=> b!1395107 (= c!129763 (or (= lt!612838 (select (arr!46045 a!2901) j!112)) (= (bvadd lt!612838 lt!612838) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!150601 c!129762) b!1395099))

(assert (= (and d!150601 (not c!129762)) b!1395107))

(assert (= (and b!1395107 c!129763) b!1395102))

(assert (= (and b!1395107 (not c!129763)) b!1395104))

(assert (= (and d!150601 c!129761) b!1395106))

(assert (= (and d!150601 (not c!129761)) b!1395105))

(assert (= (and b!1395105 res!934490) b!1395100))

(assert (= (and b!1395100 (not res!934489)) b!1395101))

(assert (= (and b!1395101 (not res!934488)) b!1395103))

(declare-fun m!1281593 () Bool)

(assert (=> b!1395103 m!1281593))

(assert (=> b!1395104 m!1281439))

(declare-fun m!1281595 () Bool)

(assert (=> b!1395104 m!1281595))

(assert (=> b!1395104 m!1281595))

(assert (=> b!1395104 m!1281433))

(declare-fun m!1281597 () Bool)

(assert (=> b!1395104 m!1281597))

(assert (=> b!1395100 m!1281593))

(assert (=> d!150601 m!1281439))

(declare-fun m!1281599 () Bool)

(assert (=> d!150601 m!1281599))

(assert (=> d!150601 m!1281417))

(assert (=> b!1395101 m!1281593))

(assert (=> b!1394849 d!150601))

(declare-fun d!150615 () Bool)

(declare-fun lt!612851 () (_ BitVec 32))

(declare-fun lt!612850 () (_ BitVec 32))

(assert (=> d!150615 (= lt!612851 (bvmul (bvxor lt!612850 (bvlshr lt!612850 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!150615 (= lt!612850 ((_ extract 31 0) (bvand (bvxor (select (arr!46045 a!2901) j!112) (bvlshr (select (arr!46045 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!150615 (and (bvsge mask!2840 #b00000000000000000000000000000000) (let ((res!934491 (let ((h!33978 ((_ extract 31 0) (bvand (bvxor (select (arr!46045 a!2901) j!112) (bvlshr (select (arr!46045 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!125583 (bvmul (bvxor h!33978 (bvlshr h!33978 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!125583 (bvlshr x!125583 #b00000000000000000000000000001101)) mask!2840))))) (and (bvslt res!934491 (bvadd mask!2840 #b00000000000000000000000000000001)) (bvsge res!934491 #b00000000000000000000000000000000))))))

(assert (=> d!150615 (= (toIndex!0 (select (arr!46045 a!2901) j!112) mask!2840) (bvand (bvxor lt!612851 (bvlshr lt!612851 #b00000000000000000000000000001101)) mask!2840))))

(assert (=> b!1394849 d!150615))

(declare-fun e!789869 () SeekEntryResult!10384)

(declare-fun b!1395126 () Bool)

(assert (=> b!1395126 (= e!789869 (Intermediate!10384 true (toIndex!0 (select (store (arr!46045 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) #b00000000000000000000000000000000))))

(declare-fun b!1395127 () Bool)

(declare-fun lt!612852 () SeekEntryResult!10384)

(assert (=> b!1395127 (and (bvsge (index!43908 lt!612852) #b00000000000000000000000000000000) (bvslt (index!43908 lt!612852) (size!46596 (array!95383 (store (arr!46045 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46596 a!2901)))))))

(declare-fun res!934501 () Bool)

(assert (=> b!1395127 (= res!934501 (= (select (arr!46045 (array!95383 (store (arr!46045 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46596 a!2901))) (index!43908 lt!612852)) (select (store (arr!46045 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112)))))

(declare-fun e!789872 () Bool)

(assert (=> b!1395127 (=> res!934501 e!789872)))

(declare-fun e!789871 () Bool)

(assert (=> b!1395127 (= e!789871 e!789872)))

(declare-fun d!150623 () Bool)

(declare-fun e!789873 () Bool)

(assert (=> d!150623 e!789873))

(declare-fun c!129769 () Bool)

(assert (=> d!150623 (= c!129769 (and (is-Intermediate!10384 lt!612852) (undefined!11196 lt!612852)))))

(assert (=> d!150623 (= lt!612852 e!789869)))

(declare-fun c!129770 () Bool)

(assert (=> d!150623 (= c!129770 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!612853 () (_ BitVec 64))

(assert (=> d!150623 (= lt!612853 (select (arr!46045 (array!95383 (store (arr!46045 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46596 a!2901))) (toIndex!0 (select (store (arr!46045 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840)))))

(assert (=> d!150623 (validMask!0 mask!2840)))

(assert (=> d!150623 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46045 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46045 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!95383 (store (arr!46045 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46596 a!2901)) mask!2840) lt!612852)))

(declare-fun b!1395128 () Bool)

(assert (=> b!1395128 (and (bvsge (index!43908 lt!612852) #b00000000000000000000000000000000) (bvslt (index!43908 lt!612852) (size!46596 (array!95383 (store (arr!46045 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46596 a!2901)))))))

(declare-fun res!934500 () Bool)

(assert (=> b!1395128 (= res!934500 (= (select (arr!46045 (array!95383 (store (arr!46045 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46596 a!2901))) (index!43908 lt!612852)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1395128 (=> res!934500 e!789872)))

(declare-fun b!1395129 () Bool)

(declare-fun e!789870 () SeekEntryResult!10384)

(assert (=> b!1395129 (= e!789870 (Intermediate!10384 false (toIndex!0 (select (store (arr!46045 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) #b00000000000000000000000000000000))))

(declare-fun b!1395130 () Bool)

(assert (=> b!1395130 (and (bvsge (index!43908 lt!612852) #b00000000000000000000000000000000) (bvslt (index!43908 lt!612852) (size!46596 (array!95383 (store (arr!46045 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46596 a!2901)))))))

(assert (=> b!1395130 (= e!789872 (= (select (arr!46045 (array!95383 (store (arr!46045 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46596 a!2901))) (index!43908 lt!612852)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1395131 () Bool)

(assert (=> b!1395131 (= e!789870 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (store (arr!46045 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) #b00000000000000000000000000000000 mask!2840) (select (store (arr!46045 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!95383 (store (arr!46045 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46596 a!2901)) mask!2840))))

(declare-fun b!1395132 () Bool)

(assert (=> b!1395132 (= e!789873 e!789871)))

(declare-fun res!934502 () Bool)

(assert (=> b!1395132 (= res!934502 (and (is-Intermediate!10384 lt!612852) (not (undefined!11196 lt!612852)) (bvslt (x!125575 lt!612852) #b01111111111111111111111111111110) (bvsge (x!125575 lt!612852) #b00000000000000000000000000000000) (bvsge (x!125575 lt!612852) #b00000000000000000000000000000000)))))

(assert (=> b!1395132 (=> (not res!934502) (not e!789871))))

(declare-fun b!1395133 () Bool)

(assert (=> b!1395133 (= e!789873 (bvsge (x!125575 lt!612852) #b01111111111111111111111111111110))))

(declare-fun b!1395134 () Bool)

(assert (=> b!1395134 (= e!789869 e!789870)))

(declare-fun c!129771 () Bool)

(assert (=> b!1395134 (= c!129771 (or (= lt!612853 (select (store (arr!46045 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112)) (= (bvadd lt!612853 lt!612853) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!150623 c!129770) b!1395126))

(assert (= (and d!150623 (not c!129770)) b!1395134))

(assert (= (and b!1395134 c!129771) b!1395129))

(assert (= (and b!1395134 (not c!129771)) b!1395131))

(assert (= (and d!150623 c!129769) b!1395133))

(assert (= (and d!150623 (not c!129769)) b!1395132))

(assert (= (and b!1395132 res!934502) b!1395127))

(assert (= (and b!1395127 (not res!934501)) b!1395128))

(assert (= (and b!1395128 (not res!934500)) b!1395130))

(declare-fun m!1281625 () Bool)

(assert (=> b!1395130 m!1281625))

(assert (=> b!1395131 m!1281429))

(declare-fun m!1281627 () Bool)

(assert (=> b!1395131 m!1281627))

(assert (=> b!1395131 m!1281627))

(assert (=> b!1395131 m!1281427))

(declare-fun m!1281629 () Bool)

(assert (=> b!1395131 m!1281629))

(assert (=> b!1395127 m!1281625))

(assert (=> d!150623 m!1281429))

(declare-fun m!1281631 () Bool)

(assert (=> d!150623 m!1281631))

(assert (=> d!150623 m!1281417))

(assert (=> b!1395128 m!1281625))

(assert (=> b!1394855 d!150623))

(declare-fun d!150627 () Bool)

(declare-fun lt!612855 () (_ BitVec 32))

(declare-fun lt!612854 () (_ BitVec 32))

(assert (=> d!150627 (= lt!612855 (bvmul (bvxor lt!612854 (bvlshr lt!612854 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!150627 (= lt!612854 ((_ extract 31 0) (bvand (bvxor (select (store (arr!46045 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (bvlshr (select (store (arr!46045 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!150627 (and (bvsge mask!2840 #b00000000000000000000000000000000) (let ((res!934491 (let ((h!33978 ((_ extract 31 0) (bvand (bvxor (select (store (arr!46045 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (bvlshr (select (store (arr!46045 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!125583 (bvmul (bvxor h!33978 (bvlshr h!33978 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!125583 (bvlshr x!125583 #b00000000000000000000000000001101)) mask!2840))))) (and (bvslt res!934491 (bvadd mask!2840 #b00000000000000000000000000000001)) (bvsge res!934491 #b00000000000000000000000000000000))))))

(assert (=> d!150627 (= (toIndex!0 (select (store (arr!46045 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (bvand (bvxor lt!612855 (bvlshr lt!612855 #b00000000000000000000000000001101)) mask!2840))))

(assert (=> b!1394855 d!150627))

(declare-fun d!150629 () Bool)

(assert (=> d!150629 (= (validKeyInArray!0 (select (arr!46045 a!2901) i!1037)) (and (not (= (select (arr!46045 a!2901) i!1037) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!46045 a!2901) i!1037) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1394850 d!150629))

(declare-fun d!150633 () Bool)

(assert (=> d!150633 (= (validKeyInArray!0 (select (arr!46045 a!2901) j!112)) (and (not (= (select (arr!46045 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!46045 a!2901) j!112) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1394851 d!150633))

(declare-fun bm!66816 () Bool)

(declare-fun call!66819 () Bool)

(assert (=> bm!66816 (= call!66819 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2901 mask!2840))))

(declare-fun b!1395139 () Bool)

(declare-fun e!789877 () Bool)

(assert (=> b!1395139 (= e!789877 call!66819)))

(declare-fun d!150637 () Bool)

(declare-fun res!934505 () Bool)

(declare-fun e!789879 () Bool)

(assert (=> d!150637 (=> res!934505 e!789879)))

(assert (=> d!150637 (= res!934505 (bvsge #b00000000000000000000000000000000 (size!46596 a!2901)))))

(assert (=> d!150637 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840) e!789879)))

(declare-fun b!1395140 () Bool)

(declare-fun e!789878 () Bool)

(assert (=> b!1395140 (= e!789878 call!66819)))

(declare-fun b!1395141 () Bool)

(assert (=> b!1395141 (= e!789878 e!789877)))

(declare-fun lt!612860 () (_ BitVec 64))

(assert (=> b!1395141 (= lt!612860 (select (arr!46045 a!2901) #b00000000000000000000000000000000))))

(declare-fun lt!612861 () Unit!46722)

(assert (=> b!1395141 (= lt!612861 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2901 lt!612860 #b00000000000000000000000000000000))))

(assert (=> b!1395141 (arrayContainsKey!0 a!2901 lt!612860 #b00000000000000000000000000000000)))

(declare-fun lt!612859 () Unit!46722)

(assert (=> b!1395141 (= lt!612859 lt!612861)))

(declare-fun res!934506 () Bool)

(assert (=> b!1395141 (= res!934506 (= (seekEntryOrOpen!0 (select (arr!46045 a!2901) #b00000000000000000000000000000000) a!2901 mask!2840) (Found!10384 #b00000000000000000000000000000000)))))

(assert (=> b!1395141 (=> (not res!934506) (not e!789877))))

(declare-fun b!1395142 () Bool)

(assert (=> b!1395142 (= e!789879 e!789878)))

(declare-fun c!129773 () Bool)

(assert (=> b!1395142 (= c!129773 (validKeyInArray!0 (select (arr!46045 a!2901) #b00000000000000000000000000000000)))))

(assert (= (and d!150637 (not res!934505)) b!1395142))

(assert (= (and b!1395142 c!129773) b!1395141))

(assert (= (and b!1395142 (not c!129773)) b!1395140))

(assert (= (and b!1395141 res!934506) b!1395139))

(assert (= (or b!1395139 b!1395140) bm!66816))

(declare-fun m!1281641 () Bool)

(assert (=> bm!66816 m!1281641))

(declare-fun m!1281643 () Bool)

(assert (=> b!1395141 m!1281643))

(declare-fun m!1281645 () Bool)

(assert (=> b!1395141 m!1281645))

(declare-fun m!1281647 () Bool)

(assert (=> b!1395141 m!1281647))

(assert (=> b!1395141 m!1281643))

(declare-fun m!1281649 () Bool)

(assert (=> b!1395141 m!1281649))

(assert (=> b!1395142 m!1281643))

(assert (=> b!1395142 m!1281643))

(declare-fun m!1281651 () Bool)

(assert (=> b!1395142 m!1281651))

(assert (=> b!1394857 d!150637))

(declare-fun b!1395162 () Bool)

(declare-fun e!789896 () Bool)

(declare-fun e!789894 () Bool)

(assert (=> b!1395162 (= e!789896 e!789894)))

(declare-fun c!129779 () Bool)

(assert (=> b!1395162 (= c!129779 (validKeyInArray!0 (select (arr!46045 a!2901) #b00000000000000000000000000000000)))))

(declare-fun d!150639 () Bool)

(declare-fun res!934517 () Bool)

(declare-fun e!789893 () Bool)

(assert (=> d!150639 (=> res!934517 e!789893)))

(assert (=> d!150639 (= res!934517 (bvsge #b00000000000000000000000000000000 (size!46596 a!2901)))))

(assert (=> d!150639 (= (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32741) e!789893)))

(declare-fun b!1395163 () Bool)

(declare-fun e!789895 () Bool)

(declare-fun contains!9789 (List!32744 (_ BitVec 64)) Bool)

(assert (=> b!1395163 (= e!789895 (contains!9789 Nil!32741 (select (arr!46045 a!2901) #b00000000000000000000000000000000)))))

(declare-fun bm!66819 () Bool)

(declare-fun call!66822 () Bool)

(assert (=> bm!66819 (= call!66822 (arrayNoDuplicates!0 a!2901 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!129779 (Cons!32740 (select (arr!46045 a!2901) #b00000000000000000000000000000000) Nil!32741) Nil!32741)))))

(declare-fun b!1395164 () Bool)

(assert (=> b!1395164 (= e!789893 e!789896)))

(declare-fun res!934516 () Bool)

(assert (=> b!1395164 (=> (not res!934516) (not e!789896))))

(assert (=> b!1395164 (= res!934516 (not e!789895))))

(declare-fun res!934518 () Bool)

(assert (=> b!1395164 (=> (not res!934518) (not e!789895))))

(assert (=> b!1395164 (= res!934518 (validKeyInArray!0 (select (arr!46045 a!2901) #b00000000000000000000000000000000)))))

(declare-fun b!1395165 () Bool)

(assert (=> b!1395165 (= e!789894 call!66822)))

(declare-fun b!1395166 () Bool)

(assert (=> b!1395166 (= e!789894 call!66822)))

(assert (= (and d!150639 (not res!934517)) b!1395164))

(assert (= (and b!1395164 res!934518) b!1395163))

(assert (= (and b!1395164 res!934516) b!1395162))

(assert (= (and b!1395162 c!129779) b!1395166))

(assert (= (and b!1395162 (not c!129779)) b!1395165))

(assert (= (or b!1395166 b!1395165) bm!66819))

(assert (=> b!1395162 m!1281643))

(assert (=> b!1395162 m!1281643))

(assert (=> b!1395162 m!1281651))

(assert (=> b!1395163 m!1281643))

(assert (=> b!1395163 m!1281643))

(declare-fun m!1281661 () Bool)

(assert (=> b!1395163 m!1281661))

(assert (=> bm!66819 m!1281643))

(declare-fun m!1281663 () Bool)

(assert (=> bm!66819 m!1281663))

(assert (=> b!1395164 m!1281643))

(assert (=> b!1395164 m!1281643))

(assert (=> b!1395164 m!1281651))

(assert (=> b!1394852 d!150639))

(push 1)


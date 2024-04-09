; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!63050 () Bool)

(assert start!63050)

(declare-fun b!710283 () Bool)

(declare-fun res!473891 () Bool)

(declare-fun e!399619 () Bool)

(assert (=> b!710283 (=> (not res!473891) (not e!399619))))

(declare-fun from!2969 () (_ BitVec 32))

(declare-datatypes ((array!40369 0))(
  ( (array!40370 (arr!19328 (Array (_ BitVec 32) (_ BitVec 64))) (size!19726 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40369)

(assert (=> b!710283 (= res!473891 (bvslt (bvadd #b00000000000000000000000000000001 from!2969) (size!19726 a!3591)))))

(declare-fun b!710284 () Bool)

(declare-fun res!473897 () Bool)

(declare-fun e!399621 () Bool)

(assert (=> b!710284 (=> (not res!473897) (not e!399621))))

(declare-datatypes ((List!13422 0))(
  ( (Nil!13419) (Cons!13418 (h!14463 (_ BitVec 64)) (t!19730 List!13422)) )
))
(declare-fun lt!318280 () List!13422)

(declare-fun contains!3965 (List!13422 (_ BitVec 64)) Bool)

(assert (=> b!710284 (= res!473897 (not (contains!3965 lt!318280 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!710285 () Bool)

(declare-fun res!473898 () Bool)

(assert (=> b!710285 (=> (not res!473898) (not e!399619))))

(declare-fun newAcc!49 () List!13422)

(declare-fun k!2824 () (_ BitVec 64))

(assert (=> b!710285 (= res!473898 (contains!3965 newAcc!49 k!2824))))

(declare-fun b!710286 () Bool)

(declare-fun res!473881 () Bool)

(assert (=> b!710286 (=> (not res!473881) (not e!399619))))

(assert (=> b!710286 (= res!473881 (not (contains!3965 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!710287 () Bool)

(declare-fun res!473903 () Bool)

(assert (=> b!710287 (=> (not res!473903) (not e!399619))))

(declare-fun acc!652 () List!13422)

(assert (=> b!710287 (= res!473903 (not (contains!3965 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!710288 () Bool)

(declare-fun res!473894 () Bool)

(assert (=> b!710288 (=> (not res!473894) (not e!399619))))

(declare-fun arrayContainsKey!0 (array!40369 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!710288 (= res!473894 (not (arrayContainsKey!0 a!3591 k!2824 from!2969)))))

(declare-fun b!710289 () Bool)

(declare-fun res!473892 () Bool)

(assert (=> b!710289 (=> (not res!473892) (not e!399621))))

(assert (=> b!710289 (= res!473892 (not (contains!3965 lt!318280 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!710290 () Bool)

(declare-fun res!473900 () Bool)

(assert (=> b!710290 (=> (not res!473900) (not e!399619))))

(declare-fun -!374 (List!13422 (_ BitVec 64)) List!13422)

(assert (=> b!710290 (= res!473900 (= (-!374 newAcc!49 k!2824) acc!652))))

(declare-fun b!710291 () Bool)

(declare-fun res!473893 () Bool)

(assert (=> b!710291 (=> (not res!473893) (not e!399621))))

(declare-fun noDuplicate!1212 (List!13422) Bool)

(assert (=> b!710291 (= res!473893 (noDuplicate!1212 lt!318280))))

(declare-fun b!710293 () Bool)

(assert (=> b!710293 (= e!399619 e!399621)))

(declare-fun res!473890 () Bool)

(assert (=> b!710293 (=> (not res!473890) (not e!399621))))

(assert (=> b!710293 (= res!473890 (bvsge (bvadd #b00000000000000000000000000000001 from!2969) #b00000000000000000000000000000000))))

(declare-fun lt!318281 () List!13422)

(declare-fun $colon$colon!519 (List!13422 (_ BitVec 64)) List!13422)

(assert (=> b!710293 (= lt!318281 ($colon$colon!519 newAcc!49 (select (arr!19328 a!3591) from!2969)))))

(assert (=> b!710293 (= lt!318280 ($colon$colon!519 acc!652 (select (arr!19328 a!3591) from!2969)))))

(declare-fun b!710294 () Bool)

(declare-fun res!473889 () Bool)

(assert (=> b!710294 (=> (not res!473889) (not e!399621))))

(assert (=> b!710294 (= res!473889 (not (contains!3965 lt!318280 k!2824)))))

(declare-fun b!710295 () Bool)

(declare-fun res!473895 () Bool)

(assert (=> b!710295 (=> (not res!473895) (not e!399621))))

(assert (=> b!710295 (= res!473895 (not (arrayContainsKey!0 a!3591 k!2824 (bvadd #b00000000000000000000000000000001 from!2969))))))

(declare-fun b!710296 () Bool)

(declare-fun res!473902 () Bool)

(assert (=> b!710296 (=> (not res!473902) (not e!399619))))

(assert (=> b!710296 (= res!473902 (not (contains!3965 acc!652 k!2824)))))

(declare-fun b!710297 () Bool)

(declare-fun res!473882 () Bool)

(assert (=> b!710297 (=> (not res!473882) (not e!399619))))

(assert (=> b!710297 (= res!473882 (not (contains!3965 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!710298 () Bool)

(declare-fun res!473887 () Bool)

(assert (=> b!710298 (=> (not res!473887) (not e!399619))))

(declare-fun arrayNoDuplicates!0 (array!40369 (_ BitVec 32) List!13422) Bool)

(assert (=> b!710298 (= res!473887 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun b!710299 () Bool)

(declare-fun res!473888 () Bool)

(assert (=> b!710299 (=> (not res!473888) (not e!399619))))

(assert (=> b!710299 (= res!473888 (noDuplicate!1212 acc!652))))

(declare-fun b!710300 () Bool)

(declare-fun res!473883 () Bool)

(assert (=> b!710300 (=> (not res!473883) (not e!399621))))

(assert (=> b!710300 (= res!473883 (noDuplicate!1212 lt!318281))))

(declare-fun b!710301 () Bool)

(declare-fun res!473884 () Bool)

(assert (=> b!710301 (=> (not res!473884) (not e!399621))))

(assert (=> b!710301 (= res!473884 (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969) lt!318280))))

(declare-fun b!710302 () Bool)

(declare-fun subseq!409 (List!13422 List!13422) Bool)

(assert (=> b!710302 (= e!399621 (not (subseq!409 lt!318280 lt!318281)))))

(declare-fun b!710303 () Bool)

(declare-fun res!473896 () Bool)

(assert (=> b!710303 (=> (not res!473896) (not e!399619))))

(assert (=> b!710303 (= res!473896 (noDuplicate!1212 newAcc!49))))

(declare-fun b!710304 () Bool)

(declare-fun res!473904 () Bool)

(assert (=> b!710304 (=> (not res!473904) (not e!399619))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!710304 (= res!473904 (validKeyInArray!0 (select (arr!19328 a!3591) from!2969)))))

(declare-fun b!710305 () Bool)

(declare-fun res!473901 () Bool)

(assert (=> b!710305 (=> (not res!473901) (not e!399619))))

(assert (=> b!710305 (= res!473901 (not (contains!3965 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!710306 () Bool)

(declare-fun res!473899 () Bool)

(assert (=> b!710306 (=> (not res!473899) (not e!399619))))

(assert (=> b!710306 (= res!473899 (subseq!409 acc!652 newAcc!49))))

(declare-fun b!710292 () Bool)

(declare-fun res!473885 () Bool)

(assert (=> b!710292 (=> (not res!473885) (not e!399619))))

(assert (=> b!710292 (= res!473885 (validKeyInArray!0 k!2824))))

(declare-fun res!473886 () Bool)

(assert (=> start!63050 (=> (not res!473886) (not e!399619))))

(assert (=> start!63050 (= res!473886 (and (bvslt (size!19726 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19726 a!3591))))))

(assert (=> start!63050 e!399619))

(assert (=> start!63050 true))

(declare-fun array_inv!15102 (array!40369) Bool)

(assert (=> start!63050 (array_inv!15102 a!3591)))

(assert (= (and start!63050 res!473886) b!710299))

(assert (= (and b!710299 res!473888) b!710303))

(assert (= (and b!710303 res!473896) b!710305))

(assert (= (and b!710305 res!473901) b!710287))

(assert (= (and b!710287 res!473903) b!710288))

(assert (= (and b!710288 res!473894) b!710296))

(assert (= (and b!710296 res!473902) b!710292))

(assert (= (and b!710292 res!473885) b!710298))

(assert (= (and b!710298 res!473887) b!710306))

(assert (= (and b!710306 res!473899) b!710285))

(assert (= (and b!710285 res!473898) b!710290))

(assert (= (and b!710290 res!473900) b!710286))

(assert (= (and b!710286 res!473881) b!710297))

(assert (= (and b!710297 res!473882) b!710283))

(assert (= (and b!710283 res!473891) b!710304))

(assert (= (and b!710304 res!473904) b!710293))

(assert (= (and b!710293 res!473890) b!710291))

(assert (= (and b!710291 res!473893) b!710300))

(assert (= (and b!710300 res!473883) b!710284))

(assert (= (and b!710284 res!473897) b!710289))

(assert (= (and b!710289 res!473892) b!710295))

(assert (= (and b!710295 res!473895) b!710294))

(assert (= (and b!710294 res!473889) b!710301))

(assert (= (and b!710301 res!473884) b!710302))

(declare-fun m!667487 () Bool)

(assert (=> b!710301 m!667487))

(declare-fun m!667489 () Bool)

(assert (=> b!710290 m!667489))

(declare-fun m!667491 () Bool)

(assert (=> b!710303 m!667491))

(declare-fun m!667493 () Bool)

(assert (=> b!710302 m!667493))

(declare-fun m!667495 () Bool)

(assert (=> b!710297 m!667495))

(declare-fun m!667497 () Bool)

(assert (=> b!710293 m!667497))

(assert (=> b!710293 m!667497))

(declare-fun m!667499 () Bool)

(assert (=> b!710293 m!667499))

(assert (=> b!710293 m!667497))

(declare-fun m!667501 () Bool)

(assert (=> b!710293 m!667501))

(declare-fun m!667503 () Bool)

(assert (=> b!710287 m!667503))

(declare-fun m!667505 () Bool)

(assert (=> b!710296 m!667505))

(declare-fun m!667507 () Bool)

(assert (=> b!710284 m!667507))

(declare-fun m!667509 () Bool)

(assert (=> b!710295 m!667509))

(declare-fun m!667511 () Bool)

(assert (=> b!710294 m!667511))

(declare-fun m!667513 () Bool)

(assert (=> b!710286 m!667513))

(declare-fun m!667515 () Bool)

(assert (=> b!710306 m!667515))

(declare-fun m!667517 () Bool)

(assert (=> b!710291 m!667517))

(declare-fun m!667519 () Bool)

(assert (=> b!710289 m!667519))

(declare-fun m!667521 () Bool)

(assert (=> b!710285 m!667521))

(declare-fun m!667523 () Bool)

(assert (=> start!63050 m!667523))

(declare-fun m!667525 () Bool)

(assert (=> b!710298 m!667525))

(declare-fun m!667527 () Bool)

(assert (=> b!710299 m!667527))

(declare-fun m!667529 () Bool)

(assert (=> b!710305 m!667529))

(declare-fun m!667531 () Bool)

(assert (=> b!710288 m!667531))

(declare-fun m!667533 () Bool)

(assert (=> b!710292 m!667533))

(declare-fun m!667535 () Bool)

(assert (=> b!710300 m!667535))

(assert (=> b!710304 m!667497))

(assert (=> b!710304 m!667497))

(declare-fun m!667537 () Bool)

(assert (=> b!710304 m!667537))

(push 1)

(assert (not b!710295))

(assert (not b!710294))

(assert (not b!710290))

(assert (not b!710297))

(assert (not b!710287))

(assert (not b!710289))

(assert (not start!63050))

(assert (not b!710305))

(assert (not b!710296))

(assert (not b!710292))

(assert (not b!710300))

(assert (not b!710286))

(assert (not b!710299))

(assert (not b!710293))

(assert (not b!710291))

(assert (not b!710288))

(assert (not b!710304))

(assert (not b!710301))

(assert (not b!710298))

(assert (not b!710306))

(assert (not b!710303))

(assert (not b!710284))

(assert (not b!710302))

(assert (not b!710285))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!97287 () Bool)

(assert (=> d!97287 (= (validKeyInArray!0 (select (arr!19328 a!3591) from!2969)) (and (not (= (select (arr!19328 a!3591) from!2969) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!19328 a!3591) from!2969) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!710304 d!97287))

(declare-fun d!97291 () Bool)

(declare-fun res!473945 () Bool)

(declare-fun e!399664 () Bool)

(assert (=> d!97291 (=> res!473945 e!399664)))

(assert (=> d!97291 (= res!473945 (is-Nil!13419 newAcc!49))))

(assert (=> d!97291 (= (noDuplicate!1212 newAcc!49) e!399664)))

(declare-fun b!710351 () Bool)

(declare-fun e!399665 () Bool)

(assert (=> b!710351 (= e!399664 e!399665)))

(declare-fun res!473946 () Bool)

(assert (=> b!710351 (=> (not res!473946) (not e!399665))))

(assert (=> b!710351 (= res!473946 (not (contains!3965 (t!19730 newAcc!49) (h!14463 newAcc!49))))))

(declare-fun b!710352 () Bool)

(assert (=> b!710352 (= e!399665 (noDuplicate!1212 (t!19730 newAcc!49)))))

(assert (= (and d!97291 (not res!473945)) b!710351))

(assert (= (and b!710351 res!473946) b!710352))

(declare-fun m!667571 () Bool)

(assert (=> b!710351 m!667571))

(declare-fun m!667573 () Bool)

(assert (=> b!710352 m!667573))

(assert (=> b!710303 d!97291))

(declare-fun d!97293 () Bool)

(declare-fun lt!318294 () Bool)

(declare-fun content!354 (List!13422) (Set (_ BitVec 64)))

(assert (=> d!97293 (= lt!318294 (member #b0000000000000000000000000000000000000000000000000000000000000000 (content!354 lt!318280)))))

(declare-fun e!399685 () Bool)

(assert (=> d!97293 (= lt!318294 e!399685)))

(declare-fun res!473965 () Bool)

(assert (=> d!97293 (=> (not res!473965) (not e!399685))))

(assert (=> d!97293 (= res!473965 (is-Cons!13418 lt!318280))))

(assert (=> d!97293 (= (contains!3965 lt!318280 #b0000000000000000000000000000000000000000000000000000000000000000) lt!318294)))

(declare-fun b!710372 () Bool)

(declare-fun e!399684 () Bool)

(assert (=> b!710372 (= e!399685 e!399684)))

(declare-fun res!473964 () Bool)

(assert (=> b!710372 (=> res!473964 e!399684)))

(assert (=> b!710372 (= res!473964 (= (h!14463 lt!318280) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!710373 () Bool)

(assert (=> b!710373 (= e!399684 (contains!3965 (t!19730 lt!318280) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!97293 res!473965) b!710372))

(assert (= (and b!710372 (not res!473964)) b!710373))

(declare-fun m!667597 () Bool)

(assert (=> d!97293 m!667597))

(declare-fun m!667599 () Bool)

(assert (=> d!97293 m!667599))

(declare-fun m!667601 () Bool)

(assert (=> b!710373 m!667601))

(assert (=> b!710284 d!97293))

(declare-fun d!97305 () Bool)

(declare-fun lt!318295 () Bool)

(assert (=> d!97305 (= lt!318295 (member #b0000000000000000000000000000000000000000000000000000000000000000 (content!354 acc!652)))))

(declare-fun e!399687 () Bool)

(assert (=> d!97305 (= lt!318295 e!399687)))

(declare-fun res!473967 () Bool)

(assert (=> d!97305 (=> (not res!473967) (not e!399687))))

(assert (=> d!97305 (= res!473967 (is-Cons!13418 acc!652))))

(assert (=> d!97305 (= (contains!3965 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000) lt!318295)))

(declare-fun b!710374 () Bool)

(declare-fun e!399686 () Bool)

(assert (=> b!710374 (= e!399687 e!399686)))

(declare-fun res!473966 () Bool)

(assert (=> b!710374 (=> res!473966 e!399686)))

(assert (=> b!710374 (= res!473966 (= (h!14463 acc!652) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!710375 () Bool)

(assert (=> b!710375 (= e!399686 (contains!3965 (t!19730 acc!652) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!97305 res!473967) b!710374))

(assert (= (and b!710374 (not res!473966)) b!710375))

(declare-fun m!667603 () Bool)

(assert (=> d!97305 m!667603))

(declare-fun m!667605 () Bool)

(assert (=> d!97305 m!667605))

(declare-fun m!667607 () Bool)

(assert (=> b!710375 m!667607))

(assert (=> b!710305 d!97305))

(declare-fun b!710424 () Bool)

(declare-fun e!399735 () Bool)

(declare-fun e!399734 () Bool)

(assert (=> b!710424 (= e!399735 e!399734)))

(declare-fun c!78575 () Bool)

(assert (=> b!710424 (= c!78575 (validKeyInArray!0 (select (arr!19328 a!3591) (bvadd #b00000000000000000000000000000001 from!2969))))))

(declare-fun b!710425 () Bool)

(declare-fun e!399732 () Bool)

(assert (=> b!710425 (= e!399732 (contains!3965 lt!318280 (select (arr!19328 a!3591) (bvadd #b00000000000000000000000000000001 from!2969))))))

(declare-fun b!710426 () Bool)

(declare-fun e!399733 () Bool)

(assert (=> b!710426 (= e!399733 e!399735)))

(declare-fun res!474009 () Bool)

(assert (=> b!710426 (=> (not res!474009) (not e!399735))))

(assert (=> b!710426 (= res!474009 (not e!399732))))

(declare-fun res!474010 () Bool)

(assert (=> b!710426 (=> (not res!474010) (not e!399732))))

(assert (=> b!710426 (= res!474010 (validKeyInArray!0 (select (arr!19328 a!3591) (bvadd #b00000000000000000000000000000001 from!2969))))))

(declare-fun b!710427 () Bool)

(declare-fun call!34478 () Bool)

(assert (=> b!710427 (= e!399734 call!34478)))

(declare-fun d!97307 () Bool)

(declare-fun res!474008 () Bool)

(assert (=> d!97307 (=> res!474008 e!399733)))

(assert (=> d!97307 (= res!474008 (bvsge (bvadd #b00000000000000000000000000000001 from!2969) (size!19726 a!3591)))))

(assert (=> d!97307 (= (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969) lt!318280) e!399733)))

(declare-fun b!710428 () Bool)

(assert (=> b!710428 (= e!399734 call!34478)))

(declare-fun bm!34475 () Bool)

(assert (=> bm!34475 (= call!34478 (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969 #b00000000000000000000000000000001) (ite c!78575 (Cons!13418 (select (arr!19328 a!3591) (bvadd #b00000000000000000000000000000001 from!2969)) lt!318280) lt!318280)))))

(assert (= (and d!97307 (not res!474008)) b!710426))

(assert (= (and b!710426 res!474010) b!710425))

(assert (= (and b!710426 res!474009) b!710424))

(assert (= (and b!710424 c!78575) b!710427))

(assert (= (and b!710424 (not c!78575)) b!710428))

(assert (= (or b!710427 b!710428) bm!34475))

(declare-fun m!667631 () Bool)

(assert (=> b!710424 m!667631))

(assert (=> b!710424 m!667631))

(declare-fun m!667633 () Bool)

(assert (=> b!710424 m!667633))

(assert (=> b!710425 m!667631))

(assert (=> b!710425 m!667631))

(declare-fun m!667635 () Bool)

(assert (=> b!710425 m!667635))

(assert (=> b!710426 m!667631))

(assert (=> b!710426 m!667631))

(assert (=> b!710426 m!667633))

(assert (=> bm!34475 m!667631))

(declare-fun m!667637 () Bool)

(assert (=> bm!34475 m!667637))

(assert (=> b!710301 d!97307))

(declare-fun b!710462 () Bool)

(declare-fun e!399765 () Bool)

(declare-fun e!399764 () Bool)

(assert (=> b!710462 (= e!399765 e!399764)))

(declare-fun res!474031 () Bool)

(assert (=> b!710462 (=> (not res!474031) (not e!399764))))

(assert (=> b!710462 (= res!474031 (is-Cons!13418 lt!318281))))

(declare-fun d!97321 () Bool)

(declare-fun res!474029 () Bool)

(assert (=> d!97321 (=> res!474029 e!399765)))

(assert (=> d!97321 (= res!474029 (is-Nil!13419 lt!318280))))

(assert (=> d!97321 (= (subseq!409 lt!318280 lt!318281) e!399765)))

(declare-fun b!710463 () Bool)

(declare-fun e!399762 () Bool)

(assert (=> b!710463 (= e!399764 e!399762)))

(declare-fun res!474030 () Bool)

(assert (=> b!710463 (=> res!474030 e!399762)))

(declare-fun e!399763 () Bool)

(assert (=> b!710463 (= res!474030 e!399763)))

(declare-fun res!474028 () Bool)

(assert (=> b!710463 (=> (not res!474028) (not e!399763))))

(assert (=> b!710463 (= res!474028 (= (h!14463 lt!318280) (h!14463 lt!318281)))))

(declare-fun b!710464 () Bool)

(assert (=> b!710464 (= e!399763 (subseq!409 (t!19730 lt!318280) (t!19730 lt!318281)))))

(declare-fun b!710465 () Bool)

(assert (=> b!710465 (= e!399762 (subseq!409 lt!318280 (t!19730 lt!318281)))))

(assert (= (and d!97321 (not res!474029)) b!710462))

(assert (= (and b!710462 res!474031) b!710463))

(assert (= (and b!710463 res!474028) b!710464))

(assert (= (and b!710463 (not res!474030)) b!710465))

(declare-fun m!667653 () Bool)

(assert (=> b!710464 m!667653))

(declare-fun m!667657 () Bool)

(assert (=> b!710465 m!667657))

(assert (=> b!710302 d!97321))

(declare-fun d!97329 () Bool)

(declare-fun res!474055 () Bool)

(declare-fun e!399790 () Bool)

(assert (=> d!97329 (=> res!474055 e!399790)))

(assert (=> d!97329 (= res!474055 (= (select (arr!19328 a!3591) from!2969) k!2824))))

(assert (=> d!97329 (= (arrayContainsKey!0 a!3591 k!2824 from!2969) e!399790)))

(declare-fun b!710491 () Bool)

(declare-fun e!399791 () Bool)

(assert (=> b!710491 (= e!399790 e!399791)))

(declare-fun res!474056 () Bool)

(assert (=> b!710491 (=> (not res!474056) (not e!399791))))

(assert (=> b!710491 (= res!474056 (bvslt (bvadd from!2969 #b00000000000000000000000000000001) (size!19726 a!3591)))))

(declare-fun b!710492 () Bool)

(assert (=> b!710492 (= e!399791 (arrayContainsKey!0 a!3591 k!2824 (bvadd from!2969 #b00000000000000000000000000000001)))))

(assert (= (and d!97329 (not res!474055)) b!710491))

(assert (= (and b!710491 res!474056) b!710492))

(assert (=> d!97329 m!667497))

(declare-fun m!667703 () Bool)

(assert (=> b!710492 m!667703))

(assert (=> b!710288 d!97329))

(declare-fun d!97357 () Bool)

(declare-fun lt!318305 () Bool)

(assert (=> d!97357 (= lt!318305 (member #b1000000000000000000000000000000000000000000000000000000000000000 (content!354 acc!652)))))

(declare-fun e!399797 () Bool)

(assert (=> d!97357 (= lt!318305 e!399797)))

(declare-fun res!474062 () Bool)

(assert (=> d!97357 (=> (not res!474062) (not e!399797))))

(assert (=> d!97357 (= res!474062 (is-Cons!13418 acc!652))))

(assert (=> d!97357 (= (contains!3965 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000) lt!318305)))

(declare-fun b!710497 () Bool)

(declare-fun e!399796 () Bool)

(assert (=> b!710497 (= e!399797 e!399796)))

(declare-fun res!474061 () Bool)

(assert (=> b!710497 (=> res!474061 e!399796)))

(assert (=> b!710497 (= res!474061 (= (h!14463 acc!652) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!710498 () Bool)

(assert (=> b!710498 (= e!399796 (contains!3965 (t!19730 acc!652) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!97357 res!474062) b!710497))

(assert (= (and b!710497 (not res!474061)) b!710498))

(assert (=> d!97357 m!667603))

(declare-fun m!667711 () Bool)

(assert (=> d!97357 m!667711))

(declare-fun m!667713 () Bool)

(assert (=> b!710498 m!667713))

(assert (=> b!710287 d!97357))

(declare-fun d!97361 () Bool)

(declare-fun lt!318307 () Bool)

(assert (=> d!97361 (= lt!318307 (member #b1000000000000000000000000000000000000000000000000000000000000000 (content!354 lt!318280)))))

(declare-fun e!399801 () Bool)

(assert (=> d!97361 (= lt!318307 e!399801)))

(declare-fun res!474066 () Bool)

(assert (=> d!97361 (=> (not res!474066) (not e!399801))))

(assert (=> d!97361 (= res!474066 (is-Cons!13418 lt!318280))))

(assert (=> d!97361 (= (contains!3965 lt!318280 #b1000000000000000000000000000000000000000000000000000000000000000) lt!318307)))

(declare-fun b!710501 () Bool)

(declare-fun e!399800 () Bool)

(assert (=> b!710501 (= e!399801 e!399800)))

(declare-fun res!474065 () Bool)

(assert (=> b!710501 (=> res!474065 e!399800)))

(assert (=> b!710501 (= res!474065 (= (h!14463 lt!318280) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!710502 () Bool)

(assert (=> b!710502 (= e!399800 (contains!3965 (t!19730 lt!318280) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!97361 res!474066) b!710501))

(assert (= (and b!710501 (not res!474065)) b!710502))

(assert (=> d!97361 m!667597))

(declare-fun m!667719 () Bool)

(assert (=> d!97361 m!667719))

(declare-fun m!667721 () Bool)

(assert (=> b!710502 m!667721))

(assert (=> b!710289 d!97361))

(declare-fun d!97367 () Bool)

(declare-fun lt!318309 () Bool)

(assert (=> d!97367 (= lt!318309 (member k!2824 (content!354 newAcc!49)))))

(declare-fun e!399805 () Bool)

(assert (=> d!97367 (= lt!318309 e!399805)))

(declare-fun res!474070 () Bool)

(assert (=> d!97367 (=> (not res!474070) (not e!399805))))

(assert (=> d!97367 (= res!474070 (is-Cons!13418 newAcc!49))))

(assert (=> d!97367 (= (contains!3965 newAcc!49 k!2824) lt!318309)))

(declare-fun b!710505 () Bool)

(declare-fun e!399804 () Bool)

(assert (=> b!710505 (= e!399805 e!399804)))

(declare-fun res!474069 () Bool)

(assert (=> b!710505 (=> res!474069 e!399804)))

(assert (=> b!710505 (= res!474069 (= (h!14463 newAcc!49) k!2824))))

(declare-fun b!710506 () Bool)

(assert (=> b!710506 (= e!399804 (contains!3965 (t!19730 newAcc!49) k!2824))))

(assert (= (and d!97367 res!474070) b!710505))

(assert (= (and b!710505 (not res!474069)) b!710506))

(declare-fun m!667727 () Bool)

(assert (=> d!97367 m!667727))

(declare-fun m!667729 () Bool)

(assert (=> d!97367 m!667729))

(declare-fun m!667731 () Bool)

(assert (=> b!710506 m!667731))

(assert (=> b!710285 d!97367))

(declare-fun b!710507 () Bool)

(declare-fun e!399809 () Bool)

(declare-fun e!399808 () Bool)

(assert (=> b!710507 (= e!399809 e!399808)))

(declare-fun res!474074 () Bool)

(assert (=> b!710507 (=> (not res!474074) (not e!399808))))

(assert (=> b!710507 (= res!474074 (is-Cons!13418 newAcc!49))))

(declare-fun d!97371 () Bool)

(declare-fun res!474072 () Bool)

(assert (=> d!97371 (=> res!474072 e!399809)))

(assert (=> d!97371 (= res!474072 (is-Nil!13419 acc!652))))

(assert (=> d!97371 (= (subseq!409 acc!652 newAcc!49) e!399809)))

(declare-fun b!710508 () Bool)

(declare-fun e!399806 () Bool)

(assert (=> b!710508 (= e!399808 e!399806)))

(declare-fun res!474073 () Bool)

(assert (=> b!710508 (=> res!474073 e!399806)))

(declare-fun e!399807 () Bool)

(assert (=> b!710508 (= res!474073 e!399807)))

(declare-fun res!474071 () Bool)

(assert (=> b!710508 (=> (not res!474071) (not e!399807))))

(assert (=> b!710508 (= res!474071 (= (h!14463 acc!652) (h!14463 newAcc!49)))))

(declare-fun b!710509 () Bool)

(assert (=> b!710509 (= e!399807 (subseq!409 (t!19730 acc!652) (t!19730 newAcc!49)))))

(declare-fun b!710510 () Bool)

(assert (=> b!710510 (= e!399806 (subseq!409 acc!652 (t!19730 newAcc!49)))))

(assert (= (and d!97371 (not res!474072)) b!710507))

(assert (= (and b!710507 res!474074) b!710508))

(assert (= (and b!710508 res!474071) b!710509))

(assert (= (and b!710508 (not res!474073)) b!710510))

(declare-fun m!667733 () Bool)

(assert (=> b!710509 m!667733))

(declare-fun m!667735 () Bool)

(assert (=> b!710510 m!667735))

(assert (=> b!710306 d!97371))

(declare-fun d!97373 () Bool)

(declare-fun lt!318310 () Bool)

(assert (=> d!97373 (= lt!318310 (member #b0000000000000000000000000000000000000000000000000000000000000000 (content!354 newAcc!49)))))

(declare-fun e!399811 () Bool)

(assert (=> d!97373 (= lt!318310 e!399811)))

(declare-fun res!474076 () Bool)

(assert (=> d!97373 (=> (not res!474076) (not e!399811))))

(assert (=> d!97373 (= res!474076 (is-Cons!13418 newAcc!49))))

(assert (=> d!97373 (= (contains!3965 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000) lt!318310)))

(declare-fun b!710511 () Bool)

(declare-fun e!399810 () Bool)

(assert (=> b!710511 (= e!399811 e!399810)))

(declare-fun res!474075 () Bool)

(assert (=> b!710511 (=> res!474075 e!399810)))

(assert (=> b!710511 (= res!474075 (= (h!14463 newAcc!49) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!710512 () Bool)

(assert (=> b!710512 (= e!399810 (contains!3965 (t!19730 newAcc!49) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!97373 res!474076) b!710511))

(assert (= (and b!710511 (not res!474075)) b!710512))

(assert (=> d!97373 m!667727))

(declare-fun m!667737 () Bool)

(assert (=> d!97373 m!667737))

(declare-fun m!667739 () Bool)

(assert (=> b!710512 m!667739))

(assert (=> b!710286 d!97373))

(declare-fun d!97375 () Bool)

(assert (=> d!97375 (= ($colon$colon!519 newAcc!49 (select (arr!19328 a!3591) from!2969)) (Cons!13418 (select (arr!19328 a!3591) from!2969) newAcc!49))))

(assert (=> b!710293 d!97375))

(declare-fun d!97377 () Bool)

(assert (=> d!97377 (= ($colon$colon!519 acc!652 (select (arr!19328 a!3591) from!2969)) (Cons!13418 (select (arr!19328 a!3591) from!2969) acc!652))))

(assert (=> b!710293 d!97377))

(declare-fun d!97379 () Bool)

(declare-fun lt!318311 () Bool)

(assert (=> d!97379 (= lt!318311 (member k!2824 (content!354 lt!318280)))))

(declare-fun e!399813 () Bool)

(assert (=> d!97379 (= lt!318311 e!399813)))

(declare-fun res!474078 () Bool)

(assert (=> d!97379 (=> (not res!474078) (not e!399813))))

(assert (=> d!97379 (= res!474078 (is-Cons!13418 lt!318280))))

(assert (=> d!97379 (= (contains!3965 lt!318280 k!2824) lt!318311)))

(declare-fun b!710513 () Bool)

(declare-fun e!399812 () Bool)

(assert (=> b!710513 (= e!399813 e!399812)))

(declare-fun res!474077 () Bool)

(assert (=> b!710513 (=> res!474077 e!399812)))

(assert (=> b!710513 (= res!474077 (= (h!14463 lt!318280) k!2824))))

(declare-fun b!710514 () Bool)

(assert (=> b!710514 (= e!399812 (contains!3965 (t!19730 lt!318280) k!2824))))

(assert (= (and d!97379 res!474078) b!710513))

(assert (= (and b!710513 (not res!474077)) b!710514))

(assert (=> d!97379 m!667597))

(declare-fun m!667741 () Bool)

(assert (=> d!97379 m!667741))

(declare-fun m!667743 () Bool)

(assert (=> b!710514 m!667743))

(assert (=> b!710294 d!97379))

(declare-fun e!399834 () Bool)

(declare-fun lt!318318 () List!13422)

(declare-fun b!710542 () Bool)

(assert (=> b!710542 (= e!399834 (= (content!354 lt!318318) (setminus (content!354 newAcc!49) (insert k!2824 (as emptyset (Set (_ BitVec 64)))))))))

(declare-fun b!710543 () Bool)

(declare-fun e!399833 () List!13422)

(assert (=> b!710543 (= e!399833 Nil!13419)))

(declare-fun b!710544 () Bool)

(declare-fun e!399835 () List!13422)

(declare-fun call!34490 () List!13422)

(assert (=> b!710544 (= e!399835 call!34490)))

(declare-fun b!710545 () Bool)

(assert (=> b!710545 (= e!399833 e!399835)))

(declare-fun c!78595 () Bool)

(assert (=> b!710545 (= c!78595 (= k!2824 (h!14463 newAcc!49)))))

(declare-fun bm!34487 () Bool)

(assert (=> bm!34487 (= call!34490 (-!374 (t!19730 newAcc!49) k!2824))))

(declare-fun d!97381 () Bool)

(assert (=> d!97381 e!399834))

(declare-fun res!474086 () Bool)

(assert (=> d!97381 (=> (not res!474086) (not e!399834))))

(declare-fun size!19729 (List!13422) Int)

(assert (=> d!97381 (= res!474086 (<= (size!19729 lt!318318) (size!19729 newAcc!49)))))

(assert (=> d!97381 (= lt!318318 e!399833)))

(declare-fun c!78596 () Bool)

(assert (=> d!97381 (= c!78596 (is-Cons!13418 newAcc!49))))

(assert (=> d!97381 (= (-!374 newAcc!49 k!2824) lt!318318)))

(declare-fun b!710546 () Bool)

(assert (=> b!710546 (= e!399835 (Cons!13418 (h!14463 newAcc!49) call!34490))))

(assert (= (and d!97381 c!78596) b!710545))

(assert (= (and d!97381 (not c!78596)) b!710543))

(assert (= (and b!710545 c!78595) b!710544))

(assert (= (and b!710545 (not c!78595)) b!710546))

(assert (= (or b!710544 b!710546) bm!34487))

(assert (= (and d!97381 res!474086) b!710542))

(declare-fun m!667759 () Bool)

(assert (=> b!710542 m!667759))

(assert (=> b!710542 m!667727))

(declare-fun m!667761 () Bool)

(assert (=> b!710542 m!667761))

(declare-fun m!667763 () Bool)

(assert (=> bm!34487 m!667763))

(declare-fun m!667765 () Bool)

(assert (=> d!97381 m!667765))

(declare-fun m!667767 () Bool)

(assert (=> d!97381 m!667767))

(assert (=> b!710290 d!97381))


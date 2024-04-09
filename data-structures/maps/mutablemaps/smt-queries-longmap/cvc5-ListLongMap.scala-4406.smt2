; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!60732 () Bool)

(assert start!60732)

(declare-fun b!681419 () Bool)

(declare-datatypes ((Unit!23890 0))(
  ( (Unit!23891) )
))
(declare-fun e!388216 () Unit!23890)

(declare-fun Unit!23892 () Unit!23890)

(assert (=> b!681419 (= e!388216 Unit!23892)))

(declare-fun lt!313266 () Unit!23890)

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun k!2843 () (_ BitVec 64))

(declare-datatypes ((array!39498 0))(
  ( (array!39499 (arr!18930 (Array (_ BitVec 32) (_ BitVec 64))) (size!19294 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39498)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39498 (_ BitVec 64) (_ BitVec 32)) Unit!23890)

(assert (=> b!681419 (= lt!313266 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!681419 false))

(declare-fun b!681420 () Bool)

(declare-fun res!447722 () Bool)

(declare-fun e!388220 () Bool)

(assert (=> b!681420 (=> (not res!447722) (not e!388220))))

(declare-datatypes ((List!13024 0))(
  ( (Nil!13021) (Cons!13020 (h!14065 (_ BitVec 64)) (t!19269 List!13024)) )
))
(declare-fun acc!681 () List!13024)

(declare-fun noDuplicate!814 (List!13024) Bool)

(assert (=> b!681420 (= res!447722 (noDuplicate!814 acc!681))))

(declare-fun b!681421 () Bool)

(declare-fun res!447715 () Bool)

(declare-fun e!388218 () Bool)

(assert (=> b!681421 (=> res!447715 e!388218)))

(declare-fun lt!313268 () List!13024)

(declare-fun subseq!152 (List!13024 List!13024) Bool)

(assert (=> b!681421 (= res!447715 (not (subseq!152 acc!681 lt!313268)))))

(declare-fun b!681422 () Bool)

(declare-fun e!388217 () Bool)

(assert (=> b!681422 (= e!388217 e!388218)))

(declare-fun res!447725 () Bool)

(assert (=> b!681422 (=> res!447725 e!388218)))

(assert (=> b!681422 (= res!447725 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun $colon$colon!316 (List!13024 (_ BitVec 64)) List!13024)

(assert (=> b!681422 (= lt!313268 ($colon$colon!316 acc!681 (select (arr!18930 a!3626) from!3004)))))

(assert (=> b!681422 (subseq!152 acc!681 acc!681)))

(declare-fun lt!313267 () Unit!23890)

(declare-fun lemmaListSubSeqRefl!0 (List!13024) Unit!23890)

(assert (=> b!681422 (= lt!313267 (lemmaListSubSeqRefl!0 acc!681))))

(declare-fun b!681423 () Bool)

(declare-fun res!447732 () Bool)

(assert (=> b!681423 (=> (not res!447732) (not e!388220))))

(declare-fun contains!3567 (List!13024 (_ BitVec 64)) Bool)

(assert (=> b!681423 (= res!447732 (not (contains!3567 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!681424 () Bool)

(declare-fun res!447721 () Bool)

(assert (=> b!681424 (=> res!447721 e!388218)))

(assert (=> b!681424 (= res!447721 (contains!3567 lt!313268 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!681425 () Bool)

(declare-fun arrayNoDuplicates!0 (array!39498 (_ BitVec 32) List!13024) Bool)

(assert (=> b!681425 (= e!388218 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!313268))))

(declare-fun lt!313265 () Unit!23890)

(declare-fun noDuplicateSubseq!26 (List!13024 List!13024) Unit!23890)

(assert (=> b!681425 (= lt!313265 (noDuplicateSubseq!26 acc!681 lt!313268))))

(declare-fun b!681426 () Bool)

(declare-fun res!447730 () Bool)

(assert (=> b!681426 (=> (not res!447730) (not e!388220))))

(assert (=> b!681426 (= res!447730 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!681427 () Bool)

(declare-fun res!447720 () Bool)

(assert (=> b!681427 (=> (not res!447720) (not e!388220))))

(assert (=> b!681427 (= res!447720 (not (contains!3567 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!681428 () Bool)

(declare-fun res!447729 () Bool)

(assert (=> b!681428 (=> (not res!447729) (not e!388220))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!681428 (= res!447729 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19294 a!3626))))))

(declare-fun b!681430 () Bool)

(declare-fun e!388219 () Bool)

(assert (=> b!681430 (= e!388219 (not (contains!3567 acc!681 k!2843)))))

(declare-fun b!681431 () Bool)

(declare-fun res!447723 () Bool)

(assert (=> b!681431 (=> (not res!447723) (not e!388220))))

(declare-fun arrayContainsKey!0 (array!39498 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!681431 (= res!447723 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!681432 () Bool)

(declare-fun res!447726 () Bool)

(assert (=> b!681432 (=> res!447726 e!388218)))

(assert (=> b!681432 (= res!447726 (not (noDuplicate!814 lt!313268)))))

(declare-fun b!681433 () Bool)

(declare-fun e!388222 () Bool)

(assert (=> b!681433 (= e!388222 e!388219)))

(declare-fun res!447734 () Bool)

(assert (=> b!681433 (=> (not res!447734) (not e!388219))))

(assert (=> b!681433 (= res!447734 (bvsle from!3004 i!1382))))

(declare-fun b!681434 () Bool)

(assert (=> b!681434 (= e!388220 (not e!388217))))

(declare-fun res!447733 () Bool)

(assert (=> b!681434 (=> res!447733 e!388217)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!681434 (= res!447733 (not (validKeyInArray!0 (select (arr!18930 a!3626) from!3004))))))

(declare-fun lt!313269 () Unit!23890)

(assert (=> b!681434 (= lt!313269 e!388216)))

(declare-fun c!77219 () Bool)

(assert (=> b!681434 (= c!77219 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!681434 (arrayContainsKey!0 (array!39499 (store (arr!18930 a!3626) i!1382 k!2843) (size!19294 a!3626)) k!2843 from!3004)))

(declare-fun b!681435 () Bool)

(declare-fun res!447724 () Bool)

(assert (=> b!681435 (=> res!447724 e!388218)))

(assert (=> b!681435 (= res!447724 (contains!3567 lt!313268 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!681436 () Bool)

(declare-fun res!447728 () Bool)

(assert (=> b!681436 (=> (not res!447728) (not e!388220))))

(assert (=> b!681436 (= res!447728 e!388222)))

(declare-fun res!447718 () Bool)

(assert (=> b!681436 (=> res!447718 e!388222)))

(declare-fun e!388215 () Bool)

(assert (=> b!681436 (= res!447718 e!388215)))

(declare-fun res!447731 () Bool)

(assert (=> b!681436 (=> (not res!447731) (not e!388215))))

(assert (=> b!681436 (= res!447731 (bvsgt from!3004 i!1382))))

(declare-fun b!681437 () Bool)

(declare-fun res!447717 () Bool)

(assert (=> b!681437 (=> (not res!447717) (not e!388220))))

(assert (=> b!681437 (= res!447717 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19294 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!681438 () Bool)

(declare-fun res!447716 () Bool)

(assert (=> b!681438 (=> (not res!447716) (not e!388220))))

(assert (=> b!681438 (= res!447716 (validKeyInArray!0 k!2843))))

(declare-fun b!681439 () Bool)

(declare-fun Unit!23893 () Unit!23890)

(assert (=> b!681439 (= e!388216 Unit!23893)))

(declare-fun b!681440 () Bool)

(assert (=> b!681440 (= e!388215 (contains!3567 acc!681 k!2843))))

(declare-fun b!681429 () Bool)

(declare-fun res!447727 () Bool)

(assert (=> b!681429 (=> (not res!447727) (not e!388220))))

(assert (=> b!681429 (= res!447727 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13021))))

(declare-fun res!447719 () Bool)

(assert (=> start!60732 (=> (not res!447719) (not e!388220))))

(assert (=> start!60732 (= res!447719 (and (bvslt (size!19294 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19294 a!3626))))))

(assert (=> start!60732 e!388220))

(assert (=> start!60732 true))

(declare-fun array_inv!14704 (array!39498) Bool)

(assert (=> start!60732 (array_inv!14704 a!3626)))

(assert (= (and start!60732 res!447719) b!681420))

(assert (= (and b!681420 res!447722) b!681427))

(assert (= (and b!681427 res!447720) b!681423))

(assert (= (and b!681423 res!447732) b!681436))

(assert (= (and b!681436 res!447731) b!681440))

(assert (= (and b!681436 (not res!447718)) b!681433))

(assert (= (and b!681433 res!447734) b!681430))

(assert (= (and b!681436 res!447728) b!681429))

(assert (= (and b!681429 res!447727) b!681426))

(assert (= (and b!681426 res!447730) b!681428))

(assert (= (and b!681428 res!447729) b!681438))

(assert (= (and b!681438 res!447716) b!681431))

(assert (= (and b!681431 res!447723) b!681437))

(assert (= (and b!681437 res!447717) b!681434))

(assert (= (and b!681434 c!77219) b!681419))

(assert (= (and b!681434 (not c!77219)) b!681439))

(assert (= (and b!681434 (not res!447733)) b!681422))

(assert (= (and b!681422 (not res!447725)) b!681432))

(assert (= (and b!681432 (not res!447726)) b!681424))

(assert (= (and b!681424 (not res!447721)) b!681435))

(assert (= (and b!681435 (not res!447724)) b!681421))

(assert (= (and b!681421 (not res!447715)) b!681425))

(declare-fun m!646317 () Bool)

(assert (=> b!681434 m!646317))

(declare-fun m!646319 () Bool)

(assert (=> b!681434 m!646319))

(declare-fun m!646321 () Bool)

(assert (=> b!681434 m!646321))

(assert (=> b!681434 m!646317))

(declare-fun m!646323 () Bool)

(assert (=> b!681434 m!646323))

(declare-fun m!646325 () Bool)

(assert (=> b!681434 m!646325))

(declare-fun m!646327 () Bool)

(assert (=> b!681421 m!646327))

(declare-fun m!646329 () Bool)

(assert (=> b!681424 m!646329))

(declare-fun m!646331 () Bool)

(assert (=> b!681430 m!646331))

(declare-fun m!646333 () Bool)

(assert (=> b!681425 m!646333))

(declare-fun m!646335 () Bool)

(assert (=> b!681425 m!646335))

(assert (=> b!681440 m!646331))

(declare-fun m!646337 () Bool)

(assert (=> b!681429 m!646337))

(declare-fun m!646339 () Bool)

(assert (=> b!681420 m!646339))

(declare-fun m!646341 () Bool)

(assert (=> b!681438 m!646341))

(declare-fun m!646343 () Bool)

(assert (=> b!681426 m!646343))

(declare-fun m!646345 () Bool)

(assert (=> b!681435 m!646345))

(declare-fun m!646347 () Bool)

(assert (=> b!681431 m!646347))

(declare-fun m!646349 () Bool)

(assert (=> start!60732 m!646349))

(declare-fun m!646351 () Bool)

(assert (=> b!681419 m!646351))

(declare-fun m!646353 () Bool)

(assert (=> b!681432 m!646353))

(declare-fun m!646355 () Bool)

(assert (=> b!681423 m!646355))

(declare-fun m!646357 () Bool)

(assert (=> b!681427 m!646357))

(assert (=> b!681422 m!646317))

(assert (=> b!681422 m!646317))

(declare-fun m!646359 () Bool)

(assert (=> b!681422 m!646359))

(declare-fun m!646361 () Bool)

(assert (=> b!681422 m!646361))

(declare-fun m!646363 () Bool)

(assert (=> b!681422 m!646363))

(push 1)

(assert (not b!681434))

(assert (not b!681427))

(assert (not b!681423))

(assert (not b!681432))

(assert (not b!681440))

(assert (not b!681431))

(assert (not b!681420))

(assert (not b!681421))

(assert (not start!60732))

(assert (not b!681430))

(assert (not b!681425))

(assert (not b!681424))

(assert (not b!681438))

(assert (not b!681419))

(assert (not b!681435))

(assert (not b!681422))

(assert (not b!681426))

(assert (not b!681429))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!93801 () Bool)

(declare-fun res!447886 () Bool)

(declare-fun e!388305 () Bool)

(assert (=> d!93801 (=> res!447886 e!388305)))

(assert (=> d!93801 (= res!447886 (is-Nil!13021 lt!313268))))

(assert (=> d!93801 (= (noDuplicate!814 lt!313268) e!388305)))

(declare-fun b!681606 () Bool)

(declare-fun e!388306 () Bool)

(assert (=> b!681606 (= e!388305 e!388306)))

(declare-fun res!447887 () Bool)

(assert (=> b!681606 (=> (not res!447887) (not e!388306))))

(assert (=> b!681606 (= res!447887 (not (contains!3567 (t!19269 lt!313268) (h!14065 lt!313268))))))

(declare-fun b!681607 () Bool)

(assert (=> b!681607 (= e!388306 (noDuplicate!814 (t!19269 lt!313268)))))

(assert (= (and d!93801 (not res!447886)) b!681606))

(assert (= (and b!681606 res!447887) b!681607))

(declare-fun m!646475 () Bool)

(assert (=> b!681606 m!646475))

(declare-fun m!646477 () Bool)

(assert (=> b!681607 m!646477))

(assert (=> b!681432 d!93801))

(declare-fun d!93807 () Bool)

(assert (=> d!93807 (= (array_inv!14704 a!3626) (bvsge (size!19294 a!3626) #b00000000000000000000000000000000))))

(assert (=> start!60732 d!93807))

(declare-fun b!681645 () Bool)

(declare-fun e!388338 () Bool)

(declare-fun e!388337 () Bool)

(assert (=> b!681645 (= e!388338 e!388337)))

(declare-fun res!447915 () Bool)

(assert (=> b!681645 (=> (not res!447915) (not e!388337))))

(assert (=> b!681645 (= res!447915 (is-Cons!13020 lt!313268))))

(declare-fun b!681646 () Bool)

(declare-fun e!388339 () Bool)

(assert (=> b!681646 (= e!388337 e!388339)))

(declare-fun res!447917 () Bool)

(assert (=> b!681646 (=> res!447917 e!388339)))

(declare-fun e!388340 () Bool)

(assert (=> b!681646 (= res!447917 e!388340)))

(declare-fun res!447916 () Bool)

(assert (=> b!681646 (=> (not res!447916) (not e!388340))))

(assert (=> b!681646 (= res!447916 (= (h!14065 acc!681) (h!14065 lt!313268)))))

(declare-fun b!681647 () Bool)

(assert (=> b!681647 (= e!388340 (subseq!152 (t!19269 acc!681) (t!19269 lt!313268)))))

(declare-fun b!681648 () Bool)

(assert (=> b!681648 (= e!388339 (subseq!152 acc!681 (t!19269 lt!313268)))))

(declare-fun d!93809 () Bool)

(declare-fun res!447918 () Bool)

(assert (=> d!93809 (=> res!447918 e!388338)))

(assert (=> d!93809 (= res!447918 (is-Nil!13021 acc!681))))

(assert (=> d!93809 (= (subseq!152 acc!681 lt!313268) e!388338)))

(assert (= (and d!93809 (not res!447918)) b!681645))

(assert (= (and b!681645 res!447915) b!681646))

(assert (= (and b!681646 res!447916) b!681647))

(assert (= (and b!681646 (not res!447917)) b!681648))

(declare-fun m!646493 () Bool)

(assert (=> b!681647 m!646493))

(declare-fun m!646495 () Bool)

(assert (=> b!681648 m!646495))

(assert (=> b!681421 d!93809))

(declare-fun d!93819 () Bool)

(assert (=> d!93819 (= ($colon$colon!316 acc!681 (select (arr!18930 a!3626) from!3004)) (Cons!13020 (select (arr!18930 a!3626) from!3004) acc!681))))

(assert (=> b!681422 d!93819))

(declare-fun b!681653 () Bool)

(declare-fun e!388346 () Bool)

(declare-fun e!388345 () Bool)

(assert (=> b!681653 (= e!388346 e!388345)))

(declare-fun res!447923 () Bool)

(assert (=> b!681653 (=> (not res!447923) (not e!388345))))

(assert (=> b!681653 (= res!447923 (is-Cons!13020 acc!681))))

(declare-fun b!681654 () Bool)

(declare-fun e!388347 () Bool)

(assert (=> b!681654 (= e!388345 e!388347)))

(declare-fun res!447925 () Bool)

(assert (=> b!681654 (=> res!447925 e!388347)))

(declare-fun e!388348 () Bool)

(assert (=> b!681654 (= res!447925 e!388348)))

(declare-fun res!447924 () Bool)

(assert (=> b!681654 (=> (not res!447924) (not e!388348))))

(assert (=> b!681654 (= res!447924 (= (h!14065 acc!681) (h!14065 acc!681)))))

(declare-fun b!681655 () Bool)

(assert (=> b!681655 (= e!388348 (subseq!152 (t!19269 acc!681) (t!19269 acc!681)))))

(declare-fun b!681656 () Bool)

(assert (=> b!681656 (= e!388347 (subseq!152 acc!681 (t!19269 acc!681)))))

(declare-fun d!93823 () Bool)

(declare-fun res!447926 () Bool)

(assert (=> d!93823 (=> res!447926 e!388346)))

(assert (=> d!93823 (= res!447926 (is-Nil!13021 acc!681))))

(assert (=> d!93823 (= (subseq!152 acc!681 acc!681) e!388346)))

(assert (= (and d!93823 (not res!447926)) b!681653))

(assert (= (and b!681653 res!447923) b!681654))

(assert (= (and b!681654 res!447924) b!681655))

(assert (= (and b!681654 (not res!447925)) b!681656))

(declare-fun m!646501 () Bool)

(assert (=> b!681655 m!646501))

(declare-fun m!646505 () Bool)

(assert (=> b!681656 m!646505))

(assert (=> b!681422 d!93823))

(declare-fun d!93827 () Bool)

(assert (=> d!93827 (subseq!152 acc!681 acc!681)))

(declare-fun lt!313311 () Unit!23890)

(declare-fun choose!36 (List!13024) Unit!23890)

(assert (=> d!93827 (= lt!313311 (choose!36 acc!681))))

(assert (=> d!93827 (= (lemmaListSubSeqRefl!0 acc!681) lt!313311)))

(declare-fun bs!20004 () Bool)

(assert (= bs!20004 d!93827))

(assert (=> bs!20004 m!646361))

(declare-fun m!646507 () Bool)

(assert (=> bs!20004 m!646507))

(assert (=> b!681422 d!93827))

(declare-fun d!93831 () Bool)

(assert (=> d!93831 (= (validKeyInArray!0 (select (arr!18930 a!3626) from!3004)) (and (not (= (select (arr!18930 a!3626) from!3004) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!18930 a!3626) from!3004) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!681434 d!93831))

(declare-fun d!93839 () Bool)

(declare-fun res!447956 () Bool)

(declare-fun e!388379 () Bool)

(assert (=> d!93839 (=> res!447956 e!388379)))

(assert (=> d!93839 (= res!447956 (= (select (arr!18930 a!3626) (bvadd #b00000000000000000000000000000001 from!3004)) k!2843))))

(assert (=> d!93839 (= (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)) e!388379)))

(declare-fun b!681688 () Bool)

(declare-fun e!388380 () Bool)

(assert (=> b!681688 (= e!388379 e!388380)))

(declare-fun res!447957 () Bool)

(assert (=> b!681688 (=> (not res!447957) (not e!388380))))

(assert (=> b!681688 (= res!447957 (bvslt (bvadd #b00000000000000000000000000000001 from!3004 #b00000000000000000000000000000001) (size!19294 a!3626)))))

(declare-fun b!681689 () Bool)

(assert (=> b!681689 (= e!388380 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004 #b00000000000000000000000000000001)))))

(assert (= (and d!93839 (not res!447956)) b!681688))

(assert (= (and b!681688 res!447957) b!681689))

(declare-fun m!646547 () Bool)

(assert (=> d!93839 m!646547))

(declare-fun m!646549 () Bool)

(assert (=> b!681689 m!646549))

(assert (=> b!681434 d!93839))

(declare-fun d!93853 () Bool)

(declare-fun res!447962 () Bool)

(declare-fun e!388385 () Bool)

(assert (=> d!93853 (=> res!447962 e!388385)))

(assert (=> d!93853 (= res!447962 (= (select (arr!18930 (array!39499 (store (arr!18930 a!3626) i!1382 k!2843) (size!19294 a!3626))) from!3004) k!2843))))

(assert (=> d!93853 (= (arrayContainsKey!0 (array!39499 (store (arr!18930 a!3626) i!1382 k!2843) (size!19294 a!3626)) k!2843 from!3004) e!388385)))

(declare-fun b!681694 () Bool)

(declare-fun e!388386 () Bool)

(assert (=> b!681694 (= e!388385 e!388386)))

(declare-fun res!447963 () Bool)

(assert (=> b!681694 (=> (not res!447963) (not e!388386))))

(assert (=> b!681694 (= res!447963 (bvslt (bvadd from!3004 #b00000000000000000000000000000001) (size!19294 (array!39499 (store (arr!18930 a!3626) i!1382 k!2843) (size!19294 a!3626)))))))

(declare-fun b!681695 () Bool)

(assert (=> b!681695 (= e!388386 (arrayContainsKey!0 (array!39499 (store (arr!18930 a!3626) i!1382 k!2843) (size!19294 a!3626)) k!2843 (bvadd from!3004 #b00000000000000000000000000000001)))))

(assert (= (and d!93853 (not res!447962)) b!681694))

(assert (= (and b!681694 res!447963) b!681695))

(declare-fun m!646555 () Bool)

(assert (=> d!93853 m!646555))

(declare-fun m!646557 () Bool)

(assert (=> b!681695 m!646557))

(assert (=> b!681434 d!93853))

(declare-fun d!93857 () Bool)

(declare-fun lt!313327 () Bool)

(declare-fun content!279 (List!13024) (Set (_ BitVec 64)))

(assert (=> d!93857 (= lt!313327 (set.member #b1000000000000000000000000000000000000000000000000000000000000000 (content!279 acc!681)))))

(declare-fun e!388414 () Bool)

(assert (=> d!93857 (= lt!313327 e!388414)))

(declare-fun res!447991 () Bool)

(assert (=> d!93857 (=> (not res!447991) (not e!388414))))

(assert (=> d!93857 (= res!447991 (is-Cons!13020 acc!681))))

(assert (=> d!93857 (= (contains!3567 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000) lt!313327)))

(declare-fun b!681724 () Bool)

(declare-fun e!388415 () Bool)

(assert (=> b!681724 (= e!388414 e!388415)))

(declare-fun res!447990 () Bool)

(assert (=> b!681724 (=> res!447990 e!388415)))

(assert (=> b!681724 (= res!447990 (= (h!14065 acc!681) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!681725 () Bool)

(assert (=> b!681725 (= e!388415 (contains!3567 (t!19269 acc!681) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!93857 res!447991) b!681724))

(assert (= (and b!681724 (not res!447990)) b!681725))

(declare-fun m!646589 () Bool)

(assert (=> d!93857 m!646589))

(declare-fun m!646595 () Bool)

(assert (=> d!93857 m!646595))

(declare-fun m!646597 () Bool)

(assert (=> b!681725 m!646597))

(assert (=> b!681423 d!93857))

(declare-fun d!93879 () Bool)

(declare-fun lt!313328 () Bool)

(assert (=> d!93879 (= lt!313328 (set.member #b0000000000000000000000000000000000000000000000000000000000000000 (content!279 lt!313268)))))

(declare-fun e!388416 () Bool)

(assert (=> d!93879 (= lt!313328 e!388416)))

(declare-fun res!447993 () Bool)

(assert (=> d!93879 (=> (not res!447993) (not e!388416))))

(assert (=> d!93879 (= res!447993 (is-Cons!13020 lt!313268))))

(assert (=> d!93879 (= (contains!3567 lt!313268 #b0000000000000000000000000000000000000000000000000000000000000000) lt!313328)))

(declare-fun b!681726 () Bool)

(declare-fun e!388417 () Bool)

(assert (=> b!681726 (= e!388416 e!388417)))

(declare-fun res!447992 () Bool)

(assert (=> b!681726 (=> res!447992 e!388417)))

(assert (=> b!681726 (= res!447992 (= (h!14065 lt!313268) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!681727 () Bool)

(assert (=> b!681727 (= e!388417 (contains!3567 (t!19269 lt!313268) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!93879 res!447993) b!681726))

(assert (= (and b!681726 (not res!447992)) b!681727))

(declare-fun m!646599 () Bool)

(assert (=> d!93879 m!646599))

(declare-fun m!646601 () Bool)

(assert (=> d!93879 m!646601))

(declare-fun m!646603 () Bool)

(assert (=> b!681727 m!646603))

(assert (=> b!681424 d!93879))

(declare-fun d!93881 () Bool)

(declare-fun lt!313329 () Bool)

(assert (=> d!93881 (= lt!313329 (set.member #b1000000000000000000000000000000000000000000000000000000000000000 (content!279 lt!313268)))))

(declare-fun e!388418 () Bool)

(assert (=> d!93881 (= lt!313329 e!388418)))

(declare-fun res!447995 () Bool)

(assert (=> d!93881 (=> (not res!447995) (not e!388418))))

(assert (=> d!93881 (= res!447995 (is-Cons!13020 lt!313268))))

(assert (=> d!93881 (= (contains!3567 lt!313268 #b1000000000000000000000000000000000000000000000000000000000000000) lt!313329)))

(declare-fun b!681728 () Bool)

(declare-fun e!388419 () Bool)

(assert (=> b!681728 (= e!388418 e!388419)))

(declare-fun res!447994 () Bool)

(assert (=> b!681728 (=> res!447994 e!388419)))

(assert (=> b!681728 (= res!447994 (= (h!14065 lt!313268) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!681729 () Bool)

(assert (=> b!681729 (= e!388419 (contains!3567 (t!19269 lt!313268) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!93881 res!447995) b!681728))

(assert (= (and b!681728 (not res!447994)) b!681729))

(assert (=> d!93881 m!646599))

(declare-fun m!646605 () Bool)

(assert (=> d!93881 m!646605))

(declare-fun m!646607 () Bool)

(assert (=> b!681729 m!646607))

(assert (=> b!681435 d!93881))

(declare-fun b!681757 () Bool)

(declare-fun e!388444 () Bool)

(declare-fun e!388447 () Bool)

(assert (=> b!681757 (= e!388444 e!388447)))

(declare-fun c!77237 () Bool)

(assert (=> b!681757 (= c!77237 (validKeyInArray!0 (select (arr!18930 a!3626) (bvadd #b00000000000000000000000000000001 from!3004))))))

(declare-fun call!33983 () Bool)

(declare-fun bm!33980 () Bool)

(assert (=> bm!33980 (= call!33983 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004 #b00000000000000000000000000000001) (ite c!77237 (Cons!13020 (select (arr!18930 a!3626) (bvadd #b00000000000000000000000000000001 from!3004)) lt!313268) lt!313268)))))

(declare-fun b!681758 () Bool)

(declare-fun e!388446 () Bool)

(assert (=> b!681758 (= e!388446 (contains!3567 lt!313268 (select (arr!18930 a!3626) (bvadd #b00000000000000000000000000000001 from!3004))))))

(declare-fun b!681759 () Bool)

(assert (=> b!681759 (= e!388447 call!33983)))

(declare-fun b!681760 () Bool)

(declare-fun e!388445 () Bool)

(assert (=> b!681760 (= e!388445 e!388444)))

(declare-fun res!448018 () Bool)

(assert (=> b!681760 (=> (not res!448018) (not e!388444))))

(assert (=> b!681760 (= res!448018 (not e!388446))))

(declare-fun res!448017 () Bool)

(assert (=> b!681760 (=> (not res!448017) (not e!388446))))

(assert (=> b!681760 (= res!448017 (validKeyInArray!0 (select (arr!18930 a!3626) (bvadd #b00000000000000000000000000000001 from!3004))))))

(declare-fun d!93885 () Bool)

(declare-fun res!448019 () Bool)

(assert (=> d!93885 (=> res!448019 e!388445)))

(assert (=> d!93885 (= res!448019 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) (size!19294 a!3626)))))

(assert (=> d!93885 (= (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!313268) e!388445)))

(declare-fun b!681761 () Bool)

(assert (=> b!681761 (= e!388447 call!33983)))

(assert (= (and d!93885 (not res!448019)) b!681760))

(assert (= (and b!681760 res!448017) b!681758))

(assert (= (and b!681760 res!448018) b!681757))

(assert (= (and b!681757 c!77237) b!681759))

(assert (= (and b!681757 (not c!77237)) b!681761))

(assert (= (or b!681759 b!681761) bm!33980))

(assert (=> b!681757 m!646547))

(assert (=> b!681757 m!646547))

(declare-fun m!646623 () Bool)

(assert (=> b!681757 m!646623))

(assert (=> bm!33980 m!646547))

(declare-fun m!646625 () Bool)

(assert (=> bm!33980 m!646625))

(assert (=> b!681758 m!646547))

(assert (=> b!681758 m!646547))

(declare-fun m!646627 () Bool)

(assert (=> b!681758 m!646627))

(assert (=> b!681760 m!646547))

(assert (=> b!681760 m!646547))

(assert (=> b!681760 m!646623))

(assert (=> b!681425 d!93885))

(declare-fun d!93893 () Bool)

(assert (=> d!93893 (noDuplicate!814 acc!681)))

(declare-fun lt!313338 () Unit!23890)

(declare-fun choose!1394 (List!13024 List!13024) Unit!23890)

(assert (=> d!93893 (= lt!313338 (choose!1394 acc!681 lt!313268))))

(declare-fun e!388457 () Bool)

(assert (=> d!93893 e!388457))

(declare-fun res!448029 () Bool)

(assert (=> d!93893 (=> (not res!448029) (not e!388457))))

(assert (=> d!93893 (= res!448029 (subseq!152 acc!681 lt!313268))))

(assert (=> d!93893 (= (noDuplicateSubseq!26 acc!681 lt!313268) lt!313338)))

(declare-fun b!681771 () Bool)

(assert (=> b!681771 (= e!388457 (noDuplicate!814 lt!313268))))

(assert (= (and d!93893 res!448029) b!681771))

(assert (=> d!93893 m!646339))

(declare-fun m!646631 () Bool)

(assert (=> d!93893 m!646631))

(assert (=> d!93893 m!646327))


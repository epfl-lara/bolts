; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!103042 () Bool)

(assert start!103042)

(declare-fun b!1237429 () Bool)

(declare-fun res!825426 () Bool)

(declare-fun e!701303 () Bool)

(assert (=> b!1237429 (=> (not res!825426) (not e!701303))))

(declare-fun from!3213 () (_ BitVec 32))

(declare-datatypes ((array!79767 0))(
  ( (array!79768 (arr!38486 (Array (_ BitVec 32) (_ BitVec 64))) (size!39023 (_ BitVec 32))) )
))
(declare-fun a!3835 () array!79767)

(assert (=> b!1237429 (= res!825426 (not (= from!3213 (bvsub (size!39023 a!3835) #b00000000000000000000000000000001))))))

(declare-fun b!1237430 () Bool)

(declare-fun res!825429 () Bool)

(assert (=> b!1237430 (=> (not res!825429) (not e!701303))))

(declare-datatypes ((List!27437 0))(
  ( (Nil!27434) (Cons!27433 (h!28642 (_ BitVec 64)) (t!40907 List!27437)) )
))
(declare-fun acc!846 () List!27437)

(declare-fun noDuplicate!1959 (List!27437) Bool)

(assert (=> b!1237430 (= res!825429 (noDuplicate!1959 acc!846))))

(declare-fun b!1237431 () Bool)

(declare-fun res!825425 () Bool)

(assert (=> b!1237431 (=> (not res!825425) (not e!701303))))

(declare-fun contains!7352 (List!27437 (_ BitVec 64)) Bool)

(assert (=> b!1237431 (= res!825425 (not (contains!7352 acc!846 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1237433 () Bool)

(declare-fun e!701301 () Bool)

(declare-fun lt!561021 () List!27437)

(assert (=> b!1237433 (= e!701301 (noDuplicate!1959 lt!561021))))

(declare-fun b!1237434 () Bool)

(declare-fun res!825423 () Bool)

(assert (=> b!1237434 (=> (not res!825423) (not e!701303))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1237434 (= res!825423 (validKeyInArray!0 (select (arr!38486 a!3835) from!3213)))))

(declare-fun b!1237435 () Bool)

(declare-fun res!825427 () Bool)

(assert (=> b!1237435 (=> (not res!825427) (not e!701303))))

(declare-fun arrayNoDuplicates!0 (array!79767 (_ BitVec 32) List!27437) Bool)

(assert (=> b!1237435 (= res!825427 (arrayNoDuplicates!0 a!3835 from!3213 acc!846))))

(declare-fun b!1237436 () Bool)

(declare-fun res!825424 () Bool)

(assert (=> b!1237436 (=> (not res!825424) (not e!701303))))

(declare-fun k!2925 () (_ BitVec 64))

(assert (=> b!1237436 (= res!825424 (contains!7352 acc!846 k!2925))))

(declare-fun b!1237437 () Bool)

(assert (=> b!1237437 (= e!701303 (not e!701301))))

(declare-fun res!825430 () Bool)

(assert (=> b!1237437 (=> res!825430 e!701301)))

(assert (=> b!1237437 (= res!825430 (bvslt (bvadd #b00000000000000000000000000000001 from!3213) #b00000000000000000000000000000000))))

(declare-fun subseq!589 (List!27437 List!27437) Bool)

(assert (=> b!1237437 (subseq!589 acc!846 lt!561021)))

(declare-datatypes ((Unit!41018 0))(
  ( (Unit!41019) )
))
(declare-fun lt!561022 () Unit!41018)

(declare-fun subseqTail!76 (List!27437 List!27437) Unit!41018)

(assert (=> b!1237437 (= lt!561022 (subseqTail!76 lt!561021 lt!561021))))

(assert (=> b!1237437 (subseq!589 lt!561021 lt!561021)))

(declare-fun lt!561020 () Unit!41018)

(declare-fun lemmaListSubSeqRefl!0 (List!27437) Unit!41018)

(assert (=> b!1237437 (= lt!561020 (lemmaListSubSeqRefl!0 lt!561021))))

(assert (=> b!1237437 (= lt!561021 (Cons!27433 (select (arr!38486 a!3835) from!3213) acc!846))))

(declare-fun res!825422 () Bool)

(assert (=> start!103042 (=> (not res!825422) (not e!701303))))

(assert (=> start!103042 (= res!825422 (and (bvslt (size!39023 a!3835) #b01111111111111111111111111111111) (bvsge from!3213 #b00000000000000000000000000000000) (bvslt from!3213 (size!39023 a!3835))))))

(assert (=> start!103042 e!701303))

(declare-fun array_inv!29262 (array!79767) Bool)

(assert (=> start!103042 (array_inv!29262 a!3835)))

(assert (=> start!103042 true))

(declare-fun b!1237432 () Bool)

(declare-fun res!825428 () Bool)

(assert (=> b!1237432 (=> (not res!825428) (not e!701303))))

(assert (=> b!1237432 (= res!825428 (not (contains!7352 acc!846 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!103042 res!825422) b!1237430))

(assert (= (and b!1237430 res!825429) b!1237431))

(assert (= (and b!1237431 res!825425) b!1237432))

(assert (= (and b!1237432 res!825428) b!1237435))

(assert (= (and b!1237435 res!825427) b!1237436))

(assert (= (and b!1237436 res!825424) b!1237429))

(assert (= (and b!1237429 res!825426) b!1237434))

(assert (= (and b!1237434 res!825423) b!1237437))

(assert (= (and b!1237437 (not res!825430)) b!1237433))

(declare-fun m!1141179 () Bool)

(assert (=> b!1237437 m!1141179))

(declare-fun m!1141181 () Bool)

(assert (=> b!1237437 m!1141181))

(declare-fun m!1141183 () Bool)

(assert (=> b!1237437 m!1141183))

(declare-fun m!1141185 () Bool)

(assert (=> b!1237437 m!1141185))

(declare-fun m!1141187 () Bool)

(assert (=> b!1237437 m!1141187))

(declare-fun m!1141189 () Bool)

(assert (=> b!1237433 m!1141189))

(declare-fun m!1141191 () Bool)

(assert (=> b!1237431 m!1141191))

(declare-fun m!1141193 () Bool)

(assert (=> b!1237430 m!1141193))

(declare-fun m!1141195 () Bool)

(assert (=> b!1237436 m!1141195))

(assert (=> b!1237434 m!1141187))

(assert (=> b!1237434 m!1141187))

(declare-fun m!1141197 () Bool)

(assert (=> b!1237434 m!1141197))

(declare-fun m!1141199 () Bool)

(assert (=> b!1237435 m!1141199))

(declare-fun m!1141201 () Bool)

(assert (=> b!1237432 m!1141201))

(declare-fun m!1141203 () Bool)

(assert (=> start!103042 m!1141203))

(push 1)

(assert (not b!1237431))

(assert (not start!103042))

(assert (not b!1237434))

(assert (not b!1237432))

(assert (not b!1237436))

(assert (not b!1237430))

(assert (not b!1237437))

(assert (not b!1237435))

(assert (not b!1237433))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!135603 () Bool)

(assert (=> d!135603 (= (validKeyInArray!0 (select (arr!38486 a!3835) from!3213)) (and (not (= (select (arr!38486 a!3835) from!3213) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!38486 a!3835) from!3213) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1237434 d!135603))

(declare-fun d!135609 () Bool)

(assert (=> d!135609 (= (array_inv!29262 a!3835) (bvsge (size!39023 a!3835) #b00000000000000000000000000000000))))

(assert (=> start!103042 d!135609))

(declare-fun bm!61019 () Bool)

(declare-fun c!120877 () Bool)

(declare-fun call!61022 () Bool)

(assert (=> bm!61019 (= call!61022 (arrayNoDuplicates!0 a!3835 (bvadd from!3213 #b00000000000000000000000000000001) (ite c!120877 (Cons!27433 (select (arr!38486 a!3835) from!3213) acc!846) acc!846)))))

(declare-fun b!1237505 () Bool)

(declare-fun e!701361 () Bool)

(declare-fun e!701362 () Bool)

(assert (=> b!1237505 (= e!701361 e!701362)))

(declare-fun res!825476 () Bool)

(assert (=> b!1237505 (=> (not res!825476) (not e!701362))))

(declare-fun e!701360 () Bool)

(assert (=> b!1237505 (= res!825476 (not e!701360))))

(declare-fun res!825478 () Bool)

(assert (=> b!1237505 (=> (not res!825478) (not e!701360))))

(assert (=> b!1237505 (= res!825478 (validKeyInArray!0 (select (arr!38486 a!3835) from!3213)))))

(declare-fun d!135611 () Bool)

(declare-fun res!825477 () Bool)

(assert (=> d!135611 (=> res!825477 e!701361)))

(assert (=> d!135611 (= res!825477 (bvsge from!3213 (size!39023 a!3835)))))

(assert (=> d!135611 (= (arrayNoDuplicates!0 a!3835 from!3213 acc!846) e!701361)))

(declare-fun b!1237506 () Bool)

(assert (=> b!1237506 (= e!701360 (contains!7352 acc!846 (select (arr!38486 a!3835) from!3213)))))

(declare-fun b!1237507 () Bool)

(declare-fun e!701363 () Bool)

(assert (=> b!1237507 (= e!701363 call!61022)))

(declare-fun b!1237508 () Bool)

(assert (=> b!1237508 (= e!701363 call!61022)))

(declare-fun b!1237509 () Bool)

(assert (=> b!1237509 (= e!701362 e!701363)))

(assert (=> b!1237509 (= c!120877 (validKeyInArray!0 (select (arr!38486 a!3835) from!3213)))))

(assert (= (and d!135611 (not res!825477)) b!1237505))

(assert (= (and b!1237505 res!825478) b!1237506))

(assert (= (and b!1237505 res!825476) b!1237509))

(assert (= (and b!1237509 c!120877) b!1237507))

(assert (= (and b!1237509 (not c!120877)) b!1237508))

(assert (= (or b!1237507 b!1237508) bm!61019))

(assert (=> bm!61019 m!1141187))

(declare-fun m!1141231 () Bool)

(assert (=> bm!61019 m!1141231))

(assert (=> b!1237505 m!1141187))

(assert (=> b!1237505 m!1141187))

(assert (=> b!1237505 m!1141197))

(assert (=> b!1237506 m!1141187))

(assert (=> b!1237506 m!1141187))

(declare-fun m!1141233 () Bool)

(assert (=> b!1237506 m!1141233))

(assert (=> b!1237509 m!1141187))

(assert (=> b!1237509 m!1141187))

(assert (=> b!1237509 m!1141197))

(assert (=> b!1237435 d!135611))

(declare-fun d!135617 () Bool)

(declare-fun res!825492 () Bool)

(declare-fun e!701380 () Bool)

(assert (=> d!135617 (=> res!825492 e!701380)))

(assert (=> d!135617 (= res!825492 (is-Nil!27434 acc!846))))

(assert (=> d!135617 (= (noDuplicate!1959 acc!846) e!701380)))

(declare-fun b!1237529 () Bool)

(declare-fun e!701381 () Bool)

(assert (=> b!1237529 (= e!701380 e!701381)))

(declare-fun res!825493 () Bool)

(assert (=> b!1237529 (=> (not res!825493) (not e!701381))))

(assert (=> b!1237529 (= res!825493 (not (contains!7352 (t!40907 acc!846) (h!28642 acc!846))))))

(declare-fun b!1237530 () Bool)

(assert (=> b!1237530 (= e!701381 (noDuplicate!1959 (t!40907 acc!846)))))


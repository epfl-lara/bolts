; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!59988 () Bool)

(assert start!59988)

(declare-fun b!665309 () Bool)

(declare-fun res!433005 () Bool)

(declare-fun e!381267 () Bool)

(assert (=> b!665309 (=> res!433005 e!381267)))

(declare-datatypes ((List!12778 0))(
  ( (Nil!12775) (Cons!12774 (h!13819 (_ BitVec 64)) (t!19014 List!12778)) )
))
(declare-fun lt!310000 () List!12778)

(declare-fun noDuplicate!568 (List!12778) Bool)

(assert (=> b!665309 (= res!433005 (not (noDuplicate!568 lt!310000)))))

(declare-fun b!665310 () Bool)

(declare-fun res!433016 () Bool)

(declare-fun e!381271 () Bool)

(assert (=> b!665310 (=> (not res!433016) (not e!381271))))

(declare-fun acc!681 () List!12778)

(declare-fun contains!3321 (List!12778 (_ BitVec 64)) Bool)

(assert (=> b!665310 (= res!433016 (not (contains!3321 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!665311 () Bool)

(declare-datatypes ((Unit!23215 0))(
  ( (Unit!23216) )
))
(declare-fun e!381273 () Unit!23215)

(declare-fun lt!309999 () Unit!23215)

(assert (=> b!665311 (= e!381273 lt!309999)))

(declare-fun lt!309993 () Unit!23215)

(declare-fun lemmaListSubSeqRefl!0 (List!12778) Unit!23215)

(assert (=> b!665311 (= lt!309993 (lemmaListSubSeqRefl!0 acc!681))))

(declare-fun subseq!59 (List!12778 List!12778) Bool)

(assert (=> b!665311 (subseq!59 acc!681 acc!681)))

(declare-datatypes ((array!38991 0))(
  ( (array!38992 (arr!18684 (Array (_ BitVec 32) (_ BitVec 64))) (size!19048 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!38991)

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!38991 List!12778 List!12778 (_ BitVec 32)) Unit!23215)

(declare-fun $colon$colon!190 (List!12778 (_ BitVec 64)) List!12778)

(assert (=> b!665311 (= lt!309999 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!190 acc!681 (select (arr!18684 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(declare-fun arrayNoDuplicates!0 (array!38991 (_ BitVec 32) List!12778) Bool)

(assert (=> b!665311 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun b!665312 () Bool)

(declare-fun res!433001 () Bool)

(assert (=> b!665312 (=> (not res!433001) (not e!381271))))

(assert (=> b!665312 (= res!433001 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12775))))

(declare-fun b!665313 () Bool)

(declare-fun e!381269 () Bool)

(declare-fun k!2843 () (_ BitVec 64))

(assert (=> b!665313 (= e!381269 (not (contains!3321 acc!681 k!2843)))))

(declare-fun b!665314 () Bool)

(declare-fun res!433009 () Bool)

(assert (=> b!665314 (=> (not res!433009) (not e!381271))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!665314 (= res!433009 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19048 a!3626))))))

(declare-fun b!665315 () Bool)

(declare-fun res!433004 () Bool)

(assert (=> b!665315 (=> (not res!433004) (not e!381271))))

(declare-fun arrayContainsKey!0 (array!38991 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!665315 (= res!433004 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!665316 () Bool)

(assert (=> b!665316 (= e!381271 (not e!381267))))

(declare-fun res!433011 () Bool)

(assert (=> b!665316 (=> res!433011 e!381267)))

(assert (=> b!665316 (= res!433011 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun -!57 (List!12778 (_ BitVec 64)) List!12778)

(assert (=> b!665316 (= (-!57 lt!310000 k!2843) acc!681)))

(assert (=> b!665316 (= lt!310000 ($colon$colon!190 acc!681 k!2843))))

(declare-fun lt!310002 () Unit!23215)

(declare-fun lemmaLMinusHeadEqualsTail!0 ((_ BitVec 64) List!12778) Unit!23215)

(assert (=> b!665316 (= lt!310002 (lemmaLMinusHeadEqualsTail!0 k!2843 acc!681))))

(assert (=> b!665316 (subseq!59 acc!681 acc!681)))

(declare-fun lt!309996 () Unit!23215)

(assert (=> b!665316 (= lt!309996 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!665316 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!309995 () Unit!23215)

(assert (=> b!665316 (= lt!309995 e!381273)))

(declare-fun c!76523 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!665316 (= c!76523 (validKeyInArray!0 (select (arr!18684 a!3626) from!3004)))))

(declare-fun lt!309998 () Unit!23215)

(declare-fun e!381274 () Unit!23215)

(assert (=> b!665316 (= lt!309998 e!381274)))

(declare-fun c!76522 () Bool)

(declare-fun lt!309997 () Bool)

(assert (=> b!665316 (= c!76522 lt!309997)))

(assert (=> b!665316 (= lt!309997 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!665316 (arrayContainsKey!0 (array!38992 (store (arr!18684 a!3626) i!1382 k!2843) (size!19048 a!3626)) k!2843 from!3004)))

(declare-fun b!665317 () Bool)

(declare-fun e!381270 () Bool)

(assert (=> b!665317 (= e!381270 (contains!3321 acc!681 k!2843))))

(declare-fun b!665318 () Bool)

(declare-fun res!433012 () Bool)

(assert (=> b!665318 (=> (not res!433012) (not e!381271))))

(assert (=> b!665318 (= res!433012 (not (contains!3321 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!665319 () Bool)

(declare-fun Unit!23217 () Unit!23215)

(assert (=> b!665319 (= e!381274 Unit!23217)))

(declare-fun b!665320 () Bool)

(declare-fun res!433015 () Bool)

(assert (=> b!665320 (=> (not res!433015) (not e!381271))))

(assert (=> b!665320 (= res!433015 (validKeyInArray!0 k!2843))))

(declare-fun b!665321 () Bool)

(declare-fun res!433019 () Bool)

(assert (=> b!665321 (=> res!433019 e!381267)))

(assert (=> b!665321 (= res!433019 (contains!3321 lt!310000 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!665322 () Bool)

(declare-fun res!432999 () Bool)

(assert (=> b!665322 (=> res!432999 e!381267)))

(assert (=> b!665322 (= res!432999 lt!309997)))

(declare-fun b!665323 () Bool)

(assert (=> b!665323 (= e!381267 true)))

(declare-fun lt!310001 () Bool)

(assert (=> b!665323 (= lt!310001 (contains!3321 lt!310000 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!665324 () Bool)

(declare-fun res!433006 () Bool)

(assert (=> b!665324 (=> res!433006 e!381267)))

(assert (=> b!665324 (= res!433006 (not (contains!3321 lt!310000 k!2843)))))

(declare-fun b!665325 () Bool)

(declare-fun res!433007 () Bool)

(assert (=> b!665325 (=> (not res!433007) (not e!381271))))

(assert (=> b!665325 (= res!433007 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!665326 () Bool)

(declare-fun Unit!23218 () Unit!23215)

(assert (=> b!665326 (= e!381274 Unit!23218)))

(declare-fun lt!309994 () Unit!23215)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!38991 (_ BitVec 64) (_ BitVec 32)) Unit!23215)

(assert (=> b!665326 (= lt!309994 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!665326 false))

(declare-fun b!665327 () Bool)

(declare-fun res!433017 () Bool)

(assert (=> b!665327 (=> (not res!433017) (not e!381271))))

(declare-fun e!381268 () Bool)

(assert (=> b!665327 (= res!433017 e!381268)))

(declare-fun res!433014 () Bool)

(assert (=> b!665327 (=> res!433014 e!381268)))

(assert (=> b!665327 (= res!433014 e!381270)))

(declare-fun res!433002 () Bool)

(assert (=> b!665327 (=> (not res!433002) (not e!381270))))

(assert (=> b!665327 (= res!433002 (bvsgt from!3004 i!1382))))

(declare-fun b!665328 () Bool)

(assert (=> b!665328 (= e!381268 e!381269)))

(declare-fun res!433010 () Bool)

(assert (=> b!665328 (=> (not res!433010) (not e!381269))))

(assert (=> b!665328 (= res!433010 (bvsle from!3004 i!1382))))

(declare-fun b!665329 () Bool)

(declare-fun Unit!23219 () Unit!23215)

(assert (=> b!665329 (= e!381273 Unit!23219)))

(declare-fun res!433018 () Bool)

(assert (=> start!59988 (=> (not res!433018) (not e!381271))))

(assert (=> start!59988 (= res!433018 (and (bvslt (size!19048 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19048 a!3626))))))

(assert (=> start!59988 e!381271))

(assert (=> start!59988 true))

(declare-fun array_inv!14458 (array!38991) Bool)

(assert (=> start!59988 (array_inv!14458 a!3626)))

(declare-fun b!665330 () Bool)

(declare-fun res!433013 () Bool)

(assert (=> b!665330 (=> (not res!433013) (not e!381271))))

(assert (=> b!665330 (= res!433013 (noDuplicate!568 acc!681))))

(declare-fun b!665331 () Bool)

(declare-fun res!433000 () Bool)

(assert (=> b!665331 (=> res!433000 e!381267)))

(assert (=> b!665331 (= res!433000 (contains!3321 acc!681 k!2843))))

(declare-fun b!665332 () Bool)

(declare-fun res!433003 () Bool)

(assert (=> b!665332 (=> res!433003 e!381267)))

(assert (=> b!665332 (= res!433003 (not (subseq!59 acc!681 lt!310000)))))

(declare-fun b!665333 () Bool)

(declare-fun res!433008 () Bool)

(assert (=> b!665333 (=> (not res!433008) (not e!381271))))

(assert (=> b!665333 (= res!433008 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19048 a!3626)) (= from!3004 i!1382)))))

(assert (= (and start!59988 res!433018) b!665330))

(assert (= (and b!665330 res!433013) b!665310))

(assert (= (and b!665310 res!433016) b!665318))

(assert (= (and b!665318 res!433012) b!665327))

(assert (= (and b!665327 res!433002) b!665317))

(assert (= (and b!665327 (not res!433014)) b!665328))

(assert (= (and b!665328 res!433010) b!665313))

(assert (= (and b!665327 res!433017) b!665312))

(assert (= (and b!665312 res!433001) b!665325))

(assert (= (and b!665325 res!433007) b!665314))

(assert (= (and b!665314 res!433009) b!665320))

(assert (= (and b!665320 res!433015) b!665315))

(assert (= (and b!665315 res!433004) b!665333))

(assert (= (and b!665333 res!433008) b!665316))

(assert (= (and b!665316 c!76522) b!665326))

(assert (= (and b!665316 (not c!76522)) b!665319))

(assert (= (and b!665316 c!76523) b!665311))

(assert (= (and b!665316 (not c!76523)) b!665329))

(assert (= (and b!665316 (not res!433011)) b!665309))

(assert (= (and b!665309 (not res!433005)) b!665322))

(assert (= (and b!665322 (not res!432999)) b!665331))

(assert (= (and b!665331 (not res!433000)) b!665332))

(assert (= (and b!665332 (not res!433003)) b!665324))

(assert (= (and b!665324 (not res!433006)) b!665321))

(assert (= (and b!665321 (not res!433019)) b!665323))

(declare-fun m!636411 () Bool)

(assert (=> b!665326 m!636411))

(declare-fun m!636413 () Bool)

(assert (=> b!665312 m!636413))

(declare-fun m!636415 () Bool)

(assert (=> b!665309 m!636415))

(declare-fun m!636417 () Bool)

(assert (=> b!665311 m!636417))

(declare-fun m!636419 () Bool)

(assert (=> b!665311 m!636419))

(declare-fun m!636421 () Bool)

(assert (=> b!665311 m!636421))

(declare-fun m!636423 () Bool)

(assert (=> b!665311 m!636423))

(assert (=> b!665311 m!636419))

(assert (=> b!665311 m!636421))

(declare-fun m!636425 () Bool)

(assert (=> b!665311 m!636425))

(declare-fun m!636427 () Bool)

(assert (=> b!665311 m!636427))

(declare-fun m!636429 () Bool)

(assert (=> b!665332 m!636429))

(declare-fun m!636431 () Bool)

(assert (=> start!59988 m!636431))

(declare-fun m!636433 () Bool)

(assert (=> b!665320 m!636433))

(declare-fun m!636435 () Bool)

(assert (=> b!665321 m!636435))

(declare-fun m!636437 () Bool)

(assert (=> b!665325 m!636437))

(assert (=> b!665316 m!636417))

(assert (=> b!665316 m!636419))

(declare-fun m!636439 () Bool)

(assert (=> b!665316 m!636439))

(declare-fun m!636441 () Bool)

(assert (=> b!665316 m!636441))

(assert (=> b!665316 m!636425))

(declare-fun m!636443 () Bool)

(assert (=> b!665316 m!636443))

(declare-fun m!636445 () Bool)

(assert (=> b!665316 m!636445))

(declare-fun m!636447 () Bool)

(assert (=> b!665316 m!636447))

(assert (=> b!665316 m!636419))

(declare-fun m!636449 () Bool)

(assert (=> b!665316 m!636449))

(declare-fun m!636451 () Bool)

(assert (=> b!665316 m!636451))

(assert (=> b!665316 m!636427))

(declare-fun m!636453 () Bool)

(assert (=> b!665323 m!636453))

(declare-fun m!636455 () Bool)

(assert (=> b!665313 m!636455))

(declare-fun m!636457 () Bool)

(assert (=> b!665315 m!636457))

(declare-fun m!636459 () Bool)

(assert (=> b!665330 m!636459))

(assert (=> b!665317 m!636455))

(assert (=> b!665331 m!636455))

(declare-fun m!636461 () Bool)

(assert (=> b!665310 m!636461))

(declare-fun m!636463 () Bool)

(assert (=> b!665318 m!636463))

(declare-fun m!636465 () Bool)

(assert (=> b!665324 m!636465))

(push 1)

(assert (not start!59988))

(assert (not b!665332))

(assert (not b!665316))

(assert (not b!665321))

(assert (not b!665313))

(assert (not b!665317))

(assert (not b!665331))

(assert (not b!665326))

(assert (not b!665325))

(assert (not b!665323))

(assert (not b!665330))

(assert (not b!665318))

(assert (not b!665320))

(assert (not b!665310))

(assert (not b!665315))

(assert (not b!665311))

(assert (not b!665312))

(assert (not b!665324))

(assert (not b!665309))

(check-sat)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!102362 () Bool)

(assert start!102362)

(declare-fun b!1231288 () Bool)

(declare-fun res!819841 () Bool)

(declare-fun e!698516 () Bool)

(assert (=> b!1231288 (=> (not res!819841) (not e!698516))))

(declare-fun from!3184 () (_ BitVec 32))

(declare-datatypes ((array!79410 0))(
  ( (array!79411 (arr!38318 (Array (_ BitVec 32) (_ BitVec 64))) (size!38855 (_ BitVec 32))) )
))
(declare-fun a!3806 () array!79410)

(assert (=> b!1231288 (= res!819841 (and (bvsge from!3184 #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3184) (size!38855 a!3806)) (bvslt from!3184 (size!38855 a!3806))))))

(declare-fun b!1231289 () Bool)

(declare-fun e!698518 () Bool)

(assert (=> b!1231289 (= e!698516 (not e!698518))))

(declare-fun res!819838 () Bool)

(assert (=> b!1231289 (=> res!819838 e!698518)))

(assert (=> b!1231289 (= res!819838 (bvsgt from!3184 (size!38855 a!3806)))))

(declare-datatypes ((List!27269 0))(
  ( (Nil!27266) (Cons!27265 (h!28474 (_ BitVec 64)) (t!40739 List!27269)) )
))
(declare-fun acc!823 () List!27269)

(declare-fun arrayNoDuplicates!0 (array!79410 (_ BitVec 32) List!27269) Bool)

(assert (=> b!1231289 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27265 (select (arr!38318 a!3806) from!3184) acc!823))))

(declare-fun b!1231290 () Bool)

(declare-fun res!819833 () Bool)

(assert (=> b!1231290 (=> res!819833 e!698518)))

(declare-fun contains!7184 (List!27269 (_ BitVec 64)) Bool)

(assert (=> b!1231290 (= res!819833 (contains!7184 Nil!27266 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1231291 () Bool)

(declare-fun res!819834 () Bool)

(assert (=> b!1231291 (=> (not res!819834) (not e!698516))))

(declare-fun k!2913 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1231291 (= res!819834 (validKeyInArray!0 k!2913))))

(declare-fun b!1231292 () Bool)

(declare-fun subseq!502 (List!27269 List!27269) Bool)

(assert (=> b!1231292 (= e!698518 (subseq!502 Nil!27266 acc!823))))

(declare-fun b!1231293 () Bool)

(declare-fun res!819840 () Bool)

(assert (=> b!1231293 (=> res!819840 e!698518)))

(assert (=> b!1231293 (= res!819840 (contains!7184 Nil!27266 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1231294 () Bool)

(declare-fun res!819837 () Bool)

(assert (=> b!1231294 (=> (not res!819837) (not e!698516))))

(declare-fun noDuplicate!1791 (List!27269) Bool)

(assert (=> b!1231294 (= res!819837 (noDuplicate!1791 acc!823))))

(declare-fun b!1231295 () Bool)

(declare-fun res!819842 () Bool)

(assert (=> b!1231295 (=> (not res!819842) (not e!698516))))

(assert (=> b!1231295 (= res!819842 (not (contains!7184 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1231296 () Bool)

(declare-fun res!819835 () Bool)

(assert (=> b!1231296 (=> (not res!819835) (not e!698516))))

(declare-fun arrayContainsKey!0 (array!79410 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1231296 (= res!819835 (arrayContainsKey!0 a!3806 k!2913 (bvadd #b00000000000000000000000000000001 from!3184)))))

(declare-fun b!1231297 () Bool)

(declare-fun res!819836 () Bool)

(assert (=> b!1231297 (=> (not res!819836) (not e!698516))))

(assert (=> b!1231297 (= res!819836 (validKeyInArray!0 (select (arr!38318 a!3806) from!3184)))))

(declare-fun b!1231298 () Bool)

(declare-fun res!819832 () Bool)

(assert (=> b!1231298 (=> (not res!819832) (not e!698516))))

(assert (=> b!1231298 (= res!819832 (arrayNoDuplicates!0 a!3806 from!3184 acc!823))))

(declare-fun b!1231299 () Bool)

(declare-fun res!819839 () Bool)

(assert (=> b!1231299 (=> (not res!819839) (not e!698516))))

(assert (=> b!1231299 (= res!819839 (not (contains!7184 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!819831 () Bool)

(assert (=> start!102362 (=> (not res!819831) (not e!698516))))

(assert (=> start!102362 (= res!819831 (bvslt (size!38855 a!3806) #b01111111111111111111111111111111))))

(assert (=> start!102362 e!698516))

(declare-fun array_inv!29094 (array!79410) Bool)

(assert (=> start!102362 (array_inv!29094 a!3806)))

(assert (=> start!102362 true))

(assert (= (and start!102362 res!819831) b!1231291))

(assert (= (and b!1231291 res!819834) b!1231288))

(assert (= (and b!1231288 res!819841) b!1231294))

(assert (= (and b!1231294 res!819837) b!1231295))

(assert (= (and b!1231295 res!819842) b!1231299))

(assert (= (and b!1231299 res!819839) b!1231296))

(assert (= (and b!1231296 res!819835) b!1231298))

(assert (= (and b!1231298 res!819832) b!1231297))

(assert (= (and b!1231297 res!819836) b!1231289))

(assert (= (and b!1231289 (not res!819838)) b!1231293))

(assert (= (and b!1231293 (not res!819840)) b!1231290))

(assert (= (and b!1231290 (not res!819833)) b!1231292))

(declare-fun m!1135539 () Bool)

(assert (=> b!1231292 m!1135539))

(declare-fun m!1135541 () Bool)

(assert (=> b!1231299 m!1135541))

(declare-fun m!1135543 () Bool)

(assert (=> start!102362 m!1135543))

(declare-fun m!1135545 () Bool)

(assert (=> b!1231290 m!1135545))

(declare-fun m!1135547 () Bool)

(assert (=> b!1231293 m!1135547))

(declare-fun m!1135549 () Bool)

(assert (=> b!1231296 m!1135549))

(declare-fun m!1135551 () Bool)

(assert (=> b!1231289 m!1135551))

(declare-fun m!1135553 () Bool)

(assert (=> b!1231289 m!1135553))

(declare-fun m!1135555 () Bool)

(assert (=> b!1231298 m!1135555))

(declare-fun m!1135557 () Bool)

(assert (=> b!1231294 m!1135557))

(assert (=> b!1231297 m!1135551))

(assert (=> b!1231297 m!1135551))

(declare-fun m!1135559 () Bool)

(assert (=> b!1231297 m!1135559))

(declare-fun m!1135561 () Bool)

(assert (=> b!1231295 m!1135561))

(declare-fun m!1135563 () Bool)

(assert (=> b!1231291 m!1135563))

(push 1)

(assert (not b!1231298))

(assert (not b!1231293))

(assert (not b!1231291))

(assert (not b!1231292))

(assert (not b!1231294))

(assert (not b!1231289))

(assert (not b!1231295))

(assert (not b!1231297))

(assert (not start!102362))

(assert (not b!1231299))

(assert (not b!1231290))

(assert (not b!1231296))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!134671 () Bool)

(assert (=> d!134671 (= (array_inv!29094 a!3806) (bvsge (size!38855 a!3806) #b00000000000000000000000000000000))))

(assert (=> start!102362 d!134671))

(declare-fun d!134673 () Bool)

(declare-fun lt!559352 () Bool)

(declare-fun content!571 (List!27269) (Set (_ BitVec 64)))

(assert (=> d!134673 (= lt!559352 (member #b0000000000000000000000000000000000000000000000000000000000000000 (content!571 Nil!27266)))))

(declare-fun e!698556 () Bool)

(assert (=> d!134673 (= lt!559352 e!698556)))

(declare-fun res!819879 () Bool)

(assert (=> d!134673 (=> (not res!819879) (not e!698556))))

(assert (=> d!134673 (= res!819879 (is-Cons!27265 Nil!27266))))

(assert (=> d!134673 (= (contains!7184 Nil!27266 #b0000000000000000000000000000000000000000000000000000000000000000) lt!559352)))

(declare-fun b!1231336 () Bool)

(declare-fun e!698555 () Bool)

(assert (=> b!1231336 (= e!698556 e!698555)))

(declare-fun res!819880 () Bool)

(assert (=> b!1231336 (=> res!819880 e!698555)))

(assert (=> b!1231336 (= res!819880 (= (h!28474 Nil!27266) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1231337 () Bool)

(assert (=> b!1231337 (= e!698555 (contains!7184 (t!40739 Nil!27266) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!134673 res!819879) b!1231336))

(assert (= (and b!1231336 (not res!819880)) b!1231337))

(declare-fun m!1135583 () Bool)

(assert (=> d!134673 m!1135583))

(declare-fun m!1135585 () Bool)

(assert (=> d!134673 m!1135585))

(declare-fun m!1135587 () Bool)

(assert (=> b!1231337 m!1135587))

(assert (=> b!1231293 d!134673))

(declare-fun d!134679 () Bool)

(declare-fun res!819895 () Bool)

(declare-fun e!698573 () Bool)

(assert (=> d!134679 (=> res!819895 e!698573)))

(assert (=> d!134679 (= res!819895 (is-Nil!27266 acc!823))))

(assert (=> d!134679 (= (noDuplicate!1791 acc!823) e!698573)))

(declare-fun b!1231356 () Bool)

(declare-fun e!698574 () Bool)

(assert (=> b!1231356 (= e!698573 e!698574)))

(declare-fun res!819896 () Bool)

(assert (=> b!1231356 (=> (not res!819896) (not e!698574))))

(assert (=> b!1231356 (= res!819896 (not (contains!7184 (t!40739 acc!823) (h!28474 acc!823))))))

(declare-fun b!1231357 () Bool)

(assert (=> b!1231357 (= e!698574 (noDuplicate!1791 (t!40739 acc!823)))))

(assert (= (and d!134679 (not res!819895)) b!1231356))

(assert (= (and b!1231356 res!819896) b!1231357))

(declare-fun m!1135593 () Bool)

(assert (=> b!1231356 m!1135593))

(declare-fun m!1135595 () Bool)

(assert (=> b!1231357 m!1135595))

(assert (=> b!1231294 d!134679))

(declare-fun d!134685 () Bool)

(declare-fun lt!559353 () Bool)

(assert (=> d!134685 (= lt!559353 (member #b1000000000000000000000000000000000000000000000000000000000000000 (content!571 Nil!27266)))))

(declare-fun e!698576 () Bool)

(assert (=> d!134685 (= lt!559353 e!698576)))

(declare-fun res!819897 () Bool)

(assert (=> d!134685 (=> (not res!819897) (not e!698576))))

(assert (=> d!134685 (= res!819897 (is-Cons!27265 Nil!27266))))

(assert (=> d!134685 (= (contains!7184 Nil!27266 #b1000000000000000000000000000000000000000000000000000000000000000) lt!559353)))

(declare-fun b!1231358 () Bool)

(declare-fun e!698575 () Bool)

(assert (=> b!1231358 (= e!698576 e!698575)))

(declare-fun res!819898 () Bool)

(assert (=> b!1231358 (=> res!819898 e!698575)))

(assert (=> b!1231358 (= res!819898 (= (h!28474 Nil!27266) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1231359 () Bool)

(assert (=> b!1231359 (= e!698575 (contains!7184 (t!40739 Nil!27266) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!134685 res!819897) b!1231358))

(assert (= (and b!1231358 (not res!819898)) b!1231359))

(assert (=> d!134685 m!1135583))

(declare-fun m!1135597 () Bool)

(assert (=> d!134685 m!1135597))

(declare-fun m!1135599 () Bool)

(assert (=> b!1231359 m!1135599))

(assert (=> b!1231290 d!134685))

(declare-fun d!134687 () Bool)

(assert (=> d!134687 (= (validKeyInArray!0 k!2913) (and (not (= k!2913 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2913 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1231291 d!134687))

(declare-fun b!1231399 () Bool)

(declare-fun e!698610 () Bool)

(assert (=> b!1231399 (= e!698610 (subseq!502 (t!40739 Nil!27266) (t!40739 acc!823)))))

(declare-fun b!1231398 () Bool)

(declare-fun e!698609 () Bool)

(declare-fun e!698611 () Bool)

(assert (=> b!1231398 (= e!698609 e!698611)))

(declare-fun res!819926 () Bool)

(assert (=> b!1231398 (=> res!819926 e!698611)))

(assert (=> b!1231398 (= res!819926 e!698610)))

(declare-fun res!819928 () Bool)

(assert (=> b!1231398 (=> (not res!819928) (not e!698610))))

(assert (=> b!1231398 (= res!819928 (= (h!28474 Nil!27266) (h!28474 acc!823)))))

(declare-fun b!1231397 () Bool)

(declare-fun e!698612 () Bool)

(assert (=> b!1231397 (= e!698612 e!698609)))

(declare-fun res!819929 () Bool)

(assert (=> b!1231397 (=> (not res!819929) (not e!698609))))

(assert (=> b!1231397 (= res!819929 (is-Cons!27265 acc!823))))

(declare-fun d!134689 () Bool)

(declare-fun res!819927 () Bool)

(assert (=> d!134689 (=> res!819927 e!698612)))

(assert (=> d!134689 (= res!819927 (is-Nil!27266 Nil!27266))))

(assert (=> d!134689 (= (subseq!502 Nil!27266 acc!823) e!698612)))

(declare-fun b!1231400 () Bool)

(assert (=> b!1231400 (= e!698611 (subseq!502 Nil!27266 (t!40739 acc!823)))))

(assert (= (and d!134689 (not res!819927)) b!1231397))

(assert (= (and b!1231397 res!819929) b!1231398))

(assert (= (and b!1231398 res!819928) b!1231399))

(assert (= (and b!1231398 (not res!819926)) b!1231400))

(declare-fun m!1135621 () Bool)

(assert (=> b!1231399 m!1135621))

(declare-fun m!1135623 () Bool)

(assert (=> b!1231400 m!1135623))

(assert (=> b!1231292 d!134689))

(declare-fun b!1231431 () Bool)

(declare-fun e!698642 () Bool)

(declare-fun e!698643 () Bool)

(assert (=> b!1231431 (= e!698642 e!698643)))

(declare-fun res!819958 () Bool)

(assert (=> b!1231431 (=> (not res!819958) (not e!698643))))

(declare-fun e!698644 () Bool)

(assert (=> b!1231431 (= res!819958 (not e!698644))))

(declare-fun res!819957 () Bool)

(assert (=> b!1231431 (=> (not res!819957) (not e!698644))))

(assert (=> b!1231431 (= res!819957 (validKeyInArray!0 (select (arr!38318 a!3806) from!3184)))))

(declare-fun b!1231432 () Bool)

(declare-fun e!698641 () Bool)

(declare-fun call!60888 () Bool)

(assert (=> b!1231432 (= e!698641 call!60888)))

(declare-fun d!134701 () Bool)

(declare-fun res!819956 () Bool)

(assert (=> d!134701 (=> res!819956 e!698642)))

(assert (=> d!134701 (= res!819956 (bvsge from!3184 (size!38855 a!3806)))))

(assert (=> d!134701 (= (arrayNoDuplicates!0 a!3806 from!3184 acc!823) e!698642)))

(declare-fun b!1231433 () Bool)

(assert (=> b!1231433 (= e!698644 (contains!7184 acc!823 (select (arr!38318 a!3806) from!3184)))))

(declare-fun bm!60885 () Bool)

(declare-fun c!120600 () Bool)

(assert (=> bm!60885 (= call!60888 (arrayNoDuplicates!0 a!3806 (bvadd from!3184 #b00000000000000000000000000000001) (ite c!120600 (Cons!27265 (select (arr!38318 a!3806) from!3184) acc!823) acc!823)))))

(declare-fun b!1231434 () Bool)

(assert (=> b!1231434 (= e!698641 call!60888)))

(declare-fun b!1231435 () Bool)

(assert (=> b!1231435 (= e!698643 e!698641)))

(assert (=> b!1231435 (= c!120600 (validKeyInArray!0 (select (arr!38318 a!3806) from!3184)))))

(assert (= (and d!134701 (not res!819956)) b!1231431))

(assert (= (and b!1231431 res!819957) b!1231433))

(assert (= (and b!1231431 res!819958) b!1231435))

(assert (= (and b!1231435 c!120600) b!1231434))

(assert (= (and b!1231435 (not c!120600)) b!1231432))

(assert (= (or b!1231434 b!1231432) bm!60885))

(assert (=> b!1231431 m!1135551))

(assert (=> b!1231431 m!1135551))

(assert (=> b!1231431 m!1135559))


; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!102186 () Bool)

(assert start!102186)

(declare-fun b!1229399 () Bool)

(declare-fun e!697846 () Bool)

(declare-datatypes ((array!79300 0))(
  ( (array!79301 (arr!38266 (Array (_ BitVec 32) (_ BitVec 64))) (size!38803 (_ BitVec 32))) )
))
(declare-fun a!3806 () array!79300)

(declare-fun from!3184 () (_ BitVec 32))

(declare-datatypes ((List!27217 0))(
  ( (Nil!27214) (Cons!27213 (h!28422 (_ BitVec 64)) (t!40687 List!27217)) )
))
(declare-fun arrayNoDuplicates!0 (array!79300 (_ BitVec 32) List!27217) Bool)

(assert (=> b!1229399 (= e!697846 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27213 (select (arr!38266 a!3806) from!3184) Nil!27214)))))

(declare-fun b!1229400 () Bool)

(declare-fun res!817994 () Bool)

(declare-fun e!697843 () Bool)

(assert (=> b!1229400 (=> res!817994 e!697843)))

(declare-fun lt!559125 () List!27217)

(declare-fun contains!7132 (List!27217 (_ BitVec 64)) Bool)

(assert (=> b!1229400 (= res!817994 (contains!7132 lt!559125 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1229401 () Bool)

(declare-fun res!817990 () Bool)

(declare-fun e!697844 () Bool)

(assert (=> b!1229401 (=> (not res!817990) (not e!697844))))

(declare-fun acc!823 () List!27217)

(assert (=> b!1229401 (= res!817990 (arrayNoDuplicates!0 a!3806 from!3184 acc!823))))

(declare-fun b!1229402 () Bool)

(declare-fun res!818003 () Bool)

(assert (=> b!1229402 (=> res!818003 e!697843)))

(declare-fun noDuplicate!1739 (List!27217) Bool)

(assert (=> b!1229402 (= res!818003 (not (noDuplicate!1739 lt!559125)))))

(declare-fun b!1229403 () Bool)

(assert (=> b!1229403 (= e!697843 true)))

(declare-fun lt!559127 () Bool)

(assert (=> b!1229403 (= lt!559127 (contains!7132 lt!559125 (select (arr!38266 a!3806) from!3184)))))

(declare-fun res!817996 () Bool)

(assert (=> start!102186 (=> (not res!817996) (not e!697844))))

(assert (=> start!102186 (= res!817996 (bvslt (size!38803 a!3806) #b01111111111111111111111111111111))))

(assert (=> start!102186 e!697844))

(declare-fun array_inv!29042 (array!79300) Bool)

(assert (=> start!102186 (array_inv!29042 a!3806)))

(assert (=> start!102186 true))

(declare-fun b!1229404 () Bool)

(declare-fun res!817992 () Bool)

(assert (=> b!1229404 (=> (not res!817992) (not e!697844))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1229404 (= res!817992 (validKeyInArray!0 (select (arr!38266 a!3806) from!3184)))))

(declare-fun b!1229405 () Bool)

(declare-fun res!817999 () Bool)

(assert (=> b!1229405 (=> (not res!817999) (not e!697844))))

(assert (=> b!1229405 (= res!817999 (noDuplicate!1739 acc!823))))

(declare-fun b!1229406 () Bool)

(declare-fun res!818001 () Bool)

(assert (=> b!1229406 (=> (not res!818001) (not e!697844))))

(declare-fun k0!2913 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!79300 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1229406 (= res!818001 (arrayContainsKey!0 a!3806 k0!2913 (bvadd #b00000000000000000000000000000001 from!3184)))))

(declare-fun b!1229407 () Bool)

(assert (=> b!1229407 (= e!697844 (not e!697843))))

(declare-fun res!817998 () Bool)

(assert (=> b!1229407 (=> res!817998 e!697843)))

(assert (=> b!1229407 (= res!817998 (bvslt (bvadd #b00000000000000000000000000000001 from!3184) #b00000000000000000000000000000000))))

(assert (=> b!1229407 (= lt!559125 (Cons!27213 (select (arr!38266 a!3806) from!3184) Nil!27214))))

(assert (=> b!1229407 e!697846))

(declare-fun res!817997 () Bool)

(assert (=> b!1229407 (=> (not res!817997) (not e!697846))))

(assert (=> b!1229407 (= res!817997 (arrayNoDuplicates!0 a!3806 from!3184 Nil!27214))))

(declare-datatypes ((Unit!40672 0))(
  ( (Unit!40673) )
))
(declare-fun lt!559126 () Unit!40672)

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!79300 List!27217 List!27217 (_ BitVec 32)) Unit!40672)

(assert (=> b!1229407 (= lt!559126 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3806 acc!823 Nil!27214 from!3184))))

(assert (=> b!1229407 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27213 (select (arr!38266 a!3806) from!3184) acc!823))))

(declare-fun b!1229408 () Bool)

(declare-fun res!817991 () Bool)

(assert (=> b!1229408 (=> (not res!817991) (not e!697844))))

(assert (=> b!1229408 (= res!817991 (and (bvsge from!3184 #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3184) (size!38803 a!3806)) (bvslt from!3184 (size!38803 a!3806))))))

(declare-fun b!1229409 () Bool)

(declare-fun res!817993 () Bool)

(assert (=> b!1229409 (=> res!817993 e!697843)))

(assert (=> b!1229409 (= res!817993 (contains!7132 lt!559125 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1229410 () Bool)

(declare-fun res!818002 () Bool)

(assert (=> b!1229410 (=> (not res!818002) (not e!697844))))

(assert (=> b!1229410 (= res!818002 (not (contains!7132 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1229411 () Bool)

(declare-fun res!818000 () Bool)

(assert (=> b!1229411 (=> (not res!818000) (not e!697844))))

(assert (=> b!1229411 (= res!818000 (not (contains!7132 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1229412 () Bool)

(declare-fun res!817995 () Bool)

(assert (=> b!1229412 (=> (not res!817995) (not e!697844))))

(assert (=> b!1229412 (= res!817995 (validKeyInArray!0 k0!2913))))

(assert (= (and start!102186 res!817996) b!1229412))

(assert (= (and b!1229412 res!817995) b!1229408))

(assert (= (and b!1229408 res!817991) b!1229405))

(assert (= (and b!1229405 res!817999) b!1229411))

(assert (= (and b!1229411 res!818000) b!1229410))

(assert (= (and b!1229410 res!818002) b!1229406))

(assert (= (and b!1229406 res!818001) b!1229401))

(assert (= (and b!1229401 res!817990) b!1229404))

(assert (= (and b!1229404 res!817992) b!1229407))

(assert (= (and b!1229407 res!817997) b!1229399))

(assert (= (and b!1229407 (not res!817998)) b!1229402))

(assert (= (and b!1229402 (not res!818003)) b!1229409))

(assert (= (and b!1229409 (not res!817993)) b!1229400))

(assert (= (and b!1229400 (not res!817994)) b!1229403))

(declare-fun m!1134027 () Bool)

(assert (=> b!1229399 m!1134027))

(declare-fun m!1134029 () Bool)

(assert (=> b!1229399 m!1134029))

(assert (=> b!1229404 m!1134027))

(assert (=> b!1229404 m!1134027))

(declare-fun m!1134031 () Bool)

(assert (=> b!1229404 m!1134031))

(declare-fun m!1134033 () Bool)

(assert (=> b!1229406 m!1134033))

(declare-fun m!1134035 () Bool)

(assert (=> b!1229410 m!1134035))

(declare-fun m!1134037 () Bool)

(assert (=> b!1229401 m!1134037))

(declare-fun m!1134039 () Bool)

(assert (=> b!1229412 m!1134039))

(declare-fun m!1134041 () Bool)

(assert (=> b!1229400 m!1134041))

(declare-fun m!1134043 () Bool)

(assert (=> b!1229409 m!1134043))

(declare-fun m!1134045 () Bool)

(assert (=> b!1229411 m!1134045))

(assert (=> b!1229403 m!1134027))

(assert (=> b!1229403 m!1134027))

(declare-fun m!1134047 () Bool)

(assert (=> b!1229403 m!1134047))

(declare-fun m!1134049 () Bool)

(assert (=> b!1229405 m!1134049))

(assert (=> b!1229407 m!1134027))

(declare-fun m!1134051 () Bool)

(assert (=> b!1229407 m!1134051))

(declare-fun m!1134053 () Bool)

(assert (=> b!1229407 m!1134053))

(declare-fun m!1134055 () Bool)

(assert (=> b!1229407 m!1134055))

(declare-fun m!1134057 () Bool)

(assert (=> b!1229402 m!1134057))

(declare-fun m!1134059 () Bool)

(assert (=> start!102186 m!1134059))

(check-sat (not b!1229411) (not b!1229399) (not b!1229409) (not b!1229410) (not b!1229402) (not b!1229401) (not b!1229407) (not b!1229406) (not b!1229400) (not b!1229403) (not b!1229412) (not b!1229404) (not b!1229405) (not start!102186))
(check-sat)

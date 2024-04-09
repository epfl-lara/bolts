; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!102190 () Bool)

(assert start!102190)

(declare-fun b!1229483 () Bool)

(declare-fun res!818081 () Bool)

(declare-fun e!697868 () Bool)

(assert (=> b!1229483 (=> (not res!818081) (not e!697868))))

(declare-datatypes ((array!79304 0))(
  ( (array!79305 (arr!38268 (Array (_ BitVec 32) (_ BitVec 64))) (size!38805 (_ BitVec 32))) )
))
(declare-fun a!3806 () array!79304)

(declare-fun from!3184 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1229483 (= res!818081 (validKeyInArray!0 (select (arr!38268 a!3806) from!3184)))))

(declare-fun b!1229484 () Bool)

(declare-fun res!818082 () Bool)

(assert (=> b!1229484 (=> (not res!818082) (not e!697868))))

(declare-datatypes ((List!27219 0))(
  ( (Nil!27216) (Cons!27215 (h!28424 (_ BitVec 64)) (t!40689 List!27219)) )
))
(declare-fun acc!823 () List!27219)

(declare-fun contains!7134 (List!27219 (_ BitVec 64)) Bool)

(assert (=> b!1229484 (= res!818082 (not (contains!7134 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1229485 () Bool)

(declare-fun e!697870 () Bool)

(declare-fun arrayNoDuplicates!0 (array!79304 (_ BitVec 32) List!27219) Bool)

(assert (=> b!1229485 (= e!697870 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27215 (select (arr!38268 a!3806) from!3184) Nil!27216)))))

(declare-fun b!1229486 () Bool)

(declare-fun e!697867 () Bool)

(assert (=> b!1229486 (= e!697867 true)))

(declare-fun lt!559143 () Bool)

(declare-fun lt!559145 () List!27219)

(assert (=> b!1229486 (= lt!559143 (contains!7134 lt!559145 (select (arr!38268 a!3806) from!3184)))))

(declare-fun b!1229487 () Bool)

(declare-fun res!818075 () Bool)

(assert (=> b!1229487 (=> (not res!818075) (not e!697868))))

(assert (=> b!1229487 (= res!818075 (arrayNoDuplicates!0 a!3806 from!3184 acc!823))))

(declare-fun b!1229488 () Bool)

(declare-fun res!818086 () Bool)

(assert (=> b!1229488 (=> (not res!818086) (not e!697868))))

(declare-fun noDuplicate!1741 (List!27219) Bool)

(assert (=> b!1229488 (= res!818086 (noDuplicate!1741 acc!823))))

(declare-fun b!1229489 () Bool)

(declare-fun res!818079 () Bool)

(assert (=> b!1229489 (=> (not res!818079) (not e!697868))))

(declare-fun k!2913 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!79304 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1229489 (= res!818079 (arrayContainsKey!0 a!3806 k!2913 (bvadd #b00000000000000000000000000000001 from!3184)))))

(declare-fun b!1229490 () Bool)

(declare-fun res!818076 () Bool)

(assert (=> b!1229490 (=> (not res!818076) (not e!697868))))

(assert (=> b!1229490 (= res!818076 (and (bvsge from!3184 #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3184) (size!38805 a!3806)) (bvslt from!3184 (size!38805 a!3806))))))

(declare-fun b!1229491 () Bool)

(declare-fun res!818085 () Bool)

(assert (=> b!1229491 (=> res!818085 e!697867)))

(assert (=> b!1229491 (= res!818085 (contains!7134 lt!559145 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1229493 () Bool)

(assert (=> b!1229493 (= e!697868 (not e!697867))))

(declare-fun res!818084 () Bool)

(assert (=> b!1229493 (=> res!818084 e!697867)))

(assert (=> b!1229493 (= res!818084 (bvslt (bvadd #b00000000000000000000000000000001 from!3184) #b00000000000000000000000000000000))))

(assert (=> b!1229493 (= lt!559145 (Cons!27215 (select (arr!38268 a!3806) from!3184) Nil!27216))))

(assert (=> b!1229493 e!697870))

(declare-fun res!818077 () Bool)

(assert (=> b!1229493 (=> (not res!818077) (not e!697870))))

(assert (=> b!1229493 (= res!818077 (arrayNoDuplicates!0 a!3806 from!3184 Nil!27216))))

(declare-datatypes ((Unit!40676 0))(
  ( (Unit!40677) )
))
(declare-fun lt!559144 () Unit!40676)

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!79304 List!27219 List!27219 (_ BitVec 32)) Unit!40676)

(assert (=> b!1229493 (= lt!559144 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3806 acc!823 Nil!27216 from!3184))))

(assert (=> b!1229493 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27215 (select (arr!38268 a!3806) from!3184) acc!823))))

(declare-fun b!1229494 () Bool)

(declare-fun res!818080 () Bool)

(assert (=> b!1229494 (=> res!818080 e!697867)))

(assert (=> b!1229494 (= res!818080 (contains!7134 lt!559145 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1229495 () Bool)

(declare-fun res!818087 () Bool)

(assert (=> b!1229495 (=> res!818087 e!697867)))

(assert (=> b!1229495 (= res!818087 (not (noDuplicate!1741 lt!559145)))))

(declare-fun b!1229496 () Bool)

(declare-fun res!818078 () Bool)

(assert (=> b!1229496 (=> (not res!818078) (not e!697868))))

(assert (=> b!1229496 (= res!818078 (not (contains!7134 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1229492 () Bool)

(declare-fun res!818074 () Bool)

(assert (=> b!1229492 (=> (not res!818074) (not e!697868))))

(assert (=> b!1229492 (= res!818074 (validKeyInArray!0 k!2913))))

(declare-fun res!818083 () Bool)

(assert (=> start!102190 (=> (not res!818083) (not e!697868))))

(assert (=> start!102190 (= res!818083 (bvslt (size!38805 a!3806) #b01111111111111111111111111111111))))

(assert (=> start!102190 e!697868))

(declare-fun array_inv!29044 (array!79304) Bool)

(assert (=> start!102190 (array_inv!29044 a!3806)))

(assert (=> start!102190 true))

(assert (= (and start!102190 res!818083) b!1229492))

(assert (= (and b!1229492 res!818074) b!1229490))

(assert (= (and b!1229490 res!818076) b!1229488))

(assert (= (and b!1229488 res!818086) b!1229496))

(assert (= (and b!1229496 res!818078) b!1229484))

(assert (= (and b!1229484 res!818082) b!1229489))

(assert (= (and b!1229489 res!818079) b!1229487))

(assert (= (and b!1229487 res!818075) b!1229483))

(assert (= (and b!1229483 res!818081) b!1229493))

(assert (= (and b!1229493 res!818077) b!1229485))

(assert (= (and b!1229493 (not res!818084)) b!1229495))

(assert (= (and b!1229495 (not res!818087)) b!1229491))

(assert (= (and b!1229491 (not res!818085)) b!1229494))

(assert (= (and b!1229494 (not res!818080)) b!1229486))

(declare-fun m!1134095 () Bool)

(assert (=> b!1229494 m!1134095))

(declare-fun m!1134097 () Bool)

(assert (=> b!1229492 m!1134097))

(declare-fun m!1134099 () Bool)

(assert (=> b!1229496 m!1134099))

(declare-fun m!1134101 () Bool)

(assert (=> b!1229485 m!1134101))

(declare-fun m!1134103 () Bool)

(assert (=> b!1229485 m!1134103))

(declare-fun m!1134105 () Bool)

(assert (=> b!1229484 m!1134105))

(assert (=> b!1229483 m!1134101))

(assert (=> b!1229483 m!1134101))

(declare-fun m!1134107 () Bool)

(assert (=> b!1229483 m!1134107))

(assert (=> b!1229486 m!1134101))

(assert (=> b!1229486 m!1134101))

(declare-fun m!1134109 () Bool)

(assert (=> b!1229486 m!1134109))

(declare-fun m!1134111 () Bool)

(assert (=> b!1229491 m!1134111))

(declare-fun m!1134113 () Bool)

(assert (=> start!102190 m!1134113))

(declare-fun m!1134115 () Bool)

(assert (=> b!1229488 m!1134115))

(assert (=> b!1229493 m!1134101))

(declare-fun m!1134117 () Bool)

(assert (=> b!1229493 m!1134117))

(declare-fun m!1134119 () Bool)

(assert (=> b!1229493 m!1134119))

(declare-fun m!1134121 () Bool)

(assert (=> b!1229493 m!1134121))

(declare-fun m!1134123 () Bool)

(assert (=> b!1229495 m!1134123))

(declare-fun m!1134125 () Bool)

(assert (=> b!1229487 m!1134125))

(declare-fun m!1134127 () Bool)

(assert (=> b!1229489 m!1134127))

(push 1)

(assert (not b!1229483))

(assert (not start!102190))

(assert (not b!1229491))

(assert (not b!1229495))

(assert (not b!1229493))

(assert (not b!1229489))

(assert (not b!1229486))

(assert (not b!1229496))

(assert (not b!1229488))

(assert (not b!1229485))

(assert (not b!1229484))

(assert (not b!1229487))

(assert (not b!1229494))


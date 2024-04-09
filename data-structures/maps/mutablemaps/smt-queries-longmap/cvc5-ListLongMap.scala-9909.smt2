; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117242 () Bool)

(assert start!117242)

(declare-fun b!1379079 () Bool)

(declare-fun e!781256 () Bool)

(assert (=> b!1379079 (= e!781256 (not true))))

(declare-datatypes ((array!93775 0))(
  ( (array!93776 (arr!45283 (Array (_ BitVec 32) (_ BitVec 64))) (size!45834 (_ BitVec 32))) )
))
(declare-fun lt!607135 () array!93775)

(declare-fun lt!607138 () (_ BitVec 32))

(declare-fun from!3466 () (_ BitVec 32))

(declare-fun i!1451 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!93775 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1379079 (= (bvadd (arrayCountValidKeys!0 lt!607135 (bvsub from!3466 #b00000000000000000000000000000001) from!3466) lt!607138) (arrayCountValidKeys!0 lt!607135 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451)))))

(declare-datatypes ((Unit!45791 0))(
  ( (Unit!45792) )
))
(declare-fun lt!607137 () Unit!45791)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!93775 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45791)

(assert (=> b!1379079 (= lt!607137 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 lt!607135 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451) from!3466))))

(declare-fun a!4094 () array!93775)

(declare-fun lt!607136 () (_ BitVec 32))

(assert (=> b!1379079 (= (bvadd (arrayCountValidKeys!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) from!3466) lt!607136) (arrayCountValidKeys!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451)))))

(declare-fun lt!607134 () Unit!45791)

(assert (=> b!1379079 (= lt!607134 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451) from!3466))))

(declare-fun b!1379080 () Bool)

(declare-fun res!921724 () Bool)

(declare-fun e!781254 () Bool)

(assert (=> b!1379080 (=> (not res!921724) (not e!781254))))

(assert (=> b!1379080 (= res!921724 (and (bvslt (size!45834 a!4094) #b01111111111111111111111111111111) (bvsge from!3466 #b00000000000000000000000000000000) (bvsle from!3466 (size!45834 a!4094)) (bvsge i!1451 from!3466)))))

(declare-fun b!1379081 () Bool)

(assert (=> b!1379081 (= e!781254 e!781256)))

(declare-fun res!921726 () Bool)

(assert (=> b!1379081 (=> (not res!921726) (not e!781256))))

(assert (=> b!1379081 (= res!921726 (and (= lt!607138 (bvsub lt!607136 #b00000000000000000000000000000001)) (bvsgt from!3466 #b00000000000000000000000000000000)))))

(assert (=> b!1379081 (= lt!607138 (arrayCountValidKeys!0 lt!607135 from!3466 (bvadd #b00000000000000000000000000000001 i!1451)))))

(assert (=> b!1379081 (= lt!607136 (arrayCountValidKeys!0 a!4094 from!3466 (bvadd #b00000000000000000000000000000001 i!1451)))))

(declare-fun k!2953 () (_ BitVec 64))

(assert (=> b!1379081 (= lt!607135 (array!93776 (store (arr!45283 a!4094) i!1451 k!2953) (size!45834 a!4094)))))

(declare-fun b!1379082 () Bool)

(declare-fun res!921722 () Bool)

(assert (=> b!1379082 (=> (not res!921722) (not e!781254))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1379082 (= res!921722 (not (validKeyInArray!0 k!2953)))))

(declare-fun b!1379083 () Bool)

(declare-fun res!921723 () Bool)

(assert (=> b!1379083 (=> (not res!921723) (not e!781254))))

(assert (=> b!1379083 (= res!921723 (validKeyInArray!0 (select (arr!45283 a!4094) i!1451)))))

(declare-fun res!921725 () Bool)

(assert (=> start!117242 (=> (not res!921725) (not e!781254))))

(assert (=> start!117242 (= res!921725 (and (bvsge i!1451 #b00000000000000000000000000000000) (bvslt i!1451 (size!45834 a!4094))))))

(assert (=> start!117242 e!781254))

(assert (=> start!117242 true))

(declare-fun array_inv!34228 (array!93775) Bool)

(assert (=> start!117242 (array_inv!34228 a!4094)))

(assert (= (and start!117242 res!921725) b!1379083))

(assert (= (and b!1379083 res!921723) b!1379082))

(assert (= (and b!1379082 res!921722) b!1379080))

(assert (= (and b!1379080 res!921724) b!1379081))

(assert (= (and b!1379081 res!921726) b!1379079))

(declare-fun m!1264077 () Bool)

(assert (=> b!1379081 m!1264077))

(declare-fun m!1264079 () Bool)

(assert (=> b!1379081 m!1264079))

(declare-fun m!1264081 () Bool)

(assert (=> b!1379081 m!1264081))

(declare-fun m!1264083 () Bool)

(assert (=> b!1379083 m!1264083))

(assert (=> b!1379083 m!1264083))

(declare-fun m!1264085 () Bool)

(assert (=> b!1379083 m!1264085))

(declare-fun m!1264087 () Bool)

(assert (=> start!117242 m!1264087))

(declare-fun m!1264089 () Bool)

(assert (=> b!1379082 m!1264089))

(declare-fun m!1264091 () Bool)

(assert (=> b!1379079 m!1264091))

(declare-fun m!1264093 () Bool)

(assert (=> b!1379079 m!1264093))

(declare-fun m!1264095 () Bool)

(assert (=> b!1379079 m!1264095))

(declare-fun m!1264097 () Bool)

(assert (=> b!1379079 m!1264097))

(declare-fun m!1264099 () Bool)

(assert (=> b!1379079 m!1264099))

(declare-fun m!1264101 () Bool)

(assert (=> b!1379079 m!1264101))

(push 1)

(assert (not b!1379082))

(assert (not start!117242))

(assert (not b!1379081))

(assert (not b!1379083))

(assert (not b!1379079))

(check-sat)

(pop 1)

(push 1)

(check-sat)


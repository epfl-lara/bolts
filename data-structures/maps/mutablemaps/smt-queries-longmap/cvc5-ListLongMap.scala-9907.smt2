; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117230 () Bool)

(assert start!117230)

(declare-fun b!1378989 () Bool)

(declare-fun e!781202 () Bool)

(assert (=> b!1378989 (= e!781202 (not true))))

(declare-fun lt!607046 () (_ BitVec 32))

(declare-datatypes ((array!93763 0))(
  ( (array!93764 (arr!45277 (Array (_ BitVec 32) (_ BitVec 64))) (size!45828 (_ BitVec 32))) )
))
(declare-fun lt!607045 () array!93763)

(declare-fun from!3466 () (_ BitVec 32))

(declare-fun i!1451 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!93763 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1378989 (= (bvadd (arrayCountValidKeys!0 lt!607045 (bvsub from!3466 #b00000000000000000000000000000001) from!3466) lt!607046) (arrayCountValidKeys!0 lt!607045 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451)))))

(declare-datatypes ((Unit!45779 0))(
  ( (Unit!45780) )
))
(declare-fun lt!607048 () Unit!45779)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!93763 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45779)

(assert (=> b!1378989 (= lt!607048 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 lt!607045 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451) from!3466))))

(declare-fun a!4094 () array!93763)

(declare-fun lt!607047 () (_ BitVec 32))

(assert (=> b!1378989 (= (bvadd (arrayCountValidKeys!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) from!3466) lt!607047) (arrayCountValidKeys!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451)))))

(declare-fun lt!607044 () Unit!45779)

(assert (=> b!1378989 (= lt!607044 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451) from!3466))))

(declare-fun b!1378990 () Bool)

(declare-fun res!921632 () Bool)

(declare-fun e!781201 () Bool)

(assert (=> b!1378990 (=> (not res!921632) (not e!781201))))

(declare-fun k!2953 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1378990 (= res!921632 (not (validKeyInArray!0 k!2953)))))

(declare-fun b!1378991 () Bool)

(declare-fun res!921633 () Bool)

(assert (=> b!1378991 (=> (not res!921633) (not e!781201))))

(assert (=> b!1378991 (= res!921633 (validKeyInArray!0 (select (arr!45277 a!4094) i!1451)))))

(declare-fun b!1378992 () Bool)

(declare-fun res!921635 () Bool)

(assert (=> b!1378992 (=> (not res!921635) (not e!781201))))

(assert (=> b!1378992 (= res!921635 (and (bvslt (size!45828 a!4094) #b01111111111111111111111111111111) (bvsge from!3466 #b00000000000000000000000000000000) (bvsle from!3466 (size!45828 a!4094)) (bvsge i!1451 from!3466)))))

(declare-fun b!1378993 () Bool)

(assert (=> b!1378993 (= e!781201 e!781202)))

(declare-fun res!921636 () Bool)

(assert (=> b!1378993 (=> (not res!921636) (not e!781202))))

(assert (=> b!1378993 (= res!921636 (and (= lt!607046 (bvsub lt!607047 #b00000000000000000000000000000001)) (bvsgt from!3466 #b00000000000000000000000000000000)))))

(assert (=> b!1378993 (= lt!607046 (arrayCountValidKeys!0 lt!607045 from!3466 (bvadd #b00000000000000000000000000000001 i!1451)))))

(assert (=> b!1378993 (= lt!607047 (arrayCountValidKeys!0 a!4094 from!3466 (bvadd #b00000000000000000000000000000001 i!1451)))))

(assert (=> b!1378993 (= lt!607045 (array!93764 (store (arr!45277 a!4094) i!1451 k!2953) (size!45828 a!4094)))))

(declare-fun res!921634 () Bool)

(assert (=> start!117230 (=> (not res!921634) (not e!781201))))

(assert (=> start!117230 (= res!921634 (and (bvsge i!1451 #b00000000000000000000000000000000) (bvslt i!1451 (size!45828 a!4094))))))

(assert (=> start!117230 e!781201))

(assert (=> start!117230 true))

(declare-fun array_inv!34222 (array!93763) Bool)

(assert (=> start!117230 (array_inv!34222 a!4094)))

(assert (= (and start!117230 res!921634) b!1378991))

(assert (= (and b!1378991 res!921633) b!1378990))

(assert (= (and b!1378990 res!921632) b!1378992))

(assert (= (and b!1378992 res!921635) b!1378993))

(assert (= (and b!1378993 res!921636) b!1378989))

(declare-fun m!1263921 () Bool)

(assert (=> b!1378990 m!1263921))

(declare-fun m!1263923 () Bool)

(assert (=> b!1378993 m!1263923))

(declare-fun m!1263925 () Bool)

(assert (=> b!1378993 m!1263925))

(declare-fun m!1263927 () Bool)

(assert (=> b!1378993 m!1263927))

(declare-fun m!1263929 () Bool)

(assert (=> b!1378991 m!1263929))

(assert (=> b!1378991 m!1263929))

(declare-fun m!1263931 () Bool)

(assert (=> b!1378991 m!1263931))

(declare-fun m!1263933 () Bool)

(assert (=> start!117230 m!1263933))

(declare-fun m!1263935 () Bool)

(assert (=> b!1378989 m!1263935))

(declare-fun m!1263937 () Bool)

(assert (=> b!1378989 m!1263937))

(declare-fun m!1263939 () Bool)

(assert (=> b!1378989 m!1263939))

(declare-fun m!1263941 () Bool)

(assert (=> b!1378989 m!1263941))

(declare-fun m!1263943 () Bool)

(assert (=> b!1378989 m!1263943))

(declare-fun m!1263945 () Bool)

(assert (=> b!1378989 m!1263945))

(push 1)

(assert (not b!1378991))

(assert (not start!117230))

(assert (not b!1378990))

(assert (not b!1378993))


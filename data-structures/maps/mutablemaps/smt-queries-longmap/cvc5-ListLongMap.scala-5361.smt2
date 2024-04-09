; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71788 () Bool)

(assert start!71788)

(declare-fun b!833964 () Bool)

(declare-fun res!567173 () Bool)

(declare-fun e!465316 () Bool)

(assert (=> b!833964 (=> (not res!567173) (not e!465316))))

(declare-datatypes ((array!46642 0))(
  ( (array!46643 (arr!22351 (Array (_ BitVec 32) (_ BitVec 64))) (size!22772 (_ BitVec 32))) )
))
(declare-fun a!4227 () array!46642)

(declare-fun i!1466 () (_ BitVec 32))

(declare-fun to!390 () (_ BitVec 32))

(assert (=> b!833964 (= res!567173 (and (bvslt (size!22772 a!4227) #b01111111111111111111111111111111) (bvsge to!390 #b00000000000000000000000000000000) (bvsle to!390 (size!22772 a!4227)) (bvsgt to!390 i!1466)))))

(declare-fun b!833965 () Bool)

(declare-fun res!567174 () Bool)

(assert (=> b!833965 (=> (not res!567174) (not e!465316))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!833965 (= res!567174 (not (validKeyInArray!0 (select (arr!22351 a!4227) i!1466))))))

(declare-fun b!833966 () Bool)

(declare-fun e!465315 () Bool)

(assert (=> b!833966 (= e!465315 (not true))))

(declare-fun lt!378725 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!46642 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!833966 (= (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390)) (bvadd #b00000000000000000000000000000001 lt!378725))))

(declare-datatypes ((Unit!28634 0))(
  ( (Unit!28635) )
))
(declare-fun lt!378724 () Unit!28634)

(declare-fun lemmaValidKeyIncreasesNumOfKeys!0 (array!46642 (_ BitVec 32) (_ BitVec 32)) Unit!28634)

(assert (=> b!833966 (= lt!378724 (lemmaValidKeyIncreasesNumOfKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(declare-fun res!567176 () Bool)

(assert (=> start!71788 (=> (not res!567176) (not e!465316))))

(assert (=> start!71788 (= res!567176 (and (bvsge i!1466 #b00000000000000000000000000000000) (bvslt i!1466 (size!22772 a!4227))))))

(assert (=> start!71788 e!465316))

(assert (=> start!71788 true))

(declare-fun array_inv!17774 (array!46642) Bool)

(assert (=> start!71788 (array_inv!17774 a!4227)))

(declare-fun b!833967 () Bool)

(declare-fun res!567178 () Bool)

(assert (=> b!833967 (=> (not res!567178) (not e!465315))))

(assert (=> b!833967 (= res!567178 (validKeyInArray!0 (select (arr!22351 a!4227) to!390)))))

(declare-fun b!833968 () Bool)

(declare-fun res!567175 () Bool)

(assert (=> b!833968 (=> (not res!567175) (not e!465316))))

(declare-fun k!2968 () (_ BitVec 64))

(assert (=> b!833968 (= res!567175 (validKeyInArray!0 k!2968))))

(declare-fun b!833969 () Bool)

(assert (=> b!833969 (= e!465316 e!465315)))

(declare-fun res!567177 () Bool)

(assert (=> b!833969 (=> (not res!567177) (not e!465315))))

(declare-fun lt!378726 () (_ BitVec 32))

(assert (=> b!833969 (= res!567177 (and (= lt!378726 lt!378725) (not (= to!390 (size!22772 a!4227)))))))

(assert (=> b!833969 (= lt!378725 (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!833969 (= lt!378726 (arrayCountValidKeys!0 (array!46643 (store (arr!22351 a!4227) i!1466 k!2968) (size!22772 a!4227)) (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (= (and start!71788 res!567176) b!833965))

(assert (= (and b!833965 res!567174) b!833968))

(assert (= (and b!833968 res!567175) b!833964))

(assert (= (and b!833964 res!567173) b!833969))

(assert (= (and b!833969 res!567177) b!833967))

(assert (= (and b!833967 res!567178) b!833966))

(declare-fun m!778981 () Bool)

(assert (=> b!833969 m!778981))

(declare-fun m!778983 () Bool)

(assert (=> b!833969 m!778983))

(declare-fun m!778985 () Bool)

(assert (=> b!833969 m!778985))

(declare-fun m!778987 () Bool)

(assert (=> start!71788 m!778987))

(declare-fun m!778989 () Bool)

(assert (=> b!833966 m!778989))

(declare-fun m!778991 () Bool)

(assert (=> b!833966 m!778991))

(declare-fun m!778993 () Bool)

(assert (=> b!833965 m!778993))

(assert (=> b!833965 m!778993))

(declare-fun m!778995 () Bool)

(assert (=> b!833965 m!778995))

(declare-fun m!778997 () Bool)

(assert (=> b!833967 m!778997))

(assert (=> b!833967 m!778997))

(declare-fun m!778999 () Bool)

(assert (=> b!833967 m!778999))

(declare-fun m!779001 () Bool)

(assert (=> b!833968 m!779001))

(push 1)


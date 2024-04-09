; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71792 () Bool)

(assert start!71792)

(declare-fun b!834000 () Bool)

(declare-fun res!567213 () Bool)

(declare-fun e!465334 () Bool)

(assert (=> b!834000 (=> (not res!567213) (not e!465334))))

(declare-datatypes ((array!46646 0))(
  ( (array!46647 (arr!22353 (Array (_ BitVec 32) (_ BitVec 64))) (size!22774 (_ BitVec 32))) )
))
(declare-fun a!4227 () array!46646)

(declare-fun i!1466 () (_ BitVec 32))

(declare-fun to!390 () (_ BitVec 32))

(assert (=> b!834000 (= res!567213 (and (bvslt (size!22774 a!4227) #b01111111111111111111111111111111) (bvsge to!390 #b00000000000000000000000000000000) (bvsle to!390 (size!22774 a!4227)) (bvsgt to!390 i!1466)))))

(declare-fun b!834001 () Bool)

(declare-fun e!465333 () Bool)

(assert (=> b!834001 (= e!465333 (not true))))

(declare-fun lt!378742 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!46646 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!834001 (= (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390)) (bvadd #b00000000000000000000000000000001 lt!378742))))

(declare-datatypes ((Unit!28638 0))(
  ( (Unit!28639) )
))
(declare-fun lt!378744 () Unit!28638)

(declare-fun lemmaValidKeyIncreasesNumOfKeys!0 (array!46646 (_ BitVec 32) (_ BitVec 32)) Unit!28638)

(assert (=> b!834001 (= lt!378744 (lemmaValidKeyIncreasesNumOfKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(declare-fun b!834002 () Bool)

(assert (=> b!834002 (= e!465334 e!465333)))

(declare-fun res!567209 () Bool)

(assert (=> b!834002 (=> (not res!567209) (not e!465333))))

(declare-fun lt!378743 () (_ BitVec 32))

(assert (=> b!834002 (= res!567209 (and (= lt!378743 lt!378742) (not (= to!390 (size!22774 a!4227)))))))

(assert (=> b!834002 (= lt!378742 (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(declare-fun k!2968 () (_ BitVec 64))

(assert (=> b!834002 (= lt!378743 (arrayCountValidKeys!0 (array!46647 (store (arr!22353 a!4227) i!1466 k!2968) (size!22774 a!4227)) (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(declare-fun res!567211 () Bool)

(assert (=> start!71792 (=> (not res!567211) (not e!465334))))

(assert (=> start!71792 (= res!567211 (and (bvsge i!1466 #b00000000000000000000000000000000) (bvslt i!1466 (size!22774 a!4227))))))

(assert (=> start!71792 e!465334))

(assert (=> start!71792 true))

(declare-fun array_inv!17776 (array!46646) Bool)

(assert (=> start!71792 (array_inv!17776 a!4227)))

(declare-fun b!834003 () Bool)

(declare-fun res!567214 () Bool)

(assert (=> b!834003 (=> (not res!567214) (not e!465334))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!834003 (= res!567214 (validKeyInArray!0 k!2968))))

(declare-fun b!834004 () Bool)

(declare-fun res!567210 () Bool)

(assert (=> b!834004 (=> (not res!567210) (not e!465334))))

(assert (=> b!834004 (= res!567210 (not (validKeyInArray!0 (select (arr!22353 a!4227) i!1466))))))

(declare-fun b!834005 () Bool)

(declare-fun res!567212 () Bool)

(assert (=> b!834005 (=> (not res!567212) (not e!465333))))

(assert (=> b!834005 (= res!567212 (validKeyInArray!0 (select (arr!22353 a!4227) to!390)))))

(assert (= (and start!71792 res!567211) b!834004))

(assert (= (and b!834004 res!567210) b!834003))

(assert (= (and b!834003 res!567214) b!834000))

(assert (= (and b!834000 res!567213) b!834002))

(assert (= (and b!834002 res!567209) b!834005))

(assert (= (and b!834005 res!567212) b!834001))

(declare-fun m!779025 () Bool)

(assert (=> b!834003 m!779025))

(declare-fun m!779027 () Bool)

(assert (=> b!834001 m!779027))

(declare-fun m!779029 () Bool)

(assert (=> b!834001 m!779029))

(declare-fun m!779031 () Bool)

(assert (=> start!71792 m!779031))

(declare-fun m!779033 () Bool)

(assert (=> b!834002 m!779033))

(declare-fun m!779035 () Bool)

(assert (=> b!834002 m!779035))

(declare-fun m!779037 () Bool)

(assert (=> b!834002 m!779037))

(declare-fun m!779039 () Bool)

(assert (=> b!834004 m!779039))

(assert (=> b!834004 m!779039))

(declare-fun m!779041 () Bool)

(assert (=> b!834004 m!779041))

(declare-fun m!779043 () Bool)

(assert (=> b!834005 m!779043))

(assert (=> b!834005 m!779043))

(declare-fun m!779045 () Bool)

(assert (=> b!834005 m!779045))

(push 1)

(assert (not b!834004))

(assert (not b!834003))

(assert (not b!834002))

(assert (not b!834005))

(assert (not b!834001))

(assert (not start!71792))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117932 () Bool)

(assert start!117932)

(declare-fun res!923092 () Bool)

(declare-fun e!783065 () Bool)

(assert (=> start!117932 (=> (not res!923092) (not e!783065))))

(declare-fun mask!3034 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!117932 (= res!923092 (validMask!0 mask!3034))))

(assert (=> start!117932 e!783065))

(assert (=> start!117932 true))

(declare-datatypes ((array!94239 0))(
  ( (array!94240 (arr!45498 (Array (_ BitVec 32) (_ BitVec 64))) (size!46049 (_ BitVec 32))) )
))
(declare-fun a!2971 () array!94239)

(declare-fun array_inv!34443 (array!94239) Bool)

(assert (=> start!117932 (array_inv!34443 a!2971)))

(declare-fun b!1381355 () Bool)

(declare-fun res!923094 () Bool)

(assert (=> b!1381355 (=> (not res!923094) (not e!783065))))

(declare-fun i!1094 () (_ BitVec 32))

(assert (=> b!1381355 (= res!923094 (and (= (size!46049 a!2971) (bvadd #b00000000000000000000000000000001 mask!3034)) (bvsge i!1094 #b00000000000000000000000000000000) (bvslt i!1094 (size!46049 a!2971))))))

(declare-fun b!1381356 () Bool)

(declare-fun res!923093 () Bool)

(assert (=> b!1381356 (=> (not res!923093) (not e!783065))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1381356 (= res!923093 (validKeyInArray!0 (select (arr!45498 a!2971) i!1094)))))

(declare-fun b!1381357 () Bool)

(assert (=> b!1381357 (= e!783065 false)))

(declare-fun lt!608143 () Bool)

(declare-datatypes ((List!32212 0))(
  ( (Nil!32209) (Cons!32208 (h!33417 (_ BitVec 64)) (t!46913 List!32212)) )
))
(declare-fun arrayNoDuplicates!0 (array!94239 (_ BitVec 32) List!32212) Bool)

(assert (=> b!1381357 (= lt!608143 (arrayNoDuplicates!0 a!2971 #b00000000000000000000000000000000 Nil!32209))))

(assert (= (and start!117932 res!923092) b!1381355))

(assert (= (and b!1381355 res!923094) b!1381356))

(assert (= (and b!1381356 res!923093) b!1381357))

(declare-fun m!1266599 () Bool)

(assert (=> start!117932 m!1266599))

(declare-fun m!1266601 () Bool)

(assert (=> start!117932 m!1266601))

(declare-fun m!1266603 () Bool)

(assert (=> b!1381356 m!1266603))

(assert (=> b!1381356 m!1266603))

(declare-fun m!1266605 () Bool)

(assert (=> b!1381356 m!1266605))

(declare-fun m!1266607 () Bool)

(assert (=> b!1381357 m!1266607))

(push 1)

(assert (not start!117932))

(assert (not b!1381357))

(assert (not b!1381356))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


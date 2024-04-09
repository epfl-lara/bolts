; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118004 () Bool)

(assert start!118004)

(declare-fun b!1381769 () Bool)

(declare-fun res!923506 () Bool)

(declare-fun e!783280 () Bool)

(assert (=> b!1381769 (=> (not res!923506) (not e!783280))))

(declare-datatypes ((array!94311 0))(
  ( (array!94312 (arr!45534 (Array (_ BitVec 32) (_ BitVec 64))) (size!46085 (_ BitVec 32))) )
))
(declare-fun a!2971 () array!94311)

(declare-fun i!1094 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1381769 (= res!923506 (validKeyInArray!0 (select (arr!45534 a!2971) i!1094)))))

(declare-fun b!1381770 () Bool)

(declare-fun res!923505 () Bool)

(assert (=> b!1381770 (=> (not res!923505) (not e!783280))))

(declare-datatypes ((List!32248 0))(
  ( (Nil!32245) (Cons!32244 (h!33453 (_ BitVec 64)) (t!46949 List!32248)) )
))
(declare-fun arrayNoDuplicates!0 (array!94311 (_ BitVec 32) List!32248) Bool)

(assert (=> b!1381770 (= res!923505 (arrayNoDuplicates!0 a!2971 #b00000000000000000000000000000000 Nil!32245))))

(declare-fun b!1381768 () Bool)

(declare-fun res!923508 () Bool)

(assert (=> b!1381768 (=> (not res!923508) (not e!783280))))

(declare-fun mask!3034 () (_ BitVec 32))

(assert (=> b!1381768 (= res!923508 (and (= (size!46085 a!2971) (bvadd #b00000000000000000000000000000001 mask!3034)) (bvsge i!1094 #b00000000000000000000000000000000) (bvslt i!1094 (size!46085 a!2971))))))

(declare-fun b!1381771 () Bool)

(assert (=> b!1381771 (= e!783280 false)))

(declare-fun lt!608242 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94311 (_ BitVec 32)) Bool)

(assert (=> b!1381771 (= lt!608242 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2971 mask!3034))))

(declare-fun res!923507 () Bool)

(assert (=> start!118004 (=> (not res!923507) (not e!783280))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118004 (= res!923507 (validMask!0 mask!3034))))

(assert (=> start!118004 e!783280))

(assert (=> start!118004 true))

(declare-fun array_inv!34479 (array!94311) Bool)

(assert (=> start!118004 (array_inv!34479 a!2971)))

(assert (= (and start!118004 res!923507) b!1381768))

(assert (= (and b!1381768 res!923508) b!1381769))

(assert (= (and b!1381769 res!923506) b!1381770))

(assert (= (and b!1381770 res!923505) b!1381771))

(declare-fun m!1267011 () Bool)

(assert (=> b!1381769 m!1267011))

(assert (=> b!1381769 m!1267011))

(declare-fun m!1267013 () Bool)

(assert (=> b!1381769 m!1267013))

(declare-fun m!1267015 () Bool)

(assert (=> b!1381770 m!1267015))

(declare-fun m!1267017 () Bool)

(assert (=> b!1381771 m!1267017))

(declare-fun m!1267019 () Bool)

(assert (=> start!118004 m!1267019))

(declare-fun m!1267021 () Bool)

(assert (=> start!118004 m!1267021))

(push 1)

(assert (not b!1381769))

(assert (not start!118004))

(assert (not b!1381770))

(assert (not b!1381771))

(check-sat)

(pop 1)

(push 1)

(check-sat)


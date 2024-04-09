; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71864 () Bool)

(assert start!71864)

(declare-fun b!834820 () Bool)

(declare-fun res!567867 () Bool)

(declare-fun e!465802 () Bool)

(assert (=> b!834820 (=> (not res!567867) (not e!465802))))

(declare-fun k!2968 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!834820 (= res!567867 (validKeyInArray!0 k!2968))))

(declare-fun b!834821 () Bool)

(declare-fun res!567868 () Bool)

(assert (=> b!834821 (=> (not res!567868) (not e!465802))))

(declare-datatypes ((array!46718 0))(
  ( (array!46719 (arr!22389 (Array (_ BitVec 32) (_ BitVec 64))) (size!22810 (_ BitVec 32))) )
))
(declare-fun a!4227 () array!46718)

(declare-fun i!1466 () (_ BitVec 32))

(declare-fun to!390 () (_ BitVec 32))

(assert (=> b!834821 (= res!567868 (and (bvslt (size!22810 a!4227) #b01111111111111111111111111111111) (bvsge to!390 #b00000000000000000000000000000000) (bvsle to!390 (size!22810 a!4227)) (bvsgt to!390 i!1466)))))

(declare-fun b!834822 () Bool)

(assert (=> b!834822 (= e!465802 (and (= to!390 (size!22810 a!4227)) (bvslt (bvadd #b00000000000000000000000000000001 i!1466) #b00000000000000000000000000000000)))))

(declare-fun b!834823 () Bool)

(declare-fun res!567871 () Bool)

(assert (=> b!834823 (=> (not res!567871) (not e!465802))))

(declare-fun arrayCountValidKeys!0 (array!46718 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!834823 (= res!567871 (= (arrayCountValidKeys!0 (array!46719 (store (arr!22389 a!4227) i!1466 k!2968) (size!22810 a!4227)) (bvadd #b00000000000000000000000000000001 i!1466) to!390) (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390)))))

(declare-fun b!834824 () Bool)

(declare-fun res!567869 () Bool)

(assert (=> b!834824 (=> (not res!567869) (not e!465802))))

(assert (=> b!834824 (= res!567869 (not (validKeyInArray!0 (select (arr!22389 a!4227) i!1466))))))

(declare-fun res!567870 () Bool)

(assert (=> start!71864 (=> (not res!567870) (not e!465802))))

(assert (=> start!71864 (= res!567870 (and (bvsge i!1466 #b00000000000000000000000000000000) (bvslt i!1466 (size!22810 a!4227))))))

(assert (=> start!71864 e!465802))

(assert (=> start!71864 true))

(declare-fun array_inv!17812 (array!46718) Bool)

(assert (=> start!71864 (array_inv!17812 a!4227)))

(assert (= (and start!71864 res!567870) b!834824))

(assert (= (and b!834824 res!567869) b!834820))

(assert (= (and b!834820 res!567867) b!834821))

(assert (= (and b!834821 res!567868) b!834823))

(assert (= (and b!834823 res!567871) b!834822))

(declare-fun m!780089 () Bool)

(assert (=> b!834820 m!780089))

(declare-fun m!780091 () Bool)

(assert (=> b!834823 m!780091))

(declare-fun m!780093 () Bool)

(assert (=> b!834823 m!780093))

(declare-fun m!780095 () Bool)

(assert (=> b!834823 m!780095))

(declare-fun m!780097 () Bool)

(assert (=> b!834824 m!780097))

(assert (=> b!834824 m!780097))

(declare-fun m!780099 () Bool)

(assert (=> b!834824 m!780099))

(declare-fun m!780101 () Bool)

(assert (=> start!71864 m!780101))

(push 1)

(assert (not b!834820))

(assert (not start!71864))

(assert (not b!834824))

(assert (not b!834823))

(check-sat)

(pop 1)


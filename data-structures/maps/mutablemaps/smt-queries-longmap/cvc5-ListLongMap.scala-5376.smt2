; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71878 () Bool)

(assert start!71878)

(declare-fun b!834917 () Bool)

(declare-fun e!465845 () Bool)

(assert (=> b!834917 (= e!465845 false)))

(declare-datatypes ((array!46732 0))(
  ( (array!46733 (arr!22396 (Array (_ BitVec 32) (_ BitVec 64))) (size!22817 (_ BitVec 32))) )
))
(declare-fun a!4227 () array!46732)

(declare-fun lt!379586 () (_ BitVec 32))

(declare-fun i!1466 () (_ BitVec 32))

(declare-fun to!390 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!46732 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!834917 (= lt!379586 (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(declare-fun lt!379587 () (_ BitVec 32))

(declare-fun k!2968 () (_ BitVec 64))

(assert (=> b!834917 (= lt!379587 (arrayCountValidKeys!0 (array!46733 (store (arr!22396 a!4227) i!1466 k!2968) (size!22817 a!4227)) (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(declare-fun b!834914 () Bool)

(declare-fun res!567963 () Bool)

(assert (=> b!834914 (=> (not res!567963) (not e!465845))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!834914 (= res!567963 (not (validKeyInArray!0 (select (arr!22396 a!4227) i!1466))))))

(declare-fun b!834916 () Bool)

(declare-fun res!567962 () Bool)

(assert (=> b!834916 (=> (not res!567962) (not e!465845))))

(assert (=> b!834916 (= res!567962 (and (bvslt (size!22817 a!4227) #b01111111111111111111111111111111) (bvsge to!390 #b00000000000000000000000000000000) (bvsle to!390 (size!22817 a!4227)) (bvsgt to!390 i!1466)))))

(declare-fun res!567961 () Bool)

(assert (=> start!71878 (=> (not res!567961) (not e!465845))))

(assert (=> start!71878 (= res!567961 (and (bvsge i!1466 #b00000000000000000000000000000000) (bvslt i!1466 (size!22817 a!4227))))))

(assert (=> start!71878 e!465845))

(assert (=> start!71878 true))

(declare-fun array_inv!17819 (array!46732) Bool)

(assert (=> start!71878 (array_inv!17819 a!4227)))

(declare-fun b!834915 () Bool)

(declare-fun res!567964 () Bool)

(assert (=> b!834915 (=> (not res!567964) (not e!465845))))

(assert (=> b!834915 (= res!567964 (validKeyInArray!0 k!2968))))

(assert (= (and start!71878 res!567961) b!834914))

(assert (= (and b!834914 res!567963) b!834915))

(assert (= (and b!834915 res!567964) b!834916))

(assert (= (and b!834916 res!567962) b!834917))

(declare-fun m!780187 () Bool)

(assert (=> b!834917 m!780187))

(declare-fun m!780189 () Bool)

(assert (=> b!834917 m!780189))

(declare-fun m!780191 () Bool)

(assert (=> b!834917 m!780191))

(declare-fun m!780193 () Bool)

(assert (=> b!834914 m!780193))

(assert (=> b!834914 m!780193))

(declare-fun m!780195 () Bool)

(assert (=> b!834914 m!780195))

(declare-fun m!780197 () Bool)

(assert (=> start!71878 m!780197))

(declare-fun m!780199 () Bool)

(assert (=> b!834915 m!780199))

(push 1)

(assert (not b!834914))

(assert (not start!71878))

(assert (not b!834917))

(assert (not b!834915))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71870 () Bool)

(assert start!71870)

(declare-fun b!834860 () Bool)

(declare-fun e!465820 () Bool)

(assert (=> b!834860 (= e!465820 false)))

(declare-datatypes ((array!46724 0))(
  ( (array!46725 (arr!22392 (Array (_ BitVec 32) (_ BitVec 64))) (size!22813 (_ BitVec 32))) )
))
(declare-fun a!4227 () array!46724)

(declare-fun lt!379580 () (_ BitVec 32))

(declare-fun to!390 () (_ BitVec 32))

(declare-fun i!1466 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!46724 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!834860 (= lt!379580 (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(declare-fun lt!379581 () (_ BitVec 32))

(declare-fun k!2968 () (_ BitVec 64))

(assert (=> b!834860 (= lt!379581 (arrayCountValidKeys!0 (array!46725 (store (arr!22392 a!4227) i!1466 k!2968) (size!22813 a!4227)) (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(declare-fun res!567905 () Bool)

(assert (=> start!71870 (=> (not res!567905) (not e!465820))))

(assert (=> start!71870 (= res!567905 (and (bvsge i!1466 #b00000000000000000000000000000000) (bvslt i!1466 (size!22813 a!4227))))))

(assert (=> start!71870 e!465820))

(assert (=> start!71870 true))

(declare-fun array_inv!17815 (array!46724) Bool)

(assert (=> start!71870 (array_inv!17815 a!4227)))

(declare-fun b!834859 () Bool)

(declare-fun res!567907 () Bool)

(assert (=> b!834859 (=> (not res!567907) (not e!465820))))

(assert (=> b!834859 (= res!567907 (and (bvslt (size!22813 a!4227) #b01111111111111111111111111111111) (bvsge to!390 #b00000000000000000000000000000000) (bvsle to!390 (size!22813 a!4227)) (bvsgt to!390 i!1466)))))

(declare-fun b!834857 () Bool)

(declare-fun res!567904 () Bool)

(assert (=> b!834857 (=> (not res!567904) (not e!465820))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!834857 (= res!567904 (not (validKeyInArray!0 (select (arr!22392 a!4227) i!1466))))))

(declare-fun b!834858 () Bool)

(declare-fun res!567906 () Bool)

(assert (=> b!834858 (=> (not res!567906) (not e!465820))))

(assert (=> b!834858 (= res!567906 (validKeyInArray!0 k!2968))))

(assert (= (and start!71870 res!567905) b!834857))

(assert (= (and b!834857 res!567904) b!834858))

(assert (= (and b!834858 res!567906) b!834859))

(assert (= (and b!834859 res!567907) b!834860))

(declare-fun m!780131 () Bool)

(assert (=> b!834860 m!780131))

(declare-fun m!780133 () Bool)

(assert (=> b!834860 m!780133))

(declare-fun m!780135 () Bool)

(assert (=> b!834860 m!780135))

(declare-fun m!780137 () Bool)

(assert (=> start!71870 m!780137))

(declare-fun m!780139 () Bool)

(assert (=> b!834857 m!780139))

(assert (=> b!834857 m!780139))

(declare-fun m!780141 () Bool)

(assert (=> b!834857 m!780141))

(declare-fun m!780143 () Bool)

(assert (=> b!834858 m!780143))

(push 1)

(assert (not start!71870))

(assert (not b!834860))

(assert (not b!834858))

(assert (not b!834857))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


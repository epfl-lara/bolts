; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!116502 () Bool)

(assert start!116502)

(declare-fun b!1373879 () Bool)

(declare-fun e!778342 () Bool)

(assert (=> b!1373879 (= e!778342 false)))

(declare-fun i!1457 () (_ BitVec 32))

(declare-fun lt!603109 () (_ BitVec 32))

(declare-datatypes ((array!93125 0))(
  ( (array!93126 (arr!44964 (Array (_ BitVec 32) (_ BitVec 64))) (size!45515 (_ BitVec 32))) )
))
(declare-fun a!4142 () array!93125)

(declare-fun k!2959 () (_ BitVec 64))

(declare-fun arrayCountValidKeys!0 (array!93125 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1373879 (= lt!603109 (arrayCountValidKeys!0 (array!93126 (store (arr!44964 a!4142) i!1457 k!2959) (size!45515 a!4142)) i!1457 (bvadd #b00000000000000000000000000000001 i!1457)))))

(declare-fun lt!603110 () (_ BitVec 32))

(assert (=> b!1373879 (= lt!603110 (arrayCountValidKeys!0 a!4142 i!1457 (bvadd #b00000000000000000000000000000001 i!1457)))))

(declare-fun b!1373877 () Bool)

(declare-fun res!917184 () Bool)

(assert (=> b!1373877 (=> (not res!917184) (not e!778342))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1373877 (= res!917184 (not (validKeyInArray!0 k!2959)))))

(declare-fun res!917181 () Bool)

(assert (=> start!116502 (=> (not res!917181) (not e!778342))))

(assert (=> start!116502 (= res!917181 (and (bvsge i!1457 #b00000000000000000000000000000000) (bvslt i!1457 (size!45515 a!4142))))))

(assert (=> start!116502 e!778342))

(assert (=> start!116502 true))

(declare-fun array_inv!33909 (array!93125) Bool)

(assert (=> start!116502 (array_inv!33909 a!4142)))

(declare-fun b!1373878 () Bool)

(declare-fun res!917182 () Bool)

(assert (=> b!1373878 (=> (not res!917182) (not e!778342))))

(assert (=> b!1373878 (= res!917182 (and (bvslt (size!45515 a!4142) #b01111111111111111111111111111111) (bvsle i!1457 (size!45515 a!4142))))))

(declare-fun b!1373876 () Bool)

(declare-fun res!917183 () Bool)

(assert (=> b!1373876 (=> (not res!917183) (not e!778342))))

(assert (=> b!1373876 (= res!917183 (validKeyInArray!0 (select (arr!44964 a!4142) i!1457)))))

(assert (= (and start!116502 res!917181) b!1373876))

(assert (= (and b!1373876 res!917183) b!1373877))

(assert (= (and b!1373877 res!917184) b!1373878))

(assert (= (and b!1373878 res!917182) b!1373879))

(declare-fun m!1257113 () Bool)

(assert (=> b!1373879 m!1257113))

(declare-fun m!1257115 () Bool)

(assert (=> b!1373879 m!1257115))

(declare-fun m!1257117 () Bool)

(assert (=> b!1373879 m!1257117))

(declare-fun m!1257119 () Bool)

(assert (=> b!1373877 m!1257119))

(declare-fun m!1257121 () Bool)

(assert (=> start!116502 m!1257121))

(declare-fun m!1257123 () Bool)

(assert (=> b!1373876 m!1257123))

(assert (=> b!1373876 m!1257123))

(declare-fun m!1257125 () Bool)

(assert (=> b!1373876 m!1257125))

(push 1)

(assert (not b!1373876))

(assert (not start!116502))

(assert (not b!1373877))

(assert (not b!1373879))

(check-sat)

(pop 1)

(push 1)


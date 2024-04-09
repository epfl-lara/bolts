; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!71796 () Bool)

(assert start!71796)

(declare-fun b!834029 () Bool)

(declare-fun e!465346 () Bool)

(assert (=> b!834029 (= e!465346 false)))

(declare-datatypes ((array!46650 0))(
  ( (array!46651 (arr!22355 (Array (_ BitVec 32) (_ BitVec 64))) (size!22776 (_ BitVec 32))) )
))
(declare-fun a!4227 () array!46650)

(declare-fun lt!378755 () (_ BitVec 32))

(declare-fun i!1466 () (_ BitVec 32))

(declare-fun to!390 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!46650 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!834029 (= lt!378755 (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(declare-fun lt!378756 () (_ BitVec 32))

(declare-fun k0!2968 () (_ BitVec 64))

(assert (=> b!834029 (= lt!378756 (arrayCountValidKeys!0 (array!46651 (store (arr!22355 a!4227) i!1466 k0!2968) (size!22776 a!4227)) (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(declare-fun b!834027 () Bool)

(declare-fun res!567237 () Bool)

(assert (=> b!834027 (=> (not res!567237) (not e!465346))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!834027 (= res!567237 (validKeyInArray!0 k0!2968))))

(declare-fun res!567238 () Bool)

(assert (=> start!71796 (=> (not res!567238) (not e!465346))))

(assert (=> start!71796 (= res!567238 (and (bvsge i!1466 #b00000000000000000000000000000000) (bvslt i!1466 (size!22776 a!4227))))))

(assert (=> start!71796 e!465346))

(assert (=> start!71796 true))

(declare-fun array_inv!17778 (array!46650) Bool)

(assert (=> start!71796 (array_inv!17778 a!4227)))

(declare-fun b!834028 () Bool)

(declare-fun res!567235 () Bool)

(assert (=> b!834028 (=> (not res!567235) (not e!465346))))

(assert (=> b!834028 (= res!567235 (and (bvslt (size!22776 a!4227) #b01111111111111111111111111111111) (bvsge to!390 #b00000000000000000000000000000000) (bvsle to!390 (size!22776 a!4227)) (bvsgt to!390 i!1466)))))

(declare-fun b!834026 () Bool)

(declare-fun res!567236 () Bool)

(assert (=> b!834026 (=> (not res!567236) (not e!465346))))

(assert (=> b!834026 (= res!567236 (not (validKeyInArray!0 (select (arr!22355 a!4227) i!1466))))))

(assert (= (and start!71796 res!567238) b!834026))

(assert (= (and b!834026 res!567236) b!834027))

(assert (= (and b!834027 res!567237) b!834028))

(assert (= (and b!834028 res!567235) b!834029))

(declare-fun m!779061 () Bool)

(assert (=> b!834029 m!779061))

(declare-fun m!779063 () Bool)

(assert (=> b!834029 m!779063))

(declare-fun m!779065 () Bool)

(assert (=> b!834029 m!779065))

(declare-fun m!779067 () Bool)

(assert (=> b!834027 m!779067))

(declare-fun m!779069 () Bool)

(assert (=> start!71796 m!779069))

(declare-fun m!779071 () Bool)

(assert (=> b!834026 m!779071))

(assert (=> b!834026 m!779071))

(declare-fun m!779073 () Bool)

(assert (=> b!834026 m!779073))

(check-sat (not b!834026) (not b!834027) (not start!71796) (not b!834029))

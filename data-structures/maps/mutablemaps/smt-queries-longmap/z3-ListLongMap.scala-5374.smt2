; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!71868 () Bool)

(assert start!71868)

(declare-fun b!834845 () Bool)

(declare-fun res!567894 () Bool)

(declare-fun e!465815 () Bool)

(assert (=> b!834845 (=> (not res!567894) (not e!465815))))

(declare-datatypes ((array!46722 0))(
  ( (array!46723 (arr!22391 (Array (_ BitVec 32) (_ BitVec 64))) (size!22812 (_ BitVec 32))) )
))
(declare-fun a!4227 () array!46722)

(declare-fun i!1466 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!834845 (= res!567894 (not (validKeyInArray!0 (select (arr!22391 a!4227) i!1466))))))

(declare-fun res!567893 () Bool)

(assert (=> start!71868 (=> (not res!567893) (not e!465815))))

(assert (=> start!71868 (= res!567893 (and (bvsge i!1466 #b00000000000000000000000000000000) (bvslt i!1466 (size!22812 a!4227))))))

(assert (=> start!71868 e!465815))

(assert (=> start!71868 true))

(declare-fun array_inv!17814 (array!46722) Bool)

(assert (=> start!71868 (array_inv!17814 a!4227)))

(declare-fun b!834847 () Bool)

(declare-fun res!567892 () Bool)

(assert (=> b!834847 (=> (not res!567892) (not e!465815))))

(declare-fun to!390 () (_ BitVec 32))

(assert (=> b!834847 (= res!567892 (and (bvslt (size!22812 a!4227) #b01111111111111111111111111111111) (bvsge to!390 #b00000000000000000000000000000000) (bvsle to!390 (size!22812 a!4227)) (bvsgt to!390 i!1466)))))

(declare-fun b!834848 () Bool)

(assert (=> b!834848 (= e!465815 false)))

(declare-fun lt!379575 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!46722 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!834848 (= lt!379575 (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(declare-fun lt!379574 () (_ BitVec 32))

(declare-fun k0!2968 () (_ BitVec 64))

(assert (=> b!834848 (= lt!379574 (arrayCountValidKeys!0 (array!46723 (store (arr!22391 a!4227) i!1466 k0!2968) (size!22812 a!4227)) (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(declare-fun b!834846 () Bool)

(declare-fun res!567895 () Bool)

(assert (=> b!834846 (=> (not res!567895) (not e!465815))))

(assert (=> b!834846 (= res!567895 (validKeyInArray!0 k0!2968))))

(assert (= (and start!71868 res!567893) b!834845))

(assert (= (and b!834845 res!567894) b!834846))

(assert (= (and b!834846 res!567895) b!834847))

(assert (= (and b!834847 res!567892) b!834848))

(declare-fun m!780117 () Bool)

(assert (=> b!834845 m!780117))

(assert (=> b!834845 m!780117))

(declare-fun m!780119 () Bool)

(assert (=> b!834845 m!780119))

(declare-fun m!780121 () Bool)

(assert (=> start!71868 m!780121))

(declare-fun m!780123 () Bool)

(assert (=> b!834848 m!780123))

(declare-fun m!780125 () Bool)

(assert (=> b!834848 m!780125))

(declare-fun m!780127 () Bool)

(assert (=> b!834848 m!780127))

(declare-fun m!780129 () Bool)

(assert (=> b!834846 m!780129))

(check-sat (not b!834848) (not b!834846) (not b!834845) (not start!71868))

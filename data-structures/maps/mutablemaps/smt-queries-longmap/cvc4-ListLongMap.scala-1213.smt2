; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!25760 () Bool)

(assert start!25760)

(declare-fun b!266923 () Bool)

(declare-fun res!131261 () Bool)

(declare-fun e!172626 () Bool)

(assert (=> b!266923 (=> (not res!131261) (not e!172626))))

(declare-fun k!2698 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!266923 (= res!131261 (validKeyInArray!0 k!2698))))

(declare-fun res!131262 () Bool)

(assert (=> start!25760 (=> (not res!131262) (not e!172626))))

(declare-fun mask!4002 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25760 (= res!131262 (validMask!0 mask!4002))))

(assert (=> start!25760 e!172626))

(assert (=> start!25760 true))

(declare-datatypes ((array!12926 0))(
  ( (array!12927 (arr!6117 (Array (_ BitVec 32) (_ BitVec 64))) (size!6469 (_ BitVec 32))) )
))
(declare-fun a!3436 () array!12926)

(declare-fun array_inv!4071 (array!12926) Bool)

(assert (=> start!25760 (array_inv!4071 a!3436)))

(declare-fun b!266924 () Bool)

(declare-fun res!131260 () Bool)

(assert (=> b!266924 (=> (not res!131260) (not e!172626))))

(declare-fun arrayContainsKey!0 (array!12926 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!266924 (= res!131260 (not (arrayContainsKey!0 a!3436 k!2698 #b00000000000000000000000000000000)))))

(declare-fun b!266925 () Bool)

(declare-fun res!131257 () Bool)

(assert (=> b!266925 (=> (not res!131257) (not e!172626))))

(declare-fun i!1355 () (_ BitVec 32))

(assert (=> b!266925 (= res!131257 (and (= (size!6469 a!3436) (bvadd #b00000000000000000000000000000001 mask!4002)) (bvsge i!1355 #b00000000000000000000000000000000) (bvslt i!1355 (size!6469 a!3436))))))

(declare-fun b!266926 () Bool)

(declare-fun e!172625 () Bool)

(assert (=> b!266926 (= e!172626 e!172625)))

(declare-fun res!131259 () Bool)

(assert (=> b!266926 (=> (not res!131259) (not e!172625))))

(declare-datatypes ((SeekEntryResult!1319 0))(
  ( (MissingZero!1319 (index!7446 (_ BitVec 32))) (Found!1319 (index!7447 (_ BitVec 32))) (Intermediate!1319 (undefined!2131 Bool) (index!7448 (_ BitVec 32)) (x!25708 (_ BitVec 32))) (Undefined!1319) (MissingVacant!1319 (index!7449 (_ BitVec 32))) )
))
(declare-fun lt!134603 () SeekEntryResult!1319)

(assert (=> b!266926 (= res!131259 (or (= lt!134603 (MissingZero!1319 i!1355)) (= lt!134603 (MissingVacant!1319 i!1355))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12926 (_ BitVec 32)) SeekEntryResult!1319)

(assert (=> b!266926 (= lt!134603 (seekEntryOrOpen!0 k!2698 a!3436 mask!4002))))

(declare-fun b!266927 () Bool)

(assert (=> b!266927 (= e!172625 false)))

(declare-fun lt!134602 () Bool)

(declare-datatypes ((List!3952 0))(
  ( (Nil!3949) (Cons!3948 (h!4615 (_ BitVec 64)) (t!9042 List!3952)) )
))
(declare-fun arrayNoDuplicates!0 (array!12926 (_ BitVec 32) List!3952) Bool)

(assert (=> b!266927 (= lt!134602 (arrayNoDuplicates!0 a!3436 #b00000000000000000000000000000000 Nil!3949))))

(declare-fun b!266928 () Bool)

(declare-fun res!131258 () Bool)

(assert (=> b!266928 (=> (not res!131258) (not e!172625))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12926 (_ BitVec 32)) Bool)

(assert (=> b!266928 (= res!131258 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3436 mask!4002))))

(assert (= (and start!25760 res!131262) b!266925))

(assert (= (and b!266925 res!131257) b!266923))

(assert (= (and b!266923 res!131261) b!266924))

(assert (= (and b!266924 res!131260) b!266926))

(assert (= (and b!266926 res!131259) b!266928))

(assert (= (and b!266928 res!131258) b!266927))

(declare-fun m!283443 () Bool)

(assert (=> b!266926 m!283443))

(declare-fun m!283445 () Bool)

(assert (=> start!25760 m!283445))

(declare-fun m!283447 () Bool)

(assert (=> start!25760 m!283447))

(declare-fun m!283449 () Bool)

(assert (=> b!266928 m!283449))

(declare-fun m!283451 () Bool)

(assert (=> b!266924 m!283451))

(declare-fun m!283453 () Bool)

(assert (=> b!266923 m!283453))

(declare-fun m!283455 () Bool)

(assert (=> b!266927 m!283455))

(push 1)

(assert (not start!25760))

(assert (not b!266924))

(assert (not b!266923))

(assert (not b!266928))

(assert (not b!266927))

(assert (not b!266926))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


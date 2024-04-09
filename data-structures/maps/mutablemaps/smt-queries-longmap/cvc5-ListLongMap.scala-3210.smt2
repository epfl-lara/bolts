; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45016 () Bool)

(assert start!45016)

(declare-fun b!493541 () Bool)

(declare-fun res!296267 () Bool)

(declare-fun e!289795 () Bool)

(assert (=> b!493541 (=> (not res!296267) (not e!289795))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-datatypes ((array!31921 0))(
  ( (array!31922 (arr!15342 (Array (_ BitVec 32) (_ BitVec 64))) (size!15706 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31921)

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!493541 (= res!296267 (and (= (size!15706 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15706 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15706 a!3235)) (not (= i!1204 j!176))))))

(declare-fun res!296270 () Bool)

(assert (=> start!45016 (=> (not res!296270) (not e!289795))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45016 (= res!296270 (validMask!0 mask!3524))))

(assert (=> start!45016 e!289795))

(assert (=> start!45016 true))

(declare-fun array_inv!11116 (array!31921) Bool)

(assert (=> start!45016 (array_inv!11116 a!3235)))

(declare-fun b!493542 () Bool)

(declare-fun res!296264 () Bool)

(declare-fun e!289797 () Bool)

(assert (=> b!493542 (=> (not res!296264) (not e!289797))))

(declare-datatypes ((List!9553 0))(
  ( (Nil!9550) (Cons!9549 (h!10417 (_ BitVec 64)) (t!15789 List!9553)) )
))
(declare-fun arrayNoDuplicates!0 (array!31921 (_ BitVec 32) List!9553) Bool)

(assert (=> b!493542 (= res!296264 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9550))))

(declare-fun b!493543 () Bool)

(declare-fun res!296268 () Bool)

(assert (=> b!493543 (=> (not res!296268) (not e!289797))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31921 (_ BitVec 32)) Bool)

(assert (=> b!493543 (= res!296268 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!493544 () Bool)

(declare-fun res!296261 () Bool)

(assert (=> b!493544 (=> (not res!296261) (not e!289795))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!31921 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!493544 (= res!296261 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!493545 () Bool)

(declare-fun res!296263 () Bool)

(assert (=> b!493545 (=> (not res!296263) (not e!289795))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!493545 (= res!296263 (validKeyInArray!0 (select (arr!15342 a!3235) j!176)))))

(declare-fun b!493546 () Bool)

(declare-fun res!296265 () Bool)

(assert (=> b!493546 (=> (not res!296265) (not e!289795))))

(assert (=> b!493546 (= res!296265 (validKeyInArray!0 k!2280))))

(declare-fun b!493547 () Bool)

(assert (=> b!493547 (= e!289795 e!289797)))

(declare-fun res!296269 () Bool)

(assert (=> b!493547 (=> (not res!296269) (not e!289797))))

(declare-datatypes ((SeekEntryResult!3816 0))(
  ( (MissingZero!3816 (index!17443 (_ BitVec 32))) (Found!3816 (index!17444 (_ BitVec 32))) (Intermediate!3816 (undefined!4628 Bool) (index!17445 (_ BitVec 32)) (x!46553 (_ BitVec 32))) (Undefined!3816) (MissingVacant!3816 (index!17446 (_ BitVec 32))) )
))
(declare-fun lt!223314 () SeekEntryResult!3816)

(assert (=> b!493547 (= res!296269 (or (= lt!223314 (MissingZero!3816 i!1204)) (= lt!223314 (MissingVacant!3816 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31921 (_ BitVec 32)) SeekEntryResult!3816)

(assert (=> b!493547 (= lt!223314 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!493548 () Bool)

(declare-fun res!296266 () Bool)

(declare-fun e!289798 () Bool)

(assert (=> b!493548 (=> res!296266 e!289798)))

(declare-fun lt!223315 () SeekEntryResult!3816)

(assert (=> b!493548 (= res!296266 (or (not (is-Intermediate!3816 lt!223315)) (not (undefined!4628 lt!223315))))))

(declare-fun b!493549 () Bool)

(assert (=> b!493549 (= e!289797 (not e!289798))))

(declare-fun res!296262 () Bool)

(assert (=> b!493549 (=> res!296262 e!289798)))

(declare-fun lt!223316 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31921 (_ BitVec 32)) SeekEntryResult!3816)

(assert (=> b!493549 (= res!296262 (= lt!223315 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!223316 (select (store (arr!15342 a!3235) i!1204 k!2280) j!176) (array!31922 (store (arr!15342 a!3235) i!1204 k!2280) (size!15706 a!3235)) mask!3524)))))

(declare-fun lt!223312 () (_ BitVec 32))

(assert (=> b!493549 (= lt!223315 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!223312 (select (arr!15342 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!493549 (= lt!223316 (toIndex!0 (select (store (arr!15342 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!493549 (= lt!223312 (toIndex!0 (select (arr!15342 a!3235) j!176) mask!3524))))

(declare-fun lt!223311 () SeekEntryResult!3816)

(assert (=> b!493549 (= lt!223311 (Found!3816 j!176))))

(assert (=> b!493549 (= lt!223311 (seekEntryOrOpen!0 (select (arr!15342 a!3235) j!176) a!3235 mask!3524))))

(assert (=> b!493549 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-datatypes ((Unit!14570 0))(
  ( (Unit!14571) )
))
(declare-fun lt!223313 () Unit!14570)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31921 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14570)

(assert (=> b!493549 (= lt!223313 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!493550 () Bool)

(assert (=> b!493550 (= e!289798 true)))

(assert (=> b!493550 (= lt!223311 Undefined!3816)))

(assert (= (and start!45016 res!296270) b!493541))

(assert (= (and b!493541 res!296267) b!493545))

(assert (= (and b!493545 res!296263) b!493546))

(assert (= (and b!493546 res!296265) b!493544))

(assert (= (and b!493544 res!296261) b!493547))

(assert (= (and b!493547 res!296269) b!493543))

(assert (= (and b!493543 res!296268) b!493542))

(assert (= (and b!493542 res!296264) b!493549))

(assert (= (and b!493549 (not res!296262)) b!493548))

(assert (= (and b!493548 (not res!296266)) b!493550))

(declare-fun m!474481 () Bool)

(assert (=> b!493546 m!474481))

(declare-fun m!474483 () Bool)

(assert (=> b!493544 m!474483))

(declare-fun m!474485 () Bool)

(assert (=> b!493543 m!474485))

(declare-fun m!474487 () Bool)

(assert (=> b!493549 m!474487))

(declare-fun m!474489 () Bool)

(assert (=> b!493549 m!474489))

(declare-fun m!474491 () Bool)

(assert (=> b!493549 m!474491))

(declare-fun m!474493 () Bool)

(assert (=> b!493549 m!474493))

(declare-fun m!474495 () Bool)

(assert (=> b!493549 m!474495))

(assert (=> b!493549 m!474487))

(declare-fun m!474497 () Bool)

(assert (=> b!493549 m!474497))

(assert (=> b!493549 m!474495))

(declare-fun m!474499 () Bool)

(assert (=> b!493549 m!474499))

(assert (=> b!493549 m!474487))

(declare-fun m!474501 () Bool)

(assert (=> b!493549 m!474501))

(assert (=> b!493549 m!474487))

(declare-fun m!474503 () Bool)

(assert (=> b!493549 m!474503))

(assert (=> b!493549 m!474495))

(declare-fun m!474505 () Bool)

(assert (=> b!493549 m!474505))

(assert (=> b!493545 m!474487))

(assert (=> b!493545 m!474487))

(declare-fun m!474507 () Bool)

(assert (=> b!493545 m!474507))

(declare-fun m!474509 () Bool)

(assert (=> b!493542 m!474509))

(declare-fun m!474511 () Bool)

(assert (=> b!493547 m!474511))

(declare-fun m!474513 () Bool)

(assert (=> start!45016 m!474513))

(declare-fun m!474515 () Bool)

(assert (=> start!45016 m!474515))

(push 1)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45806 () Bool)

(assert start!45806)

(declare-fun b!506722 () Bool)

(declare-fun e!296574 () Bool)

(declare-fun e!296573 () Bool)

(assert (=> b!506722 (= e!296574 e!296573)))

(declare-fun res!307833 () Bool)

(assert (=> b!506722 (=> (not res!307833) (not e!296573))))

(declare-datatypes ((SeekEntryResult!4112 0))(
  ( (MissingZero!4112 (index!18636 (_ BitVec 32))) (Found!4112 (index!18637 (_ BitVec 32))) (Intermediate!4112 (undefined!4924 Bool) (index!18638 (_ BitVec 32)) (x!47660 (_ BitVec 32))) (Undefined!4112) (MissingVacant!4112 (index!18639 (_ BitVec 32))) )
))
(declare-fun lt!231318 () SeekEntryResult!4112)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!506722 (= res!307833 (or (= lt!231318 (MissingZero!4112 i!1204)) (= lt!231318 (MissingVacant!4112 i!1204))))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((array!32522 0))(
  ( (array!32523 (arr!15638 (Array (_ BitVec 32) (_ BitVec 64))) (size!16002 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32522)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32522 (_ BitVec 32)) SeekEntryResult!4112)

(assert (=> b!506722 (= lt!231318 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!506723 () Bool)

(declare-fun res!307837 () Bool)

(assert (=> b!506723 (=> (not res!307837) (not e!296574))))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!506723 (= res!307837 (and (= (size!16002 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16002 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16002 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!506724 () Bool)

(declare-fun res!307834 () Bool)

(assert (=> b!506724 (=> (not res!307834) (not e!296574))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!506724 (= res!307834 (validKeyInArray!0 (select (arr!15638 a!3235) j!176)))))

(declare-fun b!506725 () Bool)

(declare-fun e!296570 () Bool)

(declare-fun e!296571 () Bool)

(assert (=> b!506725 (= e!296570 e!296571)))

(declare-fun res!307836 () Bool)

(assert (=> b!506725 (=> res!307836 e!296571)))

(declare-fun lt!231320 () Bool)

(declare-fun lt!231315 () SeekEntryResult!4112)

(assert (=> b!506725 (= res!307836 (or (and (not lt!231320) (undefined!4924 lt!231315)) (and (not lt!231320) (not (undefined!4924 lt!231315)))))))

(assert (=> b!506725 (= lt!231320 (not (is-Intermediate!4112 lt!231315)))))

(declare-fun b!506726 () Bool)

(declare-fun res!307835 () Bool)

(assert (=> b!506726 (=> (not res!307835) (not e!296574))))

(declare-fun arrayContainsKey!0 (array!32522 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!506726 (= res!307835 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!506727 () Bool)

(declare-fun res!307832 () Bool)

(assert (=> b!506727 (=> (not res!307832) (not e!296573))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32522 (_ BitVec 32)) Bool)

(assert (=> b!506727 (= res!307832 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun res!307841 () Bool)

(assert (=> start!45806 (=> (not res!307841) (not e!296574))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45806 (= res!307841 (validMask!0 mask!3524))))

(assert (=> start!45806 e!296574))

(assert (=> start!45806 true))

(declare-fun array_inv!11412 (array!32522) Bool)

(assert (=> start!45806 (array_inv!11412 a!3235)))

(declare-fun b!506728 () Bool)

(declare-fun res!307838 () Bool)

(assert (=> b!506728 (=> (not res!307838) (not e!296574))))

(assert (=> b!506728 (= res!307838 (validKeyInArray!0 k!2280))))

(declare-fun e!296575 () Bool)

(declare-fun b!506729 () Bool)

(assert (=> b!506729 (= e!296575 (= (seekEntryOrOpen!0 (select (arr!15638 a!3235) j!176) a!3235 mask!3524) (Found!4112 j!176)))))

(declare-fun b!506730 () Bool)

(assert (=> b!506730 (= e!296573 (not e!296570))))

(declare-fun res!307840 () Bool)

(assert (=> b!506730 (=> res!307840 e!296570)))

(declare-fun lt!231319 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32522 (_ BitVec 32)) SeekEntryResult!4112)

(assert (=> b!506730 (= res!307840 (= lt!231315 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!231319 (select (store (arr!15638 a!3235) i!1204 k!2280) j!176) (array!32523 (store (arr!15638 a!3235) i!1204 k!2280) (size!16002 a!3235)) mask!3524)))))

(declare-fun lt!231317 () (_ BitVec 32))

(assert (=> b!506730 (= lt!231315 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!231317 (select (arr!15638 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!506730 (= lt!231319 (toIndex!0 (select (store (arr!15638 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!506730 (= lt!231317 (toIndex!0 (select (arr!15638 a!3235) j!176) mask!3524))))

(assert (=> b!506730 e!296575))

(declare-fun res!307831 () Bool)

(assert (=> b!506730 (=> (not res!307831) (not e!296575))))

(assert (=> b!506730 (= res!307831 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15504 0))(
  ( (Unit!15505) )
))
(declare-fun lt!231316 () Unit!15504)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32522 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15504)

(assert (=> b!506730 (= lt!231316 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!506731 () Bool)

(assert (=> b!506731 (= e!296571 true)))

(assert (=> b!506731 false))

(declare-fun b!506732 () Bool)

(declare-fun res!307839 () Bool)

(assert (=> b!506732 (=> (not res!307839) (not e!296573))))

(declare-datatypes ((List!9849 0))(
  ( (Nil!9846) (Cons!9845 (h!10722 (_ BitVec 64)) (t!16085 List!9849)) )
))
(declare-fun arrayNoDuplicates!0 (array!32522 (_ BitVec 32) List!9849) Bool)

(assert (=> b!506732 (= res!307839 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9846))))

(assert (= (and start!45806 res!307841) b!506723))

(assert (= (and b!506723 res!307837) b!506724))

(assert (= (and b!506724 res!307834) b!506728))

(assert (= (and b!506728 res!307838) b!506726))

(assert (= (and b!506726 res!307835) b!506722))

(assert (= (and b!506722 res!307833) b!506727))

(assert (= (and b!506727 res!307832) b!506732))

(assert (= (and b!506732 res!307839) b!506730))

(assert (= (and b!506730 res!307831) b!506729))

(assert (= (and b!506730 (not res!307840)) b!506725))

(assert (= (and b!506725 (not res!307836)) b!506731))

(declare-fun m!487465 () Bool)

(assert (=> b!506729 m!487465))

(assert (=> b!506729 m!487465))

(declare-fun m!487467 () Bool)

(assert (=> b!506729 m!487467))

(assert (=> b!506724 m!487465))

(assert (=> b!506724 m!487465))

(declare-fun m!487469 () Bool)

(assert (=> b!506724 m!487469))

(declare-fun m!487471 () Bool)

(assert (=> b!506726 m!487471))

(declare-fun m!487473 () Bool)

(assert (=> start!45806 m!487473))

(declare-fun m!487475 () Bool)

(assert (=> start!45806 m!487475))

(declare-fun m!487477 () Bool)

(assert (=> b!506722 m!487477))

(declare-fun m!487479 () Bool)

(assert (=> b!506732 m!487479))

(assert (=> b!506730 m!487465))

(declare-fun m!487481 () Bool)

(assert (=> b!506730 m!487481))

(declare-fun m!487483 () Bool)

(assert (=> b!506730 m!487483))

(declare-fun m!487485 () Bool)

(assert (=> b!506730 m!487485))

(declare-fun m!487487 () Bool)

(assert (=> b!506730 m!487487))

(assert (=> b!506730 m!487465))

(declare-fun m!487489 () Bool)

(assert (=> b!506730 m!487489))

(assert (=> b!506730 m!487465))

(declare-fun m!487491 () Bool)

(assert (=> b!506730 m!487491))

(assert (=> b!506730 m!487487))

(declare-fun m!487493 () Bool)

(assert (=> b!506730 m!487493))

(assert (=> b!506730 m!487487))

(declare-fun m!487495 () Bool)

(assert (=> b!506730 m!487495))

(declare-fun m!487497 () Bool)

(assert (=> b!506728 m!487497))

(declare-fun m!487499 () Bool)

(assert (=> b!506727 m!487499))

(push 1)


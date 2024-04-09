; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!29154 () Bool)

(assert start!29154)

(declare-fun b!295631 () Bool)

(declare-fun res!155553 () Bool)

(declare-fun e!186865 () Bool)

(assert (=> b!295631 (=> (not res!155553) (not e!186865))))

(declare-datatypes ((array!14954 0))(
  ( (array!14955 (arr!7087 (Array (_ BitVec 32) (_ BitVec 64))) (size!7439 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14954)

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14954 (_ BitVec 32)) Bool)

(assert (=> b!295631 (= res!155553 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!295632 () Bool)

(declare-fun e!186868 () Bool)

(assert (=> b!295632 (= e!186868 e!186865)))

(declare-fun res!155556 () Bool)

(assert (=> b!295632 (=> (not res!155556) (not e!186865))))

(declare-fun lt!146703 () Bool)

(declare-datatypes ((SeekEntryResult!2247 0))(
  ( (MissingZero!2247 (index!11158 (_ BitVec 32))) (Found!2247 (index!11159 (_ BitVec 32))) (Intermediate!2247 (undefined!3059 Bool) (index!11160 (_ BitVec 32)) (x!29344 (_ BitVec 32))) (Undefined!2247) (MissingVacant!2247 (index!11161 (_ BitVec 32))) )
))
(declare-fun lt!146702 () SeekEntryResult!2247)

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!295632 (= res!155556 (or lt!146703 (= lt!146702 (MissingVacant!2247 i!1256))))))

(assert (=> b!295632 (= lt!146703 (= lt!146702 (MissingZero!2247 i!1256)))))

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14954 (_ BitVec 32)) SeekEntryResult!2247)

(assert (=> b!295632 (= lt!146702 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!295633 () Bool)

(declare-fun res!155557 () Bool)

(assert (=> b!295633 (=> (not res!155557) (not e!186868))))

(assert (=> b!295633 (= res!155557 (and (= (size!7439 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7439 a!3312))))))

(declare-fun res!155555 () Bool)

(assert (=> start!29154 (=> (not res!155555) (not e!186868))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!29154 (= res!155555 (validMask!0 mask!3809))))

(assert (=> start!29154 e!186868))

(assert (=> start!29154 true))

(declare-fun array_inv!5041 (array!14954) Bool)

(assert (=> start!29154 (array_inv!5041 a!3312)))

(declare-fun b!295630 () Bool)

(declare-fun e!186869 () Bool)

(assert (=> b!295630 (= e!186869 (not true))))

(declare-fun lt!146700 () SeekEntryResult!2247)

(assert (=> b!295630 (and (= (select (arr!7087 a!3312) (index!11160 lt!146700)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (index!11160 lt!146700) i!1256))))

(declare-fun b!295634 () Bool)

(declare-fun res!155559 () Bool)

(assert (=> b!295634 (=> (not res!155559) (not e!186868))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!295634 (= res!155559 (validKeyInArray!0 k!2524))))

(declare-fun b!295635 () Bool)

(declare-fun e!186867 () Bool)

(assert (=> b!295635 (= e!186867 e!186869)))

(declare-fun res!155552 () Bool)

(assert (=> b!295635 (=> (not res!155552) (not e!186869))))

(declare-fun lt!146701 () Bool)

(assert (=> b!295635 (= res!155552 (and (or lt!146701 (not (undefined!3059 lt!146700))) (or lt!146701 (not (= (select (arr!7087 a!3312) (index!11160 lt!146700)) #b1000000000000000000000000000000000000000000000000000000000000000))) (or lt!146701 (not (= (select (arr!7087 a!3312) (index!11160 lt!146700)) k!2524))) (not lt!146701)))))

(assert (=> b!295635 (= lt!146701 (not (is-Intermediate!2247 lt!146700)))))

(declare-fun b!295636 () Bool)

(declare-fun res!155554 () Bool)

(assert (=> b!295636 (=> (not res!155554) (not e!186868))))

(declare-fun arrayContainsKey!0 (array!14954 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!295636 (= res!155554 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!295637 () Bool)

(assert (=> b!295637 (= e!186865 e!186867)))

(declare-fun res!155558 () Bool)

(assert (=> b!295637 (=> (not res!155558) (not e!186867))))

(assert (=> b!295637 (= res!155558 lt!146703)))

(declare-fun lt!146705 () SeekEntryResult!2247)

(declare-fun lt!146704 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14954 (_ BitVec 32)) SeekEntryResult!2247)

(assert (=> b!295637 (= lt!146705 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!146704 k!2524 (array!14955 (store (arr!7087 a!3312) i!1256 k!2524) (size!7439 a!3312)) mask!3809))))

(assert (=> b!295637 (= lt!146700 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!146704 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!295637 (= lt!146704 (toIndex!0 k!2524 mask!3809))))

(assert (= (and start!29154 res!155555) b!295633))

(assert (= (and b!295633 res!155557) b!295634))

(assert (= (and b!295634 res!155559) b!295636))

(assert (= (and b!295636 res!155554) b!295632))

(assert (= (and b!295632 res!155556) b!295631))

(assert (= (and b!295631 res!155553) b!295637))

(assert (= (and b!295637 res!155558) b!295635))

(assert (= (and b!295635 res!155552) b!295630))

(declare-fun m!308747 () Bool)

(assert (=> start!29154 m!308747))

(declare-fun m!308749 () Bool)

(assert (=> start!29154 m!308749))

(declare-fun m!308751 () Bool)

(assert (=> b!295637 m!308751))

(declare-fun m!308753 () Bool)

(assert (=> b!295637 m!308753))

(declare-fun m!308755 () Bool)

(assert (=> b!295637 m!308755))

(declare-fun m!308757 () Bool)

(assert (=> b!295637 m!308757))

(declare-fun m!308759 () Bool)

(assert (=> b!295634 m!308759))

(declare-fun m!308761 () Bool)

(assert (=> b!295631 m!308761))

(declare-fun m!308763 () Bool)

(assert (=> b!295630 m!308763))

(assert (=> b!295635 m!308763))

(declare-fun m!308765 () Bool)

(assert (=> b!295632 m!308765))

(declare-fun m!308767 () Bool)

(assert (=> b!295636 m!308767))

(push 1)


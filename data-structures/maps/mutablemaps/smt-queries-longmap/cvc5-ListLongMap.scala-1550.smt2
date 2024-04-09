; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!29328 () Bool)

(assert start!29328)

(declare-fun b!296998 () Bool)

(declare-fun res!156641 () Bool)

(declare-fun e!187714 () Bool)

(assert (=> b!296998 (=> (not res!156641) (not e!187714))))

(declare-datatypes ((array!15038 0))(
  ( (array!15039 (arr!7126 (Array (_ BitVec 32) (_ BitVec 64))) (size!7478 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!15038)

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15038 (_ BitVec 32)) Bool)

(assert (=> b!296998 (= res!156641 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!297000 () Bool)

(declare-fun e!187716 () Bool)

(declare-fun e!187718 () Bool)

(assert (=> b!297000 (= e!187716 e!187718)))

(declare-fun res!156643 () Bool)

(assert (=> b!297000 (=> (not res!156643) (not e!187718))))

(declare-datatypes ((SeekEntryResult!2286 0))(
  ( (MissingZero!2286 (index!11314 (_ BitVec 32))) (Found!2286 (index!11315 (_ BitVec 32))) (Intermediate!2286 (undefined!3098 Bool) (index!11316 (_ BitVec 32)) (x!29499 (_ BitVec 32))) (Undefined!2286) (MissingVacant!2286 (index!11317 (_ BitVec 32))) )
))
(declare-fun lt!147614 () SeekEntryResult!2286)

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun lt!147620 () Bool)

(assert (=> b!297000 (= res!156643 (and (or lt!147620 (not (undefined!3098 lt!147614))) (or lt!147620 (not (= (select (arr!7126 a!3312) (index!11316 lt!147614)) #b1000000000000000000000000000000000000000000000000000000000000000))) (or lt!147620 (not (= (select (arr!7126 a!3312) (index!11316 lt!147614)) k!2524))) (not lt!147620)))))

(assert (=> b!297000 (= lt!147620 (not (is-Intermediate!2286 lt!147614)))))

(declare-fun b!297001 () Bool)

(declare-fun e!187717 () Bool)

(assert (=> b!297001 (= e!187717 e!187714)))

(declare-fun res!156638 () Bool)

(assert (=> b!297001 (=> (not res!156638) (not e!187714))))

(declare-fun lt!147617 () Bool)

(declare-fun i!1256 () (_ BitVec 32))

(declare-fun lt!147616 () SeekEntryResult!2286)

(assert (=> b!297001 (= res!156638 (or lt!147617 (= lt!147616 (MissingVacant!2286 i!1256))))))

(assert (=> b!297001 (= lt!147617 (= lt!147616 (MissingZero!2286 i!1256)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15038 (_ BitVec 32)) SeekEntryResult!2286)

(assert (=> b!297001 (= lt!147616 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!297002 () Bool)

(declare-fun res!156639 () Bool)

(assert (=> b!297002 (=> (not res!156639) (not e!187717))))

(assert (=> b!297002 (= res!156639 (and (= (size!7478 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7478 a!3312))))))

(declare-fun b!297003 () Bool)

(declare-fun res!156640 () Bool)

(assert (=> b!297003 (=> (not res!156640) (not e!187717))))

(declare-fun arrayContainsKey!0 (array!15038 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!297003 (= res!156640 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!297004 () Bool)

(assert (=> b!297004 (= e!187718 (not (= (select (store (arr!7126 a!3312) i!1256 k!2524) (index!11316 lt!147614)) k!2524)))))

(declare-fun lt!147618 () SeekEntryResult!2286)

(assert (=> b!297004 (= lt!147618 lt!147614)))

(declare-fun lt!147615 () (_ BitVec 32))

(declare-datatypes ((Unit!9239 0))(
  ( (Unit!9240) )
))
(declare-fun lt!147619 () Unit!9239)

(declare-fun lemmaPutValidKeyAtRightPlaceThenFindsHelper1!0 (array!15038 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!9239)

(assert (=> b!297004 (= lt!147619 (lemmaPutValidKeyAtRightPlaceThenFindsHelper1!0 a!3312 i!1256 k!2524 #b00000000000000000000000000000000 lt!147615 (index!11316 lt!147614) (x!29499 lt!147614) mask!3809))))

(assert (=> b!297004 (and (= (select (arr!7126 a!3312) (index!11316 lt!147614)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (index!11316 lt!147614) i!1256))))

(declare-fun b!297005 () Bool)

(declare-fun res!156645 () Bool)

(assert (=> b!297005 (=> (not res!156645) (not e!187717))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!297005 (= res!156645 (validKeyInArray!0 k!2524))))

(declare-fun res!156642 () Bool)

(assert (=> start!29328 (=> (not res!156642) (not e!187717))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!29328 (= res!156642 (validMask!0 mask!3809))))

(assert (=> start!29328 e!187717))

(assert (=> start!29328 true))

(declare-fun array_inv!5080 (array!15038) Bool)

(assert (=> start!29328 (array_inv!5080 a!3312)))

(declare-fun b!296999 () Bool)

(assert (=> b!296999 (= e!187714 e!187716)))

(declare-fun res!156644 () Bool)

(assert (=> b!296999 (=> (not res!156644) (not e!187716))))

(assert (=> b!296999 (= res!156644 lt!147617)))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15038 (_ BitVec 32)) SeekEntryResult!2286)

(assert (=> b!296999 (= lt!147618 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!147615 k!2524 (array!15039 (store (arr!7126 a!3312) i!1256 k!2524) (size!7478 a!3312)) mask!3809))))

(assert (=> b!296999 (= lt!147614 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!147615 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!296999 (= lt!147615 (toIndex!0 k!2524 mask!3809))))

(assert (= (and start!29328 res!156642) b!297002))

(assert (= (and b!297002 res!156639) b!297005))

(assert (= (and b!297005 res!156645) b!297003))

(assert (= (and b!297003 res!156640) b!297001))

(assert (= (and b!297001 res!156638) b!296998))

(assert (= (and b!296998 res!156641) b!296999))

(assert (= (and b!296999 res!156644) b!297000))

(assert (= (and b!297000 res!156643) b!297004))

(declare-fun m!309857 () Bool)

(assert (=> b!297004 m!309857))

(declare-fun m!309859 () Bool)

(assert (=> b!297004 m!309859))

(declare-fun m!309861 () Bool)

(assert (=> b!297004 m!309861))

(declare-fun m!309863 () Bool)

(assert (=> b!297004 m!309863))

(declare-fun m!309865 () Bool)

(assert (=> b!297001 m!309865))

(declare-fun m!309867 () Bool)

(assert (=> b!296998 m!309867))

(declare-fun m!309869 () Bool)

(assert (=> start!29328 m!309869))

(declare-fun m!309871 () Bool)

(assert (=> start!29328 m!309871))

(assert (=> b!296999 m!309857))

(declare-fun m!309873 () Bool)

(assert (=> b!296999 m!309873))

(declare-fun m!309875 () Bool)

(assert (=> b!296999 m!309875))

(declare-fun m!309877 () Bool)

(assert (=> b!296999 m!309877))

(assert (=> b!297000 m!309863))

(declare-fun m!309879 () Bool)

(assert (=> b!297005 m!309879))

(declare-fun m!309881 () Bool)

(assert (=> b!297003 m!309881))

(push 1)


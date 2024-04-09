; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!29164 () Bool)

(assert start!29164)

(declare-fun b!295750 () Bool)

(declare-fun e!186942 () Bool)

(declare-fun e!186940 () Bool)

(assert (=> b!295750 (= e!186942 e!186940)))

(declare-fun res!155674 () Bool)

(assert (=> b!295750 (=> (not res!155674) (not e!186940))))

(declare-datatypes ((SeekEntryResult!2252 0))(
  ( (MissingZero!2252 (index!11178 (_ BitVec 32))) (Found!2252 (index!11179 (_ BitVec 32))) (Intermediate!2252 (undefined!3064 Bool) (index!11180 (_ BitVec 32)) (x!29357 (_ BitVec 32))) (Undefined!2252) (MissingVacant!2252 (index!11181 (_ BitVec 32))) )
))
(declare-fun lt!146794 () SeekEntryResult!2252)

(declare-fun lt!146791 () Bool)

(declare-datatypes ((array!14964 0))(
  ( (array!14965 (arr!7092 (Array (_ BitVec 32) (_ BitVec 64))) (size!7444 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14964)

(declare-fun k!2524 () (_ BitVec 64))

(assert (=> b!295750 (= res!155674 (and (or lt!146791 (not (undefined!3064 lt!146794))) (or lt!146791 (not (= (select (arr!7092 a!3312) (index!11180 lt!146794)) #b1000000000000000000000000000000000000000000000000000000000000000))) (or lt!146791 (not (= (select (arr!7092 a!3312) (index!11180 lt!146794)) k!2524))) (not lt!146791)))))

(assert (=> b!295750 (= lt!146791 (not (is-Intermediate!2252 lt!146794)))))

(declare-fun b!295751 () Bool)

(assert (=> b!295751 (= e!186940 (not true))))

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!295751 (and (= (select (arr!7092 a!3312) (index!11180 lt!146794)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (index!11180 lt!146794) i!1256))))

(declare-fun b!295752 () Bool)

(declare-fun res!155672 () Bool)

(declare-fun e!186943 () Bool)

(assert (=> b!295752 (=> (not res!155672) (not e!186943))))

(declare-fun arrayContainsKey!0 (array!14964 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!295752 (= res!155672 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!295753 () Bool)

(declare-fun res!155673 () Bool)

(assert (=> b!295753 (=> (not res!155673) (not e!186943))))

(declare-fun mask!3809 () (_ BitVec 32))

(assert (=> b!295753 (= res!155673 (and (= (size!7444 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7444 a!3312))))))

(declare-fun b!295754 () Bool)

(declare-fun e!186944 () Bool)

(assert (=> b!295754 (= e!186943 e!186944)))

(declare-fun res!155677 () Bool)

(assert (=> b!295754 (=> (not res!155677) (not e!186944))))

(declare-fun lt!146795 () Bool)

(declare-fun lt!146790 () SeekEntryResult!2252)

(assert (=> b!295754 (= res!155677 (or lt!146795 (= lt!146790 (MissingVacant!2252 i!1256))))))

(assert (=> b!295754 (= lt!146795 (= lt!146790 (MissingZero!2252 i!1256)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14964 (_ BitVec 32)) SeekEntryResult!2252)

(assert (=> b!295754 (= lt!146790 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!295755 () Bool)

(declare-fun res!155678 () Bool)

(assert (=> b!295755 (=> (not res!155678) (not e!186943))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!295755 (= res!155678 (validKeyInArray!0 k!2524))))

(declare-fun b!295756 () Bool)

(declare-fun res!155679 () Bool)

(assert (=> b!295756 (=> (not res!155679) (not e!186944))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14964 (_ BitVec 32)) Bool)

(assert (=> b!295756 (= res!155679 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun res!155676 () Bool)

(assert (=> start!29164 (=> (not res!155676) (not e!186943))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!29164 (= res!155676 (validMask!0 mask!3809))))

(assert (=> start!29164 e!186943))

(assert (=> start!29164 true))

(declare-fun array_inv!5046 (array!14964) Bool)

(assert (=> start!29164 (array_inv!5046 a!3312)))

(declare-fun b!295757 () Bool)

(assert (=> b!295757 (= e!186944 e!186942)))

(declare-fun res!155675 () Bool)

(assert (=> b!295757 (=> (not res!155675) (not e!186942))))

(assert (=> b!295757 (= res!155675 lt!146795)))

(declare-fun lt!146793 () SeekEntryResult!2252)

(declare-fun lt!146792 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14964 (_ BitVec 32)) SeekEntryResult!2252)

(assert (=> b!295757 (= lt!146793 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!146792 k!2524 (array!14965 (store (arr!7092 a!3312) i!1256 k!2524) (size!7444 a!3312)) mask!3809))))

(assert (=> b!295757 (= lt!146794 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!146792 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!295757 (= lt!146792 (toIndex!0 k!2524 mask!3809))))

(assert (= (and start!29164 res!155676) b!295753))

(assert (= (and b!295753 res!155673) b!295755))

(assert (= (and b!295755 res!155678) b!295752))

(assert (= (and b!295752 res!155672) b!295754))

(assert (= (and b!295754 res!155677) b!295756))

(assert (= (and b!295756 res!155679) b!295757))

(assert (= (and b!295757 res!155675) b!295750))

(assert (= (and b!295750 res!155674) b!295751))

(declare-fun m!308857 () Bool)

(assert (=> b!295752 m!308857))

(declare-fun m!308859 () Bool)

(assert (=> b!295756 m!308859))

(declare-fun m!308861 () Bool)

(assert (=> b!295757 m!308861))

(declare-fun m!308863 () Bool)

(assert (=> b!295757 m!308863))

(declare-fun m!308865 () Bool)

(assert (=> b!295757 m!308865))

(declare-fun m!308867 () Bool)

(assert (=> b!295757 m!308867))

(declare-fun m!308869 () Bool)

(assert (=> b!295754 m!308869))

(declare-fun m!308871 () Bool)

(assert (=> start!29164 m!308871))

(declare-fun m!308873 () Bool)

(assert (=> start!29164 m!308873))

(declare-fun m!308875 () Bool)

(assert (=> b!295750 m!308875))

(declare-fun m!308877 () Bool)

(assert (=> b!295755 m!308877))

(assert (=> b!295751 m!308875))

(push 1)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!29646 () Bool)

(assert start!29646)

(declare-fun b!298925 () Bool)

(declare-fun res!157646 () Bool)

(declare-fun e!188838 () Bool)

(assert (=> b!298925 (=> (not res!157646) (not e!188838))))

(declare-fun i!1256 () (_ BitVec 32))

(declare-datatypes ((array!15113 0))(
  ( (array!15114 (arr!7156 (Array (_ BitVec 32) (_ BitVec 64))) (size!7508 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!15113)

(declare-fun mask!3809 () (_ BitVec 32))

(assert (=> b!298925 (= res!157646 (and (= (size!7508 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7508 a!3312))))))

(declare-fun b!298926 () Bool)

(declare-fun res!157652 () Bool)

(assert (=> b!298926 (=> (not res!157652) (not e!188838))))

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!298926 (= res!157652 (validKeyInArray!0 k!2524))))

(declare-fun res!157651 () Bool)

(assert (=> start!29646 (=> (not res!157651) (not e!188838))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!29646 (= res!157651 (validMask!0 mask!3809))))

(assert (=> start!29646 e!188838))

(assert (=> start!29646 true))

(declare-fun array_inv!5110 (array!15113) Bool)

(assert (=> start!29646 (array_inv!5110 a!3312)))

(declare-fun b!298927 () Bool)

(declare-fun e!188841 () Bool)

(declare-fun e!188839 () Bool)

(assert (=> b!298927 (= e!188841 e!188839)))

(declare-fun res!157649 () Bool)

(assert (=> b!298927 (=> (not res!157649) (not e!188839))))

(declare-datatypes ((SeekEntryResult!2316 0))(
  ( (MissingZero!2316 (index!11437 (_ BitVec 32))) (Found!2316 (index!11438 (_ BitVec 32))) (Intermediate!2316 (undefined!3128 Bool) (index!11439 (_ BitVec 32)) (x!29646 (_ BitVec 32))) (Undefined!2316) (MissingVacant!2316 (index!11440 (_ BitVec 32))) )
))
(declare-fun lt!148673 () SeekEntryResult!2316)

(declare-fun lt!148679 () Bool)

(assert (=> b!298927 (= res!157649 (and (not lt!148679) (= lt!148673 (MissingVacant!2316 i!1256))))))

(declare-fun lt!148677 () SeekEntryResult!2316)

(declare-fun lt!148674 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15113 (_ BitVec 32)) SeekEntryResult!2316)

(assert (=> b!298927 (= lt!148677 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!148674 k!2524 (array!15114 (store (arr!7156 a!3312) i!1256 k!2524) (size!7508 a!3312)) mask!3809))))

(declare-fun lt!148675 () SeekEntryResult!2316)

(assert (=> b!298927 (= lt!148675 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!148674 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!298927 (= lt!148674 (toIndex!0 k!2524 mask!3809))))

(declare-fun b!298928 () Bool)

(assert (=> b!298928 (= e!188838 e!188841)))

(declare-fun res!157648 () Bool)

(assert (=> b!298928 (=> (not res!157648) (not e!188841))))

(assert (=> b!298928 (= res!157648 (or lt!148679 (= lt!148673 (MissingVacant!2316 i!1256))))))

(assert (=> b!298928 (= lt!148679 (= lt!148673 (MissingZero!2316 i!1256)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15113 (_ BitVec 32)) SeekEntryResult!2316)

(assert (=> b!298928 (= lt!148673 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!298929 () Bool)

(declare-fun res!157650 () Bool)

(assert (=> b!298929 (=> (not res!157650) (not e!188838))))

(declare-fun arrayContainsKey!0 (array!15113 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!298929 (= res!157650 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!298930 () Bool)

(declare-fun e!188842 () Bool)

(assert (=> b!298930 (= e!188842 (not true))))

(declare-datatypes ((Unit!9312 0))(
  ( (Unit!9313) )
))
(declare-fun lt!148678 () Unit!9312)

(declare-fun lemmaPutValidKeyAtRightPlaceThenFindsHelper2!0 (array!15113 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!9312)

(assert (=> b!298930 (= lt!148678 (lemmaPutValidKeyAtRightPlaceThenFindsHelper2!0 a!3312 i!1256 k!2524 #b00000000000000000000000000000000 lt!148674 (index!11439 lt!148675) (x!29646 lt!148675) mask!3809))))

(assert (=> b!298930 (= (index!11439 lt!148675) i!1256)))

(declare-fun b!298931 () Bool)

(assert (=> b!298931 (= e!188839 e!188842)))

(declare-fun res!157647 () Bool)

(assert (=> b!298931 (=> (not res!157647) (not e!188842))))

(declare-fun lt!148676 () Bool)

(assert (=> b!298931 (= res!157647 (and (or lt!148676 (not (undefined!3128 lt!148675))) (not lt!148676) (= (select (arr!7156 a!3312) (index!11439 lt!148675)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!298931 (= lt!148676 (not (is-Intermediate!2316 lt!148675)))))

(declare-fun b!298932 () Bool)

(declare-fun res!157653 () Bool)

(assert (=> b!298932 (=> (not res!157653) (not e!188841))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15113 (_ BitVec 32)) Bool)

(assert (=> b!298932 (= res!157653 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(assert (= (and start!29646 res!157651) b!298925))

(assert (= (and b!298925 res!157646) b!298926))

(assert (= (and b!298926 res!157652) b!298929))

(assert (= (and b!298929 res!157650) b!298928))

(assert (= (and b!298928 res!157648) b!298932))

(assert (= (and b!298932 res!157653) b!298927))

(assert (= (and b!298927 res!157649) b!298931))

(assert (= (and b!298931 res!157647) b!298930))

(declare-fun m!311317 () Bool)

(assert (=> start!29646 m!311317))

(declare-fun m!311319 () Bool)

(assert (=> start!29646 m!311319))

(declare-fun m!311321 () Bool)

(assert (=> b!298932 m!311321))

(declare-fun m!311323 () Bool)

(assert (=> b!298929 m!311323))

(declare-fun m!311325 () Bool)

(assert (=> b!298930 m!311325))

(declare-fun m!311327 () Bool)

(assert (=> b!298926 m!311327))

(declare-fun m!311329 () Bool)

(assert (=> b!298927 m!311329))

(declare-fun m!311331 () Bool)

(assert (=> b!298927 m!311331))

(declare-fun m!311333 () Bool)

(assert (=> b!298927 m!311333))

(declare-fun m!311335 () Bool)

(assert (=> b!298927 m!311335))

(declare-fun m!311337 () Bool)

(assert (=> b!298928 m!311337))

(declare-fun m!311339 () Bool)

(assert (=> b!298931 m!311339))

(push 1)


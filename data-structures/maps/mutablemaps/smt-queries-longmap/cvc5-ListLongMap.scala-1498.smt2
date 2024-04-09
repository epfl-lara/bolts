; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!28432 () Bool)

(assert start!28432)

(declare-fun b!290981 () Bool)

(declare-fun e!184137 () Bool)

(assert (=> b!290981 (= e!184137 (not true))))

(declare-datatypes ((SeekEntryResult!2130 0))(
  ( (MissingZero!2130 (index!10690 (_ BitVec 32))) (Found!2130 (index!10691 (_ BitVec 32))) (Intermediate!2130 (undefined!2942 Bool) (index!10692 (_ BitVec 32)) (x!28853 (_ BitVec 32))) (Undefined!2130) (MissingVacant!2130 (index!10693 (_ BitVec 32))) )
))
(declare-fun lt!143908 () SeekEntryResult!2130)

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!290981 (= (index!10692 lt!143908) i!1256)))

(declare-fun b!290982 () Bool)

(declare-fun res!152360 () Bool)

(declare-fun e!184138 () Bool)

(assert (=> b!290982 (=> (not res!152360) (not e!184138))))

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!290982 (= res!152360 (validKeyInArray!0 k!2524))))

(declare-fun b!290983 () Bool)

(declare-fun e!184135 () Bool)

(assert (=> b!290983 (= e!184138 e!184135)))

(declare-fun res!152362 () Bool)

(assert (=> b!290983 (=> (not res!152362) (not e!184135))))

(declare-fun lt!143905 () SeekEntryResult!2130)

(declare-fun lt!143904 () Bool)

(assert (=> b!290983 (= res!152362 (or lt!143904 (= lt!143905 (MissingVacant!2130 i!1256))))))

(assert (=> b!290983 (= lt!143904 (= lt!143905 (MissingZero!2130 i!1256)))))

(declare-datatypes ((array!14690 0))(
  ( (array!14691 (arr!6970 (Array (_ BitVec 32) (_ BitVec 64))) (size!7322 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14690)

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14690 (_ BitVec 32)) SeekEntryResult!2130)

(assert (=> b!290983 (= lt!143905 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!290985 () Bool)

(declare-fun res!152357 () Bool)

(assert (=> b!290985 (=> (not res!152357) (not e!184138))))

(declare-fun arrayContainsKey!0 (array!14690 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!290985 (= res!152357 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!290986 () Bool)

(declare-fun res!152359 () Bool)

(assert (=> b!290986 (=> (not res!152359) (not e!184135))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14690 (_ BitVec 32)) Bool)

(assert (=> b!290986 (= res!152359 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun res!152361 () Bool)

(assert (=> start!28432 (=> (not res!152361) (not e!184138))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28432 (= res!152361 (validMask!0 mask!3809))))

(assert (=> start!28432 e!184138))

(assert (=> start!28432 true))

(declare-fun array_inv!4924 (array!14690) Bool)

(assert (=> start!28432 (array_inv!4924 a!3312)))

(declare-fun b!290984 () Bool)

(declare-fun e!184134 () Bool)

(assert (=> b!290984 (= e!184134 e!184137)))

(declare-fun res!152363 () Bool)

(assert (=> b!290984 (=> (not res!152363) (not e!184137))))

(declare-fun lt!143909 () Bool)

(assert (=> b!290984 (= res!152363 (and (or lt!143909 (not (undefined!2942 lt!143908))) (not lt!143909) (= (select (arr!6970 a!3312) (index!10692 lt!143908)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!290984 (= lt!143909 (not (is-Intermediate!2130 lt!143908)))))

(declare-fun b!290987 () Bool)

(declare-fun res!152364 () Bool)

(assert (=> b!290987 (=> (not res!152364) (not e!184138))))

(assert (=> b!290987 (= res!152364 (and (= (size!7322 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7322 a!3312))))))

(declare-fun b!290988 () Bool)

(assert (=> b!290988 (= e!184135 e!184134)))

(declare-fun res!152358 () Bool)

(assert (=> b!290988 (=> (not res!152358) (not e!184134))))

(assert (=> b!290988 (= res!152358 (and (not lt!143904) (= lt!143905 (MissingVacant!2130 i!1256))))))

(declare-fun lt!143907 () SeekEntryResult!2130)

(declare-fun lt!143906 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14690 (_ BitVec 32)) SeekEntryResult!2130)

(assert (=> b!290988 (= lt!143907 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!143906 k!2524 (array!14691 (store (arr!6970 a!3312) i!1256 k!2524) (size!7322 a!3312)) mask!3809))))

(assert (=> b!290988 (= lt!143908 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!143906 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!290988 (= lt!143906 (toIndex!0 k!2524 mask!3809))))

(assert (= (and start!28432 res!152361) b!290987))

(assert (= (and b!290987 res!152364) b!290982))

(assert (= (and b!290982 res!152360) b!290985))

(assert (= (and b!290985 res!152357) b!290983))

(assert (= (and b!290983 res!152362) b!290986))

(assert (= (and b!290986 res!152359) b!290988))

(assert (= (and b!290988 res!152358) b!290984))

(assert (= (and b!290984 res!152363) b!290981))

(declare-fun m!304993 () Bool)

(assert (=> b!290984 m!304993))

(declare-fun m!304995 () Bool)

(assert (=> b!290986 m!304995))

(declare-fun m!304997 () Bool)

(assert (=> b!290983 m!304997))

(declare-fun m!304999 () Bool)

(assert (=> b!290982 m!304999))

(declare-fun m!305001 () Bool)

(assert (=> b!290988 m!305001))

(declare-fun m!305003 () Bool)

(assert (=> b!290988 m!305003))

(declare-fun m!305005 () Bool)

(assert (=> b!290988 m!305005))

(declare-fun m!305007 () Bool)

(assert (=> b!290988 m!305007))

(declare-fun m!305009 () Bool)

(assert (=> b!290985 m!305009))

(declare-fun m!305011 () Bool)

(assert (=> start!28432 m!305011))

(declare-fun m!305013 () Bool)

(assert (=> start!28432 m!305013))

(push 1)


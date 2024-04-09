; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!28436 () Bool)

(assert start!28436)

(declare-fun b!291029 () Bool)

(declare-fun e!184167 () Bool)

(declare-fun e!184168 () Bool)

(assert (=> b!291029 (= e!184167 e!184168)))

(declare-fun res!152407 () Bool)

(assert (=> b!291029 (=> (not res!152407) (not e!184168))))

(declare-fun i!1256 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2132 0))(
  ( (MissingZero!2132 (index!10698 (_ BitVec 32))) (Found!2132 (index!10699 (_ BitVec 32))) (Intermediate!2132 (undefined!2944 Bool) (index!10700 (_ BitVec 32)) (x!28855 (_ BitVec 32))) (Undefined!2132) (MissingVacant!2132 (index!10701 (_ BitVec 32))) )
))
(declare-fun lt!143942 () SeekEntryResult!2132)

(declare-fun lt!143944 () Bool)

(assert (=> b!291029 (= res!152407 (and (not lt!143944) (= lt!143942 (MissingVacant!2132 i!1256))))))

(declare-fun lt!143943 () SeekEntryResult!2132)

(declare-fun lt!143941 () (_ BitVec 32))

(declare-datatypes ((array!14694 0))(
  ( (array!14695 (arr!6972 (Array (_ BitVec 32) (_ BitVec 64))) (size!7324 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14694)

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14694 (_ BitVec 32)) SeekEntryResult!2132)

(assert (=> b!291029 (= lt!143943 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!143941 k!2524 (array!14695 (store (arr!6972 a!3312) i!1256 k!2524) (size!7324 a!3312)) mask!3809))))

(declare-fun lt!143945 () SeekEntryResult!2132)

(assert (=> b!291029 (= lt!143945 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!143941 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!291029 (= lt!143941 (toIndex!0 k!2524 mask!3809))))

(declare-fun b!291030 () Bool)

(declare-fun res!152408 () Bool)

(declare-fun e!184164 () Bool)

(assert (=> b!291030 (=> (not res!152408) (not e!184164))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!291030 (= res!152408 (validKeyInArray!0 k!2524))))

(declare-fun res!152412 () Bool)

(assert (=> start!28436 (=> (not res!152412) (not e!184164))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28436 (= res!152412 (validMask!0 mask!3809))))

(assert (=> start!28436 e!184164))

(assert (=> start!28436 true))

(declare-fun array_inv!4926 (array!14694) Bool)

(assert (=> start!28436 (array_inv!4926 a!3312)))

(declare-fun b!291031 () Bool)

(declare-fun e!184166 () Bool)

(assert (=> b!291031 (= e!184168 e!184166)))

(declare-fun res!152406 () Bool)

(assert (=> b!291031 (=> (not res!152406) (not e!184166))))

(declare-fun lt!143940 () Bool)

(assert (=> b!291031 (= res!152406 (and (or lt!143940 (not (undefined!2944 lt!143945))) (not lt!143940) (= (select (arr!6972 a!3312) (index!10700 lt!143945)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!291031 (= lt!143940 (not (is-Intermediate!2132 lt!143945)))))

(declare-fun b!291032 () Bool)

(declare-fun res!152405 () Bool)

(assert (=> b!291032 (=> (not res!152405) (not e!184164))))

(declare-fun arrayContainsKey!0 (array!14694 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!291032 (= res!152405 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!291033 () Bool)

(assert (=> b!291033 (= e!184166 (not true))))

(assert (=> b!291033 (= (index!10700 lt!143945) i!1256)))

(declare-fun b!291034 () Bool)

(assert (=> b!291034 (= e!184164 e!184167)))

(declare-fun res!152409 () Bool)

(assert (=> b!291034 (=> (not res!152409) (not e!184167))))

(assert (=> b!291034 (= res!152409 (or lt!143944 (= lt!143942 (MissingVacant!2132 i!1256))))))

(assert (=> b!291034 (= lt!143944 (= lt!143942 (MissingZero!2132 i!1256)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14694 (_ BitVec 32)) SeekEntryResult!2132)

(assert (=> b!291034 (= lt!143942 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!291035 () Bool)

(declare-fun res!152410 () Bool)

(assert (=> b!291035 (=> (not res!152410) (not e!184164))))

(assert (=> b!291035 (= res!152410 (and (= (size!7324 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7324 a!3312))))))

(declare-fun b!291036 () Bool)

(declare-fun res!152411 () Bool)

(assert (=> b!291036 (=> (not res!152411) (not e!184167))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14694 (_ BitVec 32)) Bool)

(assert (=> b!291036 (= res!152411 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(assert (= (and start!28436 res!152412) b!291035))

(assert (= (and b!291035 res!152410) b!291030))

(assert (= (and b!291030 res!152408) b!291032))

(assert (= (and b!291032 res!152405) b!291034))

(assert (= (and b!291034 res!152409) b!291036))

(assert (= (and b!291036 res!152411) b!291029))

(assert (= (and b!291029 res!152407) b!291031))

(assert (= (and b!291031 res!152406) b!291033))

(declare-fun m!305037 () Bool)

(assert (=> b!291030 m!305037))

(declare-fun m!305039 () Bool)

(assert (=> b!291036 m!305039))

(declare-fun m!305041 () Bool)

(assert (=> b!291031 m!305041))

(declare-fun m!305043 () Bool)

(assert (=> b!291029 m!305043))

(declare-fun m!305045 () Bool)

(assert (=> b!291029 m!305045))

(declare-fun m!305047 () Bool)

(assert (=> b!291029 m!305047))

(declare-fun m!305049 () Bool)

(assert (=> b!291029 m!305049))

(declare-fun m!305051 () Bool)

(assert (=> b!291034 m!305051))

(declare-fun m!305053 () Bool)

(assert (=> b!291032 m!305053))

(declare-fun m!305055 () Bool)

(assert (=> start!28436 m!305055))

(declare-fun m!305057 () Bool)

(assert (=> start!28436 m!305057))

(push 1)


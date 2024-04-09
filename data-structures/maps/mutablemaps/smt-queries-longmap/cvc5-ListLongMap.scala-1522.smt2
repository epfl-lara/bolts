; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!28672 () Bool)

(assert start!28672)

(declare-fun b!292939 () Bool)

(declare-fun e!185278 () Bool)

(assert (=> b!292939 (= e!185278 false)))

(declare-fun i!1256 () (_ BitVec 32))

(declare-fun lt!145228 () (_ BitVec 32))

(declare-datatypes ((array!14840 0))(
  ( (array!14841 (arr!7042 (Array (_ BitVec 32) (_ BitVec 64))) (size!7394 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14840)

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2202 0))(
  ( (MissingZero!2202 (index!10978 (_ BitVec 32))) (Found!2202 (index!10979 (_ BitVec 32))) (Intermediate!2202 (undefined!3014 Bool) (index!10980 (_ BitVec 32)) (x!29129 (_ BitVec 32))) (Undefined!2202) (MissingVacant!2202 (index!10981 (_ BitVec 32))) )
))
(declare-fun lt!145229 () SeekEntryResult!2202)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14840 (_ BitVec 32)) SeekEntryResult!2202)

(assert (=> b!292939 (= lt!145229 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!145228 k!2524 (array!14841 (store (arr!7042 a!3312) i!1256 k!2524) (size!7394 a!3312)) mask!3809))))

(declare-fun lt!145226 () SeekEntryResult!2202)

(assert (=> b!292939 (= lt!145226 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!145228 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!292939 (= lt!145228 (toIndex!0 k!2524 mask!3809))))

(declare-fun b!292940 () Bool)

(declare-fun res!154035 () Bool)

(assert (=> b!292940 (=> (not res!154035) (not e!185278))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14840 (_ BitVec 32)) Bool)

(assert (=> b!292940 (= res!154035 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!292942 () Bool)

(declare-fun res!154038 () Bool)

(declare-fun e!185276 () Bool)

(assert (=> b!292942 (=> (not res!154038) (not e!185276))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!292942 (= res!154038 (validKeyInArray!0 k!2524))))

(declare-fun b!292943 () Bool)

(assert (=> b!292943 (= e!185276 e!185278)))

(declare-fun res!154037 () Bool)

(assert (=> b!292943 (=> (not res!154037) (not e!185278))))

(declare-fun lt!145227 () SeekEntryResult!2202)

(assert (=> b!292943 (= res!154037 (or (= lt!145227 (MissingZero!2202 i!1256)) (= lt!145227 (MissingVacant!2202 i!1256))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14840 (_ BitVec 32)) SeekEntryResult!2202)

(assert (=> b!292943 (= lt!145227 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!292944 () Bool)

(declare-fun res!154033 () Bool)

(assert (=> b!292944 (=> (not res!154033) (not e!185276))))

(declare-fun arrayContainsKey!0 (array!14840 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!292944 (= res!154033 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!292941 () Bool)

(declare-fun res!154036 () Bool)

(assert (=> b!292941 (=> (not res!154036) (not e!185276))))

(assert (=> b!292941 (= res!154036 (and (= (size!7394 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7394 a!3312))))))

(declare-fun res!154034 () Bool)

(assert (=> start!28672 (=> (not res!154034) (not e!185276))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28672 (= res!154034 (validMask!0 mask!3809))))

(assert (=> start!28672 e!185276))

(assert (=> start!28672 true))

(declare-fun array_inv!4996 (array!14840) Bool)

(assert (=> start!28672 (array_inv!4996 a!3312)))

(assert (= (and start!28672 res!154034) b!292941))

(assert (= (and b!292941 res!154036) b!292942))

(assert (= (and b!292942 res!154038) b!292944))

(assert (= (and b!292944 res!154033) b!292943))

(assert (= (and b!292943 res!154037) b!292940))

(assert (= (and b!292940 res!154035) b!292939))

(declare-fun m!306775 () Bool)

(assert (=> b!292940 m!306775))

(declare-fun m!306777 () Bool)

(assert (=> b!292942 m!306777))

(declare-fun m!306779 () Bool)

(assert (=> b!292939 m!306779))

(declare-fun m!306781 () Bool)

(assert (=> b!292939 m!306781))

(declare-fun m!306783 () Bool)

(assert (=> b!292939 m!306783))

(declare-fun m!306785 () Bool)

(assert (=> b!292939 m!306785))

(declare-fun m!306787 () Bool)

(assert (=> b!292944 m!306787))

(declare-fun m!306789 () Bool)

(assert (=> start!28672 m!306789))

(declare-fun m!306791 () Bool)

(assert (=> start!28672 m!306791))

(declare-fun m!306793 () Bool)

(assert (=> b!292943 m!306793))

(push 1)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!28304 () Bool)

(assert start!28304)

(declare-fun b!289897 () Bool)

(declare-fun e!183494 () Bool)

(declare-fun e!183496 () Bool)

(assert (=> b!289897 (= e!183494 e!183496)))

(declare-fun res!151415 () Bool)

(assert (=> b!289897 (=> (not res!151415) (not e!183496))))

(declare-datatypes ((SeekEntryResult!2090 0))(
  ( (MissingZero!2090 (index!10530 (_ BitVec 32))) (Found!2090 (index!10531 (_ BitVec 32))) (Intermediate!2090 (undefined!2902 Bool) (index!10532 (_ BitVec 32)) (x!28695 (_ BitVec 32))) (Undefined!2090) (MissingVacant!2090 (index!10533 (_ BitVec 32))) )
))
(declare-fun lt!143183 () SeekEntryResult!2090)

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!289897 (= res!151415 (or (= lt!143183 (MissingZero!2090 i!1256)) (= lt!143183 (MissingVacant!2090 i!1256))))))

(declare-datatypes ((array!14607 0))(
  ( (array!14608 (arr!6930 (Array (_ BitVec 32) (_ BitVec 64))) (size!7282 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14607)

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14607 (_ BitVec 32)) SeekEntryResult!2090)

(assert (=> b!289897 (= lt!143183 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!289898 () Bool)

(declare-fun res!151419 () Bool)

(assert (=> b!289898 (=> (not res!151419) (not e!183494))))

(assert (=> b!289898 (= res!151419 (and (= (size!7282 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7282 a!3312))))))

(declare-fun b!289899 () Bool)

(declare-fun res!151416 () Bool)

(assert (=> b!289899 (=> (not res!151416) (not e!183494))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!289899 (= res!151416 (validKeyInArray!0 k!2524))))

(declare-fun b!289900 () Bool)

(declare-fun res!151417 () Bool)

(assert (=> b!289900 (=> (not res!151417) (not e!183496))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14607 (_ BitVec 32)) Bool)

(assert (=> b!289900 (= res!151417 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!289901 () Bool)

(assert (=> b!289901 (= e!183496 false)))

(declare-fun lt!143180 () (_ BitVec 32))

(declare-fun lt!143182 () SeekEntryResult!2090)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14607 (_ BitVec 32)) SeekEntryResult!2090)

(assert (=> b!289901 (= lt!143182 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!143180 k!2524 (array!14608 (store (arr!6930 a!3312) i!1256 k!2524) (size!7282 a!3312)) mask!3809))))

(declare-fun lt!143181 () SeekEntryResult!2090)

(assert (=> b!289901 (= lt!143181 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!143180 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!289901 (= lt!143180 (toIndex!0 k!2524 mask!3809))))

(declare-fun b!289902 () Bool)

(declare-fun res!151414 () Bool)

(assert (=> b!289902 (=> (not res!151414) (not e!183494))))

(declare-fun arrayContainsKey!0 (array!14607 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!289902 (= res!151414 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun res!151418 () Bool)

(assert (=> start!28304 (=> (not res!151418) (not e!183494))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28304 (= res!151418 (validMask!0 mask!3809))))

(assert (=> start!28304 e!183494))

(assert (=> start!28304 true))

(declare-fun array_inv!4884 (array!14607) Bool)

(assert (=> start!28304 (array_inv!4884 a!3312)))

(assert (= (and start!28304 res!151418) b!289898))

(assert (= (and b!289898 res!151419) b!289899))

(assert (= (and b!289899 res!151416) b!289902))

(assert (= (and b!289902 res!151414) b!289897))

(assert (= (and b!289897 res!151415) b!289900))

(assert (= (and b!289900 res!151417) b!289901))

(declare-fun m!304025 () Bool)

(assert (=> b!289900 m!304025))

(declare-fun m!304027 () Bool)

(assert (=> b!289901 m!304027))

(declare-fun m!304029 () Bool)

(assert (=> b!289901 m!304029))

(declare-fun m!304031 () Bool)

(assert (=> b!289901 m!304031))

(declare-fun m!304033 () Bool)

(assert (=> b!289901 m!304033))

(declare-fun m!304035 () Bool)

(assert (=> b!289899 m!304035))

(declare-fun m!304037 () Bool)

(assert (=> b!289897 m!304037))

(declare-fun m!304039 () Bool)

(assert (=> start!28304 m!304039))

(declare-fun m!304041 () Bool)

(assert (=> start!28304 m!304041))

(declare-fun m!304043 () Bool)

(assert (=> b!289902 m!304043))

(push 1)


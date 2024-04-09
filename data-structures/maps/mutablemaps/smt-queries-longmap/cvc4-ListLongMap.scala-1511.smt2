; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!28610 () Bool)

(assert start!28610)

(declare-fun b!292381 () Bool)

(declare-fun res!153479 () Bool)

(declare-fun e!184997 () Bool)

(assert (=> b!292381 (=> (not res!153479) (not e!184997))))

(declare-datatypes ((array!14778 0))(
  ( (array!14779 (arr!7011 (Array (_ BitVec 32) (_ BitVec 64))) (size!7363 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14778)

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!14778 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!292381 (= res!153479 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!292382 () Bool)

(declare-fun res!153478 () Bool)

(declare-fun e!184999 () Bool)

(assert (=> b!292382 (=> (not res!153478) (not e!184999))))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14778 (_ BitVec 32)) Bool)

(assert (=> b!292382 (= res!153478 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!292383 () Bool)

(assert (=> b!292383 (= e!184997 e!184999)))

(declare-fun res!153477 () Bool)

(assert (=> b!292383 (=> (not res!153477) (not e!184999))))

(declare-datatypes ((SeekEntryResult!2171 0))(
  ( (MissingZero!2171 (index!10854 (_ BitVec 32))) (Found!2171 (index!10855 (_ BitVec 32))) (Intermediate!2171 (undefined!2983 Bool) (index!10856 (_ BitVec 32)) (x!29010 (_ BitVec 32))) (Undefined!2171) (MissingVacant!2171 (index!10857 (_ BitVec 32))) )
))
(declare-fun lt!144856 () SeekEntryResult!2171)

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!292383 (= res!153477 (or (= lt!144856 (MissingZero!2171 i!1256)) (= lt!144856 (MissingVacant!2171 i!1256))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14778 (_ BitVec 32)) SeekEntryResult!2171)

(assert (=> b!292383 (= lt!144856 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!292384 () Bool)

(declare-fun res!153476 () Bool)

(assert (=> b!292384 (=> (not res!153476) (not e!184997))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!292384 (= res!153476 (validKeyInArray!0 k!2524))))

(declare-fun res!153480 () Bool)

(assert (=> start!28610 (=> (not res!153480) (not e!184997))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28610 (= res!153480 (validMask!0 mask!3809))))

(assert (=> start!28610 e!184997))

(assert (=> start!28610 true))

(declare-fun array_inv!4965 (array!14778) Bool)

(assert (=> start!28610 (array_inv!4965 a!3312)))

(declare-fun b!292385 () Bool)

(assert (=> b!292385 (= e!184999 false)))

(declare-fun lt!144855 () (_ BitVec 32))

(declare-fun lt!144854 () SeekEntryResult!2171)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14778 (_ BitVec 32)) SeekEntryResult!2171)

(assert (=> b!292385 (= lt!144854 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!144855 k!2524 (array!14779 (store (arr!7011 a!3312) i!1256 k!2524) (size!7363 a!3312)) mask!3809))))

(declare-fun lt!144857 () SeekEntryResult!2171)

(assert (=> b!292385 (= lt!144857 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!144855 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!292385 (= lt!144855 (toIndex!0 k!2524 mask!3809))))

(declare-fun b!292386 () Bool)

(declare-fun res!153475 () Bool)

(assert (=> b!292386 (=> (not res!153475) (not e!184997))))

(assert (=> b!292386 (= res!153475 (and (= (size!7363 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7363 a!3312))))))

(assert (= (and start!28610 res!153480) b!292386))

(assert (= (and b!292386 res!153475) b!292384))

(assert (= (and b!292384 res!153476) b!292381))

(assert (= (and b!292381 res!153479) b!292383))

(assert (= (and b!292383 res!153477) b!292382))

(assert (= (and b!292382 res!153478) b!292385))

(declare-fun m!306155 () Bool)

(assert (=> start!28610 m!306155))

(declare-fun m!306157 () Bool)

(assert (=> start!28610 m!306157))

(declare-fun m!306159 () Bool)

(assert (=> b!292381 m!306159))

(declare-fun m!306161 () Bool)

(assert (=> b!292382 m!306161))

(declare-fun m!306163 () Bool)

(assert (=> b!292384 m!306163))

(declare-fun m!306165 () Bool)

(assert (=> b!292383 m!306165))

(declare-fun m!306167 () Bool)

(assert (=> b!292385 m!306167))

(declare-fun m!306169 () Bool)

(assert (=> b!292385 m!306169))

(declare-fun m!306171 () Bool)

(assert (=> b!292385 m!306171))

(declare-fun m!306173 () Bool)

(assert (=> b!292385 m!306173))

(push 1)

(assert (not start!28610))

(assert (not b!292381))


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!28678 () Bool)

(assert start!28678)

(declare-fun b!292993 () Bool)

(declare-fun res!154092 () Bool)

(declare-fun e!185305 () Bool)

(assert (=> b!292993 (=> (not res!154092) (not e!185305))))

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!292993 (= res!154092 (validKeyInArray!0 k!2524))))

(declare-fun b!292994 () Bool)

(declare-fun res!154087 () Bool)

(assert (=> b!292994 (=> (not res!154087) (not e!185305))))

(declare-datatypes ((array!14846 0))(
  ( (array!14847 (arr!7045 (Array (_ BitVec 32) (_ BitVec 64))) (size!7397 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14846)

(declare-fun arrayContainsKey!0 (array!14846 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!292994 (= res!154087 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!292995 () Bool)

(declare-fun e!185303 () Bool)

(assert (=> b!292995 (= e!185303 false)))

(declare-fun i!1256 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2205 0))(
  ( (MissingZero!2205 (index!10990 (_ BitVec 32))) (Found!2205 (index!10991 (_ BitVec 32))) (Intermediate!2205 (undefined!3017 Bool) (index!10992 (_ BitVec 32)) (x!29140 (_ BitVec 32))) (Undefined!2205) (MissingVacant!2205 (index!10993 (_ BitVec 32))) )
))
(declare-fun lt!145265 () SeekEntryResult!2205)

(declare-fun lt!145264 () (_ BitVec 32))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14846 (_ BitVec 32)) SeekEntryResult!2205)

(assert (=> b!292995 (= lt!145265 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!145264 k!2524 (array!14847 (store (arr!7045 a!3312) i!1256 k!2524) (size!7397 a!3312)) mask!3809))))

(declare-fun lt!145262 () SeekEntryResult!2205)

(assert (=> b!292995 (= lt!145262 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!145264 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!292995 (= lt!145264 (toIndex!0 k!2524 mask!3809))))

(declare-fun b!292996 () Bool)

(declare-fun res!154091 () Bool)

(assert (=> b!292996 (=> (not res!154091) (not e!185305))))

(assert (=> b!292996 (= res!154091 (and (= (size!7397 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7397 a!3312))))))

(declare-fun b!292997 () Bool)

(declare-fun res!154088 () Bool)

(assert (=> b!292997 (=> (not res!154088) (not e!185303))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14846 (_ BitVec 32)) Bool)

(assert (=> b!292997 (= res!154088 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun res!154090 () Bool)

(assert (=> start!28678 (=> (not res!154090) (not e!185305))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28678 (= res!154090 (validMask!0 mask!3809))))

(assert (=> start!28678 e!185305))

(assert (=> start!28678 true))

(declare-fun array_inv!4999 (array!14846) Bool)

(assert (=> start!28678 (array_inv!4999 a!3312)))

(declare-fun b!292998 () Bool)

(assert (=> b!292998 (= e!185305 e!185303)))

(declare-fun res!154089 () Bool)

(assert (=> b!292998 (=> (not res!154089) (not e!185303))))

(declare-fun lt!145263 () SeekEntryResult!2205)

(assert (=> b!292998 (= res!154089 (or (= lt!145263 (MissingZero!2205 i!1256)) (= lt!145263 (MissingVacant!2205 i!1256))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14846 (_ BitVec 32)) SeekEntryResult!2205)

(assert (=> b!292998 (= lt!145263 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(assert (= (and start!28678 res!154090) b!292996))

(assert (= (and b!292996 res!154091) b!292993))

(assert (= (and b!292993 res!154092) b!292994))

(assert (= (and b!292994 res!154087) b!292998))

(assert (= (and b!292998 res!154089) b!292997))

(assert (= (and b!292997 res!154088) b!292995))

(declare-fun m!306835 () Bool)

(assert (=> b!292994 m!306835))

(declare-fun m!306837 () Bool)

(assert (=> b!292995 m!306837))

(declare-fun m!306839 () Bool)

(assert (=> b!292995 m!306839))

(declare-fun m!306841 () Bool)

(assert (=> b!292995 m!306841))

(declare-fun m!306843 () Bool)

(assert (=> b!292995 m!306843))

(declare-fun m!306845 () Bool)

(assert (=> b!292997 m!306845))

(declare-fun m!306847 () Bool)

(assert (=> b!292993 m!306847))

(declare-fun m!306849 () Bool)

(assert (=> start!28678 m!306849))

(declare-fun m!306851 () Bool)

(assert (=> start!28678 m!306851))

(declare-fun m!306853 () Bool)

(assert (=> b!292998 m!306853))

(push 1)


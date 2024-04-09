; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!28460 () Bool)

(assert start!28460)

(declare-fun b!291317 () Bool)

(declare-fun res!152700 () Bool)

(declare-fun e!184344 () Bool)

(assert (=> b!291317 (=> (not res!152700) (not e!184344))))

(declare-datatypes ((array!14718 0))(
  ( (array!14719 (arr!6984 (Array (_ BitVec 32) (_ BitVec 64))) (size!7336 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14718)

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14718 (_ BitVec 32)) Bool)

(assert (=> b!291317 (= res!152700 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!291318 () Bool)

(declare-fun e!184348 () Bool)

(assert (=> b!291318 (= e!184348 (not true))))

(declare-datatypes ((SeekEntryResult!2144 0))(
  ( (MissingZero!2144 (index!10746 (_ BitVec 32))) (Found!2144 (index!10747 (_ BitVec 32))) (Intermediate!2144 (undefined!2956 Bool) (index!10748 (_ BitVec 32)) (x!28899 (_ BitVec 32))) (Undefined!2144) (MissingVacant!2144 (index!10749 (_ BitVec 32))) )
))
(declare-fun lt!144159 () SeekEntryResult!2144)

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!291318 (= (index!10748 lt!144159) i!1256)))

(declare-fun b!291319 () Bool)

(declare-fun e!184346 () Bool)

(assert (=> b!291319 (= e!184344 e!184346)))

(declare-fun res!152693 () Bool)

(assert (=> b!291319 (=> (not res!152693) (not e!184346))))

(declare-fun lt!144156 () Bool)

(declare-fun lt!144158 () SeekEntryResult!2144)

(assert (=> b!291319 (= res!152693 (and (not lt!144156) (= lt!144158 (MissingVacant!2144 i!1256))))))

(declare-fun lt!144160 () SeekEntryResult!2144)

(declare-fun lt!144161 () (_ BitVec 32))

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14718 (_ BitVec 32)) SeekEntryResult!2144)

(assert (=> b!291319 (= lt!144160 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!144161 k!2524 (array!14719 (store (arr!6984 a!3312) i!1256 k!2524) (size!7336 a!3312)) mask!3809))))

(assert (=> b!291319 (= lt!144159 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!144161 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!291319 (= lt!144161 (toIndex!0 k!2524 mask!3809))))

(declare-fun b!291320 () Bool)

(assert (=> b!291320 (= e!184346 e!184348)))

(declare-fun res!152697 () Bool)

(assert (=> b!291320 (=> (not res!152697) (not e!184348))))

(declare-fun lt!144157 () Bool)

(assert (=> b!291320 (= res!152697 (and (or lt!144157 (not (undefined!2956 lt!144159))) (not lt!144157) (= (select (arr!6984 a!3312) (index!10748 lt!144159)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!291320 (= lt!144157 (not (is-Intermediate!2144 lt!144159)))))

(declare-fun res!152695 () Bool)

(declare-fun e!184345 () Bool)

(assert (=> start!28460 (=> (not res!152695) (not e!184345))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28460 (= res!152695 (validMask!0 mask!3809))))

(assert (=> start!28460 e!184345))

(assert (=> start!28460 true))

(declare-fun array_inv!4938 (array!14718) Bool)

(assert (=> start!28460 (array_inv!4938 a!3312)))

(declare-fun b!291321 () Bool)

(declare-fun res!152694 () Bool)

(assert (=> b!291321 (=> (not res!152694) (not e!184345))))

(assert (=> b!291321 (= res!152694 (and (= (size!7336 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7336 a!3312))))))

(declare-fun b!291322 () Bool)

(assert (=> b!291322 (= e!184345 e!184344)))

(declare-fun res!152698 () Bool)

(assert (=> b!291322 (=> (not res!152698) (not e!184344))))

(assert (=> b!291322 (= res!152698 (or lt!144156 (= lt!144158 (MissingVacant!2144 i!1256))))))

(assert (=> b!291322 (= lt!144156 (= lt!144158 (MissingZero!2144 i!1256)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14718 (_ BitVec 32)) SeekEntryResult!2144)

(assert (=> b!291322 (= lt!144158 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!291323 () Bool)

(declare-fun res!152696 () Bool)

(assert (=> b!291323 (=> (not res!152696) (not e!184345))))

(declare-fun arrayContainsKey!0 (array!14718 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!291323 (= res!152696 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!291324 () Bool)

(declare-fun res!152699 () Bool)

(assert (=> b!291324 (=> (not res!152699) (not e!184345))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!291324 (= res!152699 (validKeyInArray!0 k!2524))))

(assert (= (and start!28460 res!152695) b!291321))

(assert (= (and b!291321 res!152694) b!291324))

(assert (= (and b!291324 res!152699) b!291323))

(assert (= (and b!291323 res!152696) b!291322))

(assert (= (and b!291322 res!152698) b!291317))

(assert (= (and b!291317 res!152700) b!291319))

(assert (= (and b!291319 res!152693) b!291320))

(assert (= (and b!291320 res!152697) b!291318))

(declare-fun m!305301 () Bool)

(assert (=> b!291317 m!305301))

(declare-fun m!305303 () Bool)

(assert (=> b!291324 m!305303))

(declare-fun m!305305 () Bool)

(assert (=> b!291322 m!305305))

(declare-fun m!305307 () Bool)

(assert (=> b!291323 m!305307))

(declare-fun m!305309 () Bool)

(assert (=> b!291319 m!305309))

(declare-fun m!305311 () Bool)

(assert (=> b!291319 m!305311))

(declare-fun m!305313 () Bool)

(assert (=> b!291319 m!305313))

(declare-fun m!305315 () Bool)

(assert (=> b!291319 m!305315))

(declare-fun m!305317 () Bool)

(assert (=> start!28460 m!305317))

(declare-fun m!305319 () Bool)

(assert (=> start!28460 m!305319))

(declare-fun m!305321 () Bool)

(assert (=> b!291320 m!305321))

(push 1)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!28588 () Bool)

(assert start!28588)

(declare-fun b!292133 () Bool)

(declare-fun res!153229 () Bool)

(declare-fun e!184851 () Bool)

(assert (=> b!292133 (=> (not res!153229) (not e!184851))))

(declare-datatypes ((array!14756 0))(
  ( (array!14757 (arr!7000 (Array (_ BitVec 32) (_ BitVec 64))) (size!7352 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14756)

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!14756 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!292133 (= res!153229 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!292134 () Bool)

(declare-fun e!184852 () Bool)

(declare-fun mask!3809 () (_ BitVec 32))

(assert (=> b!292134 (= e!184852 (not (bvsge mask!3809 #b00000000000000000000000000000000)))))

(declare-fun lt!144652 () (_ BitVec 32))

(declare-fun i!1256 () (_ BitVec 32))

(declare-datatypes ((Unit!9151 0))(
  ( (Unit!9152) )
))
(declare-fun lt!144650 () Unit!9151)

(declare-datatypes ((SeekEntryResult!2160 0))(
  ( (MissingZero!2160 (index!10810 (_ BitVec 32))) (Found!2160 (index!10811 (_ BitVec 32))) (Intermediate!2160 (undefined!2972 Bool) (index!10812 (_ BitVec 32)) (x!28975 (_ BitVec 32))) (Undefined!2160) (MissingVacant!2160 (index!10813 (_ BitVec 32))) )
))
(declare-fun lt!144648 () SeekEntryResult!2160)

(declare-fun lemmaPutValidKeyAtRightPlaceThenFindsHelper2!0 (array!14756 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!9151)

(assert (=> b!292134 (= lt!144650 (lemmaPutValidKeyAtRightPlaceThenFindsHelper2!0 a!3312 i!1256 k!2524 #b00000000000000000000000000000000 lt!144652 (index!10812 lt!144648) (x!28975 lt!144648) mask!3809))))

(assert (=> b!292134 (= (index!10812 lt!144648) i!1256)))

(declare-fun b!292135 () Bool)

(declare-fun res!153231 () Bool)

(declare-fun e!184850 () Bool)

(assert (=> b!292135 (=> (not res!153231) (not e!184850))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14756 (_ BitVec 32)) Bool)

(assert (=> b!292135 (= res!153231 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!292136 () Bool)

(declare-fun e!184849 () Bool)

(assert (=> b!292136 (= e!184850 e!184849)))

(declare-fun res!153228 () Bool)

(assert (=> b!292136 (=> (not res!153228) (not e!184849))))

(declare-fun lt!144649 () Bool)

(declare-fun lt!144647 () SeekEntryResult!2160)

(assert (=> b!292136 (= res!153228 (and (not lt!144649) (= lt!144647 (MissingVacant!2160 i!1256))))))

(declare-fun lt!144651 () SeekEntryResult!2160)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14756 (_ BitVec 32)) SeekEntryResult!2160)

(assert (=> b!292136 (= lt!144651 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!144652 k!2524 (array!14757 (store (arr!7000 a!3312) i!1256 k!2524) (size!7352 a!3312)) mask!3809))))

(assert (=> b!292136 (= lt!144648 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!144652 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!292136 (= lt!144652 (toIndex!0 k!2524 mask!3809))))

(declare-fun b!292137 () Bool)

(assert (=> b!292137 (= e!184851 e!184850)))

(declare-fun res!153227 () Bool)

(assert (=> b!292137 (=> (not res!153227) (not e!184850))))

(assert (=> b!292137 (= res!153227 (or lt!144649 (= lt!144647 (MissingVacant!2160 i!1256))))))

(assert (=> b!292137 (= lt!144649 (= lt!144647 (MissingZero!2160 i!1256)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14756 (_ BitVec 32)) SeekEntryResult!2160)

(assert (=> b!292137 (= lt!144647 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!292138 () Bool)

(declare-fun res!153234 () Bool)

(assert (=> b!292138 (=> (not res!153234) (not e!184851))))

(assert (=> b!292138 (= res!153234 (and (= (size!7352 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7352 a!3312))))))

(declare-fun b!292139 () Bool)

(assert (=> b!292139 (= e!184849 e!184852)))

(declare-fun res!153232 () Bool)

(assert (=> b!292139 (=> (not res!153232) (not e!184852))))

(declare-fun lt!144653 () Bool)

(assert (=> b!292139 (= res!153232 (and (or lt!144653 (not (undefined!2972 lt!144648))) (not lt!144653) (= (select (arr!7000 a!3312) (index!10812 lt!144648)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!292139 (= lt!144653 (not (is-Intermediate!2160 lt!144648)))))

(declare-fun b!292140 () Bool)

(declare-fun res!153233 () Bool)

(assert (=> b!292140 (=> (not res!153233) (not e!184851))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!292140 (= res!153233 (validKeyInArray!0 k!2524))))

(declare-fun res!153230 () Bool)

(assert (=> start!28588 (=> (not res!153230) (not e!184851))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28588 (= res!153230 (validMask!0 mask!3809))))

(assert (=> start!28588 e!184851))

(assert (=> start!28588 true))

(declare-fun array_inv!4954 (array!14756) Bool)

(assert (=> start!28588 (array_inv!4954 a!3312)))

(assert (= (and start!28588 res!153230) b!292138))

(assert (= (and b!292138 res!153234) b!292140))

(assert (= (and b!292140 res!153233) b!292133))

(assert (= (and b!292133 res!153229) b!292137))

(assert (= (and b!292137 res!153227) b!292135))

(assert (= (and b!292135 res!153231) b!292136))

(assert (= (and b!292136 res!153228) b!292139))

(assert (= (and b!292139 res!153232) b!292134))

(declare-fun m!305899 () Bool)

(assert (=> b!292135 m!305899))

(declare-fun m!305901 () Bool)

(assert (=> b!292137 m!305901))

(declare-fun m!305903 () Bool)

(assert (=> b!292139 m!305903))

(declare-fun m!305905 () Bool)

(assert (=> b!292140 m!305905))

(declare-fun m!305907 () Bool)

(assert (=> b!292136 m!305907))

(declare-fun m!305909 () Bool)

(assert (=> b!292136 m!305909))

(declare-fun m!305911 () Bool)

(assert (=> b!292136 m!305911))

(declare-fun m!305913 () Bool)

(assert (=> b!292136 m!305913))

(declare-fun m!305915 () Bool)

(assert (=> b!292134 m!305915))

(declare-fun m!305917 () Bool)

(assert (=> b!292133 m!305917))

(declare-fun m!305919 () Bool)

(assert (=> start!28588 m!305919))

(declare-fun m!305921 () Bool)

(assert (=> start!28588 m!305921))

(push 1)

(assert (not b!292135))


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!28426 () Bool)

(assert start!28426)

(declare-fun b!290909 () Bool)

(declare-fun res!152289 () Bool)

(declare-fun e!184089 () Bool)

(assert (=> b!290909 (=> (not res!152289) (not e!184089))))

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!290909 (= res!152289 (validKeyInArray!0 k!2524))))

(declare-fun res!152286 () Bool)

(assert (=> start!28426 (=> (not res!152286) (not e!184089))))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28426 (= res!152286 (validMask!0 mask!3809))))

(assert (=> start!28426 e!184089))

(assert (=> start!28426 true))

(declare-datatypes ((array!14684 0))(
  ( (array!14685 (arr!6967 (Array (_ BitVec 32) (_ BitVec 64))) (size!7319 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14684)

(declare-fun array_inv!4921 (array!14684) Bool)

(assert (=> start!28426 (array_inv!4921 a!3312)))

(declare-fun b!290910 () Bool)

(declare-fun e!184093 () Bool)

(assert (=> b!290910 (= e!184089 e!184093)))

(declare-fun res!152288 () Bool)

(assert (=> b!290910 (=> (not res!152288) (not e!184093))))

(declare-datatypes ((SeekEntryResult!2127 0))(
  ( (MissingZero!2127 (index!10678 (_ BitVec 32))) (Found!2127 (index!10679 (_ BitVec 32))) (Intermediate!2127 (undefined!2939 Bool) (index!10680 (_ BitVec 32)) (x!28842 (_ BitVec 32))) (Undefined!2127) (MissingVacant!2127 (index!10681 (_ BitVec 32))) )
))
(declare-fun lt!143852 () SeekEntryResult!2127)

(declare-fun i!1256 () (_ BitVec 32))

(declare-fun lt!143851 () Bool)

(assert (=> b!290910 (= res!152288 (or lt!143851 (= lt!143852 (MissingVacant!2127 i!1256))))))

(assert (=> b!290910 (= lt!143851 (= lt!143852 (MissingZero!2127 i!1256)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14684 (_ BitVec 32)) SeekEntryResult!2127)

(assert (=> b!290910 (= lt!143852 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!290911 () Bool)

(declare-fun e!184092 () Bool)

(declare-fun e!184090 () Bool)

(assert (=> b!290911 (= e!184092 e!184090)))

(declare-fun res!152292 () Bool)

(assert (=> b!290911 (=> (not res!152292) (not e!184090))))

(declare-fun lt!143855 () Bool)

(declare-fun lt!143854 () SeekEntryResult!2127)

(assert (=> b!290911 (= res!152292 (and (or lt!143855 (not (undefined!2939 lt!143854))) (not lt!143855) (= (select (arr!6967 a!3312) (index!10680 lt!143854)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!290911 (= lt!143855 (not (is-Intermediate!2127 lt!143854)))))

(declare-fun b!290912 () Bool)

(assert (=> b!290912 (= e!184090 (not true))))

(assert (=> b!290912 (= (index!10680 lt!143854) i!1256)))

(declare-fun b!290913 () Bool)

(assert (=> b!290913 (= e!184093 e!184092)))

(declare-fun res!152285 () Bool)

(assert (=> b!290913 (=> (not res!152285) (not e!184092))))

(assert (=> b!290913 (= res!152285 (and (not lt!143851) (= lt!143852 (MissingVacant!2127 i!1256))))))

(declare-fun lt!143853 () (_ BitVec 32))

(declare-fun lt!143850 () SeekEntryResult!2127)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14684 (_ BitVec 32)) SeekEntryResult!2127)

(assert (=> b!290913 (= lt!143850 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!143853 k!2524 (array!14685 (store (arr!6967 a!3312) i!1256 k!2524) (size!7319 a!3312)) mask!3809))))

(assert (=> b!290913 (= lt!143854 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!143853 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!290913 (= lt!143853 (toIndex!0 k!2524 mask!3809))))

(declare-fun b!290914 () Bool)

(declare-fun res!152287 () Bool)

(assert (=> b!290914 (=> (not res!152287) (not e!184089))))

(assert (=> b!290914 (= res!152287 (and (= (size!7319 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7319 a!3312))))))

(declare-fun b!290915 () Bool)

(declare-fun res!152290 () Bool)

(assert (=> b!290915 (=> (not res!152290) (not e!184093))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14684 (_ BitVec 32)) Bool)

(assert (=> b!290915 (= res!152290 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!290916 () Bool)

(declare-fun res!152291 () Bool)

(assert (=> b!290916 (=> (not res!152291) (not e!184089))))

(declare-fun arrayContainsKey!0 (array!14684 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!290916 (= res!152291 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(assert (= (and start!28426 res!152286) b!290914))

(assert (= (and b!290914 res!152287) b!290909))

(assert (= (and b!290909 res!152289) b!290916))

(assert (= (and b!290916 res!152291) b!290910))

(assert (= (and b!290910 res!152288) b!290915))

(assert (= (and b!290915 res!152290) b!290913))

(assert (= (and b!290913 res!152285) b!290911))

(assert (= (and b!290911 res!152292) b!290912))

(declare-fun m!304927 () Bool)

(assert (=> b!290915 m!304927))

(declare-fun m!304929 () Bool)

(assert (=> b!290909 m!304929))

(declare-fun m!304931 () Bool)

(assert (=> start!28426 m!304931))

(declare-fun m!304933 () Bool)

(assert (=> start!28426 m!304933))

(declare-fun m!304935 () Bool)

(assert (=> b!290911 m!304935))

(declare-fun m!304937 () Bool)

(assert (=> b!290910 m!304937))

(declare-fun m!304939 () Bool)

(assert (=> b!290916 m!304939))

(declare-fun m!304941 () Bool)

(assert (=> b!290913 m!304941))

(declare-fun m!304943 () Bool)

(assert (=> b!290913 m!304943))

(declare-fun m!304945 () Bool)

(assert (=> b!290913 m!304945))

(declare-fun m!304947 () Bool)

(assert (=> b!290913 m!304947))

(push 1)


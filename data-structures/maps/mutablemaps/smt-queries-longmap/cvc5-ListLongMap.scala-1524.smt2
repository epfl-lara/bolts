; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!28684 () Bool)

(assert start!28684)

(declare-fun b!293047 () Bool)

(declare-fun res!154144 () Bool)

(declare-fun e!185330 () Bool)

(assert (=> b!293047 (=> (not res!154144) (not e!185330))))

(declare-datatypes ((array!14852 0))(
  ( (array!14853 (arr!7048 (Array (_ BitVec 32) (_ BitVec 64))) (size!7400 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14852)

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14852 (_ BitVec 32)) Bool)

(assert (=> b!293047 (= res!154144 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!293048 () Bool)

(declare-fun e!185331 () Bool)

(assert (=> b!293048 (= e!185331 e!185330)))

(declare-fun res!154145 () Bool)

(assert (=> b!293048 (=> (not res!154145) (not e!185330))))

(declare-datatypes ((SeekEntryResult!2208 0))(
  ( (MissingZero!2208 (index!11002 (_ BitVec 32))) (Found!2208 (index!11003 (_ BitVec 32))) (Intermediate!2208 (undefined!3020 Bool) (index!11004 (_ BitVec 32)) (x!29151 (_ BitVec 32))) (Undefined!2208) (MissingVacant!2208 (index!11005 (_ BitVec 32))) )
))
(declare-fun lt!145295 () SeekEntryResult!2208)

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!293048 (= res!154145 (or (= lt!145295 (MissingZero!2208 i!1256)) (= lt!145295 (MissingVacant!2208 i!1256))))))

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14852 (_ BitVec 32)) SeekEntryResult!2208)

(assert (=> b!293048 (= lt!145295 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!293049 () Bool)

(assert (=> b!293049 (= e!185330 false)))

(declare-fun lt!145294 () SeekEntryResult!2208)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14852 (_ BitVec 32)) SeekEntryResult!2208)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!293049 (= lt!145294 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2524 mask!3809) k!2524 a!3312 mask!3809))))

(declare-fun res!154146 () Bool)

(assert (=> start!28684 (=> (not res!154146) (not e!185331))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28684 (= res!154146 (validMask!0 mask!3809))))

(assert (=> start!28684 e!185331))

(assert (=> start!28684 true))

(declare-fun array_inv!5002 (array!14852) Bool)

(assert (=> start!28684 (array_inv!5002 a!3312)))

(declare-fun b!293050 () Bool)

(declare-fun res!154142 () Bool)

(assert (=> b!293050 (=> (not res!154142) (not e!185331))))

(assert (=> b!293050 (= res!154142 (and (= (size!7400 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7400 a!3312))))))

(declare-fun b!293051 () Bool)

(declare-fun res!154143 () Bool)

(assert (=> b!293051 (=> (not res!154143) (not e!185331))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!293051 (= res!154143 (validKeyInArray!0 k!2524))))

(declare-fun b!293052 () Bool)

(declare-fun res!154141 () Bool)

(assert (=> b!293052 (=> (not res!154141) (not e!185331))))

(declare-fun arrayContainsKey!0 (array!14852 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!293052 (= res!154141 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(assert (= (and start!28684 res!154146) b!293050))

(assert (= (and b!293050 res!154142) b!293051))

(assert (= (and b!293051 res!154143) b!293052))

(assert (= (and b!293052 res!154141) b!293048))

(assert (= (and b!293048 res!154145) b!293047))

(assert (= (and b!293047 res!154144) b!293049))

(declare-fun m!306895 () Bool)

(assert (=> b!293048 m!306895))

(declare-fun m!306897 () Bool)

(assert (=> b!293049 m!306897))

(assert (=> b!293049 m!306897))

(declare-fun m!306899 () Bool)

(assert (=> b!293049 m!306899))

(declare-fun m!306901 () Bool)

(assert (=> start!28684 m!306901))

(declare-fun m!306903 () Bool)

(assert (=> start!28684 m!306903))

(declare-fun m!306905 () Bool)

(assert (=> b!293052 m!306905))

(declare-fun m!306907 () Bool)

(assert (=> b!293051 m!306907))

(declare-fun m!306909 () Bool)

(assert (=> b!293047 m!306909))

(push 1)

(assert (not b!293048))


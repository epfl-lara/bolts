; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!28446 () Bool)

(assert start!28446)

(declare-fun b!291149 () Bool)

(declare-fun res!152525 () Bool)

(declare-fun e!184242 () Bool)

(assert (=> b!291149 (=> (not res!152525) (not e!184242))))

(declare-fun i!1256 () (_ BitVec 32))

(declare-datatypes ((array!14704 0))(
  ( (array!14705 (arr!6977 (Array (_ BitVec 32) (_ BitVec 64))) (size!7329 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14704)

(declare-fun mask!3809 () (_ BitVec 32))

(assert (=> b!291149 (= res!152525 (and (= (size!7329 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7329 a!3312))))))

(declare-fun b!291150 () Bool)

(declare-fun res!152530 () Bool)

(declare-fun e!184241 () Bool)

(assert (=> b!291150 (=> (not res!152530) (not e!184241))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14704 (_ BitVec 32)) Bool)

(assert (=> b!291150 (= res!152530 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!291151 () Bool)

(declare-fun e!184243 () Bool)

(declare-fun e!184240 () Bool)

(assert (=> b!291151 (= e!184243 e!184240)))

(declare-fun res!152532 () Bool)

(assert (=> b!291151 (=> (not res!152532) (not e!184240))))

(declare-fun lt!144033 () Bool)

(declare-datatypes ((SeekEntryResult!2137 0))(
  ( (MissingZero!2137 (index!10718 (_ BitVec 32))) (Found!2137 (index!10719 (_ BitVec 32))) (Intermediate!2137 (undefined!2949 Bool) (index!10720 (_ BitVec 32)) (x!28876 (_ BitVec 32))) (Undefined!2137) (MissingVacant!2137 (index!10721 (_ BitVec 32))) )
))
(declare-fun lt!144035 () SeekEntryResult!2137)

(assert (=> b!291151 (= res!152532 (and (or lt!144033 (not (undefined!2949 lt!144035))) (not lt!144033) (= (select (arr!6977 a!3312) (index!10720 lt!144035)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(get-info :version)

(assert (=> b!291151 (= lt!144033 (not ((_ is Intermediate!2137) lt!144035)))))

(declare-fun b!291152 () Bool)

(assert (=> b!291152 (= e!184241 e!184243)))

(declare-fun res!152526 () Bool)

(assert (=> b!291152 (=> (not res!152526) (not e!184243))))

(declare-fun lt!144031 () SeekEntryResult!2137)

(declare-fun lt!144030 () Bool)

(assert (=> b!291152 (= res!152526 (and (not lt!144030) (= lt!144031 (MissingVacant!2137 i!1256))))))

(declare-fun lt!144034 () (_ BitVec 32))

(declare-fun lt!144032 () SeekEntryResult!2137)

(declare-fun k0!2524 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14704 (_ BitVec 32)) SeekEntryResult!2137)

(assert (=> b!291152 (= lt!144032 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!144034 k0!2524 (array!14705 (store (arr!6977 a!3312) i!1256 k0!2524) (size!7329 a!3312)) mask!3809))))

(assert (=> b!291152 (= lt!144035 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!144034 k0!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!291152 (= lt!144034 (toIndex!0 k0!2524 mask!3809))))

(declare-fun res!152529 () Bool)

(assert (=> start!28446 (=> (not res!152529) (not e!184242))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28446 (= res!152529 (validMask!0 mask!3809))))

(assert (=> start!28446 e!184242))

(assert (=> start!28446 true))

(declare-fun array_inv!4931 (array!14704) Bool)

(assert (=> start!28446 (array_inv!4931 a!3312)))

(declare-fun b!291153 () Bool)

(assert (=> b!291153 (= e!184242 e!184241)))

(declare-fun res!152528 () Bool)

(assert (=> b!291153 (=> (not res!152528) (not e!184241))))

(assert (=> b!291153 (= res!152528 (or lt!144030 (= lt!144031 (MissingVacant!2137 i!1256))))))

(assert (=> b!291153 (= lt!144030 (= lt!144031 (MissingZero!2137 i!1256)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14704 (_ BitVec 32)) SeekEntryResult!2137)

(assert (=> b!291153 (= lt!144031 (seekEntryOrOpen!0 k0!2524 a!3312 mask!3809))))

(declare-fun b!291154 () Bool)

(assert (=> b!291154 (= e!184240 (not (= lt!144035 (Intermediate!2137 false (index!10720 lt!144035) (x!28876 lt!144035)))))))

(assert (=> b!291154 (= (index!10720 lt!144035) i!1256)))

(declare-fun b!291155 () Bool)

(declare-fun res!152527 () Bool)

(assert (=> b!291155 (=> (not res!152527) (not e!184242))))

(declare-fun arrayContainsKey!0 (array!14704 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!291155 (= res!152527 (not (arrayContainsKey!0 a!3312 k0!2524 #b00000000000000000000000000000000)))))

(declare-fun b!291156 () Bool)

(declare-fun res!152531 () Bool)

(assert (=> b!291156 (=> (not res!152531) (not e!184242))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!291156 (= res!152531 (validKeyInArray!0 k0!2524))))

(assert (= (and start!28446 res!152529) b!291149))

(assert (= (and b!291149 res!152525) b!291156))

(assert (= (and b!291156 res!152531) b!291155))

(assert (= (and b!291155 res!152527) b!291153))

(assert (= (and b!291153 res!152528) b!291150))

(assert (= (and b!291150 res!152530) b!291152))

(assert (= (and b!291152 res!152526) b!291151))

(assert (= (and b!291151 res!152532) b!291154))

(declare-fun m!305147 () Bool)

(assert (=> b!291153 m!305147))

(declare-fun m!305149 () Bool)

(assert (=> b!291152 m!305149))

(declare-fun m!305151 () Bool)

(assert (=> b!291152 m!305151))

(declare-fun m!305153 () Bool)

(assert (=> b!291152 m!305153))

(declare-fun m!305155 () Bool)

(assert (=> b!291152 m!305155))

(declare-fun m!305157 () Bool)

(assert (=> b!291156 m!305157))

(declare-fun m!305159 () Bool)

(assert (=> b!291155 m!305159))

(declare-fun m!305161 () Bool)

(assert (=> b!291150 m!305161))

(declare-fun m!305163 () Bool)

(assert (=> b!291151 m!305163))

(declare-fun m!305165 () Bool)

(assert (=> start!28446 m!305165))

(declare-fun m!305167 () Bool)

(assert (=> start!28446 m!305167))

(check-sat (not b!291155) (not b!291152) (not b!291153) (not b!291156) (not start!28446) (not b!291150))
(check-sat)

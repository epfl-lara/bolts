; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!28430 () Bool)

(assert start!28430)

(declare-fun b!290957 () Bool)

(declare-fun res!152337 () Bool)

(declare-fun e!184123 () Bool)

(assert (=> b!290957 (=> (not res!152337) (not e!184123))))

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!290957 (= res!152337 (validKeyInArray!0 k!2524))))

(declare-fun b!290958 () Bool)

(declare-fun e!184120 () Bool)

(assert (=> b!290958 (= e!184120 (not true))))

(declare-datatypes ((SeekEntryResult!2129 0))(
  ( (MissingZero!2129 (index!10686 (_ BitVec 32))) (Found!2129 (index!10687 (_ BitVec 32))) (Intermediate!2129 (undefined!2941 Bool) (index!10688 (_ BitVec 32)) (x!28844 (_ BitVec 32))) (Undefined!2129) (MissingVacant!2129 (index!10689 (_ BitVec 32))) )
))
(declare-fun lt!143889 () SeekEntryResult!2129)

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!290958 (= (index!10688 lt!143889) i!1256)))

(declare-fun b!290959 () Bool)

(declare-fun res!152338 () Bool)

(assert (=> b!290959 (=> (not res!152338) (not e!184123))))

(declare-datatypes ((array!14688 0))(
  ( (array!14689 (arr!6969 (Array (_ BitVec 32) (_ BitVec 64))) (size!7321 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14688)

(declare-fun mask!3809 () (_ BitVec 32))

(assert (=> b!290959 (= res!152338 (and (= (size!7321 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7321 a!3312))))))

(declare-fun b!290960 () Bool)

(declare-fun e!184122 () Bool)

(assert (=> b!290960 (= e!184122 e!184120)))

(declare-fun res!152333 () Bool)

(assert (=> b!290960 (=> (not res!152333) (not e!184120))))

(declare-fun lt!143891 () Bool)

(assert (=> b!290960 (= res!152333 (and (or lt!143891 (not (undefined!2941 lt!143889))) (not lt!143891) (= (select (arr!6969 a!3312) (index!10688 lt!143889)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!290960 (= lt!143891 (not (is-Intermediate!2129 lt!143889)))))

(declare-fun b!290961 () Bool)

(declare-fun e!184119 () Bool)

(assert (=> b!290961 (= e!184119 e!184122)))

(declare-fun res!152336 () Bool)

(assert (=> b!290961 (=> (not res!152336) (not e!184122))))

(declare-fun lt!143886 () Bool)

(declare-fun lt!143887 () SeekEntryResult!2129)

(assert (=> b!290961 (= res!152336 (and (not lt!143886) (= lt!143887 (MissingVacant!2129 i!1256))))))

(declare-fun lt!143888 () SeekEntryResult!2129)

(declare-fun lt!143890 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14688 (_ BitVec 32)) SeekEntryResult!2129)

(assert (=> b!290961 (= lt!143888 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!143890 k!2524 (array!14689 (store (arr!6969 a!3312) i!1256 k!2524) (size!7321 a!3312)) mask!3809))))

(assert (=> b!290961 (= lt!143889 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!143890 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!290961 (= lt!143890 (toIndex!0 k!2524 mask!3809))))

(declare-fun b!290962 () Bool)

(declare-fun res!152334 () Bool)

(assert (=> b!290962 (=> (not res!152334) (not e!184123))))

(declare-fun arrayContainsKey!0 (array!14688 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!290962 (= res!152334 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!290963 () Bool)

(assert (=> b!290963 (= e!184123 e!184119)))

(declare-fun res!152339 () Bool)

(assert (=> b!290963 (=> (not res!152339) (not e!184119))))

(assert (=> b!290963 (= res!152339 (or lt!143886 (= lt!143887 (MissingVacant!2129 i!1256))))))

(assert (=> b!290963 (= lt!143886 (= lt!143887 (MissingZero!2129 i!1256)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14688 (_ BitVec 32)) SeekEntryResult!2129)

(assert (=> b!290963 (= lt!143887 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!290964 () Bool)

(declare-fun res!152340 () Bool)

(assert (=> b!290964 (=> (not res!152340) (not e!184119))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14688 (_ BitVec 32)) Bool)

(assert (=> b!290964 (= res!152340 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun res!152335 () Bool)

(assert (=> start!28430 (=> (not res!152335) (not e!184123))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28430 (= res!152335 (validMask!0 mask!3809))))

(assert (=> start!28430 e!184123))

(assert (=> start!28430 true))

(declare-fun array_inv!4923 (array!14688) Bool)

(assert (=> start!28430 (array_inv!4923 a!3312)))

(assert (= (and start!28430 res!152335) b!290959))

(assert (= (and b!290959 res!152338) b!290957))

(assert (= (and b!290957 res!152337) b!290962))

(assert (= (and b!290962 res!152334) b!290963))

(assert (= (and b!290963 res!152339) b!290964))

(assert (= (and b!290964 res!152340) b!290961))

(assert (= (and b!290961 res!152336) b!290960))

(assert (= (and b!290960 res!152333) b!290958))

(declare-fun m!304971 () Bool)

(assert (=> b!290960 m!304971))

(declare-fun m!304973 () Bool)

(assert (=> b!290961 m!304973))

(declare-fun m!304975 () Bool)

(assert (=> b!290961 m!304975))

(declare-fun m!304977 () Bool)

(assert (=> b!290961 m!304977))

(declare-fun m!304979 () Bool)

(assert (=> b!290961 m!304979))

(declare-fun m!304981 () Bool)

(assert (=> b!290963 m!304981))

(declare-fun m!304983 () Bool)

(assert (=> b!290964 m!304983))

(declare-fun m!304985 () Bool)

(assert (=> b!290962 m!304985))

(declare-fun m!304987 () Bool)

(assert (=> start!28430 m!304987))

(declare-fun m!304989 () Bool)

(assert (=> start!28430 m!304989))

(declare-fun m!304991 () Bool)

(assert (=> b!290957 m!304991))

(push 1)


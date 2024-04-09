; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!50662 () Bool)

(assert start!50662)

(declare-fun b!553388 () Bool)

(declare-fun e!319209 () Bool)

(declare-fun e!319211 () Bool)

(assert (=> b!553388 (= e!319209 e!319211)))

(declare-fun res!345950 () Bool)

(assert (=> b!553388 (=> (not res!345950) (not e!319211))))

(declare-fun lt!251492 () (_ BitVec 32))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5182 0))(
  ( (MissingZero!5182 (index!22955 (_ BitVec 32))) (Found!5182 (index!22956 (_ BitVec 32))) (Intermediate!5182 (undefined!5994 Bool) (index!22957 (_ BitVec 32)) (x!51907 (_ BitVec 32))) (Undefined!5182) (MissingVacant!5182 (index!22958 (_ BitVec 32))) )
))
(declare-fun lt!251495 () SeekEntryResult!5182)

(declare-fun i!1132 () (_ BitVec 32))

(declare-datatypes ((array!34841 0))(
  ( (array!34842 (arr!16726 (Array (_ BitVec 32) (_ BitVec 64))) (size!17090 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34841)

(declare-fun k0!1914 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34841 (_ BitVec 32)) SeekEntryResult!5182)

(assert (=> b!553388 (= res!345950 (= lt!251495 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!251492 (select (store (arr!16726 a!3118) i!1132 k0!1914) j!142) (array!34842 (store (arr!16726 a!3118) i!1132 k0!1914) (size!17090 a!3118)) mask!3119)))))

(declare-fun lt!251493 () (_ BitVec 32))

(assert (=> b!553388 (= lt!251495 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!251493 (select (arr!16726 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!553388 (= lt!251492 (toIndex!0 (select (store (arr!16726 a!3118) i!1132 k0!1914) j!142) mask!3119))))

(assert (=> b!553388 (= lt!251493 (toIndex!0 (select (arr!16726 a!3118) j!142) mask!3119))))

(declare-fun res!345957 () Bool)

(declare-fun e!319213 () Bool)

(assert (=> start!50662 (=> (not res!345957) (not e!319213))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50662 (= res!345957 (validMask!0 mask!3119))))

(assert (=> start!50662 e!319213))

(assert (=> start!50662 true))

(declare-fun array_inv!12500 (array!34841) Bool)

(assert (=> start!50662 (array_inv!12500 a!3118)))

(declare-fun b!553389 () Bool)

(declare-fun e!319210 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34841 (_ BitVec 32)) SeekEntryResult!5182)

(assert (=> b!553389 (= e!319210 (= (seekEntryOrOpen!0 (select (arr!16726 a!3118) j!142) a!3118 mask!3119) (Found!5182 j!142)))))

(declare-fun b!553390 () Bool)

(declare-fun res!345951 () Bool)

(assert (=> b!553390 (=> (not res!345951) (not e!319213))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!553390 (= res!345951 (validKeyInArray!0 (select (arr!16726 a!3118) j!142)))))

(declare-fun b!553391 () Bool)

(declare-fun res!345953 () Bool)

(assert (=> b!553391 (=> (not res!345953) (not e!319209))))

(declare-datatypes ((List!10859 0))(
  ( (Nil!10856) (Cons!10855 (h!11840 (_ BitVec 64)) (t!17095 List!10859)) )
))
(declare-fun arrayNoDuplicates!0 (array!34841 (_ BitVec 32) List!10859) Bool)

(assert (=> b!553391 (= res!345953 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10856))))

(declare-fun b!553392 () Bool)

(get-info :version)

(assert (=> b!553392 (= e!319211 (not (or (not ((_ is Intermediate!5182) lt!251495)) (undefined!5994 lt!251495) (not (= (select (arr!16726 a!3118) (index!22957 lt!251495)) (select (arr!16726 a!3118) j!142))) (bvsge mask!3119 #b00000000000000000000000000000000))))))

(assert (=> b!553392 e!319210))

(declare-fun res!345952 () Bool)

(assert (=> b!553392 (=> (not res!345952) (not e!319210))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34841 (_ BitVec 32)) Bool)

(assert (=> b!553392 (= res!345952 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17138 0))(
  ( (Unit!17139) )
))
(declare-fun lt!251494 () Unit!17138)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!34841 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17138)

(assert (=> b!553392 (= lt!251494 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!553393 () Bool)

(assert (=> b!553393 (= e!319213 e!319209)))

(declare-fun res!345959 () Bool)

(assert (=> b!553393 (=> (not res!345959) (not e!319209))))

(declare-fun lt!251491 () SeekEntryResult!5182)

(assert (=> b!553393 (= res!345959 (or (= lt!251491 (MissingZero!5182 i!1132)) (= lt!251491 (MissingVacant!5182 i!1132))))))

(assert (=> b!553393 (= lt!251491 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!553394 () Bool)

(declare-fun res!345956 () Bool)

(assert (=> b!553394 (=> (not res!345956) (not e!319209))))

(assert (=> b!553394 (= res!345956 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!553395 () Bool)

(declare-fun res!345958 () Bool)

(assert (=> b!553395 (=> (not res!345958) (not e!319213))))

(assert (=> b!553395 (= res!345958 (and (= (size!17090 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17090 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17090 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!553396 () Bool)

(declare-fun res!345954 () Bool)

(assert (=> b!553396 (=> (not res!345954) (not e!319213))))

(assert (=> b!553396 (= res!345954 (validKeyInArray!0 k0!1914))))

(declare-fun b!553397 () Bool)

(declare-fun res!345955 () Bool)

(assert (=> b!553397 (=> (not res!345955) (not e!319213))))

(declare-fun arrayContainsKey!0 (array!34841 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!553397 (= res!345955 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(assert (= (and start!50662 res!345957) b!553395))

(assert (= (and b!553395 res!345958) b!553390))

(assert (= (and b!553390 res!345951) b!553396))

(assert (= (and b!553396 res!345954) b!553397))

(assert (= (and b!553397 res!345955) b!553393))

(assert (= (and b!553393 res!345959) b!553394))

(assert (= (and b!553394 res!345956) b!553391))

(assert (= (and b!553391 res!345953) b!553388))

(assert (= (and b!553388 res!345950) b!553392))

(assert (= (and b!553392 res!345952) b!553389))

(declare-fun m!530535 () Bool)

(assert (=> b!553389 m!530535))

(assert (=> b!553389 m!530535))

(declare-fun m!530537 () Bool)

(assert (=> b!553389 m!530537))

(declare-fun m!530539 () Bool)

(assert (=> b!553397 m!530539))

(declare-fun m!530541 () Bool)

(assert (=> b!553393 m!530541))

(declare-fun m!530543 () Bool)

(assert (=> b!553394 m!530543))

(declare-fun m!530545 () Bool)

(assert (=> start!50662 m!530545))

(declare-fun m!530547 () Bool)

(assert (=> start!50662 m!530547))

(assert (=> b!553388 m!530535))

(declare-fun m!530549 () Bool)

(assert (=> b!553388 m!530549))

(assert (=> b!553388 m!530535))

(assert (=> b!553388 m!530535))

(declare-fun m!530551 () Bool)

(assert (=> b!553388 m!530551))

(declare-fun m!530553 () Bool)

(assert (=> b!553388 m!530553))

(assert (=> b!553388 m!530553))

(declare-fun m!530555 () Bool)

(assert (=> b!553388 m!530555))

(declare-fun m!530557 () Bool)

(assert (=> b!553388 m!530557))

(assert (=> b!553388 m!530553))

(declare-fun m!530559 () Bool)

(assert (=> b!553388 m!530559))

(declare-fun m!530561 () Bool)

(assert (=> b!553391 m!530561))

(declare-fun m!530563 () Bool)

(assert (=> b!553396 m!530563))

(declare-fun m!530565 () Bool)

(assert (=> b!553392 m!530565))

(assert (=> b!553392 m!530535))

(declare-fun m!530567 () Bool)

(assert (=> b!553392 m!530567))

(declare-fun m!530569 () Bool)

(assert (=> b!553392 m!530569))

(assert (=> b!553390 m!530535))

(assert (=> b!553390 m!530535))

(declare-fun m!530571 () Bool)

(assert (=> b!553390 m!530571))

(check-sat (not b!553390) (not start!50662) (not b!553397) (not b!553391) (not b!553392) (not b!553389) (not b!553388) (not b!553393) (not b!553394) (not b!553396))
(check-sat)

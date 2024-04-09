; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!49996 () Bool)

(assert start!49996)

(declare-fun b!547786 () Bool)

(declare-fun res!341345 () Bool)

(declare-fun e!316530 () Bool)

(assert (=> b!547786 (=> (not res!341345) (not e!316530))))

(declare-datatypes ((array!34532 0))(
  ( (array!34533 (arr!16582 (Array (_ BitVec 32) (_ BitVec 64))) (size!16946 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34532)

(declare-fun j!142 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!547786 (= res!341345 (validKeyInArray!0 (select (arr!16582 a!3118) j!142)))))

(declare-fun b!547787 () Bool)

(declare-fun res!341348 () Bool)

(declare-fun e!316529 () Bool)

(assert (=> b!547787 (=> (not res!341348) (not e!316529))))

(declare-datatypes ((List!10715 0))(
  ( (Nil!10712) (Cons!10711 (h!11678 (_ BitVec 64)) (t!16951 List!10715)) )
))
(declare-fun arrayNoDuplicates!0 (array!34532 (_ BitVec 32) List!10715) Bool)

(assert (=> b!547787 (= res!341348 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10712))))

(declare-fun b!547788 () Bool)

(declare-fun res!341347 () Bool)

(assert (=> b!547788 (=> (not res!341347) (not e!316530))))

(declare-fun k0!1914 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!34532 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!547788 (= res!341347 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun b!547789 () Bool)

(assert (=> b!547789 (= e!316530 e!316529)))

(declare-fun res!341351 () Bool)

(assert (=> b!547789 (=> (not res!341351) (not e!316529))))

(declare-datatypes ((SeekEntryResult!5038 0))(
  ( (MissingZero!5038 (index!22379 (_ BitVec 32))) (Found!5038 (index!22380 (_ BitVec 32))) (Intermediate!5038 (undefined!5850 Bool) (index!22381 (_ BitVec 32)) (x!51349 (_ BitVec 32))) (Undefined!5038) (MissingVacant!5038 (index!22382 (_ BitVec 32))) )
))
(declare-fun lt!249655 () SeekEntryResult!5038)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!547789 (= res!341351 (or (= lt!249655 (MissingZero!5038 i!1132)) (= lt!249655 (MissingVacant!5038 i!1132))))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34532 (_ BitVec 32)) SeekEntryResult!5038)

(assert (=> b!547789 (= lt!249655 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun res!341349 () Bool)

(assert (=> start!49996 (=> (not res!341349) (not e!316530))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!49996 (= res!341349 (validMask!0 mask!3119))))

(assert (=> start!49996 e!316530))

(assert (=> start!49996 true))

(declare-fun array_inv!12356 (array!34532) Bool)

(assert (=> start!49996 (array_inv!12356 a!3118)))

(declare-fun b!547790 () Bool)

(declare-fun res!341350 () Bool)

(assert (=> b!547790 (=> (not res!341350) (not e!316530))))

(assert (=> b!547790 (= res!341350 (validKeyInArray!0 k0!1914))))

(declare-fun b!547791 () Bool)

(assert (=> b!547791 (= e!316529 false)))

(declare-fun lt!249656 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!547791 (= lt!249656 (toIndex!0 (select (arr!16582 a!3118) j!142) mask!3119))))

(declare-fun b!547792 () Bool)

(declare-fun res!341344 () Bool)

(assert (=> b!547792 (=> (not res!341344) (not e!316530))))

(assert (=> b!547792 (= res!341344 (and (= (size!16946 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!16946 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!16946 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!547793 () Bool)

(declare-fun res!341346 () Bool)

(assert (=> b!547793 (=> (not res!341346) (not e!316529))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34532 (_ BitVec 32)) Bool)

(assert (=> b!547793 (= res!341346 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(assert (= (and start!49996 res!341349) b!547792))

(assert (= (and b!547792 res!341344) b!547786))

(assert (= (and b!547786 res!341345) b!547790))

(assert (= (and b!547790 res!341350) b!547788))

(assert (= (and b!547788 res!341347) b!547789))

(assert (= (and b!547789 res!341351) b!547793))

(assert (= (and b!547793 res!341346) b!547787))

(assert (= (and b!547787 res!341348) b!547791))

(declare-fun m!524949 () Bool)

(assert (=> b!547790 m!524949))

(declare-fun m!524951 () Bool)

(assert (=> b!547791 m!524951))

(assert (=> b!547791 m!524951))

(declare-fun m!524953 () Bool)

(assert (=> b!547791 m!524953))

(assert (=> b!547786 m!524951))

(assert (=> b!547786 m!524951))

(declare-fun m!524955 () Bool)

(assert (=> b!547786 m!524955))

(declare-fun m!524957 () Bool)

(assert (=> b!547789 m!524957))

(declare-fun m!524959 () Bool)

(assert (=> start!49996 m!524959))

(declare-fun m!524961 () Bool)

(assert (=> start!49996 m!524961))

(declare-fun m!524963 () Bool)

(assert (=> b!547793 m!524963))

(declare-fun m!524965 () Bool)

(assert (=> b!547787 m!524965))

(declare-fun m!524967 () Bool)

(assert (=> b!547788 m!524967))

(check-sat (not b!547786) (not b!547790) (not b!547793) (not b!547788) (not b!547787) (not b!547791) (not b!547789) (not start!49996))
(check-sat)

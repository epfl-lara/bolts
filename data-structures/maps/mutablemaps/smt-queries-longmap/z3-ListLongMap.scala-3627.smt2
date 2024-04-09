; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!50068 () Bool)

(assert start!50068)

(declare-fun b!548227 () Bool)

(declare-fun res!341702 () Bool)

(declare-fun e!316745 () Bool)

(assert (=> b!548227 (=> (not res!341702) (not e!316745))))

(declare-datatypes ((array!34559 0))(
  ( (array!34560 (arr!16594 (Array (_ BitVec 32) (_ BitVec 64))) (size!16958 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34559)

(declare-fun j!142 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!548227 (= res!341702 (validKeyInArray!0 (select (arr!16594 a!3118) j!142)))))

(declare-fun b!548228 () Bool)

(declare-fun res!341698 () Bool)

(assert (=> b!548228 (=> (not res!341698) (not e!316745))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!548228 (= res!341698 (and (= (size!16958 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!16958 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!16958 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!548229 () Bool)

(declare-fun e!316746 () Bool)

(assert (=> b!548229 (= e!316746 false)))

(declare-fun lt!249800 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!548229 (= lt!249800 (toIndex!0 (select (arr!16594 a!3118) j!142) mask!3119))))

(declare-fun b!548230 () Bool)

(assert (=> b!548230 (= e!316745 e!316746)))

(declare-fun res!341703 () Bool)

(assert (=> b!548230 (=> (not res!341703) (not e!316746))))

(declare-datatypes ((SeekEntryResult!5050 0))(
  ( (MissingZero!5050 (index!22427 (_ BitVec 32))) (Found!5050 (index!22428 (_ BitVec 32))) (Intermediate!5050 (undefined!5862 Bool) (index!22429 (_ BitVec 32)) (x!51396 (_ BitVec 32))) (Undefined!5050) (MissingVacant!5050 (index!22430 (_ BitVec 32))) )
))
(declare-fun lt!249799 () SeekEntryResult!5050)

(assert (=> b!548230 (= res!341703 (or (= lt!249799 (MissingZero!5050 i!1132)) (= lt!249799 (MissingVacant!5050 i!1132))))))

(declare-fun k0!1914 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34559 (_ BitVec 32)) SeekEntryResult!5050)

(assert (=> b!548230 (= lt!249799 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!548232 () Bool)

(declare-fun res!341699 () Bool)

(assert (=> b!548232 (=> (not res!341699) (not e!316746))))

(declare-datatypes ((List!10727 0))(
  ( (Nil!10724) (Cons!10723 (h!11693 (_ BitVec 64)) (t!16963 List!10727)) )
))
(declare-fun arrayNoDuplicates!0 (array!34559 (_ BitVec 32) List!10727) Bool)

(assert (=> b!548232 (= res!341699 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10724))))

(declare-fun b!548233 () Bool)

(declare-fun res!341704 () Bool)

(assert (=> b!548233 (=> (not res!341704) (not e!316745))))

(declare-fun arrayContainsKey!0 (array!34559 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!548233 (= res!341704 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun b!548234 () Bool)

(declare-fun res!341705 () Bool)

(assert (=> b!548234 (=> (not res!341705) (not e!316745))))

(assert (=> b!548234 (= res!341705 (validKeyInArray!0 k0!1914))))

(declare-fun b!548231 () Bool)

(declare-fun res!341700 () Bool)

(assert (=> b!548231 (=> (not res!341700) (not e!316746))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34559 (_ BitVec 32)) Bool)

(assert (=> b!548231 (= res!341700 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun res!341701 () Bool)

(assert (=> start!50068 (=> (not res!341701) (not e!316745))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50068 (= res!341701 (validMask!0 mask!3119))))

(assert (=> start!50068 e!316745))

(assert (=> start!50068 true))

(declare-fun array_inv!12368 (array!34559) Bool)

(assert (=> start!50068 (array_inv!12368 a!3118)))

(assert (= (and start!50068 res!341701) b!548228))

(assert (= (and b!548228 res!341698) b!548227))

(assert (= (and b!548227 res!341702) b!548234))

(assert (= (and b!548234 res!341705) b!548233))

(assert (= (and b!548233 res!341704) b!548230))

(assert (= (and b!548230 res!341703) b!548231))

(assert (= (and b!548231 res!341700) b!548232))

(assert (= (and b!548232 res!341699) b!548229))

(declare-fun m!525285 () Bool)

(assert (=> b!548227 m!525285))

(assert (=> b!548227 m!525285))

(declare-fun m!525287 () Bool)

(assert (=> b!548227 m!525287))

(declare-fun m!525289 () Bool)

(assert (=> b!548232 m!525289))

(declare-fun m!525291 () Bool)

(assert (=> b!548233 m!525291))

(declare-fun m!525293 () Bool)

(assert (=> b!548231 m!525293))

(declare-fun m!525295 () Bool)

(assert (=> b!548230 m!525295))

(assert (=> b!548229 m!525285))

(assert (=> b!548229 m!525285))

(declare-fun m!525297 () Bool)

(assert (=> b!548229 m!525297))

(declare-fun m!525299 () Bool)

(assert (=> start!50068 m!525299))

(declare-fun m!525301 () Bool)

(assert (=> start!50068 m!525301))

(declare-fun m!525303 () Bool)

(assert (=> b!548234 m!525303))

(check-sat (not b!548230) (not b!548227) (not b!548234) (not b!548231) (not b!548232) (not b!548233) (not b!548229) (not start!50068))
(check-sat)

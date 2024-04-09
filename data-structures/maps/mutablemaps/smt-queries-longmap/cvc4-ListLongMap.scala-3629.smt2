; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!50082 () Bool)

(assert start!50082)

(declare-fun b!548395 () Bool)

(declare-fun res!341868 () Bool)

(declare-fun e!316808 () Bool)

(assert (=> b!548395 (=> (not res!341868) (not e!316808))))

(declare-datatypes ((array!34573 0))(
  ( (array!34574 (arr!16601 (Array (_ BitVec 32) (_ BitVec 64))) (size!16965 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34573)

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34573 (_ BitVec 32)) Bool)

(assert (=> b!548395 (= res!341868 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!548396 () Bool)

(declare-fun e!316810 () Bool)

(assert (=> b!548396 (= e!316810 e!316808)))

(declare-fun res!341872 () Bool)

(assert (=> b!548396 (=> (not res!341872) (not e!316808))))

(declare-datatypes ((SeekEntryResult!5057 0))(
  ( (MissingZero!5057 (index!22455 (_ BitVec 32))) (Found!5057 (index!22456 (_ BitVec 32))) (Intermediate!5057 (undefined!5869 Bool) (index!22457 (_ BitVec 32)) (x!51419 (_ BitVec 32))) (Undefined!5057) (MissingVacant!5057 (index!22458 (_ BitVec 32))) )
))
(declare-fun lt!249833 () SeekEntryResult!5057)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!548396 (= res!341872 (or (= lt!249833 (MissingZero!5057 i!1132)) (= lt!249833 (MissingVacant!5057 i!1132))))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34573 (_ BitVec 32)) SeekEntryResult!5057)

(assert (=> b!548396 (= lt!249833 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun res!341869 () Bool)

(assert (=> start!50082 (=> (not res!341869) (not e!316810))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50082 (= res!341869 (validMask!0 mask!3119))))

(assert (=> start!50082 e!316810))

(assert (=> start!50082 true))

(declare-fun array_inv!12375 (array!34573) Bool)

(assert (=> start!50082 (array_inv!12375 a!3118)))

(declare-fun b!548397 () Bool)

(assert (=> b!548397 (= e!316808 (bvslt mask!3119 #b00000000000000000000000000000000))))

(declare-fun b!548398 () Bool)

(declare-fun res!341870 () Bool)

(assert (=> b!548398 (=> (not res!341870) (not e!316810))))

(declare-fun j!142 () (_ BitVec 32))

(assert (=> b!548398 (= res!341870 (and (= (size!16965 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!16965 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!16965 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!548399 () Bool)

(declare-fun res!341867 () Bool)

(assert (=> b!548399 (=> (not res!341867) (not e!316810))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!548399 (= res!341867 (validKeyInArray!0 (select (arr!16601 a!3118) j!142)))))

(declare-fun b!548400 () Bool)

(declare-fun res!341871 () Bool)

(assert (=> b!548400 (=> (not res!341871) (not e!316810))))

(declare-fun arrayContainsKey!0 (array!34573 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!548400 (= res!341871 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!548401 () Bool)

(declare-fun res!341866 () Bool)

(assert (=> b!548401 (=> (not res!341866) (not e!316810))))

(assert (=> b!548401 (= res!341866 (validKeyInArray!0 k!1914))))

(declare-fun b!548402 () Bool)

(declare-fun res!341873 () Bool)

(assert (=> b!548402 (=> (not res!341873) (not e!316808))))

(declare-datatypes ((List!10734 0))(
  ( (Nil!10731) (Cons!10730 (h!11700 (_ BitVec 64)) (t!16970 List!10734)) )
))
(declare-fun arrayNoDuplicates!0 (array!34573 (_ BitVec 32) List!10734) Bool)

(assert (=> b!548402 (= res!341873 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10731))))

(assert (= (and start!50082 res!341869) b!548398))

(assert (= (and b!548398 res!341870) b!548399))

(assert (= (and b!548399 res!341867) b!548401))

(assert (= (and b!548401 res!341866) b!548400))

(assert (= (and b!548400 res!341871) b!548396))

(assert (= (and b!548396 res!341872) b!548395))

(assert (= (and b!548395 res!341868) b!548402))

(assert (= (and b!548402 res!341873) b!548397))

(declare-fun m!525421 () Bool)

(assert (=> b!548399 m!525421))

(assert (=> b!548399 m!525421))

(declare-fun m!525423 () Bool)

(assert (=> b!548399 m!525423))

(declare-fun m!525425 () Bool)

(assert (=> start!50082 m!525425))

(declare-fun m!525427 () Bool)

(assert (=> start!50082 m!525427))

(declare-fun m!525429 () Bool)

(assert (=> b!548396 m!525429))

(declare-fun m!525431 () Bool)

(assert (=> b!548402 m!525431))

(declare-fun m!525433 () Bool)

(assert (=> b!548395 m!525433))

(declare-fun m!525435 () Bool)

(assert (=> b!548400 m!525435))

(declare-fun m!525437 () Bool)

(assert (=> b!548401 m!525437))

(push 1)

(assert (not start!50082))

(assert (not b!548399))

(assert (not b!548395))

(assert (not b!548401))

(assert (not b!548396))

(assert (not b!548402))

(assert (not b!548400))

(check-sat)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!51570 () Bool)

(assert start!51570)

(declare-fun b!563915 () Bool)

(declare-fun res!355223 () Bool)

(declare-fun e!324880 () Bool)

(assert (=> b!563915 (=> (not res!355223) (not e!324880))))

(declare-datatypes ((array!35389 0))(
  ( (array!35390 (arr!16991 (Array (_ BitVec 32) (_ BitVec 64))) (size!17355 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35389)

(declare-fun j!142 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!563915 (= res!355223 (validKeyInArray!0 (select (arr!16991 a!3118) j!142)))))

(declare-fun res!355217 () Bool)

(assert (=> start!51570 (=> (not res!355217) (not e!324880))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51570 (= res!355217 (validMask!0 mask!3119))))

(assert (=> start!51570 e!324880))

(assert (=> start!51570 true))

(declare-fun array_inv!12765 (array!35389) Bool)

(assert (=> start!51570 (array_inv!12765 a!3118)))

(declare-fun b!563916 () Bool)

(declare-fun res!355222 () Bool)

(declare-fun e!324879 () Bool)

(assert (=> b!563916 (=> (not res!355222) (not e!324879))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35389 (_ BitVec 32)) Bool)

(assert (=> b!563916 (= res!355222 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!563917 () Bool)

(assert (=> b!563917 (= e!324879 false)))

(declare-fun lt!257405 () Bool)

(declare-datatypes ((List!11124 0))(
  ( (Nil!11121) (Cons!11120 (h!12123 (_ BitVec 64)) (t!17360 List!11124)) )
))
(declare-fun arrayNoDuplicates!0 (array!35389 (_ BitVec 32) List!11124) Bool)

(assert (=> b!563917 (= lt!257405 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11121))))

(declare-fun b!563918 () Bool)

(declare-fun res!355220 () Bool)

(assert (=> b!563918 (=> (not res!355220) (not e!324880))))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!563918 (= res!355220 (and (= (size!17355 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17355 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17355 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!563919 () Bool)

(declare-fun res!355218 () Bool)

(assert (=> b!563919 (=> (not res!355218) (not e!324880))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!35389 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!563919 (= res!355218 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!563920 () Bool)

(declare-fun res!355219 () Bool)

(assert (=> b!563920 (=> (not res!355219) (not e!324880))))

(assert (=> b!563920 (= res!355219 (validKeyInArray!0 k!1914))))

(declare-fun b!563921 () Bool)

(assert (=> b!563921 (= e!324880 e!324879)))

(declare-fun res!355221 () Bool)

(assert (=> b!563921 (=> (not res!355221) (not e!324879))))

(declare-datatypes ((SeekEntryResult!5447 0))(
  ( (MissingZero!5447 (index!24015 (_ BitVec 32))) (Found!5447 (index!24016 (_ BitVec 32))) (Intermediate!5447 (undefined!6259 Bool) (index!24017 (_ BitVec 32)) (x!52921 (_ BitVec 32))) (Undefined!5447) (MissingVacant!5447 (index!24018 (_ BitVec 32))) )
))
(declare-fun lt!257404 () SeekEntryResult!5447)

(assert (=> b!563921 (= res!355221 (or (= lt!257404 (MissingZero!5447 i!1132)) (= lt!257404 (MissingVacant!5447 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35389 (_ BitVec 32)) SeekEntryResult!5447)

(assert (=> b!563921 (= lt!257404 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(assert (= (and start!51570 res!355217) b!563918))

(assert (= (and b!563918 res!355220) b!563915))

(assert (= (and b!563915 res!355223) b!563920))

(assert (= (and b!563920 res!355219) b!563919))

(assert (= (and b!563919 res!355218) b!563921))

(assert (= (and b!563921 res!355221) b!563916))

(assert (= (and b!563916 res!355222) b!563917))

(declare-fun m!542419 () Bool)

(assert (=> b!563921 m!542419))

(declare-fun m!542421 () Bool)

(assert (=> b!563917 m!542421))

(declare-fun m!542423 () Bool)

(assert (=> b!563920 m!542423))

(declare-fun m!542425 () Bool)

(assert (=> b!563919 m!542425))

(declare-fun m!542427 () Bool)

(assert (=> b!563915 m!542427))

(assert (=> b!563915 m!542427))

(declare-fun m!542429 () Bool)

(assert (=> b!563915 m!542429))

(declare-fun m!542431 () Bool)

(assert (=> b!563916 m!542431))

(declare-fun m!542433 () Bool)

(assert (=> start!51570 m!542433))

(declare-fun m!542435 () Bool)

(assert (=> start!51570 m!542435))

(push 1)

(assert (not start!51570))

(assert (not b!563920))

(assert (not b!563917))

(assert (not b!563921))


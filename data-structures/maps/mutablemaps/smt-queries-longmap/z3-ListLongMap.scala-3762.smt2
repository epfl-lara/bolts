; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!51586 () Bool)

(assert start!51586)

(declare-fun res!355394 () Bool)

(declare-fun e!324952 () Bool)

(assert (=> start!51586 (=> (not res!355394) (not e!324952))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51586 (= res!355394 (validMask!0 mask!3119))))

(assert (=> start!51586 e!324952))

(assert (=> start!51586 true))

(declare-datatypes ((array!35405 0))(
  ( (array!35406 (arr!16999 (Array (_ BitVec 32) (_ BitVec 64))) (size!17363 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35405)

(declare-fun array_inv!12773 (array!35405) Bool)

(assert (=> start!51586 (array_inv!12773 a!3118)))

(declare-fun b!564088 () Bool)

(declare-fun res!355393 () Bool)

(assert (=> b!564088 (=> (not res!355393) (not e!324952))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!564088 (= res!355393 (and (= (size!17363 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17363 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17363 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!564089 () Bool)

(declare-fun e!324951 () Bool)

(assert (=> b!564089 (= e!324951 false)))

(declare-fun lt!257452 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!564089 (= lt!257452 (toIndex!0 (select (arr!16999 a!3118) j!142) mask!3119))))

(declare-fun b!564090 () Bool)

(declare-fun res!355395 () Bool)

(assert (=> b!564090 (=> (not res!355395) (not e!324951))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35405 (_ BitVec 32)) Bool)

(assert (=> b!564090 (= res!355395 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!564091 () Bool)

(declare-fun res!355391 () Bool)

(assert (=> b!564091 (=> (not res!355391) (not e!324952))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!564091 (= res!355391 (validKeyInArray!0 (select (arr!16999 a!3118) j!142)))))

(declare-fun b!564092 () Bool)

(assert (=> b!564092 (= e!324952 e!324951)))

(declare-fun res!355390 () Bool)

(assert (=> b!564092 (=> (not res!355390) (not e!324951))))

(declare-datatypes ((SeekEntryResult!5455 0))(
  ( (MissingZero!5455 (index!24047 (_ BitVec 32))) (Found!5455 (index!24048 (_ BitVec 32))) (Intermediate!5455 (undefined!6267 Bool) (index!24049 (_ BitVec 32)) (x!52953 (_ BitVec 32))) (Undefined!5455) (MissingVacant!5455 (index!24050 (_ BitVec 32))) )
))
(declare-fun lt!257453 () SeekEntryResult!5455)

(assert (=> b!564092 (= res!355390 (or (= lt!257453 (MissingZero!5455 i!1132)) (= lt!257453 (MissingVacant!5455 i!1132))))))

(declare-fun k0!1914 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35405 (_ BitVec 32)) SeekEntryResult!5455)

(assert (=> b!564092 (= lt!257453 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!564093 () Bool)

(declare-fun res!355396 () Bool)

(assert (=> b!564093 (=> (not res!355396) (not e!324952))))

(declare-fun arrayContainsKey!0 (array!35405 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!564093 (= res!355396 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun b!564094 () Bool)

(declare-fun res!355397 () Bool)

(assert (=> b!564094 (=> (not res!355397) (not e!324951))))

(declare-datatypes ((List!11132 0))(
  ( (Nil!11129) (Cons!11128 (h!12131 (_ BitVec 64)) (t!17368 List!11132)) )
))
(declare-fun arrayNoDuplicates!0 (array!35405 (_ BitVec 32) List!11132) Bool)

(assert (=> b!564094 (= res!355397 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11129))))

(declare-fun b!564095 () Bool)

(declare-fun res!355392 () Bool)

(assert (=> b!564095 (=> (not res!355392) (not e!324952))))

(assert (=> b!564095 (= res!355392 (validKeyInArray!0 k0!1914))))

(assert (= (and start!51586 res!355394) b!564088))

(assert (= (and b!564088 res!355393) b!564091))

(assert (= (and b!564091 res!355391) b!564095))

(assert (= (and b!564095 res!355392) b!564093))

(assert (= (and b!564093 res!355396) b!564092))

(assert (= (and b!564092 res!355390) b!564090))

(assert (= (and b!564090 res!355395) b!564094))

(assert (= (and b!564094 res!355397) b!564089))

(declare-fun m!542565 () Bool)

(assert (=> b!564090 m!542565))

(declare-fun m!542567 () Bool)

(assert (=> b!564094 m!542567))

(declare-fun m!542569 () Bool)

(assert (=> b!564092 m!542569))

(declare-fun m!542571 () Bool)

(assert (=> b!564091 m!542571))

(assert (=> b!564091 m!542571))

(declare-fun m!542573 () Bool)

(assert (=> b!564091 m!542573))

(declare-fun m!542575 () Bool)

(assert (=> b!564095 m!542575))

(declare-fun m!542577 () Bool)

(assert (=> start!51586 m!542577))

(declare-fun m!542579 () Bool)

(assert (=> start!51586 m!542579))

(assert (=> b!564089 m!542571))

(assert (=> b!564089 m!542571))

(declare-fun m!542581 () Bool)

(assert (=> b!564089 m!542581))

(declare-fun m!542583 () Bool)

(assert (=> b!564093 m!542583))

(check-sat (not b!564089) (not b!564094) (not b!564091) (not b!564092) (not start!51586) (not b!564090) (not b!564093) (not b!564095))
(check-sat)

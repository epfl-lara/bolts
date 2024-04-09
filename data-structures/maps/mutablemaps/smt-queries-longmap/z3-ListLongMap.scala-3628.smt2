; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!50074 () Bool)

(assert start!50074)

(declare-fun b!548299 () Bool)

(declare-fun res!341777 () Bool)

(declare-fun e!316774 () Bool)

(assert (=> b!548299 (=> (not res!341777) (not e!316774))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(declare-datatypes ((array!34565 0))(
  ( (array!34566 (arr!16597 (Array (_ BitVec 32) (_ BitVec 64))) (size!16961 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34565)

(assert (=> b!548299 (= res!341777 (and (= (size!16961 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!16961 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!16961 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!548300 () Bool)

(declare-fun res!341773 () Bool)

(assert (=> b!548300 (=> (not res!341773) (not e!316774))))

(declare-fun k0!1914 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!548300 (= res!341773 (validKeyInArray!0 k0!1914))))

(declare-fun b!548302 () Bool)

(declare-fun res!341770 () Bool)

(declare-fun e!316772 () Bool)

(assert (=> b!548302 (=> (not res!341770) (not e!316772))))

(declare-datatypes ((List!10730 0))(
  ( (Nil!10727) (Cons!10726 (h!11696 (_ BitVec 64)) (t!16966 List!10730)) )
))
(declare-fun arrayNoDuplicates!0 (array!34565 (_ BitVec 32) List!10730) Bool)

(assert (=> b!548302 (= res!341770 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10727))))

(declare-fun b!548303 () Bool)

(assert (=> b!548303 (= e!316774 e!316772)))

(declare-fun res!341774 () Bool)

(assert (=> b!548303 (=> (not res!341774) (not e!316772))))

(declare-datatypes ((SeekEntryResult!5053 0))(
  ( (MissingZero!5053 (index!22439 (_ BitVec 32))) (Found!5053 (index!22440 (_ BitVec 32))) (Intermediate!5053 (undefined!5865 Bool) (index!22441 (_ BitVec 32)) (x!51407 (_ BitVec 32))) (Undefined!5053) (MissingVacant!5053 (index!22442 (_ BitVec 32))) )
))
(declare-fun lt!249818 () SeekEntryResult!5053)

(assert (=> b!548303 (= res!341774 (or (= lt!249818 (MissingZero!5053 i!1132)) (= lt!249818 (MissingVacant!5053 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34565 (_ BitVec 32)) SeekEntryResult!5053)

(assert (=> b!548303 (= lt!249818 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!548304 () Bool)

(declare-fun res!341772 () Bool)

(assert (=> b!548304 (=> (not res!341772) (not e!316774))))

(assert (=> b!548304 (= res!341772 (validKeyInArray!0 (select (arr!16597 a!3118) j!142)))))

(declare-fun b!548305 () Bool)

(declare-fun res!341776 () Bool)

(assert (=> b!548305 (=> (not res!341776) (not e!316774))))

(declare-fun arrayContainsKey!0 (array!34565 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!548305 (= res!341776 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun b!548306 () Bool)

(assert (=> b!548306 (= e!316772 false)))

(declare-fun lt!249817 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!548306 (= lt!249817 (toIndex!0 (select (arr!16597 a!3118) j!142) mask!3119))))

(declare-fun res!341775 () Bool)

(assert (=> start!50074 (=> (not res!341775) (not e!316774))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50074 (= res!341775 (validMask!0 mask!3119))))

(assert (=> start!50074 e!316774))

(assert (=> start!50074 true))

(declare-fun array_inv!12371 (array!34565) Bool)

(assert (=> start!50074 (array_inv!12371 a!3118)))

(declare-fun b!548301 () Bool)

(declare-fun res!341771 () Bool)

(assert (=> b!548301 (=> (not res!341771) (not e!316772))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34565 (_ BitVec 32)) Bool)

(assert (=> b!548301 (= res!341771 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(assert (= (and start!50074 res!341775) b!548299))

(assert (= (and b!548299 res!341777) b!548304))

(assert (= (and b!548304 res!341772) b!548300))

(assert (= (and b!548300 res!341773) b!548305))

(assert (= (and b!548305 res!341776) b!548303))

(assert (= (and b!548303 res!341774) b!548301))

(assert (= (and b!548301 res!341771) b!548302))

(assert (= (and b!548302 res!341770) b!548306))

(declare-fun m!525345 () Bool)

(assert (=> b!548301 m!525345))

(declare-fun m!525347 () Bool)

(assert (=> b!548305 m!525347))

(declare-fun m!525349 () Bool)

(assert (=> start!50074 m!525349))

(declare-fun m!525351 () Bool)

(assert (=> start!50074 m!525351))

(declare-fun m!525353 () Bool)

(assert (=> b!548302 m!525353))

(declare-fun m!525355 () Bool)

(assert (=> b!548300 m!525355))

(declare-fun m!525357 () Bool)

(assert (=> b!548303 m!525357))

(declare-fun m!525359 () Bool)

(assert (=> b!548304 m!525359))

(assert (=> b!548304 m!525359))

(declare-fun m!525361 () Bool)

(assert (=> b!548304 m!525361))

(assert (=> b!548306 m!525359))

(assert (=> b!548306 m!525359))

(declare-fun m!525363 () Bool)

(assert (=> b!548306 m!525363))

(check-sat (not b!548301) (not start!50074) (not b!548300) (not b!548303) (not b!548305) (not b!548302) (not b!548306) (not b!548304))
(check-sat)

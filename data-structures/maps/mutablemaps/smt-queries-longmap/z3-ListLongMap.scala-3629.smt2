; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!50080 () Bool)

(assert start!50080)

(declare-fun b!548371 () Bool)

(declare-fun res!341847 () Bool)

(declare-fun e!316801 () Bool)

(assert (=> b!548371 (=> (not res!341847) (not e!316801))))

(declare-datatypes ((array!34571 0))(
  ( (array!34572 (arr!16600 (Array (_ BitVec 32) (_ BitVec 64))) (size!16964 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34571)

(declare-fun k0!1914 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!34571 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!548371 (= res!341847 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun b!548372 () Bool)

(declare-fun res!341842 () Bool)

(declare-fun e!316799 () Bool)

(assert (=> b!548372 (=> (not res!341842) (not e!316799))))

(declare-datatypes ((List!10733 0))(
  ( (Nil!10730) (Cons!10729 (h!11699 (_ BitVec 64)) (t!16969 List!10733)) )
))
(declare-fun arrayNoDuplicates!0 (array!34571 (_ BitVec 32) List!10733) Bool)

(assert (=> b!548372 (= res!341842 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10730))))

(declare-fun b!548373 () Bool)

(declare-fun res!341848 () Bool)

(assert (=> b!548373 (=> (not res!341848) (not e!316801))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!548373 (= res!341848 (validKeyInArray!0 k0!1914))))

(declare-fun b!548374 () Bool)

(assert (=> b!548374 (= e!316801 e!316799)))

(declare-fun res!341846 () Bool)

(assert (=> b!548374 (=> (not res!341846) (not e!316799))))

(declare-datatypes ((SeekEntryResult!5056 0))(
  ( (MissingZero!5056 (index!22451 (_ BitVec 32))) (Found!5056 (index!22452 (_ BitVec 32))) (Intermediate!5056 (undefined!5868 Bool) (index!22453 (_ BitVec 32)) (x!51418 (_ BitVec 32))) (Undefined!5056) (MissingVacant!5056 (index!22454 (_ BitVec 32))) )
))
(declare-fun lt!249830 () SeekEntryResult!5056)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!548374 (= res!341846 (or (= lt!249830 (MissingZero!5056 i!1132)) (= lt!249830 (MissingVacant!5056 i!1132))))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34571 (_ BitVec 32)) SeekEntryResult!5056)

(assert (=> b!548374 (= lt!249830 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!548375 () Bool)

(assert (=> b!548375 (= e!316799 (bvslt mask!3119 #b00000000000000000000000000000000))))

(declare-fun b!548376 () Bool)

(declare-fun res!341843 () Bool)

(assert (=> b!548376 (=> (not res!341843) (not e!316799))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34571 (_ BitVec 32)) Bool)

(assert (=> b!548376 (= res!341843 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!548377 () Bool)

(declare-fun res!341849 () Bool)

(assert (=> b!548377 (=> (not res!341849) (not e!316801))))

(declare-fun j!142 () (_ BitVec 32))

(assert (=> b!548377 (= res!341849 (and (= (size!16964 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!16964 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!16964 a!3118)) (not (= i!1132 j!142))))))

(declare-fun res!341844 () Bool)

(assert (=> start!50080 (=> (not res!341844) (not e!316801))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50080 (= res!341844 (validMask!0 mask!3119))))

(assert (=> start!50080 e!316801))

(assert (=> start!50080 true))

(declare-fun array_inv!12374 (array!34571) Bool)

(assert (=> start!50080 (array_inv!12374 a!3118)))

(declare-fun b!548378 () Bool)

(declare-fun res!341845 () Bool)

(assert (=> b!548378 (=> (not res!341845) (not e!316801))))

(assert (=> b!548378 (= res!341845 (validKeyInArray!0 (select (arr!16600 a!3118) j!142)))))

(assert (= (and start!50080 res!341844) b!548377))

(assert (= (and b!548377 res!341849) b!548378))

(assert (= (and b!548378 res!341845) b!548373))

(assert (= (and b!548373 res!341848) b!548371))

(assert (= (and b!548371 res!341847) b!548374))

(assert (= (and b!548374 res!341846) b!548376))

(assert (= (and b!548376 res!341843) b!548372))

(assert (= (and b!548372 res!341842) b!548375))

(declare-fun m!525403 () Bool)

(assert (=> start!50080 m!525403))

(declare-fun m!525405 () Bool)

(assert (=> start!50080 m!525405))

(declare-fun m!525407 () Bool)

(assert (=> b!548372 m!525407))

(declare-fun m!525409 () Bool)

(assert (=> b!548373 m!525409))

(declare-fun m!525411 () Bool)

(assert (=> b!548374 m!525411))

(declare-fun m!525413 () Bool)

(assert (=> b!548376 m!525413))

(declare-fun m!525415 () Bool)

(assert (=> b!548371 m!525415))

(declare-fun m!525417 () Bool)

(assert (=> b!548378 m!525417))

(assert (=> b!548378 m!525417))

(declare-fun m!525419 () Bool)

(assert (=> b!548378 m!525419))

(check-sat (not b!548371) (not b!548378) (not b!548374) (not b!548372) (not start!50080) (not b!548373) (not b!548376))
(check-sat)

; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!51598 () Bool)

(assert start!51598)

(declare-fun b!564223 () Bool)

(declare-fun res!355529 () Bool)

(declare-fun e!325005 () Bool)

(assert (=> b!564223 (=> (not res!355529) (not e!325005))))

(declare-datatypes ((array!35417 0))(
  ( (array!35418 (arr!17005 (Array (_ BitVec 32) (_ BitVec 64))) (size!17369 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35417)

(declare-datatypes ((List!11138 0))(
  ( (Nil!11135) (Cons!11134 (h!12137 (_ BitVec 64)) (t!17374 List!11138)) )
))
(declare-fun arrayNoDuplicates!0 (array!35417 (_ BitVec 32) List!11138) Bool)

(assert (=> b!564223 (= res!355529 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11135))))

(declare-fun b!564224 () Bool)

(declare-fun res!355528 () Bool)

(assert (=> b!564224 (=> (not res!355528) (not e!325005))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35417 (_ BitVec 32)) Bool)

(assert (=> b!564224 (= res!355528 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun res!355532 () Bool)

(declare-fun e!325006 () Bool)

(assert (=> start!51598 (=> (not res!355532) (not e!325006))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51598 (= res!355532 (validMask!0 mask!3119))))

(assert (=> start!51598 e!325006))

(assert (=> start!51598 true))

(declare-fun array_inv!12779 (array!35417) Bool)

(assert (=> start!51598 (array_inv!12779 a!3118)))

(declare-fun b!564225 () Bool)

(assert (=> b!564225 (= e!325005 false)))

(declare-fun lt!257489 () (_ BitVec 32))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun k0!1914 () (_ BitVec 64))

(declare-fun i!1132 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!564225 (= lt!257489 (toIndex!0 (select (store (arr!17005 a!3118) i!1132 k0!1914) j!142) mask!3119))))

(declare-fun b!564226 () Bool)

(assert (=> b!564226 (= e!325006 e!325005)))

(declare-fun res!355525 () Bool)

(assert (=> b!564226 (=> (not res!355525) (not e!325005))))

(declare-datatypes ((SeekEntryResult!5461 0))(
  ( (MissingZero!5461 (index!24071 (_ BitVec 32))) (Found!5461 (index!24072 (_ BitVec 32))) (Intermediate!5461 (undefined!6273 Bool) (index!24073 (_ BitVec 32)) (x!52975 (_ BitVec 32))) (Undefined!5461) (MissingVacant!5461 (index!24074 (_ BitVec 32))) )
))
(declare-fun lt!257488 () SeekEntryResult!5461)

(assert (=> b!564226 (= res!355525 (or (= lt!257488 (MissingZero!5461 i!1132)) (= lt!257488 (MissingVacant!5461 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35417 (_ BitVec 32)) SeekEntryResult!5461)

(assert (=> b!564226 (= lt!257488 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!564227 () Bool)

(declare-fun res!355527 () Bool)

(assert (=> b!564227 (=> (not res!355527) (not e!325006))))

(assert (=> b!564227 (= res!355527 (and (= (size!17369 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17369 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17369 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!564228 () Bool)

(declare-fun res!355530 () Bool)

(assert (=> b!564228 (=> (not res!355530) (not e!325006))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!564228 (= res!355530 (validKeyInArray!0 (select (arr!17005 a!3118) j!142)))))

(declare-fun b!564229 () Bool)

(declare-fun res!355531 () Bool)

(assert (=> b!564229 (=> (not res!355531) (not e!325006))))

(assert (=> b!564229 (= res!355531 (validKeyInArray!0 k0!1914))))

(declare-fun b!564230 () Bool)

(declare-fun res!355526 () Bool)

(assert (=> b!564230 (=> (not res!355526) (not e!325006))))

(declare-fun arrayContainsKey!0 (array!35417 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!564230 (= res!355526 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(assert (= (and start!51598 res!355532) b!564227))

(assert (= (and b!564227 res!355527) b!564228))

(assert (= (and b!564228 res!355530) b!564229))

(assert (= (and b!564229 res!355531) b!564230))

(assert (= (and b!564230 res!355526) b!564226))

(assert (= (and b!564226 res!355525) b!564224))

(assert (= (and b!564224 res!355528) b!564223))

(assert (= (and b!564223 res!355529) b!564225))

(declare-fun m!542683 () Bool)

(assert (=> b!564229 m!542683))

(declare-fun m!542685 () Bool)

(assert (=> b!564225 m!542685))

(declare-fun m!542687 () Bool)

(assert (=> b!564225 m!542687))

(assert (=> b!564225 m!542687))

(declare-fun m!542689 () Bool)

(assert (=> b!564225 m!542689))

(declare-fun m!542691 () Bool)

(assert (=> start!51598 m!542691))

(declare-fun m!542693 () Bool)

(assert (=> start!51598 m!542693))

(declare-fun m!542695 () Bool)

(assert (=> b!564226 m!542695))

(declare-fun m!542697 () Bool)

(assert (=> b!564224 m!542697))

(declare-fun m!542699 () Bool)

(assert (=> b!564228 m!542699))

(assert (=> b!564228 m!542699))

(declare-fun m!542701 () Bool)

(assert (=> b!564228 m!542701))

(declare-fun m!542703 () Bool)

(assert (=> b!564223 m!542703))

(declare-fun m!542705 () Bool)

(assert (=> b!564230 m!542705))

(check-sat (not b!564228) (not start!51598) (not b!564230) (not b!564225) (not b!564224) (not b!564229) (not b!564223) (not b!564226))
(check-sat)

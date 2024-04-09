; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!51568 () Bool)

(assert start!51568)

(declare-fun b!563894 () Bool)

(declare-fun res!355200 () Bool)

(declare-fun e!324870 () Bool)

(assert (=> b!563894 (=> (not res!355200) (not e!324870))))

(declare-datatypes ((array!35387 0))(
  ( (array!35388 (arr!16990 (Array (_ BitVec 32) (_ BitVec 64))) (size!17354 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35387)

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35387 (_ BitVec 32)) Bool)

(assert (=> b!563894 (= res!355200 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!563895 () Bool)

(declare-fun e!324871 () Bool)

(assert (=> b!563895 (= e!324871 e!324870)))

(declare-fun res!355199 () Bool)

(assert (=> b!563895 (=> (not res!355199) (not e!324870))))

(declare-datatypes ((SeekEntryResult!5446 0))(
  ( (MissingZero!5446 (index!24011 (_ BitVec 32))) (Found!5446 (index!24012 (_ BitVec 32))) (Intermediate!5446 (undefined!6258 Bool) (index!24013 (_ BitVec 32)) (x!52920 (_ BitVec 32))) (Undefined!5446) (MissingVacant!5446 (index!24014 (_ BitVec 32))) )
))
(declare-fun lt!257399 () SeekEntryResult!5446)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!563895 (= res!355199 (or (= lt!257399 (MissingZero!5446 i!1132)) (= lt!257399 (MissingVacant!5446 i!1132))))))

(declare-fun k0!1914 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35387 (_ BitVec 32)) SeekEntryResult!5446)

(assert (=> b!563895 (= lt!257399 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!563896 () Bool)

(assert (=> b!563896 (= e!324870 false)))

(declare-fun lt!257398 () Bool)

(declare-datatypes ((List!11123 0))(
  ( (Nil!11120) (Cons!11119 (h!12122 (_ BitVec 64)) (t!17359 List!11123)) )
))
(declare-fun arrayNoDuplicates!0 (array!35387 (_ BitVec 32) List!11123) Bool)

(assert (=> b!563896 (= lt!257398 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11120))))

(declare-fun b!563897 () Bool)

(declare-fun res!355201 () Bool)

(assert (=> b!563897 (=> (not res!355201) (not e!324871))))

(declare-fun arrayContainsKey!0 (array!35387 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!563897 (= res!355201 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun res!355198 () Bool)

(assert (=> start!51568 (=> (not res!355198) (not e!324871))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51568 (= res!355198 (validMask!0 mask!3119))))

(assert (=> start!51568 e!324871))

(assert (=> start!51568 true))

(declare-fun array_inv!12764 (array!35387) Bool)

(assert (=> start!51568 (array_inv!12764 a!3118)))

(declare-fun b!563898 () Bool)

(declare-fun res!355197 () Bool)

(assert (=> b!563898 (=> (not res!355197) (not e!324871))))

(declare-fun j!142 () (_ BitVec 32))

(assert (=> b!563898 (= res!355197 (and (= (size!17354 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17354 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17354 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!563899 () Bool)

(declare-fun res!355196 () Bool)

(assert (=> b!563899 (=> (not res!355196) (not e!324871))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!563899 (= res!355196 (validKeyInArray!0 k0!1914))))

(declare-fun b!563900 () Bool)

(declare-fun res!355202 () Bool)

(assert (=> b!563900 (=> (not res!355202) (not e!324871))))

(assert (=> b!563900 (= res!355202 (validKeyInArray!0 (select (arr!16990 a!3118) j!142)))))

(assert (= (and start!51568 res!355198) b!563898))

(assert (= (and b!563898 res!355197) b!563900))

(assert (= (and b!563900 res!355202) b!563899))

(assert (= (and b!563899 res!355196) b!563897))

(assert (= (and b!563897 res!355201) b!563895))

(assert (= (and b!563895 res!355199) b!563894))

(assert (= (and b!563894 res!355200) b!563896))

(declare-fun m!542401 () Bool)

(assert (=> b!563900 m!542401))

(assert (=> b!563900 m!542401))

(declare-fun m!542403 () Bool)

(assert (=> b!563900 m!542403))

(declare-fun m!542405 () Bool)

(assert (=> b!563894 m!542405))

(declare-fun m!542407 () Bool)

(assert (=> start!51568 m!542407))

(declare-fun m!542409 () Bool)

(assert (=> start!51568 m!542409))

(declare-fun m!542411 () Bool)

(assert (=> b!563897 m!542411))

(declare-fun m!542413 () Bool)

(assert (=> b!563899 m!542413))

(declare-fun m!542415 () Bool)

(assert (=> b!563896 m!542415))

(declare-fun m!542417 () Bool)

(assert (=> b!563895 m!542417))

(check-sat (not b!563894) (not b!563897) (not start!51568) (not b!563900) (not b!563896) (not b!563895) (not b!563899))
(check-sat)

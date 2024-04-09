; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!51584 () Bool)

(assert start!51584)

(declare-fun res!355368 () Bool)

(declare-fun e!324943 () Bool)

(assert (=> start!51584 (=> (not res!355368) (not e!324943))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51584 (= res!355368 (validMask!0 mask!3119))))

(assert (=> start!51584 e!324943))

(assert (=> start!51584 true))

(declare-datatypes ((array!35403 0))(
  ( (array!35404 (arr!16998 (Array (_ BitVec 32) (_ BitVec 64))) (size!17362 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35403)

(declare-fun array_inv!12772 (array!35403) Bool)

(assert (=> start!51584 (array_inv!12772 a!3118)))

(declare-fun b!564064 () Bool)

(declare-fun res!355372 () Bool)

(assert (=> b!564064 (=> (not res!355372) (not e!324943))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!564064 (= res!355372 (and (= (size!17362 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17362 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17362 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!564065 () Bool)

(declare-fun res!355369 () Bool)

(declare-fun e!324941 () Bool)

(assert (=> b!564065 (=> (not res!355369) (not e!324941))))

(declare-datatypes ((List!11131 0))(
  ( (Nil!11128) (Cons!11127 (h!12130 (_ BitVec 64)) (t!17367 List!11131)) )
))
(declare-fun arrayNoDuplicates!0 (array!35403 (_ BitVec 32) List!11131) Bool)

(assert (=> b!564065 (= res!355369 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11128))))

(declare-fun b!564066 () Bool)

(declare-fun res!355371 () Bool)

(assert (=> b!564066 (=> (not res!355371) (not e!324941))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35403 (_ BitVec 32)) Bool)

(assert (=> b!564066 (= res!355371 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!564067 () Bool)

(assert (=> b!564067 (= e!324941 false)))

(declare-fun lt!257446 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!564067 (= lt!257446 (toIndex!0 (select (arr!16998 a!3118) j!142) mask!3119))))

(declare-fun b!564068 () Bool)

(declare-fun res!355370 () Bool)

(assert (=> b!564068 (=> (not res!355370) (not e!324943))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!564068 (= res!355370 (validKeyInArray!0 k!1914))))

(declare-fun b!564069 () Bool)

(declare-fun res!355366 () Bool)

(assert (=> b!564069 (=> (not res!355366) (not e!324943))))

(assert (=> b!564069 (= res!355366 (validKeyInArray!0 (select (arr!16998 a!3118) j!142)))))

(declare-fun b!564070 () Bool)

(assert (=> b!564070 (= e!324943 e!324941)))

(declare-fun res!355373 () Bool)

(assert (=> b!564070 (=> (not res!355373) (not e!324941))))

(declare-datatypes ((SeekEntryResult!5454 0))(
  ( (MissingZero!5454 (index!24043 (_ BitVec 32))) (Found!5454 (index!24044 (_ BitVec 32))) (Intermediate!5454 (undefined!6266 Bool) (index!24045 (_ BitVec 32)) (x!52952 (_ BitVec 32))) (Undefined!5454) (MissingVacant!5454 (index!24046 (_ BitVec 32))) )
))
(declare-fun lt!257447 () SeekEntryResult!5454)

(assert (=> b!564070 (= res!355373 (or (= lt!257447 (MissingZero!5454 i!1132)) (= lt!257447 (MissingVacant!5454 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35403 (_ BitVec 32)) SeekEntryResult!5454)

(assert (=> b!564070 (= lt!257447 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!564071 () Bool)

(declare-fun res!355367 () Bool)

(assert (=> b!564071 (=> (not res!355367) (not e!324943))))

(declare-fun arrayContainsKey!0 (array!35403 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!564071 (= res!355367 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(assert (= (and start!51584 res!355368) b!564064))

(assert (= (and b!564064 res!355372) b!564069))

(assert (= (and b!564069 res!355366) b!564068))

(assert (= (and b!564068 res!355370) b!564071))

(assert (= (and b!564071 res!355367) b!564070))

(assert (= (and b!564070 res!355373) b!564066))

(assert (= (and b!564066 res!355371) b!564065))

(assert (= (and b!564065 res!355369) b!564067))

(declare-fun m!542545 () Bool)

(assert (=> b!564070 m!542545))

(declare-fun m!542547 () Bool)

(assert (=> b!564068 m!542547))

(declare-fun m!542549 () Bool)

(assert (=> b!564071 m!542549))

(declare-fun m!542551 () Bool)

(assert (=> b!564065 m!542551))

(declare-fun m!542553 () Bool)

(assert (=> b!564066 m!542553))

(declare-fun m!542555 () Bool)

(assert (=> start!51584 m!542555))

(declare-fun m!542557 () Bool)

(assert (=> start!51584 m!542557))

(declare-fun m!542559 () Bool)

(assert (=> b!564069 m!542559))

(assert (=> b!564069 m!542559))

(declare-fun m!542561 () Bool)

(assert (=> b!564069 m!542561))

(assert (=> b!564067 m!542559))

(assert (=> b!564067 m!542559))

(declare-fun m!542563 () Bool)

(assert (=> b!564067 m!542563))

(push 1)


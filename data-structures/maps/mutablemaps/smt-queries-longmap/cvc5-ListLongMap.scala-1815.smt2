; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!32706 () Bool)

(assert start!32706)

(declare-fun b!326568 () Bool)

(declare-fun res!179762 () Bool)

(declare-fun e!201016 () Bool)

(assert (=> b!326568 (=> (not res!179762) (not e!201016))))

(declare-datatypes ((array!16739 0))(
  ( (array!16740 (arr!7921 (Array (_ BitVec 32) (_ BitVec 64))) (size!8273 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16739)

(declare-fun k!2497 () (_ BitVec 64))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun i!1250 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!3063 0))(
  ( (MissingZero!3063 (index!14428 (_ BitVec 32))) (Found!3063 (index!14429 (_ BitVec 32))) (Intermediate!3063 (undefined!3875 Bool) (index!14430 (_ BitVec 32)) (x!32640 (_ BitVec 32))) (Undefined!3063) (MissingVacant!3063 (index!14431 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16739 (_ BitVec 32)) SeekEntryResult!3063)

(assert (=> b!326568 (= res!179762 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!3063 i!1250)))))

(declare-fun b!326569 () Bool)

(declare-fun e!201015 () Bool)

(assert (=> b!326569 (= e!201016 e!201015)))

(declare-fun res!179766 () Bool)

(assert (=> b!326569 (=> (not res!179766) (not e!201015))))

(declare-fun lt!157351 () SeekEntryResult!3063)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16739 (_ BitVec 32)) SeekEntryResult!3063)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!326569 (= res!179766 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) lt!157351))))

(declare-fun resIndex!58 () (_ BitVec 32))

(declare-fun resX!58 () (_ BitVec 32))

(assert (=> b!326569 (= lt!157351 (Intermediate!3063 false resIndex!58 resX!58))))

(declare-fun b!326570 () Bool)

(declare-fun res!179760 () Bool)

(assert (=> b!326570 (=> (not res!179760) (not e!201016))))

(declare-fun arrayContainsKey!0 (array!16739 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!326570 (= res!179760 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(declare-fun b!326571 () Bool)

(declare-fun res!179765 () Bool)

(assert (=> b!326571 (=> (not res!179765) (not e!201016))))

(assert (=> b!326571 (= res!179765 (and (= (size!8273 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8273 a!3305))))))

(declare-fun b!326572 () Bool)

(declare-fun res!179758 () Bool)

(assert (=> b!326572 (=> (not res!179758) (not e!201015))))

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(assert (=> b!326572 (= res!179758 (and (= (select (arr!7921 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8273 a!3305))))))

(declare-fun b!326573 () Bool)

(declare-fun res!179757 () Bool)

(assert (=> b!326573 (=> (not res!179757) (not e!201016))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!326573 (= res!179757 (validKeyInArray!0 k!2497))))

(declare-fun b!326574 () Bool)

(declare-fun res!179761 () Bool)

(assert (=> b!326574 (=> (not res!179761) (not e!201015))))

(assert (=> b!326574 (= res!179761 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7921 a!3305) index!1840) k!2497)) (not (= x!1490 resX!58))))))

(declare-fun b!326575 () Bool)

(assert (=> b!326575 (= e!201015 (bvslt mask!3777 #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!10135 0))(
  ( (Unit!10136) )
))
(declare-fun lt!157352 () Unit!10135)

(declare-fun lemmaPutValidKeyAtRightPlaceThenFindsHelper2!0 (array!16739 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!10135)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!326575 (= lt!157352 (lemmaPutValidKeyAtRightPlaceThenFindsHelper2!0 a!3305 i!1250 k!2497 (bvadd #b00000000000000000000000000000001 x!1490) (nextIndex!0 index!1840 x!1490 mask!3777) resIndex!58 resX!58 mask!3777))))

(declare-fun res!179763 () Bool)

(assert (=> start!32706 (=> (not res!179763) (not e!201016))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32706 (= res!179763 (validMask!0 mask!3777))))

(assert (=> start!32706 e!201016))

(declare-fun array_inv!5875 (array!16739) Bool)

(assert (=> start!32706 (array_inv!5875 a!3305)))

(assert (=> start!32706 true))

(declare-fun b!326576 () Bool)

(declare-fun res!179759 () Bool)

(assert (=> b!326576 (=> (not res!179759) (not e!201016))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16739 (_ BitVec 32)) Bool)

(assert (=> b!326576 (= res!179759 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!326577 () Bool)

(declare-fun res!179764 () Bool)

(assert (=> b!326577 (=> (not res!179764) (not e!201015))))

(assert (=> b!326577 (= res!179764 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k!2497 a!3305 mask!3777) lt!157351))))

(assert (= (and start!32706 res!179763) b!326571))

(assert (= (and b!326571 res!179765) b!326573))

(assert (= (and b!326573 res!179757) b!326570))

(assert (= (and b!326570 res!179760) b!326568))

(assert (= (and b!326568 res!179762) b!326576))

(assert (= (and b!326576 res!179759) b!326569))

(assert (= (and b!326569 res!179766) b!326572))

(assert (= (and b!326572 res!179758) b!326577))

(assert (= (and b!326577 res!179764) b!326574))

(assert (= (and b!326574 res!179761) b!326575))

(declare-fun m!333115 () Bool)

(assert (=> b!326568 m!333115))

(declare-fun m!333117 () Bool)

(assert (=> b!326570 m!333117))

(declare-fun m!333119 () Bool)

(assert (=> b!326575 m!333119))

(assert (=> b!326575 m!333119))

(declare-fun m!333121 () Bool)

(assert (=> b!326575 m!333121))

(declare-fun m!333123 () Bool)

(assert (=> b!326577 m!333123))

(declare-fun m!333125 () Bool)

(assert (=> b!326576 m!333125))

(declare-fun m!333127 () Bool)

(assert (=> b!326574 m!333127))

(declare-fun m!333129 () Bool)

(assert (=> b!326569 m!333129))

(assert (=> b!326569 m!333129))

(declare-fun m!333131 () Bool)

(assert (=> b!326569 m!333131))

(declare-fun m!333133 () Bool)

(assert (=> b!326572 m!333133))

(declare-fun m!333135 () Bool)

(assert (=> b!326573 m!333135))

(declare-fun m!333137 () Bool)

(assert (=> start!32706 m!333137))

(declare-fun m!333139 () Bool)

(assert (=> start!32706 m!333139))

(push 1)

(assert (not b!326568))


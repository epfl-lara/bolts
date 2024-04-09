; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!32530 () Bool)

(assert start!32530)

(declare-fun b!325080 () Bool)

(declare-fun e!200420 () Bool)

(assert (=> b!325080 (= e!200420 false)))

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun lt!156932 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!325080 (= lt!156932 (nextIndex!0 index!1840 x!1490 mask!3777))))

(declare-fun res!178570 () Bool)

(declare-fun e!200421 () Bool)

(assert (=> start!32530 (=> (not res!178570) (not e!200421))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32530 (= res!178570 (validMask!0 mask!3777))))

(assert (=> start!32530 e!200421))

(declare-datatypes ((array!16665 0))(
  ( (array!16666 (arr!7887 (Array (_ BitVec 32) (_ BitVec 64))) (size!8239 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16665)

(declare-fun array_inv!5841 (array!16665) Bool)

(assert (=> start!32530 (array_inv!5841 a!3305)))

(assert (=> start!32530 true))

(declare-fun b!325081 () Bool)

(declare-fun res!178574 () Bool)

(assert (=> b!325081 (=> (not res!178574) (not e!200421))))

(declare-fun i!1250 () (_ BitVec 32))

(assert (=> b!325081 (= res!178574 (and (= (size!8239 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8239 a!3305))))))

(declare-fun b!325082 () Bool)

(assert (=> b!325082 (= e!200421 e!200420)))

(declare-fun res!178572 () Bool)

(assert (=> b!325082 (=> (not res!178572) (not e!200420))))

(declare-fun k!2497 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!3029 0))(
  ( (MissingZero!3029 (index!14292 (_ BitVec 32))) (Found!3029 (index!14293 (_ BitVec 32))) (Intermediate!3029 (undefined!3841 Bool) (index!14294 (_ BitVec 32)) (x!32492 (_ BitVec 32))) (Undefined!3029) (MissingVacant!3029 (index!14295 (_ BitVec 32))) )
))
(declare-fun lt!156931 () SeekEntryResult!3029)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16665 (_ BitVec 32)) SeekEntryResult!3029)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!325082 (= res!178572 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) lt!156931))))

(declare-fun resIndex!58 () (_ BitVec 32))

(declare-fun resX!58 () (_ BitVec 32))

(assert (=> b!325082 (= lt!156931 (Intermediate!3029 false resIndex!58 resX!58))))

(declare-fun b!325083 () Bool)

(declare-fun res!178576 () Bool)

(assert (=> b!325083 (=> (not res!178576) (not e!200421))))

(declare-fun arrayContainsKey!0 (array!16665 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!325083 (= res!178576 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(declare-fun b!325084 () Bool)

(declare-fun res!178578 () Bool)

(assert (=> b!325084 (=> (not res!178578) (not e!200421))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!325084 (= res!178578 (validKeyInArray!0 k!2497))))

(declare-fun b!325085 () Bool)

(declare-fun res!178569 () Bool)

(assert (=> b!325085 (=> (not res!178569) (not e!200420))))

(assert (=> b!325085 (= res!178569 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7887 a!3305) index!1840) k!2497)) (not (= x!1490 resX!58))))))

(declare-fun b!325086 () Bool)

(declare-fun res!178573 () Bool)

(assert (=> b!325086 (=> (not res!178573) (not e!200421))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16665 (_ BitVec 32)) SeekEntryResult!3029)

(assert (=> b!325086 (= res!178573 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!3029 i!1250)))))

(declare-fun b!325087 () Bool)

(declare-fun res!178575 () Bool)

(assert (=> b!325087 (=> (not res!178575) (not e!200420))))

(assert (=> b!325087 (= res!178575 (and (= (select (arr!7887 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8239 a!3305))))))

(declare-fun b!325088 () Bool)

(declare-fun res!178571 () Bool)

(assert (=> b!325088 (=> (not res!178571) (not e!200420))))

(assert (=> b!325088 (= res!178571 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k!2497 a!3305 mask!3777) lt!156931))))

(declare-fun b!325089 () Bool)

(declare-fun res!178577 () Bool)

(assert (=> b!325089 (=> (not res!178577) (not e!200421))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16665 (_ BitVec 32)) Bool)

(assert (=> b!325089 (= res!178577 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(assert (= (and start!32530 res!178570) b!325081))

(assert (= (and b!325081 res!178574) b!325084))

(assert (= (and b!325084 res!178578) b!325083))

(assert (= (and b!325083 res!178576) b!325086))

(assert (= (and b!325086 res!178573) b!325089))

(assert (= (and b!325089 res!178577) b!325082))

(assert (= (and b!325082 res!178572) b!325087))

(assert (= (and b!325087 res!178575) b!325088))

(assert (= (and b!325088 res!178571) b!325085))

(assert (= (and b!325085 res!178569) b!325080))

(declare-fun m!331999 () Bool)

(assert (=> b!325083 m!331999))

(declare-fun m!332001 () Bool)

(assert (=> b!325085 m!332001))

(declare-fun m!332003 () Bool)

(assert (=> b!325089 m!332003))

(declare-fun m!332005 () Bool)

(assert (=> b!325082 m!332005))

(assert (=> b!325082 m!332005))

(declare-fun m!332007 () Bool)

(assert (=> b!325082 m!332007))

(declare-fun m!332009 () Bool)

(assert (=> b!325086 m!332009))

(declare-fun m!332011 () Bool)

(assert (=> start!32530 m!332011))

(declare-fun m!332013 () Bool)

(assert (=> start!32530 m!332013))

(declare-fun m!332015 () Bool)

(assert (=> b!325080 m!332015))

(declare-fun m!332017 () Bool)

(assert (=> b!325088 m!332017))

(declare-fun m!332019 () Bool)

(assert (=> b!325084 m!332019))

(declare-fun m!332021 () Bool)

(assert (=> b!325087 m!332021))

(push 1)

(assert (not b!325088))

(assert (not b!325089))

(assert (not start!32530))

(assert (not b!325082))

(assert (not b!325080))


; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!31826 () Bool)

(assert start!31826)

(declare-fun b!317769 () Bool)

(declare-fun res!172508 () Bool)

(declare-fun e!197522 () Bool)

(assert (=> b!317769 (=> (not res!172508) (not e!197522))))

(declare-datatypes ((array!16195 0))(
  ( (array!16196 (arr!7661 (Array (_ BitVec 32) (_ BitVec 64))) (size!8013 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!16195)

(declare-fun k0!2441 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!16195 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!317769 (= res!172508 (not (arrayContainsKey!0 a!3293 k0!2441 #b00000000000000000000000000000000)))))

(declare-fun b!317770 () Bool)

(declare-fun e!197520 () Bool)

(declare-fun e!197521 () Bool)

(assert (=> b!317770 (= e!197520 e!197521)))

(declare-fun res!172513 () Bool)

(assert (=> b!317770 (=> (not res!172513) (not e!197521))))

(declare-datatypes ((SeekEntryResult!2812 0))(
  ( (MissingZero!2812 (index!13424 (_ BitVec 32))) (Found!2812 (index!13425 (_ BitVec 32))) (Intermediate!2812 (undefined!3624 Bool) (index!13426 (_ BitVec 32)) (x!31648 (_ BitVec 32))) (Undefined!2812) (MissingVacant!2812 (index!13427 (_ BitVec 32))) )
))
(declare-fun lt!155123 () SeekEntryResult!2812)

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun lt!155126 () SeekEntryResult!2812)

(assert (=> b!317770 (= res!172513 (and (= lt!155126 lt!155123) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7661 a!3293) index!1781) k0!2441)) (not (= x!1427 resX!52))))))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16195 (_ BitVec 32)) SeekEntryResult!2812)

(assert (=> b!317770 (= lt!155126 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 a!3293 mask!3709))))

(declare-fun b!317771 () Bool)

(declare-fun res!172511 () Bool)

(assert (=> b!317771 (=> (not res!172511) (not e!197522))))

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16195 (_ BitVec 32)) SeekEntryResult!2812)

(assert (=> b!317771 (= res!172511 (= (seekEntryOrOpen!0 k0!2441 a!3293 mask!3709) (MissingZero!2812 i!1240)))))

(declare-fun b!317772 () Bool)

(declare-fun res!172512 () Bool)

(assert (=> b!317772 (=> (not res!172512) (not e!197522))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!317772 (= res!172512 (validKeyInArray!0 k0!2441))))

(declare-fun b!317773 () Bool)

(declare-fun res!172509 () Bool)

(assert (=> b!317773 (=> (not res!172509) (not e!197522))))

(assert (=> b!317773 (= res!172509 (and (= (size!8013 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!8013 a!3293))))))

(declare-fun b!317774 () Bool)

(declare-fun res!172514 () Bool)

(assert (=> b!317774 (=> (not res!172514) (not e!197522))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16195 (_ BitVec 32)) Bool)

(assert (=> b!317774 (= res!172514 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun res!172507 () Bool)

(assert (=> start!31826 (=> (not res!172507) (not e!197522))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!31826 (= res!172507 (validMask!0 mask!3709))))

(assert (=> start!31826 e!197522))

(declare-fun array_inv!5615 (array!16195) Bool)

(assert (=> start!31826 (array_inv!5615 a!3293)))

(assert (=> start!31826 true))

(declare-fun b!317775 () Bool)

(declare-fun res!172510 () Bool)

(assert (=> b!317775 (=> (not res!172510) (not e!197520))))

(declare-fun resIndex!52 () (_ BitVec 32))

(assert (=> b!317775 (= res!172510 (and (= (select (arr!7661 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!8013 a!3293))))))

(declare-fun b!317776 () Bool)

(assert (=> b!317776 (= e!197521 (not true))))

(declare-fun e!197523 () Bool)

(assert (=> b!317776 e!197523))

(declare-fun res!172515 () Bool)

(assert (=> b!317776 (=> (not res!172515) (not e!197523))))

(declare-fun lt!155124 () (_ BitVec 32))

(assert (=> b!317776 (= res!172515 (= lt!155126 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!155124 k0!2441 a!3293 mask!3709)))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!317776 (= lt!155124 (nextIndex!0 index!1781 x!1427 mask!3709))))

(declare-fun b!317777 () Bool)

(assert (=> b!317777 (= e!197522 e!197520)))

(declare-fun res!172506 () Bool)

(assert (=> b!317777 (=> (not res!172506) (not e!197520))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!317777 (= res!172506 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2441 mask!3709) k0!2441 a!3293 mask!3709) lt!155123))))

(assert (=> b!317777 (= lt!155123 (Intermediate!2812 false resIndex!52 resX!52))))

(declare-fun b!317778 () Bool)

(declare-fun lt!155125 () array!16195)

(assert (=> b!317778 (= e!197523 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 lt!155125 mask!3709) (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!155124 k0!2441 lt!155125 mask!3709)))))

(assert (=> b!317778 (= lt!155125 (array!16196 (store (arr!7661 a!3293) i!1240 k0!2441) (size!8013 a!3293)))))

(assert (= (and start!31826 res!172507) b!317773))

(assert (= (and b!317773 res!172509) b!317772))

(assert (= (and b!317772 res!172512) b!317769))

(assert (= (and b!317769 res!172508) b!317771))

(assert (= (and b!317771 res!172511) b!317774))

(assert (= (and b!317774 res!172514) b!317777))

(assert (= (and b!317777 res!172506) b!317775))

(assert (= (and b!317775 res!172510) b!317770))

(assert (= (and b!317770 res!172513) b!317776))

(assert (= (and b!317776 res!172515) b!317778))

(declare-fun m!326481 () Bool)

(assert (=> b!317769 m!326481))

(declare-fun m!326483 () Bool)

(assert (=> start!31826 m!326483))

(declare-fun m!326485 () Bool)

(assert (=> start!31826 m!326485))

(declare-fun m!326487 () Bool)

(assert (=> b!317772 m!326487))

(declare-fun m!326489 () Bool)

(assert (=> b!317777 m!326489))

(assert (=> b!317777 m!326489))

(declare-fun m!326491 () Bool)

(assert (=> b!317777 m!326491))

(declare-fun m!326493 () Bool)

(assert (=> b!317775 m!326493))

(declare-fun m!326495 () Bool)

(assert (=> b!317778 m!326495))

(declare-fun m!326497 () Bool)

(assert (=> b!317778 m!326497))

(declare-fun m!326499 () Bool)

(assert (=> b!317778 m!326499))

(declare-fun m!326501 () Bool)

(assert (=> b!317774 m!326501))

(declare-fun m!326503 () Bool)

(assert (=> b!317771 m!326503))

(declare-fun m!326505 () Bool)

(assert (=> b!317776 m!326505))

(declare-fun m!326507 () Bool)

(assert (=> b!317776 m!326507))

(declare-fun m!326509 () Bool)

(assert (=> b!317770 m!326509))

(declare-fun m!326511 () Bool)

(assert (=> b!317770 m!326511))

(check-sat (not b!317771) (not b!317770) (not b!317778) (not b!317774) (not b!317769) (not b!317777) (not b!317772) (not start!31826) (not b!317776))
(check-sat)

; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!32390 () Bool)

(assert start!32390)

(declare-fun b!322569 () Bool)

(declare-fun e!199572 () Bool)

(declare-fun e!199576 () Bool)

(assert (=> b!322569 (= e!199572 e!199576)))

(declare-fun res!176520 () Bool)

(assert (=> b!322569 (=> (not res!176520) (not e!199576))))

(declare-fun k0!2497 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!2959 0))(
  ( (MissingZero!2959 (index!14012 (_ BitVec 32))) (Found!2959 (index!14013 (_ BitVec 32))) (Intermediate!2959 (undefined!3771 Bool) (index!14014 (_ BitVec 32)) (x!32238 (_ BitVec 32))) (Undefined!2959) (MissingVacant!2959 (index!14015 (_ BitVec 32))) )
))
(declare-fun lt!156471 () SeekEntryResult!2959)

(declare-fun mask!3777 () (_ BitVec 32))

(declare-datatypes ((array!16525 0))(
  ( (array!16526 (arr!7817 (Array (_ BitVec 32) (_ BitVec 64))) (size!8169 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16525)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16525 (_ BitVec 32)) SeekEntryResult!2959)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!322569 (= res!176520 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2497 mask!3777) k0!2497 a!3305 mask!3777) lt!156471))))

(declare-fun resIndex!58 () (_ BitVec 32))

(declare-fun resX!58 () (_ BitVec 32))

(assert (=> b!322569 (= lt!156471 (Intermediate!2959 false resIndex!58 resX!58))))

(declare-fun b!322570 () Bool)

(assert (=> b!322570 false))

(declare-datatypes ((Unit!9899 0))(
  ( (Unit!9900) )
))
(declare-fun lt!156472 () Unit!9899)

(declare-fun e!199575 () Unit!9899)

(assert (=> b!322570 (= lt!156472 e!199575)))

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(declare-fun c!50657 () Bool)

(get-info :version)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!322570 (= c!50657 ((_ is Intermediate!2959) (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1490) (nextIndex!0 index!1840 x!1490 mask!3777) k0!2497 a!3305 mask!3777)))))

(declare-fun e!199571 () Unit!9899)

(declare-fun Unit!9901 () Unit!9899)

(assert (=> b!322570 (= e!199571 Unit!9901)))

(declare-fun b!322571 () Bool)

(declare-fun res!176517 () Bool)

(assert (=> b!322571 (=> (not res!176517) (not e!199572))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16525 (_ BitVec 32)) Bool)

(assert (=> b!322571 (= res!176517 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!322572 () Bool)

(declare-fun Unit!9902 () Unit!9899)

(assert (=> b!322572 (= e!199575 Unit!9902)))

(declare-fun b!322574 () Bool)

(declare-fun res!176516 () Bool)

(assert (=> b!322574 (=> (not res!176516) (not e!199572))))

(declare-fun i!1250 () (_ BitVec 32))

(assert (=> b!322574 (= res!176516 (and (= (size!8169 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8169 a!3305))))))

(declare-fun b!322575 () Bool)

(declare-fun res!176518 () Bool)

(assert (=> b!322575 (=> (not res!176518) (not e!199576))))

(assert (=> b!322575 (= res!176518 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k0!2497 a!3305 mask!3777) lt!156471))))

(declare-fun b!322576 () Bool)

(declare-fun res!176515 () Bool)

(assert (=> b!322576 (=> (not res!176515) (not e!199576))))

(assert (=> b!322576 (= res!176515 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7817 a!3305) index!1840) k0!2497)) (= x!1490 resX!58)))))

(declare-fun b!322577 () Bool)

(assert (=> b!322577 (= e!199576 (not (or (not (= (select (arr!7817 a!3305) index!1840) #b1000000000000000000000000000000000000000000000000000000000000000)) (bvslt mask!3777 #b00000000000000000000000000000000) (bvslt index!1840 (bvadd #b00000000000000000000000000000001 mask!3777)))))))

(assert (=> b!322577 (= index!1840 resIndex!58)))

(declare-fun lt!156473 () Unit!9899)

(declare-fun e!199574 () Unit!9899)

(assert (=> b!322577 (= lt!156473 e!199574)))

(declare-fun c!50655 () Bool)

(assert (=> b!322577 (= c!50655 (not (= resIndex!58 index!1840)))))

(declare-fun b!322578 () Bool)

(declare-fun Unit!9903 () Unit!9899)

(assert (=> b!322578 (= e!199574 Unit!9903)))

(declare-fun b!322579 () Bool)

(declare-fun res!176514 () Bool)

(assert (=> b!322579 (=> (not res!176514) (not e!199576))))

(assert (=> b!322579 (= res!176514 (and (= (select (arr!7817 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8169 a!3305))))))

(declare-fun b!322580 () Bool)

(assert (=> b!322580 (= e!199574 e!199571)))

(declare-fun c!50656 () Bool)

(assert (=> b!322580 (= c!50656 (or (= (select (arr!7817 a!3305) index!1840) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!7817 a!3305) index!1840) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!322581 () Bool)

(declare-fun res!176521 () Bool)

(assert (=> b!322581 (=> (not res!176521) (not e!199572))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!322581 (= res!176521 (validKeyInArray!0 k0!2497))))

(declare-fun b!322582 () Bool)

(declare-fun res!176519 () Bool)

(assert (=> b!322582 (=> (not res!176519) (not e!199572))))

(declare-fun arrayContainsKey!0 (array!16525 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!322582 (= res!176519 (not (arrayContainsKey!0 a!3305 k0!2497 #b00000000000000000000000000000000)))))

(declare-fun b!322573 () Bool)

(assert (=> b!322573 false))

(declare-fun Unit!9904 () Unit!9899)

(assert (=> b!322573 (= e!199571 Unit!9904)))

(declare-fun res!176522 () Bool)

(assert (=> start!32390 (=> (not res!176522) (not e!199572))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32390 (= res!176522 (validMask!0 mask!3777))))

(assert (=> start!32390 e!199572))

(declare-fun array_inv!5771 (array!16525) Bool)

(assert (=> start!32390 (array_inv!5771 a!3305)))

(assert (=> start!32390 true))

(declare-fun b!322583 () Bool)

(declare-fun res!176523 () Bool)

(assert (=> b!322583 (=> (not res!176523) (not e!199572))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16525 (_ BitVec 32)) SeekEntryResult!2959)

(assert (=> b!322583 (= res!176523 (= (seekEntryOrOpen!0 k0!2497 a!3305 mask!3777) (MissingVacant!2959 i!1250)))))

(declare-fun b!322584 () Bool)

(declare-fun Unit!9905 () Unit!9899)

(assert (=> b!322584 (= e!199575 Unit!9905)))

(assert (=> b!322584 false))

(assert (= (and start!32390 res!176522) b!322574))

(assert (= (and b!322574 res!176516) b!322581))

(assert (= (and b!322581 res!176521) b!322582))

(assert (= (and b!322582 res!176519) b!322583))

(assert (= (and b!322583 res!176523) b!322571))

(assert (= (and b!322571 res!176517) b!322569))

(assert (= (and b!322569 res!176520) b!322579))

(assert (= (and b!322579 res!176514) b!322575))

(assert (= (and b!322575 res!176518) b!322576))

(assert (= (and b!322576 res!176515) b!322577))

(assert (= (and b!322577 c!50655) b!322580))

(assert (= (and b!322577 (not c!50655)) b!322578))

(assert (= (and b!322580 c!50656) b!322573))

(assert (= (and b!322580 (not c!50656)) b!322570))

(assert (= (and b!322570 c!50657) b!322572))

(assert (= (and b!322570 (not c!50657)) b!322584))

(declare-fun m!330297 () Bool)

(assert (=> b!322582 m!330297))

(declare-fun m!330299 () Bool)

(assert (=> b!322570 m!330299))

(assert (=> b!322570 m!330299))

(declare-fun m!330301 () Bool)

(assert (=> b!322570 m!330301))

(declare-fun m!330303 () Bool)

(assert (=> b!322579 m!330303))

(declare-fun m!330305 () Bool)

(assert (=> b!322571 m!330305))

(declare-fun m!330307 () Bool)

(assert (=> b!322581 m!330307))

(declare-fun m!330309 () Bool)

(assert (=> b!322577 m!330309))

(assert (=> b!322580 m!330309))

(declare-fun m!330311 () Bool)

(assert (=> b!322575 m!330311))

(assert (=> b!322576 m!330309))

(declare-fun m!330313 () Bool)

(assert (=> start!32390 m!330313))

(declare-fun m!330315 () Bool)

(assert (=> start!32390 m!330315))

(declare-fun m!330317 () Bool)

(assert (=> b!322569 m!330317))

(assert (=> b!322569 m!330317))

(declare-fun m!330319 () Bool)

(assert (=> b!322569 m!330319))

(declare-fun m!330321 () Bool)

(assert (=> b!322583 m!330321))

(check-sat (not b!322575) (not b!322570) (not b!322582) (not b!322581) (not b!322583) (not b!322569) (not start!32390) (not b!322571))
(check-sat)

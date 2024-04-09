; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!31574 () Bool)

(assert start!31574)

(declare-fun b!315485 () Bool)

(declare-datatypes ((Unit!9705 0))(
  ( (Unit!9706) )
))
(declare-fun e!196381 () Unit!9705)

(declare-fun e!196377 () Unit!9705)

(assert (=> b!315485 (= e!196381 e!196377)))

(declare-fun c!49903 () Bool)

(declare-datatypes ((array!16096 0))(
  ( (array!16097 (arr!7616 (Array (_ BitVec 32) (_ BitVec 64))) (size!7968 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!16096)

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!315485 (= c!49903 (or (= (select (arr!7616 a!3293) index!1781) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!7616 a!3293) index!1781) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!315486 () Bool)

(declare-fun res!170914 () Bool)

(declare-fun e!196378 () Bool)

(assert (=> b!315486 (=> (not res!170914) (not e!196378))))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun k0!2441 () (_ BitVec 64))

(declare-fun i!1240 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2767 0))(
  ( (MissingZero!2767 (index!13244 (_ BitVec 32))) (Found!2767 (index!13245 (_ BitVec 32))) (Intermediate!2767 (undefined!3579 Bool) (index!13246 (_ BitVec 32)) (x!31456 (_ BitVec 32))) (Undefined!2767) (MissingVacant!2767 (index!13247 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16096 (_ BitVec 32)) SeekEntryResult!2767)

(assert (=> b!315486 (= res!170914 (= (seekEntryOrOpen!0 k0!2441 a!3293 mask!3709) (MissingZero!2767 i!1240)))))

(declare-fun b!315487 () Bool)

(assert (=> b!315487 false))

(declare-fun lt!154318 () SeekEntryResult!2767)

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16096 (_ BitVec 32)) SeekEntryResult!2767)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!315487 (= lt!154318 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) (nextIndex!0 index!1781 x!1427 mask!3709) k0!2441 a!3293 mask!3709))))

(declare-fun Unit!9707 () Unit!9705)

(assert (=> b!315487 (= e!196377 Unit!9707)))

(declare-fun b!315488 () Bool)

(declare-fun res!170913 () Bool)

(assert (=> b!315488 (=> (not res!170913) (not e!196378))))

(assert (=> b!315488 (= res!170913 (and (= (size!7968 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7968 a!3293))))))

(declare-fun res!170917 () Bool)

(assert (=> start!31574 (=> (not res!170917) (not e!196378))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!31574 (= res!170917 (validMask!0 mask!3709))))

(assert (=> start!31574 e!196378))

(declare-fun array_inv!5570 (array!16096) Bool)

(assert (=> start!31574 (array_inv!5570 a!3293)))

(assert (=> start!31574 true))

(declare-fun b!315489 () Bool)

(declare-fun e!196380 () Bool)

(assert (=> b!315489 (= e!196378 e!196380)))

(declare-fun res!170921 () Bool)

(assert (=> b!315489 (=> (not res!170921) (not e!196380))))

(declare-fun lt!154317 () SeekEntryResult!2767)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!315489 (= res!170921 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2441 mask!3709) k0!2441 a!3293 mask!3709) lt!154317))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!315489 (= lt!154317 (Intermediate!2767 false resIndex!52 resX!52))))

(declare-fun b!315490 () Bool)

(assert (=> b!315490 (= e!196380 (not (= index!1781 resIndex!52)))))

(declare-fun lt!154319 () Unit!9705)

(assert (=> b!315490 (= lt!154319 e!196381)))

(declare-fun c!49904 () Bool)

(assert (=> b!315490 (= c!49904 (not (= resIndex!52 index!1781)))))

(declare-fun b!315491 () Bool)

(assert (=> b!315491 false))

(declare-fun Unit!9708 () Unit!9705)

(assert (=> b!315491 (= e!196377 Unit!9708)))

(declare-fun b!315492 () Bool)

(declare-fun res!170918 () Bool)

(assert (=> b!315492 (=> (not res!170918) (not e!196378))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!315492 (= res!170918 (validKeyInArray!0 k0!2441))))

(declare-fun b!315493 () Bool)

(declare-fun res!170920 () Bool)

(assert (=> b!315493 (=> (not res!170920) (not e!196380))))

(assert (=> b!315493 (= res!170920 (and (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7616 a!3293) index!1781) k0!2441)) (= x!1427 resX!52)))))

(declare-fun b!315494 () Bool)

(declare-fun res!170916 () Bool)

(assert (=> b!315494 (=> (not res!170916) (not e!196378))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16096 (_ BitVec 32)) Bool)

(assert (=> b!315494 (= res!170916 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!315495 () Bool)

(declare-fun res!170919 () Bool)

(assert (=> b!315495 (=> (not res!170919) (not e!196380))))

(assert (=> b!315495 (= res!170919 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 a!3293 mask!3709) lt!154317))))

(declare-fun b!315496 () Bool)

(declare-fun Unit!9709 () Unit!9705)

(assert (=> b!315496 (= e!196381 Unit!9709)))

(declare-fun b!315497 () Bool)

(declare-fun res!170922 () Bool)

(assert (=> b!315497 (=> (not res!170922) (not e!196378))))

(declare-fun arrayContainsKey!0 (array!16096 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!315497 (= res!170922 (not (arrayContainsKey!0 a!3293 k0!2441 #b00000000000000000000000000000000)))))

(declare-fun b!315498 () Bool)

(declare-fun res!170915 () Bool)

(assert (=> b!315498 (=> (not res!170915) (not e!196380))))

(assert (=> b!315498 (= res!170915 (and (= (select (arr!7616 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7968 a!3293))))))

(assert (= (and start!31574 res!170917) b!315488))

(assert (= (and b!315488 res!170913) b!315492))

(assert (= (and b!315492 res!170918) b!315497))

(assert (= (and b!315497 res!170922) b!315486))

(assert (= (and b!315486 res!170914) b!315494))

(assert (= (and b!315494 res!170916) b!315489))

(assert (= (and b!315489 res!170921) b!315498))

(assert (= (and b!315498 res!170915) b!315495))

(assert (= (and b!315495 res!170919) b!315493))

(assert (= (and b!315493 res!170920) b!315490))

(assert (= (and b!315490 c!49904) b!315485))

(assert (= (and b!315490 (not c!49904)) b!315496))

(assert (= (and b!315485 c!49903) b!315491))

(assert (= (and b!315485 (not c!49903)) b!315487))

(declare-fun m!324699 () Bool)

(assert (=> b!315486 m!324699))

(declare-fun m!324701 () Bool)

(assert (=> b!315493 m!324701))

(declare-fun m!324703 () Bool)

(assert (=> b!315492 m!324703))

(declare-fun m!324705 () Bool)

(assert (=> b!315487 m!324705))

(assert (=> b!315487 m!324705))

(declare-fun m!324707 () Bool)

(assert (=> b!315487 m!324707))

(assert (=> b!315485 m!324701))

(declare-fun m!324709 () Bool)

(assert (=> b!315497 m!324709))

(declare-fun m!324711 () Bool)

(assert (=> b!315494 m!324711))

(declare-fun m!324713 () Bool)

(assert (=> start!31574 m!324713))

(declare-fun m!324715 () Bool)

(assert (=> start!31574 m!324715))

(declare-fun m!324717 () Bool)

(assert (=> b!315495 m!324717))

(declare-fun m!324719 () Bool)

(assert (=> b!315489 m!324719))

(assert (=> b!315489 m!324719))

(declare-fun m!324721 () Bool)

(assert (=> b!315489 m!324721))

(declare-fun m!324723 () Bool)

(assert (=> b!315498 m!324723))

(check-sat (not b!315495) (not b!315487) (not b!315492) (not b!315486) (not b!315494) (not start!31574) (not b!315489) (not b!315497))
(check-sat)

; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!31082 () Bool)

(assert start!31082)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun b!312504 () Bool)

(declare-fun e!194841 () Bool)

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!312504 (= e!194841 (or (bvslt mask!3709 #b00000000000000000000000000000000) (bvsge index!1781 (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsle x!1427 #b01111111111111111111111111111110)))))

(declare-datatypes ((SeekEntryResult!2722 0))(
  ( (MissingZero!2722 (index!13064 (_ BitVec 32))) (Found!2722 (index!13065 (_ BitVec 32))) (Intermediate!2722 (undefined!3534 Bool) (index!13066 (_ BitVec 32)) (x!31234 (_ BitVec 32))) (Undefined!2722) (MissingVacant!2722 (index!13067 (_ BitVec 32))) )
))
(declare-fun lt!153203 () SeekEntryResult!2722)

(declare-fun lt!153209 () SeekEntryResult!2722)

(assert (=> b!312504 (= lt!153203 lt!153209)))

(declare-datatypes ((array!15982 0))(
  ( (array!15983 (arr!7571 (Array (_ BitVec 32) (_ BitVec 64))) (size!7923 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15982)

(declare-fun lt!153206 () (_ BitVec 32))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun k0!2441 () (_ BitVec 64))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(declare-datatypes ((Unit!9642 0))(
  ( (Unit!9643) )
))
(declare-fun lt!153207 () Unit!9642)

(declare-fun lemmaPutValidKeyAtRightPlaceThenFindsHelper1!0 (array!15982 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!9642)

(assert (=> b!312504 (= lt!153207 (lemmaPutValidKeyAtRightPlaceThenFindsHelper1!0 a!3293 i!1240 k0!2441 (bvadd #b00000000000000000000000000000001 x!1427) lt!153206 resIndex!52 resX!52 mask!3709))))

(declare-fun b!312505 () Bool)

(declare-fun res!169116 () Bool)

(declare-fun e!194843 () Bool)

(assert (=> b!312505 (=> (not res!169116) (not e!194843))))

(declare-fun arrayContainsKey!0 (array!15982 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!312505 (= res!169116 (not (arrayContainsKey!0 a!3293 k0!2441 #b00000000000000000000000000000000)))))

(declare-fun b!312506 () Bool)

(declare-fun e!194845 () Bool)

(assert (=> b!312506 (= e!194845 (not e!194841))))

(declare-fun res!169117 () Bool)

(assert (=> b!312506 (=> res!169117 e!194841)))

(declare-fun lt!153204 () SeekEntryResult!2722)

(assert (=> b!312506 (= res!169117 (or (bvsgt (bvadd #b00000000000000000000000000000001 x!1427) resX!52) (bvslt (bvadd #b00000000000000000000000000000001 x!1427) #b00000000000000000000000000000000) (bvslt lt!153206 #b00000000000000000000000000000000) (bvsge lt!153206 (size!7923 a!3293)) (not (= lt!153209 lt!153204))))))

(declare-fun lt!153208 () SeekEntryResult!2722)

(assert (=> b!312506 (= lt!153208 lt!153203)))

(declare-fun lt!153205 () array!15982)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15982 (_ BitVec 32)) SeekEntryResult!2722)

(assert (=> b!312506 (= lt!153203 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!153206 k0!2441 lt!153205 mask!3709))))

(assert (=> b!312506 (= lt!153208 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 lt!153205 mask!3709))))

(assert (=> b!312506 (= lt!153205 (array!15983 (store (arr!7571 a!3293) i!1240 k0!2441) (size!7923 a!3293)))))

(declare-fun lt!153202 () SeekEntryResult!2722)

(assert (=> b!312506 (= lt!153202 lt!153209)))

(assert (=> b!312506 (= lt!153209 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!153206 k0!2441 a!3293 mask!3709))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!312506 (= lt!153206 (nextIndex!0 index!1781 x!1427 mask!3709))))

(declare-fun b!312507 () Bool)

(declare-fun e!194844 () Bool)

(assert (=> b!312507 (= e!194844 e!194845)))

(declare-fun res!169119 () Bool)

(assert (=> b!312507 (=> (not res!169119) (not e!194845))))

(assert (=> b!312507 (= res!169119 (and (= lt!153202 lt!153204) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7571 a!3293) index!1781) k0!2441)) (not (= x!1427 resX!52))))))

(assert (=> b!312507 (= lt!153202 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 a!3293 mask!3709))))

(declare-fun b!312508 () Bool)

(declare-fun res!169118 () Bool)

(assert (=> b!312508 (=> (not res!169118) (not e!194843))))

(assert (=> b!312508 (= res!169118 (and (= (size!7923 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7923 a!3293))))))

(declare-fun b!312509 () Bool)

(declare-fun res!169121 () Bool)

(assert (=> b!312509 (=> (not res!169121) (not e!194844))))

(assert (=> b!312509 (= res!169121 (and (= (select (arr!7571 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7923 a!3293))))))

(declare-fun res!169125 () Bool)

(assert (=> start!31082 (=> (not res!169125) (not e!194843))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!31082 (= res!169125 (validMask!0 mask!3709))))

(assert (=> start!31082 e!194843))

(declare-fun array_inv!5525 (array!15982) Bool)

(assert (=> start!31082 (array_inv!5525 a!3293)))

(assert (=> start!31082 true))

(declare-fun b!312510 () Bool)

(assert (=> b!312510 (= e!194843 e!194844)))

(declare-fun res!169122 () Bool)

(assert (=> b!312510 (=> (not res!169122) (not e!194844))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!312510 (= res!169122 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2441 mask!3709) k0!2441 a!3293 mask!3709) lt!153204))))

(assert (=> b!312510 (= lt!153204 (Intermediate!2722 false resIndex!52 resX!52))))

(declare-fun b!312511 () Bool)

(declare-fun res!169120 () Bool)

(assert (=> b!312511 (=> (not res!169120) (not e!194843))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!312511 (= res!169120 (validKeyInArray!0 k0!2441))))

(declare-fun b!312512 () Bool)

(declare-fun res!169124 () Bool)

(assert (=> b!312512 (=> (not res!169124) (not e!194843))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15982 (_ BitVec 32)) SeekEntryResult!2722)

(assert (=> b!312512 (= res!169124 (= (seekEntryOrOpen!0 k0!2441 a!3293 mask!3709) (MissingZero!2722 i!1240)))))

(declare-fun b!312513 () Bool)

(declare-fun res!169123 () Bool)

(assert (=> b!312513 (=> (not res!169123) (not e!194843))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15982 (_ BitVec 32)) Bool)

(assert (=> b!312513 (= res!169123 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(assert (= (and start!31082 res!169125) b!312508))

(assert (= (and b!312508 res!169118) b!312511))

(assert (= (and b!312511 res!169120) b!312505))

(assert (= (and b!312505 res!169116) b!312512))

(assert (= (and b!312512 res!169124) b!312513))

(assert (= (and b!312513 res!169123) b!312510))

(assert (= (and b!312510 res!169122) b!312509))

(assert (= (and b!312509 res!169121) b!312507))

(assert (= (and b!312507 res!169119) b!312506))

(assert (= (and b!312506 (not res!169117)) b!312504))

(declare-fun m!322667 () Bool)

(assert (=> start!31082 m!322667))

(declare-fun m!322669 () Bool)

(assert (=> start!31082 m!322669))

(declare-fun m!322671 () Bool)

(assert (=> b!312507 m!322671))

(declare-fun m!322673 () Bool)

(assert (=> b!312507 m!322673))

(declare-fun m!322675 () Bool)

(assert (=> b!312505 m!322675))

(declare-fun m!322677 () Bool)

(assert (=> b!312509 m!322677))

(declare-fun m!322679 () Bool)

(assert (=> b!312506 m!322679))

(declare-fun m!322681 () Bool)

(assert (=> b!312506 m!322681))

(declare-fun m!322683 () Bool)

(assert (=> b!312506 m!322683))

(declare-fun m!322685 () Bool)

(assert (=> b!312506 m!322685))

(declare-fun m!322687 () Bool)

(assert (=> b!312506 m!322687))

(declare-fun m!322689 () Bool)

(assert (=> b!312511 m!322689))

(declare-fun m!322691 () Bool)

(assert (=> b!312504 m!322691))

(declare-fun m!322693 () Bool)

(assert (=> b!312513 m!322693))

(declare-fun m!322695 () Bool)

(assert (=> b!312510 m!322695))

(assert (=> b!312510 m!322695))

(declare-fun m!322697 () Bool)

(assert (=> b!312510 m!322697))

(declare-fun m!322699 () Bool)

(assert (=> b!312512 m!322699))

(check-sat (not b!312510) (not b!312505) (not b!312513) (not b!312504) (not b!312507) (not b!312506) (not b!312511) (not b!312512) (not start!31082))
(check-sat)

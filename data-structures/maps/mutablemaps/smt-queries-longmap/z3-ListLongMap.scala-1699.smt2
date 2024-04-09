; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!31088 () Bool)

(assert start!31088)

(declare-fun b!312594 () Bool)

(declare-fun e!194888 () Bool)

(declare-fun e!194887 () Bool)

(assert (=> b!312594 (= e!194888 e!194887)))

(declare-fun res!169211 () Bool)

(assert (=> b!312594 (=> (not res!169211) (not e!194887))))

(declare-datatypes ((array!15988 0))(
  ( (array!15989 (arr!7574 (Array (_ BitVec 32) (_ BitVec 64))) (size!7926 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15988)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun k0!2441 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!2725 0))(
  ( (MissingZero!2725 (index!13076 (_ BitVec 32))) (Found!2725 (index!13077 (_ BitVec 32))) (Intermediate!2725 (undefined!3537 Bool) (index!13078 (_ BitVec 32)) (x!31245 (_ BitVec 32))) (Undefined!2725) (MissingVacant!2725 (index!13079 (_ BitVec 32))) )
))
(declare-fun lt!153276 () SeekEntryResult!2725)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15988 (_ BitVec 32)) SeekEntryResult!2725)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!312594 (= res!169211 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2441 mask!3709) k0!2441 a!3293 mask!3709) lt!153276))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!312594 (= lt!153276 (Intermediate!2725 false resIndex!52 resX!52))))

(declare-fun b!312595 () Bool)

(declare-fun res!169208 () Bool)

(assert (=> b!312595 (=> (not res!169208) (not e!194888))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!312595 (= res!169208 (validKeyInArray!0 k0!2441))))

(declare-fun res!169213 () Bool)

(assert (=> start!31088 (=> (not res!169213) (not e!194888))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!31088 (= res!169213 (validMask!0 mask!3709))))

(assert (=> start!31088 e!194888))

(declare-fun array_inv!5528 (array!15988) Bool)

(assert (=> start!31088 (array_inv!5528 a!3293)))

(assert (=> start!31088 true))

(declare-fun b!312596 () Bool)

(declare-fun res!169207 () Bool)

(assert (=> b!312596 (=> (not res!169207) (not e!194887))))

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!312596 (= res!169207 (and (= (select (arr!7574 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7926 a!3293))))))

(declare-fun b!312597 () Bool)

(declare-fun e!194890 () Bool)

(declare-fun e!194889 () Bool)

(assert (=> b!312597 (= e!194890 (not e!194889))))

(declare-fun res!169206 () Bool)

(assert (=> b!312597 (=> res!169206 e!194889)))

(declare-fun lt!153281 () (_ BitVec 32))

(declare-fun lt!153277 () SeekEntryResult!2725)

(assert (=> b!312597 (= res!169206 (or (bvsgt (bvadd #b00000000000000000000000000000001 x!1427) resX!52) (bvslt (bvadd #b00000000000000000000000000000001 x!1427) #b00000000000000000000000000000000) (bvslt lt!153281 #b00000000000000000000000000000000) (bvsge lt!153281 (size!7926 a!3293)) (not (= lt!153277 lt!153276))))))

(declare-fun lt!153278 () SeekEntryResult!2725)

(declare-fun lt!153280 () SeekEntryResult!2725)

(assert (=> b!312597 (= lt!153278 lt!153280)))

(declare-fun lt!153274 () array!15988)

(assert (=> b!312597 (= lt!153280 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!153281 k0!2441 lt!153274 mask!3709))))

(assert (=> b!312597 (= lt!153278 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 lt!153274 mask!3709))))

(assert (=> b!312597 (= lt!153274 (array!15989 (store (arr!7574 a!3293) i!1240 k0!2441) (size!7926 a!3293)))))

(declare-fun lt!153279 () SeekEntryResult!2725)

(assert (=> b!312597 (= lt!153279 lt!153277)))

(assert (=> b!312597 (= lt!153277 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!153281 k0!2441 a!3293 mask!3709))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!312597 (= lt!153281 (nextIndex!0 index!1781 x!1427 mask!3709))))

(declare-fun b!312598 () Bool)

(declare-fun res!169209 () Bool)

(assert (=> b!312598 (=> (not res!169209) (not e!194888))))

(declare-fun arrayContainsKey!0 (array!15988 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!312598 (= res!169209 (not (arrayContainsKey!0 a!3293 k0!2441 #b00000000000000000000000000000000)))))

(declare-fun b!312599 () Bool)

(declare-fun res!169210 () Bool)

(assert (=> b!312599 (=> (not res!169210) (not e!194888))))

(assert (=> b!312599 (= res!169210 (and (= (size!7926 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7926 a!3293))))))

(declare-fun b!312600 () Bool)

(declare-fun res!169214 () Bool)

(assert (=> b!312600 (=> (not res!169214) (not e!194888))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15988 (_ BitVec 32)) Bool)

(assert (=> b!312600 (= res!169214 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!312601 () Bool)

(assert (=> b!312601 (= e!194887 e!194890)))

(declare-fun res!169212 () Bool)

(assert (=> b!312601 (=> (not res!169212) (not e!194890))))

(assert (=> b!312601 (= res!169212 (and (= lt!153279 lt!153276) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7574 a!3293) index!1781) k0!2441)) (not (= x!1427 resX!52))))))

(assert (=> b!312601 (= lt!153279 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 a!3293 mask!3709))))

(declare-fun b!312602 () Bool)

(assert (=> b!312602 (= e!194889 true)))

(assert (=> b!312602 (= lt!153280 lt!153277)))

(declare-datatypes ((Unit!9648 0))(
  ( (Unit!9649) )
))
(declare-fun lt!153275 () Unit!9648)

(declare-fun lemmaPutValidKeyAtRightPlaceThenFindsHelper1!0 (array!15988 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!9648)

(assert (=> b!312602 (= lt!153275 (lemmaPutValidKeyAtRightPlaceThenFindsHelper1!0 a!3293 i!1240 k0!2441 (bvadd #b00000000000000000000000000000001 x!1427) lt!153281 resIndex!52 resX!52 mask!3709))))

(declare-fun b!312603 () Bool)

(declare-fun res!169215 () Bool)

(assert (=> b!312603 (=> (not res!169215) (not e!194888))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15988 (_ BitVec 32)) SeekEntryResult!2725)

(assert (=> b!312603 (= res!169215 (= (seekEntryOrOpen!0 k0!2441 a!3293 mask!3709) (MissingZero!2725 i!1240)))))

(assert (= (and start!31088 res!169213) b!312599))

(assert (= (and b!312599 res!169210) b!312595))

(assert (= (and b!312595 res!169208) b!312598))

(assert (= (and b!312598 res!169209) b!312603))

(assert (= (and b!312603 res!169215) b!312600))

(assert (= (and b!312600 res!169214) b!312594))

(assert (= (and b!312594 res!169211) b!312596))

(assert (= (and b!312596 res!169207) b!312601))

(assert (= (and b!312601 res!169212) b!312597))

(assert (= (and b!312597 (not res!169206)) b!312602))

(declare-fun m!322769 () Bool)

(assert (=> start!31088 m!322769))

(declare-fun m!322771 () Bool)

(assert (=> start!31088 m!322771))

(declare-fun m!322773 () Bool)

(assert (=> b!312601 m!322773))

(declare-fun m!322775 () Bool)

(assert (=> b!312601 m!322775))

(declare-fun m!322777 () Bool)

(assert (=> b!312602 m!322777))

(declare-fun m!322779 () Bool)

(assert (=> b!312598 m!322779))

(declare-fun m!322781 () Bool)

(assert (=> b!312597 m!322781))

(declare-fun m!322783 () Bool)

(assert (=> b!312597 m!322783))

(declare-fun m!322785 () Bool)

(assert (=> b!312597 m!322785))

(declare-fun m!322787 () Bool)

(assert (=> b!312597 m!322787))

(declare-fun m!322789 () Bool)

(assert (=> b!312597 m!322789))

(declare-fun m!322791 () Bool)

(assert (=> b!312594 m!322791))

(assert (=> b!312594 m!322791))

(declare-fun m!322793 () Bool)

(assert (=> b!312594 m!322793))

(declare-fun m!322795 () Bool)

(assert (=> b!312595 m!322795))

(declare-fun m!322797 () Bool)

(assert (=> b!312596 m!322797))

(declare-fun m!322799 () Bool)

(assert (=> b!312603 m!322799))

(declare-fun m!322801 () Bool)

(assert (=> b!312600 m!322801))

(check-sat (not b!312595) (not b!312601) (not start!31088) (not b!312598) (not b!312602) (not b!312603) (not b!312597) (not b!312594) (not b!312600))
(check-sat)

; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!32702 () Bool)

(assert start!32702)

(declare-fun b!326508 () Bool)

(declare-fun res!179703 () Bool)

(declare-fun e!200996 () Bool)

(assert (=> b!326508 (=> (not res!179703) (not e!200996))))

(declare-datatypes ((array!16735 0))(
  ( (array!16736 (arr!7919 (Array (_ BitVec 32) (_ BitVec 64))) (size!8271 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16735)

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16735 (_ BitVec 32)) Bool)

(assert (=> b!326508 (= res!179703 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!326509 () Bool)

(declare-fun e!200997 () Bool)

(assert (=> b!326509 (= e!200996 e!200997)))

(declare-fun res!179705 () Bool)

(assert (=> b!326509 (=> (not res!179705) (not e!200997))))

(declare-fun k0!2497 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!3061 0))(
  ( (MissingZero!3061 (index!14420 (_ BitVec 32))) (Found!3061 (index!14421 (_ BitVec 32))) (Intermediate!3061 (undefined!3873 Bool) (index!14422 (_ BitVec 32)) (x!32630 (_ BitVec 32))) (Undefined!3061) (MissingVacant!3061 (index!14423 (_ BitVec 32))) )
))
(declare-fun lt!157340 () SeekEntryResult!3061)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16735 (_ BitVec 32)) SeekEntryResult!3061)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!326509 (= res!179705 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2497 mask!3777) k0!2497 a!3305 mask!3777) lt!157340))))

(declare-fun resIndex!58 () (_ BitVec 32))

(declare-fun resX!58 () (_ BitVec 32))

(assert (=> b!326509 (= lt!157340 (Intermediate!3061 false resIndex!58 resX!58))))

(declare-fun b!326510 () Bool)

(declare-fun res!179704 () Bool)

(assert (=> b!326510 (=> (not res!179704) (not e!200996))))

(declare-fun i!1250 () (_ BitVec 32))

(assert (=> b!326510 (= res!179704 (and (= (size!8271 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8271 a!3305))))))

(declare-fun b!326511 () Bool)

(declare-fun res!179701 () Bool)

(assert (=> b!326511 (=> (not res!179701) (not e!200996))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!326511 (= res!179701 (validKeyInArray!0 k0!2497))))

(declare-fun b!326512 () Bool)

(declare-fun res!179706 () Bool)

(assert (=> b!326512 (=> (not res!179706) (not e!200996))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16735 (_ BitVec 32)) SeekEntryResult!3061)

(assert (=> b!326512 (= res!179706 (= (seekEntryOrOpen!0 k0!2497 a!3305 mask!3777) (MissingVacant!3061 i!1250)))))

(declare-fun b!326513 () Bool)

(declare-fun res!179700 () Bool)

(assert (=> b!326513 (=> (not res!179700) (not e!200997))))

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(assert (=> b!326513 (= res!179700 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k0!2497 a!3305 mask!3777) lt!157340))))

(declare-fun b!326514 () Bool)

(assert (=> b!326514 (= e!200997 false)))

(declare-datatypes ((Unit!10131 0))(
  ( (Unit!10132) )
))
(declare-fun lt!157339 () Unit!10131)

(declare-fun lemmaPutValidKeyAtRightPlaceThenFindsHelper2!0 (array!16735 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!10131)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!326514 (= lt!157339 (lemmaPutValidKeyAtRightPlaceThenFindsHelper2!0 a!3305 i!1250 k0!2497 (bvadd #b00000000000000000000000000000001 x!1490) (nextIndex!0 index!1840 x!1490 mask!3777) resIndex!58 resX!58 mask!3777))))

(declare-fun b!326515 () Bool)

(declare-fun res!179698 () Bool)

(assert (=> b!326515 (=> (not res!179698) (not e!200996))))

(declare-fun arrayContainsKey!0 (array!16735 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!326515 (= res!179698 (not (arrayContainsKey!0 a!3305 k0!2497 #b00000000000000000000000000000000)))))

(declare-fun b!326516 () Bool)

(declare-fun res!179702 () Bool)

(assert (=> b!326516 (=> (not res!179702) (not e!200997))))

(assert (=> b!326516 (= res!179702 (and (= (select (arr!7919 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8271 a!3305))))))

(declare-fun b!326517 () Bool)

(declare-fun res!179697 () Bool)

(assert (=> b!326517 (=> (not res!179697) (not e!200997))))

(assert (=> b!326517 (= res!179697 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7919 a!3305) index!1840) k0!2497)) (not (= x!1490 resX!58))))))

(declare-fun res!179699 () Bool)

(assert (=> start!32702 (=> (not res!179699) (not e!200996))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32702 (= res!179699 (validMask!0 mask!3777))))

(assert (=> start!32702 e!200996))

(declare-fun array_inv!5873 (array!16735) Bool)

(assert (=> start!32702 (array_inv!5873 a!3305)))

(assert (=> start!32702 true))

(assert (= (and start!32702 res!179699) b!326510))

(assert (= (and b!326510 res!179704) b!326511))

(assert (= (and b!326511 res!179701) b!326515))

(assert (= (and b!326515 res!179698) b!326512))

(assert (= (and b!326512 res!179706) b!326508))

(assert (= (and b!326508 res!179703) b!326509))

(assert (= (and b!326509 res!179705) b!326516))

(assert (= (and b!326516 res!179702) b!326513))

(assert (= (and b!326513 res!179700) b!326517))

(assert (= (and b!326517 res!179697) b!326514))

(declare-fun m!333063 () Bool)

(assert (=> b!326508 m!333063))

(declare-fun m!333065 () Bool)

(assert (=> b!326516 m!333065))

(declare-fun m!333067 () Bool)

(assert (=> b!326511 m!333067))

(declare-fun m!333069 () Bool)

(assert (=> b!326509 m!333069))

(assert (=> b!326509 m!333069))

(declare-fun m!333071 () Bool)

(assert (=> b!326509 m!333071))

(declare-fun m!333073 () Bool)

(assert (=> b!326513 m!333073))

(declare-fun m!333075 () Bool)

(assert (=> start!32702 m!333075))

(declare-fun m!333077 () Bool)

(assert (=> start!32702 m!333077))

(declare-fun m!333079 () Bool)

(assert (=> b!326514 m!333079))

(assert (=> b!326514 m!333079))

(declare-fun m!333081 () Bool)

(assert (=> b!326514 m!333081))

(declare-fun m!333083 () Bool)

(assert (=> b!326512 m!333083))

(declare-fun m!333085 () Bool)

(assert (=> b!326517 m!333085))

(declare-fun m!333087 () Bool)

(assert (=> b!326515 m!333087))

(check-sat (not b!326511) (not b!326514) (not b!326515) (not b!326508) (not start!32702) (not b!326512) (not b!326513) (not b!326509))
(check-sat)

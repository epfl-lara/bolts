; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!45282 () Bool)

(assert start!45282)

(declare-fun b!497116 () Bool)

(declare-fun res!299661 () Bool)

(declare-fun e!291412 () Bool)

(assert (=> b!497116 (=> (not res!299661) (not e!291412))))

(declare-datatypes ((array!32130 0))(
  ( (array!32131 (arr!15445 (Array (_ BitVec 32) (_ BitVec 64))) (size!15809 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32130)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32130 (_ BitVec 32)) Bool)

(assert (=> b!497116 (= res!299661 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!497117 () Bool)

(declare-fun res!299656 () Bool)

(declare-fun e!291415 () Bool)

(assert (=> b!497117 (=> (not res!299656) (not e!291415))))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!497117 (= res!299656 (validKeyInArray!0 (select (arr!15445 a!3235) j!176)))))

(declare-fun b!497118 () Bool)

(declare-fun e!291413 () Bool)

(assert (=> b!497118 (= e!291413 true)))

(declare-datatypes ((SeekEntryResult!3919 0))(
  ( (MissingZero!3919 (index!17855 (_ BitVec 32))) (Found!3919 (index!17856 (_ BitVec 32))) (Intermediate!3919 (undefined!4731 Bool) (index!17857 (_ BitVec 32)) (x!46934 (_ BitVec 32))) (Undefined!3919) (MissingVacant!3919 (index!17858 (_ BitVec 32))) )
))
(declare-fun lt!225104 () SeekEntryResult!3919)

(assert (=> b!497118 (and (bvslt (x!46934 lt!225104) #b01111111111111111111111111111110) (or (= (select (arr!15445 a!3235) (index!17857 lt!225104)) (select (arr!15445 a!3235) j!176)) (= (select (arr!15445 a!3235) (index!17857 lt!225104)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15445 a!3235) (index!17857 lt!225104)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!497119 () Bool)

(declare-fun res!299655 () Bool)

(assert (=> b!497119 (=> (not res!299655) (not e!291415))))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!497119 (= res!299655 (and (= (size!15809 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15809 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15809 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!497120 () Bool)

(assert (=> b!497120 (= e!291415 e!291412)))

(declare-fun res!299658 () Bool)

(assert (=> b!497120 (=> (not res!299658) (not e!291412))))

(declare-fun lt!225101 () SeekEntryResult!3919)

(assert (=> b!497120 (= res!299658 (or (= lt!225101 (MissingZero!3919 i!1204)) (= lt!225101 (MissingVacant!3919 i!1204))))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32130 (_ BitVec 32)) SeekEntryResult!3919)

(assert (=> b!497120 (= lt!225101 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!497122 () Bool)

(declare-fun e!291414 () Bool)

(assert (=> b!497122 (= e!291414 (= (seekEntryOrOpen!0 (select (arr!15445 a!3235) j!176) a!3235 mask!3524) (Found!3919 j!176)))))

(declare-fun b!497123 () Bool)

(declare-fun res!299663 () Bool)

(assert (=> b!497123 (=> (not res!299663) (not e!291412))))

(declare-datatypes ((List!9656 0))(
  ( (Nil!9653) (Cons!9652 (h!10523 (_ BitVec 64)) (t!15892 List!9656)) )
))
(declare-fun arrayNoDuplicates!0 (array!32130 (_ BitVec 32) List!9656) Bool)

(assert (=> b!497123 (= res!299663 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9653))))

(declare-fun b!497124 () Bool)

(declare-fun res!299653 () Bool)

(assert (=> b!497124 (=> (not res!299653) (not e!291415))))

(assert (=> b!497124 (= res!299653 (validKeyInArray!0 k0!2280))))

(declare-fun b!497125 () Bool)

(declare-fun res!299660 () Bool)

(assert (=> b!497125 (=> (not res!299660) (not e!291415))))

(declare-fun arrayContainsKey!0 (array!32130 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!497125 (= res!299660 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!497126 () Bool)

(declare-fun res!299659 () Bool)

(assert (=> b!497126 (=> res!299659 e!291413)))

(get-info :version)

(assert (=> b!497126 (= res!299659 (or (undefined!4731 lt!225104) (not ((_ is Intermediate!3919) lt!225104))))))

(declare-fun b!497121 () Bool)

(assert (=> b!497121 (= e!291412 (not e!291413))))

(declare-fun res!299654 () Bool)

(assert (=> b!497121 (=> res!299654 e!291413)))

(declare-fun lt!225102 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32130 (_ BitVec 32)) SeekEntryResult!3919)

(assert (=> b!497121 (= res!299654 (= lt!225104 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!225102 (select (store (arr!15445 a!3235) i!1204 k0!2280) j!176) (array!32131 (store (arr!15445 a!3235) i!1204 k0!2280) (size!15809 a!3235)) mask!3524)))))

(declare-fun lt!225100 () (_ BitVec 32))

(assert (=> b!497121 (= lt!225104 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!225100 (select (arr!15445 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!497121 (= lt!225102 (toIndex!0 (select (store (arr!15445 a!3235) i!1204 k0!2280) j!176) mask!3524))))

(assert (=> b!497121 (= lt!225100 (toIndex!0 (select (arr!15445 a!3235) j!176) mask!3524))))

(assert (=> b!497121 e!291414))

(declare-fun res!299662 () Bool)

(assert (=> b!497121 (=> (not res!299662) (not e!291414))))

(assert (=> b!497121 (= res!299662 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14776 0))(
  ( (Unit!14777) )
))
(declare-fun lt!225103 () Unit!14776)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32130 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14776)

(assert (=> b!497121 (= lt!225103 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun res!299657 () Bool)

(assert (=> start!45282 (=> (not res!299657) (not e!291415))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45282 (= res!299657 (validMask!0 mask!3524))))

(assert (=> start!45282 e!291415))

(assert (=> start!45282 true))

(declare-fun array_inv!11219 (array!32130) Bool)

(assert (=> start!45282 (array_inv!11219 a!3235)))

(assert (= (and start!45282 res!299657) b!497119))

(assert (= (and b!497119 res!299655) b!497117))

(assert (= (and b!497117 res!299656) b!497124))

(assert (= (and b!497124 res!299653) b!497125))

(assert (= (and b!497125 res!299660) b!497120))

(assert (= (and b!497120 res!299658) b!497116))

(assert (= (and b!497116 res!299661) b!497123))

(assert (= (and b!497123 res!299663) b!497121))

(assert (= (and b!497121 res!299662) b!497122))

(assert (= (and b!497121 (not res!299654)) b!497126))

(assert (= (and b!497126 (not res!299659)) b!497118))

(declare-fun m!478521 () Bool)

(assert (=> b!497117 m!478521))

(assert (=> b!497117 m!478521))

(declare-fun m!478523 () Bool)

(assert (=> b!497117 m!478523))

(declare-fun m!478525 () Bool)

(assert (=> b!497118 m!478525))

(assert (=> b!497118 m!478521))

(declare-fun m!478527 () Bool)

(assert (=> b!497116 m!478527))

(declare-fun m!478529 () Bool)

(assert (=> b!497120 m!478529))

(declare-fun m!478531 () Bool)

(assert (=> b!497121 m!478531))

(declare-fun m!478533 () Bool)

(assert (=> b!497121 m!478533))

(declare-fun m!478535 () Bool)

(assert (=> b!497121 m!478535))

(assert (=> b!497121 m!478535))

(declare-fun m!478537 () Bool)

(assert (=> b!497121 m!478537))

(assert (=> b!497121 m!478521))

(declare-fun m!478539 () Bool)

(assert (=> b!497121 m!478539))

(assert (=> b!497121 m!478535))

(declare-fun m!478541 () Bool)

(assert (=> b!497121 m!478541))

(assert (=> b!497121 m!478521))

(declare-fun m!478543 () Bool)

(assert (=> b!497121 m!478543))

(assert (=> b!497121 m!478521))

(declare-fun m!478545 () Bool)

(assert (=> b!497121 m!478545))

(declare-fun m!478547 () Bool)

(assert (=> start!45282 m!478547))

(declare-fun m!478549 () Bool)

(assert (=> start!45282 m!478549))

(declare-fun m!478551 () Bool)

(assert (=> b!497125 m!478551))

(declare-fun m!478553 () Bool)

(assert (=> b!497124 m!478553))

(assert (=> b!497122 m!478521))

(assert (=> b!497122 m!478521))

(declare-fun m!478555 () Bool)

(assert (=> b!497122 m!478555))

(declare-fun m!478557 () Bool)

(assert (=> b!497123 m!478557))

(check-sat (not b!497117) (not b!497123) (not b!497125) (not b!497124) (not start!45282) (not b!497122) (not b!497121) (not b!497116) (not b!497120))
(check-sat)

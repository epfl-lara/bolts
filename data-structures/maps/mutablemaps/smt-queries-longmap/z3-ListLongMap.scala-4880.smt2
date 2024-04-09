; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!67278 () Bool)

(assert start!67278)

(declare-fun b!777608 () Bool)

(declare-fun e!432692 () Bool)

(declare-fun e!432691 () Bool)

(assert (=> b!777608 (= e!432692 e!432691)))

(declare-fun res!526182 () Bool)

(assert (=> b!777608 (=> (not res!526182) (not e!432691))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-datatypes ((array!42525 0))(
  ( (array!42526 (arr!20353 (Array (_ BitVec 32) (_ BitVec 64))) (size!20774 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42525)

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7960 0))(
  ( (MissingZero!7960 (index!34207 (_ BitVec 32))) (Found!7960 (index!34208 (_ BitVec 32))) (Intermediate!7960 (undefined!8772 Bool) (index!34209 (_ BitVec 32)) (x!65177 (_ BitVec 32))) (Undefined!7960) (MissingVacant!7960 (index!34210 (_ BitVec 32))) )
))
(declare-fun lt!346464 () SeekEntryResult!7960)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42525 (_ BitVec 32)) SeekEntryResult!7960)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!777608 (= res!526182 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20353 a!3186) j!159) mask!3328) (select (arr!20353 a!3186) j!159) a!3186 mask!3328) lt!346464))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!777608 (= lt!346464 (Intermediate!7960 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!777609 () Bool)

(declare-fun e!432694 () Bool)

(assert (=> b!777609 (= e!432694 e!432692)))

(declare-fun res!526178 () Bool)

(assert (=> b!777609 (=> (not res!526178) (not e!432692))))

(declare-fun lt!346462 () SeekEntryResult!7960)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!777609 (= res!526178 (or (= lt!346462 (MissingZero!7960 i!1173)) (= lt!346462 (MissingVacant!7960 i!1173))))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42525 (_ BitVec 32)) SeekEntryResult!7960)

(assert (=> b!777609 (= lt!346462 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!777610 () Bool)

(declare-fun e!432690 () Bool)

(declare-fun e!432693 () Bool)

(assert (=> b!777610 (= e!432690 e!432693)))

(declare-fun res!526185 () Bool)

(assert (=> b!777610 (=> (not res!526185) (not e!432693))))

(declare-fun lt!346468 () SeekEntryResult!7960)

(assert (=> b!777610 (= res!526185 (= (seekEntryOrOpen!0 (select (arr!20353 a!3186) j!159) a!3186 mask!3328) lt!346468))))

(assert (=> b!777610 (= lt!346468 (Found!7960 j!159))))

(declare-fun b!777611 () Bool)

(declare-fun res!526181 () Bool)

(assert (=> b!777611 (=> (not res!526181) (not e!432692))))

(declare-datatypes ((List!14408 0))(
  ( (Nil!14405) (Cons!14404 (h!15515 (_ BitVec 64)) (t!20731 List!14408)) )
))
(declare-fun arrayNoDuplicates!0 (array!42525 (_ BitVec 32) List!14408) Bool)

(assert (=> b!777611 (= res!526181 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14405))))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun e!432688 () Bool)

(declare-fun b!777613 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42525 (_ BitVec 32)) SeekEntryResult!7960)

(assert (=> b!777613 (= e!432688 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20353 a!3186) j!159) a!3186 mask!3328) (Found!7960 j!159)))))

(declare-fun b!777614 () Bool)

(declare-fun res!526175 () Bool)

(assert (=> b!777614 (=> (not res!526175) (not e!432694))))

(assert (=> b!777614 (= res!526175 (and (= (size!20774 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20774 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20774 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!777615 () Bool)

(declare-fun res!526191 () Bool)

(declare-fun e!432689 () Bool)

(assert (=> b!777615 (=> res!526191 e!432689)))

(declare-fun lt!346465 () (_ BitVec 64))

(declare-fun lt!346467 () SeekEntryResult!7960)

(assert (=> b!777615 (= res!526191 (or (not (= (select (store (arr!20353 a!3186) i!1173 k0!2102) index!1321) lt!346465)) (undefined!8772 lt!346467)))))

(declare-fun b!777616 () Bool)

(declare-fun e!432687 () Bool)

(assert (=> b!777616 (= e!432691 e!432687)))

(declare-fun res!526183 () Bool)

(assert (=> b!777616 (=> (not res!526183) (not e!432687))))

(declare-fun lt!346461 () SeekEntryResult!7960)

(assert (=> b!777616 (= res!526183 (= lt!346461 lt!346467))))

(declare-fun lt!346466 () array!42525)

(assert (=> b!777616 (= lt!346467 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!346465 lt!346466 mask!3328))))

(assert (=> b!777616 (= lt!346461 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!346465 mask!3328) lt!346465 lt!346466 mask!3328))))

(assert (=> b!777616 (= lt!346465 (select (store (arr!20353 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!777616 (= lt!346466 (array!42526 (store (arr!20353 a!3186) i!1173 k0!2102) (size!20774 a!3186)))))

(declare-fun b!777617 () Bool)

(declare-fun res!526184 () Bool)

(assert (=> b!777617 (=> res!526184 e!432689)))

(assert (=> b!777617 (= res!526184 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20353 a!3186) j!159) a!3186 mask!3328) (Found!7960 j!159))))))

(declare-fun b!777618 () Bool)

(declare-fun res!526179 () Bool)

(assert (=> b!777618 (=> (not res!526179) (not e!432694))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!777618 (= res!526179 (validKeyInArray!0 (select (arr!20353 a!3186) j!159)))))

(declare-fun b!777619 () Bool)

(declare-fun res!526176 () Bool)

(assert (=> b!777619 (=> (not res!526176) (not e!432691))))

(assert (=> b!777619 (= res!526176 e!432688)))

(declare-fun c!86118 () Bool)

(assert (=> b!777619 (= c!86118 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!777620 () Bool)

(assert (=> b!777620 (= e!432689 true)))

(declare-fun lt!346460 () SeekEntryResult!7960)

(assert (=> b!777620 (= lt!346460 (seekEntryOrOpen!0 lt!346465 lt!346466 mask!3328))))

(declare-fun b!777621 () Bool)

(assert (=> b!777621 (= e!432688 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20353 a!3186) j!159) a!3186 mask!3328) lt!346464))))

(declare-fun b!777622 () Bool)

(declare-fun res!526177 () Bool)

(assert (=> b!777622 (=> (not res!526177) (not e!432694))))

(assert (=> b!777622 (= res!526177 (validKeyInArray!0 k0!2102))))

(declare-fun b!777623 () Bool)

(declare-fun res!526192 () Bool)

(assert (=> b!777623 (=> (not res!526192) (not e!432692))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42525 (_ BitVec 32)) Bool)

(assert (=> b!777623 (= res!526192 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun res!526186 () Bool)

(assert (=> start!67278 (=> (not res!526186) (not e!432694))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67278 (= res!526186 (validMask!0 mask!3328))))

(assert (=> start!67278 e!432694))

(assert (=> start!67278 true))

(declare-fun array_inv!16127 (array!42525) Bool)

(assert (=> start!67278 (array_inv!16127 a!3186)))

(declare-fun b!777612 () Bool)

(assert (=> b!777612 (= e!432687 (not e!432689))))

(declare-fun res!526180 () Bool)

(assert (=> b!777612 (=> res!526180 e!432689)))

(get-info :version)

(assert (=> b!777612 (= res!526180 (or (not ((_ is Intermediate!7960) lt!346467)) (bvslt x!1131 (x!65177 lt!346467)) (not (= x!1131 (x!65177 lt!346467))) (not (= index!1321 (index!34209 lt!346467)))))))

(assert (=> b!777612 e!432690))

(declare-fun res!526187 () Bool)

(assert (=> b!777612 (=> (not res!526187) (not e!432690))))

(assert (=> b!777612 (= res!526187 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!26814 0))(
  ( (Unit!26815) )
))
(declare-fun lt!346463 () Unit!26814)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42525 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26814)

(assert (=> b!777612 (= lt!346463 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!777624 () Bool)

(assert (=> b!777624 (= e!432693 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20353 a!3186) j!159) a!3186 mask!3328) lt!346468))))

(declare-fun b!777625 () Bool)

(declare-fun res!526188 () Bool)

(assert (=> b!777625 (=> (not res!526188) (not e!432692))))

(assert (=> b!777625 (= res!526188 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20774 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20774 a!3186))))))

(declare-fun b!777626 () Bool)

(declare-fun res!526190 () Bool)

(assert (=> b!777626 (=> (not res!526190) (not e!432691))))

(assert (=> b!777626 (= res!526190 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20353 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!777627 () Bool)

(declare-fun res!526189 () Bool)

(assert (=> b!777627 (=> (not res!526189) (not e!432694))))

(declare-fun arrayContainsKey!0 (array!42525 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!777627 (= res!526189 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(assert (= (and start!67278 res!526186) b!777614))

(assert (= (and b!777614 res!526175) b!777618))

(assert (= (and b!777618 res!526179) b!777622))

(assert (= (and b!777622 res!526177) b!777627))

(assert (= (and b!777627 res!526189) b!777609))

(assert (= (and b!777609 res!526178) b!777623))

(assert (= (and b!777623 res!526192) b!777611))

(assert (= (and b!777611 res!526181) b!777625))

(assert (= (and b!777625 res!526188) b!777608))

(assert (= (and b!777608 res!526182) b!777626))

(assert (= (and b!777626 res!526190) b!777619))

(assert (= (and b!777619 c!86118) b!777621))

(assert (= (and b!777619 (not c!86118)) b!777613))

(assert (= (and b!777619 res!526176) b!777616))

(assert (= (and b!777616 res!526183) b!777612))

(assert (= (and b!777612 res!526187) b!777610))

(assert (= (and b!777610 res!526185) b!777624))

(assert (= (and b!777612 (not res!526180)) b!777617))

(assert (= (and b!777617 (not res!526184)) b!777615))

(assert (= (and b!777615 (not res!526191)) b!777620))

(declare-fun m!721503 () Bool)

(assert (=> b!777626 m!721503))

(declare-fun m!721505 () Bool)

(assert (=> b!777609 m!721505))

(declare-fun m!721507 () Bool)

(assert (=> b!777612 m!721507))

(declare-fun m!721509 () Bool)

(assert (=> b!777612 m!721509))

(declare-fun m!721511 () Bool)

(assert (=> b!777611 m!721511))

(declare-fun m!721513 () Bool)

(assert (=> b!777624 m!721513))

(assert (=> b!777624 m!721513))

(declare-fun m!721515 () Bool)

(assert (=> b!777624 m!721515))

(declare-fun m!721517 () Bool)

(assert (=> b!777622 m!721517))

(assert (=> b!777618 m!721513))

(assert (=> b!777618 m!721513))

(declare-fun m!721519 () Bool)

(assert (=> b!777618 m!721519))

(declare-fun m!721521 () Bool)

(assert (=> b!777616 m!721521))

(declare-fun m!721523 () Bool)

(assert (=> b!777616 m!721523))

(assert (=> b!777616 m!721521))

(declare-fun m!721525 () Bool)

(assert (=> b!777616 m!721525))

(declare-fun m!721527 () Bool)

(assert (=> b!777616 m!721527))

(declare-fun m!721529 () Bool)

(assert (=> b!777616 m!721529))

(declare-fun m!721531 () Bool)

(assert (=> start!67278 m!721531))

(declare-fun m!721533 () Bool)

(assert (=> start!67278 m!721533))

(declare-fun m!721535 () Bool)

(assert (=> b!777620 m!721535))

(assert (=> b!777613 m!721513))

(assert (=> b!777613 m!721513))

(declare-fun m!721537 () Bool)

(assert (=> b!777613 m!721537))

(declare-fun m!721539 () Bool)

(assert (=> b!777627 m!721539))

(assert (=> b!777617 m!721513))

(assert (=> b!777617 m!721513))

(assert (=> b!777617 m!721537))

(assert (=> b!777608 m!721513))

(assert (=> b!777608 m!721513))

(declare-fun m!721541 () Bool)

(assert (=> b!777608 m!721541))

(assert (=> b!777608 m!721541))

(assert (=> b!777608 m!721513))

(declare-fun m!721543 () Bool)

(assert (=> b!777608 m!721543))

(assert (=> b!777610 m!721513))

(assert (=> b!777610 m!721513))

(declare-fun m!721545 () Bool)

(assert (=> b!777610 m!721545))

(assert (=> b!777621 m!721513))

(assert (=> b!777621 m!721513))

(declare-fun m!721547 () Bool)

(assert (=> b!777621 m!721547))

(assert (=> b!777615 m!721523))

(declare-fun m!721549 () Bool)

(assert (=> b!777615 m!721549))

(declare-fun m!721551 () Bool)

(assert (=> b!777623 m!721551))

(check-sat (not b!777609) (not b!777622) (not b!777616) (not b!777611) (not b!777623) (not b!777627) (not b!777620) (not start!67278) (not b!777617) (not b!777613) (not b!777621) (not b!777608) (not b!777618) (not b!777612) (not b!777624) (not b!777610))
(check-sat)

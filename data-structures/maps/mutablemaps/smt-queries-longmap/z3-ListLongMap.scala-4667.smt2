; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!64938 () Bool)

(assert start!64938)

(declare-fun b!732509 () Bool)

(declare-fun res!492220 () Bool)

(declare-fun e!409918 () Bool)

(assert (=> b!732509 (=> (not res!492220) (not e!409918))))

(declare-fun e!409920 () Bool)

(assert (=> b!732509 (= res!492220 e!409920)))

(declare-fun c!80523 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!732509 (= c!80523 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!732510 () Bool)

(declare-fun res!492229 () Bool)

(declare-fun e!409923 () Bool)

(assert (=> b!732510 (=> (not res!492229) (not e!409923))))

(declare-datatypes ((array!41202 0))(
  ( (array!41203 (arr!19714 (Array (_ BitVec 32) (_ BitVec 64))) (size!20135 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41202)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(assert (=> b!732510 (= res!492229 (and (= (size!20135 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20135 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20135 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!732511 () Bool)

(declare-fun e!409917 () Bool)

(assert (=> b!732511 (= e!409923 e!409917)))

(declare-fun res!492228 () Bool)

(assert (=> b!732511 (=> (not res!492228) (not e!409917))))

(declare-datatypes ((SeekEntryResult!7321 0))(
  ( (MissingZero!7321 (index!31651 (_ BitVec 32))) (Found!7321 (index!31652 (_ BitVec 32))) (Intermediate!7321 (undefined!8133 Bool) (index!31653 (_ BitVec 32)) (x!62672 (_ BitVec 32))) (Undefined!7321) (MissingVacant!7321 (index!31654 (_ BitVec 32))) )
))
(declare-fun lt!324634 () SeekEntryResult!7321)

(assert (=> b!732511 (= res!492228 (or (= lt!324634 (MissingZero!7321 i!1173)) (= lt!324634 (MissingVacant!7321 i!1173))))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41202 (_ BitVec 32)) SeekEntryResult!7321)

(assert (=> b!732511 (= lt!324634 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!732512 () Bool)

(declare-fun res!492223 () Bool)

(assert (=> b!732512 (=> (not res!492223) (not e!409918))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(assert (=> b!732512 (= res!492223 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19714 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!732513 () Bool)

(declare-fun res!492224 () Bool)

(assert (=> b!732513 (=> (not res!492224) (not e!409917))))

(declare-fun index!1321 () (_ BitVec 32))

(assert (=> b!732513 (= res!492224 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20135 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20135 a!3186))))))

(declare-fun b!732514 () Bool)

(declare-fun lt!324629 () SeekEntryResult!7321)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41202 (_ BitVec 32)) SeekEntryResult!7321)

(assert (=> b!732514 (= e!409920 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19714 a!3186) j!159) a!3186 mask!3328) lt!324629))))

(declare-fun b!732515 () Bool)

(declare-fun res!492222 () Bool)

(assert (=> b!732515 (=> (not res!492222) (not e!409923))))

(declare-fun arrayContainsKey!0 (array!41202 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!732515 (= res!492222 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun res!492226 () Bool)

(assert (=> start!64938 (=> (not res!492226) (not e!409923))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64938 (= res!492226 (validMask!0 mask!3328))))

(assert (=> start!64938 e!409923))

(assert (=> start!64938 true))

(declare-fun array_inv!15488 (array!41202) Bool)

(assert (=> start!64938 (array_inv!15488 a!3186)))

(declare-fun b!732516 () Bool)

(assert (=> b!732516 (= e!409917 e!409918)))

(declare-fun res!492230 () Bool)

(assert (=> b!732516 (=> (not res!492230) (not e!409918))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!732516 (= res!492230 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19714 a!3186) j!159) mask!3328) (select (arr!19714 a!3186) j!159) a!3186 mask!3328) lt!324629))))

(assert (=> b!732516 (= lt!324629 (Intermediate!7321 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!732517 () Bool)

(declare-fun res!492234 () Bool)

(assert (=> b!732517 (=> (not res!492234) (not e!409923))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!732517 (= res!492234 (validKeyInArray!0 (select (arr!19714 a!3186) j!159)))))

(declare-fun b!732518 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41202 (_ BitVec 32)) SeekEntryResult!7321)

(assert (=> b!732518 (= e!409920 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19714 a!3186) j!159) a!3186 mask!3328) (Found!7321 j!159)))))

(declare-fun b!732519 () Bool)

(declare-fun e!409914 () Bool)

(declare-fun e!409922 () Bool)

(assert (=> b!732519 (= e!409914 e!409922)))

(declare-fun res!492233 () Bool)

(assert (=> b!732519 (=> (not res!492233) (not e!409922))))

(declare-fun lt!324631 () SeekEntryResult!7321)

(assert (=> b!732519 (= res!492233 (= (seekEntryOrOpen!0 (select (arr!19714 a!3186) j!159) a!3186 mask!3328) lt!324631))))

(assert (=> b!732519 (= lt!324631 (Found!7321 j!159))))

(declare-fun b!732520 () Bool)

(assert (=> b!732520 (= e!409922 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19714 a!3186) j!159) a!3186 mask!3328) lt!324631))))

(declare-fun b!732521 () Bool)

(declare-fun res!492225 () Bool)

(assert (=> b!732521 (=> (not res!492225) (not e!409917))))

(declare-datatypes ((List!13769 0))(
  ( (Nil!13766) (Cons!13765 (h!14831 (_ BitVec 64)) (t!20092 List!13769)) )
))
(declare-fun arrayNoDuplicates!0 (array!41202 (_ BitVec 32) List!13769) Bool)

(assert (=> b!732521 (= res!492225 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13766))))

(declare-fun b!732522 () Bool)

(declare-fun res!492232 () Bool)

(assert (=> b!732522 (=> (not res!492232) (not e!409923))))

(assert (=> b!732522 (= res!492232 (validKeyInArray!0 k0!2102))))

(declare-fun b!732523 () Bool)

(declare-fun res!492218 () Bool)

(assert (=> b!732523 (=> (not res!492218) (not e!409917))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41202 (_ BitVec 32)) Bool)

(assert (=> b!732523 (= res!492218 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!732524 () Bool)

(declare-fun e!409921 () Bool)

(declare-fun e!409916 () Bool)

(assert (=> b!732524 (= e!409921 (not e!409916))))

(declare-fun res!492231 () Bool)

(assert (=> b!732524 (=> res!492231 e!409916)))

(declare-fun lt!324635 () SeekEntryResult!7321)

(get-info :version)

(assert (=> b!732524 (= res!492231 (or (not ((_ is Intermediate!7321) lt!324635)) (bvsge x!1131 (x!62672 lt!324635))))))

(assert (=> b!732524 e!409914))

(declare-fun res!492221 () Bool)

(assert (=> b!732524 (=> (not res!492221) (not e!409914))))

(assert (=> b!732524 (= res!492221 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!24960 0))(
  ( (Unit!24961) )
))
(declare-fun lt!324633 () Unit!24960)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41202 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!24960)

(assert (=> b!732524 (= lt!324633 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!732525 () Bool)

(declare-fun e!409915 () Bool)

(assert (=> b!732525 (= e!409916 e!409915)))

(declare-fun res!492219 () Bool)

(assert (=> b!732525 (=> res!492219 e!409915)))

(assert (=> b!732525 (= res!492219 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun lt!324630 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!732525 (= lt!324630 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!732526 () Bool)

(assert (=> b!732526 (= e!409915 true)))

(declare-fun lt!324638 () SeekEntryResult!7321)

(assert (=> b!732526 (= lt!324638 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19714 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!732527 () Bool)

(assert (=> b!732527 (= e!409918 e!409921)))

(declare-fun res!492227 () Bool)

(assert (=> b!732527 (=> (not res!492227) (not e!409921))))

(declare-fun lt!324632 () SeekEntryResult!7321)

(assert (=> b!732527 (= res!492227 (= lt!324632 lt!324635))))

(declare-fun lt!324637 () (_ BitVec 64))

(declare-fun lt!324636 () array!41202)

(assert (=> b!732527 (= lt!324635 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!324637 lt!324636 mask!3328))))

(assert (=> b!732527 (= lt!324632 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!324637 mask!3328) lt!324637 lt!324636 mask!3328))))

(assert (=> b!732527 (= lt!324637 (select (store (arr!19714 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!732527 (= lt!324636 (array!41203 (store (arr!19714 a!3186) i!1173 k0!2102) (size!20135 a!3186)))))

(assert (= (and start!64938 res!492226) b!732510))

(assert (= (and b!732510 res!492229) b!732517))

(assert (= (and b!732517 res!492234) b!732522))

(assert (= (and b!732522 res!492232) b!732515))

(assert (= (and b!732515 res!492222) b!732511))

(assert (= (and b!732511 res!492228) b!732523))

(assert (= (and b!732523 res!492218) b!732521))

(assert (= (and b!732521 res!492225) b!732513))

(assert (= (and b!732513 res!492224) b!732516))

(assert (= (and b!732516 res!492230) b!732512))

(assert (= (and b!732512 res!492223) b!732509))

(assert (= (and b!732509 c!80523) b!732514))

(assert (= (and b!732509 (not c!80523)) b!732518))

(assert (= (and b!732509 res!492220) b!732527))

(assert (= (and b!732527 res!492227) b!732524))

(assert (= (and b!732524 res!492221) b!732519))

(assert (= (and b!732519 res!492233) b!732520))

(assert (= (and b!732524 (not res!492231)) b!732525))

(assert (= (and b!732525 (not res!492219)) b!732526))

(declare-fun m!685633 () Bool)

(assert (=> b!732523 m!685633))

(declare-fun m!685635 () Bool)

(assert (=> start!64938 m!685635))

(declare-fun m!685637 () Bool)

(assert (=> start!64938 m!685637))

(declare-fun m!685639 () Bool)

(assert (=> b!732525 m!685639))

(declare-fun m!685641 () Bool)

(assert (=> b!732511 m!685641))

(declare-fun m!685643 () Bool)

(assert (=> b!732521 m!685643))

(declare-fun m!685645 () Bool)

(assert (=> b!732519 m!685645))

(assert (=> b!732519 m!685645))

(declare-fun m!685647 () Bool)

(assert (=> b!732519 m!685647))

(declare-fun m!685649 () Bool)

(assert (=> b!732524 m!685649))

(declare-fun m!685651 () Bool)

(assert (=> b!732524 m!685651))

(assert (=> b!732518 m!685645))

(assert (=> b!732518 m!685645))

(declare-fun m!685653 () Bool)

(assert (=> b!732518 m!685653))

(assert (=> b!732514 m!685645))

(assert (=> b!732514 m!685645))

(declare-fun m!685655 () Bool)

(assert (=> b!732514 m!685655))

(declare-fun m!685657 () Bool)

(assert (=> b!732512 m!685657))

(assert (=> b!732516 m!685645))

(assert (=> b!732516 m!685645))

(declare-fun m!685659 () Bool)

(assert (=> b!732516 m!685659))

(assert (=> b!732516 m!685659))

(assert (=> b!732516 m!685645))

(declare-fun m!685661 () Bool)

(assert (=> b!732516 m!685661))

(assert (=> b!732517 m!685645))

(assert (=> b!732517 m!685645))

(declare-fun m!685663 () Bool)

(assert (=> b!732517 m!685663))

(assert (=> b!732520 m!685645))

(assert (=> b!732520 m!685645))

(declare-fun m!685665 () Bool)

(assert (=> b!732520 m!685665))

(declare-fun m!685667 () Bool)

(assert (=> b!732515 m!685667))

(declare-fun m!685669 () Bool)

(assert (=> b!732527 m!685669))

(declare-fun m!685671 () Bool)

(assert (=> b!732527 m!685671))

(declare-fun m!685673 () Bool)

(assert (=> b!732527 m!685673))

(declare-fun m!685675 () Bool)

(assert (=> b!732527 m!685675))

(assert (=> b!732527 m!685669))

(declare-fun m!685677 () Bool)

(assert (=> b!732527 m!685677))

(assert (=> b!732526 m!685645))

(assert (=> b!732526 m!685645))

(assert (=> b!732526 m!685653))

(declare-fun m!685679 () Bool)

(assert (=> b!732522 m!685679))

(check-sat (not b!732520) (not start!64938) (not b!732511) (not b!732514) (not b!732522) (not b!732519) (not b!732526) (not b!732521) (not b!732517) (not b!732525) (not b!732516) (not b!732515) (not b!732524) (not b!732523) (not b!732527) (not b!732518))
(check-sat)

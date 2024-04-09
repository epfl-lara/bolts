; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!64290 () Bool)

(assert start!64290)

(declare-fun b!721604 () Bool)

(declare-fun res!483567 () Bool)

(declare-fun e!404625 () Bool)

(assert (=> b!721604 (=> (not res!483567) (not e!404625))))

(declare-datatypes ((array!40824 0))(
  ( (array!40825 (arr!19531 (Array (_ BitVec 32) (_ BitVec 64))) (size!19952 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40824)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!721604 (= res!483567 (validKeyInArray!0 (select (arr!19531 a!3186) j!159)))))

(declare-fun b!721605 () Bool)

(declare-fun res!483566 () Bool)

(declare-fun e!404624 () Bool)

(assert (=> b!721605 (=> (not res!483566) (not e!404624))))

(declare-datatypes ((List!13586 0))(
  ( (Nil!13583) (Cons!13582 (h!14636 (_ BitVec 64)) (t!19909 List!13586)) )
))
(declare-fun arrayNoDuplicates!0 (array!40824 (_ BitVec 32) List!13586) Bool)

(assert (=> b!721605 (= res!483566 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13583))))

(declare-fun b!721606 () Bool)

(declare-fun res!483563 () Bool)

(assert (=> b!721606 (=> (not res!483563) (not e!404625))))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(assert (=> b!721606 (= res!483563 (and (= (size!19952 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!19952 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!19952 a!3186)) (not (= i!1173 j!159))))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun b!721607 () Bool)

(declare-fun e!404628 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7138 0))(
  ( (MissingZero!7138 (index!30919 (_ BitVec 32))) (Found!7138 (index!30920 (_ BitVec 32))) (Intermediate!7138 (undefined!7950 Bool) (index!30921 (_ BitVec 32)) (x!61956 (_ BitVec 32))) (Undefined!7138) (MissingVacant!7138 (index!30922 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40824 (_ BitVec 32)) SeekEntryResult!7138)

(assert (=> b!721607 (= e!404628 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19531 a!3186) j!159) a!3186 mask!3328) (Found!7138 j!159))))))

(declare-fun b!721608 () Bool)

(declare-fun res!483559 () Bool)

(declare-fun e!404626 () Bool)

(assert (=> b!721608 (=> (not res!483559) (not e!404626))))

(assert (=> b!721608 (= res!483559 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19531 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!721609 () Bool)

(declare-fun res!483558 () Bool)

(assert (=> b!721609 (=> (not res!483558) (not e!404625))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!40824 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!721609 (= res!483558 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!721610 () Bool)

(assert (=> b!721610 (= e!404626 false)))

(declare-fun lt!320107 () Bool)

(assert (=> b!721610 (= lt!320107 e!404628)))

(declare-fun c!79395 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!721610 (= c!79395 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!721611 () Bool)

(declare-fun res!483560 () Bool)

(assert (=> b!721611 (=> (not res!483560) (not e!404624))))

(assert (=> b!721611 (= res!483560 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!19952 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!19952 a!3186))))))

(declare-fun b!721612 () Bool)

(assert (=> b!721612 (= e!404624 e!404626)))

(declare-fun res!483564 () Bool)

(assert (=> b!721612 (=> (not res!483564) (not e!404626))))

(declare-fun lt!320108 () SeekEntryResult!7138)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40824 (_ BitVec 32)) SeekEntryResult!7138)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!721612 (= res!483564 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19531 a!3186) j!159) mask!3328) (select (arr!19531 a!3186) j!159) a!3186 mask!3328) lt!320108))))

(assert (=> b!721612 (= lt!320108 (Intermediate!7138 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!721613 () Bool)

(declare-fun res!483562 () Bool)

(assert (=> b!721613 (=> (not res!483562) (not e!404624))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40824 (_ BitVec 32)) Bool)

(assert (=> b!721613 (= res!483562 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!721614 () Bool)

(assert (=> b!721614 (= e!404625 e!404624)))

(declare-fun res!483557 () Bool)

(assert (=> b!721614 (=> (not res!483557) (not e!404624))))

(declare-fun lt!320106 () SeekEntryResult!7138)

(assert (=> b!721614 (= res!483557 (or (= lt!320106 (MissingZero!7138 i!1173)) (= lt!320106 (MissingVacant!7138 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40824 (_ BitVec 32)) SeekEntryResult!7138)

(assert (=> b!721614 (= lt!320106 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun res!483561 () Bool)

(assert (=> start!64290 (=> (not res!483561) (not e!404625))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64290 (= res!483561 (validMask!0 mask!3328))))

(assert (=> start!64290 e!404625))

(assert (=> start!64290 true))

(declare-fun array_inv!15305 (array!40824) Bool)

(assert (=> start!64290 (array_inv!15305 a!3186)))

(declare-fun b!721615 () Bool)

(declare-fun res!483565 () Bool)

(assert (=> b!721615 (=> (not res!483565) (not e!404625))))

(assert (=> b!721615 (= res!483565 (validKeyInArray!0 k0!2102))))

(declare-fun b!721616 () Bool)

(assert (=> b!721616 (= e!404628 (not (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19531 a!3186) j!159) a!3186 mask!3328) lt!320108)))))

(assert (= (and start!64290 res!483561) b!721606))

(assert (= (and b!721606 res!483563) b!721604))

(assert (= (and b!721604 res!483567) b!721615))

(assert (= (and b!721615 res!483565) b!721609))

(assert (= (and b!721609 res!483558) b!721614))

(assert (= (and b!721614 res!483557) b!721613))

(assert (= (and b!721613 res!483562) b!721605))

(assert (= (and b!721605 res!483566) b!721611))

(assert (= (and b!721611 res!483560) b!721612))

(assert (= (and b!721612 res!483564) b!721608))

(assert (= (and b!721608 res!483559) b!721610))

(assert (= (and b!721610 c!79395) b!721616))

(assert (= (and b!721610 (not c!79395)) b!721607))

(declare-fun m!676439 () Bool)

(assert (=> b!721614 m!676439))

(declare-fun m!676441 () Bool)

(assert (=> b!721604 m!676441))

(assert (=> b!721604 m!676441))

(declare-fun m!676443 () Bool)

(assert (=> b!721604 m!676443))

(declare-fun m!676445 () Bool)

(assert (=> start!64290 m!676445))

(declare-fun m!676447 () Bool)

(assert (=> start!64290 m!676447))

(assert (=> b!721616 m!676441))

(assert (=> b!721616 m!676441))

(declare-fun m!676449 () Bool)

(assert (=> b!721616 m!676449))

(declare-fun m!676451 () Bool)

(assert (=> b!721605 m!676451))

(declare-fun m!676453 () Bool)

(assert (=> b!721613 m!676453))

(assert (=> b!721607 m!676441))

(assert (=> b!721607 m!676441))

(declare-fun m!676455 () Bool)

(assert (=> b!721607 m!676455))

(declare-fun m!676457 () Bool)

(assert (=> b!721608 m!676457))

(declare-fun m!676459 () Bool)

(assert (=> b!721609 m!676459))

(assert (=> b!721612 m!676441))

(assert (=> b!721612 m!676441))

(declare-fun m!676461 () Bool)

(assert (=> b!721612 m!676461))

(assert (=> b!721612 m!676461))

(assert (=> b!721612 m!676441))

(declare-fun m!676463 () Bool)

(assert (=> b!721612 m!676463))

(declare-fun m!676465 () Bool)

(assert (=> b!721615 m!676465))

(check-sat (not b!721614) (not b!721604) (not b!721605) (not b!721612) (not start!64290) (not b!721607) (not b!721613) (not b!721616) (not b!721615) (not b!721609))
(check-sat)

; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!64936 () Bool)

(assert start!64936)

(declare-fun b!732452 () Bool)

(declare-fun e!409886 () Bool)

(declare-fun e!409889 () Bool)

(assert (=> b!732452 (= e!409886 (not e!409889))))

(declare-fun res!492170 () Bool)

(assert (=> b!732452 (=> res!492170 e!409889)))

(declare-datatypes ((SeekEntryResult!7320 0))(
  ( (MissingZero!7320 (index!31647 (_ BitVec 32))) (Found!7320 (index!31648 (_ BitVec 32))) (Intermediate!7320 (undefined!8132 Bool) (index!31649 (_ BitVec 32)) (x!62671 (_ BitVec 32))) (Undefined!7320) (MissingVacant!7320 (index!31650 (_ BitVec 32))) )
))
(declare-fun lt!324602 () SeekEntryResult!7320)

(declare-fun x!1131 () (_ BitVec 32))

(assert (=> b!732452 (= res!492170 (or (not (is-Intermediate!7320 lt!324602)) (bvsge x!1131 (x!62671 lt!324602))))))

(declare-fun e!409884 () Bool)

(assert (=> b!732452 e!409884))

(declare-fun res!492171 () Bool)

(assert (=> b!732452 (=> (not res!492171) (not e!409884))))

(declare-datatypes ((array!41200 0))(
  ( (array!41201 (arr!19713 (Array (_ BitVec 32) (_ BitVec 64))) (size!20134 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41200)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41200 (_ BitVec 32)) Bool)

(assert (=> b!732452 (= res!492171 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!24958 0))(
  ( (Unit!24959) )
))
(declare-fun lt!324599 () Unit!24958)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41200 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!24958)

(assert (=> b!732452 (= lt!324599 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!732453 () Bool)

(declare-fun res!492176 () Bool)

(declare-fun e!409893 () Bool)

(assert (=> b!732453 (=> (not res!492176) (not e!409893))))

(assert (=> b!732453 (= res!492176 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!732454 () Bool)

(declare-fun res!492174 () Bool)

(declare-fun e!409885 () Bool)

(assert (=> b!732454 (=> (not res!492174) (not e!409885))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!732454 (= res!492174 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19713 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!732455 () Bool)

(declare-fun e!409890 () Bool)

(assert (=> b!732455 (= e!409890 true)))

(declare-fun lt!324607 () SeekEntryResult!7320)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41200 (_ BitVec 32)) SeekEntryResult!7320)

(assert (=> b!732455 (= lt!324607 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19713 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!732456 () Bool)

(declare-fun res!492175 () Bool)

(assert (=> b!732456 (=> (not res!492175) (not e!409885))))

(declare-fun e!409892 () Bool)

(assert (=> b!732456 (= res!492175 e!409892)))

(declare-fun c!80520 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!732456 (= c!80520 (bvsle x!1131 resIntermediateX!5))))

(declare-fun res!492182 () Bool)

(declare-fun e!409891 () Bool)

(assert (=> start!64936 (=> (not res!492182) (not e!409891))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64936 (= res!492182 (validMask!0 mask!3328))))

(assert (=> start!64936 e!409891))

(assert (=> start!64936 true))

(declare-fun array_inv!15487 (array!41200) Bool)

(assert (=> start!64936 (array_inv!15487 a!3186)))

(declare-fun b!732457 () Bool)

(assert (=> b!732457 (= e!409891 e!409893)))

(declare-fun res!492168 () Bool)

(assert (=> b!732457 (=> (not res!492168) (not e!409893))))

(declare-fun lt!324606 () SeekEntryResult!7320)

(assert (=> b!732457 (= res!492168 (or (= lt!324606 (MissingZero!7320 i!1173)) (= lt!324606 (MissingVacant!7320 i!1173))))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41200 (_ BitVec 32)) SeekEntryResult!7320)

(assert (=> b!732457 (= lt!324606 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!732458 () Bool)

(assert (=> b!732458 (= e!409885 e!409886)))

(declare-fun res!492183 () Bool)

(assert (=> b!732458 (=> (not res!492183) (not e!409886))))

(declare-fun lt!324601 () SeekEntryResult!7320)

(assert (=> b!732458 (= res!492183 (= lt!324601 lt!324602))))

(declare-fun lt!324605 () (_ BitVec 64))

(declare-fun lt!324604 () array!41200)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41200 (_ BitVec 32)) SeekEntryResult!7320)

(assert (=> b!732458 (= lt!324602 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!324605 lt!324604 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!732458 (= lt!324601 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!324605 mask!3328) lt!324605 lt!324604 mask!3328))))

(assert (=> b!732458 (= lt!324605 (select (store (arr!19713 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!732458 (= lt!324604 (array!41201 (store (arr!19713 a!3186) i!1173 k!2102) (size!20134 a!3186)))))

(declare-fun b!732459 () Bool)

(declare-fun res!492178 () Bool)

(assert (=> b!732459 (=> (not res!492178) (not e!409891))))

(assert (=> b!732459 (= res!492178 (and (= (size!20134 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20134 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20134 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!732460 () Bool)

(declare-fun res!492177 () Bool)

(assert (=> b!732460 (=> (not res!492177) (not e!409891))))

(declare-fun arrayContainsKey!0 (array!41200 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!732460 (= res!492177 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!732461 () Bool)

(declare-fun e!409888 () Bool)

(assert (=> b!732461 (= e!409884 e!409888)))

(declare-fun res!492179 () Bool)

(assert (=> b!732461 (=> (not res!492179) (not e!409888))))

(declare-fun lt!324608 () SeekEntryResult!7320)

(assert (=> b!732461 (= res!492179 (= (seekEntryOrOpen!0 (select (arr!19713 a!3186) j!159) a!3186 mask!3328) lt!324608))))

(assert (=> b!732461 (= lt!324608 (Found!7320 j!159))))

(declare-fun b!732462 () Bool)

(declare-fun lt!324603 () SeekEntryResult!7320)

(assert (=> b!732462 (= e!409892 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19713 a!3186) j!159) a!3186 mask!3328) lt!324603))))

(declare-fun b!732463 () Bool)

(assert (=> b!732463 (= e!409892 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19713 a!3186) j!159) a!3186 mask!3328) (Found!7320 j!159)))))

(declare-fun b!732464 () Bool)

(assert (=> b!732464 (= e!409888 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19713 a!3186) j!159) a!3186 mask!3328) lt!324608))))

(declare-fun b!732465 () Bool)

(assert (=> b!732465 (= e!409893 e!409885)))

(declare-fun res!492173 () Bool)

(assert (=> b!732465 (=> (not res!492173) (not e!409885))))

(assert (=> b!732465 (= res!492173 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19713 a!3186) j!159) mask!3328) (select (arr!19713 a!3186) j!159) a!3186 mask!3328) lt!324603))))

(assert (=> b!732465 (= lt!324603 (Intermediate!7320 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!732466 () Bool)

(declare-fun res!492180 () Bool)

(assert (=> b!732466 (=> (not res!492180) (not e!409893))))

(assert (=> b!732466 (= res!492180 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20134 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20134 a!3186))))))

(declare-fun b!732467 () Bool)

(declare-fun res!492172 () Bool)

(assert (=> b!732467 (=> (not res!492172) (not e!409891))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!732467 (= res!492172 (validKeyInArray!0 k!2102))))

(declare-fun b!732468 () Bool)

(declare-fun res!492181 () Bool)

(assert (=> b!732468 (=> (not res!492181) (not e!409893))))

(declare-datatypes ((List!13768 0))(
  ( (Nil!13765) (Cons!13764 (h!14830 (_ BitVec 64)) (t!20091 List!13768)) )
))
(declare-fun arrayNoDuplicates!0 (array!41200 (_ BitVec 32) List!13768) Bool)

(assert (=> b!732468 (= res!492181 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13765))))

(declare-fun b!732469 () Bool)

(assert (=> b!732469 (= e!409889 e!409890)))

(declare-fun res!492167 () Bool)

(assert (=> b!732469 (=> res!492167 e!409890)))

(assert (=> b!732469 (= res!492167 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun lt!324600 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!732469 (= lt!324600 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!732470 () Bool)

(declare-fun res!492169 () Bool)

(assert (=> b!732470 (=> (not res!492169) (not e!409891))))

(assert (=> b!732470 (= res!492169 (validKeyInArray!0 (select (arr!19713 a!3186) j!159)))))

(assert (= (and start!64936 res!492182) b!732459))

(assert (= (and b!732459 res!492178) b!732470))

(assert (= (and b!732470 res!492169) b!732467))

(assert (= (and b!732467 res!492172) b!732460))

(assert (= (and b!732460 res!492177) b!732457))

(assert (= (and b!732457 res!492168) b!732453))

(assert (= (and b!732453 res!492176) b!732468))

(assert (= (and b!732468 res!492181) b!732466))

(assert (= (and b!732466 res!492180) b!732465))

(assert (= (and b!732465 res!492173) b!732454))

(assert (= (and b!732454 res!492174) b!732456))

(assert (= (and b!732456 c!80520) b!732462))

(assert (= (and b!732456 (not c!80520)) b!732463))

(assert (= (and b!732456 res!492175) b!732458))

(assert (= (and b!732458 res!492183) b!732452))

(assert (= (and b!732452 res!492171) b!732461))

(assert (= (and b!732461 res!492179) b!732464))

(assert (= (and b!732452 (not res!492170)) b!732469))

(assert (= (and b!732469 (not res!492167)) b!732455))

(declare-fun m!685585 () Bool)

(assert (=> b!732464 m!685585))

(assert (=> b!732464 m!685585))

(declare-fun m!685587 () Bool)

(assert (=> b!732464 m!685587))

(declare-fun m!685589 () Bool)

(assert (=> b!732460 m!685589))

(declare-fun m!685591 () Bool)

(assert (=> start!64936 m!685591))

(declare-fun m!685593 () Bool)

(assert (=> start!64936 m!685593))

(declare-fun m!685595 () Bool)

(assert (=> b!732458 m!685595))

(declare-fun m!685597 () Bool)

(assert (=> b!732458 m!685597))

(declare-fun m!685599 () Bool)

(assert (=> b!732458 m!685599))

(declare-fun m!685601 () Bool)

(assert (=> b!732458 m!685601))

(declare-fun m!685603 () Bool)

(assert (=> b!732458 m!685603))

(assert (=> b!732458 m!685595))

(declare-fun m!685605 () Bool)

(assert (=> b!732452 m!685605))

(declare-fun m!685607 () Bool)

(assert (=> b!732452 m!685607))

(assert (=> b!732455 m!685585))

(assert (=> b!732455 m!685585))

(declare-fun m!685609 () Bool)

(assert (=> b!732455 m!685609))

(assert (=> b!732465 m!685585))

(assert (=> b!732465 m!685585))

(declare-fun m!685611 () Bool)

(assert (=> b!732465 m!685611))

(assert (=> b!732465 m!685611))

(assert (=> b!732465 m!685585))

(declare-fun m!685613 () Bool)

(assert (=> b!732465 m!685613))

(declare-fun m!685615 () Bool)

(assert (=> b!732454 m!685615))

(declare-fun m!685617 () Bool)

(assert (=> b!732468 m!685617))

(assert (=> b!732461 m!685585))

(assert (=> b!732461 m!685585))

(declare-fun m!685619 () Bool)

(assert (=> b!732461 m!685619))

(declare-fun m!685621 () Bool)

(assert (=> b!732457 m!685621))

(declare-fun m!685623 () Bool)

(assert (=> b!732453 m!685623))

(declare-fun m!685625 () Bool)

(assert (=> b!732467 m!685625))

(assert (=> b!732462 m!685585))

(assert (=> b!732462 m!685585))

(declare-fun m!685627 () Bool)

(assert (=> b!732462 m!685627))

(declare-fun m!685629 () Bool)

(assert (=> b!732469 m!685629))

(assert (=> b!732463 m!685585))

(assert (=> b!732463 m!685585))

(assert (=> b!732463 m!685609))

(assert (=> b!732470 m!685585))

(assert (=> b!732470 m!685585))

(declare-fun m!685631 () Bool)

(assert (=> b!732470 m!685631))

(push 1)


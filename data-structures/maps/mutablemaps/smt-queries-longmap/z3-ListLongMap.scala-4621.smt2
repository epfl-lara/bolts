; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!64380 () Bool)

(assert start!64380)

(declare-fun b!723527 () Bool)

(declare-fun e!405346 () Bool)

(declare-fun e!405351 () Bool)

(assert (=> b!723527 (= e!405346 e!405351)))

(declare-fun res!485223 () Bool)

(assert (=> b!723527 (=> (not res!485223) (not e!405351))))

(declare-datatypes ((array!40914 0))(
  ( (array!40915 (arr!19576 (Array (_ BitVec 32) (_ BitVec 64))) (size!19997 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40914)

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7183 0))(
  ( (MissingZero!7183 (index!31099 (_ BitVec 32))) (Found!7183 (index!31100 (_ BitVec 32))) (Intermediate!7183 (undefined!7995 Bool) (index!31101 (_ BitVec 32)) (x!62121 (_ BitVec 32))) (Undefined!7183) (MissingVacant!7183 (index!31102 (_ BitVec 32))) )
))
(declare-fun lt!320702 () SeekEntryResult!7183)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40914 (_ BitVec 32)) SeekEntryResult!7183)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!723527 (= res!485223 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19576 a!3186) j!159) mask!3328) (select (arr!19576 a!3186) j!159) a!3186 mask!3328) lt!320702))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!723527 (= lt!320702 (Intermediate!7183 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!723528 () Bool)

(declare-fun res!485220 () Bool)

(declare-fun e!405350 () Bool)

(assert (=> b!723528 (=> (not res!485220) (not e!405350))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!40914 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!723528 (= res!485220 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!723529 () Bool)

(declare-fun res!485213 () Bool)

(assert (=> b!723529 (=> (not res!485213) (not e!405350))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!723529 (= res!485213 (validKeyInArray!0 (select (arr!19576 a!3186) j!159)))))

(declare-fun b!723530 () Bool)

(declare-fun res!485216 () Bool)

(assert (=> b!723530 (=> (not res!485216) (not e!405350))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!723530 (= res!485216 (and (= (size!19997 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!19997 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!19997 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!723532 () Bool)

(declare-fun res!485221 () Bool)

(assert (=> b!723532 (=> (not res!485221) (not e!405346))))

(declare-datatypes ((List!13631 0))(
  ( (Nil!13628) (Cons!13627 (h!14681 (_ BitVec 64)) (t!19954 List!13631)) )
))
(declare-fun arrayNoDuplicates!0 (array!40914 (_ BitVec 32) List!13631) Bool)

(assert (=> b!723532 (= res!485221 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13628))))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun b!723533 () Bool)

(declare-fun e!405347 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(assert (=> b!723533 (= e!405347 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19576 a!3186) j!159) a!3186 mask!3328) lt!320702))))

(declare-fun b!723534 () Bool)

(declare-fun e!405349 () Bool)

(assert (=> b!723534 (= e!405351 e!405349)))

(declare-fun res!485211 () Bool)

(assert (=> b!723534 (=> (not res!485211) (not e!405349))))

(declare-fun lt!320705 () (_ BitVec 64))

(declare-fun lt!320704 () array!40914)

(assert (=> b!723534 (= res!485211 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!320705 mask!3328) lt!320705 lt!320704 mask!3328) (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!320705 lt!320704 mask!3328)))))

(assert (=> b!723534 (= lt!320705 (select (store (arr!19576 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!723534 (= lt!320704 (array!40915 (store (arr!19576 a!3186) i!1173 k0!2102) (size!19997 a!3186)))))

(declare-fun b!723535 () Bool)

(assert (=> b!723535 (= e!405349 (not true))))

(declare-fun e!405348 () Bool)

(assert (=> b!723535 e!405348))

(declare-fun res!485217 () Bool)

(assert (=> b!723535 (=> (not res!485217) (not e!405348))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40914 (_ BitVec 32)) Bool)

(assert (=> b!723535 (= res!485217 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!24684 0))(
  ( (Unit!24685) )
))
(declare-fun lt!320701 () Unit!24684)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!40914 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!24684)

(assert (=> b!723535 (= lt!320701 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!723536 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40914 (_ BitVec 32)) SeekEntryResult!7183)

(assert (=> b!723536 (= e!405347 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19576 a!3186) j!159) a!3186 mask!3328) (Found!7183 j!159)))))

(declare-fun b!723537 () Bool)

(declare-fun res!485214 () Bool)

(assert (=> b!723537 (=> (not res!485214) (not e!405351))))

(assert (=> b!723537 (= res!485214 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19576 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!485219 () Bool)

(assert (=> start!64380 (=> (not res!485219) (not e!405350))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64380 (= res!485219 (validMask!0 mask!3328))))

(assert (=> start!64380 e!405350))

(assert (=> start!64380 true))

(declare-fun array_inv!15350 (array!40914) Bool)

(assert (=> start!64380 (array_inv!15350 a!3186)))

(declare-fun b!723531 () Bool)

(declare-fun res!485212 () Bool)

(assert (=> b!723531 (=> (not res!485212) (not e!405346))))

(assert (=> b!723531 (= res!485212 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!19997 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!19997 a!3186))))))

(declare-fun b!723538 () Bool)

(declare-fun res!485222 () Bool)

(assert (=> b!723538 (=> (not res!485222) (not e!405350))))

(assert (=> b!723538 (= res!485222 (validKeyInArray!0 k0!2102))))

(declare-fun b!723539 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40914 (_ BitVec 32)) SeekEntryResult!7183)

(assert (=> b!723539 (= e!405348 (= (seekEntryOrOpen!0 (select (arr!19576 a!3186) j!159) a!3186 mask!3328) (Found!7183 j!159)))))

(declare-fun b!723540 () Bool)

(assert (=> b!723540 (= e!405350 e!405346)))

(declare-fun res!485218 () Bool)

(assert (=> b!723540 (=> (not res!485218) (not e!405346))))

(declare-fun lt!320703 () SeekEntryResult!7183)

(assert (=> b!723540 (= res!485218 (or (= lt!320703 (MissingZero!7183 i!1173)) (= lt!320703 (MissingVacant!7183 i!1173))))))

(assert (=> b!723540 (= lt!320703 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!723541 () Bool)

(declare-fun res!485210 () Bool)

(assert (=> b!723541 (=> (not res!485210) (not e!405351))))

(assert (=> b!723541 (= res!485210 e!405347)))

(declare-fun c!79530 () Bool)

(assert (=> b!723541 (= c!79530 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!723542 () Bool)

(declare-fun res!485215 () Bool)

(assert (=> b!723542 (=> (not res!485215) (not e!405346))))

(assert (=> b!723542 (= res!485215 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(assert (= (and start!64380 res!485219) b!723530))

(assert (= (and b!723530 res!485216) b!723529))

(assert (= (and b!723529 res!485213) b!723538))

(assert (= (and b!723538 res!485222) b!723528))

(assert (= (and b!723528 res!485220) b!723540))

(assert (= (and b!723540 res!485218) b!723542))

(assert (= (and b!723542 res!485215) b!723532))

(assert (= (and b!723532 res!485221) b!723531))

(assert (= (and b!723531 res!485212) b!723527))

(assert (= (and b!723527 res!485223) b!723537))

(assert (= (and b!723537 res!485214) b!723541))

(assert (= (and b!723541 c!79530) b!723533))

(assert (= (and b!723541 (not c!79530)) b!723536))

(assert (= (and b!723541 res!485210) b!723534))

(assert (= (and b!723534 res!485211) b!723535))

(assert (= (and b!723535 res!485217) b!723539))

(declare-fun m!678051 () Bool)

(assert (=> b!723539 m!678051))

(assert (=> b!723539 m!678051))

(declare-fun m!678053 () Bool)

(assert (=> b!723539 m!678053))

(declare-fun m!678055 () Bool)

(assert (=> b!723535 m!678055))

(declare-fun m!678057 () Bool)

(assert (=> b!723535 m!678057))

(declare-fun m!678059 () Bool)

(assert (=> b!723528 m!678059))

(assert (=> b!723529 m!678051))

(assert (=> b!723529 m!678051))

(declare-fun m!678061 () Bool)

(assert (=> b!723529 m!678061))

(assert (=> b!723527 m!678051))

(assert (=> b!723527 m!678051))

(declare-fun m!678063 () Bool)

(assert (=> b!723527 m!678063))

(assert (=> b!723527 m!678063))

(assert (=> b!723527 m!678051))

(declare-fun m!678065 () Bool)

(assert (=> b!723527 m!678065))

(declare-fun m!678067 () Bool)

(assert (=> b!723532 m!678067))

(assert (=> b!723533 m!678051))

(assert (=> b!723533 m!678051))

(declare-fun m!678069 () Bool)

(assert (=> b!723533 m!678069))

(declare-fun m!678071 () Bool)

(assert (=> b!723540 m!678071))

(declare-fun m!678073 () Bool)

(assert (=> b!723537 m!678073))

(assert (=> b!723536 m!678051))

(assert (=> b!723536 m!678051))

(declare-fun m!678075 () Bool)

(assert (=> b!723536 m!678075))

(declare-fun m!678077 () Bool)

(assert (=> b!723542 m!678077))

(declare-fun m!678079 () Bool)

(assert (=> b!723538 m!678079))

(declare-fun m!678081 () Bool)

(assert (=> start!64380 m!678081))

(declare-fun m!678083 () Bool)

(assert (=> start!64380 m!678083))

(declare-fun m!678085 () Bool)

(assert (=> b!723534 m!678085))

(declare-fun m!678087 () Bool)

(assert (=> b!723534 m!678087))

(declare-fun m!678089 () Bool)

(assert (=> b!723534 m!678089))

(assert (=> b!723534 m!678085))

(declare-fun m!678091 () Bool)

(assert (=> b!723534 m!678091))

(declare-fun m!678093 () Bool)

(assert (=> b!723534 m!678093))

(check-sat (not b!723527) (not start!64380) (not b!723534) (not b!723529) (not b!723532) (not b!723533) (not b!723539) (not b!723538) (not b!723540) (not b!723528) (not b!723542) (not b!723535) (not b!723536))
(check-sat)

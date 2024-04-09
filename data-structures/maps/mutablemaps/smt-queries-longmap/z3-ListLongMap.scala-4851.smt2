; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!66822 () Bool)

(assert start!66822)

(declare-fun b!770405 () Bool)

(declare-fun res!521264 () Bool)

(declare-fun e!428956 () Bool)

(assert (=> b!770405 (=> (not res!521264) (not e!428956))))

(declare-datatypes ((array!42339 0))(
  ( (array!42340 (arr!20266 (Array (_ BitVec 32) (_ BitVec 64))) (size!20687 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42339)

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!42339 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!770405 (= res!521264 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!770406 () Bool)

(declare-fun res!521272 () Bool)

(assert (=> b!770406 (=> (not res!521272) (not e!428956))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!770406 (= res!521272 (validKeyInArray!0 k0!2102))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun e!428951 () Bool)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun b!770407 () Bool)

(declare-datatypes ((SeekEntryResult!7873 0))(
  ( (MissingZero!7873 (index!33859 (_ BitVec 32))) (Found!7873 (index!33860 (_ BitVec 32))) (Intermediate!7873 (undefined!8685 Bool) (index!33861 (_ BitVec 32)) (x!64813 (_ BitVec 32))) (Undefined!7873) (MissingVacant!7873 (index!33862 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42339 (_ BitVec 32)) SeekEntryResult!7873)

(assert (=> b!770407 (= e!428951 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20266 a!3186) j!159) a!3186 mask!3328) (Found!7873 j!159)))))

(declare-fun b!770408 () Bool)

(declare-fun e!428954 () Bool)

(assert (=> b!770408 (= e!428956 e!428954)))

(declare-fun res!521265 () Bool)

(assert (=> b!770408 (=> (not res!521265) (not e!428954))))

(declare-fun lt!342923 () SeekEntryResult!7873)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!770408 (= res!521265 (or (= lt!342923 (MissingZero!7873 i!1173)) (= lt!342923 (MissingVacant!7873 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42339 (_ BitVec 32)) SeekEntryResult!7873)

(assert (=> b!770408 (= lt!342923 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!770409 () Bool)

(declare-fun res!521274 () Bool)

(assert (=> b!770409 (=> (not res!521274) (not e!428956))))

(assert (=> b!770409 (= res!521274 (validKeyInArray!0 (select (arr!20266 a!3186) j!159)))))

(declare-fun b!770411 () Bool)

(declare-datatypes ((Unit!26528 0))(
  ( (Unit!26529) )
))
(declare-fun e!428953 () Unit!26528)

(declare-fun Unit!26530 () Unit!26528)

(assert (=> b!770411 (= e!428953 Unit!26530)))

(declare-fun lt!342924 () SeekEntryResult!7873)

(assert (=> b!770411 (= lt!342924 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20266 a!3186) j!159) a!3186 mask!3328))))

(declare-fun lt!342925 () (_ BitVec 32))

(assert (=> b!770411 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!342925 resIntermediateIndex!5 (select (arr!20266 a!3186) j!159) a!3186 mask!3328) (Found!7873 j!159))))

(declare-fun b!770412 () Bool)

(declare-fun res!521268 () Bool)

(assert (=> b!770412 (=> (not res!521268) (not e!428956))))

(assert (=> b!770412 (= res!521268 (and (= (size!20687 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20687 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20687 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!770413 () Bool)

(declare-fun e!428959 () Bool)

(assert (=> b!770413 (= e!428954 e!428959)))

(declare-fun res!521260 () Bool)

(assert (=> b!770413 (=> (not res!521260) (not e!428959))))

(declare-fun lt!342920 () SeekEntryResult!7873)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42339 (_ BitVec 32)) SeekEntryResult!7873)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!770413 (= res!521260 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20266 a!3186) j!159) mask!3328) (select (arr!20266 a!3186) j!159) a!3186 mask!3328) lt!342920))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!770413 (= lt!342920 (Intermediate!7873 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!770414 () Bool)

(declare-fun e!428952 () Bool)

(declare-fun e!428957 () Bool)

(assert (=> b!770414 (= e!428952 (not e!428957))))

(declare-fun res!521262 () Bool)

(assert (=> b!770414 (=> res!521262 e!428957)))

(declare-fun lt!342917 () SeekEntryResult!7873)

(get-info :version)

(assert (=> b!770414 (= res!521262 (or (not ((_ is Intermediate!7873) lt!342917)) (bvsge x!1131 (x!64813 lt!342917))))))

(declare-fun e!428955 () Bool)

(assert (=> b!770414 e!428955))

(declare-fun res!521261 () Bool)

(assert (=> b!770414 (=> (not res!521261) (not e!428955))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42339 (_ BitVec 32)) Bool)

(assert (=> b!770414 (= res!521261 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-fun lt!342919 () Unit!26528)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42339 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26528)

(assert (=> b!770414 (= lt!342919 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!770415 () Bool)

(assert (=> b!770415 (= e!428951 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20266 a!3186) j!159) a!3186 mask!3328) lt!342920))))

(declare-fun b!770416 () Bool)

(assert (=> b!770416 (= e!428957 true)))

(declare-fun lt!342916 () Unit!26528)

(assert (=> b!770416 (= lt!342916 e!428953)))

(declare-fun c!84968 () Bool)

(assert (=> b!770416 (= c!84968 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!770416 (= lt!342925 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!770417 () Bool)

(declare-fun lt!342915 () SeekEntryResult!7873)

(declare-fun e!428950 () Bool)

(assert (=> b!770417 (= e!428950 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20266 a!3186) j!159) a!3186 mask!3328) lt!342915))))

(declare-fun b!770418 () Bool)

(assert (=> b!770418 (= e!428955 e!428950)))

(declare-fun res!521271 () Bool)

(assert (=> b!770418 (=> (not res!521271) (not e!428950))))

(assert (=> b!770418 (= res!521271 (= (seekEntryOrOpen!0 (select (arr!20266 a!3186) j!159) a!3186 mask!3328) lt!342915))))

(assert (=> b!770418 (= lt!342915 (Found!7873 j!159))))

(declare-fun b!770419 () Bool)

(declare-fun res!521267 () Bool)

(assert (=> b!770419 (=> (not res!521267) (not e!428959))))

(assert (=> b!770419 (= res!521267 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20266 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!770420 () Bool)

(declare-fun res!521263 () Bool)

(assert (=> b!770420 (=> (not res!521263) (not e!428959))))

(assert (=> b!770420 (= res!521263 e!428951)))

(declare-fun c!84969 () Bool)

(assert (=> b!770420 (= c!84969 (bvsle x!1131 resIntermediateX!5))))

(declare-fun res!521266 () Bool)

(assert (=> start!66822 (=> (not res!521266) (not e!428956))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!66822 (= res!521266 (validMask!0 mask!3328))))

(assert (=> start!66822 e!428956))

(assert (=> start!66822 true))

(declare-fun array_inv!16040 (array!42339) Bool)

(assert (=> start!66822 (array_inv!16040 a!3186)))

(declare-fun b!770410 () Bool)

(declare-fun res!521269 () Bool)

(assert (=> b!770410 (=> (not res!521269) (not e!428954))))

(declare-datatypes ((List!14321 0))(
  ( (Nil!14318) (Cons!14317 (h!15416 (_ BitVec 64)) (t!20644 List!14321)) )
))
(declare-fun arrayNoDuplicates!0 (array!42339 (_ BitVec 32) List!14321) Bool)

(assert (=> b!770410 (= res!521269 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14318))))

(declare-fun b!770421 () Bool)

(assert (=> b!770421 (= e!428959 e!428952)))

(declare-fun res!521270 () Bool)

(assert (=> b!770421 (=> (not res!521270) (not e!428952))))

(declare-fun lt!342918 () SeekEntryResult!7873)

(assert (=> b!770421 (= res!521270 (= lt!342918 lt!342917))))

(declare-fun lt!342921 () (_ BitVec 64))

(declare-fun lt!342922 () array!42339)

(assert (=> b!770421 (= lt!342917 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!342921 lt!342922 mask!3328))))

(assert (=> b!770421 (= lt!342918 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!342921 mask!3328) lt!342921 lt!342922 mask!3328))))

(assert (=> b!770421 (= lt!342921 (select (store (arr!20266 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!770421 (= lt!342922 (array!42340 (store (arr!20266 a!3186) i!1173 k0!2102) (size!20687 a!3186)))))

(declare-fun b!770422 () Bool)

(declare-fun res!521273 () Bool)

(assert (=> b!770422 (=> (not res!521273) (not e!428954))))

(assert (=> b!770422 (= res!521273 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20687 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20687 a!3186))))))

(declare-fun b!770423 () Bool)

(declare-fun Unit!26531 () Unit!26528)

(assert (=> b!770423 (= e!428953 Unit!26531)))

(assert (=> b!770423 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!342925 (select (arr!20266 a!3186) j!159) a!3186 mask!3328) lt!342920)))

(declare-fun b!770424 () Bool)

(declare-fun res!521275 () Bool)

(assert (=> b!770424 (=> (not res!521275) (not e!428954))))

(assert (=> b!770424 (= res!521275 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(assert (= (and start!66822 res!521266) b!770412))

(assert (= (and b!770412 res!521268) b!770409))

(assert (= (and b!770409 res!521274) b!770406))

(assert (= (and b!770406 res!521272) b!770405))

(assert (= (and b!770405 res!521264) b!770408))

(assert (= (and b!770408 res!521265) b!770424))

(assert (= (and b!770424 res!521275) b!770410))

(assert (= (and b!770410 res!521269) b!770422))

(assert (= (and b!770422 res!521273) b!770413))

(assert (= (and b!770413 res!521260) b!770419))

(assert (= (and b!770419 res!521267) b!770420))

(assert (= (and b!770420 c!84969) b!770415))

(assert (= (and b!770420 (not c!84969)) b!770407))

(assert (= (and b!770420 res!521263) b!770421))

(assert (= (and b!770421 res!521270) b!770414))

(assert (= (and b!770414 res!521261) b!770418))

(assert (= (and b!770418 res!521271) b!770417))

(assert (= (and b!770414 (not res!521262)) b!770416))

(assert (= (and b!770416 c!84968) b!770423))

(assert (= (and b!770416 (not c!84968)) b!770411))

(declare-fun m!715751 () Bool)

(assert (=> b!770405 m!715751))

(declare-fun m!715753 () Bool)

(assert (=> b!770416 m!715753))

(declare-fun m!715755 () Bool)

(assert (=> b!770417 m!715755))

(assert (=> b!770417 m!715755))

(declare-fun m!715757 () Bool)

(assert (=> b!770417 m!715757))

(assert (=> b!770415 m!715755))

(assert (=> b!770415 m!715755))

(declare-fun m!715759 () Bool)

(assert (=> b!770415 m!715759))

(assert (=> b!770423 m!715755))

(assert (=> b!770423 m!715755))

(declare-fun m!715761 () Bool)

(assert (=> b!770423 m!715761))

(assert (=> b!770409 m!715755))

(assert (=> b!770409 m!715755))

(declare-fun m!715763 () Bool)

(assert (=> b!770409 m!715763))

(declare-fun m!715765 () Bool)

(assert (=> b!770419 m!715765))

(declare-fun m!715767 () Bool)

(assert (=> b!770414 m!715767))

(declare-fun m!715769 () Bool)

(assert (=> b!770414 m!715769))

(declare-fun m!715771 () Bool)

(assert (=> b!770421 m!715771))

(declare-fun m!715773 () Bool)

(assert (=> b!770421 m!715773))

(declare-fun m!715775 () Bool)

(assert (=> b!770421 m!715775))

(declare-fun m!715777 () Bool)

(assert (=> b!770421 m!715777))

(assert (=> b!770421 m!715777))

(declare-fun m!715779 () Bool)

(assert (=> b!770421 m!715779))

(assert (=> b!770418 m!715755))

(assert (=> b!770418 m!715755))

(declare-fun m!715781 () Bool)

(assert (=> b!770418 m!715781))

(declare-fun m!715783 () Bool)

(assert (=> b!770424 m!715783))

(declare-fun m!715785 () Bool)

(assert (=> b!770408 m!715785))

(declare-fun m!715787 () Bool)

(assert (=> start!66822 m!715787))

(declare-fun m!715789 () Bool)

(assert (=> start!66822 m!715789))

(declare-fun m!715791 () Bool)

(assert (=> b!770406 m!715791))

(declare-fun m!715793 () Bool)

(assert (=> b!770410 m!715793))

(assert (=> b!770407 m!715755))

(assert (=> b!770407 m!715755))

(declare-fun m!715795 () Bool)

(assert (=> b!770407 m!715795))

(assert (=> b!770413 m!715755))

(assert (=> b!770413 m!715755))

(declare-fun m!715797 () Bool)

(assert (=> b!770413 m!715797))

(assert (=> b!770413 m!715797))

(assert (=> b!770413 m!715755))

(declare-fun m!715799 () Bool)

(assert (=> b!770413 m!715799))

(assert (=> b!770411 m!715755))

(assert (=> b!770411 m!715755))

(assert (=> b!770411 m!715795))

(assert (=> b!770411 m!715755))

(declare-fun m!715801 () Bool)

(assert (=> b!770411 m!715801))

(check-sat (not b!770409) (not b!770424) (not b!770423) (not b!770406) (not b!770410) (not b!770421) (not b!770405) (not b!770414) (not b!770416) (not b!770418) (not b!770415) (not b!770413) (not start!66822) (not b!770417) (not b!770411) (not b!770407) (not b!770408))
(check-sat)

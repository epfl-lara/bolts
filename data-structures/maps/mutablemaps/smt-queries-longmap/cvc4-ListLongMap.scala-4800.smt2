; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65882 () Bool)

(assert start!65882)

(declare-fun b!759017 () Bool)

(declare-fun res!513701 () Bool)

(declare-fun e!423179 () Bool)

(assert (=> b!759017 (=> (not res!513701) (not e!423179))))

(declare-fun e!423183 () Bool)

(assert (=> b!759017 (= res!513701 e!423183)))

(declare-fun c!83043 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!759017 (= c!83043 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!759018 () Bool)

(declare-fun res!513705 () Bool)

(declare-fun e!423180 () Bool)

(assert (=> b!759018 (=> (not res!513705) (not e!423180))))

(declare-datatypes ((array!42008 0))(
  ( (array!42009 (arr!20114 (Array (_ BitVec 32) (_ BitVec 64))) (size!20535 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42008)

(declare-datatypes ((List!14169 0))(
  ( (Nil!14166) (Cons!14165 (h!15237 (_ BitVec 64)) (t!20492 List!14169)) )
))
(declare-fun arrayNoDuplicates!0 (array!42008 (_ BitVec 32) List!14169) Bool)

(assert (=> b!759018 (= res!513705 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14166))))

(declare-fun b!759019 () Bool)

(declare-fun res!513700 () Bool)

(assert (=> b!759019 (=> (not res!513700) (not e!423180))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42008 (_ BitVec 32)) Bool)

(assert (=> b!759019 (= res!513700 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!759020 () Bool)

(assert (=> b!759020 (= e!423180 e!423179)))

(declare-fun res!513691 () Bool)

(assert (=> b!759020 (=> (not res!513691) (not e!423179))))

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7721 0))(
  ( (MissingZero!7721 (index!33251 (_ BitVec 32))) (Found!7721 (index!33252 (_ BitVec 32))) (Intermediate!7721 (undefined!8533 Bool) (index!33253 (_ BitVec 32)) (x!64160 (_ BitVec 32))) (Undefined!7721) (MissingVacant!7721 (index!33254 (_ BitVec 32))) )
))
(declare-fun lt!338263 () SeekEntryResult!7721)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42008 (_ BitVec 32)) SeekEntryResult!7721)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!759020 (= res!513691 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20114 a!3186) j!159) mask!3328) (select (arr!20114 a!3186) j!159) a!3186 mask!3328) lt!338263))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(assert (=> b!759020 (= lt!338263 (Intermediate!7721 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun b!759021 () Bool)

(assert (=> b!759021 (= e!423183 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20114 a!3186) j!159) a!3186 mask!3328) lt!338263))))

(declare-fun b!759022 () Bool)

(declare-fun res!513696 () Bool)

(declare-fun e!423181 () Bool)

(assert (=> b!759022 (=> (not res!513696) (not e!423181))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!42008 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!759022 (= res!513696 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!759023 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42008 (_ BitVec 32)) SeekEntryResult!7721)

(assert (=> b!759023 (= e!423183 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20114 a!3186) j!159) a!3186 mask!3328) (Found!7721 j!159)))))

(declare-fun b!759024 () Bool)

(declare-fun res!513702 () Bool)

(assert (=> b!759024 (=> (not res!513702) (not e!423180))))

(assert (=> b!759024 (= res!513702 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20535 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20535 a!3186))))))

(declare-fun b!759025 () Bool)

(declare-fun res!513692 () Bool)

(assert (=> b!759025 (=> (not res!513692) (not e!423181))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!759025 (= res!513692 (validKeyInArray!0 k!2102))))

(declare-fun b!759026 () Bool)

(declare-fun lt!338261 () SeekEntryResult!7721)

(declare-fun e!423177 () Bool)

(assert (=> b!759026 (= e!423177 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20114 a!3186) j!159) a!3186 mask!3328) lt!338261))))

(declare-fun b!759016 () Bool)

(assert (=> b!759016 (= e!423181 e!423180)))

(declare-fun res!513694 () Bool)

(assert (=> b!759016 (=> (not res!513694) (not e!423180))))

(declare-fun lt!338262 () SeekEntryResult!7721)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!759016 (= res!513694 (or (= lt!338262 (MissingZero!7721 i!1173)) (= lt!338262 (MissingVacant!7721 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42008 (_ BitVec 32)) SeekEntryResult!7721)

(assert (=> b!759016 (= lt!338262 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun res!513703 () Bool)

(assert (=> start!65882 (=> (not res!513703) (not e!423181))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65882 (= res!513703 (validMask!0 mask!3328))))

(assert (=> start!65882 e!423181))

(assert (=> start!65882 true))

(declare-fun array_inv!15888 (array!42008) Bool)

(assert (=> start!65882 (array_inv!15888 a!3186)))

(declare-fun b!759027 () Bool)

(declare-fun res!513693 () Bool)

(assert (=> b!759027 (=> (not res!513693) (not e!423181))))

(assert (=> b!759027 (= res!513693 (and (= (size!20535 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20535 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20535 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!759028 () Bool)

(declare-fun e!423176 () Bool)

(assert (=> b!759028 (= e!423176 e!423177)))

(declare-fun res!513698 () Bool)

(assert (=> b!759028 (=> (not res!513698) (not e!423177))))

(assert (=> b!759028 (= res!513698 (= (seekEntryOrOpen!0 (select (arr!20114 a!3186) j!159) a!3186 mask!3328) lt!338261))))

(assert (=> b!759028 (= lt!338261 (Found!7721 j!159))))

(declare-fun b!759029 () Bool)

(declare-fun e!423182 () Bool)

(assert (=> b!759029 (= e!423179 e!423182)))

(declare-fun res!513697 () Bool)

(assert (=> b!759029 (=> (not res!513697) (not e!423182))))

(declare-fun lt!338264 () array!42008)

(declare-fun lt!338259 () (_ BitVec 64))

(assert (=> b!759029 (= res!513697 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!338259 mask!3328) lt!338259 lt!338264 mask!3328) (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!338259 lt!338264 mask!3328)))))

(assert (=> b!759029 (= lt!338259 (select (store (arr!20114 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!759029 (= lt!338264 (array!42009 (store (arr!20114 a!3186) i!1173 k!2102) (size!20535 a!3186)))))

(declare-fun b!759030 () Bool)

(declare-fun res!513699 () Bool)

(assert (=> b!759030 (=> (not res!513699) (not e!423181))))

(assert (=> b!759030 (= res!513699 (validKeyInArray!0 (select (arr!20114 a!3186) j!159)))))

(declare-fun b!759031 () Bool)

(declare-fun res!513695 () Bool)

(assert (=> b!759031 (=> (not res!513695) (not e!423179))))

(assert (=> b!759031 (= res!513695 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20114 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!759032 () Bool)

(assert (=> b!759032 (= e!423182 (not true))))

(assert (=> b!759032 e!423176))

(declare-fun res!513704 () Bool)

(assert (=> b!759032 (=> (not res!513704) (not e!423176))))

(assert (=> b!759032 (= res!513704 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!26282 0))(
  ( (Unit!26283) )
))
(declare-fun lt!338260 () Unit!26282)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42008 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26282)

(assert (=> b!759032 (= lt!338260 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(assert (= (and start!65882 res!513703) b!759027))

(assert (= (and b!759027 res!513693) b!759030))

(assert (= (and b!759030 res!513699) b!759025))

(assert (= (and b!759025 res!513692) b!759022))

(assert (= (and b!759022 res!513696) b!759016))

(assert (= (and b!759016 res!513694) b!759019))

(assert (= (and b!759019 res!513700) b!759018))

(assert (= (and b!759018 res!513705) b!759024))

(assert (= (and b!759024 res!513702) b!759020))

(assert (= (and b!759020 res!513691) b!759031))

(assert (= (and b!759031 res!513695) b!759017))

(assert (= (and b!759017 c!83043) b!759021))

(assert (= (and b!759017 (not c!83043)) b!759023))

(assert (= (and b!759017 res!513701) b!759029))

(assert (= (and b!759029 res!513697) b!759032))

(assert (= (and b!759032 res!513704) b!759028))

(assert (= (and b!759028 res!513698) b!759026))

(declare-fun m!706503 () Bool)

(assert (=> b!759026 m!706503))

(assert (=> b!759026 m!706503))

(declare-fun m!706505 () Bool)

(assert (=> b!759026 m!706505))

(assert (=> b!759020 m!706503))

(assert (=> b!759020 m!706503))

(declare-fun m!706507 () Bool)

(assert (=> b!759020 m!706507))

(assert (=> b!759020 m!706507))

(assert (=> b!759020 m!706503))

(declare-fun m!706509 () Bool)

(assert (=> b!759020 m!706509))

(declare-fun m!706511 () Bool)

(assert (=> b!759018 m!706511))

(declare-fun m!706513 () Bool)

(assert (=> b!759022 m!706513))

(assert (=> b!759030 m!706503))

(assert (=> b!759030 m!706503))

(declare-fun m!706515 () Bool)

(assert (=> b!759030 m!706515))

(declare-fun m!706517 () Bool)

(assert (=> b!759031 m!706517))

(assert (=> b!759028 m!706503))

(assert (=> b!759028 m!706503))

(declare-fun m!706519 () Bool)

(assert (=> b!759028 m!706519))

(declare-fun m!706521 () Bool)

(assert (=> b!759025 m!706521))

(declare-fun m!706523 () Bool)

(assert (=> b!759019 m!706523))

(assert (=> b!759023 m!706503))

(assert (=> b!759023 m!706503))

(declare-fun m!706525 () Bool)

(assert (=> b!759023 m!706525))

(assert (=> b!759021 m!706503))

(assert (=> b!759021 m!706503))

(declare-fun m!706527 () Bool)

(assert (=> b!759021 m!706527))

(declare-fun m!706529 () Bool)

(assert (=> b!759016 m!706529))

(declare-fun m!706531 () Bool)

(assert (=> start!65882 m!706531))

(declare-fun m!706533 () Bool)

(assert (=> start!65882 m!706533))

(declare-fun m!706535 () Bool)

(assert (=> b!759032 m!706535))

(declare-fun m!706537 () Bool)

(assert (=> b!759032 m!706537))

(declare-fun m!706539 () Bool)

(assert (=> b!759029 m!706539))

(declare-fun m!706541 () Bool)

(assert (=> b!759029 m!706541))

(declare-fun m!706543 () Bool)

(assert (=> b!759029 m!706543))

(declare-fun m!706545 () Bool)

(assert (=> b!759029 m!706545))

(assert (=> b!759029 m!706539))

(declare-fun m!706547 () Bool)

(assert (=> b!759029 m!706547))

(push 1)


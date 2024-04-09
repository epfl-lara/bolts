; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65240 () Bool)

(assert start!65240)

(declare-datatypes ((array!41366 0))(
  ( (array!41367 (arr!19793 (Array (_ BitVec 32) (_ BitVec 64))) (size!20214 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41366)

(declare-fun e!413098 () Bool)

(declare-fun b!738642 () Bool)

(declare-fun index!1321 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7400 0))(
  ( (MissingZero!7400 (index!31967 (_ BitVec 32))) (Found!7400 (index!31968 (_ BitVec 32))) (Intermediate!7400 (undefined!8212 Bool) (index!31969 (_ BitVec 32)) (x!62983 (_ BitVec 32))) (Undefined!7400) (MissingVacant!7400 (index!31970 (_ BitVec 32))) )
))
(declare-fun lt!327919 () SeekEntryResult!7400)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41366 (_ BitVec 32)) SeekEntryResult!7400)

(assert (=> b!738642 (= e!413098 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19793 a!3186) j!159) a!3186 mask!3328) lt!327919))))

(declare-fun b!738643 () Bool)

(declare-fun res!496697 () Bool)

(declare-fun e!413097 () Bool)

(assert (=> b!738643 (=> (not res!496697) (not e!413097))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!738643 (= res!496697 (validKeyInArray!0 (select (arr!19793 a!3186) j!159)))))

(declare-fun res!496693 () Bool)

(assert (=> start!65240 (=> (not res!496693) (not e!413097))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65240 (= res!496693 (validMask!0 mask!3328))))

(assert (=> start!65240 e!413097))

(assert (=> start!65240 true))

(declare-fun array_inv!15567 (array!41366) Bool)

(assert (=> start!65240 (array_inv!15567 a!3186)))

(declare-fun b!738644 () Bool)

(declare-fun res!496699 () Bool)

(declare-fun e!413099 () Bool)

(assert (=> b!738644 (=> res!496699 e!413099)))

(declare-fun e!413095 () Bool)

(assert (=> b!738644 (= res!496699 e!413095)))

(declare-fun c!81358 () Bool)

(declare-fun lt!327931 () Bool)

(assert (=> b!738644 (= c!81358 lt!327931)))

(declare-fun b!738645 () Bool)

(declare-datatypes ((Unit!25218 0))(
  ( (Unit!25219) )
))
(declare-fun e!413092 () Unit!25218)

(declare-fun Unit!25220 () Unit!25218)

(assert (=> b!738645 (= e!413092 Unit!25220)))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun lt!327929 () SeekEntryResult!7400)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41366 (_ BitVec 32)) SeekEntryResult!7400)

(assert (=> b!738645 (= lt!327929 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19793 a!3186) j!159) a!3186 mask!3328))))

(declare-fun lt!327925 () SeekEntryResult!7400)

(declare-fun lt!327922 () (_ BitVec 32))

(assert (=> b!738645 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!327922 resIntermediateIndex!5 (select (arr!19793 a!3186) j!159) a!3186 mask!3328) lt!327925)))

(declare-fun b!738646 () Bool)

(declare-fun res!496704 () Bool)

(declare-fun e!413101 () Bool)

(assert (=> b!738646 (=> (not res!496704) (not e!413101))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!738646 (= res!496704 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19793 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!738647 () Bool)

(declare-fun res!496687 () Bool)

(assert (=> b!738647 (=> (not res!496687) (not e!413101))))

(assert (=> b!738647 (= res!496687 e!413098)))

(declare-fun c!81359 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!738647 (= c!81359 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!738648 () Bool)

(assert (=> b!738648 (= e!413095 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!327922 (select (arr!19793 a!3186) j!159) a!3186 mask!3328) lt!327919)))))

(declare-fun b!738649 () Bool)

(declare-fun res!496696 () Bool)

(declare-fun e!413093 () Bool)

(assert (=> b!738649 (=> (not res!496696) (not e!413093))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41366 (_ BitVec 32)) Bool)

(assert (=> b!738649 (= res!496696 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!738650 () Bool)

(assert (=> b!738650 (= e!413093 e!413101)))

(declare-fun res!496690 () Bool)

(assert (=> b!738650 (=> (not res!496690) (not e!413101))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!738650 (= res!496690 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19793 a!3186) j!159) mask!3328) (select (arr!19793 a!3186) j!159) a!3186 mask!3328) lt!327919))))

(assert (=> b!738650 (= lt!327919 (Intermediate!7400 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!738651 () Bool)

(declare-fun e!413103 () Bool)

(assert (=> b!738651 (= e!413103 e!413099)))

(declare-fun res!496700 () Bool)

(assert (=> b!738651 (=> res!496700 e!413099)))

(assert (=> b!738651 (= res!496700 (or (bvsgt (bvadd #b00000000000000000000000000000001 x!1131) #b01111111111111111111111111111110) (bvslt (bvadd #b00000000000000000000000000000001 x!1131) #b00000000000000000000000000000000) (bvslt lt!327922 #b00000000000000000000000000000000) (bvsge lt!327922 (size!20214 a!3186))))))

(declare-fun lt!327921 () Unit!25218)

(assert (=> b!738651 (= lt!327921 e!413092)))

(declare-fun c!81360 () Bool)

(assert (=> b!738651 (= c!81360 lt!327931)))

(assert (=> b!738651 (= lt!327931 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!738651 (= lt!327922 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!738652 () Bool)

(assert (=> b!738652 (= e!413099 true)))

(declare-fun lt!327926 () (_ BitVec 64))

(declare-fun lt!327923 () SeekEntryResult!7400)

(declare-fun lt!327927 () array!41366)

(assert (=> b!738652 (= lt!327923 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!327922 lt!327926 lt!327927 mask!3328))))

(declare-fun b!738653 () Bool)

(declare-fun res!496702 () Bool)

(assert (=> b!738653 (=> (not res!496702) (not e!413093))))

(assert (=> b!738653 (= res!496702 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20214 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20214 a!3186))))))

(declare-fun b!738654 () Bool)

(declare-fun res!496701 () Bool)

(assert (=> b!738654 (=> (not res!496701) (not e!413093))))

(declare-datatypes ((List!13848 0))(
  ( (Nil!13845) (Cons!13844 (h!14916 (_ BitVec 64)) (t!20171 List!13848)) )
))
(declare-fun arrayNoDuplicates!0 (array!41366 (_ BitVec 32) List!13848) Bool)

(assert (=> b!738654 (= res!496701 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13845))))

(declare-fun b!738655 () Bool)

(declare-fun res!496689 () Bool)

(assert (=> b!738655 (=> (not res!496689) (not e!413097))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!41366 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!738655 (= res!496689 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!738656 () Bool)

(declare-fun e!413102 () Bool)

(declare-fun e!413100 () Bool)

(assert (=> b!738656 (= e!413102 e!413100)))

(declare-fun res!496691 () Bool)

(assert (=> b!738656 (=> (not res!496691) (not e!413100))))

(declare-fun lt!327920 () SeekEntryResult!7400)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41366 (_ BitVec 32)) SeekEntryResult!7400)

(assert (=> b!738656 (= res!496691 (= (seekEntryOrOpen!0 (select (arr!19793 a!3186) j!159) a!3186 mask!3328) lt!327920))))

(assert (=> b!738656 (= lt!327920 (Found!7400 j!159))))

(declare-fun b!738657 () Bool)

(declare-fun Unit!25221 () Unit!25218)

(assert (=> b!738657 (= e!413092 Unit!25221)))

(assert (=> b!738657 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!327922 (select (arr!19793 a!3186) j!159) a!3186 mask!3328) lt!327919)))

(declare-fun b!738658 () Bool)

(assert (=> b!738658 (= e!413100 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19793 a!3186) j!159) a!3186 mask!3328) lt!327920))))

(declare-fun b!738659 () Bool)

(declare-fun e!413096 () Bool)

(assert (=> b!738659 (= e!413101 e!413096)))

(declare-fun res!496692 () Bool)

(assert (=> b!738659 (=> (not res!496692) (not e!413096))))

(declare-fun lt!327924 () SeekEntryResult!7400)

(declare-fun lt!327928 () SeekEntryResult!7400)

(assert (=> b!738659 (= res!496692 (= lt!327924 lt!327928))))

(assert (=> b!738659 (= lt!327928 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!327926 lt!327927 mask!3328))))

(assert (=> b!738659 (= lt!327924 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!327926 mask!3328) lt!327926 lt!327927 mask!3328))))

(assert (=> b!738659 (= lt!327926 (select (store (arr!19793 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!738659 (= lt!327927 (array!41367 (store (arr!19793 a!3186) i!1173 k!2102) (size!20214 a!3186)))))

(declare-fun b!738660 () Bool)

(assert (=> b!738660 (= e!413098 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19793 a!3186) j!159) a!3186 mask!3328) (Found!7400 j!159)))))

(declare-fun b!738661 () Bool)

(assert (=> b!738661 (= e!413095 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!327922 resIntermediateIndex!5 (select (arr!19793 a!3186) j!159) a!3186 mask!3328) lt!327925)))))

(declare-fun b!738662 () Bool)

(assert (=> b!738662 (= e!413096 (not e!413103))))

(declare-fun res!496703 () Bool)

(assert (=> b!738662 (=> res!496703 e!413103)))

(assert (=> b!738662 (= res!496703 (or (not (is-Intermediate!7400 lt!327928)) (bvsge x!1131 (x!62983 lt!327928))))))

(assert (=> b!738662 (= lt!327925 (Found!7400 j!159))))

(assert (=> b!738662 e!413102))

(declare-fun res!496694 () Bool)

(assert (=> b!738662 (=> (not res!496694) (not e!413102))))

(assert (=> b!738662 (= res!496694 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-fun lt!327932 () Unit!25218)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41366 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25218)

(assert (=> b!738662 (= lt!327932 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!738663 () Bool)

(declare-fun res!496688 () Bool)

(assert (=> b!738663 (=> (not res!496688) (not e!413097))))

(assert (=> b!738663 (= res!496688 (and (= (size!20214 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20214 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20214 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!738664 () Bool)

(assert (=> b!738664 (= e!413097 e!413093)))

(declare-fun res!496698 () Bool)

(assert (=> b!738664 (=> (not res!496698) (not e!413093))))

(declare-fun lt!327930 () SeekEntryResult!7400)

(assert (=> b!738664 (= res!496698 (or (= lt!327930 (MissingZero!7400 i!1173)) (= lt!327930 (MissingVacant!7400 i!1173))))))

(assert (=> b!738664 (= lt!327930 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!738665 () Bool)

(declare-fun res!496695 () Bool)

(assert (=> b!738665 (=> (not res!496695) (not e!413097))))

(assert (=> b!738665 (= res!496695 (validKeyInArray!0 k!2102))))

(assert (= (and start!65240 res!496693) b!738663))

(assert (= (and b!738663 res!496688) b!738643))

(assert (= (and b!738643 res!496697) b!738665))

(assert (= (and b!738665 res!496695) b!738655))

(assert (= (and b!738655 res!496689) b!738664))

(assert (= (and b!738664 res!496698) b!738649))

(assert (= (and b!738649 res!496696) b!738654))

(assert (= (and b!738654 res!496701) b!738653))

(assert (= (and b!738653 res!496702) b!738650))

(assert (= (and b!738650 res!496690) b!738646))

(assert (= (and b!738646 res!496704) b!738647))

(assert (= (and b!738647 c!81359) b!738642))

(assert (= (and b!738647 (not c!81359)) b!738660))

(assert (= (and b!738647 res!496687) b!738659))

(assert (= (and b!738659 res!496692) b!738662))

(assert (= (and b!738662 res!496694) b!738656))

(assert (= (and b!738656 res!496691) b!738658))

(assert (= (and b!738662 (not res!496703)) b!738651))

(assert (= (and b!738651 c!81360) b!738657))

(assert (= (and b!738651 (not c!81360)) b!738645))

(assert (= (and b!738651 (not res!496700)) b!738644))

(assert (= (and b!738644 c!81358) b!738648))

(assert (= (and b!738644 (not c!81358)) b!738661))

(assert (= (and b!738644 (not res!496699)) b!738652))

(declare-fun m!690289 () Bool)

(assert (=> b!738652 m!690289))

(declare-fun m!690291 () Bool)

(assert (=> b!738651 m!690291))

(declare-fun m!690293 () Bool)

(assert (=> b!738654 m!690293))

(declare-fun m!690295 () Bool)

(assert (=> start!65240 m!690295))

(declare-fun m!690297 () Bool)

(assert (=> start!65240 m!690297))

(declare-fun m!690299 () Bool)

(assert (=> b!738665 m!690299))

(declare-fun m!690301 () Bool)

(assert (=> b!738664 m!690301))

(declare-fun m!690303 () Bool)

(assert (=> b!738646 m!690303))

(declare-fun m!690305 () Bool)

(assert (=> b!738657 m!690305))

(assert (=> b!738657 m!690305))

(declare-fun m!690307 () Bool)

(assert (=> b!738657 m!690307))

(assert (=> b!738648 m!690305))

(assert (=> b!738648 m!690305))

(assert (=> b!738648 m!690307))

(assert (=> b!738642 m!690305))

(assert (=> b!738642 m!690305))

(declare-fun m!690309 () Bool)

(assert (=> b!738642 m!690309))

(declare-fun m!690311 () Bool)

(assert (=> b!738659 m!690311))

(declare-fun m!690313 () Bool)

(assert (=> b!738659 m!690313))

(declare-fun m!690315 () Bool)

(assert (=> b!738659 m!690315))

(declare-fun m!690317 () Bool)

(assert (=> b!738659 m!690317))

(assert (=> b!738659 m!690313))

(declare-fun m!690319 () Bool)

(assert (=> b!738659 m!690319))

(assert (=> b!738645 m!690305))

(assert (=> b!738645 m!690305))

(declare-fun m!690321 () Bool)

(assert (=> b!738645 m!690321))

(assert (=> b!738645 m!690305))

(declare-fun m!690323 () Bool)

(assert (=> b!738645 m!690323))

(declare-fun m!690325 () Bool)

(assert (=> b!738655 m!690325))

(assert (=> b!738660 m!690305))

(assert (=> b!738660 m!690305))

(assert (=> b!738660 m!690321))

(assert (=> b!738658 m!690305))

(assert (=> b!738658 m!690305))

(declare-fun m!690327 () Bool)

(assert (=> b!738658 m!690327))

(assert (=> b!738650 m!690305))

(assert (=> b!738650 m!690305))

(declare-fun m!690329 () Bool)

(assert (=> b!738650 m!690329))

(assert (=> b!738650 m!690329))

(assert (=> b!738650 m!690305))

(declare-fun m!690331 () Bool)

(assert (=> b!738650 m!690331))

(assert (=> b!738661 m!690305))

(assert (=> b!738661 m!690305))

(assert (=> b!738661 m!690323))

(declare-fun m!690333 () Bool)

(assert (=> b!738662 m!690333))

(declare-fun m!690335 () Bool)

(assert (=> b!738662 m!690335))

(assert (=> b!738643 m!690305))

(assert (=> b!738643 m!690305))

(declare-fun m!690337 () Bool)

(assert (=> b!738643 m!690337))

(assert (=> b!738656 m!690305))

(assert (=> b!738656 m!690305))

(declare-fun m!690339 () Bool)

(assert (=> b!738656 m!690339))

(declare-fun m!690341 () Bool)

(assert (=> b!738649 m!690341))

(push 1)


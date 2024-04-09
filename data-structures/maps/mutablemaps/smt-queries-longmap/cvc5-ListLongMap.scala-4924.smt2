; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!67804 () Bool)

(assert start!67804)

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!42799 0))(
  ( (array!42800 (arr!20484 (Array (_ BitVec 32) (_ BitVec 64))) (size!20905 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42799)

(declare-fun b!787727 () Bool)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun e!437868 () Bool)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!8091 0))(
  ( (MissingZero!8091 (index!34731 (_ BitVec 32))) (Found!8091 (index!34732 (_ BitVec 32))) (Intermediate!8091 (undefined!8903 Bool) (index!34733 (_ BitVec 32)) (x!65696 (_ BitVec 32))) (Undefined!8091) (MissingVacant!8091 (index!34734 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42799 (_ BitVec 32)) SeekEntryResult!8091)

(assert (=> b!787727 (= e!437868 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20484 a!3186) j!159) a!3186 mask!3328) (Found!8091 j!159)))))

(declare-fun b!787728 () Bool)

(declare-fun e!437873 () Bool)

(declare-fun e!437867 () Bool)

(assert (=> b!787728 (= e!437873 (not e!437867))))

(declare-fun res!533697 () Bool)

(assert (=> b!787728 (=> res!533697 e!437867)))

(declare-fun lt!351443 () SeekEntryResult!8091)

(assert (=> b!787728 (= res!533697 (or (not (is-Intermediate!8091 lt!351443)) (bvslt x!1131 (x!65696 lt!351443)) (not (= x!1131 (x!65696 lt!351443))) (not (= index!1321 (index!34733 lt!351443)))))))

(declare-fun e!437874 () Bool)

(assert (=> b!787728 e!437874))

(declare-fun res!533703 () Bool)

(assert (=> b!787728 (=> (not res!533703) (not e!437874))))

(declare-fun lt!351440 () SeekEntryResult!8091)

(declare-fun lt!351442 () SeekEntryResult!8091)

(assert (=> b!787728 (= res!533703 (= lt!351440 lt!351442))))

(assert (=> b!787728 (= lt!351442 (Found!8091 j!159))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42799 (_ BitVec 32)) SeekEntryResult!8091)

(assert (=> b!787728 (= lt!351440 (seekEntryOrOpen!0 (select (arr!20484 a!3186) j!159) a!3186 mask!3328))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42799 (_ BitVec 32)) Bool)

(assert (=> b!787728 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-datatypes ((Unit!27274 0))(
  ( (Unit!27275) )
))
(declare-fun lt!351436 () Unit!27274)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42799 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27274)

(assert (=> b!787728 (= lt!351436 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!787729 () Bool)

(declare-fun e!437869 () Unit!27274)

(declare-fun Unit!27276 () Unit!27274)

(assert (=> b!787729 (= e!437869 Unit!27276)))

(declare-fun b!787730 () Bool)

(declare-fun e!437878 () Bool)

(assert (=> b!787730 (= e!437878 e!437873)))

(declare-fun res!533696 () Bool)

(assert (=> b!787730 (=> (not res!533696) (not e!437873))))

(declare-fun lt!351438 () SeekEntryResult!8091)

(assert (=> b!787730 (= res!533696 (= lt!351438 lt!351443))))

(declare-fun lt!351435 () array!42799)

(declare-fun lt!351434 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42799 (_ BitVec 32)) SeekEntryResult!8091)

(assert (=> b!787730 (= lt!351443 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!351434 lt!351435 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!787730 (= lt!351438 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!351434 mask!3328) lt!351434 lt!351435 mask!3328))))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!787730 (= lt!351434 (select (store (arr!20484 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!787730 (= lt!351435 (array!42800 (store (arr!20484 a!3186) i!1173 k!2102) (size!20905 a!3186)))))

(declare-fun b!787731 () Bool)

(declare-fun e!437870 () Bool)

(assert (=> b!787731 (= e!437870 e!437878)))

(declare-fun res!533709 () Bool)

(assert (=> b!787731 (=> (not res!533709) (not e!437878))))

(declare-fun lt!351437 () SeekEntryResult!8091)

(assert (=> b!787731 (= res!533709 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20484 a!3186) j!159) mask!3328) (select (arr!20484 a!3186) j!159) a!3186 mask!3328) lt!351437))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!787731 (= lt!351437 (Intermediate!8091 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!787732 () Bool)

(declare-fun e!437871 () Bool)

(declare-fun lt!351439 () SeekEntryResult!8091)

(assert (=> b!787732 (= e!437871 (= lt!351440 lt!351439))))

(declare-fun b!787733 () Bool)

(declare-fun e!437875 () Bool)

(assert (=> b!787733 (= e!437867 e!437875)))

(declare-fun res!533695 () Bool)

(assert (=> b!787733 (=> res!533695 e!437875)))

(assert (=> b!787733 (= res!533695 (not (= lt!351439 lt!351442)))))

(assert (=> b!787733 (= lt!351439 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20484 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!787734 () Bool)

(assert (=> b!787734 (= e!437868 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20484 a!3186) j!159) a!3186 mask!3328) lt!351437))))

(declare-fun b!787735 () Bool)

(declare-fun e!437877 () Bool)

(assert (=> b!787735 (= e!437877 true)))

(assert (=> b!787735 e!437871))

(declare-fun res!533700 () Bool)

(assert (=> b!787735 (=> (not res!533700) (not e!437871))))

(declare-fun lt!351445 () (_ BitVec 64))

(assert (=> b!787735 (= res!533700 (= lt!351445 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!351444 () Unit!27274)

(assert (=> b!787735 (= lt!351444 e!437869)))

(declare-fun c!87426 () Bool)

(assert (=> b!787735 (= c!87426 (= lt!351445 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!787736 () Bool)

(assert (=> b!787736 (= e!437875 e!437877)))

(declare-fun res!533707 () Bool)

(assert (=> b!787736 (=> res!533707 e!437877)))

(assert (=> b!787736 (= res!533707 (= lt!351445 lt!351434))))

(assert (=> b!787736 (= lt!351445 (select (store (arr!20484 a!3186) i!1173 k!2102) index!1321))))

(declare-fun b!787737 () Bool)

(declare-fun res!533699 () Bool)

(declare-fun e!437876 () Bool)

(assert (=> b!787737 (=> (not res!533699) (not e!437876))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!787737 (= res!533699 (validKeyInArray!0 k!2102))))

(declare-fun b!787738 () Bool)

(declare-fun res!533706 () Bool)

(assert (=> b!787738 (=> (not res!533706) (not e!437870))))

(assert (=> b!787738 (= res!533706 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!787739 () Bool)

(assert (=> b!787739 (= e!437876 e!437870)))

(declare-fun res!533702 () Bool)

(assert (=> b!787739 (=> (not res!533702) (not e!437870))))

(declare-fun lt!351441 () SeekEntryResult!8091)

(assert (=> b!787739 (= res!533702 (or (= lt!351441 (MissingZero!8091 i!1173)) (= lt!351441 (MissingVacant!8091 i!1173))))))

(assert (=> b!787739 (= lt!351441 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!787740 () Bool)

(declare-fun res!533704 () Bool)

(assert (=> b!787740 (=> (not res!533704) (not e!437876))))

(assert (=> b!787740 (= res!533704 (validKeyInArray!0 (select (arr!20484 a!3186) j!159)))))

(declare-fun b!787741 () Bool)

(declare-fun res!533705 () Bool)

(assert (=> b!787741 (=> (not res!533705) (not e!437876))))

(declare-fun arrayContainsKey!0 (array!42799 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!787741 (= res!533705 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!787742 () Bool)

(declare-fun res!533693 () Bool)

(assert (=> b!787742 (=> (not res!533693) (not e!437878))))

(assert (=> b!787742 (= res!533693 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20484 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!533692 () Bool)

(assert (=> start!67804 (=> (not res!533692) (not e!437876))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67804 (= res!533692 (validMask!0 mask!3328))))

(assert (=> start!67804 e!437876))

(assert (=> start!67804 true))

(declare-fun array_inv!16258 (array!42799) Bool)

(assert (=> start!67804 (array_inv!16258 a!3186)))

(declare-fun b!787743 () Bool)

(declare-fun res!533698 () Bool)

(assert (=> b!787743 (=> (not res!533698) (not e!437870))))

(declare-datatypes ((List!14539 0))(
  ( (Nil!14536) (Cons!14535 (h!15658 (_ BitVec 64)) (t!20862 List!14539)) )
))
(declare-fun arrayNoDuplicates!0 (array!42799 (_ BitVec 32) List!14539) Bool)

(assert (=> b!787743 (= res!533698 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14536))))

(declare-fun b!787744 () Bool)

(declare-fun Unit!27277 () Unit!27274)

(assert (=> b!787744 (= e!437869 Unit!27277)))

(assert (=> b!787744 false))

(declare-fun b!787745 () Bool)

(declare-fun res!533701 () Bool)

(assert (=> b!787745 (=> (not res!533701) (not e!437878))))

(assert (=> b!787745 (= res!533701 e!437868)))

(declare-fun c!87425 () Bool)

(assert (=> b!787745 (= c!87425 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!787746 () Bool)

(assert (=> b!787746 (= e!437874 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20484 a!3186) j!159) a!3186 mask!3328) lt!351442))))

(declare-fun b!787747 () Bool)

(declare-fun res!533708 () Bool)

(assert (=> b!787747 (=> (not res!533708) (not e!437870))))

(assert (=> b!787747 (= res!533708 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20905 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20905 a!3186))))))

(declare-fun b!787748 () Bool)

(declare-fun res!533710 () Bool)

(assert (=> b!787748 (=> (not res!533710) (not e!437871))))

(assert (=> b!787748 (= res!533710 (= (seekEntryOrOpen!0 lt!351434 lt!351435 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!351434 lt!351435 mask!3328)))))

(declare-fun b!787749 () Bool)

(declare-fun res!533694 () Bool)

(assert (=> b!787749 (=> (not res!533694) (not e!437876))))

(assert (=> b!787749 (= res!533694 (and (= (size!20905 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20905 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20905 a!3186)) (not (= i!1173 j!159))))))

(assert (= (and start!67804 res!533692) b!787749))

(assert (= (and b!787749 res!533694) b!787740))

(assert (= (and b!787740 res!533704) b!787737))

(assert (= (and b!787737 res!533699) b!787741))

(assert (= (and b!787741 res!533705) b!787739))

(assert (= (and b!787739 res!533702) b!787738))

(assert (= (and b!787738 res!533706) b!787743))

(assert (= (and b!787743 res!533698) b!787747))

(assert (= (and b!787747 res!533708) b!787731))

(assert (= (and b!787731 res!533709) b!787742))

(assert (= (and b!787742 res!533693) b!787745))

(assert (= (and b!787745 c!87425) b!787734))

(assert (= (and b!787745 (not c!87425)) b!787727))

(assert (= (and b!787745 res!533701) b!787730))

(assert (= (and b!787730 res!533696) b!787728))

(assert (= (and b!787728 res!533703) b!787746))

(assert (= (and b!787728 (not res!533697)) b!787733))

(assert (= (and b!787733 (not res!533695)) b!787736))

(assert (= (and b!787736 (not res!533707)) b!787735))

(assert (= (and b!787735 c!87426) b!787744))

(assert (= (and b!787735 (not c!87426)) b!787729))

(assert (= (and b!787735 res!533700) b!787748))

(assert (= (and b!787748 res!533710) b!787732))

(declare-fun m!729277 () Bool)

(assert (=> b!787731 m!729277))

(assert (=> b!787731 m!729277))

(declare-fun m!729279 () Bool)

(assert (=> b!787731 m!729279))

(assert (=> b!787731 m!729279))

(assert (=> b!787731 m!729277))

(declare-fun m!729281 () Bool)

(assert (=> b!787731 m!729281))

(assert (=> b!787727 m!729277))

(assert (=> b!787727 m!729277))

(declare-fun m!729283 () Bool)

(assert (=> b!787727 m!729283))

(declare-fun m!729285 () Bool)

(assert (=> start!67804 m!729285))

(declare-fun m!729287 () Bool)

(assert (=> start!67804 m!729287))

(declare-fun m!729289 () Bool)

(assert (=> b!787742 m!729289))

(declare-fun m!729291 () Bool)

(assert (=> b!787730 m!729291))

(declare-fun m!729293 () Bool)

(assert (=> b!787730 m!729293))

(declare-fun m!729295 () Bool)

(assert (=> b!787730 m!729295))

(declare-fun m!729297 () Bool)

(assert (=> b!787730 m!729297))

(assert (=> b!787730 m!729295))

(declare-fun m!729299 () Bool)

(assert (=> b!787730 m!729299))

(declare-fun m!729301 () Bool)

(assert (=> b!787738 m!729301))

(declare-fun m!729303 () Bool)

(assert (=> b!787737 m!729303))

(declare-fun m!729305 () Bool)

(assert (=> b!787741 m!729305))

(declare-fun m!729307 () Bool)

(assert (=> b!787739 m!729307))

(assert (=> b!787736 m!729291))

(declare-fun m!729309 () Bool)

(assert (=> b!787736 m!729309))

(assert (=> b!787734 m!729277))

(assert (=> b!787734 m!729277))

(declare-fun m!729311 () Bool)

(assert (=> b!787734 m!729311))

(assert (=> b!787740 m!729277))

(assert (=> b!787740 m!729277))

(declare-fun m!729313 () Bool)

(assert (=> b!787740 m!729313))

(assert (=> b!787728 m!729277))

(assert (=> b!787728 m!729277))

(declare-fun m!729315 () Bool)

(assert (=> b!787728 m!729315))

(declare-fun m!729317 () Bool)

(assert (=> b!787728 m!729317))

(declare-fun m!729319 () Bool)

(assert (=> b!787728 m!729319))

(assert (=> b!787746 m!729277))

(assert (=> b!787746 m!729277))

(declare-fun m!729321 () Bool)

(assert (=> b!787746 m!729321))

(declare-fun m!729323 () Bool)

(assert (=> b!787743 m!729323))

(declare-fun m!729325 () Bool)

(assert (=> b!787748 m!729325))

(declare-fun m!729327 () Bool)

(assert (=> b!787748 m!729327))

(assert (=> b!787733 m!729277))

(assert (=> b!787733 m!729277))

(assert (=> b!787733 m!729283))

(push 1)


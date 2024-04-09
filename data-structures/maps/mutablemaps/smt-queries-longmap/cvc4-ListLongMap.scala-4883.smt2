; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!67364 () Bool)

(assert start!67364)

(declare-datatypes ((array!42548 0))(
  ( (array!42549 (arr!20363 (Array (_ BitVec 32) (_ BitVec 64))) (size!20784 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42548)

(declare-datatypes ((SeekEntryResult!7970 0))(
  ( (MissingZero!7970 (index!34247 (_ BitVec 32))) (Found!7970 (index!34248 (_ BitVec 32))) (Intermediate!7970 (undefined!8782 Bool) (index!34249 (_ BitVec 32)) (x!65220 (_ BitVec 32))) (Undefined!7970) (MissingVacant!7970 (index!34250 (_ BitVec 32))) )
))
(declare-fun lt!346919 () SeekEntryResult!7970)

(declare-fun b!778627 () Bool)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun e!433225 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42548 (_ BitVec 32)) SeekEntryResult!7970)

(assert (=> b!778627 (= e!433225 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20363 a!3186) j!159) a!3186 mask!3328) lt!346919))))

(declare-fun b!778628 () Bool)

(declare-fun e!433223 () Bool)

(assert (=> b!778628 (= e!433223 true)))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun lt!346921 () SeekEntryResult!7970)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42548 (_ BitVec 32)) SeekEntryResult!7970)

(assert (=> b!778628 (= lt!346921 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20363 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!778629 () Bool)

(declare-fun res!526832 () Bool)

(declare-fun e!433222 () Bool)

(assert (=> b!778629 (=> (not res!526832) (not e!433222))))

(assert (=> b!778629 (= res!526832 e!433225)))

(declare-fun c!86304 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!778629 (= c!86304 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!778630 () Bool)

(declare-fun res!526831 () Bool)

(declare-fun e!433219 () Bool)

(assert (=> b!778630 (=> (not res!526831) (not e!433219))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42548 (_ BitVec 32)) Bool)

(assert (=> b!778630 (= res!526831 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!778631 () Bool)

(declare-fun e!433221 () Bool)

(declare-fun e!433217 () Bool)

(assert (=> b!778631 (= e!433221 e!433217)))

(declare-fun res!526833 () Bool)

(assert (=> b!778631 (=> (not res!526833) (not e!433217))))

(declare-fun lt!346913 () SeekEntryResult!7970)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42548 (_ BitVec 32)) SeekEntryResult!7970)

(assert (=> b!778631 (= res!526833 (= (seekEntryOrOpen!0 (select (arr!20363 a!3186) j!159) a!3186 mask!3328) lt!346913))))

(assert (=> b!778631 (= lt!346913 (Found!7970 j!159))))

(declare-fun b!778632 () Bool)

(declare-fun res!526840 () Bool)

(declare-fun e!433218 () Bool)

(assert (=> b!778632 (=> (not res!526840) (not e!433218))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!778632 (= res!526840 (validKeyInArray!0 k!2102))))

(declare-fun b!778633 () Bool)

(declare-fun res!526826 () Bool)

(assert (=> b!778633 (=> (not res!526826) (not e!433218))))

(declare-fun arrayContainsKey!0 (array!42548 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!778633 (= res!526826 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!778634 () Bool)

(declare-fun res!526837 () Bool)

(assert (=> b!778634 (=> (not res!526837) (not e!433222))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!778634 (= res!526837 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20363 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!778636 () Bool)

(declare-fun res!526839 () Bool)

(assert (=> b!778636 (=> (not res!526839) (not e!433219))))

(declare-datatypes ((List!14418 0))(
  ( (Nil!14415) (Cons!14414 (h!15528 (_ BitVec 64)) (t!20741 List!14418)) )
))
(declare-fun arrayNoDuplicates!0 (array!42548 (_ BitVec 32) List!14418) Bool)

(assert (=> b!778636 (= res!526839 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14415))))

(declare-fun b!778637 () Bool)

(declare-fun e!433224 () Bool)

(assert (=> b!778637 (= e!433222 e!433224)))

(declare-fun res!526836 () Bool)

(assert (=> b!778637 (=> (not res!526836) (not e!433224))))

(declare-fun lt!346916 () SeekEntryResult!7970)

(declare-fun lt!346918 () SeekEntryResult!7970)

(assert (=> b!778637 (= res!526836 (= lt!346916 lt!346918))))

(declare-fun lt!346914 () (_ BitVec 64))

(declare-fun lt!346917 () array!42548)

(assert (=> b!778637 (= lt!346918 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!346914 lt!346917 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!778637 (= lt!346916 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!346914 mask!3328) lt!346914 lt!346917 mask!3328))))

(assert (=> b!778637 (= lt!346914 (select (store (arr!20363 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!778637 (= lt!346917 (array!42549 (store (arr!20363 a!3186) i!1173 k!2102) (size!20784 a!3186)))))

(declare-fun b!778638 () Bool)

(assert (=> b!778638 (= e!433224 (not e!433223))))

(declare-fun res!526828 () Bool)

(assert (=> b!778638 (=> res!526828 e!433223)))

(assert (=> b!778638 (= res!526828 (or (not (is-Intermediate!7970 lt!346918)) (bvslt x!1131 (x!65220 lt!346918)) (not (= x!1131 (x!65220 lt!346918))) (not (= index!1321 (index!34249 lt!346918)))))))

(assert (=> b!778638 e!433221))

(declare-fun res!526835 () Bool)

(assert (=> b!778638 (=> (not res!526835) (not e!433221))))

(assert (=> b!778638 (= res!526835 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!26834 0))(
  ( (Unit!26835) )
))
(declare-fun lt!346915 () Unit!26834)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42548 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26834)

(assert (=> b!778638 (= lt!346915 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!778639 () Bool)

(assert (=> b!778639 (= e!433219 e!433222)))

(declare-fun res!526827 () Bool)

(assert (=> b!778639 (=> (not res!526827) (not e!433222))))

(assert (=> b!778639 (= res!526827 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20363 a!3186) j!159) mask!3328) (select (arr!20363 a!3186) j!159) a!3186 mask!3328) lt!346919))))

(assert (=> b!778639 (= lt!346919 (Intermediate!7970 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!778640 () Bool)

(declare-fun res!526830 () Bool)

(assert (=> b!778640 (=> (not res!526830) (not e!433219))))

(assert (=> b!778640 (= res!526830 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20784 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20784 a!3186))))))

(declare-fun b!778641 () Bool)

(assert (=> b!778641 (= e!433217 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20363 a!3186) j!159) a!3186 mask!3328) lt!346913))))

(declare-fun b!778642 () Bool)

(assert (=> b!778642 (= e!433225 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20363 a!3186) j!159) a!3186 mask!3328) (Found!7970 j!159)))))

(declare-fun b!778643 () Bool)

(declare-fun res!526825 () Bool)

(assert (=> b!778643 (=> (not res!526825) (not e!433218))))

(assert (=> b!778643 (= res!526825 (validKeyInArray!0 (select (arr!20363 a!3186) j!159)))))

(declare-fun b!778644 () Bool)

(assert (=> b!778644 (= e!433218 e!433219)))

(declare-fun res!526838 () Bool)

(assert (=> b!778644 (=> (not res!526838) (not e!433219))))

(declare-fun lt!346920 () SeekEntryResult!7970)

(assert (=> b!778644 (= res!526838 (or (= lt!346920 (MissingZero!7970 i!1173)) (= lt!346920 (MissingVacant!7970 i!1173))))))

(assert (=> b!778644 (= lt!346920 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!778635 () Bool)

(declare-fun res!526834 () Bool)

(assert (=> b!778635 (=> (not res!526834) (not e!433218))))

(assert (=> b!778635 (= res!526834 (and (= (size!20784 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20784 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20784 a!3186)) (not (= i!1173 j!159))))))

(declare-fun res!526829 () Bool)

(assert (=> start!67364 (=> (not res!526829) (not e!433218))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67364 (= res!526829 (validMask!0 mask!3328))))

(assert (=> start!67364 e!433218))

(assert (=> start!67364 true))

(declare-fun array_inv!16137 (array!42548) Bool)

(assert (=> start!67364 (array_inv!16137 a!3186)))

(assert (= (and start!67364 res!526829) b!778635))

(assert (= (and b!778635 res!526834) b!778643))

(assert (= (and b!778643 res!526825) b!778632))

(assert (= (and b!778632 res!526840) b!778633))

(assert (= (and b!778633 res!526826) b!778644))

(assert (= (and b!778644 res!526838) b!778630))

(assert (= (and b!778630 res!526831) b!778636))

(assert (= (and b!778636 res!526839) b!778640))

(assert (= (and b!778640 res!526830) b!778639))

(assert (= (and b!778639 res!526827) b!778634))

(assert (= (and b!778634 res!526837) b!778629))

(assert (= (and b!778629 c!86304) b!778627))

(assert (= (and b!778629 (not c!86304)) b!778642))

(assert (= (and b!778629 res!526832) b!778637))

(assert (= (and b!778637 res!526836) b!778638))

(assert (= (and b!778638 res!526835) b!778631))

(assert (= (and b!778631 res!526833) b!778641))

(assert (= (and b!778638 (not res!526828)) b!778628))

(declare-fun m!722307 () Bool)

(assert (=> b!778627 m!722307))

(assert (=> b!778627 m!722307))

(declare-fun m!722309 () Bool)

(assert (=> b!778627 m!722309))

(assert (=> b!778628 m!722307))

(assert (=> b!778628 m!722307))

(declare-fun m!722311 () Bool)

(assert (=> b!778628 m!722311))

(declare-fun m!722313 () Bool)

(assert (=> b!778636 m!722313))

(assert (=> b!778639 m!722307))

(assert (=> b!778639 m!722307))

(declare-fun m!722315 () Bool)

(assert (=> b!778639 m!722315))

(assert (=> b!778639 m!722315))

(assert (=> b!778639 m!722307))

(declare-fun m!722317 () Bool)

(assert (=> b!778639 m!722317))

(assert (=> b!778642 m!722307))

(assert (=> b!778642 m!722307))

(assert (=> b!778642 m!722311))

(declare-fun m!722319 () Bool)

(assert (=> b!778630 m!722319))

(assert (=> b!778631 m!722307))

(assert (=> b!778631 m!722307))

(declare-fun m!722321 () Bool)

(assert (=> b!778631 m!722321))

(declare-fun m!722323 () Bool)

(assert (=> b!778634 m!722323))

(declare-fun m!722325 () Bool)

(assert (=> b!778638 m!722325))

(declare-fun m!722327 () Bool)

(assert (=> b!778638 m!722327))

(assert (=> b!778641 m!722307))

(assert (=> b!778641 m!722307))

(declare-fun m!722329 () Bool)

(assert (=> b!778641 m!722329))

(declare-fun m!722331 () Bool)

(assert (=> b!778644 m!722331))

(assert (=> b!778643 m!722307))

(assert (=> b!778643 m!722307))

(declare-fun m!722333 () Bool)

(assert (=> b!778643 m!722333))

(declare-fun m!722335 () Bool)

(assert (=> start!67364 m!722335))

(declare-fun m!722337 () Bool)

(assert (=> start!67364 m!722337))

(declare-fun m!722339 () Bool)

(assert (=> b!778633 m!722339))

(declare-fun m!722341 () Bool)

(assert (=> b!778637 m!722341))

(declare-fun m!722343 () Bool)

(assert (=> b!778637 m!722343))

(declare-fun m!722345 () Bool)

(assert (=> b!778637 m!722345))

(assert (=> b!778637 m!722343))

(declare-fun m!722347 () Bool)

(assert (=> b!778637 m!722347))

(declare-fun m!722349 () Bool)

(assert (=> b!778637 m!722349))

(declare-fun m!722351 () Bool)

(assert (=> b!778632 m!722351))

(push 1)


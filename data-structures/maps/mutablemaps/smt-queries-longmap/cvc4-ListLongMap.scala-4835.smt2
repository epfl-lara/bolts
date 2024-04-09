; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!66504 () Bool)

(assert start!66504)

(declare-fun b!766212 () Bool)

(declare-fun e!426698 () Bool)

(assert (=> b!766212 (= e!426698 true)))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun lt!340858 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!766212 (= lt!340858 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!766213 () Bool)

(declare-fun res!518521 () Bool)

(declare-fun e!426700 () Bool)

(assert (=> b!766213 (=> (not res!518521) (not e!426700))))

(declare-datatypes ((array!42236 0))(
  ( (array!42237 (arr!20219 (Array (_ BitVec 32) (_ BitVec 64))) (size!20640 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42236)

(declare-datatypes ((List!14274 0))(
  ( (Nil!14271) (Cons!14270 (h!15360 (_ BitVec 64)) (t!20597 List!14274)) )
))
(declare-fun arrayNoDuplicates!0 (array!42236 (_ BitVec 32) List!14274) Bool)

(assert (=> b!766213 (= res!518521 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14271))))

(declare-fun b!766214 () Bool)

(declare-fun res!518524 () Bool)

(declare-fun e!426703 () Bool)

(assert (=> b!766214 (=> (not res!518524) (not e!426703))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!766214 (= res!518524 (validKeyInArray!0 (select (arr!20219 a!3186) j!159)))))

(declare-fun b!766215 () Bool)

(declare-fun res!518525 () Bool)

(declare-fun e!426702 () Bool)

(assert (=> b!766215 (=> (not res!518525) (not e!426702))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!766215 (= res!518525 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20219 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!766216 () Bool)

(declare-fun res!518522 () Bool)

(assert (=> b!766216 (=> (not res!518522) (not e!426703))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!42236 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!766216 (= res!518522 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!766217 () Bool)

(declare-fun e!426697 () Bool)

(assert (=> b!766217 (= e!426697 (not e!426698))))

(declare-fun res!518520 () Bool)

(assert (=> b!766217 (=> res!518520 e!426698)))

(declare-datatypes ((SeekEntryResult!7826 0))(
  ( (MissingZero!7826 (index!33671 (_ BitVec 32))) (Found!7826 (index!33672 (_ BitVec 32))) (Intermediate!7826 (undefined!8638 Bool) (index!33673 (_ BitVec 32)) (x!64601 (_ BitVec 32))) (Undefined!7826) (MissingVacant!7826 (index!33674 (_ BitVec 32))) )
))
(declare-fun lt!340859 () SeekEntryResult!7826)

(assert (=> b!766217 (= res!518520 (or (not (is-Intermediate!7826 lt!340859)) (bvsge x!1131 (x!64601 lt!340859))))))

(declare-fun e!426699 () Bool)

(assert (=> b!766217 e!426699))

(declare-fun res!518528 () Bool)

(assert (=> b!766217 (=> (not res!518528) (not e!426699))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42236 (_ BitVec 32)) Bool)

(assert (=> b!766217 (= res!518528 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!26378 0))(
  ( (Unit!26379) )
))
(declare-fun lt!340864 () Unit!26378)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42236 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26378)

(assert (=> b!766217 (= lt!340864 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!766218 () Bool)

(declare-fun res!518531 () Bool)

(assert (=> b!766218 (=> (not res!518531) (not e!426703))))

(assert (=> b!766218 (= res!518531 (validKeyInArray!0 k!2102))))

(declare-fun lt!340860 () SeekEntryResult!7826)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun b!766219 () Bool)

(declare-fun e!426701 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42236 (_ BitVec 32)) SeekEntryResult!7826)

(assert (=> b!766219 (= e!426701 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20219 a!3186) j!159) a!3186 mask!3328) lt!340860))))

(declare-fun b!766220 () Bool)

(declare-fun lt!340863 () SeekEntryResult!7826)

(declare-fun e!426704 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42236 (_ BitVec 32)) SeekEntryResult!7826)

(assert (=> b!766220 (= e!426704 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20219 a!3186) j!159) a!3186 mask!3328) lt!340863))))

(declare-fun b!766221 () Bool)

(declare-fun res!518526 () Bool)

(assert (=> b!766221 (=> (not res!518526) (not e!426700))))

(assert (=> b!766221 (= res!518526 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!766222 () Bool)

(declare-fun res!518530 () Bool)

(assert (=> b!766222 (=> (not res!518530) (not e!426702))))

(assert (=> b!766222 (= res!518530 e!426704)))

(declare-fun c!84237 () Bool)

(assert (=> b!766222 (= c!84237 (bvsle x!1131 resIntermediateX!5))))

(declare-fun res!518518 () Bool)

(assert (=> start!66504 (=> (not res!518518) (not e!426703))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!66504 (= res!518518 (validMask!0 mask!3328))))

(assert (=> start!66504 e!426703))

(assert (=> start!66504 true))

(declare-fun array_inv!15993 (array!42236) Bool)

(assert (=> start!66504 (array_inv!15993 a!3186)))

(declare-fun b!766223 () Bool)

(assert (=> b!766223 (= e!426699 e!426701)))

(declare-fun res!518523 () Bool)

(assert (=> b!766223 (=> (not res!518523) (not e!426701))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42236 (_ BitVec 32)) SeekEntryResult!7826)

(assert (=> b!766223 (= res!518523 (= (seekEntryOrOpen!0 (select (arr!20219 a!3186) j!159) a!3186 mask!3328) lt!340860))))

(assert (=> b!766223 (= lt!340860 (Found!7826 j!159))))

(declare-fun b!766224 () Bool)

(assert (=> b!766224 (= e!426703 e!426700)))

(declare-fun res!518532 () Bool)

(assert (=> b!766224 (=> (not res!518532) (not e!426700))))

(declare-fun lt!340862 () SeekEntryResult!7826)

(assert (=> b!766224 (= res!518532 (or (= lt!340862 (MissingZero!7826 i!1173)) (= lt!340862 (MissingVacant!7826 i!1173))))))

(assert (=> b!766224 (= lt!340862 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!766225 () Bool)

(assert (=> b!766225 (= e!426702 e!426697)))

(declare-fun res!518519 () Bool)

(assert (=> b!766225 (=> (not res!518519) (not e!426697))))

(declare-fun lt!340856 () SeekEntryResult!7826)

(assert (=> b!766225 (= res!518519 (= lt!340856 lt!340859))))

(declare-fun lt!340857 () (_ BitVec 64))

(declare-fun lt!340861 () array!42236)

(assert (=> b!766225 (= lt!340859 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!340857 lt!340861 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!766225 (= lt!340856 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!340857 mask!3328) lt!340857 lt!340861 mask!3328))))

(assert (=> b!766225 (= lt!340857 (select (store (arr!20219 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!766225 (= lt!340861 (array!42237 (store (arr!20219 a!3186) i!1173 k!2102) (size!20640 a!3186)))))

(declare-fun b!766226 () Bool)

(assert (=> b!766226 (= e!426704 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20219 a!3186) j!159) a!3186 mask!3328) (Found!7826 j!159)))))

(declare-fun b!766227 () Bool)

(assert (=> b!766227 (= e!426700 e!426702)))

(declare-fun res!518517 () Bool)

(assert (=> b!766227 (=> (not res!518517) (not e!426702))))

(assert (=> b!766227 (= res!518517 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20219 a!3186) j!159) mask!3328) (select (arr!20219 a!3186) j!159) a!3186 mask!3328) lt!340863))))

(assert (=> b!766227 (= lt!340863 (Intermediate!7826 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!766228 () Bool)

(declare-fun res!518529 () Bool)

(assert (=> b!766228 (=> (not res!518529) (not e!426700))))

(assert (=> b!766228 (= res!518529 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20640 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20640 a!3186))))))

(declare-fun b!766229 () Bool)

(declare-fun res!518527 () Bool)

(assert (=> b!766229 (=> (not res!518527) (not e!426703))))

(assert (=> b!766229 (= res!518527 (and (= (size!20640 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20640 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20640 a!3186)) (not (= i!1173 j!159))))))

(assert (= (and start!66504 res!518518) b!766229))

(assert (= (and b!766229 res!518527) b!766214))

(assert (= (and b!766214 res!518524) b!766218))

(assert (= (and b!766218 res!518531) b!766216))

(assert (= (and b!766216 res!518522) b!766224))

(assert (= (and b!766224 res!518532) b!766221))

(assert (= (and b!766221 res!518526) b!766213))

(assert (= (and b!766213 res!518521) b!766228))

(assert (= (and b!766228 res!518529) b!766227))

(assert (= (and b!766227 res!518517) b!766215))

(assert (= (and b!766215 res!518525) b!766222))

(assert (= (and b!766222 c!84237) b!766220))

(assert (= (and b!766222 (not c!84237)) b!766226))

(assert (= (and b!766222 res!518530) b!766225))

(assert (= (and b!766225 res!518519) b!766217))

(assert (= (and b!766217 res!518528) b!766223))

(assert (= (and b!766223 res!518523) b!766219))

(assert (= (and b!766217 (not res!518520)) b!766212))

(declare-fun m!712289 () Bool)

(assert (=> b!766223 m!712289))

(assert (=> b!766223 m!712289))

(declare-fun m!712291 () Bool)

(assert (=> b!766223 m!712291))

(declare-fun m!712293 () Bool)

(assert (=> b!766218 m!712293))

(assert (=> b!766219 m!712289))

(assert (=> b!766219 m!712289))

(declare-fun m!712295 () Bool)

(assert (=> b!766219 m!712295))

(declare-fun m!712297 () Bool)

(assert (=> b!766212 m!712297))

(declare-fun m!712299 () Bool)

(assert (=> b!766213 m!712299))

(declare-fun m!712301 () Bool)

(assert (=> start!66504 m!712301))

(declare-fun m!712303 () Bool)

(assert (=> start!66504 m!712303))

(declare-fun m!712305 () Bool)

(assert (=> b!766215 m!712305))

(declare-fun m!712307 () Bool)

(assert (=> b!766224 m!712307))

(declare-fun m!712309 () Bool)

(assert (=> b!766221 m!712309))

(declare-fun m!712311 () Bool)

(assert (=> b!766216 m!712311))

(assert (=> b!766227 m!712289))

(assert (=> b!766227 m!712289))

(declare-fun m!712313 () Bool)

(assert (=> b!766227 m!712313))

(assert (=> b!766227 m!712313))

(assert (=> b!766227 m!712289))

(declare-fun m!712315 () Bool)

(assert (=> b!766227 m!712315))

(assert (=> b!766226 m!712289))

(assert (=> b!766226 m!712289))

(declare-fun m!712317 () Bool)

(assert (=> b!766226 m!712317))

(assert (=> b!766220 m!712289))

(assert (=> b!766220 m!712289))

(declare-fun m!712319 () Bool)

(assert (=> b!766220 m!712319))

(declare-fun m!712321 () Bool)

(assert (=> b!766225 m!712321))

(declare-fun m!712323 () Bool)

(assert (=> b!766225 m!712323))

(declare-fun m!712325 () Bool)

(assert (=> b!766225 m!712325))

(declare-fun m!712327 () Bool)

(assert (=> b!766225 m!712327))

(declare-fun m!712329 () Bool)

(assert (=> b!766225 m!712329))

(assert (=> b!766225 m!712321))

(declare-fun m!712331 () Bool)

(assert (=> b!766217 m!712331))

(declare-fun m!712333 () Bool)

(assert (=> b!766217 m!712333))

(assert (=> b!766214 m!712289))

(assert (=> b!766214 m!712289))

(declare-fun m!712335 () Bool)

(assert (=> b!766214 m!712335))

(push 1)


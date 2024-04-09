; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!64714 () Bool)

(assert start!64714)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun e!408275 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun b!729420 () Bool)

(declare-fun mask!3328 () (_ BitVec 32))

(assert (=> b!729420 (= e!408275 (or (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5) (bvsge mask!3328 #b00000000000000000000000000000000)))))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun lt!323183 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!729420 (= lt!323183 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-datatypes ((array!41116 0))(
  ( (array!41117 (arr!19674 (Array (_ BitVec 32) (_ BitVec 64))) (size!20095 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41116)

(declare-fun e!408276 () Bool)

(declare-datatypes ((SeekEntryResult!7281 0))(
  ( (MissingZero!7281 (index!31491 (_ BitVec 32))) (Found!7281 (index!31492 (_ BitVec 32))) (Intermediate!7281 (undefined!8093 Bool) (index!31493 (_ BitVec 32)) (x!62504 (_ BitVec 32))) (Undefined!7281) (MissingVacant!7281 (index!31494 (_ BitVec 32))) )
))
(declare-fun lt!323181 () SeekEntryResult!7281)

(declare-fun b!729421 () Bool)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41116 (_ BitVec 32)) SeekEntryResult!7281)

(assert (=> b!729421 (= e!408276 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19674 a!3186) j!159) a!3186 mask!3328) lt!323181))))

(declare-fun b!729422 () Bool)

(declare-fun res!489963 () Bool)

(declare-fun e!408273 () Bool)

(assert (=> b!729422 (=> (not res!489963) (not e!408273))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!729422 (= res!489963 (validKeyInArray!0 (select (arr!19674 a!3186) j!159)))))

(declare-fun b!729423 () Bool)

(declare-fun res!489966 () Bool)

(declare-fun e!408278 () Bool)

(assert (=> b!729423 (=> (not res!489966) (not e!408278))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41116 (_ BitVec 32)) Bool)

(assert (=> b!729423 (= res!489966 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!729424 () Bool)

(declare-fun res!489953 () Bool)

(declare-fun e!408272 () Bool)

(assert (=> b!729424 (=> (not res!489953) (not e!408272))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!729424 (= res!489953 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19674 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!729425 () Bool)

(declare-fun res!489958 () Bool)

(assert (=> b!729425 (=> (not res!489958) (not e!408273))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!41116 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!729425 (= res!489958 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun e!408271 () Bool)

(declare-fun b!729426 () Bool)

(declare-fun lt!323186 () SeekEntryResult!7281)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41116 (_ BitVec 32)) SeekEntryResult!7281)

(assert (=> b!729426 (= e!408271 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19674 a!3186) j!159) a!3186 mask!3328) lt!323186))))

(declare-fun b!729427 () Bool)

(declare-fun e!408279 () Bool)

(assert (=> b!729427 (= e!408272 e!408279)))

(declare-fun res!489954 () Bool)

(assert (=> b!729427 (=> (not res!489954) (not e!408279))))

(declare-fun lt!323180 () SeekEntryResult!7281)

(declare-fun lt!323184 () SeekEntryResult!7281)

(assert (=> b!729427 (= res!489954 (= lt!323180 lt!323184))))

(declare-fun lt!323182 () array!41116)

(declare-fun lt!323185 () (_ BitVec 64))

(assert (=> b!729427 (= lt!323184 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!323185 lt!323182 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!729427 (= lt!323180 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!323185 mask!3328) lt!323185 lt!323182 mask!3328))))

(assert (=> b!729427 (= lt!323185 (select (store (arr!19674 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!729427 (= lt!323182 (array!41117 (store (arr!19674 a!3186) i!1173 k!2102) (size!20095 a!3186)))))

(declare-fun b!729428 () Bool)

(assert (=> b!729428 (= e!408276 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19674 a!3186) j!159) a!3186 mask!3328) (Found!7281 j!159)))))

(declare-fun b!729429 () Bool)

(assert (=> b!729429 (= e!408278 e!408272)))

(declare-fun res!489957 () Bool)

(assert (=> b!729429 (=> (not res!489957) (not e!408272))))

(assert (=> b!729429 (= res!489957 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19674 a!3186) j!159) mask!3328) (select (arr!19674 a!3186) j!159) a!3186 mask!3328) lt!323181))))

(assert (=> b!729429 (= lt!323181 (Intermediate!7281 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!729430 () Bool)

(declare-fun res!489961 () Bool)

(assert (=> b!729430 (=> (not res!489961) (not e!408278))))

(declare-datatypes ((List!13729 0))(
  ( (Nil!13726) (Cons!13725 (h!14785 (_ BitVec 64)) (t!20052 List!13729)) )
))
(declare-fun arrayNoDuplicates!0 (array!41116 (_ BitVec 32) List!13729) Bool)

(assert (=> b!729430 (= res!489961 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13726))))

(declare-fun b!729431 () Bool)

(assert (=> b!729431 (= e!408273 e!408278)))

(declare-fun res!489962 () Bool)

(assert (=> b!729431 (=> (not res!489962) (not e!408278))))

(declare-fun lt!323179 () SeekEntryResult!7281)

(assert (=> b!729431 (= res!489962 (or (= lt!323179 (MissingZero!7281 i!1173)) (= lt!323179 (MissingVacant!7281 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41116 (_ BitVec 32)) SeekEntryResult!7281)

(assert (=> b!729431 (= lt!323179 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!729432 () Bool)

(assert (=> b!729432 (= e!408279 (not e!408275))))

(declare-fun res!489952 () Bool)

(assert (=> b!729432 (=> res!489952 e!408275)))

(assert (=> b!729432 (= res!489952 (or (not (is-Intermediate!7281 lt!323184)) (bvsge x!1131 (x!62504 lt!323184))))))

(declare-fun e!408277 () Bool)

(assert (=> b!729432 e!408277))

(declare-fun res!489964 () Bool)

(assert (=> b!729432 (=> (not res!489964) (not e!408277))))

(assert (=> b!729432 (= res!489964 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!24880 0))(
  ( (Unit!24881) )
))
(declare-fun lt!323178 () Unit!24880)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41116 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!24880)

(assert (=> b!729432 (= lt!323178 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!729433 () Bool)

(declare-fun res!489965 () Bool)

(assert (=> b!729433 (=> (not res!489965) (not e!408272))))

(assert (=> b!729433 (= res!489965 e!408276)))

(declare-fun c!80109 () Bool)

(assert (=> b!729433 (= c!80109 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!729434 () Bool)

(declare-fun res!489959 () Bool)

(assert (=> b!729434 (=> (not res!489959) (not e!408278))))

(assert (=> b!729434 (= res!489959 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20095 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20095 a!3186))))))

(declare-fun b!729435 () Bool)

(declare-fun res!489951 () Bool)

(assert (=> b!729435 (=> (not res!489951) (not e!408273))))

(assert (=> b!729435 (= res!489951 (validKeyInArray!0 k!2102))))

(declare-fun res!489960 () Bool)

(assert (=> start!64714 (=> (not res!489960) (not e!408273))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64714 (= res!489960 (validMask!0 mask!3328))))

(assert (=> start!64714 e!408273))

(assert (=> start!64714 true))

(declare-fun array_inv!15448 (array!41116) Bool)

(assert (=> start!64714 (array_inv!15448 a!3186)))

(declare-fun b!729436 () Bool)

(declare-fun res!489956 () Bool)

(assert (=> b!729436 (=> (not res!489956) (not e!408273))))

(assert (=> b!729436 (= res!489956 (and (= (size!20095 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20095 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20095 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!729437 () Bool)

(assert (=> b!729437 (= e!408277 e!408271)))

(declare-fun res!489955 () Bool)

(assert (=> b!729437 (=> (not res!489955) (not e!408271))))

(assert (=> b!729437 (= res!489955 (= (seekEntryOrOpen!0 (select (arr!19674 a!3186) j!159) a!3186 mask!3328) lt!323186))))

(assert (=> b!729437 (= lt!323186 (Found!7281 j!159))))

(assert (= (and start!64714 res!489960) b!729436))

(assert (= (and b!729436 res!489956) b!729422))

(assert (= (and b!729422 res!489963) b!729435))

(assert (= (and b!729435 res!489951) b!729425))

(assert (= (and b!729425 res!489958) b!729431))

(assert (= (and b!729431 res!489962) b!729423))

(assert (= (and b!729423 res!489966) b!729430))

(assert (= (and b!729430 res!489961) b!729434))

(assert (= (and b!729434 res!489959) b!729429))

(assert (= (and b!729429 res!489957) b!729424))

(assert (= (and b!729424 res!489953) b!729433))

(assert (= (and b!729433 c!80109) b!729421))

(assert (= (and b!729433 (not c!80109)) b!729428))

(assert (= (and b!729433 res!489965) b!729427))

(assert (= (and b!729427 res!489954) b!729432))

(assert (= (and b!729432 res!489964) b!729437))

(assert (= (and b!729437 res!489955) b!729426))

(assert (= (and b!729432 (not res!489952)) b!729420))

(declare-fun m!683149 () Bool)

(assert (=> b!729421 m!683149))

(assert (=> b!729421 m!683149))

(declare-fun m!683151 () Bool)

(assert (=> b!729421 m!683151))

(declare-fun m!683153 () Bool)

(assert (=> b!729425 m!683153))

(declare-fun m!683155 () Bool)

(assert (=> b!729427 m!683155))

(declare-fun m!683157 () Bool)

(assert (=> b!729427 m!683157))

(declare-fun m!683159 () Bool)

(assert (=> b!729427 m!683159))

(declare-fun m!683161 () Bool)

(assert (=> b!729427 m!683161))

(assert (=> b!729427 m!683161))

(declare-fun m!683163 () Bool)

(assert (=> b!729427 m!683163))

(assert (=> b!729426 m!683149))

(assert (=> b!729426 m!683149))

(declare-fun m!683165 () Bool)

(assert (=> b!729426 m!683165))

(assert (=> b!729437 m!683149))

(assert (=> b!729437 m!683149))

(declare-fun m!683167 () Bool)

(assert (=> b!729437 m!683167))

(declare-fun m!683169 () Bool)

(assert (=> b!729430 m!683169))

(declare-fun m!683171 () Bool)

(assert (=> b!729423 m!683171))

(declare-fun m!683173 () Bool)

(assert (=> b!729431 m!683173))

(declare-fun m!683175 () Bool)

(assert (=> b!729424 m!683175))

(declare-fun m!683177 () Bool)

(assert (=> b!729420 m!683177))

(declare-fun m!683179 () Bool)

(assert (=> b!729432 m!683179))

(declare-fun m!683181 () Bool)

(assert (=> b!729432 m!683181))

(assert (=> b!729428 m!683149))

(assert (=> b!729428 m!683149))

(declare-fun m!683183 () Bool)

(assert (=> b!729428 m!683183))

(assert (=> b!729429 m!683149))

(assert (=> b!729429 m!683149))

(declare-fun m!683185 () Bool)

(assert (=> b!729429 m!683185))

(assert (=> b!729429 m!683185))

(assert (=> b!729429 m!683149))

(declare-fun m!683187 () Bool)

(assert (=> b!729429 m!683187))

(declare-fun m!683189 () Bool)

(assert (=> b!729435 m!683189))

(assert (=> b!729422 m!683149))

(assert (=> b!729422 m!683149))

(declare-fun m!683191 () Bool)

(assert (=> b!729422 m!683191))

(declare-fun m!683193 () Bool)

(assert (=> start!64714 m!683193))

(declare-fun m!683195 () Bool)

(assert (=> start!64714 m!683195))

(push 1)


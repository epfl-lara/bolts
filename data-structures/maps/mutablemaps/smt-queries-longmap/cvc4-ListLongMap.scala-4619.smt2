; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!64370 () Bool)

(assert start!64370)

(declare-fun res!485015 () Bool)

(declare-fun e!405250 () Bool)

(assert (=> start!64370 (=> (not res!485015) (not e!405250))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64370 (= res!485015 (validMask!0 mask!3328))))

(assert (=> start!64370 e!405250))

(assert (=> start!64370 true))

(declare-datatypes ((array!40904 0))(
  ( (array!40905 (arr!19571 (Array (_ BitVec 32) (_ BitVec 64))) (size!19992 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40904)

(declare-fun array_inv!15345 (array!40904) Bool)

(assert (=> start!64370 (array_inv!15345 a!3186)))

(declare-fun b!723297 () Bool)

(declare-fun res!485014 () Bool)

(declare-fun e!405252 () Bool)

(assert (=> b!723297 (=> (not res!485014) (not e!405252))))

(declare-datatypes ((List!13626 0))(
  ( (Nil!13623) (Cons!13622 (h!14676 (_ BitVec 64)) (t!19949 List!13626)) )
))
(declare-fun arrayNoDuplicates!0 (array!40904 (_ BitVec 32) List!13626) Bool)

(assert (=> b!723297 (= res!485014 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13623))))

(declare-fun b!723298 () Bool)

(declare-fun res!485012 () Bool)

(assert (=> b!723298 (=> (not res!485012) (not e!405252))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40904 (_ BitVec 32)) Bool)

(assert (=> b!723298 (= res!485012 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun e!405254 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun b!723299 () Bool)

(declare-datatypes ((SeekEntryResult!7178 0))(
  ( (MissingZero!7178 (index!31079 (_ BitVec 32))) (Found!7178 (index!31080 (_ BitVec 32))) (Intermediate!7178 (undefined!7990 Bool) (index!31081 (_ BitVec 32)) (x!62100 (_ BitVec 32))) (Undefined!7178) (MissingVacant!7178 (index!31082 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40904 (_ BitVec 32)) SeekEntryResult!7178)

(assert (=> b!723299 (= e!405254 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19571 a!3186) j!159) a!3186 mask!3328) (Found!7178 j!159)))))

(declare-fun b!723300 () Bool)

(declare-fun res!485011 () Bool)

(assert (=> b!723300 (=> (not res!485011) (not e!405252))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!723300 (= res!485011 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!19992 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!19992 a!3186))))))

(declare-fun b!723301 () Bool)

(declare-fun e!405253 () Bool)

(declare-fun e!405255 () Bool)

(assert (=> b!723301 (= e!405253 e!405255)))

(declare-fun res!485020 () Bool)

(assert (=> b!723301 (=> (not res!485020) (not e!405255))))

(declare-fun lt!320627 () array!40904)

(declare-fun lt!320630 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40904 (_ BitVec 32)) SeekEntryResult!7178)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!723301 (= res!485020 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!320630 mask!3328) lt!320630 lt!320627 mask!3328) (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!320630 lt!320627 mask!3328)))))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!723301 (= lt!320630 (select (store (arr!19571 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!723301 (= lt!320627 (array!40905 (store (arr!19571 a!3186) i!1173 k!2102) (size!19992 a!3186)))))

(declare-fun b!723302 () Bool)

(assert (=> b!723302 (= e!405255 (not true))))

(assert (=> b!723302 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-datatypes ((Unit!24674 0))(
  ( (Unit!24675) )
))
(declare-fun lt!320629 () Unit!24674)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!40904 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!24674)

(assert (=> b!723302 (= lt!320629 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!723303 () Bool)

(declare-fun res!485010 () Bool)

(assert (=> b!723303 (=> (not res!485010) (not e!405253))))

(assert (=> b!723303 (= res!485010 e!405254)))

(declare-fun c!79515 () Bool)

(assert (=> b!723303 (= c!79515 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!723304 () Bool)

(assert (=> b!723304 (= e!405250 e!405252)))

(declare-fun res!485013 () Bool)

(assert (=> b!723304 (=> (not res!485013) (not e!405252))))

(declare-fun lt!320628 () SeekEntryResult!7178)

(assert (=> b!723304 (= res!485013 (or (= lt!320628 (MissingZero!7178 i!1173)) (= lt!320628 (MissingVacant!7178 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40904 (_ BitVec 32)) SeekEntryResult!7178)

(assert (=> b!723304 (= lt!320628 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!723305 () Bool)

(declare-fun lt!320626 () SeekEntryResult!7178)

(assert (=> b!723305 (= e!405254 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19571 a!3186) j!159) a!3186 mask!3328) lt!320626))))

(declare-fun b!723306 () Bool)

(declare-fun res!485016 () Bool)

(assert (=> b!723306 (=> (not res!485016) (not e!405250))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!723306 (= res!485016 (validKeyInArray!0 (select (arr!19571 a!3186) j!159)))))

(declare-fun b!723307 () Bool)

(declare-fun res!485021 () Bool)

(assert (=> b!723307 (=> (not res!485021) (not e!405250))))

(declare-fun arrayContainsKey!0 (array!40904 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!723307 (= res!485021 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!723308 () Bool)

(declare-fun res!485018 () Bool)

(assert (=> b!723308 (=> (not res!485018) (not e!405250))))

(assert (=> b!723308 (= res!485018 (and (= (size!19992 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!19992 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!19992 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!723309 () Bool)

(assert (=> b!723309 (= e!405252 e!405253)))

(declare-fun res!485017 () Bool)

(assert (=> b!723309 (=> (not res!485017) (not e!405253))))

(assert (=> b!723309 (= res!485017 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19571 a!3186) j!159) mask!3328) (select (arr!19571 a!3186) j!159) a!3186 mask!3328) lt!320626))))

(assert (=> b!723309 (= lt!320626 (Intermediate!7178 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!723310 () Bool)

(declare-fun res!485019 () Bool)

(assert (=> b!723310 (=> (not res!485019) (not e!405250))))

(assert (=> b!723310 (= res!485019 (validKeyInArray!0 k!2102))))

(declare-fun b!723311 () Bool)

(declare-fun res!485022 () Bool)

(assert (=> b!723311 (=> (not res!485022) (not e!405253))))

(assert (=> b!723311 (= res!485022 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19571 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!64370 res!485015) b!723308))

(assert (= (and b!723308 res!485018) b!723306))

(assert (= (and b!723306 res!485016) b!723310))

(assert (= (and b!723310 res!485019) b!723307))

(assert (= (and b!723307 res!485021) b!723304))

(assert (= (and b!723304 res!485013) b!723298))

(assert (= (and b!723298 res!485012) b!723297))

(assert (= (and b!723297 res!485014) b!723300))

(assert (= (and b!723300 res!485011) b!723309))

(assert (= (and b!723309 res!485017) b!723311))

(assert (= (and b!723311 res!485022) b!723303))

(assert (= (and b!723303 c!79515) b!723305))

(assert (= (and b!723303 (not c!79515)) b!723299))

(assert (= (and b!723303 res!485010) b!723301))

(assert (= (and b!723301 res!485020) b!723302))

(declare-fun m!677839 () Bool)

(assert (=> b!723309 m!677839))

(assert (=> b!723309 m!677839))

(declare-fun m!677841 () Bool)

(assert (=> b!723309 m!677841))

(assert (=> b!723309 m!677841))

(assert (=> b!723309 m!677839))

(declare-fun m!677843 () Bool)

(assert (=> b!723309 m!677843))

(declare-fun m!677845 () Bool)

(assert (=> b!723298 m!677845))

(assert (=> b!723306 m!677839))

(assert (=> b!723306 m!677839))

(declare-fun m!677847 () Bool)

(assert (=> b!723306 m!677847))

(declare-fun m!677849 () Bool)

(assert (=> start!64370 m!677849))

(declare-fun m!677851 () Bool)

(assert (=> start!64370 m!677851))

(assert (=> b!723299 m!677839))

(assert (=> b!723299 m!677839))

(declare-fun m!677853 () Bool)

(assert (=> b!723299 m!677853))

(declare-fun m!677855 () Bool)

(assert (=> b!723311 m!677855))

(declare-fun m!677857 () Bool)

(assert (=> b!723310 m!677857))

(declare-fun m!677859 () Bool)

(assert (=> b!723307 m!677859))

(declare-fun m!677861 () Bool)

(assert (=> b!723301 m!677861))

(declare-fun m!677863 () Bool)

(assert (=> b!723301 m!677863))

(assert (=> b!723301 m!677863))

(declare-fun m!677865 () Bool)

(assert (=> b!723301 m!677865))

(declare-fun m!677867 () Bool)

(assert (=> b!723301 m!677867))

(declare-fun m!677869 () Bool)

(assert (=> b!723301 m!677869))

(declare-fun m!677871 () Bool)

(assert (=> b!723304 m!677871))

(declare-fun m!677873 () Bool)

(assert (=> b!723297 m!677873))

(declare-fun m!677875 () Bool)

(assert (=> b!723302 m!677875))

(declare-fun m!677877 () Bool)

(assert (=> b!723302 m!677877))

(assert (=> b!723305 m!677839))

(assert (=> b!723305 m!677839))

(declare-fun m!677879 () Bool)

(assert (=> b!723305 m!677879))

(push 1)


; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!64710 () Bool)

(assert start!64710)

(declare-fun b!729312 () Bool)

(declare-fun e!408221 () Bool)

(declare-fun e!408219 () Bool)

(assert (=> b!729312 (= e!408221 e!408219)))

(declare-fun res!489869 () Bool)

(assert (=> b!729312 (=> (not res!489869) (not e!408219))))

(declare-datatypes ((SeekEntryResult!7279 0))(
  ( (MissingZero!7279 (index!31483 (_ BitVec 32))) (Found!7279 (index!31484 (_ BitVec 32))) (Intermediate!7279 (undefined!8091 Bool) (index!31485 (_ BitVec 32)) (x!62494 (_ BitVec 32))) (Undefined!7279) (MissingVacant!7279 (index!31486 (_ BitVec 32))) )
))
(declare-fun lt!323132 () SeekEntryResult!7279)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!729312 (= res!489869 (or (= lt!323132 (MissingZero!7279 i!1173)) (= lt!323132 (MissingVacant!7279 i!1173))))))

(declare-datatypes ((array!41112 0))(
  ( (array!41113 (arr!19672 (Array (_ BitVec 32) (_ BitVec 64))) (size!20093 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41112)

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41112 (_ BitVec 32)) SeekEntryResult!7279)

(assert (=> b!729312 (= lt!323132 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun b!729313 () Bool)

(declare-fun e!408224 () Bool)

(declare-fun lt!323129 () SeekEntryResult!7279)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41112 (_ BitVec 32)) SeekEntryResult!7279)

(assert (=> b!729313 (= e!408224 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19672 a!3186) j!159) a!3186 mask!3328) lt!323129))))

(declare-fun b!729314 () Bool)

(declare-fun res!489862 () Bool)

(assert (=> b!729314 (=> (not res!489862) (not e!408221))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!729314 (= res!489862 (validKeyInArray!0 (select (arr!19672 a!3186) j!159)))))

(declare-fun b!729315 () Bool)

(declare-fun res!489858 () Bool)

(declare-fun e!408217 () Bool)

(assert (=> b!729315 (=> (not res!489858) (not e!408217))))

(assert (=> b!729315 (= res!489858 e!408224)))

(declare-fun c!80103 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!729315 (= c!80103 (bvsle x!1131 resIntermediateX!5))))

(declare-fun lt!323130 () SeekEntryResult!7279)

(declare-fun e!408220 () Bool)

(declare-fun b!729316 () Bool)

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41112 (_ BitVec 32)) SeekEntryResult!7279)

(assert (=> b!729316 (= e!408220 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19672 a!3186) j!159) a!3186 mask!3328) lt!323130))))

(declare-fun b!729317 () Bool)

(declare-fun e!408225 () Bool)

(assert (=> b!729317 (= e!408225 true)))

(declare-fun lt!323127 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!729317 (= lt!323127 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!729319 () Bool)

(declare-fun res!489864 () Bool)

(assert (=> b!729319 (=> (not res!489864) (not e!408219))))

(declare-datatypes ((List!13727 0))(
  ( (Nil!13724) (Cons!13723 (h!14783 (_ BitVec 64)) (t!20050 List!13727)) )
))
(declare-fun arrayNoDuplicates!0 (array!41112 (_ BitVec 32) List!13727) Bool)

(assert (=> b!729319 (= res!489864 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13724))))

(declare-fun b!729320 () Bool)

(declare-fun res!489857 () Bool)

(assert (=> b!729320 (=> (not res!489857) (not e!408221))))

(assert (=> b!729320 (= res!489857 (validKeyInArray!0 k0!2102))))

(declare-fun b!729321 () Bool)

(declare-fun res!489855 () Bool)

(assert (=> b!729321 (=> (not res!489855) (not e!408219))))

(assert (=> b!729321 (= res!489855 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20093 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20093 a!3186))))))

(declare-fun b!729322 () Bool)

(declare-fun e!408222 () Bool)

(assert (=> b!729322 (= e!408222 (not e!408225))))

(declare-fun res!489861 () Bool)

(assert (=> b!729322 (=> res!489861 e!408225)))

(declare-fun lt!323128 () SeekEntryResult!7279)

(get-info :version)

(assert (=> b!729322 (= res!489861 (or (not ((_ is Intermediate!7279) lt!323128)) (bvsge x!1131 (x!62494 lt!323128))))))

(declare-fun e!408223 () Bool)

(assert (=> b!729322 e!408223))

(declare-fun res!489867 () Bool)

(assert (=> b!729322 (=> (not res!489867) (not e!408223))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41112 (_ BitVec 32)) Bool)

(assert (=> b!729322 (= res!489867 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!24876 0))(
  ( (Unit!24877) )
))
(declare-fun lt!323126 () Unit!24876)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41112 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!24876)

(assert (=> b!729322 (= lt!323126 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!729323 () Bool)

(assert (=> b!729323 (= e!408217 e!408222)))

(declare-fun res!489859 () Bool)

(assert (=> b!729323 (=> (not res!489859) (not e!408222))))

(declare-fun lt!323124 () SeekEntryResult!7279)

(assert (=> b!729323 (= res!489859 (= lt!323124 lt!323128))))

(declare-fun lt!323125 () array!41112)

(declare-fun lt!323131 () (_ BitVec 64))

(assert (=> b!729323 (= lt!323128 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!323131 lt!323125 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!729323 (= lt!323124 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!323131 mask!3328) lt!323131 lt!323125 mask!3328))))

(assert (=> b!729323 (= lt!323131 (select (store (arr!19672 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!729323 (= lt!323125 (array!41113 (store (arr!19672 a!3186) i!1173 k0!2102) (size!20093 a!3186)))))

(declare-fun b!729324 () Bool)

(declare-fun res!489870 () Bool)

(assert (=> b!729324 (=> (not res!489870) (not e!408217))))

(assert (=> b!729324 (= res!489870 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19672 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!729325 () Bool)

(declare-fun res!489865 () Bool)

(assert (=> b!729325 (=> (not res!489865) (not e!408221))))

(declare-fun arrayContainsKey!0 (array!41112 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!729325 (= res!489865 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!729326 () Bool)

(declare-fun res!489868 () Bool)

(assert (=> b!729326 (=> (not res!489868) (not e!408221))))

(assert (=> b!729326 (= res!489868 (and (= (size!20093 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20093 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20093 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!729327 () Bool)

(assert (=> b!729327 (= e!408219 e!408217)))

(declare-fun res!489866 () Bool)

(assert (=> b!729327 (=> (not res!489866) (not e!408217))))

(assert (=> b!729327 (= res!489866 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19672 a!3186) j!159) mask!3328) (select (arr!19672 a!3186) j!159) a!3186 mask!3328) lt!323129))))

(assert (=> b!729327 (= lt!323129 (Intermediate!7279 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!729328 () Bool)

(assert (=> b!729328 (= e!408224 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19672 a!3186) j!159) a!3186 mask!3328) (Found!7279 j!159)))))

(declare-fun b!729329 () Bool)

(declare-fun res!489863 () Bool)

(assert (=> b!729329 (=> (not res!489863) (not e!408219))))

(assert (=> b!729329 (= res!489863 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun res!489856 () Bool)

(assert (=> start!64710 (=> (not res!489856) (not e!408221))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64710 (= res!489856 (validMask!0 mask!3328))))

(assert (=> start!64710 e!408221))

(assert (=> start!64710 true))

(declare-fun array_inv!15446 (array!41112) Bool)

(assert (=> start!64710 (array_inv!15446 a!3186)))

(declare-fun b!729318 () Bool)

(assert (=> b!729318 (= e!408223 e!408220)))

(declare-fun res!489860 () Bool)

(assert (=> b!729318 (=> (not res!489860) (not e!408220))))

(assert (=> b!729318 (= res!489860 (= (seekEntryOrOpen!0 (select (arr!19672 a!3186) j!159) a!3186 mask!3328) lt!323130))))

(assert (=> b!729318 (= lt!323130 (Found!7279 j!159))))

(assert (= (and start!64710 res!489856) b!729326))

(assert (= (and b!729326 res!489868) b!729314))

(assert (= (and b!729314 res!489862) b!729320))

(assert (= (and b!729320 res!489857) b!729325))

(assert (= (and b!729325 res!489865) b!729312))

(assert (= (and b!729312 res!489869) b!729329))

(assert (= (and b!729329 res!489863) b!729319))

(assert (= (and b!729319 res!489864) b!729321))

(assert (= (and b!729321 res!489855) b!729327))

(assert (= (and b!729327 res!489866) b!729324))

(assert (= (and b!729324 res!489870) b!729315))

(assert (= (and b!729315 c!80103) b!729313))

(assert (= (and b!729315 (not c!80103)) b!729328))

(assert (= (and b!729315 res!489858) b!729323))

(assert (= (and b!729323 res!489859) b!729322))

(assert (= (and b!729322 res!489867) b!729318))

(assert (= (and b!729318 res!489860) b!729316))

(assert (= (and b!729322 (not res!489861)) b!729317))

(declare-fun m!683053 () Bool)

(assert (=> b!729314 m!683053))

(assert (=> b!729314 m!683053))

(declare-fun m!683055 () Bool)

(assert (=> b!729314 m!683055))

(declare-fun m!683057 () Bool)

(assert (=> b!729317 m!683057))

(assert (=> b!729328 m!683053))

(assert (=> b!729328 m!683053))

(declare-fun m!683059 () Bool)

(assert (=> b!729328 m!683059))

(assert (=> b!729327 m!683053))

(assert (=> b!729327 m!683053))

(declare-fun m!683061 () Bool)

(assert (=> b!729327 m!683061))

(assert (=> b!729327 m!683061))

(assert (=> b!729327 m!683053))

(declare-fun m!683063 () Bool)

(assert (=> b!729327 m!683063))

(declare-fun m!683065 () Bool)

(assert (=> b!729322 m!683065))

(declare-fun m!683067 () Bool)

(assert (=> b!729322 m!683067))

(declare-fun m!683069 () Bool)

(assert (=> b!729324 m!683069))

(declare-fun m!683071 () Bool)

(assert (=> start!64710 m!683071))

(declare-fun m!683073 () Bool)

(assert (=> start!64710 m!683073))

(assert (=> b!729313 m!683053))

(assert (=> b!729313 m!683053))

(declare-fun m!683075 () Bool)

(assert (=> b!729313 m!683075))

(declare-fun m!683077 () Bool)

(assert (=> b!729319 m!683077))

(declare-fun m!683079 () Bool)

(assert (=> b!729320 m!683079))

(declare-fun m!683081 () Bool)

(assert (=> b!729312 m!683081))

(declare-fun m!683083 () Bool)

(assert (=> b!729329 m!683083))

(assert (=> b!729318 m!683053))

(assert (=> b!729318 m!683053))

(declare-fun m!683085 () Bool)

(assert (=> b!729318 m!683085))

(declare-fun m!683087 () Bool)

(assert (=> b!729323 m!683087))

(assert (=> b!729323 m!683087))

(declare-fun m!683089 () Bool)

(assert (=> b!729323 m!683089))

(declare-fun m!683091 () Bool)

(assert (=> b!729323 m!683091))

(declare-fun m!683093 () Bool)

(assert (=> b!729323 m!683093))

(declare-fun m!683095 () Bool)

(assert (=> b!729323 m!683095))

(declare-fun m!683097 () Bool)

(assert (=> b!729325 m!683097))

(assert (=> b!729316 m!683053))

(assert (=> b!729316 m!683053))

(declare-fun m!683099 () Bool)

(assert (=> b!729316 m!683099))

(check-sat (not b!729314) (not b!729312) (not b!729320) (not start!64710) (not b!729329) (not b!729327) (not b!729317) (not b!729325) (not b!729313) (not b!729318) (not b!729316) (not b!729319) (not b!729322) (not b!729323) (not b!729328))
(check-sat)

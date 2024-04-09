; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65306 () Bool)

(assert start!65306)

(declare-fun b!741008 () Bool)

(declare-fun e!414258 () Bool)

(declare-fun e!414260 () Bool)

(assert (=> b!741008 (= e!414258 e!414260)))

(declare-fun res!498502 () Bool)

(assert (=> b!741008 (=> (not res!498502) (not e!414260))))

(declare-datatypes ((SeekEntryResult!7433 0))(
  ( (MissingZero!7433 (index!32099 (_ BitVec 32))) (Found!7433 (index!32100 (_ BitVec 32))) (Intermediate!7433 (undefined!8245 Bool) (index!32101 (_ BitVec 32)) (x!63104 (_ BitVec 32))) (Undefined!7433) (MissingVacant!7433 (index!32102 (_ BitVec 32))) )
))
(declare-fun lt!329243 () SeekEntryResult!7433)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!741008 (= res!498502 (or (= lt!329243 (MissingZero!7433 i!1173)) (= lt!329243 (MissingVacant!7433 i!1173))))))

(declare-datatypes ((array!41432 0))(
  ( (array!41433 (arr!19826 (Array (_ BitVec 32) (_ BitVec 64))) (size!20247 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41432)

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41432 (_ BitVec 32)) SeekEntryResult!7433)

(assert (=> b!741008 (= lt!329243 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!741009 () Bool)

(declare-fun res!498495 () Bool)

(declare-fun e!414264 () Bool)

(assert (=> b!741009 (=> (not res!498495) (not e!414264))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(assert (=> b!741009 (= res!498495 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19826 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!741010 () Bool)

(declare-fun res!498493 () Bool)

(assert (=> b!741010 (=> (not res!498493) (not e!414258))))

(declare-fun j!159 () (_ BitVec 32))

(assert (=> b!741010 (= res!498493 (and (= (size!20247 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20247 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20247 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!741011 () Bool)

(declare-fun res!498491 () Bool)

(assert (=> b!741011 (=> (not res!498491) (not e!414258))))

(declare-fun arrayContainsKey!0 (array!41432 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!741011 (= res!498491 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!741012 () Bool)

(assert (=> b!741012 (= e!414260 e!414264)))

(declare-fun res!498494 () Bool)

(assert (=> b!741012 (=> (not res!498494) (not e!414264))))

(declare-fun lt!329246 () SeekEntryResult!7433)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41432 (_ BitVec 32)) SeekEntryResult!7433)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!741012 (= res!498494 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19826 a!3186) j!159) mask!3328) (select (arr!19826 a!3186) j!159) a!3186 mask!3328) lt!329246))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!741012 (= lt!329246 (Intermediate!7433 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!741013 () Bool)

(declare-fun res!498501 () Bool)

(assert (=> b!741013 (=> (not res!498501) (not e!414260))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41432 (_ BitVec 32)) Bool)

(assert (=> b!741013 (= res!498501 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!741014 () Bool)

(declare-fun e!414263 () Bool)

(declare-fun e!414257 () Bool)

(assert (=> b!741014 (= e!414263 e!414257)))

(declare-fun res!498496 () Bool)

(assert (=> b!741014 (=> (not res!498496) (not e!414257))))

(declare-fun lt!329241 () SeekEntryResult!7433)

(assert (=> b!741014 (= res!498496 (= (seekEntryOrOpen!0 (select (arr!19826 a!3186) j!159) a!3186 mask!3328) lt!329241))))

(assert (=> b!741014 (= lt!329241 (Found!7433 j!159))))

(declare-fun b!741015 () Bool)

(declare-fun res!498500 () Bool)

(assert (=> b!741015 (=> (not res!498500) (not e!414260))))

(declare-datatypes ((List!13881 0))(
  ( (Nil!13878) (Cons!13877 (h!14949 (_ BitVec 64)) (t!20204 List!13881)) )
))
(declare-fun arrayNoDuplicates!0 (array!41432 (_ BitVec 32) List!13881) Bool)

(assert (=> b!741015 (= res!498500 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13878))))

(declare-fun b!741016 () Bool)

(declare-fun res!498498 () Bool)

(assert (=> b!741016 (=> (not res!498498) (not e!414258))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!741016 (= res!498498 (validKeyInArray!0 (select (arr!19826 a!3186) j!159)))))

(declare-fun b!741017 () Bool)

(declare-fun e!414262 () Bool)

(assert (=> b!741017 (= e!414262 (not true))))

(assert (=> b!741017 e!414263))

(declare-fun res!498492 () Bool)

(assert (=> b!741017 (=> (not res!498492) (not e!414263))))

(assert (=> b!741017 (= res!498492 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!25346 0))(
  ( (Unit!25347) )
))
(declare-fun lt!329244 () Unit!25346)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41432 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25346)

(assert (=> b!741017 (= lt!329244 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!741018 () Bool)

(assert (=> b!741018 (= e!414264 e!414262)))

(declare-fun res!498499 () Bool)

(assert (=> b!741018 (=> (not res!498499) (not e!414262))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun lt!329245 () (_ BitVec 64))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun lt!329242 () array!41432)

(assert (=> b!741018 (= res!498499 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!329245 mask!3328) lt!329245 lt!329242 mask!3328) (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!329245 lt!329242 mask!3328)))))

(assert (=> b!741018 (= lt!329245 (select (store (arr!19826 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!741018 (= lt!329242 (array!41433 (store (arr!19826 a!3186) i!1173 k!2102) (size!20247 a!3186)))))

(declare-fun b!741007 () Bool)

(declare-fun e!414261 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41432 (_ BitVec 32)) SeekEntryResult!7433)

(assert (=> b!741007 (= e!414261 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19826 a!3186) j!159) a!3186 mask!3328) (Found!7433 j!159)))))

(declare-fun res!498497 () Bool)

(assert (=> start!65306 (=> (not res!498497) (not e!414258))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65306 (= res!498497 (validMask!0 mask!3328))))

(assert (=> start!65306 e!414258))

(assert (=> start!65306 true))

(declare-fun array_inv!15600 (array!41432) Bool)

(assert (=> start!65306 (array_inv!15600 a!3186)))

(declare-fun b!741019 () Bool)

(assert (=> b!741019 (= e!414257 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19826 a!3186) j!159) a!3186 mask!3328) lt!329241))))

(declare-fun b!741020 () Bool)

(declare-fun res!498490 () Bool)

(assert (=> b!741020 (=> (not res!498490) (not e!414260))))

(assert (=> b!741020 (= res!498490 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20247 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20247 a!3186))))))

(declare-fun b!741021 () Bool)

(assert (=> b!741021 (= e!414261 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19826 a!3186) j!159) a!3186 mask!3328) lt!329246))))

(declare-fun b!741022 () Bool)

(declare-fun res!498504 () Bool)

(assert (=> b!741022 (=> (not res!498504) (not e!414258))))

(assert (=> b!741022 (= res!498504 (validKeyInArray!0 k!2102))))

(declare-fun b!741023 () Bool)

(declare-fun res!498503 () Bool)

(assert (=> b!741023 (=> (not res!498503) (not e!414264))))

(assert (=> b!741023 (= res!498503 e!414261)))

(declare-fun c!81639 () Bool)

(assert (=> b!741023 (= c!81639 (bvsle x!1131 resIntermediateX!5))))

(assert (= (and start!65306 res!498497) b!741010))

(assert (= (and b!741010 res!498493) b!741016))

(assert (= (and b!741016 res!498498) b!741022))

(assert (= (and b!741022 res!498504) b!741011))

(assert (= (and b!741011 res!498491) b!741008))

(assert (= (and b!741008 res!498502) b!741013))

(assert (= (and b!741013 res!498501) b!741015))

(assert (= (and b!741015 res!498500) b!741020))

(assert (= (and b!741020 res!498490) b!741012))

(assert (= (and b!741012 res!498494) b!741009))

(assert (= (and b!741009 res!498495) b!741023))

(assert (= (and b!741023 c!81639) b!741021))

(assert (= (and b!741023 (not c!81639)) b!741007))

(assert (= (and b!741023 res!498503) b!741018))

(assert (= (and b!741018 res!498499) b!741017))

(assert (= (and b!741017 res!498492) b!741014))

(assert (= (and b!741014 res!498496) b!741019))

(declare-fun m!692109 () Bool)

(assert (=> b!741013 m!692109))

(declare-fun m!692111 () Bool)

(assert (=> b!741021 m!692111))

(assert (=> b!741021 m!692111))

(declare-fun m!692113 () Bool)

(assert (=> b!741021 m!692113))

(declare-fun m!692115 () Bool)

(assert (=> b!741018 m!692115))

(assert (=> b!741018 m!692115))

(declare-fun m!692117 () Bool)

(assert (=> b!741018 m!692117))

(declare-fun m!692119 () Bool)

(assert (=> b!741018 m!692119))

(declare-fun m!692121 () Bool)

(assert (=> b!741018 m!692121))

(declare-fun m!692123 () Bool)

(assert (=> b!741018 m!692123))

(declare-fun m!692125 () Bool)

(assert (=> b!741009 m!692125))

(declare-fun m!692127 () Bool)

(assert (=> b!741022 m!692127))

(assert (=> b!741014 m!692111))

(assert (=> b!741014 m!692111))

(declare-fun m!692129 () Bool)

(assert (=> b!741014 m!692129))

(assert (=> b!741007 m!692111))

(assert (=> b!741007 m!692111))

(declare-fun m!692131 () Bool)

(assert (=> b!741007 m!692131))

(assert (=> b!741019 m!692111))

(assert (=> b!741019 m!692111))

(declare-fun m!692133 () Bool)

(assert (=> b!741019 m!692133))

(declare-fun m!692135 () Bool)

(assert (=> b!741015 m!692135))

(declare-fun m!692137 () Bool)

(assert (=> b!741008 m!692137))

(assert (=> b!741012 m!692111))

(assert (=> b!741012 m!692111))

(declare-fun m!692139 () Bool)

(assert (=> b!741012 m!692139))

(assert (=> b!741012 m!692139))

(assert (=> b!741012 m!692111))

(declare-fun m!692141 () Bool)

(assert (=> b!741012 m!692141))

(declare-fun m!692143 () Bool)

(assert (=> b!741011 m!692143))

(assert (=> b!741016 m!692111))

(assert (=> b!741016 m!692111))

(declare-fun m!692145 () Bool)

(assert (=> b!741016 m!692145))

(declare-fun m!692147 () Bool)

(assert (=> start!65306 m!692147))

(declare-fun m!692149 () Bool)

(assert (=> start!65306 m!692149))

(declare-fun m!692151 () Bool)

(assert (=> b!741017 m!692151))

(declare-fun m!692153 () Bool)

(assert (=> b!741017 m!692153))

(push 1)


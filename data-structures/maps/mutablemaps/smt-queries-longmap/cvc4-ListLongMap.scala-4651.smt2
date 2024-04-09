; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!64700 () Bool)

(assert start!64700)

(declare-fun res!489628 () Bool)

(declare-fun e!408086 () Bool)

(assert (=> start!64700 (=> (not res!489628) (not e!408086))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64700 (= res!489628 (validMask!0 mask!3328))))

(assert (=> start!64700 e!408086))

(assert (=> start!64700 true))

(declare-datatypes ((array!41102 0))(
  ( (array!41103 (arr!19667 (Array (_ BitVec 32) (_ BitVec 64))) (size!20088 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41102)

(declare-fun array_inv!15441 (array!41102) Bool)

(assert (=> start!64700 (array_inv!15441 a!3186)))

(declare-fun b!729042 () Bool)

(declare-fun e!408084 () Bool)

(declare-fun e!408089 () Bool)

(assert (=> b!729042 (= e!408084 e!408089)))

(declare-fun res!489629 () Bool)

(assert (=> b!729042 (=> (not res!489629) (not e!408089))))

(declare-datatypes ((SeekEntryResult!7274 0))(
  ( (MissingZero!7274 (index!31463 (_ BitVec 32))) (Found!7274 (index!31464 (_ BitVec 32))) (Intermediate!7274 (undefined!8086 Bool) (index!31465 (_ BitVec 32)) (x!62473 (_ BitVec 32))) (Undefined!7274) (MissingVacant!7274 (index!31466 (_ BitVec 32))) )
))
(declare-fun lt!322992 () SeekEntryResult!7274)

(declare-fun lt!322989 () SeekEntryResult!7274)

(assert (=> b!729042 (= res!489629 (= lt!322992 lt!322989))))

(declare-fun lt!322993 () array!41102)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun lt!322996 () (_ BitVec 64))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41102 (_ BitVec 32)) SeekEntryResult!7274)

(assert (=> b!729042 (= lt!322989 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!322996 lt!322993 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!729042 (= lt!322992 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!322996 mask!3328) lt!322996 lt!322993 mask!3328))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!729042 (= lt!322996 (select (store (arr!19667 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!729042 (= lt!322993 (array!41103 (store (arr!19667 a!3186) i!1173 k!2102) (size!20088 a!3186)))))

(declare-fun b!729043 () Bool)

(declare-fun e!408088 () Bool)

(assert (=> b!729043 (= e!408089 (not e!408088))))

(declare-fun res!489630 () Bool)

(assert (=> b!729043 (=> res!489630 e!408088)))

(assert (=> b!729043 (= res!489630 (or (not (is-Intermediate!7274 lt!322989)) (bvsge x!1131 (x!62473 lt!322989))))))

(declare-fun e!408083 () Bool)

(assert (=> b!729043 e!408083))

(declare-fun res!489618 () Bool)

(assert (=> b!729043 (=> (not res!489618) (not e!408083))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41102 (_ BitVec 32)) Bool)

(assert (=> b!729043 (= res!489618 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!24866 0))(
  ( (Unit!24867) )
))
(declare-fun lt!322995 () Unit!24866)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41102 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!24866)

(assert (=> b!729043 (= lt!322995 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!729044 () Bool)

(declare-fun e!408090 () Bool)

(assert (=> b!729044 (= e!408086 e!408090)))

(declare-fun res!489622 () Bool)

(assert (=> b!729044 (=> (not res!489622) (not e!408090))))

(declare-fun lt!322990 () SeekEntryResult!7274)

(assert (=> b!729044 (= res!489622 (or (= lt!322990 (MissingZero!7274 i!1173)) (= lt!322990 (MissingVacant!7274 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41102 (_ BitVec 32)) SeekEntryResult!7274)

(assert (=> b!729044 (= lt!322990 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!729045 () Bool)

(declare-fun res!489627 () Bool)

(assert (=> b!729045 (=> (not res!489627) (not e!408084))))

(declare-fun e!408087 () Bool)

(assert (=> b!729045 (= res!489627 e!408087)))

(declare-fun c!80088 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!729045 (= c!80088 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!729046 () Bool)

(declare-fun res!489621 () Bool)

(assert (=> b!729046 (=> (not res!489621) (not e!408086))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!729046 (= res!489621 (validKeyInArray!0 (select (arr!19667 a!3186) j!159)))))

(declare-fun b!729047 () Bool)

(declare-fun res!489616 () Bool)

(assert (=> b!729047 (=> (not res!489616) (not e!408090))))

(assert (=> b!729047 (= res!489616 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!729048 () Bool)

(declare-fun res!489620 () Bool)

(assert (=> b!729048 (=> (not res!489620) (not e!408090))))

(declare-datatypes ((List!13722 0))(
  ( (Nil!13719) (Cons!13718 (h!14778 (_ BitVec 64)) (t!20045 List!13722)) )
))
(declare-fun arrayNoDuplicates!0 (array!41102 (_ BitVec 32) List!13722) Bool)

(assert (=> b!729048 (= res!489620 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13719))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun lt!322994 () SeekEntryResult!7274)

(declare-fun e!408082 () Bool)

(declare-fun b!729049 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41102 (_ BitVec 32)) SeekEntryResult!7274)

(assert (=> b!729049 (= e!408082 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19667 a!3186) j!159) a!3186 mask!3328) lt!322994))))

(declare-fun b!729050 () Bool)

(declare-fun res!489623 () Bool)

(assert (=> b!729050 (=> (not res!489623) (not e!408086))))

(assert (=> b!729050 (= res!489623 (and (= (size!20088 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20088 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20088 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!729051 () Bool)

(declare-fun res!489625 () Bool)

(assert (=> b!729051 (=> (not res!489625) (not e!408086))))

(assert (=> b!729051 (= res!489625 (validKeyInArray!0 k!2102))))

(declare-fun b!729052 () Bool)

(assert (=> b!729052 (= e!408083 e!408082)))

(declare-fun res!489626 () Bool)

(assert (=> b!729052 (=> (not res!489626) (not e!408082))))

(assert (=> b!729052 (= res!489626 (= (seekEntryOrOpen!0 (select (arr!19667 a!3186) j!159) a!3186 mask!3328) lt!322994))))

(assert (=> b!729052 (= lt!322994 (Found!7274 j!159))))

(declare-fun b!729053 () Bool)

(declare-fun res!489624 () Bool)

(assert (=> b!729053 (=> (not res!489624) (not e!408086))))

(declare-fun arrayContainsKey!0 (array!41102 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!729053 (= res!489624 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!729054 () Bool)

(assert (=> b!729054 (= e!408088 true)))

(declare-fun lt!322991 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!729054 (= lt!322991 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!729055 () Bool)

(declare-fun res!489619 () Bool)

(assert (=> b!729055 (=> (not res!489619) (not e!408084))))

(assert (=> b!729055 (= res!489619 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19667 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!729056 () Bool)

(declare-fun lt!322997 () SeekEntryResult!7274)

(assert (=> b!729056 (= e!408087 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19667 a!3186) j!159) a!3186 mask!3328) lt!322997))))

(declare-fun b!729057 () Bool)

(assert (=> b!729057 (= e!408090 e!408084)))

(declare-fun res!489617 () Bool)

(assert (=> b!729057 (=> (not res!489617) (not e!408084))))

(assert (=> b!729057 (= res!489617 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19667 a!3186) j!159) mask!3328) (select (arr!19667 a!3186) j!159) a!3186 mask!3328) lt!322997))))

(assert (=> b!729057 (= lt!322997 (Intermediate!7274 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!729058 () Bool)

(assert (=> b!729058 (= e!408087 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19667 a!3186) j!159) a!3186 mask!3328) (Found!7274 j!159)))))

(declare-fun b!729059 () Bool)

(declare-fun res!489615 () Bool)

(assert (=> b!729059 (=> (not res!489615) (not e!408090))))

(assert (=> b!729059 (= res!489615 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20088 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20088 a!3186))))))

(assert (= (and start!64700 res!489628) b!729050))

(assert (= (and b!729050 res!489623) b!729046))

(assert (= (and b!729046 res!489621) b!729051))

(assert (= (and b!729051 res!489625) b!729053))

(assert (= (and b!729053 res!489624) b!729044))

(assert (= (and b!729044 res!489622) b!729047))

(assert (= (and b!729047 res!489616) b!729048))

(assert (= (and b!729048 res!489620) b!729059))

(assert (= (and b!729059 res!489615) b!729057))

(assert (= (and b!729057 res!489617) b!729055))

(assert (= (and b!729055 res!489619) b!729045))

(assert (= (and b!729045 c!80088) b!729056))

(assert (= (and b!729045 (not c!80088)) b!729058))

(assert (= (and b!729045 res!489627) b!729042))

(assert (= (and b!729042 res!489629) b!729043))

(assert (= (and b!729043 res!489618) b!729052))

(assert (= (and b!729052 res!489626) b!729049))

(assert (= (and b!729043 (not res!489630)) b!729054))

(declare-fun m!682813 () Bool)

(assert (=> b!729043 m!682813))

(declare-fun m!682815 () Bool)

(assert (=> b!729043 m!682815))

(declare-fun m!682817 () Bool)

(assert (=> b!729056 m!682817))

(assert (=> b!729056 m!682817))

(declare-fun m!682819 () Bool)

(assert (=> b!729056 m!682819))

(declare-fun m!682821 () Bool)

(assert (=> b!729051 m!682821))

(assert (=> b!729046 m!682817))

(assert (=> b!729046 m!682817))

(declare-fun m!682823 () Bool)

(assert (=> b!729046 m!682823))

(declare-fun m!682825 () Bool)

(assert (=> b!729053 m!682825))

(declare-fun m!682827 () Bool)

(assert (=> b!729054 m!682827))

(assert (=> b!729058 m!682817))

(assert (=> b!729058 m!682817))

(declare-fun m!682829 () Bool)

(assert (=> b!729058 m!682829))

(assert (=> b!729049 m!682817))

(assert (=> b!729049 m!682817))

(declare-fun m!682831 () Bool)

(assert (=> b!729049 m!682831))

(declare-fun m!682833 () Bool)

(assert (=> b!729044 m!682833))

(declare-fun m!682835 () Bool)

(assert (=> b!729047 m!682835))

(assert (=> b!729057 m!682817))

(assert (=> b!729057 m!682817))

(declare-fun m!682837 () Bool)

(assert (=> b!729057 m!682837))

(assert (=> b!729057 m!682837))

(assert (=> b!729057 m!682817))

(declare-fun m!682839 () Bool)

(assert (=> b!729057 m!682839))

(declare-fun m!682841 () Bool)

(assert (=> b!729055 m!682841))

(declare-fun m!682843 () Bool)

(assert (=> start!64700 m!682843))

(declare-fun m!682845 () Bool)

(assert (=> start!64700 m!682845))

(declare-fun m!682847 () Bool)

(assert (=> b!729048 m!682847))

(declare-fun m!682849 () Bool)

(assert (=> b!729042 m!682849))

(declare-fun m!682851 () Bool)

(assert (=> b!729042 m!682851))

(declare-fun m!682853 () Bool)

(assert (=> b!729042 m!682853))

(declare-fun m!682855 () Bool)

(assert (=> b!729042 m!682855))

(declare-fun m!682857 () Bool)

(assert (=> b!729042 m!682857))

(assert (=> b!729042 m!682849))

(assert (=> b!729052 m!682817))

(assert (=> b!729052 m!682817))

(declare-fun m!682859 () Bool)

(assert (=> b!729052 m!682859))

(push 1)


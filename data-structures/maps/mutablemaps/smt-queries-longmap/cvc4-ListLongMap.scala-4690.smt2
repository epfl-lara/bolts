; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65222 () Bool)

(assert start!65222)

(declare-fun b!737994 () Bool)

(declare-fun res!496216 () Bool)

(declare-fun e!412779 () Bool)

(assert (=> b!737994 (=> (not res!496216) (not e!412779))))

(declare-datatypes ((array!41348 0))(
  ( (array!41349 (arr!19784 (Array (_ BitVec 32) (_ BitVec 64))) (size!20205 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41348)

(declare-datatypes ((List!13839 0))(
  ( (Nil!13836) (Cons!13835 (h!14907 (_ BitVec 64)) (t!20162 List!13839)) )
))
(declare-fun arrayNoDuplicates!0 (array!41348 (_ BitVec 32) List!13839) Bool)

(assert (=> b!737994 (= res!496216 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13836))))

(declare-fun b!737995 () Bool)

(declare-fun res!496206 () Bool)

(declare-fun e!412768 () Bool)

(assert (=> b!737995 (=> (not res!496206) (not e!412768))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!737995 (= res!496206 (validKeyInArray!0 k!2102))))

(declare-fun b!737996 () Bool)

(declare-fun res!496202 () Bool)

(assert (=> b!737996 (=> (not res!496202) (not e!412768))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(assert (=> b!737996 (= res!496202 (and (= (size!20205 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20205 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20205 a!3186)) (not (= i!1173 j!159))))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun lt!327554 () (_ BitVec 32))

(declare-fun b!737997 () Bool)

(declare-datatypes ((SeekEntryResult!7391 0))(
  ( (MissingZero!7391 (index!31931 (_ BitVec 32))) (Found!7391 (index!31932 (_ BitVec 32))) (Intermediate!7391 (undefined!8203 Bool) (index!31933 (_ BitVec 32)) (x!62950 (_ BitVec 32))) (Undefined!7391) (MissingVacant!7391 (index!31934 (_ BitVec 32))) )
))
(declare-fun lt!327546 () SeekEntryResult!7391)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun e!412776 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41348 (_ BitVec 32)) SeekEntryResult!7391)

(assert (=> b!737997 (= e!412776 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!327554 resIntermediateIndex!5 (select (arr!19784 a!3186) j!159) a!3186 mask!3328) lt!327546)))))

(declare-fun e!412777 () Bool)

(declare-fun lt!327547 () SeekEntryResult!7391)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun b!737998 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41348 (_ BitVec 32)) SeekEntryResult!7391)

(assert (=> b!737998 (= e!412777 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19784 a!3186) j!159) a!3186 mask!3328) lt!327547))))

(declare-fun b!737999 () Bool)

(assert (=> b!737999 (= e!412777 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19784 a!3186) j!159) a!3186 mask!3328) (Found!7391 j!159)))))

(declare-fun res!496217 () Bool)

(assert (=> start!65222 (=> (not res!496217) (not e!412768))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65222 (= res!496217 (validMask!0 mask!3328))))

(assert (=> start!65222 e!412768))

(assert (=> start!65222 true))

(declare-fun array_inv!15558 (array!41348) Bool)

(assert (=> start!65222 (array_inv!15558 a!3186)))

(declare-fun b!738000 () Bool)

(declare-fun res!496207 () Bool)

(assert (=> b!738000 (=> (not res!496207) (not e!412779))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!738000 (= res!496207 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20205 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20205 a!3186))))))

(declare-fun e!412774 () Bool)

(declare-fun b!738001 () Bool)

(declare-fun lt!327542 () SeekEntryResult!7391)

(assert (=> b!738001 (= e!412774 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19784 a!3186) j!159) a!3186 mask!3328) lt!327542))))

(declare-fun b!738002 () Bool)

(declare-fun e!412778 () Bool)

(declare-fun e!412775 () Bool)

(assert (=> b!738002 (= e!412778 (not e!412775))))

(declare-fun res!496210 () Bool)

(assert (=> b!738002 (=> res!496210 e!412775)))

(declare-fun lt!327543 () SeekEntryResult!7391)

(assert (=> b!738002 (= res!496210 (or (not (is-Intermediate!7391 lt!327543)) (bvsge x!1131 (x!62950 lt!327543))))))

(assert (=> b!738002 (= lt!327546 (Found!7391 j!159))))

(declare-fun e!412772 () Bool)

(assert (=> b!738002 e!412772))

(declare-fun res!496218 () Bool)

(assert (=> b!738002 (=> (not res!496218) (not e!412772))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41348 (_ BitVec 32)) Bool)

(assert (=> b!738002 (= res!496218 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!25182 0))(
  ( (Unit!25183) )
))
(declare-fun lt!327545 () Unit!25182)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41348 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25182)

(assert (=> b!738002 (= lt!327545 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!738003 () Bool)

(declare-fun res!496203 () Bool)

(declare-fun e!412773 () Bool)

(assert (=> b!738003 (=> (not res!496203) (not e!412773))))

(assert (=> b!738003 (= res!496203 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19784 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!738004 () Bool)

(assert (=> b!738004 (= e!412768 e!412779)))

(declare-fun res!496208 () Bool)

(assert (=> b!738004 (=> (not res!496208) (not e!412779))))

(declare-fun lt!327544 () SeekEntryResult!7391)

(assert (=> b!738004 (= res!496208 (or (= lt!327544 (MissingZero!7391 i!1173)) (= lt!327544 (MissingVacant!7391 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41348 (_ BitVec 32)) SeekEntryResult!7391)

(assert (=> b!738004 (= lt!327544 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!738005 () Bool)

(assert (=> b!738005 (= e!412773 e!412778)))

(declare-fun res!496212 () Bool)

(assert (=> b!738005 (=> (not res!496212) (not e!412778))))

(declare-fun lt!327552 () SeekEntryResult!7391)

(assert (=> b!738005 (= res!496212 (= lt!327552 lt!327543))))

(declare-fun lt!327548 () (_ BitVec 64))

(declare-fun lt!327553 () array!41348)

(assert (=> b!738005 (= lt!327543 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!327548 lt!327553 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!738005 (= lt!327552 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!327548 mask!3328) lt!327548 lt!327553 mask!3328))))

(assert (=> b!738005 (= lt!327548 (select (store (arr!19784 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!738005 (= lt!327553 (array!41349 (store (arr!19784 a!3186) i!1173 k!2102) (size!20205 a!3186)))))

(declare-fun b!738006 () Bool)

(assert (=> b!738006 (= e!412776 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!327554 (select (arr!19784 a!3186) j!159) a!3186 mask!3328) lt!327547)))))

(declare-fun b!738007 () Bool)

(declare-fun res!496209 () Bool)

(assert (=> b!738007 (=> (not res!496209) (not e!412768))))

(assert (=> b!738007 (= res!496209 (validKeyInArray!0 (select (arr!19784 a!3186) j!159)))))

(declare-fun b!738008 () Bool)

(assert (=> b!738008 (= e!412779 e!412773)))

(declare-fun res!496204 () Bool)

(assert (=> b!738008 (=> (not res!496204) (not e!412773))))

(assert (=> b!738008 (= res!496204 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19784 a!3186) j!159) mask!3328) (select (arr!19784 a!3186) j!159) a!3186 mask!3328) lt!327547))))

(assert (=> b!738008 (= lt!327547 (Intermediate!7391 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!738009 () Bool)

(declare-fun e!412769 () Bool)

(assert (=> b!738009 (= e!412769 true)))

(declare-fun lt!327549 () SeekEntryResult!7391)

(assert (=> b!738009 (= lt!327549 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!327554 lt!327548 lt!327553 mask!3328))))

(declare-fun b!738010 () Bool)

(assert (=> b!738010 (= e!412772 e!412774)))

(declare-fun res!496205 () Bool)

(assert (=> b!738010 (=> (not res!496205) (not e!412774))))

(assert (=> b!738010 (= res!496205 (= (seekEntryOrOpen!0 (select (arr!19784 a!3186) j!159) a!3186 mask!3328) lt!327542))))

(assert (=> b!738010 (= lt!327542 (Found!7391 j!159))))

(declare-fun b!738011 () Bool)

(declare-fun res!496215 () Bool)

(assert (=> b!738011 (=> res!496215 e!412769)))

(assert (=> b!738011 (= res!496215 e!412776)))

(declare-fun c!81279 () Bool)

(declare-fun lt!327550 () Bool)

(assert (=> b!738011 (= c!81279 lt!327550)))

(declare-fun b!738012 () Bool)

(declare-fun res!496211 () Bool)

(assert (=> b!738012 (=> (not res!496211) (not e!412779))))

(assert (=> b!738012 (= res!496211 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!738013 () Bool)

(declare-fun e!412771 () Unit!25182)

(declare-fun Unit!25184 () Unit!25182)

(assert (=> b!738013 (= e!412771 Unit!25184)))

(assert (=> b!738013 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!327554 (select (arr!19784 a!3186) j!159) a!3186 mask!3328) lt!327547)))

(declare-fun b!738014 () Bool)

(declare-fun res!496201 () Bool)

(assert (=> b!738014 (=> (not res!496201) (not e!412773))))

(assert (=> b!738014 (= res!496201 e!412777)))

(declare-fun c!81278 () Bool)

(assert (=> b!738014 (= c!81278 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!738015 () Bool)

(declare-fun res!496214 () Bool)

(assert (=> b!738015 (=> (not res!496214) (not e!412768))))

(declare-fun arrayContainsKey!0 (array!41348 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!738015 (= res!496214 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!738016 () Bool)

(assert (=> b!738016 (= e!412775 e!412769)))

(declare-fun res!496213 () Bool)

(assert (=> b!738016 (=> res!496213 e!412769)))

(assert (=> b!738016 (= res!496213 (or (bvsgt (bvadd #b00000000000000000000000000000001 x!1131) #b01111111111111111111111111111110) (bvslt (bvadd #b00000000000000000000000000000001 x!1131) #b00000000000000000000000000000000) (bvslt lt!327554 #b00000000000000000000000000000000) (bvsge lt!327554 (size!20205 a!3186))))))

(declare-fun lt!327551 () Unit!25182)

(assert (=> b!738016 (= lt!327551 e!412771)))

(declare-fun c!81277 () Bool)

(assert (=> b!738016 (= c!81277 lt!327550)))

(assert (=> b!738016 (= lt!327550 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!738016 (= lt!327554 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!738017 () Bool)

(declare-fun Unit!25185 () Unit!25182)

(assert (=> b!738017 (= e!412771 Unit!25185)))

(declare-fun lt!327541 () SeekEntryResult!7391)

(assert (=> b!738017 (= lt!327541 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19784 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!738017 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!327554 resIntermediateIndex!5 (select (arr!19784 a!3186) j!159) a!3186 mask!3328) lt!327546)))

(assert (= (and start!65222 res!496217) b!737996))

(assert (= (and b!737996 res!496202) b!738007))

(assert (= (and b!738007 res!496209) b!737995))

(assert (= (and b!737995 res!496206) b!738015))

(assert (= (and b!738015 res!496214) b!738004))

(assert (= (and b!738004 res!496208) b!738012))

(assert (= (and b!738012 res!496211) b!737994))

(assert (= (and b!737994 res!496216) b!738000))

(assert (= (and b!738000 res!496207) b!738008))

(assert (= (and b!738008 res!496204) b!738003))

(assert (= (and b!738003 res!496203) b!738014))

(assert (= (and b!738014 c!81278) b!737998))

(assert (= (and b!738014 (not c!81278)) b!737999))

(assert (= (and b!738014 res!496201) b!738005))

(assert (= (and b!738005 res!496212) b!738002))

(assert (= (and b!738002 res!496218) b!738010))

(assert (= (and b!738010 res!496205) b!738001))

(assert (= (and b!738002 (not res!496210)) b!738016))

(assert (= (and b!738016 c!81277) b!738013))

(assert (= (and b!738016 (not c!81277)) b!738017))

(assert (= (and b!738016 (not res!496213)) b!738011))

(assert (= (and b!738011 c!81279) b!738006))

(assert (= (and b!738011 (not c!81279)) b!737997))

(assert (= (and b!738011 (not res!496215)) b!738009))

(declare-fun m!689803 () Bool)

(assert (=> b!737994 m!689803))

(declare-fun m!689805 () Bool)

(assert (=> b!738006 m!689805))

(assert (=> b!738006 m!689805))

(declare-fun m!689807 () Bool)

(assert (=> b!738006 m!689807))

(assert (=> b!738001 m!689805))

(assert (=> b!738001 m!689805))

(declare-fun m!689809 () Bool)

(assert (=> b!738001 m!689809))

(declare-fun m!689811 () Bool)

(assert (=> b!737995 m!689811))

(declare-fun m!689813 () Bool)

(assert (=> b!738012 m!689813))

(declare-fun m!689815 () Bool)

(assert (=> b!738002 m!689815))

(declare-fun m!689817 () Bool)

(assert (=> b!738002 m!689817))

(assert (=> b!737997 m!689805))

(assert (=> b!737997 m!689805))

(declare-fun m!689819 () Bool)

(assert (=> b!737997 m!689819))

(declare-fun m!689821 () Bool)

(assert (=> b!738015 m!689821))

(assert (=> b!738008 m!689805))

(assert (=> b!738008 m!689805))

(declare-fun m!689823 () Bool)

(assert (=> b!738008 m!689823))

(assert (=> b!738008 m!689823))

(assert (=> b!738008 m!689805))

(declare-fun m!689825 () Bool)

(assert (=> b!738008 m!689825))

(assert (=> b!738013 m!689805))

(assert (=> b!738013 m!689805))

(assert (=> b!738013 m!689807))

(declare-fun m!689827 () Bool)

(assert (=> b!738003 m!689827))

(declare-fun m!689829 () Bool)

(assert (=> b!738016 m!689829))

(assert (=> b!737999 m!689805))

(assert (=> b!737999 m!689805))

(declare-fun m!689831 () Bool)

(assert (=> b!737999 m!689831))

(declare-fun m!689833 () Bool)

(assert (=> b!738004 m!689833))

(assert (=> b!738010 m!689805))

(assert (=> b!738010 m!689805))

(declare-fun m!689835 () Bool)

(assert (=> b!738010 m!689835))

(declare-fun m!689837 () Bool)

(assert (=> b!738009 m!689837))

(declare-fun m!689839 () Bool)

(assert (=> start!65222 m!689839))

(declare-fun m!689841 () Bool)

(assert (=> start!65222 m!689841))

(assert (=> b!738007 m!689805))

(assert (=> b!738007 m!689805))

(declare-fun m!689843 () Bool)

(assert (=> b!738007 m!689843))

(assert (=> b!738017 m!689805))

(assert (=> b!738017 m!689805))

(assert (=> b!738017 m!689831))

(assert (=> b!738017 m!689805))

(assert (=> b!738017 m!689819))

(assert (=> b!737998 m!689805))

(assert (=> b!737998 m!689805))

(declare-fun m!689845 () Bool)

(assert (=> b!737998 m!689845))

(declare-fun m!689847 () Bool)

(assert (=> b!738005 m!689847))

(declare-fun m!689849 () Bool)

(assert (=> b!738005 m!689849))

(declare-fun m!689851 () Bool)

(assert (=> b!738005 m!689851))

(declare-fun m!689853 () Bool)

(assert (=> b!738005 m!689853))

(assert (=> b!738005 m!689853))

(declare-fun m!689855 () Bool)

(assert (=> b!738005 m!689855))

(push 1)


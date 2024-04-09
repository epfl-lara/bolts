; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65422 () Bool)

(assert start!65422)

(declare-fun b!744210 () Bool)

(declare-fun res!501350 () Bool)

(declare-fun e!415760 () Bool)

(assert (=> b!744210 (=> (not res!501350) (not e!415760))))

(declare-datatypes ((array!41548 0))(
  ( (array!41549 (arr!19884 (Array (_ BitVec 32) (_ BitVec 64))) (size!20305 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41548)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41548 (_ BitVec 32)) Bool)

(assert (=> b!744210 (= res!501350 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!744211 () Bool)

(declare-fun res!501353 () Bool)

(declare-fun e!415762 () Bool)

(assert (=> b!744211 (=> (not res!501353) (not e!415762))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!744211 (= res!501353 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19884 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!744212 () Bool)

(declare-fun res!501360 () Bool)

(assert (=> b!744212 (=> (not res!501360) (not e!415760))))

(declare-datatypes ((List!13939 0))(
  ( (Nil!13936) (Cons!13935 (h!15007 (_ BitVec 64)) (t!20262 List!13939)) )
))
(declare-fun arrayNoDuplicates!0 (array!41548 (_ BitVec 32) List!13939) Bool)

(assert (=> b!744212 (= res!501360 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13936))))

(declare-fun b!744213 () Bool)

(declare-fun res!501354 () Bool)

(assert (=> b!744213 (=> (not res!501354) (not e!415762))))

(declare-fun e!415759 () Bool)

(assert (=> b!744213 (= res!501354 e!415759)))

(declare-fun c!81813 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!744213 (= c!81813 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!744214 () Bool)

(declare-fun res!501346 () Bool)

(declare-fun e!415764 () Bool)

(assert (=> b!744214 (=> (not res!501346) (not e!415764))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!41548 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!744214 (= res!501346 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!744215 () Bool)

(declare-fun res!501349 () Bool)

(assert (=> b!744215 (=> (not res!501349) (not e!415764))))

(declare-fun j!159 () (_ BitVec 32))

(assert (=> b!744215 (= res!501349 (and (= (size!20305 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20305 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20305 a!3186)) (not (= i!1173 j!159))))))

(declare-datatypes ((SeekEntryResult!7491 0))(
  ( (MissingZero!7491 (index!32331 (_ BitVec 32))) (Found!7491 (index!32332 (_ BitVec 32))) (Intermediate!7491 (undefined!8303 Bool) (index!32333 (_ BitVec 32)) (x!63322 (_ BitVec 32))) (Undefined!7491) (MissingVacant!7491 (index!32334 (_ BitVec 32))) )
))
(declare-fun lt!330628 () SeekEntryResult!7491)

(declare-fun b!744216 () Bool)

(declare-fun e!415763 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41548 (_ BitVec 32)) SeekEntryResult!7491)

(assert (=> b!744216 (= e!415763 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19884 a!3186) j!159) a!3186 mask!3328) lt!330628))))

(declare-fun b!744217 () Bool)

(declare-fun res!501348 () Bool)

(assert (=> b!744217 (=> (not res!501348) (not e!415764))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!744217 (= res!501348 (validKeyInArray!0 k!2102))))

(declare-fun b!744218 () Bool)

(declare-fun res!501351 () Bool)

(assert (=> b!744218 (=> (not res!501351) (not e!415764))))

(assert (=> b!744218 (= res!501351 (validKeyInArray!0 (select (arr!19884 a!3186) j!159)))))

(declare-fun b!744219 () Bool)

(declare-fun e!415765 () Bool)

(assert (=> b!744219 (= e!415765 true)))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun lt!330632 () SeekEntryResult!7491)

(assert (=> b!744219 (= lt!330632 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19884 a!3186) j!159) a!3186 mask!3328))))

(declare-fun res!501345 () Bool)

(assert (=> start!65422 (=> (not res!501345) (not e!415764))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65422 (= res!501345 (validMask!0 mask!3328))))

(assert (=> start!65422 e!415764))

(assert (=> start!65422 true))

(declare-fun array_inv!15658 (array!41548) Bool)

(assert (=> start!65422 (array_inv!15658 a!3186)))

(declare-fun b!744220 () Bool)

(assert (=> b!744220 (= e!415764 e!415760)))

(declare-fun res!501347 () Bool)

(assert (=> b!744220 (=> (not res!501347) (not e!415760))))

(declare-fun lt!330630 () SeekEntryResult!7491)

(assert (=> b!744220 (= res!501347 (or (= lt!330630 (MissingZero!7491 i!1173)) (= lt!330630 (MissingVacant!7491 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41548 (_ BitVec 32)) SeekEntryResult!7491)

(assert (=> b!744220 (= lt!330630 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!744221 () Bool)

(assert (=> b!744221 (= e!415759 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19884 a!3186) j!159) a!3186 mask!3328) (Found!7491 j!159)))))

(declare-fun b!744222 () Bool)

(declare-fun e!415766 () Bool)

(assert (=> b!744222 (= e!415762 e!415766)))

(declare-fun res!501352 () Bool)

(assert (=> b!744222 (=> (not res!501352) (not e!415766))))

(declare-fun lt!330629 () SeekEntryResult!7491)

(declare-fun lt!330626 () SeekEntryResult!7491)

(assert (=> b!744222 (= res!501352 (= lt!330629 lt!330626))))

(declare-fun lt!330624 () (_ BitVec 64))

(declare-fun lt!330631 () array!41548)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41548 (_ BitVec 32)) SeekEntryResult!7491)

(assert (=> b!744222 (= lt!330626 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!330624 lt!330631 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!744222 (= lt!330629 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!330624 mask!3328) lt!330624 lt!330631 mask!3328))))

(assert (=> b!744222 (= lt!330624 (select (store (arr!19884 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!744222 (= lt!330631 (array!41549 (store (arr!19884 a!3186) i!1173 k!2102) (size!20305 a!3186)))))

(declare-fun b!744223 () Bool)

(declare-fun res!501356 () Bool)

(assert (=> b!744223 (=> (not res!501356) (not e!415760))))

(assert (=> b!744223 (= res!501356 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20305 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20305 a!3186))))))

(declare-fun b!744224 () Bool)

(declare-fun lt!330627 () SeekEntryResult!7491)

(assert (=> b!744224 (= e!415759 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19884 a!3186) j!159) a!3186 mask!3328) lt!330627))))

(declare-fun b!744225 () Bool)

(assert (=> b!744225 (= e!415766 (not e!415765))))

(declare-fun res!501357 () Bool)

(assert (=> b!744225 (=> res!501357 e!415765)))

(assert (=> b!744225 (= res!501357 (or (not (is-Intermediate!7491 lt!330626)) (bvslt x!1131 (x!63322 lt!330626)) (not (= x!1131 (x!63322 lt!330626))) (not (= index!1321 (index!32333 lt!330626)))))))

(declare-fun e!415761 () Bool)

(assert (=> b!744225 e!415761))

(declare-fun res!501355 () Bool)

(assert (=> b!744225 (=> (not res!501355) (not e!415761))))

(assert (=> b!744225 (= res!501355 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!25462 0))(
  ( (Unit!25463) )
))
(declare-fun lt!330625 () Unit!25462)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41548 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25462)

(assert (=> b!744225 (= lt!330625 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!744226 () Bool)

(assert (=> b!744226 (= e!415760 e!415762)))

(declare-fun res!501358 () Bool)

(assert (=> b!744226 (=> (not res!501358) (not e!415762))))

(assert (=> b!744226 (= res!501358 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19884 a!3186) j!159) mask!3328) (select (arr!19884 a!3186) j!159) a!3186 mask!3328) lt!330627))))

(assert (=> b!744226 (= lt!330627 (Intermediate!7491 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!744227 () Bool)

(assert (=> b!744227 (= e!415761 e!415763)))

(declare-fun res!501359 () Bool)

(assert (=> b!744227 (=> (not res!501359) (not e!415763))))

(assert (=> b!744227 (= res!501359 (= (seekEntryOrOpen!0 (select (arr!19884 a!3186) j!159) a!3186 mask!3328) lt!330628))))

(assert (=> b!744227 (= lt!330628 (Found!7491 j!159))))

(assert (= (and start!65422 res!501345) b!744215))

(assert (= (and b!744215 res!501349) b!744218))

(assert (= (and b!744218 res!501351) b!744217))

(assert (= (and b!744217 res!501348) b!744214))

(assert (= (and b!744214 res!501346) b!744220))

(assert (= (and b!744220 res!501347) b!744210))

(assert (= (and b!744210 res!501350) b!744212))

(assert (= (and b!744212 res!501360) b!744223))

(assert (= (and b!744223 res!501356) b!744226))

(assert (= (and b!744226 res!501358) b!744211))

(assert (= (and b!744211 res!501353) b!744213))

(assert (= (and b!744213 c!81813) b!744224))

(assert (= (and b!744213 (not c!81813)) b!744221))

(assert (= (and b!744213 res!501354) b!744222))

(assert (= (and b!744222 res!501352) b!744225))

(assert (= (and b!744225 res!501355) b!744227))

(assert (= (and b!744227 res!501359) b!744216))

(assert (= (and b!744225 (not res!501357)) b!744219))

(declare-fun m!694855 () Bool)

(assert (=> b!744224 m!694855))

(assert (=> b!744224 m!694855))

(declare-fun m!694857 () Bool)

(assert (=> b!744224 m!694857))

(assert (=> b!744218 m!694855))

(assert (=> b!744218 m!694855))

(declare-fun m!694859 () Bool)

(assert (=> b!744218 m!694859))

(assert (=> b!744226 m!694855))

(assert (=> b!744226 m!694855))

(declare-fun m!694861 () Bool)

(assert (=> b!744226 m!694861))

(assert (=> b!744226 m!694861))

(assert (=> b!744226 m!694855))

(declare-fun m!694863 () Bool)

(assert (=> b!744226 m!694863))

(assert (=> b!744221 m!694855))

(assert (=> b!744221 m!694855))

(declare-fun m!694865 () Bool)

(assert (=> b!744221 m!694865))

(declare-fun m!694867 () Bool)

(assert (=> b!744220 m!694867))

(declare-fun m!694869 () Bool)

(assert (=> b!744225 m!694869))

(declare-fun m!694871 () Bool)

(assert (=> b!744225 m!694871))

(assert (=> b!744216 m!694855))

(assert (=> b!744216 m!694855))

(declare-fun m!694873 () Bool)

(assert (=> b!744216 m!694873))

(declare-fun m!694875 () Bool)

(assert (=> b!744212 m!694875))

(declare-fun m!694877 () Bool)

(assert (=> b!744210 m!694877))

(declare-fun m!694879 () Bool)

(assert (=> b!744222 m!694879))

(declare-fun m!694881 () Bool)

(assert (=> b!744222 m!694881))

(assert (=> b!744222 m!694879))

(declare-fun m!694883 () Bool)

(assert (=> b!744222 m!694883))

(declare-fun m!694885 () Bool)

(assert (=> b!744222 m!694885))

(declare-fun m!694887 () Bool)

(assert (=> b!744222 m!694887))

(assert (=> b!744227 m!694855))

(assert (=> b!744227 m!694855))

(declare-fun m!694889 () Bool)

(assert (=> b!744227 m!694889))

(declare-fun m!694891 () Bool)

(assert (=> b!744217 m!694891))

(declare-fun m!694893 () Bool)

(assert (=> b!744211 m!694893))

(declare-fun m!694895 () Bool)

(assert (=> start!65422 m!694895))

(declare-fun m!694897 () Bool)

(assert (=> start!65422 m!694897))

(declare-fun m!694899 () Bool)

(assert (=> b!744214 m!694899))

(assert (=> b!744219 m!694855))

(assert (=> b!744219 m!694855))

(assert (=> b!744219 m!694865))

(push 1)


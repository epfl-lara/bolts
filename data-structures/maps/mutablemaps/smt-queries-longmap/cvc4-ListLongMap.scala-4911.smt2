; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!67730 () Bool)

(assert start!67730)

(declare-fun b!785174 () Bool)

(declare-fun e!436540 () Bool)

(declare-fun e!436536 () Bool)

(assert (=> b!785174 (= e!436540 e!436536)))

(declare-fun res!531598 () Bool)

(assert (=> b!785174 (=> res!531598 e!436536)))

(declare-fun lt!350107 () (_ BitVec 64))

(declare-fun lt!350106 () (_ BitVec 64))

(assert (=> b!785174 (= res!531598 (= lt!350107 lt!350106))))

(declare-datatypes ((array!42725 0))(
  ( (array!42726 (arr!20447 (Array (_ BitVec 32) (_ BitVec 64))) (size!20868 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42725)

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!785174 (= lt!350107 (select (store (arr!20447 a!3186) i!1173 k!2102) index!1321))))

(declare-fun b!785175 () Bool)

(assert (=> b!785175 (= e!436536 true)))

(declare-fun e!436535 () Bool)

(assert (=> b!785175 e!436535))

(declare-fun res!531590 () Bool)

(assert (=> b!785175 (=> (not res!531590) (not e!436535))))

(assert (=> b!785175 (= res!531590 (= lt!350107 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Unit!27126 0))(
  ( (Unit!27127) )
))
(declare-fun lt!350104 () Unit!27126)

(declare-fun e!436542 () Unit!27126)

(assert (=> b!785175 (= lt!350104 e!436542)))

(declare-fun c!87203 () Bool)

(assert (=> b!785175 (= c!87203 (= lt!350107 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!785176 () Bool)

(declare-fun e!436538 () Bool)

(declare-fun e!436545 () Bool)

(assert (=> b!785176 (= e!436538 e!436545)))

(declare-fun res!531596 () Bool)

(assert (=> b!785176 (=> (not res!531596) (not e!436545))))

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!8054 0))(
  ( (MissingZero!8054 (index!34583 (_ BitVec 32))) (Found!8054 (index!34584 (_ BitVec 32))) (Intermediate!8054 (undefined!8866 Bool) (index!34585 (_ BitVec 32)) (x!65555 (_ BitVec 32))) (Undefined!8054) (MissingVacant!8054 (index!34586 (_ BitVec 32))) )
))
(declare-fun lt!350112 () SeekEntryResult!8054)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42725 (_ BitVec 32)) SeekEntryResult!8054)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!785176 (= res!531596 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20447 a!3186) j!159) mask!3328) (select (arr!20447 a!3186) j!159) a!3186 mask!3328) lt!350112))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!785176 (= lt!350112 (Intermediate!8054 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!785177 () Bool)

(declare-fun Unit!27128 () Unit!27126)

(assert (=> b!785177 (= e!436542 Unit!27128)))

(declare-fun b!785178 () Bool)

(declare-fun Unit!27129 () Unit!27126)

(assert (=> b!785178 (= e!436542 Unit!27129)))

(assert (=> b!785178 false))

(declare-fun b!785179 () Bool)

(declare-fun res!531586 () Bool)

(assert (=> b!785179 (=> (not res!531586) (not e!436538))))

(declare-fun x!1131 () (_ BitVec 32))

(assert (=> b!785179 (= res!531586 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20868 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20868 a!3186))))))

(declare-fun b!785180 () Bool)

(declare-fun e!436543 () Bool)

(assert (=> b!785180 (= e!436545 e!436543)))

(declare-fun res!531588 () Bool)

(assert (=> b!785180 (=> (not res!531588) (not e!436543))))

(declare-fun lt!350102 () SeekEntryResult!8054)

(declare-fun lt!350109 () SeekEntryResult!8054)

(assert (=> b!785180 (= res!531588 (= lt!350102 lt!350109))))

(declare-fun lt!350103 () array!42725)

(assert (=> b!785180 (= lt!350109 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!350106 lt!350103 mask!3328))))

(assert (=> b!785180 (= lt!350102 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!350106 mask!3328) lt!350106 lt!350103 mask!3328))))

(assert (=> b!785180 (= lt!350106 (select (store (arr!20447 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!785180 (= lt!350103 (array!42726 (store (arr!20447 a!3186) i!1173 k!2102) (size!20868 a!3186)))))

(declare-fun b!785181 () Bool)

(declare-fun res!531587 () Bool)

(assert (=> b!785181 (=> (not res!531587) (not e!436545))))

(assert (=> b!785181 (= res!531587 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20447 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!785183 () Bool)

(declare-fun e!436537 () Bool)

(assert (=> b!785183 (= e!436543 (not e!436537))))

(declare-fun res!531594 () Bool)

(assert (=> b!785183 (=> res!531594 e!436537)))

(assert (=> b!785183 (= res!531594 (or (not (is-Intermediate!8054 lt!350109)) (bvslt x!1131 (x!65555 lt!350109)) (not (= x!1131 (x!65555 lt!350109))) (not (= index!1321 (index!34585 lt!350109)))))))

(declare-fun e!436546 () Bool)

(assert (=> b!785183 e!436546))

(declare-fun res!531599 () Bool)

(assert (=> b!785183 (=> (not res!531599) (not e!436546))))

(declare-fun lt!350108 () SeekEntryResult!8054)

(declare-fun lt!350113 () SeekEntryResult!8054)

(assert (=> b!785183 (= res!531599 (= lt!350108 lt!350113))))

(assert (=> b!785183 (= lt!350113 (Found!8054 j!159))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42725 (_ BitVec 32)) SeekEntryResult!8054)

(assert (=> b!785183 (= lt!350108 (seekEntryOrOpen!0 (select (arr!20447 a!3186) j!159) a!3186 mask!3328))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42725 (_ BitVec 32)) Bool)

(assert (=> b!785183 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!350110 () Unit!27126)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42725 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27126)

(assert (=> b!785183 (= lt!350110 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!785184 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42725 (_ BitVec 32)) SeekEntryResult!8054)

(assert (=> b!785184 (= e!436546 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20447 a!3186) j!159) a!3186 mask!3328) lt!350113))))

(declare-fun e!436541 () Bool)

(declare-fun b!785185 () Bool)

(assert (=> b!785185 (= e!436541 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20447 a!3186) j!159) a!3186 mask!3328) (Found!8054 j!159)))))

(declare-fun b!785186 () Bool)

(declare-fun res!531592 () Bool)

(assert (=> b!785186 (=> (not res!531592) (not e!436535))))

(assert (=> b!785186 (= res!531592 (= (seekEntryOrOpen!0 lt!350106 lt!350103 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!350106 lt!350103 mask!3328)))))

(declare-fun b!785187 () Bool)

(declare-fun res!531593 () Bool)

(assert (=> b!785187 (=> (not res!531593) (not e!436545))))

(assert (=> b!785187 (= res!531593 e!436541)))

(declare-fun c!87204 () Bool)

(assert (=> b!785187 (= c!87204 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!785188 () Bool)

(assert (=> b!785188 (= e!436541 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20447 a!3186) j!159) a!3186 mask!3328) lt!350112))))

(declare-fun b!785189 () Bool)

(declare-fun res!531601 () Bool)

(assert (=> b!785189 (=> (not res!531601) (not e!436538))))

(declare-datatypes ((List!14502 0))(
  ( (Nil!14499) (Cons!14498 (h!15621 (_ BitVec 64)) (t!20825 List!14502)) )
))
(declare-fun arrayNoDuplicates!0 (array!42725 (_ BitVec 32) List!14502) Bool)

(assert (=> b!785189 (= res!531601 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14499))))

(declare-fun b!785190 () Bool)

(declare-fun e!436544 () Bool)

(assert (=> b!785190 (= e!436544 e!436538)))

(declare-fun res!531583 () Bool)

(assert (=> b!785190 (=> (not res!531583) (not e!436538))))

(declare-fun lt!350111 () SeekEntryResult!8054)

(assert (=> b!785190 (= res!531583 (or (= lt!350111 (MissingZero!8054 i!1173)) (= lt!350111 (MissingVacant!8054 i!1173))))))

(assert (=> b!785190 (= lt!350111 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!785191 () Bool)

(assert (=> b!785191 (= e!436537 e!436540)))

(declare-fun res!531584 () Bool)

(assert (=> b!785191 (=> res!531584 e!436540)))

(declare-fun lt!350105 () SeekEntryResult!8054)

(assert (=> b!785191 (= res!531584 (not (= lt!350105 lt!350113)))))

(assert (=> b!785191 (= lt!350105 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20447 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!785192 () Bool)

(declare-fun res!531600 () Bool)

(assert (=> b!785192 (=> (not res!531600) (not e!436538))))

(assert (=> b!785192 (= res!531600 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!785182 () Bool)

(declare-fun res!531585 () Bool)

(assert (=> b!785182 (=> (not res!531585) (not e!436544))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!785182 (= res!531585 (validKeyInArray!0 (select (arr!20447 a!3186) j!159)))))

(declare-fun res!531595 () Bool)

(assert (=> start!67730 (=> (not res!531595) (not e!436544))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67730 (= res!531595 (validMask!0 mask!3328))))

(assert (=> start!67730 e!436544))

(assert (=> start!67730 true))

(declare-fun array_inv!16221 (array!42725) Bool)

(assert (=> start!67730 (array_inv!16221 a!3186)))

(declare-fun b!785193 () Bool)

(declare-fun res!531597 () Bool)

(assert (=> b!785193 (=> (not res!531597) (not e!436544))))

(declare-fun arrayContainsKey!0 (array!42725 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!785193 (= res!531597 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!785194 () Bool)

(declare-fun res!531589 () Bool)

(assert (=> b!785194 (=> (not res!531589) (not e!436544))))

(assert (=> b!785194 (= res!531589 (validKeyInArray!0 k!2102))))

(declare-fun b!785195 () Bool)

(declare-fun res!531591 () Bool)

(assert (=> b!785195 (=> (not res!531591) (not e!436544))))

(assert (=> b!785195 (= res!531591 (and (= (size!20868 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20868 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20868 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!785196 () Bool)

(assert (=> b!785196 (= e!436535 (= lt!350108 lt!350105))))

(assert (= (and start!67730 res!531595) b!785195))

(assert (= (and b!785195 res!531591) b!785182))

(assert (= (and b!785182 res!531585) b!785194))

(assert (= (and b!785194 res!531589) b!785193))

(assert (= (and b!785193 res!531597) b!785190))

(assert (= (and b!785190 res!531583) b!785192))

(assert (= (and b!785192 res!531600) b!785189))

(assert (= (and b!785189 res!531601) b!785179))

(assert (= (and b!785179 res!531586) b!785176))

(assert (= (and b!785176 res!531596) b!785181))

(assert (= (and b!785181 res!531587) b!785187))

(assert (= (and b!785187 c!87204) b!785188))

(assert (= (and b!785187 (not c!87204)) b!785185))

(assert (= (and b!785187 res!531593) b!785180))

(assert (= (and b!785180 res!531588) b!785183))

(assert (= (and b!785183 res!531599) b!785184))

(assert (= (and b!785183 (not res!531594)) b!785191))

(assert (= (and b!785191 (not res!531584)) b!785174))

(assert (= (and b!785174 (not res!531598)) b!785175))

(assert (= (and b!785175 c!87203) b!785178))

(assert (= (and b!785175 (not c!87203)) b!785177))

(assert (= (and b!785175 res!531590) b!785186))

(assert (= (and b!785186 res!531592) b!785196))

(declare-fun m!727353 () Bool)

(assert (=> b!785180 m!727353))

(assert (=> b!785180 m!727353))

(declare-fun m!727355 () Bool)

(assert (=> b!785180 m!727355))

(declare-fun m!727357 () Bool)

(assert (=> b!785180 m!727357))

(declare-fun m!727359 () Bool)

(assert (=> b!785180 m!727359))

(declare-fun m!727361 () Bool)

(assert (=> b!785180 m!727361))

(declare-fun m!727363 () Bool)

(assert (=> b!785183 m!727363))

(assert (=> b!785183 m!727363))

(declare-fun m!727365 () Bool)

(assert (=> b!785183 m!727365))

(declare-fun m!727367 () Bool)

(assert (=> b!785183 m!727367))

(declare-fun m!727369 () Bool)

(assert (=> b!785183 m!727369))

(declare-fun m!727371 () Bool)

(assert (=> b!785193 m!727371))

(declare-fun m!727373 () Bool)

(assert (=> b!785194 m!727373))

(assert (=> b!785176 m!727363))

(assert (=> b!785176 m!727363))

(declare-fun m!727375 () Bool)

(assert (=> b!785176 m!727375))

(assert (=> b!785176 m!727375))

(assert (=> b!785176 m!727363))

(declare-fun m!727377 () Bool)

(assert (=> b!785176 m!727377))

(assert (=> b!785182 m!727363))

(assert (=> b!785182 m!727363))

(declare-fun m!727379 () Bool)

(assert (=> b!785182 m!727379))

(declare-fun m!727381 () Bool)

(assert (=> b!785190 m!727381))

(assert (=> b!785185 m!727363))

(assert (=> b!785185 m!727363))

(declare-fun m!727383 () Bool)

(assert (=> b!785185 m!727383))

(assert (=> b!785191 m!727363))

(assert (=> b!785191 m!727363))

(assert (=> b!785191 m!727383))

(declare-fun m!727385 () Bool)

(assert (=> b!785181 m!727385))

(declare-fun m!727387 () Bool)

(assert (=> b!785186 m!727387))

(declare-fun m!727389 () Bool)

(assert (=> b!785186 m!727389))

(declare-fun m!727391 () Bool)

(assert (=> b!785192 m!727391))

(assert (=> b!785174 m!727357))

(declare-fun m!727393 () Bool)

(assert (=> b!785174 m!727393))

(assert (=> b!785188 m!727363))

(assert (=> b!785188 m!727363))

(declare-fun m!727395 () Bool)

(assert (=> b!785188 m!727395))

(assert (=> b!785184 m!727363))

(assert (=> b!785184 m!727363))

(declare-fun m!727397 () Bool)

(assert (=> b!785184 m!727397))

(declare-fun m!727399 () Bool)

(assert (=> start!67730 m!727399))

(declare-fun m!727401 () Bool)

(assert (=> start!67730 m!727401))

(declare-fun m!727403 () Bool)

(assert (=> b!785189 m!727403))

(push 1)


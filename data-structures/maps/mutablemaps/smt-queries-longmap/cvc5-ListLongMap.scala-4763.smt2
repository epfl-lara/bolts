; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65656 () Bool)

(assert start!65656)

(declare-fun b!751301 () Bool)

(declare-datatypes ((Unit!25834 0))(
  ( (Unit!25835) )
))
(declare-fun e!419138 () Unit!25834)

(declare-fun Unit!25836 () Unit!25834)

(assert (=> b!751301 (= e!419138 Unit!25836)))

(assert (=> b!751301 false))

(declare-datatypes ((array!41782 0))(
  ( (array!41783 (arr!20001 (Array (_ BitVec 32) (_ BitVec 64))) (size!20422 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41782)

(declare-fun b!751302 () Bool)

(declare-fun index!1321 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7608 0))(
  ( (MissingZero!7608 (index!32799 (_ BitVec 32))) (Found!7608 (index!32800 (_ BitVec 32))) (Intermediate!7608 (undefined!8420 Bool) (index!32801 (_ BitVec 32)) (x!63751 (_ BitVec 32))) (Undefined!7608) (MissingVacant!7608 (index!32802 (_ BitVec 32))) )
))
(declare-fun lt!334143 () SeekEntryResult!7608)

(declare-fun e!419146 () Bool)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41782 (_ BitVec 32)) SeekEntryResult!7608)

(assert (=> b!751302 (= e!419146 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20001 a!3186) j!159) a!3186 mask!3328) lt!334143))))

(declare-fun b!751303 () Bool)

(declare-fun e!419144 () Bool)

(declare-fun e!419139 () Bool)

(assert (=> b!751303 (= e!419144 e!419139)))

(declare-fun res!507323 () Bool)

(assert (=> b!751303 (=> (not res!507323) (not e!419139))))

(declare-fun lt!334147 () SeekEntryResult!7608)

(declare-fun lt!334140 () SeekEntryResult!7608)

(assert (=> b!751303 (= res!507323 (= lt!334147 lt!334140))))

(declare-fun lt!334142 () (_ BitVec 64))

(declare-fun lt!334139 () array!41782)

(assert (=> b!751303 (= lt!334140 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!334142 lt!334139 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!751303 (= lt!334147 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!334142 mask!3328) lt!334142 lt!334139 mask!3328))))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!751303 (= lt!334142 (select (store (arr!20001 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!751303 (= lt!334139 (array!41783 (store (arr!20001 a!3186) i!1173 k!2102) (size!20422 a!3186)))))

(declare-fun b!751304 () Bool)

(declare-fun e!419147 () Bool)

(assert (=> b!751304 (= e!419139 (not e!419147))))

(declare-fun res!507328 () Bool)

(assert (=> b!751304 (=> res!507328 e!419147)))

(assert (=> b!751304 (= res!507328 (or (not (is-Intermediate!7608 lt!334140)) (bvslt x!1131 (x!63751 lt!334140)) (not (= x!1131 (x!63751 lt!334140))) (not (= index!1321 (index!32801 lt!334140)))))))

(declare-fun e!419140 () Bool)

(assert (=> b!751304 e!419140))

(declare-fun res!507331 () Bool)

(assert (=> b!751304 (=> (not res!507331) (not e!419140))))

(declare-fun lt!334141 () SeekEntryResult!7608)

(declare-fun lt!334148 () SeekEntryResult!7608)

(assert (=> b!751304 (= res!507331 (= lt!334141 lt!334148))))

(assert (=> b!751304 (= lt!334148 (Found!7608 j!159))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41782 (_ BitVec 32)) SeekEntryResult!7608)

(assert (=> b!751304 (= lt!334141 (seekEntryOrOpen!0 (select (arr!20001 a!3186) j!159) a!3186 mask!3328))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41782 (_ BitVec 32)) Bool)

(assert (=> b!751304 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!334146 () Unit!25834)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41782 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25834)

(assert (=> b!751304 (= lt!334146 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!751305 () Bool)

(declare-fun e!419143 () Bool)

(assert (=> b!751305 (= e!419143 e!419144)))

(declare-fun res!507316 () Bool)

(assert (=> b!751305 (=> (not res!507316) (not e!419144))))

(assert (=> b!751305 (= res!507316 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20001 a!3186) j!159) mask!3328) (select (arr!20001 a!3186) j!159) a!3186 mask!3328) lt!334143))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!751305 (= lt!334143 (Intermediate!7608 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!751306 () Bool)

(declare-fun res!507322 () Bool)

(assert (=> b!751306 (=> (not res!507322) (not e!419144))))

(assert (=> b!751306 (= res!507322 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20001 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!751307 () Bool)

(declare-fun res!507332 () Bool)

(declare-fun e!419145 () Bool)

(assert (=> b!751307 (=> (not res!507332) (not e!419145))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!751307 (= res!507332 (validKeyInArray!0 k!2102))))

(declare-fun b!751308 () Bool)

(declare-fun res!507333 () Bool)

(assert (=> b!751308 (=> (not res!507333) (not e!419145))))

(assert (=> b!751308 (= res!507333 (and (= (size!20422 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20422 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20422 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!751309 () Bool)

(declare-fun res!507329 () Bool)

(assert (=> b!751309 (=> (not res!507329) (not e!419143))))

(assert (=> b!751309 (= res!507329 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!751310 () Bool)

(declare-fun e!419142 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41782 (_ BitVec 32)) SeekEntryResult!7608)

(assert (=> b!751310 (= e!419142 (= (seekEntryOrOpen!0 lt!334142 lt!334139 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!334142 lt!334139 mask!3328)))))

(declare-fun res!507325 () Bool)

(assert (=> start!65656 (=> (not res!507325) (not e!419145))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65656 (= res!507325 (validMask!0 mask!3328))))

(assert (=> start!65656 e!419145))

(assert (=> start!65656 true))

(declare-fun array_inv!15775 (array!41782) Bool)

(assert (=> start!65656 (array_inv!15775 a!3186)))

(declare-fun b!751311 () Bool)

(declare-fun Unit!25837 () Unit!25834)

(assert (=> b!751311 (= e!419138 Unit!25837)))

(declare-fun b!751312 () Bool)

(declare-fun res!507324 () Bool)

(assert (=> b!751312 (=> (not res!507324) (not e!419143))))

(assert (=> b!751312 (= res!507324 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20422 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20422 a!3186))))))

(declare-fun b!751313 () Bool)

(declare-fun res!507330 () Bool)

(assert (=> b!751313 (=> (not res!507330) (not e!419144))))

(assert (=> b!751313 (= res!507330 e!419146)))

(declare-fun c!82373 () Bool)

(assert (=> b!751313 (= c!82373 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!751314 () Bool)

(assert (=> b!751314 (= e!419145 e!419143)))

(declare-fun res!507326 () Bool)

(assert (=> b!751314 (=> (not res!507326) (not e!419143))))

(declare-fun lt!334145 () SeekEntryResult!7608)

(assert (=> b!751314 (= res!507326 (or (= lt!334145 (MissingZero!7608 i!1173)) (= lt!334145 (MissingVacant!7608 i!1173))))))

(assert (=> b!751314 (= lt!334145 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!751315 () Bool)

(declare-fun res!507320 () Bool)

(assert (=> b!751315 (=> res!507320 e!419147)))

(assert (=> b!751315 (= res!507320 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20001 a!3186) j!159) a!3186 mask!3328) lt!334148)))))

(declare-fun b!751316 () Bool)

(assert (=> b!751316 (= e!419146 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20001 a!3186) j!159) a!3186 mask!3328) (Found!7608 j!159)))))

(declare-fun b!751317 () Bool)

(declare-fun res!507327 () Bool)

(assert (=> b!751317 (=> (not res!507327) (not e!419143))))

(declare-datatypes ((List!14056 0))(
  ( (Nil!14053) (Cons!14052 (h!15124 (_ BitVec 64)) (t!20379 List!14056)) )
))
(declare-fun arrayNoDuplicates!0 (array!41782 (_ BitVec 32) List!14056) Bool)

(assert (=> b!751317 (= res!507327 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14053))))

(declare-fun b!751318 () Bool)

(declare-fun res!507319 () Bool)

(assert (=> b!751318 (=> (not res!507319) (not e!419145))))

(assert (=> b!751318 (= res!507319 (validKeyInArray!0 (select (arr!20001 a!3186) j!159)))))

(declare-fun b!751319 () Bool)

(assert (=> b!751319 (= e!419140 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20001 a!3186) j!159) a!3186 mask!3328) lt!334148))))

(declare-fun b!751320 () Bool)

(declare-fun res!507321 () Bool)

(assert (=> b!751320 (=> (not res!507321) (not e!419145))))

(declare-fun arrayContainsKey!0 (array!41782 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!751320 (= res!507321 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!751321 () Bool)

(declare-fun e!419141 () Bool)

(assert (=> b!751321 (= e!419141 true)))

(assert (=> b!751321 e!419142))

(declare-fun res!507317 () Bool)

(assert (=> b!751321 (=> (not res!507317) (not e!419142))))

(declare-fun lt!334144 () (_ BitVec 64))

(assert (=> b!751321 (= res!507317 (= lt!334144 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!334138 () Unit!25834)

(assert (=> b!751321 (= lt!334138 e!419138)))

(declare-fun c!82374 () Bool)

(assert (=> b!751321 (= c!82374 (= lt!334144 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!751322 () Bool)

(assert (=> b!751322 (= e!419147 e!419141)))

(declare-fun res!507318 () Bool)

(assert (=> b!751322 (=> res!507318 e!419141)))

(assert (=> b!751322 (= res!507318 (= lt!334144 lt!334142))))

(assert (=> b!751322 (= lt!334144 (select (store (arr!20001 a!3186) i!1173 k!2102) index!1321))))

(assert (= (and start!65656 res!507325) b!751308))

(assert (= (and b!751308 res!507333) b!751318))

(assert (= (and b!751318 res!507319) b!751307))

(assert (= (and b!751307 res!507332) b!751320))

(assert (= (and b!751320 res!507321) b!751314))

(assert (= (and b!751314 res!507326) b!751309))

(assert (= (and b!751309 res!507329) b!751317))

(assert (= (and b!751317 res!507327) b!751312))

(assert (= (and b!751312 res!507324) b!751305))

(assert (= (and b!751305 res!507316) b!751306))

(assert (= (and b!751306 res!507322) b!751313))

(assert (= (and b!751313 c!82373) b!751302))

(assert (= (and b!751313 (not c!82373)) b!751316))

(assert (= (and b!751313 res!507330) b!751303))

(assert (= (and b!751303 res!507323) b!751304))

(assert (= (and b!751304 res!507331) b!751319))

(assert (= (and b!751304 (not res!507328)) b!751315))

(assert (= (and b!751315 (not res!507320)) b!751322))

(assert (= (and b!751322 (not res!507318)) b!751321))

(assert (= (and b!751321 c!82374) b!751301))

(assert (= (and b!751321 (not c!82374)) b!751311))

(assert (= (and b!751321 res!507317) b!751310))

(declare-fun m!700585 () Bool)

(assert (=> b!751317 m!700585))

(declare-fun m!700587 () Bool)

(assert (=> b!751319 m!700587))

(assert (=> b!751319 m!700587))

(declare-fun m!700589 () Bool)

(assert (=> b!751319 m!700589))

(declare-fun m!700591 () Bool)

(assert (=> b!751322 m!700591))

(declare-fun m!700593 () Bool)

(assert (=> b!751322 m!700593))

(declare-fun m!700595 () Bool)

(assert (=> b!751320 m!700595))

(declare-fun m!700597 () Bool)

(assert (=> b!751307 m!700597))

(declare-fun m!700599 () Bool)

(assert (=> b!751303 m!700599))

(assert (=> b!751303 m!700591))

(assert (=> b!751303 m!700599))

(declare-fun m!700601 () Bool)

(assert (=> b!751303 m!700601))

(declare-fun m!700603 () Bool)

(assert (=> b!751303 m!700603))

(declare-fun m!700605 () Bool)

(assert (=> b!751303 m!700605))

(assert (=> b!751315 m!700587))

(assert (=> b!751315 m!700587))

(declare-fun m!700607 () Bool)

(assert (=> b!751315 m!700607))

(assert (=> b!751318 m!700587))

(assert (=> b!751318 m!700587))

(declare-fun m!700609 () Bool)

(assert (=> b!751318 m!700609))

(assert (=> b!751302 m!700587))

(assert (=> b!751302 m!700587))

(declare-fun m!700611 () Bool)

(assert (=> b!751302 m!700611))

(assert (=> b!751316 m!700587))

(assert (=> b!751316 m!700587))

(assert (=> b!751316 m!700607))

(declare-fun m!700613 () Bool)

(assert (=> b!751306 m!700613))

(declare-fun m!700615 () Bool)

(assert (=> b!751314 m!700615))

(declare-fun m!700617 () Bool)

(assert (=> b!751310 m!700617))

(declare-fun m!700619 () Bool)

(assert (=> b!751310 m!700619))

(assert (=> b!751305 m!700587))

(assert (=> b!751305 m!700587))

(declare-fun m!700621 () Bool)

(assert (=> b!751305 m!700621))

(assert (=> b!751305 m!700621))

(assert (=> b!751305 m!700587))

(declare-fun m!700623 () Bool)

(assert (=> b!751305 m!700623))

(assert (=> b!751304 m!700587))

(assert (=> b!751304 m!700587))

(declare-fun m!700625 () Bool)

(assert (=> b!751304 m!700625))

(declare-fun m!700627 () Bool)

(assert (=> b!751304 m!700627))

(declare-fun m!700629 () Bool)

(assert (=> b!751304 m!700629))

(declare-fun m!700631 () Bool)

(assert (=> b!751309 m!700631))

(declare-fun m!700633 () Bool)

(assert (=> start!65656 m!700633))

(declare-fun m!700635 () Bool)

(assert (=> start!65656 m!700635))

(push 1)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65356 () Bool)

(assert start!65356)

(declare-fun b!742295 () Bool)

(declare-fun e!414870 () Bool)

(declare-fun e!414871 () Bool)

(assert (=> b!742295 (= e!414870 e!414871)))

(declare-fun res!499640 () Bool)

(assert (=> b!742295 (=> (not res!499640) (not e!414871))))

(declare-datatypes ((array!41482 0))(
  ( (array!41483 (arr!19851 (Array (_ BitVec 32) (_ BitVec 64))) (size!20272 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41482)

(declare-datatypes ((SeekEntryResult!7458 0))(
  ( (MissingZero!7458 (index!32199 (_ BitVec 32))) (Found!7458 (index!32200 (_ BitVec 32))) (Intermediate!7458 (undefined!8270 Bool) (index!32201 (_ BitVec 32)) (x!63201 (_ BitVec 32))) (Undefined!7458) (MissingVacant!7458 (index!32202 (_ BitVec 32))) )
))
(declare-fun lt!329778 () SeekEntryResult!7458)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41482 (_ BitVec 32)) SeekEntryResult!7458)

(assert (=> b!742295 (= res!499640 (= (seekEntryOrOpen!0 (select (arr!19851 a!3186) j!159) a!3186 mask!3328) lt!329778))))

(assert (=> b!742295 (= lt!329778 (Found!7458 j!159))))

(declare-fun b!742296 () Bool)

(declare-fun res!499641 () Bool)

(declare-fun e!414874 () Bool)

(assert (=> b!742296 (=> (not res!499641) (not e!414874))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!41482 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!742296 (= res!499641 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun lt!329776 () SeekEntryResult!7458)

(declare-fun b!742297 () Bool)

(declare-fun e!414876 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41482 (_ BitVec 32)) SeekEntryResult!7458)

(assert (=> b!742297 (= e!414876 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19851 a!3186) j!159) a!3186 mask!3328) lt!329776))))

(declare-fun b!742298 () Bool)

(declare-fun e!414868 () Bool)

(declare-fun e!414872 () Bool)

(assert (=> b!742298 (= e!414868 e!414872)))

(declare-fun res!499628 () Bool)

(assert (=> b!742298 (=> (not res!499628) (not e!414872))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!742298 (= res!499628 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19851 a!3186) j!159) mask!3328) (select (arr!19851 a!3186) j!159) a!3186 mask!3328) lt!329776))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!742298 (= lt!329776 (Intermediate!7458 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun lt!329780 () SeekEntryResult!7458)

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun lt!329783 () (_ BitVec 64))

(declare-fun b!742299 () Bool)

(declare-fun e!414873 () Bool)

(assert (=> b!742299 (= e!414873 (or (not (= (select (store (arr!19851 a!3186) i!1173 k!2102) index!1321) lt!329783)) (undefined!8270 lt!329780) (bvsge mask!3328 #b00000000000000000000000000000000)))))

(declare-fun b!742300 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41482 (_ BitVec 32)) SeekEntryResult!7458)

(assert (=> b!742300 (= e!414876 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19851 a!3186) j!159) a!3186 mask!3328) (Found!7458 j!159)))))

(declare-fun b!742301 () Bool)

(declare-fun res!499639 () Bool)

(assert (=> b!742301 (=> (not res!499639) (not e!414874))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!742301 (= res!499639 (validKeyInArray!0 (select (arr!19851 a!3186) j!159)))))

(declare-fun b!742302 () Bool)

(declare-fun res!499642 () Bool)

(assert (=> b!742302 (=> (not res!499642) (not e!414874))))

(assert (=> b!742302 (= res!499642 (and (= (size!20272 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20272 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20272 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!742303 () Bool)

(declare-fun res!499635 () Bool)

(assert (=> b!742303 (=> (not res!499635) (not e!414868))))

(assert (=> b!742303 (= res!499635 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20272 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20272 a!3186))))))

(declare-fun b!742304 () Bool)

(declare-fun res!499630 () Bool)

(assert (=> b!742304 (=> (not res!499630) (not e!414872))))

(assert (=> b!742304 (= res!499630 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19851 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!742305 () Bool)

(assert (=> b!742305 (= e!414874 e!414868)))

(declare-fun res!499631 () Bool)

(assert (=> b!742305 (=> (not res!499631) (not e!414868))))

(declare-fun lt!329781 () SeekEntryResult!7458)

(assert (=> b!742305 (= res!499631 (or (= lt!329781 (MissingZero!7458 i!1173)) (= lt!329781 (MissingVacant!7458 i!1173))))))

(assert (=> b!742305 (= lt!329781 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!742306 () Bool)

(assert (=> b!742306 (= e!414871 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19851 a!3186) j!159) a!3186 mask!3328) lt!329778))))

(declare-fun b!742307 () Bool)

(declare-fun res!499634 () Bool)

(assert (=> b!742307 (=> (not res!499634) (not e!414868))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41482 (_ BitVec 32)) Bool)

(assert (=> b!742307 (= res!499634 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!742308 () Bool)

(declare-fun e!414869 () Bool)

(assert (=> b!742308 (= e!414869 (not e!414873))))

(declare-fun res!499644 () Bool)

(assert (=> b!742308 (=> res!499644 e!414873)))

(assert (=> b!742308 (= res!499644 (or (not (is-Intermediate!7458 lt!329780)) (bvslt x!1131 (x!63201 lt!329780)) (not (= x!1131 (x!63201 lt!329780))) (not (= index!1321 (index!32201 lt!329780)))))))

(assert (=> b!742308 e!414870))

(declare-fun res!499632 () Bool)

(assert (=> b!742308 (=> (not res!499632) (not e!414870))))

(assert (=> b!742308 (= res!499632 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!25396 0))(
  ( (Unit!25397) )
))
(declare-fun lt!329777 () Unit!25396)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41482 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25396)

(assert (=> b!742308 (= lt!329777 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!742309 () Bool)

(declare-fun res!499636 () Bool)

(assert (=> b!742309 (=> (not res!499636) (not e!414868))))

(declare-datatypes ((List!13906 0))(
  ( (Nil!13903) (Cons!13902 (h!14974 (_ BitVec 64)) (t!20229 List!13906)) )
))
(declare-fun arrayNoDuplicates!0 (array!41482 (_ BitVec 32) List!13906) Bool)

(assert (=> b!742309 (= res!499636 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13903))))

(declare-fun b!742310 () Bool)

(declare-fun res!499633 () Bool)

(assert (=> b!742310 (=> res!499633 e!414873)))

(assert (=> b!742310 (= res!499633 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19851 a!3186) j!159) a!3186 mask!3328) (Found!7458 j!159))))))

(declare-fun res!499637 () Bool)

(assert (=> start!65356 (=> (not res!499637) (not e!414874))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65356 (= res!499637 (validMask!0 mask!3328))))

(assert (=> start!65356 e!414874))

(assert (=> start!65356 true))

(declare-fun array_inv!15625 (array!41482) Bool)

(assert (=> start!65356 (array_inv!15625 a!3186)))

(declare-fun b!742311 () Bool)

(assert (=> b!742311 (= e!414872 e!414869)))

(declare-fun res!499643 () Bool)

(assert (=> b!742311 (=> (not res!499643) (not e!414869))))

(declare-fun lt!329782 () SeekEntryResult!7458)

(assert (=> b!742311 (= res!499643 (= lt!329782 lt!329780))))

(declare-fun lt!329779 () array!41482)

(assert (=> b!742311 (= lt!329780 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!329783 lt!329779 mask!3328))))

(assert (=> b!742311 (= lt!329782 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!329783 mask!3328) lt!329783 lt!329779 mask!3328))))

(assert (=> b!742311 (= lt!329783 (select (store (arr!19851 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!742311 (= lt!329779 (array!41483 (store (arr!19851 a!3186) i!1173 k!2102) (size!20272 a!3186)))))

(declare-fun b!742312 () Bool)

(declare-fun res!499638 () Bool)

(assert (=> b!742312 (=> (not res!499638) (not e!414872))))

(assert (=> b!742312 (= res!499638 e!414876)))

(declare-fun c!81714 () Bool)

(assert (=> b!742312 (= c!81714 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!742313 () Bool)

(declare-fun res!499629 () Bool)

(assert (=> b!742313 (=> (not res!499629) (not e!414874))))

(assert (=> b!742313 (= res!499629 (validKeyInArray!0 k!2102))))

(assert (= (and start!65356 res!499637) b!742302))

(assert (= (and b!742302 res!499642) b!742301))

(assert (= (and b!742301 res!499639) b!742313))

(assert (= (and b!742313 res!499629) b!742296))

(assert (= (and b!742296 res!499641) b!742305))

(assert (= (and b!742305 res!499631) b!742307))

(assert (= (and b!742307 res!499634) b!742309))

(assert (= (and b!742309 res!499636) b!742303))

(assert (= (and b!742303 res!499635) b!742298))

(assert (= (and b!742298 res!499628) b!742304))

(assert (= (and b!742304 res!499630) b!742312))

(assert (= (and b!742312 c!81714) b!742297))

(assert (= (and b!742312 (not c!81714)) b!742300))

(assert (= (and b!742312 res!499638) b!742311))

(assert (= (and b!742311 res!499643) b!742308))

(assert (= (and b!742308 res!499632) b!742295))

(assert (= (and b!742295 res!499640) b!742306))

(assert (= (and b!742308 (not res!499644)) b!742310))

(assert (= (and b!742310 (not res!499633)) b!742299))

(declare-fun m!693259 () Bool)

(assert (=> b!742313 m!693259))

(declare-fun m!693261 () Bool)

(assert (=> b!742310 m!693261))

(assert (=> b!742310 m!693261))

(declare-fun m!693263 () Bool)

(assert (=> b!742310 m!693263))

(declare-fun m!693265 () Bool)

(assert (=> b!742308 m!693265))

(declare-fun m!693267 () Bool)

(assert (=> b!742308 m!693267))

(declare-fun m!693269 () Bool)

(assert (=> b!742299 m!693269))

(declare-fun m!693271 () Bool)

(assert (=> b!742299 m!693271))

(declare-fun m!693273 () Bool)

(assert (=> b!742309 m!693273))

(assert (=> b!742301 m!693261))

(assert (=> b!742301 m!693261))

(declare-fun m!693275 () Bool)

(assert (=> b!742301 m!693275))

(assert (=> b!742297 m!693261))

(assert (=> b!742297 m!693261))

(declare-fun m!693277 () Bool)

(assert (=> b!742297 m!693277))

(assert (=> b!742306 m!693261))

(assert (=> b!742306 m!693261))

(declare-fun m!693279 () Bool)

(assert (=> b!742306 m!693279))

(assert (=> b!742298 m!693261))

(assert (=> b!742298 m!693261))

(declare-fun m!693281 () Bool)

(assert (=> b!742298 m!693281))

(assert (=> b!742298 m!693281))

(assert (=> b!742298 m!693261))

(declare-fun m!693283 () Bool)

(assert (=> b!742298 m!693283))

(declare-fun m!693285 () Bool)

(assert (=> b!742296 m!693285))

(declare-fun m!693287 () Bool)

(assert (=> b!742304 m!693287))

(declare-fun m!693289 () Bool)

(assert (=> b!742311 m!693289))

(assert (=> b!742311 m!693269))

(declare-fun m!693291 () Bool)

(assert (=> b!742311 m!693291))

(assert (=> b!742311 m!693289))

(declare-fun m!693293 () Bool)

(assert (=> b!742311 m!693293))

(declare-fun m!693295 () Bool)

(assert (=> b!742311 m!693295))

(declare-fun m!693297 () Bool)

(assert (=> b!742307 m!693297))

(assert (=> b!742295 m!693261))

(assert (=> b!742295 m!693261))

(declare-fun m!693299 () Bool)

(assert (=> b!742295 m!693299))

(declare-fun m!693301 () Bool)

(assert (=> b!742305 m!693301))

(assert (=> b!742300 m!693261))

(assert (=> b!742300 m!693261))

(assert (=> b!742300 m!693263))

(declare-fun m!693303 () Bool)

(assert (=> start!65356 m!693303))

(declare-fun m!693305 () Bool)

(assert (=> start!65356 m!693305))

(push 1)


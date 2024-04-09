; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!65460 () Bool)

(assert start!65460)

(declare-fun b!745263 () Bool)

(declare-fun res!502292 () Bool)

(declare-fun e!416277 () Bool)

(assert (=> b!745263 (=> (not res!502292) (not e!416277))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!41586 0))(
  ( (array!41587 (arr!19903 (Array (_ BitVec 32) (_ BitVec 64))) (size!20324 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41586)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!745263 (= res!502292 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19903 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun e!416280 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun b!745265 () Bool)

(declare-datatypes ((SeekEntryResult!7510 0))(
  ( (MissingZero!7510 (index!32407 (_ BitVec 32))) (Found!7510 (index!32408 (_ BitVec 32))) (Intermediate!7510 (undefined!8322 Bool) (index!32409 (_ BitVec 32)) (x!63389 (_ BitVec 32))) (Undefined!7510) (MissingVacant!7510 (index!32410 (_ BitVec 32))) )
))
(declare-fun lt!331114 () SeekEntryResult!7510)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41586 (_ BitVec 32)) SeekEntryResult!7510)

(assert (=> b!745265 (= e!416280 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19903 a!3186) j!159) a!3186 mask!3328) lt!331114))))

(declare-fun b!745266 () Bool)

(declare-fun e!416274 () Bool)

(assert (=> b!745266 (= e!416277 e!416274)))

(declare-fun res!502293 () Bool)

(assert (=> b!745266 (=> (not res!502293) (not e!416274))))

(declare-fun lt!331118 () SeekEntryResult!7510)

(declare-fun lt!331112 () SeekEntryResult!7510)

(assert (=> b!745266 (= res!502293 (= lt!331118 lt!331112))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun lt!331111 () (_ BitVec 64))

(declare-fun lt!331116 () array!41586)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41586 (_ BitVec 32)) SeekEntryResult!7510)

(assert (=> b!745266 (= lt!331112 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!331111 lt!331116 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!745266 (= lt!331118 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!331111 mask!3328) lt!331111 lt!331116 mask!3328))))

(declare-fun k0!2102 () (_ BitVec 64))

(assert (=> b!745266 (= lt!331111 (select (store (arr!19903 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!745266 (= lt!331116 (array!41587 (store (arr!19903 a!3186) i!1173 k0!2102) (size!20324 a!3186)))))

(declare-fun b!745267 () Bool)

(declare-fun e!416276 () Bool)

(assert (=> b!745267 (= e!416276 true)))

(declare-fun lt!331117 () SeekEntryResult!7510)

(assert (=> b!745267 (= lt!331117 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19903 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!745268 () Bool)

(declare-fun res!502299 () Bool)

(assert (=> b!745268 (=> (not res!502299) (not e!416277))))

(declare-fun e!416275 () Bool)

(assert (=> b!745268 (= res!502299 e!416275)))

(declare-fun c!81870 () Bool)

(assert (=> b!745268 (= c!81870 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!745269 () Bool)

(declare-fun res!502284 () Bool)

(declare-fun e!416278 () Bool)

(assert (=> b!745269 (=> (not res!502284) (not e!416278))))

(assert (=> b!745269 (= res!502284 (and (= (size!20324 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20324 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20324 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!745270 () Bool)

(declare-fun res!502288 () Bool)

(assert (=> b!745270 (=> (not res!502288) (not e!416278))))

(declare-fun arrayContainsKey!0 (array!41586 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!745270 (= res!502288 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!745271 () Bool)

(declare-fun res!502287 () Bool)

(declare-fun e!416272 () Bool)

(assert (=> b!745271 (=> (not res!502287) (not e!416272))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41586 (_ BitVec 32)) Bool)

(assert (=> b!745271 (= res!502287 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!745272 () Bool)

(assert (=> b!745272 (= e!416278 e!416272)))

(declare-fun res!502296 () Bool)

(assert (=> b!745272 (=> (not res!502296) (not e!416272))))

(declare-fun lt!331113 () SeekEntryResult!7510)

(assert (=> b!745272 (= res!502296 (or (= lt!331113 (MissingZero!7510 i!1173)) (= lt!331113 (MissingVacant!7510 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41586 (_ BitVec 32)) SeekEntryResult!7510)

(assert (=> b!745272 (= lt!331113 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!745273 () Bool)

(declare-fun res!502289 () Bool)

(assert (=> b!745273 (=> (not res!502289) (not e!416278))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!745273 (= res!502289 (validKeyInArray!0 k0!2102))))

(declare-fun b!745274 () Bool)

(declare-fun lt!331110 () SeekEntryResult!7510)

(assert (=> b!745274 (= e!416275 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19903 a!3186) j!159) a!3186 mask!3328) lt!331110))))

(declare-fun b!745275 () Bool)

(declare-fun res!502294 () Bool)

(assert (=> b!745275 (=> (not res!502294) (not e!416272))))

(assert (=> b!745275 (= res!502294 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20324 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20324 a!3186))))))

(declare-fun b!745264 () Bool)

(declare-fun res!502291 () Bool)

(assert (=> b!745264 (=> (not res!502291) (not e!416272))))

(declare-datatypes ((List!13958 0))(
  ( (Nil!13955) (Cons!13954 (h!15026 (_ BitVec 64)) (t!20281 List!13958)) )
))
(declare-fun arrayNoDuplicates!0 (array!41586 (_ BitVec 32) List!13958) Bool)

(assert (=> b!745264 (= res!502291 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13955))))

(declare-fun res!502297 () Bool)

(assert (=> start!65460 (=> (not res!502297) (not e!416278))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65460 (= res!502297 (validMask!0 mask!3328))))

(assert (=> start!65460 e!416278))

(assert (=> start!65460 true))

(declare-fun array_inv!15677 (array!41586) Bool)

(assert (=> start!65460 (array_inv!15677 a!3186)))

(declare-fun b!745276 () Bool)

(assert (=> b!745276 (= e!416275 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19903 a!3186) j!159) a!3186 mask!3328) (Found!7510 j!159)))))

(declare-fun b!745277 () Bool)

(declare-fun e!416279 () Bool)

(assert (=> b!745277 (= e!416279 e!416280)))

(declare-fun res!502286 () Bool)

(assert (=> b!745277 (=> (not res!502286) (not e!416280))))

(assert (=> b!745277 (= res!502286 (= (seekEntryOrOpen!0 (select (arr!19903 a!3186) j!159) a!3186 mask!3328) lt!331114))))

(assert (=> b!745277 (= lt!331114 (Found!7510 j!159))))

(declare-fun b!745278 () Bool)

(declare-fun res!502285 () Bool)

(assert (=> b!745278 (=> (not res!502285) (not e!416278))))

(assert (=> b!745278 (= res!502285 (validKeyInArray!0 (select (arr!19903 a!3186) j!159)))))

(declare-fun b!745279 () Bool)

(assert (=> b!745279 (= e!416274 (not e!416276))))

(declare-fun res!502290 () Bool)

(assert (=> b!745279 (=> res!502290 e!416276)))

(get-info :version)

(assert (=> b!745279 (= res!502290 (or (not ((_ is Intermediate!7510) lt!331112)) (bvslt x!1131 (x!63389 lt!331112)) (not (= x!1131 (x!63389 lt!331112))) (not (= index!1321 (index!32409 lt!331112)))))))

(assert (=> b!745279 e!416279))

(declare-fun res!502295 () Bool)

(assert (=> b!745279 (=> (not res!502295) (not e!416279))))

(assert (=> b!745279 (= res!502295 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!25500 0))(
  ( (Unit!25501) )
))
(declare-fun lt!331115 () Unit!25500)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41586 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25500)

(assert (=> b!745279 (= lt!331115 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!745280 () Bool)

(assert (=> b!745280 (= e!416272 e!416277)))

(declare-fun res!502298 () Bool)

(assert (=> b!745280 (=> (not res!502298) (not e!416277))))

(assert (=> b!745280 (= res!502298 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19903 a!3186) j!159) mask!3328) (select (arr!19903 a!3186) j!159) a!3186 mask!3328) lt!331110))))

(assert (=> b!745280 (= lt!331110 (Intermediate!7510 false resIntermediateIndex!5 resIntermediateX!5))))

(assert (= (and start!65460 res!502297) b!745269))

(assert (= (and b!745269 res!502284) b!745278))

(assert (= (and b!745278 res!502285) b!745273))

(assert (= (and b!745273 res!502289) b!745270))

(assert (= (and b!745270 res!502288) b!745272))

(assert (= (and b!745272 res!502296) b!745271))

(assert (= (and b!745271 res!502287) b!745264))

(assert (= (and b!745264 res!502291) b!745275))

(assert (= (and b!745275 res!502294) b!745280))

(assert (= (and b!745280 res!502298) b!745263))

(assert (= (and b!745263 res!502292) b!745268))

(assert (= (and b!745268 c!81870) b!745274))

(assert (= (and b!745268 (not c!81870)) b!745276))

(assert (= (and b!745268 res!502299) b!745266))

(assert (= (and b!745266 res!502293) b!745279))

(assert (= (and b!745279 res!502295) b!745277))

(assert (= (and b!745277 res!502286) b!745265))

(assert (= (and b!745279 (not res!502290)) b!745267))

(declare-fun m!695747 () Bool)

(assert (=> b!745271 m!695747))

(declare-fun m!695749 () Bool)

(assert (=> b!745280 m!695749))

(assert (=> b!745280 m!695749))

(declare-fun m!695751 () Bool)

(assert (=> b!745280 m!695751))

(assert (=> b!745280 m!695751))

(assert (=> b!745280 m!695749))

(declare-fun m!695753 () Bool)

(assert (=> b!745280 m!695753))

(assert (=> b!745274 m!695749))

(assert (=> b!745274 m!695749))

(declare-fun m!695755 () Bool)

(assert (=> b!745274 m!695755))

(declare-fun m!695757 () Bool)

(assert (=> b!745279 m!695757))

(declare-fun m!695759 () Bool)

(assert (=> b!745279 m!695759))

(assert (=> b!745276 m!695749))

(assert (=> b!745276 m!695749))

(declare-fun m!695761 () Bool)

(assert (=> b!745276 m!695761))

(declare-fun m!695763 () Bool)

(assert (=> b!745272 m!695763))

(declare-fun m!695765 () Bool)

(assert (=> start!65460 m!695765))

(declare-fun m!695767 () Bool)

(assert (=> start!65460 m!695767))

(declare-fun m!695769 () Bool)

(assert (=> b!745266 m!695769))

(declare-fun m!695771 () Bool)

(assert (=> b!745266 m!695771))

(declare-fun m!695773 () Bool)

(assert (=> b!745266 m!695773))

(assert (=> b!745266 m!695771))

(declare-fun m!695775 () Bool)

(assert (=> b!745266 m!695775))

(declare-fun m!695777 () Bool)

(assert (=> b!745266 m!695777))

(declare-fun m!695779 () Bool)

(assert (=> b!745264 m!695779))

(declare-fun m!695781 () Bool)

(assert (=> b!745263 m!695781))

(declare-fun m!695783 () Bool)

(assert (=> b!745270 m!695783))

(assert (=> b!745277 m!695749))

(assert (=> b!745277 m!695749))

(declare-fun m!695785 () Bool)

(assert (=> b!745277 m!695785))

(assert (=> b!745278 m!695749))

(assert (=> b!745278 m!695749))

(declare-fun m!695787 () Bool)

(assert (=> b!745278 m!695787))

(assert (=> b!745267 m!695749))

(assert (=> b!745267 m!695749))

(assert (=> b!745267 m!695761))

(assert (=> b!745265 m!695749))

(assert (=> b!745265 m!695749))

(declare-fun m!695789 () Bool)

(assert (=> b!745265 m!695789))

(declare-fun m!695791 () Bool)

(assert (=> b!745273 m!695791))

(check-sat (not b!745279) (not b!745272) (not b!745267) (not b!745274) (not b!745271) (not b!745273) (not b!745278) (not b!745266) (not b!745270) (not start!65460) (not b!745280) (not b!745264) (not b!745265) (not b!745277) (not b!745276))
(check-sat)

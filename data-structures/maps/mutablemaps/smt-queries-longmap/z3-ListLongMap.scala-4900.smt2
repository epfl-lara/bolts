; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!67596 () Bool)

(assert start!67596)

(declare-fun b!782410 () Bool)

(declare-fun res!529563 () Bool)

(declare-fun e!435074 () Bool)

(assert (=> b!782410 (=> (not res!529563) (not e!435074))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!42654 0))(
  ( (array!42655 (arr!20413 (Array (_ BitVec 32) (_ BitVec 64))) (size!20834 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42654)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(assert (=> b!782410 (= res!529563 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20834 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20834 a!3186))))))

(declare-fun b!782411 () Bool)

(declare-fun res!529565 () Bool)

(declare-fun e!435067 () Bool)

(assert (=> b!782411 (=> (not res!529565) (not e!435067))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(assert (=> b!782411 (= res!529565 (and (= (size!20834 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20834 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20834 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!782412 () Bool)

(declare-fun res!529557 () Bool)

(declare-fun e!435072 () Bool)

(assert (=> b!782412 (=> (not res!529557) (not e!435072))))

(assert (=> b!782412 (= res!529557 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20413 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!782413 () Bool)

(declare-fun res!529556 () Bool)

(declare-fun e!435071 () Bool)

(assert (=> b!782413 (=> res!529556 e!435071)))

(declare-datatypes ((SeekEntryResult!8020 0))(
  ( (MissingZero!8020 (index!34447 (_ BitVec 32))) (Found!8020 (index!34448 (_ BitVec 32))) (Intermediate!8020 (undefined!8832 Bool) (index!34449 (_ BitVec 32)) (x!65424 (_ BitVec 32))) (Undefined!8020) (MissingVacant!8020 (index!34450 (_ BitVec 32))) )
))
(declare-fun lt!348728 () SeekEntryResult!8020)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42654 (_ BitVec 32)) SeekEntryResult!8020)

(assert (=> b!782413 (= res!529556 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20413 a!3186) j!159) a!3186 mask!3328) lt!348728)))))

(declare-fun b!782414 () Bool)

(declare-fun e!435070 () Bool)

(assert (=> b!782414 (= e!435070 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20413 a!3186) j!159) a!3186 mask!3328) (Found!8020 j!159)))))

(declare-fun b!782415 () Bool)

(declare-fun res!529561 () Bool)

(assert (=> b!782415 (=> (not res!529561) (not e!435074))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42654 (_ BitVec 32)) Bool)

(assert (=> b!782415 (= res!529561 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!782416 () Bool)

(declare-fun res!529560 () Bool)

(assert (=> b!782416 (=> (not res!529560) (not e!435072))))

(assert (=> b!782416 (= res!529560 e!435070)))

(declare-fun c!86835 () Bool)

(assert (=> b!782416 (= c!86835 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!782417 () Bool)

(declare-fun e!435068 () Bool)

(assert (=> b!782417 (= e!435068 (not e!435071))))

(declare-fun res!529559 () Bool)

(assert (=> b!782417 (=> res!529559 e!435071)))

(declare-fun lt!348725 () SeekEntryResult!8020)

(get-info :version)

(assert (=> b!782417 (= res!529559 (or (not ((_ is Intermediate!8020) lt!348725)) (bvslt x!1131 (x!65424 lt!348725)) (not (= x!1131 (x!65424 lt!348725))) (not (= index!1321 (index!34449 lt!348725)))))))

(declare-fun e!435069 () Bool)

(assert (=> b!782417 e!435069))

(declare-fun res!529554 () Bool)

(assert (=> b!782417 (=> (not res!529554) (not e!435069))))

(declare-fun lt!348730 () SeekEntryResult!8020)

(assert (=> b!782417 (= res!529554 (= lt!348730 lt!348728))))

(assert (=> b!782417 (= lt!348728 (Found!8020 j!159))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42654 (_ BitVec 32)) SeekEntryResult!8020)

(assert (=> b!782417 (= lt!348730 (seekEntryOrOpen!0 (select (arr!20413 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!782417 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-datatypes ((Unit!26990 0))(
  ( (Unit!26991) )
))
(declare-fun lt!348724 () Unit!26990)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42654 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26990)

(assert (=> b!782417 (= lt!348724 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!782418 () Bool)

(assert (=> b!782418 (= e!435074 e!435072)))

(declare-fun res!529568 () Bool)

(assert (=> b!782418 (=> (not res!529568) (not e!435072))))

(declare-fun lt!348720 () SeekEntryResult!8020)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42654 (_ BitVec 32)) SeekEntryResult!8020)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!782418 (= res!529568 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20413 a!3186) j!159) mask!3328) (select (arr!20413 a!3186) j!159) a!3186 mask!3328) lt!348720))))

(assert (=> b!782418 (= lt!348720 (Intermediate!8020 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!782419 () Bool)

(declare-fun e!435075 () Bool)

(declare-fun lt!348723 () array!42654)

(declare-fun lt!348721 () (_ BitVec 64))

(assert (=> b!782419 (= e!435075 (= (seekEntryOrOpen!0 lt!348721 lt!348723 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!348721 lt!348723 mask!3328)))))

(declare-fun lt!348729 () (_ BitVec 64))

(assert (=> b!782419 (= lt!348729 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!348726 () Unit!26990)

(declare-fun e!435073 () Unit!26990)

(assert (=> b!782419 (= lt!348726 e!435073)))

(declare-fun c!86834 () Bool)

(assert (=> b!782419 (= c!86834 (= lt!348729 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!782421 () Bool)

(declare-fun Unit!26992 () Unit!26990)

(assert (=> b!782421 (= e!435073 Unit!26992)))

(declare-fun b!782422 () Bool)

(declare-fun res!529562 () Bool)

(assert (=> b!782422 (=> (not res!529562) (not e!435067))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!782422 (= res!529562 (validKeyInArray!0 k0!2102))))

(declare-fun b!782423 () Bool)

(assert (=> b!782423 (= e!435069 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20413 a!3186) j!159) a!3186 mask!3328) lt!348728))))

(declare-fun b!782424 () Bool)

(assert (=> b!782424 (= e!435067 e!435074)))

(declare-fun res!529567 () Bool)

(assert (=> b!782424 (=> (not res!529567) (not e!435074))))

(declare-fun lt!348722 () SeekEntryResult!8020)

(assert (=> b!782424 (= res!529567 (or (= lt!348722 (MissingZero!8020 i!1173)) (= lt!348722 (MissingVacant!8020 i!1173))))))

(assert (=> b!782424 (= lt!348722 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!782425 () Bool)

(declare-fun res!529558 () Bool)

(assert (=> b!782425 (=> (not res!529558) (not e!435067))))

(assert (=> b!782425 (= res!529558 (validKeyInArray!0 (select (arr!20413 a!3186) j!159)))))

(declare-fun b!782426 () Bool)

(assert (=> b!782426 (= e!435070 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20413 a!3186) j!159) a!3186 mask!3328) lt!348720))))

(declare-fun b!782427 () Bool)

(declare-fun Unit!26993 () Unit!26990)

(assert (=> b!782427 (= e!435073 Unit!26993)))

(assert (=> b!782427 false))

(declare-fun b!782428 () Bool)

(declare-fun res!529570 () Bool)

(assert (=> b!782428 (=> (not res!529570) (not e!435067))))

(declare-fun arrayContainsKey!0 (array!42654 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!782428 (= res!529570 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!782429 () Bool)

(declare-fun res!529569 () Bool)

(assert (=> b!782429 (=> (not res!529569) (not e!435074))))

(declare-datatypes ((List!14468 0))(
  ( (Nil!14465) (Cons!14464 (h!15584 (_ BitVec 64)) (t!20791 List!14468)) )
))
(declare-fun arrayNoDuplicates!0 (array!42654 (_ BitVec 32) List!14468) Bool)

(assert (=> b!782429 (= res!529569 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14465))))

(declare-fun b!782430 () Bool)

(assert (=> b!782430 (= e!435072 e!435068)))

(declare-fun res!529564 () Bool)

(assert (=> b!782430 (=> (not res!529564) (not e!435068))))

(declare-fun lt!348727 () SeekEntryResult!8020)

(assert (=> b!782430 (= res!529564 (= lt!348727 lt!348725))))

(assert (=> b!782430 (= lt!348725 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!348721 lt!348723 mask!3328))))

(assert (=> b!782430 (= lt!348727 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!348721 mask!3328) lt!348721 lt!348723 mask!3328))))

(assert (=> b!782430 (= lt!348721 (select (store (arr!20413 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!782430 (= lt!348723 (array!42655 (store (arr!20413 a!3186) i!1173 k0!2102) (size!20834 a!3186)))))

(declare-fun b!782420 () Bool)

(assert (=> b!782420 (= e!435071 e!435075)))

(declare-fun res!529566 () Bool)

(assert (=> b!782420 (=> res!529566 e!435075)))

(assert (=> b!782420 (= res!529566 (= lt!348729 lt!348721))))

(assert (=> b!782420 (= lt!348729 (select (store (arr!20413 a!3186) i!1173 k0!2102) index!1321))))

(declare-fun res!529555 () Bool)

(assert (=> start!67596 (=> (not res!529555) (not e!435067))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67596 (= res!529555 (validMask!0 mask!3328))))

(assert (=> start!67596 e!435067))

(assert (=> start!67596 true))

(declare-fun array_inv!16187 (array!42654) Bool)

(assert (=> start!67596 (array_inv!16187 a!3186)))

(assert (= (and start!67596 res!529555) b!782411))

(assert (= (and b!782411 res!529565) b!782425))

(assert (= (and b!782425 res!529558) b!782422))

(assert (= (and b!782422 res!529562) b!782428))

(assert (= (and b!782428 res!529570) b!782424))

(assert (= (and b!782424 res!529567) b!782415))

(assert (= (and b!782415 res!529561) b!782429))

(assert (= (and b!782429 res!529569) b!782410))

(assert (= (and b!782410 res!529563) b!782418))

(assert (= (and b!782418 res!529568) b!782412))

(assert (= (and b!782412 res!529557) b!782416))

(assert (= (and b!782416 c!86835) b!782426))

(assert (= (and b!782416 (not c!86835)) b!782414))

(assert (= (and b!782416 res!529560) b!782430))

(assert (= (and b!782430 res!529564) b!782417))

(assert (= (and b!782417 res!529554) b!782423))

(assert (= (and b!782417 (not res!529559)) b!782413))

(assert (= (and b!782413 (not res!529556)) b!782420))

(assert (= (and b!782420 (not res!529566)) b!782419))

(assert (= (and b!782419 c!86834) b!782427))

(assert (= (and b!782419 (not c!86834)) b!782421))

(declare-fun m!725255 () Bool)

(assert (=> b!782424 m!725255))

(declare-fun m!725257 () Bool)

(assert (=> b!782425 m!725257))

(assert (=> b!782425 m!725257))

(declare-fun m!725259 () Bool)

(assert (=> b!782425 m!725259))

(declare-fun m!725261 () Bool)

(assert (=> b!782415 m!725261))

(declare-fun m!725263 () Bool)

(assert (=> b!782412 m!725263))

(assert (=> b!782423 m!725257))

(assert (=> b!782423 m!725257))

(declare-fun m!725265 () Bool)

(assert (=> b!782423 m!725265))

(declare-fun m!725267 () Bool)

(assert (=> b!782420 m!725267))

(declare-fun m!725269 () Bool)

(assert (=> b!782420 m!725269))

(assert (=> b!782417 m!725257))

(assert (=> b!782417 m!725257))

(declare-fun m!725271 () Bool)

(assert (=> b!782417 m!725271))

(declare-fun m!725273 () Bool)

(assert (=> b!782417 m!725273))

(declare-fun m!725275 () Bool)

(assert (=> b!782417 m!725275))

(assert (=> b!782418 m!725257))

(assert (=> b!782418 m!725257))

(declare-fun m!725277 () Bool)

(assert (=> b!782418 m!725277))

(assert (=> b!782418 m!725277))

(assert (=> b!782418 m!725257))

(declare-fun m!725279 () Bool)

(assert (=> b!782418 m!725279))

(declare-fun m!725281 () Bool)

(assert (=> b!782429 m!725281))

(assert (=> b!782413 m!725257))

(assert (=> b!782413 m!725257))

(declare-fun m!725283 () Bool)

(assert (=> b!782413 m!725283))

(declare-fun m!725285 () Bool)

(assert (=> b!782428 m!725285))

(declare-fun m!725287 () Bool)

(assert (=> b!782430 m!725287))

(assert (=> b!782430 m!725287))

(declare-fun m!725289 () Bool)

(assert (=> b!782430 m!725289))

(declare-fun m!725291 () Bool)

(assert (=> b!782430 m!725291))

(assert (=> b!782430 m!725267))

(declare-fun m!725293 () Bool)

(assert (=> b!782430 m!725293))

(assert (=> b!782414 m!725257))

(assert (=> b!782414 m!725257))

(assert (=> b!782414 m!725283))

(declare-fun m!725295 () Bool)

(assert (=> b!782419 m!725295))

(declare-fun m!725297 () Bool)

(assert (=> b!782419 m!725297))

(assert (=> b!782426 m!725257))

(assert (=> b!782426 m!725257))

(declare-fun m!725299 () Bool)

(assert (=> b!782426 m!725299))

(declare-fun m!725301 () Bool)

(assert (=> b!782422 m!725301))

(declare-fun m!725303 () Bool)

(assert (=> start!67596 m!725303))

(declare-fun m!725305 () Bool)

(assert (=> start!67596 m!725305))

(check-sat (not b!782419) (not b!782428) (not b!782424) (not b!782417) (not b!782413) (not b!782429) (not b!782415) (not b!782430) (not b!782414) (not b!782426) (not b!782418) (not b!782423) (not start!67596) (not b!782425) (not b!782422))
(check-sat)
(get-model)

(declare-fun d!102563 () Bool)

(assert (=> d!102563 (= (validKeyInArray!0 k0!2102) (and (not (= k0!2102 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2102 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!782422 d!102563))

(declare-fun b!782506 () Bool)

(declare-fun e!435113 () SeekEntryResult!8020)

(declare-fun e!435115 () SeekEntryResult!8020)

(assert (=> b!782506 (= e!435113 e!435115)))

(declare-fun c!86849 () Bool)

(declare-fun lt!348768 () (_ BitVec 64))

(assert (=> b!782506 (= c!86849 (= lt!348768 (select (arr!20413 a!3186) j!159)))))

(declare-fun b!782507 () Bool)

(declare-fun e!435114 () SeekEntryResult!8020)

(assert (=> b!782507 (= e!435114 (MissingVacant!8020 resIntermediateIndex!5))))

(declare-fun b!782508 () Bool)

(assert (=> b!782508 (= e!435113 Undefined!8020)))

(declare-fun b!782509 () Bool)

(declare-fun c!86848 () Bool)

(assert (=> b!782509 (= c!86848 (= lt!348768 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!782509 (= e!435115 e!435114)))

(declare-fun b!782510 () Bool)

(assert (=> b!782510 (= e!435115 (Found!8020 index!1321))))

(declare-fun b!782511 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!782511 (= e!435114 (seekKeyOrZeroReturnVacant!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) resIntermediateIndex!5 (select (arr!20413 a!3186) j!159) a!3186 mask!3328))))

(declare-fun lt!348769 () SeekEntryResult!8020)

(declare-fun d!102565 () Bool)

(assert (=> d!102565 (and (or ((_ is Undefined!8020) lt!348769) (not ((_ is Found!8020) lt!348769)) (and (bvsge (index!34448 lt!348769) #b00000000000000000000000000000000) (bvslt (index!34448 lt!348769) (size!20834 a!3186)))) (or ((_ is Undefined!8020) lt!348769) ((_ is Found!8020) lt!348769) (not ((_ is MissingVacant!8020) lt!348769)) (not (= (index!34450 lt!348769) resIntermediateIndex!5)) (and (bvsge (index!34450 lt!348769) #b00000000000000000000000000000000) (bvslt (index!34450 lt!348769) (size!20834 a!3186)))) (or ((_ is Undefined!8020) lt!348769) (ite ((_ is Found!8020) lt!348769) (= (select (arr!20413 a!3186) (index!34448 lt!348769)) (select (arr!20413 a!3186) j!159)) (and ((_ is MissingVacant!8020) lt!348769) (= (index!34450 lt!348769) resIntermediateIndex!5) (= (select (arr!20413 a!3186) (index!34450 lt!348769)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!102565 (= lt!348769 e!435113)))

(declare-fun c!86850 () Bool)

(assert (=> d!102565 (= c!86850 (bvsge x!1131 #b01111111111111111111111111111110))))

(assert (=> d!102565 (= lt!348768 (select (arr!20413 a!3186) index!1321))))

(assert (=> d!102565 (validMask!0 mask!3328)))

(assert (=> d!102565 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20413 a!3186) j!159) a!3186 mask!3328) lt!348769)))

(assert (= (and d!102565 c!86850) b!782508))

(assert (= (and d!102565 (not c!86850)) b!782506))

(assert (= (and b!782506 c!86849) b!782510))

(assert (= (and b!782506 (not c!86849)) b!782509))

(assert (= (and b!782509 c!86848) b!782507))

(assert (= (and b!782509 (not c!86848)) b!782511))

(declare-fun m!725359 () Bool)

(assert (=> b!782511 m!725359))

(assert (=> b!782511 m!725359))

(assert (=> b!782511 m!725257))

(declare-fun m!725361 () Bool)

(assert (=> b!782511 m!725361))

(declare-fun m!725363 () Bool)

(assert (=> d!102565 m!725363))

(declare-fun m!725365 () Bool)

(assert (=> d!102565 m!725365))

(declare-fun m!725367 () Bool)

(assert (=> d!102565 m!725367))

(assert (=> d!102565 m!725303))

(assert (=> b!782413 d!102565))

(declare-fun b!782512 () Bool)

(declare-fun e!435116 () SeekEntryResult!8020)

(declare-fun e!435118 () SeekEntryResult!8020)

(assert (=> b!782512 (= e!435116 e!435118)))

(declare-fun c!86852 () Bool)

(declare-fun lt!348770 () (_ BitVec 64))

(assert (=> b!782512 (= c!86852 (= lt!348770 (select (arr!20413 a!3186) j!159)))))

(declare-fun b!782513 () Bool)

(declare-fun e!435117 () SeekEntryResult!8020)

(assert (=> b!782513 (= e!435117 (MissingVacant!8020 resIntermediateIndex!5))))

(declare-fun b!782514 () Bool)

(assert (=> b!782514 (= e!435116 Undefined!8020)))

(declare-fun b!782515 () Bool)

(declare-fun c!86851 () Bool)

(assert (=> b!782515 (= c!86851 (= lt!348770 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!782515 (= e!435118 e!435117)))

(declare-fun b!782516 () Bool)

(assert (=> b!782516 (= e!435118 (Found!8020 resIntermediateIndex!5))))

(declare-fun b!782517 () Bool)

(assert (=> b!782517 (= e!435117 (seekKeyOrZeroReturnVacant!0 (bvadd resIntermediateX!5 #b00000000000000000000000000000001) (nextIndex!0 resIntermediateIndex!5 resIntermediateX!5 mask!3328) resIntermediateIndex!5 (select (arr!20413 a!3186) j!159) a!3186 mask!3328))))

(declare-fun lt!348771 () SeekEntryResult!8020)

(declare-fun d!102567 () Bool)

(assert (=> d!102567 (and (or ((_ is Undefined!8020) lt!348771) (not ((_ is Found!8020) lt!348771)) (and (bvsge (index!34448 lt!348771) #b00000000000000000000000000000000) (bvslt (index!34448 lt!348771) (size!20834 a!3186)))) (or ((_ is Undefined!8020) lt!348771) ((_ is Found!8020) lt!348771) (not ((_ is MissingVacant!8020) lt!348771)) (not (= (index!34450 lt!348771) resIntermediateIndex!5)) (and (bvsge (index!34450 lt!348771) #b00000000000000000000000000000000) (bvslt (index!34450 lt!348771) (size!20834 a!3186)))) (or ((_ is Undefined!8020) lt!348771) (ite ((_ is Found!8020) lt!348771) (= (select (arr!20413 a!3186) (index!34448 lt!348771)) (select (arr!20413 a!3186) j!159)) (and ((_ is MissingVacant!8020) lt!348771) (= (index!34450 lt!348771) resIntermediateIndex!5) (= (select (arr!20413 a!3186) (index!34450 lt!348771)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!102567 (= lt!348771 e!435116)))

(declare-fun c!86853 () Bool)

(assert (=> d!102567 (= c!86853 (bvsge resIntermediateX!5 #b01111111111111111111111111111110))))

(assert (=> d!102567 (= lt!348770 (select (arr!20413 a!3186) resIntermediateIndex!5))))

(assert (=> d!102567 (validMask!0 mask!3328)))

(assert (=> d!102567 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20413 a!3186) j!159) a!3186 mask!3328) lt!348771)))

(assert (= (and d!102567 c!86853) b!782514))

(assert (= (and d!102567 (not c!86853)) b!782512))

(assert (= (and b!782512 c!86852) b!782516))

(assert (= (and b!782512 (not c!86852)) b!782515))

(assert (= (and b!782515 c!86851) b!782513))

(assert (= (and b!782515 (not c!86851)) b!782517))

(declare-fun m!725369 () Bool)

(assert (=> b!782517 m!725369))

(assert (=> b!782517 m!725369))

(assert (=> b!782517 m!725257))

(declare-fun m!725371 () Bool)

(assert (=> b!782517 m!725371))

(declare-fun m!725373 () Bool)

(assert (=> d!102567 m!725373))

(declare-fun m!725375 () Bool)

(assert (=> d!102567 m!725375))

(assert (=> d!102567 m!725263))

(assert (=> d!102567 m!725303))

(assert (=> b!782423 d!102567))

(assert (=> b!782414 d!102565))

(declare-fun d!102569 () Bool)

(assert (=> d!102569 (= (validKeyInArray!0 (select (arr!20413 a!3186) j!159)) (and (not (= (select (arr!20413 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!20413 a!3186) j!159) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!782425 d!102569))

(declare-fun d!102571 () Bool)

(declare-fun lt!348780 () SeekEntryResult!8020)

(assert (=> d!102571 (and (or ((_ is Undefined!8020) lt!348780) (not ((_ is Found!8020) lt!348780)) (and (bvsge (index!34448 lt!348780) #b00000000000000000000000000000000) (bvslt (index!34448 lt!348780) (size!20834 a!3186)))) (or ((_ is Undefined!8020) lt!348780) ((_ is Found!8020) lt!348780) (not ((_ is MissingZero!8020) lt!348780)) (and (bvsge (index!34447 lt!348780) #b00000000000000000000000000000000) (bvslt (index!34447 lt!348780) (size!20834 a!3186)))) (or ((_ is Undefined!8020) lt!348780) ((_ is Found!8020) lt!348780) ((_ is MissingZero!8020) lt!348780) (not ((_ is MissingVacant!8020) lt!348780)) (and (bvsge (index!34450 lt!348780) #b00000000000000000000000000000000) (bvslt (index!34450 lt!348780) (size!20834 a!3186)))) (or ((_ is Undefined!8020) lt!348780) (ite ((_ is Found!8020) lt!348780) (= (select (arr!20413 a!3186) (index!34448 lt!348780)) k0!2102) (ite ((_ is MissingZero!8020) lt!348780) (= (select (arr!20413 a!3186) (index!34447 lt!348780)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!8020) lt!348780) (= (select (arr!20413 a!3186) (index!34450 lt!348780)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!435126 () SeekEntryResult!8020)

(assert (=> d!102571 (= lt!348780 e!435126)))

(declare-fun c!86861 () Bool)

(declare-fun lt!348778 () SeekEntryResult!8020)

(assert (=> d!102571 (= c!86861 (and ((_ is Intermediate!8020) lt!348778) (undefined!8832 lt!348778)))))

(assert (=> d!102571 (= lt!348778 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2102 mask!3328) k0!2102 a!3186 mask!3328))))

(assert (=> d!102571 (validMask!0 mask!3328)))

(assert (=> d!102571 (= (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328) lt!348780)))

(declare-fun b!782530 () Bool)

(assert (=> b!782530 (= e!435126 Undefined!8020)))

(declare-fun b!782531 () Bool)

(declare-fun e!435125 () SeekEntryResult!8020)

(assert (=> b!782531 (= e!435125 (MissingZero!8020 (index!34449 lt!348778)))))

(declare-fun b!782532 () Bool)

(declare-fun c!86862 () Bool)

(declare-fun lt!348779 () (_ BitVec 64))

(assert (=> b!782532 (= c!86862 (= lt!348779 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!435127 () SeekEntryResult!8020)

(assert (=> b!782532 (= e!435127 e!435125)))

(declare-fun b!782533 () Bool)

(assert (=> b!782533 (= e!435127 (Found!8020 (index!34449 lt!348778)))))

(declare-fun b!782534 () Bool)

(assert (=> b!782534 (= e!435126 e!435127)))

(assert (=> b!782534 (= lt!348779 (select (arr!20413 a!3186) (index!34449 lt!348778)))))

(declare-fun c!86860 () Bool)

(assert (=> b!782534 (= c!86860 (= lt!348779 k0!2102))))

(declare-fun b!782535 () Bool)

(assert (=> b!782535 (= e!435125 (seekKeyOrZeroReturnVacant!0 (x!65424 lt!348778) (index!34449 lt!348778) (index!34449 lt!348778) k0!2102 a!3186 mask!3328))))

(assert (= (and d!102571 c!86861) b!782530))

(assert (= (and d!102571 (not c!86861)) b!782534))

(assert (= (and b!782534 c!86860) b!782533))

(assert (= (and b!782534 (not c!86860)) b!782532))

(assert (= (and b!782532 c!86862) b!782531))

(assert (= (and b!782532 (not c!86862)) b!782535))

(declare-fun m!725377 () Bool)

(assert (=> d!102571 m!725377))

(declare-fun m!725379 () Bool)

(assert (=> d!102571 m!725379))

(assert (=> d!102571 m!725379))

(declare-fun m!725381 () Bool)

(assert (=> d!102571 m!725381))

(declare-fun m!725383 () Bool)

(assert (=> d!102571 m!725383))

(assert (=> d!102571 m!725303))

(declare-fun m!725385 () Bool)

(assert (=> d!102571 m!725385))

(declare-fun m!725387 () Bool)

(assert (=> b!782534 m!725387))

(declare-fun m!725389 () Bool)

(assert (=> b!782535 m!725389))

(assert (=> b!782424 d!102571))

(declare-fun e!435156 () SeekEntryResult!8020)

(declare-fun b!782583 () Bool)

(assert (=> b!782583 (= e!435156 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) (select (arr!20413 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!782584 () Bool)

(assert (=> b!782584 (= e!435156 (Intermediate!8020 false index!1321 x!1131))))

(declare-fun b!782585 () Bool)

(declare-fun e!435155 () Bool)

(declare-fun e!435153 () Bool)

(assert (=> b!782585 (= e!435155 e!435153)))

(declare-fun res!529639 () Bool)

(declare-fun lt!348796 () SeekEntryResult!8020)

(assert (=> b!782585 (= res!529639 (and ((_ is Intermediate!8020) lt!348796) (not (undefined!8832 lt!348796)) (bvslt (x!65424 lt!348796) #b01111111111111111111111111111110) (bvsge (x!65424 lt!348796) #b00000000000000000000000000000000) (bvsge (x!65424 lt!348796) x!1131)))))

(assert (=> b!782585 (=> (not res!529639) (not e!435153))))

(declare-fun d!102575 () Bool)

(assert (=> d!102575 e!435155))

(declare-fun c!86878 () Bool)

(assert (=> d!102575 (= c!86878 (and ((_ is Intermediate!8020) lt!348796) (undefined!8832 lt!348796)))))

(declare-fun e!435154 () SeekEntryResult!8020)

(assert (=> d!102575 (= lt!348796 e!435154)))

(declare-fun c!86879 () Bool)

(assert (=> d!102575 (= c!86879 (bvsge x!1131 #b01111111111111111111111111111110))))

(declare-fun lt!348795 () (_ BitVec 64))

(assert (=> d!102575 (= lt!348795 (select (arr!20413 a!3186) index!1321))))

(assert (=> d!102575 (validMask!0 mask!3328)))

(assert (=> d!102575 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20413 a!3186) j!159) a!3186 mask!3328) lt!348796)))

(declare-fun b!782586 () Bool)

(assert (=> b!782586 (and (bvsge (index!34449 lt!348796) #b00000000000000000000000000000000) (bvslt (index!34449 lt!348796) (size!20834 a!3186)))))

(declare-fun res!529637 () Bool)

(assert (=> b!782586 (= res!529637 (= (select (arr!20413 a!3186) (index!34449 lt!348796)) (select (arr!20413 a!3186) j!159)))))

(declare-fun e!435157 () Bool)

(assert (=> b!782586 (=> res!529637 e!435157)))

(assert (=> b!782586 (= e!435153 e!435157)))

(declare-fun b!782587 () Bool)

(assert (=> b!782587 (and (bvsge (index!34449 lt!348796) #b00000000000000000000000000000000) (bvslt (index!34449 lt!348796) (size!20834 a!3186)))))

(declare-fun res!529638 () Bool)

(assert (=> b!782587 (= res!529638 (= (select (arr!20413 a!3186) (index!34449 lt!348796)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!782587 (=> res!529638 e!435157)))

(declare-fun b!782588 () Bool)

(assert (=> b!782588 (and (bvsge (index!34449 lt!348796) #b00000000000000000000000000000000) (bvslt (index!34449 lt!348796) (size!20834 a!3186)))))

(assert (=> b!782588 (= e!435157 (= (select (arr!20413 a!3186) (index!34449 lt!348796)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!782589 () Bool)

(assert (=> b!782589 (= e!435155 (bvsge (x!65424 lt!348796) #b01111111111111111111111111111110))))

(declare-fun b!782590 () Bool)

(assert (=> b!782590 (= e!435154 (Intermediate!8020 true index!1321 x!1131))))

(declare-fun b!782591 () Bool)

(assert (=> b!782591 (= e!435154 e!435156)))

(declare-fun c!86880 () Bool)

(assert (=> b!782591 (= c!86880 (or (= lt!348795 (select (arr!20413 a!3186) j!159)) (= (bvadd lt!348795 lt!348795) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!102575 c!86879) b!782590))

(assert (= (and d!102575 (not c!86879)) b!782591))

(assert (= (and b!782591 c!86880) b!782584))

(assert (= (and b!782591 (not c!86880)) b!782583))

(assert (= (and d!102575 c!86878) b!782589))

(assert (= (and d!102575 (not c!86878)) b!782585))

(assert (= (and b!782585 res!529639) b!782586))

(assert (= (and b!782586 (not res!529637)) b!782587))

(assert (= (and b!782587 (not res!529638)) b!782588))

(declare-fun m!725399 () Bool)

(assert (=> b!782586 m!725399))

(assert (=> d!102575 m!725367))

(assert (=> d!102575 m!725303))

(assert (=> b!782587 m!725399))

(assert (=> b!782583 m!725359))

(assert (=> b!782583 m!725359))

(assert (=> b!782583 m!725257))

(declare-fun m!725401 () Bool)

(assert (=> b!782583 m!725401))

(assert (=> b!782588 m!725399))

(assert (=> b!782426 d!102575))

(declare-fun b!782625 () Bool)

(declare-fun e!435180 () Bool)

(declare-fun e!435181 () Bool)

(assert (=> b!782625 (= e!435180 e!435181)))

(declare-fun c!86892 () Bool)

(assert (=> b!782625 (= c!86892 (validKeyInArray!0 (select (arr!20413 a!3186) #b00000000000000000000000000000000)))))

(declare-fun b!782626 () Bool)

(declare-fun e!435179 () Bool)

(declare-fun call!35259 () Bool)

(assert (=> b!782626 (= e!435179 call!35259)))

(declare-fun b!782627 () Bool)

(assert (=> b!782627 (= e!435181 call!35259)))

(declare-fun d!102581 () Bool)

(declare-fun res!529655 () Bool)

(assert (=> d!102581 (=> res!529655 e!435180)))

(assert (=> d!102581 (= res!529655 (bvsge #b00000000000000000000000000000000 (size!20834 a!3186)))))

(assert (=> d!102581 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328) e!435180)))

(declare-fun b!782628 () Bool)

(assert (=> b!782628 (= e!435181 e!435179)))

(declare-fun lt!348813 () (_ BitVec 64))

(assert (=> b!782628 (= lt!348813 (select (arr!20413 a!3186) #b00000000000000000000000000000000))))

(declare-fun lt!348812 () Unit!26990)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!42654 (_ BitVec 64) (_ BitVec 32)) Unit!26990)

(assert (=> b!782628 (= lt!348812 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3186 lt!348813 #b00000000000000000000000000000000))))

(assert (=> b!782628 (arrayContainsKey!0 a!3186 lt!348813 #b00000000000000000000000000000000)))

(declare-fun lt!348811 () Unit!26990)

(assert (=> b!782628 (= lt!348811 lt!348812)))

(declare-fun res!529654 () Bool)

(assert (=> b!782628 (= res!529654 (= (seekEntryOrOpen!0 (select (arr!20413 a!3186) #b00000000000000000000000000000000) a!3186 mask!3328) (Found!8020 #b00000000000000000000000000000000)))))

(assert (=> b!782628 (=> (not res!529654) (not e!435179))))

(declare-fun bm!35256 () Bool)

(assert (=> bm!35256 (= call!35259 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3186 mask!3328))))

(assert (= (and d!102581 (not res!529655)) b!782625))

(assert (= (and b!782625 c!86892) b!782628))

(assert (= (and b!782625 (not c!86892)) b!782627))

(assert (= (and b!782628 res!529654) b!782626))

(assert (= (or b!782626 b!782627) bm!35256))

(declare-fun m!725411 () Bool)

(assert (=> b!782625 m!725411))

(assert (=> b!782625 m!725411))

(declare-fun m!725413 () Bool)

(assert (=> b!782625 m!725413))

(assert (=> b!782628 m!725411))

(declare-fun m!725415 () Bool)

(assert (=> b!782628 m!725415))

(declare-fun m!725417 () Bool)

(assert (=> b!782628 m!725417))

(assert (=> b!782628 m!725411))

(declare-fun m!725419 () Bool)

(assert (=> b!782628 m!725419))

(declare-fun m!725421 () Bool)

(assert (=> bm!35256 m!725421))

(assert (=> b!782415 d!102581))

(declare-fun d!102587 () Bool)

(declare-fun lt!348816 () SeekEntryResult!8020)

(assert (=> d!102587 (and (or ((_ is Undefined!8020) lt!348816) (not ((_ is Found!8020) lt!348816)) (and (bvsge (index!34448 lt!348816) #b00000000000000000000000000000000) (bvslt (index!34448 lt!348816) (size!20834 a!3186)))) (or ((_ is Undefined!8020) lt!348816) ((_ is Found!8020) lt!348816) (not ((_ is MissingZero!8020) lt!348816)) (and (bvsge (index!34447 lt!348816) #b00000000000000000000000000000000) (bvslt (index!34447 lt!348816) (size!20834 a!3186)))) (or ((_ is Undefined!8020) lt!348816) ((_ is Found!8020) lt!348816) ((_ is MissingZero!8020) lt!348816) (not ((_ is MissingVacant!8020) lt!348816)) (and (bvsge (index!34450 lt!348816) #b00000000000000000000000000000000) (bvslt (index!34450 lt!348816) (size!20834 a!3186)))) (or ((_ is Undefined!8020) lt!348816) (ite ((_ is Found!8020) lt!348816) (= (select (arr!20413 a!3186) (index!34448 lt!348816)) (select (arr!20413 a!3186) j!159)) (ite ((_ is MissingZero!8020) lt!348816) (= (select (arr!20413 a!3186) (index!34447 lt!348816)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!8020) lt!348816) (= (select (arr!20413 a!3186) (index!34450 lt!348816)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!435183 () SeekEntryResult!8020)

(assert (=> d!102587 (= lt!348816 e!435183)))

(declare-fun c!86894 () Bool)

(declare-fun lt!348814 () SeekEntryResult!8020)

(assert (=> d!102587 (= c!86894 (and ((_ is Intermediate!8020) lt!348814) (undefined!8832 lt!348814)))))

(assert (=> d!102587 (= lt!348814 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20413 a!3186) j!159) mask!3328) (select (arr!20413 a!3186) j!159) a!3186 mask!3328))))

(assert (=> d!102587 (validMask!0 mask!3328)))

(assert (=> d!102587 (= (seekEntryOrOpen!0 (select (arr!20413 a!3186) j!159) a!3186 mask!3328) lt!348816)))

(declare-fun b!782629 () Bool)

(assert (=> b!782629 (= e!435183 Undefined!8020)))

(declare-fun b!782630 () Bool)

(declare-fun e!435182 () SeekEntryResult!8020)

(assert (=> b!782630 (= e!435182 (MissingZero!8020 (index!34449 lt!348814)))))

(declare-fun b!782631 () Bool)

(declare-fun c!86895 () Bool)

(declare-fun lt!348815 () (_ BitVec 64))

(assert (=> b!782631 (= c!86895 (= lt!348815 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!435184 () SeekEntryResult!8020)

(assert (=> b!782631 (= e!435184 e!435182)))

(declare-fun b!782632 () Bool)

(assert (=> b!782632 (= e!435184 (Found!8020 (index!34449 lt!348814)))))

(declare-fun b!782633 () Bool)

(assert (=> b!782633 (= e!435183 e!435184)))

(assert (=> b!782633 (= lt!348815 (select (arr!20413 a!3186) (index!34449 lt!348814)))))

(declare-fun c!86893 () Bool)

(assert (=> b!782633 (= c!86893 (= lt!348815 (select (arr!20413 a!3186) j!159)))))

(declare-fun b!782634 () Bool)

(assert (=> b!782634 (= e!435182 (seekKeyOrZeroReturnVacant!0 (x!65424 lt!348814) (index!34449 lt!348814) (index!34449 lt!348814) (select (arr!20413 a!3186) j!159) a!3186 mask!3328))))

(assert (= (and d!102587 c!86894) b!782629))

(assert (= (and d!102587 (not c!86894)) b!782633))

(assert (= (and b!782633 c!86893) b!782632))

(assert (= (and b!782633 (not c!86893)) b!782631))

(assert (= (and b!782631 c!86895) b!782630))

(assert (= (and b!782631 (not c!86895)) b!782634))

(declare-fun m!725423 () Bool)

(assert (=> d!102587 m!725423))

(assert (=> d!102587 m!725257))

(assert (=> d!102587 m!725277))

(assert (=> d!102587 m!725277))

(assert (=> d!102587 m!725257))

(assert (=> d!102587 m!725279))

(declare-fun m!725425 () Bool)

(assert (=> d!102587 m!725425))

(assert (=> d!102587 m!725303))

(declare-fun m!725427 () Bool)

(assert (=> d!102587 m!725427))

(declare-fun m!725429 () Bool)

(assert (=> b!782633 m!725429))

(assert (=> b!782634 m!725257))

(declare-fun m!725431 () Bool)

(assert (=> b!782634 m!725431))

(assert (=> b!782417 d!102587))

(declare-fun b!782635 () Bool)

(declare-fun e!435186 () Bool)

(declare-fun e!435187 () Bool)

(assert (=> b!782635 (= e!435186 e!435187)))

(declare-fun c!86896 () Bool)

(assert (=> b!782635 (= c!86896 (validKeyInArray!0 (select (arr!20413 a!3186) j!159)))))

(declare-fun b!782636 () Bool)

(declare-fun e!435185 () Bool)

(declare-fun call!35260 () Bool)

(assert (=> b!782636 (= e!435185 call!35260)))

(declare-fun b!782637 () Bool)

(assert (=> b!782637 (= e!435187 call!35260)))

(declare-fun d!102589 () Bool)

(declare-fun res!529657 () Bool)

(assert (=> d!102589 (=> res!529657 e!435186)))

(assert (=> d!102589 (= res!529657 (bvsge j!159 (size!20834 a!3186)))))

(assert (=> d!102589 (= (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328) e!435186)))

(declare-fun b!782638 () Bool)

(assert (=> b!782638 (= e!435187 e!435185)))

(declare-fun lt!348819 () (_ BitVec 64))

(assert (=> b!782638 (= lt!348819 (select (arr!20413 a!3186) j!159))))

(declare-fun lt!348818 () Unit!26990)

(assert (=> b!782638 (= lt!348818 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3186 lt!348819 j!159))))

(assert (=> b!782638 (arrayContainsKey!0 a!3186 lt!348819 #b00000000000000000000000000000000)))

(declare-fun lt!348817 () Unit!26990)

(assert (=> b!782638 (= lt!348817 lt!348818)))

(declare-fun res!529656 () Bool)

(assert (=> b!782638 (= res!529656 (= (seekEntryOrOpen!0 (select (arr!20413 a!3186) j!159) a!3186 mask!3328) (Found!8020 j!159)))))

(assert (=> b!782638 (=> (not res!529656) (not e!435185))))

(declare-fun bm!35257 () Bool)

(assert (=> bm!35257 (= call!35260 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!159 #b00000000000000000000000000000001) a!3186 mask!3328))))

(assert (= (and d!102589 (not res!529657)) b!782635))

(assert (= (and b!782635 c!86896) b!782638))

(assert (= (and b!782635 (not c!86896)) b!782637))

(assert (= (and b!782638 res!529656) b!782636))

(assert (= (or b!782636 b!782637) bm!35257))

(assert (=> b!782635 m!725257))

(assert (=> b!782635 m!725257))

(assert (=> b!782635 m!725259))

(assert (=> b!782638 m!725257))

(declare-fun m!725433 () Bool)

(assert (=> b!782638 m!725433))

(declare-fun m!725435 () Bool)

(assert (=> b!782638 m!725435))

(assert (=> b!782638 m!725257))

(assert (=> b!782638 m!725271))

(declare-fun m!725437 () Bool)

(assert (=> bm!35257 m!725437))

(assert (=> b!782417 d!102589))

(declare-fun d!102591 () Bool)

(assert (=> d!102591 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!348822 () Unit!26990)

(declare-fun choose!38 (array!42654 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26990)

(assert (=> d!102591 (= lt!348822 (choose!38 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(assert (=> d!102591 (validMask!0 mask!3328)))

(assert (=> d!102591 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159) lt!348822)))

(declare-fun bs!21745 () Bool)

(assert (= bs!21745 d!102591))

(assert (=> bs!21745 m!725273))

(declare-fun m!725439 () Bool)

(assert (=> bs!21745 m!725439))

(assert (=> bs!21745 m!725303))

(assert (=> b!782417 d!102591))

(declare-fun e!435191 () SeekEntryResult!8020)

(declare-fun b!782639 () Bool)

(assert (=> b!782639 (= e!435191 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!20413 a!3186) j!159) mask!3328) #b00000000000000000000000000000000 mask!3328) (select (arr!20413 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!782640 () Bool)

(assert (=> b!782640 (= e!435191 (Intermediate!8020 false (toIndex!0 (select (arr!20413 a!3186) j!159) mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!782641 () Bool)

(declare-fun e!435190 () Bool)

(declare-fun e!435188 () Bool)

(assert (=> b!782641 (= e!435190 e!435188)))

(declare-fun res!529660 () Bool)

(declare-fun lt!348828 () SeekEntryResult!8020)

(assert (=> b!782641 (= res!529660 (and ((_ is Intermediate!8020) lt!348828) (not (undefined!8832 lt!348828)) (bvslt (x!65424 lt!348828) #b01111111111111111111111111111110) (bvsge (x!65424 lt!348828) #b00000000000000000000000000000000) (bvsge (x!65424 lt!348828) #b00000000000000000000000000000000)))))

(assert (=> b!782641 (=> (not res!529660) (not e!435188))))

(declare-fun d!102593 () Bool)

(assert (=> d!102593 e!435190))

(declare-fun c!86897 () Bool)

(assert (=> d!102593 (= c!86897 (and ((_ is Intermediate!8020) lt!348828) (undefined!8832 lt!348828)))))

(declare-fun e!435189 () SeekEntryResult!8020)

(assert (=> d!102593 (= lt!348828 e!435189)))

(declare-fun c!86898 () Bool)

(assert (=> d!102593 (= c!86898 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!348823 () (_ BitVec 64))

(assert (=> d!102593 (= lt!348823 (select (arr!20413 a!3186) (toIndex!0 (select (arr!20413 a!3186) j!159) mask!3328)))))

(assert (=> d!102593 (validMask!0 mask!3328)))

(assert (=> d!102593 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20413 a!3186) j!159) mask!3328) (select (arr!20413 a!3186) j!159) a!3186 mask!3328) lt!348828)))

(declare-fun b!782642 () Bool)

(assert (=> b!782642 (and (bvsge (index!34449 lt!348828) #b00000000000000000000000000000000) (bvslt (index!34449 lt!348828) (size!20834 a!3186)))))

(declare-fun res!529658 () Bool)

(assert (=> b!782642 (= res!529658 (= (select (arr!20413 a!3186) (index!34449 lt!348828)) (select (arr!20413 a!3186) j!159)))))

(declare-fun e!435192 () Bool)

(assert (=> b!782642 (=> res!529658 e!435192)))

(assert (=> b!782642 (= e!435188 e!435192)))

(declare-fun b!782643 () Bool)

(assert (=> b!782643 (and (bvsge (index!34449 lt!348828) #b00000000000000000000000000000000) (bvslt (index!34449 lt!348828) (size!20834 a!3186)))))

(declare-fun res!529659 () Bool)

(assert (=> b!782643 (= res!529659 (= (select (arr!20413 a!3186) (index!34449 lt!348828)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!782643 (=> res!529659 e!435192)))

(declare-fun b!782644 () Bool)

(assert (=> b!782644 (and (bvsge (index!34449 lt!348828) #b00000000000000000000000000000000) (bvslt (index!34449 lt!348828) (size!20834 a!3186)))))

(assert (=> b!782644 (= e!435192 (= (select (arr!20413 a!3186) (index!34449 lt!348828)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!782645 () Bool)

(assert (=> b!782645 (= e!435190 (bvsge (x!65424 lt!348828) #b01111111111111111111111111111110))))

(declare-fun b!782646 () Bool)

(assert (=> b!782646 (= e!435189 (Intermediate!8020 true (toIndex!0 (select (arr!20413 a!3186) j!159) mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!782647 () Bool)

(assert (=> b!782647 (= e!435189 e!435191)))

(declare-fun c!86899 () Bool)

(assert (=> b!782647 (= c!86899 (or (= lt!348823 (select (arr!20413 a!3186) j!159)) (= (bvadd lt!348823 lt!348823) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!102593 c!86898) b!782646))

(assert (= (and d!102593 (not c!86898)) b!782647))

(assert (= (and b!782647 c!86899) b!782640))

(assert (= (and b!782647 (not c!86899)) b!782639))

(assert (= (and d!102593 c!86897) b!782645))

(assert (= (and d!102593 (not c!86897)) b!782641))

(assert (= (and b!782641 res!529660) b!782642))

(assert (= (and b!782642 (not res!529658)) b!782643))

(assert (= (and b!782643 (not res!529659)) b!782644))

(declare-fun m!725441 () Bool)

(assert (=> b!782642 m!725441))

(assert (=> d!102593 m!725277))

(declare-fun m!725443 () Bool)

(assert (=> d!102593 m!725443))

(assert (=> d!102593 m!725303))

(assert (=> b!782643 m!725441))

(assert (=> b!782639 m!725277))

(declare-fun m!725445 () Bool)

(assert (=> b!782639 m!725445))

(assert (=> b!782639 m!725445))

(assert (=> b!782639 m!725257))

(declare-fun m!725447 () Bool)

(assert (=> b!782639 m!725447))

(assert (=> b!782644 m!725441))

(assert (=> b!782418 d!102593))

(declare-fun d!102595 () Bool)

(declare-fun lt!348842 () (_ BitVec 32))

(declare-fun lt!348841 () (_ BitVec 32))

(assert (=> d!102595 (= lt!348842 (bvmul (bvxor lt!348841 (bvlshr lt!348841 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!102595 (= lt!348841 ((_ extract 31 0) (bvand (bvxor (select (arr!20413 a!3186) j!159) (bvlshr (select (arr!20413 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!102595 (and (bvsge mask!3328 #b00000000000000000000000000000000) (let ((res!529661 (let ((h!15587 ((_ extract 31 0) (bvand (bvxor (select (arr!20413 a!3186) j!159) (bvlshr (select (arr!20413 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!65432 (bvmul (bvxor h!15587 (bvlshr h!15587 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!65432 (bvlshr x!65432 #b00000000000000000000000000001101)) mask!3328))))) (and (bvslt res!529661 (bvadd mask!3328 #b00000000000000000000000000000001)) (bvsge res!529661 #b00000000000000000000000000000000))))))

(assert (=> d!102595 (= (toIndex!0 (select (arr!20413 a!3186) j!159) mask!3328) (bvand (bvxor lt!348842 (bvlshr lt!348842 #b00000000000000000000000000001101)) mask!3328))))

(assert (=> b!782418 d!102595))

(declare-fun d!102599 () Bool)

(declare-fun res!529679 () Bool)

(declare-fun e!435231 () Bool)

(assert (=> d!102599 (=> res!529679 e!435231)))

(assert (=> d!102599 (= res!529679 (bvsge #b00000000000000000000000000000000 (size!20834 a!3186)))))

(assert (=> d!102599 (= (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14465) e!435231)))

(declare-fun b!782709 () Bool)

(declare-fun e!435232 () Bool)

(declare-fun call!35266 () Bool)

(assert (=> b!782709 (= e!435232 call!35266)))

(declare-fun b!782710 () Bool)

(assert (=> b!782710 (= e!435232 call!35266)))

(declare-fun b!782711 () Bool)

(declare-fun e!435234 () Bool)

(assert (=> b!782711 (= e!435234 e!435232)))

(declare-fun c!86923 () Bool)

(assert (=> b!782711 (= c!86923 (validKeyInArray!0 (select (arr!20413 a!3186) #b00000000000000000000000000000000)))))

(declare-fun b!782712 () Bool)

(declare-fun e!435233 () Bool)

(declare-fun contains!4108 (List!14468 (_ BitVec 64)) Bool)

(assert (=> b!782712 (= e!435233 (contains!4108 Nil!14465 (select (arr!20413 a!3186) #b00000000000000000000000000000000)))))

(declare-fun bm!35263 () Bool)

(assert (=> bm!35263 (= call!35266 (arrayNoDuplicates!0 a!3186 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!86923 (Cons!14464 (select (arr!20413 a!3186) #b00000000000000000000000000000000) Nil!14465) Nil!14465)))))

(declare-fun b!782713 () Bool)

(assert (=> b!782713 (= e!435231 e!435234)))

(declare-fun res!529678 () Bool)

(assert (=> b!782713 (=> (not res!529678) (not e!435234))))

(assert (=> b!782713 (= res!529678 (not e!435233))))

(declare-fun res!529677 () Bool)

(assert (=> b!782713 (=> (not res!529677) (not e!435233))))

(assert (=> b!782713 (= res!529677 (validKeyInArray!0 (select (arr!20413 a!3186) #b00000000000000000000000000000000)))))

(assert (= (and d!102599 (not res!529679)) b!782713))

(assert (= (and b!782713 res!529677) b!782712))

(assert (= (and b!782713 res!529678) b!782711))

(assert (= (and b!782711 c!86923) b!782710))

(assert (= (and b!782711 (not c!86923)) b!782709))

(assert (= (or b!782710 b!782709) bm!35263))

(assert (=> b!782711 m!725411))

(assert (=> b!782711 m!725411))

(assert (=> b!782711 m!725413))

(assert (=> b!782712 m!725411))

(assert (=> b!782712 m!725411))

(declare-fun m!725475 () Bool)

(assert (=> b!782712 m!725475))

(assert (=> bm!35263 m!725411))

(declare-fun m!725477 () Bool)

(assert (=> bm!35263 m!725477))

(assert (=> b!782713 m!725411))

(assert (=> b!782713 m!725411))

(assert (=> b!782713 m!725413))

(assert (=> b!782429 d!102599))

(declare-fun d!102605 () Bool)

(assert (=> d!102605 (= (validMask!0 mask!3328) (and (or (= mask!3328 #b00000000000000000000000000000111) (= mask!3328 #b00000000000000000000000000001111) (= mask!3328 #b00000000000000000000000000011111) (= mask!3328 #b00000000000000000000000000111111) (= mask!3328 #b00000000000000000000000001111111) (= mask!3328 #b00000000000000000000000011111111) (= mask!3328 #b00000000000000000000000111111111) (= mask!3328 #b00000000000000000000001111111111) (= mask!3328 #b00000000000000000000011111111111) (= mask!3328 #b00000000000000000000111111111111) (= mask!3328 #b00000000000000000001111111111111) (= mask!3328 #b00000000000000000011111111111111) (= mask!3328 #b00000000000000000111111111111111) (= mask!3328 #b00000000000000001111111111111111) (= mask!3328 #b00000000000000011111111111111111) (= mask!3328 #b00000000000000111111111111111111) (= mask!3328 #b00000000000001111111111111111111) (= mask!3328 #b00000000000011111111111111111111) (= mask!3328 #b00000000000111111111111111111111) (= mask!3328 #b00000000001111111111111111111111) (= mask!3328 #b00000000011111111111111111111111) (= mask!3328 #b00000000111111111111111111111111) (= mask!3328 #b00000001111111111111111111111111) (= mask!3328 #b00000011111111111111111111111111) (= mask!3328 #b00000111111111111111111111111111) (= mask!3328 #b00001111111111111111111111111111) (= mask!3328 #b00011111111111111111111111111111) (= mask!3328 #b00111111111111111111111111111111)) (bvsle mask!3328 #b00111111111111111111111111111111)))))

(assert (=> start!67596 d!102605))

(declare-fun d!102607 () Bool)

(assert (=> d!102607 (= (array_inv!16187 a!3186) (bvsge (size!20834 a!3186) #b00000000000000000000000000000000))))

(assert (=> start!67596 d!102607))

(declare-fun d!102609 () Bool)

(declare-fun res!529684 () Bool)

(declare-fun e!435248 () Bool)

(assert (=> d!102609 (=> res!529684 e!435248)))

(assert (=> d!102609 (= res!529684 (= (select (arr!20413 a!3186) #b00000000000000000000000000000000) k0!2102))))

(assert (=> d!102609 (= (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000) e!435248)))

(declare-fun b!782736 () Bool)

(declare-fun e!435249 () Bool)

(assert (=> b!782736 (= e!435248 e!435249)))

(declare-fun res!529685 () Bool)

(assert (=> b!782736 (=> (not res!529685) (not e!435249))))

(assert (=> b!782736 (= res!529685 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!20834 a!3186)))))

(declare-fun b!782737 () Bool)

(assert (=> b!782737 (= e!435249 (arrayContainsKey!0 a!3186 k0!2102 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!102609 (not res!529684)) b!782736))

(assert (= (and b!782736 res!529685) b!782737))

(assert (=> d!102609 m!725411))

(declare-fun m!725487 () Bool)

(assert (=> b!782737 m!725487))

(assert (=> b!782428 d!102609))

(declare-fun e!435253 () SeekEntryResult!8020)

(declare-fun b!782738 () Bool)

(assert (=> b!782738 (= e!435253 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) lt!348721 lt!348723 mask!3328))))

(declare-fun b!782739 () Bool)

(assert (=> b!782739 (= e!435253 (Intermediate!8020 false index!1321 x!1131))))

(declare-fun b!782740 () Bool)

(declare-fun e!435252 () Bool)

(declare-fun e!435250 () Bool)

(assert (=> b!782740 (= e!435252 e!435250)))

(declare-fun res!529688 () Bool)

(declare-fun lt!348853 () SeekEntryResult!8020)

(assert (=> b!782740 (= res!529688 (and ((_ is Intermediate!8020) lt!348853) (not (undefined!8832 lt!348853)) (bvslt (x!65424 lt!348853) #b01111111111111111111111111111110) (bvsge (x!65424 lt!348853) #b00000000000000000000000000000000) (bvsge (x!65424 lt!348853) x!1131)))))

(assert (=> b!782740 (=> (not res!529688) (not e!435250))))

(declare-fun d!102613 () Bool)

(assert (=> d!102613 e!435252))

(declare-fun c!86933 () Bool)

(assert (=> d!102613 (= c!86933 (and ((_ is Intermediate!8020) lt!348853) (undefined!8832 lt!348853)))))

(declare-fun e!435251 () SeekEntryResult!8020)

(assert (=> d!102613 (= lt!348853 e!435251)))

(declare-fun c!86934 () Bool)

(assert (=> d!102613 (= c!86934 (bvsge x!1131 #b01111111111111111111111111111110))))

(declare-fun lt!348852 () (_ BitVec 64))

(assert (=> d!102613 (= lt!348852 (select (arr!20413 lt!348723) index!1321))))

(assert (=> d!102613 (validMask!0 mask!3328)))

(assert (=> d!102613 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!348721 lt!348723 mask!3328) lt!348853)))

(declare-fun b!782741 () Bool)

(assert (=> b!782741 (and (bvsge (index!34449 lt!348853) #b00000000000000000000000000000000) (bvslt (index!34449 lt!348853) (size!20834 lt!348723)))))

(declare-fun res!529686 () Bool)

(assert (=> b!782741 (= res!529686 (= (select (arr!20413 lt!348723) (index!34449 lt!348853)) lt!348721))))

(declare-fun e!435254 () Bool)

(assert (=> b!782741 (=> res!529686 e!435254)))

(assert (=> b!782741 (= e!435250 e!435254)))

(declare-fun b!782742 () Bool)

(assert (=> b!782742 (and (bvsge (index!34449 lt!348853) #b00000000000000000000000000000000) (bvslt (index!34449 lt!348853) (size!20834 lt!348723)))))

(declare-fun res!529687 () Bool)

(assert (=> b!782742 (= res!529687 (= (select (arr!20413 lt!348723) (index!34449 lt!348853)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!782742 (=> res!529687 e!435254)))

(declare-fun b!782743 () Bool)

(assert (=> b!782743 (and (bvsge (index!34449 lt!348853) #b00000000000000000000000000000000) (bvslt (index!34449 lt!348853) (size!20834 lt!348723)))))

(assert (=> b!782743 (= e!435254 (= (select (arr!20413 lt!348723) (index!34449 lt!348853)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!782744 () Bool)

(assert (=> b!782744 (= e!435252 (bvsge (x!65424 lt!348853) #b01111111111111111111111111111110))))

(declare-fun b!782745 () Bool)

(assert (=> b!782745 (= e!435251 (Intermediate!8020 true index!1321 x!1131))))

(declare-fun b!782746 () Bool)

(assert (=> b!782746 (= e!435251 e!435253)))

(declare-fun c!86935 () Bool)

(assert (=> b!782746 (= c!86935 (or (= lt!348852 lt!348721) (= (bvadd lt!348852 lt!348852) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!102613 c!86934) b!782745))

(assert (= (and d!102613 (not c!86934)) b!782746))

(assert (= (and b!782746 c!86935) b!782739))

(assert (= (and b!782746 (not c!86935)) b!782738))

(assert (= (and d!102613 c!86933) b!782744))

(assert (= (and d!102613 (not c!86933)) b!782740))

(assert (= (and b!782740 res!529688) b!782741))

(assert (= (and b!782741 (not res!529686)) b!782742))

(assert (= (and b!782742 (not res!529687)) b!782743))

(declare-fun m!725489 () Bool)

(assert (=> b!782741 m!725489))

(declare-fun m!725491 () Bool)

(assert (=> d!102613 m!725491))

(assert (=> d!102613 m!725303))

(assert (=> b!782742 m!725489))

(assert (=> b!782738 m!725359))

(assert (=> b!782738 m!725359))

(declare-fun m!725493 () Bool)

(assert (=> b!782738 m!725493))

(assert (=> b!782743 m!725489))

(assert (=> b!782430 d!102613))

(declare-fun e!435264 () SeekEntryResult!8020)

(declare-fun b!782759 () Bool)

(assert (=> b!782759 (= e!435264 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!348721 mask!3328) #b00000000000000000000000000000000 mask!3328) lt!348721 lt!348723 mask!3328))))

(declare-fun b!782760 () Bool)

(assert (=> b!782760 (= e!435264 (Intermediate!8020 false (toIndex!0 lt!348721 mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!782761 () Bool)

(declare-fun e!435263 () Bool)

(declare-fun e!435261 () Bool)

(assert (=> b!782761 (= e!435263 e!435261)))

(declare-fun res!529691 () Bool)

(declare-fun lt!348861 () SeekEntryResult!8020)

(assert (=> b!782761 (= res!529691 (and ((_ is Intermediate!8020) lt!348861) (not (undefined!8832 lt!348861)) (bvslt (x!65424 lt!348861) #b01111111111111111111111111111110) (bvsge (x!65424 lt!348861) #b00000000000000000000000000000000) (bvsge (x!65424 lt!348861) #b00000000000000000000000000000000)))))

(assert (=> b!782761 (=> (not res!529691) (not e!435261))))

(declare-fun d!102617 () Bool)

(assert (=> d!102617 e!435263))

(declare-fun c!86942 () Bool)

(assert (=> d!102617 (= c!86942 (and ((_ is Intermediate!8020) lt!348861) (undefined!8832 lt!348861)))))

(declare-fun e!435262 () SeekEntryResult!8020)

(assert (=> d!102617 (= lt!348861 e!435262)))

(declare-fun c!86943 () Bool)

(assert (=> d!102617 (= c!86943 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!348860 () (_ BitVec 64))

(assert (=> d!102617 (= lt!348860 (select (arr!20413 lt!348723) (toIndex!0 lt!348721 mask!3328)))))

(assert (=> d!102617 (validMask!0 mask!3328)))

(assert (=> d!102617 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!348721 mask!3328) lt!348721 lt!348723 mask!3328) lt!348861)))

(declare-fun b!782762 () Bool)

(assert (=> b!782762 (and (bvsge (index!34449 lt!348861) #b00000000000000000000000000000000) (bvslt (index!34449 lt!348861) (size!20834 lt!348723)))))

(declare-fun res!529689 () Bool)

(assert (=> b!782762 (= res!529689 (= (select (arr!20413 lt!348723) (index!34449 lt!348861)) lt!348721))))

(declare-fun e!435265 () Bool)

(assert (=> b!782762 (=> res!529689 e!435265)))

(assert (=> b!782762 (= e!435261 e!435265)))

(declare-fun b!782763 () Bool)

(assert (=> b!782763 (and (bvsge (index!34449 lt!348861) #b00000000000000000000000000000000) (bvslt (index!34449 lt!348861) (size!20834 lt!348723)))))

(declare-fun res!529690 () Bool)

(assert (=> b!782763 (= res!529690 (= (select (arr!20413 lt!348723) (index!34449 lt!348861)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!782763 (=> res!529690 e!435265)))

(declare-fun b!782764 () Bool)

(assert (=> b!782764 (and (bvsge (index!34449 lt!348861) #b00000000000000000000000000000000) (bvslt (index!34449 lt!348861) (size!20834 lt!348723)))))

(assert (=> b!782764 (= e!435265 (= (select (arr!20413 lt!348723) (index!34449 lt!348861)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!782765 () Bool)

(assert (=> b!782765 (= e!435263 (bvsge (x!65424 lt!348861) #b01111111111111111111111111111110))))

(declare-fun b!782766 () Bool)

(assert (=> b!782766 (= e!435262 (Intermediate!8020 true (toIndex!0 lt!348721 mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!782767 () Bool)

(assert (=> b!782767 (= e!435262 e!435264)))

(declare-fun c!86944 () Bool)

(assert (=> b!782767 (= c!86944 (or (= lt!348860 lt!348721) (= (bvadd lt!348860 lt!348860) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!102617 c!86943) b!782766))

(assert (= (and d!102617 (not c!86943)) b!782767))

(assert (= (and b!782767 c!86944) b!782760))

(assert (= (and b!782767 (not c!86944)) b!782759))

(assert (= (and d!102617 c!86942) b!782765))

(assert (= (and d!102617 (not c!86942)) b!782761))

(assert (= (and b!782761 res!529691) b!782762))

(assert (= (and b!782762 (not res!529689)) b!782763))

(assert (= (and b!782763 (not res!529690)) b!782764))

(declare-fun m!725495 () Bool)

(assert (=> b!782762 m!725495))

(assert (=> d!102617 m!725287))

(declare-fun m!725497 () Bool)

(assert (=> d!102617 m!725497))

(assert (=> d!102617 m!725303))

(assert (=> b!782763 m!725495))

(assert (=> b!782759 m!725287))

(declare-fun m!725499 () Bool)

(assert (=> b!782759 m!725499))

(assert (=> b!782759 m!725499))

(declare-fun m!725501 () Bool)

(assert (=> b!782759 m!725501))

(assert (=> b!782764 m!725495))

(assert (=> b!782430 d!102617))

(declare-fun d!102619 () Bool)

(declare-fun lt!348863 () (_ BitVec 32))

(declare-fun lt!348862 () (_ BitVec 32))

(assert (=> d!102619 (= lt!348863 (bvmul (bvxor lt!348862 (bvlshr lt!348862 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!102619 (= lt!348862 ((_ extract 31 0) (bvand (bvxor lt!348721 (bvlshr lt!348721 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!102619 (and (bvsge mask!3328 #b00000000000000000000000000000000) (let ((res!529661 (let ((h!15587 ((_ extract 31 0) (bvand (bvxor lt!348721 (bvlshr lt!348721 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!65432 (bvmul (bvxor h!15587 (bvlshr h!15587 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!65432 (bvlshr x!65432 #b00000000000000000000000000001101)) mask!3328))))) (and (bvslt res!529661 (bvadd mask!3328 #b00000000000000000000000000000001)) (bvsge res!529661 #b00000000000000000000000000000000))))))

(assert (=> d!102619 (= (toIndex!0 lt!348721 mask!3328) (bvand (bvxor lt!348863 (bvlshr lt!348863 #b00000000000000000000000000001101)) mask!3328))))

(assert (=> b!782430 d!102619))

(declare-fun d!102621 () Bool)

(declare-fun lt!348866 () SeekEntryResult!8020)

(assert (=> d!102621 (and (or ((_ is Undefined!8020) lt!348866) (not ((_ is Found!8020) lt!348866)) (and (bvsge (index!34448 lt!348866) #b00000000000000000000000000000000) (bvslt (index!34448 lt!348866) (size!20834 lt!348723)))) (or ((_ is Undefined!8020) lt!348866) ((_ is Found!8020) lt!348866) (not ((_ is MissingZero!8020) lt!348866)) (and (bvsge (index!34447 lt!348866) #b00000000000000000000000000000000) (bvslt (index!34447 lt!348866) (size!20834 lt!348723)))) (or ((_ is Undefined!8020) lt!348866) ((_ is Found!8020) lt!348866) ((_ is MissingZero!8020) lt!348866) (not ((_ is MissingVacant!8020) lt!348866)) (and (bvsge (index!34450 lt!348866) #b00000000000000000000000000000000) (bvslt (index!34450 lt!348866) (size!20834 lt!348723)))) (or ((_ is Undefined!8020) lt!348866) (ite ((_ is Found!8020) lt!348866) (= (select (arr!20413 lt!348723) (index!34448 lt!348866)) lt!348721) (ite ((_ is MissingZero!8020) lt!348866) (= (select (arr!20413 lt!348723) (index!34447 lt!348866)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!8020) lt!348866) (= (select (arr!20413 lt!348723) (index!34450 lt!348866)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!435267 () SeekEntryResult!8020)

(assert (=> d!102621 (= lt!348866 e!435267)))

(declare-fun c!86946 () Bool)

(declare-fun lt!348864 () SeekEntryResult!8020)

(assert (=> d!102621 (= c!86946 (and ((_ is Intermediate!8020) lt!348864) (undefined!8832 lt!348864)))))

(assert (=> d!102621 (= lt!348864 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!348721 mask!3328) lt!348721 lt!348723 mask!3328))))

(assert (=> d!102621 (validMask!0 mask!3328)))

(assert (=> d!102621 (= (seekEntryOrOpen!0 lt!348721 lt!348723 mask!3328) lt!348866)))

(declare-fun b!782768 () Bool)

(assert (=> b!782768 (= e!435267 Undefined!8020)))

(declare-fun b!782769 () Bool)

(declare-fun e!435266 () SeekEntryResult!8020)

(assert (=> b!782769 (= e!435266 (MissingZero!8020 (index!34449 lt!348864)))))

(declare-fun b!782770 () Bool)

(declare-fun c!86947 () Bool)

(declare-fun lt!348865 () (_ BitVec 64))

(assert (=> b!782770 (= c!86947 (= lt!348865 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!435268 () SeekEntryResult!8020)

(assert (=> b!782770 (= e!435268 e!435266)))

(declare-fun b!782771 () Bool)

(assert (=> b!782771 (= e!435268 (Found!8020 (index!34449 lt!348864)))))

(declare-fun b!782772 () Bool)

(assert (=> b!782772 (= e!435267 e!435268)))

(assert (=> b!782772 (= lt!348865 (select (arr!20413 lt!348723) (index!34449 lt!348864)))))

(declare-fun c!86945 () Bool)

(assert (=> b!782772 (= c!86945 (= lt!348865 lt!348721))))

(declare-fun b!782773 () Bool)

(assert (=> b!782773 (= e!435266 (seekKeyOrZeroReturnVacant!0 (x!65424 lt!348864) (index!34449 lt!348864) (index!34449 lt!348864) lt!348721 lt!348723 mask!3328))))

(assert (= (and d!102621 c!86946) b!782768))

(assert (= (and d!102621 (not c!86946)) b!782772))

(assert (= (and b!782772 c!86945) b!782771))

(assert (= (and b!782772 (not c!86945)) b!782770))

(assert (= (and b!782770 c!86947) b!782769))

(assert (= (and b!782770 (not c!86947)) b!782773))

(declare-fun m!725503 () Bool)

(assert (=> d!102621 m!725503))

(assert (=> d!102621 m!725287))

(assert (=> d!102621 m!725287))

(assert (=> d!102621 m!725289))

(declare-fun m!725505 () Bool)

(assert (=> d!102621 m!725505))

(assert (=> d!102621 m!725303))

(declare-fun m!725507 () Bool)

(assert (=> d!102621 m!725507))

(declare-fun m!725509 () Bool)

(assert (=> b!782772 m!725509))

(declare-fun m!725511 () Bool)

(assert (=> b!782773 m!725511))

(assert (=> b!782419 d!102621))

(declare-fun b!782774 () Bool)

(declare-fun e!435269 () SeekEntryResult!8020)

(declare-fun e!435271 () SeekEntryResult!8020)

(assert (=> b!782774 (= e!435269 e!435271)))

(declare-fun c!86949 () Bool)

(declare-fun lt!348867 () (_ BitVec 64))

(assert (=> b!782774 (= c!86949 (= lt!348867 lt!348721))))

(declare-fun b!782775 () Bool)

(declare-fun e!435270 () SeekEntryResult!8020)

(assert (=> b!782775 (= e!435270 (MissingVacant!8020 index!1321))))

(declare-fun b!782776 () Bool)

(assert (=> b!782776 (= e!435269 Undefined!8020)))

(declare-fun b!782777 () Bool)

(declare-fun c!86948 () Bool)

(assert (=> b!782777 (= c!86948 (= lt!348867 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!782777 (= e!435271 e!435270)))

(declare-fun b!782778 () Bool)

(assert (=> b!782778 (= e!435271 (Found!8020 index!1321))))

(declare-fun b!782779 () Bool)

(assert (=> b!782779 (= e!435270 (seekKeyOrZeroReturnVacant!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) index!1321 lt!348721 lt!348723 mask!3328))))

(declare-fun d!102623 () Bool)

(declare-fun lt!348868 () SeekEntryResult!8020)

(assert (=> d!102623 (and (or ((_ is Undefined!8020) lt!348868) (not ((_ is Found!8020) lt!348868)) (and (bvsge (index!34448 lt!348868) #b00000000000000000000000000000000) (bvslt (index!34448 lt!348868) (size!20834 lt!348723)))) (or ((_ is Undefined!8020) lt!348868) ((_ is Found!8020) lt!348868) (not ((_ is MissingVacant!8020) lt!348868)) (not (= (index!34450 lt!348868) index!1321)) (and (bvsge (index!34450 lt!348868) #b00000000000000000000000000000000) (bvslt (index!34450 lt!348868) (size!20834 lt!348723)))) (or ((_ is Undefined!8020) lt!348868) (ite ((_ is Found!8020) lt!348868) (= (select (arr!20413 lt!348723) (index!34448 lt!348868)) lt!348721) (and ((_ is MissingVacant!8020) lt!348868) (= (index!34450 lt!348868) index!1321) (= (select (arr!20413 lt!348723) (index!34450 lt!348868)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!102623 (= lt!348868 e!435269)))

(declare-fun c!86950 () Bool)

(assert (=> d!102623 (= c!86950 (bvsge x!1131 #b01111111111111111111111111111110))))

(assert (=> d!102623 (= lt!348867 (select (arr!20413 lt!348723) index!1321))))

(assert (=> d!102623 (validMask!0 mask!3328)))

(assert (=> d!102623 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!348721 lt!348723 mask!3328) lt!348868)))

(assert (= (and d!102623 c!86950) b!782776))

(assert (= (and d!102623 (not c!86950)) b!782774))

(assert (= (and b!782774 c!86949) b!782778))

(assert (= (and b!782774 (not c!86949)) b!782777))

(assert (= (and b!782777 c!86948) b!782775))

(assert (= (and b!782777 (not c!86948)) b!782779))

(assert (=> b!782779 m!725359))

(assert (=> b!782779 m!725359))

(declare-fun m!725513 () Bool)

(assert (=> b!782779 m!725513))

(declare-fun m!725515 () Bool)

(assert (=> d!102623 m!725515))

(declare-fun m!725517 () Bool)

(assert (=> d!102623 m!725517))

(assert (=> d!102623 m!725491))

(assert (=> d!102623 m!725303))

(assert (=> b!782419 d!102623))

(check-sat (not d!102623) (not b!782635) (not b!782773) (not bm!35256) (not d!102591) (not d!102575) (not b!782738) (not d!102567) (not b!782712) (not b!782711) (not b!782634) (not b!782625) (not b!782737) (not d!102565) (not b!782628) (not bm!35263) (not b!782713) (not bm!35257) (not d!102593) (not d!102621) (not d!102613) (not b!782759) (not b!782511) (not d!102587) (not d!102571) (not b!782517) (not b!782639) (not b!782583) (not b!782535) (not b!782779) (not b!782638) (not d!102617))
(check-sat)

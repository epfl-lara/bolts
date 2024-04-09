; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!67820 () Bool)

(assert start!67820)

(declare-fun b!788279 () Bool)

(declare-fun res!534156 () Bool)

(declare-fun e!438155 () Bool)

(assert (=> b!788279 (=> (not res!534156) (not e!438155))))

(declare-datatypes ((array!42815 0))(
  ( (array!42816 (arr!20492 (Array (_ BitVec 32) (_ BitVec 64))) (size!20913 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42815)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(assert (=> b!788279 (= res!534156 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20913 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20913 a!3186))))))

(declare-fun b!788280 () Bool)

(declare-fun e!438159 () Bool)

(assert (=> b!788280 (= e!438159 e!438155)))

(declare-fun res!534153 () Bool)

(assert (=> b!788280 (=> (not res!534153) (not e!438155))))

(declare-datatypes ((SeekEntryResult!8099 0))(
  ( (MissingZero!8099 (index!34763 (_ BitVec 32))) (Found!8099 (index!34764 (_ BitVec 32))) (Intermediate!8099 (undefined!8911 Bool) (index!34765 (_ BitVec 32)) (x!65720 (_ BitVec 32))) (Undefined!8099) (MissingVacant!8099 (index!34766 (_ BitVec 32))) )
))
(declare-fun lt!351732 () SeekEntryResult!8099)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!788280 (= res!534153 (or (= lt!351732 (MissingZero!8099 i!1173)) (= lt!351732 (MissingVacant!8099 i!1173))))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42815 (_ BitVec 32)) SeekEntryResult!8099)

(assert (=> b!788280 (= lt!351732 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!788281 () Bool)

(declare-fun e!438162 () Bool)

(declare-fun lt!351728 () SeekEntryResult!8099)

(declare-fun lt!351731 () SeekEntryResult!8099)

(assert (=> b!788281 (= e!438162 (= lt!351728 lt!351731))))

(declare-fun res!534161 () Bool)

(assert (=> start!67820 (=> (not res!534161) (not e!438159))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67820 (= res!534161 (validMask!0 mask!3328))))

(assert (=> start!67820 e!438159))

(assert (=> start!67820 true))

(declare-fun array_inv!16266 (array!42815) Bool)

(assert (=> start!67820 (array_inv!16266 a!3186)))

(declare-fun b!788282 () Bool)

(declare-fun e!438166 () Bool)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun lt!351723 () SeekEntryResult!8099)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42815 (_ BitVec 32)) SeekEntryResult!8099)

(assert (=> b!788282 (= e!438166 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20492 a!3186) j!159) a!3186 mask!3328) lt!351723))))

(declare-fun e!438164 () Bool)

(declare-fun b!788283 () Bool)

(assert (=> b!788283 (= e!438164 (or (not (= (select (arr!20492 a!3186) index!1321) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= index!1321 resIntermediateIndex!5))))))

(assert (=> b!788283 e!438162))

(declare-fun res!534164 () Bool)

(assert (=> b!788283 (=> (not res!534164) (not e!438162))))

(declare-fun lt!351722 () (_ BitVec 64))

(assert (=> b!788283 (= res!534164 (= lt!351722 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Unit!27306 0))(
  ( (Unit!27307) )
))
(declare-fun lt!351725 () Unit!27306)

(declare-fun e!438156 () Unit!27306)

(assert (=> b!788283 (= lt!351725 e!438156)))

(declare-fun c!87473 () Bool)

(assert (=> b!788283 (= c!87473 (= lt!351722 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!788284 () Bool)

(declare-fun res!534166 () Bool)

(assert (=> b!788284 (=> (not res!534166) (not e!438155))))

(declare-datatypes ((List!14547 0))(
  ( (Nil!14544) (Cons!14543 (h!15666 (_ BitVec 64)) (t!20870 List!14547)) )
))
(declare-fun arrayNoDuplicates!0 (array!42815 (_ BitVec 32) List!14547) Bool)

(assert (=> b!788284 (= res!534166 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14544))))

(declare-fun b!788285 () Bool)

(declare-fun e!438160 () Bool)

(assert (=> b!788285 (= e!438160 e!438164)))

(declare-fun res!534150 () Bool)

(assert (=> b!788285 (=> res!534150 e!438164)))

(declare-fun lt!351727 () (_ BitVec 64))

(assert (=> b!788285 (= res!534150 (= lt!351722 lt!351727))))

(assert (=> b!788285 (= lt!351722 (select (store (arr!20492 a!3186) i!1173 k!2102) index!1321))))

(declare-fun b!788286 () Bool)

(declare-fun res!534154 () Bool)

(assert (=> b!788286 (=> (not res!534154) (not e!438159))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!788286 (= res!534154 (validKeyInArray!0 (select (arr!20492 a!3186) j!159)))))

(declare-fun e!438161 () Bool)

(declare-fun b!788287 () Bool)

(declare-fun lt!351730 () SeekEntryResult!8099)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42815 (_ BitVec 32)) SeekEntryResult!8099)

(assert (=> b!788287 (= e!438161 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20492 a!3186) j!159) a!3186 mask!3328) lt!351730))))

(declare-fun b!788288 () Bool)

(declare-fun res!534158 () Bool)

(assert (=> b!788288 (=> (not res!534158) (not e!438159))))

(assert (=> b!788288 (= res!534158 (and (= (size!20913 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20913 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20913 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!788289 () Bool)

(declare-fun Unit!27308 () Unit!27306)

(assert (=> b!788289 (= e!438156 Unit!27308)))

(assert (=> b!788289 false))

(declare-fun b!788290 () Bool)

(declare-fun res!534155 () Bool)

(assert (=> b!788290 (=> (not res!534155) (not e!438159))))

(assert (=> b!788290 (= res!534155 (validKeyInArray!0 k!2102))))

(declare-fun b!788291 () Bool)

(declare-fun res!534151 () Bool)

(assert (=> b!788291 (=> (not res!534151) (not e!438162))))

(declare-fun lt!351729 () array!42815)

(assert (=> b!788291 (= res!534151 (= (seekEntryOrOpen!0 lt!351727 lt!351729 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!351727 lt!351729 mask!3328)))))

(declare-fun b!788292 () Bool)

(declare-fun res!534148 () Bool)

(assert (=> b!788292 (=> (not res!534148) (not e!438155))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42815 (_ BitVec 32)) Bool)

(assert (=> b!788292 (= res!534148 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!788293 () Bool)

(declare-fun e!438158 () Bool)

(declare-fun e!438165 () Bool)

(assert (=> b!788293 (= e!438158 (not e!438165))))

(declare-fun res!534152 () Bool)

(assert (=> b!788293 (=> res!534152 e!438165)))

(declare-fun lt!351724 () SeekEntryResult!8099)

(assert (=> b!788293 (= res!534152 (or (not (is-Intermediate!8099 lt!351724)) (bvslt x!1131 (x!65720 lt!351724)) (not (= x!1131 (x!65720 lt!351724))) (not (= index!1321 (index!34765 lt!351724)))))))

(assert (=> b!788293 e!438161))

(declare-fun res!534157 () Bool)

(assert (=> b!788293 (=> (not res!534157) (not e!438161))))

(assert (=> b!788293 (= res!534157 (= lt!351728 lt!351730))))

(assert (=> b!788293 (= lt!351730 (Found!8099 j!159))))

(assert (=> b!788293 (= lt!351728 (seekEntryOrOpen!0 (select (arr!20492 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!788293 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!351726 () Unit!27306)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42815 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27306)

(assert (=> b!788293 (= lt!351726 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!788294 () Bool)

(declare-fun Unit!27309 () Unit!27306)

(assert (=> b!788294 (= e!438156 Unit!27309)))

(declare-fun b!788295 () Bool)

(declare-fun e!438163 () Bool)

(assert (=> b!788295 (= e!438155 e!438163)))

(declare-fun res!534165 () Bool)

(assert (=> b!788295 (=> (not res!534165) (not e!438163))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!788295 (= res!534165 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20492 a!3186) j!159) mask!3328) (select (arr!20492 a!3186) j!159) a!3186 mask!3328) lt!351723))))

(assert (=> b!788295 (= lt!351723 (Intermediate!8099 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!788296 () Bool)

(assert (=> b!788296 (= e!438166 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20492 a!3186) j!159) a!3186 mask!3328) (Found!8099 j!159)))))

(declare-fun b!788297 () Bool)

(declare-fun res!534159 () Bool)

(assert (=> b!788297 (=> (not res!534159) (not e!438163))))

(assert (=> b!788297 (= res!534159 e!438166)))

(declare-fun c!87474 () Bool)

(assert (=> b!788297 (= c!87474 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!788298 () Bool)

(assert (=> b!788298 (= e!438165 e!438160)))

(declare-fun res!534163 () Bool)

(assert (=> b!788298 (=> res!534163 e!438160)))

(assert (=> b!788298 (= res!534163 (not (= lt!351731 lt!351730)))))

(assert (=> b!788298 (= lt!351731 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20492 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!788299 () Bool)

(assert (=> b!788299 (= e!438163 e!438158)))

(declare-fun res!534162 () Bool)

(assert (=> b!788299 (=> (not res!534162) (not e!438158))))

(declare-fun lt!351733 () SeekEntryResult!8099)

(assert (=> b!788299 (= res!534162 (= lt!351733 lt!351724))))

(assert (=> b!788299 (= lt!351724 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!351727 lt!351729 mask!3328))))

(assert (=> b!788299 (= lt!351733 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!351727 mask!3328) lt!351727 lt!351729 mask!3328))))

(assert (=> b!788299 (= lt!351727 (select (store (arr!20492 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!788299 (= lt!351729 (array!42816 (store (arr!20492 a!3186) i!1173 k!2102) (size!20913 a!3186)))))

(declare-fun b!788300 () Bool)

(declare-fun res!534160 () Bool)

(assert (=> b!788300 (=> (not res!534160) (not e!438159))))

(declare-fun arrayContainsKey!0 (array!42815 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!788300 (= res!534160 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!788301 () Bool)

(declare-fun res!534149 () Bool)

(assert (=> b!788301 (=> (not res!534149) (not e!438163))))

(assert (=> b!788301 (= res!534149 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20492 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!67820 res!534161) b!788288))

(assert (= (and b!788288 res!534158) b!788286))

(assert (= (and b!788286 res!534154) b!788290))

(assert (= (and b!788290 res!534155) b!788300))

(assert (= (and b!788300 res!534160) b!788280))

(assert (= (and b!788280 res!534153) b!788292))

(assert (= (and b!788292 res!534148) b!788284))

(assert (= (and b!788284 res!534166) b!788279))

(assert (= (and b!788279 res!534156) b!788295))

(assert (= (and b!788295 res!534165) b!788301))

(assert (= (and b!788301 res!534149) b!788297))

(assert (= (and b!788297 c!87474) b!788282))

(assert (= (and b!788297 (not c!87474)) b!788296))

(assert (= (and b!788297 res!534159) b!788299))

(assert (= (and b!788299 res!534162) b!788293))

(assert (= (and b!788293 res!534157) b!788287))

(assert (= (and b!788293 (not res!534152)) b!788298))

(assert (= (and b!788298 (not res!534163)) b!788285))

(assert (= (and b!788285 (not res!534150)) b!788283))

(assert (= (and b!788283 c!87473) b!788289))

(assert (= (and b!788283 (not c!87473)) b!788294))

(assert (= (and b!788283 res!534164) b!788291))

(assert (= (and b!788291 res!534151) b!788281))

(declare-fun m!729703 () Bool)

(assert (=> b!788293 m!729703))

(assert (=> b!788293 m!729703))

(declare-fun m!729705 () Bool)

(assert (=> b!788293 m!729705))

(declare-fun m!729707 () Bool)

(assert (=> b!788293 m!729707))

(declare-fun m!729709 () Bool)

(assert (=> b!788293 m!729709))

(declare-fun m!729711 () Bool)

(assert (=> b!788290 m!729711))

(assert (=> b!788296 m!729703))

(assert (=> b!788296 m!729703))

(declare-fun m!729713 () Bool)

(assert (=> b!788296 m!729713))

(assert (=> b!788286 m!729703))

(assert (=> b!788286 m!729703))

(declare-fun m!729715 () Bool)

(assert (=> b!788286 m!729715))

(declare-fun m!729717 () Bool)

(assert (=> start!67820 m!729717))

(declare-fun m!729719 () Bool)

(assert (=> start!67820 m!729719))

(declare-fun m!729721 () Bool)

(assert (=> b!788284 m!729721))

(declare-fun m!729723 () Bool)

(assert (=> b!788285 m!729723))

(declare-fun m!729725 () Bool)

(assert (=> b!788285 m!729725))

(declare-fun m!729727 () Bool)

(assert (=> b!788300 m!729727))

(assert (=> b!788298 m!729703))

(assert (=> b!788298 m!729703))

(assert (=> b!788298 m!729713))

(declare-fun m!729729 () Bool)

(assert (=> b!788301 m!729729))

(assert (=> b!788295 m!729703))

(assert (=> b!788295 m!729703))

(declare-fun m!729731 () Bool)

(assert (=> b!788295 m!729731))

(assert (=> b!788295 m!729731))

(assert (=> b!788295 m!729703))

(declare-fun m!729733 () Bool)

(assert (=> b!788295 m!729733))

(declare-fun m!729735 () Bool)

(assert (=> b!788283 m!729735))

(declare-fun m!729737 () Bool)

(assert (=> b!788299 m!729737))

(assert (=> b!788299 m!729723))

(declare-fun m!729739 () Bool)

(assert (=> b!788299 m!729739))

(declare-fun m!729741 () Bool)

(assert (=> b!788299 m!729741))

(assert (=> b!788299 m!729739))

(declare-fun m!729743 () Bool)

(assert (=> b!788299 m!729743))

(assert (=> b!788282 m!729703))

(assert (=> b!788282 m!729703))

(declare-fun m!729745 () Bool)

(assert (=> b!788282 m!729745))

(declare-fun m!729747 () Bool)

(assert (=> b!788292 m!729747))

(declare-fun m!729749 () Bool)

(assert (=> b!788291 m!729749))

(declare-fun m!729751 () Bool)

(assert (=> b!788291 m!729751))

(declare-fun m!729753 () Bool)

(assert (=> b!788280 m!729753))

(assert (=> b!788287 m!729703))

(assert (=> b!788287 m!729703))

(declare-fun m!729755 () Bool)

(assert (=> b!788287 m!729755))

(push 1)

(assert (not b!788296))

(assert (not b!788290))

(assert (not b!788298))

(assert (not b!788284))

(assert (not b!788295))

(assert (not b!788286))

(assert (not b!788291))

(assert (not b!788293))

(assert (not b!788299))

(assert (not b!788280))

(assert (not b!788282))

(assert (not b!788300))

(assert (not start!67820))

(assert (not b!788287))

(assert (not b!788292))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!788435 () Bool)

(declare-fun e!438249 () SeekEntryResult!8099)

(declare-fun e!438251 () SeekEntryResult!8099)

(assert (=> b!788435 (= e!438249 e!438251)))

(declare-fun c!87525 () Bool)

(declare-fun lt!351795 () (_ BitVec 64))

(assert (=> b!788435 (= c!87525 (or (= lt!351795 (select (arr!20492 a!3186) j!159)) (= (bvadd lt!351795 lt!351795) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!788436 () Bool)

(declare-fun e!438253 () Bool)

(declare-fun e!438250 () Bool)

(assert (=> b!788436 (= e!438253 e!438250)))

(declare-fun res!534204 () Bool)

(declare-fun lt!351794 () SeekEntryResult!8099)

(assert (=> b!788436 (= res!534204 (and (is-Intermediate!8099 lt!351794) (not (undefined!8911 lt!351794)) (bvslt (x!65720 lt!351794) #b01111111111111111111111111111110) (bvsge (x!65720 lt!351794) #b00000000000000000000000000000000) (bvsge (x!65720 lt!351794) #b00000000000000000000000000000000)))))

(assert (=> b!788436 (=> (not res!534204) (not e!438250))))

(declare-fun b!788437 () Bool)

(assert (=> b!788437 (and (bvsge (index!34765 lt!351794) #b00000000000000000000000000000000) (bvslt (index!34765 lt!351794) (size!20913 a!3186)))))

(declare-fun e!438252 () Bool)

(assert (=> b!788437 (= e!438252 (= (select (arr!20492 a!3186) (index!34765 lt!351794)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!788439 () Bool)

(assert (=> b!788439 (= e!438253 (bvsge (x!65720 lt!351794) #b01111111111111111111111111111110))))

(declare-fun b!788440 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!788440 (= e!438251 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!20492 a!3186) j!159) mask!3328) #b00000000000000000000000000000000 mask!3328) (select (arr!20492 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!788441 () Bool)

(assert (=> b!788441 (and (bvsge (index!34765 lt!351794) #b00000000000000000000000000000000) (bvslt (index!34765 lt!351794) (size!20913 a!3186)))))

(declare-fun res!534202 () Bool)

(assert (=> b!788441 (= res!534202 (= (select (arr!20492 a!3186) (index!34765 lt!351794)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!788441 (=> res!534202 e!438252)))

(declare-fun b!788442 () Bool)

(assert (=> b!788442 (= e!438251 (Intermediate!8099 false (toIndex!0 (select (arr!20492 a!3186) j!159) mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!788443 () Bool)

(assert (=> b!788443 (and (bvsge (index!34765 lt!351794) #b00000000000000000000000000000000) (bvslt (index!34765 lt!351794) (size!20913 a!3186)))))

(declare-fun res!534203 () Bool)

(assert (=> b!788443 (= res!534203 (= (select (arr!20492 a!3186) (index!34765 lt!351794)) (select (arr!20492 a!3186) j!159)))))

(assert (=> b!788443 (=> res!534203 e!438252)))

(assert (=> b!788443 (= e!438250 e!438252)))

(declare-fun d!102755 () Bool)

(assert (=> d!102755 e!438253))

(declare-fun c!87524 () Bool)

(assert (=> d!102755 (= c!87524 (and (is-Intermediate!8099 lt!351794) (undefined!8911 lt!351794)))))

(assert (=> d!102755 (= lt!351794 e!438249)))

(declare-fun c!87526 () Bool)

(assert (=> d!102755 (= c!87526 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!102755 (= lt!351795 (select (arr!20492 a!3186) (toIndex!0 (select (arr!20492 a!3186) j!159) mask!3328)))))

(assert (=> d!102755 (validMask!0 mask!3328)))

(assert (=> d!102755 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20492 a!3186) j!159) mask!3328) (select (arr!20492 a!3186) j!159) a!3186 mask!3328) lt!351794)))

(declare-fun b!788438 () Bool)

(assert (=> b!788438 (= e!438249 (Intermediate!8099 true (toIndex!0 (select (arr!20492 a!3186) j!159) mask!3328) #b00000000000000000000000000000000))))

(assert (= (and d!102755 c!87526) b!788438))

(assert (= (and d!102755 (not c!87526)) b!788435))

(assert (= (and b!788435 c!87525) b!788442))

(assert (= (and b!788435 (not c!87525)) b!788440))

(assert (= (and d!102755 c!87524) b!788439))

(assert (= (and d!102755 (not c!87524)) b!788436))

(assert (= (and b!788436 res!534204) b!788443))

(assert (= (and b!788443 (not res!534203)) b!788441))

(assert (= (and b!788441 (not res!534202)) b!788437))

(assert (=> d!102755 m!729731))

(declare-fun m!729837 () Bool)

(assert (=> d!102755 m!729837))

(assert (=> d!102755 m!729717))

(declare-fun m!729839 () Bool)

(assert (=> b!788443 m!729839))

(assert (=> b!788440 m!729731))

(declare-fun m!729841 () Bool)

(assert (=> b!788440 m!729841))

(assert (=> b!788440 m!729841))

(assert (=> b!788440 m!729703))

(declare-fun m!729843 () Bool)

(assert (=> b!788440 m!729843))

(assert (=> b!788437 m!729839))

(assert (=> b!788441 m!729839))

(assert (=> b!788295 d!102755))

(declare-fun d!102775 () Bool)

(declare-fun lt!351805 () (_ BitVec 32))

(declare-fun lt!351804 () (_ BitVec 32))

(assert (=> d!102775 (= lt!351805 (bvmul (bvxor lt!351804 (bvlshr lt!351804 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!102775 (= lt!351804 ((_ extract 31 0) (bvand (bvxor (select (arr!20492 a!3186) j!159) (bvlshr (select (arr!20492 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!102775 (and (bvsge mask!3328 #b00000000000000000000000000000000) (let ((res!534205 (let ((h!15667 ((_ extract 31 0) (bvand (bvxor (select (arr!20492 a!3186) j!159) (bvlshr (select (arr!20492 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!65723 (bvmul (bvxor h!15667 (bvlshr h!15667 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!65723 (bvlshr x!65723 #b00000000000000000000000000001101)) mask!3328))))) (and (bvslt res!534205 (bvadd mask!3328 #b00000000000000000000000000000001)) (bvsge res!534205 #b00000000000000000000000000000000))))))

(assert (=> d!102775 (= (toIndex!0 (select (arr!20492 a!3186) j!159) mask!3328) (bvand (bvxor lt!351805 (bvlshr lt!351805 #b00000000000000000000000000001101)) mask!3328))))

(assert (=> b!788295 d!102775))

(declare-fun b!788516 () Bool)

(declare-fun e!438293 () SeekEntryResult!8099)

(assert (=> b!788516 (= e!438293 (Found!8099 index!1321))))

(declare-fun e!438295 () SeekEntryResult!8099)

(declare-fun b!788517 () Bool)

(assert (=> b!788517 (= e!438295 (seekKeyOrZeroReturnVacant!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) resIntermediateIndex!5 (select (arr!20492 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!788518 () Bool)

(declare-fun c!87556 () Bool)

(declare-fun lt!351825 () (_ BitVec 64))

(assert (=> b!788518 (= c!87556 (= lt!351825 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!788518 (= e!438293 e!438295)))

(declare-fun b!788519 () Bool)

(declare-fun e!438294 () SeekEntryResult!8099)

(assert (=> b!788519 (= e!438294 Undefined!8099)))

(declare-fun d!102777 () Bool)

(declare-fun lt!351824 () SeekEntryResult!8099)

(assert (=> d!102777 (and (or (is-Undefined!8099 lt!351824) (not (is-Found!8099 lt!351824)) (and (bvsge (index!34764 lt!351824) #b00000000000000000000000000000000) (bvslt (index!34764 lt!351824) (size!20913 a!3186)))) (or (is-Undefined!8099 lt!351824) (is-Found!8099 lt!351824) (not (is-MissingVacant!8099 lt!351824)) (not (= (index!34766 lt!351824) resIntermediateIndex!5)) (and (bvsge (index!34766 lt!351824) #b00000000000000000000000000000000) (bvslt (index!34766 lt!351824) (size!20913 a!3186)))) (or (is-Undefined!8099 lt!351824) (ite (is-Found!8099 lt!351824) (= (select (arr!20492 a!3186) (index!34764 lt!351824)) (select (arr!20492 a!3186) j!159)) (and (is-MissingVacant!8099 lt!351824) (= (index!34766 lt!351824) resIntermediateIndex!5) (= (select (arr!20492 a!3186) (index!34766 lt!351824)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!102777 (= lt!351824 e!438294)))

(declare-fun c!87554 () Bool)

(assert (=> d!102777 (= c!87554 (bvsge x!1131 #b01111111111111111111111111111110))))

(assert (=> d!102777 (= lt!351825 (select (arr!20492 a!3186) index!1321))))

(assert (=> d!102777 (validMask!0 mask!3328)))

(assert (=> d!102777 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20492 a!3186) j!159) a!3186 mask!3328) lt!351824)))

(declare-fun b!788520 () Bool)

(assert (=> b!788520 (= e!438295 (MissingVacant!8099 resIntermediateIndex!5))))

(declare-fun b!788521 () Bool)

(assert (=> b!788521 (= e!438294 e!438293)))

(declare-fun c!87555 () Bool)

(assert (=> b!788521 (= c!87555 (= lt!351825 (select (arr!20492 a!3186) j!159)))))

(assert (= (and d!102777 c!87554) b!788519))

(assert (= (and d!102777 (not c!87554)) b!788521))

(assert (= (and b!788521 c!87555) b!788516))

(assert (= (and b!788521 (not c!87555)) b!788518))

(assert (= (and b!788518 c!87556) b!788520))

(assert (= (and b!788518 (not c!87556)) b!788517))

(declare-fun m!729865 () Bool)

(assert (=> b!788517 m!729865))

(assert (=> b!788517 m!729865))

(assert (=> b!788517 m!729703))

(declare-fun m!729867 () Bool)

(assert (=> b!788517 m!729867))

(declare-fun m!729869 () Bool)

(assert (=> d!102777 m!729869))

(declare-fun m!729871 () Bool)

(assert (=> d!102777 m!729871))

(assert (=> d!102777 m!729735))

(assert (=> d!102777 m!729717))

(assert (=> b!788296 d!102777))

(declare-fun d!102791 () Bool)

(assert (=> d!102791 (= (validKeyInArray!0 (select (arr!20492 a!3186) j!159)) (and (not (= (select (arr!20492 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!20492 a!3186) j!159) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!788286 d!102791))

(declare-fun b!788531 () Bool)

(declare-fun e!438301 () SeekEntryResult!8099)

(declare-fun e!438303 () SeekEntryResult!8099)

(assert (=> b!788531 (= e!438301 e!438303)))

(declare-fun lt!351831 () (_ BitVec 64))

(declare-fun c!87561 () Bool)

(assert (=> b!788531 (= c!87561 (or (= lt!351831 (select (arr!20492 a!3186) j!159)) (= (bvadd lt!351831 lt!351831) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!788532 () Bool)

(declare-fun e!438305 () Bool)

(declare-fun e!438302 () Bool)

(assert (=> b!788532 (= e!438305 e!438302)))

(declare-fun res!534231 () Bool)

(declare-fun lt!351830 () SeekEntryResult!8099)

(assert (=> b!788532 (= res!534231 (and (is-Intermediate!8099 lt!351830) (not (undefined!8911 lt!351830)) (bvslt (x!65720 lt!351830) #b01111111111111111111111111111110) (bvsge (x!65720 lt!351830) #b00000000000000000000000000000000) (bvsge (x!65720 lt!351830) x!1131)))))

(assert (=> b!788532 (=> (not res!534231) (not e!438302))))

(declare-fun b!788533 () Bool)

(assert (=> b!788533 (and (bvsge (index!34765 lt!351830) #b00000000000000000000000000000000) (bvslt (index!34765 lt!351830) (size!20913 a!3186)))))

(declare-fun e!438304 () Bool)

(assert (=> b!788533 (= e!438304 (= (select (arr!20492 a!3186) (index!34765 lt!351830)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!788535 () Bool)

(assert (=> b!788535 (= e!438305 (bvsge (x!65720 lt!351830) #b01111111111111111111111111111110))))

(declare-fun b!788536 () Bool)

(assert (=> b!788536 (= e!438303 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) (select (arr!20492 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!788537 () Bool)

(assert (=> b!788537 (and (bvsge (index!34765 lt!351830) #b00000000000000000000000000000000) (bvslt (index!34765 lt!351830) (size!20913 a!3186)))))

(declare-fun res!534228 () Bool)

(assert (=> b!788537 (= res!534228 (= (select (arr!20492 a!3186) (index!34765 lt!351830)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!788537 (=> res!534228 e!438304)))

(declare-fun b!788538 () Bool)

(assert (=> b!788538 (= e!438303 (Intermediate!8099 false index!1321 x!1131))))

(declare-fun b!788539 () Bool)

(assert (=> b!788539 (and (bvsge (index!34765 lt!351830) #b00000000000000000000000000000000) (bvslt (index!34765 lt!351830) (size!20913 a!3186)))))

(declare-fun res!534229 () Bool)

(assert (=> b!788539 (= res!534229 (= (select (arr!20492 a!3186) (index!34765 lt!351830)) (select (arr!20492 a!3186) j!159)))))

(assert (=> b!788539 (=> res!534229 e!438304)))

(assert (=> b!788539 (= e!438302 e!438304)))

(declare-fun d!102795 () Bool)

(assert (=> d!102795 e!438305))

(declare-fun c!87560 () Bool)

(assert (=> d!102795 (= c!87560 (and (is-Intermediate!8099 lt!351830) (undefined!8911 lt!351830)))))

(assert (=> d!102795 (= lt!351830 e!438301)))

(declare-fun c!87562 () Bool)

(assert (=> d!102795 (= c!87562 (bvsge x!1131 #b01111111111111111111111111111110))))

(assert (=> d!102795 (= lt!351831 (select (arr!20492 a!3186) index!1321))))

(assert (=> d!102795 (validMask!0 mask!3328)))

(assert (=> d!102795 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20492 a!3186) j!159) a!3186 mask!3328) lt!351830)))

(declare-fun b!788534 () Bool)

(assert (=> b!788534 (= e!438301 (Intermediate!8099 true index!1321 x!1131))))

(assert (= (and d!102795 c!87562) b!788534))

(assert (= (and d!102795 (not c!87562)) b!788531))

(assert (= (and b!788531 c!87561) b!788538))

(assert (= (and b!788531 (not c!87561)) b!788536))

(assert (= (and d!102795 c!87560) b!788535))

(assert (= (and d!102795 (not c!87560)) b!788532))

(assert (= (and b!788532 res!534231) b!788539))

(assert (= (and b!788539 (not res!534229)) b!788537))

(assert (= (and b!788537 (not res!534228)) b!788533))

(assert (=> d!102795 m!729735))

(assert (=> d!102795 m!729717))

(declare-fun m!729881 () Bool)

(assert (=> b!788539 m!729881))

(assert (=> b!788536 m!729865))

(assert (=> b!788536 m!729865))

(assert (=> b!788536 m!729703))

(declare-fun m!729883 () Bool)

(assert (=> b!788536 m!729883))

(assert (=> b!788533 m!729881))

(assert (=> b!788537 m!729881))

(assert (=> b!788282 d!102795))

(declare-fun lt!351858 () SeekEntryResult!8099)

(declare-fun b!788601 () Bool)

(declare-fun e!438346 () SeekEntryResult!8099)

(assert (=> b!788601 (= e!438346 (seekKeyOrZeroReturnVacant!0 (x!65720 lt!351858) (index!34765 lt!351858) (index!34765 lt!351858) (select (arr!20492 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!788602 () Bool)

(declare-fun e!438344 () SeekEntryResult!8099)

(assert (=> b!788602 (= e!438344 (Found!8099 (index!34765 lt!351858)))))

(declare-fun d!102797 () Bool)

(declare-fun lt!351856 () SeekEntryResult!8099)

(assert (=> d!102797 (and (or (is-Undefined!8099 lt!351856) (not (is-Found!8099 lt!351856)) (and (bvsge (index!34764 lt!351856) #b00000000000000000000000000000000) (bvslt (index!34764 lt!351856) (size!20913 a!3186)))) (or (is-Undefined!8099 lt!351856) (is-Found!8099 lt!351856) (not (is-MissingZero!8099 lt!351856)) (and (bvsge (index!34763 lt!351856) #b00000000000000000000000000000000) (bvslt (index!34763 lt!351856) (size!20913 a!3186)))) (or (is-Undefined!8099 lt!351856) (is-Found!8099 lt!351856) (is-MissingZero!8099 lt!351856) (not (is-MissingVacant!8099 lt!351856)) (and (bvsge (index!34766 lt!351856) #b00000000000000000000000000000000) (bvslt (index!34766 lt!351856) (size!20913 a!3186)))) (or (is-Undefined!8099 lt!351856) (ite (is-Found!8099 lt!351856) (= (select (arr!20492 a!3186) (index!34764 lt!351856)) (select (arr!20492 a!3186) j!159)) (ite (is-MissingZero!8099 lt!351856) (= (select (arr!20492 a!3186) (index!34763 lt!351856)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!8099 lt!351856) (= (select (arr!20492 a!3186) (index!34766 lt!351856)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!438345 () SeekEntryResult!8099)

(assert (=> d!102797 (= lt!351856 e!438345)))

(declare-fun c!87585 () Bool)

(assert (=> d!102797 (= c!87585 (and (is-Intermediate!8099 lt!351858) (undefined!8911 lt!351858)))))

(assert (=> d!102797 (= lt!351858 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20492 a!3186) j!159) mask!3328) (select (arr!20492 a!3186) j!159) a!3186 mask!3328))))

(assert (=> d!102797 (validMask!0 mask!3328)))

(assert (=> d!102797 (= (seekEntryOrOpen!0 (select (arr!20492 a!3186) j!159) a!3186 mask!3328) lt!351856)))

(declare-fun b!788603 () Bool)

(assert (=> b!788603 (= e!438346 (MissingZero!8099 (index!34765 lt!351858)))))

(declare-fun b!788604 () Bool)

(assert (=> b!788604 (= e!438345 e!438344)))

(declare-fun lt!351857 () (_ BitVec 64))

(assert (=> b!788604 (= lt!351857 (select (arr!20492 a!3186) (index!34765 lt!351858)))))

(declare-fun c!87584 () Bool)

(assert (=> b!788604 (= c!87584 (= lt!351857 (select (arr!20492 a!3186) j!159)))))

(declare-fun b!788605 () Bool)

(declare-fun c!87586 () Bool)

(assert (=> b!788605 (= c!87586 (= lt!351857 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!788605 (= e!438344 e!438346)))

(declare-fun b!788606 () Bool)

(assert (=> b!788606 (= e!438345 Undefined!8099)))

(assert (= (and d!102797 c!87585) b!788606))

(assert (= (and d!102797 (not c!87585)) b!788604))

(assert (= (and b!788604 c!87584) b!788602))

(assert (= (and b!788604 (not c!87584)) b!788605))

(assert (= (and b!788605 c!87586) b!788603))

(assert (= (and b!788605 (not c!87586)) b!788601))

(assert (=> b!788601 m!729703))

(declare-fun m!729933 () Bool)

(assert (=> b!788601 m!729933))

(declare-fun m!729935 () Bool)

(assert (=> d!102797 m!729935))

(declare-fun m!729937 () Bool)

(assert (=> d!102797 m!729937))

(assert (=> d!102797 m!729717))

(declare-fun m!729939 () Bool)

(assert (=> d!102797 m!729939))

(assert (=> d!102797 m!729703))

(assert (=> d!102797 m!729731))

(assert (=> d!102797 m!729731))

(assert (=> d!102797 m!729703))

(assert (=> d!102797 m!729733))

(declare-fun m!729941 () Bool)

(assert (=> b!788604 m!729941))

(assert (=> b!788293 d!102797))

(declare-fun b!788617 () Bool)

(declare-fun e!438357 () Bool)

(declare-fun call!35293 () Bool)

(assert (=> b!788617 (= e!438357 call!35293)))

(declare-fun b!788618 () Bool)

(declare-fun e!438356 () Bool)

(assert (=> b!788618 (= e!438356 e!438357)))

(declare-fun lt!351866 () (_ BitVec 64))

(assert (=> b!788618 (= lt!351866 (select (arr!20492 a!3186) j!159))))

(declare-fun lt!351867 () Unit!27306)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!42815 (_ BitVec 64) (_ BitVec 32)) Unit!27306)

(assert (=> b!788618 (= lt!351867 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3186 lt!351866 j!159))))

(assert (=> b!788618 (arrayContainsKey!0 a!3186 lt!351866 #b00000000000000000000000000000000)))

(declare-fun lt!351865 () Unit!27306)

(assert (=> b!788618 (= lt!351865 lt!351867)))

(declare-fun res!534257 () Bool)

(assert (=> b!788618 (= res!534257 (= (seekEntryOrOpen!0 (select (arr!20492 a!3186) j!159) a!3186 mask!3328) (Found!8099 j!159)))))

(assert (=> b!788618 (=> (not res!534257) (not e!438357))))

(declare-fun bm!35290 () Bool)

(assert (=> bm!35290 (= call!35293 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!159 #b00000000000000000000000000000001) a!3186 mask!3328))))

(declare-fun d!102817 () Bool)

(declare-fun res!534258 () Bool)

(declare-fun e!438355 () Bool)

(assert (=> d!102817 (=> res!534258 e!438355)))

(assert (=> d!102817 (= res!534258 (bvsge j!159 (size!20913 a!3186)))))

(assert (=> d!102817 (= (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328) e!438355)))

(declare-fun b!788619 () Bool)

(assert (=> b!788619 (= e!438356 call!35293)))

(declare-fun b!788620 () Bool)

(assert (=> b!788620 (= e!438355 e!438356)))

(declare-fun c!87589 () Bool)

(assert (=> b!788620 (= c!87589 (validKeyInArray!0 (select (arr!20492 a!3186) j!159)))))

(assert (= (and d!102817 (not res!534258)) b!788620))

(assert (= (and b!788620 c!87589) b!788618))

(assert (= (and b!788620 (not c!87589)) b!788619))

(assert (= (and b!788618 res!534257) b!788617))

(assert (= (or b!788617 b!788619) bm!35290))

(assert (=> b!788618 m!729703))

(declare-fun m!729945 () Bool)

(assert (=> b!788618 m!729945))

(declare-fun m!729947 () Bool)

(assert (=> b!788618 m!729947))

(assert (=> b!788618 m!729703))

(assert (=> b!788618 m!729705))

(declare-fun m!729949 () Bool)

(assert (=> bm!35290 m!729949))

(assert (=> b!788620 m!729703))

(assert (=> b!788620 m!729703))

(assert (=> b!788620 m!729715))

(assert (=> b!788293 d!102817))

(declare-fun d!102823 () Bool)

(assert (=> d!102823 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!351870 () Unit!27306)

(declare-fun choose!38 (array!42815 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27306)

(assert (=> d!102823 (= lt!351870 (choose!38 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(assert (=> d!102823 (validMask!0 mask!3328)))

(assert (=> d!102823 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159) lt!351870)))

(declare-fun bs!21828 () Bool)

(assert (= bs!21828 d!102823))

(assert (=> bs!21828 m!729707))

(declare-fun m!729951 () Bool)

(assert (=> bs!21828 m!729951))

(assert (=> bs!21828 m!729717))

(assert (=> b!788293 d!102823))

(declare-fun d!102825 () Bool)

(declare-fun res!534265 () Bool)

(declare-fun e!438379 () Bool)

(assert (=> d!102825 (=> res!534265 e!438379)))

(assert (=> d!102825 (= res!534265 (bvsge #b00000000000000000000000000000000 (size!20913 a!3186)))))

(assert (=> d!102825 (= (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14544) e!438379)))

(declare-fun bm!35293 () Bool)

(declare-fun call!35296 () Bool)

(declare-fun c!87604 () Bool)

(assert (=> bm!35293 (= call!35296 (arrayNoDuplicates!0 a!3186 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!87604 (Cons!14543 (select (arr!20492 a!3186) #b00000000000000000000000000000000) Nil!14544) Nil!14544)))))

(declare-fun b!788655 () Bool)

(declare-fun e!438378 () Bool)

(assert (=> b!788655 (= e!438379 e!438378)))

(declare-fun res!534266 () Bool)

(assert (=> b!788655 (=> (not res!534266) (not e!438378))))

(declare-fun e!438380 () Bool)

(assert (=> b!788655 (= res!534266 (not e!438380))))

(declare-fun res!534267 () Bool)

(assert (=> b!788655 (=> (not res!534267) (not e!438380))))

(assert (=> b!788655 (= res!534267 (validKeyInArray!0 (select (arr!20492 a!3186) #b00000000000000000000000000000000)))))

(declare-fun b!788656 () Bool)

(declare-fun e!438381 () Bool)

(assert (=> b!788656 (= e!438378 e!438381)))

(assert (=> b!788656 (= c!87604 (validKeyInArray!0 (select (arr!20492 a!3186) #b00000000000000000000000000000000)))))

(declare-fun b!788657 () Bool)

(declare-fun contains!4113 (List!14547 (_ BitVec 64)) Bool)

(assert (=> b!788657 (= e!438380 (contains!4113 Nil!14544 (select (arr!20492 a!3186) #b00000000000000000000000000000000)))))

(declare-fun b!788658 () Bool)

(assert (=> b!788658 (= e!438381 call!35296)))

(declare-fun b!788659 () Bool)

(assert (=> b!788659 (= e!438381 call!35296)))

(assert (= (and d!102825 (not res!534265)) b!788655))

(assert (= (and b!788655 res!534267) b!788657))

(assert (= (and b!788655 res!534266) b!788656))

(assert (= (and b!788656 c!87604) b!788659))

(assert (= (and b!788656 (not c!87604)) b!788658))

(assert (= (or b!788659 b!788658) bm!35293))

(declare-fun m!729969 () Bool)

(assert (=> bm!35293 m!729969))

(declare-fun m!729971 () Bool)

(assert (=> bm!35293 m!729971))

(assert (=> b!788655 m!729969))

(assert (=> b!788655 m!729969))

(declare-fun m!729973 () Bool)

(assert (=> b!788655 m!729973))

(assert (=> b!788656 m!729969))

(assert (=> b!788656 m!729969))

(assert (=> b!788656 m!729973))

(assert (=> b!788657 m!729969))

(assert (=> b!788657 m!729969))

(declare-fun m!729975 () Bool)

(assert (=> b!788657 m!729975))

(assert (=> b!788284 d!102825))

(declare-fun d!102831 () Bool)

(assert (=> d!102831 (= (validKeyInArray!0 k!2102) (and (not (= k!2102 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2102 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!788290 d!102831))

(declare-fun b!788666 () Bool)

(declare-fun e!438387 () SeekEntryResult!8099)

(declare-fun lt!351884 () SeekEntryResult!8099)

(assert (=> b!788666 (= e!438387 (seekKeyOrZeroReturnVacant!0 (x!65720 lt!351884) (index!34765 lt!351884) (index!34765 lt!351884) k!2102 a!3186 mask!3328))))

(declare-fun b!788667 () Bool)

(declare-fun e!438385 () SeekEntryResult!8099)

(assert (=> b!788667 (= e!438385 (Found!8099 (index!34765 lt!351884)))))

(declare-fun d!102833 () Bool)

(declare-fun lt!351882 () SeekEntryResult!8099)

(assert (=> d!102833 (and (or (is-Undefined!8099 lt!351882) (not (is-Found!8099 lt!351882)) (and (bvsge (index!34764 lt!351882) #b00000000000000000000000000000000) (bvslt (index!34764 lt!351882) (size!20913 a!3186)))) (or (is-Undefined!8099 lt!351882) (is-Found!8099 lt!351882) (not (is-MissingZero!8099 lt!351882)) (and (bvsge (index!34763 lt!351882) #b00000000000000000000000000000000) (bvslt (index!34763 lt!351882) (size!20913 a!3186)))) (or (is-Undefined!8099 lt!351882) (is-Found!8099 lt!351882) (is-MissingZero!8099 lt!351882) (not (is-MissingVacant!8099 lt!351882)) (and (bvsge (index!34766 lt!351882) #b00000000000000000000000000000000) (bvslt (index!34766 lt!351882) (size!20913 a!3186)))) (or (is-Undefined!8099 lt!351882) (ite (is-Found!8099 lt!351882) (= (select (arr!20492 a!3186) (index!34764 lt!351882)) k!2102) (ite (is-MissingZero!8099 lt!351882) (= (select (arr!20492 a!3186) (index!34763 lt!351882)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!8099 lt!351882) (= (select (arr!20492 a!3186) (index!34766 lt!351882)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!438386 () SeekEntryResult!8099)

(assert (=> d!102833 (= lt!351882 e!438386)))

(declare-fun c!87609 () Bool)

(assert (=> d!102833 (= c!87609 (and (is-Intermediate!8099 lt!351884) (undefined!8911 lt!351884)))))

(assert (=> d!102833 (= lt!351884 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2102 mask!3328) k!2102 a!3186 mask!3328))))

(assert (=> d!102833 (validMask!0 mask!3328)))

(assert (=> d!102833 (= (seekEntryOrOpen!0 k!2102 a!3186 mask!3328) lt!351882)))

(declare-fun b!788668 () Bool)

(assert (=> b!788668 (= e!438387 (MissingZero!8099 (index!34765 lt!351884)))))

(declare-fun b!788669 () Bool)

(assert (=> b!788669 (= e!438386 e!438385)))

(declare-fun lt!351883 () (_ BitVec 64))

(assert (=> b!788669 (= lt!351883 (select (arr!20492 a!3186) (index!34765 lt!351884)))))

(declare-fun c!87608 () Bool)

(assert (=> b!788669 (= c!87608 (= lt!351883 k!2102))))

(declare-fun b!788670 () Bool)

(declare-fun c!87610 () Bool)

(assert (=> b!788670 (= c!87610 (= lt!351883 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!788670 (= e!438385 e!438387)))

(declare-fun b!788671 () Bool)

(assert (=> b!788671 (= e!438386 Undefined!8099)))

(assert (= (and d!102833 c!87609) b!788671))

(assert (= (and d!102833 (not c!87609)) b!788669))

(assert (= (and b!788669 c!87608) b!788667))

(assert (= (and b!788669 (not c!87608)) b!788670))

(assert (= (and b!788670 c!87610) b!788668))

(assert (= (and b!788670 (not c!87610)) b!788666))

(declare-fun m!729987 () Bool)

(assert (=> b!788666 m!729987))

(declare-fun m!729989 () Bool)

(assert (=> d!102833 m!729989))

(declare-fun m!729991 () Bool)

(assert (=> d!102833 m!729991))

(assert (=> d!102833 m!729717))

(declare-fun m!729993 () Bool)

(assert (=> d!102833 m!729993))

(declare-fun m!729995 () Bool)

(assert (=> d!102833 m!729995))

(assert (=> d!102833 m!729995))

(declare-fun m!729997 () Bool)

(assert (=> d!102833 m!729997))

(declare-fun m!729999 () Bool)

(assert (=> b!788669 m!729999))

(assert (=> b!788280 d!102833))

(declare-fun lt!351889 () SeekEntryResult!8099)

(declare-fun e!438393 () SeekEntryResult!8099)

(declare-fun b!788678 () Bool)

(assert (=> b!788678 (= e!438393 (seekKeyOrZeroReturnVacant!0 (x!65720 lt!351889) (index!34765 lt!351889) (index!34765 lt!351889) lt!351727 lt!351729 mask!3328))))

(declare-fun b!788679 () Bool)

(declare-fun e!438391 () SeekEntryResult!8099)

(assert (=> b!788679 (= e!438391 (Found!8099 (index!34765 lt!351889)))))

(declare-fun d!102837 () Bool)

(declare-fun lt!351887 () SeekEntryResult!8099)

(assert (=> d!102837 (and (or (is-Undefined!8099 lt!351887) (not (is-Found!8099 lt!351887)) (and (bvsge (index!34764 lt!351887) #b00000000000000000000000000000000) (bvslt (index!34764 lt!351887) (size!20913 lt!351729)))) (or (is-Undefined!8099 lt!351887) (is-Found!8099 lt!351887) (not (is-MissingZero!8099 lt!351887)) (and (bvsge (index!34763 lt!351887) #b00000000000000000000000000000000) (bvslt (index!34763 lt!351887) (size!20913 lt!351729)))) (or (is-Undefined!8099 lt!351887) (is-Found!8099 lt!351887) (is-MissingZero!8099 lt!351887) (not (is-MissingVacant!8099 lt!351887)) (and (bvsge (index!34766 lt!351887) #b00000000000000000000000000000000) (bvslt (index!34766 lt!351887) (size!20913 lt!351729)))) (or (is-Undefined!8099 lt!351887) (ite (is-Found!8099 lt!351887) (= (select (arr!20492 lt!351729) (index!34764 lt!351887)) lt!351727) (ite (is-MissingZero!8099 lt!351887) (= (select (arr!20492 lt!351729) (index!34763 lt!351887)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!8099 lt!351887) (= (select (arr!20492 lt!351729) (index!34766 lt!351887)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!438392 () SeekEntryResult!8099)

(assert (=> d!102837 (= lt!351887 e!438392)))

(declare-fun c!87615 () Bool)

(assert (=> d!102837 (= c!87615 (and (is-Intermediate!8099 lt!351889) (undefined!8911 lt!351889)))))

(assert (=> d!102837 (= lt!351889 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!351727 mask!3328) lt!351727 lt!351729 mask!3328))))

(assert (=> d!102837 (validMask!0 mask!3328)))

(assert (=> d!102837 (= (seekEntryOrOpen!0 lt!351727 lt!351729 mask!3328) lt!351887)))

(declare-fun b!788680 () Bool)

(assert (=> b!788680 (= e!438393 (MissingZero!8099 (index!34765 lt!351889)))))

(declare-fun b!788681 () Bool)

(assert (=> b!788681 (= e!438392 e!438391)))

(declare-fun lt!351888 () (_ BitVec 64))

(assert (=> b!788681 (= lt!351888 (select (arr!20492 lt!351729) (index!34765 lt!351889)))))

(declare-fun c!87614 () Bool)

(assert (=> b!788681 (= c!87614 (= lt!351888 lt!351727))))

(declare-fun b!788682 () Bool)

(declare-fun c!87616 () Bool)

(assert (=> b!788682 (= c!87616 (= lt!351888 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!788682 (= e!438391 e!438393)))

(declare-fun b!788683 () Bool)

(assert (=> b!788683 (= e!438392 Undefined!8099)))

(assert (= (and d!102837 c!87615) b!788683))

(assert (= (and d!102837 (not c!87615)) b!788681))

(assert (= (and b!788681 c!87614) b!788679))

(assert (= (and b!788681 (not c!87614)) b!788682))

(assert (= (and b!788682 c!87616) b!788680))

(assert (= (and b!788682 (not c!87616)) b!788678))

(declare-fun m!730009 () Bool)

(assert (=> b!788678 m!730009))

(declare-fun m!730011 () Bool)

(assert (=> d!102837 m!730011))

(declare-fun m!730013 () Bool)

(assert (=> d!102837 m!730013))

(assert (=> d!102837 m!729717))

(declare-fun m!730015 () Bool)

(assert (=> d!102837 m!730015))

(assert (=> d!102837 m!729739))

(assert (=> d!102837 m!729739))

(assert (=> d!102837 m!729743))

(declare-fun m!730017 () Bool)

(assert (=> b!788681 m!730017))

(assert (=> b!788291 d!102837))

(declare-fun b!788693 () Bool)

(declare-fun e!438399 () SeekEntryResult!8099)

(assert (=> b!788693 (= e!438399 (Found!8099 index!1321))))

(declare-fun b!788694 () Bool)

(declare-fun e!438401 () SeekEntryResult!8099)

(assert (=> b!788694 (= e!438401 (seekKeyOrZeroReturnVacant!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) index!1321 lt!351727 lt!351729 mask!3328))))

(declare-fun b!788695 () Bool)

(declare-fun c!87622 () Bool)

(declare-fun lt!351893 () (_ BitVec 64))

(assert (=> b!788695 (= c!87622 (= lt!351893 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!788695 (= e!438399 e!438401)))

(declare-fun b!788696 () Bool)

(declare-fun e!438400 () SeekEntryResult!8099)

(assert (=> b!788696 (= e!438400 Undefined!8099)))

(declare-fun d!102841 () Bool)

(declare-fun lt!351892 () SeekEntryResult!8099)

(assert (=> d!102841 (and (or (is-Undefined!8099 lt!351892) (not (is-Found!8099 lt!351892)) (and (bvsge (index!34764 lt!351892) #b00000000000000000000000000000000) (bvslt (index!34764 lt!351892) (size!20913 lt!351729)))) (or (is-Undefined!8099 lt!351892) (is-Found!8099 lt!351892) (not (is-MissingVacant!8099 lt!351892)) (not (= (index!34766 lt!351892) index!1321)) (and (bvsge (index!34766 lt!351892) #b00000000000000000000000000000000) (bvslt (index!34766 lt!351892) (size!20913 lt!351729)))) (or (is-Undefined!8099 lt!351892) (ite (is-Found!8099 lt!351892) (= (select (arr!20492 lt!351729) (index!34764 lt!351892)) lt!351727) (and (is-MissingVacant!8099 lt!351892) (= (index!34766 lt!351892) index!1321) (= (select (arr!20492 lt!351729) (index!34766 lt!351892)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!102841 (= lt!351892 e!438400)))

(declare-fun c!87620 () Bool)

(assert (=> d!102841 (= c!87620 (bvsge x!1131 #b01111111111111111111111111111110))))

(assert (=> d!102841 (= lt!351893 (select (arr!20492 lt!351729) index!1321))))

(assert (=> d!102841 (validMask!0 mask!3328)))

(assert (=> d!102841 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!351727 lt!351729 mask!3328) lt!351892)))

(declare-fun b!788697 () Bool)

(assert (=> b!788697 (= e!438401 (MissingVacant!8099 index!1321))))

(declare-fun b!788698 () Bool)

(assert (=> b!788698 (= e!438400 e!438399)))

(declare-fun c!87621 () Bool)

(assert (=> b!788698 (= c!87621 (= lt!351893 lt!351727))))

(assert (= (and d!102841 c!87620) b!788696))

(assert (= (and d!102841 (not c!87620)) b!788698))

(assert (= (and b!788698 c!87621) b!788693))

(assert (= (and b!788698 (not c!87621)) b!788695))

(assert (= (and b!788695 c!87622) b!788697))

(assert (= (and b!788695 (not c!87622)) b!788694))

(assert (=> b!788694 m!729865))

(assert (=> b!788694 m!729865))

(declare-fun m!730021 () Bool)

(assert (=> b!788694 m!730021))

(declare-fun m!730025 () Bool)

(assert (=> d!102841 m!730025))

(declare-fun m!730027 () Bool)

(assert (=> d!102841 m!730027))

(declare-fun m!730029 () Bool)

(assert (=> d!102841 m!730029))

(assert (=> d!102841 m!729717))

(assert (=> b!788291 d!102841))

(declare-fun b!788699 () Bool)

(declare-fun e!438404 () Bool)

(declare-fun call!35297 () Bool)

(assert (=> b!788699 (= e!438404 call!35297)))

(declare-fun b!788700 () Bool)

(declare-fun e!438403 () Bool)

(assert (=> b!788700 (= e!438403 e!438404)))

(declare-fun lt!351895 () (_ BitVec 64))

(assert (=> b!788700 (= lt!351895 (select (arr!20492 a!3186) #b00000000000000000000000000000000))))

(declare-fun lt!351896 () Unit!27306)

(assert (=> b!788700 (= lt!351896 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3186 lt!351895 #b00000000000000000000000000000000))))

(assert (=> b!788700 (arrayContainsKey!0 a!3186 lt!351895 #b00000000000000000000000000000000)))

(declare-fun lt!351894 () Unit!27306)

(assert (=> b!788700 (= lt!351894 lt!351896)))

(declare-fun res!534271 () Bool)

(assert (=> b!788700 (= res!534271 (= (seekEntryOrOpen!0 (select (arr!20492 a!3186) #b00000000000000000000000000000000) a!3186 mask!3328) (Found!8099 #b00000000000000000000000000000000)))))

(assert (=> b!788700 (=> (not res!534271) (not e!438404))))

(declare-fun bm!35294 () Bool)

(assert (=> bm!35294 (= call!35297 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3186 mask!3328))))

(declare-fun d!102845 () Bool)

(declare-fun res!534272 () Bool)

(declare-fun e!438402 () Bool)

(assert (=> d!102845 (=> res!534272 e!438402)))

(assert (=> d!102845 (= res!534272 (bvsge #b00000000000000000000000000000000 (size!20913 a!3186)))))

(assert (=> d!102845 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328) e!438402)))

(declare-fun b!788701 () Bool)

(assert (=> b!788701 (= e!438403 call!35297)))

(declare-fun b!788702 () Bool)

(assert (=> b!788702 (= e!438402 e!438403)))

(declare-fun c!87623 () Bool)

(assert (=> b!788702 (= c!87623 (validKeyInArray!0 (select (arr!20492 a!3186) #b00000000000000000000000000000000)))))

(assert (= (and d!102845 (not res!534272)) b!788702))

(assert (= (and b!788702 c!87623) b!788700))

(assert (= (and b!788702 (not c!87623)) b!788701))

(assert (= (and b!788700 res!534271) b!788699))

(assert (= (or b!788699 b!788701) bm!35294))

(assert (=> b!788700 m!729969))

(declare-fun m!730031 () Bool)

(assert (=> b!788700 m!730031))

(declare-fun m!730033 () Bool)

(assert (=> b!788700 m!730033))

(assert (=> b!788700 m!729969))

(declare-fun m!730035 () Bool)

(assert (=> b!788700 m!730035))

(declare-fun m!730037 () Bool)

(assert (=> bm!35294 m!730037))

(assert (=> b!788702 m!729969))

(assert (=> b!788702 m!729969))

(assert (=> b!788702 m!729973))

(assert (=> b!788292 d!102845))

(declare-fun b!788712 () Bool)

(declare-fun e!438410 () SeekEntryResult!8099)

(assert (=> b!788712 (= e!438410 (Found!8099 resIntermediateIndex!5))))

(declare-fun b!788713 () Bool)

(declare-fun e!438412 () SeekEntryResult!8099)

(assert (=> b!788713 (= e!438412 (seekKeyOrZeroReturnVacant!0 (bvadd resIntermediateX!5 #b00000000000000000000000000000001) (nextIndex!0 resIntermediateIndex!5 resIntermediateX!5 mask!3328) resIntermediateIndex!5 (select (arr!20492 a!3186) j!159) a!3186 mask!3328))))


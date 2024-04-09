; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65480 () Bool)

(assert start!65480)

(declare-fun b!745803 () Bool)

(declare-fun e!416547 () Bool)

(declare-fun e!416545 () Bool)

(assert (=> b!745803 (= e!416547 e!416545)))

(declare-fun res!502777 () Bool)

(assert (=> b!745803 (=> (not res!502777) (not e!416545))))

(declare-datatypes ((SeekEntryResult!7520 0))(
  ( (MissingZero!7520 (index!32447 (_ BitVec 32))) (Found!7520 (index!32448 (_ BitVec 32))) (Intermediate!7520 (undefined!8332 Bool) (index!32449 (_ BitVec 32)) (x!63423 (_ BitVec 32))) (Undefined!7520) (MissingVacant!7520 (index!32450 (_ BitVec 32))) )
))
(declare-fun lt!331400 () SeekEntryResult!7520)

(declare-fun lt!331406 () SeekEntryResult!7520)

(assert (=> b!745803 (= res!502777 (= lt!331400 lt!331406))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun lt!331403 () (_ BitVec 64))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-datatypes ((array!41606 0))(
  ( (array!41607 (arr!19913 (Array (_ BitVec 32) (_ BitVec 64))) (size!20334 (_ BitVec 32))) )
))
(declare-fun lt!331398 () array!41606)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41606 (_ BitVec 32)) SeekEntryResult!7520)

(assert (=> b!745803 (= lt!331406 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!331403 lt!331398 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!745803 (= lt!331400 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!331403 mask!3328) lt!331403 lt!331398 mask!3328))))

(declare-fun a!3186 () array!41606)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!745803 (= lt!331403 (select (store (arr!19913 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!745803 (= lt!331398 (array!41607 (store (arr!19913 a!3186) i!1173 k!2102) (size!20334 a!3186)))))

(declare-fun b!745804 () Bool)

(declare-fun res!502768 () Bool)

(declare-fun e!416542 () Bool)

(assert (=> b!745804 (=> (not res!502768) (not e!416542))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41606 (_ BitVec 32)) Bool)

(assert (=> b!745804 (= res!502768 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun lt!331405 () SeekEntryResult!7520)

(declare-fun e!416549 () Bool)

(declare-fun b!745805 () Bool)

(assert (=> b!745805 (= e!416549 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19913 a!3186) j!159) a!3186 mask!3328) lt!331405))))

(declare-fun b!745806 () Bool)

(declare-fun res!502767 () Bool)

(declare-fun e!416544 () Bool)

(assert (=> b!745806 (=> (not res!502767) (not e!416544))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!745806 (= res!502767 (validKeyInArray!0 k!2102))))

(declare-fun b!745807 () Bool)

(declare-fun e!416543 () Bool)

(assert (=> b!745807 (= e!416543 (bvsge mask!3328 #b00000000000000000000000000000000))))

(declare-fun lt!331401 () SeekEntryResult!7520)

(declare-fun lt!331404 () SeekEntryResult!7520)

(assert (=> b!745807 (= lt!331401 lt!331404)))

(declare-fun b!745808 () Bool)

(declare-fun res!502771 () Bool)

(assert (=> b!745808 (=> (not res!502771) (not e!416542))))

(declare-datatypes ((List!13968 0))(
  ( (Nil!13965) (Cons!13964 (h!15036 (_ BitVec 64)) (t!20291 List!13968)) )
))
(declare-fun arrayNoDuplicates!0 (array!41606 (_ BitVec 32) List!13968) Bool)

(assert (=> b!745808 (= res!502771 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13965))))

(declare-fun b!745809 () Bool)

(declare-fun res!502773 () Bool)

(assert (=> b!745809 (=> (not res!502773) (not e!416544))))

(declare-fun arrayContainsKey!0 (array!41606 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!745809 (= res!502773 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun res!502764 () Bool)

(assert (=> start!65480 (=> (not res!502764) (not e!416544))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65480 (= res!502764 (validMask!0 mask!3328))))

(assert (=> start!65480 e!416544))

(assert (=> start!65480 true))

(declare-fun array_inv!15687 (array!41606) Bool)

(assert (=> start!65480 (array_inv!15687 a!3186)))

(declare-fun b!745810 () Bool)

(declare-fun e!416550 () Bool)

(assert (=> b!745810 (= e!416545 (not e!416550))))

(declare-fun res!502770 () Bool)

(assert (=> b!745810 (=> res!502770 e!416550)))

(assert (=> b!745810 (= res!502770 (or (not (is-Intermediate!7520 lt!331406)) (bvslt x!1131 (x!63423 lt!331406)) (not (= x!1131 (x!63423 lt!331406))) (not (= index!1321 (index!32449 lt!331406)))))))

(declare-fun e!416548 () Bool)

(assert (=> b!745810 e!416548))

(declare-fun res!502765 () Bool)

(assert (=> b!745810 (=> (not res!502765) (not e!416548))))

(declare-fun lt!331402 () SeekEntryResult!7520)

(assert (=> b!745810 (= res!502765 (= lt!331401 lt!331402))))

(assert (=> b!745810 (= lt!331402 (Found!7520 j!159))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41606 (_ BitVec 32)) SeekEntryResult!7520)

(assert (=> b!745810 (= lt!331401 (seekEntryOrOpen!0 (select (arr!19913 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!745810 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-datatypes ((Unit!25520 0))(
  ( (Unit!25521) )
))
(declare-fun lt!331397 () Unit!25520)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41606 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25520)

(assert (=> b!745810 (= lt!331397 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!745811 () Bool)

(declare-fun res!502774 () Bool)

(assert (=> b!745811 (=> (not res!502774) (not e!416542))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!745811 (= res!502774 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20334 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20334 a!3186))))))

(declare-fun b!745812 () Bool)

(declare-fun res!502766 () Bool)

(assert (=> b!745812 (=> (not res!502766) (not e!416547))))

(assert (=> b!745812 (= res!502766 e!416549)))

(declare-fun c!81900 () Bool)

(assert (=> b!745812 (= c!81900 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!745813 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41606 (_ BitVec 32)) SeekEntryResult!7520)

(assert (=> b!745813 (= e!416548 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19913 a!3186) j!159) a!3186 mask!3328) lt!331402))))

(declare-fun b!745814 () Bool)

(declare-fun res!502779 () Bool)

(assert (=> b!745814 (=> (not res!502779) (not e!416544))))

(assert (=> b!745814 (= res!502779 (and (= (size!20334 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20334 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20334 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!745815 () Bool)

(assert (=> b!745815 (= e!416544 e!416542)))

(declare-fun res!502778 () Bool)

(assert (=> b!745815 (=> (not res!502778) (not e!416542))))

(declare-fun lt!331399 () SeekEntryResult!7520)

(assert (=> b!745815 (= res!502778 (or (= lt!331399 (MissingZero!7520 i!1173)) (= lt!331399 (MissingVacant!7520 i!1173))))))

(assert (=> b!745815 (= lt!331399 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!745816 () Bool)

(assert (=> b!745816 (= e!416550 e!416543)))

(declare-fun res!502769 () Bool)

(assert (=> b!745816 (=> res!502769 e!416543)))

(assert (=> b!745816 (= res!502769 (or (not (= lt!331404 lt!331402)) (= (select (store (arr!19913 a!3186) i!1173 k!2102) index!1321) lt!331403) (not (= (select (store (arr!19913 a!3186) i!1173 k!2102) index!1321) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!745816 (= lt!331404 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19913 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!745817 () Bool)

(declare-fun res!502775 () Bool)

(assert (=> b!745817 (=> (not res!502775) (not e!416544))))

(assert (=> b!745817 (= res!502775 (validKeyInArray!0 (select (arr!19913 a!3186) j!159)))))

(declare-fun b!745818 () Bool)

(declare-fun res!502772 () Bool)

(assert (=> b!745818 (=> (not res!502772) (not e!416547))))

(assert (=> b!745818 (= res!502772 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19913 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!745819 () Bool)

(assert (=> b!745819 (= e!416542 e!416547)))

(declare-fun res!502776 () Bool)

(assert (=> b!745819 (=> (not res!502776) (not e!416547))))

(assert (=> b!745819 (= res!502776 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19913 a!3186) j!159) mask!3328) (select (arr!19913 a!3186) j!159) a!3186 mask!3328) lt!331405))))

(assert (=> b!745819 (= lt!331405 (Intermediate!7520 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!745820 () Bool)

(assert (=> b!745820 (= e!416549 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19913 a!3186) j!159) a!3186 mask!3328) (Found!7520 j!159)))))

(assert (= (and start!65480 res!502764) b!745814))

(assert (= (and b!745814 res!502779) b!745817))

(assert (= (and b!745817 res!502775) b!745806))

(assert (= (and b!745806 res!502767) b!745809))

(assert (= (and b!745809 res!502773) b!745815))

(assert (= (and b!745815 res!502778) b!745804))

(assert (= (and b!745804 res!502768) b!745808))

(assert (= (and b!745808 res!502771) b!745811))

(assert (= (and b!745811 res!502774) b!745819))

(assert (= (and b!745819 res!502776) b!745818))

(assert (= (and b!745818 res!502772) b!745812))

(assert (= (and b!745812 c!81900) b!745805))

(assert (= (and b!745812 (not c!81900)) b!745820))

(assert (= (and b!745812 res!502766) b!745803))

(assert (= (and b!745803 res!502777) b!745810))

(assert (= (and b!745810 res!502765) b!745813))

(assert (= (and b!745810 (not res!502770)) b!745816))

(assert (= (and b!745816 (not res!502769)) b!745807))

(declare-fun m!696217 () Bool)

(assert (=> b!745803 m!696217))

(declare-fun m!696219 () Bool)

(assert (=> b!745803 m!696219))

(declare-fun m!696221 () Bool)

(assert (=> b!745803 m!696221))

(declare-fun m!696223 () Bool)

(assert (=> b!745803 m!696223))

(declare-fun m!696225 () Bool)

(assert (=> b!745803 m!696225))

(assert (=> b!745803 m!696223))

(declare-fun m!696227 () Bool)

(assert (=> b!745819 m!696227))

(assert (=> b!745819 m!696227))

(declare-fun m!696229 () Bool)

(assert (=> b!745819 m!696229))

(assert (=> b!745819 m!696229))

(assert (=> b!745819 m!696227))

(declare-fun m!696231 () Bool)

(assert (=> b!745819 m!696231))

(declare-fun m!696233 () Bool)

(assert (=> b!745806 m!696233))

(assert (=> b!745820 m!696227))

(assert (=> b!745820 m!696227))

(declare-fun m!696235 () Bool)

(assert (=> b!745820 m!696235))

(declare-fun m!696237 () Bool)

(assert (=> b!745818 m!696237))

(declare-fun m!696239 () Bool)

(assert (=> start!65480 m!696239))

(declare-fun m!696241 () Bool)

(assert (=> start!65480 m!696241))

(assert (=> b!745813 m!696227))

(assert (=> b!745813 m!696227))

(declare-fun m!696243 () Bool)

(assert (=> b!745813 m!696243))

(declare-fun m!696245 () Bool)

(assert (=> b!745809 m!696245))

(declare-fun m!696247 () Bool)

(assert (=> b!745808 m!696247))

(assert (=> b!745805 m!696227))

(assert (=> b!745805 m!696227))

(declare-fun m!696249 () Bool)

(assert (=> b!745805 m!696249))

(declare-fun m!696251 () Bool)

(assert (=> b!745815 m!696251))

(declare-fun m!696253 () Bool)

(assert (=> b!745804 m!696253))

(assert (=> b!745810 m!696227))

(assert (=> b!745810 m!696227))

(declare-fun m!696255 () Bool)

(assert (=> b!745810 m!696255))

(declare-fun m!696257 () Bool)

(assert (=> b!745810 m!696257))

(declare-fun m!696259 () Bool)

(assert (=> b!745810 m!696259))

(assert (=> b!745816 m!696217))

(declare-fun m!696261 () Bool)

(assert (=> b!745816 m!696261))

(assert (=> b!745816 m!696227))

(assert (=> b!745816 m!696227))

(assert (=> b!745816 m!696235))

(assert (=> b!745817 m!696227))

(assert (=> b!745817 m!696227))

(declare-fun m!696263 () Bool)

(assert (=> b!745817 m!696263))

(push 1)


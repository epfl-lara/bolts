; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!67476 () Bool)

(assert start!67476)

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!42597 0))(
  ( (array!42598 (arr!20386 (Array (_ BitVec 32) (_ BitVec 64))) (size!20807 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42597)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun b!780292 () Bool)

(declare-fun e!434088 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7993 0))(
  ( (MissingZero!7993 (index!34339 (_ BitVec 32))) (Found!7993 (index!34340 (_ BitVec 32))) (Intermediate!7993 (undefined!8805 Bool) (index!34341 (_ BitVec 32)) (x!65316 (_ BitVec 32))) (Undefined!7993) (MissingVacant!7993 (index!34342 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42597 (_ BitVec 32)) SeekEntryResult!7993)

(assert (=> b!780292 (= e!434088 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20386 a!3186) j!159) a!3186 mask!3328) (Found!7993 j!159)))))

(declare-fun res!528051 () Bool)

(declare-fun e!434081 () Bool)

(assert (=> start!67476 (=> (not res!528051) (not e!434081))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67476 (= res!528051 (validMask!0 mask!3328))))

(assert (=> start!67476 e!434081))

(assert (=> start!67476 true))

(declare-fun array_inv!16160 (array!42597) Bool)

(assert (=> start!67476 (array_inv!16160 a!3186)))

(declare-fun b!780293 () Bool)

(declare-fun res!528067 () Bool)

(declare-fun e!434084 () Bool)

(assert (=> b!780293 (=> (not res!528067) (not e!434084))))

(declare-datatypes ((List!14441 0))(
  ( (Nil!14438) (Cons!14437 (h!15554 (_ BitVec 64)) (t!20764 List!14441)) )
))
(declare-fun arrayNoDuplicates!0 (array!42597 (_ BitVec 32) List!14441) Bool)

(assert (=> b!780293 (= res!528067 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14438))))

(declare-fun b!780294 () Bool)

(declare-fun e!434086 () Bool)

(assert (=> b!780294 (= e!434086 true)))

(declare-datatypes ((Unit!26882 0))(
  ( (Unit!26883) )
))
(declare-fun lt!347741 () Unit!26882)

(declare-fun e!434087 () Unit!26882)

(assert (=> b!780294 (= lt!347741 e!434087)))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun c!86525 () Bool)

(assert (=> b!780294 (= c!86525 (= (select (store (arr!20386 a!3186) i!1173 k0!2102) index!1321) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!780295 () Bool)

(declare-fun Unit!26884 () Unit!26882)

(assert (=> b!780295 (= e!434087 Unit!26884)))

(assert (=> b!780295 false))

(declare-fun lt!347742 () SeekEntryResult!7993)

(declare-fun b!780296 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42597 (_ BitVec 32)) SeekEntryResult!7993)

(assert (=> b!780296 (= e!434088 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20386 a!3186) j!159) a!3186 mask!3328) lt!347742))))

(declare-fun b!780297 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun lt!347747 () SeekEntryResult!7993)

(declare-fun e!434085 () Bool)

(assert (=> b!780297 (= e!434085 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20386 a!3186) j!159) a!3186 mask!3328) lt!347747))))

(declare-fun b!780298 () Bool)

(assert (=> b!780298 (= e!434081 e!434084)))

(declare-fun res!528053 () Bool)

(assert (=> b!780298 (=> (not res!528053) (not e!434084))))

(declare-fun lt!347740 () SeekEntryResult!7993)

(assert (=> b!780298 (= res!528053 (or (= lt!347740 (MissingZero!7993 i!1173)) (= lt!347740 (MissingVacant!7993 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42597 (_ BitVec 32)) SeekEntryResult!7993)

(assert (=> b!780298 (= lt!347740 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!780299 () Bool)

(declare-fun res!528057 () Bool)

(assert (=> b!780299 (=> res!528057 e!434086)))

(declare-fun lt!347744 () (_ BitVec 64))

(assert (=> b!780299 (= res!528057 (= (select (store (arr!20386 a!3186) i!1173 k0!2102) index!1321) lt!347744))))

(declare-fun b!780300 () Bool)

(declare-fun e!434082 () Bool)

(assert (=> b!780300 (= e!434082 (not e!434086))))

(declare-fun res!528058 () Bool)

(assert (=> b!780300 (=> res!528058 e!434086)))

(declare-fun lt!347743 () SeekEntryResult!7993)

(get-info :version)

(assert (=> b!780300 (= res!528058 (or (not ((_ is Intermediate!7993) lt!347743)) (bvslt x!1131 (x!65316 lt!347743)) (not (= x!1131 (x!65316 lt!347743))) (not (= index!1321 (index!34341 lt!347743)))))))

(assert (=> b!780300 e!434085))

(declare-fun res!528059 () Bool)

(assert (=> b!780300 (=> (not res!528059) (not e!434085))))

(declare-fun lt!347748 () SeekEntryResult!7993)

(assert (=> b!780300 (= res!528059 (= lt!347748 lt!347747))))

(assert (=> b!780300 (= lt!347747 (Found!7993 j!159))))

(assert (=> b!780300 (= lt!347748 (seekEntryOrOpen!0 (select (arr!20386 a!3186) j!159) a!3186 mask!3328))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42597 (_ BitVec 32)) Bool)

(assert (=> b!780300 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!347745 () Unit!26882)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42597 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26882)

(assert (=> b!780300 (= lt!347745 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!780301 () Bool)

(declare-fun res!528052 () Bool)

(assert (=> b!780301 (=> (not res!528052) (not e!434081))))

(assert (=> b!780301 (= res!528052 (and (= (size!20807 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20807 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20807 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!780302 () Bool)

(declare-fun res!528066 () Bool)

(assert (=> b!780302 (=> (not res!528066) (not e!434081))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!780302 (= res!528066 (validKeyInArray!0 k0!2102))))

(declare-fun b!780303 () Bool)

(declare-fun e!434089 () Bool)

(assert (=> b!780303 (= e!434084 e!434089)))

(declare-fun res!528064 () Bool)

(assert (=> b!780303 (=> (not res!528064) (not e!434089))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!780303 (= res!528064 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20386 a!3186) j!159) mask!3328) (select (arr!20386 a!3186) j!159) a!3186 mask!3328) lt!347742))))

(assert (=> b!780303 (= lt!347742 (Intermediate!7993 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!780304 () Bool)

(declare-fun res!528065 () Bool)

(assert (=> b!780304 (=> (not res!528065) (not e!434089))))

(assert (=> b!780304 (= res!528065 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20386 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!780305 () Bool)

(declare-fun res!528063 () Bool)

(assert (=> b!780305 (=> res!528063 e!434086)))

(assert (=> b!780305 (= res!528063 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20386 a!3186) j!159) a!3186 mask!3328) lt!347747)))))

(declare-fun b!780306 () Bool)

(assert (=> b!780306 (= e!434089 e!434082)))

(declare-fun res!528061 () Bool)

(assert (=> b!780306 (=> (not res!528061) (not e!434082))))

(declare-fun lt!347749 () SeekEntryResult!7993)

(assert (=> b!780306 (= res!528061 (= lt!347749 lt!347743))))

(declare-fun lt!347746 () array!42597)

(assert (=> b!780306 (= lt!347743 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!347744 lt!347746 mask!3328))))

(assert (=> b!780306 (= lt!347749 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!347744 mask!3328) lt!347744 lt!347746 mask!3328))))

(assert (=> b!780306 (= lt!347744 (select (store (arr!20386 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!780306 (= lt!347746 (array!42598 (store (arr!20386 a!3186) i!1173 k0!2102) (size!20807 a!3186)))))

(declare-fun b!780307 () Bool)

(declare-fun res!528054 () Bool)

(assert (=> b!780307 (=> (not res!528054) (not e!434081))))

(declare-fun arrayContainsKey!0 (array!42597 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!780307 (= res!528054 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!780308 () Bool)

(declare-fun res!528060 () Bool)

(assert (=> b!780308 (=> (not res!528060) (not e!434084))))

(assert (=> b!780308 (= res!528060 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!780309 () Bool)

(declare-fun Unit!26885 () Unit!26882)

(assert (=> b!780309 (= e!434087 Unit!26885)))

(declare-fun b!780310 () Bool)

(declare-fun res!528062 () Bool)

(assert (=> b!780310 (=> (not res!528062) (not e!434081))))

(assert (=> b!780310 (= res!528062 (validKeyInArray!0 (select (arr!20386 a!3186) j!159)))))

(declare-fun b!780311 () Bool)

(declare-fun res!528055 () Bool)

(assert (=> b!780311 (=> (not res!528055) (not e!434084))))

(assert (=> b!780311 (= res!528055 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20807 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20807 a!3186))))))

(declare-fun b!780312 () Bool)

(declare-fun res!528056 () Bool)

(assert (=> b!780312 (=> (not res!528056) (not e!434089))))

(assert (=> b!780312 (= res!528056 e!434088)))

(declare-fun c!86526 () Bool)

(assert (=> b!780312 (= c!86526 (bvsle x!1131 resIntermediateX!5))))

(assert (= (and start!67476 res!528051) b!780301))

(assert (= (and b!780301 res!528052) b!780310))

(assert (= (and b!780310 res!528062) b!780302))

(assert (= (and b!780302 res!528066) b!780307))

(assert (= (and b!780307 res!528054) b!780298))

(assert (= (and b!780298 res!528053) b!780308))

(assert (= (and b!780308 res!528060) b!780293))

(assert (= (and b!780293 res!528067) b!780311))

(assert (= (and b!780311 res!528055) b!780303))

(assert (= (and b!780303 res!528064) b!780304))

(assert (= (and b!780304 res!528065) b!780312))

(assert (= (and b!780312 c!86526) b!780296))

(assert (= (and b!780312 (not c!86526)) b!780292))

(assert (= (and b!780312 res!528056) b!780306))

(assert (= (and b!780306 res!528061) b!780300))

(assert (= (and b!780300 res!528059) b!780297))

(assert (= (and b!780300 (not res!528058)) b!780305))

(assert (= (and b!780305 (not res!528063)) b!780299))

(assert (= (and b!780299 (not res!528057)) b!780294))

(assert (= (and b!780294 c!86525) b!780295))

(assert (= (and b!780294 (not c!86525)) b!780309))

(declare-fun m!723673 () Bool)

(assert (=> b!780303 m!723673))

(assert (=> b!780303 m!723673))

(declare-fun m!723675 () Bool)

(assert (=> b!780303 m!723675))

(assert (=> b!780303 m!723675))

(assert (=> b!780303 m!723673))

(declare-fun m!723677 () Bool)

(assert (=> b!780303 m!723677))

(declare-fun m!723679 () Bool)

(assert (=> start!67476 m!723679))

(declare-fun m!723681 () Bool)

(assert (=> start!67476 m!723681))

(declare-fun m!723683 () Bool)

(assert (=> b!780304 m!723683))

(declare-fun m!723685 () Bool)

(assert (=> b!780302 m!723685))

(declare-fun m!723687 () Bool)

(assert (=> b!780299 m!723687))

(declare-fun m!723689 () Bool)

(assert (=> b!780299 m!723689))

(assert (=> b!780296 m!723673))

(assert (=> b!780296 m!723673))

(declare-fun m!723691 () Bool)

(assert (=> b!780296 m!723691))

(assert (=> b!780300 m!723673))

(assert (=> b!780300 m!723673))

(declare-fun m!723693 () Bool)

(assert (=> b!780300 m!723693))

(declare-fun m!723695 () Bool)

(assert (=> b!780300 m!723695))

(declare-fun m!723697 () Bool)

(assert (=> b!780300 m!723697))

(declare-fun m!723699 () Bool)

(assert (=> b!780308 m!723699))

(assert (=> b!780305 m!723673))

(assert (=> b!780305 m!723673))

(declare-fun m!723701 () Bool)

(assert (=> b!780305 m!723701))

(declare-fun m!723703 () Bool)

(assert (=> b!780307 m!723703))

(assert (=> b!780294 m!723687))

(assert (=> b!780294 m!723689))

(assert (=> b!780297 m!723673))

(assert (=> b!780297 m!723673))

(declare-fun m!723705 () Bool)

(assert (=> b!780297 m!723705))

(declare-fun m!723707 () Bool)

(assert (=> b!780293 m!723707))

(assert (=> b!780292 m!723673))

(assert (=> b!780292 m!723673))

(assert (=> b!780292 m!723701))

(assert (=> b!780310 m!723673))

(assert (=> b!780310 m!723673))

(declare-fun m!723709 () Bool)

(assert (=> b!780310 m!723709))

(declare-fun m!723711 () Bool)

(assert (=> b!780298 m!723711))

(declare-fun m!723713 () Bool)

(assert (=> b!780306 m!723713))

(assert (=> b!780306 m!723687))

(declare-fun m!723715 () Bool)

(assert (=> b!780306 m!723715))

(declare-fun m!723717 () Bool)

(assert (=> b!780306 m!723717))

(assert (=> b!780306 m!723715))

(declare-fun m!723719 () Bool)

(assert (=> b!780306 m!723719))

(check-sat (not b!780307) (not b!780306) (not b!780310) (not b!780303) (not b!780305) (not b!780296) (not b!780293) (not b!780308) (not b!780298) (not b!780297) (not b!780292) (not b!780300) (not b!780302) (not start!67476))
(check-sat)

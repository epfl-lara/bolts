; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65542 () Bool)

(assert start!65542)

(declare-fun b!747600 () Bool)

(declare-fun e!417395 () Bool)

(declare-fun e!417392 () Bool)

(assert (=> b!747600 (= e!417395 e!417392)))

(declare-fun res!504312 () Bool)

(assert (=> b!747600 (=> (not res!504312) (not e!417392))))

(declare-datatypes ((SeekEntryResult!7551 0))(
  ( (MissingZero!7551 (index!32571 (_ BitVec 32))) (Found!7551 (index!32572 (_ BitVec 32))) (Intermediate!7551 (undefined!8363 Bool) (index!32573 (_ BitVec 32)) (x!63542 (_ BitVec 32))) (Undefined!7551) (MissingVacant!7551 (index!32574 (_ BitVec 32))) )
))
(declare-fun lt!332332 () SeekEntryResult!7551)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!747600 (= res!504312 (or (= lt!332332 (MissingZero!7551 i!1173)) (= lt!332332 (MissingVacant!7551 i!1173))))))

(declare-datatypes ((array!41668 0))(
  ( (array!41669 (arr!19944 (Array (_ BitVec 32) (_ BitVec 64))) (size!20365 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41668)

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41668 (_ BitVec 32)) SeekEntryResult!7551)

(assert (=> b!747600 (= lt!332332 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!747601 () Bool)

(declare-fun e!417389 () Bool)

(assert (=> b!747601 (= e!417392 e!417389)))

(declare-fun res!504310 () Bool)

(assert (=> b!747601 (=> (not res!504310) (not e!417389))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun lt!332330 () SeekEntryResult!7551)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41668 (_ BitVec 32)) SeekEntryResult!7551)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!747601 (= res!504310 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19944 a!3186) j!159) mask!3328) (select (arr!19944 a!3186) j!159) a!3186 mask!3328) lt!332330))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!747601 (= lt!332330 (Intermediate!7551 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun e!417393 () Bool)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun b!747602 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(assert (=> b!747602 (= e!417393 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19944 a!3186) j!159) a!3186 mask!3328) lt!332330))))

(declare-fun b!747603 () Bool)

(declare-fun res!504309 () Bool)

(assert (=> b!747603 (=> (not res!504309) (not e!417392))))

(declare-datatypes ((List!13999 0))(
  ( (Nil!13996) (Cons!13995 (h!15067 (_ BitVec 64)) (t!20322 List!13999)) )
))
(declare-fun arrayNoDuplicates!0 (array!41668 (_ BitVec 32) List!13999) Bool)

(assert (=> b!747603 (= res!504309 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13996))))

(declare-fun b!747604 () Bool)

(declare-fun e!417396 () Bool)

(assert (=> b!747604 (= e!417396 true)))

(assert (=> b!747604 (= (select (store (arr!19944 a!3186) i!1173 k!2102) index!1321) #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-datatypes ((Unit!25606 0))(
  ( (Unit!25607) )
))
(declare-fun lt!332329 () Unit!25606)

(declare-fun e!417390 () Unit!25606)

(assert (=> b!747604 (= lt!332329 e!417390)))

(declare-fun c!82032 () Bool)

(assert (=> b!747604 (= c!82032 (= (select (store (arr!19944 a!3186) i!1173 k!2102) index!1321) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!747605 () Bool)

(declare-fun res!504304 () Bool)

(assert (=> b!747605 (=> res!504304 e!417396)))

(declare-fun lt!332334 () (_ BitVec 64))

(assert (=> b!747605 (= res!504304 (= (select (store (arr!19944 a!3186) i!1173 k!2102) index!1321) lt!332334))))

(declare-fun b!747606 () Bool)

(declare-fun e!417391 () Bool)

(assert (=> b!747606 (= e!417391 (not e!417396))))

(declare-fun res!504299 () Bool)

(assert (=> b!747606 (=> res!504299 e!417396)))

(declare-fun lt!332336 () SeekEntryResult!7551)

(assert (=> b!747606 (= res!504299 (or (not (is-Intermediate!7551 lt!332336)) (bvslt x!1131 (x!63542 lt!332336)) (not (= x!1131 (x!63542 lt!332336))) (not (= index!1321 (index!32573 lt!332336)))))))

(declare-fun e!417388 () Bool)

(assert (=> b!747606 e!417388))

(declare-fun res!504300 () Bool)

(assert (=> b!747606 (=> (not res!504300) (not e!417388))))

(declare-fun lt!332327 () SeekEntryResult!7551)

(declare-fun lt!332331 () SeekEntryResult!7551)

(assert (=> b!747606 (= res!504300 (= lt!332327 lt!332331))))

(assert (=> b!747606 (= lt!332331 (Found!7551 j!159))))

(assert (=> b!747606 (= lt!332327 (seekEntryOrOpen!0 (select (arr!19944 a!3186) j!159) a!3186 mask!3328))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41668 (_ BitVec 32)) Bool)

(assert (=> b!747606 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!332335 () Unit!25606)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41668 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25606)

(assert (=> b!747606 (= lt!332335 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!747607 () Bool)

(declare-fun Unit!25608 () Unit!25606)

(assert (=> b!747607 (= e!417390 Unit!25608)))

(declare-fun b!747608 () Bool)

(declare-fun res!504301 () Bool)

(assert (=> b!747608 (=> (not res!504301) (not e!417395))))

(declare-fun arrayContainsKey!0 (array!41668 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!747608 (= res!504301 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!747609 () Bool)

(declare-fun res!504315 () Bool)

(assert (=> b!747609 (=> (not res!504315) (not e!417395))))

(assert (=> b!747609 (= res!504315 (and (= (size!20365 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20365 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20365 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!747610 () Bool)

(declare-fun res!504302 () Bool)

(assert (=> b!747610 (=> (not res!504302) (not e!417389))))

(assert (=> b!747610 (= res!504302 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19944 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!747612 () Bool)

(assert (=> b!747612 (= e!417389 e!417391)))

(declare-fun res!504307 () Bool)

(assert (=> b!747612 (=> (not res!504307) (not e!417391))))

(declare-fun lt!332333 () SeekEntryResult!7551)

(assert (=> b!747612 (= res!504307 (= lt!332333 lt!332336))))

(declare-fun lt!332328 () array!41668)

(assert (=> b!747612 (= lt!332336 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!332334 lt!332328 mask!3328))))

(assert (=> b!747612 (= lt!332333 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!332334 mask!3328) lt!332334 lt!332328 mask!3328))))

(assert (=> b!747612 (= lt!332334 (select (store (arr!19944 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!747612 (= lt!332328 (array!41669 (store (arr!19944 a!3186) i!1173 k!2102) (size!20365 a!3186)))))

(declare-fun b!747613 () Bool)

(declare-fun res!504308 () Bool)

(assert (=> b!747613 (=> (not res!504308) (not e!417392))))

(assert (=> b!747613 (= res!504308 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!747614 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41668 (_ BitVec 32)) SeekEntryResult!7551)

(assert (=> b!747614 (= e!417393 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19944 a!3186) j!159) a!3186 mask!3328) (Found!7551 j!159)))))

(declare-fun b!747615 () Bool)

(assert (=> b!747615 (= e!417388 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19944 a!3186) j!159) a!3186 mask!3328) lt!332331))))

(declare-fun b!747616 () Bool)

(declare-fun res!504313 () Bool)

(assert (=> b!747616 (=> (not res!504313) (not e!417389))))

(assert (=> b!747616 (= res!504313 e!417393)))

(declare-fun c!82031 () Bool)

(assert (=> b!747616 (= c!82031 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!747617 () Bool)

(declare-fun res!504314 () Bool)

(assert (=> b!747617 (=> (not res!504314) (not e!417395))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!747617 (= res!504314 (validKeyInArray!0 (select (arr!19944 a!3186) j!159)))))

(declare-fun b!747618 () Bool)

(declare-fun Unit!25609 () Unit!25606)

(assert (=> b!747618 (= e!417390 Unit!25609)))

(assert (=> b!747618 false))

(declare-fun b!747619 () Bool)

(declare-fun res!504303 () Bool)

(assert (=> b!747619 (=> (not res!504303) (not e!417392))))

(assert (=> b!747619 (= res!504303 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20365 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20365 a!3186))))))

(declare-fun b!747620 () Bool)

(declare-fun res!504305 () Bool)

(assert (=> b!747620 (=> res!504305 e!417396)))

(assert (=> b!747620 (= res!504305 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19944 a!3186) j!159) a!3186 mask!3328) lt!332331)))))

(declare-fun res!504306 () Bool)

(assert (=> start!65542 (=> (not res!504306) (not e!417395))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65542 (= res!504306 (validMask!0 mask!3328))))

(assert (=> start!65542 e!417395))

(assert (=> start!65542 true))

(declare-fun array_inv!15718 (array!41668) Bool)

(assert (=> start!65542 (array_inv!15718 a!3186)))

(declare-fun b!747611 () Bool)

(declare-fun res!504311 () Bool)

(assert (=> b!747611 (=> (not res!504311) (not e!417395))))

(assert (=> b!747611 (= res!504311 (validKeyInArray!0 k!2102))))

(assert (= (and start!65542 res!504306) b!747609))

(assert (= (and b!747609 res!504315) b!747617))

(assert (= (and b!747617 res!504314) b!747611))

(assert (= (and b!747611 res!504311) b!747608))

(assert (= (and b!747608 res!504301) b!747600))

(assert (= (and b!747600 res!504312) b!747613))

(assert (= (and b!747613 res!504308) b!747603))

(assert (= (and b!747603 res!504309) b!747619))

(assert (= (and b!747619 res!504303) b!747601))

(assert (= (and b!747601 res!504310) b!747610))

(assert (= (and b!747610 res!504302) b!747616))

(assert (= (and b!747616 c!82031) b!747602))

(assert (= (and b!747616 (not c!82031)) b!747614))

(assert (= (and b!747616 res!504313) b!747612))

(assert (= (and b!747612 res!504307) b!747606))

(assert (= (and b!747606 res!504300) b!747615))

(assert (= (and b!747606 (not res!504299)) b!747620))

(assert (= (and b!747620 (not res!504305)) b!747605))

(assert (= (and b!747605 (not res!504304)) b!747604))

(assert (= (and b!747604 c!82032) b!747618))

(assert (= (and b!747604 (not c!82032)) b!747607))

(declare-fun m!697711 () Bool)

(assert (=> b!747620 m!697711))

(assert (=> b!747620 m!697711))

(declare-fun m!697713 () Bool)

(assert (=> b!747620 m!697713))

(assert (=> b!747614 m!697711))

(assert (=> b!747614 m!697711))

(assert (=> b!747614 m!697713))

(declare-fun m!697715 () Bool)

(assert (=> b!747605 m!697715))

(declare-fun m!697717 () Bool)

(assert (=> b!747605 m!697717))

(declare-fun m!697719 () Bool)

(assert (=> b!747600 m!697719))

(assert (=> b!747602 m!697711))

(assert (=> b!747602 m!697711))

(declare-fun m!697721 () Bool)

(assert (=> b!747602 m!697721))

(assert (=> b!747615 m!697711))

(assert (=> b!747615 m!697711))

(declare-fun m!697723 () Bool)

(assert (=> b!747615 m!697723))

(declare-fun m!697725 () Bool)

(assert (=> start!65542 m!697725))

(declare-fun m!697727 () Bool)

(assert (=> start!65542 m!697727))

(assert (=> b!747601 m!697711))

(assert (=> b!747601 m!697711))

(declare-fun m!697729 () Bool)

(assert (=> b!747601 m!697729))

(assert (=> b!747601 m!697729))

(assert (=> b!747601 m!697711))

(declare-fun m!697731 () Bool)

(assert (=> b!747601 m!697731))

(assert (=> b!747606 m!697711))

(assert (=> b!747606 m!697711))

(declare-fun m!697733 () Bool)

(assert (=> b!747606 m!697733))

(declare-fun m!697735 () Bool)

(assert (=> b!747606 m!697735))

(declare-fun m!697737 () Bool)

(assert (=> b!747606 m!697737))

(assert (=> b!747617 m!697711))

(assert (=> b!747617 m!697711))

(declare-fun m!697739 () Bool)

(assert (=> b!747617 m!697739))

(declare-fun m!697741 () Bool)

(assert (=> b!747603 m!697741))

(declare-fun m!697743 () Bool)

(assert (=> b!747608 m!697743))

(declare-fun m!697745 () Bool)

(assert (=> b!747611 m!697745))

(declare-fun m!697747 () Bool)

(assert (=> b!747610 m!697747))

(assert (=> b!747604 m!697715))

(assert (=> b!747604 m!697717))

(declare-fun m!697749 () Bool)

(assert (=> b!747613 m!697749))

(declare-fun m!697751 () Bool)

(assert (=> b!747612 m!697751))

(declare-fun m!697753 () Bool)

(assert (=> b!747612 m!697753))

(assert (=> b!747612 m!697751))

(assert (=> b!747612 m!697715))

(declare-fun m!697755 () Bool)

(assert (=> b!747612 m!697755))

(declare-fun m!697757 () Bool)

(assert (=> b!747612 m!697757))

(push 1)


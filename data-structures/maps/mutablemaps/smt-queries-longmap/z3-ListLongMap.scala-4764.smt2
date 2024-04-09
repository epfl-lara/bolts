; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!65664 () Bool)

(assert start!65664)

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!41790 0))(
  ( (array!41791 (arr!20005 (Array (_ BitVec 32) (_ BitVec 64))) (size!20426 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41790)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun e!419279 () Bool)

(declare-fun b!751570 () Bool)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7612 0))(
  ( (MissingZero!7612 (index!32815 (_ BitVec 32))) (Found!7612 (index!32816 (_ BitVec 32))) (Intermediate!7612 (undefined!8424 Bool) (index!32817 (_ BitVec 32)) (x!63763 (_ BitVec 32))) (Undefined!7612) (MissingVacant!7612 (index!32818 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41790 (_ BitVec 32)) SeekEntryResult!7612)

(assert (=> b!751570 (= e!419279 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20005 a!3186) j!159) a!3186 mask!3328) (Found!7612 j!159)))))

(declare-fun b!751571 () Bool)

(declare-datatypes ((Unit!25850 0))(
  ( (Unit!25851) )
))
(declare-fun e!419282 () Unit!25850)

(declare-fun Unit!25852 () Unit!25850)

(assert (=> b!751571 (= e!419282 Unit!25852)))

(assert (=> b!751571 false))

(declare-fun b!751572 () Bool)

(declare-fun res!507541 () Bool)

(declare-fun e!419283 () Bool)

(assert (=> b!751572 (=> (not res!507541) (not e!419283))))

(declare-fun lt!334284 () (_ BitVec 64))

(declare-fun lt!334276 () array!41790)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41790 (_ BitVec 32)) SeekEntryResult!7612)

(assert (=> b!751572 (= res!507541 (= (seekEntryOrOpen!0 lt!334284 lt!334276 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!334284 lt!334276 mask!3328)))))

(declare-fun b!751573 () Bool)

(declare-fun lt!334286 () SeekEntryResult!7612)

(declare-fun lt!334283 () SeekEntryResult!7612)

(assert (=> b!751573 (= e!419283 (= lt!334286 lt!334283))))

(declare-fun b!751574 () Bool)

(declare-fun res!507549 () Bool)

(declare-fun e!419277 () Bool)

(assert (=> b!751574 (=> (not res!507549) (not e!419277))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!751574 (= res!507549 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20005 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!751575 () Bool)

(declare-fun e!419284 () Bool)

(assert (=> b!751575 (= e!419284 e!419277)))

(declare-fun res!507553 () Bool)

(assert (=> b!751575 (=> (not res!507553) (not e!419277))))

(declare-fun lt!334285 () SeekEntryResult!7612)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41790 (_ BitVec 32)) SeekEntryResult!7612)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!751575 (= res!507553 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20005 a!3186) j!159) mask!3328) (select (arr!20005 a!3186) j!159) a!3186 mask!3328) lt!334285))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!751575 (= lt!334285 (Intermediate!7612 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!751576 () Bool)

(declare-fun e!419281 () Bool)

(assert (=> b!751576 (= e!419277 e!419281)))

(declare-fun res!507548 () Bool)

(assert (=> b!751576 (=> (not res!507548) (not e!419281))))

(declare-fun lt!334281 () SeekEntryResult!7612)

(declare-fun lt!334282 () SeekEntryResult!7612)

(assert (=> b!751576 (= res!507548 (= lt!334281 lt!334282))))

(assert (=> b!751576 (= lt!334282 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!334284 lt!334276 mask!3328))))

(assert (=> b!751576 (= lt!334281 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!334284 mask!3328) lt!334284 lt!334276 mask!3328))))

(declare-fun k0!2102 () (_ BitVec 64))

(assert (=> b!751576 (= lt!334284 (select (store (arr!20005 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!751576 (= lt!334276 (array!41791 (store (arr!20005 a!3186) i!1173 k0!2102) (size!20426 a!3186)))))

(declare-fun b!751577 () Bool)

(declare-fun res!507542 () Bool)

(declare-fun e!419276 () Bool)

(assert (=> b!751577 (=> (not res!507542) (not e!419276))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!751577 (= res!507542 (validKeyInArray!0 (select (arr!20005 a!3186) j!159)))))

(declare-fun res!507540 () Bool)

(assert (=> start!65664 (=> (not res!507540) (not e!419276))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65664 (= res!507540 (validMask!0 mask!3328))))

(assert (=> start!65664 e!419276))

(assert (=> start!65664 true))

(declare-fun array_inv!15779 (array!41790) Bool)

(assert (=> start!65664 (array_inv!15779 a!3186)))

(declare-fun b!751578 () Bool)

(declare-fun res!507543 () Bool)

(assert (=> b!751578 (=> (not res!507543) (not e!419284))))

(assert (=> b!751578 (= res!507543 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20426 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20426 a!3186))))))

(declare-fun b!751579 () Bool)

(declare-fun res!507554 () Bool)

(assert (=> b!751579 (=> (not res!507554) (not e!419276))))

(assert (=> b!751579 (= res!507554 (and (= (size!20426 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20426 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20426 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!751580 () Bool)

(declare-fun res!507538 () Bool)

(assert (=> b!751580 (=> (not res!507538) (not e!419276))))

(declare-fun arrayContainsKey!0 (array!41790 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!751580 (= res!507538 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!751581 () Bool)

(declare-fun res!507555 () Bool)

(assert (=> b!751581 (=> (not res!507555) (not e!419284))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41790 (_ BitVec 32)) Bool)

(assert (=> b!751581 (= res!507555 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!751582 () Bool)

(declare-fun res!507552 () Bool)

(assert (=> b!751582 (=> (not res!507552) (not e!419276))))

(assert (=> b!751582 (= res!507552 (validKeyInArray!0 k0!2102))))

(declare-fun b!751583 () Bool)

(declare-fun e!419278 () Bool)

(assert (=> b!751583 (= e!419281 (not e!419278))))

(declare-fun res!507544 () Bool)

(assert (=> b!751583 (=> res!507544 e!419278)))

(get-info :version)

(assert (=> b!751583 (= res!507544 (or (not ((_ is Intermediate!7612) lt!334282)) (bvslt x!1131 (x!63763 lt!334282)) (not (= x!1131 (x!63763 lt!334282))) (not (= index!1321 (index!32817 lt!334282)))))))

(declare-fun e!419286 () Bool)

(assert (=> b!751583 e!419286))

(declare-fun res!507537 () Bool)

(assert (=> b!751583 (=> (not res!507537) (not e!419286))))

(declare-fun lt!334278 () SeekEntryResult!7612)

(assert (=> b!751583 (= res!507537 (= lt!334286 lt!334278))))

(assert (=> b!751583 (= lt!334278 (Found!7612 j!159))))

(assert (=> b!751583 (= lt!334286 (seekEntryOrOpen!0 (select (arr!20005 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!751583 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!334280 () Unit!25850)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41790 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25850)

(assert (=> b!751583 (= lt!334280 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!751584 () Bool)

(declare-fun Unit!25853 () Unit!25850)

(assert (=> b!751584 (= e!419282 Unit!25853)))

(declare-fun b!751585 () Bool)

(assert (=> b!751585 (= e!419279 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20005 a!3186) j!159) a!3186 mask!3328) lt!334285))))

(declare-fun b!751586 () Bool)

(declare-fun res!507551 () Bool)

(assert (=> b!751586 (=> (not res!507551) (not e!419284))))

(declare-datatypes ((List!14060 0))(
  ( (Nil!14057) (Cons!14056 (h!15128 (_ BitVec 64)) (t!20383 List!14060)) )
))
(declare-fun arrayNoDuplicates!0 (array!41790 (_ BitVec 32) List!14060) Bool)

(assert (=> b!751586 (= res!507551 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14057))))

(declare-fun b!751587 () Bool)

(declare-fun e!419285 () Bool)

(declare-fun e!419280 () Bool)

(assert (=> b!751587 (= e!419285 e!419280)))

(declare-fun res!507550 () Bool)

(assert (=> b!751587 (=> res!507550 e!419280)))

(declare-fun lt!334275 () (_ BitVec 64))

(assert (=> b!751587 (= res!507550 (= lt!334275 lt!334284))))

(assert (=> b!751587 (= lt!334275 (select (store (arr!20005 a!3186) i!1173 k0!2102) index!1321))))

(declare-fun b!751588 () Bool)

(assert (=> b!751588 (= e!419280 true)))

(assert (=> b!751588 e!419283))

(declare-fun res!507539 () Bool)

(assert (=> b!751588 (=> (not res!507539) (not e!419283))))

(assert (=> b!751588 (= res!507539 (= lt!334275 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!334279 () Unit!25850)

(assert (=> b!751588 (= lt!334279 e!419282)))

(declare-fun c!82398 () Bool)

(assert (=> b!751588 (= c!82398 (= lt!334275 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!751589 () Bool)

(assert (=> b!751589 (= e!419276 e!419284)))

(declare-fun res!507546 () Bool)

(assert (=> b!751589 (=> (not res!507546) (not e!419284))))

(declare-fun lt!334277 () SeekEntryResult!7612)

(assert (=> b!751589 (= res!507546 (or (= lt!334277 (MissingZero!7612 i!1173)) (= lt!334277 (MissingVacant!7612 i!1173))))))

(assert (=> b!751589 (= lt!334277 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!751590 () Bool)

(declare-fun res!507545 () Bool)

(assert (=> b!751590 (=> (not res!507545) (not e!419277))))

(assert (=> b!751590 (= res!507545 e!419279)))

(declare-fun c!82397 () Bool)

(assert (=> b!751590 (= c!82397 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!751591 () Bool)

(assert (=> b!751591 (= e!419278 e!419285)))

(declare-fun res!507547 () Bool)

(assert (=> b!751591 (=> res!507547 e!419285)))

(assert (=> b!751591 (= res!507547 (not (= lt!334283 lt!334278)))))

(assert (=> b!751591 (= lt!334283 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20005 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!751592 () Bool)

(assert (=> b!751592 (= e!419286 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20005 a!3186) j!159) a!3186 mask!3328) lt!334278))))

(assert (= (and start!65664 res!507540) b!751579))

(assert (= (and b!751579 res!507554) b!751577))

(assert (= (and b!751577 res!507542) b!751582))

(assert (= (and b!751582 res!507552) b!751580))

(assert (= (and b!751580 res!507538) b!751589))

(assert (= (and b!751589 res!507546) b!751581))

(assert (= (and b!751581 res!507555) b!751586))

(assert (= (and b!751586 res!507551) b!751578))

(assert (= (and b!751578 res!507543) b!751575))

(assert (= (and b!751575 res!507553) b!751574))

(assert (= (and b!751574 res!507549) b!751590))

(assert (= (and b!751590 c!82397) b!751585))

(assert (= (and b!751590 (not c!82397)) b!751570))

(assert (= (and b!751590 res!507545) b!751576))

(assert (= (and b!751576 res!507548) b!751583))

(assert (= (and b!751583 res!507537) b!751592))

(assert (= (and b!751583 (not res!507544)) b!751591))

(assert (= (and b!751591 (not res!507547)) b!751587))

(assert (= (and b!751587 (not res!507550)) b!751588))

(assert (= (and b!751588 c!82398) b!751571))

(assert (= (and b!751588 (not c!82398)) b!751584))

(assert (= (and b!751588 res!507539) b!751572))

(assert (= (and b!751572 res!507541) b!751573))

(declare-fun m!700793 () Bool)

(assert (=> b!751587 m!700793))

(declare-fun m!700795 () Bool)

(assert (=> b!751587 m!700795))

(declare-fun m!700797 () Bool)

(assert (=> b!751591 m!700797))

(assert (=> b!751591 m!700797))

(declare-fun m!700799 () Bool)

(assert (=> b!751591 m!700799))

(declare-fun m!700801 () Bool)

(assert (=> b!751581 m!700801))

(assert (=> b!751592 m!700797))

(assert (=> b!751592 m!700797))

(declare-fun m!700803 () Bool)

(assert (=> b!751592 m!700803))

(assert (=> b!751570 m!700797))

(assert (=> b!751570 m!700797))

(assert (=> b!751570 m!700799))

(assert (=> b!751585 m!700797))

(assert (=> b!751585 m!700797))

(declare-fun m!700805 () Bool)

(assert (=> b!751585 m!700805))

(declare-fun m!700807 () Bool)

(assert (=> b!751574 m!700807))

(assert (=> b!751583 m!700797))

(assert (=> b!751583 m!700797))

(declare-fun m!700809 () Bool)

(assert (=> b!751583 m!700809))

(declare-fun m!700811 () Bool)

(assert (=> b!751583 m!700811))

(declare-fun m!700813 () Bool)

(assert (=> b!751583 m!700813))

(declare-fun m!700815 () Bool)

(assert (=> b!751572 m!700815))

(declare-fun m!700817 () Bool)

(assert (=> b!751572 m!700817))

(declare-fun m!700819 () Bool)

(assert (=> b!751582 m!700819))

(assert (=> b!751577 m!700797))

(assert (=> b!751577 m!700797))

(declare-fun m!700821 () Bool)

(assert (=> b!751577 m!700821))

(declare-fun m!700823 () Bool)

(assert (=> start!65664 m!700823))

(declare-fun m!700825 () Bool)

(assert (=> start!65664 m!700825))

(declare-fun m!700827 () Bool)

(assert (=> b!751580 m!700827))

(assert (=> b!751575 m!700797))

(assert (=> b!751575 m!700797))

(declare-fun m!700829 () Bool)

(assert (=> b!751575 m!700829))

(assert (=> b!751575 m!700829))

(assert (=> b!751575 m!700797))

(declare-fun m!700831 () Bool)

(assert (=> b!751575 m!700831))

(declare-fun m!700833 () Bool)

(assert (=> b!751576 m!700833))

(declare-fun m!700835 () Bool)

(assert (=> b!751576 m!700835))

(assert (=> b!751576 m!700833))

(declare-fun m!700837 () Bool)

(assert (=> b!751576 m!700837))

(declare-fun m!700839 () Bool)

(assert (=> b!751576 m!700839))

(assert (=> b!751576 m!700793))

(declare-fun m!700841 () Bool)

(assert (=> b!751586 m!700841))

(declare-fun m!700843 () Bool)

(assert (=> b!751589 m!700843))

(check-sat (not b!751592) (not b!751572) (not b!751585) (not b!751580) (not b!751581) (not b!751591) (not b!751589) (not start!65664) (not b!751576) (not b!751583) (not b!751586) (not b!751577) (not b!751570) (not b!751575) (not b!751582))
(check-sat)

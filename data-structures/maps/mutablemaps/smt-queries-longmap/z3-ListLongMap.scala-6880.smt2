; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!86568 () Bool)

(assert start!86568)

(declare-fun b!1002691 () Bool)

(declare-fun e!564872 () Bool)

(declare-fun e!564866 () Bool)

(assert (=> b!1002691 (= e!564872 e!564866)))

(declare-fun res!672337 () Bool)

(assert (=> b!1002691 (=> (not res!672337) (not e!564866))))

(declare-datatypes ((SeekEntryResult!9414 0))(
  ( (MissingZero!9414 (index!40026 (_ BitVec 32))) (Found!9414 (index!40027 (_ BitVec 32))) (Intermediate!9414 (undefined!10226 Bool) (index!40028 (_ BitVec 32)) (x!87467 (_ BitVec 32))) (Undefined!9414) (MissingVacant!9414 (index!40029 (_ BitVec 32))) )
))
(declare-fun lt!443316 () SeekEntryResult!9414)

(declare-fun lt!443317 () SeekEntryResult!9414)

(assert (=> b!1002691 (= res!672337 (= lt!443316 lt!443317))))

(declare-datatypes ((array!63321 0))(
  ( (array!63322 (arr!30482 (Array (_ BitVec 32) (_ BitVec 64))) (size!30985 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63321)

(declare-fun j!170 () (_ BitVec 32))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63321 (_ BitVec 32)) SeekEntryResult!9414)

(assert (=> b!1002691 (= lt!443316 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30482 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1002692 () Bool)

(declare-fun e!564870 () Bool)

(assert (=> b!1002692 (= e!564870 false)))

(declare-fun lt!443319 () SeekEntryResult!9414)

(declare-fun lt!443315 () (_ BitVec 32))

(declare-fun lt!443312 () (_ BitVec 64))

(declare-fun lt!443318 () array!63321)

(assert (=> b!1002692 (= lt!443319 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1245) lt!443315 lt!443312 lt!443318 mask!3464))))

(declare-fun b!1002693 () Bool)

(declare-fun res!672328 () Bool)

(declare-fun e!564867 () Bool)

(assert (=> b!1002693 (=> (not res!672328) (not e!564867))))

(assert (=> b!1002693 (= res!672328 (not (= lt!443316 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 lt!443312 lt!443318 mask!3464))))))

(declare-fun res!672331 () Bool)

(declare-fun e!564871 () Bool)

(assert (=> start!86568 (=> (not res!672331) (not e!564871))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86568 (= res!672331 (validMask!0 mask!3464))))

(assert (=> start!86568 e!564871))

(declare-fun array_inv!23472 (array!63321) Bool)

(assert (=> start!86568 (array_inv!23472 a!3219)))

(assert (=> start!86568 true))

(declare-fun b!1002694 () Bool)

(assert (=> b!1002694 (= e!564867 e!564870)))

(declare-fun res!672333 () Bool)

(assert (=> b!1002694 (=> (not res!672333) (not e!564870))))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1002694 (= res!672333 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1245) resX!38) (bvsge (bvadd #b00000000000000000000000000000001 x!1245) #b00000000000000000000000000000000) (bvsge lt!443315 #b00000000000000000000000000000000) (bvslt lt!443315 (size!30985 a!3219))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1002694 (= lt!443315 (nextIndex!0 index!1507 x!1245 mask!3464))))

(declare-fun b!1002695 () Bool)

(declare-fun res!672335 () Bool)

(assert (=> b!1002695 (=> (not res!672335) (not e!564870))))

(assert (=> b!1002695 (= res!672335 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1245) lt!443315 (select (arr!30482 a!3219) j!170) a!3219 mask!3464) lt!443317))))

(declare-fun b!1002696 () Bool)

(declare-fun e!564869 () Bool)

(assert (=> b!1002696 (= e!564871 e!564869)))

(declare-fun res!672334 () Bool)

(assert (=> b!1002696 (=> (not res!672334) (not e!564869))))

(declare-fun lt!443314 () SeekEntryResult!9414)

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!1002696 (= res!672334 (or (= lt!443314 (MissingVacant!9414 i!1194)) (= lt!443314 (MissingZero!9414 i!1194))))))

(declare-fun k0!2224 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63321 (_ BitVec 32)) SeekEntryResult!9414)

(assert (=> b!1002696 (= lt!443314 (seekEntryOrOpen!0 k0!2224 a!3219 mask!3464))))

(declare-fun b!1002697 () Bool)

(declare-fun res!672336 () Bool)

(assert (=> b!1002697 (=> (not res!672336) (not e!564871))))

(declare-fun arrayContainsKey!0 (array!63321 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1002697 (= res!672336 (not (arrayContainsKey!0 a!3219 k0!2224 #b00000000000000000000000000000000)))))

(declare-fun b!1002698 () Bool)

(declare-fun res!672339 () Bool)

(assert (=> b!1002698 (=> (not res!672339) (not e!564869))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63321 (_ BitVec 32)) Bool)

(assert (=> b!1002698 (= res!672339 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1002699 () Bool)

(declare-fun res!672330 () Bool)

(assert (=> b!1002699 (=> (not res!672330) (not e!564869))))

(declare-datatypes ((List!21284 0))(
  ( (Nil!21281) (Cons!21280 (h!22457 (_ BitVec 64)) (t!30293 List!21284)) )
))
(declare-fun arrayNoDuplicates!0 (array!63321 (_ BitVec 32) List!21284) Bool)

(assert (=> b!1002699 (= res!672330 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21281))))

(declare-fun b!1002700 () Bool)

(declare-fun res!672325 () Bool)

(assert (=> b!1002700 (=> (not res!672325) (not e!564871))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1002700 (= res!672325 (validKeyInArray!0 k0!2224))))

(declare-fun b!1002701 () Bool)

(declare-fun res!672338 () Bool)

(assert (=> b!1002701 (=> (not res!672338) (not e!564871))))

(assert (=> b!1002701 (= res!672338 (and (= (size!30985 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30985 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30985 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1002702 () Bool)

(declare-fun res!672332 () Bool)

(assert (=> b!1002702 (=> (not res!672332) (not e!564869))))

(declare-fun resIndex!38 () (_ BitVec 32))

(assert (=> b!1002702 (= res!672332 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30985 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30985 a!3219))))))

(declare-fun b!1002703 () Bool)

(assert (=> b!1002703 (= e!564869 e!564872)))

(declare-fun res!672327 () Bool)

(assert (=> b!1002703 (=> (not res!672327) (not e!564872))))

(declare-fun lt!443313 () SeekEntryResult!9414)

(assert (=> b!1002703 (= res!672327 (= lt!443313 lt!443317))))

(assert (=> b!1002703 (= lt!443317 (Intermediate!9414 false resIndex!38 resX!38))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1002703 (= lt!443313 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30482 a!3219) j!170) mask!3464) (select (arr!30482 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1002704 () Bool)

(declare-fun res!672340 () Bool)

(assert (=> b!1002704 (=> (not res!672340) (not e!564867))))

(assert (=> b!1002704 (= res!672340 (and (not (= index!1507 resIndex!38)) (not (= index!1507 i!1194))))))

(declare-fun b!1002705 () Bool)

(declare-fun res!672326 () Bool)

(assert (=> b!1002705 (=> (not res!672326) (not e!564871))))

(assert (=> b!1002705 (= res!672326 (validKeyInArray!0 (select (arr!30482 a!3219) j!170)))))

(declare-fun b!1002706 () Bool)

(assert (=> b!1002706 (= e!564866 e!564867)))

(declare-fun res!672329 () Bool)

(assert (=> b!1002706 (=> (not res!672329) (not e!564867))))

(assert (=> b!1002706 (= res!672329 (not (= lt!443313 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!443312 mask!3464) lt!443312 lt!443318 mask!3464))))))

(assert (=> b!1002706 (= lt!443312 (select (store (arr!30482 a!3219) i!1194 k0!2224) j!170))))

(assert (=> b!1002706 (= lt!443318 (array!63322 (store (arr!30482 a!3219) i!1194 k0!2224) (size!30985 a!3219)))))

(assert (= (and start!86568 res!672331) b!1002701))

(assert (= (and b!1002701 res!672338) b!1002705))

(assert (= (and b!1002705 res!672326) b!1002700))

(assert (= (and b!1002700 res!672325) b!1002697))

(assert (= (and b!1002697 res!672336) b!1002696))

(assert (= (and b!1002696 res!672334) b!1002698))

(assert (= (and b!1002698 res!672339) b!1002699))

(assert (= (and b!1002699 res!672330) b!1002702))

(assert (= (and b!1002702 res!672332) b!1002703))

(assert (= (and b!1002703 res!672327) b!1002691))

(assert (= (and b!1002691 res!672337) b!1002706))

(assert (= (and b!1002706 res!672329) b!1002693))

(assert (= (and b!1002693 res!672328) b!1002704))

(assert (= (and b!1002704 res!672340) b!1002694))

(assert (= (and b!1002694 res!672333) b!1002695))

(assert (= (and b!1002695 res!672335) b!1002692))

(declare-fun m!928621 () Bool)

(assert (=> b!1002700 m!928621))

(declare-fun m!928623 () Bool)

(assert (=> b!1002703 m!928623))

(assert (=> b!1002703 m!928623))

(declare-fun m!928625 () Bool)

(assert (=> b!1002703 m!928625))

(assert (=> b!1002703 m!928625))

(assert (=> b!1002703 m!928623))

(declare-fun m!928627 () Bool)

(assert (=> b!1002703 m!928627))

(assert (=> b!1002691 m!928623))

(assert (=> b!1002691 m!928623))

(declare-fun m!928629 () Bool)

(assert (=> b!1002691 m!928629))

(assert (=> b!1002705 m!928623))

(assert (=> b!1002705 m!928623))

(declare-fun m!928631 () Bool)

(assert (=> b!1002705 m!928631))

(declare-fun m!928633 () Bool)

(assert (=> b!1002696 m!928633))

(declare-fun m!928635 () Bool)

(assert (=> b!1002706 m!928635))

(assert (=> b!1002706 m!928635))

(declare-fun m!928637 () Bool)

(assert (=> b!1002706 m!928637))

(declare-fun m!928639 () Bool)

(assert (=> b!1002706 m!928639))

(declare-fun m!928641 () Bool)

(assert (=> b!1002706 m!928641))

(assert (=> b!1002695 m!928623))

(assert (=> b!1002695 m!928623))

(declare-fun m!928643 () Bool)

(assert (=> b!1002695 m!928643))

(declare-fun m!928645 () Bool)

(assert (=> b!1002698 m!928645))

(declare-fun m!928647 () Bool)

(assert (=> b!1002699 m!928647))

(declare-fun m!928649 () Bool)

(assert (=> start!86568 m!928649))

(declare-fun m!928651 () Bool)

(assert (=> start!86568 m!928651))

(declare-fun m!928653 () Bool)

(assert (=> b!1002692 m!928653))

(declare-fun m!928655 () Bool)

(assert (=> b!1002694 m!928655))

(declare-fun m!928657 () Bool)

(assert (=> b!1002693 m!928657))

(declare-fun m!928659 () Bool)

(assert (=> b!1002697 m!928659))

(check-sat (not b!1002695) (not b!1002698) (not b!1002705) (not b!1002700) (not b!1002697) (not b!1002691) (not b!1002706) (not b!1002694) (not b!1002699) (not start!86568) (not b!1002693) (not b!1002692) (not b!1002703) (not b!1002696))

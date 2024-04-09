; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68656 () Bool)

(assert start!68656)

(declare-fun b!798585 () Bool)

(declare-fun res!543282 () Bool)

(declare-fun e!442952 () Bool)

(assert (=> b!798585 (=> (not res!543282) (not e!442952))))

(declare-datatypes ((array!43397 0))(
  ( (array!43398 (arr!20775 (Array (_ BitVec 32) (_ BitVec 64))) (size!21196 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43397)

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!43397 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!798585 (= res!543282 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!798586 () Bool)

(declare-fun res!543279 () Bool)

(declare-fun e!442954 () Bool)

(assert (=> b!798586 (=> (not res!543279) (not e!442954))))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43397 (_ BitVec 32)) Bool)

(assert (=> b!798586 (= res!543279 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!798587 () Bool)

(declare-fun e!442951 () Bool)

(assert (=> b!798587 (= e!442951 false)))

(declare-fun x!1077 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!8373 0))(
  ( (MissingZero!8373 (index!35859 (_ BitVec 32))) (Found!8373 (index!35860 (_ BitVec 32))) (Intermediate!8373 (undefined!9185 Bool) (index!35861 (_ BitVec 32)) (x!66772 (_ BitVec 32))) (Undefined!8373) (MissingVacant!8373 (index!35862 (_ BitVec 32))) )
))
(declare-fun lt!356524 () SeekEntryResult!8373)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43397 (_ BitVec 32)) SeekEntryResult!8373)

(assert (=> b!798587 (= lt!356524 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20775 a!3170) j!153) a!3170 mask!3266))))

(declare-fun lt!356523 () SeekEntryResult!8373)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43397 (_ BitVec 32)) SeekEntryResult!8373)

(assert (=> b!798587 (= lt!356523 (seekEntryOrOpen!0 (select (arr!20775 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!798588 () Bool)

(declare-fun res!543278 () Bool)

(assert (=> b!798588 (=> (not res!543278) (not e!442954))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!798588 (= res!543278 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21196 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20775 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21196 a!3170)) (= (select (arr!20775 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun res!543274 () Bool)

(assert (=> start!68656 (=> (not res!543274) (not e!442952))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68656 (= res!543274 (validMask!0 mask!3266))))

(assert (=> start!68656 e!442952))

(assert (=> start!68656 true))

(declare-fun array_inv!16549 (array!43397) Bool)

(assert (=> start!68656 (array_inv!16549 a!3170)))

(declare-fun b!798589 () Bool)

(declare-fun res!543283 () Bool)

(assert (=> b!798589 (=> (not res!543283) (not e!442952))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!798589 (= res!543283 (validKeyInArray!0 k!2044))))

(declare-fun b!798590 () Bool)

(assert (=> b!798590 (= e!442952 e!442954)))

(declare-fun res!543277 () Bool)

(assert (=> b!798590 (=> (not res!543277) (not e!442954))))

(declare-fun lt!356521 () SeekEntryResult!8373)

(assert (=> b!798590 (= res!543277 (or (= lt!356521 (MissingZero!8373 i!1163)) (= lt!356521 (MissingVacant!8373 i!1163))))))

(assert (=> b!798590 (= lt!356521 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!798591 () Bool)

(assert (=> b!798591 (= e!442954 e!442951)))

(declare-fun res!543280 () Bool)

(assert (=> b!798591 (=> (not res!543280) (not e!442951))))

(declare-fun lt!356520 () (_ BitVec 64))

(declare-fun lt!356522 () array!43397)

(assert (=> b!798591 (= res!543280 (= (seekEntryOrOpen!0 lt!356520 lt!356522 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!356520 lt!356522 mask!3266)))))

(assert (=> b!798591 (= lt!356520 (select (store (arr!20775 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!798591 (= lt!356522 (array!43398 (store (arr!20775 a!3170) i!1163 k!2044) (size!21196 a!3170)))))

(declare-fun b!798592 () Bool)

(declare-fun res!543281 () Bool)

(assert (=> b!798592 (=> (not res!543281) (not e!442952))))

(assert (=> b!798592 (= res!543281 (validKeyInArray!0 (select (arr!20775 a!3170) j!153)))))

(declare-fun b!798593 () Bool)

(declare-fun res!543276 () Bool)

(assert (=> b!798593 (=> (not res!543276) (not e!442952))))

(assert (=> b!798593 (= res!543276 (and (= (size!21196 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21196 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21196 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!798594 () Bool)

(declare-fun res!543275 () Bool)

(assert (=> b!798594 (=> (not res!543275) (not e!442954))))

(declare-datatypes ((List!14791 0))(
  ( (Nil!14788) (Cons!14787 (h!15916 (_ BitVec 64)) (t!21114 List!14791)) )
))
(declare-fun arrayNoDuplicates!0 (array!43397 (_ BitVec 32) List!14791) Bool)

(assert (=> b!798594 (= res!543275 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14788))))

(assert (= (and start!68656 res!543274) b!798593))

(assert (= (and b!798593 res!543276) b!798592))

(assert (= (and b!798592 res!543281) b!798589))

(assert (= (and b!798589 res!543283) b!798585))

(assert (= (and b!798585 res!543282) b!798590))

(assert (= (and b!798590 res!543277) b!798586))

(assert (= (and b!798586 res!543279) b!798594))

(assert (= (and b!798594 res!543275) b!798588))

(assert (= (and b!798588 res!543278) b!798591))

(assert (= (and b!798591 res!543280) b!798587))

(declare-fun m!739639 () Bool)

(assert (=> b!798590 m!739639))

(declare-fun m!739641 () Bool)

(assert (=> b!798592 m!739641))

(assert (=> b!798592 m!739641))

(declare-fun m!739643 () Bool)

(assert (=> b!798592 m!739643))

(declare-fun m!739645 () Bool)

(assert (=> b!798591 m!739645))

(declare-fun m!739647 () Bool)

(assert (=> b!798591 m!739647))

(declare-fun m!739649 () Bool)

(assert (=> b!798591 m!739649))

(declare-fun m!739651 () Bool)

(assert (=> b!798591 m!739651))

(assert (=> b!798587 m!739641))

(assert (=> b!798587 m!739641))

(declare-fun m!739653 () Bool)

(assert (=> b!798587 m!739653))

(assert (=> b!798587 m!739641))

(declare-fun m!739655 () Bool)

(assert (=> b!798587 m!739655))

(declare-fun m!739657 () Bool)

(assert (=> start!68656 m!739657))

(declare-fun m!739659 () Bool)

(assert (=> start!68656 m!739659))

(declare-fun m!739661 () Bool)

(assert (=> b!798585 m!739661))

(declare-fun m!739663 () Bool)

(assert (=> b!798588 m!739663))

(declare-fun m!739665 () Bool)

(assert (=> b!798588 m!739665))

(declare-fun m!739667 () Bool)

(assert (=> b!798586 m!739667))

(declare-fun m!739669 () Bool)

(assert (=> b!798594 m!739669))

(declare-fun m!739671 () Bool)

(assert (=> b!798589 m!739671))

(push 1)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68752 () Bool)

(assert start!68752)

(declare-fun b!800436 () Bool)

(declare-fun res!545126 () Bool)

(declare-fun e!443804 () Bool)

(assert (=> b!800436 (=> (not res!545126) (not e!443804))))

(declare-datatypes ((array!43493 0))(
  ( (array!43494 (arr!20823 (Array (_ BitVec 32) (_ BitVec 64))) (size!21244 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43493)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!800436 (= res!545126 (validKeyInArray!0 (select (arr!20823 a!3170) j!153)))))

(declare-fun b!800437 () Bool)

(declare-fun res!545133 () Bool)

(assert (=> b!800437 (=> (not res!545133) (not e!443804))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!43493 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!800437 (= res!545133 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!800438 () Bool)

(declare-fun e!443806 () Bool)

(declare-fun e!443801 () Bool)

(assert (=> b!800438 (= e!443806 e!443801)))

(declare-fun res!545128 () Bool)

(assert (=> b!800438 (=> (not res!545128) (not e!443801))))

(declare-fun lt!357652 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(assert (=> b!800438 (= res!545128 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1077) #b01111111111111111111111111111110) (bvsge (bvadd #b00000000000000000000000000000001 x!1077) #b00000000000000000000000000000000) (bvsge lt!357652 #b00000000000000000000000000000000) (bvslt lt!357652 (size!21244 a!3170))))))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!800438 (= lt!357652 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!800439 () Bool)

(declare-fun res!545137 () Bool)

(assert (=> b!800439 (=> (not res!545137) (not e!443804))))

(assert (=> b!800439 (= res!545137 (validKeyInArray!0 k!2044))))

(declare-fun b!800440 () Bool)

(declare-fun res!545129 () Bool)

(declare-fun e!443805 () Bool)

(assert (=> b!800440 (=> (not res!545129) (not e!443805))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43493 (_ BitVec 32)) Bool)

(assert (=> b!800440 (= res!545129 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!800441 () Bool)

(declare-fun res!545130 () Bool)

(assert (=> b!800441 (=> (not res!545130) (not e!443804))))

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!800441 (= res!545130 (and (= (size!21244 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21244 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21244 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!800442 () Bool)

(declare-fun res!545125 () Bool)

(assert (=> b!800442 (=> (not res!545125) (not e!443805))))

(declare-datatypes ((List!14839 0))(
  ( (Nil!14836) (Cons!14835 (h!15964 (_ BitVec 64)) (t!21162 List!14839)) )
))
(declare-fun arrayNoDuplicates!0 (array!43493 (_ BitVec 32) List!14839) Bool)

(assert (=> b!800442 (= res!545125 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14836))))

(declare-fun res!545135 () Bool)

(assert (=> start!68752 (=> (not res!545135) (not e!443804))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68752 (= res!545135 (validMask!0 mask!3266))))

(assert (=> start!68752 e!443804))

(assert (=> start!68752 true))

(declare-fun array_inv!16597 (array!43493) Bool)

(assert (=> start!68752 (array_inv!16597 a!3170)))

(declare-fun b!800443 () Bool)

(declare-fun res!545131 () Bool)

(assert (=> b!800443 (=> (not res!545131) (not e!443805))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!800443 (= res!545131 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21244 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20823 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21244 a!3170)) (= (select (arr!20823 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!800444 () Bool)

(declare-fun e!443803 () Bool)

(assert (=> b!800444 (= e!443805 e!443803)))

(declare-fun res!545136 () Bool)

(assert (=> b!800444 (=> (not res!545136) (not e!443803))))

(declare-datatypes ((SeekEntryResult!8421 0))(
  ( (MissingZero!8421 (index!36051 (_ BitVec 32))) (Found!8421 (index!36052 (_ BitVec 32))) (Intermediate!8421 (undefined!9233 Bool) (index!36053 (_ BitVec 32)) (x!66948 (_ BitVec 32))) (Undefined!8421) (MissingVacant!8421 (index!36054 (_ BitVec 32))) )
))
(declare-fun lt!357655 () SeekEntryResult!8421)

(declare-fun lt!357651 () (_ BitVec 64))

(declare-fun lt!357657 () array!43493)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43493 (_ BitVec 32)) SeekEntryResult!8421)

(assert (=> b!800444 (= res!545136 (= lt!357655 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!357651 lt!357657 mask!3266)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43493 (_ BitVec 32)) SeekEntryResult!8421)

(assert (=> b!800444 (= lt!357655 (seekEntryOrOpen!0 lt!357651 lt!357657 mask!3266))))

(assert (=> b!800444 (= lt!357651 (select (store (arr!20823 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!800444 (= lt!357657 (array!43494 (store (arr!20823 a!3170) i!1163 k!2044) (size!21244 a!3170)))))

(declare-fun b!800445 () Bool)

(assert (=> b!800445 (= e!443803 e!443806)))

(declare-fun res!545127 () Bool)

(assert (=> b!800445 (=> (not res!545127) (not e!443806))))

(declare-fun lt!357653 () SeekEntryResult!8421)

(declare-fun lt!357656 () SeekEntryResult!8421)

(assert (=> b!800445 (= res!545127 (and (= lt!357653 lt!357656) (= lt!357656 (Found!8421 j!153)) (not (= (select (arr!20823 a!3170) index!1236) (select (arr!20823 a!3170) j!153)))))))

(assert (=> b!800445 (= lt!357656 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20823 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!800445 (= lt!357653 (seekEntryOrOpen!0 (select (arr!20823 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!800446 () Bool)

(assert (=> b!800446 (= e!443804 e!443805)))

(declare-fun res!545134 () Bool)

(assert (=> b!800446 (=> (not res!545134) (not e!443805))))

(declare-fun lt!357654 () SeekEntryResult!8421)

(assert (=> b!800446 (= res!545134 (or (= lt!357654 (MissingZero!8421 i!1163)) (= lt!357654 (MissingVacant!8421 i!1163))))))

(assert (=> b!800446 (= lt!357654 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!800447 () Bool)

(assert (=> b!800447 (= e!443801 false)))

(declare-fun lt!357658 () SeekEntryResult!8421)

(assert (=> b!800447 (= lt!357658 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!357652 vacantBefore!23 (select (arr!20823 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!800448 () Bool)

(declare-fun res!545132 () Bool)

(assert (=> b!800448 (=> (not res!545132) (not e!443801))))

(assert (=> b!800448 (= res!545132 (= lt!357655 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!357652 vacantAfter!23 lt!357651 lt!357657 mask!3266)))))

(assert (= (and start!68752 res!545135) b!800441))

(assert (= (and b!800441 res!545130) b!800436))

(assert (= (and b!800436 res!545126) b!800439))

(assert (= (and b!800439 res!545137) b!800437))

(assert (= (and b!800437 res!545133) b!800446))

(assert (= (and b!800446 res!545134) b!800440))

(assert (= (and b!800440 res!545129) b!800442))

(assert (= (and b!800442 res!545125) b!800443))

(assert (= (and b!800443 res!545131) b!800444))

(assert (= (and b!800444 res!545136) b!800445))

(assert (= (and b!800445 res!545127) b!800438))

(assert (= (and b!800438 res!545128) b!800448))

(assert (= (and b!800448 res!545132) b!800447))

(declare-fun m!741631 () Bool)

(assert (=> start!68752 m!741631))

(declare-fun m!741633 () Bool)

(assert (=> start!68752 m!741633))

(declare-fun m!741635 () Bool)

(assert (=> b!800439 m!741635))

(declare-fun m!741637 () Bool)

(assert (=> b!800440 m!741637))

(declare-fun m!741639 () Bool)

(assert (=> b!800436 m!741639))

(assert (=> b!800436 m!741639))

(declare-fun m!741641 () Bool)

(assert (=> b!800436 m!741641))

(declare-fun m!741643 () Bool)

(assert (=> b!800437 m!741643))

(declare-fun m!741645 () Bool)

(assert (=> b!800446 m!741645))

(declare-fun m!741647 () Bool)

(assert (=> b!800444 m!741647))

(declare-fun m!741649 () Bool)

(assert (=> b!800444 m!741649))

(declare-fun m!741651 () Bool)

(assert (=> b!800444 m!741651))

(declare-fun m!741653 () Bool)

(assert (=> b!800444 m!741653))

(declare-fun m!741655 () Bool)

(assert (=> b!800442 m!741655))

(declare-fun m!741657 () Bool)

(assert (=> b!800445 m!741657))

(assert (=> b!800445 m!741639))

(assert (=> b!800445 m!741639))

(declare-fun m!741659 () Bool)

(assert (=> b!800445 m!741659))

(assert (=> b!800445 m!741639))

(declare-fun m!741661 () Bool)

(assert (=> b!800445 m!741661))

(declare-fun m!741663 () Bool)

(assert (=> b!800438 m!741663))

(declare-fun m!741665 () Bool)

(assert (=> b!800448 m!741665))

(declare-fun m!741667 () Bool)

(assert (=> b!800443 m!741667))

(declare-fun m!741669 () Bool)

(assert (=> b!800443 m!741669))

(assert (=> b!800447 m!741639))

(assert (=> b!800447 m!741639))

(declare-fun m!741671 () Bool)

(assert (=> b!800447 m!741671))

(push 1)


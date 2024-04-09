; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!68826 () Bool)

(assert start!68826)

(declare-fun b!801815 () Bool)

(declare-fun res!546507 () Bool)

(declare-fun e!444437 () Bool)

(assert (=> b!801815 (=> (not res!546507) (not e!444437))))

(declare-datatypes ((array!43567 0))(
  ( (array!43568 (arr!20860 (Array (_ BitVec 32) (_ BitVec 64))) (size!21281 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43567)

(declare-datatypes ((List!14876 0))(
  ( (Nil!14873) (Cons!14872 (h!16001 (_ BitVec 64)) (t!21199 List!14876)) )
))
(declare-fun arrayNoDuplicates!0 (array!43567 (_ BitVec 32) List!14876) Bool)

(assert (=> b!801815 (= res!546507 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14873))))

(declare-fun b!801816 () Bool)

(declare-fun res!546512 () Bool)

(declare-fun e!444438 () Bool)

(assert (=> b!801816 (=> (not res!546512) (not e!444438))))

(declare-fun k0!2044 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!43567 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!801816 (= res!546512 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(declare-fun b!801817 () Bool)

(declare-fun res!546506 () Bool)

(assert (=> b!801817 (=> (not res!546506) (not e!444437))))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43567 (_ BitVec 32)) Bool)

(assert (=> b!801817 (= res!546506 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun res!546504 () Bool)

(assert (=> start!68826 (=> (not res!546504) (not e!444438))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68826 (= res!546504 (validMask!0 mask!3266))))

(assert (=> start!68826 e!444438))

(assert (=> start!68826 true))

(declare-fun array_inv!16634 (array!43567) Bool)

(assert (=> start!68826 (array_inv!16634 a!3170)))

(declare-fun b!801818 () Bool)

(declare-fun res!546513 () Bool)

(assert (=> b!801818 (=> (not res!546513) (not e!444438))))

(declare-fun j!153 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!801818 (= res!546513 (validKeyInArray!0 (select (arr!20860 a!3170) j!153)))))

(declare-fun b!801819 () Bool)

(declare-fun e!444435 () Bool)

(declare-fun e!444439 () Bool)

(assert (=> b!801819 (= e!444435 e!444439)))

(declare-fun res!546511 () Bool)

(assert (=> b!801819 (=> (not res!546511) (not e!444439))))

(declare-datatypes ((SeekEntryResult!8458 0))(
  ( (MissingZero!8458 (index!36199 (_ BitVec 32))) (Found!8458 (index!36200 (_ BitVec 32))) (Intermediate!8458 (undefined!9270 Bool) (index!36201 (_ BitVec 32)) (x!67081 (_ BitVec 32))) (Undefined!8458) (MissingVacant!8458 (index!36202 (_ BitVec 32))) )
))
(declare-fun lt!358509 () SeekEntryResult!8458)

(declare-fun lt!358513 () SeekEntryResult!8458)

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!801819 (= res!546511 (and (= lt!358513 lt!358509) (= lt!358509 (Found!8458 j!153)) (not (= (select (arr!20860 a!3170) index!1236) (select (arr!20860 a!3170) j!153)))))))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43567 (_ BitVec 32)) SeekEntryResult!8458)

(assert (=> b!801819 (= lt!358509 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20860 a!3170) j!153) a!3170 mask!3266))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43567 (_ BitVec 32)) SeekEntryResult!8458)

(assert (=> b!801819 (= lt!358513 (seekEntryOrOpen!0 (select (arr!20860 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!801820 () Bool)

(assert (=> b!801820 (= e!444439 (not (or (bvslt mask!3266 #b00000000000000000000000000000000) (bvslt index!1236 (bvadd #b00000000000000000000000000000001 mask!3266)))))))

(declare-fun lt!358508 () (_ BitVec 32))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun lt!358511 () (_ BitVec 64))

(declare-fun lt!358507 () array!43567)

(assert (=> b!801820 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!358508 vacantAfter!23 lt!358511 lt!358507 mask!3266) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!358508 vacantBefore!23 (select (arr!20860 a!3170) j!153) a!3170 mask!3266))))

(declare-fun i!1163 () (_ BitVec 32))

(declare-datatypes ((Unit!27458 0))(
  ( (Unit!27459) )
))
(declare-fun lt!358510 () Unit!27458)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 (array!43567 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27458)

(assert (=> b!801820 (= lt!358510 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 a!3170 i!1163 k0!2044 j!153 lt!358508 (bvadd #b00000000000000000000000000000001 x!1077) vacantBefore!23 vacantAfter!23 mask!3266))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!801820 (= lt!358508 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!801821 () Bool)

(declare-fun res!546514 () Bool)

(assert (=> b!801821 (=> (not res!546514) (not e!444438))))

(assert (=> b!801821 (= res!546514 (validKeyInArray!0 k0!2044))))

(declare-fun b!801822 () Bool)

(declare-fun res!546505 () Bool)

(assert (=> b!801822 (=> (not res!546505) (not e!444437))))

(assert (=> b!801822 (= res!546505 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21281 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20860 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21281 a!3170)) (= (select (arr!20860 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!801823 () Bool)

(declare-fun res!546508 () Bool)

(assert (=> b!801823 (=> (not res!546508) (not e!444438))))

(assert (=> b!801823 (= res!546508 (and (= (size!21281 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21281 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21281 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!801824 () Bool)

(assert (=> b!801824 (= e!444438 e!444437)))

(declare-fun res!546510 () Bool)

(assert (=> b!801824 (=> (not res!546510) (not e!444437))))

(declare-fun lt!358512 () SeekEntryResult!8458)

(assert (=> b!801824 (= res!546510 (or (= lt!358512 (MissingZero!8458 i!1163)) (= lt!358512 (MissingVacant!8458 i!1163))))))

(assert (=> b!801824 (= lt!358512 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(declare-fun b!801825 () Bool)

(assert (=> b!801825 (= e!444437 e!444435)))

(declare-fun res!546509 () Bool)

(assert (=> b!801825 (=> (not res!546509) (not e!444435))))

(assert (=> b!801825 (= res!546509 (= (seekEntryOrOpen!0 lt!358511 lt!358507 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!358511 lt!358507 mask!3266)))))

(assert (=> b!801825 (= lt!358511 (select (store (arr!20860 a!3170) i!1163 k0!2044) j!153))))

(assert (=> b!801825 (= lt!358507 (array!43568 (store (arr!20860 a!3170) i!1163 k0!2044) (size!21281 a!3170)))))

(assert (= (and start!68826 res!546504) b!801823))

(assert (= (and b!801823 res!546508) b!801818))

(assert (= (and b!801818 res!546513) b!801821))

(assert (= (and b!801821 res!546514) b!801816))

(assert (= (and b!801816 res!546512) b!801824))

(assert (= (and b!801824 res!546510) b!801817))

(assert (= (and b!801817 res!546506) b!801815))

(assert (= (and b!801815 res!546507) b!801822))

(assert (= (and b!801822 res!546505) b!801825))

(assert (= (and b!801825 res!546509) b!801819))

(assert (= (and b!801819 res!546511) b!801820))

(declare-fun m!743205 () Bool)

(assert (=> b!801818 m!743205))

(assert (=> b!801818 m!743205))

(declare-fun m!743207 () Bool)

(assert (=> b!801818 m!743207))

(declare-fun m!743209 () Bool)

(assert (=> b!801822 m!743209))

(declare-fun m!743211 () Bool)

(assert (=> b!801822 m!743211))

(declare-fun m!743213 () Bool)

(assert (=> b!801820 m!743213))

(declare-fun m!743215 () Bool)

(assert (=> b!801820 m!743215))

(assert (=> b!801820 m!743205))

(declare-fun m!743217 () Bool)

(assert (=> b!801820 m!743217))

(declare-fun m!743219 () Bool)

(assert (=> b!801820 m!743219))

(assert (=> b!801820 m!743205))

(declare-fun m!743221 () Bool)

(assert (=> start!68826 m!743221))

(declare-fun m!743223 () Bool)

(assert (=> start!68826 m!743223))

(declare-fun m!743225 () Bool)

(assert (=> b!801816 m!743225))

(declare-fun m!743227 () Bool)

(assert (=> b!801825 m!743227))

(declare-fun m!743229 () Bool)

(assert (=> b!801825 m!743229))

(declare-fun m!743231 () Bool)

(assert (=> b!801825 m!743231))

(declare-fun m!743233 () Bool)

(assert (=> b!801825 m!743233))

(declare-fun m!743235 () Bool)

(assert (=> b!801817 m!743235))

(declare-fun m!743237 () Bool)

(assert (=> b!801819 m!743237))

(assert (=> b!801819 m!743205))

(assert (=> b!801819 m!743205))

(declare-fun m!743239 () Bool)

(assert (=> b!801819 m!743239))

(assert (=> b!801819 m!743205))

(declare-fun m!743241 () Bool)

(assert (=> b!801819 m!743241))

(declare-fun m!743243 () Bool)

(assert (=> b!801815 m!743243))

(declare-fun m!743245 () Bool)

(assert (=> b!801824 m!743245))

(declare-fun m!743247 () Bool)

(assert (=> b!801821 m!743247))

(check-sat (not start!68826) (not b!801817) (not b!801818) (not b!801821) (not b!801825) (not b!801824) (not b!801819) (not b!801815) (not b!801820) (not b!801816))
(check-sat)

; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68942 () Bool)

(assert start!68942)

(declare-fun b!803819 () Bool)

(declare-fun res!548515 () Bool)

(declare-fun e!445398 () Bool)

(assert (=> b!803819 (=> (not res!548515) (not e!445398))))

(declare-fun i!1163 () (_ BitVec 32))

(declare-datatypes ((array!43683 0))(
  ( (array!43684 (arr!20918 (Array (_ BitVec 32) (_ BitVec 64))) (size!21339 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43683)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun mask!3266 () (_ BitVec 32))

(assert (=> b!803819 (= res!548515 (and (= (size!21339 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21339 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21339 a!3170)) (not (= i!1163 j!153))))))

(declare-fun res!548512 () Bool)

(assert (=> start!68942 (=> (not res!548512) (not e!445398))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68942 (= res!548512 (validMask!0 mask!3266))))

(assert (=> start!68942 e!445398))

(assert (=> start!68942 true))

(declare-fun array_inv!16692 (array!43683) Bool)

(assert (=> start!68942 (array_inv!16692 a!3170)))

(declare-fun b!803820 () Bool)

(declare-fun res!548517 () Bool)

(declare-fun e!445396 () Bool)

(assert (=> b!803820 (=> (not res!548517) (not e!445396))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43683 (_ BitVec 32)) Bool)

(assert (=> b!803820 (= res!548517 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!803821 () Bool)

(declare-fun res!548518 () Bool)

(assert (=> b!803821 (=> (not res!548518) (not e!445396))))

(declare-datatypes ((List!14934 0))(
  ( (Nil!14931) (Cons!14930 (h!16059 (_ BitVec 64)) (t!21257 List!14934)) )
))
(declare-fun arrayNoDuplicates!0 (array!43683 (_ BitVec 32) List!14934) Bool)

(assert (=> b!803821 (= res!548518 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14931))))

(declare-fun b!803822 () Bool)

(declare-fun e!445395 () Bool)

(assert (=> b!803822 (= e!445396 e!445395)))

(declare-fun res!548514 () Bool)

(assert (=> b!803822 (=> (not res!548514) (not e!445395))))

(declare-fun lt!359943 () array!43683)

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun lt!359945 () (_ BitVec 64))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!8516 0))(
  ( (MissingZero!8516 (index!36431 (_ BitVec 32))) (Found!8516 (index!36432 (_ BitVec 32))) (Intermediate!8516 (undefined!9328 Bool) (index!36433 (_ BitVec 32)) (x!67291 (_ BitVec 32))) (Undefined!8516) (MissingVacant!8516 (index!36434 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43683 (_ BitVec 32)) SeekEntryResult!8516)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43683 (_ BitVec 32)) SeekEntryResult!8516)

(assert (=> b!803822 (= res!548514 (= (seekEntryOrOpen!0 lt!359945 lt!359943 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!359945 lt!359943 mask!3266)))))

(declare-fun k!2044 () (_ BitVec 64))

(assert (=> b!803822 (= lt!359945 (select (store (arr!20918 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!803822 (= lt!359943 (array!43684 (store (arr!20918 a!3170) i!1163 k!2044) (size!21339 a!3170)))))

(declare-fun b!803823 () Bool)

(declare-fun e!445399 () Bool)

(assert (=> b!803823 (= e!445399 (not true))))

(declare-fun lt!359944 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!803823 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!359944 vacantAfter!23 lt!359945 lt!359943 mask!3266) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!359944 vacantBefore!23 (select (arr!20918 a!3170) j!153) a!3170 mask!3266))))

(declare-datatypes ((Unit!27574 0))(
  ( (Unit!27575) )
))
(declare-fun lt!359941 () Unit!27574)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 (array!43683 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27574)

(assert (=> b!803823 (= lt!359941 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 a!3170 i!1163 k!2044 j!153 lt!359944 (bvadd #b00000000000000000000000000000001 x!1077) vacantBefore!23 vacantAfter!23 mask!3266))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!803823 (= lt!359944 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!803824 () Bool)

(declare-fun res!548510 () Bool)

(assert (=> b!803824 (=> (not res!548510) (not e!445398))))

(declare-fun arrayContainsKey!0 (array!43683 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!803824 (= res!548510 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!803825 () Bool)

(declare-fun res!548511 () Bool)

(assert (=> b!803825 (=> (not res!548511) (not e!445396))))

(assert (=> b!803825 (= res!548511 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21339 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20918 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21339 a!3170)) (= (select (arr!20918 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!803826 () Bool)

(assert (=> b!803826 (= e!445398 e!445396)))

(declare-fun res!548509 () Bool)

(assert (=> b!803826 (=> (not res!548509) (not e!445396))))

(declare-fun lt!359947 () SeekEntryResult!8516)

(assert (=> b!803826 (= res!548509 (or (= lt!359947 (MissingZero!8516 i!1163)) (= lt!359947 (MissingVacant!8516 i!1163))))))

(assert (=> b!803826 (= lt!359947 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!803827 () Bool)

(assert (=> b!803827 (= e!445395 e!445399)))

(declare-fun res!548508 () Bool)

(assert (=> b!803827 (=> (not res!548508) (not e!445399))))

(declare-fun lt!359946 () SeekEntryResult!8516)

(declare-fun lt!359942 () SeekEntryResult!8516)

(assert (=> b!803827 (= res!548508 (and (= lt!359946 lt!359942) (= lt!359942 (Found!8516 j!153)) (not (= (select (arr!20918 a!3170) index!1236) (select (arr!20918 a!3170) j!153)))))))

(assert (=> b!803827 (= lt!359942 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20918 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!803827 (= lt!359946 (seekEntryOrOpen!0 (select (arr!20918 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!803828 () Bool)

(declare-fun res!548513 () Bool)

(assert (=> b!803828 (=> (not res!548513) (not e!445398))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!803828 (= res!548513 (validKeyInArray!0 k!2044))))

(declare-fun b!803829 () Bool)

(declare-fun res!548516 () Bool)

(assert (=> b!803829 (=> (not res!548516) (not e!445398))))

(assert (=> b!803829 (= res!548516 (validKeyInArray!0 (select (arr!20918 a!3170) j!153)))))

(assert (= (and start!68942 res!548512) b!803819))

(assert (= (and b!803819 res!548515) b!803829))

(assert (= (and b!803829 res!548516) b!803828))

(assert (= (and b!803828 res!548513) b!803824))

(assert (= (and b!803824 res!548510) b!803826))

(assert (= (and b!803826 res!548509) b!803820))

(assert (= (and b!803820 res!548517) b!803821))

(assert (= (and b!803821 res!548518) b!803825))

(assert (= (and b!803825 res!548511) b!803822))

(assert (= (and b!803822 res!548514) b!803827))

(assert (= (and b!803827 res!548508) b!803823))

(declare-fun m!745793 () Bool)

(assert (=> b!803828 m!745793))

(declare-fun m!745795 () Bool)

(assert (=> b!803821 m!745795))

(declare-fun m!745797 () Bool)

(assert (=> b!803823 m!745797))

(declare-fun m!745799 () Bool)

(assert (=> b!803823 m!745799))

(declare-fun m!745801 () Bool)

(assert (=> b!803823 m!745801))

(declare-fun m!745803 () Bool)

(assert (=> b!803823 m!745803))

(assert (=> b!803823 m!745797))

(declare-fun m!745805 () Bool)

(assert (=> b!803823 m!745805))

(declare-fun m!745807 () Bool)

(assert (=> b!803826 m!745807))

(declare-fun m!745809 () Bool)

(assert (=> b!803820 m!745809))

(declare-fun m!745811 () Bool)

(assert (=> b!803822 m!745811))

(declare-fun m!745813 () Bool)

(assert (=> b!803822 m!745813))

(declare-fun m!745815 () Bool)

(assert (=> b!803822 m!745815))

(declare-fun m!745817 () Bool)

(assert (=> b!803822 m!745817))

(declare-fun m!745819 () Bool)

(assert (=> b!803825 m!745819))

(declare-fun m!745821 () Bool)

(assert (=> b!803825 m!745821))

(declare-fun m!745823 () Bool)

(assert (=> start!68942 m!745823))

(declare-fun m!745825 () Bool)

(assert (=> start!68942 m!745825))

(declare-fun m!745827 () Bool)

(assert (=> b!803827 m!745827))

(assert (=> b!803827 m!745797))

(assert (=> b!803827 m!745797))

(declare-fun m!745829 () Bool)

(assert (=> b!803827 m!745829))

(assert (=> b!803827 m!745797))

(declare-fun m!745831 () Bool)

(assert (=> b!803827 m!745831))

(declare-fun m!745833 () Bool)

(assert (=> b!803824 m!745833))

(assert (=> b!803829 m!745797))

(assert (=> b!803829 m!745797))

(declare-fun m!745835 () Bool)

(assert (=> b!803829 m!745835))

(push 1)


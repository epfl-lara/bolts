; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!69582 () Bool)

(assert start!69582)

(declare-fun b!810563 () Bool)

(declare-fun res!554015 () Bool)

(declare-fun e!448678 () Bool)

(assert (=> b!810563 (=> (not res!554015) (not e!448678))))

(declare-datatypes ((array!44029 0))(
  ( (array!44030 (arr!21082 (Array (_ BitVec 32) (_ BitVec 64))) (size!21503 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!44029)

(declare-fun k0!2044 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!44029 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!810563 (= res!554015 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(declare-fun b!810564 () Bool)

(declare-fun res!554012 () Bool)

(declare-fun e!448674 () Bool)

(assert (=> b!810564 (=> (not res!554012) (not e!448674))))

(declare-datatypes ((List!15098 0))(
  ( (Nil!15095) (Cons!15094 (h!16223 (_ BitVec 64)) (t!21421 List!15098)) )
))
(declare-fun arrayNoDuplicates!0 (array!44029 (_ BitVec 32) List!15098) Bool)

(assert (=> b!810564 (= res!554012 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!15095))))

(declare-fun b!810566 () Bool)

(declare-fun e!448676 () Bool)

(assert (=> b!810566 (= e!448674 e!448676)))

(declare-fun res!554020 () Bool)

(assert (=> b!810566 (=> (not res!554020) (not e!448676))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun lt!363353 () (_ BitVec 64))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun lt!363354 () array!44029)

(declare-datatypes ((SeekEntryResult!8680 0))(
  ( (MissingZero!8680 (index!37087 (_ BitVec 32))) (Found!8680 (index!37088 (_ BitVec 32))) (Intermediate!8680 (undefined!9492 Bool) (index!37089 (_ BitVec 32)) (x!67925 (_ BitVec 32))) (Undefined!8680) (MissingVacant!8680 (index!37090 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!44029 (_ BitVec 32)) SeekEntryResult!8680)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!44029 (_ BitVec 32)) SeekEntryResult!8680)

(assert (=> b!810566 (= res!554020 (= (seekEntryOrOpen!0 lt!363353 lt!363354 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!363353 lt!363354 mask!3266)))))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!810566 (= lt!363353 (select (store (arr!21082 a!3170) i!1163 k0!2044) j!153))))

(assert (=> b!810566 (= lt!363354 (array!44030 (store (arr!21082 a!3170) i!1163 k0!2044) (size!21503 a!3170)))))

(declare-fun b!810567 () Bool)

(declare-fun res!554013 () Bool)

(assert (=> b!810567 (=> (not res!554013) (not e!448674))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44029 (_ BitVec 32)) Bool)

(assert (=> b!810567 (= res!554013 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!810568 () Bool)

(declare-fun e!448677 () Bool)

(assert (=> b!810568 (= e!448677 (not true))))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun lt!363349 () (_ BitVec 32))

(assert (=> b!810568 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!363349 vacantAfter!23 lt!363353 lt!363354 mask!3266) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!363349 vacantBefore!23 (select (arr!21082 a!3170) j!153) a!3170 mask!3266))))

(declare-datatypes ((Unit!27622 0))(
  ( (Unit!27623) )
))
(declare-fun lt!363350 () Unit!27622)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 (array!44029 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27622)

(assert (=> b!810568 (= lt!363350 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 a!3170 i!1163 k0!2044 j!153 lt!363349 (bvadd #b00000000000000000000000000000001 x!1077) vacantBefore!23 vacantAfter!23 mask!3266))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!810568 (= lt!363349 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!810569 () Bool)

(assert (=> b!810569 (= e!448676 e!448677)))

(declare-fun res!554019 () Bool)

(assert (=> b!810569 (=> (not res!554019) (not e!448677))))

(declare-fun lt!363352 () SeekEntryResult!8680)

(declare-fun lt!363351 () SeekEntryResult!8680)

(assert (=> b!810569 (= res!554019 (and (= lt!363351 lt!363352) (= lt!363352 (Found!8680 j!153)) (not (= (select (arr!21082 a!3170) index!1236) (select (arr!21082 a!3170) j!153)))))))

(assert (=> b!810569 (= lt!363352 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!21082 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!810569 (= lt!363351 (seekEntryOrOpen!0 (select (arr!21082 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!810570 () Bool)

(declare-fun res!554014 () Bool)

(assert (=> b!810570 (=> (not res!554014) (not e!448678))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!810570 (= res!554014 (validKeyInArray!0 (select (arr!21082 a!3170) j!153)))))

(declare-fun b!810571 () Bool)

(declare-fun res!554011 () Bool)

(assert (=> b!810571 (=> (not res!554011) (not e!448674))))

(assert (=> b!810571 (= res!554011 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21503 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!21082 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21503 a!3170)) (= (select (arr!21082 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!810572 () Bool)

(declare-fun res!554016 () Bool)

(assert (=> b!810572 (=> (not res!554016) (not e!448678))))

(assert (=> b!810572 (= res!554016 (and (= (size!21503 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21503 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21503 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!810573 () Bool)

(assert (=> b!810573 (= e!448678 e!448674)))

(declare-fun res!554010 () Bool)

(assert (=> b!810573 (=> (not res!554010) (not e!448674))))

(declare-fun lt!363355 () SeekEntryResult!8680)

(assert (=> b!810573 (= res!554010 (or (= lt!363355 (MissingZero!8680 i!1163)) (= lt!363355 (MissingVacant!8680 i!1163))))))

(assert (=> b!810573 (= lt!363355 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(declare-fun res!554018 () Bool)

(assert (=> start!69582 (=> (not res!554018) (not e!448678))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69582 (= res!554018 (validMask!0 mask!3266))))

(assert (=> start!69582 e!448678))

(assert (=> start!69582 true))

(declare-fun array_inv!16856 (array!44029) Bool)

(assert (=> start!69582 (array_inv!16856 a!3170)))

(declare-fun b!810565 () Bool)

(declare-fun res!554017 () Bool)

(assert (=> b!810565 (=> (not res!554017) (not e!448678))))

(assert (=> b!810565 (= res!554017 (validKeyInArray!0 k0!2044))))

(assert (= (and start!69582 res!554018) b!810572))

(assert (= (and b!810572 res!554016) b!810570))

(assert (= (and b!810570 res!554014) b!810565))

(assert (= (and b!810565 res!554017) b!810563))

(assert (= (and b!810563 res!554015) b!810573))

(assert (= (and b!810573 res!554010) b!810567))

(assert (= (and b!810567 res!554013) b!810564))

(assert (= (and b!810564 res!554012) b!810571))

(assert (= (and b!810571 res!554011) b!810566))

(assert (= (and b!810566 res!554020) b!810569))

(assert (= (and b!810569 res!554019) b!810568))

(declare-fun m!752895 () Bool)

(assert (=> b!810566 m!752895))

(declare-fun m!752897 () Bool)

(assert (=> b!810566 m!752897))

(declare-fun m!752899 () Bool)

(assert (=> b!810566 m!752899))

(declare-fun m!752901 () Bool)

(assert (=> b!810566 m!752901))

(declare-fun m!752903 () Bool)

(assert (=> b!810563 m!752903))

(declare-fun m!752905 () Bool)

(assert (=> b!810565 m!752905))

(declare-fun m!752907 () Bool)

(assert (=> b!810564 m!752907))

(declare-fun m!752909 () Bool)

(assert (=> b!810569 m!752909))

(declare-fun m!752911 () Bool)

(assert (=> b!810569 m!752911))

(assert (=> b!810569 m!752911))

(declare-fun m!752913 () Bool)

(assert (=> b!810569 m!752913))

(assert (=> b!810569 m!752911))

(declare-fun m!752915 () Bool)

(assert (=> b!810569 m!752915))

(declare-fun m!752917 () Bool)

(assert (=> b!810571 m!752917))

(declare-fun m!752919 () Bool)

(assert (=> b!810571 m!752919))

(assert (=> b!810570 m!752911))

(assert (=> b!810570 m!752911))

(declare-fun m!752921 () Bool)

(assert (=> b!810570 m!752921))

(assert (=> b!810568 m!752911))

(assert (=> b!810568 m!752911))

(declare-fun m!752923 () Bool)

(assert (=> b!810568 m!752923))

(declare-fun m!752925 () Bool)

(assert (=> b!810568 m!752925))

(declare-fun m!752927 () Bool)

(assert (=> b!810568 m!752927))

(declare-fun m!752929 () Bool)

(assert (=> b!810568 m!752929))

(declare-fun m!752931 () Bool)

(assert (=> start!69582 m!752931))

(declare-fun m!752933 () Bool)

(assert (=> start!69582 m!752933))

(declare-fun m!752935 () Bool)

(assert (=> b!810567 m!752935))

(declare-fun m!752937 () Bool)

(assert (=> b!810573 m!752937))

(check-sat (not b!810573) (not b!810568) (not b!810570) (not b!810569) (not b!810567) (not b!810564) (not b!810565) (not start!69582) (not b!810563) (not b!810566))
(check-sat)

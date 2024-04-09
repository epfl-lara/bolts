; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68620 () Bool)

(assert start!68620)

(declare-fun b!798013 () Bool)

(declare-fun res!542704 () Bool)

(declare-fun e!442704 () Bool)

(assert (=> b!798013 (=> (not res!542704) (not e!442704))))

(declare-fun i!1163 () (_ BitVec 32))

(declare-datatypes ((array!43361 0))(
  ( (array!43362 (arr!20757 (Array (_ BitVec 32) (_ BitVec 64))) (size!21178 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43361)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun mask!3266 () (_ BitVec 32))

(assert (=> b!798013 (= res!542704 (and (= (size!21178 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21178 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21178 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!798015 () Bool)

(declare-fun e!442707 () Bool)

(assert (=> b!798015 (= e!442704 e!442707)))

(declare-fun res!542708 () Bool)

(assert (=> b!798015 (=> (not res!542708) (not e!442707))))

(declare-datatypes ((SeekEntryResult!8355 0))(
  ( (MissingZero!8355 (index!35787 (_ BitVec 32))) (Found!8355 (index!35788 (_ BitVec 32))) (Intermediate!8355 (undefined!9167 Bool) (index!35789 (_ BitVec 32)) (x!66706 (_ BitVec 32))) (Undefined!8355) (MissingVacant!8355 (index!35790 (_ BitVec 32))) )
))
(declare-fun lt!356199 () SeekEntryResult!8355)

(assert (=> b!798015 (= res!542708 (or (= lt!356199 (MissingZero!8355 i!1163)) (= lt!356199 (MissingVacant!8355 i!1163))))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43361 (_ BitVec 32)) SeekEntryResult!8355)

(assert (=> b!798015 (= lt!356199 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun lt!356195 () SeekEntryResult!8355)

(declare-fun e!442706 () Bool)

(declare-fun lt!356193 () SeekEntryResult!8355)

(declare-fun b!798016 () Bool)

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!798016 (= e!442706 (not (or (not (= lt!356193 lt!356195)) (bvslt mask!3266 #b00000000000000000000000000000000) (bvsge index!1236 (bvadd #b00000000000000000000000000000001 mask!3266)) (and (bvsge vacantBefore!23 #b00000000000000000000000000000000) (bvslt vacantBefore!23 (bvadd #b00000000000000000000000000000001 mask!3266))))))))

(assert (=> b!798016 (= lt!356193 (Found!8355 index!1236))))

(declare-fun b!798017 () Bool)

(declare-fun res!542702 () Bool)

(assert (=> b!798017 (=> (not res!542702) (not e!442704))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!798017 (= res!542702 (validKeyInArray!0 k!2044))))

(declare-fun b!798018 () Bool)

(declare-fun res!542707 () Bool)

(assert (=> b!798018 (=> (not res!542707) (not e!442707))))

(declare-datatypes ((List!14773 0))(
  ( (Nil!14770) (Cons!14769 (h!15898 (_ BitVec 64)) (t!21096 List!14773)) )
))
(declare-fun arrayNoDuplicates!0 (array!43361 (_ BitVec 32) List!14773) Bool)

(assert (=> b!798018 (= res!542707 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14770))))

(declare-fun b!798019 () Bool)

(declare-fun e!442705 () Bool)

(declare-fun e!442703 () Bool)

(assert (=> b!798019 (= e!442705 e!442703)))

(declare-fun res!542705 () Bool)

(assert (=> b!798019 (=> (not res!542705) (not e!442703))))

(declare-fun lt!356194 () SeekEntryResult!8355)

(declare-fun lt!356200 () SeekEntryResult!8355)

(assert (=> b!798019 (= res!542705 (= lt!356194 lt!356200))))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43361 (_ BitVec 32)) SeekEntryResult!8355)

(assert (=> b!798019 (= lt!356200 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20757 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!798019 (= lt!356194 (seekEntryOrOpen!0 (select (arr!20757 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!798020 () Bool)

(declare-fun res!542706 () Bool)

(assert (=> b!798020 (=> (not res!542706) (not e!442707))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(assert (=> b!798020 (= res!542706 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21178 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20757 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21178 a!3170)) (= (select (arr!20757 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!798021 () Bool)

(assert (=> b!798021 (= e!442703 e!442706)))

(declare-fun res!542709 () Bool)

(assert (=> b!798021 (=> (not res!542709) (not e!442706))))

(assert (=> b!798021 (= res!542709 (and (= lt!356200 lt!356195) (= (select (arr!20757 a!3170) index!1236) (select (arr!20757 a!3170) j!153))))))

(assert (=> b!798021 (= lt!356195 (Found!8355 j!153))))

(declare-fun b!798022 () Bool)

(declare-fun res!542713 () Bool)

(assert (=> b!798022 (=> (not res!542713) (not e!442704))))

(declare-fun arrayContainsKey!0 (array!43361 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!798022 (= res!542713 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!798023 () Bool)

(declare-fun res!542711 () Bool)

(assert (=> b!798023 (=> (not res!542711) (not e!442704))))

(assert (=> b!798023 (= res!542711 (validKeyInArray!0 (select (arr!20757 a!3170) j!153)))))

(declare-fun b!798024 () Bool)

(declare-fun res!542703 () Bool)

(assert (=> b!798024 (=> (not res!542703) (not e!442707))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43361 (_ BitVec 32)) Bool)

(assert (=> b!798024 (= res!542703 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!798014 () Bool)

(assert (=> b!798014 (= e!442707 e!442705)))

(declare-fun res!542712 () Bool)

(assert (=> b!798014 (=> (not res!542712) (not e!442705))))

(declare-fun lt!356197 () SeekEntryResult!8355)

(assert (=> b!798014 (= res!542712 (= lt!356197 lt!356193))))

(declare-fun lt!356196 () array!43361)

(declare-fun lt!356198 () (_ BitVec 64))

(assert (=> b!798014 (= lt!356193 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!356198 lt!356196 mask!3266))))

(assert (=> b!798014 (= lt!356197 (seekEntryOrOpen!0 lt!356198 lt!356196 mask!3266))))

(assert (=> b!798014 (= lt!356198 (select (store (arr!20757 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!798014 (= lt!356196 (array!43362 (store (arr!20757 a!3170) i!1163 k!2044) (size!21178 a!3170)))))

(declare-fun res!542710 () Bool)

(assert (=> start!68620 (=> (not res!542710) (not e!442704))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68620 (= res!542710 (validMask!0 mask!3266))))

(assert (=> start!68620 e!442704))

(assert (=> start!68620 true))

(declare-fun array_inv!16531 (array!43361) Bool)

(assert (=> start!68620 (array_inv!16531 a!3170)))

(assert (= (and start!68620 res!542710) b!798013))

(assert (= (and b!798013 res!542704) b!798023))

(assert (= (and b!798023 res!542711) b!798017))

(assert (= (and b!798017 res!542702) b!798022))

(assert (= (and b!798022 res!542713) b!798015))

(assert (= (and b!798015 res!542708) b!798024))

(assert (= (and b!798024 res!542703) b!798018))

(assert (= (and b!798018 res!542707) b!798020))

(assert (= (and b!798020 res!542706) b!798014))

(assert (= (and b!798014 res!542712) b!798019))

(assert (= (and b!798019 res!542705) b!798021))

(assert (= (and b!798021 res!542709) b!798016))

(declare-fun m!738997 () Bool)

(assert (=> b!798019 m!738997))

(assert (=> b!798019 m!738997))

(declare-fun m!738999 () Bool)

(assert (=> b!798019 m!738999))

(assert (=> b!798019 m!738997))

(declare-fun m!739001 () Bool)

(assert (=> b!798019 m!739001))

(declare-fun m!739003 () Bool)

(assert (=> b!798014 m!739003))

(declare-fun m!739005 () Bool)

(assert (=> b!798014 m!739005))

(declare-fun m!739007 () Bool)

(assert (=> b!798014 m!739007))

(declare-fun m!739009 () Bool)

(assert (=> b!798014 m!739009))

(declare-fun m!739011 () Bool)

(assert (=> b!798020 m!739011))

(declare-fun m!739013 () Bool)

(assert (=> b!798020 m!739013))

(declare-fun m!739015 () Bool)

(assert (=> b!798021 m!739015))

(assert (=> b!798021 m!738997))

(declare-fun m!739017 () Bool)

(assert (=> b!798018 m!739017))

(declare-fun m!739019 () Bool)

(assert (=> b!798015 m!739019))

(assert (=> b!798023 m!738997))

(assert (=> b!798023 m!738997))

(declare-fun m!739021 () Bool)

(assert (=> b!798023 m!739021))

(declare-fun m!739023 () Bool)

(assert (=> b!798022 m!739023))

(declare-fun m!739025 () Bool)

(assert (=> b!798017 m!739025))

(declare-fun m!739027 () Bool)

(assert (=> b!798024 m!739027))

(declare-fun m!739029 () Bool)

(assert (=> start!68620 m!739029))

(declare-fun m!739031 () Bool)

(assert (=> start!68620 m!739031))

(push 1)

(assert (not b!798023))

(assert (not b!798015))

(assert (not b!798018))

(assert (not b!798022))

(assert (not start!68620))

(assert (not b!798014))

(assert (not b!798024))

(assert (not b!798019))

(assert (not b!798017))

(check-sat)

(pop 1)

(push 1)

(check-sat)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!69566 () Bool)

(assert start!69566)

(declare-fun b!810269 () Bool)

(declare-fun e!448537 () Bool)

(declare-fun e!448540 () Bool)

(assert (=> b!810269 (= e!448537 e!448540)))

(declare-fun res!553726 () Bool)

(assert (=> b!810269 (=> (not res!553726) (not e!448540))))

(declare-datatypes ((SeekEntryResult!8672 0))(
  ( (MissingZero!8672 (index!37055 (_ BitVec 32))) (Found!8672 (index!37056 (_ BitVec 32))) (Intermediate!8672 (undefined!9484 Bool) (index!37057 (_ BitVec 32)) (x!67893 (_ BitVec 32))) (Undefined!8672) (MissingVacant!8672 (index!37058 (_ BitVec 32))) )
))
(declare-fun lt!363161 () SeekEntryResult!8672)

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!810269 (= res!553726 (or (= lt!363161 (MissingZero!8672 i!1163)) (= lt!363161 (MissingVacant!8672 i!1163))))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-datatypes ((array!44013 0))(
  ( (array!44014 (arr!21074 (Array (_ BitVec 32) (_ BitVec 64))) (size!21495 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!44013)

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!44013 (_ BitVec 32)) SeekEntryResult!8672)

(assert (=> b!810269 (= lt!363161 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!810270 () Bool)

(declare-fun res!553723 () Bool)

(assert (=> b!810270 (=> (not res!553723) (not e!448540))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!810270 (= res!553723 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21495 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!21074 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21495 a!3170)) (= (select (arr!21074 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!810271 () Bool)

(declare-fun res!553717 () Bool)

(assert (=> b!810271 (=> (not res!553717) (not e!448537))))

(declare-fun arrayContainsKey!0 (array!44013 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!810271 (= res!553717 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!810272 () Bool)

(declare-fun res!553728 () Bool)

(assert (=> b!810272 (=> (not res!553728) (not e!448537))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!810272 (= res!553728 (validKeyInArray!0 k!2044))))

(declare-fun res!553720 () Bool)

(assert (=> start!69566 (=> (not res!553720) (not e!448537))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69566 (= res!553720 (validMask!0 mask!3266))))

(assert (=> start!69566 e!448537))

(assert (=> start!69566 true))

(declare-fun array_inv!16848 (array!44013) Bool)

(assert (=> start!69566 (array_inv!16848 a!3170)))

(declare-fun b!810273 () Bool)

(declare-fun res!553722 () Bool)

(assert (=> b!810273 (=> (not res!553722) (not e!448540))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44013 (_ BitVec 32)) Bool)

(assert (=> b!810273 (= res!553722 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!810274 () Bool)

(declare-fun res!553716 () Bool)

(assert (=> b!810274 (=> (not res!553716) (not e!448537))))

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!810274 (= res!553716 (validKeyInArray!0 (select (arr!21074 a!3170) j!153)))))

(declare-fun b!810275 () Bool)

(declare-fun e!448538 () Bool)

(declare-fun e!448534 () Bool)

(assert (=> b!810275 (= e!448538 e!448534)))

(declare-fun res!553729 () Bool)

(assert (=> b!810275 (=> (not res!553729) (not e!448534))))

(declare-fun lt!363164 () (_ BitVec 32))

(assert (=> b!810275 (= res!553729 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1077) #b01111111111111111111111111111110) (bvsge (bvadd #b00000000000000000000000000000001 x!1077) #b00000000000000000000000000000000) (bvsge lt!363164 #b00000000000000000000000000000000) (bvslt lt!363164 (size!21495 a!3170))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!810275 (= lt!363164 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!810276 () Bool)

(declare-fun res!553725 () Bool)

(assert (=> b!810276 (=> (not res!553725) (not e!448537))))

(assert (=> b!810276 (= res!553725 (and (= (size!21495 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21495 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21495 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!810277 () Bool)

(declare-fun res!553724 () Bool)

(assert (=> b!810277 (=> (not res!553724) (not e!448534))))

(declare-fun lt!363162 () SeekEntryResult!8672)

(declare-fun lt!363169 () array!44013)

(declare-fun lt!363168 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!44013 (_ BitVec 32)) SeekEntryResult!8672)

(assert (=> b!810277 (= res!553724 (= lt!363162 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!363164 vacantAfter!23 lt!363168 lt!363169 mask!3266)))))

(declare-fun b!810278 () Bool)

(declare-fun e!448535 () Bool)

(assert (=> b!810278 (= e!448540 e!448535)))

(declare-fun res!553727 () Bool)

(assert (=> b!810278 (=> (not res!553727) (not e!448535))))

(assert (=> b!810278 (= res!553727 (= lt!363162 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!363168 lt!363169 mask!3266)))))

(assert (=> b!810278 (= lt!363162 (seekEntryOrOpen!0 lt!363168 lt!363169 mask!3266))))

(assert (=> b!810278 (= lt!363168 (select (store (arr!21074 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!810278 (= lt!363169 (array!44014 (store (arr!21074 a!3170) i!1163 k!2044) (size!21495 a!3170)))))

(declare-fun b!810279 () Bool)

(declare-fun res!553719 () Bool)

(assert (=> b!810279 (=> (not res!553719) (not e!448540))))

(declare-datatypes ((List!15090 0))(
  ( (Nil!15087) (Cons!15086 (h!16215 (_ BitVec 64)) (t!21413 List!15090)) )
))
(declare-fun arrayNoDuplicates!0 (array!44013 (_ BitVec 32) List!15090) Bool)

(assert (=> b!810279 (= res!553719 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!15087))))

(declare-fun lt!363167 () SeekEntryResult!8672)

(declare-fun lt!363166 () SeekEntryResult!8672)

(declare-fun b!810280 () Bool)

(declare-fun lt!363163 () SeekEntryResult!8672)

(assert (=> b!810280 (= e!448534 (and (= lt!363166 lt!363163) (not (= lt!363163 lt!363167))))))

(assert (=> b!810280 (= lt!363163 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!363164 vacantBefore!23 (select (arr!21074 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!810281 () Bool)

(declare-fun e!448539 () Bool)

(assert (=> b!810281 (= e!448539 e!448538)))

(declare-fun res!553721 () Bool)

(assert (=> b!810281 (=> (not res!553721) (not e!448538))))

(declare-fun lt!363165 () SeekEntryResult!8672)

(assert (=> b!810281 (= res!553721 (and (= lt!363165 lt!363167) (not (= (select (arr!21074 a!3170) index!1236) (select (arr!21074 a!3170) j!153)))))))

(assert (=> b!810281 (= lt!363167 (Found!8672 j!153))))

(declare-fun b!810282 () Bool)

(assert (=> b!810282 (= e!448535 e!448539)))

(declare-fun res!553718 () Bool)

(assert (=> b!810282 (=> (not res!553718) (not e!448539))))

(assert (=> b!810282 (= res!553718 (= lt!363166 lt!363165))))

(assert (=> b!810282 (= lt!363165 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!21074 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!810282 (= lt!363166 (seekEntryOrOpen!0 (select (arr!21074 a!3170) j!153) a!3170 mask!3266))))

(assert (= (and start!69566 res!553720) b!810276))

(assert (= (and b!810276 res!553725) b!810274))

(assert (= (and b!810274 res!553716) b!810272))

(assert (= (and b!810272 res!553728) b!810271))

(assert (= (and b!810271 res!553717) b!810269))

(assert (= (and b!810269 res!553726) b!810273))

(assert (= (and b!810273 res!553722) b!810279))

(assert (= (and b!810279 res!553719) b!810270))

(assert (= (and b!810270 res!553723) b!810278))

(assert (= (and b!810278 res!553727) b!810282))

(assert (= (and b!810282 res!553718) b!810281))

(assert (= (and b!810281 res!553721) b!810275))

(assert (= (and b!810275 res!553729) b!810277))

(assert (= (and b!810277 res!553724) b!810280))

(declare-fun m!752551 () Bool)

(assert (=> b!810278 m!752551))

(declare-fun m!752553 () Bool)

(assert (=> b!810278 m!752553))

(declare-fun m!752555 () Bool)

(assert (=> b!810278 m!752555))

(declare-fun m!752557 () Bool)

(assert (=> b!810278 m!752557))

(declare-fun m!752559 () Bool)

(assert (=> b!810269 m!752559))

(declare-fun m!752561 () Bool)

(assert (=> b!810271 m!752561))

(declare-fun m!752563 () Bool)

(assert (=> b!810282 m!752563))

(assert (=> b!810282 m!752563))

(declare-fun m!752565 () Bool)

(assert (=> b!810282 m!752565))

(assert (=> b!810282 m!752563))

(declare-fun m!752567 () Bool)

(assert (=> b!810282 m!752567))

(declare-fun m!752569 () Bool)

(assert (=> b!810272 m!752569))

(declare-fun m!752571 () Bool)

(assert (=> b!810275 m!752571))

(assert (=> b!810280 m!752563))

(assert (=> b!810280 m!752563))

(declare-fun m!752573 () Bool)

(assert (=> b!810280 m!752573))

(declare-fun m!752575 () Bool)

(assert (=> b!810279 m!752575))

(assert (=> b!810274 m!752563))

(assert (=> b!810274 m!752563))

(declare-fun m!752577 () Bool)

(assert (=> b!810274 m!752577))

(declare-fun m!752579 () Bool)

(assert (=> b!810273 m!752579))

(declare-fun m!752581 () Bool)

(assert (=> start!69566 m!752581))

(declare-fun m!752583 () Bool)

(assert (=> start!69566 m!752583))

(declare-fun m!752585 () Bool)

(assert (=> b!810277 m!752585))

(declare-fun m!752587 () Bool)

(assert (=> b!810270 m!752587))

(declare-fun m!752589 () Bool)

(assert (=> b!810270 m!752589))

(declare-fun m!752591 () Bool)

(assert (=> b!810281 m!752591))

(assert (=> b!810281 m!752563))

(push 1)

(assert (not b!810271))

(assert (not start!69566))

(assert (not b!810280))

(assert (not b!810273))

(assert (not b!810278))

(assert (not b!810272))

(assert (not b!810274))

(assert (not b!810275))

(assert (not b!810277))

(assert (not b!810282))

(assert (not b!810269))

(assert (not b!810279))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


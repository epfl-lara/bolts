; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!69568 () Bool)

(assert start!69568)

(declare-fun b!810311 () Bool)

(declare-fun res!553766 () Bool)

(declare-fun e!448556 () Bool)

(assert (=> b!810311 (=> (not res!553766) (not e!448556))))

(declare-datatypes ((array!44015 0))(
  ( (array!44016 (arr!21075 (Array (_ BitVec 32) (_ BitVec 64))) (size!21496 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!44015)

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!44015 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!810311 (= res!553766 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun res!553763 () Bool)

(assert (=> start!69568 (=> (not res!553763) (not e!448556))))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69568 (= res!553763 (validMask!0 mask!3266))))

(assert (=> start!69568 e!448556))

(assert (=> start!69568 true))

(declare-fun array_inv!16849 (array!44015) Bool)

(assert (=> start!69568 (array_inv!16849 a!3170)))

(declare-fun b!810312 () Bool)

(declare-fun e!448559 () Bool)

(declare-fun e!448555 () Bool)

(assert (=> b!810312 (= e!448559 e!448555)))

(declare-fun res!553758 () Bool)

(assert (=> b!810312 (=> (not res!553758) (not e!448555))))

(declare-fun lt!363192 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(assert (=> b!810312 (= res!553758 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1077) #b01111111111111111111111111111110) (bvsge (bvadd #b00000000000000000000000000000001 x!1077) #b00000000000000000000000000000000) (bvsge lt!363192 #b00000000000000000000000000000000) (bvslt lt!363192 (size!21496 a!3170))))))

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!810312 (= lt!363192 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!810313 () Bool)

(declare-fun res!553767 () Bool)

(assert (=> b!810313 (=> (not res!553767) (not e!448556))))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!810313 (= res!553767 (and (= (size!21496 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21496 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21496 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!810314 () Bool)

(declare-fun res!553771 () Bool)

(assert (=> b!810314 (=> (not res!553771) (not e!448556))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!810314 (= res!553771 (validKeyInArray!0 k!2044))))

(declare-datatypes ((SeekEntryResult!8673 0))(
  ( (MissingZero!8673 (index!37059 (_ BitVec 32))) (Found!8673 (index!37060 (_ BitVec 32))) (Intermediate!8673 (undefined!9485 Bool) (index!37061 (_ BitVec 32)) (x!67902 (_ BitVec 32))) (Undefined!8673) (MissingVacant!8673 (index!37062 (_ BitVec 32))) )
))
(declare-fun lt!363196 () SeekEntryResult!8673)

(declare-fun lt!363195 () SeekEntryResult!8673)

(declare-fun b!810315 () Bool)

(declare-fun lt!363190 () SeekEntryResult!8673)

(assert (=> b!810315 (= e!448555 (and (= lt!363196 lt!363195) (= lt!363195 lt!363190) (bvsge (bvsub #b01111111111111111111111111111110 (bvadd #b00000000000000000000000000000001 x!1077)) (bvsub #b01111111111111111111111111111110 x!1077))))))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!44015 (_ BitVec 32)) SeekEntryResult!8673)

(assert (=> b!810315 (= lt!363195 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!363192 vacantBefore!23 (select (arr!21075 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!810316 () Bool)

(declare-fun res!553769 () Bool)

(declare-fun e!448557 () Bool)

(assert (=> b!810316 (=> (not res!553769) (not e!448557))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44015 (_ BitVec 32)) Bool)

(assert (=> b!810316 (= res!553769 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!810317 () Bool)

(declare-fun res!553759 () Bool)

(assert (=> b!810317 (=> (not res!553759) (not e!448557))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(assert (=> b!810317 (= res!553759 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21496 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!21075 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21496 a!3170)) (= (select (arr!21075 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!810318 () Bool)

(declare-fun e!448560 () Bool)

(assert (=> b!810318 (= e!448560 e!448559)))

(declare-fun res!553765 () Bool)

(assert (=> b!810318 (=> (not res!553765) (not e!448559))))

(declare-fun lt!363194 () SeekEntryResult!8673)

(assert (=> b!810318 (= res!553765 (and (= lt!363194 lt!363190) (not (= (select (arr!21075 a!3170) index!1236) (select (arr!21075 a!3170) j!153)))))))

(assert (=> b!810318 (= lt!363190 (Found!8673 j!153))))

(declare-fun b!810319 () Bool)

(declare-fun e!448558 () Bool)

(assert (=> b!810319 (= e!448558 e!448560)))

(declare-fun res!553762 () Bool)

(assert (=> b!810319 (=> (not res!553762) (not e!448560))))

(assert (=> b!810319 (= res!553762 (= lt!363196 lt!363194))))

(assert (=> b!810319 (= lt!363194 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!21075 a!3170) j!153) a!3170 mask!3266))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!44015 (_ BitVec 32)) SeekEntryResult!8673)

(assert (=> b!810319 (= lt!363196 (seekEntryOrOpen!0 (select (arr!21075 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!810320 () Bool)

(declare-fun res!553761 () Bool)

(assert (=> b!810320 (=> (not res!553761) (not e!448555))))

(declare-fun lt!363193 () (_ BitVec 64))

(declare-fun lt!363188 () array!44015)

(declare-fun lt!363189 () SeekEntryResult!8673)

(assert (=> b!810320 (= res!553761 (= lt!363189 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!363192 vacantAfter!23 lt!363193 lt!363188 mask!3266)))))

(declare-fun b!810321 () Bool)

(declare-fun res!553770 () Bool)

(assert (=> b!810321 (=> (not res!553770) (not e!448557))))

(declare-datatypes ((List!15091 0))(
  ( (Nil!15088) (Cons!15087 (h!16216 (_ BitVec 64)) (t!21414 List!15091)) )
))
(declare-fun arrayNoDuplicates!0 (array!44015 (_ BitVec 32) List!15091) Bool)

(assert (=> b!810321 (= res!553770 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!15088))))

(declare-fun b!810322 () Bool)

(declare-fun res!553764 () Bool)

(assert (=> b!810322 (=> (not res!553764) (not e!448556))))

(assert (=> b!810322 (= res!553764 (validKeyInArray!0 (select (arr!21075 a!3170) j!153)))))

(declare-fun b!810323 () Bool)

(assert (=> b!810323 (= e!448557 e!448558)))

(declare-fun res!553760 () Bool)

(assert (=> b!810323 (=> (not res!553760) (not e!448558))))

(assert (=> b!810323 (= res!553760 (= lt!363189 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!363193 lt!363188 mask!3266)))))

(assert (=> b!810323 (= lt!363189 (seekEntryOrOpen!0 lt!363193 lt!363188 mask!3266))))

(assert (=> b!810323 (= lt!363193 (select (store (arr!21075 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!810323 (= lt!363188 (array!44016 (store (arr!21075 a!3170) i!1163 k!2044) (size!21496 a!3170)))))

(declare-fun b!810324 () Bool)

(assert (=> b!810324 (= e!448556 e!448557)))

(declare-fun res!553768 () Bool)

(assert (=> b!810324 (=> (not res!553768) (not e!448557))))

(declare-fun lt!363191 () SeekEntryResult!8673)

(assert (=> b!810324 (= res!553768 (or (= lt!363191 (MissingZero!8673 i!1163)) (= lt!363191 (MissingVacant!8673 i!1163))))))

(assert (=> b!810324 (= lt!363191 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(assert (= (and start!69568 res!553763) b!810313))

(assert (= (and b!810313 res!553767) b!810322))

(assert (= (and b!810322 res!553764) b!810314))

(assert (= (and b!810314 res!553771) b!810311))

(assert (= (and b!810311 res!553766) b!810324))

(assert (= (and b!810324 res!553768) b!810316))

(assert (= (and b!810316 res!553769) b!810321))

(assert (= (and b!810321 res!553770) b!810317))

(assert (= (and b!810317 res!553759) b!810323))

(assert (= (and b!810323 res!553760) b!810319))

(assert (= (and b!810319 res!553762) b!810318))

(assert (= (and b!810318 res!553765) b!810312))

(assert (= (and b!810312 res!553758) b!810320))

(assert (= (and b!810320 res!553761) b!810315))

(declare-fun m!752593 () Bool)

(assert (=> b!810322 m!752593))

(assert (=> b!810322 m!752593))

(declare-fun m!752595 () Bool)

(assert (=> b!810322 m!752595))

(declare-fun m!752597 () Bool)

(assert (=> b!810318 m!752597))

(assert (=> b!810318 m!752593))

(declare-fun m!752599 () Bool)

(assert (=> b!810311 m!752599))

(declare-fun m!752601 () Bool)

(assert (=> b!810316 m!752601))

(declare-fun m!752603 () Bool)

(assert (=> b!810320 m!752603))

(declare-fun m!752605 () Bool)

(assert (=> b!810324 m!752605))

(declare-fun m!752607 () Bool)

(assert (=> start!69568 m!752607))

(declare-fun m!752609 () Bool)

(assert (=> start!69568 m!752609))

(declare-fun m!752611 () Bool)

(assert (=> b!810312 m!752611))

(assert (=> b!810319 m!752593))

(assert (=> b!810319 m!752593))

(declare-fun m!752613 () Bool)

(assert (=> b!810319 m!752613))

(assert (=> b!810319 m!752593))

(declare-fun m!752615 () Bool)

(assert (=> b!810319 m!752615))

(declare-fun m!752617 () Bool)

(assert (=> b!810317 m!752617))

(declare-fun m!752619 () Bool)

(assert (=> b!810317 m!752619))

(declare-fun m!752621 () Bool)

(assert (=> b!810314 m!752621))

(declare-fun m!752623 () Bool)

(assert (=> b!810321 m!752623))

(assert (=> b!810315 m!752593))

(assert (=> b!810315 m!752593))

(declare-fun m!752625 () Bool)

(assert (=> b!810315 m!752625))

(declare-fun m!752627 () Bool)

(assert (=> b!810323 m!752627))

(declare-fun m!752629 () Bool)

(assert (=> b!810323 m!752629))

(declare-fun m!752631 () Bool)

(assert (=> b!810323 m!752631))

(declare-fun m!752633 () Bool)

(assert (=> b!810323 m!752633))

(push 1)

(assert (not b!810316))

(assert (not b!810322))

(assert (not b!810311))

(assert (not b!810320))

(assert (not b!810324))

(assert (not b!810323))

(assert (not b!810314))

(assert (not b!810319))

(assert (not b!810315))

(assert (not b!810321))

(assert (not start!69568))

(assert (not b!810312))

(check-sat)

(pop 1)

(push 1)

(check-sat)


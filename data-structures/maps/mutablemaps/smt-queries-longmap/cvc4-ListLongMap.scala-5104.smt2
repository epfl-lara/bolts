; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!69254 () Bool)

(assert start!69254)

(declare-fun b!807536 () Bool)

(declare-fun res!551833 () Bool)

(declare-fun e!447108 () Bool)

(assert (=> b!807536 (=> (not res!551833) (not e!447108))))

(declare-datatypes ((array!43905 0))(
  ( (array!43906 (arr!21026 (Array (_ BitVec 32) (_ BitVec 64))) (size!21447 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43905)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!807536 (= res!551833 (and (= (size!21447 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21447 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21447 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!807537 () Bool)

(declare-fun res!551838 () Bool)

(assert (=> b!807537 (=> (not res!551838) (not e!447108))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!807537 (= res!551838 (validKeyInArray!0 k!2044))))

(declare-fun b!807538 () Bool)

(declare-fun res!551835 () Bool)

(declare-fun e!447107 () Bool)

(assert (=> b!807538 (=> (not res!551835) (not e!447107))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!807538 (= res!551835 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21447 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!21026 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21447 a!3170)) (= (select (arr!21026 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!807539 () Bool)

(declare-fun e!447109 () Bool)

(assert (=> b!807539 (= e!447107 e!447109)))

(declare-fun res!551839 () Bool)

(assert (=> b!807539 (=> (not res!551839) (not e!447109))))

(declare-fun lt!361821 () (_ BitVec 64))

(declare-fun lt!361819 () array!43905)

(declare-datatypes ((SeekEntryResult!8624 0))(
  ( (MissingZero!8624 (index!36863 (_ BitVec 32))) (Found!8624 (index!36864 (_ BitVec 32))) (Intermediate!8624 (undefined!9436 Bool) (index!36865 (_ BitVec 32)) (x!67693 (_ BitVec 32))) (Undefined!8624) (MissingVacant!8624 (index!36866 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43905 (_ BitVec 32)) SeekEntryResult!8624)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43905 (_ BitVec 32)) SeekEntryResult!8624)

(assert (=> b!807539 (= res!551839 (= (seekEntryOrOpen!0 lt!361821 lt!361819 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!361821 lt!361819 mask!3266)))))

(assert (=> b!807539 (= lt!361821 (select (store (arr!21026 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!807539 (= lt!361819 (array!43906 (store (arr!21026 a!3170) i!1163 k!2044) (size!21447 a!3170)))))

(declare-fun b!807540 () Bool)

(declare-fun res!551834 () Bool)

(assert (=> b!807540 (=> (not res!551834) (not e!447108))))

(assert (=> b!807540 (= res!551834 (validKeyInArray!0 (select (arr!21026 a!3170) j!153)))))

(declare-fun b!807541 () Bool)

(declare-fun res!551832 () Bool)

(assert (=> b!807541 (=> (not res!551832) (not e!447107))))

(declare-datatypes ((List!15042 0))(
  ( (Nil!15039) (Cons!15038 (h!16167 (_ BitVec 64)) (t!21365 List!15042)) )
))
(declare-fun arrayNoDuplicates!0 (array!43905 (_ BitVec 32) List!15042) Bool)

(assert (=> b!807541 (= res!551832 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!15039))))

(declare-fun b!807542 () Bool)

(assert (=> b!807542 (= e!447108 e!447107)))

(declare-fun res!551830 () Bool)

(assert (=> b!807542 (=> (not res!551830) (not e!447107))))

(declare-fun lt!361822 () SeekEntryResult!8624)

(assert (=> b!807542 (= res!551830 (or (= lt!361822 (MissingZero!8624 i!1163)) (= lt!361822 (MissingVacant!8624 i!1163))))))

(assert (=> b!807542 (= lt!361822 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!807543 () Bool)

(declare-fun e!447105 () Bool)

(assert (=> b!807543 (= e!447109 e!447105)))

(declare-fun res!551837 () Bool)

(assert (=> b!807543 (=> (not res!551837) (not e!447105))))

(declare-fun lt!361817 () SeekEntryResult!8624)

(declare-fun lt!361820 () SeekEntryResult!8624)

(assert (=> b!807543 (= res!551837 (and (= lt!361817 lt!361820) (= lt!361820 (Found!8624 j!153)) (not (= (select (arr!21026 a!3170) index!1236) (select (arr!21026 a!3170) j!153)))))))

(assert (=> b!807543 (= lt!361820 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!21026 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!807543 (= lt!361817 (seekEntryOrOpen!0 (select (arr!21026 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!807544 () Bool)

(assert (=> b!807544 (= e!447105 false)))

(declare-fun lt!361818 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!807544 (= lt!361818 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun res!551831 () Bool)

(assert (=> start!69254 (=> (not res!551831) (not e!447108))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69254 (= res!551831 (validMask!0 mask!3266))))

(assert (=> start!69254 e!447108))

(assert (=> start!69254 true))

(declare-fun array_inv!16800 (array!43905) Bool)

(assert (=> start!69254 (array_inv!16800 a!3170)))

(declare-fun b!807545 () Bool)

(declare-fun res!551836 () Bool)

(assert (=> b!807545 (=> (not res!551836) (not e!447107))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43905 (_ BitVec 32)) Bool)

(assert (=> b!807545 (= res!551836 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!807546 () Bool)

(declare-fun res!551829 () Bool)

(assert (=> b!807546 (=> (not res!551829) (not e!447108))))

(declare-fun arrayContainsKey!0 (array!43905 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!807546 (= res!551829 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(assert (= (and start!69254 res!551831) b!807536))

(assert (= (and b!807536 res!551833) b!807540))

(assert (= (and b!807540 res!551834) b!807537))

(assert (= (and b!807537 res!551838) b!807546))

(assert (= (and b!807546 res!551829) b!807542))

(assert (= (and b!807542 res!551830) b!807545))

(assert (= (and b!807545 res!551836) b!807541))

(assert (= (and b!807541 res!551832) b!807538))

(assert (= (and b!807538 res!551835) b!807539))

(assert (= (and b!807539 res!551839) b!807543))

(assert (= (and b!807543 res!551837) b!807544))

(declare-fun m!749705 () Bool)

(assert (=> b!807540 m!749705))

(assert (=> b!807540 m!749705))

(declare-fun m!749707 () Bool)

(assert (=> b!807540 m!749707))

(declare-fun m!749709 () Bool)

(assert (=> b!807543 m!749709))

(assert (=> b!807543 m!749705))

(assert (=> b!807543 m!749705))

(declare-fun m!749711 () Bool)

(assert (=> b!807543 m!749711))

(assert (=> b!807543 m!749705))

(declare-fun m!749713 () Bool)

(assert (=> b!807543 m!749713))

(declare-fun m!749715 () Bool)

(assert (=> b!807545 m!749715))

(declare-fun m!749717 () Bool)

(assert (=> b!807539 m!749717))

(declare-fun m!749719 () Bool)

(assert (=> b!807539 m!749719))

(declare-fun m!749721 () Bool)

(assert (=> b!807539 m!749721))

(declare-fun m!749723 () Bool)

(assert (=> b!807539 m!749723))

(declare-fun m!749725 () Bool)

(assert (=> b!807538 m!749725))

(declare-fun m!749727 () Bool)

(assert (=> b!807538 m!749727))

(declare-fun m!749729 () Bool)

(assert (=> start!69254 m!749729))

(declare-fun m!749731 () Bool)

(assert (=> start!69254 m!749731))

(declare-fun m!749733 () Bool)

(assert (=> b!807542 m!749733))

(declare-fun m!749735 () Bool)

(assert (=> b!807537 m!749735))

(declare-fun m!749737 () Bool)

(assert (=> b!807541 m!749737))

(declare-fun m!749739 () Bool)

(assert (=> b!807546 m!749739))

(declare-fun m!749741 () Bool)

(assert (=> b!807544 m!749741))

(push 1)


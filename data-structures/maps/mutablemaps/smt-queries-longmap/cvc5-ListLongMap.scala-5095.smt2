; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!69196 () Bool)

(assert start!69196)

(declare-fun b!806570 () Bool)

(declare-fun res!550872 () Bool)

(declare-fun e!446661 () Bool)

(assert (=> b!806570 (=> (not res!550872) (not e!446661))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!806570 (= res!550872 (validKeyInArray!0 k!2044))))

(declare-fun res!550865 () Bool)

(assert (=> start!69196 (=> (not res!550865) (not e!446661))))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69196 (= res!550865 (validMask!0 mask!3266))))

(assert (=> start!69196 e!446661))

(assert (=> start!69196 true))

(declare-datatypes ((array!43847 0))(
  ( (array!43848 (arr!20997 (Array (_ BitVec 32) (_ BitVec 64))) (size!21418 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43847)

(declare-fun array_inv!16771 (array!43847) Bool)

(assert (=> start!69196 (array_inv!16771 a!3170)))

(declare-fun b!806571 () Bool)

(declare-fun e!446662 () Bool)

(assert (=> b!806571 (= e!446662 (not true))))

(declare-datatypes ((SeekEntryResult!8595 0))(
  ( (MissingZero!8595 (index!36747 (_ BitVec 32))) (Found!8595 (index!36748 (_ BitVec 32))) (Intermediate!8595 (undefined!9407 Bool) (index!36749 (_ BitVec 32)) (x!67592 (_ BitVec 32))) (Undefined!8595) (MissingVacant!8595 (index!36750 (_ BitVec 32))) )
))
(declare-fun lt!361274 () SeekEntryResult!8595)

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!806571 (= lt!361274 (Found!8595 index!1236))))

(declare-fun b!806572 () Bool)

(declare-fun e!446664 () Bool)

(assert (=> b!806572 (= e!446664 e!446662)))

(declare-fun res!550869 () Bool)

(assert (=> b!806572 (=> (not res!550869) (not e!446662))))

(declare-fun lt!361270 () SeekEntryResult!8595)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun lt!361276 () SeekEntryResult!8595)

(assert (=> b!806572 (= res!550869 (and (= lt!361276 lt!361270) (= lt!361270 (Found!8595 j!153)) (= (select (arr!20997 a!3170) index!1236) (select (arr!20997 a!3170) j!153))))))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43847 (_ BitVec 32)) SeekEntryResult!8595)

(assert (=> b!806572 (= lt!361270 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20997 a!3170) j!153) a!3170 mask!3266))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43847 (_ BitVec 32)) SeekEntryResult!8595)

(assert (=> b!806572 (= lt!361276 (seekEntryOrOpen!0 (select (arr!20997 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!806573 () Bool)

(declare-fun res!550871 () Bool)

(assert (=> b!806573 (=> (not res!550871) (not e!446661))))

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!806573 (= res!550871 (and (= (size!21418 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21418 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21418 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!806574 () Bool)

(declare-fun res!550868 () Bool)

(declare-fun e!446663 () Bool)

(assert (=> b!806574 (=> (not res!550868) (not e!446663))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43847 (_ BitVec 32)) Bool)

(assert (=> b!806574 (= res!550868 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!806575 () Bool)

(declare-fun res!550866 () Bool)

(assert (=> b!806575 (=> (not res!550866) (not e!446661))))

(declare-fun arrayContainsKey!0 (array!43847 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!806575 (= res!550866 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!806576 () Bool)

(assert (=> b!806576 (= e!446663 e!446664)))

(declare-fun res!550863 () Bool)

(assert (=> b!806576 (=> (not res!550863) (not e!446664))))

(declare-fun lt!361275 () SeekEntryResult!8595)

(assert (=> b!806576 (= res!550863 (= lt!361275 lt!361274))))

(declare-fun lt!361271 () (_ BitVec 64))

(declare-fun lt!361272 () array!43847)

(declare-fun vacantAfter!23 () (_ BitVec 32))

(assert (=> b!806576 (= lt!361274 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!361271 lt!361272 mask!3266))))

(assert (=> b!806576 (= lt!361275 (seekEntryOrOpen!0 lt!361271 lt!361272 mask!3266))))

(assert (=> b!806576 (= lt!361271 (select (store (arr!20997 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!806576 (= lt!361272 (array!43848 (store (arr!20997 a!3170) i!1163 k!2044) (size!21418 a!3170)))))

(declare-fun b!806577 () Bool)

(declare-fun res!550873 () Bool)

(assert (=> b!806577 (=> (not res!550873) (not e!446663))))

(assert (=> b!806577 (= res!550873 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21418 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20997 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21418 a!3170)) (= (select (arr!20997 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!806578 () Bool)

(assert (=> b!806578 (= e!446661 e!446663)))

(declare-fun res!550870 () Bool)

(assert (=> b!806578 (=> (not res!550870) (not e!446663))))

(declare-fun lt!361273 () SeekEntryResult!8595)

(assert (=> b!806578 (= res!550870 (or (= lt!361273 (MissingZero!8595 i!1163)) (= lt!361273 (MissingVacant!8595 i!1163))))))

(assert (=> b!806578 (= lt!361273 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!806579 () Bool)

(declare-fun res!550864 () Bool)

(assert (=> b!806579 (=> (not res!550864) (not e!446663))))

(declare-datatypes ((List!15013 0))(
  ( (Nil!15010) (Cons!15009 (h!16138 (_ BitVec 64)) (t!21336 List!15013)) )
))
(declare-fun arrayNoDuplicates!0 (array!43847 (_ BitVec 32) List!15013) Bool)

(assert (=> b!806579 (= res!550864 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!15010))))

(declare-fun b!806580 () Bool)

(declare-fun res!550867 () Bool)

(assert (=> b!806580 (=> (not res!550867) (not e!446661))))

(assert (=> b!806580 (= res!550867 (validKeyInArray!0 (select (arr!20997 a!3170) j!153)))))

(assert (= (and start!69196 res!550865) b!806573))

(assert (= (and b!806573 res!550871) b!806580))

(assert (= (and b!806580 res!550867) b!806570))

(assert (= (and b!806570 res!550872) b!806575))

(assert (= (and b!806575 res!550866) b!806578))

(assert (= (and b!806578 res!550870) b!806574))

(assert (= (and b!806574 res!550868) b!806579))

(assert (= (and b!806579 res!550864) b!806577))

(assert (= (and b!806577 res!550873) b!806576))

(assert (= (and b!806576 res!550863) b!806572))

(assert (= (and b!806572 res!550869) b!806571))

(declare-fun m!748615 () Bool)

(assert (=> b!806570 m!748615))

(declare-fun m!748617 () Bool)

(assert (=> b!806576 m!748617))

(declare-fun m!748619 () Bool)

(assert (=> b!806576 m!748619))

(declare-fun m!748621 () Bool)

(assert (=> b!806576 m!748621))

(declare-fun m!748623 () Bool)

(assert (=> b!806576 m!748623))

(declare-fun m!748625 () Bool)

(assert (=> b!806574 m!748625))

(declare-fun m!748627 () Bool)

(assert (=> start!69196 m!748627))

(declare-fun m!748629 () Bool)

(assert (=> start!69196 m!748629))

(declare-fun m!748631 () Bool)

(assert (=> b!806579 m!748631))

(declare-fun m!748633 () Bool)

(assert (=> b!806572 m!748633))

(declare-fun m!748635 () Bool)

(assert (=> b!806572 m!748635))

(assert (=> b!806572 m!748635))

(declare-fun m!748637 () Bool)

(assert (=> b!806572 m!748637))

(assert (=> b!806572 m!748635))

(declare-fun m!748639 () Bool)

(assert (=> b!806572 m!748639))

(declare-fun m!748641 () Bool)

(assert (=> b!806578 m!748641))

(declare-fun m!748643 () Bool)

(assert (=> b!806577 m!748643))

(declare-fun m!748645 () Bool)

(assert (=> b!806577 m!748645))

(declare-fun m!748647 () Bool)

(assert (=> b!806575 m!748647))

(assert (=> b!806580 m!748635))

(assert (=> b!806580 m!748635))

(declare-fun m!748649 () Bool)

(assert (=> b!806580 m!748649))

(push 1)


; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!68754 () Bool)

(assert start!68754)

(declare-fun b!800475 () Bool)

(declare-fun e!443821 () Bool)

(declare-fun e!443820 () Bool)

(assert (=> b!800475 (= e!443821 e!443820)))

(declare-fun res!545168 () Bool)

(assert (=> b!800475 (=> (not res!545168) (not e!443820))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!8422 0))(
  ( (MissingZero!8422 (index!36055 (_ BitVec 32))) (Found!8422 (index!36056 (_ BitVec 32))) (Intermediate!8422 (undefined!9234 Bool) (index!36057 (_ BitVec 32)) (x!66949 (_ BitVec 32))) (Undefined!8422) (MissingVacant!8422 (index!36058 (_ BitVec 32))) )
))
(declare-fun lt!357681 () SeekEntryResult!8422)

(declare-fun x!1077 () (_ BitVec 32))

(declare-datatypes ((array!43495 0))(
  ( (array!43496 (arr!20824 (Array (_ BitVec 32) (_ BitVec 64))) (size!21245 (_ BitVec 32))) )
))
(declare-fun lt!357680 () array!43495)

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun lt!357677 () (_ BitVec 64))

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43495 (_ BitVec 32)) SeekEntryResult!8422)

(assert (=> b!800475 (= res!545168 (= lt!357681 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!357677 lt!357680 mask!3266)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43495 (_ BitVec 32)) SeekEntryResult!8422)

(assert (=> b!800475 (= lt!357681 (seekEntryOrOpen!0 lt!357677 lt!357680 mask!3266))))

(declare-fun k0!2044 () (_ BitVec 64))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun a!3170 () array!43495)

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!800475 (= lt!357677 (select (store (arr!20824 a!3170) i!1163 k0!2044) j!153))))

(assert (=> b!800475 (= lt!357680 (array!43496 (store (arr!20824 a!3170) i!1163 k0!2044) (size!21245 a!3170)))))

(declare-fun b!800476 () Bool)

(declare-fun e!443824 () Bool)

(assert (=> b!800476 (= e!443824 false)))

(declare-fun lt!357679 () SeekEntryResult!8422)

(declare-fun lt!357682 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!800476 (= lt!357679 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!357682 vacantBefore!23 (select (arr!20824 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!800477 () Bool)

(declare-fun res!545169 () Bool)

(declare-fun e!443819 () Bool)

(assert (=> b!800477 (=> (not res!545169) (not e!443819))))

(assert (=> b!800477 (= res!545169 (and (= (size!21245 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21245 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21245 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!800478 () Bool)

(declare-fun res!545175 () Bool)

(assert (=> b!800478 (=> (not res!545175) (not e!443824))))

(assert (=> b!800478 (= res!545175 (= lt!357681 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!357682 vacantAfter!23 lt!357677 lt!357680 mask!3266)))))

(declare-fun res!545166 () Bool)

(assert (=> start!68754 (=> (not res!545166) (not e!443819))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68754 (= res!545166 (validMask!0 mask!3266))))

(assert (=> start!68754 e!443819))

(assert (=> start!68754 true))

(declare-fun array_inv!16598 (array!43495) Bool)

(assert (=> start!68754 (array_inv!16598 a!3170)))

(declare-fun b!800479 () Bool)

(declare-fun res!545173 () Bool)

(assert (=> b!800479 (=> (not res!545173) (not e!443821))))

(declare-datatypes ((List!14840 0))(
  ( (Nil!14837) (Cons!14836 (h!15965 (_ BitVec 64)) (t!21163 List!14840)) )
))
(declare-fun arrayNoDuplicates!0 (array!43495 (_ BitVec 32) List!14840) Bool)

(assert (=> b!800479 (= res!545173 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14837))))

(declare-fun b!800480 () Bool)

(declare-fun res!545167 () Bool)

(assert (=> b!800480 (=> (not res!545167) (not e!443821))))

(assert (=> b!800480 (= res!545167 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21245 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20824 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21245 a!3170)) (= (select (arr!20824 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!800481 () Bool)

(declare-fun e!443822 () Bool)

(assert (=> b!800481 (= e!443820 e!443822)))

(declare-fun res!545164 () Bool)

(assert (=> b!800481 (=> (not res!545164) (not e!443822))))

(declare-fun lt!357675 () SeekEntryResult!8422)

(declare-fun lt!357676 () SeekEntryResult!8422)

(assert (=> b!800481 (= res!545164 (and (= lt!357676 lt!357675) (= lt!357675 (Found!8422 j!153)) (not (= (select (arr!20824 a!3170) index!1236) (select (arr!20824 a!3170) j!153)))))))

(assert (=> b!800481 (= lt!357675 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20824 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!800481 (= lt!357676 (seekEntryOrOpen!0 (select (arr!20824 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!800482 () Bool)

(declare-fun res!545174 () Bool)

(assert (=> b!800482 (=> (not res!545174) (not e!443819))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!800482 (= res!545174 (validKeyInArray!0 (select (arr!20824 a!3170) j!153)))))

(declare-fun b!800483 () Bool)

(assert (=> b!800483 (= e!443819 e!443821)))

(declare-fun res!545176 () Bool)

(assert (=> b!800483 (=> (not res!545176) (not e!443821))))

(declare-fun lt!357678 () SeekEntryResult!8422)

(assert (=> b!800483 (= res!545176 (or (= lt!357678 (MissingZero!8422 i!1163)) (= lt!357678 (MissingVacant!8422 i!1163))))))

(assert (=> b!800483 (= lt!357678 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(declare-fun b!800484 () Bool)

(declare-fun res!545171 () Bool)

(assert (=> b!800484 (=> (not res!545171) (not e!443819))))

(assert (=> b!800484 (= res!545171 (validKeyInArray!0 k0!2044))))

(declare-fun b!800485 () Bool)

(declare-fun res!545172 () Bool)

(assert (=> b!800485 (=> (not res!545172) (not e!443819))))

(declare-fun arrayContainsKey!0 (array!43495 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!800485 (= res!545172 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(declare-fun b!800486 () Bool)

(declare-fun res!545170 () Bool)

(assert (=> b!800486 (=> (not res!545170) (not e!443821))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43495 (_ BitVec 32)) Bool)

(assert (=> b!800486 (= res!545170 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!800487 () Bool)

(assert (=> b!800487 (= e!443822 e!443824)))

(declare-fun res!545165 () Bool)

(assert (=> b!800487 (=> (not res!545165) (not e!443824))))

(assert (=> b!800487 (= res!545165 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1077) #b01111111111111111111111111111110) (bvsge (bvadd #b00000000000000000000000000000001 x!1077) #b00000000000000000000000000000000) (bvsge lt!357682 #b00000000000000000000000000000000) (bvslt lt!357682 (size!21245 a!3170))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!800487 (= lt!357682 (nextIndex!0 index!1236 x!1077 mask!3266))))

(assert (= (and start!68754 res!545166) b!800477))

(assert (= (and b!800477 res!545169) b!800482))

(assert (= (and b!800482 res!545174) b!800484))

(assert (= (and b!800484 res!545171) b!800485))

(assert (= (and b!800485 res!545172) b!800483))

(assert (= (and b!800483 res!545176) b!800486))

(assert (= (and b!800486 res!545170) b!800479))

(assert (= (and b!800479 res!545173) b!800480))

(assert (= (and b!800480 res!545167) b!800475))

(assert (= (and b!800475 res!545168) b!800481))

(assert (= (and b!800481 res!545164) b!800487))

(assert (= (and b!800487 res!545165) b!800478))

(assert (= (and b!800478 res!545175) b!800476))

(declare-fun m!741673 () Bool)

(assert (=> b!800487 m!741673))

(declare-fun m!741675 () Bool)

(assert (=> b!800479 m!741675))

(declare-fun m!741677 () Bool)

(assert (=> b!800481 m!741677))

(declare-fun m!741679 () Bool)

(assert (=> b!800481 m!741679))

(assert (=> b!800481 m!741679))

(declare-fun m!741681 () Bool)

(assert (=> b!800481 m!741681))

(assert (=> b!800481 m!741679))

(declare-fun m!741683 () Bool)

(assert (=> b!800481 m!741683))

(assert (=> b!800476 m!741679))

(assert (=> b!800476 m!741679))

(declare-fun m!741685 () Bool)

(assert (=> b!800476 m!741685))

(assert (=> b!800482 m!741679))

(assert (=> b!800482 m!741679))

(declare-fun m!741687 () Bool)

(assert (=> b!800482 m!741687))

(declare-fun m!741689 () Bool)

(assert (=> b!800480 m!741689))

(declare-fun m!741691 () Bool)

(assert (=> b!800480 m!741691))

(declare-fun m!741693 () Bool)

(assert (=> b!800485 m!741693))

(declare-fun m!741695 () Bool)

(assert (=> b!800475 m!741695))

(declare-fun m!741697 () Bool)

(assert (=> b!800475 m!741697))

(declare-fun m!741699 () Bool)

(assert (=> b!800475 m!741699))

(declare-fun m!741701 () Bool)

(assert (=> b!800475 m!741701))

(declare-fun m!741703 () Bool)

(assert (=> b!800484 m!741703))

(declare-fun m!741705 () Bool)

(assert (=> start!68754 m!741705))

(declare-fun m!741707 () Bool)

(assert (=> start!68754 m!741707))

(declare-fun m!741709 () Bool)

(assert (=> b!800483 m!741709))

(declare-fun m!741711 () Bool)

(assert (=> b!800486 m!741711))

(declare-fun m!741713 () Bool)

(assert (=> b!800478 m!741713))

(check-sat (not b!800486) (not b!800485) (not b!800487) (not b!800478) (not b!800481) (not b!800476) (not b!800475) (not b!800479) (not b!800484) (not start!68754) (not b!800482) (not b!800483))
(check-sat)

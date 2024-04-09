; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!69198 () Bool)

(assert start!69198)

(declare-fun b!806603 () Bool)

(declare-fun res!550898 () Bool)

(declare-fun e!446676 () Bool)

(assert (=> b!806603 (=> (not res!550898) (not e!446676))))

(declare-datatypes ((array!43849 0))(
  ( (array!43850 (arr!20998 (Array (_ BitVec 32) (_ BitVec 64))) (size!21419 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43849)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!806603 (= res!550898 (validKeyInArray!0 (select (arr!20998 a!3170) j!153)))))

(declare-fun b!806604 () Bool)

(declare-fun e!446677 () Bool)

(declare-fun e!446679 () Bool)

(assert (=> b!806604 (= e!446677 e!446679)))

(declare-fun res!550905 () Bool)

(assert (=> b!806604 (=> (not res!550905) (not e!446679))))

(declare-datatypes ((SeekEntryResult!8596 0))(
  ( (MissingZero!8596 (index!36751 (_ BitVec 32))) (Found!8596 (index!36752 (_ BitVec 32))) (Intermediate!8596 (undefined!9408 Bool) (index!36753 (_ BitVec 32)) (x!67593 (_ BitVec 32))) (Undefined!8596) (MissingVacant!8596 (index!36754 (_ BitVec 32))) )
))
(declare-fun lt!361292 () SeekEntryResult!8596)

(declare-fun lt!361291 () SeekEntryResult!8596)

(assert (=> b!806604 (= res!550905 (= lt!361292 lt!361291))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun lt!361293 () array!43849)

(declare-fun lt!361297 () (_ BitVec 64))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43849 (_ BitVec 32)) SeekEntryResult!8596)

(assert (=> b!806604 (= lt!361291 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!361297 lt!361293 mask!3266))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43849 (_ BitVec 32)) SeekEntryResult!8596)

(assert (=> b!806604 (= lt!361292 (seekEntryOrOpen!0 lt!361297 lt!361293 mask!3266))))

(declare-fun k0!2044 () (_ BitVec 64))

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!806604 (= lt!361297 (select (store (arr!20998 a!3170) i!1163 k0!2044) j!153))))

(assert (=> b!806604 (= lt!361293 (array!43850 (store (arr!20998 a!3170) i!1163 k0!2044) (size!21419 a!3170)))))

(declare-fun b!806606 () Bool)

(declare-fun res!550899 () Bool)

(assert (=> b!806606 (=> (not res!550899) (not e!446677))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43849 (_ BitVec 32)) Bool)

(assert (=> b!806606 (= res!550899 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!806607 () Bool)

(declare-fun res!550902 () Bool)

(assert (=> b!806607 (=> (not res!550902) (not e!446676))))

(assert (=> b!806607 (= res!550902 (and (= (size!21419 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21419 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21419 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!806608 () Bool)

(assert (=> b!806608 (= e!446676 e!446677)))

(declare-fun res!550901 () Bool)

(assert (=> b!806608 (=> (not res!550901) (not e!446677))))

(declare-fun lt!361294 () SeekEntryResult!8596)

(assert (=> b!806608 (= res!550901 (or (= lt!361294 (MissingZero!8596 i!1163)) (= lt!361294 (MissingVacant!8596 i!1163))))))

(assert (=> b!806608 (= lt!361294 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(declare-fun b!806609 () Bool)

(declare-fun res!550897 () Bool)

(assert (=> b!806609 (=> (not res!550897) (not e!446676))))

(declare-fun arrayContainsKey!0 (array!43849 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!806609 (= res!550897 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(declare-fun b!806610 () Bool)

(declare-fun res!550904 () Bool)

(assert (=> b!806610 (=> (not res!550904) (not e!446677))))

(declare-datatypes ((List!15014 0))(
  ( (Nil!15011) (Cons!15010 (h!16139 (_ BitVec 64)) (t!21337 List!15014)) )
))
(declare-fun arrayNoDuplicates!0 (array!43849 (_ BitVec 32) List!15014) Bool)

(assert (=> b!806610 (= res!550904 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!15011))))

(declare-fun b!806611 () Bool)

(declare-fun res!550906 () Bool)

(assert (=> b!806611 (=> (not res!550906) (not e!446677))))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!806611 (= res!550906 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21419 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20998 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21419 a!3170)) (= (select (arr!20998 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!806605 () Bool)

(declare-fun e!446678 () Bool)

(assert (=> b!806605 (= e!446678 (not true))))

(assert (=> b!806605 (= lt!361291 (Found!8596 index!1236))))

(declare-fun res!550896 () Bool)

(assert (=> start!69198 (=> (not res!550896) (not e!446676))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69198 (= res!550896 (validMask!0 mask!3266))))

(assert (=> start!69198 e!446676))

(assert (=> start!69198 true))

(declare-fun array_inv!16772 (array!43849) Bool)

(assert (=> start!69198 (array_inv!16772 a!3170)))

(declare-fun b!806612 () Bool)

(declare-fun res!550903 () Bool)

(assert (=> b!806612 (=> (not res!550903) (not e!446676))))

(assert (=> b!806612 (= res!550903 (validKeyInArray!0 k0!2044))))

(declare-fun b!806613 () Bool)

(assert (=> b!806613 (= e!446679 e!446678)))

(declare-fun res!550900 () Bool)

(assert (=> b!806613 (=> (not res!550900) (not e!446678))))

(declare-fun lt!361295 () SeekEntryResult!8596)

(declare-fun lt!361296 () SeekEntryResult!8596)

(assert (=> b!806613 (= res!550900 (and (= lt!361296 lt!361295) (= lt!361295 (Found!8596 j!153)) (= (select (arr!20998 a!3170) index!1236) (select (arr!20998 a!3170) j!153))))))

(assert (=> b!806613 (= lt!361295 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20998 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!806613 (= lt!361296 (seekEntryOrOpen!0 (select (arr!20998 a!3170) j!153) a!3170 mask!3266))))

(assert (= (and start!69198 res!550896) b!806607))

(assert (= (and b!806607 res!550902) b!806603))

(assert (= (and b!806603 res!550898) b!806612))

(assert (= (and b!806612 res!550903) b!806609))

(assert (= (and b!806609 res!550897) b!806608))

(assert (= (and b!806608 res!550901) b!806606))

(assert (= (and b!806606 res!550899) b!806610))

(assert (= (and b!806610 res!550904) b!806611))

(assert (= (and b!806611 res!550906) b!806604))

(assert (= (and b!806604 res!550905) b!806613))

(assert (= (and b!806613 res!550900) b!806605))

(declare-fun m!748651 () Bool)

(assert (=> b!806604 m!748651))

(declare-fun m!748653 () Bool)

(assert (=> b!806604 m!748653))

(declare-fun m!748655 () Bool)

(assert (=> b!806604 m!748655))

(declare-fun m!748657 () Bool)

(assert (=> b!806604 m!748657))

(declare-fun m!748659 () Bool)

(assert (=> b!806611 m!748659))

(declare-fun m!748661 () Bool)

(assert (=> b!806611 m!748661))

(declare-fun m!748663 () Bool)

(assert (=> start!69198 m!748663))

(declare-fun m!748665 () Bool)

(assert (=> start!69198 m!748665))

(declare-fun m!748667 () Bool)

(assert (=> b!806606 m!748667))

(declare-fun m!748669 () Bool)

(assert (=> b!806610 m!748669))

(declare-fun m!748671 () Bool)

(assert (=> b!806612 m!748671))

(declare-fun m!748673 () Bool)

(assert (=> b!806609 m!748673))

(declare-fun m!748675 () Bool)

(assert (=> b!806613 m!748675))

(declare-fun m!748677 () Bool)

(assert (=> b!806613 m!748677))

(assert (=> b!806613 m!748677))

(declare-fun m!748679 () Bool)

(assert (=> b!806613 m!748679))

(assert (=> b!806613 m!748677))

(declare-fun m!748681 () Bool)

(assert (=> b!806613 m!748681))

(declare-fun m!748683 () Bool)

(assert (=> b!806608 m!748683))

(assert (=> b!806603 m!748677))

(assert (=> b!806603 m!748677))

(declare-fun m!748685 () Bool)

(assert (=> b!806603 m!748685))

(check-sat (not b!806612) (not b!806613) (not b!806609) (not start!69198) (not b!806603) (not b!806608) (not b!806610) (not b!806606) (not b!806604))
(check-sat)

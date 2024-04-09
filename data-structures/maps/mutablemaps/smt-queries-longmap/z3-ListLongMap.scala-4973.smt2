; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!68370 () Bool)

(assert start!68370)

(declare-fun b!793980 () Bool)

(declare-fun e!440948 () Bool)

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!793980 (= e!440948 (and (bvsge mask!3266 #b00000000000000000000000000000000) (bvsge index!1236 (bvadd #b00000000000000000000000000000001 mask!3266))))))

(declare-fun b!793981 () Bool)

(declare-fun e!440949 () Bool)

(declare-fun e!440947 () Bool)

(assert (=> b!793981 (= e!440949 e!440947)))

(declare-fun res!538672 () Bool)

(assert (=> b!793981 (=> (not res!538672) (not e!440947))))

(declare-datatypes ((SeekEntryResult!8230 0))(
  ( (MissingZero!8230 (index!35287 (_ BitVec 32))) (Found!8230 (index!35288 (_ BitVec 32))) (Intermediate!8230 (undefined!9042 Bool) (index!35289 (_ BitVec 32)) (x!66245 (_ BitVec 32))) (Undefined!8230) (MissingVacant!8230 (index!35290 (_ BitVec 32))) )
))
(declare-fun lt!353953 () SeekEntryResult!8230)

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!793981 (= res!538672 (or (= lt!353953 (MissingZero!8230 i!1163)) (= lt!353953 (MissingVacant!8230 i!1163))))))

(declare-fun k0!2044 () (_ BitVec 64))

(declare-datatypes ((array!43111 0))(
  ( (array!43112 (arr!20632 (Array (_ BitVec 32) (_ BitVec 64))) (size!21053 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43111)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43111 (_ BitVec 32)) SeekEntryResult!8230)

(assert (=> b!793981 (= lt!353953 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(declare-fun b!793982 () Bool)

(declare-fun res!538675 () Bool)

(assert (=> b!793982 (=> (not res!538675) (not e!440949))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!793982 (= res!538675 (validKeyInArray!0 k0!2044))))

(declare-fun b!793983 () Bool)

(declare-fun res!538670 () Bool)

(assert (=> b!793983 (=> (not res!538670) (not e!440947))))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!793983 (= res!538670 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21053 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20632 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21053 a!3170)) (= (select (arr!20632 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!793984 () Bool)

(declare-fun res!538669 () Bool)

(assert (=> b!793984 (=> (not res!538669) (not e!440947))))

(declare-datatypes ((List!14648 0))(
  ( (Nil!14645) (Cons!14644 (h!15773 (_ BitVec 64)) (t!20971 List!14648)) )
))
(declare-fun arrayNoDuplicates!0 (array!43111 (_ BitVec 32) List!14648) Bool)

(assert (=> b!793984 (= res!538669 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14645))))

(declare-fun b!793985 () Bool)

(declare-fun res!538673 () Bool)

(assert (=> b!793985 (=> (not res!538673) (not e!440949))))

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!793985 (= res!538673 (validKeyInArray!0 (select (arr!20632 a!3170) j!153)))))

(declare-fun b!793986 () Bool)

(declare-fun res!538678 () Bool)

(assert (=> b!793986 (=> (not res!538678) (not e!440949))))

(assert (=> b!793986 (= res!538678 (and (= (size!21053 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21053 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21053 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!793987 () Bool)

(assert (=> b!793987 (= e!440947 e!440948)))

(declare-fun res!538676 () Bool)

(assert (=> b!793987 (=> (not res!538676) (not e!440948))))

(declare-fun lt!353952 () (_ BitVec 64))

(declare-fun lt!353951 () array!43111)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43111 (_ BitVec 32)) SeekEntryResult!8230)

(assert (=> b!793987 (= res!538676 (= (seekEntryOrOpen!0 lt!353952 lt!353951 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!353952 lt!353951 mask!3266)))))

(assert (=> b!793987 (= lt!353952 (select (store (arr!20632 a!3170) i!1163 k0!2044) j!153))))

(assert (=> b!793987 (= lt!353951 (array!43112 (store (arr!20632 a!3170) i!1163 k0!2044) (size!21053 a!3170)))))

(declare-fun b!793989 () Bool)

(declare-fun res!538671 () Bool)

(assert (=> b!793989 (=> (not res!538671) (not e!440947))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43111 (_ BitVec 32)) Bool)

(assert (=> b!793989 (= res!538671 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun res!538677 () Bool)

(assert (=> start!68370 (=> (not res!538677) (not e!440949))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68370 (= res!538677 (validMask!0 mask!3266))))

(assert (=> start!68370 e!440949))

(assert (=> start!68370 true))

(declare-fun array_inv!16406 (array!43111) Bool)

(assert (=> start!68370 (array_inv!16406 a!3170)))

(declare-fun b!793988 () Bool)

(declare-fun res!538674 () Bool)

(assert (=> b!793988 (=> (not res!538674) (not e!440949))))

(declare-fun arrayContainsKey!0 (array!43111 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!793988 (= res!538674 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(assert (= (and start!68370 res!538677) b!793986))

(assert (= (and b!793986 res!538678) b!793985))

(assert (= (and b!793985 res!538673) b!793982))

(assert (= (and b!793982 res!538675) b!793988))

(assert (= (and b!793988 res!538674) b!793981))

(assert (= (and b!793981 res!538672) b!793989))

(assert (= (and b!793989 res!538671) b!793984))

(assert (= (and b!793984 res!538669) b!793983))

(assert (= (and b!793983 res!538670) b!793987))

(assert (= (and b!793987 res!538676) b!793980))

(declare-fun m!734593 () Bool)

(assert (=> b!793988 m!734593))

(declare-fun m!734595 () Bool)

(assert (=> b!793984 m!734595))

(declare-fun m!734597 () Bool)

(assert (=> b!793981 m!734597))

(declare-fun m!734599 () Bool)

(assert (=> b!793983 m!734599))

(declare-fun m!734601 () Bool)

(assert (=> b!793983 m!734601))

(declare-fun m!734603 () Bool)

(assert (=> b!793989 m!734603))

(declare-fun m!734605 () Bool)

(assert (=> b!793987 m!734605))

(declare-fun m!734607 () Bool)

(assert (=> b!793987 m!734607))

(declare-fun m!734609 () Bool)

(assert (=> b!793987 m!734609))

(declare-fun m!734611 () Bool)

(assert (=> b!793987 m!734611))

(declare-fun m!734613 () Bool)

(assert (=> b!793985 m!734613))

(assert (=> b!793985 m!734613))

(declare-fun m!734615 () Bool)

(assert (=> b!793985 m!734615))

(declare-fun m!734617 () Bool)

(assert (=> b!793982 m!734617))

(declare-fun m!734619 () Bool)

(assert (=> start!68370 m!734619))

(declare-fun m!734621 () Bool)

(assert (=> start!68370 m!734621))

(check-sat (not b!793981) (not b!793984) (not b!793989) (not b!793982) (not start!68370) (not b!793988) (not b!793987) (not b!793985))
(check-sat)

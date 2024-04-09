; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!69214 () Bool)

(assert start!69214)

(declare-fun b!806876 () Bool)

(declare-fun res!551177 () Bool)

(declare-fun e!446809 () Bool)

(assert (=> b!806876 (=> (not res!551177) (not e!446809))))

(declare-datatypes ((array!43865 0))(
  ( (array!43866 (arr!21006 (Array (_ BitVec 32) (_ BitVec 64))) (size!21427 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43865)

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43865 (_ BitVec 32)) Bool)

(assert (=> b!806876 (= res!551177 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!806877 () Bool)

(declare-fun res!551171 () Bool)

(assert (=> b!806877 (=> (not res!551171) (not e!446809))))

(declare-datatypes ((List!15022 0))(
  ( (Nil!15019) (Cons!15018 (h!16147 (_ BitVec 64)) (t!21345 List!15022)) )
))
(declare-fun arrayNoDuplicates!0 (array!43865 (_ BitVec 32) List!15022) Bool)

(assert (=> b!806877 (= res!551171 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!15019))))

(declare-fun res!551170 () Bool)

(declare-fun e!446805 () Bool)

(assert (=> start!69214 (=> (not res!551170) (not e!446805))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69214 (= res!551170 (validMask!0 mask!3266))))

(assert (=> start!69214 e!446805))

(assert (=> start!69214 true))

(declare-fun array_inv!16780 (array!43865) Bool)

(assert (=> start!69214 (array_inv!16780 a!3170)))

(declare-fun b!806878 () Bool)

(declare-fun res!551178 () Bool)

(assert (=> b!806878 (=> (not res!551178) (not e!446805))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!806878 (= res!551178 (validKeyInArray!0 k!2044))))

(declare-fun b!806879 () Bool)

(declare-fun res!551176 () Bool)

(assert (=> b!806879 (=> (not res!551176) (not e!446805))))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!806879 (= res!551176 (and (= (size!21427 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21427 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21427 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!806880 () Bool)

(declare-fun res!551169 () Bool)

(assert (=> b!806880 (=> (not res!551169) (not e!446809))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!806880 (= res!551169 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21427 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!21006 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21427 a!3170)) (= (select (arr!21006 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!806881 () Bool)

(declare-fun e!446808 () Bool)

(declare-fun e!446806 () Bool)

(assert (=> b!806881 (= e!446808 e!446806)))

(declare-fun res!551174 () Bool)

(assert (=> b!806881 (=> (not res!551174) (not e!446806))))

(declare-datatypes ((SeekEntryResult!8604 0))(
  ( (MissingZero!8604 (index!36783 (_ BitVec 32))) (Found!8604 (index!36784 (_ BitVec 32))) (Intermediate!8604 (undefined!9416 Bool) (index!36785 (_ BitVec 32)) (x!67625 (_ BitVec 32))) (Undefined!8604) (MissingVacant!8604 (index!36786 (_ BitVec 32))) )
))
(declare-fun lt!361461 () SeekEntryResult!8604)

(declare-fun lt!361459 () SeekEntryResult!8604)

(assert (=> b!806881 (= res!551174 (and (= lt!361461 lt!361459) (= lt!361459 (Found!8604 j!153)) (not (= (select (arr!21006 a!3170) index!1236) (select (arr!21006 a!3170) j!153)))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43865 (_ BitVec 32)) SeekEntryResult!8604)

(assert (=> b!806881 (= lt!361459 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!21006 a!3170) j!153) a!3170 mask!3266))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43865 (_ BitVec 32)) SeekEntryResult!8604)

(assert (=> b!806881 (= lt!361461 (seekEntryOrOpen!0 (select (arr!21006 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!806882 () Bool)

(declare-fun res!551172 () Bool)

(assert (=> b!806882 (=> (not res!551172) (not e!446805))))

(assert (=> b!806882 (= res!551172 (validKeyInArray!0 (select (arr!21006 a!3170) j!153)))))

(declare-fun b!806883 () Bool)

(declare-fun res!551173 () Bool)

(assert (=> b!806883 (=> (not res!551173) (not e!446805))))

(declare-fun arrayContainsKey!0 (array!43865 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!806883 (= res!551173 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!806884 () Bool)

(assert (=> b!806884 (= e!446806 false)))

(declare-fun lt!361462 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!806884 (= lt!361462 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!806885 () Bool)

(assert (=> b!806885 (= e!446809 e!446808)))

(declare-fun res!551179 () Bool)

(assert (=> b!806885 (=> (not res!551179) (not e!446808))))

(declare-fun lt!361460 () array!43865)

(declare-fun lt!361457 () (_ BitVec 64))

(assert (=> b!806885 (= res!551179 (= (seekEntryOrOpen!0 lt!361457 lt!361460 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!361457 lt!361460 mask!3266)))))

(assert (=> b!806885 (= lt!361457 (select (store (arr!21006 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!806885 (= lt!361460 (array!43866 (store (arr!21006 a!3170) i!1163 k!2044) (size!21427 a!3170)))))

(declare-fun b!806886 () Bool)

(assert (=> b!806886 (= e!446805 e!446809)))

(declare-fun res!551175 () Bool)

(assert (=> b!806886 (=> (not res!551175) (not e!446809))))

(declare-fun lt!361458 () SeekEntryResult!8604)

(assert (=> b!806886 (= res!551175 (or (= lt!361458 (MissingZero!8604 i!1163)) (= lt!361458 (MissingVacant!8604 i!1163))))))

(assert (=> b!806886 (= lt!361458 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(assert (= (and start!69214 res!551170) b!806879))

(assert (= (and b!806879 res!551176) b!806882))

(assert (= (and b!806882 res!551172) b!806878))

(assert (= (and b!806878 res!551178) b!806883))

(assert (= (and b!806883 res!551173) b!806886))

(assert (= (and b!806886 res!551175) b!806876))

(assert (= (and b!806876 res!551177) b!806877))

(assert (= (and b!806877 res!551171) b!806880))

(assert (= (and b!806880 res!551169) b!806885))

(assert (= (and b!806885 res!551179) b!806881))

(assert (= (and b!806881 res!551174) b!806884))

(declare-fun m!748945 () Bool)

(assert (=> b!806884 m!748945))

(declare-fun m!748947 () Bool)

(assert (=> b!806876 m!748947))

(declare-fun m!748949 () Bool)

(assert (=> b!806877 m!748949))

(declare-fun m!748951 () Bool)

(assert (=> b!806886 m!748951))

(declare-fun m!748953 () Bool)

(assert (=> b!806880 m!748953))

(declare-fun m!748955 () Bool)

(assert (=> b!806880 m!748955))

(declare-fun m!748957 () Bool)

(assert (=> b!806878 m!748957))

(declare-fun m!748959 () Bool)

(assert (=> b!806883 m!748959))

(declare-fun m!748961 () Bool)

(assert (=> b!806882 m!748961))

(assert (=> b!806882 m!748961))

(declare-fun m!748963 () Bool)

(assert (=> b!806882 m!748963))

(declare-fun m!748965 () Bool)

(assert (=> start!69214 m!748965))

(declare-fun m!748967 () Bool)

(assert (=> start!69214 m!748967))

(declare-fun m!748969 () Bool)

(assert (=> b!806885 m!748969))

(declare-fun m!748971 () Bool)

(assert (=> b!806885 m!748971))

(declare-fun m!748973 () Bool)

(assert (=> b!806885 m!748973))

(declare-fun m!748975 () Bool)

(assert (=> b!806885 m!748975))

(declare-fun m!748977 () Bool)

(assert (=> b!806881 m!748977))

(assert (=> b!806881 m!748961))

(assert (=> b!806881 m!748961))

(declare-fun m!748979 () Bool)

(assert (=> b!806881 m!748979))

(assert (=> b!806881 m!748961))

(declare-fun m!748981 () Bool)

(assert (=> b!806881 m!748981))

(push 1)


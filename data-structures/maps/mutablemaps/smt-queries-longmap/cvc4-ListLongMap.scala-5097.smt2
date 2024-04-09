; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!69212 () Bool)

(assert start!69212)

(declare-fun b!806843 () Bool)

(declare-fun res!551139 () Bool)

(declare-fun e!446790 () Bool)

(assert (=> b!806843 (=> (not res!551139) (not e!446790))))

(declare-datatypes ((array!43863 0))(
  ( (array!43864 (arr!21005 (Array (_ BitVec 32) (_ BitVec 64))) (size!21426 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43863)

(declare-datatypes ((List!15021 0))(
  ( (Nil!15018) (Cons!15017 (h!16146 (_ BitVec 64)) (t!21344 List!15021)) )
))
(declare-fun arrayNoDuplicates!0 (array!43863 (_ BitVec 32) List!15021) Bool)

(assert (=> b!806843 (= res!551139 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!15018))))

(declare-fun b!806844 () Bool)

(declare-fun res!551143 () Bool)

(declare-fun e!446793 () Bool)

(assert (=> b!806844 (=> (not res!551143) (not e!446793))))

(declare-fun j!153 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!806844 (= res!551143 (validKeyInArray!0 (select (arr!21005 a!3170) j!153)))))

(declare-fun b!806845 () Bool)

(declare-fun e!446792 () Bool)

(assert (=> b!806845 (= e!446790 e!446792)))

(declare-fun res!551144 () Bool)

(assert (=> b!806845 (=> (not res!551144) (not e!446792))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun lt!361441 () (_ BitVec 64))

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun lt!361442 () array!43863)

(declare-datatypes ((SeekEntryResult!8603 0))(
  ( (MissingZero!8603 (index!36779 (_ BitVec 32))) (Found!8603 (index!36780 (_ BitVec 32))) (Intermediate!8603 (undefined!9415 Bool) (index!36781 (_ BitVec 32)) (x!67616 (_ BitVec 32))) (Undefined!8603) (MissingVacant!8603 (index!36782 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43863 (_ BitVec 32)) SeekEntryResult!8603)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43863 (_ BitVec 32)) SeekEntryResult!8603)

(assert (=> b!806845 (= res!551144 (= (seekEntryOrOpen!0 lt!361441 lt!361442 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!361441 lt!361442 mask!3266)))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!806845 (= lt!361441 (select (store (arr!21005 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!806845 (= lt!361442 (array!43864 (store (arr!21005 a!3170) i!1163 k!2044) (size!21426 a!3170)))))

(declare-fun b!806846 () Bool)

(declare-fun res!551145 () Bool)

(assert (=> b!806846 (=> (not res!551145) (not e!446790))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43863 (_ BitVec 32)) Bool)

(assert (=> b!806846 (= res!551145 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!806847 () Bool)

(declare-fun res!551141 () Bool)

(assert (=> b!806847 (=> (not res!551141) (not e!446793))))

(declare-fun arrayContainsKey!0 (array!43863 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!806847 (= res!551141 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!806848 () Bool)

(declare-fun res!551140 () Bool)

(assert (=> b!806848 (=> (not res!551140) (not e!446793))))

(assert (=> b!806848 (= res!551140 (validKeyInArray!0 k!2044))))

(declare-fun b!806849 () Bool)

(declare-fun res!551146 () Bool)

(assert (=> b!806849 (=> (not res!551146) (not e!446793))))

(assert (=> b!806849 (= res!551146 (and (= (size!21426 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21426 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21426 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!806850 () Bool)

(declare-fun res!551137 () Bool)

(assert (=> b!806850 (=> (not res!551137) (not e!446790))))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!806850 (= res!551137 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21426 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!21005 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21426 a!3170)) (= (select (arr!21005 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!806851 () Bool)

(declare-fun e!446791 () Bool)

(assert (=> b!806851 (= e!446792 e!446791)))

(declare-fun res!551138 () Bool)

(assert (=> b!806851 (=> (not res!551138) (not e!446791))))

(declare-fun lt!361444 () SeekEntryResult!8603)

(declare-fun lt!361443 () SeekEntryResult!8603)

(assert (=> b!806851 (= res!551138 (and (= lt!361443 lt!361444) (= lt!361444 (Found!8603 j!153)) (not (= (select (arr!21005 a!3170) index!1236) (select (arr!21005 a!3170) j!153)))))))

(assert (=> b!806851 (= lt!361444 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!21005 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!806851 (= lt!361443 (seekEntryOrOpen!0 (select (arr!21005 a!3170) j!153) a!3170 mask!3266))))

(declare-fun res!551142 () Bool)

(assert (=> start!69212 (=> (not res!551142) (not e!446793))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69212 (= res!551142 (validMask!0 mask!3266))))

(assert (=> start!69212 e!446793))

(assert (=> start!69212 true))

(declare-fun array_inv!16779 (array!43863) Bool)

(assert (=> start!69212 (array_inv!16779 a!3170)))

(declare-fun b!806852 () Bool)

(assert (=> b!806852 (= e!446793 e!446790)))

(declare-fun res!551136 () Bool)

(assert (=> b!806852 (=> (not res!551136) (not e!446790))))

(declare-fun lt!361439 () SeekEntryResult!8603)

(assert (=> b!806852 (= res!551136 (or (= lt!361439 (MissingZero!8603 i!1163)) (= lt!361439 (MissingVacant!8603 i!1163))))))

(assert (=> b!806852 (= lt!361439 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!806853 () Bool)

(assert (=> b!806853 (= e!446791 false)))

(declare-fun lt!361440 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!806853 (= lt!361440 (nextIndex!0 index!1236 x!1077 mask!3266))))

(assert (= (and start!69212 res!551142) b!806849))

(assert (= (and b!806849 res!551146) b!806844))

(assert (= (and b!806844 res!551143) b!806848))

(assert (= (and b!806848 res!551140) b!806847))

(assert (= (and b!806847 res!551141) b!806852))

(assert (= (and b!806852 res!551136) b!806846))

(assert (= (and b!806846 res!551145) b!806843))

(assert (= (and b!806843 res!551139) b!806850))

(assert (= (and b!806850 res!551137) b!806845))

(assert (= (and b!806845 res!551144) b!806851))

(assert (= (and b!806851 res!551138) b!806853))

(declare-fun m!748907 () Bool)

(assert (=> b!806852 m!748907))

(declare-fun m!748909 () Bool)

(assert (=> b!806847 m!748909))

(declare-fun m!748911 () Bool)

(assert (=> b!806843 m!748911))

(declare-fun m!748913 () Bool)

(assert (=> b!806850 m!748913))

(declare-fun m!748915 () Bool)

(assert (=> b!806850 m!748915))

(declare-fun m!748917 () Bool)

(assert (=> start!69212 m!748917))

(declare-fun m!748919 () Bool)

(assert (=> start!69212 m!748919))

(declare-fun m!748921 () Bool)

(assert (=> b!806848 m!748921))

(declare-fun m!748923 () Bool)

(assert (=> b!806845 m!748923))

(declare-fun m!748925 () Bool)

(assert (=> b!806845 m!748925))

(declare-fun m!748927 () Bool)

(assert (=> b!806845 m!748927))

(declare-fun m!748929 () Bool)

(assert (=> b!806845 m!748929))

(declare-fun m!748931 () Bool)

(assert (=> b!806844 m!748931))

(assert (=> b!806844 m!748931))

(declare-fun m!748933 () Bool)

(assert (=> b!806844 m!748933))

(declare-fun m!748935 () Bool)

(assert (=> b!806851 m!748935))

(assert (=> b!806851 m!748931))

(assert (=> b!806851 m!748931))

(declare-fun m!748937 () Bool)

(assert (=> b!806851 m!748937))

(assert (=> b!806851 m!748931))

(declare-fun m!748939 () Bool)

(assert (=> b!806851 m!748939))

(declare-fun m!748941 () Bool)

(assert (=> b!806853 m!748941))

(declare-fun m!748943 () Bool)

(assert (=> b!806846 m!748943))

(push 1)


; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!68610 () Bool)

(assert start!68610)

(declare-fun b!797842 () Bool)

(declare-fun res!542532 () Bool)

(declare-fun e!442622 () Bool)

(assert (=> b!797842 (=> (not res!542532) (not e!442622))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun i!1163 () (_ BitVec 32))

(declare-datatypes ((array!43351 0))(
  ( (array!43352 (arr!20752 (Array (_ BitVec 32) (_ BitVec 64))) (size!21173 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43351)

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!797842 (= res!542532 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21173 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20752 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21173 a!3170)) (= (select (arr!20752 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!797843 () Bool)

(declare-fun e!442623 () Bool)

(assert (=> b!797843 (= e!442623 e!442622)))

(declare-fun res!542533 () Bool)

(assert (=> b!797843 (=> (not res!542533) (not e!442622))))

(declare-datatypes ((SeekEntryResult!8350 0))(
  ( (MissingZero!8350 (index!35767 (_ BitVec 32))) (Found!8350 (index!35768 (_ BitVec 32))) (Intermediate!8350 (undefined!9162 Bool) (index!35769 (_ BitVec 32)) (x!66685 (_ BitVec 32))) (Undefined!8350) (MissingVacant!8350 (index!35770 (_ BitVec 32))) )
))
(declare-fun lt!356084 () SeekEntryResult!8350)

(assert (=> b!797843 (= res!542533 (or (= lt!356084 (MissingZero!8350 i!1163)) (= lt!356084 (MissingVacant!8350 i!1163))))))

(declare-fun k0!2044 () (_ BitVec 64))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43351 (_ BitVec 32)) SeekEntryResult!8350)

(assert (=> b!797843 (= lt!356084 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(declare-fun b!797844 () Bool)

(declare-fun e!442626 () Bool)

(assert (=> b!797844 (= e!442622 e!442626)))

(declare-fun res!542537 () Bool)

(assert (=> b!797844 (=> (not res!542537) (not e!442626))))

(declare-fun lt!356089 () SeekEntryResult!8350)

(declare-fun lt!356088 () SeekEntryResult!8350)

(assert (=> b!797844 (= res!542537 (= lt!356089 lt!356088))))

(declare-fun lt!356085 () (_ BitVec 64))

(declare-fun lt!356083 () array!43351)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43351 (_ BitVec 32)) SeekEntryResult!8350)

(assert (=> b!797844 (= lt!356088 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!356085 lt!356083 mask!3266))))

(assert (=> b!797844 (= lt!356089 (seekEntryOrOpen!0 lt!356085 lt!356083 mask!3266))))

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!797844 (= lt!356085 (select (store (arr!20752 a!3170) i!1163 k0!2044) j!153))))

(assert (=> b!797844 (= lt!356083 (array!43352 (store (arr!20752 a!3170) i!1163 k0!2044) (size!21173 a!3170)))))

(declare-fun b!797845 () Bool)

(declare-fun res!542534 () Bool)

(assert (=> b!797845 (=> (not res!542534) (not e!442622))))

(declare-datatypes ((List!14768 0))(
  ( (Nil!14765) (Cons!14764 (h!15893 (_ BitVec 64)) (t!21091 List!14768)) )
))
(declare-fun arrayNoDuplicates!0 (array!43351 (_ BitVec 32) List!14768) Bool)

(assert (=> b!797845 (= res!542534 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14765))))

(declare-fun b!797847 () Bool)

(declare-fun res!542538 () Bool)

(assert (=> b!797847 (=> (not res!542538) (not e!442623))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!797847 (= res!542538 (validKeyInArray!0 (select (arr!20752 a!3170) j!153)))))

(declare-fun b!797848 () Bool)

(declare-fun res!542542 () Bool)

(assert (=> b!797848 (=> (not res!542542) (not e!442622))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43351 (_ BitVec 32)) Bool)

(assert (=> b!797848 (= res!542542 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!797849 () Bool)

(declare-fun res!542539 () Bool)

(assert (=> b!797849 (=> (not res!542539) (not e!442623))))

(assert (=> b!797849 (= res!542539 (validKeyInArray!0 k0!2044))))

(declare-fun b!797850 () Bool)

(declare-fun res!542540 () Bool)

(assert (=> b!797850 (=> (not res!542540) (not e!442623))))

(declare-fun arrayContainsKey!0 (array!43351 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!797850 (= res!542540 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(declare-fun b!797851 () Bool)

(declare-fun e!442627 () Bool)

(assert (=> b!797851 (= e!442626 e!442627)))

(declare-fun res!542535 () Bool)

(assert (=> b!797851 (=> (not res!542535) (not e!442627))))

(declare-fun lt!356086 () SeekEntryResult!8350)

(declare-fun lt!356082 () SeekEntryResult!8350)

(assert (=> b!797851 (= res!542535 (= lt!356086 lt!356082))))

(assert (=> b!797851 (= lt!356082 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20752 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!797851 (= lt!356086 (seekEntryOrOpen!0 (select (arr!20752 a!3170) j!153) a!3170 mask!3266))))

(declare-fun res!542536 () Bool)

(assert (=> start!68610 (=> (not res!542536) (not e!442623))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68610 (= res!542536 (validMask!0 mask!3266))))

(assert (=> start!68610 e!442623))

(assert (=> start!68610 true))

(declare-fun array_inv!16526 (array!43351) Bool)

(assert (=> start!68610 (array_inv!16526 a!3170)))

(declare-fun b!797846 () Bool)

(declare-fun e!442625 () Bool)

(assert (=> b!797846 (= e!442627 e!442625)))

(declare-fun res!542531 () Bool)

(assert (=> b!797846 (=> (not res!542531) (not e!442625))))

(declare-fun lt!356087 () SeekEntryResult!8350)

(assert (=> b!797846 (= res!542531 (and (= lt!356082 lt!356087) (= (select (arr!20752 a!3170) index!1236) (select (arr!20752 a!3170) j!153))))))

(assert (=> b!797846 (= lt!356087 (Found!8350 j!153))))

(declare-fun b!797852 () Bool)

(assert (=> b!797852 (= e!442625 (not (or (not (= lt!356088 lt!356087)) (bvslt mask!3266 #b00000000000000000000000000000000) (bvslt index!1236 (bvadd #b00000000000000000000000000000001 mask!3266)))))))

(assert (=> b!797852 (= lt!356088 (Found!8350 index!1236))))

(declare-fun b!797853 () Bool)

(declare-fun res!542541 () Bool)

(assert (=> b!797853 (=> (not res!542541) (not e!442623))))

(assert (=> b!797853 (= res!542541 (and (= (size!21173 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21173 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21173 a!3170)) (not (= i!1163 j!153))))))

(assert (= (and start!68610 res!542536) b!797853))

(assert (= (and b!797853 res!542541) b!797847))

(assert (= (and b!797847 res!542538) b!797849))

(assert (= (and b!797849 res!542539) b!797850))

(assert (= (and b!797850 res!542540) b!797843))

(assert (= (and b!797843 res!542533) b!797848))

(assert (= (and b!797848 res!542542) b!797845))

(assert (= (and b!797845 res!542534) b!797842))

(assert (= (and b!797842 res!542532) b!797844))

(assert (= (and b!797844 res!542537) b!797851))

(assert (= (and b!797851 res!542535) b!797846))

(assert (= (and b!797846 res!542531) b!797852))

(declare-fun m!738817 () Bool)

(assert (=> b!797849 m!738817))

(declare-fun m!738819 () Bool)

(assert (=> b!797851 m!738819))

(assert (=> b!797851 m!738819))

(declare-fun m!738821 () Bool)

(assert (=> b!797851 m!738821))

(assert (=> b!797851 m!738819))

(declare-fun m!738823 () Bool)

(assert (=> b!797851 m!738823))

(declare-fun m!738825 () Bool)

(assert (=> b!797848 m!738825))

(declare-fun m!738827 () Bool)

(assert (=> b!797845 m!738827))

(declare-fun m!738829 () Bool)

(assert (=> b!797842 m!738829))

(declare-fun m!738831 () Bool)

(assert (=> b!797842 m!738831))

(declare-fun m!738833 () Bool)

(assert (=> b!797850 m!738833))

(declare-fun m!738835 () Bool)

(assert (=> start!68610 m!738835))

(declare-fun m!738837 () Bool)

(assert (=> start!68610 m!738837))

(declare-fun m!738839 () Bool)

(assert (=> b!797844 m!738839))

(declare-fun m!738841 () Bool)

(assert (=> b!797844 m!738841))

(declare-fun m!738843 () Bool)

(assert (=> b!797844 m!738843))

(declare-fun m!738845 () Bool)

(assert (=> b!797844 m!738845))

(declare-fun m!738847 () Bool)

(assert (=> b!797846 m!738847))

(assert (=> b!797846 m!738819))

(assert (=> b!797847 m!738819))

(assert (=> b!797847 m!738819))

(declare-fun m!738849 () Bool)

(assert (=> b!797847 m!738849))

(declare-fun m!738851 () Bool)

(assert (=> b!797843 m!738851))

(check-sat (not b!797843) (not b!797844) (not b!797848) (not b!797849) (not b!797851) (not b!797845) (not b!797847) (not b!797850) (not start!68610))
(check-sat)

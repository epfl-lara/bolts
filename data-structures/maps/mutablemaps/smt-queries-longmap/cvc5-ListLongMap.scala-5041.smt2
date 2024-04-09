; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68776 () Bool)

(assert start!68776)

(declare-fun b!800904 () Bool)

(declare-fun res!545602 () Bool)

(declare-fun e!444019 () Bool)

(assert (=> b!800904 (=> (not res!545602) (not e!444019))))

(declare-fun i!1163 () (_ BitVec 32))

(declare-datatypes ((array!43517 0))(
  ( (array!43518 (arr!20835 (Array (_ BitVec 32) (_ BitVec 64))) (size!21256 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43517)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun mask!3266 () (_ BitVec 32))

(assert (=> b!800904 (= res!545602 (and (= (size!21256 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21256 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21256 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!800905 () Bool)

(declare-fun res!545596 () Bool)

(declare-fun e!444021 () Bool)

(assert (=> b!800905 (=> (not res!545596) (not e!444021))))

(declare-fun lt!357946 () (_ BitVec 64))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun lt!357942 () array!43517)

(declare-fun lt!357940 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!8433 0))(
  ( (MissingZero!8433 (index!36099 (_ BitVec 32))) (Found!8433 (index!36100 (_ BitVec 32))) (Intermediate!8433 (undefined!9245 Bool) (index!36101 (_ BitVec 32)) (x!66992 (_ BitVec 32))) (Undefined!8433) (MissingVacant!8433 (index!36102 (_ BitVec 32))) )
))
(declare-fun lt!357941 () SeekEntryResult!8433)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43517 (_ BitVec 32)) SeekEntryResult!8433)

(assert (=> b!800905 (= res!545596 (= lt!357941 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!357940 vacantAfter!23 lt!357946 lt!357942 mask!3266)))))

(declare-fun b!800906 () Bool)

(declare-fun res!545595 () Bool)

(declare-fun e!444018 () Bool)

(assert (=> b!800906 (=> (not res!545595) (not e!444018))))

(declare-datatypes ((List!14851 0))(
  ( (Nil!14848) (Cons!14847 (h!15976 (_ BitVec 64)) (t!21174 List!14851)) )
))
(declare-fun arrayNoDuplicates!0 (array!43517 (_ BitVec 32) List!14851) Bool)

(assert (=> b!800906 (= res!545595 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14848))))

(declare-fun b!800908 () Bool)

(declare-fun res!545594 () Bool)

(assert (=> b!800908 (=> (not res!545594) (not e!444018))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43517 (_ BitVec 32)) Bool)

(assert (=> b!800908 (= res!545594 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!800909 () Bool)

(declare-fun res!545600 () Bool)

(assert (=> b!800909 (=> (not res!545600) (not e!444019))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!43517 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!800909 (= res!545600 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!800910 () Bool)

(declare-fun res!545593 () Bool)

(assert (=> b!800910 (=> (not res!545593) (not e!444019))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!800910 (= res!545593 (validKeyInArray!0 k!2044))))

(declare-fun b!800911 () Bool)

(declare-fun e!444017 () Bool)

(declare-fun e!444022 () Bool)

(assert (=> b!800911 (= e!444017 e!444022)))

(declare-fun res!545603 () Bool)

(assert (=> b!800911 (=> (not res!545603) (not e!444022))))

(declare-fun lt!357939 () SeekEntryResult!8433)

(declare-fun lt!357945 () SeekEntryResult!8433)

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!800911 (= res!545603 (and (= lt!357945 lt!357939) (= lt!357939 (Found!8433 j!153)) (not (= (select (arr!20835 a!3170) index!1236) (select (arr!20835 a!3170) j!153)))))))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!800911 (= lt!357939 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20835 a!3170) j!153) a!3170 mask!3266))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43517 (_ BitVec 32)) SeekEntryResult!8433)

(assert (=> b!800911 (= lt!357945 (seekEntryOrOpen!0 (select (arr!20835 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!800912 () Bool)

(assert (=> b!800912 (= e!444022 e!444021)))

(declare-fun res!545604 () Bool)

(assert (=> b!800912 (=> (not res!545604) (not e!444021))))

(assert (=> b!800912 (= res!545604 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1077) #b01111111111111111111111111111110) (bvsge (bvadd #b00000000000000000000000000000001 x!1077) #b00000000000000000000000000000000) (bvsge lt!357940 #b00000000000000000000000000000000) (bvslt lt!357940 (size!21256 a!3170))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!800912 (= lt!357940 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!800913 () Bool)

(assert (=> b!800913 (= e!444018 e!444017)))

(declare-fun res!545598 () Bool)

(assert (=> b!800913 (=> (not res!545598) (not e!444017))))

(assert (=> b!800913 (= res!545598 (= lt!357941 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!357946 lt!357942 mask!3266)))))

(assert (=> b!800913 (= lt!357941 (seekEntryOrOpen!0 lt!357946 lt!357942 mask!3266))))

(assert (=> b!800913 (= lt!357946 (select (store (arr!20835 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!800913 (= lt!357942 (array!43518 (store (arr!20835 a!3170) i!1163 k!2044) (size!21256 a!3170)))))

(declare-fun b!800914 () Bool)

(declare-fun res!545601 () Bool)

(assert (=> b!800914 (=> (not res!545601) (not e!444018))))

(assert (=> b!800914 (= res!545601 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21256 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20835 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21256 a!3170)) (= (select (arr!20835 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!800915 () Bool)

(declare-fun res!545597 () Bool)

(assert (=> b!800915 (=> (not res!545597) (not e!444019))))

(assert (=> b!800915 (= res!545597 (validKeyInArray!0 (select (arr!20835 a!3170) j!153)))))

(declare-fun b!800916 () Bool)

(assert (=> b!800916 (= e!444021 false)))

(declare-fun lt!357944 () SeekEntryResult!8433)

(assert (=> b!800916 (= lt!357944 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!357940 vacantBefore!23 (select (arr!20835 a!3170) j!153) a!3170 mask!3266))))

(declare-fun res!545605 () Bool)

(assert (=> start!68776 (=> (not res!545605) (not e!444019))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68776 (= res!545605 (validMask!0 mask!3266))))

(assert (=> start!68776 e!444019))

(assert (=> start!68776 true))

(declare-fun array_inv!16609 (array!43517) Bool)

(assert (=> start!68776 (array_inv!16609 a!3170)))

(declare-fun b!800907 () Bool)

(assert (=> b!800907 (= e!444019 e!444018)))

(declare-fun res!545599 () Bool)

(assert (=> b!800907 (=> (not res!545599) (not e!444018))))

(declare-fun lt!357943 () SeekEntryResult!8433)

(assert (=> b!800907 (= res!545599 (or (= lt!357943 (MissingZero!8433 i!1163)) (= lt!357943 (MissingVacant!8433 i!1163))))))

(assert (=> b!800907 (= lt!357943 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(assert (= (and start!68776 res!545605) b!800904))

(assert (= (and b!800904 res!545602) b!800915))

(assert (= (and b!800915 res!545597) b!800910))

(assert (= (and b!800910 res!545593) b!800909))

(assert (= (and b!800909 res!545600) b!800907))

(assert (= (and b!800907 res!545599) b!800908))

(assert (= (and b!800908 res!545594) b!800906))

(assert (= (and b!800906 res!545595) b!800914))

(assert (= (and b!800914 res!545601) b!800913))

(assert (= (and b!800913 res!545598) b!800911))

(assert (= (and b!800911 res!545603) b!800912))

(assert (= (and b!800912 res!545604) b!800905))

(assert (= (and b!800905 res!545596) b!800916))

(declare-fun m!742135 () Bool)

(assert (=> b!800916 m!742135))

(assert (=> b!800916 m!742135))

(declare-fun m!742137 () Bool)

(assert (=> b!800916 m!742137))

(declare-fun m!742139 () Bool)

(assert (=> b!800909 m!742139))

(declare-fun m!742141 () Bool)

(assert (=> b!800911 m!742141))

(assert (=> b!800911 m!742135))

(assert (=> b!800911 m!742135))

(declare-fun m!742143 () Bool)

(assert (=> b!800911 m!742143))

(assert (=> b!800911 m!742135))

(declare-fun m!742145 () Bool)

(assert (=> b!800911 m!742145))

(declare-fun m!742147 () Bool)

(assert (=> b!800906 m!742147))

(declare-fun m!742149 () Bool)

(assert (=> b!800912 m!742149))

(declare-fun m!742151 () Bool)

(assert (=> start!68776 m!742151))

(declare-fun m!742153 () Bool)

(assert (=> start!68776 m!742153))

(declare-fun m!742155 () Bool)

(assert (=> b!800910 m!742155))

(declare-fun m!742157 () Bool)

(assert (=> b!800907 m!742157))

(declare-fun m!742159 () Bool)

(assert (=> b!800914 m!742159))

(declare-fun m!742161 () Bool)

(assert (=> b!800914 m!742161))

(declare-fun m!742163 () Bool)

(assert (=> b!800913 m!742163))

(declare-fun m!742165 () Bool)

(assert (=> b!800913 m!742165))

(declare-fun m!742167 () Bool)

(assert (=> b!800913 m!742167))

(declare-fun m!742169 () Bool)

(assert (=> b!800913 m!742169))

(assert (=> b!800915 m!742135))

(assert (=> b!800915 m!742135))

(declare-fun m!742171 () Bool)

(assert (=> b!800915 m!742171))

(declare-fun m!742173 () Bool)

(assert (=> b!800908 m!742173))

(declare-fun m!742175 () Bool)

(assert (=> b!800905 m!742175))

(push 1)


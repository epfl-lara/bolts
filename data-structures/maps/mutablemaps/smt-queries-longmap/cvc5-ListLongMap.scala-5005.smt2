; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68560 () Bool)

(assert start!68560)

(declare-fun b!796960 () Bool)

(declare-fun e!442194 () Bool)

(declare-fun e!442193 () Bool)

(assert (=> b!796960 (= e!442194 e!442193)))

(declare-fun res!541657 () Bool)

(assert (=> b!796960 (=> (not res!541657) (not e!442193))))

(declare-datatypes ((SeekEntryResult!8325 0))(
  ( (MissingZero!8325 (index!35667 (_ BitVec 32))) (Found!8325 (index!35668 (_ BitVec 32))) (Intermediate!8325 (undefined!9137 Bool) (index!35669 (_ BitVec 32)) (x!66596 (_ BitVec 32))) (Undefined!8325) (MissingVacant!8325 (index!35670 (_ BitVec 32))) )
))
(declare-fun lt!355513 () SeekEntryResult!8325)

(declare-fun lt!355510 () SeekEntryResult!8325)

(assert (=> b!796960 (= res!541657 (= lt!355513 lt!355510))))

(declare-fun lt!355515 () (_ BitVec 64))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-datatypes ((array!43301 0))(
  ( (array!43302 (arr!20727 (Array (_ BitVec 32) (_ BitVec 64))) (size!21148 (_ BitVec 32))) )
))
(declare-fun lt!355514 () array!43301)

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43301 (_ BitVec 32)) SeekEntryResult!8325)

(assert (=> b!796960 (= lt!355510 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!355515 lt!355514 mask!3266))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43301 (_ BitVec 32)) SeekEntryResult!8325)

(assert (=> b!796960 (= lt!355513 (seekEntryOrOpen!0 lt!355515 lt!355514 mask!3266))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun a!3170 () array!43301)

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!796960 (= lt!355515 (select (store (arr!20727 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!796960 (= lt!355514 (array!43302 (store (arr!20727 a!3170) i!1163 k!2044) (size!21148 a!3170)))))

(declare-fun b!796961 () Bool)

(declare-fun res!541656 () Bool)

(declare-fun e!442192 () Bool)

(assert (=> b!796961 (=> (not res!541656) (not e!442192))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!796961 (= res!541656 (validKeyInArray!0 k!2044))))

(declare-fun b!796962 () Bool)

(declare-fun res!541659 () Bool)

(assert (=> b!796962 (=> (not res!541659) (not e!442194))))

(declare-datatypes ((List!14743 0))(
  ( (Nil!14740) (Cons!14739 (h!15868 (_ BitVec 64)) (t!21066 List!14743)) )
))
(declare-fun arrayNoDuplicates!0 (array!43301 (_ BitVec 32) List!14743) Bool)

(assert (=> b!796962 (= res!541659 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14740))))

(declare-fun b!796963 () Bool)

(declare-fun e!442195 () Bool)

(assert (=> b!796963 (= e!442193 e!442195)))

(declare-fun res!541655 () Bool)

(assert (=> b!796963 (=> (not res!541655) (not e!442195))))

(declare-fun lt!355509 () SeekEntryResult!8325)

(declare-fun lt!355511 () SeekEntryResult!8325)

(assert (=> b!796963 (= res!541655 (= lt!355509 lt!355511))))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!796963 (= lt!355511 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20727 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!796963 (= lt!355509 (seekEntryOrOpen!0 (select (arr!20727 a!3170) j!153) a!3170 mask!3266))))

(declare-fun e!442191 () Bool)

(declare-fun b!796964 () Bool)

(declare-fun lt!355516 () SeekEntryResult!8325)

(assert (=> b!796964 (= e!442191 (not (or (not (= lt!355510 lt!355516)) (bvslt mask!3266 #b00000000000000000000000000000000) (bvslt index!1236 (bvadd #b00000000000000000000000000000001 mask!3266)))))))

(assert (=> b!796964 (= lt!355510 (Found!8325 index!1236))))

(declare-fun b!796965 () Bool)

(assert (=> b!796965 (= e!442195 e!442191)))

(declare-fun res!541650 () Bool)

(assert (=> b!796965 (=> (not res!541650) (not e!442191))))

(assert (=> b!796965 (= res!541650 (and (= lt!355511 lt!355516) (= (select (arr!20727 a!3170) index!1236) (select (arr!20727 a!3170) j!153))))))

(assert (=> b!796965 (= lt!355516 (Found!8325 j!153))))

(declare-fun res!541652 () Bool)

(assert (=> start!68560 (=> (not res!541652) (not e!442192))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68560 (= res!541652 (validMask!0 mask!3266))))

(assert (=> start!68560 e!442192))

(assert (=> start!68560 true))

(declare-fun array_inv!16501 (array!43301) Bool)

(assert (=> start!68560 (array_inv!16501 a!3170)))

(declare-fun b!796966 () Bool)

(declare-fun res!541651 () Bool)

(assert (=> b!796966 (=> (not res!541651) (not e!442194))))

(assert (=> b!796966 (= res!541651 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21148 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20727 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21148 a!3170)) (= (select (arr!20727 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!796967 () Bool)

(declare-fun res!541649 () Bool)

(assert (=> b!796967 (=> (not res!541649) (not e!442194))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43301 (_ BitVec 32)) Bool)

(assert (=> b!796967 (= res!541649 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!796968 () Bool)

(declare-fun res!541653 () Bool)

(assert (=> b!796968 (=> (not res!541653) (not e!442192))))

(assert (=> b!796968 (= res!541653 (and (= (size!21148 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21148 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21148 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!796969 () Bool)

(declare-fun res!541660 () Bool)

(assert (=> b!796969 (=> (not res!541660) (not e!442192))))

(assert (=> b!796969 (= res!541660 (validKeyInArray!0 (select (arr!20727 a!3170) j!153)))))

(declare-fun b!796970 () Bool)

(declare-fun res!541658 () Bool)

(assert (=> b!796970 (=> (not res!541658) (not e!442192))))

(declare-fun arrayContainsKey!0 (array!43301 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!796970 (= res!541658 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!796971 () Bool)

(assert (=> b!796971 (= e!442192 e!442194)))

(declare-fun res!541654 () Bool)

(assert (=> b!796971 (=> (not res!541654) (not e!442194))))

(declare-fun lt!355512 () SeekEntryResult!8325)

(assert (=> b!796971 (= res!541654 (or (= lt!355512 (MissingZero!8325 i!1163)) (= lt!355512 (MissingVacant!8325 i!1163))))))

(assert (=> b!796971 (= lt!355512 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(assert (= (and start!68560 res!541652) b!796968))

(assert (= (and b!796968 res!541653) b!796969))

(assert (= (and b!796969 res!541660) b!796961))

(assert (= (and b!796961 res!541656) b!796970))

(assert (= (and b!796970 res!541658) b!796971))

(assert (= (and b!796971 res!541654) b!796967))

(assert (= (and b!796967 res!541649) b!796962))

(assert (= (and b!796962 res!541659) b!796966))

(assert (= (and b!796966 res!541651) b!796960))

(assert (= (and b!796960 res!541657) b!796963))

(assert (= (and b!796963 res!541655) b!796965))

(assert (= (and b!796965 res!541650) b!796964))

(declare-fun m!737899 () Bool)

(assert (=> b!796966 m!737899))

(declare-fun m!737901 () Bool)

(assert (=> b!796966 m!737901))

(declare-fun m!737903 () Bool)

(assert (=> b!796961 m!737903))

(declare-fun m!737905 () Bool)

(assert (=> b!796960 m!737905))

(declare-fun m!737907 () Bool)

(assert (=> b!796960 m!737907))

(declare-fun m!737909 () Bool)

(assert (=> b!796960 m!737909))

(declare-fun m!737911 () Bool)

(assert (=> b!796960 m!737911))

(declare-fun m!737913 () Bool)

(assert (=> b!796967 m!737913))

(declare-fun m!737915 () Bool)

(assert (=> b!796965 m!737915))

(declare-fun m!737917 () Bool)

(assert (=> b!796965 m!737917))

(assert (=> b!796963 m!737917))

(assert (=> b!796963 m!737917))

(declare-fun m!737919 () Bool)

(assert (=> b!796963 m!737919))

(assert (=> b!796963 m!737917))

(declare-fun m!737921 () Bool)

(assert (=> b!796963 m!737921))

(declare-fun m!737923 () Bool)

(assert (=> b!796962 m!737923))

(declare-fun m!737925 () Bool)

(assert (=> start!68560 m!737925))

(declare-fun m!737927 () Bool)

(assert (=> start!68560 m!737927))

(assert (=> b!796969 m!737917))

(assert (=> b!796969 m!737917))

(declare-fun m!737929 () Bool)

(assert (=> b!796969 m!737929))

(declare-fun m!737931 () Bool)

(assert (=> b!796971 m!737931))

(declare-fun m!737933 () Bool)

(assert (=> b!796970 m!737933))

(push 1)

(assert (not b!796961))

(assert (not start!68560))

(assert (not b!796962))

(assert (not b!796960))

(assert (not b!796970))

(assert (not b!796971))

(assert (not b!796967))

(assert (not b!796963))

(assert (not b!796969))

(check-sat)

(pop 1)

(push 1)

(check-sat)


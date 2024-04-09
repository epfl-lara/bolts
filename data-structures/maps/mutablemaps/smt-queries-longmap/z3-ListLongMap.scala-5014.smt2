; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!68616 () Bool)

(assert start!68616)

(declare-fun b!797945 () Bool)

(declare-fun res!542643 () Bool)

(declare-fun e!442672 () Bool)

(assert (=> b!797945 (=> (not res!542643) (not e!442672))))

(declare-fun k0!2044 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!797945 (= res!542643 (validKeyInArray!0 k0!2044))))

(declare-fun res!542637 () Bool)

(assert (=> start!68616 (=> (not res!542637) (not e!442672))))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68616 (= res!542637 (validMask!0 mask!3266))))

(assert (=> start!68616 e!442672))

(assert (=> start!68616 true))

(declare-datatypes ((array!43357 0))(
  ( (array!43358 (arr!20755 (Array (_ BitVec 32) (_ BitVec 64))) (size!21176 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43357)

(declare-fun array_inv!16529 (array!43357) Bool)

(assert (=> start!68616 (array_inv!16529 a!3170)))

(declare-fun b!797946 () Bool)

(declare-fun res!542638 () Bool)

(declare-fun e!442673 () Bool)

(assert (=> b!797946 (=> (not res!542638) (not e!442673))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43357 (_ BitVec 32)) Bool)

(assert (=> b!797946 (= res!542638 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!797947 () Bool)

(declare-fun res!542640 () Bool)

(assert (=> b!797947 (=> (not res!542640) (not e!442672))))

(declare-fun arrayContainsKey!0 (array!43357 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!797947 (= res!542640 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(declare-fun b!797948 () Bool)

(declare-fun res!542639 () Bool)

(assert (=> b!797948 (=> (not res!542639) (not e!442672))))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!797948 (= res!542639 (and (= (size!21176 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21176 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21176 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!797949 () Bool)

(declare-fun res!542644 () Bool)

(assert (=> b!797949 (=> (not res!542644) (not e!442673))))

(declare-datatypes ((List!14771 0))(
  ( (Nil!14768) (Cons!14767 (h!15896 (_ BitVec 64)) (t!21094 List!14771)) )
))
(declare-fun arrayNoDuplicates!0 (array!43357 (_ BitVec 32) List!14771) Bool)

(assert (=> b!797949 (= res!542644 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14768))))

(declare-fun b!797950 () Bool)

(declare-fun e!442671 () Bool)

(assert (=> b!797950 (= e!442671 (not true))))

(declare-datatypes ((SeekEntryResult!8353 0))(
  ( (MissingZero!8353 (index!35779 (_ BitVec 32))) (Found!8353 (index!35780 (_ BitVec 32))) (Intermediate!8353 (undefined!9165 Bool) (index!35781 (_ BitVec 32)) (x!66696 (_ BitVec 32))) (Undefined!8353) (MissingVacant!8353 (index!35782 (_ BitVec 32))) )
))
(declare-fun lt!356151 () SeekEntryResult!8353)

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!797950 (= lt!356151 (Found!8353 index!1236))))

(declare-fun b!797951 () Bool)

(assert (=> b!797951 (= e!442672 e!442673)))

(declare-fun res!542634 () Bool)

(assert (=> b!797951 (=> (not res!542634) (not e!442673))))

(declare-fun lt!356153 () SeekEntryResult!8353)

(assert (=> b!797951 (= res!542634 (or (= lt!356153 (MissingZero!8353 i!1163)) (= lt!356153 (MissingVacant!8353 i!1163))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43357 (_ BitVec 32)) SeekEntryResult!8353)

(assert (=> b!797951 (= lt!356153 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(declare-fun b!797952 () Bool)

(declare-fun res!542636 () Bool)

(assert (=> b!797952 (=> (not res!542636) (not e!442672))))

(assert (=> b!797952 (= res!542636 (validKeyInArray!0 (select (arr!20755 a!3170) j!153)))))

(declare-fun b!797953 () Bool)

(declare-fun e!442674 () Bool)

(assert (=> b!797953 (= e!442673 e!442674)))

(declare-fun res!542635 () Bool)

(assert (=> b!797953 (=> (not res!542635) (not e!442674))))

(declare-fun lt!356154 () SeekEntryResult!8353)

(assert (=> b!797953 (= res!542635 (= lt!356154 lt!356151))))

(declare-fun lt!356149 () array!43357)

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun lt!356155 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43357 (_ BitVec 32)) SeekEntryResult!8353)

(assert (=> b!797953 (= lt!356151 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!356155 lt!356149 mask!3266))))

(assert (=> b!797953 (= lt!356154 (seekEntryOrOpen!0 lt!356155 lt!356149 mask!3266))))

(assert (=> b!797953 (= lt!356155 (select (store (arr!20755 a!3170) i!1163 k0!2044) j!153))))

(assert (=> b!797953 (= lt!356149 (array!43358 (store (arr!20755 a!3170) i!1163 k0!2044) (size!21176 a!3170)))))

(declare-fun b!797954 () Bool)

(assert (=> b!797954 (= e!442674 e!442671)))

(declare-fun res!542641 () Bool)

(assert (=> b!797954 (=> (not res!542641) (not e!442671))))

(declare-fun lt!356150 () SeekEntryResult!8353)

(declare-fun lt!356152 () SeekEntryResult!8353)

(assert (=> b!797954 (= res!542641 (and (= lt!356150 lt!356152) (= lt!356152 (Found!8353 j!153)) (= (select (arr!20755 a!3170) index!1236) (select (arr!20755 a!3170) j!153))))))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!797954 (= lt!356152 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20755 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!797954 (= lt!356150 (seekEntryOrOpen!0 (select (arr!20755 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!797955 () Bool)

(declare-fun res!542642 () Bool)

(assert (=> b!797955 (=> (not res!542642) (not e!442673))))

(assert (=> b!797955 (= res!542642 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21176 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20755 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21176 a!3170)) (= (select (arr!20755 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(assert (= (and start!68616 res!542637) b!797948))

(assert (= (and b!797948 res!542639) b!797952))

(assert (= (and b!797952 res!542636) b!797945))

(assert (= (and b!797945 res!542643) b!797947))

(assert (= (and b!797947 res!542640) b!797951))

(assert (= (and b!797951 res!542634) b!797946))

(assert (= (and b!797946 res!542638) b!797949))

(assert (= (and b!797949 res!542644) b!797955))

(assert (= (and b!797955 res!542642) b!797953))

(assert (= (and b!797953 res!542635) b!797954))

(assert (= (and b!797954 res!542641) b!797950))

(declare-fun m!738925 () Bool)

(assert (=> b!797952 m!738925))

(assert (=> b!797952 m!738925))

(declare-fun m!738927 () Bool)

(assert (=> b!797952 m!738927))

(declare-fun m!738929 () Bool)

(assert (=> b!797947 m!738929))

(declare-fun m!738931 () Bool)

(assert (=> b!797954 m!738931))

(assert (=> b!797954 m!738925))

(assert (=> b!797954 m!738925))

(declare-fun m!738933 () Bool)

(assert (=> b!797954 m!738933))

(assert (=> b!797954 m!738925))

(declare-fun m!738935 () Bool)

(assert (=> b!797954 m!738935))

(declare-fun m!738937 () Bool)

(assert (=> start!68616 m!738937))

(declare-fun m!738939 () Bool)

(assert (=> start!68616 m!738939))

(declare-fun m!738941 () Bool)

(assert (=> b!797955 m!738941))

(declare-fun m!738943 () Bool)

(assert (=> b!797955 m!738943))

(declare-fun m!738945 () Bool)

(assert (=> b!797951 m!738945))

(declare-fun m!738947 () Bool)

(assert (=> b!797953 m!738947))

(declare-fun m!738949 () Bool)

(assert (=> b!797953 m!738949))

(declare-fun m!738951 () Bool)

(assert (=> b!797953 m!738951))

(declare-fun m!738953 () Bool)

(assert (=> b!797953 m!738953))

(declare-fun m!738955 () Bool)

(assert (=> b!797945 m!738955))

(declare-fun m!738957 () Bool)

(assert (=> b!797949 m!738957))

(declare-fun m!738959 () Bool)

(assert (=> b!797946 m!738959))

(check-sat (not b!797953) (not b!797954) (not b!797947) (not b!797945) (not b!797952) (not b!797946) (not b!797949) (not start!68616) (not b!797951))
(check-sat)

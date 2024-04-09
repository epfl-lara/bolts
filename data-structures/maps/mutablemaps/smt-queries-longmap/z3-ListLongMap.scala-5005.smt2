; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!68562 () Bool)

(assert start!68562)

(declare-fun b!796996 () Bool)

(declare-fun e!442209 () Bool)

(declare-fun e!442210 () Bool)

(assert (=> b!796996 (= e!442209 e!442210)))

(declare-fun res!541689 () Bool)

(assert (=> b!796996 (=> (not res!541689) (not e!442210))))

(declare-datatypes ((SeekEntryResult!8326 0))(
  ( (MissingZero!8326 (index!35671 (_ BitVec 32))) (Found!8326 (index!35672 (_ BitVec 32))) (Intermediate!8326 (undefined!9138 Bool) (index!35673 (_ BitVec 32)) (x!66597 (_ BitVec 32))) (Undefined!8326) (MissingVacant!8326 (index!35674 (_ BitVec 32))) )
))
(declare-fun lt!355534 () SeekEntryResult!8326)

(declare-fun lt!355539 () SeekEntryResult!8326)

(assert (=> b!796996 (= res!541689 (= lt!355534 lt!355539))))

(declare-datatypes ((array!43303 0))(
  ( (array!43304 (arr!20728 (Array (_ BitVec 32) (_ BitVec 64))) (size!21149 (_ BitVec 32))) )
))
(declare-fun lt!355533 () array!43303)

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun lt!355537 () (_ BitVec 64))

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43303 (_ BitVec 32)) SeekEntryResult!8326)

(assert (=> b!796996 (= lt!355539 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!355537 lt!355533 mask!3266))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43303 (_ BitVec 32)) SeekEntryResult!8326)

(assert (=> b!796996 (= lt!355534 (seekEntryOrOpen!0 lt!355537 lt!355533 mask!3266))))

(declare-fun k0!2044 () (_ BitVec 64))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun a!3170 () array!43303)

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!796996 (= lt!355537 (select (store (arr!20728 a!3170) i!1163 k0!2044) j!153))))

(assert (=> b!796996 (= lt!355533 (array!43304 (store (arr!20728 a!3170) i!1163 k0!2044) (size!21149 a!3170)))))

(declare-fun res!541695 () Bool)

(declare-fun e!442211 () Bool)

(assert (=> start!68562 (=> (not res!541695) (not e!442211))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68562 (= res!541695 (validMask!0 mask!3266))))

(assert (=> start!68562 e!442211))

(assert (=> start!68562 true))

(declare-fun array_inv!16502 (array!43303) Bool)

(assert (=> start!68562 (array_inv!16502 a!3170)))

(declare-fun b!796997 () Bool)

(declare-fun e!442212 () Bool)

(assert (=> b!796997 (= e!442210 e!442212)))

(declare-fun res!541696 () Bool)

(assert (=> b!796997 (=> (not res!541696) (not e!442212))))

(declare-fun lt!355536 () SeekEntryResult!8326)

(declare-fun lt!355540 () SeekEntryResult!8326)

(assert (=> b!796997 (= res!541696 (= lt!355536 lt!355540))))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!796997 (= lt!355540 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20728 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!796997 (= lt!355536 (seekEntryOrOpen!0 (select (arr!20728 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!796998 () Bool)

(declare-fun res!541685 () Bool)

(assert (=> b!796998 (=> (not res!541685) (not e!442211))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!796998 (= res!541685 (validKeyInArray!0 (select (arr!20728 a!3170) j!153)))))

(declare-fun b!796999 () Bool)

(declare-fun res!541686 () Bool)

(assert (=> b!796999 (=> (not res!541686) (not e!442211))))

(assert (=> b!796999 (= res!541686 (validKeyInArray!0 k0!2044))))

(declare-fun b!797000 () Bool)

(declare-fun e!442208 () Bool)

(assert (=> b!797000 (= e!442212 e!442208)))

(declare-fun res!541692 () Bool)

(assert (=> b!797000 (=> (not res!541692) (not e!442208))))

(declare-fun lt!355535 () SeekEntryResult!8326)

(assert (=> b!797000 (= res!541692 (and (= lt!355540 lt!355535) (= (select (arr!20728 a!3170) index!1236) (select (arr!20728 a!3170) j!153))))))

(assert (=> b!797000 (= lt!355535 (Found!8326 j!153))))

(declare-fun b!797001 () Bool)

(declare-fun res!541688 () Bool)

(assert (=> b!797001 (=> (not res!541688) (not e!442211))))

(declare-fun arrayContainsKey!0 (array!43303 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!797001 (= res!541688 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(declare-fun b!797002 () Bool)

(assert (=> b!797002 (= e!442208 (not (or (not (= lt!355539 lt!355535)) (bvslt mask!3266 #b00000000000000000000000000000000) (bvslt index!1236 (bvadd #b00000000000000000000000000000001 mask!3266)))))))

(assert (=> b!797002 (= lt!355539 (Found!8326 index!1236))))

(declare-fun b!797003 () Bool)

(declare-fun res!541691 () Bool)

(assert (=> b!797003 (=> (not res!541691) (not e!442209))))

(assert (=> b!797003 (= res!541691 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21149 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20728 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21149 a!3170)) (= (select (arr!20728 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!797004 () Bool)

(declare-fun res!541687 () Bool)

(assert (=> b!797004 (=> (not res!541687) (not e!442209))))

(declare-datatypes ((List!14744 0))(
  ( (Nil!14741) (Cons!14740 (h!15869 (_ BitVec 64)) (t!21067 List!14744)) )
))
(declare-fun arrayNoDuplicates!0 (array!43303 (_ BitVec 32) List!14744) Bool)

(assert (=> b!797004 (= res!541687 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14741))))

(declare-fun b!797005 () Bool)

(assert (=> b!797005 (= e!442211 e!442209)))

(declare-fun res!541694 () Bool)

(assert (=> b!797005 (=> (not res!541694) (not e!442209))))

(declare-fun lt!355538 () SeekEntryResult!8326)

(assert (=> b!797005 (= res!541694 (or (= lt!355538 (MissingZero!8326 i!1163)) (= lt!355538 (MissingVacant!8326 i!1163))))))

(assert (=> b!797005 (= lt!355538 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(declare-fun b!797006 () Bool)

(declare-fun res!541693 () Bool)

(assert (=> b!797006 (=> (not res!541693) (not e!442209))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43303 (_ BitVec 32)) Bool)

(assert (=> b!797006 (= res!541693 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!797007 () Bool)

(declare-fun res!541690 () Bool)

(assert (=> b!797007 (=> (not res!541690) (not e!442211))))

(assert (=> b!797007 (= res!541690 (and (= (size!21149 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21149 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21149 a!3170)) (not (= i!1163 j!153))))))

(assert (= (and start!68562 res!541695) b!797007))

(assert (= (and b!797007 res!541690) b!796998))

(assert (= (and b!796998 res!541685) b!796999))

(assert (= (and b!796999 res!541686) b!797001))

(assert (= (and b!797001 res!541688) b!797005))

(assert (= (and b!797005 res!541694) b!797006))

(assert (= (and b!797006 res!541693) b!797004))

(assert (= (and b!797004 res!541687) b!797003))

(assert (= (and b!797003 res!541691) b!796996))

(assert (= (and b!796996 res!541689) b!796997))

(assert (= (and b!796997 res!541696) b!797000))

(assert (= (and b!797000 res!541692) b!797002))

(declare-fun m!737935 () Bool)

(assert (=> b!797003 m!737935))

(declare-fun m!737937 () Bool)

(assert (=> b!797003 m!737937))

(declare-fun m!737939 () Bool)

(assert (=> b!796999 m!737939))

(declare-fun m!737941 () Bool)

(assert (=> b!796998 m!737941))

(assert (=> b!796998 m!737941))

(declare-fun m!737943 () Bool)

(assert (=> b!796998 m!737943))

(declare-fun m!737945 () Bool)

(assert (=> b!796996 m!737945))

(declare-fun m!737947 () Bool)

(assert (=> b!796996 m!737947))

(declare-fun m!737949 () Bool)

(assert (=> b!796996 m!737949))

(declare-fun m!737951 () Bool)

(assert (=> b!796996 m!737951))

(declare-fun m!737953 () Bool)

(assert (=> b!797000 m!737953))

(assert (=> b!797000 m!737941))

(declare-fun m!737955 () Bool)

(assert (=> start!68562 m!737955))

(declare-fun m!737957 () Bool)

(assert (=> start!68562 m!737957))

(declare-fun m!737959 () Bool)

(assert (=> b!797006 m!737959))

(declare-fun m!737961 () Bool)

(assert (=> b!797004 m!737961))

(declare-fun m!737963 () Bool)

(assert (=> b!797001 m!737963))

(declare-fun m!737965 () Bool)

(assert (=> b!797005 m!737965))

(assert (=> b!796997 m!737941))

(assert (=> b!796997 m!737941))

(declare-fun m!737967 () Bool)

(assert (=> b!796997 m!737967))

(assert (=> b!796997 m!737941))

(declare-fun m!737969 () Bool)

(assert (=> b!796997 m!737969))

(check-sat (not b!797005) (not start!68562) (not b!796999) (not b!796997) (not b!796996) (not b!796998) (not b!797004) (not b!797006) (not b!797001))
(check-sat)

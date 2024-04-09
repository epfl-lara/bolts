; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!68778 () Bool)

(assert start!68778)

(declare-fun b!800943 () Bool)

(declare-fun res!545638 () Bool)

(declare-fun e!444040 () Bool)

(assert (=> b!800943 (=> (not res!545638) (not e!444040))))

(declare-datatypes ((array!43519 0))(
  ( (array!43520 (arr!20836 (Array (_ BitVec 32) (_ BitVec 64))) (size!21257 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43519)

(declare-fun k0!2044 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!43519 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!800943 (= res!545638 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(declare-fun b!800944 () Bool)

(declare-fun e!444039 () Bool)

(declare-fun e!444036 () Bool)

(assert (=> b!800944 (= e!444039 e!444036)))

(declare-fun res!545642 () Bool)

(assert (=> b!800944 (=> (not res!545642) (not e!444036))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!8434 0))(
  ( (MissingZero!8434 (index!36103 (_ BitVec 32))) (Found!8434 (index!36104 (_ BitVec 32))) (Intermediate!8434 (undefined!9246 Bool) (index!36105 (_ BitVec 32)) (x!66993 (_ BitVec 32))) (Undefined!8434) (MissingVacant!8434 (index!36106 (_ BitVec 32))) )
))
(declare-fun lt!357966 () SeekEntryResult!8434)

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun lt!357968 () (_ BitVec 64))

(declare-fun lt!357967 () array!43519)

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43519 (_ BitVec 32)) SeekEntryResult!8434)

(assert (=> b!800944 (= res!545642 (= lt!357966 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!357968 lt!357967 mask!3266)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43519 (_ BitVec 32)) SeekEntryResult!8434)

(assert (=> b!800944 (= lt!357966 (seekEntryOrOpen!0 lt!357968 lt!357967 mask!3266))))

(declare-fun j!153 () (_ BitVec 32))

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!800944 (= lt!357968 (select (store (arr!20836 a!3170) i!1163 k0!2044) j!153))))

(assert (=> b!800944 (= lt!357967 (array!43520 (store (arr!20836 a!3170) i!1163 k0!2044) (size!21257 a!3170)))))

(declare-fun b!800945 () Bool)

(declare-fun res!545643 () Bool)

(assert (=> b!800945 (=> (not res!545643) (not e!444039))))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!800945 (= res!545643 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21257 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20836 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21257 a!3170)) (= (select (arr!20836 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun res!545634 () Bool)

(assert (=> start!68778 (=> (not res!545634) (not e!444040))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68778 (= res!545634 (validMask!0 mask!3266))))

(assert (=> start!68778 e!444040))

(assert (=> start!68778 true))

(declare-fun array_inv!16610 (array!43519) Bool)

(assert (=> start!68778 (array_inv!16610 a!3170)))

(declare-fun b!800946 () Bool)

(assert (=> b!800946 (= e!444040 e!444039)))

(declare-fun res!545639 () Bool)

(assert (=> b!800946 (=> (not res!545639) (not e!444039))))

(declare-fun lt!357965 () SeekEntryResult!8434)

(assert (=> b!800946 (= res!545639 (or (= lt!357965 (MissingZero!8434 i!1163)) (= lt!357965 (MissingVacant!8434 i!1163))))))

(assert (=> b!800946 (= lt!357965 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(declare-fun b!800947 () Bool)

(declare-fun res!545637 () Bool)

(assert (=> b!800947 (=> (not res!545637) (not e!444040))))

(assert (=> b!800947 (= res!545637 (and (= (size!21257 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21257 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21257 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!800948 () Bool)

(declare-fun e!444037 () Bool)

(assert (=> b!800948 (= e!444037 false)))

(declare-fun lt!357964 () (_ BitVec 32))

(declare-fun lt!357970 () SeekEntryResult!8434)

(assert (=> b!800948 (= lt!357970 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!357964 vacantBefore!23 (select (arr!20836 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!800949 () Bool)

(declare-fun res!545644 () Bool)

(assert (=> b!800949 (=> (not res!545644) (not e!444040))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!800949 (= res!545644 (validKeyInArray!0 (select (arr!20836 a!3170) j!153)))))

(declare-fun b!800950 () Bool)

(declare-fun res!545640 () Bool)

(assert (=> b!800950 (=> (not res!545640) (not e!444037))))

(assert (=> b!800950 (= res!545640 (= lt!357966 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!357964 vacantAfter!23 lt!357968 lt!357967 mask!3266)))))

(declare-fun b!800951 () Bool)

(declare-fun e!444038 () Bool)

(assert (=> b!800951 (= e!444036 e!444038)))

(declare-fun res!545636 () Bool)

(assert (=> b!800951 (=> (not res!545636) (not e!444038))))

(declare-fun lt!357963 () SeekEntryResult!8434)

(declare-fun lt!357969 () SeekEntryResult!8434)

(assert (=> b!800951 (= res!545636 (and (= lt!357969 lt!357963) (= lt!357963 (Found!8434 j!153)) (not (= (select (arr!20836 a!3170) index!1236) (select (arr!20836 a!3170) j!153)))))))

(assert (=> b!800951 (= lt!357963 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20836 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!800951 (= lt!357969 (seekEntryOrOpen!0 (select (arr!20836 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!800952 () Bool)

(declare-fun res!545633 () Bool)

(assert (=> b!800952 (=> (not res!545633) (not e!444039))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43519 (_ BitVec 32)) Bool)

(assert (=> b!800952 (= res!545633 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!800953 () Bool)

(declare-fun res!545635 () Bool)

(assert (=> b!800953 (=> (not res!545635) (not e!444040))))

(assert (=> b!800953 (= res!545635 (validKeyInArray!0 k0!2044))))

(declare-fun b!800954 () Bool)

(declare-fun res!545632 () Bool)

(assert (=> b!800954 (=> (not res!545632) (not e!444039))))

(declare-datatypes ((List!14852 0))(
  ( (Nil!14849) (Cons!14848 (h!15977 (_ BitVec 64)) (t!21175 List!14852)) )
))
(declare-fun arrayNoDuplicates!0 (array!43519 (_ BitVec 32) List!14852) Bool)

(assert (=> b!800954 (= res!545632 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14849))))

(declare-fun b!800955 () Bool)

(assert (=> b!800955 (= e!444038 e!444037)))

(declare-fun res!545641 () Bool)

(assert (=> b!800955 (=> (not res!545641) (not e!444037))))

(assert (=> b!800955 (= res!545641 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1077) #b01111111111111111111111111111110) (bvsge (bvadd #b00000000000000000000000000000001 x!1077) #b00000000000000000000000000000000) (bvsge lt!357964 #b00000000000000000000000000000000) (bvslt lt!357964 (size!21257 a!3170))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!800955 (= lt!357964 (nextIndex!0 index!1236 x!1077 mask!3266))))

(assert (= (and start!68778 res!545634) b!800947))

(assert (= (and b!800947 res!545637) b!800949))

(assert (= (and b!800949 res!545644) b!800953))

(assert (= (and b!800953 res!545635) b!800943))

(assert (= (and b!800943 res!545638) b!800946))

(assert (= (and b!800946 res!545639) b!800952))

(assert (= (and b!800952 res!545633) b!800954))

(assert (= (and b!800954 res!545632) b!800945))

(assert (= (and b!800945 res!545643) b!800944))

(assert (= (and b!800944 res!545642) b!800951))

(assert (= (and b!800951 res!545636) b!800955))

(assert (= (and b!800955 res!545641) b!800950))

(assert (= (and b!800950 res!545640) b!800948))

(declare-fun m!742177 () Bool)

(assert (=> b!800943 m!742177))

(declare-fun m!742179 () Bool)

(assert (=> b!800954 m!742179))

(declare-fun m!742181 () Bool)

(assert (=> b!800946 m!742181))

(declare-fun m!742183 () Bool)

(assert (=> b!800950 m!742183))

(declare-fun m!742185 () Bool)

(assert (=> b!800951 m!742185))

(declare-fun m!742187 () Bool)

(assert (=> b!800951 m!742187))

(assert (=> b!800951 m!742187))

(declare-fun m!742189 () Bool)

(assert (=> b!800951 m!742189))

(assert (=> b!800951 m!742187))

(declare-fun m!742191 () Bool)

(assert (=> b!800951 m!742191))

(declare-fun m!742193 () Bool)

(assert (=> b!800945 m!742193))

(declare-fun m!742195 () Bool)

(assert (=> b!800945 m!742195))

(declare-fun m!742197 () Bool)

(assert (=> b!800953 m!742197))

(declare-fun m!742199 () Bool)

(assert (=> b!800952 m!742199))

(declare-fun m!742201 () Bool)

(assert (=> start!68778 m!742201))

(declare-fun m!742203 () Bool)

(assert (=> start!68778 m!742203))

(assert (=> b!800949 m!742187))

(assert (=> b!800949 m!742187))

(declare-fun m!742205 () Bool)

(assert (=> b!800949 m!742205))

(declare-fun m!742207 () Bool)

(assert (=> b!800944 m!742207))

(declare-fun m!742209 () Bool)

(assert (=> b!800944 m!742209))

(declare-fun m!742211 () Bool)

(assert (=> b!800944 m!742211))

(declare-fun m!742213 () Bool)

(assert (=> b!800944 m!742213))

(declare-fun m!742215 () Bool)

(assert (=> b!800955 m!742215))

(assert (=> b!800948 m!742187))

(assert (=> b!800948 m!742187))

(declare-fun m!742217 () Bool)

(assert (=> b!800948 m!742217))

(check-sat (not b!800944) (not b!800950) (not b!800943) (not b!800952) (not b!800953) (not b!800955) (not b!800954) (not b!800948) (not b!800951) (not b!800949) (not b!800946) (not start!68778))
(check-sat)

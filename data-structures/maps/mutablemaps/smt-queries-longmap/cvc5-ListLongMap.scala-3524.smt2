; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48730 () Bool)

(assert start!48730)

(declare-fun b!535258 () Bool)

(declare-fun res!330615 () Bool)

(declare-fun e!310935 () Bool)

(assert (=> b!535258 (=> (not res!330615) (not e!310935))))

(declare-datatypes ((array!33898 0))(
  ( (array!33899 (arr!16284 (Array (_ BitVec 32) (_ BitVec 64))) (size!16648 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33898)

(declare-fun j!147 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!535258 (= res!330615 (validKeyInArray!0 (select (arr!16284 a!3154) j!147)))))

(declare-fun b!535259 () Bool)

(declare-fun e!310934 () Bool)

(declare-fun e!310933 () Bool)

(assert (=> b!535259 (= e!310934 e!310933)))

(declare-fun res!330617 () Bool)

(assert (=> b!535259 (=> (not res!330617) (not e!310933))))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4749 0))(
  ( (MissingZero!4749 (index!21220 (_ BitVec 32))) (Found!4749 (index!21221 (_ BitVec 32))) (Intermediate!4749 (undefined!5561 Bool) (index!21222 (_ BitVec 32)) (x!50199 (_ BitVec 32))) (Undefined!4749) (MissingVacant!4749 (index!21223 (_ BitVec 32))) )
))
(declare-fun lt!245789 () SeekEntryResult!4749)

(assert (=> b!535259 (= res!330617 (= lt!245789 (Intermediate!4749 false resIndex!32 resX!32)))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33898 (_ BitVec 32)) SeekEntryResult!4749)

(assert (=> b!535259 (= lt!245789 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16284 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!535260 () Bool)

(declare-fun res!330619 () Bool)

(assert (=> b!535260 (=> (not res!330619) (not e!310934))))

(assert (=> b!535260 (= res!330619 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16648 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16648 a!3154)) (= (select (arr!16284 a!3154) resIndex!32) (select (arr!16284 a!3154) j!147))))))

(declare-fun b!535261 () Bool)

(assert (=> b!535261 (= e!310933 (and (not (= (select (arr!16284 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16284 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16284 a!3154) index!1177) (select (arr!16284 a!3154) j!147))) (bvslt mask!3216 #b00000000000000000000000000000000)))))

(declare-fun b!535262 () Bool)

(assert (=> b!535262 (= e!310935 e!310934)))

(declare-fun res!330614 () Bool)

(assert (=> b!535262 (=> (not res!330614) (not e!310934))))

(declare-fun lt!245788 () SeekEntryResult!4749)

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!535262 (= res!330614 (or (= lt!245788 (MissingZero!4749 i!1153)) (= lt!245788 (MissingVacant!4749 i!1153))))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33898 (_ BitVec 32)) SeekEntryResult!4749)

(assert (=> b!535262 (= lt!245788 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!535264 () Bool)

(declare-fun res!330622 () Bool)

(assert (=> b!535264 (=> (not res!330622) (not e!310935))))

(declare-fun arrayContainsKey!0 (array!33898 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!535264 (= res!330622 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!535265 () Bool)

(declare-fun res!330623 () Bool)

(assert (=> b!535265 (=> (not res!330623) (not e!310935))))

(assert (=> b!535265 (= res!330623 (and (= (size!16648 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16648 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16648 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!535266 () Bool)

(declare-fun res!330621 () Bool)

(assert (=> b!535266 (=> (not res!330621) (not e!310933))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!535266 (= res!330621 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16284 a!3154) j!147) mask!3216) (select (arr!16284 a!3154) j!147) a!3154 mask!3216) lt!245789))))

(declare-fun b!535267 () Bool)

(declare-fun res!330618 () Bool)

(assert (=> b!535267 (=> (not res!330618) (not e!310934))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33898 (_ BitVec 32)) Bool)

(assert (=> b!535267 (= res!330618 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!535268 () Bool)

(declare-fun res!330620 () Bool)

(assert (=> b!535268 (=> (not res!330620) (not e!310934))))

(declare-datatypes ((List!10456 0))(
  ( (Nil!10453) (Cons!10452 (h!11395 (_ BitVec 64)) (t!16692 List!10456)) )
))
(declare-fun arrayNoDuplicates!0 (array!33898 (_ BitVec 32) List!10456) Bool)

(assert (=> b!535268 (= res!330620 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10453))))

(declare-fun b!535263 () Bool)

(declare-fun res!330616 () Bool)

(assert (=> b!535263 (=> (not res!330616) (not e!310935))))

(assert (=> b!535263 (= res!330616 (validKeyInArray!0 k!1998))))

(declare-fun res!330613 () Bool)

(assert (=> start!48730 (=> (not res!330613) (not e!310935))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48730 (= res!330613 (validMask!0 mask!3216))))

(assert (=> start!48730 e!310935))

(assert (=> start!48730 true))

(declare-fun array_inv!12058 (array!33898) Bool)

(assert (=> start!48730 (array_inv!12058 a!3154)))

(assert (= (and start!48730 res!330613) b!535265))

(assert (= (and b!535265 res!330623) b!535258))

(assert (= (and b!535258 res!330615) b!535263))

(assert (= (and b!535263 res!330616) b!535264))

(assert (= (and b!535264 res!330622) b!535262))

(assert (= (and b!535262 res!330614) b!535267))

(assert (= (and b!535267 res!330618) b!535268))

(assert (= (and b!535268 res!330620) b!535260))

(assert (= (and b!535260 res!330619) b!535259))

(assert (= (and b!535259 res!330617) b!535266))

(assert (= (and b!535266 res!330621) b!535261))

(declare-fun m!514879 () Bool)

(assert (=> b!535259 m!514879))

(assert (=> b!535259 m!514879))

(declare-fun m!514881 () Bool)

(assert (=> b!535259 m!514881))

(declare-fun m!514883 () Bool)

(assert (=> b!535260 m!514883))

(assert (=> b!535260 m!514879))

(declare-fun m!514885 () Bool)

(assert (=> b!535264 m!514885))

(assert (=> b!535266 m!514879))

(assert (=> b!535266 m!514879))

(declare-fun m!514887 () Bool)

(assert (=> b!535266 m!514887))

(assert (=> b!535266 m!514887))

(assert (=> b!535266 m!514879))

(declare-fun m!514889 () Bool)

(assert (=> b!535266 m!514889))

(assert (=> b!535258 m!514879))

(assert (=> b!535258 m!514879))

(declare-fun m!514891 () Bool)

(assert (=> b!535258 m!514891))

(declare-fun m!514893 () Bool)

(assert (=> b!535263 m!514893))

(declare-fun m!514895 () Bool)

(assert (=> b!535268 m!514895))

(declare-fun m!514897 () Bool)

(assert (=> b!535261 m!514897))

(assert (=> b!535261 m!514879))

(declare-fun m!514899 () Bool)

(assert (=> b!535262 m!514899))

(declare-fun m!514901 () Bool)

(assert (=> start!48730 m!514901))

(declare-fun m!514903 () Bool)

(assert (=> start!48730 m!514903))

(declare-fun m!514905 () Bool)

(assert (=> b!535267 m!514905))

(push 1)


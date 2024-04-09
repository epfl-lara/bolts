; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!49342 () Bool)

(assert start!49342)

(declare-fun b!543171 () Bool)

(declare-fun e!314169 () Bool)

(assert (=> b!543171 (= e!314169 false)))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun lt!248117 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!543171 (= lt!248117 (nextIndex!0 index!1177 x!1030 mask!3216))))

(declare-fun b!543172 () Bool)

(declare-fun res!337872 () Bool)

(declare-fun e!314170 () Bool)

(assert (=> b!543172 (=> (not res!337872) (not e!314170))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!543172 (= res!337872 (validKeyInArray!0 k!1998))))

(declare-fun res!337874 () Bool)

(assert (=> start!49342 (=> (not res!337874) (not e!314170))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!49342 (= res!337874 (validMask!0 mask!3216))))

(assert (=> start!49342 e!314170))

(assert (=> start!49342 true))

(declare-datatypes ((array!34306 0))(
  ( (array!34307 (arr!16482 (Array (_ BitVec 32) (_ BitVec 64))) (size!16846 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34306)

(declare-fun array_inv!12256 (array!34306) Bool)

(assert (=> start!49342 (array_inv!12256 a!3154)))

(declare-fun b!543173 () Bool)

(declare-fun e!314167 () Bool)

(assert (=> b!543173 (= e!314170 e!314167)))

(declare-fun res!337879 () Bool)

(assert (=> b!543173 (=> (not res!337879) (not e!314167))))

(declare-datatypes ((SeekEntryResult!4947 0))(
  ( (MissingZero!4947 (index!22012 (_ BitVec 32))) (Found!4947 (index!22013 (_ BitVec 32))) (Intermediate!4947 (undefined!5759 Bool) (index!22014 (_ BitVec 32)) (x!50949 (_ BitVec 32))) (Undefined!4947) (MissingVacant!4947 (index!22015 (_ BitVec 32))) )
))
(declare-fun lt!248115 () SeekEntryResult!4947)

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!543173 (= res!337879 (or (= lt!248115 (MissingZero!4947 i!1153)) (= lt!248115 (MissingVacant!4947 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34306 (_ BitVec 32)) SeekEntryResult!4947)

(assert (=> b!543173 (= lt!248115 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!543174 () Bool)

(declare-fun res!337873 () Bool)

(assert (=> b!543174 (=> (not res!337873) (not e!314167))))

(declare-datatypes ((List!10654 0))(
  ( (Nil!10651) (Cons!10650 (h!11605 (_ BitVec 64)) (t!16890 List!10654)) )
))
(declare-fun arrayNoDuplicates!0 (array!34306 (_ BitVec 32) List!10654) Bool)

(assert (=> b!543174 (= res!337873 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10651))))

(declare-fun b!543175 () Bool)

(declare-fun res!337882 () Bool)

(assert (=> b!543175 (=> (not res!337882) (not e!314170))))

(declare-fun j!147 () (_ BitVec 32))

(assert (=> b!543175 (= res!337882 (validKeyInArray!0 (select (arr!16482 a!3154) j!147)))))

(declare-fun b!543176 () Bool)

(declare-fun res!337877 () Bool)

(assert (=> b!543176 (=> (not res!337877) (not e!314167))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34306 (_ BitVec 32)) Bool)

(assert (=> b!543176 (= res!337877 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!543177 () Bool)

(declare-fun res!337876 () Bool)

(assert (=> b!543177 (=> (not res!337876) (not e!314169))))

(assert (=> b!543177 (= res!337876 (and (not (= (select (arr!16482 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16482 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16482 a!3154) index!1177) (select (arr!16482 a!3154) j!147)))))))

(declare-fun b!543178 () Bool)

(declare-fun res!337875 () Bool)

(assert (=> b!543178 (=> (not res!337875) (not e!314167))))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!543178 (= res!337875 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16846 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16846 a!3154)) (= (select (arr!16482 a!3154) resIndex!32) (select (arr!16482 a!3154) j!147))))))

(declare-fun b!543179 () Bool)

(declare-fun res!337881 () Bool)

(assert (=> b!543179 (=> (not res!337881) (not e!314169))))

(declare-fun lt!248116 () SeekEntryResult!4947)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34306 (_ BitVec 32)) SeekEntryResult!4947)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!543179 (= res!337881 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16482 a!3154) j!147) mask!3216) (select (arr!16482 a!3154) j!147) a!3154 mask!3216) lt!248116))))

(declare-fun b!543180 () Bool)

(assert (=> b!543180 (= e!314167 e!314169)))

(declare-fun res!337878 () Bool)

(assert (=> b!543180 (=> (not res!337878) (not e!314169))))

(assert (=> b!543180 (= res!337878 (= lt!248116 (Intermediate!4947 false resIndex!32 resX!32)))))

(assert (=> b!543180 (= lt!248116 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16482 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!543181 () Bool)

(declare-fun res!337883 () Bool)

(assert (=> b!543181 (=> (not res!337883) (not e!314170))))

(declare-fun arrayContainsKey!0 (array!34306 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!543181 (= res!337883 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!543182 () Bool)

(declare-fun res!337880 () Bool)

(assert (=> b!543182 (=> (not res!337880) (not e!314170))))

(assert (=> b!543182 (= res!337880 (and (= (size!16846 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16846 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16846 a!3154)) (not (= i!1153 j!147))))))

(assert (= (and start!49342 res!337874) b!543182))

(assert (= (and b!543182 res!337880) b!543175))

(assert (= (and b!543175 res!337882) b!543172))

(assert (= (and b!543172 res!337872) b!543181))

(assert (= (and b!543181 res!337883) b!543173))

(assert (= (and b!543173 res!337879) b!543176))

(assert (= (and b!543176 res!337877) b!543174))

(assert (= (and b!543174 res!337873) b!543178))

(assert (= (and b!543178 res!337875) b!543180))

(assert (= (and b!543180 res!337878) b!543179))

(assert (= (and b!543179 res!337881) b!543177))

(assert (= (and b!543177 res!337876) b!543171))

(declare-fun m!521311 () Bool)

(assert (=> b!543179 m!521311))

(assert (=> b!543179 m!521311))

(declare-fun m!521313 () Bool)

(assert (=> b!543179 m!521313))

(assert (=> b!543179 m!521313))

(assert (=> b!543179 m!521311))

(declare-fun m!521315 () Bool)

(assert (=> b!543179 m!521315))

(declare-fun m!521317 () Bool)

(assert (=> b!543181 m!521317))

(declare-fun m!521319 () Bool)

(assert (=> b!543177 m!521319))

(assert (=> b!543177 m!521311))

(declare-fun m!521321 () Bool)

(assert (=> b!543171 m!521321))

(declare-fun m!521323 () Bool)

(assert (=> start!49342 m!521323))

(declare-fun m!521325 () Bool)

(assert (=> start!49342 m!521325))

(declare-fun m!521327 () Bool)

(assert (=> b!543176 m!521327))

(declare-fun m!521329 () Bool)

(assert (=> b!543174 m!521329))

(declare-fun m!521331 () Bool)

(assert (=> b!543178 m!521331))

(assert (=> b!543178 m!521311))

(declare-fun m!521333 () Bool)

(assert (=> b!543173 m!521333))

(assert (=> b!543175 m!521311))

(assert (=> b!543175 m!521311))

(declare-fun m!521335 () Bool)

(assert (=> b!543175 m!521335))

(assert (=> b!543180 m!521311))

(assert (=> b!543180 m!521311))

(declare-fun m!521337 () Bool)

(assert (=> b!543180 m!521337))

(declare-fun m!521339 () Bool)

(assert (=> b!543172 m!521339))

(push 1)


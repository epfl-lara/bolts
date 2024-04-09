; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!48660 () Bool)

(assert start!48660)

(declare-fun b!534161 () Bool)

(declare-fun res!329519 () Bool)

(declare-fun e!310580 () Bool)

(assert (=> b!534161 (=> (not res!329519) (not e!310580))))

(declare-datatypes ((array!33828 0))(
  ( (array!33829 (arr!16249 (Array (_ BitVec 32) (_ BitVec 64))) (size!16613 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33828)

(declare-datatypes ((List!10421 0))(
  ( (Nil!10418) (Cons!10417 (h!11360 (_ BitVec 64)) (t!16657 List!10421)) )
))
(declare-fun arrayNoDuplicates!0 (array!33828 (_ BitVec 32) List!10421) Bool)

(assert (=> b!534161 (= res!329519 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10418))))

(declare-fun b!534162 () Bool)

(declare-fun res!329520 () Bool)

(assert (=> b!534162 (=> (not res!329520) (not e!310580))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33828 (_ BitVec 32)) Bool)

(assert (=> b!534162 (= res!329520 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun res!329525 () Bool)

(declare-fun e!310581 () Bool)

(assert (=> start!48660 (=> (not res!329525) (not e!310581))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48660 (= res!329525 (validMask!0 mask!3216))))

(assert (=> start!48660 e!310581))

(assert (=> start!48660 true))

(declare-fun array_inv!12023 (array!33828) Bool)

(assert (=> start!48660 (array_inv!12023 a!3154)))

(declare-fun b!534163 () Bool)

(assert (=> b!534163 (= e!310580 false)))

(declare-datatypes ((SeekEntryResult!4714 0))(
  ( (MissingZero!4714 (index!21080 (_ BitVec 32))) (Found!4714 (index!21081 (_ BitVec 32))) (Intermediate!4714 (undefined!5526 Bool) (index!21082 (_ BitVec 32)) (x!50068 (_ BitVec 32))) (Undefined!4714) (MissingVacant!4714 (index!21083 (_ BitVec 32))) )
))
(declare-fun lt!245578 () SeekEntryResult!4714)

(declare-fun j!147 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33828 (_ BitVec 32)) SeekEntryResult!4714)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!534163 (= lt!245578 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16249 a!3154) j!147) mask!3216) (select (arr!16249 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!534164 () Bool)

(declare-fun res!329518 () Bool)

(assert (=> b!534164 (=> (not res!329518) (not e!310580))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!534164 (= res!329518 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16613 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16613 a!3154)) (= (select (arr!16249 a!3154) resIndex!32) (select (arr!16249 a!3154) j!147))))))

(declare-fun b!534165 () Bool)

(assert (=> b!534165 (= e!310581 e!310580)))

(declare-fun res!329521 () Bool)

(assert (=> b!534165 (=> (not res!329521) (not e!310580))))

(declare-fun lt!245579 () SeekEntryResult!4714)

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!534165 (= res!329521 (or (= lt!245579 (MissingZero!4714 i!1153)) (= lt!245579 (MissingVacant!4714 i!1153))))))

(declare-fun k0!1998 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33828 (_ BitVec 32)) SeekEntryResult!4714)

(assert (=> b!534165 (= lt!245579 (seekEntryOrOpen!0 k0!1998 a!3154 mask!3216))))

(declare-fun b!534166 () Bool)

(declare-fun res!329523 () Bool)

(assert (=> b!534166 (=> (not res!329523) (not e!310581))))

(assert (=> b!534166 (= res!329523 (and (= (size!16613 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16613 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16613 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!534167 () Bool)

(declare-fun res!329517 () Bool)

(assert (=> b!534167 (=> (not res!329517) (not e!310580))))

(assert (=> b!534167 (= res!329517 (= (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16249 a!3154) j!147) a!3154 mask!3216) (Intermediate!4714 false resIndex!32 resX!32)))))

(declare-fun b!534168 () Bool)

(declare-fun res!329524 () Bool)

(assert (=> b!534168 (=> (not res!329524) (not e!310581))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!534168 (= res!329524 (validKeyInArray!0 k0!1998))))

(declare-fun b!534169 () Bool)

(declare-fun res!329522 () Bool)

(assert (=> b!534169 (=> (not res!329522) (not e!310581))))

(declare-fun arrayContainsKey!0 (array!33828 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!534169 (= res!329522 (not (arrayContainsKey!0 a!3154 k0!1998 #b00000000000000000000000000000000)))))

(declare-fun b!534170 () Bool)

(declare-fun res!329516 () Bool)

(assert (=> b!534170 (=> (not res!329516) (not e!310581))))

(assert (=> b!534170 (= res!329516 (validKeyInArray!0 (select (arr!16249 a!3154) j!147)))))

(assert (= (and start!48660 res!329525) b!534166))

(assert (= (and b!534166 res!329523) b!534170))

(assert (= (and b!534170 res!329516) b!534168))

(assert (= (and b!534168 res!329524) b!534169))

(assert (= (and b!534169 res!329522) b!534165))

(assert (= (and b!534165 res!329521) b!534162))

(assert (= (and b!534162 res!329520) b!534161))

(assert (= (and b!534161 res!329519) b!534164))

(assert (= (and b!534164 res!329518) b!534167))

(assert (= (and b!534167 res!329517) b!534163))

(declare-fun m!513927 () Bool)

(assert (=> b!534167 m!513927))

(assert (=> b!534167 m!513927))

(declare-fun m!513929 () Bool)

(assert (=> b!534167 m!513929))

(assert (=> b!534163 m!513927))

(assert (=> b!534163 m!513927))

(declare-fun m!513931 () Bool)

(assert (=> b!534163 m!513931))

(assert (=> b!534163 m!513931))

(assert (=> b!534163 m!513927))

(declare-fun m!513933 () Bool)

(assert (=> b!534163 m!513933))

(declare-fun m!513935 () Bool)

(assert (=> b!534162 m!513935))

(declare-fun m!513937 () Bool)

(assert (=> b!534165 m!513937))

(declare-fun m!513939 () Bool)

(assert (=> b!534164 m!513939))

(assert (=> b!534164 m!513927))

(assert (=> b!534170 m!513927))

(assert (=> b!534170 m!513927))

(declare-fun m!513941 () Bool)

(assert (=> b!534170 m!513941))

(declare-fun m!513943 () Bool)

(assert (=> start!48660 m!513943))

(declare-fun m!513945 () Bool)

(assert (=> start!48660 m!513945))

(declare-fun m!513947 () Bool)

(assert (=> b!534161 m!513947))

(declare-fun m!513949 () Bool)

(assert (=> b!534169 m!513949))

(declare-fun m!513951 () Bool)

(assert (=> b!534168 m!513951))

(check-sat (not b!534169) (not start!48660) (not b!534163) (not b!534161) (not b!534170) (not b!534162) (not b!534167) (not b!534168) (not b!534165))
(check-sat)

; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!49622 () Bool)

(assert start!49622)

(declare-fun b!545576 () Bool)

(declare-fun res!339664 () Bool)

(declare-fun e!315343 () Bool)

(assert (=> b!545576 (=> (not res!339664) (not e!315343))))

(declare-datatypes ((array!34391 0))(
  ( (array!34392 (arr!16520 (Array (_ BitVec 32) (_ BitVec 64))) (size!16884 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34391)

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34391 (_ BitVec 32)) Bool)

(assert (=> b!545576 (= res!339664 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!545577 () Bool)

(declare-fun res!339661 () Bool)

(declare-fun e!315346 () Bool)

(assert (=> b!545577 (=> (not res!339661) (not e!315346))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!545577 (= res!339661 (validKeyInArray!0 k!1998))))

(declare-fun b!545578 () Bool)

(declare-fun res!339662 () Bool)

(assert (=> b!545578 (=> (not res!339662) (not e!315346))))

(declare-fun j!147 () (_ BitVec 32))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!545578 (= res!339662 (and (= (size!16884 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16884 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16884 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!545579 () Bool)

(declare-fun e!315345 () Bool)

(declare-fun e!315348 () Bool)

(assert (=> b!545579 (= e!315345 e!315348)))

(declare-fun res!339660 () Bool)

(assert (=> b!545579 (=> (not res!339660) (not e!315348))))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun lt!248957 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!545579 (= res!339660 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1030) resX!32) (bvsge (bvadd #b00000000000000000000000000000001 x!1030) #b00000000000000000000000000000000) (bvsge lt!248957 #b00000000000000000000000000000000) (bvslt lt!248957 (size!16884 a!3154))))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!545579 (= lt!248957 (nextIndex!0 index!1177 x!1030 mask!3216))))

(declare-fun b!545580 () Bool)

(declare-fun res!339658 () Bool)

(assert (=> b!545580 (=> (not res!339658) (not e!315343))))

(declare-fun resIndex!32 () (_ BitVec 32))

(assert (=> b!545580 (= res!339658 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16884 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16884 a!3154)) (= (select (arr!16520 a!3154) resIndex!32) (select (arr!16520 a!3154) j!147))))))

(declare-fun b!545581 () Bool)

(declare-fun e!315344 () Bool)

(assert (=> b!545581 (= e!315348 e!315344)))

(declare-fun res!339653 () Bool)

(assert (=> b!545581 (=> (not res!339653) (not e!315344))))

(declare-datatypes ((SeekEntryResult!4985 0))(
  ( (MissingZero!4985 (index!22164 (_ BitVec 32))) (Found!4985 (index!22165 (_ BitVec 32))) (Intermediate!4985 (undefined!5797 Bool) (index!22166 (_ BitVec 32)) (x!51116 (_ BitVec 32))) (Undefined!4985) (MissingVacant!4985 (index!22167 (_ BitVec 32))) )
))
(declare-fun lt!248955 () SeekEntryResult!4985)

(declare-fun lt!248958 () SeekEntryResult!4985)

(declare-fun lt!248960 () SeekEntryResult!4985)

(assert (=> b!545581 (= res!339653 (and (= lt!248960 lt!248958) (= lt!248955 lt!248960)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34391 (_ BitVec 32)) SeekEntryResult!4985)

(assert (=> b!545581 (= lt!248960 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1030) lt!248957 (select (arr!16520 a!3154) j!147) a!3154 mask!3216))))

(declare-fun res!339657 () Bool)

(assert (=> start!49622 (=> (not res!339657) (not e!315346))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!49622 (= res!339657 (validMask!0 mask!3216))))

(assert (=> start!49622 e!315346))

(assert (=> start!49622 true))

(declare-fun array_inv!12294 (array!34391) Bool)

(assert (=> start!49622 (array_inv!12294 a!3154)))

(declare-fun b!545582 () Bool)

(declare-fun e!315349 () Bool)

(assert (=> b!545582 (= e!315349 e!315345)))

(declare-fun res!339656 () Bool)

(assert (=> b!545582 (=> (not res!339656) (not e!315345))))

(declare-fun lt!248959 () SeekEntryResult!4985)

(assert (=> b!545582 (= res!339656 (and (= lt!248955 lt!248959) (not (= (select (arr!16520 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16520 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16520 a!3154) index!1177) (select (arr!16520 a!3154) j!147)))))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!545582 (= lt!248955 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16520 a!3154) j!147) mask!3216) (select (arr!16520 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!545583 () Bool)

(assert (=> b!545583 (= e!315346 e!315343)))

(declare-fun res!339663 () Bool)

(assert (=> b!545583 (=> (not res!339663) (not e!315343))))

(declare-fun lt!248956 () SeekEntryResult!4985)

(assert (=> b!545583 (= res!339663 (or (= lt!248956 (MissingZero!4985 i!1153)) (= lt!248956 (MissingVacant!4985 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34391 (_ BitVec 32)) SeekEntryResult!4985)

(assert (=> b!545583 (= lt!248956 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!545584 () Bool)

(assert (=> b!545584 (= e!315343 e!315349)))

(declare-fun res!339655 () Bool)

(assert (=> b!545584 (=> (not res!339655) (not e!315349))))

(assert (=> b!545584 (= res!339655 (= lt!248959 lt!248958))))

(assert (=> b!545584 (= lt!248958 (Intermediate!4985 false resIndex!32 resX!32))))

(assert (=> b!545584 (= lt!248959 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16520 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!545585 () Bool)

(declare-fun res!339654 () Bool)

(assert (=> b!545585 (=> (not res!339654) (not e!315346))))

(assert (=> b!545585 (= res!339654 (validKeyInArray!0 (select (arr!16520 a!3154) j!147)))))

(declare-fun b!545586 () Bool)

(declare-fun res!339665 () Bool)

(assert (=> b!545586 (=> (not res!339665) (not e!315346))))

(declare-fun arrayContainsKey!0 (array!34391 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!545586 (= res!339665 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!545587 () Bool)

(declare-fun res!339659 () Bool)

(assert (=> b!545587 (=> (not res!339659) (not e!315343))))

(declare-datatypes ((List!10692 0))(
  ( (Nil!10689) (Cons!10688 (h!11652 (_ BitVec 64)) (t!16928 List!10692)) )
))
(declare-fun arrayNoDuplicates!0 (array!34391 (_ BitVec 32) List!10692) Bool)

(assert (=> b!545587 (= res!339659 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10689))))

(declare-fun b!545588 () Bool)

(assert (=> b!545588 (= e!315344 (not true))))

(assert (=> b!545588 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1030) lt!248957 (select (store (arr!16520 a!3154) i!1153 k!1998) j!147) (array!34392 (store (arr!16520 a!3154) i!1153 k!1998) (size!16884 a!3154)) mask!3216) lt!248958)))

(declare-datatypes ((Unit!16902 0))(
  ( (Unit!16903) )
))
(declare-fun lt!248954 () Unit!16902)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!34391 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16902)

(assert (=> b!545588 (= lt!248954 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3154 i!1153 k!1998 j!147 lt!248957 (bvadd #b00000000000000000000000000000001 x!1030) resIndex!32 resX!32 mask!3216))))

(assert (= (and start!49622 res!339657) b!545578))

(assert (= (and b!545578 res!339662) b!545585))

(assert (= (and b!545585 res!339654) b!545577))

(assert (= (and b!545577 res!339661) b!545586))

(assert (= (and b!545586 res!339665) b!545583))

(assert (= (and b!545583 res!339663) b!545576))

(assert (= (and b!545576 res!339664) b!545587))

(assert (= (and b!545587 res!339659) b!545580))

(assert (= (and b!545580 res!339658) b!545584))

(assert (= (and b!545584 res!339655) b!545582))

(assert (= (and b!545582 res!339656) b!545579))

(assert (= (and b!545579 res!339660) b!545581))

(assert (= (and b!545581 res!339653) b!545588))

(declare-fun m!523155 () Bool)

(assert (=> b!545583 m!523155))

(declare-fun m!523157 () Bool)

(assert (=> b!545581 m!523157))

(assert (=> b!545581 m!523157))

(declare-fun m!523159 () Bool)

(assert (=> b!545581 m!523159))

(assert (=> b!545585 m!523157))

(assert (=> b!545585 m!523157))

(declare-fun m!523161 () Bool)

(assert (=> b!545585 m!523161))

(declare-fun m!523163 () Bool)

(assert (=> b!545588 m!523163))

(declare-fun m!523165 () Bool)

(assert (=> b!545588 m!523165))

(assert (=> b!545588 m!523165))

(declare-fun m!523167 () Bool)

(assert (=> b!545588 m!523167))

(declare-fun m!523169 () Bool)

(assert (=> b!545588 m!523169))

(assert (=> b!545584 m!523157))

(assert (=> b!545584 m!523157))

(declare-fun m!523171 () Bool)

(assert (=> b!545584 m!523171))

(declare-fun m!523173 () Bool)

(assert (=> start!49622 m!523173))

(declare-fun m!523175 () Bool)

(assert (=> start!49622 m!523175))

(declare-fun m!523177 () Bool)

(assert (=> b!545586 m!523177))

(declare-fun m!523179 () Bool)

(assert (=> b!545576 m!523179))

(declare-fun m!523181 () Bool)

(assert (=> b!545582 m!523181))

(assert (=> b!545582 m!523157))

(assert (=> b!545582 m!523157))

(declare-fun m!523183 () Bool)

(assert (=> b!545582 m!523183))

(assert (=> b!545582 m!523183))

(assert (=> b!545582 m!523157))

(declare-fun m!523185 () Bool)

(assert (=> b!545582 m!523185))

(declare-fun m!523187 () Bool)

(assert (=> b!545587 m!523187))

(declare-fun m!523189 () Bool)

(assert (=> b!545579 m!523189))

(declare-fun m!523191 () Bool)

(assert (=> b!545577 m!523191))

(declare-fun m!523193 () Bool)

(assert (=> b!545580 m!523193))

(assert (=> b!545580 m!523157))

(push 1)


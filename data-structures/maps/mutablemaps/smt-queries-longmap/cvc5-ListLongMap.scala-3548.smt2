; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48874 () Bool)

(assert start!48874)

(declare-fun b!538016 () Bool)

(declare-fun res!333372 () Bool)

(declare-fun e!311992 () Bool)

(assert (=> b!538016 (=> (not res!333372) (not e!311992))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!538016 (= res!333372 (validKeyInArray!0 k!1998))))

(declare-fun b!538017 () Bool)

(declare-fun e!311995 () Bool)

(declare-fun e!311996 () Bool)

(assert (=> b!538017 (= e!311995 e!311996)))

(declare-fun res!333379 () Bool)

(assert (=> b!538017 (=> (not res!333379) (not e!311996))))

(declare-datatypes ((SeekEntryResult!4821 0))(
  ( (MissingZero!4821 (index!21508 (_ BitVec 32))) (Found!4821 (index!21509 (_ BitVec 32))) (Intermediate!4821 (undefined!5633 Bool) (index!21510 (_ BitVec 32)) (x!50463 (_ BitVec 32))) (Undefined!4821) (MissingVacant!4821 (index!21511 (_ BitVec 32))) )
))
(declare-fun lt!246612 () SeekEntryResult!4821)

(declare-fun lt!246611 () SeekEntryResult!4821)

(declare-fun lt!246608 () SeekEntryResult!4821)

(assert (=> b!538017 (= res!333379 (and (= lt!246611 lt!246612) (= lt!246608 lt!246611)))))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun lt!246614 () (_ BitVec 32))

(declare-fun j!147 () (_ BitVec 32))

(declare-datatypes ((array!34042 0))(
  ( (array!34043 (arr!16356 (Array (_ BitVec 32) (_ BitVec 64))) (size!16720 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34042)

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34042 (_ BitVec 32)) SeekEntryResult!4821)

(assert (=> b!538017 (= lt!246611 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1030) lt!246614 (select (arr!16356 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!538018 () Bool)

(declare-fun e!311998 () Bool)

(assert (=> b!538018 (= e!311992 e!311998)))

(declare-fun res!333382 () Bool)

(assert (=> b!538018 (=> (not res!333382) (not e!311998))))

(declare-fun lt!246609 () SeekEntryResult!4821)

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!538018 (= res!333382 (or (= lt!246609 (MissingZero!4821 i!1153)) (= lt!246609 (MissingVacant!4821 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34042 (_ BitVec 32)) SeekEntryResult!4821)

(assert (=> b!538018 (= lt!246609 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!538019 () Bool)

(declare-fun res!333377 () Bool)

(assert (=> b!538019 (=> (not res!333377) (not e!311992))))

(assert (=> b!538019 (= res!333377 (and (= (size!16720 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16720 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16720 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!538020 () Bool)

(declare-fun res!333371 () Bool)

(assert (=> b!538020 (=> (not res!333371) (not e!311998))))

(declare-datatypes ((List!10528 0))(
  ( (Nil!10525) (Cons!10524 (h!11467 (_ BitVec 64)) (t!16764 List!10528)) )
))
(declare-fun arrayNoDuplicates!0 (array!34042 (_ BitVec 32) List!10528) Bool)

(assert (=> b!538020 (= res!333371 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10525))))

(declare-fun b!538021 () Bool)

(declare-fun e!311994 () Bool)

(assert (=> b!538021 (= e!311998 e!311994)))

(declare-fun res!333373 () Bool)

(assert (=> b!538021 (=> (not res!333373) (not e!311994))))

(declare-fun lt!246613 () SeekEntryResult!4821)

(assert (=> b!538021 (= res!333373 (= lt!246613 lt!246612))))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!538021 (= lt!246612 (Intermediate!4821 false resIndex!32 resX!32))))

(declare-fun index!1177 () (_ BitVec 32))

(assert (=> b!538021 (= lt!246613 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16356 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!538022 () Bool)

(declare-fun res!333376 () Bool)

(assert (=> b!538022 (=> (not res!333376) (not e!311998))))

(assert (=> b!538022 (= res!333376 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16720 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16720 a!3154)) (= (select (arr!16356 a!3154) resIndex!32) (select (arr!16356 a!3154) j!147))))))

(declare-fun b!538023 () Bool)

(declare-fun res!333374 () Bool)

(assert (=> b!538023 (=> (not res!333374) (not e!311992))))

(assert (=> b!538023 (= res!333374 (validKeyInArray!0 (select (arr!16356 a!3154) j!147)))))

(declare-fun b!538024 () Bool)

(declare-fun e!311993 () Bool)

(assert (=> b!538024 (= e!311993 e!311995)))

(declare-fun res!333380 () Bool)

(assert (=> b!538024 (=> (not res!333380) (not e!311995))))

(assert (=> b!538024 (= res!333380 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1030) resX!32) (bvsge (bvadd #b00000000000000000000000000000001 x!1030) #b00000000000000000000000000000000) (bvsge lt!246614 #b00000000000000000000000000000000) (bvslt lt!246614 (size!16720 a!3154))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!538024 (= lt!246614 (nextIndex!0 index!1177 x!1030 mask!3216))))

(declare-fun res!333375 () Bool)

(assert (=> start!48874 (=> (not res!333375) (not e!311992))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48874 (= res!333375 (validMask!0 mask!3216))))

(assert (=> start!48874 e!311992))

(assert (=> start!48874 true))

(declare-fun array_inv!12130 (array!34042) Bool)

(assert (=> start!48874 (array_inv!12130 a!3154)))

(declare-fun b!538025 () Bool)

(declare-fun res!333383 () Bool)

(assert (=> b!538025 (=> (not res!333383) (not e!311998))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34042 (_ BitVec 32)) Bool)

(assert (=> b!538025 (= res!333383 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!538026 () Bool)

(assert (=> b!538026 (= e!311996 (not true))))

(assert (=> b!538026 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1030) lt!246614 (select (store (arr!16356 a!3154) i!1153 k!1998) j!147) (array!34043 (store (arr!16356 a!3154) i!1153 k!1998) (size!16720 a!3154)) mask!3216) lt!246612)))

(declare-datatypes ((Unit!16820 0))(
  ( (Unit!16821) )
))
(declare-fun lt!246610 () Unit!16820)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!34042 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16820)

(assert (=> b!538026 (= lt!246610 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3154 i!1153 k!1998 j!147 lt!246614 (bvadd #b00000000000000000000000000000001 x!1030) resIndex!32 resX!32 mask!3216))))

(declare-fun b!538027 () Bool)

(assert (=> b!538027 (= e!311994 e!311993)))

(declare-fun res!333378 () Bool)

(assert (=> b!538027 (=> (not res!333378) (not e!311993))))

(assert (=> b!538027 (= res!333378 (and (= lt!246608 lt!246613) (not (= (select (arr!16356 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16356 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16356 a!3154) index!1177) (select (arr!16356 a!3154) j!147)))))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!538027 (= lt!246608 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16356 a!3154) j!147) mask!3216) (select (arr!16356 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!538028 () Bool)

(declare-fun res!333381 () Bool)

(assert (=> b!538028 (=> (not res!333381) (not e!311992))))

(declare-fun arrayContainsKey!0 (array!34042 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!538028 (= res!333381 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(assert (= (and start!48874 res!333375) b!538019))

(assert (= (and b!538019 res!333377) b!538023))

(assert (= (and b!538023 res!333374) b!538016))

(assert (= (and b!538016 res!333372) b!538028))

(assert (= (and b!538028 res!333381) b!538018))

(assert (= (and b!538018 res!333382) b!538025))

(assert (= (and b!538025 res!333383) b!538020))

(assert (= (and b!538020 res!333371) b!538022))

(assert (= (and b!538022 res!333376) b!538021))

(assert (= (and b!538021 res!333373) b!538027))

(assert (= (and b!538027 res!333378) b!538024))

(assert (= (and b!538024 res!333380) b!538017))

(assert (= (and b!538017 res!333379) b!538026))

(declare-fun m!517147 () Bool)

(assert (=> b!538027 m!517147))

(declare-fun m!517149 () Bool)

(assert (=> b!538027 m!517149))

(assert (=> b!538027 m!517149))

(declare-fun m!517151 () Bool)

(assert (=> b!538027 m!517151))

(assert (=> b!538027 m!517151))

(assert (=> b!538027 m!517149))

(declare-fun m!517153 () Bool)

(assert (=> b!538027 m!517153))

(declare-fun m!517155 () Bool)

(assert (=> b!538020 m!517155))

(declare-fun m!517157 () Bool)

(assert (=> b!538026 m!517157))

(declare-fun m!517159 () Bool)

(assert (=> b!538026 m!517159))

(assert (=> b!538026 m!517159))

(declare-fun m!517161 () Bool)

(assert (=> b!538026 m!517161))

(declare-fun m!517163 () Bool)

(assert (=> b!538026 m!517163))

(declare-fun m!517165 () Bool)

(assert (=> b!538028 m!517165))

(declare-fun m!517167 () Bool)

(assert (=> start!48874 m!517167))

(declare-fun m!517169 () Bool)

(assert (=> start!48874 m!517169))

(assert (=> b!538023 m!517149))

(assert (=> b!538023 m!517149))

(declare-fun m!517171 () Bool)

(assert (=> b!538023 m!517171))

(assert (=> b!538017 m!517149))

(assert (=> b!538017 m!517149))

(declare-fun m!517173 () Bool)

(assert (=> b!538017 m!517173))

(assert (=> b!538021 m!517149))

(assert (=> b!538021 m!517149))

(declare-fun m!517175 () Bool)

(assert (=> b!538021 m!517175))

(declare-fun m!517177 () Bool)

(assert (=> b!538025 m!517177))

(declare-fun m!517179 () Bool)

(assert (=> b!538022 m!517179))

(assert (=> b!538022 m!517149))

(declare-fun m!517181 () Bool)

(assert (=> b!538016 m!517181))

(declare-fun m!517183 () Bool)

(assert (=> b!538018 m!517183))

(declare-fun m!517185 () Bool)

(assert (=> b!538024 m!517185))

(push 1)


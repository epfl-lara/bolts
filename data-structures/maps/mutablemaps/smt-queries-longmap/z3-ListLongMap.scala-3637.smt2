; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!50218 () Bool)

(assert start!50218)

(declare-fun b!549262 () Bool)

(declare-fun res!342556 () Bool)

(declare-fun e!317242 () Bool)

(assert (=> b!549262 (=> (not res!342556) (not e!317242))))

(declare-datatypes ((array!34625 0))(
  ( (array!34626 (arr!16624 (Array (_ BitVec 32) (_ BitVec 64))) (size!16988 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34625)

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34625 (_ BitVec 32)) Bool)

(assert (=> b!549262 (= res!342556 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!549263 () Bool)

(declare-fun res!342563 () Bool)

(declare-fun e!317241 () Bool)

(assert (=> b!549263 (=> (not res!342563) (not e!317241))))

(declare-fun k0!1914 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!549263 (= res!342563 (validKeyInArray!0 k0!1914))))

(declare-fun b!549264 () Bool)

(assert (=> b!549264 (= e!317241 e!317242)))

(declare-fun res!342561 () Bool)

(assert (=> b!549264 (=> (not res!342561) (not e!317242))))

(declare-datatypes ((SeekEntryResult!5080 0))(
  ( (MissingZero!5080 (index!22547 (_ BitVec 32))) (Found!5080 (index!22548 (_ BitVec 32))) (Intermediate!5080 (undefined!5892 Bool) (index!22549 (_ BitVec 32)) (x!51509 (_ BitVec 32))) (Undefined!5080) (MissingVacant!5080 (index!22550 (_ BitVec 32))) )
))
(declare-fun lt!250104 () SeekEntryResult!5080)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!549264 (= res!342561 (or (= lt!250104 (MissingZero!5080 i!1132)) (= lt!250104 (MissingVacant!5080 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34625 (_ BitVec 32)) SeekEntryResult!5080)

(assert (=> b!549264 (= lt!250104 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!549265 () Bool)

(declare-fun res!342557 () Bool)

(assert (=> b!549265 (=> (not res!342557) (not e!317241))))

(declare-fun arrayContainsKey!0 (array!34625 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!549265 (= res!342557 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun b!549266 () Bool)

(declare-fun res!342558 () Bool)

(assert (=> b!549266 (=> (not res!342558) (not e!317242))))

(declare-datatypes ((List!10757 0))(
  ( (Nil!10754) (Cons!10753 (h!11726 (_ BitVec 64)) (t!16993 List!10757)) )
))
(declare-fun arrayNoDuplicates!0 (array!34625 (_ BitVec 32) List!10757) Bool)

(assert (=> b!549266 (= res!342558 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10754))))

(declare-fun b!549267 () Bool)

(declare-fun res!342560 () Bool)

(assert (=> b!549267 (=> (not res!342560) (not e!317241))))

(declare-fun j!142 () (_ BitVec 32))

(assert (=> b!549267 (= res!342560 (validKeyInArray!0 (select (arr!16624 a!3118) j!142)))))

(declare-fun b!549268 () Bool)

(declare-fun res!342559 () Bool)

(assert (=> b!549268 (=> (not res!342559) (not e!317241))))

(assert (=> b!549268 (= res!342559 (and (= (size!16988 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!16988 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!16988 a!3118)) (not (= i!1132 j!142))))))

(declare-fun res!342562 () Bool)

(assert (=> start!50218 (=> (not res!342562) (not e!317241))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50218 (= res!342562 (validMask!0 mask!3119))))

(assert (=> start!50218 e!317241))

(assert (=> start!50218 true))

(declare-fun array_inv!12398 (array!34625) Bool)

(assert (=> start!50218 (array_inv!12398 a!3118)))

(declare-fun b!549269 () Bool)

(assert (=> b!549269 (= e!317242 false)))

(declare-fun lt!250105 () SeekEntryResult!5080)

(declare-fun lt!250106 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34625 (_ BitVec 32)) SeekEntryResult!5080)

(assert (=> b!549269 (= lt!250105 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!250106 (select (store (arr!16624 a!3118) i!1132 k0!1914) j!142) (array!34626 (store (arr!16624 a!3118) i!1132 k0!1914) (size!16988 a!3118)) mask!3119))))

(declare-fun lt!250102 () SeekEntryResult!5080)

(declare-fun lt!250103 () (_ BitVec 32))

(assert (=> b!549269 (= lt!250102 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!250103 (select (arr!16624 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!549269 (= lt!250106 (toIndex!0 (select (store (arr!16624 a!3118) i!1132 k0!1914) j!142) mask!3119))))

(assert (=> b!549269 (= lt!250103 (toIndex!0 (select (arr!16624 a!3118) j!142) mask!3119))))

(assert (= (and start!50218 res!342562) b!549268))

(assert (= (and b!549268 res!342559) b!549267))

(assert (= (and b!549267 res!342560) b!549263))

(assert (= (and b!549263 res!342563) b!549265))

(assert (= (and b!549265 res!342557) b!549264))

(assert (= (and b!549264 res!342561) b!549262))

(assert (= (and b!549262 res!342556) b!549266))

(assert (= (and b!549266 res!342558) b!549269))

(declare-fun m!526153 () Bool)

(assert (=> start!50218 m!526153))

(declare-fun m!526155 () Bool)

(assert (=> start!50218 m!526155))

(declare-fun m!526157 () Bool)

(assert (=> b!549269 m!526157))

(declare-fun m!526159 () Bool)

(assert (=> b!549269 m!526159))

(declare-fun m!526161 () Bool)

(assert (=> b!549269 m!526161))

(declare-fun m!526163 () Bool)

(assert (=> b!549269 m!526163))

(assert (=> b!549269 m!526161))

(assert (=> b!549269 m!526157))

(declare-fun m!526165 () Bool)

(assert (=> b!549269 m!526165))

(assert (=> b!549269 m!526161))

(declare-fun m!526167 () Bool)

(assert (=> b!549269 m!526167))

(assert (=> b!549269 m!526157))

(declare-fun m!526169 () Bool)

(assert (=> b!549269 m!526169))

(declare-fun m!526171 () Bool)

(assert (=> b!549265 m!526171))

(declare-fun m!526173 () Bool)

(assert (=> b!549264 m!526173))

(assert (=> b!549267 m!526161))

(assert (=> b!549267 m!526161))

(declare-fun m!526175 () Bool)

(assert (=> b!549267 m!526175))

(declare-fun m!526177 () Bool)

(assert (=> b!549266 m!526177))

(declare-fun m!526179 () Bool)

(assert (=> b!549263 m!526179))

(declare-fun m!526181 () Bool)

(assert (=> b!549262 m!526181))

(check-sat (not start!50218) (not b!549267) (not b!549264) (not b!549262) (not b!549263) (not b!549265) (not b!549266) (not b!549269))
(check-sat)

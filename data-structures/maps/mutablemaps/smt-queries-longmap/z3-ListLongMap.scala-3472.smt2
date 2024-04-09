; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!48192 () Bool)

(assert start!48192)

(declare-fun b!530314 () Bool)

(declare-fun res!326173 () Bool)

(declare-fun e!308986 () Bool)

(assert (=> b!530314 (=> (not res!326173) (not e!308986))))

(declare-datatypes ((array!33573 0))(
  ( (array!33574 (arr!16129 (Array (_ BitVec 32) (_ BitVec 64))) (size!16493 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33573)

(declare-fun j!147 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!530314 (= res!326173 (validKeyInArray!0 (select (arr!16129 a!3154) j!147)))))

(declare-fun res!326174 () Bool)

(assert (=> start!48192 (=> (not res!326174) (not e!308986))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48192 (= res!326174 (validMask!0 mask!3216))))

(assert (=> start!48192 e!308986))

(assert (=> start!48192 true))

(declare-fun array_inv!11903 (array!33573) Bool)

(assert (=> start!48192 (array_inv!11903 a!3154)))

(declare-fun b!530315 () Bool)

(assert (=> b!530315 (= e!308986 (bvslt mask!3216 #b00000000000000000000000000000000))))

(declare-fun b!530316 () Bool)

(declare-fun res!326172 () Bool)

(assert (=> b!530316 (=> (not res!326172) (not e!308986))))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!530316 (= res!326172 (and (= (size!16493 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16493 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16493 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!530317 () Bool)

(declare-fun res!326170 () Bool)

(assert (=> b!530317 (=> (not res!326170) (not e!308986))))

(declare-fun k0!1998 () (_ BitVec 64))

(assert (=> b!530317 (= res!326170 (validKeyInArray!0 k0!1998))))

(declare-fun b!530318 () Bool)

(declare-fun res!326171 () Bool)

(assert (=> b!530318 (=> (not res!326171) (not e!308986))))

(declare-fun arrayContainsKey!0 (array!33573 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!530318 (= res!326171 (not (arrayContainsKey!0 a!3154 k0!1998 #b00000000000000000000000000000000)))))

(assert (= (and start!48192 res!326174) b!530316))

(assert (= (and b!530316 res!326172) b!530314))

(assert (= (and b!530314 res!326173) b!530317))

(assert (= (and b!530317 res!326170) b!530318))

(assert (= (and b!530318 res!326171) b!530315))

(declare-fun m!510931 () Bool)

(assert (=> b!530314 m!510931))

(assert (=> b!530314 m!510931))

(declare-fun m!510933 () Bool)

(assert (=> b!530314 m!510933))

(declare-fun m!510935 () Bool)

(assert (=> start!48192 m!510935))

(declare-fun m!510937 () Bool)

(assert (=> start!48192 m!510937))

(declare-fun m!510939 () Bool)

(assert (=> b!530317 m!510939))

(declare-fun m!510941 () Bool)

(assert (=> b!530318 m!510941))

(check-sat (not b!530318) (not b!530317) (not start!48192) (not b!530314))
(check-sat)

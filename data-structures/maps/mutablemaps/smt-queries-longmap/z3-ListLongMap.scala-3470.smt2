; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!48162 () Bool)

(assert start!48162)

(declare-fun b!530238 () Bool)

(declare-fun res!326094 () Bool)

(declare-fun e!308949 () Bool)

(assert (=> b!530238 (=> (not res!326094) (not e!308949))))

(declare-datatypes ((array!33558 0))(
  ( (array!33559 (arr!16123 (Array (_ BitVec 32) (_ BitVec 64))) (size!16487 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33558)

(declare-fun j!147 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!530238 (= res!326094 (validKeyInArray!0 (select (arr!16123 a!3154) j!147)))))

(declare-fun b!530237 () Bool)

(declare-fun res!326096 () Bool)

(assert (=> b!530237 (=> (not res!326096) (not e!308949))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!530237 (= res!326096 (and (= (size!16487 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16487 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16487 a!3154)) (not (= i!1153 j!147))))))

(declare-fun res!326095 () Bool)

(assert (=> start!48162 (=> (not res!326095) (not e!308949))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48162 (= res!326095 (validMask!0 mask!3216))))

(assert (=> start!48162 e!308949))

(assert (=> start!48162 true))

(declare-fun array_inv!11897 (array!33558) Bool)

(assert (=> start!48162 (array_inv!11897 a!3154)))

(declare-fun b!530239 () Bool)

(declare-fun res!326093 () Bool)

(assert (=> b!530239 (=> (not res!326093) (not e!308949))))

(declare-fun k0!1998 () (_ BitVec 64))

(assert (=> b!530239 (= res!326093 (validKeyInArray!0 k0!1998))))

(declare-fun b!530240 () Bool)

(assert (=> b!530240 (= e!308949 (bvsge #b00000000000000000000000000000000 (size!16487 a!3154)))))

(assert (= (and start!48162 res!326095) b!530237))

(assert (= (and b!530237 res!326096) b!530238))

(assert (= (and b!530238 res!326094) b!530239))

(assert (= (and b!530239 res!326093) b!530240))

(declare-fun m!510869 () Bool)

(assert (=> b!530238 m!510869))

(assert (=> b!530238 m!510869))

(declare-fun m!510871 () Bool)

(assert (=> b!530238 m!510871))

(declare-fun m!510873 () Bool)

(assert (=> start!48162 m!510873))

(declare-fun m!510875 () Bool)

(assert (=> start!48162 m!510875))

(declare-fun m!510877 () Bool)

(assert (=> b!530239 m!510877))

(check-sat (not b!530239) (not b!530238) (not start!48162))
(check-sat)

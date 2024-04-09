; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48190 () Bool)

(assert start!48190)

(declare-fun res!326159 () Bool)

(declare-fun e!308979 () Bool)

(assert (=> start!48190 (=> (not res!326159) (not e!308979))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48190 (= res!326159 (validMask!0 mask!3216))))

(assert (=> start!48190 e!308979))

(assert (=> start!48190 true))

(declare-datatypes ((array!33571 0))(
  ( (array!33572 (arr!16128 (Array (_ BitVec 32) (_ BitVec 64))) (size!16492 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33571)

(declare-fun array_inv!11902 (array!33571) Bool)

(assert (=> start!48190 (array_inv!11902 a!3154)))

(declare-fun b!530299 () Bool)

(declare-fun res!326157 () Bool)

(assert (=> b!530299 (=> (not res!326157) (not e!308979))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!33571 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!530299 (= res!326157 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!530300 () Bool)

(declare-fun res!326155 () Bool)

(assert (=> b!530300 (=> (not res!326155) (not e!308979))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!530300 (= res!326155 (validKeyInArray!0 k!1998))))

(declare-fun b!530301 () Bool)

(declare-fun res!326156 () Bool)

(assert (=> b!530301 (=> (not res!326156) (not e!308979))))

(declare-fun j!147 () (_ BitVec 32))

(assert (=> b!530301 (= res!326156 (validKeyInArray!0 (select (arr!16128 a!3154) j!147)))))

(declare-fun b!530302 () Bool)

(declare-fun res!326158 () Bool)

(assert (=> b!530302 (=> (not res!326158) (not e!308979))))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!530302 (= res!326158 (and (= (size!16492 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16492 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16492 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!530303 () Bool)

(assert (=> b!530303 (= e!308979 (bvslt mask!3216 #b00000000000000000000000000000000))))

(assert (= (and start!48190 res!326159) b!530302))

(assert (= (and b!530302 res!326158) b!530301))

(assert (= (and b!530301 res!326156) b!530300))

(assert (= (and b!530300 res!326155) b!530299))

(assert (= (and b!530299 res!326157) b!530303))

(declare-fun m!510919 () Bool)

(assert (=> start!48190 m!510919))

(declare-fun m!510921 () Bool)

(assert (=> start!48190 m!510921))

(declare-fun m!510923 () Bool)

(assert (=> b!530299 m!510923))

(declare-fun m!510925 () Bool)

(assert (=> b!530300 m!510925))

(declare-fun m!510927 () Bool)

(assert (=> b!530301 m!510927))

(assert (=> b!530301 m!510927))

(declare-fun m!510929 () Bool)

(assert (=> b!530301 m!510929))

(push 1)

(assert (not b!530300))

(assert (not start!48190))

(assert (not b!530299))

(assert (not b!530301))

(check-sat)

(pop 1)


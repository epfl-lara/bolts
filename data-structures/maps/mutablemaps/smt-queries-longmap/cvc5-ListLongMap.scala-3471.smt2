; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48166 () Bool)

(assert start!48166)

(declare-fun b!530263 () Bool)

(declare-fun res!326120 () Bool)

(declare-fun e!308961 () Bool)

(assert (=> b!530263 (=> (not res!326120) (not e!308961))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!530263 (= res!326120 (validKeyInArray!0 k!1998))))

(declare-fun b!530264 () Bool)

(declare-datatypes ((array!33562 0))(
  ( (array!33563 (arr!16125 (Array (_ BitVec 32) (_ BitVec 64))) (size!16489 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33562)

(assert (=> b!530264 (= e!308961 (and (bvslt #b00000000000000000000000000000000 (size!16489 a!3154)) (bvsge (size!16489 a!3154) #b01111111111111111111111111111111)))))

(declare-fun res!326118 () Bool)

(assert (=> start!48166 (=> (not res!326118) (not e!308961))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48166 (= res!326118 (validMask!0 mask!3216))))

(assert (=> start!48166 e!308961))

(assert (=> start!48166 true))

(declare-fun array_inv!11899 (array!33562) Bool)

(assert (=> start!48166 (array_inv!11899 a!3154)))

(declare-fun b!530261 () Bool)

(declare-fun res!326117 () Bool)

(assert (=> b!530261 (=> (not res!326117) (not e!308961))))

(declare-fun j!147 () (_ BitVec 32))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!530261 (= res!326117 (and (= (size!16489 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16489 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16489 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!530262 () Bool)

(declare-fun res!326119 () Bool)

(assert (=> b!530262 (=> (not res!326119) (not e!308961))))

(assert (=> b!530262 (= res!326119 (validKeyInArray!0 (select (arr!16125 a!3154) j!147)))))

(assert (= (and start!48166 res!326118) b!530261))

(assert (= (and b!530261 res!326117) b!530262))

(assert (= (and b!530262 res!326119) b!530263))

(assert (= (and b!530263 res!326120) b!530264))

(declare-fun m!510889 () Bool)

(assert (=> b!530263 m!510889))

(declare-fun m!510891 () Bool)

(assert (=> start!48166 m!510891))

(declare-fun m!510893 () Bool)

(assert (=> start!48166 m!510893))

(declare-fun m!510895 () Bool)

(assert (=> b!530262 m!510895))

(assert (=> b!530262 m!510895))

(declare-fun m!510897 () Bool)

(assert (=> b!530262 m!510897))

(push 1)

(assert (not start!48166))

(assert (not b!530263))

(assert (not b!530262))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!81007 () Bool)

(assert (=> d!81007 (= (validMask!0 mask!3216) (and (or (= mask!3216 #b00000000000000000000000000000111) (= mask!3216 #b00000000000000000000000000001111) (= mask!3216 #b00000000000000000000000000011111) (= mask!3216 #b00000000000000000000000000111111) (= mask!3216 #b00000000000000000000000001111111) (= mask!3216 #b00000000000000000000000011111111) (= mask!3216 #b00000000000000000000000111111111) (= mask!3216 #b00000000000000000000001111111111) (= mask!3216 #b00000000000000000000011111111111) (= mask!3216 #b00000000000000000000111111111111) (= mask!3216 #b00000000000000000001111111111111) (= mask!3216 #b00000000000000000011111111111111) (= mask!3216 #b00000000000000000111111111111111) (= mask!3216 #b00000000000000001111111111111111) (= mask!3216 #b00000000000000011111111111111111) (= mask!3216 #b00000000000000111111111111111111) (= mask!3216 #b00000000000001111111111111111111) (= mask!3216 #b00000000000011111111111111111111) (= mask!3216 #b00000000000111111111111111111111) (= mask!3216 #b00000000001111111111111111111111) (= mask!3216 #b00000000011111111111111111111111) (= mask!3216 #b00000000111111111111111111111111) (= mask!3216 #b00000001111111111111111111111111) (= mask!3216 #b00000011111111111111111111111111) (= mask!3216 #b00000111111111111111111111111111) (= mask!3216 #b00001111111111111111111111111111) (= mask!3216 #b00011111111111111111111111111111) (= mask!3216 #b00111111111111111111111111111111)) (bvsle mask!3216 #b00111111111111111111111111111111)))))

(assert (=> start!48166 d!81007))

(declare-fun d!81019 () Bool)

(assert (=> d!81019 (= (array_inv!11899 a!3154) (bvsge (size!16489 a!3154) #b00000000000000000000000000000000))))


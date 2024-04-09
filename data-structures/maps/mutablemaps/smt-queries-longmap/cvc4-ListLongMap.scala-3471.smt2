; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48170 () Bool)

(assert start!48170)

(declare-fun res!326142 () Bool)

(declare-fun e!308974 () Bool)

(assert (=> start!48170 (=> (not res!326142) (not e!308974))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48170 (= res!326142 (validMask!0 mask!3216))))

(assert (=> start!48170 e!308974))

(assert (=> start!48170 true))

(declare-datatypes ((array!33566 0))(
  ( (array!33567 (arr!16127 (Array (_ BitVec 32) (_ BitVec 64))) (size!16491 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33566)

(declare-fun array_inv!11901 (array!33566) Bool)

(assert (=> start!48170 (array_inv!11901 a!3154)))

(declare-fun b!530287 () Bool)

(declare-fun res!326141 () Bool)

(assert (=> b!530287 (=> (not res!326141) (not e!308974))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!530287 (= res!326141 (validKeyInArray!0 k!1998))))

(declare-fun b!530285 () Bool)

(declare-fun res!326144 () Bool)

(assert (=> b!530285 (=> (not res!326144) (not e!308974))))

(declare-fun j!147 () (_ BitVec 32))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!530285 (= res!326144 (and (= (size!16491 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16491 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16491 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!530288 () Bool)

(assert (=> b!530288 (= e!308974 (and (bvslt #b00000000000000000000000000000000 (size!16491 a!3154)) (bvsge (size!16491 a!3154) #b01111111111111111111111111111111)))))

(declare-fun b!530286 () Bool)

(declare-fun res!326143 () Bool)

(assert (=> b!530286 (=> (not res!326143) (not e!308974))))

(assert (=> b!530286 (= res!326143 (validKeyInArray!0 (select (arr!16127 a!3154) j!147)))))

(assert (= (and start!48170 res!326142) b!530285))

(assert (= (and b!530285 res!326144) b!530286))

(assert (= (and b!530286 res!326143) b!530287))

(assert (= (and b!530287 res!326141) b!530288))

(declare-fun m!510909 () Bool)

(assert (=> start!48170 m!510909))

(declare-fun m!510911 () Bool)

(assert (=> start!48170 m!510911))

(declare-fun m!510913 () Bool)

(assert (=> b!530287 m!510913))

(declare-fun m!510915 () Bool)

(assert (=> b!530286 m!510915))

(assert (=> b!530286 m!510915))

(declare-fun m!510917 () Bool)

(assert (=> b!530286 m!510917))

(push 1)

(assert (not b!530287))

(assert (not b!530286))

(assert (not start!48170))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!81009 () Bool)

(assert (=> d!81009 (= (validKeyInArray!0 k!1998) (and (not (= k!1998 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1998 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!530287 d!81009))

(declare-fun d!81011 () Bool)

(assert (=> d!81011 (= (validKeyInArray!0 (select (arr!16127 a!3154) j!147)) (and (not (= (select (arr!16127 a!3154) j!147) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16127 a!3154) j!147) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!530286 d!81011))

(declare-fun d!81013 () Bool)

(assert (=> d!81013 (= (validMask!0 mask!3216) (and (or (= mask!3216 #b00000000000000000000000000000111) (= mask!3216 #b00000000000000000000000000001111) (= mask!3216 #b00000000000000000000000000011111) (= mask!3216 #b00000000000000000000000000111111) (= mask!3216 #b00000000000000000000000001111111) (= mask!3216 #b00000000000000000000000011111111) (= mask!3216 #b00000000000000000000000111111111) (= mask!3216 #b00000000000000000000001111111111) (= mask!3216 #b00000000000000000000011111111111) (= mask!3216 #b00000000000000000000111111111111) (= mask!3216 #b00000000000000000001111111111111) (= mask!3216 #b00000000000000000011111111111111) (= mask!3216 #b00000000000000000111111111111111) (= mask!3216 #b00000000000000001111111111111111) (= mask!3216 #b00000000000000011111111111111111) (= mask!3216 #b00000000000000111111111111111111) (= mask!3216 #b00000000000001111111111111111111) (= mask!3216 #b00000000000011111111111111111111) (= mask!3216 #b00000000000111111111111111111111) (= mask!3216 #b00000000001111111111111111111111) (= mask!3216 #b00000000011111111111111111111111) (= mask!3216 #b00000000111111111111111111111111) (= mask!3216 #b00000001111111111111111111111111) (= mask!3216 #b00000011111111111111111111111111) (= mask!3216 #b00000111111111111111111111111111) (= mask!3216 #b00001111111111111111111111111111) (= mask!3216 #b00011111111111111111111111111111) (= mask!3216 #b00111111111111111111111111111111)) (bvsle mask!3216 #b00111111111111111111111111111111)))))

(assert (=> start!48170 d!81013))


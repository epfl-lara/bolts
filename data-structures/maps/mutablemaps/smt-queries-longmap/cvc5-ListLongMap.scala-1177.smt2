; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!25414 () Bool)

(assert start!25414)

(declare-fun b!264593 () Bool)

(declare-fun res!129143 () Bool)

(declare-fun e!171430 () Bool)

(assert (=> b!264593 (=> (not res!129143) (not e!171430))))

(declare-datatypes ((array!12697 0))(
  ( (array!12698 (arr!6007 (Array (_ BitVec 32) (_ BitVec 64))) (size!6359 (_ BitVec 32))) )
))
(declare-fun a!3436 () array!12697)

(declare-fun k!2698 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!12697 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!264593 (= res!129143 (not (arrayContainsKey!0 a!3436 k!2698 #b00000000000000000000000000000000)))))

(declare-fun b!264592 () Bool)

(declare-fun res!129144 () Bool)

(assert (=> b!264592 (=> (not res!129144) (not e!171430))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!264592 (= res!129144 (validKeyInArray!0 k!2698))))

(declare-fun b!264591 () Bool)

(declare-fun res!129141 () Bool)

(assert (=> b!264591 (=> (not res!129141) (not e!171430))))

(declare-fun mask!4002 () (_ BitVec 32))

(declare-fun i!1355 () (_ BitVec 32))

(assert (=> b!264591 (= res!129141 (and (= (size!6359 a!3436) (bvadd #b00000000000000000000000000000001 mask!4002)) (bvsge i!1355 #b00000000000000000000000000000000) (bvslt i!1355 (size!6359 a!3436))))))

(declare-fun res!129142 () Bool)

(assert (=> start!25414 (=> (not res!129142) (not e!171430))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25414 (= res!129142 (validMask!0 mask!4002))))

(assert (=> start!25414 e!171430))

(assert (=> start!25414 true))

(declare-fun array_inv!3961 (array!12697) Bool)

(assert (=> start!25414 (array_inv!3961 a!3436)))

(declare-fun b!264594 () Bool)

(assert (=> b!264594 (= e!171430 (bvslt mask!4002 #b00000000000000000000000000000000))))

(assert (= (and start!25414 res!129142) b!264591))

(assert (= (and b!264591 res!129141) b!264592))

(assert (= (and b!264592 res!129144) b!264593))

(assert (= (and b!264593 res!129143) b!264594))

(declare-fun m!281639 () Bool)

(assert (=> b!264593 m!281639))

(declare-fun m!281641 () Bool)

(assert (=> b!264592 m!281641))

(declare-fun m!281643 () Bool)

(assert (=> start!25414 m!281643))

(declare-fun m!281645 () Bool)

(assert (=> start!25414 m!281645))

(push 1)

(assert (not start!25414))

(assert (not b!264592))

(assert (not b!264593))

(check-sat)

(pop 1)

(push 1)

(check-sat)


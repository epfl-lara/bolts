; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117750 () Bool)

(assert start!117750)

(declare-fun res!922772 () Bool)

(declare-fun e!782752 () Bool)

(assert (=> start!117750 (=> (not res!922772) (not e!782752))))

(declare-fun from!2839 () (_ BitVec 32))

(declare-fun to!94 () (_ BitVec 32))

(declare-datatypes ((array!94148 0))(
  ( (array!94149 (arr!45459 (Array (_ BitVec 32) (_ BitVec 64))) (size!46010 (_ BitVec 32))) )
))
(declare-fun a!3464 () array!94148)

(assert (=> start!117750 (= res!922772 (and (bvsle from!2839 to!94) (bvsge from!2839 #b00000000000000000000000000000000) (bvsle to!94 (size!46010 a!3464)) (bvslt (size!46010 a!3464) #b01111111111111111111111111111111) (bvslt from!2839 to!94)))))

(assert (=> start!117750 e!782752))

(assert (=> start!117750 true))

(declare-fun array_inv!34404 (array!94148) Bool)

(assert (=> start!117750 (array_inv!34404 a!3464)))

(declare-fun b!1380963 () Bool)

(declare-fun res!922773 () Bool)

(assert (=> b!1380963 (=> (not res!922773) (not e!782752))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1380963 (= res!922773 (validKeyInArray!0 (select (arr!45459 a!3464) from!2839)))))

(declare-fun b!1380964 () Bool)

(assert (=> b!1380964 (= e!782752 (bvslt (bvadd #b00000000000000000000000000000001 from!2839) #b00000000000000000000000000000000))))

(assert (= (and start!117750 res!922772) b!1380963))

(assert (= (and b!1380963 res!922773) b!1380964))

(declare-fun m!1266243 () Bool)

(assert (=> start!117750 m!1266243))

(declare-fun m!1266245 () Bool)

(assert (=> b!1380963 m!1266245))

(assert (=> b!1380963 m!1266245))

(declare-fun m!1266247 () Bool)

(assert (=> b!1380963 m!1266247))

(push 1)

(assert (not b!1380963))

(assert (not start!117750))

(check-sat)

(pop 1)

(push 1)

(check-sat)


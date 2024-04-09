; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36446 () Bool)

(assert start!36446)

(declare-fun b!364167 () Bool)

(declare-fun res!203479 () Bool)

(declare-fun e!222955 () Bool)

(assert (=> b!364167 (=> (not res!203479) (not e!222955))))

(declare-fun k!2974 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!364167 (= res!203479 (validKeyInArray!0 k!2974))))

(declare-fun res!203481 () Bool)

(assert (=> start!36446 (=> (not res!203481) (not e!222955))))

(declare-fun i!1472 () (_ BitVec 32))

(declare-datatypes ((array!20688 0))(
  ( (array!20689 (arr!9820 (Array (_ BitVec 32) (_ BitVec 64))) (size!10172 (_ BitVec 32))) )
))
(declare-fun a!4289 () array!20688)

(assert (=> start!36446 (= res!203481 (and (bvsge i!1472 #b00000000000000000000000000000000) (bvslt i!1472 (size!10172 a!4289))))))

(assert (=> start!36446 e!222955))

(assert (=> start!36446 true))

(declare-fun array_inv!7258 (array!20688) Bool)

(assert (=> start!36446 (array_inv!7258 a!4289)))

(declare-fun b!364168 () Bool)

(declare-fun from!3650 () (_ BitVec 32))

(assert (=> b!364168 (= e!222955 (and (bvsgt from!3650 #b00000000000000000000000000000000) (or (bvslt (bvadd #b00000000000000000000000000000001 i!1472) (bvsub from!3650 #b00000000000000000000000000000001)) (bvslt from!3650 (bvsub from!3650 #b00000000000000000000000000000001)) (bvsgt from!3650 (bvadd #b00000000000000000000000000000001 i!1472)))))))

(declare-fun b!364169 () Bool)

(declare-fun res!203480 () Bool)

(assert (=> b!364169 (=> (not res!203480) (not e!222955))))

(assert (=> b!364169 (= res!203480 (and (bvslt (size!10172 a!4289) #b01111111111111111111111111111111) (bvsge from!3650 #b00000000000000000000000000000000) (bvsle from!3650 (size!10172 a!4289)) (bvsge i!1472 from!3650)))))

(declare-fun b!364170 () Bool)

(declare-fun res!203478 () Bool)

(assert (=> b!364170 (=> (not res!203478) (not e!222955))))

(assert (=> b!364170 (= res!203478 (not (validKeyInArray!0 (select (arr!9820 a!4289) i!1472))))))

(declare-fun b!364171 () Bool)

(declare-fun res!203482 () Bool)

(assert (=> b!364171 (=> (not res!203482) (not e!222955))))

(declare-fun arrayCountValidKeys!0 (array!20688 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!364171 (= res!203482 (= (arrayCountValidKeys!0 (array!20689 (store (arr!9820 a!4289) i!1472 k!2974) (size!10172 a!4289)) from!3650 (bvadd #b00000000000000000000000000000001 i!1472)) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 a!4289 from!3650 (bvadd #b00000000000000000000000000000001 i!1472)))))))

(assert (= (and start!36446 res!203481) b!364170))

(assert (= (and b!364170 res!203478) b!364167))

(assert (= (and b!364167 res!203479) b!364169))

(assert (= (and b!364169 res!203480) b!364171))

(assert (= (and b!364171 res!203482) b!364168))

(declare-fun m!361717 () Bool)

(assert (=> b!364167 m!361717))

(declare-fun m!361719 () Bool)

(assert (=> start!36446 m!361719))

(declare-fun m!361721 () Bool)

(assert (=> b!364170 m!361721))

(assert (=> b!364170 m!361721))

(declare-fun m!361723 () Bool)

(assert (=> b!364170 m!361723))

(declare-fun m!361725 () Bool)

(assert (=> b!364171 m!361725))

(declare-fun m!361727 () Bool)

(assert (=> b!364171 m!361727))

(declare-fun m!361729 () Bool)

(assert (=> b!364171 m!361729))

(push 1)

(assert (not b!364171))

(assert (not b!364170))

(assert (not start!36446))

(assert (not b!364167))

(check-sat)

(pop 1)

(push 1)

(check-sat)


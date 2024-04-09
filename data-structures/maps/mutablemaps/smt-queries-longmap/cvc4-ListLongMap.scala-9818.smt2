; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!116598 () Bool)

(assert start!116598)

(declare-fun res!917841 () Bool)

(declare-fun e!778719 () Bool)

(assert (=> start!116598 (=> (not res!917841) (not e!778719))))

(declare-fun i!1457 () (_ BitVec 32))

(declare-datatypes ((array!93221 0))(
  ( (array!93222 (arr!45012 (Array (_ BitVec 32) (_ BitVec 64))) (size!45563 (_ BitVec 32))) )
))
(declare-fun a!4142 () array!93221)

(assert (=> start!116598 (= res!917841 (and (bvsge i!1457 #b00000000000000000000000000000000) (bvslt i!1457 (size!45563 a!4142))))))

(assert (=> start!116598 e!778719))

(assert (=> start!116598 true))

(declare-fun array_inv!33957 (array!93221) Bool)

(assert (=> start!116598 (array_inv!33957 a!4142)))

(declare-fun b!1374534 () Bool)

(declare-fun res!917840 () Bool)

(assert (=> b!1374534 (=> (not res!917840) (not e!778719))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1374534 (= res!917840 (validKeyInArray!0 (select (arr!45012 a!4142) i!1457)))))

(declare-fun b!1374535 () Bool)

(declare-fun res!917839 () Bool)

(assert (=> b!1374535 (=> (not res!917839) (not e!778719))))

(declare-fun k!2959 () (_ BitVec 64))

(assert (=> b!1374535 (= res!917839 (not (validKeyInArray!0 k!2959)))))

(declare-fun b!1374536 () Bool)

(assert (=> b!1374536 (= e!778719 (and (bvslt (size!45563 a!4142) #b01111111111111111111111111111111) (bvsgt i!1457 (size!45563 a!4142))))))

(assert (= (and start!116598 res!917841) b!1374534))

(assert (= (and b!1374534 res!917840) b!1374535))

(assert (= (and b!1374535 res!917839) b!1374536))

(declare-fun m!1258133 () Bool)

(assert (=> start!116598 m!1258133))

(declare-fun m!1258135 () Bool)

(assert (=> b!1374534 m!1258135))

(assert (=> b!1374534 m!1258135))

(declare-fun m!1258137 () Bool)

(assert (=> b!1374534 m!1258137))

(declare-fun m!1258139 () Bool)

(assert (=> b!1374535 m!1258139))

(push 1)

(assert (not b!1374534))

(assert (not start!116598))

(assert (not b!1374535))

(check-sat)

(pop 1)

(push 1)

(check-sat)


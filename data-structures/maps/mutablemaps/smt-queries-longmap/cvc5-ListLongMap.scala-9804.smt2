; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!116510 () Bool)

(assert start!116510)

(declare-fun b!1373927 () Bool)

(declare-fun e!778366 () Bool)

(assert (=> b!1373927 (= e!778366 false)))

(declare-fun i!1457 () (_ BitVec 32))

(declare-datatypes ((array!93133 0))(
  ( (array!93134 (arr!44968 (Array (_ BitVec 32) (_ BitVec 64))) (size!45519 (_ BitVec 32))) )
))
(declare-fun a!4142 () array!93133)

(declare-fun lt!603134 () (_ BitVec 32))

(declare-fun k!2959 () (_ BitVec 64))

(declare-fun arrayCountValidKeys!0 (array!93133 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1373927 (= lt!603134 (arrayCountValidKeys!0 (array!93134 (store (arr!44968 a!4142) i!1457 k!2959) (size!45519 a!4142)) i!1457 (bvadd #b00000000000000000000000000000001 i!1457)))))

(declare-fun lt!603133 () (_ BitVec 32))

(assert (=> b!1373927 (= lt!603133 (arrayCountValidKeys!0 a!4142 i!1457 (bvadd #b00000000000000000000000000000001 i!1457)))))

(declare-fun b!1373925 () Bool)

(declare-fun res!917231 () Bool)

(assert (=> b!1373925 (=> (not res!917231) (not e!778366))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1373925 (= res!917231 (not (validKeyInArray!0 k!2959)))))

(declare-fun b!1373924 () Bool)

(declare-fun res!917232 () Bool)

(assert (=> b!1373924 (=> (not res!917232) (not e!778366))))

(assert (=> b!1373924 (= res!917232 (validKeyInArray!0 (select (arr!44968 a!4142) i!1457)))))

(declare-fun b!1373926 () Bool)

(declare-fun res!917229 () Bool)

(assert (=> b!1373926 (=> (not res!917229) (not e!778366))))

(assert (=> b!1373926 (= res!917229 (and (bvslt (size!45519 a!4142) #b01111111111111111111111111111111) (bvsle i!1457 (size!45519 a!4142))))))

(declare-fun res!917230 () Bool)

(assert (=> start!116510 (=> (not res!917230) (not e!778366))))

(assert (=> start!116510 (= res!917230 (and (bvsge i!1457 #b00000000000000000000000000000000) (bvslt i!1457 (size!45519 a!4142))))))

(assert (=> start!116510 e!778366))

(assert (=> start!116510 true))

(declare-fun array_inv!33913 (array!93133) Bool)

(assert (=> start!116510 (array_inv!33913 a!4142)))

(assert (= (and start!116510 res!917230) b!1373924))

(assert (= (and b!1373924 res!917232) b!1373925))

(assert (= (and b!1373925 res!917231) b!1373926))

(assert (= (and b!1373926 res!917229) b!1373927))

(declare-fun m!1257169 () Bool)

(assert (=> b!1373927 m!1257169))

(declare-fun m!1257171 () Bool)

(assert (=> b!1373927 m!1257171))

(declare-fun m!1257173 () Bool)

(assert (=> b!1373927 m!1257173))

(declare-fun m!1257175 () Bool)

(assert (=> b!1373925 m!1257175))

(declare-fun m!1257177 () Bool)

(assert (=> b!1373924 m!1257177))

(assert (=> b!1373924 m!1257177))

(declare-fun m!1257179 () Bool)

(assert (=> b!1373924 m!1257179))

(declare-fun m!1257181 () Bool)

(assert (=> start!116510 m!1257181))

(push 1)

(assert (not b!1373927))

(assert (not b!1373924))

(assert (not start!116510))

(assert (not b!1373925))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


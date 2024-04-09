; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!116504 () Bool)

(assert start!116504)

(declare-fun res!917193 () Bool)

(declare-fun e!778347 () Bool)

(assert (=> start!116504 (=> (not res!917193) (not e!778347))))

(declare-fun i!1457 () (_ BitVec 32))

(declare-datatypes ((array!93127 0))(
  ( (array!93128 (arr!44965 (Array (_ BitVec 32) (_ BitVec 64))) (size!45516 (_ BitVec 32))) )
))
(declare-fun a!4142 () array!93127)

(assert (=> start!116504 (= res!917193 (and (bvsge i!1457 #b00000000000000000000000000000000) (bvslt i!1457 (size!45516 a!4142))))))

(assert (=> start!116504 e!778347))

(assert (=> start!116504 true))

(declare-fun array_inv!33910 (array!93127) Bool)

(assert (=> start!116504 (array_inv!33910 a!4142)))

(declare-fun b!1373891 () Bool)

(assert (=> b!1373891 (= e!778347 false)))

(declare-fun lt!603116 () (_ BitVec 32))

(declare-fun k!2959 () (_ BitVec 64))

(declare-fun arrayCountValidKeys!0 (array!93127 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1373891 (= lt!603116 (arrayCountValidKeys!0 (array!93128 (store (arr!44965 a!4142) i!1457 k!2959) (size!45516 a!4142)) i!1457 (bvadd #b00000000000000000000000000000001 i!1457)))))

(declare-fun lt!603115 () (_ BitVec 32))

(assert (=> b!1373891 (= lt!603115 (arrayCountValidKeys!0 a!4142 i!1457 (bvadd #b00000000000000000000000000000001 i!1457)))))

(declare-fun b!1373889 () Bool)

(declare-fun res!917194 () Bool)

(assert (=> b!1373889 (=> (not res!917194) (not e!778347))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1373889 (= res!917194 (not (validKeyInArray!0 k!2959)))))

(declare-fun b!1373890 () Bool)

(declare-fun res!917195 () Bool)

(assert (=> b!1373890 (=> (not res!917195) (not e!778347))))

(assert (=> b!1373890 (= res!917195 (and (bvslt (size!45516 a!4142) #b01111111111111111111111111111111) (bvsle i!1457 (size!45516 a!4142))))))

(declare-fun b!1373888 () Bool)

(declare-fun res!917196 () Bool)

(assert (=> b!1373888 (=> (not res!917196) (not e!778347))))

(assert (=> b!1373888 (= res!917196 (validKeyInArray!0 (select (arr!44965 a!4142) i!1457)))))

(assert (= (and start!116504 res!917193) b!1373888))

(assert (= (and b!1373888 res!917196) b!1373889))

(assert (= (and b!1373889 res!917194) b!1373890))

(assert (= (and b!1373890 res!917195) b!1373891))

(declare-fun m!1257127 () Bool)

(assert (=> start!116504 m!1257127))

(declare-fun m!1257129 () Bool)

(assert (=> b!1373891 m!1257129))

(declare-fun m!1257131 () Bool)

(assert (=> b!1373891 m!1257131))

(declare-fun m!1257133 () Bool)

(assert (=> b!1373891 m!1257133))

(declare-fun m!1257135 () Bool)

(assert (=> b!1373889 m!1257135))

(declare-fun m!1257137 () Bool)

(assert (=> b!1373888 m!1257137))

(assert (=> b!1373888 m!1257137))

(declare-fun m!1257139 () Bool)

(assert (=> b!1373888 m!1257139))

(push 1)

(assert (not b!1373888))

(assert (not b!1373889))

(assert (not b!1373891))

(assert (not start!116504))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


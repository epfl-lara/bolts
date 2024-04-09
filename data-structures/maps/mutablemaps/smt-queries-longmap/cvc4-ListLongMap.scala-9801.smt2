; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!116496 () Bool)

(assert start!116496)

(declare-fun b!1373840 () Bool)

(declare-fun res!917147 () Bool)

(declare-fun e!778323 () Bool)

(assert (=> b!1373840 (=> (not res!917147) (not e!778323))))

(declare-datatypes ((array!93119 0))(
  ( (array!93120 (arr!44961 (Array (_ BitVec 32) (_ BitVec 64))) (size!45512 (_ BitVec 32))) )
))
(declare-fun a!4142 () array!93119)

(declare-fun i!1457 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1373840 (= res!917147 (validKeyInArray!0 (select (arr!44961 a!4142) i!1457)))))

(declare-fun b!1373843 () Bool)

(assert (=> b!1373843 (= e!778323 false)))

(declare-fun lt!603091 () (_ BitVec 32))

(declare-fun k!2959 () (_ BitVec 64))

(declare-fun arrayCountValidKeys!0 (array!93119 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1373843 (= lt!603091 (arrayCountValidKeys!0 (array!93120 (store (arr!44961 a!4142) i!1457 k!2959) (size!45512 a!4142)) i!1457 (bvadd #b00000000000000000000000000000001 i!1457)))))

(declare-fun lt!603092 () (_ BitVec 32))

(assert (=> b!1373843 (= lt!603092 (arrayCountValidKeys!0 a!4142 i!1457 (bvadd #b00000000000000000000000000000001 i!1457)))))

(declare-fun b!1373842 () Bool)

(declare-fun res!917145 () Bool)

(assert (=> b!1373842 (=> (not res!917145) (not e!778323))))

(assert (=> b!1373842 (= res!917145 (and (bvslt (size!45512 a!4142) #b01111111111111111111111111111111) (bvsle i!1457 (size!45512 a!4142))))))

(declare-fun b!1373841 () Bool)

(declare-fun res!917148 () Bool)

(assert (=> b!1373841 (=> (not res!917148) (not e!778323))))

(assert (=> b!1373841 (= res!917148 (not (validKeyInArray!0 k!2959)))))

(declare-fun res!917146 () Bool)

(assert (=> start!116496 (=> (not res!917146) (not e!778323))))

(assert (=> start!116496 (= res!917146 (and (bvsge i!1457 #b00000000000000000000000000000000) (bvslt i!1457 (size!45512 a!4142))))))

(assert (=> start!116496 e!778323))

(assert (=> start!116496 true))

(declare-fun array_inv!33906 (array!93119) Bool)

(assert (=> start!116496 (array_inv!33906 a!4142)))

(assert (= (and start!116496 res!917146) b!1373840))

(assert (= (and b!1373840 res!917147) b!1373841))

(assert (= (and b!1373841 res!917148) b!1373842))

(assert (= (and b!1373842 res!917145) b!1373843))

(declare-fun m!1257071 () Bool)

(assert (=> b!1373840 m!1257071))

(assert (=> b!1373840 m!1257071))

(declare-fun m!1257073 () Bool)

(assert (=> b!1373840 m!1257073))

(declare-fun m!1257075 () Bool)

(assert (=> b!1373843 m!1257075))

(declare-fun m!1257077 () Bool)

(assert (=> b!1373843 m!1257077))

(declare-fun m!1257079 () Bool)

(assert (=> b!1373843 m!1257079))

(declare-fun m!1257081 () Bool)

(assert (=> b!1373841 m!1257081))

(declare-fun m!1257083 () Bool)

(assert (=> start!116496 m!1257083))

(push 1)

(assert (not b!1373843))

(assert (not b!1373841))

(assert (not b!1373840))

(assert (not start!116496))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


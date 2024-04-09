; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!116516 () Bool)

(assert start!116516)

(declare-fun res!917266 () Bool)

(declare-fun e!778384 () Bool)

(assert (=> start!116516 (=> (not res!917266) (not e!778384))))

(declare-fun i!1457 () (_ BitVec 32))

(declare-datatypes ((array!93139 0))(
  ( (array!93140 (arr!44971 (Array (_ BitVec 32) (_ BitVec 64))) (size!45522 (_ BitVec 32))) )
))
(declare-fun a!4142 () array!93139)

(assert (=> start!116516 (= res!917266 (and (bvsge i!1457 #b00000000000000000000000000000000) (bvslt i!1457 (size!45522 a!4142))))))

(assert (=> start!116516 e!778384))

(assert (=> start!116516 true))

(declare-fun array_inv!33916 (array!93139) Bool)

(assert (=> start!116516 (array_inv!33916 a!4142)))

(declare-fun b!1373961 () Bool)

(declare-fun res!917267 () Bool)

(assert (=> b!1373961 (=> (not res!917267) (not e!778384))))

(declare-fun k!2959 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1373961 (= res!917267 (not (validKeyInArray!0 k!2959)))))

(declare-fun b!1373962 () Bool)

(declare-fun res!917268 () Bool)

(assert (=> b!1373962 (=> (not res!917268) (not e!778384))))

(assert (=> b!1373962 (= res!917268 (and (bvslt (size!45522 a!4142) #b01111111111111111111111111111111) (bvsle i!1457 (size!45522 a!4142))))))

(declare-fun b!1373963 () Bool)

(assert (=> b!1373963 (= e!778384 false)))

(declare-fun lt!603151 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!93139 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1373963 (= lt!603151 (arrayCountValidKeys!0 (array!93140 (store (arr!44971 a!4142) i!1457 k!2959) (size!45522 a!4142)) i!1457 (bvadd #b00000000000000000000000000000001 i!1457)))))

(declare-fun lt!603152 () (_ BitVec 32))

(assert (=> b!1373963 (= lt!603152 (arrayCountValidKeys!0 a!4142 i!1457 (bvadd #b00000000000000000000000000000001 i!1457)))))

(declare-fun b!1373960 () Bool)

(declare-fun res!917265 () Bool)

(assert (=> b!1373960 (=> (not res!917265) (not e!778384))))

(assert (=> b!1373960 (= res!917265 (validKeyInArray!0 (select (arr!44971 a!4142) i!1457)))))

(assert (= (and start!116516 res!917266) b!1373960))

(assert (= (and b!1373960 res!917265) b!1373961))

(assert (= (and b!1373961 res!917267) b!1373962))

(assert (= (and b!1373962 res!917268) b!1373963))

(declare-fun m!1257211 () Bool)

(assert (=> start!116516 m!1257211))

(declare-fun m!1257213 () Bool)

(assert (=> b!1373961 m!1257213))

(declare-fun m!1257215 () Bool)

(assert (=> b!1373963 m!1257215))

(declare-fun m!1257217 () Bool)

(assert (=> b!1373963 m!1257217))

(declare-fun m!1257219 () Bool)

(assert (=> b!1373963 m!1257219))

(declare-fun m!1257221 () Bool)

(assert (=> b!1373960 m!1257221))

(assert (=> b!1373960 m!1257221))

(declare-fun m!1257223 () Bool)

(assert (=> b!1373960 m!1257223))

(push 1)

(assert (not b!1373963))

(assert (not start!116516))

(assert (not b!1373961))

(assert (not b!1373960))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


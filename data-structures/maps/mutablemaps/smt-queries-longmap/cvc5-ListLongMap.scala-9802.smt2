; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!116498 () Bool)

(assert start!116498)

(declare-fun res!917157 () Bool)

(declare-fun e!778330 () Bool)

(assert (=> start!116498 (=> (not res!917157) (not e!778330))))

(declare-fun i!1457 () (_ BitVec 32))

(declare-datatypes ((array!93121 0))(
  ( (array!93122 (arr!44962 (Array (_ BitVec 32) (_ BitVec 64))) (size!45513 (_ BitVec 32))) )
))
(declare-fun a!4142 () array!93121)

(assert (=> start!116498 (= res!917157 (and (bvsge i!1457 #b00000000000000000000000000000000) (bvslt i!1457 (size!45513 a!4142))))))

(assert (=> start!116498 e!778330))

(assert (=> start!116498 true))

(declare-fun array_inv!33907 (array!93121) Bool)

(assert (=> start!116498 (array_inv!33907 a!4142)))

(declare-fun b!1373853 () Bool)

(declare-fun res!917159 () Bool)

(assert (=> b!1373853 (=> (not res!917159) (not e!778330))))

(declare-fun k!2959 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1373853 (= res!917159 (not (validKeyInArray!0 k!2959)))))

(declare-fun b!1373852 () Bool)

(declare-fun res!917160 () Bool)

(assert (=> b!1373852 (=> (not res!917160) (not e!778330))))

(assert (=> b!1373852 (= res!917160 (validKeyInArray!0 (select (arr!44962 a!4142) i!1457)))))

(declare-fun b!1373854 () Bool)

(declare-fun res!917158 () Bool)

(assert (=> b!1373854 (=> (not res!917158) (not e!778330))))

(assert (=> b!1373854 (= res!917158 (and (bvslt (size!45513 a!4142) #b01111111111111111111111111111111) (bvsle i!1457 (size!45513 a!4142))))))

(declare-fun b!1373855 () Bool)

(assert (=> b!1373855 (= e!778330 false)))

(declare-fun lt!603097 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!93121 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1373855 (= lt!603097 (arrayCountValidKeys!0 (array!93122 (store (arr!44962 a!4142) i!1457 k!2959) (size!45513 a!4142)) i!1457 (bvadd #b00000000000000000000000000000001 i!1457)))))

(declare-fun lt!603098 () (_ BitVec 32))

(assert (=> b!1373855 (= lt!603098 (arrayCountValidKeys!0 a!4142 i!1457 (bvadd #b00000000000000000000000000000001 i!1457)))))

(assert (= (and start!116498 res!917157) b!1373852))

(assert (= (and b!1373852 res!917160) b!1373853))

(assert (= (and b!1373853 res!917159) b!1373854))

(assert (= (and b!1373854 res!917158) b!1373855))

(declare-fun m!1257085 () Bool)

(assert (=> start!116498 m!1257085))

(declare-fun m!1257087 () Bool)

(assert (=> b!1373853 m!1257087))

(declare-fun m!1257089 () Bool)

(assert (=> b!1373852 m!1257089))

(assert (=> b!1373852 m!1257089))

(declare-fun m!1257091 () Bool)

(assert (=> b!1373852 m!1257091))

(declare-fun m!1257093 () Bool)

(assert (=> b!1373855 m!1257093))

(declare-fun m!1257095 () Bool)

(assert (=> b!1373855 m!1257095))

(declare-fun m!1257097 () Bool)

(assert (=> b!1373855 m!1257097))

(push 1)

(assert (not b!1373853))

(assert (not b!1373855))

(assert (not start!116498))

(assert (not b!1373852))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


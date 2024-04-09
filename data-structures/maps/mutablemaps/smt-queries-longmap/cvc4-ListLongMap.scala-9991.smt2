; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117998 () Bool)

(assert start!117998)

(declare-fun res!923472 () Bool)

(declare-fun e!783262 () Bool)

(assert (=> start!117998 (=> (not res!923472) (not e!783262))))

(declare-fun mask!3034 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!117998 (= res!923472 (validMask!0 mask!3034))))

(assert (=> start!117998 e!783262))

(assert (=> start!117998 true))

(declare-datatypes ((array!94305 0))(
  ( (array!94306 (arr!45531 (Array (_ BitVec 32) (_ BitVec 64))) (size!46082 (_ BitVec 32))) )
))
(declare-fun a!2971 () array!94305)

(declare-fun array_inv!34476 (array!94305) Bool)

(assert (=> start!117998 (array_inv!34476 a!2971)))

(declare-fun b!1381732 () Bool)

(declare-fun res!923470 () Bool)

(assert (=> b!1381732 (=> (not res!923470) (not e!783262))))

(declare-fun i!1094 () (_ BitVec 32))

(assert (=> b!1381732 (= res!923470 (and (= (size!46082 a!2971) (bvadd #b00000000000000000000000000000001 mask!3034)) (bvsge i!1094 #b00000000000000000000000000000000) (bvslt i!1094 (size!46082 a!2971))))))

(declare-fun b!1381733 () Bool)

(declare-fun res!923469 () Bool)

(assert (=> b!1381733 (=> (not res!923469) (not e!783262))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1381733 (= res!923469 (validKeyInArray!0 (select (arr!45531 a!2971) i!1094)))))

(declare-fun b!1381734 () Bool)

(declare-fun res!923471 () Bool)

(assert (=> b!1381734 (=> (not res!923471) (not e!783262))))

(declare-datatypes ((List!32245 0))(
  ( (Nil!32242) (Cons!32241 (h!33450 (_ BitVec 64)) (t!46946 List!32245)) )
))
(declare-fun arrayNoDuplicates!0 (array!94305 (_ BitVec 32) List!32245) Bool)

(assert (=> b!1381734 (= res!923471 (arrayNoDuplicates!0 a!2971 #b00000000000000000000000000000000 Nil!32242))))

(declare-fun b!1381735 () Bool)

(assert (=> b!1381735 (= e!783262 false)))

(declare-fun lt!608233 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94305 (_ BitVec 32)) Bool)

(assert (=> b!1381735 (= lt!608233 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2971 mask!3034))))

(assert (= (and start!117998 res!923472) b!1381732))

(assert (= (and b!1381732 res!923470) b!1381733))

(assert (= (and b!1381733 res!923469) b!1381734))

(assert (= (and b!1381734 res!923471) b!1381735))

(declare-fun m!1266975 () Bool)

(assert (=> start!117998 m!1266975))

(declare-fun m!1266977 () Bool)

(assert (=> start!117998 m!1266977))

(declare-fun m!1266979 () Bool)

(assert (=> b!1381733 m!1266979))

(assert (=> b!1381733 m!1266979))

(declare-fun m!1266981 () Bool)

(assert (=> b!1381733 m!1266981))

(declare-fun m!1266983 () Bool)

(assert (=> b!1381734 m!1266983))

(declare-fun m!1266985 () Bool)

(assert (=> b!1381735 m!1266985))

(push 1)

(assert (not b!1381733))

(assert (not b!1381735))

(assert (not start!117998))

(assert (not b!1381734))

(check-sat)

(pop 1)

(push 1)

(check-sat)


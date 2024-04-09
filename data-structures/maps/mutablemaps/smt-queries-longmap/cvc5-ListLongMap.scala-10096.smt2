; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!119074 () Bool)

(assert start!119074)

(declare-fun b!1389068 () Bool)

(declare-fun res!929375 () Bool)

(declare-fun e!786892 () Bool)

(assert (=> b!1389068 (=> (not res!929375) (not e!786892))))

(declare-datatypes ((array!94962 0))(
  ( (array!94963 (arr!45844 (Array (_ BitVec 32) (_ BitVec 64))) (size!46395 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!94962)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1389068 (= res!929375 (validKeyInArray!0 (select (arr!45844 a!2901) j!112)))))

(declare-fun b!1389069 () Bool)

(declare-fun res!929376 () Bool)

(assert (=> b!1389069 (=> (not res!929376) (not e!786892))))

(declare-datatypes ((List!32543 0))(
  ( (Nil!32540) (Cons!32539 (h!33754 (_ BitVec 64)) (t!47244 List!32543)) )
))
(declare-fun arrayNoDuplicates!0 (array!94962 (_ BitVec 32) List!32543) Bool)

(assert (=> b!1389069 (= res!929376 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32540))))

(declare-fun b!1389070 () Bool)

(declare-fun res!929374 () Bool)

(assert (=> b!1389070 (=> (not res!929374) (not e!786892))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1389070 (= res!929374 (and (= (size!46395 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46395 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46395 a!2901)) (not (= i!1037 j!112))))))

(declare-fun res!929373 () Bool)

(assert (=> start!119074 (=> (not res!929373) (not e!786892))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119074 (= res!929373 (validMask!0 mask!2840))))

(assert (=> start!119074 e!786892))

(assert (=> start!119074 true))

(declare-fun array_inv!34789 (array!94962) Bool)

(assert (=> start!119074 (array_inv!34789 a!2901)))

(declare-fun b!1389071 () Bool)

(assert (=> b!1389071 (= e!786892 (bvslt mask!2840 #b00000000000000000000000000000000))))

(declare-fun lt!610426 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1389071 (= lt!610426 (toIndex!0 (select (arr!45844 a!2901) j!112) mask!2840))))

(declare-fun b!1389072 () Bool)

(declare-fun res!929372 () Bool)

(assert (=> b!1389072 (=> (not res!929372) (not e!786892))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94962 (_ BitVec 32)) Bool)

(assert (=> b!1389072 (= res!929372 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1389073 () Bool)

(declare-fun res!929371 () Bool)

(assert (=> b!1389073 (=> (not res!929371) (not e!786892))))

(assert (=> b!1389073 (= res!929371 (validKeyInArray!0 (select (arr!45844 a!2901) i!1037)))))

(assert (= (and start!119074 res!929373) b!1389070))

(assert (= (and b!1389070 res!929374) b!1389073))

(assert (= (and b!1389073 res!929371) b!1389068))

(assert (= (and b!1389068 res!929375) b!1389072))

(assert (= (and b!1389072 res!929372) b!1389069))

(assert (= (and b!1389069 res!929376) b!1389071))

(declare-fun m!1274801 () Bool)

(assert (=> b!1389069 m!1274801))

(declare-fun m!1274803 () Bool)

(assert (=> b!1389068 m!1274803))

(assert (=> b!1389068 m!1274803))

(declare-fun m!1274805 () Bool)

(assert (=> b!1389068 m!1274805))

(declare-fun m!1274807 () Bool)

(assert (=> b!1389073 m!1274807))

(assert (=> b!1389073 m!1274807))

(declare-fun m!1274809 () Bool)

(assert (=> b!1389073 m!1274809))

(assert (=> b!1389071 m!1274803))

(assert (=> b!1389071 m!1274803))

(declare-fun m!1274811 () Bool)

(assert (=> b!1389071 m!1274811))

(declare-fun m!1274813 () Bool)

(assert (=> b!1389072 m!1274813))

(declare-fun m!1274815 () Bool)

(assert (=> start!119074 m!1274815))

(declare-fun m!1274817 () Bool)

(assert (=> start!119074 m!1274817))

(push 1)

(assert (not start!119074))

(assert (not b!1389071))

(assert (not b!1389072))

(assert (not b!1389069))

(assert (not b!1389073))

(assert (not b!1389068))

(check-sat)


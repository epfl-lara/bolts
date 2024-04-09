; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!119078 () Bool)

(assert start!119078)

(declare-fun b!1389104 () Bool)

(declare-fun res!929411 () Bool)

(declare-fun e!786905 () Bool)

(assert (=> b!1389104 (=> (not res!929411) (not e!786905))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!94966 0))(
  ( (array!94967 (arr!45846 (Array (_ BitVec 32) (_ BitVec 64))) (size!46397 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!94966)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1389104 (= res!929411 (and (= (size!46397 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46397 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46397 a!2901)) (not (= i!1037 j!112))))))

(declare-fun res!929407 () Bool)

(assert (=> start!119078 (=> (not res!929407) (not e!786905))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119078 (= res!929407 (validMask!0 mask!2840))))

(assert (=> start!119078 e!786905))

(assert (=> start!119078 true))

(declare-fun array_inv!34791 (array!94966) Bool)

(assert (=> start!119078 (array_inv!34791 a!2901)))

(declare-fun b!1389105 () Bool)

(declare-fun res!929412 () Bool)

(assert (=> b!1389105 (=> (not res!929412) (not e!786905))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1389105 (= res!929412 (validKeyInArray!0 (select (arr!45846 a!2901) j!112)))))

(declare-fun b!1389106 () Bool)

(declare-fun res!929409 () Bool)

(assert (=> b!1389106 (=> (not res!929409) (not e!786905))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94966 (_ BitVec 32)) Bool)

(assert (=> b!1389106 (= res!929409 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1389107 () Bool)

(declare-fun res!929408 () Bool)

(assert (=> b!1389107 (=> (not res!929408) (not e!786905))))

(declare-datatypes ((List!32545 0))(
  ( (Nil!32542) (Cons!32541 (h!33756 (_ BitVec 64)) (t!47246 List!32545)) )
))
(declare-fun arrayNoDuplicates!0 (array!94966 (_ BitVec 32) List!32545) Bool)

(assert (=> b!1389107 (= res!929408 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32542))))

(declare-fun b!1389108 () Bool)

(assert (=> b!1389108 (= e!786905 (bvslt mask!2840 #b00000000000000000000000000000000))))

(declare-fun lt!610432 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1389108 (= lt!610432 (toIndex!0 (select (arr!45846 a!2901) j!112) mask!2840))))

(declare-fun b!1389109 () Bool)

(declare-fun res!929410 () Bool)

(assert (=> b!1389109 (=> (not res!929410) (not e!786905))))

(assert (=> b!1389109 (= res!929410 (validKeyInArray!0 (select (arr!45846 a!2901) i!1037)))))

(assert (= (and start!119078 res!929407) b!1389104))

(assert (= (and b!1389104 res!929411) b!1389109))

(assert (= (and b!1389109 res!929410) b!1389105))

(assert (= (and b!1389105 res!929412) b!1389106))

(assert (= (and b!1389106 res!929409) b!1389107))

(assert (= (and b!1389107 res!929408) b!1389108))

(declare-fun m!1274837 () Bool)

(assert (=> start!119078 m!1274837))

(declare-fun m!1274839 () Bool)

(assert (=> start!119078 m!1274839))

(declare-fun m!1274841 () Bool)

(assert (=> b!1389108 m!1274841))

(assert (=> b!1389108 m!1274841))

(declare-fun m!1274843 () Bool)

(assert (=> b!1389108 m!1274843))

(declare-fun m!1274845 () Bool)

(assert (=> b!1389109 m!1274845))

(assert (=> b!1389109 m!1274845))

(declare-fun m!1274847 () Bool)

(assert (=> b!1389109 m!1274847))

(declare-fun m!1274849 () Bool)

(assert (=> b!1389106 m!1274849))

(declare-fun m!1274851 () Bool)

(assert (=> b!1389107 m!1274851))

(assert (=> b!1389105 m!1274841))

(assert (=> b!1389105 m!1274841))

(declare-fun m!1274853 () Bool)

(assert (=> b!1389105 m!1274853))

(push 1)

(assert (not b!1389109))

(assert (not b!1389106))

(assert (not b!1389108))

(assert (not b!1389105))

(assert (not b!1389107))

(assert (not start!119078))

(check-sat)

(pop 1)


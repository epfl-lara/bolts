; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!119072 () Bool)

(assert start!119072)

(declare-fun b!1389050 () Bool)

(declare-fun res!929358 () Bool)

(declare-fun e!786887 () Bool)

(assert (=> b!1389050 (=> (not res!929358) (not e!786887))))

(declare-datatypes ((array!94960 0))(
  ( (array!94961 (arr!45843 (Array (_ BitVec 32) (_ BitVec 64))) (size!46394 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!94960)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(declare-fun mask!2840 () (_ BitVec 32))

(assert (=> b!1389050 (= res!929358 (and (= (size!46394 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46394 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46394 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1389051 () Bool)

(declare-fun res!929356 () Bool)

(assert (=> b!1389051 (=> (not res!929356) (not e!786887))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1389051 (= res!929356 (validKeyInArray!0 (select (arr!45843 a!2901) i!1037)))))

(declare-fun b!1389052 () Bool)

(declare-fun res!929353 () Bool)

(assert (=> b!1389052 (=> (not res!929353) (not e!786887))))

(declare-datatypes ((List!32542 0))(
  ( (Nil!32539) (Cons!32538 (h!33753 (_ BitVec 64)) (t!47243 List!32542)) )
))
(declare-fun arrayNoDuplicates!0 (array!94960 (_ BitVec 32) List!32542) Bool)

(assert (=> b!1389052 (= res!929353 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32539))))

(declare-fun res!929357 () Bool)

(assert (=> start!119072 (=> (not res!929357) (not e!786887))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119072 (= res!929357 (validMask!0 mask!2840))))

(assert (=> start!119072 e!786887))

(assert (=> start!119072 true))

(declare-fun array_inv!34788 (array!94960) Bool)

(assert (=> start!119072 (array_inv!34788 a!2901)))

(declare-fun b!1389053 () Bool)

(declare-fun res!929355 () Bool)

(assert (=> b!1389053 (=> (not res!929355) (not e!786887))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94960 (_ BitVec 32)) Bool)

(assert (=> b!1389053 (= res!929355 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1389054 () Bool)

(declare-fun res!929354 () Bool)

(assert (=> b!1389054 (=> (not res!929354) (not e!786887))))

(assert (=> b!1389054 (= res!929354 (validKeyInArray!0 (select (arr!45843 a!2901) j!112)))))

(declare-fun b!1389055 () Bool)

(assert (=> b!1389055 (= e!786887 false)))

(declare-fun lt!610423 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1389055 (= lt!610423 (toIndex!0 (select (arr!45843 a!2901) j!112) mask!2840))))

(assert (= (and start!119072 res!929357) b!1389050))

(assert (= (and b!1389050 res!929358) b!1389051))

(assert (= (and b!1389051 res!929356) b!1389054))

(assert (= (and b!1389054 res!929354) b!1389053))

(assert (= (and b!1389053 res!929355) b!1389052))

(assert (= (and b!1389052 res!929353) b!1389055))

(declare-fun m!1274783 () Bool)

(assert (=> b!1389052 m!1274783))

(declare-fun m!1274785 () Bool)

(assert (=> start!119072 m!1274785))

(declare-fun m!1274787 () Bool)

(assert (=> start!119072 m!1274787))

(declare-fun m!1274789 () Bool)

(assert (=> b!1389054 m!1274789))

(assert (=> b!1389054 m!1274789))

(declare-fun m!1274791 () Bool)

(assert (=> b!1389054 m!1274791))

(declare-fun m!1274793 () Bool)

(assert (=> b!1389053 m!1274793))

(declare-fun m!1274795 () Bool)

(assert (=> b!1389051 m!1274795))

(assert (=> b!1389051 m!1274795))

(declare-fun m!1274797 () Bool)

(assert (=> b!1389051 m!1274797))

(assert (=> b!1389055 m!1274789))

(assert (=> b!1389055 m!1274789))

(declare-fun m!1274799 () Bool)

(assert (=> b!1389055 m!1274799))

(push 1)

(assert (not b!1389053))

(assert (not b!1389052))

(assert (not b!1389055))

(assert (not b!1389054))

(assert (not start!119072))

(assert (not b!1389051))

(check-sat)

(pop 1)

(push 1)

(check-sat)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!119080 () Bool)

(assert start!119080)

(declare-fun b!1389122 () Bool)

(declare-fun res!929429 () Bool)

(declare-fun e!786911 () Bool)

(assert (=> b!1389122 (=> (not res!929429) (not e!786911))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!94968 0))(
  ( (array!94969 (arr!45847 (Array (_ BitVec 32) (_ BitVec 64))) (size!46398 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!94968)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1389122 (= res!929429 (and (= (size!46398 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46398 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46398 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1389123 () Bool)

(assert (=> b!1389123 (= e!786911 false)))

(declare-fun lt!610435 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1389123 (= lt!610435 (toIndex!0 (select (arr!45847 a!2901) j!112) mask!2840))))

(declare-fun res!929425 () Bool)

(assert (=> start!119080 (=> (not res!929425) (not e!786911))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119080 (= res!929425 (validMask!0 mask!2840))))

(assert (=> start!119080 e!786911))

(assert (=> start!119080 true))

(declare-fun array_inv!34792 (array!94968) Bool)

(assert (=> start!119080 (array_inv!34792 a!2901)))

(declare-fun b!1389124 () Bool)

(declare-fun res!929426 () Bool)

(assert (=> b!1389124 (=> (not res!929426) (not e!786911))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1389124 (= res!929426 (validKeyInArray!0 (select (arr!45847 a!2901) j!112)))))

(declare-fun b!1389125 () Bool)

(declare-fun res!929430 () Bool)

(assert (=> b!1389125 (=> (not res!929430) (not e!786911))))

(assert (=> b!1389125 (= res!929430 (validKeyInArray!0 (select (arr!45847 a!2901) i!1037)))))

(declare-fun b!1389126 () Bool)

(declare-fun res!929427 () Bool)

(assert (=> b!1389126 (=> (not res!929427) (not e!786911))))

(declare-datatypes ((List!32546 0))(
  ( (Nil!32543) (Cons!32542 (h!33757 (_ BitVec 64)) (t!47247 List!32546)) )
))
(declare-fun arrayNoDuplicates!0 (array!94968 (_ BitVec 32) List!32546) Bool)

(assert (=> b!1389126 (= res!929427 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32543))))

(declare-fun b!1389127 () Bool)

(declare-fun res!929428 () Bool)

(assert (=> b!1389127 (=> (not res!929428) (not e!786911))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94968 (_ BitVec 32)) Bool)

(assert (=> b!1389127 (= res!929428 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(assert (= (and start!119080 res!929425) b!1389122))

(assert (= (and b!1389122 res!929429) b!1389125))

(assert (= (and b!1389125 res!929430) b!1389124))

(assert (= (and b!1389124 res!929426) b!1389127))

(assert (= (and b!1389127 res!929428) b!1389126))

(assert (= (and b!1389126 res!929427) b!1389123))

(declare-fun m!1274855 () Bool)

(assert (=> b!1389126 m!1274855))

(declare-fun m!1274857 () Bool)

(assert (=> start!119080 m!1274857))

(declare-fun m!1274859 () Bool)

(assert (=> start!119080 m!1274859))

(declare-fun m!1274861 () Bool)

(assert (=> b!1389123 m!1274861))

(assert (=> b!1389123 m!1274861))

(declare-fun m!1274863 () Bool)

(assert (=> b!1389123 m!1274863))

(declare-fun m!1274865 () Bool)

(assert (=> b!1389127 m!1274865))

(declare-fun m!1274867 () Bool)

(assert (=> b!1389125 m!1274867))

(assert (=> b!1389125 m!1274867))

(declare-fun m!1274869 () Bool)

(assert (=> b!1389125 m!1274869))

(assert (=> b!1389124 m!1274861))

(assert (=> b!1389124 m!1274861))

(declare-fun m!1274871 () Bool)

(assert (=> b!1389124 m!1274871))

(push 1)

(assert (not b!1389127))

(assert (not b!1389123))

(assert (not b!1389124))

(assert (not start!119080))

(assert (not b!1389126))

(assert (not b!1389125))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


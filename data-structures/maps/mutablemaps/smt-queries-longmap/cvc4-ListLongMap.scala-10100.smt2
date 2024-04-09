; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!119138 () Bool)

(assert start!119138)

(declare-fun b!1389401 () Bool)

(declare-fun res!929676 () Bool)

(declare-fun e!787039 () Bool)

(assert (=> b!1389401 (=> (not res!929676) (not e!787039))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!94993 0))(
  ( (array!94994 (arr!45858 (Array (_ BitVec 32) (_ BitVec 64))) (size!46409 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!94993)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1389401 (= res!929676 (and (= (size!46409 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46409 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46409 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1389402 () Bool)

(declare-fun res!929673 () Bool)

(assert (=> b!1389402 (=> (not res!929673) (not e!787039))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1389402 (= res!929673 (validKeyInArray!0 (select (arr!45858 a!2901) j!112)))))

(declare-fun b!1389403 () Bool)

(declare-fun res!929675 () Bool)

(assert (=> b!1389403 (=> (not res!929675) (not e!787039))))

(declare-datatypes ((List!32557 0))(
  ( (Nil!32554) (Cons!32553 (h!33771 (_ BitVec 64)) (t!47258 List!32557)) )
))
(declare-fun arrayNoDuplicates!0 (array!94993 (_ BitVec 32) List!32557) Bool)

(assert (=> b!1389403 (= res!929675 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32554))))

(declare-fun b!1389404 () Bool)

(declare-fun res!929671 () Bool)

(assert (=> b!1389404 (=> (not res!929671) (not e!787039))))

(assert (=> b!1389404 (= res!929671 (validKeyInArray!0 (select (arr!45858 a!2901) i!1037)))))

(declare-fun b!1389405 () Bool)

(declare-fun res!929672 () Bool)

(assert (=> b!1389405 (=> (not res!929672) (not e!787039))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94993 (_ BitVec 32)) Bool)

(assert (=> b!1389405 (= res!929672 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1389406 () Bool)

(assert (=> b!1389406 (= e!787039 false)))

(declare-fun lt!610513 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1389406 (= lt!610513 (toIndex!0 (select (arr!45858 a!2901) j!112) mask!2840))))

(declare-fun res!929674 () Bool)

(assert (=> start!119138 (=> (not res!929674) (not e!787039))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119138 (= res!929674 (validMask!0 mask!2840))))

(assert (=> start!119138 e!787039))

(assert (=> start!119138 true))

(declare-fun array_inv!34803 (array!94993) Bool)

(assert (=> start!119138 (array_inv!34803 a!2901)))

(assert (= (and start!119138 res!929674) b!1389401))

(assert (= (and b!1389401 res!929676) b!1389404))

(assert (= (and b!1389404 res!929671) b!1389402))

(assert (= (and b!1389402 res!929673) b!1389405))

(assert (= (and b!1389405 res!929672) b!1389403))

(assert (= (and b!1389403 res!929675) b!1389406))

(declare-fun m!1275101 () Bool)

(assert (=> b!1389403 m!1275101))

(declare-fun m!1275103 () Bool)

(assert (=> b!1389406 m!1275103))

(assert (=> b!1389406 m!1275103))

(declare-fun m!1275105 () Bool)

(assert (=> b!1389406 m!1275105))

(declare-fun m!1275107 () Bool)

(assert (=> start!119138 m!1275107))

(declare-fun m!1275109 () Bool)

(assert (=> start!119138 m!1275109))

(declare-fun m!1275111 () Bool)

(assert (=> b!1389405 m!1275111))

(declare-fun m!1275113 () Bool)

(assert (=> b!1389404 m!1275113))

(assert (=> b!1389404 m!1275113))

(declare-fun m!1275115 () Bool)

(assert (=> b!1389404 m!1275115))

(assert (=> b!1389402 m!1275103))

(assert (=> b!1389402 m!1275103))

(declare-fun m!1275117 () Bool)

(assert (=> b!1389402 m!1275117))

(push 1)

(assert (not b!1389403))

(assert (not b!1389406))

(assert (not b!1389405))

(assert (not start!119138))

(assert (not b!1389402))

(assert (not b!1389404))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


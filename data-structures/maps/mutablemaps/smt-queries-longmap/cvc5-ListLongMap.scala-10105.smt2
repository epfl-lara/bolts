; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!119164 () Bool)

(assert start!119164)

(declare-fun b!1389635 () Bool)

(declare-fun res!929908 () Bool)

(declare-fun e!787117 () Bool)

(assert (=> b!1389635 (=> (not res!929908) (not e!787117))))

(declare-datatypes ((array!95019 0))(
  ( (array!95020 (arr!45871 (Array (_ BitVec 32) (_ BitVec 64))) (size!46422 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95019)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95019 (_ BitVec 32)) Bool)

(assert (=> b!1389635 (= res!929908 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun res!929906 () Bool)

(assert (=> start!119164 (=> (not res!929906) (not e!787117))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119164 (= res!929906 (validMask!0 mask!2840))))

(assert (=> start!119164 e!787117))

(assert (=> start!119164 true))

(declare-fun array_inv!34816 (array!95019) Bool)

(assert (=> start!119164 (array_inv!34816 a!2901)))

(declare-fun b!1389636 () Bool)

(declare-fun res!929907 () Bool)

(assert (=> b!1389636 (=> (not res!929907) (not e!787117))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1389636 (= res!929907 (and (= (size!46422 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46422 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46422 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1389637 () Bool)

(declare-fun res!929905 () Bool)

(assert (=> b!1389637 (=> (not res!929905) (not e!787117))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1389637 (= res!929905 (validKeyInArray!0 (select (arr!45871 a!2901) i!1037)))))

(declare-fun b!1389638 () Bool)

(declare-fun res!929909 () Bool)

(assert (=> b!1389638 (=> (not res!929909) (not e!787117))))

(declare-datatypes ((List!32570 0))(
  ( (Nil!32567) (Cons!32566 (h!33784 (_ BitVec 64)) (t!47271 List!32570)) )
))
(declare-fun arrayNoDuplicates!0 (array!95019 (_ BitVec 32) List!32570) Bool)

(assert (=> b!1389638 (= res!929909 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32567))))

(declare-fun b!1389639 () Bool)

(assert (=> b!1389639 (= e!787117 false)))

(declare-datatypes ((SeekEntryResult!10210 0))(
  ( (MissingZero!10210 (index!43210 (_ BitVec 32))) (Found!10210 (index!43211 (_ BitVec 32))) (Intermediate!10210 (undefined!11022 Bool) (index!43212 (_ BitVec 32)) (x!124907 (_ BitVec 32))) (Undefined!10210) (MissingVacant!10210 (index!43213 (_ BitVec 32))) )
))
(declare-fun lt!610552 () SeekEntryResult!10210)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95019 (_ BitVec 32)) SeekEntryResult!10210)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1389639 (= lt!610552 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45871 a!2901) j!112) mask!2840) (select (arr!45871 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1389640 () Bool)

(declare-fun res!929910 () Bool)

(assert (=> b!1389640 (=> (not res!929910) (not e!787117))))

(assert (=> b!1389640 (= res!929910 (validKeyInArray!0 (select (arr!45871 a!2901) j!112)))))

(assert (= (and start!119164 res!929906) b!1389636))

(assert (= (and b!1389636 res!929907) b!1389637))

(assert (= (and b!1389637 res!929905) b!1389640))

(assert (= (and b!1389640 res!929910) b!1389635))

(assert (= (and b!1389635 res!929908) b!1389638))

(assert (= (and b!1389638 res!929909) b!1389639))

(declare-fun m!1275359 () Bool)

(assert (=> b!1389639 m!1275359))

(assert (=> b!1389639 m!1275359))

(declare-fun m!1275361 () Bool)

(assert (=> b!1389639 m!1275361))

(assert (=> b!1389639 m!1275361))

(assert (=> b!1389639 m!1275359))

(declare-fun m!1275363 () Bool)

(assert (=> b!1389639 m!1275363))

(assert (=> b!1389640 m!1275359))

(assert (=> b!1389640 m!1275359))

(declare-fun m!1275365 () Bool)

(assert (=> b!1389640 m!1275365))

(declare-fun m!1275367 () Bool)

(assert (=> start!119164 m!1275367))

(declare-fun m!1275369 () Bool)

(assert (=> start!119164 m!1275369))

(declare-fun m!1275371 () Bool)

(assert (=> b!1389635 m!1275371))

(declare-fun m!1275373 () Bool)

(assert (=> b!1389638 m!1275373))

(declare-fun m!1275375 () Bool)

(assert (=> b!1389637 m!1275375))

(assert (=> b!1389637 m!1275375))

(declare-fun m!1275377 () Bool)

(assert (=> b!1389637 m!1275377))

(push 1)

(assert (not b!1389635))

(assert (not b!1389640))

(assert (not start!119164))

(assert (not b!1389637))

(assert (not b!1389639))

(assert (not b!1389638))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


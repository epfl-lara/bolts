; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!119030 () Bool)

(assert start!119030)

(declare-fun b!1388861 () Bool)

(declare-fun res!929202 () Bool)

(declare-fun e!786787 () Bool)

(assert (=> b!1388861 (=> (not res!929202) (not e!786787))))

(declare-datatypes ((array!94945 0))(
  ( (array!94946 (arr!45837 (Array (_ BitVec 32) (_ BitVec 64))) (size!46388 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!94945)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1388861 (= res!929202 (validKeyInArray!0 (select (arr!45837 a!2901) j!112)))))

(declare-fun res!929201 () Bool)

(assert (=> start!119030 (=> (not res!929201) (not e!786787))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119030 (= res!929201 (validMask!0 mask!2840))))

(assert (=> start!119030 e!786787))

(assert (=> start!119030 true))

(declare-fun array_inv!34782 (array!94945) Bool)

(assert (=> start!119030 (array_inv!34782 a!2901)))

(declare-fun b!1388862 () Bool)

(declare-fun res!929200 () Bool)

(assert (=> b!1388862 (=> (not res!929200) (not e!786787))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94945 (_ BitVec 32)) Bool)

(assert (=> b!1388862 (= res!929200 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1388863 () Bool)

(declare-fun res!929203 () Bool)

(assert (=> b!1388863 (=> (not res!929203) (not e!786787))))

(declare-datatypes ((List!32536 0))(
  ( (Nil!32533) (Cons!32532 (h!33747 (_ BitVec 64)) (t!47237 List!32536)) )
))
(declare-fun arrayNoDuplicates!0 (array!94945 (_ BitVec 32) List!32536) Bool)

(assert (=> b!1388863 (= res!929203 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32533))))

(declare-fun b!1388864 () Bool)

(declare-fun res!929205 () Bool)

(assert (=> b!1388864 (=> (not res!929205) (not e!786787))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1388864 (= res!929205 (validKeyInArray!0 (select (arr!45837 a!2901) i!1037)))))

(declare-fun b!1388865 () Bool)

(declare-fun res!929204 () Bool)

(assert (=> b!1388865 (=> (not res!929204) (not e!786787))))

(assert (=> b!1388865 (= res!929204 (and (= (size!46388 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46388 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46388 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1388866 () Bool)

(assert (=> b!1388866 (= e!786787 (bvslt mask!2840 #b00000000000000000000000000000000))))

(assert (= (and start!119030 res!929201) b!1388865))

(assert (= (and b!1388865 res!929204) b!1388864))

(assert (= (and b!1388864 res!929205) b!1388861))

(assert (= (and b!1388861 res!929202) b!1388862))

(assert (= (and b!1388862 res!929200) b!1388863))

(assert (= (and b!1388863 res!929203) b!1388866))

(declare-fun m!1274635 () Bool)

(assert (=> b!1388863 m!1274635))

(declare-fun m!1274637 () Bool)

(assert (=> start!119030 m!1274637))

(declare-fun m!1274639 () Bool)

(assert (=> start!119030 m!1274639))

(declare-fun m!1274641 () Bool)

(assert (=> b!1388862 m!1274641))

(declare-fun m!1274643 () Bool)

(assert (=> b!1388861 m!1274643))

(assert (=> b!1388861 m!1274643))

(declare-fun m!1274645 () Bool)

(assert (=> b!1388861 m!1274645))

(declare-fun m!1274647 () Bool)

(assert (=> b!1388864 m!1274647))

(assert (=> b!1388864 m!1274647))

(declare-fun m!1274649 () Bool)

(assert (=> b!1388864 m!1274649))

(push 1)

(assert (not b!1388861))

(assert (not b!1388864))

(assert (not start!119030))

(assert (not b!1388863))

(assert (not b!1388862))

(check-sat)

(pop 1)

(push 1)

(check-sat)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!119128 () Bool)

(assert start!119128)

(declare-fun b!1389311 () Bool)

(declare-fun res!929583 () Bool)

(declare-fun e!787009 () Bool)

(assert (=> b!1389311 (=> (not res!929583) (not e!787009))))

(declare-datatypes ((array!94983 0))(
  ( (array!94984 (arr!45853 (Array (_ BitVec 32) (_ BitVec 64))) (size!46404 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!94983)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1389311 (= res!929583 (validKeyInArray!0 (select (arr!45853 a!2901) i!1037)))))

(declare-fun b!1389312 () Bool)

(declare-fun res!929586 () Bool)

(assert (=> b!1389312 (=> (not res!929586) (not e!787009))))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1389312 (= res!929586 (validKeyInArray!0 (select (arr!45853 a!2901) j!112)))))

(declare-fun b!1389313 () Bool)

(declare-fun res!929584 () Bool)

(assert (=> b!1389313 (=> (not res!929584) (not e!787009))))

(declare-fun mask!2840 () (_ BitVec 32))

(assert (=> b!1389313 (= res!929584 (and (= (size!46404 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46404 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46404 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1389314 () Bool)

(assert (=> b!1389314 (= e!787009 false)))

(declare-fun lt!610498 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1389314 (= lt!610498 (toIndex!0 (select (arr!45853 a!2901) j!112) mask!2840))))

(declare-fun b!1389315 () Bool)

(declare-fun res!929582 () Bool)

(assert (=> b!1389315 (=> (not res!929582) (not e!787009))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94983 (_ BitVec 32)) Bool)

(assert (=> b!1389315 (= res!929582 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun res!929585 () Bool)

(assert (=> start!119128 (=> (not res!929585) (not e!787009))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119128 (= res!929585 (validMask!0 mask!2840))))

(assert (=> start!119128 e!787009))

(assert (=> start!119128 true))

(declare-fun array_inv!34798 (array!94983) Bool)

(assert (=> start!119128 (array_inv!34798 a!2901)))

(declare-fun b!1389316 () Bool)

(declare-fun res!929581 () Bool)

(assert (=> b!1389316 (=> (not res!929581) (not e!787009))))

(declare-datatypes ((List!32552 0))(
  ( (Nil!32549) (Cons!32548 (h!33766 (_ BitVec 64)) (t!47253 List!32552)) )
))
(declare-fun arrayNoDuplicates!0 (array!94983 (_ BitVec 32) List!32552) Bool)

(assert (=> b!1389316 (= res!929581 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32549))))

(assert (= (and start!119128 res!929585) b!1389313))

(assert (= (and b!1389313 res!929584) b!1389311))

(assert (= (and b!1389311 res!929583) b!1389312))

(assert (= (and b!1389312 res!929586) b!1389315))

(assert (= (and b!1389315 res!929582) b!1389316))

(assert (= (and b!1389316 res!929581) b!1389314))

(declare-fun m!1275011 () Bool)

(assert (=> b!1389314 m!1275011))

(assert (=> b!1389314 m!1275011))

(declare-fun m!1275013 () Bool)

(assert (=> b!1389314 m!1275013))

(assert (=> b!1389312 m!1275011))

(assert (=> b!1389312 m!1275011))

(declare-fun m!1275015 () Bool)

(assert (=> b!1389312 m!1275015))

(declare-fun m!1275017 () Bool)

(assert (=> b!1389311 m!1275017))

(assert (=> b!1389311 m!1275017))

(declare-fun m!1275019 () Bool)

(assert (=> b!1389311 m!1275019))

(declare-fun m!1275021 () Bool)

(assert (=> b!1389316 m!1275021))

(declare-fun m!1275023 () Bool)

(assert (=> b!1389315 m!1275023))

(declare-fun m!1275025 () Bool)

(assert (=> start!119128 m!1275025))

(declare-fun m!1275027 () Bool)

(assert (=> start!119128 m!1275027))

(push 1)

(assert (not b!1389312))

(assert (not start!119128))

(assert (not b!1389311))

(assert (not b!1389314))

(assert (not b!1389316))

(assert (not b!1389315))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


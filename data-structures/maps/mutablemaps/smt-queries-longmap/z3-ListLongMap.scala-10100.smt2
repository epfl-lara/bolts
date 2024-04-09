; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!119136 () Bool)

(assert start!119136)

(declare-fun b!1389383 () Bool)

(declare-fun res!929657 () Bool)

(declare-fun e!787033 () Bool)

(assert (=> b!1389383 (=> (not res!929657) (not e!787033))))

(declare-datatypes ((array!94991 0))(
  ( (array!94992 (arr!45857 (Array (_ BitVec 32) (_ BitVec 64))) (size!46408 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!94991)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94991 (_ BitVec 32)) Bool)

(assert (=> b!1389383 (= res!929657 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1389384 () Bool)

(declare-fun res!929656 () Bool)

(assert (=> b!1389384 (=> (not res!929656) (not e!787033))))

(declare-datatypes ((List!32556 0))(
  ( (Nil!32553) (Cons!32552 (h!33770 (_ BitVec 64)) (t!47257 List!32556)) )
))
(declare-fun arrayNoDuplicates!0 (array!94991 (_ BitVec 32) List!32556) Bool)

(assert (=> b!1389384 (= res!929656 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32553))))

(declare-fun res!929655 () Bool)

(assert (=> start!119136 (=> (not res!929655) (not e!787033))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119136 (= res!929655 (validMask!0 mask!2840))))

(assert (=> start!119136 e!787033))

(assert (=> start!119136 true))

(declare-fun array_inv!34802 (array!94991) Bool)

(assert (=> start!119136 (array_inv!34802 a!2901)))

(declare-fun b!1389385 () Bool)

(assert (=> b!1389385 (= e!787033 false)))

(declare-fun lt!610510 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1389385 (= lt!610510 (toIndex!0 (select (arr!45857 a!2901) j!112) mask!2840))))

(declare-fun b!1389386 () Bool)

(declare-fun res!929653 () Bool)

(assert (=> b!1389386 (=> (not res!929653) (not e!787033))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1389386 (= res!929653 (validKeyInArray!0 (select (arr!45857 a!2901) j!112)))))

(declare-fun b!1389387 () Bool)

(declare-fun res!929654 () Bool)

(assert (=> b!1389387 (=> (not res!929654) (not e!787033))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1389387 (= res!929654 (and (= (size!46408 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46408 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46408 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1389388 () Bool)

(declare-fun res!929658 () Bool)

(assert (=> b!1389388 (=> (not res!929658) (not e!787033))))

(assert (=> b!1389388 (= res!929658 (validKeyInArray!0 (select (arr!45857 a!2901) i!1037)))))

(assert (= (and start!119136 res!929655) b!1389387))

(assert (= (and b!1389387 res!929654) b!1389388))

(assert (= (and b!1389388 res!929658) b!1389386))

(assert (= (and b!1389386 res!929653) b!1389383))

(assert (= (and b!1389383 res!929657) b!1389384))

(assert (= (and b!1389384 res!929656) b!1389385))

(declare-fun m!1275083 () Bool)

(assert (=> start!119136 m!1275083))

(declare-fun m!1275085 () Bool)

(assert (=> start!119136 m!1275085))

(declare-fun m!1275087 () Bool)

(assert (=> b!1389388 m!1275087))

(assert (=> b!1389388 m!1275087))

(declare-fun m!1275089 () Bool)

(assert (=> b!1389388 m!1275089))

(declare-fun m!1275091 () Bool)

(assert (=> b!1389386 m!1275091))

(assert (=> b!1389386 m!1275091))

(declare-fun m!1275093 () Bool)

(assert (=> b!1389386 m!1275093))

(assert (=> b!1389385 m!1275091))

(assert (=> b!1389385 m!1275091))

(declare-fun m!1275095 () Bool)

(assert (=> b!1389385 m!1275095))

(declare-fun m!1275097 () Bool)

(assert (=> b!1389383 m!1275097))

(declare-fun m!1275099 () Bool)

(assert (=> b!1389384 m!1275099))

(check-sat (not b!1389384) (not b!1389385) (not b!1389386) (not start!119136) (not b!1389383) (not b!1389388))

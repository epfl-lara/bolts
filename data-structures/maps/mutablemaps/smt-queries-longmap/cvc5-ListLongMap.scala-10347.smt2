; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!121672 () Bool)

(assert start!121672)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!96528 0))(
  ( (array!96529 (arr!46597 (Array (_ BitVec 32) (_ BitVec 64))) (size!47148 (_ BitVec 32))) )
))
(declare-fun lt!622733 () array!96528)

(declare-fun lt!622732 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!10930 0))(
  ( (MissingZero!10930 (index!46099 (_ BitVec 32))) (Found!10930 (index!46100 (_ BitVec 32))) (Intermediate!10930 (undefined!11742 Bool) (index!46101 (_ BitVec 32)) (x!127692 (_ BitVec 32))) (Undefined!10930) (MissingVacant!10930 (index!46102 (_ BitVec 32))) )
))
(declare-fun lt!622734 () SeekEntryResult!10930)

(declare-fun b!1413010 () Bool)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun e!799680 () Bool)

(declare-fun a!2901 () array!96528)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96528 (_ BitVec 32)) SeekEntryResult!10930)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96528 (_ BitVec 32)) SeekEntryResult!10930)

(assert (=> b!1413010 (= e!799680 (= (seekEntryOrOpen!0 lt!622732 lt!622733 mask!2840) (seekKeyOrZeroReturnVacant!0 (x!127692 lt!622734) (index!46101 lt!622734) (index!46101 lt!622734) (select (arr!46597 a!2901) j!112) lt!622733 mask!2840)))))

(declare-fun b!1413011 () Bool)

(declare-fun res!950118 () Bool)

(declare-fun e!799679 () Bool)

(assert (=> b!1413011 (=> (not res!950118) (not e!799679))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1413011 (= res!950118 (validKeyInArray!0 (select (arr!46597 a!2901) j!112)))))

(declare-fun b!1413012 () Bool)

(declare-fun e!799677 () Bool)

(assert (=> b!1413012 (= e!799677 true)))

(assert (=> b!1413012 e!799680))

(declare-fun res!950109 () Bool)

(assert (=> b!1413012 (=> (not res!950109) (not e!799680))))

(declare-fun lt!622737 () SeekEntryResult!10930)

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1413012 (= res!950109 (and (not (undefined!11742 lt!622734)) (= (index!46101 lt!622734) i!1037) (bvslt (x!127692 lt!622734) (x!127692 lt!622737)) (= (select (store (arr!46597 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!46101 lt!622734)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!622735 () (_ BitVec 32))

(declare-datatypes ((Unit!47784 0))(
  ( (Unit!47785) )
))
(declare-fun lt!622738 () Unit!47784)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!96528 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47784)

(assert (=> b!1413012 (= lt!622738 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!622735 (x!127692 lt!622737) (index!46101 lt!622737) (x!127692 lt!622734) (index!46101 lt!622734) (undefined!11742 lt!622734) mask!2840))))

(declare-fun b!1413013 () Bool)

(declare-fun res!950116 () Bool)

(assert (=> b!1413013 (=> (not res!950116) (not e!799679))))

(declare-datatypes ((List!33296 0))(
  ( (Nil!33293) (Cons!33292 (h!34567 (_ BitVec 64)) (t!47997 List!33296)) )
))
(declare-fun arrayNoDuplicates!0 (array!96528 (_ BitVec 32) List!33296) Bool)

(assert (=> b!1413013 (= res!950116 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33293))))

(declare-fun b!1413014 () Bool)

(declare-fun res!950113 () Bool)

(assert (=> b!1413014 (=> (not res!950113) (not e!799679))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96528 (_ BitVec 32)) Bool)

(assert (=> b!1413014 (= res!950113 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1413015 () Bool)

(declare-fun e!799681 () Bool)

(assert (=> b!1413015 (= e!799681 (= (seekEntryOrOpen!0 (select (arr!46597 a!2901) j!112) a!2901 mask!2840) (Found!10930 j!112)))))

(declare-fun b!1413016 () Bool)

(declare-fun res!950112 () Bool)

(assert (=> b!1413016 (=> (not res!950112) (not e!799679))))

(assert (=> b!1413016 (= res!950112 (and (= (size!47148 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47148 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47148 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1413017 () Bool)

(declare-fun e!799682 () Bool)

(assert (=> b!1413017 (= e!799679 (not e!799682))))

(declare-fun res!950117 () Bool)

(assert (=> b!1413017 (=> res!950117 e!799682)))

(assert (=> b!1413017 (= res!950117 (or (not (is-Intermediate!10930 lt!622737)) (undefined!11742 lt!622737)))))

(assert (=> b!1413017 e!799681))

(declare-fun res!950111 () Bool)

(assert (=> b!1413017 (=> (not res!950111) (not e!799681))))

(assert (=> b!1413017 (= res!950111 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-fun lt!622736 () Unit!47784)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96528 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47784)

(assert (=> b!1413017 (= lt!622736 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96528 (_ BitVec 32)) SeekEntryResult!10930)

(assert (=> b!1413017 (= lt!622737 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!622735 (select (arr!46597 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1413017 (= lt!622735 (toIndex!0 (select (arr!46597 a!2901) j!112) mask!2840))))

(declare-fun res!950114 () Bool)

(assert (=> start!121672 (=> (not res!950114) (not e!799679))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121672 (= res!950114 (validMask!0 mask!2840))))

(assert (=> start!121672 e!799679))

(assert (=> start!121672 true))

(declare-fun array_inv!35542 (array!96528) Bool)

(assert (=> start!121672 (array_inv!35542 a!2901)))

(declare-fun b!1413018 () Bool)

(declare-fun res!950115 () Bool)

(assert (=> b!1413018 (=> (not res!950115) (not e!799679))))

(assert (=> b!1413018 (= res!950115 (validKeyInArray!0 (select (arr!46597 a!2901) i!1037)))))

(declare-fun b!1413019 () Bool)

(assert (=> b!1413019 (= e!799682 e!799677)))

(declare-fun res!950110 () Bool)

(assert (=> b!1413019 (=> res!950110 e!799677)))

(assert (=> b!1413019 (= res!950110 (or (= lt!622737 lt!622734) (not (is-Intermediate!10930 lt!622734))))))

(assert (=> b!1413019 (= lt!622734 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!622732 mask!2840) lt!622732 lt!622733 mask!2840))))

(assert (=> b!1413019 (= lt!622732 (select (store (arr!46597 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1413019 (= lt!622733 (array!96529 (store (arr!46597 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47148 a!2901)))))

(assert (= (and start!121672 res!950114) b!1413016))

(assert (= (and b!1413016 res!950112) b!1413018))

(assert (= (and b!1413018 res!950115) b!1413011))

(assert (= (and b!1413011 res!950118) b!1413014))

(assert (= (and b!1413014 res!950113) b!1413013))

(assert (= (and b!1413013 res!950116) b!1413017))

(assert (= (and b!1413017 res!950111) b!1413015))

(assert (= (and b!1413017 (not res!950117)) b!1413019))

(assert (= (and b!1413019 (not res!950110)) b!1413012))

(assert (= (and b!1413012 res!950109) b!1413010))

(declare-fun m!1303355 () Bool)

(assert (=> b!1413014 m!1303355))

(declare-fun m!1303357 () Bool)

(assert (=> b!1413011 m!1303357))

(assert (=> b!1413011 m!1303357))

(declare-fun m!1303359 () Bool)

(assert (=> b!1413011 m!1303359))

(declare-fun m!1303361 () Bool)

(assert (=> b!1413012 m!1303361))

(declare-fun m!1303363 () Bool)

(assert (=> b!1413012 m!1303363))

(declare-fun m!1303365 () Bool)

(assert (=> b!1413012 m!1303365))

(declare-fun m!1303367 () Bool)

(assert (=> b!1413013 m!1303367))

(declare-fun m!1303369 () Bool)

(assert (=> b!1413019 m!1303369))

(assert (=> b!1413019 m!1303369))

(declare-fun m!1303371 () Bool)

(assert (=> b!1413019 m!1303371))

(assert (=> b!1413019 m!1303361))

(declare-fun m!1303373 () Bool)

(assert (=> b!1413019 m!1303373))

(declare-fun m!1303375 () Bool)

(assert (=> start!121672 m!1303375))

(declare-fun m!1303377 () Bool)

(assert (=> start!121672 m!1303377))

(declare-fun m!1303379 () Bool)

(assert (=> b!1413018 m!1303379))

(assert (=> b!1413018 m!1303379))

(declare-fun m!1303381 () Bool)

(assert (=> b!1413018 m!1303381))

(assert (=> b!1413015 m!1303357))

(assert (=> b!1413015 m!1303357))

(declare-fun m!1303383 () Bool)

(assert (=> b!1413015 m!1303383))

(declare-fun m!1303385 () Bool)

(assert (=> b!1413010 m!1303385))

(assert (=> b!1413010 m!1303357))

(assert (=> b!1413010 m!1303357))

(declare-fun m!1303387 () Bool)

(assert (=> b!1413010 m!1303387))

(assert (=> b!1413017 m!1303357))

(declare-fun m!1303389 () Bool)

(assert (=> b!1413017 m!1303389))

(assert (=> b!1413017 m!1303357))

(assert (=> b!1413017 m!1303357))

(declare-fun m!1303391 () Bool)

(assert (=> b!1413017 m!1303391))

(declare-fun m!1303393 () Bool)

(assert (=> b!1413017 m!1303393))

(declare-fun m!1303395 () Bool)

(assert (=> b!1413017 m!1303395))

(push 1)


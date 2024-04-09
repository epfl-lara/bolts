; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!121194 () Bool)

(assert start!121194)

(declare-fun b!1408608 () Bool)

(declare-fun res!946439 () Bool)

(declare-fun e!797204 () Bool)

(assert (=> b!1408608 (=> (not res!946439) (not e!797204))))

(declare-datatypes ((array!96266 0))(
  ( (array!96267 (arr!46472 (Array (_ BitVec 32) (_ BitVec 64))) (size!47023 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96266)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96266 (_ BitVec 32)) Bool)

(assert (=> b!1408608 (= res!946439 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1408609 () Bool)

(declare-fun res!946443 () Bool)

(assert (=> b!1408609 (=> (not res!946443) (not e!797204))))

(declare-datatypes ((List!33171 0))(
  ( (Nil!33168) (Cons!33167 (h!34430 (_ BitVec 64)) (t!47872 List!33171)) )
))
(declare-fun arrayNoDuplicates!0 (array!96266 (_ BitVec 32) List!33171) Bool)

(assert (=> b!1408609 (= res!946443 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33168))))

(declare-fun res!946441 () Bool)

(assert (=> start!121194 (=> (not res!946441) (not e!797204))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121194 (= res!946441 (validMask!0 mask!2840))))

(assert (=> start!121194 e!797204))

(assert (=> start!121194 true))

(declare-fun array_inv!35417 (array!96266) Bool)

(assert (=> start!121194 (array_inv!35417 a!2901)))

(declare-fun b!1408610 () Bool)

(declare-fun res!946440 () Bool)

(assert (=> b!1408610 (=> (not res!946440) (not e!797204))))

(declare-fun j!112 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1408610 (= res!946440 (validKeyInArray!0 (select (arr!46472 a!2901) j!112)))))

(declare-fun b!1408611 () Bool)

(declare-fun e!797206 () Bool)

(assert (=> b!1408611 (= e!797206 true)))

(declare-fun i!1037 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10805 0))(
  ( (MissingZero!10805 (index!45596 (_ BitVec 32))) (Found!10805 (index!45597 (_ BitVec 32))) (Intermediate!10805 (undefined!11617 Bool) (index!45598 (_ BitVec 32)) (x!127201 (_ BitVec 32))) (Undefined!10805) (MissingVacant!10805 (index!45599 (_ BitVec 32))) )
))
(declare-fun lt!620382 () SeekEntryResult!10805)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96266 (_ BitVec 32)) SeekEntryResult!10805)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1408611 (= lt!620382 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46472 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46472 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96267 (store (arr!46472 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47023 a!2901)) mask!2840))))

(declare-fun b!1408612 () Bool)

(assert (=> b!1408612 (= e!797204 (not e!797206))))

(declare-fun res!946445 () Bool)

(assert (=> b!1408612 (=> res!946445 e!797206)))

(declare-fun lt!620381 () SeekEntryResult!10805)

(get-info :version)

(assert (=> b!1408612 (= res!946445 (or (not ((_ is Intermediate!10805) lt!620381)) (undefined!11617 lt!620381)))))

(declare-fun e!797205 () Bool)

(assert (=> b!1408612 e!797205))

(declare-fun res!946444 () Bool)

(assert (=> b!1408612 (=> (not res!946444) (not e!797205))))

(assert (=> b!1408612 (= res!946444 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47534 0))(
  ( (Unit!47535) )
))
(declare-fun lt!620383 () Unit!47534)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96266 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47534)

(assert (=> b!1408612 (= lt!620383 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1408612 (= lt!620381 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46472 a!2901) j!112) mask!2840) (select (arr!46472 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1408613 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96266 (_ BitVec 32)) SeekEntryResult!10805)

(assert (=> b!1408613 (= e!797205 (= (seekEntryOrOpen!0 (select (arr!46472 a!2901) j!112) a!2901 mask!2840) (Found!10805 j!112)))))

(declare-fun b!1408614 () Bool)

(declare-fun res!946442 () Bool)

(assert (=> b!1408614 (=> (not res!946442) (not e!797204))))

(assert (=> b!1408614 (= res!946442 (and (= (size!47023 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47023 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47023 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1408615 () Bool)

(declare-fun res!946446 () Bool)

(assert (=> b!1408615 (=> (not res!946446) (not e!797204))))

(assert (=> b!1408615 (= res!946446 (validKeyInArray!0 (select (arr!46472 a!2901) i!1037)))))

(assert (= (and start!121194 res!946441) b!1408614))

(assert (= (and b!1408614 res!946442) b!1408615))

(assert (= (and b!1408615 res!946446) b!1408610))

(assert (= (and b!1408610 res!946440) b!1408608))

(assert (= (and b!1408608 res!946439) b!1408609))

(assert (= (and b!1408609 res!946443) b!1408612))

(assert (= (and b!1408612 res!946444) b!1408613))

(assert (= (and b!1408612 (not res!946445)) b!1408611))

(declare-fun m!1298073 () Bool)

(assert (=> b!1408613 m!1298073))

(assert (=> b!1408613 m!1298073))

(declare-fun m!1298075 () Bool)

(assert (=> b!1408613 m!1298075))

(assert (=> b!1408610 m!1298073))

(assert (=> b!1408610 m!1298073))

(declare-fun m!1298077 () Bool)

(assert (=> b!1408610 m!1298077))

(assert (=> b!1408612 m!1298073))

(declare-fun m!1298079 () Bool)

(assert (=> b!1408612 m!1298079))

(assert (=> b!1408612 m!1298073))

(declare-fun m!1298081 () Bool)

(assert (=> b!1408612 m!1298081))

(assert (=> b!1408612 m!1298079))

(assert (=> b!1408612 m!1298073))

(declare-fun m!1298083 () Bool)

(assert (=> b!1408612 m!1298083))

(declare-fun m!1298085 () Bool)

(assert (=> b!1408612 m!1298085))

(declare-fun m!1298087 () Bool)

(assert (=> b!1408608 m!1298087))

(declare-fun m!1298089 () Bool)

(assert (=> b!1408615 m!1298089))

(assert (=> b!1408615 m!1298089))

(declare-fun m!1298091 () Bool)

(assert (=> b!1408615 m!1298091))

(declare-fun m!1298093 () Bool)

(assert (=> start!121194 m!1298093))

(declare-fun m!1298095 () Bool)

(assert (=> start!121194 m!1298095))

(declare-fun m!1298097 () Bool)

(assert (=> b!1408611 m!1298097))

(declare-fun m!1298099 () Bool)

(assert (=> b!1408611 m!1298099))

(assert (=> b!1408611 m!1298099))

(declare-fun m!1298101 () Bool)

(assert (=> b!1408611 m!1298101))

(assert (=> b!1408611 m!1298101))

(assert (=> b!1408611 m!1298099))

(declare-fun m!1298103 () Bool)

(assert (=> b!1408611 m!1298103))

(declare-fun m!1298105 () Bool)

(assert (=> b!1408609 m!1298105))

(check-sat (not b!1408613) (not b!1408608) (not b!1408610) (not b!1408611) (not b!1408612) (not b!1408609) (not start!121194) (not b!1408615))

; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!119172 () Bool)

(assert start!119172)

(declare-fun b!1389707 () Bool)

(declare-fun res!929978 () Bool)

(declare-fun e!787142 () Bool)

(assert (=> b!1389707 (=> (not res!929978) (not e!787142))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!95027 0))(
  ( (array!95028 (arr!45875 (Array (_ BitVec 32) (_ BitVec 64))) (size!46426 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95027)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1389707 (= res!929978 (and (= (size!46426 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46426 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46426 a!2901)) (not (= i!1037 j!112))))))

(declare-fun res!929982 () Bool)

(assert (=> start!119172 (=> (not res!929982) (not e!787142))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119172 (= res!929982 (validMask!0 mask!2840))))

(assert (=> start!119172 e!787142))

(assert (=> start!119172 true))

(declare-fun array_inv!34820 (array!95027) Bool)

(assert (=> start!119172 (array_inv!34820 a!2901)))

(declare-fun b!1389708 () Bool)

(assert (=> b!1389708 (= e!787142 (not true))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95027 (_ BitVec 32)) Bool)

(assert (=> b!1389708 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840)))

(declare-datatypes ((Unit!46382 0))(
  ( (Unit!46383) )
))
(declare-fun lt!610569 () Unit!46382)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95027 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46382)

(assert (=> b!1389708 (= lt!610569 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-datatypes ((SeekEntryResult!10214 0))(
  ( (MissingZero!10214 (index!43226 (_ BitVec 32))) (Found!10214 (index!43227 (_ BitVec 32))) (Intermediate!10214 (undefined!11026 Bool) (index!43228 (_ BitVec 32)) (x!124919 (_ BitVec 32))) (Undefined!10214) (MissingVacant!10214 (index!43229 (_ BitVec 32))) )
))
(declare-fun lt!610570 () SeekEntryResult!10214)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95027 (_ BitVec 32)) SeekEntryResult!10214)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1389708 (= lt!610570 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45875 a!2901) j!112) mask!2840) (select (arr!45875 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1389709 () Bool)

(declare-fun res!929977 () Bool)

(assert (=> b!1389709 (=> (not res!929977) (not e!787142))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1389709 (= res!929977 (validKeyInArray!0 (select (arr!45875 a!2901) j!112)))))

(declare-fun b!1389710 () Bool)

(declare-fun res!929981 () Bool)

(assert (=> b!1389710 (=> (not res!929981) (not e!787142))))

(declare-datatypes ((List!32574 0))(
  ( (Nil!32571) (Cons!32570 (h!33788 (_ BitVec 64)) (t!47275 List!32574)) )
))
(declare-fun arrayNoDuplicates!0 (array!95027 (_ BitVec 32) List!32574) Bool)

(assert (=> b!1389710 (= res!929981 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32571))))

(declare-fun b!1389711 () Bool)

(declare-fun res!929979 () Bool)

(assert (=> b!1389711 (=> (not res!929979) (not e!787142))))

(assert (=> b!1389711 (= res!929979 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1389712 () Bool)

(declare-fun res!929980 () Bool)

(assert (=> b!1389712 (=> (not res!929980) (not e!787142))))

(assert (=> b!1389712 (= res!929980 (validKeyInArray!0 (select (arr!45875 a!2901) i!1037)))))

(assert (= (and start!119172 res!929982) b!1389707))

(assert (= (and b!1389707 res!929978) b!1389712))

(assert (= (and b!1389712 res!929980) b!1389709))

(assert (= (and b!1389709 res!929977) b!1389711))

(assert (= (and b!1389711 res!929979) b!1389710))

(assert (= (and b!1389710 res!929981) b!1389708))

(declare-fun m!1275443 () Bool)

(assert (=> start!119172 m!1275443))

(declare-fun m!1275445 () Bool)

(assert (=> start!119172 m!1275445))

(declare-fun m!1275447 () Bool)

(assert (=> b!1389712 m!1275447))

(assert (=> b!1389712 m!1275447))

(declare-fun m!1275449 () Bool)

(assert (=> b!1389712 m!1275449))

(declare-fun m!1275451 () Bool)

(assert (=> b!1389711 m!1275451))

(declare-fun m!1275453 () Bool)

(assert (=> b!1389710 m!1275453))

(declare-fun m!1275455 () Bool)

(assert (=> b!1389708 m!1275455))

(declare-fun m!1275457 () Bool)

(assert (=> b!1389708 m!1275457))

(assert (=> b!1389708 m!1275455))

(declare-fun m!1275459 () Bool)

(assert (=> b!1389708 m!1275459))

(assert (=> b!1389708 m!1275457))

(assert (=> b!1389708 m!1275455))

(declare-fun m!1275461 () Bool)

(assert (=> b!1389708 m!1275461))

(declare-fun m!1275463 () Bool)

(assert (=> b!1389708 m!1275463))

(assert (=> b!1389709 m!1275455))

(assert (=> b!1389709 m!1275455))

(declare-fun m!1275465 () Bool)

(assert (=> b!1389709 m!1275465))

(check-sat (not b!1389710) (not b!1389712) (not b!1389711) (not b!1389709) (not b!1389708) (not start!119172))

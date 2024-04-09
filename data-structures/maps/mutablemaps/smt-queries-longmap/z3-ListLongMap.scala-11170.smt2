; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!130596 () Bool)

(assert start!130596)

(declare-fun b!1532241 () Bool)

(declare-fun res!1049522 () Bool)

(declare-fun e!853744 () Bool)

(assert (=> b!1532241 (=> (not res!1049522) (not e!853744))))

(declare-datatypes ((array!101702 0))(
  ( (array!101703 (arr!49067 (Array (_ BitVec 32) (_ BitVec 64))) (size!49618 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!101702)

(declare-fun j!64 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1532241 (= res!1049522 (validKeyInArray!0 (select (arr!49067 a!2792) j!64)))))

(declare-fun b!1532242 () Bool)

(declare-fun res!1049520 () Bool)

(assert (=> b!1532242 (=> (not res!1049520) (not e!853744))))

(declare-fun i!951 () (_ BitVec 32))

(assert (=> b!1532242 (= res!1049520 (validKeyInArray!0 (select (arr!49067 a!2792) i!951)))))

(declare-fun b!1532243 () Bool)

(declare-fun res!1049523 () Bool)

(assert (=> b!1532243 (=> (not res!1049523) (not e!853744))))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101702 (_ BitVec 32)) Bool)

(assert (=> b!1532243 (= res!1049523 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun res!1049521 () Bool)

(assert (=> start!130596 (=> (not res!1049521) (not e!853744))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130596 (= res!1049521 (validMask!0 mask!2480))))

(assert (=> start!130596 e!853744))

(assert (=> start!130596 true))

(declare-fun array_inv!38012 (array!101702) Bool)

(assert (=> start!130596 (array_inv!38012 a!2792)))

(declare-fun b!1532244 () Bool)

(declare-fun res!1049519 () Bool)

(assert (=> b!1532244 (=> (not res!1049519) (not e!853744))))

(assert (=> b!1532244 (= res!1049519 (and (= (size!49618 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49618 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49618 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1532245 () Bool)

(assert (=> b!1532245 (= e!853744 (bvsgt #b00000000000000000000000000000000 (size!49618 a!2792)))))

(assert (= (and start!130596 res!1049521) b!1532244))

(assert (= (and b!1532244 res!1049519) b!1532242))

(assert (= (and b!1532242 res!1049520) b!1532241))

(assert (= (and b!1532241 res!1049522) b!1532243))

(assert (= (and b!1532243 res!1049523) b!1532245))

(declare-fun m!1415021 () Bool)

(assert (=> b!1532241 m!1415021))

(assert (=> b!1532241 m!1415021))

(declare-fun m!1415023 () Bool)

(assert (=> b!1532241 m!1415023))

(declare-fun m!1415025 () Bool)

(assert (=> b!1532242 m!1415025))

(assert (=> b!1532242 m!1415025))

(declare-fun m!1415027 () Bool)

(assert (=> b!1532242 m!1415027))

(declare-fun m!1415029 () Bool)

(assert (=> b!1532243 m!1415029))

(declare-fun m!1415031 () Bool)

(assert (=> start!130596 m!1415031))

(declare-fun m!1415033 () Bool)

(assert (=> start!130596 m!1415033))

(check-sat (not b!1532242) (not b!1532243) (not b!1532241) (not start!130596))
(check-sat)

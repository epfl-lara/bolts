; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130720 () Bool)

(assert start!130720)

(declare-fun b!1532709 () Bool)

(declare-fun res!1049937 () Bool)

(declare-fun e!853997 () Bool)

(assert (=> b!1532709 (=> (not res!1049937) (not e!853997))))

(declare-datatypes ((array!101745 0))(
  ( (array!101746 (arr!49084 (Array (_ BitVec 32) (_ BitVec 64))) (size!49635 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!101745)

(declare-fun j!64 () (_ BitVec 32))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun i!951 () (_ BitVec 32))

(assert (=> b!1532709 (= res!1049937 (and (= (size!49635 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49635 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49635 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1532710 () Bool)

(declare-fun res!1049933 () Bool)

(assert (=> b!1532710 (=> (not res!1049933) (not e!853997))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1532710 (= res!1049933 (validKeyInArray!0 (select (arr!49084 a!2792) i!951)))))

(declare-fun b!1532711 () Bool)

(declare-fun res!1049935 () Bool)

(assert (=> b!1532711 (=> (not res!1049935) (not e!853997))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101745 (_ BitVec 32)) Bool)

(assert (=> b!1532711 (= res!1049935 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun res!1049934 () Bool)

(assert (=> start!130720 (=> (not res!1049934) (not e!853997))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130720 (= res!1049934 (validMask!0 mask!2480))))

(assert (=> start!130720 e!853997))

(assert (=> start!130720 true))

(declare-fun array_inv!38029 (array!101745) Bool)

(assert (=> start!130720 (array_inv!38029 a!2792)))

(declare-fun b!1532712 () Bool)

(declare-fun res!1049936 () Bool)

(assert (=> b!1532712 (=> (not res!1049936) (not e!853997))))

(assert (=> b!1532712 (= res!1049936 (validKeyInArray!0 (select (arr!49084 a!2792) j!64)))))

(declare-fun b!1532713 () Bool)

(assert (=> b!1532713 (= e!853997 false)))

(declare-fun lt!663664 () Bool)

(declare-datatypes ((List!35738 0))(
  ( (Nil!35735) (Cons!35734 (h!37180 (_ BitVec 64)) (t!50439 List!35738)) )
))
(declare-fun arrayNoDuplicates!0 (array!101745 (_ BitVec 32) List!35738) Bool)

(assert (=> b!1532713 (= lt!663664 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35735))))

(assert (= (and start!130720 res!1049934) b!1532709))

(assert (= (and b!1532709 res!1049937) b!1532710))

(assert (= (and b!1532710 res!1049933) b!1532712))

(assert (= (and b!1532712 res!1049936) b!1532711))

(assert (= (and b!1532711 res!1049935) b!1532713))

(declare-fun m!1415463 () Bool)

(assert (=> b!1532712 m!1415463))

(assert (=> b!1532712 m!1415463))

(declare-fun m!1415465 () Bool)

(assert (=> b!1532712 m!1415465))

(declare-fun m!1415467 () Bool)

(assert (=> b!1532710 m!1415467))

(assert (=> b!1532710 m!1415467))

(declare-fun m!1415469 () Bool)

(assert (=> b!1532710 m!1415469))

(declare-fun m!1415471 () Bool)

(assert (=> b!1532713 m!1415471))

(declare-fun m!1415473 () Bool)

(assert (=> start!130720 m!1415473))

(declare-fun m!1415475 () Bool)

(assert (=> start!130720 m!1415475))

(declare-fun m!1415477 () Bool)

(assert (=> b!1532711 m!1415477))

(push 1)

(assert (not b!1532710))

(assert (not start!130720))

(assert (not b!1532711))

(assert (not b!1532712))

(assert (not b!1532713))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


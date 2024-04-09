; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130592 () Bool)

(assert start!130592)

(declare-fun b!1532213 () Bool)

(declare-fun res!1049492 () Bool)

(declare-fun e!853732 () Bool)

(assert (=> b!1532213 (=> (not res!1049492) (not e!853732))))

(declare-datatypes ((array!101698 0))(
  ( (array!101699 (arr!49065 (Array (_ BitVec 32) (_ BitVec 64))) (size!49616 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!101698)

(declare-fun i!951 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1532213 (= res!1049492 (validKeyInArray!0 (select (arr!49065 a!2792) i!951)))))

(declare-fun b!1532212 () Bool)

(declare-fun res!1049493 () Bool)

(assert (=> b!1532212 (=> (not res!1049493) (not e!853732))))

(declare-fun j!64 () (_ BitVec 32))

(declare-fun mask!2480 () (_ BitVec 32))

(assert (=> b!1532212 (= res!1049493 (and (= (size!49616 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49616 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49616 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1532214 () Bool)

(declare-fun res!1049490 () Bool)

(assert (=> b!1532214 (=> (not res!1049490) (not e!853732))))

(assert (=> b!1532214 (= res!1049490 (validKeyInArray!0 (select (arr!49065 a!2792) j!64)))))

(declare-fun b!1532215 () Bool)

(assert (=> b!1532215 (= e!853732 (bvsgt #b00000000000000000000000000000000 (size!49616 a!2792)))))

(declare-fun res!1049491 () Bool)

(assert (=> start!130592 (=> (not res!1049491) (not e!853732))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130592 (= res!1049491 (validMask!0 mask!2480))))

(assert (=> start!130592 e!853732))

(assert (=> start!130592 true))

(declare-fun array_inv!38010 (array!101698) Bool)

(assert (=> start!130592 (array_inv!38010 a!2792)))

(assert (= (and start!130592 res!1049491) b!1532212))

(assert (= (and b!1532212 res!1049493) b!1532213))

(assert (= (and b!1532213 res!1049492) b!1532214))

(assert (= (and b!1532214 res!1049490) b!1532215))

(declare-fun m!1414995 () Bool)

(assert (=> b!1532213 m!1414995))

(assert (=> b!1532213 m!1414995))

(declare-fun m!1414997 () Bool)

(assert (=> b!1532213 m!1414997))

(declare-fun m!1414999 () Bool)

(assert (=> b!1532214 m!1414999))

(assert (=> b!1532214 m!1414999))

(declare-fun m!1415001 () Bool)

(assert (=> b!1532214 m!1415001))

(declare-fun m!1415003 () Bool)

(assert (=> start!130592 m!1415003))

(declare-fun m!1415005 () Bool)

(assert (=> start!130592 m!1415005))

(push 1)

(assert (not start!130592))

(assert (not b!1532213))

(assert (not b!1532214))

(check-sat)

(pop 1)

(push 1)

(check-sat)


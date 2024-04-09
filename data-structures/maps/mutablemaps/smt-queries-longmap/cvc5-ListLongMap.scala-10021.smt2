; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118270 () Bool)

(assert start!118270)

(declare-fun b!1383030 () Bool)

(declare-fun res!924731 () Bool)

(declare-fun e!783922 () Bool)

(assert (=> b!1383030 (=> (not res!924731) (not e!783922))))

(declare-datatypes ((array!94491 0))(
  ( (array!94492 (arr!45619 (Array (_ BitVec 32) (_ BitVec 64))) (size!46170 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94491)

(declare-datatypes ((List!32327 0))(
  ( (Nil!32324) (Cons!32323 (h!33532 (_ BitVec 64)) (t!47028 List!32327)) )
))
(declare-fun arrayNoDuplicates!0 (array!94491 (_ BitVec 32) List!32327) Bool)

(assert (=> b!1383030 (= res!924731 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32324))))

(declare-fun res!924729 () Bool)

(assert (=> start!118270 (=> (not res!924729) (not e!783922))))

(declare-fun mask!2987 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118270 (= res!924729 (validMask!0 mask!2987))))

(assert (=> start!118270 e!783922))

(assert (=> start!118270 true))

(declare-fun array_inv!34564 (array!94491) Bool)

(assert (=> start!118270 (array_inv!34564 a!2938)))

(declare-fun b!1383031 () Bool)

(assert (=> b!1383031 (= e!783922 false)))

(declare-fun lt!608473 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94491 (_ BitVec 32)) Bool)

(assert (=> b!1383031 (= lt!608473 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun b!1383029 () Bool)

(declare-fun res!924732 () Bool)

(assert (=> b!1383029 (=> (not res!924732) (not e!783922))))

(declare-fun i!1065 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1383029 (= res!924732 (validKeyInArray!0 (select (arr!45619 a!2938) i!1065)))))

(declare-fun b!1383028 () Bool)

(declare-fun res!924730 () Bool)

(assert (=> b!1383028 (=> (not res!924730) (not e!783922))))

(declare-fun startIndex!16 () (_ BitVec 32))

(assert (=> b!1383028 (= res!924730 (and (= (size!46170 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46170 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46170 a!2938))))))

(assert (= (and start!118270 res!924729) b!1383028))

(assert (= (and b!1383028 res!924730) b!1383029))

(assert (= (and b!1383029 res!924732) b!1383030))

(assert (= (and b!1383030 res!924731) b!1383031))

(declare-fun m!1268189 () Bool)

(assert (=> b!1383030 m!1268189))

(declare-fun m!1268191 () Bool)

(assert (=> start!118270 m!1268191))

(declare-fun m!1268193 () Bool)

(assert (=> start!118270 m!1268193))

(declare-fun m!1268195 () Bool)

(assert (=> b!1383031 m!1268195))

(declare-fun m!1268197 () Bool)

(assert (=> b!1383029 m!1268197))

(assert (=> b!1383029 m!1268197))

(declare-fun m!1268199 () Bool)

(assert (=> b!1383029 m!1268199))

(push 1)

(assert (not start!118270))

(assert (not b!1383030))

(assert (not b!1383031))

(assert (not b!1383029))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


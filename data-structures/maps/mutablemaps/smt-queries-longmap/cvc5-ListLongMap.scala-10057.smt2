; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118516 () Bool)

(assert start!118516)

(declare-fun b!1385359 () Bool)

(declare-fun res!926719 () Bool)

(declare-fun e!784976 () Bool)

(assert (=> b!1385359 (=> (not res!926719) (not e!784976))))

(declare-fun i!1065 () (_ BitVec 32))

(declare-datatypes ((array!94710 0))(
  ( (array!94711 (arr!45727 (Array (_ BitVec 32) (_ BitVec 64))) (size!46278 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94710)

(declare-fun startIndex!16 () (_ BitVec 32))

(declare-fun mask!2987 () (_ BitVec 32))

(assert (=> b!1385359 (= res!926719 (and (= (size!46278 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46278 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46278 a!2938))))))

(declare-fun res!926720 () Bool)

(assert (=> start!118516 (=> (not res!926720) (not e!784976))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118516 (= res!926720 (validMask!0 mask!2987))))

(assert (=> start!118516 e!784976))

(assert (=> start!118516 true))

(declare-fun array_inv!34672 (array!94710) Bool)

(assert (=> start!118516 (array_inv!34672 a!2938)))

(declare-fun b!1385360 () Bool)

(declare-fun res!926721 () Bool)

(assert (=> b!1385360 (=> (not res!926721) (not e!784976))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1385360 (= res!926721 (validKeyInArray!0 (select (arr!45727 a!2938) i!1065)))))

(declare-fun b!1385362 () Bool)

(assert (=> b!1385362 (= e!784976 false)))

(declare-fun lt!609184 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94710 (_ BitVec 32)) Bool)

(assert (=> b!1385362 (= lt!609184 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun b!1385361 () Bool)

(declare-fun res!926718 () Bool)

(assert (=> b!1385361 (=> (not res!926718) (not e!784976))))

(declare-datatypes ((List!32435 0))(
  ( (Nil!32432) (Cons!32431 (h!33640 (_ BitVec 64)) (t!47136 List!32435)) )
))
(declare-fun arrayNoDuplicates!0 (array!94710 (_ BitVec 32) List!32435) Bool)

(assert (=> b!1385361 (= res!926718 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32432))))

(assert (= (and start!118516 res!926720) b!1385359))

(assert (= (and b!1385359 res!926719) b!1385360))

(assert (= (and b!1385360 res!926721) b!1385361))

(assert (= (and b!1385361 res!926718) b!1385362))

(declare-fun m!1270709 () Bool)

(assert (=> start!118516 m!1270709))

(declare-fun m!1270711 () Bool)

(assert (=> start!118516 m!1270711))

(declare-fun m!1270713 () Bool)

(assert (=> b!1385360 m!1270713))

(assert (=> b!1385360 m!1270713))

(declare-fun m!1270715 () Bool)

(assert (=> b!1385360 m!1270715))

(declare-fun m!1270717 () Bool)

(assert (=> b!1385362 m!1270717))

(declare-fun m!1270719 () Bool)

(assert (=> b!1385361 m!1270719))

(push 1)

(assert (not b!1385361))

(assert (not start!118516))

(assert (not b!1385362))

(assert (not b!1385360))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


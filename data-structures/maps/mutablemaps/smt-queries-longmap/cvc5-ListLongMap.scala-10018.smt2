; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118252 () Bool)

(assert start!118252)

(declare-fun b!1382921 () Bool)

(declare-fun res!924622 () Bool)

(declare-fun e!783869 () Bool)

(assert (=> b!1382921 (=> (not res!924622) (not e!783869))))

(declare-datatypes ((array!94473 0))(
  ( (array!94474 (arr!45610 (Array (_ BitVec 32) (_ BitVec 64))) (size!46161 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94473)

(declare-fun i!1065 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1382921 (= res!924622 (validKeyInArray!0 (select (arr!45610 a!2938) i!1065)))))

(declare-fun b!1382920 () Bool)

(declare-fun res!924621 () Bool)

(assert (=> b!1382920 (=> (not res!924621) (not e!783869))))

(declare-fun startIndex!16 () (_ BitVec 32))

(declare-fun mask!2987 () (_ BitVec 32))

(assert (=> b!1382920 (= res!924621 (and (= (size!46161 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46161 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46161 a!2938))))))

(declare-fun b!1382923 () Bool)

(assert (=> b!1382923 (= e!783869 (bvsgt #b00000000000000000000000000000000 (size!46161 a!2938)))))

(declare-fun b!1382922 () Bool)

(declare-fun res!924623 () Bool)

(assert (=> b!1382922 (=> (not res!924623) (not e!783869))))

(declare-datatypes ((List!32318 0))(
  ( (Nil!32315) (Cons!32314 (h!33523 (_ BitVec 64)) (t!47019 List!32318)) )
))
(declare-fun arrayNoDuplicates!0 (array!94473 (_ BitVec 32) List!32318) Bool)

(assert (=> b!1382922 (= res!924623 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32315))))

(declare-fun res!924624 () Bool)

(assert (=> start!118252 (=> (not res!924624) (not e!783869))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118252 (= res!924624 (validMask!0 mask!2987))))

(assert (=> start!118252 e!783869))

(assert (=> start!118252 true))

(declare-fun array_inv!34555 (array!94473) Bool)

(assert (=> start!118252 (array_inv!34555 a!2938)))

(assert (= (and start!118252 res!924624) b!1382920))

(assert (= (and b!1382920 res!924621) b!1382921))

(assert (= (and b!1382921 res!924622) b!1382922))

(assert (= (and b!1382922 res!924623) b!1382923))

(declare-fun m!1268087 () Bool)

(assert (=> b!1382921 m!1268087))

(assert (=> b!1382921 m!1268087))

(declare-fun m!1268089 () Bool)

(assert (=> b!1382921 m!1268089))

(declare-fun m!1268091 () Bool)

(assert (=> b!1382922 m!1268091))

(declare-fun m!1268093 () Bool)

(assert (=> start!118252 m!1268093))

(declare-fun m!1268095 () Bool)

(assert (=> start!118252 m!1268095))

(push 1)

(assert (not start!118252))

(assert (not b!1382921))

(assert (not b!1382922))

(check-sat)


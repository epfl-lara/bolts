; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101298 () Bool)

(assert start!101298)

(declare-fun b_free!26185 () Bool)

(declare-fun b_next!26185 () Bool)

(assert (=> start!101298 (= b_free!26185 (not b_next!26185))))

(declare-fun tp!91577 () Bool)

(declare-fun b_and!43497 () Bool)

(assert (=> start!101298 (= tp!91577 b_and!43497)))

(declare-fun b!1216270 () Bool)

(declare-fun e!690578 () Bool)

(declare-fun tp_is_empty!30889 () Bool)

(assert (=> b!1216270 (= e!690578 tp_is_empty!30889)))

(declare-fun b!1216271 () Bool)

(declare-fun res!807734 () Bool)

(declare-fun e!690577 () Bool)

(assert (=> b!1216271 (=> (not res!807734) (not e!690577))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1216271 (= res!807734 (validKeyInArray!0 k!934))))

(declare-fun b!1216272 () Bool)

(declare-fun res!807731 () Bool)

(assert (=> b!1216272 (=> (not res!807731) (not e!690577))))

(declare-datatypes ((array!78526 0))(
  ( (array!78527 (arr!37894 (Array (_ BitVec 32) (_ BitVec 64))) (size!38431 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!78526)

(declare-datatypes ((List!26887 0))(
  ( (Nil!26884) (Cons!26883 (h!28092 (_ BitVec 64)) (t!40059 List!26887)) )
))
(declare-fun arrayNoDuplicates!0 (array!78526 (_ BitVec 32) List!26887) Bool)

(assert (=> b!1216272 (= res!807731 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26884))))

(declare-fun b!1216273 () Bool)

(declare-fun res!807735 () Bool)

(assert (=> b!1216273 (=> (not res!807735) (not e!690577))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1216273 (= res!807735 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38431 _keys!1208))))))

(declare-fun b!1216274 () Bool)

(declare-fun res!807727 () Bool)

(assert (=> b!1216274 (=> (not res!807727) (not e!690577))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1216274 (= res!807727 (validMask!0 mask!1564))))

(declare-fun res!807732 () Bool)

(assert (=> start!101298 (=> (not res!807732) (not e!690577))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!101298 (= res!807732 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38431 _keys!1208))))))

(assert (=> start!101298 e!690577))

(assert (=> start!101298 tp_is_empty!30889))

(declare-fun array_inv!28754 (array!78526) Bool)

(assert (=> start!101298 (array_inv!28754 _keys!1208)))

(assert (=> start!101298 true))

(assert (=> start!101298 tp!91577))

(declare-datatypes ((V!46313 0))(
  ( (V!46314 (val!15501 Int)) )
))
(declare-datatypes ((ValueCell!14735 0))(
  ( (ValueCellFull!14735 (v!18155 V!46313)) (EmptyCell!14735) )
))
(declare-datatypes ((array!78528 0))(
  ( (array!78529 (arr!37895 (Array (_ BitVec 32) ValueCell!14735)) (size!38432 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78528)

(declare-fun e!690576 () Bool)

(declare-fun array_inv!28755 (array!78528) Bool)

(assert (=> start!101298 (and (array_inv!28755 _values!996) e!690576)))

(declare-fun b!1216275 () Bool)

(declare-fun e!690575 () Bool)

(declare-fun mapRes!48208 () Bool)

(assert (=> b!1216275 (= e!690576 (and e!690575 mapRes!48208))))

(declare-fun condMapEmpty!48208 () Bool)

(declare-fun mapDefault!48208 () ValueCell!14735)


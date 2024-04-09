; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110974 () Bool)

(assert start!110974)

(declare-fun b_free!29773 () Bool)

(declare-fun b_next!29773 () Bool)

(assert (=> start!110974 (= b_free!29773 (not b_next!29773))))

(declare-fun tp!104641 () Bool)

(declare-fun b_and!47991 () Bool)

(assert (=> start!110974 (= tp!104641 b_and!47991)))

(declare-fun b!1313313 () Bool)

(declare-fun res!872002 () Bool)

(declare-fun e!749133 () Bool)

(assert (=> b!1313313 (=> (not res!872002) (not e!749133))))

(declare-datatypes ((array!87951 0))(
  ( (array!87952 (arr!42451 (Array (_ BitVec 32) (_ BitVec 64))) (size!43002 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87951)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!87951 (_ BitVec 32)) Bool)

(assert (=> b!1313313 (= res!872002 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun res!872003 () Bool)

(assert (=> start!110974 (=> (not res!872003) (not e!749133))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110974 (= res!872003 (validMask!0 mask!2040))))

(assert (=> start!110974 e!749133))

(assert (=> start!110974 tp!104641))

(declare-fun array_inv!32049 (array!87951) Bool)

(assert (=> start!110974 (array_inv!32049 _keys!1628)))

(assert (=> start!110974 true))

(declare-fun tp_is_empty!35503 () Bool)

(assert (=> start!110974 tp_is_empty!35503))

(declare-datatypes ((V!52441 0))(
  ( (V!52442 (val!17826 Int)) )
))
(declare-datatypes ((ValueCell!16853 0))(
  ( (ValueCellFull!16853 (v!20451 V!52441)) (EmptyCell!16853) )
))
(declare-datatypes ((array!87953 0))(
  ( (array!87954 (arr!42452 (Array (_ BitVec 32) ValueCell!16853)) (size!43003 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87953)

(declare-fun e!749131 () Bool)

(declare-fun array_inv!32050 (array!87953) Bool)

(assert (=> start!110974 (and (array_inv!32050 _values!1354) e!749131)))

(declare-fun b!1313314 () Bool)

(declare-fun res!872001 () Bool)

(assert (=> b!1313314 (=> (not res!872001) (not e!749133))))

(declare-fun k!1175 () (_ BitVec 64))

(declare-fun from!2020 () (_ BitVec 32))

(assert (=> b!1313314 (= res!872001 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!43002 _keys!1628)) (not (= k!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1313315 () Bool)

(declare-fun e!749132 () Bool)

(assert (=> b!1313315 (= e!749132 tp_is_empty!35503)))

(declare-fun mapNonEmpty!54883 () Bool)

(declare-fun mapRes!54883 () Bool)

(declare-fun tp!104642 () Bool)

(declare-fun e!749134 () Bool)

(assert (=> mapNonEmpty!54883 (= mapRes!54883 (and tp!104642 e!749134))))

(declare-fun mapRest!54883 () (Array (_ BitVec 32) ValueCell!16853))

(declare-fun mapKey!54883 () (_ BitVec 32))

(declare-fun mapValue!54883 () ValueCell!16853)

(assert (=> mapNonEmpty!54883 (= (arr!42452 _values!1354) (store mapRest!54883 mapKey!54883 mapValue!54883))))

(declare-fun b!1313316 () Bool)

(declare-fun res!871999 () Bool)

(assert (=> b!1313316 (=> (not res!871999) (not e!749133))))

(declare-datatypes ((List!30318 0))(
  ( (Nil!30315) (Cons!30314 (h!31523 (_ BitVec 64)) (t!43931 List!30318)) )
))
(declare-fun arrayNoDuplicates!0 (array!87951 (_ BitVec 32) List!30318) Bool)

(assert (=> b!1313316 (= res!871999 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30315))))

(declare-fun b!1313317 () Bool)

(declare-fun res!872000 () Bool)

(assert (=> b!1313317 (=> (not res!872000) (not e!749133))))

(declare-fun extraKeys!1275 () (_ BitVec 32))

(assert (=> b!1313317 (= res!872000 (and (= (size!43003 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!43002 _keys!1628) (size!43003 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun b!1313318 () Bool)

(assert (=> b!1313318 (= e!749131 (and e!749132 mapRes!54883))))

(declare-fun condMapEmpty!54883 () Bool)

(declare-fun mapDefault!54883 () ValueCell!16853)


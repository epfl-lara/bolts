; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!864 () Bool)

(assert start!864)

(declare-fun b_free!257 () Bool)

(declare-fun b_next!257 () Bool)

(assert (=> start!864 (= b_free!257 (not b_next!257))))

(declare-fun tp!1001 () Bool)

(declare-fun b_and!403 () Bool)

(assert (=> start!864 (= tp!1001 b_and!403)))

(declare-fun b!7183 () Bool)

(declare-fun e!3972 () Bool)

(declare-fun k!1278 () (_ BitVec 64))

(declare-fun extraKeys!1413 () (_ BitVec 32))

(assert (=> b!7183 (= e!3972 (ite (= k!1278 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1413 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1413 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun res!7285 () Bool)

(declare-fun e!3976 () Bool)

(assert (=> start!864 (=> (not res!7285) (not e!3976))))

(declare-fun mask!2250 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!864 (= res!7285 (validMask!0 mask!2250))))

(assert (=> start!864 e!3976))

(assert (=> start!864 tp!1001))

(assert (=> start!864 true))

(declare-datatypes ((V!623 0))(
  ( (V!624 (val!173 Int)) )
))
(declare-datatypes ((ValueCell!151 0))(
  ( (ValueCellFull!151 (v!1264 V!623)) (EmptyCell!151) )
))
(declare-datatypes ((array!603 0))(
  ( (array!604 (arr!290 (Array (_ BitVec 32) ValueCell!151)) (size!352 (_ BitVec 32))) )
))
(declare-fun _values!1492 () array!603)

(declare-fun e!3977 () Bool)

(declare-fun array_inv!213 (array!603) Bool)

(assert (=> start!864 (and (array_inv!213 _values!1492) e!3977)))

(declare-fun tp_is_empty!335 () Bool)

(assert (=> start!864 tp_is_empty!335))

(declare-datatypes ((array!605 0))(
  ( (array!606 (arr!291 (Array (_ BitVec 32) (_ BitVec 64))) (size!353 (_ BitVec 32))) )
))
(declare-fun _keys!1806 () array!605)

(declare-fun array_inv!214 (array!605) Bool)

(assert (=> start!864 (array_inv!214 _keys!1806)))

(declare-fun mapNonEmpty!473 () Bool)

(declare-fun mapRes!473 () Bool)

(declare-fun tp!1000 () Bool)

(declare-fun e!3974 () Bool)

(assert (=> mapNonEmpty!473 (= mapRes!473 (and tp!1000 e!3974))))

(declare-fun mapRest!473 () (Array (_ BitVec 32) ValueCell!151))

(declare-fun mapValue!473 () ValueCell!151)

(declare-fun mapKey!473 () (_ BitVec 32))

(assert (=> mapNonEmpty!473 (= (arr!290 _values!1492) (store mapRest!473 mapKey!473 mapValue!473))))

(declare-fun b!7184 () Bool)

(declare-fun res!7280 () Bool)

(assert (=> b!7184 (=> (not res!7280) (not e!3976))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!7184 (= res!7280 (validKeyInArray!0 k!1278))))

(declare-fun b!7185 () Bool)

(declare-fun res!7284 () Bool)

(assert (=> b!7185 (=> (not res!7284) (not e!3976))))

(declare-fun defaultEntry!1495 () Int)

(declare-fun minValue!1434 () V!623)

(declare-fun zeroValue!1434 () V!623)

(declare-datatypes ((tuple2!178 0))(
  ( (tuple2!179 (_1!89 (_ BitVec 64)) (_2!89 V!623)) )
))
(declare-datatypes ((List!195 0))(
  ( (Nil!192) (Cons!191 (h!757 tuple2!178) (t!2330 List!195)) )
))
(declare-datatypes ((ListLongMap!183 0))(
  ( (ListLongMap!184 (toList!107 List!195)) )
))
(declare-fun contains!81 (ListLongMap!183 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!66 (array!605 array!603 (_ BitVec 32) (_ BitVec 32) V!623 V!623 (_ BitVec 32) Int) ListLongMap!183)

(assert (=> b!7185 (= res!7284 (contains!81 (getCurrentListMap!66 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495) k!1278))))

(declare-fun b!7186 () Bool)

(assert (=> b!7186 (= e!3974 tp_is_empty!335)))

(declare-fun b!7187 () Bool)

(declare-fun res!7281 () Bool)

(assert (=> b!7187 (=> (not res!7281) (not e!3976))))

(assert (=> b!7187 (= res!7281 (and (= (size!352 _values!1492) (bvadd #b00000000000000000000000000000001 mask!2250)) (= (size!353 _keys!1806) (size!352 _values!1492)) (bvsge mask!2250 #b00000000000000000000000000000000) (bvsge extraKeys!1413 #b00000000000000000000000000000000) (bvsle extraKeys!1413 #b00000000000000000000000000000011)))))

(declare-fun b!7188 () Bool)

(declare-fun res!7283 () Bool)

(assert (=> b!7188 (=> (not res!7283) (not e!3976))))

(declare-datatypes ((List!196 0))(
  ( (Nil!193) (Cons!192 (h!758 (_ BitVec 64)) (t!2331 List!196)) )
))
(declare-fun arrayNoDuplicates!0 (array!605 (_ BitVec 32) List!196) Bool)

(assert (=> b!7188 (= res!7283 (arrayNoDuplicates!0 _keys!1806 #b00000000000000000000000000000000 Nil!193))))

(declare-fun b!7189 () Bool)

(declare-fun res!7282 () Bool)

(assert (=> b!7189 (=> (not res!7282) (not e!3976))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!605 (_ BitVec 32)) Bool)

(assert (=> b!7189 (= res!7282 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1806 mask!2250))))

(declare-fun b!7190 () Bool)

(declare-fun arrayContainsKey!0 (array!605 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!7190 (= e!3972 (arrayContainsKey!0 _keys!1806 k!1278 #b00000000000000000000000000000000))))

(declare-fun b!7191 () Bool)

(declare-fun e!3973 () Bool)

(assert (=> b!7191 (= e!3973 tp_is_empty!335)))

(declare-fun b!7192 () Bool)

(assert (=> b!7192 (= e!3977 (and e!3973 mapRes!473))))

(declare-fun condMapEmpty!473 () Bool)

(declare-fun mapDefault!473 () ValueCell!151)


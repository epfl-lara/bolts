; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111202 () Bool)

(assert start!111202)

(declare-fun b_free!30001 () Bool)

(declare-fun b_next!30001 () Bool)

(assert (=> start!111202 (= b_free!30001 (not b_next!30001))))

(declare-fun tp!105325 () Bool)

(declare-fun b_and!48219 () Bool)

(assert (=> start!111202 (= tp!105325 b_and!48219)))

(declare-fun mapNonEmpty!55225 () Bool)

(declare-fun mapRes!55225 () Bool)

(declare-fun tp!105326 () Bool)

(declare-fun e!750843 () Bool)

(assert (=> mapNonEmpty!55225 (= mapRes!55225 (and tp!105326 e!750843))))

(declare-datatypes ((V!52745 0))(
  ( (V!52746 (val!17940 Int)) )
))
(declare-datatypes ((ValueCell!16967 0))(
  ( (ValueCellFull!16967 (v!20565 V!52745)) (EmptyCell!16967) )
))
(declare-fun mapRest!55225 () (Array (_ BitVec 32) ValueCell!16967))

(declare-fun mapKey!55225 () (_ BitVec 32))

(declare-fun mapValue!55225 () ValueCell!16967)

(declare-datatypes ((array!88379 0))(
  ( (array!88380 (arr!42665 (Array (_ BitVec 32) ValueCell!16967)) (size!43216 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!88379)

(assert (=> mapNonEmpty!55225 (= (arr!42665 _values!1354) (store mapRest!55225 mapKey!55225 mapValue!55225))))

(declare-fun b!1316163 () Bool)

(declare-fun e!750842 () Bool)

(declare-fun tp_is_empty!35731 () Bool)

(assert (=> b!1316163 (= e!750842 tp_is_empty!35731)))

(declare-fun b!1316164 () Bool)

(declare-fun res!873823 () Bool)

(declare-fun e!750844 () Bool)

(assert (=> b!1316164 (=> (not res!873823) (not e!750844))))

(declare-datatypes ((array!88381 0))(
  ( (array!88382 (arr!42666 (Array (_ BitVec 32) (_ BitVec 64))) (size!43217 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!88381)

(declare-fun from!2020 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1316164 (= res!873823 (not (validKeyInArray!0 (select (arr!42666 _keys!1628) from!2020))))))

(declare-fun b!1316165 () Bool)

(declare-fun res!873827 () Bool)

(assert (=> b!1316165 (=> (not res!873827) (not e!750844))))

(declare-fun k!1175 () (_ BitVec 64))

(assert (=> b!1316165 (= res!873827 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!43217 _keys!1628)) (not (= k!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1316166 () Bool)

(declare-fun res!873826 () Bool)

(assert (=> b!1316166 (=> (not res!873826) (not e!750844))))

(declare-fun defaultEntry!1357 () Int)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun minValue!1296 () V!52745)

(declare-fun zeroValue!1296 () V!52745)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(declare-datatypes ((tuple2!23294 0))(
  ( (tuple2!23295 (_1!11657 (_ BitVec 64)) (_2!11657 V!52745)) )
))
(declare-datatypes ((List!30462 0))(
  ( (Nil!30459) (Cons!30458 (h!31667 tuple2!23294) (t!44075 List!30462)) )
))
(declare-datatypes ((ListLongMap!20963 0))(
  ( (ListLongMap!20964 (toList!10497 List!30462)) )
))
(declare-fun contains!8583 (ListLongMap!20963 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5453 (array!88381 array!88379 (_ BitVec 32) (_ BitVec 32) V!52745 V!52745 (_ BitVec 32) Int) ListLongMap!20963)

(assert (=> b!1316166 (= res!873826 (contains!8583 (getCurrentListMap!5453 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k!1175))))

(declare-fun b!1316168 () Bool)

(declare-fun res!873828 () Bool)

(assert (=> b!1316168 (=> (not res!873828) (not e!750844))))

(declare-datatypes ((List!30463 0))(
  ( (Nil!30460) (Cons!30459 (h!31668 (_ BitVec 64)) (t!44076 List!30463)) )
))
(declare-fun arrayNoDuplicates!0 (array!88381 (_ BitVec 32) List!30463) Bool)

(assert (=> b!1316168 (= res!873828 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30460))))

(declare-fun b!1316169 () Bool)

(declare-fun res!873824 () Bool)

(assert (=> b!1316169 (=> (not res!873824) (not e!750844))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!88381 (_ BitVec 32)) Bool)

(assert (=> b!1316169 (= res!873824 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun b!1316170 () Bool)

(declare-fun e!750845 () Bool)

(assert (=> b!1316170 (= e!750845 (and e!750842 mapRes!55225))))

(declare-fun condMapEmpty!55225 () Bool)

(declare-fun mapDefault!55225 () ValueCell!16967)


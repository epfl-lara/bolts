; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113642 () Bool)

(assert start!113642)

(declare-fun b_free!31573 () Bool)

(declare-fun b_next!31573 () Bool)

(assert (=> start!113642 (= b_free!31573 (not b_next!31573))))

(declare-fun tp!110531 () Bool)

(declare-fun b_and!50941 () Bool)

(assert (=> start!113642 (= tp!110531 b_and!50941)))

(declare-fun b!1348562 () Bool)

(declare-fun res!894845 () Bool)

(declare-fun e!767193 () Bool)

(assert (=> b!1348562 (=> (not res!894845) (not e!767193))))

(declare-fun extraKeys!1224 () (_ BitVec 32))

(assert (=> b!1348562 (= res!894845 (= (bvand extraKeys!1224 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun mapNonEmpty!58073 () Bool)

(declare-fun mapRes!58073 () Bool)

(declare-fun tp!110532 () Bool)

(declare-fun e!767196 () Bool)

(assert (=> mapNonEmpty!58073 (= mapRes!58073 (and tp!110532 e!767196))))

(declare-datatypes ((V!55201 0))(
  ( (V!55202 (val!18861 Int)) )
))
(declare-datatypes ((ValueCell!17888 0))(
  ( (ValueCellFull!17888 (v!21511 V!55201)) (EmptyCell!17888) )
))
(declare-fun mapRest!58073 () (Array (_ BitVec 32) ValueCell!17888))

(declare-fun mapValue!58073 () ValueCell!17888)

(declare-fun mapKey!58073 () (_ BitVec 32))

(declare-datatypes ((array!91935 0))(
  ( (array!91936 (arr!44417 (Array (_ BitVec 32) ValueCell!17888)) (size!44968 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91935)

(assert (=> mapNonEmpty!58073 (= (arr!44417 _values!1303) (store mapRest!58073 mapKey!58073 mapValue!58073))))

(declare-fun b!1348563 () Bool)

(declare-fun res!894847 () Bool)

(assert (=> b!1348563 (=> (not res!894847) (not e!767193))))

(declare-fun minValue!1245 () V!55201)

(declare-fun mask!1977 () (_ BitVec 32))

(declare-datatypes ((array!91937 0))(
  ( (array!91938 (arr!44418 (Array (_ BitVec 32) (_ BitVec 64))) (size!44969 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91937)

(declare-fun from!1960 () (_ BitVec 32))

(declare-fun defaultEntry!1306 () Int)

(declare-fun k!1142 () (_ BitVec 64))

(declare-fun zeroValue!1245 () V!55201)

(declare-datatypes ((tuple2!24460 0))(
  ( (tuple2!24461 (_1!12240 (_ BitVec 64)) (_2!12240 V!55201)) )
))
(declare-datatypes ((List!31628 0))(
  ( (Nil!31625) (Cons!31624 (h!32833 tuple2!24460) (t!46275 List!31628)) )
))
(declare-datatypes ((ListLongMap!22129 0))(
  ( (ListLongMap!22130 (toList!11080 List!31628)) )
))
(declare-fun contains!9195 (ListLongMap!22129 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5970 (array!91937 array!91935 (_ BitVec 32) (_ BitVec 32) V!55201 V!55201 (_ BitVec 32) Int) ListLongMap!22129)

(assert (=> b!1348563 (= res!894847 (contains!9195 (getCurrentListMap!5970 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) k!1142))))

(declare-fun b!1348564 () Bool)

(declare-fun tp_is_empty!37573 () Bool)

(assert (=> b!1348564 (= e!767196 tp_is_empty!37573)))

(declare-fun mapIsEmpty!58073 () Bool)

(assert (=> mapIsEmpty!58073 mapRes!58073))

(declare-fun res!894848 () Bool)

(assert (=> start!113642 (=> (not res!894848) (not e!767193))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113642 (= res!894848 (validMask!0 mask!1977))))

(assert (=> start!113642 e!767193))

(assert (=> start!113642 tp_is_empty!37573))

(assert (=> start!113642 true))

(declare-fun array_inv!33369 (array!91937) Bool)

(assert (=> start!113642 (array_inv!33369 _keys!1571)))

(declare-fun e!767192 () Bool)

(declare-fun array_inv!33370 (array!91935) Bool)

(assert (=> start!113642 (and (array_inv!33370 _values!1303) e!767192)))

(assert (=> start!113642 tp!110531))

(declare-fun b!1348565 () Bool)

(declare-fun e!767194 () Bool)

(assert (=> b!1348565 (= e!767194 tp_is_empty!37573)))

(declare-fun b!1348566 () Bool)

(assert (=> b!1348566 (= e!767192 (and e!767194 mapRes!58073))))

(declare-fun condMapEmpty!58073 () Bool)

(declare-fun mapDefault!58073 () ValueCell!17888)


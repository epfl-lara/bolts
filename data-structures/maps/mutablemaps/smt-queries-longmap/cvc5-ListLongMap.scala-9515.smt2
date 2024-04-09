; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112966 () Bool)

(assert start!112966)

(declare-fun b!1338746 () Bool)

(declare-fun res!888264 () Bool)

(declare-fun e!762417 () Bool)

(assert (=> b!1338746 (=> (not res!888264) (not e!762417))))

(declare-datatypes ((array!90837 0))(
  ( (array!90838 (arr!43872 (Array (_ BitVec 32) (_ BitVec 64))) (size!44423 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!90837)

(assert (=> b!1338746 (= res!888264 (and (bvsle #b00000000000000000000000000000000 (size!44423 _keys!1571)) (bvslt (size!44423 _keys!1571) #b01111111111111111111111111111111)))))

(declare-fun b!1338747 () Bool)

(declare-fun e!762413 () Bool)

(declare-fun tp_is_empty!37003 () Bool)

(assert (=> b!1338747 (= e!762413 tp_is_empty!37003)))

(declare-fun b!1338748 () Bool)

(declare-fun res!888262 () Bool)

(assert (=> b!1338748 (=> (not res!888262) (not e!762417))))

(declare-fun mask!1977 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!90837 (_ BitVec 32)) Bool)

(assert (=> b!1338748 (= res!888262 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun mapNonEmpty!57205 () Bool)

(declare-fun mapRes!57205 () Bool)

(declare-fun tp!108905 () Bool)

(assert (=> mapNonEmpty!57205 (= mapRes!57205 (and tp!108905 e!762413))))

(declare-datatypes ((V!54441 0))(
  ( (V!54442 (val!18576 Int)) )
))
(declare-datatypes ((ValueCell!17603 0))(
  ( (ValueCellFull!17603 (v!21221 V!54441)) (EmptyCell!17603) )
))
(declare-fun mapValue!57205 () ValueCell!17603)

(declare-fun mapKey!57205 () (_ BitVec 32))

(declare-fun mapRest!57205 () (Array (_ BitVec 32) ValueCell!17603))

(declare-datatypes ((array!90839 0))(
  ( (array!90840 (arr!43873 (Array (_ BitVec 32) ValueCell!17603)) (size!44424 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!90839)

(assert (=> mapNonEmpty!57205 (= (arr!43873 _values!1303) (store mapRest!57205 mapKey!57205 mapValue!57205))))

(declare-fun res!888261 () Bool)

(assert (=> start!112966 (=> (not res!888261) (not e!762417))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112966 (= res!888261 (validMask!0 mask!1977))))

(assert (=> start!112966 e!762417))

(assert (=> start!112966 true))

(declare-fun e!762415 () Bool)

(declare-fun array_inv!33009 (array!90839) Bool)

(assert (=> start!112966 (and (array_inv!33009 _values!1303) e!762415)))

(declare-fun array_inv!33010 (array!90837) Bool)

(assert (=> start!112966 (array_inv!33010 _keys!1571)))

(declare-fun mapIsEmpty!57205 () Bool)

(assert (=> mapIsEmpty!57205 mapRes!57205))

(declare-fun b!1338749 () Bool)

(declare-fun e!762416 () Bool)

(assert (=> b!1338749 (= e!762416 tp_is_empty!37003)))

(declare-fun b!1338750 () Bool)

(declare-fun res!888263 () Bool)

(assert (=> b!1338750 (=> (not res!888263) (not e!762417))))

(declare-fun extraKeys!1224 () (_ BitVec 32))

(assert (=> b!1338750 (= res!888263 (and (= (size!44424 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44423 _keys!1571) (size!44424 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(declare-fun b!1338751 () Bool)

(assert (=> b!1338751 (= e!762415 (and e!762416 mapRes!57205))))

(declare-fun condMapEmpty!57205 () Bool)

(declare-fun mapDefault!57205 () ValueCell!17603)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!3872 () Bool)

(assert start!3872)

(declare-fun b_free!797 () Bool)

(declare-fun b_next!797 () Bool)

(assert (=> start!3872 (= b_free!797 (not b_next!797))))

(declare-fun tp!3807 () Bool)

(declare-fun b_and!1607 () Bool)

(assert (=> start!3872 (= tp!3807 b_and!1607)))

(declare-fun res!16140 () Bool)

(declare-fun e!17766 () Bool)

(assert (=> start!3872 (=> (not res!16140) (not e!17766))))

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!3872 (= res!16140 (validMask!0 mask!2294))))

(assert (=> start!3872 e!17766))

(assert (=> start!3872 true))

(assert (=> start!3872 tp!3807))

(declare-datatypes ((V!1359 0))(
  ( (V!1360 (val!602 Int)) )
))
(declare-datatypes ((ValueCell!376 0))(
  ( (ValueCellFull!376 (v!1690 V!1359)) (EmptyCell!376) )
))
(declare-datatypes ((array!1533 0))(
  ( (array!1534 (arr!721 (Array (_ BitVec 32) ValueCell!376)) (size!822 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!1533)

(declare-fun e!17765 () Bool)

(declare-fun array_inv!495 (array!1533) Bool)

(assert (=> start!3872 (and (array_inv!495 _values!1501) e!17765)))

(declare-datatypes ((array!1535 0))(
  ( (array!1536 (arr!722 (Array (_ BitVec 32) (_ BitVec 64))) (size!823 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!1535)

(declare-fun array_inv!496 (array!1535) Bool)

(assert (=> start!3872 (array_inv!496 _keys!1833)))

(declare-fun tp_is_empty!1151 () Bool)

(assert (=> start!3872 tp_is_empty!1151))

(declare-fun b!27268 () Bool)

(assert (=> b!27268 (= e!17766 (or (bvsge #b00000000000000000000000000000000 (size!823 _keys!1833)) (bvsge (size!823 _keys!1833) #b01111111111111111111111111111111)))))

(declare-fun b!27269 () Bool)

(declare-fun res!16135 () Bool)

(assert (=> b!27269 (=> (not res!16135) (not e!17766))))

(declare-datatypes ((List!611 0))(
  ( (Nil!608) (Cons!607 (h!1174 (_ BitVec 64)) (t!3304 List!611)) )
))
(declare-fun arrayNoDuplicates!0 (array!1535 (_ BitVec 32) List!611) Bool)

(assert (=> b!27269 (= res!16135 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!608))))

(declare-fun mapIsEmpty!1252 () Bool)

(declare-fun mapRes!1252 () Bool)

(assert (=> mapIsEmpty!1252 mapRes!1252))

(declare-fun b!27270 () Bool)

(declare-fun e!17767 () Bool)

(assert (=> b!27270 (= e!17767 tp_is_empty!1151)))

(declare-fun b!27271 () Bool)

(declare-fun res!16139 () Bool)

(assert (=> b!27271 (=> (not res!16139) (not e!17766))))

(declare-fun k!1304 () (_ BitVec 64))

(declare-fun extraKeys!1422 () (_ BitVec 32))

(declare-fun defaultEntry!1504 () Int)

(declare-fun zeroValue!1443 () V!1359)

(declare-fun minValue!1443 () V!1359)

(declare-datatypes ((tuple2!992 0))(
  ( (tuple2!993 (_1!506 (_ BitVec 64)) (_2!506 V!1359)) )
))
(declare-datatypes ((List!612 0))(
  ( (Nil!609) (Cons!608 (h!1175 tuple2!992) (t!3305 List!612)) )
))
(declare-datatypes ((ListLongMap!573 0))(
  ( (ListLongMap!574 (toList!302 List!612)) )
))
(declare-fun contains!238 (ListLongMap!573 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!130 (array!1535 array!1533 (_ BitVec 32) (_ BitVec 32) V!1359 V!1359 (_ BitVec 32) Int) ListLongMap!573)

(assert (=> b!27271 (= res!16139 (not (contains!238 (getCurrentListMap!130 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504) k!1304)))))

(declare-fun b!27272 () Bool)

(declare-fun res!16138 () Bool)

(assert (=> b!27272 (=> (not res!16138) (not e!17766))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!27272 (= res!16138 (validKeyInArray!0 k!1304))))

(declare-fun b!27273 () Bool)

(declare-fun res!16137 () Bool)

(assert (=> b!27273 (=> (not res!16137) (not e!17766))))

(assert (=> b!27273 (= res!16137 (and (= (size!822 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!823 _keys!1833) (size!822 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011)))))

(declare-fun b!27274 () Bool)

(declare-fun res!16141 () Bool)

(assert (=> b!27274 (=> (not res!16141) (not e!17766))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!1535 (_ BitVec 32)) Bool)

(assert (=> b!27274 (= res!16141 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun mapNonEmpty!1252 () Bool)

(declare-fun tp!3808 () Bool)

(assert (=> mapNonEmpty!1252 (= mapRes!1252 (and tp!3808 e!17767))))

(declare-fun mapKey!1252 () (_ BitVec 32))

(declare-fun mapRest!1252 () (Array (_ BitVec 32) ValueCell!376))

(declare-fun mapValue!1252 () ValueCell!376)

(assert (=> mapNonEmpty!1252 (= (arr!721 _values!1501) (store mapRest!1252 mapKey!1252 mapValue!1252))))

(declare-fun b!27275 () Bool)

(declare-fun e!17763 () Bool)

(assert (=> b!27275 (= e!17763 tp_is_empty!1151)))

(declare-fun b!27276 () Bool)

(assert (=> b!27276 (= e!17765 (and e!17763 mapRes!1252))))

(declare-fun condMapEmpty!1252 () Bool)

(declare-fun mapDefault!1252 () ValueCell!376)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!4154 () Bool)

(assert start!4154)

(declare-fun b_free!1061 () Bool)

(declare-fun b_next!1061 () Bool)

(assert (=> start!4154 (= b_free!1061 (not b_next!1061))))

(declare-fun tp!4602 () Bool)

(declare-fun b_and!1873 () Bool)

(assert (=> start!4154 (= tp!4602 b_and!1873)))

(declare-fun b!31354 () Bool)

(declare-fun e!20039 () Bool)

(assert (=> b!31354 (= e!20039 false)))

(declare-fun k!1304 () (_ BitVec 64))

(declare-datatypes ((V!1711 0))(
  ( (V!1712 (val!734 Int)) )
))
(declare-datatypes ((ValueCell!508 0))(
  ( (ValueCellFull!508 (v!1823 V!1711)) (EmptyCell!508) )
))
(declare-datatypes ((array!2037 0))(
  ( (array!2038 (arr!972 (Array (_ BitVec 32) ValueCell!508)) (size!1073 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!2037)

(declare-fun extraKeys!1422 () (_ BitVec 32))

(declare-datatypes ((array!2039 0))(
  ( (array!2040 (arr!973 (Array (_ BitVec 32) (_ BitVec 64))) (size!1074 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!2039)

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun defaultEntry!1504 () Int)

(declare-fun lt!11562 () Bool)

(declare-fun zeroValue!1443 () V!1711)

(declare-fun minValue!1443 () V!1711)

(declare-datatypes ((tuple2!1194 0))(
  ( (tuple2!1195 (_1!607 (_ BitVec 64)) (_2!607 V!1711)) )
))
(declare-datatypes ((List!797 0))(
  ( (Nil!794) (Cons!793 (h!1360 tuple2!1194) (t!3492 List!797)) )
))
(declare-datatypes ((ListLongMap!775 0))(
  ( (ListLongMap!776 (toList!403 List!797)) )
))
(declare-fun contains!340 (ListLongMap!775 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!228 (array!2039 array!2037 (_ BitVec 32) (_ BitVec 32) V!1711 V!1711 (_ BitVec 32) Int) ListLongMap!775)

(assert (=> b!31354 (= lt!11562 (contains!340 (getCurrentListMap!228 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504) k!1304))))

(declare-fun b!31355 () Bool)

(declare-fun res!18973 () Bool)

(assert (=> b!31355 (=> (not res!18973) (not e!20039))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!31355 (= res!18973 (validKeyInArray!0 k!1304))))

(declare-fun res!18969 () Bool)

(assert (=> start!4154 (=> (not res!18969) (not e!20039))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!4154 (= res!18969 (validMask!0 mask!2294))))

(assert (=> start!4154 e!20039))

(assert (=> start!4154 true))

(assert (=> start!4154 tp!4602))

(declare-fun e!20038 () Bool)

(declare-fun array_inv!649 (array!2037) Bool)

(assert (=> start!4154 (and (array_inv!649 _values!1501) e!20038)))

(declare-fun array_inv!650 (array!2039) Bool)

(assert (=> start!4154 (array_inv!650 _keys!1833)))

(declare-fun tp_is_empty!1415 () Bool)

(assert (=> start!4154 tp_is_empty!1415))

(declare-fun b!31356 () Bool)

(declare-fun e!20041 () Bool)

(assert (=> b!31356 (= e!20041 tp_is_empty!1415)))

(declare-fun b!31357 () Bool)

(declare-fun res!18971 () Bool)

(assert (=> b!31357 (=> (not res!18971) (not e!20039))))

(declare-datatypes ((List!798 0))(
  ( (Nil!795) (Cons!794 (h!1361 (_ BitVec 64)) (t!3493 List!798)) )
))
(declare-fun arrayNoDuplicates!0 (array!2039 (_ BitVec 32) List!798) Bool)

(assert (=> b!31357 (= res!18971 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!795))))

(declare-fun b!31358 () Bool)

(declare-fun e!20040 () Bool)

(assert (=> b!31358 (= e!20040 tp_is_empty!1415)))

(declare-fun mapIsEmpty!1651 () Bool)

(declare-fun mapRes!1651 () Bool)

(assert (=> mapIsEmpty!1651 mapRes!1651))

(declare-fun b!31359 () Bool)

(assert (=> b!31359 (= e!20038 (and e!20040 mapRes!1651))))

(declare-fun condMapEmpty!1651 () Bool)

(declare-fun mapDefault!1651 () ValueCell!508)


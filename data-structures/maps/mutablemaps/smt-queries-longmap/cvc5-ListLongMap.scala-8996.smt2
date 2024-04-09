; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108772 () Bool)

(assert start!108772)

(declare-fun b_free!28249 () Bool)

(declare-fun b_next!28249 () Bool)

(assert (=> start!108772 (= b_free!28249 (not b_next!28249))))

(declare-fun tp!99864 () Bool)

(declare-fun b_and!46325 () Bool)

(assert (=> start!108772 (= tp!99864 b_and!46325)))

(declare-fun b!1283822 () Bool)

(declare-fun res!852933 () Bool)

(declare-fun e!733404 () Bool)

(assert (=> b!1283822 (=> (not res!852933) (not e!733404))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((V!50289 0))(
  ( (V!50290 (val!17019 Int)) )
))
(declare-datatypes ((ValueCell!16046 0))(
  ( (ValueCellFull!16046 (v!19619 V!50289)) (EmptyCell!16046) )
))
(declare-datatypes ((array!84795 0))(
  ( (array!84796 (arr!40895 (Array (_ BitVec 32) ValueCell!16046)) (size!41446 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84795)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!84797 0))(
  ( (array!84798 (arr!40896 (Array (_ BitVec 32) (_ BitVec 64))) (size!41447 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84797)

(assert (=> b!1283822 (= res!852933 (and (= (size!41446 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41447 _keys!1741) (size!41446 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1283824 () Bool)

(declare-fun e!733402 () Bool)

(declare-fun tp_is_empty!33889 () Bool)

(assert (=> b!1283824 (= e!733402 tp_is_empty!33889)))

(declare-fun b!1283825 () Bool)

(declare-fun e!733401 () Bool)

(assert (=> b!1283825 (= e!733401 tp_is_empty!33889)))

(declare-fun mapNonEmpty!52391 () Bool)

(declare-fun mapRes!52391 () Bool)

(declare-fun tp!99863 () Bool)

(assert (=> mapNonEmpty!52391 (= mapRes!52391 (and tp!99863 e!733401))))

(declare-fun mapKey!52391 () (_ BitVec 32))

(declare-fun mapRest!52391 () (Array (_ BitVec 32) ValueCell!16046))

(declare-fun mapValue!52391 () ValueCell!16046)

(assert (=> mapNonEmpty!52391 (= (arr!40895 _values!1445) (store mapRest!52391 mapKey!52391 mapValue!52391))))

(declare-fun b!1283826 () Bool)

(declare-fun res!852928 () Bool)

(assert (=> b!1283826 (=> (not res!852928) (not e!733404))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1283826 (= res!852928 (validKeyInArray!0 (select (arr!40896 _keys!1741) from!2144)))))

(declare-fun b!1283827 () Bool)

(declare-fun res!852931 () Bool)

(assert (=> b!1283827 (=> (not res!852931) (not e!733404))))

(declare-datatypes ((List!29149 0))(
  ( (Nil!29146) (Cons!29145 (h!30354 (_ BitVec 64)) (t!42700 List!29149)) )
))
(declare-fun arrayNoDuplicates!0 (array!84797 (_ BitVec 32) List!29149) Bool)

(assert (=> b!1283827 (= res!852931 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29146))))

(declare-fun b!1283828 () Bool)

(declare-fun res!852932 () Bool)

(assert (=> b!1283828 (=> (not res!852932) (not e!733404))))

(assert (=> b!1283828 (= res!852932 (and (not (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1283823 () Bool)

(assert (=> b!1283823 (= e!733404 (not (bvsle from!2144 (size!41447 _keys!1741))))))

(declare-datatypes ((tuple2!21942 0))(
  ( (tuple2!21943 (_1!10981 (_ BitVec 64)) (_2!10981 V!50289)) )
))
(declare-datatypes ((List!29150 0))(
  ( (Nil!29147) (Cons!29146 (h!30355 tuple2!21942) (t!42701 List!29150)) )
))
(declare-datatypes ((ListLongMap!19611 0))(
  ( (ListLongMap!19612 (toList!9821 List!29150)) )
))
(declare-fun lt!576672 () ListLongMap!19611)

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun contains!7876 (ListLongMap!19611 (_ BitVec 64)) Bool)

(assert (=> b!1283823 (contains!7876 lt!576672 k!1205)))

(declare-datatypes ((Unit!42431 0))(
  ( (Unit!42432) )
))
(declare-fun lt!576671 () Unit!42431)

(declare-fun minValue!1387 () V!50289)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!17 ((_ BitVec 64) (_ BitVec 64) V!50289 ListLongMap!19611) Unit!42431)

(assert (=> b!1283823 (= lt!576671 (lemmaInListMapAfterAddingDiffThenInBefore!17 k!1205 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387 lt!576672))))

(declare-fun zeroValue!1387 () V!50289)

(declare-fun defaultEntry!1448 () Int)

(declare-fun +!4268 (ListLongMap!19611 tuple2!21942) ListLongMap!19611)

(declare-fun getCurrentListMapNoExtraKeys!5979 (array!84797 array!84795 (_ BitVec 32) (_ BitVec 32) V!50289 V!50289 (_ BitVec 32) Int) ListLongMap!19611)

(assert (=> b!1283823 (= lt!576672 (+!4268 (getCurrentListMapNoExtraKeys!5979 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) (tuple2!21943 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)))))

(declare-fun res!852935 () Bool)

(assert (=> start!108772 (=> (not res!852935) (not e!733404))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108772 (= res!852935 (validMask!0 mask!2175))))

(assert (=> start!108772 e!733404))

(assert (=> start!108772 tp_is_empty!33889))

(assert (=> start!108772 true))

(declare-fun e!733405 () Bool)

(declare-fun array_inv!31001 (array!84795) Bool)

(assert (=> start!108772 (and (array_inv!31001 _values!1445) e!733405)))

(declare-fun array_inv!31002 (array!84797) Bool)

(assert (=> start!108772 (array_inv!31002 _keys!1741)))

(assert (=> start!108772 tp!99864))

(declare-fun b!1283829 () Bool)

(declare-fun res!852929 () Bool)

(assert (=> b!1283829 (=> (not res!852929) (not e!733404))))

(assert (=> b!1283829 (= res!852929 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41447 _keys!1741))))))

(declare-fun b!1283830 () Bool)

(declare-fun res!852930 () Bool)

(assert (=> b!1283830 (=> (not res!852930) (not e!733404))))

(declare-fun getCurrentListMap!4839 (array!84797 array!84795 (_ BitVec 32) (_ BitVec 32) V!50289 V!50289 (_ BitVec 32) Int) ListLongMap!19611)

(assert (=> b!1283830 (= res!852930 (contains!7876 (getCurrentListMap!4839 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1283831 () Bool)

(assert (=> b!1283831 (= e!733405 (and e!733402 mapRes!52391))))

(declare-fun condMapEmpty!52391 () Bool)

(declare-fun mapDefault!52391 () ValueCell!16046)


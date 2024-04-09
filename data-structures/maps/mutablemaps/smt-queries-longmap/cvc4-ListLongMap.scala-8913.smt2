; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108168 () Bool)

(assert start!108168)

(declare-fun b_free!27845 () Bool)

(declare-fun b_next!27845 () Bool)

(assert (=> start!108168 (= b_free!27845 (not b_next!27845))))

(declare-fun tp!98490 () Bool)

(declare-fun b_and!45911 () Bool)

(assert (=> start!108168 (= tp!98490 b_and!45911)))

(declare-fun b!1276913 () Bool)

(declare-fun e!729236 () Bool)

(declare-fun k!1053 () (_ BitVec 64))

(declare-fun extraKeys!1108 () (_ BitVec 32))

(assert (=> b!1276913 (= e!729236 (ite (= k!1053 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1108 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1108 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun mapNonEmpty!51623 () Bool)

(declare-fun mapRes!51623 () Bool)

(declare-fun tp!98489 () Bool)

(declare-fun e!729238 () Bool)

(assert (=> mapNonEmpty!51623 (= mapRes!51623 (and tp!98489 e!729238))))

(declare-datatypes ((V!49629 0))(
  ( (V!49630 (val!16772 Int)) )
))
(declare-datatypes ((ValueCell!15799 0))(
  ( (ValueCellFull!15799 (v!19367 V!49629)) (EmptyCell!15799) )
))
(declare-fun mapValue!51623 () ValueCell!15799)

(declare-fun mapRest!51623 () (Array (_ BitVec 32) ValueCell!15799))

(declare-fun mapKey!51623 () (_ BitVec 32))

(declare-datatypes ((array!83833 0))(
  ( (array!83834 (arr!40423 (Array (_ BitVec 32) ValueCell!15799)) (size!40974 (_ BitVec 32))) )
))
(declare-fun _values!1187 () array!83833)

(assert (=> mapNonEmpty!51623 (= (arr!40423 _values!1187) (store mapRest!51623 mapKey!51623 mapValue!51623))))

(declare-fun b!1276914 () Bool)

(declare-fun res!848631 () Bool)

(declare-fun e!729235 () Bool)

(assert (=> b!1276914 (=> (not res!848631) (not e!729235))))

(declare-fun mask!1805 () (_ BitVec 32))

(declare-fun defaultEntry!1195 () Int)

(declare-fun minValue!1129 () V!49629)

(declare-fun zeroValue!1129 () V!49629)

(declare-datatypes ((array!83835 0))(
  ( (array!83836 (arr!40424 (Array (_ BitVec 32) (_ BitVec 64))) (size!40975 (_ BitVec 32))) )
))
(declare-fun _keys!1427 () array!83835)

(declare-datatypes ((tuple2!21660 0))(
  ( (tuple2!21661 (_1!10840 (_ BitVec 64)) (_2!10840 V!49629)) )
))
(declare-datatypes ((List!28846 0))(
  ( (Nil!28843) (Cons!28842 (h!30051 tuple2!21660) (t!42389 List!28846)) )
))
(declare-datatypes ((ListLongMap!19329 0))(
  ( (ListLongMap!19330 (toList!9680 List!28846)) )
))
(declare-fun contains!7727 (ListLongMap!19329 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4700 (array!83835 array!83833 (_ BitVec 32) (_ BitVec 32) V!49629 V!49629 (_ BitVec 32) Int) ListLongMap!19329)

(assert (=> b!1276914 (= res!848631 (contains!7727 (getCurrentListMap!4700 _keys!1427 _values!1187 mask!1805 extraKeys!1108 zeroValue!1129 minValue!1129 #b00000000000000000000000000000000 defaultEntry!1195) k!1053))))

(declare-fun b!1276915 () Bool)

(assert (=> b!1276915 (= e!729235 (not true))))

(assert (=> b!1276915 e!729236))

(declare-fun c!123894 () Bool)

(assert (=> b!1276915 (= c!123894 (and (not (= k!1053 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1053 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-datatypes ((Unit!42315 0))(
  ( (Unit!42316) )
))
(declare-fun lt!575496 () Unit!42315)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!630 (array!83835 array!83833 (_ BitVec 32) (_ BitVec 32) V!49629 V!49629 (_ BitVec 64) (_ BitVec 32) Int) Unit!42315)

(assert (=> b!1276915 (= lt!575496 (lemmaListMapContainsThenArrayContainsFrom!630 _keys!1427 _values!1187 mask!1805 extraKeys!1108 zeroValue!1129 minValue!1129 k!1053 #b00000000000000000000000000000000 defaultEntry!1195))))

(declare-fun b!1276916 () Bool)

(declare-fun arrayContainsKey!0 (array!83835 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1276916 (= e!729236 (arrayContainsKey!0 _keys!1427 k!1053 #b00000000000000000000000000000000))))

(declare-fun b!1276917 () Bool)

(declare-fun res!848630 () Bool)

(assert (=> b!1276917 (=> (not res!848630) (not e!729235))))

(declare-datatypes ((List!28847 0))(
  ( (Nil!28844) (Cons!28843 (h!30052 (_ BitVec 64)) (t!42390 List!28847)) )
))
(declare-fun arrayNoDuplicates!0 (array!83835 (_ BitVec 32) List!28847) Bool)

(assert (=> b!1276917 (= res!848630 (arrayNoDuplicates!0 _keys!1427 #b00000000000000000000000000000000 Nil!28844))))

(declare-fun b!1276918 () Bool)

(declare-fun tp_is_empty!33395 () Bool)

(assert (=> b!1276918 (= e!729238 tp_is_empty!33395)))

(declare-fun res!848628 () Bool)

(assert (=> start!108168 (=> (not res!848628) (not e!729235))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108168 (= res!848628 (validMask!0 mask!1805))))

(assert (=> start!108168 e!729235))

(assert (=> start!108168 true))

(assert (=> start!108168 tp!98490))

(assert (=> start!108168 tp_is_empty!33395))

(declare-fun e!729237 () Bool)

(declare-fun array_inv!30679 (array!83833) Bool)

(assert (=> start!108168 (and (array_inv!30679 _values!1187) e!729237)))

(declare-fun array_inv!30680 (array!83835) Bool)

(assert (=> start!108168 (array_inv!30680 _keys!1427)))

(declare-fun b!1276919 () Bool)

(declare-fun e!729234 () Bool)

(assert (=> b!1276919 (= e!729237 (and e!729234 mapRes!51623))))

(declare-fun condMapEmpty!51623 () Bool)

(declare-fun mapDefault!51623 () ValueCell!15799)


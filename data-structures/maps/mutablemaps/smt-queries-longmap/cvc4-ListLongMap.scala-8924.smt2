; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108266 () Bool)

(assert start!108266)

(declare-fun b_free!27911 () Bool)

(declare-fun b_next!27911 () Bool)

(assert (=> start!108266 (= b_free!27911 (not b_next!27911))))

(declare-fun tp!98694 () Bool)

(declare-fun b_and!45981 () Bool)

(assert (=> start!108266 (= tp!98694 b_and!45981)))

(declare-fun mapIsEmpty!51728 () Bool)

(declare-fun mapRes!51728 () Bool)

(assert (=> mapIsEmpty!51728 mapRes!51728))

(declare-fun mapNonEmpty!51728 () Bool)

(declare-fun tp!98693 () Bool)

(declare-fun e!729894 () Bool)

(assert (=> mapNonEmpty!51728 (= mapRes!51728 (and tp!98693 e!729894))))

(declare-datatypes ((V!49717 0))(
  ( (V!49718 (val!16805 Int)) )
))
(declare-datatypes ((ValueCell!15832 0))(
  ( (ValueCellFull!15832 (v!19402 V!49717)) (EmptyCell!15832) )
))
(declare-fun mapRest!51728 () (Array (_ BitVec 32) ValueCell!15832))

(declare-fun mapValue!51728 () ValueCell!15832)

(declare-datatypes ((array!83959 0))(
  ( (array!83960 (arr!40484 (Array (_ BitVec 32) ValueCell!15832)) (size!41035 (_ BitVec 32))) )
))
(declare-fun _values!1187 () array!83959)

(declare-fun mapKey!51728 () (_ BitVec 32))

(assert (=> mapNonEmpty!51728 (= (arr!40484 _values!1187) (store mapRest!51728 mapKey!51728 mapValue!51728))))

(declare-fun b!1277885 () Bool)

(declare-fun e!729895 () Bool)

(declare-fun tp_is_empty!33461 () Bool)

(assert (=> b!1277885 (= e!729895 tp_is_empty!33461)))

(declare-fun b!1277886 () Bool)

(declare-fun res!849150 () Bool)

(declare-fun e!729893 () Bool)

(assert (=> b!1277886 (=> (not res!849150) (not e!729893))))

(declare-datatypes ((array!83961 0))(
  ( (array!83962 (arr!40485 (Array (_ BitVec 32) (_ BitVec 64))) (size!41036 (_ BitVec 32))) )
))
(declare-fun _keys!1427 () array!83961)

(declare-fun mask!1805 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!83961 (_ BitVec 32)) Bool)

(assert (=> b!1277886 (= res!849150 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1427 mask!1805))))

(declare-fun b!1277887 () Bool)

(declare-fun res!849147 () Bool)

(assert (=> b!1277887 (=> (not res!849147) (not e!729893))))

(declare-fun extraKeys!1108 () (_ BitVec 32))

(assert (=> b!1277887 (= res!849147 (and (= (size!41035 _values!1187) (bvadd #b00000000000000000000000000000001 mask!1805)) (= (size!41036 _keys!1427) (size!41035 _values!1187)) (bvsge mask!1805 #b00000000000000000000000000000000) (bvsge extraKeys!1108 #b00000000000000000000000000000000) (bvsle extraKeys!1108 #b00000000000000000000000000000011)))))

(declare-fun b!1277888 () Bool)

(declare-fun res!849148 () Bool)

(assert (=> b!1277888 (=> (not res!849148) (not e!729893))))

(declare-datatypes ((List!28893 0))(
  ( (Nil!28890) (Cons!28889 (h!30098 (_ BitVec 64)) (t!42440 List!28893)) )
))
(declare-fun arrayNoDuplicates!0 (array!83961 (_ BitVec 32) List!28893) Bool)

(assert (=> b!1277888 (= res!849148 (arrayNoDuplicates!0 _keys!1427 #b00000000000000000000000000000000 Nil!28890))))

(declare-fun b!1277889 () Bool)

(assert (=> b!1277889 (= e!729894 tp_is_empty!33461)))

(declare-fun b!1277890 () Bool)

(assert (=> b!1277890 (= e!729893 false)))

(declare-fun minValue!1129 () V!49717)

(declare-fun k!1053 () (_ BitVec 64))

(declare-fun zeroValue!1129 () V!49717)

(declare-fun defaultEntry!1195 () Int)

(declare-fun lt!575772 () Bool)

(declare-datatypes ((tuple2!21704 0))(
  ( (tuple2!21705 (_1!10862 (_ BitVec 64)) (_2!10862 V!49717)) )
))
(declare-datatypes ((List!28894 0))(
  ( (Nil!28891) (Cons!28890 (h!30099 tuple2!21704) (t!42441 List!28894)) )
))
(declare-datatypes ((ListLongMap!19373 0))(
  ( (ListLongMap!19374 (toList!9702 List!28894)) )
))
(declare-fun contains!7751 (ListLongMap!19373 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4722 (array!83961 array!83959 (_ BitVec 32) (_ BitVec 32) V!49717 V!49717 (_ BitVec 32) Int) ListLongMap!19373)

(assert (=> b!1277890 (= lt!575772 (contains!7751 (getCurrentListMap!4722 _keys!1427 _values!1187 mask!1805 extraKeys!1108 zeroValue!1129 minValue!1129 #b00000000000000000000000000000000 defaultEntry!1195) k!1053))))

(declare-fun res!849149 () Bool)

(assert (=> start!108266 (=> (not res!849149) (not e!729893))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108266 (= res!849149 (validMask!0 mask!1805))))

(assert (=> start!108266 e!729893))

(assert (=> start!108266 true))

(assert (=> start!108266 tp!98694))

(assert (=> start!108266 tp_is_empty!33461))

(declare-fun e!729896 () Bool)

(declare-fun array_inv!30727 (array!83959) Bool)

(assert (=> start!108266 (and (array_inv!30727 _values!1187) e!729896)))

(declare-fun array_inv!30728 (array!83961) Bool)

(assert (=> start!108266 (array_inv!30728 _keys!1427)))

(declare-fun b!1277891 () Bool)

(assert (=> b!1277891 (= e!729896 (and e!729895 mapRes!51728))))

(declare-fun condMapEmpty!51728 () Bool)

(declare-fun mapDefault!51728 () ValueCell!15832)


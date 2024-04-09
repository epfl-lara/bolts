; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108268 () Bool)

(assert start!108268)

(declare-fun b_free!27913 () Bool)

(declare-fun b_next!27913 () Bool)

(assert (=> start!108268 (= b_free!27913 (not b_next!27913))))

(declare-fun tp!98699 () Bool)

(declare-fun b_and!45983 () Bool)

(assert (=> start!108268 (= tp!98699 b_and!45983)))

(declare-fun b!1277914 () Bool)

(declare-fun e!729909 () Bool)

(declare-datatypes ((array!83963 0))(
  ( (array!83964 (arr!40486 (Array (_ BitVec 32) (_ BitVec 64))) (size!41037 (_ BitVec 32))) )
))
(declare-fun _keys!1427 () array!83963)

(declare-fun k!1053 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!83963 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1277914 (= e!729909 (arrayContainsKey!0 _keys!1427 k!1053 #b00000000000000000000000000000000))))

(declare-fun b!1277915 () Bool)

(declare-fun res!849166 () Bool)

(declare-fun e!729911 () Bool)

(assert (=> b!1277915 (=> (not res!849166) (not e!729911))))

(declare-datatypes ((List!28895 0))(
  ( (Nil!28892) (Cons!28891 (h!30100 (_ BitVec 64)) (t!42442 List!28895)) )
))
(declare-fun arrayNoDuplicates!0 (array!83963 (_ BitVec 32) List!28895) Bool)

(assert (=> b!1277915 (= res!849166 (arrayNoDuplicates!0 _keys!1427 #b00000000000000000000000000000000 Nil!28892))))

(declare-fun b!1277916 () Bool)

(declare-fun res!849163 () Bool)

(assert (=> b!1277916 (=> (not res!849163) (not e!729911))))

(declare-fun mask!1805 () (_ BitVec 32))

(declare-fun extraKeys!1108 () (_ BitVec 32))

(declare-fun defaultEntry!1195 () Int)

(declare-datatypes ((V!49721 0))(
  ( (V!49722 (val!16806 Int)) )
))
(declare-fun minValue!1129 () V!49721)

(declare-datatypes ((ValueCell!15833 0))(
  ( (ValueCellFull!15833 (v!19403 V!49721)) (EmptyCell!15833) )
))
(declare-datatypes ((array!83965 0))(
  ( (array!83966 (arr!40487 (Array (_ BitVec 32) ValueCell!15833)) (size!41038 (_ BitVec 32))) )
))
(declare-fun _values!1187 () array!83965)

(declare-fun zeroValue!1129 () V!49721)

(declare-datatypes ((tuple2!21706 0))(
  ( (tuple2!21707 (_1!10863 (_ BitVec 64)) (_2!10863 V!49721)) )
))
(declare-datatypes ((List!28896 0))(
  ( (Nil!28893) (Cons!28892 (h!30101 tuple2!21706) (t!42443 List!28896)) )
))
(declare-datatypes ((ListLongMap!19375 0))(
  ( (ListLongMap!19376 (toList!9703 List!28896)) )
))
(declare-fun contains!7752 (ListLongMap!19375 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4723 (array!83963 array!83965 (_ BitVec 32) (_ BitVec 32) V!49721 V!49721 (_ BitVec 32) Int) ListLongMap!19375)

(assert (=> b!1277916 (= res!849163 (contains!7752 (getCurrentListMap!4723 _keys!1427 _values!1187 mask!1805 extraKeys!1108 zeroValue!1129 minValue!1129 #b00000000000000000000000000000000 defaultEntry!1195) k!1053))))

(declare-fun b!1277917 () Bool)

(declare-fun res!849167 () Bool)

(assert (=> b!1277917 (=> (not res!849167) (not e!729911))))

(assert (=> b!1277917 (= res!849167 (bvslt #b00000000000000000000000000000000 (size!41037 _keys!1427)))))

(declare-fun mapNonEmpty!51731 () Bool)

(declare-fun mapRes!51731 () Bool)

(declare-fun tp!98700 () Bool)

(declare-fun e!729914 () Bool)

(assert (=> mapNonEmpty!51731 (= mapRes!51731 (and tp!98700 e!729914))))

(declare-fun mapValue!51731 () ValueCell!15833)

(declare-fun mapKey!51731 () (_ BitVec 32))

(declare-fun mapRest!51731 () (Array (_ BitVec 32) ValueCell!15833))

(assert (=> mapNonEmpty!51731 (= (arr!40487 _values!1187) (store mapRest!51731 mapKey!51731 mapValue!51731))))

(declare-fun b!1277918 () Bool)

(declare-fun tp_is_empty!33463 () Bool)

(assert (=> b!1277918 (= e!729914 tp_is_empty!33463)))

(declare-fun res!849168 () Bool)

(assert (=> start!108268 (=> (not res!849168) (not e!729911))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108268 (= res!849168 (validMask!0 mask!1805))))

(assert (=> start!108268 e!729911))

(assert (=> start!108268 true))

(assert (=> start!108268 tp!98699))

(assert (=> start!108268 tp_is_empty!33463))

(declare-fun e!729910 () Bool)

(declare-fun array_inv!30729 (array!83965) Bool)

(assert (=> start!108268 (and (array_inv!30729 _values!1187) e!729910)))

(declare-fun array_inv!30730 (array!83963) Bool)

(assert (=> start!108268 (array_inv!30730 _keys!1427)))

(declare-fun b!1277919 () Bool)

(assert (=> b!1277919 (= e!729911 (not true))))

(assert (=> b!1277919 e!729909))

(declare-fun c!123963 () Bool)

(assert (=> b!1277919 (= c!123963 (and (not (= k!1053 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1053 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-datatypes ((Unit!42325 0))(
  ( (Unit!42326) )
))
(declare-fun lt!575775 () Unit!42325)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!632 (array!83963 array!83965 (_ BitVec 32) (_ BitVec 32) V!49721 V!49721 (_ BitVec 64) (_ BitVec 32) Int) Unit!42325)

(assert (=> b!1277919 (= lt!575775 (lemmaListMapContainsThenArrayContainsFrom!632 _keys!1427 _values!1187 mask!1805 extraKeys!1108 zeroValue!1129 minValue!1129 k!1053 #b00000000000000000000000000000000 defaultEntry!1195))))

(declare-fun b!1277920 () Bool)

(assert (=> b!1277920 (= e!729909 (ite (= k!1053 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1108 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1108 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1277921 () Bool)

(declare-fun res!849165 () Bool)

(assert (=> b!1277921 (=> (not res!849165) (not e!729911))))

(assert (=> b!1277921 (= res!849165 (and (= (size!41038 _values!1187) (bvadd #b00000000000000000000000000000001 mask!1805)) (= (size!41037 _keys!1427) (size!41038 _values!1187)) (bvsge mask!1805 #b00000000000000000000000000000000) (bvsge extraKeys!1108 #b00000000000000000000000000000000) (bvsle extraKeys!1108 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!51731 () Bool)

(assert (=> mapIsEmpty!51731 mapRes!51731))

(declare-fun b!1277922 () Bool)

(declare-fun e!729912 () Bool)

(assert (=> b!1277922 (= e!729910 (and e!729912 mapRes!51731))))

(declare-fun condMapEmpty!51731 () Bool)

(declare-fun mapDefault!51731 () ValueCell!15833)


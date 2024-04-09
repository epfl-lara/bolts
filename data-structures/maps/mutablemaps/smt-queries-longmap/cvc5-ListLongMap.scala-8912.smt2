; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108158 () Bool)

(assert start!108158)

(declare-fun b_free!27835 () Bool)

(declare-fun b_next!27835 () Bool)

(assert (=> start!108158 (= b_free!27835 (not b_next!27835))))

(declare-fun tp!98459 () Bool)

(declare-fun b_and!45901 () Bool)

(assert (=> start!108158 (= tp!98459 b_and!45901)))

(declare-fun b!1276748 () Bool)

(declare-fun res!848539 () Bool)

(declare-fun e!729144 () Bool)

(assert (=> b!1276748 (=> (not res!848539) (not e!729144))))

(declare-fun mask!1805 () (_ BitVec 32))

(declare-datatypes ((array!83813 0))(
  ( (array!83814 (arr!40413 (Array (_ BitVec 32) (_ BitVec 64))) (size!40964 (_ BitVec 32))) )
))
(declare-fun _keys!1427 () array!83813)

(declare-datatypes ((V!49617 0))(
  ( (V!49618 (val!16767 Int)) )
))
(declare-datatypes ((ValueCell!15794 0))(
  ( (ValueCellFull!15794 (v!19362 V!49617)) (EmptyCell!15794) )
))
(declare-datatypes ((array!83815 0))(
  ( (array!83816 (arr!40414 (Array (_ BitVec 32) ValueCell!15794)) (size!40965 (_ BitVec 32))) )
))
(declare-fun _values!1187 () array!83815)

(declare-fun extraKeys!1108 () (_ BitVec 32))

(assert (=> b!1276748 (= res!848539 (and (= (size!40965 _values!1187) (bvadd #b00000000000000000000000000000001 mask!1805)) (= (size!40964 _keys!1427) (size!40965 _values!1187)) (bvsge mask!1805 #b00000000000000000000000000000000) (bvsge extraKeys!1108 #b00000000000000000000000000000000) (bvsle extraKeys!1108 #b00000000000000000000000000000011)))))

(declare-fun b!1276749 () Bool)

(declare-fun res!848536 () Bool)

(assert (=> b!1276749 (=> (not res!848536) (not e!729144))))

(declare-datatypes ((List!28837 0))(
  ( (Nil!28834) (Cons!28833 (h!30042 (_ BitVec 64)) (t!42380 List!28837)) )
))
(declare-fun arrayNoDuplicates!0 (array!83813 (_ BitVec 32) List!28837) Bool)

(assert (=> b!1276749 (= res!848536 (arrayNoDuplicates!0 _keys!1427 #b00000000000000000000000000000000 Nil!28834))))

(declare-fun mapNonEmpty!51608 () Bool)

(declare-fun mapRes!51608 () Bool)

(declare-fun tp!98460 () Bool)

(declare-fun e!729145 () Bool)

(assert (=> mapNonEmpty!51608 (= mapRes!51608 (and tp!98460 e!729145))))

(declare-fun mapRest!51608 () (Array (_ BitVec 32) ValueCell!15794))

(declare-fun mapValue!51608 () ValueCell!15794)

(declare-fun mapKey!51608 () (_ BitVec 32))

(assert (=> mapNonEmpty!51608 (= (arr!40414 _values!1187) (store mapRest!51608 mapKey!51608 mapValue!51608))))

(declare-fun b!1276750 () Bool)

(declare-fun res!848540 () Bool)

(assert (=> b!1276750 (=> (not res!848540) (not e!729144))))

(declare-fun defaultEntry!1195 () Int)

(declare-fun minValue!1129 () V!49617)

(declare-fun k!1053 () (_ BitVec 64))

(declare-fun zeroValue!1129 () V!49617)

(declare-datatypes ((tuple2!21652 0))(
  ( (tuple2!21653 (_1!10836 (_ BitVec 64)) (_2!10836 V!49617)) )
))
(declare-datatypes ((List!28838 0))(
  ( (Nil!28835) (Cons!28834 (h!30043 tuple2!21652) (t!42381 List!28838)) )
))
(declare-datatypes ((ListLongMap!19321 0))(
  ( (ListLongMap!19322 (toList!9676 List!28838)) )
))
(declare-fun contains!7723 (ListLongMap!19321 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4696 (array!83813 array!83815 (_ BitVec 32) (_ BitVec 32) V!49617 V!49617 (_ BitVec 32) Int) ListLongMap!19321)

(assert (=> b!1276750 (= res!848540 (contains!7723 (getCurrentListMap!4696 _keys!1427 _values!1187 mask!1805 extraKeys!1108 zeroValue!1129 minValue!1129 #b00000000000000000000000000000000 defaultEntry!1195) k!1053))))

(declare-fun b!1276751 () Bool)

(declare-fun tp_is_empty!33385 () Bool)

(assert (=> b!1276751 (= e!729145 tp_is_empty!33385)))

(declare-fun b!1276752 () Bool)

(declare-fun e!729148 () Bool)

(assert (=> b!1276752 (= e!729148 (ite (= k!1053 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1108 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1108 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1276753 () Bool)

(declare-fun res!848541 () Bool)

(assert (=> b!1276753 (=> (not res!848541) (not e!729144))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!83813 (_ BitVec 32)) Bool)

(assert (=> b!1276753 (= res!848541 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1427 mask!1805))))

(declare-fun b!1276755 () Bool)

(assert (=> b!1276755 (= e!729144 (not true))))

(assert (=> b!1276755 e!729148))

(declare-fun c!123879 () Bool)

(assert (=> b!1276755 (= c!123879 (and (not (= k!1053 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1053 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-datatypes ((Unit!42305 0))(
  ( (Unit!42306) )
))
(declare-fun lt!575481 () Unit!42305)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!625 (array!83813 array!83815 (_ BitVec 32) (_ BitVec 32) V!49617 V!49617 (_ BitVec 64) (_ BitVec 32) Int) Unit!42305)

(assert (=> b!1276755 (= lt!575481 (lemmaListMapContainsThenArrayContainsFrom!625 _keys!1427 _values!1187 mask!1805 extraKeys!1108 zeroValue!1129 minValue!1129 k!1053 #b00000000000000000000000000000000 defaultEntry!1195))))

(declare-fun b!1276756 () Bool)

(declare-fun e!729147 () Bool)

(declare-fun e!729149 () Bool)

(assert (=> b!1276756 (= e!729147 (and e!729149 mapRes!51608))))

(declare-fun condMapEmpty!51608 () Bool)

(declare-fun mapDefault!51608 () ValueCell!15794)


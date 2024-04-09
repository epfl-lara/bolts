; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108098 () Bool)

(assert start!108098)

(declare-fun b_free!27775 () Bool)

(declare-fun b_next!27775 () Bool)

(assert (=> start!108098 (= b_free!27775 (not b_next!27775))))

(declare-fun tp!98279 () Bool)

(declare-fun b_and!45841 () Bool)

(assert (=> start!108098 (= tp!98279 b_and!45841)))

(declare-fun b!1276110 () Bool)

(declare-fun res!848175 () Bool)

(declare-fun e!728695 () Bool)

(assert (=> b!1276110 (=> (not res!848175) (not e!728695))))

(declare-datatypes ((array!83701 0))(
  ( (array!83702 (arr!40357 (Array (_ BitVec 32) (_ BitVec 64))) (size!40908 (_ BitVec 32))) )
))
(declare-fun _keys!1427 () array!83701)

(declare-fun mask!1805 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!83701 (_ BitVec 32)) Bool)

(assert (=> b!1276110 (= res!848175 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1427 mask!1805))))

(declare-fun b!1276111 () Bool)

(assert (=> b!1276111 (= e!728695 false)))

(declare-fun extraKeys!1108 () (_ BitVec 32))

(declare-fun defaultEntry!1195 () Int)

(declare-fun lt!575391 () Bool)

(declare-datatypes ((V!49537 0))(
  ( (V!49538 (val!16737 Int)) )
))
(declare-fun minValue!1129 () V!49537)

(declare-fun k!1053 () (_ BitVec 64))

(declare-datatypes ((ValueCell!15764 0))(
  ( (ValueCellFull!15764 (v!19332 V!49537)) (EmptyCell!15764) )
))
(declare-datatypes ((array!83703 0))(
  ( (array!83704 (arr!40358 (Array (_ BitVec 32) ValueCell!15764)) (size!40909 (_ BitVec 32))) )
))
(declare-fun _values!1187 () array!83703)

(declare-fun zeroValue!1129 () V!49537)

(declare-datatypes ((tuple2!21612 0))(
  ( (tuple2!21613 (_1!10816 (_ BitVec 64)) (_2!10816 V!49537)) )
))
(declare-datatypes ((List!28797 0))(
  ( (Nil!28794) (Cons!28793 (h!30002 tuple2!21612) (t!42340 List!28797)) )
))
(declare-datatypes ((ListLongMap!19281 0))(
  ( (ListLongMap!19282 (toList!9656 List!28797)) )
))
(declare-fun contains!7703 (ListLongMap!19281 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4676 (array!83701 array!83703 (_ BitVec 32) (_ BitVec 32) V!49537 V!49537 (_ BitVec 32) Int) ListLongMap!19281)

(assert (=> b!1276111 (= lt!575391 (contains!7703 (getCurrentListMap!4676 _keys!1427 _values!1187 mask!1805 extraKeys!1108 zeroValue!1129 minValue!1129 #b00000000000000000000000000000000 defaultEntry!1195) k!1053))))

(declare-fun mapIsEmpty!51518 () Bool)

(declare-fun mapRes!51518 () Bool)

(assert (=> mapIsEmpty!51518 mapRes!51518))

(declare-fun b!1276112 () Bool)

(declare-fun e!728696 () Bool)

(declare-fun tp_is_empty!33325 () Bool)

(assert (=> b!1276112 (= e!728696 tp_is_empty!33325)))

(declare-fun b!1276113 () Bool)

(declare-fun res!848172 () Bool)

(assert (=> b!1276113 (=> (not res!848172) (not e!728695))))

(assert (=> b!1276113 (= res!848172 (and (= (size!40909 _values!1187) (bvadd #b00000000000000000000000000000001 mask!1805)) (= (size!40908 _keys!1427) (size!40909 _values!1187)) (bvsge mask!1805 #b00000000000000000000000000000000) (bvsge extraKeys!1108 #b00000000000000000000000000000000) (bvsle extraKeys!1108 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!51518 () Bool)

(declare-fun tp!98280 () Bool)

(declare-fun e!728693 () Bool)

(assert (=> mapNonEmpty!51518 (= mapRes!51518 (and tp!98280 e!728693))))

(declare-fun mapValue!51518 () ValueCell!15764)

(declare-fun mapKey!51518 () (_ BitVec 32))

(declare-fun mapRest!51518 () (Array (_ BitVec 32) ValueCell!15764))

(assert (=> mapNonEmpty!51518 (= (arr!40358 _values!1187) (store mapRest!51518 mapKey!51518 mapValue!51518))))

(declare-fun res!848173 () Bool)

(assert (=> start!108098 (=> (not res!848173) (not e!728695))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108098 (= res!848173 (validMask!0 mask!1805))))

(assert (=> start!108098 e!728695))

(assert (=> start!108098 true))

(assert (=> start!108098 tp!98279))

(assert (=> start!108098 tp_is_empty!33325))

(declare-fun e!728694 () Bool)

(declare-fun array_inv!30631 (array!83703) Bool)

(assert (=> start!108098 (and (array_inv!30631 _values!1187) e!728694)))

(declare-fun array_inv!30632 (array!83701) Bool)

(assert (=> start!108098 (array_inv!30632 _keys!1427)))

(declare-fun b!1276114 () Bool)

(declare-fun res!848174 () Bool)

(assert (=> b!1276114 (=> (not res!848174) (not e!728695))))

(declare-datatypes ((List!28798 0))(
  ( (Nil!28795) (Cons!28794 (h!30003 (_ BitVec 64)) (t!42341 List!28798)) )
))
(declare-fun arrayNoDuplicates!0 (array!83701 (_ BitVec 32) List!28798) Bool)

(assert (=> b!1276114 (= res!848174 (arrayNoDuplicates!0 _keys!1427 #b00000000000000000000000000000000 Nil!28795))))

(declare-fun b!1276115 () Bool)

(assert (=> b!1276115 (= e!728693 tp_is_empty!33325)))

(declare-fun b!1276116 () Bool)

(assert (=> b!1276116 (= e!728694 (and e!728696 mapRes!51518))))

(declare-fun condMapEmpty!51518 () Bool)

(declare-fun mapDefault!51518 () ValueCell!15764)


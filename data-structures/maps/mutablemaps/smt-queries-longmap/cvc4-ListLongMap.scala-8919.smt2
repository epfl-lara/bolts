; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108222 () Bool)

(assert start!108222)

(declare-fun b_free!27881 () Bool)

(declare-fun b_next!27881 () Bool)

(assert (=> start!108222 (= b_free!27881 (not b_next!27881))))

(declare-fun tp!98600 () Bool)

(declare-fun b_and!45949 () Bool)

(assert (=> start!108222 (= tp!98600 b_and!45949)))

(declare-fun mapIsEmpty!51680 () Bool)

(declare-fun mapRes!51680 () Bool)

(assert (=> mapIsEmpty!51680 mapRes!51680))

(declare-fun b!1277452 () Bool)

(declare-fun res!848916 () Bool)

(declare-fun e!729599 () Bool)

(assert (=> b!1277452 (=> (not res!848916) (not e!729599))))

(declare-fun mask!1805 () (_ BitVec 32))

(declare-fun extraKeys!1108 () (_ BitVec 32))

(declare-datatypes ((array!83901 0))(
  ( (array!83902 (arr!40456 (Array (_ BitVec 32) (_ BitVec 64))) (size!41007 (_ BitVec 32))) )
))
(declare-fun _keys!1427 () array!83901)

(declare-datatypes ((V!49677 0))(
  ( (V!49678 (val!16790 Int)) )
))
(declare-datatypes ((ValueCell!15817 0))(
  ( (ValueCellFull!15817 (v!19386 V!49677)) (EmptyCell!15817) )
))
(declare-datatypes ((array!83903 0))(
  ( (array!83904 (arr!40457 (Array (_ BitVec 32) ValueCell!15817)) (size!41008 (_ BitVec 32))) )
))
(declare-fun _values!1187 () array!83903)

(assert (=> b!1277452 (= res!848916 (and (= (size!41008 _values!1187) (bvadd #b00000000000000000000000000000001 mask!1805)) (= (size!41007 _keys!1427) (size!41008 _values!1187)) (bvsge mask!1805 #b00000000000000000000000000000000) (bvsge extraKeys!1108 #b00000000000000000000000000000000) (bvsle extraKeys!1108 #b00000000000000000000000000000011)))))

(declare-fun b!1277453 () Bool)

(declare-fun res!848915 () Bool)

(assert (=> b!1277453 (=> (not res!848915) (not e!729599))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!83901 (_ BitVec 32)) Bool)

(assert (=> b!1277453 (= res!848915 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1427 mask!1805))))

(declare-fun res!848914 () Bool)

(assert (=> start!108222 (=> (not res!848914) (not e!729599))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108222 (= res!848914 (validMask!0 mask!1805))))

(assert (=> start!108222 e!729599))

(assert (=> start!108222 true))

(assert (=> start!108222 tp!98600))

(declare-fun tp_is_empty!33431 () Bool)

(assert (=> start!108222 tp_is_empty!33431))

(declare-fun e!729595 () Bool)

(declare-fun array_inv!30705 (array!83903) Bool)

(assert (=> start!108222 (and (array_inv!30705 _values!1187) e!729595)))

(declare-fun array_inv!30706 (array!83901) Bool)

(assert (=> start!108222 (array_inv!30706 _keys!1427)))

(declare-fun b!1277454 () Bool)

(declare-fun e!729598 () Bool)

(assert (=> b!1277454 (= e!729598 tp_is_empty!33431)))

(declare-fun b!1277455 () Bool)

(declare-fun res!848913 () Bool)

(assert (=> b!1277455 (=> (not res!848913) (not e!729599))))

(declare-datatypes ((List!28872 0))(
  ( (Nil!28869) (Cons!28868 (h!30077 (_ BitVec 64)) (t!42417 List!28872)) )
))
(declare-fun arrayNoDuplicates!0 (array!83901 (_ BitVec 32) List!28872) Bool)

(assert (=> b!1277455 (= res!848913 (arrayNoDuplicates!0 _keys!1427 #b00000000000000000000000000000000 Nil!28869))))

(declare-fun mapNonEmpty!51680 () Bool)

(declare-fun tp!98601 () Bool)

(assert (=> mapNonEmpty!51680 (= mapRes!51680 (and tp!98601 e!729598))))

(declare-fun mapValue!51680 () ValueCell!15817)

(declare-fun mapKey!51680 () (_ BitVec 32))

(declare-fun mapRest!51680 () (Array (_ BitVec 32) ValueCell!15817))

(assert (=> mapNonEmpty!51680 (= (arr!40457 _values!1187) (store mapRest!51680 mapKey!51680 mapValue!51680))))

(declare-fun b!1277456 () Bool)

(declare-fun e!729597 () Bool)

(assert (=> b!1277456 (= e!729597 tp_is_empty!33431)))

(declare-fun b!1277457 () Bool)

(assert (=> b!1277457 (= e!729599 false)))

(declare-fun lt!575649 () Bool)

(declare-fun defaultEntry!1195 () Int)

(declare-fun minValue!1129 () V!49677)

(declare-fun k!1053 () (_ BitVec 64))

(declare-fun zeroValue!1129 () V!49677)

(declare-datatypes ((tuple2!21686 0))(
  ( (tuple2!21687 (_1!10853 (_ BitVec 64)) (_2!10853 V!49677)) )
))
(declare-datatypes ((List!28873 0))(
  ( (Nil!28870) (Cons!28869 (h!30078 tuple2!21686) (t!42418 List!28873)) )
))
(declare-datatypes ((ListLongMap!19355 0))(
  ( (ListLongMap!19356 (toList!9693 List!28873)) )
))
(declare-fun contains!7741 (ListLongMap!19355 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4713 (array!83901 array!83903 (_ BitVec 32) (_ BitVec 32) V!49677 V!49677 (_ BitVec 32) Int) ListLongMap!19355)

(assert (=> b!1277457 (= lt!575649 (contains!7741 (getCurrentListMap!4713 _keys!1427 _values!1187 mask!1805 extraKeys!1108 zeroValue!1129 minValue!1129 #b00000000000000000000000000000000 defaultEntry!1195) k!1053))))

(declare-fun b!1277458 () Bool)

(assert (=> b!1277458 (= e!729595 (and e!729597 mapRes!51680))))

(declare-fun condMapEmpty!51680 () Bool)

(declare-fun mapDefault!51680 () ValueCell!15817)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108140 () Bool)

(assert start!108140)

(declare-fun b_free!27817 () Bool)

(declare-fun b_next!27817 () Bool)

(assert (=> start!108140 (= b_free!27817 (not b_next!27817))))

(declare-fun tp!98405 () Bool)

(declare-fun b_and!45883 () Bool)

(assert (=> start!108140 (= tp!98405 b_and!45883)))

(declare-fun b!1276551 () Bool)

(declare-fun e!729008 () Bool)

(declare-fun tp_is_empty!33367 () Bool)

(assert (=> b!1276551 (= e!729008 tp_is_empty!33367)))

(declare-fun b!1276552 () Bool)

(declare-fun e!729007 () Bool)

(assert (=> b!1276552 (= e!729007 tp_is_empty!33367)))

(declare-fun b!1276553 () Bool)

(declare-fun e!729009 () Bool)

(assert (=> b!1276553 (= e!729009 false)))

(declare-fun mask!1805 () (_ BitVec 32))

(declare-fun extraKeys!1108 () (_ BitVec 32))

(declare-fun lt!575454 () Bool)

(declare-fun defaultEntry!1195 () Int)

(declare-datatypes ((V!49593 0))(
  ( (V!49594 (val!16758 Int)) )
))
(declare-fun minValue!1129 () V!49593)

(declare-fun k!1053 () (_ BitVec 64))

(declare-datatypes ((ValueCell!15785 0))(
  ( (ValueCellFull!15785 (v!19353 V!49593)) (EmptyCell!15785) )
))
(declare-datatypes ((array!83779 0))(
  ( (array!83780 (arr!40396 (Array (_ BitVec 32) ValueCell!15785)) (size!40947 (_ BitVec 32))) )
))
(declare-fun _values!1187 () array!83779)

(declare-fun zeroValue!1129 () V!49593)

(declare-datatypes ((array!83781 0))(
  ( (array!83782 (arr!40397 (Array (_ BitVec 32) (_ BitVec 64))) (size!40948 (_ BitVec 32))) )
))
(declare-fun _keys!1427 () array!83781)

(declare-datatypes ((tuple2!21640 0))(
  ( (tuple2!21641 (_1!10830 (_ BitVec 64)) (_2!10830 V!49593)) )
))
(declare-datatypes ((List!28826 0))(
  ( (Nil!28823) (Cons!28822 (h!30031 tuple2!21640) (t!42369 List!28826)) )
))
(declare-datatypes ((ListLongMap!19309 0))(
  ( (ListLongMap!19310 (toList!9670 List!28826)) )
))
(declare-fun contains!7717 (ListLongMap!19309 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4690 (array!83781 array!83779 (_ BitVec 32) (_ BitVec 32) V!49593 V!49593 (_ BitVec 32) Int) ListLongMap!19309)

(assert (=> b!1276553 (= lt!575454 (contains!7717 (getCurrentListMap!4690 _keys!1427 _values!1187 mask!1805 extraKeys!1108 zeroValue!1129 minValue!1129 #b00000000000000000000000000000000 defaultEntry!1195) k!1053))))

(declare-fun b!1276554 () Bool)

(declare-fun res!848426 () Bool)

(assert (=> b!1276554 (=> (not res!848426) (not e!729009))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!83781 (_ BitVec 32)) Bool)

(assert (=> b!1276554 (= res!848426 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1427 mask!1805))))

(declare-fun mapIsEmpty!51581 () Bool)

(declare-fun mapRes!51581 () Bool)

(assert (=> mapIsEmpty!51581 mapRes!51581))

(declare-fun mapNonEmpty!51581 () Bool)

(declare-fun tp!98406 () Bool)

(assert (=> mapNonEmpty!51581 (= mapRes!51581 (and tp!98406 e!729007))))

(declare-fun mapRest!51581 () (Array (_ BitVec 32) ValueCell!15785))

(declare-fun mapKey!51581 () (_ BitVec 32))

(declare-fun mapValue!51581 () ValueCell!15785)

(assert (=> mapNonEmpty!51581 (= (arr!40396 _values!1187) (store mapRest!51581 mapKey!51581 mapValue!51581))))

(declare-fun b!1276556 () Bool)

(declare-fun res!848424 () Bool)

(assert (=> b!1276556 (=> (not res!848424) (not e!729009))))

(declare-datatypes ((List!28827 0))(
  ( (Nil!28824) (Cons!28823 (h!30032 (_ BitVec 64)) (t!42370 List!28827)) )
))
(declare-fun arrayNoDuplicates!0 (array!83781 (_ BitVec 32) List!28827) Bool)

(assert (=> b!1276556 (= res!848424 (arrayNoDuplicates!0 _keys!1427 #b00000000000000000000000000000000 Nil!28824))))

(declare-fun b!1276557 () Bool)

(declare-fun e!729010 () Bool)

(assert (=> b!1276557 (= e!729010 (and e!729008 mapRes!51581))))

(declare-fun condMapEmpty!51581 () Bool)

(declare-fun mapDefault!51581 () ValueCell!15785)


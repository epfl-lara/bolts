; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108156 () Bool)

(assert start!108156)

(declare-fun b_free!27833 () Bool)

(declare-fun b_next!27833 () Bool)

(assert (=> start!108156 (= b_free!27833 (not b_next!27833))))

(declare-fun tp!98453 () Bool)

(declare-fun b_and!45899 () Bool)

(assert (=> start!108156 (= tp!98453 b_and!45899)))

(declare-fun b!1276719 () Bool)

(declare-fun e!729131 () Bool)

(declare-fun tp_is_empty!33383 () Bool)

(assert (=> b!1276719 (= e!729131 tp_is_empty!33383)))

(declare-fun b!1276720 () Bool)

(declare-fun res!848520 () Bool)

(declare-fun e!729129 () Bool)

(assert (=> b!1276720 (=> (not res!848520) (not e!729129))))

(declare-fun mask!1805 () (_ BitVec 32))

(declare-fun extraKeys!1108 () (_ BitVec 32))

(declare-datatypes ((array!83809 0))(
  ( (array!83810 (arr!40411 (Array (_ BitVec 32) (_ BitVec 64))) (size!40962 (_ BitVec 32))) )
))
(declare-fun _keys!1427 () array!83809)

(declare-datatypes ((V!49613 0))(
  ( (V!49614 (val!16766 Int)) )
))
(declare-datatypes ((ValueCell!15793 0))(
  ( (ValueCellFull!15793 (v!19361 V!49613)) (EmptyCell!15793) )
))
(declare-datatypes ((array!83811 0))(
  ( (array!83812 (arr!40412 (Array (_ BitVec 32) ValueCell!15793)) (size!40963 (_ BitVec 32))) )
))
(declare-fun _values!1187 () array!83811)

(assert (=> b!1276720 (= res!848520 (and (= (size!40963 _values!1187) (bvadd #b00000000000000000000000000000001 mask!1805)) (= (size!40962 _keys!1427) (size!40963 _values!1187)) (bvsge mask!1805 #b00000000000000000000000000000000) (bvsge extraKeys!1108 #b00000000000000000000000000000000) (bvsle extraKeys!1108 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!51605 () Bool)

(declare-fun mapRes!51605 () Bool)

(declare-fun tp!98454 () Bool)

(declare-fun e!729128 () Bool)

(assert (=> mapNonEmpty!51605 (= mapRes!51605 (and tp!98454 e!729128))))

(declare-fun mapKey!51605 () (_ BitVec 32))

(declare-fun mapValue!51605 () ValueCell!15793)

(declare-fun mapRest!51605 () (Array (_ BitVec 32) ValueCell!15793))

(assert (=> mapNonEmpty!51605 (= (arr!40412 _values!1187) (store mapRest!51605 mapKey!51605 mapValue!51605))))

(declare-fun mapIsEmpty!51605 () Bool)

(assert (=> mapIsEmpty!51605 mapRes!51605))

(declare-fun b!1276721 () Bool)

(assert (=> b!1276721 (= e!729129 false)))

(declare-fun lt!575478 () Bool)

(declare-fun defaultEntry!1195 () Int)

(declare-fun minValue!1129 () V!49613)

(declare-fun k!1053 () (_ BitVec 64))

(declare-fun zeroValue!1129 () V!49613)

(declare-datatypes ((tuple2!21650 0))(
  ( (tuple2!21651 (_1!10835 (_ BitVec 64)) (_2!10835 V!49613)) )
))
(declare-datatypes ((List!28836 0))(
  ( (Nil!28833) (Cons!28832 (h!30041 tuple2!21650) (t!42379 List!28836)) )
))
(declare-datatypes ((ListLongMap!19319 0))(
  ( (ListLongMap!19320 (toList!9675 List!28836)) )
))
(declare-fun contains!7722 (ListLongMap!19319 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4695 (array!83809 array!83811 (_ BitVec 32) (_ BitVec 32) V!49613 V!49613 (_ BitVec 32) Int) ListLongMap!19319)

(assert (=> b!1276721 (= lt!575478 (contains!7722 (getCurrentListMap!4695 _keys!1427 _values!1187 mask!1805 extraKeys!1108 zeroValue!1129 minValue!1129 #b00000000000000000000000000000000 defaultEntry!1195) k!1053))))

(declare-fun b!1276722 () Bool)

(declare-fun e!729127 () Bool)

(assert (=> b!1276722 (= e!729127 (and e!729131 mapRes!51605))))

(declare-fun condMapEmpty!51605 () Bool)

(declare-fun mapDefault!51605 () ValueCell!15793)


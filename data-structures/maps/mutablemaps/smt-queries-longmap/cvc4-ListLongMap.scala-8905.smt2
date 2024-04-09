; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108120 () Bool)

(assert start!108120)

(declare-fun b_free!27797 () Bool)

(declare-fun b_next!27797 () Bool)

(assert (=> start!108120 (= b_free!27797 (not b_next!27797))))

(declare-fun tp!98345 () Bool)

(declare-fun b_and!45863 () Bool)

(assert (=> start!108120 (= tp!98345 b_and!45863)))

(declare-fun mapIsEmpty!51551 () Bool)

(declare-fun mapRes!51551 () Bool)

(assert (=> mapIsEmpty!51551 mapRes!51551))

(declare-fun b!1276341 () Bool)

(declare-fun e!728857 () Bool)

(declare-fun tp_is_empty!33347 () Bool)

(assert (=> b!1276341 (= e!728857 tp_is_empty!33347)))

(declare-fun b!1276342 () Bool)

(declare-fun res!848307 () Bool)

(declare-fun e!728860 () Bool)

(assert (=> b!1276342 (=> (not res!848307) (not e!728860))))

(declare-fun mask!1805 () (_ BitVec 32))

(declare-fun extraKeys!1108 () (_ BitVec 32))

(declare-datatypes ((array!83741 0))(
  ( (array!83742 (arr!40377 (Array (_ BitVec 32) (_ BitVec 64))) (size!40928 (_ BitVec 32))) )
))
(declare-fun _keys!1427 () array!83741)

(declare-datatypes ((V!49565 0))(
  ( (V!49566 (val!16748 Int)) )
))
(declare-datatypes ((ValueCell!15775 0))(
  ( (ValueCellFull!15775 (v!19343 V!49565)) (EmptyCell!15775) )
))
(declare-datatypes ((array!83743 0))(
  ( (array!83744 (arr!40378 (Array (_ BitVec 32) ValueCell!15775)) (size!40929 (_ BitVec 32))) )
))
(declare-fun _values!1187 () array!83743)

(assert (=> b!1276342 (= res!848307 (and (= (size!40929 _values!1187) (bvadd #b00000000000000000000000000000001 mask!1805)) (= (size!40928 _keys!1427) (size!40929 _values!1187)) (bvsge mask!1805 #b00000000000000000000000000000000) (bvsge extraKeys!1108 #b00000000000000000000000000000000) (bvsle extraKeys!1108 #b00000000000000000000000000000011)))))

(declare-fun b!1276343 () Bool)

(declare-fun e!728858 () Bool)

(assert (=> b!1276343 (= e!728858 tp_is_empty!33347)))

(declare-fun b!1276344 () Bool)

(assert (=> b!1276344 (= e!728860 false)))

(declare-fun lt!575424 () Bool)

(declare-fun defaultEntry!1195 () Int)

(declare-fun minValue!1129 () V!49565)

(declare-fun k!1053 () (_ BitVec 64))

(declare-fun zeroValue!1129 () V!49565)

(declare-datatypes ((tuple2!21626 0))(
  ( (tuple2!21627 (_1!10823 (_ BitVec 64)) (_2!10823 V!49565)) )
))
(declare-datatypes ((List!28811 0))(
  ( (Nil!28808) (Cons!28807 (h!30016 tuple2!21626) (t!42354 List!28811)) )
))
(declare-datatypes ((ListLongMap!19295 0))(
  ( (ListLongMap!19296 (toList!9663 List!28811)) )
))
(declare-fun contains!7710 (ListLongMap!19295 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4683 (array!83741 array!83743 (_ BitVec 32) (_ BitVec 32) V!49565 V!49565 (_ BitVec 32) Int) ListLongMap!19295)

(assert (=> b!1276344 (= lt!575424 (contains!7710 (getCurrentListMap!4683 _keys!1427 _values!1187 mask!1805 extraKeys!1108 zeroValue!1129 minValue!1129 #b00000000000000000000000000000000 defaultEntry!1195) k!1053))))

(declare-fun b!1276345 () Bool)

(declare-fun res!848305 () Bool)

(assert (=> b!1276345 (=> (not res!848305) (not e!728860))))

(declare-datatypes ((List!28812 0))(
  ( (Nil!28809) (Cons!28808 (h!30017 (_ BitVec 64)) (t!42355 List!28812)) )
))
(declare-fun arrayNoDuplicates!0 (array!83741 (_ BitVec 32) List!28812) Bool)

(assert (=> b!1276345 (= res!848305 (arrayNoDuplicates!0 _keys!1427 #b00000000000000000000000000000000 Nil!28809))))

(declare-fun b!1276346 () Bool)

(declare-fun res!848306 () Bool)

(assert (=> b!1276346 (=> (not res!848306) (not e!728860))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!83741 (_ BitVec 32)) Bool)

(assert (=> b!1276346 (= res!848306 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1427 mask!1805))))

(declare-fun b!1276347 () Bool)

(declare-fun e!728861 () Bool)

(assert (=> b!1276347 (= e!728861 (and e!728857 mapRes!51551))))

(declare-fun condMapEmpty!51551 () Bool)

(declare-fun mapDefault!51551 () ValueCell!15775)


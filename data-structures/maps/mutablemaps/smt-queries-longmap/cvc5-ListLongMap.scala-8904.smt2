; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108110 () Bool)

(assert start!108110)

(declare-fun b_free!27787 () Bool)

(declare-fun b_next!27787 () Bool)

(assert (=> start!108110 (= b_free!27787 (not b_next!27787))))

(declare-fun tp!98316 () Bool)

(declare-fun b_and!45853 () Bool)

(assert (=> start!108110 (= tp!98316 b_and!45853)))

(declare-fun b!1276236 () Bool)

(declare-fun e!728782 () Bool)

(declare-fun tp_is_empty!33337 () Bool)

(assert (=> b!1276236 (= e!728782 tp_is_empty!33337)))

(declare-fun mapIsEmpty!51536 () Bool)

(declare-fun mapRes!51536 () Bool)

(assert (=> mapIsEmpty!51536 mapRes!51536))

(declare-fun res!848244 () Bool)

(declare-fun e!728784 () Bool)

(assert (=> start!108110 (=> (not res!848244) (not e!728784))))

(declare-fun mask!1805 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108110 (= res!848244 (validMask!0 mask!1805))))

(assert (=> start!108110 e!728784))

(assert (=> start!108110 true))

(assert (=> start!108110 tp!98316))

(assert (=> start!108110 tp_is_empty!33337))

(declare-datatypes ((V!49553 0))(
  ( (V!49554 (val!16743 Int)) )
))
(declare-datatypes ((ValueCell!15770 0))(
  ( (ValueCellFull!15770 (v!19338 V!49553)) (EmptyCell!15770) )
))
(declare-datatypes ((array!83725 0))(
  ( (array!83726 (arr!40369 (Array (_ BitVec 32) ValueCell!15770)) (size!40920 (_ BitVec 32))) )
))
(declare-fun _values!1187 () array!83725)

(declare-fun e!728786 () Bool)

(declare-fun array_inv!30641 (array!83725) Bool)

(assert (=> start!108110 (and (array_inv!30641 _values!1187) e!728786)))

(declare-datatypes ((array!83727 0))(
  ( (array!83728 (arr!40370 (Array (_ BitVec 32) (_ BitVec 64))) (size!40921 (_ BitVec 32))) )
))
(declare-fun _keys!1427 () array!83727)

(declare-fun array_inv!30642 (array!83727) Bool)

(assert (=> start!108110 (array_inv!30642 _keys!1427)))

(declare-fun b!1276237 () Bool)

(declare-fun res!848245 () Bool)

(assert (=> b!1276237 (=> (not res!848245) (not e!728784))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!83727 (_ BitVec 32)) Bool)

(assert (=> b!1276237 (= res!848245 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1427 mask!1805))))

(declare-fun b!1276238 () Bool)

(declare-fun e!728783 () Bool)

(assert (=> b!1276238 (= e!728783 tp_is_empty!33337)))

(declare-fun b!1276239 () Bool)

(assert (=> b!1276239 (= e!728784 false)))

(declare-fun extraKeys!1108 () (_ BitVec 32))

(declare-fun lt!575409 () Bool)

(declare-fun defaultEntry!1195 () Int)

(declare-fun minValue!1129 () V!49553)

(declare-fun k!1053 () (_ BitVec 64))

(declare-fun zeroValue!1129 () V!49553)

(declare-datatypes ((tuple2!21620 0))(
  ( (tuple2!21621 (_1!10820 (_ BitVec 64)) (_2!10820 V!49553)) )
))
(declare-datatypes ((List!28805 0))(
  ( (Nil!28802) (Cons!28801 (h!30010 tuple2!21620) (t!42348 List!28805)) )
))
(declare-datatypes ((ListLongMap!19289 0))(
  ( (ListLongMap!19290 (toList!9660 List!28805)) )
))
(declare-fun contains!7707 (ListLongMap!19289 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4680 (array!83727 array!83725 (_ BitVec 32) (_ BitVec 32) V!49553 V!49553 (_ BitVec 32) Int) ListLongMap!19289)

(assert (=> b!1276239 (= lt!575409 (contains!7707 (getCurrentListMap!4680 _keys!1427 _values!1187 mask!1805 extraKeys!1108 zeroValue!1129 minValue!1129 #b00000000000000000000000000000000 defaultEntry!1195) k!1053))))

(declare-fun mapNonEmpty!51536 () Bool)

(declare-fun tp!98315 () Bool)

(assert (=> mapNonEmpty!51536 (= mapRes!51536 (and tp!98315 e!728783))))

(declare-fun mapRest!51536 () (Array (_ BitVec 32) ValueCell!15770))

(declare-fun mapKey!51536 () (_ BitVec 32))

(declare-fun mapValue!51536 () ValueCell!15770)

(assert (=> mapNonEmpty!51536 (= (arr!40369 _values!1187) (store mapRest!51536 mapKey!51536 mapValue!51536))))

(declare-fun b!1276240 () Bool)

(declare-fun res!848246 () Bool)

(assert (=> b!1276240 (=> (not res!848246) (not e!728784))))

(declare-datatypes ((List!28806 0))(
  ( (Nil!28803) (Cons!28802 (h!30011 (_ BitVec 64)) (t!42349 List!28806)) )
))
(declare-fun arrayNoDuplicates!0 (array!83727 (_ BitVec 32) List!28806) Bool)

(assert (=> b!1276240 (= res!848246 (arrayNoDuplicates!0 _keys!1427 #b00000000000000000000000000000000 Nil!28803))))

(declare-fun b!1276241 () Bool)

(declare-fun res!848247 () Bool)

(assert (=> b!1276241 (=> (not res!848247) (not e!728784))))

(assert (=> b!1276241 (= res!848247 (and (= (size!40920 _values!1187) (bvadd #b00000000000000000000000000000001 mask!1805)) (= (size!40921 _keys!1427) (size!40920 _values!1187)) (bvsge mask!1805 #b00000000000000000000000000000000) (bvsge extraKeys!1108 #b00000000000000000000000000000000) (bvsle extraKeys!1108 #b00000000000000000000000000000011)))))

(declare-fun b!1276242 () Bool)

(assert (=> b!1276242 (= e!728786 (and e!728782 mapRes!51536))))

(declare-fun condMapEmpty!51536 () Bool)

(declare-fun mapDefault!51536 () ValueCell!15770)


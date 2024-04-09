; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108102 () Bool)

(assert start!108102)

(declare-fun b_free!27779 () Bool)

(declare-fun b_next!27779 () Bool)

(assert (=> start!108102 (= b_free!27779 (not b_next!27779))))

(declare-fun tp!98291 () Bool)

(declare-fun b_and!45845 () Bool)

(assert (=> start!108102 (= tp!98291 b_and!45845)))

(declare-fun b!1276152 () Bool)

(declare-fun res!848197 () Bool)

(declare-fun e!728726 () Bool)

(assert (=> b!1276152 (=> (not res!848197) (not e!728726))))

(declare-fun mask!1805 () (_ BitVec 32))

(declare-fun extraKeys!1108 () (_ BitVec 32))

(declare-datatypes ((array!83709 0))(
  ( (array!83710 (arr!40361 (Array (_ BitVec 32) (_ BitVec 64))) (size!40912 (_ BitVec 32))) )
))
(declare-fun _keys!1427 () array!83709)

(declare-datatypes ((V!49541 0))(
  ( (V!49542 (val!16739 Int)) )
))
(declare-datatypes ((ValueCell!15766 0))(
  ( (ValueCellFull!15766 (v!19334 V!49541)) (EmptyCell!15766) )
))
(declare-datatypes ((array!83711 0))(
  ( (array!83712 (arr!40362 (Array (_ BitVec 32) ValueCell!15766)) (size!40913 (_ BitVec 32))) )
))
(declare-fun _values!1187 () array!83711)

(assert (=> b!1276152 (= res!848197 (and (= (size!40913 _values!1187) (bvadd #b00000000000000000000000000000001 mask!1805)) (= (size!40912 _keys!1427) (size!40913 _values!1187)) (bvsge mask!1805 #b00000000000000000000000000000000) (bvsge extraKeys!1108 #b00000000000000000000000000000000) (bvsle extraKeys!1108 #b00000000000000000000000000000011)))))

(declare-fun res!848198 () Bool)

(assert (=> start!108102 (=> (not res!848198) (not e!728726))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108102 (= res!848198 (validMask!0 mask!1805))))

(assert (=> start!108102 e!728726))

(assert (=> start!108102 true))

(assert (=> start!108102 tp!98291))

(declare-fun tp_is_empty!33329 () Bool)

(assert (=> start!108102 tp_is_empty!33329))

(declare-fun e!728724 () Bool)

(declare-fun array_inv!30635 (array!83711) Bool)

(assert (=> start!108102 (and (array_inv!30635 _values!1187) e!728724)))

(declare-fun array_inv!30636 (array!83709) Bool)

(assert (=> start!108102 (array_inv!30636 _keys!1427)))

(declare-fun b!1276153 () Bool)

(declare-fun res!848199 () Bool)

(assert (=> b!1276153 (=> (not res!848199) (not e!728726))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!83709 (_ BitVec 32)) Bool)

(assert (=> b!1276153 (= res!848199 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1427 mask!1805))))

(declare-fun mapNonEmpty!51524 () Bool)

(declare-fun mapRes!51524 () Bool)

(declare-fun tp!98292 () Bool)

(declare-fun e!728722 () Bool)

(assert (=> mapNonEmpty!51524 (= mapRes!51524 (and tp!98292 e!728722))))

(declare-fun mapKey!51524 () (_ BitVec 32))

(declare-fun mapValue!51524 () ValueCell!15766)

(declare-fun mapRest!51524 () (Array (_ BitVec 32) ValueCell!15766))

(assert (=> mapNonEmpty!51524 (= (arr!40362 _values!1187) (store mapRest!51524 mapKey!51524 mapValue!51524))))

(declare-fun b!1276154 () Bool)

(declare-fun res!848196 () Bool)

(assert (=> b!1276154 (=> (not res!848196) (not e!728726))))

(declare-datatypes ((List!28801 0))(
  ( (Nil!28798) (Cons!28797 (h!30006 (_ BitVec 64)) (t!42344 List!28801)) )
))
(declare-fun arrayNoDuplicates!0 (array!83709 (_ BitVec 32) List!28801) Bool)

(assert (=> b!1276154 (= res!848196 (arrayNoDuplicates!0 _keys!1427 #b00000000000000000000000000000000 Nil!28798))))

(declare-fun b!1276155 () Bool)

(assert (=> b!1276155 (= e!728726 false)))

(declare-fun defaultEntry!1195 () Int)

(declare-fun minValue!1129 () V!49541)

(declare-fun k!1053 () (_ BitVec 64))

(declare-fun zeroValue!1129 () V!49541)

(declare-fun lt!575397 () Bool)

(declare-datatypes ((tuple2!21616 0))(
  ( (tuple2!21617 (_1!10818 (_ BitVec 64)) (_2!10818 V!49541)) )
))
(declare-datatypes ((List!28802 0))(
  ( (Nil!28799) (Cons!28798 (h!30007 tuple2!21616) (t!42345 List!28802)) )
))
(declare-datatypes ((ListLongMap!19285 0))(
  ( (ListLongMap!19286 (toList!9658 List!28802)) )
))
(declare-fun contains!7705 (ListLongMap!19285 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4678 (array!83709 array!83711 (_ BitVec 32) (_ BitVec 32) V!49541 V!49541 (_ BitVec 32) Int) ListLongMap!19285)

(assert (=> b!1276155 (= lt!575397 (contains!7705 (getCurrentListMap!4678 _keys!1427 _values!1187 mask!1805 extraKeys!1108 zeroValue!1129 minValue!1129 #b00000000000000000000000000000000 defaultEntry!1195) k!1053))))

(declare-fun b!1276156 () Bool)

(declare-fun e!728725 () Bool)

(assert (=> b!1276156 (= e!728725 tp_is_empty!33329)))

(declare-fun mapIsEmpty!51524 () Bool)

(assert (=> mapIsEmpty!51524 mapRes!51524))

(declare-fun b!1276157 () Bool)

(assert (=> b!1276157 (= e!728722 tp_is_empty!33329)))

(declare-fun b!1276158 () Bool)

(assert (=> b!1276158 (= e!728724 (and e!728725 mapRes!51524))))

(declare-fun condMapEmpty!51524 () Bool)

(declare-fun mapDefault!51524 () ValueCell!15766)


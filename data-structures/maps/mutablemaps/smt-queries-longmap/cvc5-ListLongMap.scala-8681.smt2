; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105520 () Bool)

(assert start!105520)

(declare-fun b_free!27121 () Bool)

(declare-fun b_next!27121 () Bool)

(assert (=> start!105520 (= b_free!27121 (not b_next!27121))))

(declare-fun tp!94880 () Bool)

(declare-fun b_and!44987 () Bool)

(assert (=> start!105520 (= tp!94880 b_and!44987)))

(declare-fun b!1256609 () Bool)

(declare-fun e!714441 () Bool)

(declare-fun tp_is_empty!32023 () Bool)

(assert (=> b!1256609 (= e!714441 tp_is_empty!32023)))

(declare-fun b!1256610 () Bool)

(declare-fun e!714443 () Bool)

(declare-fun e!714444 () Bool)

(assert (=> b!1256610 (= e!714443 e!714444)))

(declare-fun res!837776 () Bool)

(assert (=> b!1256610 (=> res!837776 e!714444)))

(declare-datatypes ((V!48063 0))(
  ( (V!48064 (val!16074 Int)) )
))
(declare-datatypes ((tuple2!20918 0))(
  ( (tuple2!20919 (_1!10469 (_ BitVec 64)) (_2!10469 V!48063)) )
))
(declare-datatypes ((List!28152 0))(
  ( (Nil!28149) (Cons!28148 (h!29357 tuple2!20918) (t!41648 List!28152)) )
))
(declare-datatypes ((ListLongMap!18803 0))(
  ( (ListLongMap!18804 (toList!9417 List!28152)) )
))
(declare-fun lt!568240 () ListLongMap!18803)

(declare-fun contains!7573 (ListLongMap!18803 (_ BitVec 64)) Bool)

(assert (=> b!1256610 (= res!837776 (contains!7573 lt!568240 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun defaultEntry!922 () Int)

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!48063)

(declare-datatypes ((array!81681 0))(
  ( (array!81682 (arr!39394 (Array (_ BitVec 32) (_ BitVec 64))) (size!39931 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81681)

(declare-datatypes ((ValueCell!15248 0))(
  ( (ValueCellFull!15248 (v!18775 V!48063)) (EmptyCell!15248) )
))
(declare-datatypes ((array!81683 0))(
  ( (array!81684 (arr!39395 (Array (_ BitVec 32) ValueCell!15248)) (size!39932 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81683)

(declare-fun minValueBefore!43 () V!48063)

(declare-fun getCurrentListMap!4577 (array!81681 array!81683 (_ BitVec 32) (_ BitVec 32) V!48063 V!48063 (_ BitVec 32) Int) ListLongMap!18803)

(assert (=> b!1256610 (= lt!568240 (getCurrentListMap!4577 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1256611 () Bool)

(assert (=> b!1256611 (= e!714444 true)))

(declare-fun -!2095 (ListLongMap!18803 (_ BitVec 64)) ListLongMap!18803)

(assert (=> b!1256611 (= (-!2095 lt!568240 #b1000000000000000000000000000000000000000000000000000000000000000) lt!568240)))

(declare-datatypes ((Unit!41806 0))(
  ( (Unit!41807) )
))
(declare-fun lt!568242 () Unit!41806)

(declare-fun removeNotPresentStillSame!128 (ListLongMap!18803 (_ BitVec 64)) Unit!41806)

(assert (=> b!1256611 (= lt!568242 (removeNotPresentStillSame!128 lt!568240 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1256612 () Bool)

(declare-fun res!837772 () Bool)

(declare-fun e!714445 () Bool)

(assert (=> b!1256612 (=> (not res!837772) (not e!714445))))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(assert (=> b!1256612 (= res!837772 (and (= (size!39932 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39931 _keys!1118) (size!39932 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1256613 () Bool)

(declare-fun e!714440 () Bool)

(assert (=> b!1256613 (= e!714440 tp_is_empty!32023)))

(declare-fun b!1256614 () Bool)

(declare-fun res!837775 () Bool)

(assert (=> b!1256614 (=> (not res!837775) (not e!714445))))

(declare-datatypes ((List!28153 0))(
  ( (Nil!28150) (Cons!28149 (h!29358 (_ BitVec 64)) (t!41649 List!28153)) )
))
(declare-fun arrayNoDuplicates!0 (array!81681 (_ BitVec 32) List!28153) Bool)

(assert (=> b!1256614 (= res!837775 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28150))))

(declare-fun mapNonEmpty!49822 () Bool)

(declare-fun mapRes!49822 () Bool)

(declare-fun tp!94881 () Bool)

(assert (=> mapNonEmpty!49822 (= mapRes!49822 (and tp!94881 e!714441))))

(declare-fun mapKey!49822 () (_ BitVec 32))

(declare-fun mapValue!49822 () ValueCell!15248)

(declare-fun mapRest!49822 () (Array (_ BitVec 32) ValueCell!15248))

(assert (=> mapNonEmpty!49822 (= (arr!39395 _values!914) (store mapRest!49822 mapKey!49822 mapValue!49822))))

(declare-fun b!1256615 () Bool)

(declare-fun e!714442 () Bool)

(assert (=> b!1256615 (= e!714442 (and e!714440 mapRes!49822))))

(declare-fun condMapEmpty!49822 () Bool)

(declare-fun mapDefault!49822 () ValueCell!15248)


; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!42204 () Bool)

(assert start!42204)

(declare-fun b_free!11715 () Bool)

(declare-fun b_next!11715 () Bool)

(assert (=> start!42204 (= b_free!11715 (not b_next!11715))))

(declare-fun tp!41170 () Bool)

(declare-fun b_and!20163 () Bool)

(assert (=> start!42204 (= tp!41170 b_and!20163)))

(declare-fun res!281344 () Bool)

(declare-fun e!275866 () Bool)

(assert (=> start!42204 (=> (not res!281344) (not e!275866))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!42204 (= res!281344 (validMask!0 mask!1365))))

(assert (=> start!42204 e!275866))

(declare-fun tp_is_empty!13143 () Bool)

(assert (=> start!42204 tp_is_empty!13143))

(assert (=> start!42204 tp!41170))

(assert (=> start!42204 true))

(declare-datatypes ((array!30015 0))(
  ( (array!30016 (arr!14427 (Array (_ BitVec 32) (_ BitVec 64))) (size!14779 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!30015)

(declare-fun array_inv!10412 (array!30015) Bool)

(assert (=> start!42204 (array_inv!10412 _keys!1025)))

(declare-datatypes ((V!18629 0))(
  ( (V!18630 (val!6616 Int)) )
))
(declare-datatypes ((ValueCell!6228 0))(
  ( (ValueCellFull!6228 (v!8903 V!18629)) (EmptyCell!6228) )
))
(declare-datatypes ((array!30017 0))(
  ( (array!30018 (arr!14428 (Array (_ BitVec 32) ValueCell!6228)) (size!14780 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!30017)

(declare-fun e!275867 () Bool)

(declare-fun array_inv!10413 (array!30017) Bool)

(assert (=> start!42204 (and (array_inv!10413 _values!833) e!275867)))

(declare-fun mapIsEmpty!21418 () Bool)

(declare-fun mapRes!21418 () Bool)

(assert (=> mapIsEmpty!21418 mapRes!21418))

(declare-fun b!470778 () Bool)

(assert (=> b!470778 (= e!275866 (not true))))

(declare-datatypes ((tuple2!8682 0))(
  ( (tuple2!8683 (_1!4351 (_ BitVec 64)) (_2!4351 V!18629)) )
))
(declare-datatypes ((List!8805 0))(
  ( (Nil!8802) (Cons!8801 (h!9657 tuple2!8682) (t!14777 List!8805)) )
))
(declare-datatypes ((ListLongMap!7609 0))(
  ( (ListLongMap!7610 (toList!3820 List!8805)) )
))
(declare-fun lt!213648 () ListLongMap!7609)

(declare-fun lt!213649 () ListLongMap!7609)

(assert (=> b!470778 (= lt!213648 lt!213649)))

(declare-fun minValueBefore!38 () V!18629)

(declare-datatypes ((Unit!13766 0))(
  ( (Unit!13767) )
))
(declare-fun lt!213650 () Unit!13766)

(declare-fun zeroValue!794 () V!18629)

(declare-fun defaultEntry!841 () Int)

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-fun minValueAfter!38 () V!18629)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!177 (array!30015 array!30017 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18629 V!18629 V!18629 V!18629 (_ BitVec 32) Int) Unit!13766)

(assert (=> b!470778 (= lt!213650 (lemmaNoChangeToArrayThenSameMapNoExtras!177 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1982 (array!30015 array!30017 (_ BitVec 32) (_ BitVec 32) V!18629 V!18629 (_ BitVec 32) Int) ListLongMap!7609)

(assert (=> b!470778 (= lt!213649 (getCurrentListMapNoExtraKeys!1982 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!470778 (= lt!213648 (getCurrentListMapNoExtraKeys!1982 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!470779 () Bool)

(declare-fun e!275864 () Bool)

(assert (=> b!470779 (= e!275864 tp_is_empty!13143)))

(declare-fun b!470780 () Bool)

(assert (=> b!470780 (= e!275867 (and e!275864 mapRes!21418))))

(declare-fun condMapEmpty!21418 () Bool)

(declare-fun mapDefault!21418 () ValueCell!6228)

(assert (=> b!470780 (= condMapEmpty!21418 (= (arr!14428 _values!833) ((as const (Array (_ BitVec 32) ValueCell!6228)) mapDefault!21418)))))

(declare-fun b!470781 () Bool)

(declare-fun res!281343 () Bool)

(assert (=> b!470781 (=> (not res!281343) (not e!275866))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!30015 (_ BitVec 32)) Bool)

(assert (=> b!470781 (= res!281343 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!470782 () Bool)

(declare-fun res!281342 () Bool)

(assert (=> b!470782 (=> (not res!281342) (not e!275866))))

(assert (=> b!470782 (= res!281342 (and (= (size!14780 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14779 _keys!1025) (size!14780 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun mapNonEmpty!21418 () Bool)

(declare-fun tp!41169 () Bool)

(declare-fun e!275865 () Bool)

(assert (=> mapNonEmpty!21418 (= mapRes!21418 (and tp!41169 e!275865))))

(declare-fun mapRest!21418 () (Array (_ BitVec 32) ValueCell!6228))

(declare-fun mapKey!21418 () (_ BitVec 32))

(declare-fun mapValue!21418 () ValueCell!6228)

(assert (=> mapNonEmpty!21418 (= (arr!14428 _values!833) (store mapRest!21418 mapKey!21418 mapValue!21418))))

(declare-fun b!470783 () Bool)

(declare-fun res!281341 () Bool)

(assert (=> b!470783 (=> (not res!281341) (not e!275866))))

(declare-datatypes ((List!8806 0))(
  ( (Nil!8803) (Cons!8802 (h!9658 (_ BitVec 64)) (t!14778 List!8806)) )
))
(declare-fun arrayNoDuplicates!0 (array!30015 (_ BitVec 32) List!8806) Bool)

(assert (=> b!470783 (= res!281341 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8803))))

(declare-fun b!470784 () Bool)

(assert (=> b!470784 (= e!275865 tp_is_empty!13143)))

(assert (= (and start!42204 res!281344) b!470782))

(assert (= (and b!470782 res!281342) b!470781))

(assert (= (and b!470781 res!281343) b!470783))

(assert (= (and b!470783 res!281341) b!470778))

(assert (= (and b!470780 condMapEmpty!21418) mapIsEmpty!21418))

(assert (= (and b!470780 (not condMapEmpty!21418)) mapNonEmpty!21418))

(get-info :version)

(assert (= (and mapNonEmpty!21418 ((_ is ValueCellFull!6228) mapValue!21418)) b!470784))

(assert (= (and b!470780 ((_ is ValueCellFull!6228) mapDefault!21418)) b!470779))

(assert (= start!42204 b!470780))

(declare-fun m!453019 () Bool)

(assert (=> start!42204 m!453019))

(declare-fun m!453021 () Bool)

(assert (=> start!42204 m!453021))

(declare-fun m!453023 () Bool)

(assert (=> start!42204 m!453023))

(declare-fun m!453025 () Bool)

(assert (=> b!470781 m!453025))

(declare-fun m!453027 () Bool)

(assert (=> b!470778 m!453027))

(declare-fun m!453029 () Bool)

(assert (=> b!470778 m!453029))

(declare-fun m!453031 () Bool)

(assert (=> b!470778 m!453031))

(declare-fun m!453033 () Bool)

(assert (=> mapNonEmpty!21418 m!453033))

(declare-fun m!453035 () Bool)

(assert (=> b!470783 m!453035))

(check-sat tp_is_empty!13143 b_and!20163 (not b!470778) (not start!42204) (not b!470783) (not mapNonEmpty!21418) (not b!470781) (not b_next!11715))
(check-sat b_and!20163 (not b_next!11715))

; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!70050 () Bool)

(assert start!70050)

(declare-fun b_free!12447 () Bool)

(declare-fun b_next!12447 () Bool)

(assert (=> start!70050 (= b_free!12447 (not b_next!12447))))

(declare-fun tp!44055 () Bool)

(declare-fun b_and!21237 () Bool)

(assert (=> start!70050 (= tp!44055 b_and!21237)))

(declare-fun b!813689 () Bool)

(declare-fun e!450980 () Bool)

(declare-fun tp_is_empty!14157 () Bool)

(assert (=> b!813689 (= e!450980 tp_is_empty!14157)))

(declare-fun mapNonEmpty!22816 () Bool)

(declare-fun mapRes!22816 () Bool)

(declare-fun tp!44056 () Bool)

(declare-fun e!450978 () Bool)

(assert (=> mapNonEmpty!22816 (= mapRes!22816 (and tp!44056 e!450978))))

(declare-datatypes ((V!23877 0))(
  ( (V!23878 (val!7126 Int)) )
))
(declare-datatypes ((ValueCell!6663 0))(
  ( (ValueCellFull!6663 (v!9549 V!23877)) (EmptyCell!6663) )
))
(declare-datatypes ((array!44504 0))(
  ( (array!44505 (arr!21308 (Array (_ BitVec 32) ValueCell!6663)) (size!21729 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44504)

(declare-fun mapKey!22816 () (_ BitVec 32))

(declare-fun mapValue!22816 () ValueCell!6663)

(declare-fun mapRest!22816 () (Array (_ BitVec 32) ValueCell!6663))

(assert (=> mapNonEmpty!22816 (= (arr!21308 _values!788) (store mapRest!22816 mapKey!22816 mapValue!22816))))

(declare-fun b!813690 () Bool)

(declare-fun e!450979 () Bool)

(assert (=> b!813690 (= e!450979 false)))

(declare-fun zeroValueAfter!34 () V!23877)

(declare-fun minValue!754 () V!23877)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-datatypes ((tuple2!9338 0))(
  ( (tuple2!9339 (_1!4679 (_ BitVec 64)) (_2!4679 V!23877)) )
))
(declare-datatypes ((List!15215 0))(
  ( (Nil!15212) (Cons!15211 (h!16340 tuple2!9338) (t!21540 List!15215)) )
))
(declare-datatypes ((ListLongMap!8175 0))(
  ( (ListLongMap!8176 (toList!4103 List!15215)) )
))
(declare-fun lt!364357 () ListLongMap!8175)

(declare-fun defaultEntry!796 () Int)

(declare-datatypes ((array!44506 0))(
  ( (array!44507 (arr!21309 (Array (_ BitVec 32) (_ BitVec 64))) (size!21730 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44506)

(declare-fun getCurrentListMapNoExtraKeys!2152 (array!44506 array!44504 (_ BitVec 32) (_ BitVec 32) V!23877 V!23877 (_ BitVec 32) Int) ListLongMap!8175)

(assert (=> b!813690 (= lt!364357 (getCurrentListMapNoExtraKeys!2152 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun zeroValueBefore!34 () V!23877)

(declare-fun lt!364358 () ListLongMap!8175)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(assert (=> b!813690 (= lt!364358 (getCurrentListMapNoExtraKeys!2152 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!813691 () Bool)

(assert (=> b!813691 (= e!450978 tp_is_empty!14157)))

(declare-fun b!813692 () Bool)

(declare-fun res!555951 () Bool)

(assert (=> b!813692 (=> (not res!555951) (not e!450979))))

(declare-datatypes ((List!15216 0))(
  ( (Nil!15213) (Cons!15212 (h!16341 (_ BitVec 64)) (t!21541 List!15216)) )
))
(declare-fun arrayNoDuplicates!0 (array!44506 (_ BitVec 32) List!15216) Bool)

(assert (=> b!813692 (= res!555951 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15213))))

(declare-fun mapIsEmpty!22816 () Bool)

(assert (=> mapIsEmpty!22816 mapRes!22816))

(declare-fun b!813693 () Bool)

(declare-fun res!555953 () Bool)

(assert (=> b!813693 (=> (not res!555953) (not e!450979))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44506 (_ BitVec 32)) Bool)

(assert (=> b!813693 (= res!555953 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun res!555952 () Bool)

(assert (=> start!70050 (=> (not res!555952) (not e!450979))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70050 (= res!555952 (validMask!0 mask!1312))))

(assert (=> start!70050 e!450979))

(assert (=> start!70050 tp_is_empty!14157))

(declare-fun array_inv!17041 (array!44506) Bool)

(assert (=> start!70050 (array_inv!17041 _keys!976)))

(assert (=> start!70050 true))

(declare-fun e!450977 () Bool)

(declare-fun array_inv!17042 (array!44504) Bool)

(assert (=> start!70050 (and (array_inv!17042 _values!788) e!450977)))

(assert (=> start!70050 tp!44055))

(declare-fun b!813694 () Bool)

(declare-fun res!555950 () Bool)

(assert (=> b!813694 (=> (not res!555950) (not e!450979))))

(assert (=> b!813694 (= res!555950 (and (= (size!21729 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!21730 _keys!976) (size!21729 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!813695 () Bool)

(assert (=> b!813695 (= e!450977 (and e!450980 mapRes!22816))))

(declare-fun condMapEmpty!22816 () Bool)

(declare-fun mapDefault!22816 () ValueCell!6663)

(assert (=> b!813695 (= condMapEmpty!22816 (= (arr!21308 _values!788) ((as const (Array (_ BitVec 32) ValueCell!6663)) mapDefault!22816)))))

(assert (= (and start!70050 res!555952) b!813694))

(assert (= (and b!813694 res!555950) b!813693))

(assert (= (and b!813693 res!555953) b!813692))

(assert (= (and b!813692 res!555951) b!813690))

(assert (= (and b!813695 condMapEmpty!22816) mapIsEmpty!22816))

(assert (= (and b!813695 (not condMapEmpty!22816)) mapNonEmpty!22816))

(get-info :version)

(assert (= (and mapNonEmpty!22816 ((_ is ValueCellFull!6663) mapValue!22816)) b!813691))

(assert (= (and b!813695 ((_ is ValueCellFull!6663) mapDefault!22816)) b!813689))

(assert (= start!70050 b!813695))

(declare-fun m!755715 () Bool)

(assert (=> b!813693 m!755715))

(declare-fun m!755717 () Bool)

(assert (=> b!813690 m!755717))

(declare-fun m!755719 () Bool)

(assert (=> b!813690 m!755719))

(declare-fun m!755721 () Bool)

(assert (=> start!70050 m!755721))

(declare-fun m!755723 () Bool)

(assert (=> start!70050 m!755723))

(declare-fun m!755725 () Bool)

(assert (=> start!70050 m!755725))

(declare-fun m!755727 () Bool)

(assert (=> b!813692 m!755727))

(declare-fun m!755729 () Bool)

(assert (=> mapNonEmpty!22816 m!755729))

(check-sat (not b!813690) tp_is_empty!14157 (not b_next!12447) (not start!70050) (not b!813693) (not b!813692) b_and!21237 (not mapNonEmpty!22816))
(check-sat b_and!21237 (not b_next!12447))

; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!42210 () Bool)

(assert start!42210)

(declare-fun b_free!11721 () Bool)

(declare-fun b_next!11721 () Bool)

(assert (=> start!42210 (= b_free!11721 (not b_next!11721))))

(declare-fun tp!41187 () Bool)

(declare-fun b_and!20169 () Bool)

(assert (=> start!42210 (= tp!41187 b_and!20169)))

(declare-fun mapIsEmpty!21427 () Bool)

(declare-fun mapRes!21427 () Bool)

(assert (=> mapIsEmpty!21427 mapRes!21427))

(declare-fun b!470841 () Bool)

(declare-fun res!281378 () Bool)

(declare-fun e!275911 () Bool)

(assert (=> b!470841 (=> (not res!281378) (not e!275911))))

(declare-datatypes ((array!30027 0))(
  ( (array!30028 (arr!14433 (Array (_ BitVec 32) (_ BitVec 64))) (size!14785 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!30027)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!30027 (_ BitVec 32)) Bool)

(assert (=> b!470841 (= res!281378 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!470842 () Bool)

(declare-fun res!281379 () Bool)

(assert (=> b!470842 (=> (not res!281379) (not e!275911))))

(declare-datatypes ((List!8808 0))(
  ( (Nil!8805) (Cons!8804 (h!9660 (_ BitVec 64)) (t!14780 List!8808)) )
))
(declare-fun arrayNoDuplicates!0 (array!30027 (_ BitVec 32) List!8808) Bool)

(assert (=> b!470842 (= res!281379 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8805))))

(declare-fun res!281380 () Bool)

(assert (=> start!42210 (=> (not res!281380) (not e!275911))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!42210 (= res!281380 (validMask!0 mask!1365))))

(assert (=> start!42210 e!275911))

(declare-fun tp_is_empty!13149 () Bool)

(assert (=> start!42210 tp_is_empty!13149))

(assert (=> start!42210 tp!41187))

(assert (=> start!42210 true))

(declare-fun array_inv!10414 (array!30027) Bool)

(assert (=> start!42210 (array_inv!10414 _keys!1025)))

(declare-datatypes ((V!18637 0))(
  ( (V!18638 (val!6619 Int)) )
))
(declare-datatypes ((ValueCell!6231 0))(
  ( (ValueCellFull!6231 (v!8906 V!18637)) (EmptyCell!6231) )
))
(declare-datatypes ((array!30029 0))(
  ( (array!30030 (arr!14434 (Array (_ BitVec 32) ValueCell!6231)) (size!14786 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!30029)

(declare-fun e!275912 () Bool)

(declare-fun array_inv!10415 (array!30029) Bool)

(assert (=> start!42210 (and (array_inv!10415 _values!833) e!275912)))

(declare-fun b!470843 () Bool)

(declare-fun e!275910 () Bool)

(assert (=> b!470843 (= e!275910 tp_is_empty!13149)))

(declare-fun b!470844 () Bool)

(declare-fun res!281377 () Bool)

(assert (=> b!470844 (=> (not res!281377) (not e!275911))))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(assert (=> b!470844 (= res!281377 (and (= (size!14786 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14785 _keys!1025) (size!14786 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!470845 () Bool)

(declare-fun e!275909 () Bool)

(assert (=> b!470845 (= e!275912 (and e!275909 mapRes!21427))))

(declare-fun condMapEmpty!21427 () Bool)

(declare-fun mapDefault!21427 () ValueCell!6231)

(assert (=> b!470845 (= condMapEmpty!21427 (= (arr!14434 _values!833) ((as const (Array (_ BitVec 32) ValueCell!6231)) mapDefault!21427)))))

(declare-fun b!470846 () Bool)

(assert (=> b!470846 (= e!275911 (not true))))

(declare-datatypes ((tuple2!8686 0))(
  ( (tuple2!8687 (_1!4353 (_ BitVec 64)) (_2!4353 V!18637)) )
))
(declare-datatypes ((List!8809 0))(
  ( (Nil!8806) (Cons!8805 (h!9661 tuple2!8686) (t!14781 List!8809)) )
))
(declare-datatypes ((ListLongMap!7613 0))(
  ( (ListLongMap!7614 (toList!3822 List!8809)) )
))
(declare-fun lt!213676 () ListLongMap!7613)

(declare-fun lt!213675 () ListLongMap!7613)

(assert (=> b!470846 (= lt!213676 lt!213675)))

(declare-fun minValueBefore!38 () V!18637)

(declare-fun zeroValue!794 () V!18637)

(declare-fun defaultEntry!841 () Int)

(declare-datatypes ((Unit!13770 0))(
  ( (Unit!13771) )
))
(declare-fun lt!213677 () Unit!13770)

(declare-fun minValueAfter!38 () V!18637)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!179 (array!30027 array!30029 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18637 V!18637 V!18637 V!18637 (_ BitVec 32) Int) Unit!13770)

(assert (=> b!470846 (= lt!213677 (lemmaNoChangeToArrayThenSameMapNoExtras!179 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1984 (array!30027 array!30029 (_ BitVec 32) (_ BitVec 32) V!18637 V!18637 (_ BitVec 32) Int) ListLongMap!7613)

(assert (=> b!470846 (= lt!213675 (getCurrentListMapNoExtraKeys!1984 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!470846 (= lt!213676 (getCurrentListMapNoExtraKeys!1984 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!470847 () Bool)

(assert (=> b!470847 (= e!275909 tp_is_empty!13149)))

(declare-fun mapNonEmpty!21427 () Bool)

(declare-fun tp!41188 () Bool)

(assert (=> mapNonEmpty!21427 (= mapRes!21427 (and tp!41188 e!275910))))

(declare-fun mapRest!21427 () (Array (_ BitVec 32) ValueCell!6231))

(declare-fun mapValue!21427 () ValueCell!6231)

(declare-fun mapKey!21427 () (_ BitVec 32))

(assert (=> mapNonEmpty!21427 (= (arr!14434 _values!833) (store mapRest!21427 mapKey!21427 mapValue!21427))))

(assert (= (and start!42210 res!281380) b!470844))

(assert (= (and b!470844 res!281377) b!470841))

(assert (= (and b!470841 res!281378) b!470842))

(assert (= (and b!470842 res!281379) b!470846))

(assert (= (and b!470845 condMapEmpty!21427) mapIsEmpty!21427))

(assert (= (and b!470845 (not condMapEmpty!21427)) mapNonEmpty!21427))

(get-info :version)

(assert (= (and mapNonEmpty!21427 ((_ is ValueCellFull!6231) mapValue!21427)) b!470843))

(assert (= (and b!470845 ((_ is ValueCellFull!6231) mapDefault!21427)) b!470847))

(assert (= start!42210 b!470845))

(declare-fun m!453073 () Bool)

(assert (=> start!42210 m!453073))

(declare-fun m!453075 () Bool)

(assert (=> start!42210 m!453075))

(declare-fun m!453077 () Bool)

(assert (=> start!42210 m!453077))

(declare-fun m!453079 () Bool)

(assert (=> mapNonEmpty!21427 m!453079))

(declare-fun m!453081 () Bool)

(assert (=> b!470842 m!453081))

(declare-fun m!453083 () Bool)

(assert (=> b!470846 m!453083))

(declare-fun m!453085 () Bool)

(assert (=> b!470846 m!453085))

(declare-fun m!453087 () Bool)

(assert (=> b!470846 m!453087))

(declare-fun m!453089 () Bool)

(assert (=> b!470841 m!453089))

(check-sat (not b_next!11721) (not b!470842) b_and!20169 tp_is_empty!13149 (not start!42210) (not mapNonEmpty!21427) (not b!470841) (not b!470846))
(check-sat b_and!20169 (not b_next!11721))

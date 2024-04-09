; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!41456 () Bool)

(assert start!41456)

(declare-fun b_free!11127 () Bool)

(declare-fun b_next!11127 () Bool)

(assert (=> start!41456 (= b_free!11127 (not b_next!11127))))

(declare-fun tp!39375 () Bool)

(declare-fun b_and!19481 () Bool)

(assert (=> start!41456 (= tp!39375 b_and!19481)))

(declare-fun b!462912 () Bool)

(declare-fun e!270246 () Bool)

(declare-fun e!270244 () Bool)

(declare-fun mapRes!20506 () Bool)

(assert (=> b!462912 (= e!270246 (and e!270244 mapRes!20506))))

(declare-fun condMapEmpty!20506 () Bool)

(declare-datatypes ((V!17845 0))(
  ( (V!17846 (val!6322 Int)) )
))
(declare-datatypes ((ValueCell!5934 0))(
  ( (ValueCellFull!5934 (v!8605 V!17845)) (EmptyCell!5934) )
))
(declare-datatypes ((array!28871 0))(
  ( (array!28872 (arr!13865 (Array (_ BitVec 32) ValueCell!5934)) (size!14217 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!28871)

(declare-fun mapDefault!20506 () ValueCell!5934)

(assert (=> b!462912 (= condMapEmpty!20506 (= (arr!13865 _values!833) ((as const (Array (_ BitVec 32) ValueCell!5934)) mapDefault!20506)))))

(declare-fun b!462913 () Bool)

(declare-fun tp_is_empty!12555 () Bool)

(assert (=> b!462913 (= e!270244 tp_is_empty!12555)))

(declare-fun b!462914 () Bool)

(declare-fun res!276884 () Bool)

(declare-fun e!270243 () Bool)

(assert (=> b!462914 (=> (not res!276884) (not e!270243))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((array!28873 0))(
  ( (array!28874 (arr!13866 (Array (_ BitVec 32) (_ BitVec 64))) (size!14218 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!28873)

(assert (=> b!462914 (= res!276884 (and (= (size!14217 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14218 _keys!1025) (size!14217 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!462915 () Bool)

(assert (=> b!462915 (= e!270243 false)))

(declare-fun minValueBefore!38 () V!17845)

(declare-datatypes ((tuple2!8252 0))(
  ( (tuple2!8253 (_1!4136 (_ BitVec 64)) (_2!4136 V!17845)) )
))
(declare-datatypes ((List!8380 0))(
  ( (Nil!8377) (Cons!8376 (h!9232 tuple2!8252) (t!14332 List!8380)) )
))
(declare-datatypes ((ListLongMap!7179 0))(
  ( (ListLongMap!7180 (toList!3605 List!8380)) )
))
(declare-fun lt!209268 () ListLongMap!7179)

(declare-fun zeroValue!794 () V!17845)

(declare-fun defaultEntry!841 () Int)

(declare-fun getCurrentListMapNoExtraKeys!1773 (array!28873 array!28871 (_ BitVec 32) (_ BitVec 32) V!17845 V!17845 (_ BitVec 32) Int) ListLongMap!7179)

(assert (=> b!462915 (= lt!209268 (getCurrentListMapNoExtraKeys!1773 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun res!276883 () Bool)

(assert (=> start!41456 (=> (not res!276883) (not e!270243))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41456 (= res!276883 (validMask!0 mask!1365))))

(assert (=> start!41456 e!270243))

(assert (=> start!41456 tp_is_empty!12555))

(assert (=> start!41456 tp!39375))

(assert (=> start!41456 true))

(declare-fun array_inv!10004 (array!28873) Bool)

(assert (=> start!41456 (array_inv!10004 _keys!1025)))

(declare-fun array_inv!10005 (array!28871) Bool)

(assert (=> start!41456 (and (array_inv!10005 _values!833) e!270246)))

(declare-fun mapNonEmpty!20506 () Bool)

(declare-fun tp!39376 () Bool)

(declare-fun e!270247 () Bool)

(assert (=> mapNonEmpty!20506 (= mapRes!20506 (and tp!39376 e!270247))))

(declare-fun mapRest!20506 () (Array (_ BitVec 32) ValueCell!5934))

(declare-fun mapValue!20506 () ValueCell!5934)

(declare-fun mapKey!20506 () (_ BitVec 32))

(assert (=> mapNonEmpty!20506 (= (arr!13865 _values!833) (store mapRest!20506 mapKey!20506 mapValue!20506))))

(declare-fun b!462916 () Bool)

(declare-fun res!276881 () Bool)

(assert (=> b!462916 (=> (not res!276881) (not e!270243))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28873 (_ BitVec 32)) Bool)

(assert (=> b!462916 (= res!276881 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!462917 () Bool)

(declare-fun res!276882 () Bool)

(assert (=> b!462917 (=> (not res!276882) (not e!270243))))

(declare-datatypes ((List!8381 0))(
  ( (Nil!8378) (Cons!8377 (h!9233 (_ BitVec 64)) (t!14333 List!8381)) )
))
(declare-fun arrayNoDuplicates!0 (array!28873 (_ BitVec 32) List!8381) Bool)

(assert (=> b!462917 (= res!276882 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8378))))

(declare-fun b!462918 () Bool)

(assert (=> b!462918 (= e!270247 tp_is_empty!12555)))

(declare-fun mapIsEmpty!20506 () Bool)

(assert (=> mapIsEmpty!20506 mapRes!20506))

(assert (= (and start!41456 res!276883) b!462914))

(assert (= (and b!462914 res!276884) b!462916))

(assert (= (and b!462916 res!276881) b!462917))

(assert (= (and b!462917 res!276882) b!462915))

(assert (= (and b!462912 condMapEmpty!20506) mapIsEmpty!20506))

(assert (= (and b!462912 (not condMapEmpty!20506)) mapNonEmpty!20506))

(get-info :version)

(assert (= (and mapNonEmpty!20506 ((_ is ValueCellFull!5934) mapValue!20506)) b!462918))

(assert (= (and b!462912 ((_ is ValueCellFull!5934) mapDefault!20506)) b!462913))

(assert (= start!41456 b!462912))

(declare-fun m!445651 () Bool)

(assert (=> start!41456 m!445651))

(declare-fun m!445653 () Bool)

(assert (=> start!41456 m!445653))

(declare-fun m!445655 () Bool)

(assert (=> start!41456 m!445655))

(declare-fun m!445657 () Bool)

(assert (=> mapNonEmpty!20506 m!445657))

(declare-fun m!445659 () Bool)

(assert (=> b!462915 m!445659))

(declare-fun m!445661 () Bool)

(assert (=> b!462917 m!445661))

(declare-fun m!445663 () Bool)

(assert (=> b!462916 m!445663))

(check-sat (not b!462916) tp_is_empty!12555 (not b!462915) (not mapNonEmpty!20506) (not b!462917) (not start!41456) b_and!19481 (not b_next!11127))
(check-sat b_and!19481 (not b_next!11127))

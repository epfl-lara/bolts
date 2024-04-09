; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!41936 () Bool)

(assert start!41936)

(declare-fun b_free!11517 () Bool)

(declare-fun b_next!11517 () Bool)

(assert (=> start!41936 (= b_free!11517 (not b_next!11517))))

(declare-fun tp!40564 () Bool)

(declare-fun b_and!19923 () Bool)

(assert (=> start!41936 (= tp!40564 b_and!19923)))

(declare-fun b!467915 () Bool)

(declare-fun e!273816 () Bool)

(declare-fun e!273817 () Bool)

(declare-fun mapRes!21109 () Bool)

(assert (=> b!467915 (= e!273816 (and e!273817 mapRes!21109))))

(declare-fun condMapEmpty!21109 () Bool)

(declare-datatypes ((V!18365 0))(
  ( (V!18366 (val!6517 Int)) )
))
(declare-datatypes ((ValueCell!6129 0))(
  ( (ValueCellFull!6129 (v!8802 V!18365)) (EmptyCell!6129) )
))
(declare-datatypes ((array!29621 0))(
  ( (array!29622 (arr!14234 (Array (_ BitVec 32) ValueCell!6129)) (size!14586 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29621)

(declare-fun mapDefault!21109 () ValueCell!6129)

(assert (=> b!467915 (= condMapEmpty!21109 (= (arr!14234 _values!833) ((as const (Array (_ BitVec 32) ValueCell!6129)) mapDefault!21109)))))

(declare-fun res!279719 () Bool)

(declare-fun e!273814 () Bool)

(assert (=> start!41936 (=> (not res!279719) (not e!273814))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41936 (= res!279719 (validMask!0 mask!1365))))

(assert (=> start!41936 e!273814))

(declare-fun tp_is_empty!12945 () Bool)

(assert (=> start!41936 tp_is_empty!12945))

(assert (=> start!41936 tp!40564))

(assert (=> start!41936 true))

(declare-datatypes ((array!29623 0))(
  ( (array!29624 (arr!14235 (Array (_ BitVec 32) (_ BitVec 64))) (size!14587 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29623)

(declare-fun array_inv!10268 (array!29623) Bool)

(assert (=> start!41936 (array_inv!10268 _keys!1025)))

(declare-fun array_inv!10269 (array!29621) Bool)

(assert (=> start!41936 (and (array_inv!10269 _values!833) e!273816)))

(declare-fun b!467916 () Bool)

(declare-fun res!279720 () Bool)

(assert (=> b!467916 (=> (not res!279720) (not e!273814))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!29623 (_ BitVec 32)) Bool)

(assert (=> b!467916 (= res!279720 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!467917 () Bool)

(declare-fun e!273813 () Bool)

(assert (=> b!467917 (= e!273814 (not e!273813))))

(declare-fun res!279721 () Bool)

(assert (=> b!467917 (=> res!279721 e!273813)))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(assert (=> b!467917 (= res!279721 (or (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!8540 0))(
  ( (tuple2!8541 (_1!4280 (_ BitVec 64)) (_2!4280 V!18365)) )
))
(declare-datatypes ((List!8660 0))(
  ( (Nil!8657) (Cons!8656 (h!9512 tuple2!8540) (t!14624 List!8660)) )
))
(declare-datatypes ((ListLongMap!7467 0))(
  ( (ListLongMap!7468 (toList!3749 List!8660)) )
))
(declare-fun lt!211633 () ListLongMap!7467)

(declare-fun lt!211630 () ListLongMap!7467)

(assert (=> b!467917 (= lt!211633 lt!211630)))

(declare-fun minValueBefore!38 () V!18365)

(declare-fun zeroValue!794 () V!18365)

(declare-fun defaultEntry!841 () Int)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((Unit!13619 0))(
  ( (Unit!13620) )
))
(declare-fun lt!211632 () Unit!13619)

(declare-fun minValueAfter!38 () V!18365)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!110 (array!29623 array!29621 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18365 V!18365 V!18365 V!18365 (_ BitVec 32) Int) Unit!13619)

(assert (=> b!467917 (= lt!211632 (lemmaNoChangeToArrayThenSameMapNoExtras!110 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1915 (array!29623 array!29621 (_ BitVec 32) (_ BitVec 32) V!18365 V!18365 (_ BitVec 32) Int) ListLongMap!7467)

(assert (=> b!467917 (= lt!211630 (getCurrentListMapNoExtraKeys!1915 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!467917 (= lt!211633 (getCurrentListMapNoExtraKeys!1915 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun mapIsEmpty!21109 () Bool)

(assert (=> mapIsEmpty!21109 mapRes!21109))

(declare-fun mapNonEmpty!21109 () Bool)

(declare-fun tp!40563 () Bool)

(declare-fun e!273818 () Bool)

(assert (=> mapNonEmpty!21109 (= mapRes!21109 (and tp!40563 e!273818))))

(declare-fun mapValue!21109 () ValueCell!6129)

(declare-fun mapRest!21109 () (Array (_ BitVec 32) ValueCell!6129))

(declare-fun mapKey!21109 () (_ BitVec 32))

(assert (=> mapNonEmpty!21109 (= (arr!14234 _values!833) (store mapRest!21109 mapKey!21109 mapValue!21109))))

(declare-fun b!467918 () Bool)

(assert (=> b!467918 (= e!273817 tp_is_empty!12945)))

(declare-fun b!467919 () Bool)

(declare-fun res!279717 () Bool)

(assert (=> b!467919 (=> (not res!279717) (not e!273814))))

(declare-datatypes ((List!8661 0))(
  ( (Nil!8658) (Cons!8657 (h!9513 (_ BitVec 64)) (t!14625 List!8661)) )
))
(declare-fun arrayNoDuplicates!0 (array!29623 (_ BitVec 32) List!8661) Bool)

(assert (=> b!467919 (= res!279717 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8658))))

(declare-fun b!467920 () Bool)

(declare-fun res!279718 () Bool)

(assert (=> b!467920 (=> (not res!279718) (not e!273814))))

(assert (=> b!467920 (= res!279718 (and (= (size!14586 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14587 _keys!1025) (size!14586 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!467921 () Bool)

(assert (=> b!467921 (= e!273818 tp_is_empty!12945)))

(declare-fun b!467922 () Bool)

(assert (=> b!467922 (= e!273813 true)))

(declare-fun lt!211631 () ListLongMap!7467)

(declare-fun getCurrentListMap!2167 (array!29623 array!29621 (_ BitVec 32) (_ BitVec 32) V!18365 V!18365 (_ BitVec 32) Int) ListLongMap!7467)

(assert (=> b!467922 (= lt!211631 (getCurrentListMap!2167 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (= (and start!41936 res!279719) b!467920))

(assert (= (and b!467920 res!279718) b!467916))

(assert (= (and b!467916 res!279720) b!467919))

(assert (= (and b!467919 res!279717) b!467917))

(assert (= (and b!467917 (not res!279721)) b!467922))

(assert (= (and b!467915 condMapEmpty!21109) mapIsEmpty!21109))

(assert (= (and b!467915 (not condMapEmpty!21109)) mapNonEmpty!21109))

(get-info :version)

(assert (= (and mapNonEmpty!21109 ((_ is ValueCellFull!6129) mapValue!21109)) b!467921))

(assert (= (and b!467915 ((_ is ValueCellFull!6129) mapDefault!21109)) b!467918))

(assert (= start!41936 b!467915))

(declare-fun m!449989 () Bool)

(assert (=> start!41936 m!449989))

(declare-fun m!449991 () Bool)

(assert (=> start!41936 m!449991))

(declare-fun m!449993 () Bool)

(assert (=> start!41936 m!449993))

(declare-fun m!449995 () Bool)

(assert (=> mapNonEmpty!21109 m!449995))

(declare-fun m!449997 () Bool)

(assert (=> b!467922 m!449997))

(declare-fun m!449999 () Bool)

(assert (=> b!467916 m!449999))

(declare-fun m!450001 () Bool)

(assert (=> b!467919 m!450001))

(declare-fun m!450003 () Bool)

(assert (=> b!467917 m!450003))

(declare-fun m!450005 () Bool)

(assert (=> b!467917 m!450005))

(declare-fun m!450007 () Bool)

(assert (=> b!467917 m!450007))

(check-sat (not b!467919) (not b!467922) b_and!19923 tp_is_empty!12945 (not b!467917) (not b!467916) (not start!41936) (not b_next!11517) (not mapNonEmpty!21109))
(check-sat b_and!19923 (not b_next!11517))

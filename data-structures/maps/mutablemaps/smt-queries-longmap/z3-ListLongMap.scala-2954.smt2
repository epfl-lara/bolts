; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!41954 () Bool)

(assert start!41954)

(declare-fun b_free!11535 () Bool)

(declare-fun b_next!11535 () Bool)

(assert (=> start!41954 (= b_free!11535 (not b_next!11535))))

(declare-fun tp!40617 () Bool)

(declare-fun b_and!19941 () Bool)

(assert (=> start!41954 (= tp!40617 b_and!19941)))

(declare-fun b!468131 () Bool)

(declare-fun e!273980 () Bool)

(declare-fun tp_is_empty!12963 () Bool)

(assert (=> b!468131 (= e!273980 tp_is_empty!12963)))

(declare-fun b!468132 () Bool)

(declare-fun e!273979 () Bool)

(declare-fun mapRes!21136 () Bool)

(assert (=> b!468132 (= e!273979 (and e!273980 mapRes!21136))))

(declare-fun condMapEmpty!21136 () Bool)

(declare-datatypes ((V!18389 0))(
  ( (V!18390 (val!6526 Int)) )
))
(declare-datatypes ((ValueCell!6138 0))(
  ( (ValueCellFull!6138 (v!8811 V!18389)) (EmptyCell!6138) )
))
(declare-datatypes ((array!29657 0))(
  ( (array!29658 (arr!14252 (Array (_ BitVec 32) ValueCell!6138)) (size!14604 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29657)

(declare-fun mapDefault!21136 () ValueCell!6138)

(assert (=> b!468132 (= condMapEmpty!21136 (= (arr!14252 _values!833) ((as const (Array (_ BitVec 32) ValueCell!6138)) mapDefault!21136)))))

(declare-fun b!468133 () Bool)

(declare-fun e!273975 () Bool)

(assert (=> b!468133 (= e!273975 tp_is_empty!12963)))

(declare-fun b!468134 () Bool)

(declare-fun e!273978 () Bool)

(declare-datatypes ((array!29659 0))(
  ( (array!29660 (arr!14253 (Array (_ BitVec 32) (_ BitVec 64))) (size!14605 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29659)

(assert (=> b!468134 (= e!273978 (bvsle #b00000000000000000000000000000000 (size!14605 _keys!1025)))))

(declare-fun minValueBefore!38 () V!18389)

(declare-fun zeroValue!794 () V!18389)

(declare-fun defaultEntry!841 () Int)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-datatypes ((tuple2!8556 0))(
  ( (tuple2!8557 (_1!4288 (_ BitVec 64)) (_2!4288 V!18389)) )
))
(declare-datatypes ((List!8675 0))(
  ( (Nil!8672) (Cons!8671 (h!9527 tuple2!8556) (t!14639 List!8675)) )
))
(declare-datatypes ((ListLongMap!7483 0))(
  ( (ListLongMap!7484 (toList!3757 List!8675)) )
))
(declare-fun lt!211739 () ListLongMap!7483)

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun getCurrentListMap!2171 (array!29659 array!29657 (_ BitVec 32) (_ BitVec 32) V!18389 V!18389 (_ BitVec 32) Int) ListLongMap!7483)

(assert (=> b!468134 (= lt!211739 (getCurrentListMap!2171 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun res!279854 () Bool)

(declare-fun e!273976 () Bool)

(assert (=> start!41954 (=> (not res!279854) (not e!273976))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41954 (= res!279854 (validMask!0 mask!1365))))

(assert (=> start!41954 e!273976))

(assert (=> start!41954 tp_is_empty!12963))

(assert (=> start!41954 tp!40617))

(assert (=> start!41954 true))

(declare-fun array_inv!10278 (array!29659) Bool)

(assert (=> start!41954 (array_inv!10278 _keys!1025)))

(declare-fun array_inv!10279 (array!29657) Bool)

(assert (=> start!41954 (and (array_inv!10279 _values!833) e!273979)))

(declare-fun mapIsEmpty!21136 () Bool)

(assert (=> mapIsEmpty!21136 mapRes!21136))

(declare-fun mapNonEmpty!21136 () Bool)

(declare-fun tp!40618 () Bool)

(assert (=> mapNonEmpty!21136 (= mapRes!21136 (and tp!40618 e!273975))))

(declare-fun mapRest!21136 () (Array (_ BitVec 32) ValueCell!6138))

(declare-fun mapKey!21136 () (_ BitVec 32))

(declare-fun mapValue!21136 () ValueCell!6138)

(assert (=> mapNonEmpty!21136 (= (arr!14252 _values!833) (store mapRest!21136 mapKey!21136 mapValue!21136))))

(declare-fun b!468135 () Bool)

(declare-fun res!279855 () Bool)

(assert (=> b!468135 (=> (not res!279855) (not e!273976))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!29659 (_ BitVec 32)) Bool)

(assert (=> b!468135 (= res!279855 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!468136 () Bool)

(declare-fun res!279853 () Bool)

(assert (=> b!468136 (=> (not res!279853) (not e!273976))))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(assert (=> b!468136 (= res!279853 (and (= (size!14604 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14605 _keys!1025) (size!14604 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!468137 () Bool)

(assert (=> b!468137 (= e!273976 (not e!273978))))

(declare-fun res!279856 () Bool)

(assert (=> b!468137 (=> res!279856 e!273978)))

(assert (=> b!468137 (= res!279856 (or (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun lt!211740 () ListLongMap!7483)

(declare-fun lt!211741 () ListLongMap!7483)

(assert (=> b!468137 (= lt!211740 lt!211741)))

(declare-datatypes ((Unit!13635 0))(
  ( (Unit!13636) )
))
(declare-fun lt!211738 () Unit!13635)

(declare-fun minValueAfter!38 () V!18389)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!118 (array!29659 array!29657 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18389 V!18389 V!18389 V!18389 (_ BitVec 32) Int) Unit!13635)

(assert (=> b!468137 (= lt!211738 (lemmaNoChangeToArrayThenSameMapNoExtras!118 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1923 (array!29659 array!29657 (_ BitVec 32) (_ BitVec 32) V!18389 V!18389 (_ BitVec 32) Int) ListLongMap!7483)

(assert (=> b!468137 (= lt!211741 (getCurrentListMapNoExtraKeys!1923 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!468137 (= lt!211740 (getCurrentListMapNoExtraKeys!1923 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!468138 () Bool)

(declare-fun res!279852 () Bool)

(assert (=> b!468138 (=> (not res!279852) (not e!273976))))

(declare-datatypes ((List!8676 0))(
  ( (Nil!8673) (Cons!8672 (h!9528 (_ BitVec 64)) (t!14640 List!8676)) )
))
(declare-fun arrayNoDuplicates!0 (array!29659 (_ BitVec 32) List!8676) Bool)

(assert (=> b!468138 (= res!279852 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8673))))

(assert (= (and start!41954 res!279854) b!468136))

(assert (= (and b!468136 res!279853) b!468135))

(assert (= (and b!468135 res!279855) b!468138))

(assert (= (and b!468138 res!279852) b!468137))

(assert (= (and b!468137 (not res!279856)) b!468134))

(assert (= (and b!468132 condMapEmpty!21136) mapIsEmpty!21136))

(assert (= (and b!468132 (not condMapEmpty!21136)) mapNonEmpty!21136))

(get-info :version)

(assert (= (and mapNonEmpty!21136 ((_ is ValueCellFull!6138) mapValue!21136)) b!468133))

(assert (= (and b!468132 ((_ is ValueCellFull!6138) mapDefault!21136)) b!468131))

(assert (= start!41954 b!468132))

(declare-fun m!450169 () Bool)

(assert (=> mapNonEmpty!21136 m!450169))

(declare-fun m!450171 () Bool)

(assert (=> b!468137 m!450171))

(declare-fun m!450173 () Bool)

(assert (=> b!468137 m!450173))

(declare-fun m!450175 () Bool)

(assert (=> b!468137 m!450175))

(declare-fun m!450177 () Bool)

(assert (=> start!41954 m!450177))

(declare-fun m!450179 () Bool)

(assert (=> start!41954 m!450179))

(declare-fun m!450181 () Bool)

(assert (=> start!41954 m!450181))

(declare-fun m!450183 () Bool)

(assert (=> b!468138 m!450183))

(declare-fun m!450185 () Bool)

(assert (=> b!468134 m!450185))

(declare-fun m!450187 () Bool)

(assert (=> b!468135 m!450187))

(check-sat (not start!41954) (not b!468138) (not b!468134) (not b!468137) b_and!19941 (not b!468135) tp_is_empty!12963 (not b_next!11535) (not mapNonEmpty!21136))
(check-sat b_and!19941 (not b_next!11535))
(get-model)

(declare-fun b!468171 () Bool)

(declare-fun e!274007 () Bool)

(declare-fun call!30324 () Bool)

(assert (=> b!468171 (= e!274007 call!30324)))

(declare-fun b!468172 () Bool)

(declare-fun e!274005 () Bool)

(declare-fun e!274006 () Bool)

(assert (=> b!468172 (= e!274005 e!274006)))

(declare-fun c!56738 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!468172 (= c!56738 (validKeyInArray!0 (select (arr!14253 _keys!1025) #b00000000000000000000000000000000)))))

(declare-fun bm!30321 () Bool)

(assert (=> bm!30321 (= call!30324 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1025 mask!1365))))

(declare-fun d!75109 () Bool)

(declare-fun res!279877 () Bool)

(assert (=> d!75109 (=> res!279877 e!274005)))

(assert (=> d!75109 (= res!279877 (bvsge #b00000000000000000000000000000000 (size!14605 _keys!1025)))))

(assert (=> d!75109 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365) e!274005)))

(declare-fun b!468173 () Bool)

(assert (=> b!468173 (= e!274006 e!274007)))

(declare-fun lt!211760 () (_ BitVec 64))

(assert (=> b!468173 (= lt!211760 (select (arr!14253 _keys!1025) #b00000000000000000000000000000000))))

(declare-fun lt!211762 () Unit!13635)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!29659 (_ BitVec 64) (_ BitVec 32)) Unit!13635)

(assert (=> b!468173 (= lt!211762 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1025 lt!211760 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!29659 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!468173 (arrayContainsKey!0 _keys!1025 lt!211760 #b00000000000000000000000000000000)))

(declare-fun lt!211761 () Unit!13635)

(assert (=> b!468173 (= lt!211761 lt!211762)))

(declare-fun res!279876 () Bool)

(declare-datatypes ((SeekEntryResult!3537 0))(
  ( (MissingZero!3537 (index!16327 (_ BitVec 32))) (Found!3537 (index!16328 (_ BitVec 32))) (Intermediate!3537 (undefined!4349 Bool) (index!16329 (_ BitVec 32)) (x!43819 (_ BitVec 32))) (Undefined!3537) (MissingVacant!3537 (index!16330 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!29659 (_ BitVec 32)) SeekEntryResult!3537)

(assert (=> b!468173 (= res!279876 (= (seekEntryOrOpen!0 (select (arr!14253 _keys!1025) #b00000000000000000000000000000000) _keys!1025 mask!1365) (Found!3537 #b00000000000000000000000000000000)))))

(assert (=> b!468173 (=> (not res!279876) (not e!274007))))

(declare-fun b!468174 () Bool)

(assert (=> b!468174 (= e!274006 call!30324)))

(assert (= (and d!75109 (not res!279877)) b!468172))

(assert (= (and b!468172 c!56738) b!468173))

(assert (= (and b!468172 (not c!56738)) b!468174))

(assert (= (and b!468173 res!279876) b!468171))

(assert (= (or b!468171 b!468174) bm!30321))

(declare-fun m!450209 () Bool)

(assert (=> b!468172 m!450209))

(assert (=> b!468172 m!450209))

(declare-fun m!450211 () Bool)

(assert (=> b!468172 m!450211))

(declare-fun m!450213 () Bool)

(assert (=> bm!30321 m!450213))

(assert (=> b!468173 m!450209))

(declare-fun m!450215 () Bool)

(assert (=> b!468173 m!450215))

(declare-fun m!450217 () Bool)

(assert (=> b!468173 m!450217))

(assert (=> b!468173 m!450209))

(declare-fun m!450219 () Bool)

(assert (=> b!468173 m!450219))

(assert (=> b!468135 d!75109))

(declare-fun d!75111 () Bool)

(assert (=> d!75111 (= (getCurrentListMapNoExtraKeys!1923 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841) (getCurrentListMapNoExtraKeys!1923 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!211765 () Unit!13635)

(declare-fun choose!1350 (array!29659 array!29657 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18389 V!18389 V!18389 V!18389 (_ BitVec 32) Int) Unit!13635)

(assert (=> d!75111 (= lt!211765 (choose!1350 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> d!75111 (validMask!0 mask!1365)))

(assert (=> d!75111 (= (lemmaNoChangeToArrayThenSameMapNoExtras!118 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841) lt!211765)))

(declare-fun bs!14830 () Bool)

(assert (= bs!14830 d!75111))

(assert (=> bs!14830 m!450175))

(assert (=> bs!14830 m!450173))

(declare-fun m!450221 () Bool)

(assert (=> bs!14830 m!450221))

(assert (=> bs!14830 m!450177))

(assert (=> b!468137 d!75111))

(declare-fun b!468199 () Bool)

(declare-fun e!274024 () ListLongMap!7483)

(declare-fun e!274027 () ListLongMap!7483)

(assert (=> b!468199 (= e!274024 e!274027)))

(declare-fun c!56747 () Bool)

(assert (=> b!468199 (= c!56747 (validKeyInArray!0 (select (arr!14253 _keys!1025) #b00000000000000000000000000000000)))))

(declare-fun b!468200 () Bool)

(declare-fun e!274028 () Bool)

(declare-fun e!274026 () Bool)

(assert (=> b!468200 (= e!274028 e!274026)))

(assert (=> b!468200 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!14605 _keys!1025)))))

(declare-fun res!279889 () Bool)

(declare-fun lt!211784 () ListLongMap!7483)

(declare-fun contains!2535 (ListLongMap!7483 (_ BitVec 64)) Bool)

(assert (=> b!468200 (= res!279889 (contains!2535 lt!211784 (select (arr!14253 _keys!1025) #b00000000000000000000000000000000)))))

(assert (=> b!468200 (=> (not res!279889) (not e!274026))))

(declare-fun b!468201 () Bool)

(declare-fun call!30327 () ListLongMap!7483)

(assert (=> b!468201 (= e!274027 call!30327)))

(declare-fun b!468202 () Bool)

(declare-fun e!274023 () Bool)

(assert (=> b!468202 (= e!274023 e!274028)))

(declare-fun c!56750 () Bool)

(declare-fun e!274022 () Bool)

(assert (=> b!468202 (= c!56750 e!274022)))

(declare-fun res!279886 () Bool)

(assert (=> b!468202 (=> (not res!279886) (not e!274022))))

(assert (=> b!468202 (= res!279886 (bvslt #b00000000000000000000000000000000 (size!14605 _keys!1025)))))

(declare-fun b!468203 () Bool)

(assert (=> b!468203 (= e!274022 (validKeyInArray!0 (select (arr!14253 _keys!1025) #b00000000000000000000000000000000)))))

(assert (=> b!468203 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!468204 () Bool)

(declare-fun lt!211785 () Unit!13635)

(declare-fun lt!211782 () Unit!13635)

(assert (=> b!468204 (= lt!211785 lt!211782)))

(declare-fun lt!211781 () (_ BitVec 64))

(declare-fun lt!211783 () (_ BitVec 64))

(declare-fun lt!211786 () V!18389)

(declare-fun lt!211780 () ListLongMap!7483)

(declare-fun +!1649 (ListLongMap!7483 tuple2!8556) ListLongMap!7483)

(assert (=> b!468204 (not (contains!2535 (+!1649 lt!211780 (tuple2!8557 lt!211781 lt!211786)) lt!211783))))

(declare-fun addStillNotContains!160 (ListLongMap!7483 (_ BitVec 64) V!18389 (_ BitVec 64)) Unit!13635)

(assert (=> b!468204 (= lt!211782 (addStillNotContains!160 lt!211780 lt!211781 lt!211786 lt!211783))))

(assert (=> b!468204 (= lt!211783 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun get!6987 (ValueCell!6138 V!18389) V!18389)

(declare-fun dynLambda!917 (Int (_ BitVec 64)) V!18389)

(assert (=> b!468204 (= lt!211786 (get!6987 (select (arr!14252 _values!833) #b00000000000000000000000000000000) (dynLambda!917 defaultEntry!841 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!468204 (= lt!211781 (select (arr!14253 _keys!1025) #b00000000000000000000000000000000))))

(assert (=> b!468204 (= lt!211780 call!30327)))

(assert (=> b!468204 (= e!274027 (+!1649 call!30327 (tuple2!8557 (select (arr!14253 _keys!1025) #b00000000000000000000000000000000) (get!6987 (select (arr!14252 _values!833) #b00000000000000000000000000000000) (dynLambda!917 defaultEntry!841 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun bm!30324 () Bool)

(assert (=> bm!30324 (= call!30327 (getCurrentListMapNoExtraKeys!1923 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!841))))

(declare-fun b!468205 () Bool)

(declare-fun e!274025 () Bool)

(assert (=> b!468205 (= e!274028 e!274025)))

(declare-fun c!56749 () Bool)

(assert (=> b!468205 (= c!56749 (bvslt #b00000000000000000000000000000000 (size!14605 _keys!1025)))))

(declare-fun b!468206 () Bool)

(assert (=> b!468206 (= e!274025 (= lt!211784 (getCurrentListMapNoExtraKeys!1923 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!841)))))

(declare-fun b!468207 () Bool)

(assert (=> b!468207 (= e!274024 (ListLongMap!7484 Nil!8672))))

(declare-fun b!468208 () Bool)

(declare-fun res!279887 () Bool)

(assert (=> b!468208 (=> (not res!279887) (not e!274023))))

(assert (=> b!468208 (= res!279887 (not (contains!2535 lt!211784 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!75113 () Bool)

(assert (=> d!75113 e!274023))

(declare-fun res!279888 () Bool)

(assert (=> d!75113 (=> (not res!279888) (not e!274023))))

(assert (=> d!75113 (= res!279888 (not (contains!2535 lt!211784 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!75113 (= lt!211784 e!274024)))

(declare-fun c!56748 () Bool)

(assert (=> d!75113 (= c!56748 (bvsge #b00000000000000000000000000000000 (size!14605 _keys!1025)))))

(assert (=> d!75113 (validMask!0 mask!1365)))

(assert (=> d!75113 (= (getCurrentListMapNoExtraKeys!1923 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841) lt!211784)))

(declare-fun b!468209 () Bool)

(declare-fun isEmpty!577 (ListLongMap!7483) Bool)

(assert (=> b!468209 (= e!274025 (isEmpty!577 lt!211784))))

(declare-fun b!468210 () Bool)

(assert (=> b!468210 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!14605 _keys!1025)))))

(assert (=> b!468210 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!14604 _values!833)))))

(declare-fun apply!325 (ListLongMap!7483 (_ BitVec 64)) V!18389)

(assert (=> b!468210 (= e!274026 (= (apply!325 lt!211784 (select (arr!14253 _keys!1025) #b00000000000000000000000000000000)) (get!6987 (select (arr!14252 _values!833) #b00000000000000000000000000000000) (dynLambda!917 defaultEntry!841 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (= (and d!75113 c!56748) b!468207))

(assert (= (and d!75113 (not c!56748)) b!468199))

(assert (= (and b!468199 c!56747) b!468204))

(assert (= (and b!468199 (not c!56747)) b!468201))

(assert (= (or b!468204 b!468201) bm!30324))

(assert (= (and d!75113 res!279888) b!468208))

(assert (= (and b!468208 res!279887) b!468202))

(assert (= (and b!468202 res!279886) b!468203))

(assert (= (and b!468202 c!56750) b!468200))

(assert (= (and b!468202 (not c!56750)) b!468205))

(assert (= (and b!468200 res!279889) b!468210))

(assert (= (and b!468205 c!56749) b!468206))

(assert (= (and b!468205 (not c!56749)) b!468209))

(declare-fun b_lambda!10099 () Bool)

(assert (=> (not b_lambda!10099) (not b!468204)))

(declare-fun t!14643 () Bool)

(declare-fun tb!3923 () Bool)

(assert (=> (and start!41954 (= defaultEntry!841 defaultEntry!841) t!14643) tb!3923))

(declare-fun result!7411 () Bool)

(assert (=> tb!3923 (= result!7411 tp_is_empty!12963)))

(assert (=> b!468204 t!14643))

(declare-fun b_and!19945 () Bool)

(assert (= b_and!19941 (and (=> t!14643 result!7411) b_and!19945)))

(declare-fun b_lambda!10101 () Bool)

(assert (=> (not b_lambda!10101) (not b!468210)))

(assert (=> b!468210 t!14643))

(declare-fun b_and!19947 () Bool)

(assert (= b_and!19945 (and (=> t!14643 result!7411) b_and!19947)))

(assert (=> b!468204 m!450209))

(declare-fun m!450223 () Bool)

(assert (=> b!468204 m!450223))

(declare-fun m!450225 () Bool)

(assert (=> b!468204 m!450225))

(declare-fun m!450227 () Bool)

(assert (=> b!468204 m!450227))

(declare-fun m!450229 () Bool)

(assert (=> b!468204 m!450229))

(assert (=> b!468204 m!450225))

(declare-fun m!450231 () Bool)

(assert (=> b!468204 m!450231))

(declare-fun m!450233 () Bool)

(assert (=> b!468204 m!450233))

(assert (=> b!468204 m!450223))

(assert (=> b!468204 m!450229))

(declare-fun m!450235 () Bool)

(assert (=> b!468204 m!450235))

(assert (=> b!468203 m!450209))

(assert (=> b!468203 m!450209))

(assert (=> b!468203 m!450211))

(declare-fun m!450237 () Bool)

(assert (=> bm!30324 m!450237))

(assert (=> b!468199 m!450209))

(assert (=> b!468199 m!450209))

(assert (=> b!468199 m!450211))

(declare-fun m!450239 () Bool)

(assert (=> b!468208 m!450239))

(assert (=> b!468210 m!450209))

(assert (=> b!468210 m!450223))

(assert (=> b!468210 m!450225))

(assert (=> b!468210 m!450227))

(assert (=> b!468210 m!450225))

(assert (=> b!468210 m!450209))

(declare-fun m!450241 () Bool)

(assert (=> b!468210 m!450241))

(assert (=> b!468210 m!450223))

(declare-fun m!450243 () Bool)

(assert (=> d!75113 m!450243))

(assert (=> d!75113 m!450177))

(assert (=> b!468206 m!450237))

(declare-fun m!450245 () Bool)

(assert (=> b!468209 m!450245))

(assert (=> b!468200 m!450209))

(assert (=> b!468200 m!450209))

(declare-fun m!450247 () Bool)

(assert (=> b!468200 m!450247))

(assert (=> b!468137 d!75113))

(declare-fun b!468213 () Bool)

(declare-fun e!274031 () ListLongMap!7483)

(declare-fun e!274034 () ListLongMap!7483)

(assert (=> b!468213 (= e!274031 e!274034)))

(declare-fun c!56751 () Bool)

(assert (=> b!468213 (= c!56751 (validKeyInArray!0 (select (arr!14253 _keys!1025) #b00000000000000000000000000000000)))))

(declare-fun b!468214 () Bool)

(declare-fun e!274035 () Bool)

(declare-fun e!274033 () Bool)

(assert (=> b!468214 (= e!274035 e!274033)))

(assert (=> b!468214 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!14605 _keys!1025)))))

(declare-fun res!279893 () Bool)

(declare-fun lt!211791 () ListLongMap!7483)

(assert (=> b!468214 (= res!279893 (contains!2535 lt!211791 (select (arr!14253 _keys!1025) #b00000000000000000000000000000000)))))

(assert (=> b!468214 (=> (not res!279893) (not e!274033))))

(declare-fun b!468215 () Bool)

(declare-fun call!30328 () ListLongMap!7483)

(assert (=> b!468215 (= e!274034 call!30328)))

(declare-fun b!468216 () Bool)

(declare-fun e!274030 () Bool)

(assert (=> b!468216 (= e!274030 e!274035)))

(declare-fun c!56754 () Bool)

(declare-fun e!274029 () Bool)

(assert (=> b!468216 (= c!56754 e!274029)))

(declare-fun res!279890 () Bool)

(assert (=> b!468216 (=> (not res!279890) (not e!274029))))

(assert (=> b!468216 (= res!279890 (bvslt #b00000000000000000000000000000000 (size!14605 _keys!1025)))))

(declare-fun b!468217 () Bool)

(assert (=> b!468217 (= e!274029 (validKeyInArray!0 (select (arr!14253 _keys!1025) #b00000000000000000000000000000000)))))

(assert (=> b!468217 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!468218 () Bool)

(declare-fun lt!211792 () Unit!13635)

(declare-fun lt!211789 () Unit!13635)

(assert (=> b!468218 (= lt!211792 lt!211789)))

(declare-fun lt!211788 () (_ BitVec 64))

(declare-fun lt!211793 () V!18389)

(declare-fun lt!211787 () ListLongMap!7483)

(declare-fun lt!211790 () (_ BitVec 64))

(assert (=> b!468218 (not (contains!2535 (+!1649 lt!211787 (tuple2!8557 lt!211788 lt!211793)) lt!211790))))

(assert (=> b!468218 (= lt!211789 (addStillNotContains!160 lt!211787 lt!211788 lt!211793 lt!211790))))

(assert (=> b!468218 (= lt!211790 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!468218 (= lt!211793 (get!6987 (select (arr!14252 _values!833) #b00000000000000000000000000000000) (dynLambda!917 defaultEntry!841 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!468218 (= lt!211788 (select (arr!14253 _keys!1025) #b00000000000000000000000000000000))))

(assert (=> b!468218 (= lt!211787 call!30328)))

(assert (=> b!468218 (= e!274034 (+!1649 call!30328 (tuple2!8557 (select (arr!14253 _keys!1025) #b00000000000000000000000000000000) (get!6987 (select (arr!14252 _values!833) #b00000000000000000000000000000000) (dynLambda!917 defaultEntry!841 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun bm!30325 () Bool)

(assert (=> bm!30325 (= call!30328 (getCurrentListMapNoExtraKeys!1923 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!841))))

(declare-fun b!468219 () Bool)

(declare-fun e!274032 () Bool)

(assert (=> b!468219 (= e!274035 e!274032)))

(declare-fun c!56753 () Bool)

(assert (=> b!468219 (= c!56753 (bvslt #b00000000000000000000000000000000 (size!14605 _keys!1025)))))

(declare-fun b!468220 () Bool)

(assert (=> b!468220 (= e!274032 (= lt!211791 (getCurrentListMapNoExtraKeys!1923 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!841)))))

(declare-fun b!468221 () Bool)

(assert (=> b!468221 (= e!274031 (ListLongMap!7484 Nil!8672))))

(declare-fun b!468222 () Bool)

(declare-fun res!279891 () Bool)

(assert (=> b!468222 (=> (not res!279891) (not e!274030))))

(assert (=> b!468222 (= res!279891 (not (contains!2535 lt!211791 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!75115 () Bool)

(assert (=> d!75115 e!274030))

(declare-fun res!279892 () Bool)

(assert (=> d!75115 (=> (not res!279892) (not e!274030))))

(assert (=> d!75115 (= res!279892 (not (contains!2535 lt!211791 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!75115 (= lt!211791 e!274031)))

(declare-fun c!56752 () Bool)

(assert (=> d!75115 (= c!56752 (bvsge #b00000000000000000000000000000000 (size!14605 _keys!1025)))))

(assert (=> d!75115 (validMask!0 mask!1365)))

(assert (=> d!75115 (= (getCurrentListMapNoExtraKeys!1923 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841) lt!211791)))

(declare-fun b!468223 () Bool)

(assert (=> b!468223 (= e!274032 (isEmpty!577 lt!211791))))

(declare-fun b!468224 () Bool)

(assert (=> b!468224 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!14605 _keys!1025)))))

(assert (=> b!468224 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!14604 _values!833)))))

(assert (=> b!468224 (= e!274033 (= (apply!325 lt!211791 (select (arr!14253 _keys!1025) #b00000000000000000000000000000000)) (get!6987 (select (arr!14252 _values!833) #b00000000000000000000000000000000) (dynLambda!917 defaultEntry!841 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (= (and d!75115 c!56752) b!468221))

(assert (= (and d!75115 (not c!56752)) b!468213))

(assert (= (and b!468213 c!56751) b!468218))

(assert (= (and b!468213 (not c!56751)) b!468215))

(assert (= (or b!468218 b!468215) bm!30325))

(assert (= (and d!75115 res!279892) b!468222))

(assert (= (and b!468222 res!279891) b!468216))

(assert (= (and b!468216 res!279890) b!468217))

(assert (= (and b!468216 c!56754) b!468214))

(assert (= (and b!468216 (not c!56754)) b!468219))

(assert (= (and b!468214 res!279893) b!468224))

(assert (= (and b!468219 c!56753) b!468220))

(assert (= (and b!468219 (not c!56753)) b!468223))

(declare-fun b_lambda!10103 () Bool)

(assert (=> (not b_lambda!10103) (not b!468218)))

(assert (=> b!468218 t!14643))

(declare-fun b_and!19949 () Bool)

(assert (= b_and!19947 (and (=> t!14643 result!7411) b_and!19949)))

(declare-fun b_lambda!10105 () Bool)

(assert (=> (not b_lambda!10105) (not b!468224)))

(assert (=> b!468224 t!14643))

(declare-fun b_and!19951 () Bool)

(assert (= b_and!19949 (and (=> t!14643 result!7411) b_and!19951)))

(assert (=> b!468218 m!450209))

(assert (=> b!468218 m!450223))

(assert (=> b!468218 m!450225))

(assert (=> b!468218 m!450227))

(declare-fun m!450249 () Bool)

(assert (=> b!468218 m!450249))

(assert (=> b!468218 m!450225))

(declare-fun m!450251 () Bool)

(assert (=> b!468218 m!450251))

(declare-fun m!450253 () Bool)

(assert (=> b!468218 m!450253))

(assert (=> b!468218 m!450223))

(assert (=> b!468218 m!450249))

(declare-fun m!450255 () Bool)

(assert (=> b!468218 m!450255))

(assert (=> b!468217 m!450209))

(assert (=> b!468217 m!450209))

(assert (=> b!468217 m!450211))

(declare-fun m!450257 () Bool)

(assert (=> bm!30325 m!450257))

(assert (=> b!468213 m!450209))

(assert (=> b!468213 m!450209))

(assert (=> b!468213 m!450211))

(declare-fun m!450259 () Bool)

(assert (=> b!468222 m!450259))

(assert (=> b!468224 m!450209))

(assert (=> b!468224 m!450223))

(assert (=> b!468224 m!450225))

(assert (=> b!468224 m!450227))

(assert (=> b!468224 m!450225))

(assert (=> b!468224 m!450209))

(declare-fun m!450261 () Bool)

(assert (=> b!468224 m!450261))

(assert (=> b!468224 m!450223))

(declare-fun m!450263 () Bool)

(assert (=> d!75115 m!450263))

(assert (=> d!75115 m!450177))

(assert (=> b!468220 m!450257))

(declare-fun m!450265 () Bool)

(assert (=> b!468223 m!450265))

(assert (=> b!468214 m!450209))

(assert (=> b!468214 m!450209))

(declare-fun m!450267 () Bool)

(assert (=> b!468214 m!450267))

(assert (=> b!468137 d!75115))

(declare-fun b!468267 () Bool)

(declare-fun e!274069 () ListLongMap!7483)

(declare-fun call!30349 () ListLongMap!7483)

(assert (=> b!468267 (= e!274069 call!30349)))

(declare-fun d!75117 () Bool)

(declare-fun e!274062 () Bool)

(assert (=> d!75117 e!274062))

(declare-fun res!279920 () Bool)

(assert (=> d!75117 (=> (not res!279920) (not e!274062))))

(assert (=> d!75117 (= res!279920 (or (bvsge #b00000000000000000000000000000000 (size!14605 _keys!1025)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!14605 _keys!1025)))))))

(declare-fun lt!211849 () ListLongMap!7483)

(declare-fun lt!211852 () ListLongMap!7483)

(assert (=> d!75117 (= lt!211849 lt!211852)))

(declare-fun lt!211850 () Unit!13635)

(declare-fun e!274073 () Unit!13635)

(assert (=> d!75117 (= lt!211850 e!274073)))

(declare-fun c!56772 () Bool)

(declare-fun e!274068 () Bool)

(assert (=> d!75117 (= c!56772 e!274068)))

(declare-fun res!279912 () Bool)

(assert (=> d!75117 (=> (not res!279912) (not e!274068))))

(assert (=> d!75117 (= res!279912 (bvslt #b00000000000000000000000000000000 (size!14605 _keys!1025)))))

(declare-fun e!274074 () ListLongMap!7483)

(assert (=> d!75117 (= lt!211852 e!274074)))

(declare-fun c!56768 () Bool)

(assert (=> d!75117 (= c!56768 (and (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!75117 (validMask!0 mask!1365)))

(assert (=> d!75117 (= (getCurrentListMap!2171 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841) lt!211849)))

(declare-fun bm!30340 () Bool)

(declare-fun call!30348 () ListLongMap!7483)

(declare-fun c!56769 () Bool)

(declare-fun call!30343 () ListLongMap!7483)

(declare-fun call!30346 () ListLongMap!7483)

(assert (=> bm!30340 (= call!30348 (+!1649 (ite c!56768 call!30343 (ite c!56769 call!30346 call!30349)) (ite (or c!56768 c!56769) (tuple2!8557 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!794) (tuple2!8557 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38))))))

(declare-fun b!468268 () Bool)

(declare-fun e!274064 () Bool)

(declare-fun call!30344 () Bool)

(assert (=> b!468268 (= e!274064 (not call!30344))))

(declare-fun b!468269 () Bool)

(declare-fun e!274066 () Bool)

(assert (=> b!468269 (= e!274066 (= (apply!325 lt!211849 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!794))))

(declare-fun b!468270 () Bool)

(declare-fun e!274071 () ListLongMap!7483)

(declare-fun call!30345 () ListLongMap!7483)

(assert (=> b!468270 (= e!274071 call!30345)))

(declare-fun b!468271 () Bool)

(declare-fun Unit!13637 () Unit!13635)

(assert (=> b!468271 (= e!274073 Unit!13637)))

(declare-fun b!468272 () Bool)

(assert (=> b!468272 (= e!274068 (validKeyInArray!0 (select (arr!14253 _keys!1025) #b00000000000000000000000000000000)))))

(declare-fun b!468273 () Bool)

(declare-fun res!279917 () Bool)

(assert (=> b!468273 (=> (not res!279917) (not e!274062))))

(declare-fun e!274063 () Bool)

(assert (=> b!468273 (= res!279917 e!274063)))

(declare-fun c!56770 () Bool)

(assert (=> b!468273 (= c!56770 (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!30341 () Bool)

(assert (=> bm!30341 (= call!30349 call!30346)))

(declare-fun bm!30342 () Bool)

(assert (=> bm!30342 (= call!30343 (getCurrentListMapNoExtraKeys!1923 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!468274 () Bool)

(declare-fun e!274065 () Bool)

(assert (=> b!468274 (= e!274065 (validKeyInArray!0 (select (arr!14253 _keys!1025) #b00000000000000000000000000000000)))))

(declare-fun b!468275 () Bool)

(assert (=> b!468275 (= e!274063 e!274066)))

(declare-fun res!279914 () Bool)

(declare-fun call!30347 () Bool)

(assert (=> b!468275 (= res!279914 call!30347)))

(assert (=> b!468275 (=> (not res!279914) (not e!274066))))

(declare-fun bm!30343 () Bool)

(assert (=> bm!30343 (= call!30345 call!30348)))

(declare-fun b!468276 () Bool)

(declare-fun c!56771 () Bool)

(assert (=> b!468276 (= c!56771 (and (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!468276 (= e!274071 e!274069)))

(declare-fun bm!30344 () Bool)

(assert (=> bm!30344 (= call!30344 (contains!2535 lt!211849 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!468277 () Bool)

(declare-fun e!274067 () Bool)

(assert (=> b!468277 (= e!274064 e!274067)))

(declare-fun res!279915 () Bool)

(assert (=> b!468277 (= res!279915 call!30344)))

(assert (=> b!468277 (=> (not res!279915) (not e!274067))))

(declare-fun b!468278 () Bool)

(declare-fun lt!211838 () Unit!13635)

(assert (=> b!468278 (= e!274073 lt!211838)))

(declare-fun lt!211854 () ListLongMap!7483)

(assert (=> b!468278 (= lt!211854 (getCurrentListMapNoExtraKeys!1923 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!211857 () (_ BitVec 64))

(assert (=> b!468278 (= lt!211857 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!211847 () (_ BitVec 64))

(assert (=> b!468278 (= lt!211847 (select (arr!14253 _keys!1025) #b00000000000000000000000000000000))))

(declare-fun lt!211842 () Unit!13635)

(declare-fun addStillContains!287 (ListLongMap!7483 (_ BitVec 64) V!18389 (_ BitVec 64)) Unit!13635)

(assert (=> b!468278 (= lt!211842 (addStillContains!287 lt!211854 lt!211857 zeroValue!794 lt!211847))))

(assert (=> b!468278 (contains!2535 (+!1649 lt!211854 (tuple2!8557 lt!211857 zeroValue!794)) lt!211847)))

(declare-fun lt!211858 () Unit!13635)

(assert (=> b!468278 (= lt!211858 lt!211842)))

(declare-fun lt!211855 () ListLongMap!7483)

(assert (=> b!468278 (= lt!211855 (getCurrentListMapNoExtraKeys!1923 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!211848 () (_ BitVec 64))

(assert (=> b!468278 (= lt!211848 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!211839 () (_ BitVec 64))

(assert (=> b!468278 (= lt!211839 (select (arr!14253 _keys!1025) #b00000000000000000000000000000000))))

(declare-fun lt!211856 () Unit!13635)

(declare-fun addApplyDifferent!287 (ListLongMap!7483 (_ BitVec 64) V!18389 (_ BitVec 64)) Unit!13635)

(assert (=> b!468278 (= lt!211856 (addApplyDifferent!287 lt!211855 lt!211848 minValueBefore!38 lt!211839))))

(assert (=> b!468278 (= (apply!325 (+!1649 lt!211855 (tuple2!8557 lt!211848 minValueBefore!38)) lt!211839) (apply!325 lt!211855 lt!211839))))

(declare-fun lt!211843 () Unit!13635)

(assert (=> b!468278 (= lt!211843 lt!211856)))

(declare-fun lt!211841 () ListLongMap!7483)

(assert (=> b!468278 (= lt!211841 (getCurrentListMapNoExtraKeys!1923 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!211845 () (_ BitVec 64))

(assert (=> b!468278 (= lt!211845 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!211859 () (_ BitVec 64))

(assert (=> b!468278 (= lt!211859 (select (arr!14253 _keys!1025) #b00000000000000000000000000000000))))

(declare-fun lt!211853 () Unit!13635)

(assert (=> b!468278 (= lt!211853 (addApplyDifferent!287 lt!211841 lt!211845 zeroValue!794 lt!211859))))

(assert (=> b!468278 (= (apply!325 (+!1649 lt!211841 (tuple2!8557 lt!211845 zeroValue!794)) lt!211859) (apply!325 lt!211841 lt!211859))))

(declare-fun lt!211840 () Unit!13635)

(assert (=> b!468278 (= lt!211840 lt!211853)))

(declare-fun lt!211844 () ListLongMap!7483)

(assert (=> b!468278 (= lt!211844 (getCurrentListMapNoExtraKeys!1923 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!211851 () (_ BitVec 64))

(assert (=> b!468278 (= lt!211851 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!211846 () (_ BitVec 64))

(assert (=> b!468278 (= lt!211846 (select (arr!14253 _keys!1025) #b00000000000000000000000000000000))))

(assert (=> b!468278 (= lt!211838 (addApplyDifferent!287 lt!211844 lt!211851 minValueBefore!38 lt!211846))))

(assert (=> b!468278 (= (apply!325 (+!1649 lt!211844 (tuple2!8557 lt!211851 minValueBefore!38)) lt!211846) (apply!325 lt!211844 lt!211846))))

(declare-fun bm!30345 () Bool)

(assert (=> bm!30345 (= call!30346 call!30343)))

(declare-fun b!468279 () Bool)

(assert (=> b!468279 (= e!274062 e!274064)))

(declare-fun c!56767 () Bool)

(assert (=> b!468279 (= c!56767 (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!468280 () Bool)

(assert (=> b!468280 (= e!274067 (= (apply!325 lt!211849 #b1000000000000000000000000000000000000000000000000000000000000000) minValueBefore!38))))

(declare-fun b!468281 () Bool)

(declare-fun e!274072 () Bool)

(declare-fun e!274070 () Bool)

(assert (=> b!468281 (= e!274072 e!274070)))

(declare-fun res!279913 () Bool)

(assert (=> b!468281 (=> (not res!279913) (not e!274070))))

(assert (=> b!468281 (= res!279913 (contains!2535 lt!211849 (select (arr!14253 _keys!1025) #b00000000000000000000000000000000)))))

(assert (=> b!468281 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!14605 _keys!1025)))))

(declare-fun b!468282 () Bool)

(assert (=> b!468282 (= e!274074 e!274071)))

(assert (=> b!468282 (= c!56769 (and (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!468283 () Bool)

(assert (=> b!468283 (= e!274069 call!30345)))

(declare-fun b!468284 () Bool)

(declare-fun res!279918 () Bool)

(assert (=> b!468284 (=> (not res!279918) (not e!274062))))

(assert (=> b!468284 (= res!279918 e!274072)))

(declare-fun res!279919 () Bool)

(assert (=> b!468284 (=> res!279919 e!274072)))

(assert (=> b!468284 (= res!279919 (not e!274065))))

(declare-fun res!279916 () Bool)

(assert (=> b!468284 (=> (not res!279916) (not e!274065))))

(assert (=> b!468284 (= res!279916 (bvslt #b00000000000000000000000000000000 (size!14605 _keys!1025)))))

(declare-fun b!468285 () Bool)

(assert (=> b!468285 (= e!274074 (+!1649 call!30348 (tuple2!8557 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38)))))

(declare-fun bm!30346 () Bool)

(assert (=> bm!30346 (= call!30347 (contains!2535 lt!211849 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!468286 () Bool)

(assert (=> b!468286 (= e!274063 (not call!30347))))

(declare-fun b!468287 () Bool)

(assert (=> b!468287 (= e!274070 (= (apply!325 lt!211849 (select (arr!14253 _keys!1025) #b00000000000000000000000000000000)) (get!6987 (select (arr!14252 _values!833) #b00000000000000000000000000000000) (dynLambda!917 defaultEntry!841 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!468287 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!14604 _values!833)))))

(assert (=> b!468287 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!14605 _keys!1025)))))

(assert (= (and d!75117 c!56768) b!468285))

(assert (= (and d!75117 (not c!56768)) b!468282))

(assert (= (and b!468282 c!56769) b!468270))

(assert (= (and b!468282 (not c!56769)) b!468276))

(assert (= (and b!468276 c!56771) b!468283))

(assert (= (and b!468276 (not c!56771)) b!468267))

(assert (= (or b!468283 b!468267) bm!30341))

(assert (= (or b!468270 bm!30341) bm!30345))

(assert (= (or b!468270 b!468283) bm!30343))

(assert (= (or b!468285 bm!30345) bm!30342))

(assert (= (or b!468285 bm!30343) bm!30340))

(assert (= (and d!75117 res!279912) b!468272))

(assert (= (and d!75117 c!56772) b!468278))

(assert (= (and d!75117 (not c!56772)) b!468271))

(assert (= (and d!75117 res!279920) b!468284))

(assert (= (and b!468284 res!279916) b!468274))

(assert (= (and b!468284 (not res!279919)) b!468281))

(assert (= (and b!468281 res!279913) b!468287))

(assert (= (and b!468284 res!279918) b!468273))

(assert (= (and b!468273 c!56770) b!468275))

(assert (= (and b!468273 (not c!56770)) b!468286))

(assert (= (and b!468275 res!279914) b!468269))

(assert (= (or b!468275 b!468286) bm!30346))

(assert (= (and b!468273 res!279917) b!468279))

(assert (= (and b!468279 c!56767) b!468277))

(assert (= (and b!468279 (not c!56767)) b!468268))

(assert (= (and b!468277 res!279915) b!468280))

(assert (= (or b!468277 b!468268) bm!30344))

(declare-fun b_lambda!10107 () Bool)

(assert (=> (not b_lambda!10107) (not b!468287)))

(assert (=> b!468287 t!14643))

(declare-fun b_and!19953 () Bool)

(assert (= b_and!19951 (and (=> t!14643 result!7411) b_and!19953)))

(assert (=> bm!30342 m!450175))

(declare-fun m!450269 () Bool)

(assert (=> b!468278 m!450269))

(declare-fun m!450271 () Bool)

(assert (=> b!468278 m!450271))

(assert (=> b!468278 m!450271))

(declare-fun m!450273 () Bool)

(assert (=> b!468278 m!450273))

(declare-fun m!450275 () Bool)

(assert (=> b!468278 m!450275))

(declare-fun m!450277 () Bool)

(assert (=> b!468278 m!450277))

(declare-fun m!450279 () Bool)

(assert (=> b!468278 m!450279))

(assert (=> b!468278 m!450209))

(declare-fun m!450281 () Bool)

(assert (=> b!468278 m!450281))

(declare-fun m!450283 () Bool)

(assert (=> b!468278 m!450283))

(declare-fun m!450285 () Bool)

(assert (=> b!468278 m!450285))

(declare-fun m!450287 () Bool)

(assert (=> b!468278 m!450287))

(assert (=> b!468278 m!450277))

(assert (=> b!468278 m!450281))

(assert (=> b!468278 m!450269))

(declare-fun m!450289 () Bool)

(assert (=> b!468278 m!450289))

(declare-fun m!450291 () Bool)

(assert (=> b!468278 m!450291))

(declare-fun m!450293 () Bool)

(assert (=> b!468278 m!450293))

(assert (=> b!468278 m!450175))

(declare-fun m!450295 () Bool)

(assert (=> b!468278 m!450295))

(declare-fun m!450297 () Bool)

(assert (=> b!468278 m!450297))

(declare-fun m!450299 () Bool)

(assert (=> bm!30346 m!450299))

(declare-fun m!450301 () Bool)

(assert (=> bm!30340 m!450301))

(assert (=> d!75117 m!450177))

(declare-fun m!450303 () Bool)

(assert (=> bm!30344 m!450303))

(assert (=> b!468281 m!450209))

(assert (=> b!468281 m!450209))

(declare-fun m!450305 () Bool)

(assert (=> b!468281 m!450305))

(declare-fun m!450307 () Bool)

(assert (=> b!468269 m!450307))

(declare-fun m!450309 () Bool)

(assert (=> b!468285 m!450309))

(declare-fun m!450311 () Bool)

(assert (=> b!468280 m!450311))

(assert (=> b!468287 m!450209))

(declare-fun m!450313 () Bool)

(assert (=> b!468287 m!450313))

(assert (=> b!468287 m!450209))

(assert (=> b!468287 m!450223))

(assert (=> b!468287 m!450225))

(assert (=> b!468287 m!450223))

(assert (=> b!468287 m!450225))

(assert (=> b!468287 m!450227))

(assert (=> b!468272 m!450209))

(assert (=> b!468272 m!450209))

(assert (=> b!468272 m!450211))

(assert (=> b!468274 m!450209))

(assert (=> b!468274 m!450209))

(assert (=> b!468274 m!450211))

(assert (=> b!468134 d!75117))

(declare-fun b!468298 () Bool)

(declare-fun e!274084 () Bool)

(declare-fun e!274083 () Bool)

(assert (=> b!468298 (= e!274084 e!274083)))

(declare-fun res!279929 () Bool)

(assert (=> b!468298 (=> (not res!279929) (not e!274083))))

(declare-fun e!274085 () Bool)

(assert (=> b!468298 (= res!279929 (not e!274085))))

(declare-fun res!279928 () Bool)

(assert (=> b!468298 (=> (not res!279928) (not e!274085))))

(assert (=> b!468298 (= res!279928 (validKeyInArray!0 (select (arr!14253 _keys!1025) #b00000000000000000000000000000000)))))

(declare-fun d!75119 () Bool)

(declare-fun res!279927 () Bool)

(assert (=> d!75119 (=> res!279927 e!274084)))

(assert (=> d!75119 (= res!279927 (bvsge #b00000000000000000000000000000000 (size!14605 _keys!1025)))))

(assert (=> d!75119 (= (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8673) e!274084)))

(declare-fun b!468299 () Bool)

(declare-fun e!274086 () Bool)

(declare-fun call!30352 () Bool)

(assert (=> b!468299 (= e!274086 call!30352)))

(declare-fun bm!30349 () Bool)

(declare-fun c!56775 () Bool)

(assert (=> bm!30349 (= call!30352 (arrayNoDuplicates!0 _keys!1025 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!56775 (Cons!8672 (select (arr!14253 _keys!1025) #b00000000000000000000000000000000) Nil!8673) Nil!8673)))))

(declare-fun b!468300 () Bool)

(assert (=> b!468300 (= e!274086 call!30352)))

(declare-fun b!468301 () Bool)

(declare-fun contains!2536 (List!8676 (_ BitVec 64)) Bool)

(assert (=> b!468301 (= e!274085 (contains!2536 Nil!8673 (select (arr!14253 _keys!1025) #b00000000000000000000000000000000)))))

(declare-fun b!468302 () Bool)

(assert (=> b!468302 (= e!274083 e!274086)))

(assert (=> b!468302 (= c!56775 (validKeyInArray!0 (select (arr!14253 _keys!1025) #b00000000000000000000000000000000)))))

(assert (= (and d!75119 (not res!279927)) b!468298))

(assert (= (and b!468298 res!279928) b!468301))

(assert (= (and b!468298 res!279929) b!468302))

(assert (= (and b!468302 c!56775) b!468299))

(assert (= (and b!468302 (not c!56775)) b!468300))

(assert (= (or b!468299 b!468300) bm!30349))

(assert (=> b!468298 m!450209))

(assert (=> b!468298 m!450209))

(assert (=> b!468298 m!450211))

(assert (=> bm!30349 m!450209))

(declare-fun m!450315 () Bool)

(assert (=> bm!30349 m!450315))

(assert (=> b!468301 m!450209))

(assert (=> b!468301 m!450209))

(declare-fun m!450317 () Bool)

(assert (=> b!468301 m!450317))

(assert (=> b!468302 m!450209))

(assert (=> b!468302 m!450209))

(assert (=> b!468302 m!450211))

(assert (=> b!468138 d!75119))

(declare-fun d!75121 () Bool)

(assert (=> d!75121 (= (validMask!0 mask!1365) (and (or (= mask!1365 #b00000000000000000000000000000111) (= mask!1365 #b00000000000000000000000000001111) (= mask!1365 #b00000000000000000000000000011111) (= mask!1365 #b00000000000000000000000000111111) (= mask!1365 #b00000000000000000000000001111111) (= mask!1365 #b00000000000000000000000011111111) (= mask!1365 #b00000000000000000000000111111111) (= mask!1365 #b00000000000000000000001111111111) (= mask!1365 #b00000000000000000000011111111111) (= mask!1365 #b00000000000000000000111111111111) (= mask!1365 #b00000000000000000001111111111111) (= mask!1365 #b00000000000000000011111111111111) (= mask!1365 #b00000000000000000111111111111111) (= mask!1365 #b00000000000000001111111111111111) (= mask!1365 #b00000000000000011111111111111111) (= mask!1365 #b00000000000000111111111111111111) (= mask!1365 #b00000000000001111111111111111111) (= mask!1365 #b00000000000011111111111111111111) (= mask!1365 #b00000000000111111111111111111111) (= mask!1365 #b00000000001111111111111111111111) (= mask!1365 #b00000000011111111111111111111111) (= mask!1365 #b00000000111111111111111111111111) (= mask!1365 #b00000001111111111111111111111111) (= mask!1365 #b00000011111111111111111111111111) (= mask!1365 #b00000111111111111111111111111111) (= mask!1365 #b00001111111111111111111111111111) (= mask!1365 #b00011111111111111111111111111111) (= mask!1365 #b00111111111111111111111111111111)) (bvsle mask!1365 #b00111111111111111111111111111111)))))

(assert (=> start!41954 d!75121))

(declare-fun d!75123 () Bool)

(assert (=> d!75123 (= (array_inv!10278 _keys!1025) (bvsge (size!14605 _keys!1025) #b00000000000000000000000000000000))))

(assert (=> start!41954 d!75123))

(declare-fun d!75125 () Bool)

(assert (=> d!75125 (= (array_inv!10279 _values!833) (bvsge (size!14604 _values!833) #b00000000000000000000000000000000))))

(assert (=> start!41954 d!75125))

(declare-fun condMapEmpty!21142 () Bool)

(declare-fun mapDefault!21142 () ValueCell!6138)

(assert (=> mapNonEmpty!21136 (= condMapEmpty!21142 (= mapRest!21136 ((as const (Array (_ BitVec 32) ValueCell!6138)) mapDefault!21142)))))

(declare-fun e!274092 () Bool)

(declare-fun mapRes!21142 () Bool)

(assert (=> mapNonEmpty!21136 (= tp!40618 (and e!274092 mapRes!21142))))

(declare-fun b!468310 () Bool)

(assert (=> b!468310 (= e!274092 tp_is_empty!12963)))

(declare-fun b!468309 () Bool)

(declare-fun e!274091 () Bool)

(assert (=> b!468309 (= e!274091 tp_is_empty!12963)))

(declare-fun mapIsEmpty!21142 () Bool)

(assert (=> mapIsEmpty!21142 mapRes!21142))

(declare-fun mapNonEmpty!21142 () Bool)

(declare-fun tp!40627 () Bool)

(assert (=> mapNonEmpty!21142 (= mapRes!21142 (and tp!40627 e!274091))))

(declare-fun mapRest!21142 () (Array (_ BitVec 32) ValueCell!6138))

(declare-fun mapValue!21142 () ValueCell!6138)

(declare-fun mapKey!21142 () (_ BitVec 32))

(assert (=> mapNonEmpty!21142 (= mapRest!21136 (store mapRest!21142 mapKey!21142 mapValue!21142))))

(assert (= (and mapNonEmpty!21136 condMapEmpty!21142) mapIsEmpty!21142))

(assert (= (and mapNonEmpty!21136 (not condMapEmpty!21142)) mapNonEmpty!21142))

(assert (= (and mapNonEmpty!21142 ((_ is ValueCellFull!6138) mapValue!21142)) b!468309))

(assert (= (and mapNonEmpty!21136 ((_ is ValueCellFull!6138) mapDefault!21142)) b!468310))

(declare-fun m!450319 () Bool)

(assert (=> mapNonEmpty!21142 m!450319))

(declare-fun b_lambda!10109 () Bool)

(assert (= b_lambda!10101 (or (and start!41954 b_free!11535) b_lambda!10109)))

(declare-fun b_lambda!10111 () Bool)

(assert (= b_lambda!10107 (or (and start!41954 b_free!11535) b_lambda!10111)))

(declare-fun b_lambda!10113 () Bool)

(assert (= b_lambda!10105 (or (and start!41954 b_free!11535) b_lambda!10113)))

(declare-fun b_lambda!10115 () Bool)

(assert (= b_lambda!10103 (or (and start!41954 b_free!11535) b_lambda!10115)))

(declare-fun b_lambda!10117 () Bool)

(assert (= b_lambda!10099 (or (and start!41954 b_free!11535) b_lambda!10117)))

(check-sat (not b_lambda!10117) (not b!468301) (not b_lambda!10111) (not b!468210) (not b!468200) (not b!468280) (not b!468208) (not b!468274) (not b!468209) (not b!468220) (not b!468203) (not b!468287) (not b!468222) (not b!468204) (not b_lambda!10113) b_and!19953 (not b_next!11535) (not b!468278) (not b!468213) (not bm!30321) (not b_lambda!10109) (not bm!30346) (not b!468214) (not bm!30344) (not b!468302) (not b!468173) (not d!75117) (not b!468217) (not b!468172) (not bm!30324) (not b!468281) (not b!468218) (not b!468298) (not bm!30342) (not mapNonEmpty!21142) (not b!468199) (not bm!30340) (not d!75111) (not b!468269) (not b!468223) (not b!468206) (not b!468285) (not b_lambda!10115) (not bm!30349) (not b!468224) (not bm!30325) (not b!468272) (not d!75113) tp_is_empty!12963 (not d!75115))
(check-sat b_and!19953 (not b_next!11535))

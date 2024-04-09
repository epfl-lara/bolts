; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!42308 () Bool)

(assert start!42308)

(declare-fun b_free!11805 () Bool)

(declare-fun b_next!11805 () Bool)

(assert (=> start!42308 (= b_free!11805 (not b_next!11805))))

(declare-fun tp!41443 () Bool)

(declare-fun b_and!20261 () Bool)

(assert (=> start!42308 (= tp!41443 b_and!20261)))

(declare-fun b!471808 () Bool)

(declare-fun e!276594 () Bool)

(declare-fun tp_is_empty!13233 () Bool)

(assert (=> b!471808 (= e!276594 tp_is_empty!13233)))

(declare-fun mapNonEmpty!21556 () Bool)

(declare-fun mapRes!21556 () Bool)

(declare-fun tp!41442 () Bool)

(declare-fun e!276597 () Bool)

(assert (=> mapNonEmpty!21556 (= mapRes!21556 (and tp!41442 e!276597))))

(declare-fun mapKey!21556 () (_ BitVec 32))

(declare-datatypes ((V!18749 0))(
  ( (V!18750 (val!6661 Int)) )
))
(declare-datatypes ((ValueCell!6273 0))(
  ( (ValueCellFull!6273 (v!8948 V!18749)) (EmptyCell!6273) )
))
(declare-fun mapRest!21556 () (Array (_ BitVec 32) ValueCell!6273))

(declare-datatypes ((array!30189 0))(
  ( (array!30190 (arr!14513 (Array (_ BitVec 32) ValueCell!6273)) (size!14865 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!30189)

(declare-fun mapValue!21556 () ValueCell!6273)

(assert (=> mapNonEmpty!21556 (= (arr!14513 _values!833) (store mapRest!21556 mapKey!21556 mapValue!21556))))

(declare-fun mapIsEmpty!21556 () Bool)

(assert (=> mapIsEmpty!21556 mapRes!21556))

(declare-fun b!471809 () Bool)

(declare-fun e!276598 () Bool)

(assert (=> b!471809 (= e!276598 (and e!276594 mapRes!21556))))

(declare-fun condMapEmpty!21556 () Bool)

(declare-fun mapDefault!21556 () ValueCell!6273)

(assert (=> b!471809 (= condMapEmpty!21556 (= (arr!14513 _values!833) ((as const (Array (_ BitVec 32) ValueCell!6273)) mapDefault!21556)))))

(declare-fun b!471810 () Bool)

(assert (=> b!471810 (= e!276597 tp_is_empty!13233)))

(declare-fun b!471811 () Bool)

(declare-fun res!281912 () Bool)

(declare-fun e!276596 () Bool)

(assert (=> b!471811 (=> (not res!281912) (not e!276596))))

(declare-datatypes ((array!30191 0))(
  ( (array!30192 (arr!14514 (Array (_ BitVec 32) (_ BitVec 64))) (size!14866 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!30191)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!30191 (_ BitVec 32)) Bool)

(assert (=> b!471811 (= res!281912 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!471812 () Bool)

(declare-fun res!281915 () Bool)

(assert (=> b!471812 (=> (not res!281915) (not e!276596))))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(assert (=> b!471812 (= res!281915 (and (= (size!14865 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14866 _keys!1025) (size!14865 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun res!281914 () Bool)

(assert (=> start!42308 (=> (not res!281914) (not e!276596))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!42308 (= res!281914 (validMask!0 mask!1365))))

(assert (=> start!42308 e!276596))

(assert (=> start!42308 tp_is_empty!13233))

(assert (=> start!42308 tp!41443))

(assert (=> start!42308 true))

(declare-fun array_inv!10474 (array!30191) Bool)

(assert (=> start!42308 (array_inv!10474 _keys!1025)))

(declare-fun array_inv!10475 (array!30189) Bool)

(assert (=> start!42308 (and (array_inv!10475 _values!833) e!276598)))

(declare-fun b!471813 () Bool)

(declare-fun res!281913 () Bool)

(assert (=> b!471813 (=> (not res!281913) (not e!276596))))

(declare-datatypes ((List!8872 0))(
  ( (Nil!8869) (Cons!8868 (h!9724 (_ BitVec 64)) (t!14846 List!8872)) )
))
(declare-fun arrayNoDuplicates!0 (array!30191 (_ BitVec 32) List!8872) Bool)

(assert (=> b!471813 (= res!281913 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8869))))

(declare-fun b!471814 () Bool)

(assert (=> b!471814 (= e!276596 (not (or (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsle #b00000000000000000000000000000000 (size!14866 _keys!1025)))))))

(declare-datatypes ((tuple2!8756 0))(
  ( (tuple2!8757 (_1!4388 (_ BitVec 64)) (_2!4388 V!18749)) )
))
(declare-datatypes ((List!8873 0))(
  ( (Nil!8870) (Cons!8869 (h!9725 tuple2!8756) (t!14847 List!8873)) )
))
(declare-datatypes ((ListLongMap!7683 0))(
  ( (ListLongMap!7684 (toList!3857 List!8873)) )
))
(declare-fun lt!214095 () ListLongMap!7683)

(declare-fun lt!214094 () ListLongMap!7683)

(assert (=> b!471814 (= lt!214095 lt!214094)))

(declare-datatypes ((Unit!13840 0))(
  ( (Unit!13841) )
))
(declare-fun lt!214093 () Unit!13840)

(declare-fun minValueBefore!38 () V!18749)

(declare-fun zeroValue!794 () V!18749)

(declare-fun defaultEntry!841 () Int)

(declare-fun minValueAfter!38 () V!18749)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!214 (array!30191 array!30189 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18749 V!18749 V!18749 V!18749 (_ BitVec 32) Int) Unit!13840)

(assert (=> b!471814 (= lt!214093 (lemmaNoChangeToArrayThenSameMapNoExtras!214 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!2019 (array!30191 array!30189 (_ BitVec 32) (_ BitVec 32) V!18749 V!18749 (_ BitVec 32) Int) ListLongMap!7683)

(assert (=> b!471814 (= lt!214094 (getCurrentListMapNoExtraKeys!2019 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!471814 (= lt!214095 (getCurrentListMapNoExtraKeys!2019 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (= (and start!42308 res!281914) b!471812))

(assert (= (and b!471812 res!281915) b!471811))

(assert (= (and b!471811 res!281912) b!471813))

(assert (= (and b!471813 res!281913) b!471814))

(assert (= (and b!471809 condMapEmpty!21556) mapIsEmpty!21556))

(assert (= (and b!471809 (not condMapEmpty!21556)) mapNonEmpty!21556))

(get-info :version)

(assert (= (and mapNonEmpty!21556 ((_ is ValueCellFull!6273) mapValue!21556)) b!471810))

(assert (= (and b!471809 ((_ is ValueCellFull!6273) mapDefault!21556)) b!471808))

(assert (= start!42308 b!471809))

(declare-fun m!453895 () Bool)

(assert (=> b!471814 m!453895))

(declare-fun m!453897 () Bool)

(assert (=> b!471814 m!453897))

(declare-fun m!453899 () Bool)

(assert (=> b!471814 m!453899))

(declare-fun m!453901 () Bool)

(assert (=> b!471811 m!453901))

(declare-fun m!453903 () Bool)

(assert (=> start!42308 m!453903))

(declare-fun m!453905 () Bool)

(assert (=> start!42308 m!453905))

(declare-fun m!453907 () Bool)

(assert (=> start!42308 m!453907))

(declare-fun m!453909 () Bool)

(assert (=> b!471813 m!453909))

(declare-fun m!453911 () Bool)

(assert (=> mapNonEmpty!21556 m!453911))

(check-sat (not b!471814) (not b_next!11805) (not start!42308) tp_is_empty!13233 (not b!471811) (not mapNonEmpty!21556) (not b!471813) b_and!20261)
(check-sat b_and!20261 (not b_next!11805))
(get-model)

(declare-fun d!75305 () Bool)

(assert (=> d!75305 (= (validMask!0 mask!1365) (and (or (= mask!1365 #b00000000000000000000000000000111) (= mask!1365 #b00000000000000000000000000001111) (= mask!1365 #b00000000000000000000000000011111) (= mask!1365 #b00000000000000000000000000111111) (= mask!1365 #b00000000000000000000000001111111) (= mask!1365 #b00000000000000000000000011111111) (= mask!1365 #b00000000000000000000000111111111) (= mask!1365 #b00000000000000000000001111111111) (= mask!1365 #b00000000000000000000011111111111) (= mask!1365 #b00000000000000000000111111111111) (= mask!1365 #b00000000000000000001111111111111) (= mask!1365 #b00000000000000000011111111111111) (= mask!1365 #b00000000000000000111111111111111) (= mask!1365 #b00000000000000001111111111111111) (= mask!1365 #b00000000000000011111111111111111) (= mask!1365 #b00000000000000111111111111111111) (= mask!1365 #b00000000000001111111111111111111) (= mask!1365 #b00000000000011111111111111111111) (= mask!1365 #b00000000000111111111111111111111) (= mask!1365 #b00000000001111111111111111111111) (= mask!1365 #b00000000011111111111111111111111) (= mask!1365 #b00000000111111111111111111111111) (= mask!1365 #b00000001111111111111111111111111) (= mask!1365 #b00000011111111111111111111111111) (= mask!1365 #b00000111111111111111111111111111) (= mask!1365 #b00001111111111111111111111111111) (= mask!1365 #b00011111111111111111111111111111) (= mask!1365 #b00111111111111111111111111111111)) (bvsle mask!1365 #b00111111111111111111111111111111)))))

(assert (=> start!42308 d!75305))

(declare-fun d!75307 () Bool)

(assert (=> d!75307 (= (array_inv!10474 _keys!1025) (bvsge (size!14866 _keys!1025) #b00000000000000000000000000000000))))

(assert (=> start!42308 d!75307))

(declare-fun d!75309 () Bool)

(assert (=> d!75309 (= (array_inv!10475 _values!833) (bvsge (size!14865 _values!833) #b00000000000000000000000000000000))))

(assert (=> start!42308 d!75309))

(declare-fun bm!30448 () Bool)

(declare-fun call!30451 () Bool)

(assert (=> bm!30448 (= call!30451 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1025 mask!1365))))

(declare-fun b!471844 () Bool)

(declare-fun e!276620 () Bool)

(declare-fun e!276621 () Bool)

(assert (=> b!471844 (= e!276620 e!276621)))

(declare-fun c!56914 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!471844 (= c!56914 (validKeyInArray!0 (select (arr!14514 _keys!1025) #b00000000000000000000000000000000)))))

(declare-fun b!471845 () Bool)

(assert (=> b!471845 (= e!276621 call!30451)))

(declare-fun d!75311 () Bool)

(declare-fun res!281933 () Bool)

(assert (=> d!75311 (=> res!281933 e!276620)))

(assert (=> d!75311 (= res!281933 (bvsge #b00000000000000000000000000000000 (size!14866 _keys!1025)))))

(assert (=> d!75311 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365) e!276620)))

(declare-fun b!471846 () Bool)

(declare-fun e!276622 () Bool)

(assert (=> b!471846 (= e!276622 call!30451)))

(declare-fun b!471847 () Bool)

(assert (=> b!471847 (= e!276621 e!276622)))

(declare-fun lt!214113 () (_ BitVec 64))

(assert (=> b!471847 (= lt!214113 (select (arr!14514 _keys!1025) #b00000000000000000000000000000000))))

(declare-fun lt!214111 () Unit!13840)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!30191 (_ BitVec 64) (_ BitVec 32)) Unit!13840)

(assert (=> b!471847 (= lt!214111 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1025 lt!214113 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!30191 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!471847 (arrayContainsKey!0 _keys!1025 lt!214113 #b00000000000000000000000000000000)))

(declare-fun lt!214112 () Unit!13840)

(assert (=> b!471847 (= lt!214112 lt!214111)))

(declare-fun res!281932 () Bool)

(declare-datatypes ((SeekEntryResult!3542 0))(
  ( (MissingZero!3542 (index!16347 (_ BitVec 32))) (Found!3542 (index!16348 (_ BitVec 32))) (Intermediate!3542 (undefined!4354 Bool) (index!16349 (_ BitVec 32)) (x!44239 (_ BitVec 32))) (Undefined!3542) (MissingVacant!3542 (index!16350 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!30191 (_ BitVec 32)) SeekEntryResult!3542)

(assert (=> b!471847 (= res!281932 (= (seekEntryOrOpen!0 (select (arr!14514 _keys!1025) #b00000000000000000000000000000000) _keys!1025 mask!1365) (Found!3542 #b00000000000000000000000000000000)))))

(assert (=> b!471847 (=> (not res!281932) (not e!276622))))

(assert (= (and d!75311 (not res!281933)) b!471844))

(assert (= (and b!471844 c!56914) b!471847))

(assert (= (and b!471844 (not c!56914)) b!471845))

(assert (= (and b!471847 res!281932) b!471846))

(assert (= (or b!471846 b!471845) bm!30448))

(declare-fun m!453931 () Bool)

(assert (=> bm!30448 m!453931))

(declare-fun m!453933 () Bool)

(assert (=> b!471844 m!453933))

(assert (=> b!471844 m!453933))

(declare-fun m!453935 () Bool)

(assert (=> b!471844 m!453935))

(assert (=> b!471847 m!453933))

(declare-fun m!453937 () Bool)

(assert (=> b!471847 m!453937))

(declare-fun m!453939 () Bool)

(assert (=> b!471847 m!453939))

(assert (=> b!471847 m!453933))

(declare-fun m!453941 () Bool)

(assert (=> b!471847 m!453941))

(assert (=> b!471811 d!75311))

(declare-fun b!471858 () Bool)

(declare-fun e!276631 () Bool)

(declare-fun call!30454 () Bool)

(assert (=> b!471858 (= e!276631 call!30454)))

(declare-fun b!471859 () Bool)

(declare-fun e!276632 () Bool)

(declare-fun e!276634 () Bool)

(assert (=> b!471859 (= e!276632 e!276634)))

(declare-fun res!281941 () Bool)

(assert (=> b!471859 (=> (not res!281941) (not e!276634))))

(declare-fun e!276633 () Bool)

(assert (=> b!471859 (= res!281941 (not e!276633))))

(declare-fun res!281940 () Bool)

(assert (=> b!471859 (=> (not res!281940) (not e!276633))))

(assert (=> b!471859 (= res!281940 (validKeyInArray!0 (select (arr!14514 _keys!1025) #b00000000000000000000000000000000)))))

(declare-fun b!471860 () Bool)

(assert (=> b!471860 (= e!276631 call!30454)))

(declare-fun b!471861 () Bool)

(declare-fun contains!2547 (List!8872 (_ BitVec 64)) Bool)

(assert (=> b!471861 (= e!276633 (contains!2547 Nil!8869 (select (arr!14514 _keys!1025) #b00000000000000000000000000000000)))))

(declare-fun d!75313 () Bool)

(declare-fun res!281942 () Bool)

(assert (=> d!75313 (=> res!281942 e!276632)))

(assert (=> d!75313 (= res!281942 (bvsge #b00000000000000000000000000000000 (size!14866 _keys!1025)))))

(assert (=> d!75313 (= (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8869) e!276632)))

(declare-fun b!471862 () Bool)

(assert (=> b!471862 (= e!276634 e!276631)))

(declare-fun c!56917 () Bool)

(assert (=> b!471862 (= c!56917 (validKeyInArray!0 (select (arr!14514 _keys!1025) #b00000000000000000000000000000000)))))

(declare-fun bm!30451 () Bool)

(assert (=> bm!30451 (= call!30454 (arrayNoDuplicates!0 _keys!1025 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!56917 (Cons!8868 (select (arr!14514 _keys!1025) #b00000000000000000000000000000000) Nil!8869) Nil!8869)))))

(assert (= (and d!75313 (not res!281942)) b!471859))

(assert (= (and b!471859 res!281940) b!471861))

(assert (= (and b!471859 res!281941) b!471862))

(assert (= (and b!471862 c!56917) b!471860))

(assert (= (and b!471862 (not c!56917)) b!471858))

(assert (= (or b!471860 b!471858) bm!30451))

(assert (=> b!471859 m!453933))

(assert (=> b!471859 m!453933))

(assert (=> b!471859 m!453935))

(assert (=> b!471861 m!453933))

(assert (=> b!471861 m!453933))

(declare-fun m!453943 () Bool)

(assert (=> b!471861 m!453943))

(assert (=> b!471862 m!453933))

(assert (=> b!471862 m!453933))

(assert (=> b!471862 m!453935))

(assert (=> bm!30451 m!453933))

(declare-fun m!453945 () Bool)

(assert (=> bm!30451 m!453945))

(assert (=> b!471813 d!75313))

(declare-fun d!75315 () Bool)

(assert (=> d!75315 (= (getCurrentListMapNoExtraKeys!2019 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841) (getCurrentListMapNoExtraKeys!2019 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!214116 () Unit!13840)

(declare-fun choose!1357 (array!30191 array!30189 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18749 V!18749 V!18749 V!18749 (_ BitVec 32) Int) Unit!13840)

(assert (=> d!75315 (= lt!214116 (choose!1357 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> d!75315 (validMask!0 mask!1365)))

(assert (=> d!75315 (= (lemmaNoChangeToArrayThenSameMapNoExtras!214 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841) lt!214116)))

(declare-fun bs!14972 () Bool)

(assert (= bs!14972 d!75315))

(assert (=> bs!14972 m!453899))

(assert (=> bs!14972 m!453897))

(declare-fun m!453947 () Bool)

(assert (=> bs!14972 m!453947))

(assert (=> bs!14972 m!453903))

(assert (=> b!471814 d!75315))

(declare-fun b!471887 () Bool)

(declare-fun e!276652 () ListLongMap!7683)

(declare-fun e!276650 () ListLongMap!7683)

(assert (=> b!471887 (= e!276652 e!276650)))

(declare-fun c!56929 () Bool)

(assert (=> b!471887 (= c!56929 (validKeyInArray!0 (select (arr!14514 _keys!1025) #b00000000000000000000000000000000)))))

(declare-fun b!471888 () Bool)

(assert (=> b!471888 (= e!276652 (ListLongMap!7684 Nil!8870))))

(declare-fun b!471889 () Bool)

(assert (=> b!471889 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!14866 _keys!1025)))))

(assert (=> b!471889 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!14865 _values!833)))))

(declare-fun e!276654 () Bool)

(declare-fun lt!214134 () ListLongMap!7683)

(declare-fun apply!330 (ListLongMap!7683 (_ BitVec 64)) V!18749)

(declare-fun get!7082 (ValueCell!6273 V!18749) V!18749)

(declare-fun dynLambda!922 (Int (_ BitVec 64)) V!18749)

(assert (=> b!471889 (= e!276654 (= (apply!330 lt!214134 (select (arr!14514 _keys!1025) #b00000000000000000000000000000000)) (get!7082 (select (arr!14513 _values!833) #b00000000000000000000000000000000) (dynLambda!922 defaultEntry!841 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!471890 () Bool)

(declare-fun res!281953 () Bool)

(declare-fun e!276649 () Bool)

(assert (=> b!471890 (=> (not res!281953) (not e!276649))))

(declare-fun contains!2548 (ListLongMap!7683 (_ BitVec 64)) Bool)

(assert (=> b!471890 (= res!281953 (not (contains!2548 lt!214134 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!75317 () Bool)

(assert (=> d!75317 e!276649))

(declare-fun res!281952 () Bool)

(assert (=> d!75317 (=> (not res!281952) (not e!276649))))

(assert (=> d!75317 (= res!281952 (not (contains!2548 lt!214134 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!75317 (= lt!214134 e!276652)))

(declare-fun c!56926 () Bool)

(assert (=> d!75317 (= c!56926 (bvsge #b00000000000000000000000000000000 (size!14866 _keys!1025)))))

(assert (=> d!75317 (validMask!0 mask!1365)))

(assert (=> d!75317 (= (getCurrentListMapNoExtraKeys!2019 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841) lt!214134)))

(declare-fun b!471891 () Bool)

(declare-fun e!276655 () Bool)

(declare-fun isEmpty!582 (ListLongMap!7683) Bool)

(assert (=> b!471891 (= e!276655 (isEmpty!582 lt!214134))))

(declare-fun b!471892 () Bool)

(declare-fun lt!214136 () Unit!13840)

(declare-fun lt!214137 () Unit!13840)

(assert (=> b!471892 (= lt!214136 lt!214137)))

(declare-fun lt!214132 () (_ BitVec 64))

(declare-fun lt!214131 () ListLongMap!7683)

(declare-fun lt!214135 () (_ BitVec 64))

(declare-fun lt!214133 () V!18749)

(declare-fun +!1687 (ListLongMap!7683 tuple2!8756) ListLongMap!7683)

(assert (=> b!471892 (not (contains!2548 (+!1687 lt!214131 (tuple2!8757 lt!214132 lt!214133)) lt!214135))))

(declare-fun addStillNotContains!165 (ListLongMap!7683 (_ BitVec 64) V!18749 (_ BitVec 64)) Unit!13840)

(assert (=> b!471892 (= lt!214137 (addStillNotContains!165 lt!214131 lt!214132 lt!214133 lt!214135))))

(assert (=> b!471892 (= lt!214135 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!471892 (= lt!214133 (get!7082 (select (arr!14513 _values!833) #b00000000000000000000000000000000) (dynLambda!922 defaultEntry!841 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!471892 (= lt!214132 (select (arr!14514 _keys!1025) #b00000000000000000000000000000000))))

(declare-fun call!30457 () ListLongMap!7683)

(assert (=> b!471892 (= lt!214131 call!30457)))

(assert (=> b!471892 (= e!276650 (+!1687 call!30457 (tuple2!8757 (select (arr!14514 _keys!1025) #b00000000000000000000000000000000) (get!7082 (select (arr!14513 _values!833) #b00000000000000000000000000000000) (dynLambda!922 defaultEntry!841 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!471893 () Bool)

(declare-fun e!276651 () Bool)

(assert (=> b!471893 (= e!276651 e!276654)))

(assert (=> b!471893 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!14866 _keys!1025)))))

(declare-fun res!281951 () Bool)

(assert (=> b!471893 (= res!281951 (contains!2548 lt!214134 (select (arr!14514 _keys!1025) #b00000000000000000000000000000000)))))

(assert (=> b!471893 (=> (not res!281951) (not e!276654))))

(declare-fun b!471894 () Bool)

(declare-fun e!276653 () Bool)

(assert (=> b!471894 (= e!276653 (validKeyInArray!0 (select (arr!14514 _keys!1025) #b00000000000000000000000000000000)))))

(assert (=> b!471894 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun bm!30454 () Bool)

(assert (=> bm!30454 (= call!30457 (getCurrentListMapNoExtraKeys!2019 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!841))))

(declare-fun b!471895 () Bool)

(assert (=> b!471895 (= e!276649 e!276651)))

(declare-fun c!56928 () Bool)

(assert (=> b!471895 (= c!56928 e!276653)))

(declare-fun res!281954 () Bool)

(assert (=> b!471895 (=> (not res!281954) (not e!276653))))

(assert (=> b!471895 (= res!281954 (bvslt #b00000000000000000000000000000000 (size!14866 _keys!1025)))))

(declare-fun b!471896 () Bool)

(assert (=> b!471896 (= e!276655 (= lt!214134 (getCurrentListMapNoExtraKeys!2019 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!841)))))

(declare-fun b!471897 () Bool)

(assert (=> b!471897 (= e!276650 call!30457)))

(declare-fun b!471898 () Bool)

(assert (=> b!471898 (= e!276651 e!276655)))

(declare-fun c!56927 () Bool)

(assert (=> b!471898 (= c!56927 (bvslt #b00000000000000000000000000000000 (size!14866 _keys!1025)))))

(assert (= (and d!75317 c!56926) b!471888))

(assert (= (and d!75317 (not c!56926)) b!471887))

(assert (= (and b!471887 c!56929) b!471892))

(assert (= (and b!471887 (not c!56929)) b!471897))

(assert (= (or b!471892 b!471897) bm!30454))

(assert (= (and d!75317 res!281952) b!471890))

(assert (= (and b!471890 res!281953) b!471895))

(assert (= (and b!471895 res!281954) b!471894))

(assert (= (and b!471895 c!56928) b!471893))

(assert (= (and b!471895 (not c!56928)) b!471898))

(assert (= (and b!471893 res!281951) b!471889))

(assert (= (and b!471898 c!56927) b!471896))

(assert (= (and b!471898 (not c!56927)) b!471891))

(declare-fun b_lambda!10199 () Bool)

(assert (=> (not b_lambda!10199) (not b!471889)))

(declare-fun t!14851 () Bool)

(declare-fun tb!3933 () Bool)

(assert (=> (and start!42308 (= defaultEntry!841 defaultEntry!841) t!14851) tb!3933))

(declare-fun result!7441 () Bool)

(assert (=> tb!3933 (= result!7441 tp_is_empty!13233)))

(assert (=> b!471889 t!14851))

(declare-fun b_and!20265 () Bool)

(assert (= b_and!20261 (and (=> t!14851 result!7441) b_and!20265)))

(declare-fun b_lambda!10201 () Bool)

(assert (=> (not b_lambda!10201) (not b!471892)))

(assert (=> b!471892 t!14851))

(declare-fun b_and!20267 () Bool)

(assert (= b_and!20265 (and (=> t!14851 result!7441) b_and!20267)))

(assert (=> b!471894 m!453933))

(assert (=> b!471894 m!453933))

(assert (=> b!471894 m!453935))

(declare-fun m!453949 () Bool)

(assert (=> b!471896 m!453949))

(declare-fun m!453951 () Bool)

(assert (=> b!471890 m!453951))

(assert (=> b!471887 m!453933))

(assert (=> b!471887 m!453933))

(assert (=> b!471887 m!453935))

(assert (=> bm!30454 m!453949))

(declare-fun m!453953 () Bool)

(assert (=> d!75317 m!453953))

(assert (=> d!75317 m!453903))

(declare-fun m!453955 () Bool)

(assert (=> b!471892 m!453955))

(declare-fun m!453957 () Bool)

(assert (=> b!471892 m!453957))

(declare-fun m!453959 () Bool)

(assert (=> b!471892 m!453959))

(assert (=> b!471892 m!453957))

(declare-fun m!453961 () Bool)

(assert (=> b!471892 m!453961))

(declare-fun m!453963 () Bool)

(assert (=> b!471892 m!453963))

(assert (=> b!471892 m!453963))

(declare-fun m!453965 () Bool)

(assert (=> b!471892 m!453965))

(declare-fun m!453967 () Bool)

(assert (=> b!471892 m!453967))

(assert (=> b!471892 m!453965))

(assert (=> b!471892 m!453933))

(assert (=> b!471889 m!453933))

(declare-fun m!453969 () Bool)

(assert (=> b!471889 m!453969))

(assert (=> b!471889 m!453963))

(assert (=> b!471889 m!453963))

(assert (=> b!471889 m!453965))

(assert (=> b!471889 m!453967))

(assert (=> b!471889 m!453965))

(assert (=> b!471889 m!453933))

(assert (=> b!471893 m!453933))

(assert (=> b!471893 m!453933))

(declare-fun m!453971 () Bool)

(assert (=> b!471893 m!453971))

(declare-fun m!453973 () Bool)

(assert (=> b!471891 m!453973))

(assert (=> b!471814 d!75317))

(declare-fun b!471901 () Bool)

(declare-fun e!276659 () ListLongMap!7683)

(declare-fun e!276657 () ListLongMap!7683)

(assert (=> b!471901 (= e!276659 e!276657)))

(declare-fun c!56933 () Bool)

(assert (=> b!471901 (= c!56933 (validKeyInArray!0 (select (arr!14514 _keys!1025) #b00000000000000000000000000000000)))))

(declare-fun b!471902 () Bool)

(assert (=> b!471902 (= e!276659 (ListLongMap!7684 Nil!8870))))

(declare-fun b!471903 () Bool)

(assert (=> b!471903 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!14866 _keys!1025)))))

(assert (=> b!471903 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!14865 _values!833)))))

(declare-fun lt!214141 () ListLongMap!7683)

(declare-fun e!276661 () Bool)

(assert (=> b!471903 (= e!276661 (= (apply!330 lt!214141 (select (arr!14514 _keys!1025) #b00000000000000000000000000000000)) (get!7082 (select (arr!14513 _values!833) #b00000000000000000000000000000000) (dynLambda!922 defaultEntry!841 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!471904 () Bool)

(declare-fun res!281957 () Bool)

(declare-fun e!276656 () Bool)

(assert (=> b!471904 (=> (not res!281957) (not e!276656))))

(assert (=> b!471904 (= res!281957 (not (contains!2548 lt!214141 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!75319 () Bool)

(assert (=> d!75319 e!276656))

(declare-fun res!281956 () Bool)

(assert (=> d!75319 (=> (not res!281956) (not e!276656))))

(assert (=> d!75319 (= res!281956 (not (contains!2548 lt!214141 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!75319 (= lt!214141 e!276659)))

(declare-fun c!56930 () Bool)

(assert (=> d!75319 (= c!56930 (bvsge #b00000000000000000000000000000000 (size!14866 _keys!1025)))))

(assert (=> d!75319 (validMask!0 mask!1365)))

(assert (=> d!75319 (= (getCurrentListMapNoExtraKeys!2019 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841) lt!214141)))

(declare-fun b!471905 () Bool)

(declare-fun e!276662 () Bool)

(assert (=> b!471905 (= e!276662 (isEmpty!582 lt!214141))))

(declare-fun b!471906 () Bool)

(declare-fun lt!214143 () Unit!13840)

(declare-fun lt!214144 () Unit!13840)

(assert (=> b!471906 (= lt!214143 lt!214144)))

(declare-fun lt!214140 () V!18749)

(declare-fun lt!214138 () ListLongMap!7683)

(declare-fun lt!214139 () (_ BitVec 64))

(declare-fun lt!214142 () (_ BitVec 64))

(assert (=> b!471906 (not (contains!2548 (+!1687 lt!214138 (tuple2!8757 lt!214139 lt!214140)) lt!214142))))

(assert (=> b!471906 (= lt!214144 (addStillNotContains!165 lt!214138 lt!214139 lt!214140 lt!214142))))

(assert (=> b!471906 (= lt!214142 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!471906 (= lt!214140 (get!7082 (select (arr!14513 _values!833) #b00000000000000000000000000000000) (dynLambda!922 defaultEntry!841 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!471906 (= lt!214139 (select (arr!14514 _keys!1025) #b00000000000000000000000000000000))))

(declare-fun call!30458 () ListLongMap!7683)

(assert (=> b!471906 (= lt!214138 call!30458)))

(assert (=> b!471906 (= e!276657 (+!1687 call!30458 (tuple2!8757 (select (arr!14514 _keys!1025) #b00000000000000000000000000000000) (get!7082 (select (arr!14513 _values!833) #b00000000000000000000000000000000) (dynLambda!922 defaultEntry!841 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!471907 () Bool)

(declare-fun e!276658 () Bool)

(assert (=> b!471907 (= e!276658 e!276661)))

(assert (=> b!471907 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!14866 _keys!1025)))))

(declare-fun res!281955 () Bool)

(assert (=> b!471907 (= res!281955 (contains!2548 lt!214141 (select (arr!14514 _keys!1025) #b00000000000000000000000000000000)))))

(assert (=> b!471907 (=> (not res!281955) (not e!276661))))

(declare-fun b!471908 () Bool)

(declare-fun e!276660 () Bool)

(assert (=> b!471908 (= e!276660 (validKeyInArray!0 (select (arr!14514 _keys!1025) #b00000000000000000000000000000000)))))

(assert (=> b!471908 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun bm!30455 () Bool)

(assert (=> bm!30455 (= call!30458 (getCurrentListMapNoExtraKeys!2019 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!841))))

(declare-fun b!471909 () Bool)

(assert (=> b!471909 (= e!276656 e!276658)))

(declare-fun c!56932 () Bool)

(assert (=> b!471909 (= c!56932 e!276660)))

(declare-fun res!281958 () Bool)

(assert (=> b!471909 (=> (not res!281958) (not e!276660))))

(assert (=> b!471909 (= res!281958 (bvslt #b00000000000000000000000000000000 (size!14866 _keys!1025)))))

(declare-fun b!471910 () Bool)

(assert (=> b!471910 (= e!276662 (= lt!214141 (getCurrentListMapNoExtraKeys!2019 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!841)))))

(declare-fun b!471911 () Bool)

(assert (=> b!471911 (= e!276657 call!30458)))

(declare-fun b!471912 () Bool)

(assert (=> b!471912 (= e!276658 e!276662)))

(declare-fun c!56931 () Bool)

(assert (=> b!471912 (= c!56931 (bvslt #b00000000000000000000000000000000 (size!14866 _keys!1025)))))

(assert (= (and d!75319 c!56930) b!471902))

(assert (= (and d!75319 (not c!56930)) b!471901))

(assert (= (and b!471901 c!56933) b!471906))

(assert (= (and b!471901 (not c!56933)) b!471911))

(assert (= (or b!471906 b!471911) bm!30455))

(assert (= (and d!75319 res!281956) b!471904))

(assert (= (and b!471904 res!281957) b!471909))

(assert (= (and b!471909 res!281958) b!471908))

(assert (= (and b!471909 c!56932) b!471907))

(assert (= (and b!471909 (not c!56932)) b!471912))

(assert (= (and b!471907 res!281955) b!471903))

(assert (= (and b!471912 c!56931) b!471910))

(assert (= (and b!471912 (not c!56931)) b!471905))

(declare-fun b_lambda!10203 () Bool)

(assert (=> (not b_lambda!10203) (not b!471903)))

(assert (=> b!471903 t!14851))

(declare-fun b_and!20269 () Bool)

(assert (= b_and!20267 (and (=> t!14851 result!7441) b_and!20269)))

(declare-fun b_lambda!10205 () Bool)

(assert (=> (not b_lambda!10205) (not b!471906)))

(assert (=> b!471906 t!14851))

(declare-fun b_and!20271 () Bool)

(assert (= b_and!20269 (and (=> t!14851 result!7441) b_and!20271)))

(assert (=> b!471908 m!453933))

(assert (=> b!471908 m!453933))

(assert (=> b!471908 m!453935))

(declare-fun m!453975 () Bool)

(assert (=> b!471910 m!453975))

(declare-fun m!453977 () Bool)

(assert (=> b!471904 m!453977))

(assert (=> b!471901 m!453933))

(assert (=> b!471901 m!453933))

(assert (=> b!471901 m!453935))

(assert (=> bm!30455 m!453975))

(declare-fun m!453979 () Bool)

(assert (=> d!75319 m!453979))

(assert (=> d!75319 m!453903))

(declare-fun m!453981 () Bool)

(assert (=> b!471906 m!453981))

(declare-fun m!453983 () Bool)

(assert (=> b!471906 m!453983))

(declare-fun m!453985 () Bool)

(assert (=> b!471906 m!453985))

(assert (=> b!471906 m!453983))

(declare-fun m!453987 () Bool)

(assert (=> b!471906 m!453987))

(assert (=> b!471906 m!453963))

(assert (=> b!471906 m!453963))

(assert (=> b!471906 m!453965))

(assert (=> b!471906 m!453967))

(assert (=> b!471906 m!453965))

(assert (=> b!471906 m!453933))

(assert (=> b!471903 m!453933))

(declare-fun m!453989 () Bool)

(assert (=> b!471903 m!453989))

(assert (=> b!471903 m!453963))

(assert (=> b!471903 m!453963))

(assert (=> b!471903 m!453965))

(assert (=> b!471903 m!453967))

(assert (=> b!471903 m!453965))

(assert (=> b!471903 m!453933))

(assert (=> b!471907 m!453933))

(assert (=> b!471907 m!453933))

(declare-fun m!453991 () Bool)

(assert (=> b!471907 m!453991))

(declare-fun m!453993 () Bool)

(assert (=> b!471905 m!453993))

(assert (=> b!471814 d!75319))

(declare-fun mapNonEmpty!21562 () Bool)

(declare-fun mapRes!21562 () Bool)

(declare-fun tp!41452 () Bool)

(declare-fun e!276668 () Bool)

(assert (=> mapNonEmpty!21562 (= mapRes!21562 (and tp!41452 e!276668))))

(declare-fun mapKey!21562 () (_ BitVec 32))

(declare-fun mapRest!21562 () (Array (_ BitVec 32) ValueCell!6273))

(declare-fun mapValue!21562 () ValueCell!6273)

(assert (=> mapNonEmpty!21562 (= mapRest!21556 (store mapRest!21562 mapKey!21562 mapValue!21562))))

(declare-fun b!471920 () Bool)

(declare-fun e!276667 () Bool)

(assert (=> b!471920 (= e!276667 tp_is_empty!13233)))

(declare-fun mapIsEmpty!21562 () Bool)

(assert (=> mapIsEmpty!21562 mapRes!21562))

(declare-fun b!471919 () Bool)

(assert (=> b!471919 (= e!276668 tp_is_empty!13233)))

(declare-fun condMapEmpty!21562 () Bool)

(declare-fun mapDefault!21562 () ValueCell!6273)

(assert (=> mapNonEmpty!21556 (= condMapEmpty!21562 (= mapRest!21556 ((as const (Array (_ BitVec 32) ValueCell!6273)) mapDefault!21562)))))

(assert (=> mapNonEmpty!21556 (= tp!41442 (and e!276667 mapRes!21562))))

(assert (= (and mapNonEmpty!21556 condMapEmpty!21562) mapIsEmpty!21562))

(assert (= (and mapNonEmpty!21556 (not condMapEmpty!21562)) mapNonEmpty!21562))

(assert (= (and mapNonEmpty!21562 ((_ is ValueCellFull!6273) mapValue!21562)) b!471919))

(assert (= (and mapNonEmpty!21556 ((_ is ValueCellFull!6273) mapDefault!21562)) b!471920))

(declare-fun m!453995 () Bool)

(assert (=> mapNonEmpty!21562 m!453995))

(declare-fun b_lambda!10207 () Bool)

(assert (= b_lambda!10203 (or (and start!42308 b_free!11805) b_lambda!10207)))

(declare-fun b_lambda!10209 () Bool)

(assert (= b_lambda!10199 (or (and start!42308 b_free!11805) b_lambda!10209)))

(declare-fun b_lambda!10211 () Bool)

(assert (= b_lambda!10201 (or (and start!42308 b_free!11805) b_lambda!10211)))

(declare-fun b_lambda!10213 () Bool)

(assert (= b_lambda!10205 (or (and start!42308 b_free!11805) b_lambda!10213)))

(check-sat (not bm!30455) b_and!20271 (not b!471901) (not b!471893) (not b!471847) (not b!471908) (not b!471905) (not mapNonEmpty!21562) (not b!471910) (not b!471862) (not b!471894) (not b!471906) (not b!471844) (not bm!30448) (not b!471887) (not b_lambda!10207) (not b_lambda!10211) (not bm!30451) (not b_next!11805) (not d!75317) (not b!471890) (not b!471891) (not b_lambda!10209) (not b!471889) (not b!471904) tp_is_empty!13233 (not b!471896) (not b!471859) (not b!471892) (not b!471907) (not b!471903) (not b!471861) (not bm!30454) (not b_lambda!10213) (not d!75315) (not d!75319))
(check-sat b_and!20271 (not b_next!11805))

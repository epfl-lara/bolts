; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!21032 () Bool)

(assert start!21032)

(declare-fun b_free!5571 () Bool)

(declare-fun b_next!5571 () Bool)

(assert (=> start!21032 (= b_free!5571 (not b_next!5571))))

(declare-fun tp!19768 () Bool)

(declare-fun b_and!12395 () Bool)

(assert (=> start!21032 (= tp!19768 b_and!12395)))

(declare-fun b!211268 () Bool)

(declare-fun res!103190 () Bool)

(declare-fun e!137538 () Bool)

(assert (=> b!211268 (=> (not res!103190) (not e!137538))))

(declare-datatypes ((array!10066 0))(
  ( (array!10067 (arr!4778 (Array (_ BitVec 32) (_ BitVec 64))) (size!5103 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!10066)

(declare-datatypes ((V!6891 0))(
  ( (V!6892 (val!2761 Int)) )
))
(declare-datatypes ((ValueCell!2373 0))(
  ( (ValueCellFull!2373 (v!4747 V!6891)) (EmptyCell!2373) )
))
(declare-datatypes ((array!10068 0))(
  ( (array!10069 (arr!4779 (Array (_ BitVec 32) ValueCell!2373)) (size!5104 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!10068)

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!211268 (= res!103190 (and (= (size!5104 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!5103 _keys!825) (size!5104 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!211269 () Bool)

(declare-fun e!137539 () Bool)

(declare-fun tp_is_empty!5433 () Bool)

(assert (=> b!211269 (= e!137539 tp_is_empty!5433)))

(declare-fun b!211270 () Bool)

(declare-fun e!137537 () Bool)

(declare-fun e!137534 () Bool)

(declare-fun mapRes!9233 () Bool)

(assert (=> b!211270 (= e!137537 (and e!137534 mapRes!9233))))

(declare-fun condMapEmpty!9233 () Bool)

(declare-fun mapDefault!9233 () ValueCell!2373)

(assert (=> b!211270 (= condMapEmpty!9233 (= (arr!4779 _values!649) ((as const (Array (_ BitVec 32) ValueCell!2373)) mapDefault!9233)))))

(declare-fun res!103185 () Bool)

(assert (=> start!21032 (=> (not res!103185) (not e!137538))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!21032 (= res!103185 (validMask!0 mask!1149))))

(assert (=> start!21032 e!137538))

(declare-fun array_inv!3153 (array!10068) Bool)

(assert (=> start!21032 (and (array_inv!3153 _values!649) e!137537)))

(assert (=> start!21032 true))

(assert (=> start!21032 tp_is_empty!5433))

(declare-fun array_inv!3154 (array!10066) Bool)

(assert (=> start!21032 (array_inv!3154 _keys!825)))

(assert (=> start!21032 tp!19768))

(declare-datatypes ((tuple2!4170 0))(
  ( (tuple2!4171 (_1!2095 (_ BitVec 64)) (_2!2095 V!6891)) )
))
(declare-datatypes ((List!3086 0))(
  ( (Nil!3083) (Cons!3082 (h!3724 tuple2!4170) (t!8035 List!3086)) )
))
(declare-datatypes ((ListLongMap!3097 0))(
  ( (ListLongMap!3098 (toList!1564 List!3086)) )
))
(declare-fun lt!108650 () ListLongMap!3097)

(declare-fun lt!108647 () tuple2!4170)

(declare-fun lt!108648 () ListLongMap!3097)

(declare-fun b!211271 () Bool)

(declare-fun e!137535 () Bool)

(declare-fun +!557 (ListLongMap!3097 tuple2!4170) ListLongMap!3097)

(assert (=> b!211271 (= e!137535 (= lt!108650 (+!557 lt!108648 lt!108647)))))

(declare-fun lt!108645 () ListLongMap!3097)

(declare-fun lt!108652 () ListLongMap!3097)

(assert (=> b!211271 (= lt!108645 (+!557 lt!108652 lt!108647))))

(declare-fun zeroValue!615 () V!6891)

(assert (=> b!211271 (= lt!108647 (tuple2!4171 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))))

(declare-fun b!211272 () Bool)

(declare-fun res!103191 () Bool)

(assert (=> b!211272 (=> (not res!103191) (not e!137538))))

(declare-fun k0!843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!211272 (= res!103191 (validKeyInArray!0 k0!843))))

(declare-fun b!211273 () Bool)

(declare-fun res!103187 () Bool)

(assert (=> b!211273 (=> (not res!103187) (not e!137538))))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!211273 (= res!103187 (= (select (arr!4778 _keys!825) i!601) k0!843))))

(declare-fun b!211274 () Bool)

(declare-fun res!103186 () Bool)

(assert (=> b!211274 (=> (not res!103186) (not e!137538))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!10066 (_ BitVec 32)) Bool)

(assert (=> b!211274 (= res!103186 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!211275 () Bool)

(declare-fun res!103188 () Bool)

(assert (=> b!211275 (=> (not res!103188) (not e!137538))))

(declare-datatypes ((List!3087 0))(
  ( (Nil!3084) (Cons!3083 (h!3725 (_ BitVec 64)) (t!8036 List!3087)) )
))
(declare-fun arrayNoDuplicates!0 (array!10066 (_ BitVec 32) List!3087) Bool)

(assert (=> b!211275 (= res!103188 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!3084))))

(declare-fun b!211276 () Bool)

(assert (=> b!211276 (= e!137534 tp_is_empty!5433)))

(declare-fun b!211277 () Bool)

(declare-fun res!103192 () Bool)

(assert (=> b!211277 (=> (not res!103192) (not e!137538))))

(assert (=> b!211277 (= res!103192 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!5103 _keys!825))))))

(declare-fun b!211278 () Bool)

(assert (=> b!211278 (= e!137538 (not e!137535))))

(declare-fun res!103189 () Bool)

(assert (=> b!211278 (=> res!103189 e!137535)))

(assert (=> b!211278 (= res!103189 (or (not (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!657 () Int)

(declare-fun minValue!615 () V!6891)

(declare-fun getCurrentListMap!1093 (array!10066 array!10068 (_ BitVec 32) (_ BitVec 32) V!6891 V!6891 (_ BitVec 32) Int) ListLongMap!3097)

(assert (=> b!211278 (= lt!108650 (getCurrentListMap!1093 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!108651 () array!10068)

(assert (=> b!211278 (= lt!108645 (getCurrentListMap!1093 _keys!825 lt!108651 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!108646 () ListLongMap!3097)

(assert (=> b!211278 (and (= lt!108652 lt!108646) (= lt!108646 lt!108652))))

(declare-fun v!520 () V!6891)

(assert (=> b!211278 (= lt!108646 (+!557 lt!108648 (tuple2!4171 k0!843 v!520)))))

(declare-datatypes ((Unit!6413 0))(
  ( (Unit!6414) )
))
(declare-fun lt!108649 () Unit!6413)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!210 (array!10066 array!10068 (_ BitVec 32) (_ BitVec 32) V!6891 V!6891 (_ BitVec 32) (_ BitVec 64) V!6891 (_ BitVec 32) Int) Unit!6413)

(assert (=> b!211278 (= lt!108649 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!210 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k0!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!492 (array!10066 array!10068 (_ BitVec 32) (_ BitVec 32) V!6891 V!6891 (_ BitVec 32) Int) ListLongMap!3097)

(assert (=> b!211278 (= lt!108652 (getCurrentListMapNoExtraKeys!492 _keys!825 lt!108651 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!211278 (= lt!108651 (array!10069 (store (arr!4779 _values!649) i!601 (ValueCellFull!2373 v!520)) (size!5104 _values!649)))))

(assert (=> b!211278 (= lt!108648 (getCurrentListMapNoExtraKeys!492 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun mapIsEmpty!9233 () Bool)

(assert (=> mapIsEmpty!9233 mapRes!9233))

(declare-fun mapNonEmpty!9233 () Bool)

(declare-fun tp!19769 () Bool)

(assert (=> mapNonEmpty!9233 (= mapRes!9233 (and tp!19769 e!137539))))

(declare-fun mapValue!9233 () ValueCell!2373)

(declare-fun mapRest!9233 () (Array (_ BitVec 32) ValueCell!2373))

(declare-fun mapKey!9233 () (_ BitVec 32))

(assert (=> mapNonEmpty!9233 (= (arr!4779 _values!649) (store mapRest!9233 mapKey!9233 mapValue!9233))))

(assert (= (and start!21032 res!103185) b!211268))

(assert (= (and b!211268 res!103190) b!211274))

(assert (= (and b!211274 res!103186) b!211275))

(assert (= (and b!211275 res!103188) b!211277))

(assert (= (and b!211277 res!103192) b!211272))

(assert (= (and b!211272 res!103191) b!211273))

(assert (= (and b!211273 res!103187) b!211278))

(assert (= (and b!211278 (not res!103189)) b!211271))

(assert (= (and b!211270 condMapEmpty!9233) mapIsEmpty!9233))

(assert (= (and b!211270 (not condMapEmpty!9233)) mapNonEmpty!9233))

(get-info :version)

(assert (= (and mapNonEmpty!9233 ((_ is ValueCellFull!2373) mapValue!9233)) b!211269))

(assert (= (and b!211270 ((_ is ValueCellFull!2373) mapDefault!9233)) b!211276))

(assert (= start!21032 b!211270))

(declare-fun m!239029 () Bool)

(assert (=> b!211275 m!239029))

(declare-fun m!239031 () Bool)

(assert (=> start!21032 m!239031))

(declare-fun m!239033 () Bool)

(assert (=> start!21032 m!239033))

(declare-fun m!239035 () Bool)

(assert (=> start!21032 m!239035))

(declare-fun m!239037 () Bool)

(assert (=> b!211273 m!239037))

(declare-fun m!239039 () Bool)

(assert (=> b!211271 m!239039))

(declare-fun m!239041 () Bool)

(assert (=> b!211271 m!239041))

(declare-fun m!239043 () Bool)

(assert (=> b!211274 m!239043))

(declare-fun m!239045 () Bool)

(assert (=> b!211272 m!239045))

(declare-fun m!239047 () Bool)

(assert (=> b!211278 m!239047))

(declare-fun m!239049 () Bool)

(assert (=> b!211278 m!239049))

(declare-fun m!239051 () Bool)

(assert (=> b!211278 m!239051))

(declare-fun m!239053 () Bool)

(assert (=> b!211278 m!239053))

(declare-fun m!239055 () Bool)

(assert (=> b!211278 m!239055))

(declare-fun m!239057 () Bool)

(assert (=> b!211278 m!239057))

(declare-fun m!239059 () Bool)

(assert (=> b!211278 m!239059))

(declare-fun m!239061 () Bool)

(assert (=> mapNonEmpty!9233 m!239061))

(check-sat (not b_next!5571) tp_is_empty!5433 (not mapNonEmpty!9233) (not start!21032) (not b!211278) b_and!12395 (not b!211274) (not b!211275) (not b!211271) (not b!211272))
(check-sat b_and!12395 (not b_next!5571))
(get-model)

(declare-fun b!211322 () Bool)

(declare-fun e!137568 () Bool)

(declare-fun call!19997 () Bool)

(assert (=> b!211322 (= e!137568 call!19997)))

(declare-fun b!211323 () Bool)

(declare-fun e!137569 () Bool)

(declare-fun contains!1403 (List!3087 (_ BitVec 64)) Bool)

(assert (=> b!211323 (= e!137569 (contains!1403 Nil!3084 (select (arr!4778 _keys!825) #b00000000000000000000000000000000)))))

(declare-fun bm!19994 () Bool)

(declare-fun c!35664 () Bool)

(assert (=> bm!19994 (= call!19997 (arrayNoDuplicates!0 _keys!825 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!35664 (Cons!3083 (select (arr!4778 _keys!825) #b00000000000000000000000000000000) Nil!3084) Nil!3084)))))

(declare-fun b!211324 () Bool)

(declare-fun e!137566 () Bool)

(assert (=> b!211324 (= e!137566 e!137568)))

(assert (=> b!211324 (= c!35664 (validKeyInArray!0 (select (arr!4778 _keys!825) #b00000000000000000000000000000000)))))

(declare-fun b!211325 () Bool)

(declare-fun e!137567 () Bool)

(assert (=> b!211325 (= e!137567 e!137566)))

(declare-fun res!103223 () Bool)

(assert (=> b!211325 (=> (not res!103223) (not e!137566))))

(assert (=> b!211325 (= res!103223 (not e!137569))))

(declare-fun res!103224 () Bool)

(assert (=> b!211325 (=> (not res!103224) (not e!137569))))

(assert (=> b!211325 (= res!103224 (validKeyInArray!0 (select (arr!4778 _keys!825) #b00000000000000000000000000000000)))))

(declare-fun b!211326 () Bool)

(assert (=> b!211326 (= e!137568 call!19997)))

(declare-fun d!57955 () Bool)

(declare-fun res!103225 () Bool)

(assert (=> d!57955 (=> res!103225 e!137567)))

(assert (=> d!57955 (= res!103225 (bvsge #b00000000000000000000000000000000 (size!5103 _keys!825)))))

(assert (=> d!57955 (= (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!3084) e!137567)))

(assert (= (and d!57955 (not res!103225)) b!211325))

(assert (= (and b!211325 res!103224) b!211323))

(assert (= (and b!211325 res!103223) b!211324))

(assert (= (and b!211324 c!35664) b!211326))

(assert (= (and b!211324 (not c!35664)) b!211322))

(assert (= (or b!211326 b!211322) bm!19994))

(declare-fun m!239097 () Bool)

(assert (=> b!211323 m!239097))

(assert (=> b!211323 m!239097))

(declare-fun m!239099 () Bool)

(assert (=> b!211323 m!239099))

(assert (=> bm!19994 m!239097))

(declare-fun m!239101 () Bool)

(assert (=> bm!19994 m!239101))

(assert (=> b!211324 m!239097))

(assert (=> b!211324 m!239097))

(declare-fun m!239103 () Bool)

(assert (=> b!211324 m!239103))

(assert (=> b!211325 m!239097))

(assert (=> b!211325 m!239097))

(assert (=> b!211325 m!239103))

(assert (=> b!211275 d!57955))

(declare-fun d!57957 () Bool)

(assert (=> d!57957 (= (validMask!0 mask!1149) (and (or (= mask!1149 #b00000000000000000000000000000111) (= mask!1149 #b00000000000000000000000000001111) (= mask!1149 #b00000000000000000000000000011111) (= mask!1149 #b00000000000000000000000000111111) (= mask!1149 #b00000000000000000000000001111111) (= mask!1149 #b00000000000000000000000011111111) (= mask!1149 #b00000000000000000000000111111111) (= mask!1149 #b00000000000000000000001111111111) (= mask!1149 #b00000000000000000000011111111111) (= mask!1149 #b00000000000000000000111111111111) (= mask!1149 #b00000000000000000001111111111111) (= mask!1149 #b00000000000000000011111111111111) (= mask!1149 #b00000000000000000111111111111111) (= mask!1149 #b00000000000000001111111111111111) (= mask!1149 #b00000000000000011111111111111111) (= mask!1149 #b00000000000000111111111111111111) (= mask!1149 #b00000000000001111111111111111111) (= mask!1149 #b00000000000011111111111111111111) (= mask!1149 #b00000000000111111111111111111111) (= mask!1149 #b00000000001111111111111111111111) (= mask!1149 #b00000000011111111111111111111111) (= mask!1149 #b00000000111111111111111111111111) (= mask!1149 #b00000001111111111111111111111111) (= mask!1149 #b00000011111111111111111111111111) (= mask!1149 #b00000111111111111111111111111111) (= mask!1149 #b00001111111111111111111111111111) (= mask!1149 #b00011111111111111111111111111111) (= mask!1149 #b00111111111111111111111111111111)) (bvsle mask!1149 #b00111111111111111111111111111111)))))

(assert (=> start!21032 d!57957))

(declare-fun d!57959 () Bool)

(assert (=> d!57959 (= (array_inv!3153 _values!649) (bvsge (size!5104 _values!649) #b00000000000000000000000000000000))))

(assert (=> start!21032 d!57959))

(declare-fun d!57961 () Bool)

(assert (=> d!57961 (= (array_inv!3154 _keys!825) (bvsge (size!5103 _keys!825) #b00000000000000000000000000000000))))

(assert (=> start!21032 d!57961))

(declare-fun d!57963 () Bool)

(declare-fun e!137572 () Bool)

(assert (=> d!57963 e!137572))

(declare-fun res!103230 () Bool)

(assert (=> d!57963 (=> (not res!103230) (not e!137572))))

(declare-fun lt!108685 () ListLongMap!3097)

(declare-fun contains!1404 (ListLongMap!3097 (_ BitVec 64)) Bool)

(assert (=> d!57963 (= res!103230 (contains!1404 lt!108685 (_1!2095 lt!108647)))))

(declare-fun lt!108686 () List!3086)

(assert (=> d!57963 (= lt!108685 (ListLongMap!3098 lt!108686))))

(declare-fun lt!108688 () Unit!6413)

(declare-fun lt!108687 () Unit!6413)

(assert (=> d!57963 (= lt!108688 lt!108687)))

(declare-datatypes ((Option!257 0))(
  ( (Some!256 (v!4752 V!6891)) (None!255) )
))
(declare-fun getValueByKey!251 (List!3086 (_ BitVec 64)) Option!257)

(assert (=> d!57963 (= (getValueByKey!251 lt!108686 (_1!2095 lt!108647)) (Some!256 (_2!2095 lt!108647)))))

(declare-fun lemmaContainsTupThenGetReturnValue!140 (List!3086 (_ BitVec 64) V!6891) Unit!6413)

(assert (=> d!57963 (= lt!108687 (lemmaContainsTupThenGetReturnValue!140 lt!108686 (_1!2095 lt!108647) (_2!2095 lt!108647)))))

(declare-fun insertStrictlySorted!142 (List!3086 (_ BitVec 64) V!6891) List!3086)

(assert (=> d!57963 (= lt!108686 (insertStrictlySorted!142 (toList!1564 lt!108648) (_1!2095 lt!108647) (_2!2095 lt!108647)))))

(assert (=> d!57963 (= (+!557 lt!108648 lt!108647) lt!108685)))

(declare-fun b!211331 () Bool)

(declare-fun res!103231 () Bool)

(assert (=> b!211331 (=> (not res!103231) (not e!137572))))

(assert (=> b!211331 (= res!103231 (= (getValueByKey!251 (toList!1564 lt!108685) (_1!2095 lt!108647)) (Some!256 (_2!2095 lt!108647))))))

(declare-fun b!211332 () Bool)

(declare-fun contains!1405 (List!3086 tuple2!4170) Bool)

(assert (=> b!211332 (= e!137572 (contains!1405 (toList!1564 lt!108685) lt!108647))))

(assert (= (and d!57963 res!103230) b!211331))

(assert (= (and b!211331 res!103231) b!211332))

(declare-fun m!239105 () Bool)

(assert (=> d!57963 m!239105))

(declare-fun m!239107 () Bool)

(assert (=> d!57963 m!239107))

(declare-fun m!239109 () Bool)

(assert (=> d!57963 m!239109))

(declare-fun m!239111 () Bool)

(assert (=> d!57963 m!239111))

(declare-fun m!239113 () Bool)

(assert (=> b!211331 m!239113))

(declare-fun m!239115 () Bool)

(assert (=> b!211332 m!239115))

(assert (=> b!211271 d!57963))

(declare-fun d!57965 () Bool)

(declare-fun e!137573 () Bool)

(assert (=> d!57965 e!137573))

(declare-fun res!103232 () Bool)

(assert (=> d!57965 (=> (not res!103232) (not e!137573))))

(declare-fun lt!108689 () ListLongMap!3097)

(assert (=> d!57965 (= res!103232 (contains!1404 lt!108689 (_1!2095 lt!108647)))))

(declare-fun lt!108690 () List!3086)

(assert (=> d!57965 (= lt!108689 (ListLongMap!3098 lt!108690))))

(declare-fun lt!108692 () Unit!6413)

(declare-fun lt!108691 () Unit!6413)

(assert (=> d!57965 (= lt!108692 lt!108691)))

(assert (=> d!57965 (= (getValueByKey!251 lt!108690 (_1!2095 lt!108647)) (Some!256 (_2!2095 lt!108647)))))

(assert (=> d!57965 (= lt!108691 (lemmaContainsTupThenGetReturnValue!140 lt!108690 (_1!2095 lt!108647) (_2!2095 lt!108647)))))

(assert (=> d!57965 (= lt!108690 (insertStrictlySorted!142 (toList!1564 lt!108652) (_1!2095 lt!108647) (_2!2095 lt!108647)))))

(assert (=> d!57965 (= (+!557 lt!108652 lt!108647) lt!108689)))

(declare-fun b!211333 () Bool)

(declare-fun res!103233 () Bool)

(assert (=> b!211333 (=> (not res!103233) (not e!137573))))

(assert (=> b!211333 (= res!103233 (= (getValueByKey!251 (toList!1564 lt!108689) (_1!2095 lt!108647)) (Some!256 (_2!2095 lt!108647))))))

(declare-fun b!211334 () Bool)

(assert (=> b!211334 (= e!137573 (contains!1405 (toList!1564 lt!108689) lt!108647))))

(assert (= (and d!57965 res!103232) b!211333))

(assert (= (and b!211333 res!103233) b!211334))

(declare-fun m!239117 () Bool)

(assert (=> d!57965 m!239117))

(declare-fun m!239119 () Bool)

(assert (=> d!57965 m!239119))

(declare-fun m!239121 () Bool)

(assert (=> d!57965 m!239121))

(declare-fun m!239123 () Bool)

(assert (=> d!57965 m!239123))

(declare-fun m!239125 () Bool)

(assert (=> b!211333 m!239125))

(declare-fun m!239127 () Bool)

(assert (=> b!211334 m!239127))

(assert (=> b!211271 d!57965))

(declare-fun b!211359 () Bool)

(declare-fun e!137591 () ListLongMap!3097)

(declare-fun e!137590 () ListLongMap!3097)

(assert (=> b!211359 (= e!137591 e!137590)))

(declare-fun c!35674 () Bool)

(assert (=> b!211359 (= c!35674 (validKeyInArray!0 (select (arr!4778 _keys!825) #b00000000000000000000000000000000)))))

(declare-fun b!211360 () Bool)

(declare-fun res!103245 () Bool)

(declare-fun e!137592 () Bool)

(assert (=> b!211360 (=> (not res!103245) (not e!137592))))

(declare-fun lt!108708 () ListLongMap!3097)

(assert (=> b!211360 (= res!103245 (not (contains!1404 lt!108708 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!211361 () Bool)

(declare-fun call!20000 () ListLongMap!3097)

(assert (=> b!211361 (= e!137590 call!20000)))

(declare-fun d!57967 () Bool)

(assert (=> d!57967 e!137592))

(declare-fun res!103244 () Bool)

(assert (=> d!57967 (=> (not res!103244) (not e!137592))))

(assert (=> d!57967 (= res!103244 (not (contains!1404 lt!108708 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!57967 (= lt!108708 e!137591)))

(declare-fun c!35676 () Bool)

(assert (=> d!57967 (= c!35676 (bvsge #b00000000000000000000000000000000 (size!5103 _keys!825)))))

(assert (=> d!57967 (validMask!0 mask!1149)))

(assert (=> d!57967 (= (getCurrentListMapNoExtraKeys!492 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657) lt!108708)))

(declare-fun bm!19997 () Bool)

(assert (=> bm!19997 (= call!20000 (getCurrentListMapNoExtraKeys!492 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!657))))

(declare-fun b!211362 () Bool)

(assert (=> b!211362 (= e!137591 (ListLongMap!3098 Nil!3083))))

(declare-fun b!211363 () Bool)

(declare-fun lt!108709 () Unit!6413)

(declare-fun lt!108711 () Unit!6413)

(assert (=> b!211363 (= lt!108709 lt!108711)))

(declare-fun lt!108710 () V!6891)

(declare-fun lt!108707 () ListLongMap!3097)

(declare-fun lt!108713 () (_ BitVec 64))

(declare-fun lt!108712 () (_ BitVec 64))

(assert (=> b!211363 (not (contains!1404 (+!557 lt!108707 (tuple2!4171 lt!108713 lt!108710)) lt!108712))))

(declare-fun addStillNotContains!105 (ListLongMap!3097 (_ BitVec 64) V!6891 (_ BitVec 64)) Unit!6413)

(assert (=> b!211363 (= lt!108711 (addStillNotContains!105 lt!108707 lt!108713 lt!108710 lt!108712))))

(assert (=> b!211363 (= lt!108712 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun get!2561 (ValueCell!2373 V!6891) V!6891)

(declare-fun dynLambda!532 (Int (_ BitVec 64)) V!6891)

(assert (=> b!211363 (= lt!108710 (get!2561 (select (arr!4779 _values!649) #b00000000000000000000000000000000) (dynLambda!532 defaultEntry!657 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!211363 (= lt!108713 (select (arr!4778 _keys!825) #b00000000000000000000000000000000))))

(assert (=> b!211363 (= lt!108707 call!20000)))

(assert (=> b!211363 (= e!137590 (+!557 call!20000 (tuple2!4171 (select (arr!4778 _keys!825) #b00000000000000000000000000000000) (get!2561 (select (arr!4779 _values!649) #b00000000000000000000000000000000) (dynLambda!532 defaultEntry!657 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!211364 () Bool)

(declare-fun e!137589 () Bool)

(declare-fun e!137588 () Bool)

(assert (=> b!211364 (= e!137589 e!137588)))

(declare-fun c!35675 () Bool)

(assert (=> b!211364 (= c!35675 (bvslt #b00000000000000000000000000000000 (size!5103 _keys!825)))))

(declare-fun b!211365 () Bool)

(declare-fun e!137593 () Bool)

(assert (=> b!211365 (= e!137593 (validKeyInArray!0 (select (arr!4778 _keys!825) #b00000000000000000000000000000000)))))

(assert (=> b!211365 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!211366 () Bool)

(assert (=> b!211366 (= e!137588 (= lt!108708 (getCurrentListMapNoExtraKeys!492 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!657)))))

(declare-fun b!211367 () Bool)

(declare-fun e!137594 () Bool)

(assert (=> b!211367 (= e!137589 e!137594)))

(assert (=> b!211367 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5103 _keys!825)))))

(declare-fun res!103243 () Bool)

(assert (=> b!211367 (= res!103243 (contains!1404 lt!108708 (select (arr!4778 _keys!825) #b00000000000000000000000000000000)))))

(assert (=> b!211367 (=> (not res!103243) (not e!137594))))

(declare-fun b!211368 () Bool)

(declare-fun isEmpty!500 (ListLongMap!3097) Bool)

(assert (=> b!211368 (= e!137588 (isEmpty!500 lt!108708))))

(declare-fun b!211369 () Bool)

(assert (=> b!211369 (= e!137592 e!137589)))

(declare-fun c!35673 () Bool)

(assert (=> b!211369 (= c!35673 e!137593)))

(declare-fun res!103242 () Bool)

(assert (=> b!211369 (=> (not res!103242) (not e!137593))))

(assert (=> b!211369 (= res!103242 (bvslt #b00000000000000000000000000000000 (size!5103 _keys!825)))))

(declare-fun b!211370 () Bool)

(assert (=> b!211370 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5103 _keys!825)))))

(assert (=> b!211370 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5104 _values!649)))))

(declare-fun apply!194 (ListLongMap!3097 (_ BitVec 64)) V!6891)

(assert (=> b!211370 (= e!137594 (= (apply!194 lt!108708 (select (arr!4778 _keys!825) #b00000000000000000000000000000000)) (get!2561 (select (arr!4779 _values!649) #b00000000000000000000000000000000) (dynLambda!532 defaultEntry!657 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (= (and d!57967 c!35676) b!211362))

(assert (= (and d!57967 (not c!35676)) b!211359))

(assert (= (and b!211359 c!35674) b!211363))

(assert (= (and b!211359 (not c!35674)) b!211361))

(assert (= (or b!211363 b!211361) bm!19997))

(assert (= (and d!57967 res!103244) b!211360))

(assert (= (and b!211360 res!103245) b!211369))

(assert (= (and b!211369 res!103242) b!211365))

(assert (= (and b!211369 c!35673) b!211367))

(assert (= (and b!211369 (not c!35673)) b!211364))

(assert (= (and b!211367 res!103243) b!211370))

(assert (= (and b!211364 c!35675) b!211366))

(assert (= (and b!211364 (not c!35675)) b!211368))

(declare-fun b_lambda!7689 () Bool)

(assert (=> (not b_lambda!7689) (not b!211363)))

(declare-fun t!8039 () Bool)

(declare-fun tb!2909 () Bool)

(assert (=> (and start!21032 (= defaultEntry!657 defaultEntry!657) t!8039) tb!2909))

(declare-fun result!4999 () Bool)

(assert (=> tb!2909 (= result!4999 tp_is_empty!5433)))

(assert (=> b!211363 t!8039))

(declare-fun b_and!12399 () Bool)

(assert (= b_and!12395 (and (=> t!8039 result!4999) b_and!12399)))

(declare-fun b_lambda!7691 () Bool)

(assert (=> (not b_lambda!7691) (not b!211370)))

(assert (=> b!211370 t!8039))

(declare-fun b_and!12401 () Bool)

(assert (= b_and!12399 (and (=> t!8039 result!4999) b_and!12401)))

(declare-fun m!239129 () Bool)

(assert (=> b!211366 m!239129))

(declare-fun m!239131 () Bool)

(assert (=> b!211368 m!239131))

(declare-fun m!239133 () Bool)

(assert (=> b!211360 m!239133))

(assert (=> b!211365 m!239097))

(assert (=> b!211365 m!239097))

(assert (=> b!211365 m!239103))

(declare-fun m!239135 () Bool)

(assert (=> b!211363 m!239135))

(declare-fun m!239137 () Bool)

(assert (=> b!211363 m!239137))

(declare-fun m!239139 () Bool)

(assert (=> b!211363 m!239139))

(declare-fun m!239141 () Bool)

(assert (=> b!211363 m!239141))

(declare-fun m!239143 () Bool)

(assert (=> b!211363 m!239143))

(assert (=> b!211363 m!239139))

(declare-fun m!239145 () Bool)

(assert (=> b!211363 m!239145))

(assert (=> b!211363 m!239097))

(assert (=> b!211363 m!239137))

(assert (=> b!211363 m!239143))

(declare-fun m!239147 () Bool)

(assert (=> b!211363 m!239147))

(assert (=> b!211359 m!239097))

(assert (=> b!211359 m!239097))

(assert (=> b!211359 m!239103))

(assert (=> b!211370 m!239137))

(assert (=> b!211370 m!239097))

(declare-fun m!239149 () Bool)

(assert (=> b!211370 m!239149))

(assert (=> b!211370 m!239143))

(assert (=> b!211370 m!239097))

(assert (=> b!211370 m!239137))

(assert (=> b!211370 m!239143))

(assert (=> b!211370 m!239147))

(declare-fun m!239151 () Bool)

(assert (=> d!57967 m!239151))

(assert (=> d!57967 m!239031))

(assert (=> bm!19997 m!239129))

(assert (=> b!211367 m!239097))

(assert (=> b!211367 m!239097))

(declare-fun m!239153 () Bool)

(assert (=> b!211367 m!239153))

(assert (=> b!211278 d!57967))

(declare-fun b!211415 () Bool)

(declare-fun e!137629 () Bool)

(declare-fun lt!108773 () ListLongMap!3097)

(assert (=> b!211415 (= e!137629 (= (apply!194 lt!108773 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!615))))

(declare-fun b!211416 () Bool)

(declare-fun e!137625 () Unit!6413)

(declare-fun Unit!6417 () Unit!6413)

(assert (=> b!211416 (= e!137625 Unit!6417)))

(declare-fun b!211417 () Bool)

(declare-fun e!137628 () Bool)

(declare-fun e!137626 () Bool)

(assert (=> b!211417 (= e!137628 e!137626)))

(declare-fun res!103264 () Bool)

(assert (=> b!211417 (=> (not res!103264) (not e!137626))))

(assert (=> b!211417 (= res!103264 (contains!1404 lt!108773 (select (arr!4778 _keys!825) #b00000000000000000000000000000000)))))

(assert (=> b!211417 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5103 _keys!825)))))

(declare-fun b!211418 () Bool)

(declare-fun e!137633 () ListLongMap!3097)

(declare-fun call!20020 () ListLongMap!3097)

(assert (=> b!211418 (= e!137633 call!20020)))

(declare-fun bm!20012 () Bool)

(declare-fun call!20019 () Bool)

(assert (=> bm!20012 (= call!20019 (contains!1404 lt!108773 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!211419 () Bool)

(declare-fun e!137621 () Bool)

(assert (=> b!211419 (= e!137621 (validKeyInArray!0 (select (arr!4778 _keys!825) #b00000000000000000000000000000000)))))

(declare-fun call!20017 () ListLongMap!3097)

(declare-fun call!20016 () ListLongMap!3097)

(declare-fun bm!20013 () Bool)

(declare-fun c!35690 () Bool)

(declare-fun c!35689 () Bool)

(declare-fun call!20021 () ListLongMap!3097)

(assert (=> bm!20013 (= call!20016 (+!557 (ite c!35690 call!20017 (ite c!35689 call!20021 call!20020)) (ite (or c!35690 c!35689) (tuple2!4171 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615) (tuple2!4171 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))))

(declare-fun bm!20014 () Bool)

(assert (=> bm!20014 (= call!20017 (getCurrentListMapNoExtraKeys!492 _keys!825 lt!108651 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!211420 () Bool)

(declare-fun e!137631 () Bool)

(assert (=> b!211420 (= e!137631 (= (apply!194 lt!108773 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!615))))

(declare-fun d!57969 () Bool)

(declare-fun e!137623 () Bool)

(assert (=> d!57969 e!137623))

(declare-fun res!103271 () Bool)

(assert (=> d!57969 (=> (not res!103271) (not e!137623))))

(assert (=> d!57969 (= res!103271 (or (bvsge #b00000000000000000000000000000000 (size!5103 _keys!825)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5103 _keys!825)))))))

(declare-fun lt!108771 () ListLongMap!3097)

(assert (=> d!57969 (= lt!108773 lt!108771)))

(declare-fun lt!108776 () Unit!6413)

(assert (=> d!57969 (= lt!108776 e!137625)))

(declare-fun c!35693 () Bool)

(assert (=> d!57969 (= c!35693 e!137621)))

(declare-fun res!103266 () Bool)

(assert (=> d!57969 (=> (not res!103266) (not e!137621))))

(assert (=> d!57969 (= res!103266 (bvslt #b00000000000000000000000000000000 (size!5103 _keys!825)))))

(declare-fun e!137630 () ListLongMap!3097)

(assert (=> d!57969 (= lt!108771 e!137630)))

(assert (=> d!57969 (= c!35690 (and (not (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!57969 (validMask!0 mask!1149)))

(assert (=> d!57969 (= (getCurrentListMap!1093 _keys!825 lt!108651 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657) lt!108773)))

(declare-fun b!211421 () Bool)

(declare-fun e!137627 () Bool)

(assert (=> b!211421 (= e!137627 e!137631)))

(declare-fun res!103265 () Bool)

(assert (=> b!211421 (= res!103265 call!20019)))

(assert (=> b!211421 (=> (not res!103265) (not e!137631))))

(declare-fun b!211422 () Bool)

(declare-fun res!103269 () Bool)

(assert (=> b!211422 (=> (not res!103269) (not e!137623))))

(declare-fun e!137632 () Bool)

(assert (=> b!211422 (= res!103269 e!137632)))

(declare-fun c!35691 () Bool)

(assert (=> b!211422 (= c!35691 (not (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!20015 () Bool)

(assert (=> bm!20015 (= call!20020 call!20021)))

(declare-fun b!211423 () Bool)

(declare-fun e!137622 () ListLongMap!3097)

(declare-fun call!20015 () ListLongMap!3097)

(assert (=> b!211423 (= e!137622 call!20015)))

(declare-fun b!211424 () Bool)

(assert (=> b!211424 (= e!137633 call!20015)))

(declare-fun bm!20016 () Bool)

(declare-fun call!20018 () Bool)

(assert (=> bm!20016 (= call!20018 (contains!1404 lt!108773 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!211425 () Bool)

(declare-fun res!103272 () Bool)

(assert (=> b!211425 (=> (not res!103272) (not e!137623))))

(assert (=> b!211425 (= res!103272 e!137628)))

(declare-fun res!103268 () Bool)

(assert (=> b!211425 (=> res!103268 e!137628)))

(declare-fun e!137624 () Bool)

(assert (=> b!211425 (= res!103268 (not e!137624))))

(declare-fun res!103267 () Bool)

(assert (=> b!211425 (=> (not res!103267) (not e!137624))))

(assert (=> b!211425 (= res!103267 (bvslt #b00000000000000000000000000000000 (size!5103 _keys!825)))))

(declare-fun b!211426 () Bool)

(assert (=> b!211426 (= e!137627 (not call!20019))))

(declare-fun b!211427 () Bool)

(declare-fun c!35694 () Bool)

(assert (=> b!211427 (= c!35694 (and (not (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!211427 (= e!137622 e!137633)))

(declare-fun bm!20017 () Bool)

(assert (=> bm!20017 (= call!20015 call!20016)))

(declare-fun bm!20018 () Bool)

(assert (=> bm!20018 (= call!20021 call!20017)))

(declare-fun b!211428 () Bool)

(assert (=> b!211428 (= e!137624 (validKeyInArray!0 (select (arr!4778 _keys!825) #b00000000000000000000000000000000)))))

(declare-fun b!211429 () Bool)

(assert (=> b!211429 (= e!137630 (+!557 call!20016 (tuple2!4171 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615)))))

(declare-fun b!211430 () Bool)

(assert (=> b!211430 (= e!137630 e!137622)))

(assert (=> b!211430 (= c!35689 (and (not (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!211431 () Bool)

(assert (=> b!211431 (= e!137623 e!137627)))

(declare-fun c!35692 () Bool)

(assert (=> b!211431 (= c!35692 (not (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!211432 () Bool)

(assert (=> b!211432 (= e!137632 e!137629)))

(declare-fun res!103270 () Bool)

(assert (=> b!211432 (= res!103270 call!20018)))

(assert (=> b!211432 (=> (not res!103270) (not e!137629))))

(declare-fun b!211433 () Bool)

(declare-fun lt!108775 () Unit!6413)

(assert (=> b!211433 (= e!137625 lt!108775)))

(declare-fun lt!108778 () ListLongMap!3097)

(assert (=> b!211433 (= lt!108778 (getCurrentListMapNoExtraKeys!492 _keys!825 lt!108651 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!108759 () (_ BitVec 64))

(assert (=> b!211433 (= lt!108759 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!108767 () (_ BitVec 64))

(assert (=> b!211433 (= lt!108767 (select (arr!4778 _keys!825) #b00000000000000000000000000000000))))

(declare-fun lt!108763 () Unit!6413)

(declare-fun addStillContains!170 (ListLongMap!3097 (_ BitVec 64) V!6891 (_ BitVec 64)) Unit!6413)

(assert (=> b!211433 (= lt!108763 (addStillContains!170 lt!108778 lt!108759 zeroValue!615 lt!108767))))

(assert (=> b!211433 (contains!1404 (+!557 lt!108778 (tuple2!4171 lt!108759 zeroValue!615)) lt!108767)))

(declare-fun lt!108766 () Unit!6413)

(assert (=> b!211433 (= lt!108766 lt!108763)))

(declare-fun lt!108772 () ListLongMap!3097)

(assert (=> b!211433 (= lt!108772 (getCurrentListMapNoExtraKeys!492 _keys!825 lt!108651 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!108779 () (_ BitVec 64))

(assert (=> b!211433 (= lt!108779 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!108765 () (_ BitVec 64))

(assert (=> b!211433 (= lt!108765 (select (arr!4778 _keys!825) #b00000000000000000000000000000000))))

(declare-fun lt!108764 () Unit!6413)

(declare-fun addApplyDifferent!170 (ListLongMap!3097 (_ BitVec 64) V!6891 (_ BitVec 64)) Unit!6413)

(assert (=> b!211433 (= lt!108764 (addApplyDifferent!170 lt!108772 lt!108779 minValue!615 lt!108765))))

(assert (=> b!211433 (= (apply!194 (+!557 lt!108772 (tuple2!4171 lt!108779 minValue!615)) lt!108765) (apply!194 lt!108772 lt!108765))))

(declare-fun lt!108762 () Unit!6413)

(assert (=> b!211433 (= lt!108762 lt!108764)))

(declare-fun lt!108761 () ListLongMap!3097)

(assert (=> b!211433 (= lt!108761 (getCurrentListMapNoExtraKeys!492 _keys!825 lt!108651 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!108774 () (_ BitVec 64))

(assert (=> b!211433 (= lt!108774 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!108768 () (_ BitVec 64))

(assert (=> b!211433 (= lt!108768 (select (arr!4778 _keys!825) #b00000000000000000000000000000000))))

(declare-fun lt!108777 () Unit!6413)

(assert (=> b!211433 (= lt!108777 (addApplyDifferent!170 lt!108761 lt!108774 zeroValue!615 lt!108768))))

(assert (=> b!211433 (= (apply!194 (+!557 lt!108761 (tuple2!4171 lt!108774 zeroValue!615)) lt!108768) (apply!194 lt!108761 lt!108768))))

(declare-fun lt!108769 () Unit!6413)

(assert (=> b!211433 (= lt!108769 lt!108777)))

(declare-fun lt!108758 () ListLongMap!3097)

(assert (=> b!211433 (= lt!108758 (getCurrentListMapNoExtraKeys!492 _keys!825 lt!108651 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!108770 () (_ BitVec 64))

(assert (=> b!211433 (= lt!108770 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!108760 () (_ BitVec 64))

(assert (=> b!211433 (= lt!108760 (select (arr!4778 _keys!825) #b00000000000000000000000000000000))))

(assert (=> b!211433 (= lt!108775 (addApplyDifferent!170 lt!108758 lt!108770 minValue!615 lt!108760))))

(assert (=> b!211433 (= (apply!194 (+!557 lt!108758 (tuple2!4171 lt!108770 minValue!615)) lt!108760) (apply!194 lt!108758 lt!108760))))

(declare-fun b!211434 () Bool)

(assert (=> b!211434 (= e!137632 (not call!20018))))

(declare-fun b!211435 () Bool)

(assert (=> b!211435 (= e!137626 (= (apply!194 lt!108773 (select (arr!4778 _keys!825) #b00000000000000000000000000000000)) (get!2561 (select (arr!4779 lt!108651) #b00000000000000000000000000000000) (dynLambda!532 defaultEntry!657 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!211435 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5104 lt!108651)))))

(assert (=> b!211435 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5103 _keys!825)))))

(assert (= (and d!57969 c!35690) b!211429))

(assert (= (and d!57969 (not c!35690)) b!211430))

(assert (= (and b!211430 c!35689) b!211423))

(assert (= (and b!211430 (not c!35689)) b!211427))

(assert (= (and b!211427 c!35694) b!211424))

(assert (= (and b!211427 (not c!35694)) b!211418))

(assert (= (or b!211424 b!211418) bm!20015))

(assert (= (or b!211423 bm!20015) bm!20018))

(assert (= (or b!211423 b!211424) bm!20017))

(assert (= (or b!211429 bm!20018) bm!20014))

(assert (= (or b!211429 bm!20017) bm!20013))

(assert (= (and d!57969 res!103266) b!211419))

(assert (= (and d!57969 c!35693) b!211433))

(assert (= (and d!57969 (not c!35693)) b!211416))

(assert (= (and d!57969 res!103271) b!211425))

(assert (= (and b!211425 res!103267) b!211428))

(assert (= (and b!211425 (not res!103268)) b!211417))

(assert (= (and b!211417 res!103264) b!211435))

(assert (= (and b!211425 res!103272) b!211422))

(assert (= (and b!211422 c!35691) b!211432))

(assert (= (and b!211422 (not c!35691)) b!211434))

(assert (= (and b!211432 res!103270) b!211415))

(assert (= (or b!211432 b!211434) bm!20016))

(assert (= (and b!211422 res!103269) b!211431))

(assert (= (and b!211431 c!35692) b!211421))

(assert (= (and b!211431 (not c!35692)) b!211426))

(assert (= (and b!211421 res!103265) b!211420))

(assert (= (or b!211421 b!211426) bm!20012))

(declare-fun b_lambda!7693 () Bool)

(assert (=> (not b_lambda!7693) (not b!211435)))

(assert (=> b!211435 t!8039))

(declare-fun b_and!12403 () Bool)

(assert (= b_and!12401 (and (=> t!8039 result!4999) b_and!12403)))

(declare-fun m!239155 () Bool)

(assert (=> b!211433 m!239155))

(declare-fun m!239157 () Bool)

(assert (=> b!211433 m!239157))

(declare-fun m!239159 () Bool)

(assert (=> b!211433 m!239159))

(declare-fun m!239161 () Bool)

(assert (=> b!211433 m!239161))

(declare-fun m!239163 () Bool)

(assert (=> b!211433 m!239163))

(declare-fun m!239165 () Bool)

(assert (=> b!211433 m!239165))

(assert (=> b!211433 m!239165))

(declare-fun m!239167 () Bool)

(assert (=> b!211433 m!239167))

(declare-fun m!239169 () Bool)

(assert (=> b!211433 m!239169))

(declare-fun m!239171 () Bool)

(assert (=> b!211433 m!239171))

(declare-fun m!239173 () Bool)

(assert (=> b!211433 m!239173))

(assert (=> b!211433 m!239157))

(declare-fun m!239175 () Bool)

(assert (=> b!211433 m!239175))

(assert (=> b!211433 m!239161))

(declare-fun m!239177 () Bool)

(assert (=> b!211433 m!239177))

(assert (=> b!211433 m!239169))

(assert (=> b!211433 m!239057))

(declare-fun m!239179 () Bool)

(assert (=> b!211433 m!239179))

(declare-fun m!239181 () Bool)

(assert (=> b!211433 m!239181))

(declare-fun m!239183 () Bool)

(assert (=> b!211433 m!239183))

(assert (=> b!211433 m!239097))

(declare-fun m!239185 () Bool)

(assert (=> b!211435 m!239185))

(assert (=> b!211435 m!239143))

(declare-fun m!239187 () Bool)

(assert (=> b!211435 m!239187))

(assert (=> b!211435 m!239143))

(assert (=> b!211435 m!239097))

(assert (=> b!211435 m!239185))

(assert (=> b!211435 m!239097))

(declare-fun m!239189 () Bool)

(assert (=> b!211435 m!239189))

(declare-fun m!239191 () Bool)

(assert (=> b!211429 m!239191))

(declare-fun m!239193 () Bool)

(assert (=> b!211420 m!239193))

(assert (=> d!57969 m!239031))

(assert (=> b!211428 m!239097))

(assert (=> b!211428 m!239097))

(assert (=> b!211428 m!239103))

(assert (=> bm!20014 m!239057))

(assert (=> b!211419 m!239097))

(assert (=> b!211419 m!239097))

(assert (=> b!211419 m!239103))

(declare-fun m!239195 () Bool)

(assert (=> b!211415 m!239195))

(declare-fun m!239197 () Bool)

(assert (=> bm!20013 m!239197))

(assert (=> b!211417 m!239097))

(assert (=> b!211417 m!239097))

(declare-fun m!239199 () Bool)

(assert (=> b!211417 m!239199))

(declare-fun m!239201 () Bool)

(assert (=> bm!20016 m!239201))

(declare-fun m!239203 () Bool)

(assert (=> bm!20012 m!239203))

(assert (=> b!211278 d!57969))

(declare-fun d!57971 () Bool)

(declare-fun e!137634 () Bool)

(assert (=> d!57971 e!137634))

(declare-fun res!103273 () Bool)

(assert (=> d!57971 (=> (not res!103273) (not e!137634))))

(declare-fun lt!108780 () ListLongMap!3097)

(assert (=> d!57971 (= res!103273 (contains!1404 lt!108780 (_1!2095 (tuple2!4171 k0!843 v!520))))))

(declare-fun lt!108781 () List!3086)

(assert (=> d!57971 (= lt!108780 (ListLongMap!3098 lt!108781))))

(declare-fun lt!108783 () Unit!6413)

(declare-fun lt!108782 () Unit!6413)

(assert (=> d!57971 (= lt!108783 lt!108782)))

(assert (=> d!57971 (= (getValueByKey!251 lt!108781 (_1!2095 (tuple2!4171 k0!843 v!520))) (Some!256 (_2!2095 (tuple2!4171 k0!843 v!520))))))

(assert (=> d!57971 (= lt!108782 (lemmaContainsTupThenGetReturnValue!140 lt!108781 (_1!2095 (tuple2!4171 k0!843 v!520)) (_2!2095 (tuple2!4171 k0!843 v!520))))))

(assert (=> d!57971 (= lt!108781 (insertStrictlySorted!142 (toList!1564 lt!108648) (_1!2095 (tuple2!4171 k0!843 v!520)) (_2!2095 (tuple2!4171 k0!843 v!520))))))

(assert (=> d!57971 (= (+!557 lt!108648 (tuple2!4171 k0!843 v!520)) lt!108780)))

(declare-fun b!211436 () Bool)

(declare-fun res!103274 () Bool)

(assert (=> b!211436 (=> (not res!103274) (not e!137634))))

(assert (=> b!211436 (= res!103274 (= (getValueByKey!251 (toList!1564 lt!108780) (_1!2095 (tuple2!4171 k0!843 v!520))) (Some!256 (_2!2095 (tuple2!4171 k0!843 v!520)))))))

(declare-fun b!211437 () Bool)

(assert (=> b!211437 (= e!137634 (contains!1405 (toList!1564 lt!108780) (tuple2!4171 k0!843 v!520)))))

(assert (= (and d!57971 res!103273) b!211436))

(assert (= (and b!211436 res!103274) b!211437))

(declare-fun m!239205 () Bool)

(assert (=> d!57971 m!239205))

(declare-fun m!239207 () Bool)

(assert (=> d!57971 m!239207))

(declare-fun m!239209 () Bool)

(assert (=> d!57971 m!239209))

(declare-fun m!239211 () Bool)

(assert (=> d!57971 m!239211))

(declare-fun m!239213 () Bool)

(assert (=> b!211436 m!239213))

(declare-fun m!239215 () Bool)

(assert (=> b!211437 m!239215))

(assert (=> b!211278 d!57971))

(declare-fun d!57973 () Bool)

(declare-fun e!137640 () Bool)

(assert (=> d!57973 e!137640))

(declare-fun res!103277 () Bool)

(assert (=> d!57973 (=> (not res!103277) (not e!137640))))

(assert (=> d!57973 (= res!103277 (and (or (not (bvsle #b00000000000000000000000000000000 i!601)) (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!5104 _values!649)))) (or (bvsle #b00000000000000000000000000000000 i!601) (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!5104 _values!649))))))))

(declare-fun lt!108786 () Unit!6413)

(declare-fun choose!1086 (array!10066 array!10068 (_ BitVec 32) (_ BitVec 32) V!6891 V!6891 (_ BitVec 32) (_ BitVec 64) V!6891 (_ BitVec 32) Int) Unit!6413)

(assert (=> d!57973 (= lt!108786 (choose!1086 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k0!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> d!57973 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle #b00000000000000000000000000000000 (size!5103 _keys!825)))))

(assert (=> d!57973 (= (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!210 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k0!843 v!520 #b00000000000000000000000000000000 defaultEntry!657) lt!108786)))

(declare-fun call!20027 () ListLongMap!3097)

(declare-fun b!211444 () Bool)

(declare-fun e!137639 () Bool)

(declare-fun call!20026 () ListLongMap!3097)

(assert (=> b!211444 (= e!137639 (= call!20027 (+!557 call!20026 (tuple2!4171 k0!843 v!520))))))

(declare-fun bm!20023 () Bool)

(assert (=> bm!20023 (= call!20027 (getCurrentListMapNoExtraKeys!492 _keys!825 (array!10069 (store (arr!4779 _values!649) i!601 (ValueCellFull!2373 v!520)) (size!5104 _values!649)) mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun bm!20024 () Bool)

(assert (=> bm!20024 (= call!20026 (getCurrentListMapNoExtraKeys!492 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!211445 () Bool)

(assert (=> b!211445 (= e!137639 (= call!20027 call!20026))))

(declare-fun b!211446 () Bool)

(assert (=> b!211446 (= e!137640 e!137639)))

(declare-fun c!35697 () Bool)

(assert (=> b!211446 (= c!35697 (bvsle #b00000000000000000000000000000000 i!601))))

(assert (= (and d!57973 res!103277) b!211446))

(assert (= (and b!211446 c!35697) b!211444))

(assert (= (and b!211446 (not c!35697)) b!211445))

(assert (= (or b!211444 b!211445) bm!20023))

(assert (= (or b!211444 b!211445) bm!20024))

(declare-fun m!239217 () Bool)

(assert (=> d!57973 m!239217))

(declare-fun m!239219 () Bool)

(assert (=> b!211444 m!239219))

(assert (=> bm!20023 m!239051))

(declare-fun m!239221 () Bool)

(assert (=> bm!20023 m!239221))

(assert (=> bm!20024 m!239055))

(assert (=> b!211278 d!57973))

(declare-fun b!211447 () Bool)

(declare-fun e!137649 () Bool)

(declare-fun lt!108802 () ListLongMap!3097)

(assert (=> b!211447 (= e!137649 (= (apply!194 lt!108802 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!615))))

(declare-fun b!211448 () Bool)

(declare-fun e!137645 () Unit!6413)

(declare-fun Unit!6418 () Unit!6413)

(assert (=> b!211448 (= e!137645 Unit!6418)))

(declare-fun b!211449 () Bool)

(declare-fun e!137648 () Bool)

(declare-fun e!137646 () Bool)

(assert (=> b!211449 (= e!137648 e!137646)))

(declare-fun res!103278 () Bool)

(assert (=> b!211449 (=> (not res!103278) (not e!137646))))

(assert (=> b!211449 (= res!103278 (contains!1404 lt!108802 (select (arr!4778 _keys!825) #b00000000000000000000000000000000)))))

(assert (=> b!211449 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5103 _keys!825)))))

(declare-fun b!211450 () Bool)

(declare-fun e!137653 () ListLongMap!3097)

(declare-fun call!20033 () ListLongMap!3097)

(assert (=> b!211450 (= e!137653 call!20033)))

(declare-fun bm!20025 () Bool)

(declare-fun call!20032 () Bool)

(assert (=> bm!20025 (= call!20032 (contains!1404 lt!108802 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!211451 () Bool)

(declare-fun e!137641 () Bool)

(assert (=> b!211451 (= e!137641 (validKeyInArray!0 (select (arr!4778 _keys!825) #b00000000000000000000000000000000)))))

(declare-fun call!20030 () ListLongMap!3097)

(declare-fun call!20029 () ListLongMap!3097)

(declare-fun call!20034 () ListLongMap!3097)

(declare-fun bm!20026 () Bool)

(declare-fun c!35698 () Bool)

(declare-fun c!35699 () Bool)

(assert (=> bm!20026 (= call!20029 (+!557 (ite c!35699 call!20030 (ite c!35698 call!20034 call!20033)) (ite (or c!35699 c!35698) (tuple2!4171 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615) (tuple2!4171 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))))

(declare-fun bm!20027 () Bool)

(assert (=> bm!20027 (= call!20030 (getCurrentListMapNoExtraKeys!492 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!211452 () Bool)

(declare-fun e!137651 () Bool)

(assert (=> b!211452 (= e!137651 (= (apply!194 lt!108802 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!615))))

(declare-fun d!57975 () Bool)

(declare-fun e!137643 () Bool)

(assert (=> d!57975 e!137643))

(declare-fun res!103285 () Bool)

(assert (=> d!57975 (=> (not res!103285) (not e!137643))))

(assert (=> d!57975 (= res!103285 (or (bvsge #b00000000000000000000000000000000 (size!5103 _keys!825)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5103 _keys!825)))))))

(declare-fun lt!108800 () ListLongMap!3097)

(assert (=> d!57975 (= lt!108802 lt!108800)))

(declare-fun lt!108805 () Unit!6413)

(assert (=> d!57975 (= lt!108805 e!137645)))

(declare-fun c!35702 () Bool)

(assert (=> d!57975 (= c!35702 e!137641)))

(declare-fun res!103280 () Bool)

(assert (=> d!57975 (=> (not res!103280) (not e!137641))))

(assert (=> d!57975 (= res!103280 (bvslt #b00000000000000000000000000000000 (size!5103 _keys!825)))))

(declare-fun e!137650 () ListLongMap!3097)

(assert (=> d!57975 (= lt!108800 e!137650)))

(assert (=> d!57975 (= c!35699 (and (not (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!57975 (validMask!0 mask!1149)))

(assert (=> d!57975 (= (getCurrentListMap!1093 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657) lt!108802)))

(declare-fun b!211453 () Bool)

(declare-fun e!137647 () Bool)

(assert (=> b!211453 (= e!137647 e!137651)))

(declare-fun res!103279 () Bool)

(assert (=> b!211453 (= res!103279 call!20032)))

(assert (=> b!211453 (=> (not res!103279) (not e!137651))))

(declare-fun b!211454 () Bool)

(declare-fun res!103283 () Bool)

(assert (=> b!211454 (=> (not res!103283) (not e!137643))))

(declare-fun e!137652 () Bool)

(assert (=> b!211454 (= res!103283 e!137652)))

(declare-fun c!35700 () Bool)

(assert (=> b!211454 (= c!35700 (not (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!20028 () Bool)

(assert (=> bm!20028 (= call!20033 call!20034)))

(declare-fun b!211455 () Bool)

(declare-fun e!137642 () ListLongMap!3097)

(declare-fun call!20028 () ListLongMap!3097)

(assert (=> b!211455 (= e!137642 call!20028)))

(declare-fun b!211456 () Bool)

(assert (=> b!211456 (= e!137653 call!20028)))

(declare-fun bm!20029 () Bool)

(declare-fun call!20031 () Bool)

(assert (=> bm!20029 (= call!20031 (contains!1404 lt!108802 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!211457 () Bool)

(declare-fun res!103286 () Bool)

(assert (=> b!211457 (=> (not res!103286) (not e!137643))))

(assert (=> b!211457 (= res!103286 e!137648)))

(declare-fun res!103282 () Bool)

(assert (=> b!211457 (=> res!103282 e!137648)))

(declare-fun e!137644 () Bool)

(assert (=> b!211457 (= res!103282 (not e!137644))))

(declare-fun res!103281 () Bool)

(assert (=> b!211457 (=> (not res!103281) (not e!137644))))

(assert (=> b!211457 (= res!103281 (bvslt #b00000000000000000000000000000000 (size!5103 _keys!825)))))

(declare-fun b!211458 () Bool)

(assert (=> b!211458 (= e!137647 (not call!20032))))

(declare-fun b!211459 () Bool)

(declare-fun c!35703 () Bool)

(assert (=> b!211459 (= c!35703 (and (not (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!211459 (= e!137642 e!137653)))

(declare-fun bm!20030 () Bool)

(assert (=> bm!20030 (= call!20028 call!20029)))

(declare-fun bm!20031 () Bool)

(assert (=> bm!20031 (= call!20034 call!20030)))

(declare-fun b!211460 () Bool)

(assert (=> b!211460 (= e!137644 (validKeyInArray!0 (select (arr!4778 _keys!825) #b00000000000000000000000000000000)))))

(declare-fun b!211461 () Bool)

(assert (=> b!211461 (= e!137650 (+!557 call!20029 (tuple2!4171 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615)))))

(declare-fun b!211462 () Bool)

(assert (=> b!211462 (= e!137650 e!137642)))

(assert (=> b!211462 (= c!35698 (and (not (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!211463 () Bool)

(assert (=> b!211463 (= e!137643 e!137647)))

(declare-fun c!35701 () Bool)

(assert (=> b!211463 (= c!35701 (not (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!211464 () Bool)

(assert (=> b!211464 (= e!137652 e!137649)))

(declare-fun res!103284 () Bool)

(assert (=> b!211464 (= res!103284 call!20031)))

(assert (=> b!211464 (=> (not res!103284) (not e!137649))))

(declare-fun b!211465 () Bool)

(declare-fun lt!108804 () Unit!6413)

(assert (=> b!211465 (= e!137645 lt!108804)))

(declare-fun lt!108807 () ListLongMap!3097)

(assert (=> b!211465 (= lt!108807 (getCurrentListMapNoExtraKeys!492 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!108788 () (_ BitVec 64))

(assert (=> b!211465 (= lt!108788 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!108796 () (_ BitVec 64))

(assert (=> b!211465 (= lt!108796 (select (arr!4778 _keys!825) #b00000000000000000000000000000000))))

(declare-fun lt!108792 () Unit!6413)

(assert (=> b!211465 (= lt!108792 (addStillContains!170 lt!108807 lt!108788 zeroValue!615 lt!108796))))

(assert (=> b!211465 (contains!1404 (+!557 lt!108807 (tuple2!4171 lt!108788 zeroValue!615)) lt!108796)))

(declare-fun lt!108795 () Unit!6413)

(assert (=> b!211465 (= lt!108795 lt!108792)))

(declare-fun lt!108801 () ListLongMap!3097)

(assert (=> b!211465 (= lt!108801 (getCurrentListMapNoExtraKeys!492 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!108808 () (_ BitVec 64))

(assert (=> b!211465 (= lt!108808 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!108794 () (_ BitVec 64))

(assert (=> b!211465 (= lt!108794 (select (arr!4778 _keys!825) #b00000000000000000000000000000000))))

(declare-fun lt!108793 () Unit!6413)

(assert (=> b!211465 (= lt!108793 (addApplyDifferent!170 lt!108801 lt!108808 minValue!615 lt!108794))))

(assert (=> b!211465 (= (apply!194 (+!557 lt!108801 (tuple2!4171 lt!108808 minValue!615)) lt!108794) (apply!194 lt!108801 lt!108794))))

(declare-fun lt!108791 () Unit!6413)

(assert (=> b!211465 (= lt!108791 lt!108793)))

(declare-fun lt!108790 () ListLongMap!3097)

(assert (=> b!211465 (= lt!108790 (getCurrentListMapNoExtraKeys!492 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!108803 () (_ BitVec 64))

(assert (=> b!211465 (= lt!108803 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!108797 () (_ BitVec 64))

(assert (=> b!211465 (= lt!108797 (select (arr!4778 _keys!825) #b00000000000000000000000000000000))))

(declare-fun lt!108806 () Unit!6413)

(assert (=> b!211465 (= lt!108806 (addApplyDifferent!170 lt!108790 lt!108803 zeroValue!615 lt!108797))))

(assert (=> b!211465 (= (apply!194 (+!557 lt!108790 (tuple2!4171 lt!108803 zeroValue!615)) lt!108797) (apply!194 lt!108790 lt!108797))))

(declare-fun lt!108798 () Unit!6413)

(assert (=> b!211465 (= lt!108798 lt!108806)))

(declare-fun lt!108787 () ListLongMap!3097)

(assert (=> b!211465 (= lt!108787 (getCurrentListMapNoExtraKeys!492 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!108799 () (_ BitVec 64))

(assert (=> b!211465 (= lt!108799 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!108789 () (_ BitVec 64))

(assert (=> b!211465 (= lt!108789 (select (arr!4778 _keys!825) #b00000000000000000000000000000000))))

(assert (=> b!211465 (= lt!108804 (addApplyDifferent!170 lt!108787 lt!108799 minValue!615 lt!108789))))

(assert (=> b!211465 (= (apply!194 (+!557 lt!108787 (tuple2!4171 lt!108799 minValue!615)) lt!108789) (apply!194 lt!108787 lt!108789))))

(declare-fun b!211466 () Bool)

(assert (=> b!211466 (= e!137652 (not call!20031))))

(declare-fun b!211467 () Bool)

(assert (=> b!211467 (= e!137646 (= (apply!194 lt!108802 (select (arr!4778 _keys!825) #b00000000000000000000000000000000)) (get!2561 (select (arr!4779 _values!649) #b00000000000000000000000000000000) (dynLambda!532 defaultEntry!657 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!211467 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5104 _values!649)))))

(assert (=> b!211467 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5103 _keys!825)))))

(assert (= (and d!57975 c!35699) b!211461))

(assert (= (and d!57975 (not c!35699)) b!211462))

(assert (= (and b!211462 c!35698) b!211455))

(assert (= (and b!211462 (not c!35698)) b!211459))

(assert (= (and b!211459 c!35703) b!211456))

(assert (= (and b!211459 (not c!35703)) b!211450))

(assert (= (or b!211456 b!211450) bm!20028))

(assert (= (or b!211455 bm!20028) bm!20031))

(assert (= (or b!211455 b!211456) bm!20030))

(assert (= (or b!211461 bm!20031) bm!20027))

(assert (= (or b!211461 bm!20030) bm!20026))

(assert (= (and d!57975 res!103280) b!211451))

(assert (= (and d!57975 c!35702) b!211465))

(assert (= (and d!57975 (not c!35702)) b!211448))

(assert (= (and d!57975 res!103285) b!211457))

(assert (= (and b!211457 res!103281) b!211460))

(assert (= (and b!211457 (not res!103282)) b!211449))

(assert (= (and b!211449 res!103278) b!211467))

(assert (= (and b!211457 res!103286) b!211454))

(assert (= (and b!211454 c!35700) b!211464))

(assert (= (and b!211454 (not c!35700)) b!211466))

(assert (= (and b!211464 res!103284) b!211447))

(assert (= (or b!211464 b!211466) bm!20029))

(assert (= (and b!211454 res!103283) b!211463))

(assert (= (and b!211463 c!35701) b!211453))

(assert (= (and b!211463 (not c!35701)) b!211458))

(assert (= (and b!211453 res!103279) b!211452))

(assert (= (or b!211453 b!211458) bm!20025))

(declare-fun b_lambda!7695 () Bool)

(assert (=> (not b_lambda!7695) (not b!211467)))

(assert (=> b!211467 t!8039))

(declare-fun b_and!12405 () Bool)

(assert (= b_and!12403 (and (=> t!8039 result!4999) b_and!12405)))

(declare-fun m!239223 () Bool)

(assert (=> b!211465 m!239223))

(declare-fun m!239225 () Bool)

(assert (=> b!211465 m!239225))

(declare-fun m!239227 () Bool)

(assert (=> b!211465 m!239227))

(declare-fun m!239229 () Bool)

(assert (=> b!211465 m!239229))

(declare-fun m!239231 () Bool)

(assert (=> b!211465 m!239231))

(declare-fun m!239233 () Bool)

(assert (=> b!211465 m!239233))

(assert (=> b!211465 m!239233))

(declare-fun m!239235 () Bool)

(assert (=> b!211465 m!239235))

(declare-fun m!239237 () Bool)

(assert (=> b!211465 m!239237))

(declare-fun m!239239 () Bool)

(assert (=> b!211465 m!239239))

(declare-fun m!239241 () Bool)

(assert (=> b!211465 m!239241))

(assert (=> b!211465 m!239225))

(declare-fun m!239243 () Bool)

(assert (=> b!211465 m!239243))

(assert (=> b!211465 m!239229))

(declare-fun m!239245 () Bool)

(assert (=> b!211465 m!239245))

(assert (=> b!211465 m!239237))

(assert (=> b!211465 m!239055))

(declare-fun m!239247 () Bool)

(assert (=> b!211465 m!239247))

(declare-fun m!239249 () Bool)

(assert (=> b!211465 m!239249))

(declare-fun m!239251 () Bool)

(assert (=> b!211465 m!239251))

(assert (=> b!211465 m!239097))

(assert (=> b!211467 m!239137))

(assert (=> b!211467 m!239143))

(assert (=> b!211467 m!239147))

(assert (=> b!211467 m!239143))

(assert (=> b!211467 m!239097))

(assert (=> b!211467 m!239137))

(assert (=> b!211467 m!239097))

(declare-fun m!239253 () Bool)

(assert (=> b!211467 m!239253))

(declare-fun m!239255 () Bool)

(assert (=> b!211461 m!239255))

(declare-fun m!239257 () Bool)

(assert (=> b!211452 m!239257))

(assert (=> d!57975 m!239031))

(assert (=> b!211460 m!239097))

(assert (=> b!211460 m!239097))

(assert (=> b!211460 m!239103))

(assert (=> bm!20027 m!239055))

(assert (=> b!211451 m!239097))

(assert (=> b!211451 m!239097))

(assert (=> b!211451 m!239103))

(declare-fun m!239259 () Bool)

(assert (=> b!211447 m!239259))

(declare-fun m!239261 () Bool)

(assert (=> bm!20026 m!239261))

(assert (=> b!211449 m!239097))

(assert (=> b!211449 m!239097))

(declare-fun m!239263 () Bool)

(assert (=> b!211449 m!239263))

(declare-fun m!239265 () Bool)

(assert (=> bm!20029 m!239265))

(declare-fun m!239267 () Bool)

(assert (=> bm!20025 m!239267))

(assert (=> b!211278 d!57975))

(declare-fun b!211468 () Bool)

(declare-fun e!137657 () ListLongMap!3097)

(declare-fun e!137656 () ListLongMap!3097)

(assert (=> b!211468 (= e!137657 e!137656)))

(declare-fun c!35705 () Bool)

(assert (=> b!211468 (= c!35705 (validKeyInArray!0 (select (arr!4778 _keys!825) #b00000000000000000000000000000000)))))

(declare-fun b!211469 () Bool)

(declare-fun res!103290 () Bool)

(declare-fun e!137658 () Bool)

(assert (=> b!211469 (=> (not res!103290) (not e!137658))))

(declare-fun lt!108810 () ListLongMap!3097)

(assert (=> b!211469 (= res!103290 (not (contains!1404 lt!108810 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!211470 () Bool)

(declare-fun call!20035 () ListLongMap!3097)

(assert (=> b!211470 (= e!137656 call!20035)))

(declare-fun d!57977 () Bool)

(assert (=> d!57977 e!137658))

(declare-fun res!103289 () Bool)

(assert (=> d!57977 (=> (not res!103289) (not e!137658))))

(assert (=> d!57977 (= res!103289 (not (contains!1404 lt!108810 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!57977 (= lt!108810 e!137657)))

(declare-fun c!35707 () Bool)

(assert (=> d!57977 (= c!35707 (bvsge #b00000000000000000000000000000000 (size!5103 _keys!825)))))

(assert (=> d!57977 (validMask!0 mask!1149)))

(assert (=> d!57977 (= (getCurrentListMapNoExtraKeys!492 _keys!825 lt!108651 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657) lt!108810)))

(declare-fun bm!20032 () Bool)

(assert (=> bm!20032 (= call!20035 (getCurrentListMapNoExtraKeys!492 _keys!825 lt!108651 mask!1149 extraKeys!596 zeroValue!615 minValue!615 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!657))))

(declare-fun b!211471 () Bool)

(assert (=> b!211471 (= e!137657 (ListLongMap!3098 Nil!3083))))

(declare-fun b!211472 () Bool)

(declare-fun lt!108811 () Unit!6413)

(declare-fun lt!108813 () Unit!6413)

(assert (=> b!211472 (= lt!108811 lt!108813)))

(declare-fun lt!108809 () ListLongMap!3097)

(declare-fun lt!108814 () (_ BitVec 64))

(declare-fun lt!108812 () V!6891)

(declare-fun lt!108815 () (_ BitVec 64))

(assert (=> b!211472 (not (contains!1404 (+!557 lt!108809 (tuple2!4171 lt!108815 lt!108812)) lt!108814))))

(assert (=> b!211472 (= lt!108813 (addStillNotContains!105 lt!108809 lt!108815 lt!108812 lt!108814))))

(assert (=> b!211472 (= lt!108814 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!211472 (= lt!108812 (get!2561 (select (arr!4779 lt!108651) #b00000000000000000000000000000000) (dynLambda!532 defaultEntry!657 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!211472 (= lt!108815 (select (arr!4778 _keys!825) #b00000000000000000000000000000000))))

(assert (=> b!211472 (= lt!108809 call!20035)))

(assert (=> b!211472 (= e!137656 (+!557 call!20035 (tuple2!4171 (select (arr!4778 _keys!825) #b00000000000000000000000000000000) (get!2561 (select (arr!4779 lt!108651) #b00000000000000000000000000000000) (dynLambda!532 defaultEntry!657 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!211473 () Bool)

(declare-fun e!137655 () Bool)

(declare-fun e!137654 () Bool)

(assert (=> b!211473 (= e!137655 e!137654)))

(declare-fun c!35706 () Bool)

(assert (=> b!211473 (= c!35706 (bvslt #b00000000000000000000000000000000 (size!5103 _keys!825)))))

(declare-fun b!211474 () Bool)

(declare-fun e!137659 () Bool)

(assert (=> b!211474 (= e!137659 (validKeyInArray!0 (select (arr!4778 _keys!825) #b00000000000000000000000000000000)))))

(assert (=> b!211474 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!211475 () Bool)

(assert (=> b!211475 (= e!137654 (= lt!108810 (getCurrentListMapNoExtraKeys!492 _keys!825 lt!108651 mask!1149 extraKeys!596 zeroValue!615 minValue!615 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!657)))))

(declare-fun b!211476 () Bool)

(declare-fun e!137660 () Bool)

(assert (=> b!211476 (= e!137655 e!137660)))

(assert (=> b!211476 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5103 _keys!825)))))

(declare-fun res!103288 () Bool)

(assert (=> b!211476 (= res!103288 (contains!1404 lt!108810 (select (arr!4778 _keys!825) #b00000000000000000000000000000000)))))

(assert (=> b!211476 (=> (not res!103288) (not e!137660))))

(declare-fun b!211477 () Bool)

(assert (=> b!211477 (= e!137654 (isEmpty!500 lt!108810))))

(declare-fun b!211478 () Bool)

(assert (=> b!211478 (= e!137658 e!137655)))

(declare-fun c!35704 () Bool)

(assert (=> b!211478 (= c!35704 e!137659)))

(declare-fun res!103287 () Bool)

(assert (=> b!211478 (=> (not res!103287) (not e!137659))))

(assert (=> b!211478 (= res!103287 (bvslt #b00000000000000000000000000000000 (size!5103 _keys!825)))))

(declare-fun b!211479 () Bool)

(assert (=> b!211479 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5103 _keys!825)))))

(assert (=> b!211479 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5104 lt!108651)))))

(assert (=> b!211479 (= e!137660 (= (apply!194 lt!108810 (select (arr!4778 _keys!825) #b00000000000000000000000000000000)) (get!2561 (select (arr!4779 lt!108651) #b00000000000000000000000000000000) (dynLambda!532 defaultEntry!657 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (= (and d!57977 c!35707) b!211471))

(assert (= (and d!57977 (not c!35707)) b!211468))

(assert (= (and b!211468 c!35705) b!211472))

(assert (= (and b!211468 (not c!35705)) b!211470))

(assert (= (or b!211472 b!211470) bm!20032))

(assert (= (and d!57977 res!103289) b!211469))

(assert (= (and b!211469 res!103290) b!211478))

(assert (= (and b!211478 res!103287) b!211474))

(assert (= (and b!211478 c!35704) b!211476))

(assert (= (and b!211478 (not c!35704)) b!211473))

(assert (= (and b!211476 res!103288) b!211479))

(assert (= (and b!211473 c!35706) b!211475))

(assert (= (and b!211473 (not c!35706)) b!211477))

(declare-fun b_lambda!7697 () Bool)

(assert (=> (not b_lambda!7697) (not b!211472)))

(assert (=> b!211472 t!8039))

(declare-fun b_and!12407 () Bool)

(assert (= b_and!12405 (and (=> t!8039 result!4999) b_and!12407)))

(declare-fun b_lambda!7699 () Bool)

(assert (=> (not b_lambda!7699) (not b!211479)))

(assert (=> b!211479 t!8039))

(declare-fun b_and!12409 () Bool)

(assert (= b_and!12407 (and (=> t!8039 result!4999) b_and!12409)))

(declare-fun m!239269 () Bool)

(assert (=> b!211475 m!239269))

(declare-fun m!239271 () Bool)

(assert (=> b!211477 m!239271))

(declare-fun m!239273 () Bool)

(assert (=> b!211469 m!239273))

(assert (=> b!211474 m!239097))

(assert (=> b!211474 m!239097))

(assert (=> b!211474 m!239103))

(declare-fun m!239275 () Bool)

(assert (=> b!211472 m!239275))

(assert (=> b!211472 m!239185))

(declare-fun m!239277 () Bool)

(assert (=> b!211472 m!239277))

(declare-fun m!239279 () Bool)

(assert (=> b!211472 m!239279))

(assert (=> b!211472 m!239143))

(assert (=> b!211472 m!239277))

(declare-fun m!239281 () Bool)

(assert (=> b!211472 m!239281))

(assert (=> b!211472 m!239097))

(assert (=> b!211472 m!239185))

(assert (=> b!211472 m!239143))

(assert (=> b!211472 m!239187))

(assert (=> b!211468 m!239097))

(assert (=> b!211468 m!239097))

(assert (=> b!211468 m!239103))

(assert (=> b!211479 m!239185))

(assert (=> b!211479 m!239097))

(declare-fun m!239283 () Bool)

(assert (=> b!211479 m!239283))

(assert (=> b!211479 m!239143))

(assert (=> b!211479 m!239097))

(assert (=> b!211479 m!239185))

(assert (=> b!211479 m!239143))

(assert (=> b!211479 m!239187))

(declare-fun m!239285 () Bool)

(assert (=> d!57977 m!239285))

(assert (=> d!57977 m!239031))

(assert (=> bm!20032 m!239269))

(assert (=> b!211476 m!239097))

(assert (=> b!211476 m!239097))

(declare-fun m!239287 () Bool)

(assert (=> b!211476 m!239287))

(assert (=> b!211278 d!57977))

(declare-fun d!57979 () Bool)

(assert (=> d!57979 (= (validKeyInArray!0 k0!843) (and (not (= k0!843 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!843 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!211272 d!57979))

(declare-fun b!211488 () Bool)

(declare-fun e!137667 () Bool)

(declare-fun call!20038 () Bool)

(assert (=> b!211488 (= e!137667 call!20038)))

(declare-fun b!211489 () Bool)

(declare-fun e!137669 () Bool)

(assert (=> b!211489 (= e!137669 call!20038)))

(declare-fun bm!20035 () Bool)

(assert (=> bm!20035 (= call!20038 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!825 mask!1149))))

(declare-fun b!211491 () Bool)

(declare-fun e!137668 () Bool)

(assert (=> b!211491 (= e!137668 e!137669)))

(declare-fun c!35710 () Bool)

(assert (=> b!211491 (= c!35710 (validKeyInArray!0 (select (arr!4778 _keys!825) #b00000000000000000000000000000000)))))

(declare-fun b!211490 () Bool)

(assert (=> b!211490 (= e!137669 e!137667)))

(declare-fun lt!108822 () (_ BitVec 64))

(assert (=> b!211490 (= lt!108822 (select (arr!4778 _keys!825) #b00000000000000000000000000000000))))

(declare-fun lt!108823 () Unit!6413)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!10066 (_ BitVec 64) (_ BitVec 32)) Unit!6413)

(assert (=> b!211490 (= lt!108823 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!825 lt!108822 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!10066 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!211490 (arrayContainsKey!0 _keys!825 lt!108822 #b00000000000000000000000000000000)))

(declare-fun lt!108824 () Unit!6413)

(assert (=> b!211490 (= lt!108824 lt!108823)))

(declare-fun res!103295 () Bool)

(declare-datatypes ((SeekEntryResult!719 0))(
  ( (MissingZero!719 (index!5046 (_ BitVec 32))) (Found!719 (index!5047 (_ BitVec 32))) (Intermediate!719 (undefined!1531 Bool) (index!5048 (_ BitVec 32)) (x!22108 (_ BitVec 32))) (Undefined!719) (MissingVacant!719 (index!5049 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!10066 (_ BitVec 32)) SeekEntryResult!719)

(assert (=> b!211490 (= res!103295 (= (seekEntryOrOpen!0 (select (arr!4778 _keys!825) #b00000000000000000000000000000000) _keys!825 mask!1149) (Found!719 #b00000000000000000000000000000000)))))

(assert (=> b!211490 (=> (not res!103295) (not e!137667))))

(declare-fun d!57981 () Bool)

(declare-fun res!103296 () Bool)

(assert (=> d!57981 (=> res!103296 e!137668)))

(assert (=> d!57981 (= res!103296 (bvsge #b00000000000000000000000000000000 (size!5103 _keys!825)))))

(assert (=> d!57981 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149) e!137668)))

(assert (= (and d!57981 (not res!103296)) b!211491))

(assert (= (and b!211491 c!35710) b!211490))

(assert (= (and b!211491 (not c!35710)) b!211489))

(assert (= (and b!211490 res!103295) b!211488))

(assert (= (or b!211488 b!211489) bm!20035))

(declare-fun m!239289 () Bool)

(assert (=> bm!20035 m!239289))

(assert (=> b!211491 m!239097))

(assert (=> b!211491 m!239097))

(assert (=> b!211491 m!239103))

(assert (=> b!211490 m!239097))

(declare-fun m!239291 () Bool)

(assert (=> b!211490 m!239291))

(declare-fun m!239293 () Bool)

(assert (=> b!211490 m!239293))

(assert (=> b!211490 m!239097))

(declare-fun m!239295 () Bool)

(assert (=> b!211490 m!239295))

(assert (=> b!211274 d!57981))

(declare-fun b!211498 () Bool)

(declare-fun e!137674 () Bool)

(assert (=> b!211498 (= e!137674 tp_is_empty!5433)))

(declare-fun b!211499 () Bool)

(declare-fun e!137675 () Bool)

(assert (=> b!211499 (= e!137675 tp_is_empty!5433)))

(declare-fun mapIsEmpty!9239 () Bool)

(declare-fun mapRes!9239 () Bool)

(assert (=> mapIsEmpty!9239 mapRes!9239))

(declare-fun condMapEmpty!9239 () Bool)

(declare-fun mapDefault!9239 () ValueCell!2373)

(assert (=> mapNonEmpty!9233 (= condMapEmpty!9239 (= mapRest!9233 ((as const (Array (_ BitVec 32) ValueCell!2373)) mapDefault!9239)))))

(assert (=> mapNonEmpty!9233 (= tp!19769 (and e!137675 mapRes!9239))))

(declare-fun mapNonEmpty!9239 () Bool)

(declare-fun tp!19778 () Bool)

(assert (=> mapNonEmpty!9239 (= mapRes!9239 (and tp!19778 e!137674))))

(declare-fun mapRest!9239 () (Array (_ BitVec 32) ValueCell!2373))

(declare-fun mapValue!9239 () ValueCell!2373)

(declare-fun mapKey!9239 () (_ BitVec 32))

(assert (=> mapNonEmpty!9239 (= mapRest!9233 (store mapRest!9239 mapKey!9239 mapValue!9239))))

(assert (= (and mapNonEmpty!9233 condMapEmpty!9239) mapIsEmpty!9239))

(assert (= (and mapNonEmpty!9233 (not condMapEmpty!9239)) mapNonEmpty!9239))

(assert (= (and mapNonEmpty!9239 ((_ is ValueCellFull!2373) mapValue!9239)) b!211498))

(assert (= (and mapNonEmpty!9233 ((_ is ValueCellFull!2373) mapDefault!9239)) b!211499))

(declare-fun m!239297 () Bool)

(assert (=> mapNonEmpty!9239 m!239297))

(declare-fun b_lambda!7701 () Bool)

(assert (= b_lambda!7699 (or (and start!21032 b_free!5571) b_lambda!7701)))

(declare-fun b_lambda!7703 () Bool)

(assert (= b_lambda!7689 (or (and start!21032 b_free!5571) b_lambda!7703)))

(declare-fun b_lambda!7705 () Bool)

(assert (= b_lambda!7691 (or (and start!21032 b_free!5571) b_lambda!7705)))

(declare-fun b_lambda!7707 () Bool)

(assert (= b_lambda!7697 (or (and start!21032 b_free!5571) b_lambda!7707)))

(declare-fun b_lambda!7709 () Bool)

(assert (= b_lambda!7693 (or (and start!21032 b_free!5571) b_lambda!7709)))

(declare-fun b_lambda!7711 () Bool)

(assert (= b_lambda!7695 (or (and start!21032 b_free!5571) b_lambda!7711)))

(check-sat (not b!211415) (not b!211370) (not d!57975) (not d!57973) (not bm!20035) (not d!57969) (not b!211324) (not b!211331) (not b!211417) (not b!211325) (not bm!20012) (not b_next!5571) (not b!211490) (not bm!20024) (not b!211437) (not bm!19994) (not b!211468) (not bm!20023) (not b!211366) (not bm!20016) (not d!57967) (not b!211472) (not b_lambda!7707) (not b!211429) tp_is_empty!5433 (not b!211433) (not bm!20029) (not d!57965) (not bm!20014) (not b_lambda!7701) (not b!211368) (not b!211334) (not b!211444) (not b!211467) (not b!211365) (not b!211447) (not b_lambda!7705) (not b!211332) (not b!211474) (not b!211360) (not b!211436) (not b!211359) (not b_lambda!7711) (not b!211475) (not mapNonEmpty!9239) (not b!211449) (not b!211435) (not d!57971) (not bm!20032) (not d!57963) (not b!211323) (not b!211477) (not b!211491) (not b!211419) (not b!211428) (not b!211479) (not b!211460) (not bm!20025) (not b!211363) (not b!211420) (not bm!19997) (not b!211451) (not bm!20027) (not b_lambda!7709) (not b_lambda!7703) (not b!211367) (not b!211465) (not b!211452) (not d!57977) b_and!12409 (not b!211476) (not b!211333) (not bm!20013) (not b!211461) (not b!211469) (not bm!20026))
(check-sat b_and!12409 (not b_next!5571))

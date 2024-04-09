; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!95166 () Bool)

(assert start!95166)

(declare-fun b_free!22209 () Bool)

(declare-fun b_next!22209 () Bool)

(assert (=> start!95166 (= b_free!22209 (not b_next!22209))))

(declare-fun tp!78114 () Bool)

(declare-fun b_and!35157 () Bool)

(assert (=> start!95166 (= tp!78114 b_and!35157)))

(declare-fun mapIsEmpty!40762 () Bool)

(declare-fun mapRes!40762 () Bool)

(assert (=> mapIsEmpty!40762 mapRes!40762))

(declare-fun b!1075319 () Bool)

(declare-fun e!614599 () Bool)

(declare-fun tp_is_empty!26019 () Bool)

(assert (=> b!1075319 (= e!614599 tp_is_empty!26019)))

(declare-fun b!1075320 () Bool)

(declare-fun e!614597 () Bool)

(declare-fun e!614596 () Bool)

(assert (=> b!1075320 (= e!614597 (not e!614596))))

(declare-fun res!716968 () Bool)

(assert (=> b!1075320 (=> res!716968 e!614596)))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1075320 (= res!716968 (or (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-datatypes ((V!39827 0))(
  ( (V!39828 (val!13060 Int)) )
))
(declare-datatypes ((tuple2!16706 0))(
  ( (tuple2!16707 (_1!8363 (_ BitVec 64)) (_2!8363 V!39827)) )
))
(declare-datatypes ((List!23279 0))(
  ( (Nil!23276) (Cons!23275 (h!24484 tuple2!16706) (t!32637 List!23279)) )
))
(declare-datatypes ((ListLongMap!14687 0))(
  ( (ListLongMap!14688 (toList!7359 List!23279)) )
))
(declare-fun lt!477303 () ListLongMap!14687)

(declare-fun lt!477305 () ListLongMap!14687)

(assert (=> b!1075320 (= lt!477303 lt!477305)))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun zeroValueBefore!47 () V!39827)

(declare-datatypes ((ValueCell!12306 0))(
  ( (ValueCellFull!12306 (v!15685 V!39827)) (EmptyCell!12306) )
))
(declare-datatypes ((array!68968 0))(
  ( (array!68969 (arr!33167 (Array (_ BitVec 32) ValueCell!12306)) (size!33704 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68968)

(declare-fun minValue!907 () V!39827)

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39827)

(declare-datatypes ((array!68970 0))(
  ( (array!68971 (arr!33168 (Array (_ BitVec 32) (_ BitVec 64))) (size!33705 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68970)

(declare-datatypes ((Unit!35351 0))(
  ( (Unit!35352) )
))
(declare-fun lt!477307 () Unit!35351)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!905 (array!68970 array!68968 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39827 V!39827 V!39827 V!39827 (_ BitVec 32) Int) Unit!35351)

(assert (=> b!1075320 (= lt!477307 (lemmaNoChangeToArrayThenSameMapNoExtras!905 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3886 (array!68970 array!68968 (_ BitVec 32) (_ BitVec 32) V!39827 V!39827 (_ BitVec 32) Int) ListLongMap!14687)

(assert (=> b!1075320 (= lt!477305 (getCurrentListMapNoExtraKeys!3886 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1075320 (= lt!477303 (getCurrentListMapNoExtraKeys!3886 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun res!716967 () Bool)

(assert (=> start!95166 (=> (not res!716967) (not e!614597))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95166 (= res!716967 (validMask!0 mask!1515))))

(assert (=> start!95166 e!614597))

(assert (=> start!95166 true))

(assert (=> start!95166 tp_is_empty!26019))

(declare-fun e!614601 () Bool)

(declare-fun array_inv!25482 (array!68968) Bool)

(assert (=> start!95166 (and (array_inv!25482 _values!955) e!614601)))

(assert (=> start!95166 tp!78114))

(declare-fun array_inv!25483 (array!68970) Bool)

(assert (=> start!95166 (array_inv!25483 _keys!1163)))

(declare-fun b!1075321 () Bool)

(declare-fun e!614600 () Bool)

(assert (=> b!1075321 (= e!614596 e!614600)))

(declare-fun res!716966 () Bool)

(assert (=> b!1075321 (=> res!716966 e!614600)))

(declare-fun lt!477302 () ListLongMap!14687)

(declare-fun contains!6362 (ListLongMap!14687 (_ BitVec 64)) Bool)

(assert (=> b!1075321 (= res!716966 (contains!6362 lt!477302 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun getCurrentListMap!4196 (array!68970 array!68968 (_ BitVec 32) (_ BitVec 32) V!39827 V!39827 (_ BitVec 32) Int) ListLongMap!14687)

(assert (=> b!1075321 (= lt!477302 (getCurrentListMap!4196 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1075322 () Bool)

(declare-fun res!716964 () Bool)

(assert (=> b!1075322 (=> (not res!716964) (not e!614597))))

(assert (=> b!1075322 (= res!716964 (and (= (size!33704 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33705 _keys!1163) (size!33704 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1075323 () Bool)

(assert (=> b!1075323 (= e!614601 (and e!614599 mapRes!40762))))

(declare-fun condMapEmpty!40762 () Bool)

(declare-fun mapDefault!40762 () ValueCell!12306)

(assert (=> b!1075323 (= condMapEmpty!40762 (= (arr!33167 _values!955) ((as const (Array (_ BitVec 32) ValueCell!12306)) mapDefault!40762)))))

(declare-fun b!1075324 () Bool)

(declare-fun e!614595 () Bool)

(assert (=> b!1075324 (= e!614595 tp_is_empty!26019)))

(declare-fun b!1075325 () Bool)

(declare-fun res!716963 () Bool)

(assert (=> b!1075325 (=> (not res!716963) (not e!614597))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!68970 (_ BitVec 32)) Bool)

(assert (=> b!1075325 (= res!716963 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun mapNonEmpty!40762 () Bool)

(declare-fun tp!78113 () Bool)

(assert (=> mapNonEmpty!40762 (= mapRes!40762 (and tp!78113 e!614595))))

(declare-fun mapValue!40762 () ValueCell!12306)

(declare-fun mapKey!40762 () (_ BitVec 32))

(declare-fun mapRest!40762 () (Array (_ BitVec 32) ValueCell!12306))

(assert (=> mapNonEmpty!40762 (= (arr!33167 _values!955) (store mapRest!40762 mapKey!40762 mapValue!40762))))

(declare-fun b!1075326 () Bool)

(declare-fun lt!477306 () ListLongMap!14687)

(assert (=> b!1075326 (= e!614600 (= lt!477306 (getCurrentListMap!4196 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963)))))

(assert (=> b!1075326 (= lt!477306 lt!477302)))

(declare-fun -!710 (ListLongMap!14687 (_ BitVec 64)) ListLongMap!14687)

(assert (=> b!1075326 (= lt!477306 (-!710 lt!477302 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!477304 () Unit!35351)

(declare-fun removeNotPresentStillSame!74 (ListLongMap!14687 (_ BitVec 64)) Unit!35351)

(assert (=> b!1075326 (= lt!477304 (removeNotPresentStillSame!74 lt!477302 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1075327 () Bool)

(declare-fun res!716965 () Bool)

(assert (=> b!1075327 (=> (not res!716965) (not e!614597))))

(declare-datatypes ((List!23280 0))(
  ( (Nil!23277) (Cons!23276 (h!24485 (_ BitVec 64)) (t!32638 List!23280)) )
))
(declare-fun arrayNoDuplicates!0 (array!68970 (_ BitVec 32) List!23280) Bool)

(assert (=> b!1075327 (= res!716965 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!23277))))

(assert (= (and start!95166 res!716967) b!1075322))

(assert (= (and b!1075322 res!716964) b!1075325))

(assert (= (and b!1075325 res!716963) b!1075327))

(assert (= (and b!1075327 res!716965) b!1075320))

(assert (= (and b!1075320 (not res!716968)) b!1075321))

(assert (= (and b!1075321 (not res!716966)) b!1075326))

(assert (= (and b!1075323 condMapEmpty!40762) mapIsEmpty!40762))

(assert (= (and b!1075323 (not condMapEmpty!40762)) mapNonEmpty!40762))

(get-info :version)

(assert (= (and mapNonEmpty!40762 ((_ is ValueCellFull!12306) mapValue!40762)) b!1075324))

(assert (= (and b!1075323 ((_ is ValueCellFull!12306) mapDefault!40762)) b!1075319))

(assert (= start!95166 b!1075323))

(declare-fun m!994285 () Bool)

(assert (=> b!1075327 m!994285))

(declare-fun m!994287 () Bool)

(assert (=> b!1075320 m!994287))

(declare-fun m!994289 () Bool)

(assert (=> b!1075320 m!994289))

(declare-fun m!994291 () Bool)

(assert (=> b!1075320 m!994291))

(declare-fun m!994293 () Bool)

(assert (=> mapNonEmpty!40762 m!994293))

(declare-fun m!994295 () Bool)

(assert (=> b!1075326 m!994295))

(declare-fun m!994297 () Bool)

(assert (=> b!1075326 m!994297))

(declare-fun m!994299 () Bool)

(assert (=> b!1075326 m!994299))

(declare-fun m!994301 () Bool)

(assert (=> b!1075325 m!994301))

(declare-fun m!994303 () Bool)

(assert (=> start!95166 m!994303))

(declare-fun m!994305 () Bool)

(assert (=> start!95166 m!994305))

(declare-fun m!994307 () Bool)

(assert (=> start!95166 m!994307))

(declare-fun m!994309 () Bool)

(assert (=> b!1075321 m!994309))

(declare-fun m!994311 () Bool)

(assert (=> b!1075321 m!994311))

(check-sat (not b!1075327) (not b!1075321) b_and!35157 (not b!1075325) (not start!95166) (not b!1075320) (not b_next!22209) tp_is_empty!26019 (not mapNonEmpty!40762) (not b!1075326))
(check-sat b_and!35157 (not b_next!22209))
(get-model)

(declare-fun b!1075365 () Bool)

(declare-fun e!614634 () Bool)

(declare-fun e!614633 () Bool)

(assert (=> b!1075365 (= e!614634 e!614633)))

(declare-fun c!107990 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1075365 (= c!107990 (validKeyInArray!0 (select (arr!33168 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun d!129541 () Bool)

(declare-fun res!716995 () Bool)

(declare-fun e!614631 () Bool)

(assert (=> d!129541 (=> res!716995 e!614631)))

(assert (=> d!129541 (= res!716995 (bvsge #b00000000000000000000000000000000 (size!33705 _keys!1163)))))

(assert (=> d!129541 (= (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!23277) e!614631)))

(declare-fun b!1075366 () Bool)

(declare-fun call!45505 () Bool)

(assert (=> b!1075366 (= e!614633 call!45505)))

(declare-fun b!1075367 () Bool)

(assert (=> b!1075367 (= e!614631 e!614634)))

(declare-fun res!716994 () Bool)

(assert (=> b!1075367 (=> (not res!716994) (not e!614634))))

(declare-fun e!614632 () Bool)

(assert (=> b!1075367 (= res!716994 (not e!614632))))

(declare-fun res!716993 () Bool)

(assert (=> b!1075367 (=> (not res!716993) (not e!614632))))

(assert (=> b!1075367 (= res!716993 (validKeyInArray!0 (select (arr!33168 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun b!1075368 () Bool)

(assert (=> b!1075368 (= e!614633 call!45505)))

(declare-fun b!1075369 () Bool)

(declare-fun contains!6364 (List!23280 (_ BitVec 64)) Bool)

(assert (=> b!1075369 (= e!614632 (contains!6364 Nil!23277 (select (arr!33168 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun bm!45502 () Bool)

(assert (=> bm!45502 (= call!45505 (arrayNoDuplicates!0 _keys!1163 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!107990 (Cons!23276 (select (arr!33168 _keys!1163) #b00000000000000000000000000000000) Nil!23277) Nil!23277)))))

(assert (= (and d!129541 (not res!716995)) b!1075367))

(assert (= (and b!1075367 res!716993) b!1075369))

(assert (= (and b!1075367 res!716994) b!1075365))

(assert (= (and b!1075365 c!107990) b!1075368))

(assert (= (and b!1075365 (not c!107990)) b!1075366))

(assert (= (or b!1075368 b!1075366) bm!45502))

(declare-fun m!994341 () Bool)

(assert (=> b!1075365 m!994341))

(assert (=> b!1075365 m!994341))

(declare-fun m!994343 () Bool)

(assert (=> b!1075365 m!994343))

(assert (=> b!1075367 m!994341))

(assert (=> b!1075367 m!994341))

(assert (=> b!1075367 m!994343))

(assert (=> b!1075369 m!994341))

(assert (=> b!1075369 m!994341))

(declare-fun m!994345 () Bool)

(assert (=> b!1075369 m!994345))

(assert (=> bm!45502 m!994341))

(declare-fun m!994347 () Bool)

(assert (=> bm!45502 m!994347))

(assert (=> b!1075327 d!129541))

(declare-fun d!129543 () Bool)

(declare-fun e!614640 () Bool)

(assert (=> d!129543 e!614640))

(declare-fun res!716998 () Bool)

(assert (=> d!129543 (=> res!716998 e!614640)))

(declare-fun lt!477336 () Bool)

(assert (=> d!129543 (= res!716998 (not lt!477336))))

(declare-fun lt!477334 () Bool)

(assert (=> d!129543 (= lt!477336 lt!477334)))

(declare-fun lt!477335 () Unit!35351)

(declare-fun e!614639 () Unit!35351)

(assert (=> d!129543 (= lt!477335 e!614639)))

(declare-fun c!107993 () Bool)

(assert (=> d!129543 (= c!107993 lt!477334)))

(declare-fun containsKey!581 (List!23279 (_ BitVec 64)) Bool)

(assert (=> d!129543 (= lt!477334 (containsKey!581 (toList!7359 lt!477302) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!129543 (= (contains!6362 lt!477302 #b0000000000000000000000000000000000000000000000000000000000000000) lt!477336)))

(declare-fun b!1075376 () Bool)

(declare-fun lt!477337 () Unit!35351)

(assert (=> b!1075376 (= e!614639 lt!477337)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!413 (List!23279 (_ BitVec 64)) Unit!35351)

(assert (=> b!1075376 (= lt!477337 (lemmaContainsKeyImpliesGetValueByKeyDefined!413 (toList!7359 lt!477302) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Option!665 0))(
  ( (Some!664 (v!15687 V!39827)) (None!663) )
))
(declare-fun isDefined!453 (Option!665) Bool)

(declare-fun getValueByKey!614 (List!23279 (_ BitVec 64)) Option!665)

(assert (=> b!1075376 (isDefined!453 (getValueByKey!614 (toList!7359 lt!477302) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1075377 () Bool)

(declare-fun Unit!35355 () Unit!35351)

(assert (=> b!1075377 (= e!614639 Unit!35355)))

(declare-fun b!1075378 () Bool)

(assert (=> b!1075378 (= e!614640 (isDefined!453 (getValueByKey!614 (toList!7359 lt!477302) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!129543 c!107993) b!1075376))

(assert (= (and d!129543 (not c!107993)) b!1075377))

(assert (= (and d!129543 (not res!716998)) b!1075378))

(declare-fun m!994349 () Bool)

(assert (=> d!129543 m!994349))

(declare-fun m!994351 () Bool)

(assert (=> b!1075376 m!994351))

(declare-fun m!994353 () Bool)

(assert (=> b!1075376 m!994353))

(assert (=> b!1075376 m!994353))

(declare-fun m!994355 () Bool)

(assert (=> b!1075376 m!994355))

(assert (=> b!1075378 m!994353))

(assert (=> b!1075378 m!994353))

(assert (=> b!1075378 m!994355))

(assert (=> b!1075321 d!129543))

(declare-fun bm!45517 () Bool)

(declare-fun call!45522 () ListLongMap!14687)

(declare-fun c!108009 () Bool)

(declare-fun call!45526 () ListLongMap!14687)

(declare-fun call!45521 () ListLongMap!14687)

(declare-fun call!45524 () ListLongMap!14687)

(declare-fun c!108011 () Bool)

(declare-fun +!3184 (ListLongMap!14687 tuple2!16706) ListLongMap!14687)

(assert (=> bm!45517 (= call!45526 (+!3184 (ite c!108009 call!45522 (ite c!108011 call!45521 call!45524)) (ite (or c!108009 c!108011) (tuple2!16707 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47) (tuple2!16707 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907))))))

(declare-fun bm!45518 () Bool)

(declare-fun call!45523 () Bool)

(declare-fun lt!477391 () ListLongMap!14687)

(assert (=> bm!45518 (= call!45523 (contains!6362 lt!477391 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1075421 () Bool)

(declare-fun e!614672 () Bool)

(declare-fun e!614675 () Bool)

(assert (=> b!1075421 (= e!614672 e!614675)))

(declare-fun res!717018 () Bool)

(assert (=> b!1075421 (= res!717018 call!45523)))

(assert (=> b!1075421 (=> (not res!717018) (not e!614675))))

(declare-fun b!1075422 () Bool)

(declare-fun e!614670 () Unit!35351)

(declare-fun lt!477394 () Unit!35351)

(assert (=> b!1075422 (= e!614670 lt!477394)))

(declare-fun lt!477390 () ListLongMap!14687)

(assert (=> b!1075422 (= lt!477390 (getCurrentListMapNoExtraKeys!3886 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun lt!477397 () (_ BitVec 64))

(assert (=> b!1075422 (= lt!477397 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!477386 () (_ BitVec 64))

(assert (=> b!1075422 (= lt!477386 (select (arr!33168 _keys!1163) #b00000000000000000000000000000000))))

(declare-fun lt!477392 () Unit!35351)

(declare-fun addStillContains!656 (ListLongMap!14687 (_ BitVec 64) V!39827 (_ BitVec 64)) Unit!35351)

(assert (=> b!1075422 (= lt!477392 (addStillContains!656 lt!477390 lt!477397 zeroValueBefore!47 lt!477386))))

(assert (=> b!1075422 (contains!6362 (+!3184 lt!477390 (tuple2!16707 lt!477397 zeroValueBefore!47)) lt!477386)))

(declare-fun lt!477398 () Unit!35351)

(assert (=> b!1075422 (= lt!477398 lt!477392)))

(declare-fun lt!477396 () ListLongMap!14687)

(assert (=> b!1075422 (= lt!477396 (getCurrentListMapNoExtraKeys!3886 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun lt!477393 () (_ BitVec 64))

(assert (=> b!1075422 (= lt!477393 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!477400 () (_ BitVec 64))

(assert (=> b!1075422 (= lt!477400 (select (arr!33168 _keys!1163) #b00000000000000000000000000000000))))

(declare-fun lt!477385 () Unit!35351)

(declare-fun addApplyDifferent!508 (ListLongMap!14687 (_ BitVec 64) V!39827 (_ BitVec 64)) Unit!35351)

(assert (=> b!1075422 (= lt!477385 (addApplyDifferent!508 lt!477396 lt!477393 minValue!907 lt!477400))))

(declare-fun apply!974 (ListLongMap!14687 (_ BitVec 64)) V!39827)

(assert (=> b!1075422 (= (apply!974 (+!3184 lt!477396 (tuple2!16707 lt!477393 minValue!907)) lt!477400) (apply!974 lt!477396 lt!477400))))

(declare-fun lt!477395 () Unit!35351)

(assert (=> b!1075422 (= lt!477395 lt!477385)))

(declare-fun lt!477399 () ListLongMap!14687)

(assert (=> b!1075422 (= lt!477399 (getCurrentListMapNoExtraKeys!3886 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun lt!477388 () (_ BitVec 64))

(assert (=> b!1075422 (= lt!477388 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!477389 () (_ BitVec 64))

(assert (=> b!1075422 (= lt!477389 (select (arr!33168 _keys!1163) #b00000000000000000000000000000000))))

(declare-fun lt!477402 () Unit!35351)

(assert (=> b!1075422 (= lt!477402 (addApplyDifferent!508 lt!477399 lt!477388 zeroValueBefore!47 lt!477389))))

(assert (=> b!1075422 (= (apply!974 (+!3184 lt!477399 (tuple2!16707 lt!477388 zeroValueBefore!47)) lt!477389) (apply!974 lt!477399 lt!477389))))

(declare-fun lt!477401 () Unit!35351)

(assert (=> b!1075422 (= lt!477401 lt!477402)))

(declare-fun lt!477383 () ListLongMap!14687)

(assert (=> b!1075422 (= lt!477383 (getCurrentListMapNoExtraKeys!3886 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun lt!477403 () (_ BitVec 64))

(assert (=> b!1075422 (= lt!477403 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!477384 () (_ BitVec 64))

(assert (=> b!1075422 (= lt!477384 (select (arr!33168 _keys!1163) #b00000000000000000000000000000000))))

(assert (=> b!1075422 (= lt!477394 (addApplyDifferent!508 lt!477383 lt!477403 minValue!907 lt!477384))))

(assert (=> b!1075422 (= (apply!974 (+!3184 lt!477383 (tuple2!16707 lt!477403 minValue!907)) lt!477384) (apply!974 lt!477383 lt!477384))))

(declare-fun b!1075423 () Bool)

(declare-fun e!614674 () Bool)

(assert (=> b!1075423 (= e!614674 (validKeyInArray!0 (select (arr!33168 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun d!129545 () Bool)

(declare-fun e!614673 () Bool)

(assert (=> d!129545 e!614673))

(declare-fun res!717024 () Bool)

(assert (=> d!129545 (=> (not res!717024) (not e!614673))))

(assert (=> d!129545 (= res!717024 (or (bvsge #b00000000000000000000000000000000 (size!33705 _keys!1163)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33705 _keys!1163)))))))

(declare-fun lt!477382 () ListLongMap!14687)

(assert (=> d!129545 (= lt!477391 lt!477382)))

(declare-fun lt!477387 () Unit!35351)

(assert (=> d!129545 (= lt!477387 e!614670)))

(declare-fun c!108008 () Bool)

(declare-fun e!614669 () Bool)

(assert (=> d!129545 (= c!108008 e!614669)))

(declare-fun res!717022 () Bool)

(assert (=> d!129545 (=> (not res!717022) (not e!614669))))

(assert (=> d!129545 (= res!717022 (bvslt #b00000000000000000000000000000000 (size!33705 _keys!1163)))))

(declare-fun e!614667 () ListLongMap!14687)

(assert (=> d!129545 (= lt!477382 e!614667)))

(assert (=> d!129545 (= c!108009 (and (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!129545 (validMask!0 mask!1515)))

(assert (=> d!129545 (= (getCurrentListMap!4196 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963) lt!477391)))

(declare-fun b!1075424 () Bool)

(declare-fun e!614677 () ListLongMap!14687)

(assert (=> b!1075424 (= e!614677 call!45524)))

(declare-fun b!1075425 () Bool)

(assert (=> b!1075425 (= e!614675 (= (apply!974 lt!477391 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!907))))

(declare-fun b!1075426 () Bool)

(assert (=> b!1075426 (= e!614669 (validKeyInArray!0 (select (arr!33168 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun b!1075427 () Bool)

(declare-fun e!614676 () Bool)

(declare-fun e!614671 () Bool)

(assert (=> b!1075427 (= e!614676 e!614671)))

(declare-fun res!717021 () Bool)

(assert (=> b!1075427 (=> (not res!717021) (not e!614671))))

(assert (=> b!1075427 (= res!717021 (contains!6362 lt!477391 (select (arr!33168 _keys!1163) #b00000000000000000000000000000000)))))

(assert (=> b!1075427 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33705 _keys!1163)))))

(declare-fun bm!45519 () Bool)

(assert (=> bm!45519 (= call!45521 call!45522)))

(declare-fun b!1075428 () Bool)

(assert (=> b!1075428 (= e!614672 (not call!45523))))

(declare-fun b!1075429 () Bool)

(declare-fun e!614668 () Bool)

(assert (=> b!1075429 (= e!614668 (= (apply!974 lt!477391 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValueBefore!47))))

(declare-fun bm!45520 () Bool)

(assert (=> bm!45520 (= call!45522 (getCurrentListMapNoExtraKeys!3886 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun bm!45521 () Bool)

(declare-fun call!45525 () ListLongMap!14687)

(assert (=> bm!45521 (= call!45525 call!45526)))

(declare-fun b!1075430 () Bool)

(declare-fun e!614678 () ListLongMap!14687)

(assert (=> b!1075430 (= e!614667 e!614678)))

(assert (=> b!1075430 (= c!108011 (and (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1075431 () Bool)

(assert (=> b!1075431 (= e!614673 e!614672)))

(declare-fun c!108010 () Bool)

(assert (=> b!1075431 (= c!108010 (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1075432 () Bool)

(declare-fun get!17248 (ValueCell!12306 V!39827) V!39827)

(declare-fun dynLambda!2050 (Int (_ BitVec 64)) V!39827)

(assert (=> b!1075432 (= e!614671 (= (apply!974 lt!477391 (select (arr!33168 _keys!1163) #b00000000000000000000000000000000)) (get!17248 (select (arr!33167 _values!955) #b00000000000000000000000000000000) (dynLambda!2050 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1075432 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33704 _values!955)))))

(assert (=> b!1075432 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33705 _keys!1163)))))

(declare-fun b!1075433 () Bool)

(declare-fun Unit!35356 () Unit!35351)

(assert (=> b!1075433 (= e!614670 Unit!35356)))

(declare-fun b!1075434 () Bool)

(assert (=> b!1075434 (= e!614677 call!45525)))

(declare-fun b!1075435 () Bool)

(declare-fun res!717025 () Bool)

(assert (=> b!1075435 (=> (not res!717025) (not e!614673))))

(assert (=> b!1075435 (= res!717025 e!614676)))

(declare-fun res!717019 () Bool)

(assert (=> b!1075435 (=> res!717019 e!614676)))

(assert (=> b!1075435 (= res!717019 (not e!614674))))

(declare-fun res!717017 () Bool)

(assert (=> b!1075435 (=> (not res!717017) (not e!614674))))

(assert (=> b!1075435 (= res!717017 (bvslt #b00000000000000000000000000000000 (size!33705 _keys!1163)))))

(declare-fun b!1075436 () Bool)

(declare-fun res!717020 () Bool)

(assert (=> b!1075436 (=> (not res!717020) (not e!614673))))

(declare-fun e!614679 () Bool)

(assert (=> b!1075436 (= res!717020 e!614679)))

(declare-fun c!108007 () Bool)

(assert (=> b!1075436 (= c!108007 (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1075437 () Bool)

(assert (=> b!1075437 (= e!614667 (+!3184 call!45526 (tuple2!16707 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907)))))

(declare-fun bm!45522 () Bool)

(declare-fun call!45520 () Bool)

(assert (=> bm!45522 (= call!45520 (contains!6362 lt!477391 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1075438 () Bool)

(assert (=> b!1075438 (= e!614678 call!45525)))

(declare-fun b!1075439 () Bool)

(assert (=> b!1075439 (= e!614679 (not call!45520))))

(declare-fun b!1075440 () Bool)

(assert (=> b!1075440 (= e!614679 e!614668)))

(declare-fun res!717023 () Bool)

(assert (=> b!1075440 (= res!717023 call!45520)))

(assert (=> b!1075440 (=> (not res!717023) (not e!614668))))

(declare-fun bm!45523 () Bool)

(assert (=> bm!45523 (= call!45524 call!45521)))

(declare-fun b!1075441 () Bool)

(declare-fun c!108006 () Bool)

(assert (=> b!1075441 (= c!108006 (and (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!1075441 (= e!614678 e!614677)))

(assert (= (and d!129545 c!108009) b!1075437))

(assert (= (and d!129545 (not c!108009)) b!1075430))

(assert (= (and b!1075430 c!108011) b!1075438))

(assert (= (and b!1075430 (not c!108011)) b!1075441))

(assert (= (and b!1075441 c!108006) b!1075434))

(assert (= (and b!1075441 (not c!108006)) b!1075424))

(assert (= (or b!1075434 b!1075424) bm!45523))

(assert (= (or b!1075438 bm!45523) bm!45519))

(assert (= (or b!1075438 b!1075434) bm!45521))

(assert (= (or b!1075437 bm!45519) bm!45520))

(assert (= (or b!1075437 bm!45521) bm!45517))

(assert (= (and d!129545 res!717022) b!1075426))

(assert (= (and d!129545 c!108008) b!1075422))

(assert (= (and d!129545 (not c!108008)) b!1075433))

(assert (= (and d!129545 res!717024) b!1075435))

(assert (= (and b!1075435 res!717017) b!1075423))

(assert (= (and b!1075435 (not res!717019)) b!1075427))

(assert (= (and b!1075427 res!717021) b!1075432))

(assert (= (and b!1075435 res!717025) b!1075436))

(assert (= (and b!1075436 c!108007) b!1075440))

(assert (= (and b!1075436 (not c!108007)) b!1075439))

(assert (= (and b!1075440 res!717023) b!1075429))

(assert (= (or b!1075440 b!1075439) bm!45522))

(assert (= (and b!1075436 res!717020) b!1075431))

(assert (= (and b!1075431 c!108010) b!1075421))

(assert (= (and b!1075431 (not c!108010)) b!1075428))

(assert (= (and b!1075421 res!717018) b!1075425))

(assert (= (or b!1075421 b!1075428) bm!45518))

(declare-fun b_lambda!16907 () Bool)

(assert (=> (not b_lambda!16907) (not b!1075432)))

(declare-fun t!32642 () Bool)

(declare-fun tb!7181 () Bool)

(assert (=> (and start!95166 (= defaultEntry!963 defaultEntry!963) t!32642) tb!7181))

(declare-fun result!14835 () Bool)

(assert (=> tb!7181 (= result!14835 tp_is_empty!26019)))

(assert (=> b!1075432 t!32642))

(declare-fun b_and!35161 () Bool)

(assert (= b_and!35157 (and (=> t!32642 result!14835) b_and!35161)))

(assert (=> bm!45520 m!994291))

(assert (=> b!1075432 m!994341))

(declare-fun m!994357 () Bool)

(assert (=> b!1075432 m!994357))

(declare-fun m!994359 () Bool)

(assert (=> b!1075432 m!994359))

(declare-fun m!994361 () Bool)

(assert (=> b!1075432 m!994361))

(assert (=> b!1075432 m!994359))

(assert (=> b!1075432 m!994361))

(declare-fun m!994363 () Bool)

(assert (=> b!1075432 m!994363))

(assert (=> b!1075432 m!994341))

(declare-fun m!994365 () Bool)

(assert (=> b!1075429 m!994365))

(assert (=> b!1075423 m!994341))

(assert (=> b!1075423 m!994341))

(assert (=> b!1075423 m!994343))

(assert (=> b!1075426 m!994341))

(assert (=> b!1075426 m!994341))

(assert (=> b!1075426 m!994343))

(assert (=> b!1075427 m!994341))

(assert (=> b!1075427 m!994341))

(declare-fun m!994367 () Bool)

(assert (=> b!1075427 m!994367))

(assert (=> d!129545 m!994303))

(declare-fun m!994369 () Bool)

(assert (=> b!1075422 m!994369))

(declare-fun m!994371 () Bool)

(assert (=> b!1075422 m!994371))

(declare-fun m!994373 () Bool)

(assert (=> b!1075422 m!994373))

(declare-fun m!994375 () Bool)

(assert (=> b!1075422 m!994375))

(assert (=> b!1075422 m!994291))

(declare-fun m!994377 () Bool)

(assert (=> b!1075422 m!994377))

(declare-fun m!994379 () Bool)

(assert (=> b!1075422 m!994379))

(assert (=> b!1075422 m!994341))

(declare-fun m!994381 () Bool)

(assert (=> b!1075422 m!994381))

(assert (=> b!1075422 m!994371))

(declare-fun m!994383 () Bool)

(assert (=> b!1075422 m!994383))

(declare-fun m!994385 () Bool)

(assert (=> b!1075422 m!994385))

(declare-fun m!994387 () Bool)

(assert (=> b!1075422 m!994387))

(assert (=> b!1075422 m!994369))

(declare-fun m!994389 () Bool)

(assert (=> b!1075422 m!994389))

(assert (=> b!1075422 m!994385))

(declare-fun m!994391 () Bool)

(assert (=> b!1075422 m!994391))

(declare-fun m!994393 () Bool)

(assert (=> b!1075422 m!994393))

(assert (=> b!1075422 m!994381))

(declare-fun m!994395 () Bool)

(assert (=> b!1075422 m!994395))

(declare-fun m!994397 () Bool)

(assert (=> b!1075422 m!994397))

(declare-fun m!994399 () Bool)

(assert (=> b!1075437 m!994399))

(declare-fun m!994401 () Bool)

(assert (=> bm!45518 m!994401))

(declare-fun m!994403 () Bool)

(assert (=> bm!45517 m!994403))

(declare-fun m!994405 () Bool)

(assert (=> bm!45522 m!994405))

(declare-fun m!994407 () Bool)

(assert (=> b!1075425 m!994407))

(assert (=> b!1075321 d!129545))

(declare-fun call!45533 () ListLongMap!14687)

(declare-fun c!108017 () Bool)

(declare-fun call!45528 () ListLongMap!14687)

(declare-fun call!45531 () ListLongMap!14687)

(declare-fun call!45529 () ListLongMap!14687)

(declare-fun bm!45524 () Bool)

(declare-fun c!108015 () Bool)

(assert (=> bm!45524 (= call!45533 (+!3184 (ite c!108015 call!45529 (ite c!108017 call!45528 call!45531)) (ite (or c!108015 c!108017) (tuple2!16707 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!47) (tuple2!16707 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907))))))

(declare-fun bm!45525 () Bool)

(declare-fun call!45530 () Bool)

(declare-fun lt!477413 () ListLongMap!14687)

(assert (=> bm!45525 (= call!45530 (contains!6362 lt!477413 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1075444 () Bool)

(declare-fun e!614685 () Bool)

(declare-fun e!614688 () Bool)

(assert (=> b!1075444 (= e!614685 e!614688)))

(declare-fun res!717027 () Bool)

(assert (=> b!1075444 (= res!717027 call!45530)))

(assert (=> b!1075444 (=> (not res!717027) (not e!614688))))

(declare-fun b!1075445 () Bool)

(declare-fun e!614683 () Unit!35351)

(declare-fun lt!477416 () Unit!35351)

(assert (=> b!1075445 (= e!614683 lt!477416)))

(declare-fun lt!477412 () ListLongMap!14687)

(assert (=> b!1075445 (= lt!477412 (getCurrentListMapNoExtraKeys!3886 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun lt!477419 () (_ BitVec 64))

(assert (=> b!1075445 (= lt!477419 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!477408 () (_ BitVec 64))

(assert (=> b!1075445 (= lt!477408 (select (arr!33168 _keys!1163) #b00000000000000000000000000000000))))

(declare-fun lt!477414 () Unit!35351)

(assert (=> b!1075445 (= lt!477414 (addStillContains!656 lt!477412 lt!477419 zeroValueAfter!47 lt!477408))))

(assert (=> b!1075445 (contains!6362 (+!3184 lt!477412 (tuple2!16707 lt!477419 zeroValueAfter!47)) lt!477408)))

(declare-fun lt!477420 () Unit!35351)

(assert (=> b!1075445 (= lt!477420 lt!477414)))

(declare-fun lt!477418 () ListLongMap!14687)

(assert (=> b!1075445 (= lt!477418 (getCurrentListMapNoExtraKeys!3886 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun lt!477415 () (_ BitVec 64))

(assert (=> b!1075445 (= lt!477415 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!477422 () (_ BitVec 64))

(assert (=> b!1075445 (= lt!477422 (select (arr!33168 _keys!1163) #b00000000000000000000000000000000))))

(declare-fun lt!477407 () Unit!35351)

(assert (=> b!1075445 (= lt!477407 (addApplyDifferent!508 lt!477418 lt!477415 minValue!907 lt!477422))))

(assert (=> b!1075445 (= (apply!974 (+!3184 lt!477418 (tuple2!16707 lt!477415 minValue!907)) lt!477422) (apply!974 lt!477418 lt!477422))))

(declare-fun lt!477417 () Unit!35351)

(assert (=> b!1075445 (= lt!477417 lt!477407)))

(declare-fun lt!477421 () ListLongMap!14687)

(assert (=> b!1075445 (= lt!477421 (getCurrentListMapNoExtraKeys!3886 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun lt!477410 () (_ BitVec 64))

(assert (=> b!1075445 (= lt!477410 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!477411 () (_ BitVec 64))

(assert (=> b!1075445 (= lt!477411 (select (arr!33168 _keys!1163) #b00000000000000000000000000000000))))

(declare-fun lt!477424 () Unit!35351)

(assert (=> b!1075445 (= lt!477424 (addApplyDifferent!508 lt!477421 lt!477410 zeroValueAfter!47 lt!477411))))

(assert (=> b!1075445 (= (apply!974 (+!3184 lt!477421 (tuple2!16707 lt!477410 zeroValueAfter!47)) lt!477411) (apply!974 lt!477421 lt!477411))))

(declare-fun lt!477423 () Unit!35351)

(assert (=> b!1075445 (= lt!477423 lt!477424)))

(declare-fun lt!477405 () ListLongMap!14687)

(assert (=> b!1075445 (= lt!477405 (getCurrentListMapNoExtraKeys!3886 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun lt!477425 () (_ BitVec 64))

(assert (=> b!1075445 (= lt!477425 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!477406 () (_ BitVec 64))

(assert (=> b!1075445 (= lt!477406 (select (arr!33168 _keys!1163) #b00000000000000000000000000000000))))

(assert (=> b!1075445 (= lt!477416 (addApplyDifferent!508 lt!477405 lt!477425 minValue!907 lt!477406))))

(assert (=> b!1075445 (= (apply!974 (+!3184 lt!477405 (tuple2!16707 lt!477425 minValue!907)) lt!477406) (apply!974 lt!477405 lt!477406))))

(declare-fun b!1075446 () Bool)

(declare-fun e!614687 () Bool)

(assert (=> b!1075446 (= e!614687 (validKeyInArray!0 (select (arr!33168 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun d!129547 () Bool)

(declare-fun e!614686 () Bool)

(assert (=> d!129547 e!614686))

(declare-fun res!717033 () Bool)

(assert (=> d!129547 (=> (not res!717033) (not e!614686))))

(assert (=> d!129547 (= res!717033 (or (bvsge #b00000000000000000000000000000000 (size!33705 _keys!1163)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33705 _keys!1163)))))))

(declare-fun lt!477404 () ListLongMap!14687)

(assert (=> d!129547 (= lt!477413 lt!477404)))

(declare-fun lt!477409 () Unit!35351)

(assert (=> d!129547 (= lt!477409 e!614683)))

(declare-fun c!108014 () Bool)

(declare-fun e!614682 () Bool)

(assert (=> d!129547 (= c!108014 e!614682)))

(declare-fun res!717031 () Bool)

(assert (=> d!129547 (=> (not res!717031) (not e!614682))))

(assert (=> d!129547 (= res!717031 (bvslt #b00000000000000000000000000000000 (size!33705 _keys!1163)))))

(declare-fun e!614680 () ListLongMap!14687)

(assert (=> d!129547 (= lt!477404 e!614680)))

(assert (=> d!129547 (= c!108015 (and (not (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysAfter!68 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!129547 (validMask!0 mask!1515)))

(assert (=> d!129547 (= (getCurrentListMap!4196 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963) lt!477413)))

(declare-fun b!1075447 () Bool)

(declare-fun e!614690 () ListLongMap!14687)

(assert (=> b!1075447 (= e!614690 call!45531)))

(declare-fun b!1075448 () Bool)

(assert (=> b!1075448 (= e!614688 (= (apply!974 lt!477413 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!907))))

(declare-fun b!1075449 () Bool)

(assert (=> b!1075449 (= e!614682 (validKeyInArray!0 (select (arr!33168 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun b!1075450 () Bool)

(declare-fun e!614689 () Bool)

(declare-fun e!614684 () Bool)

(assert (=> b!1075450 (= e!614689 e!614684)))

(declare-fun res!717030 () Bool)

(assert (=> b!1075450 (=> (not res!717030) (not e!614684))))

(assert (=> b!1075450 (= res!717030 (contains!6362 lt!477413 (select (arr!33168 _keys!1163) #b00000000000000000000000000000000)))))

(assert (=> b!1075450 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33705 _keys!1163)))))

(declare-fun bm!45526 () Bool)

(assert (=> bm!45526 (= call!45528 call!45529)))

(declare-fun b!1075451 () Bool)

(assert (=> b!1075451 (= e!614685 (not call!45530))))

(declare-fun b!1075452 () Bool)

(declare-fun e!614681 () Bool)

(assert (=> b!1075452 (= e!614681 (= (apply!974 lt!477413 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValueAfter!47))))

(declare-fun bm!45527 () Bool)

(assert (=> bm!45527 (= call!45529 (getCurrentListMapNoExtraKeys!3886 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun bm!45528 () Bool)

(declare-fun call!45532 () ListLongMap!14687)

(assert (=> bm!45528 (= call!45532 call!45533)))

(declare-fun b!1075453 () Bool)

(declare-fun e!614691 () ListLongMap!14687)

(assert (=> b!1075453 (= e!614680 e!614691)))

(assert (=> b!1075453 (= c!108017 (and (not (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1075454 () Bool)

(assert (=> b!1075454 (= e!614686 e!614685)))

(declare-fun c!108016 () Bool)

(assert (=> b!1075454 (= c!108016 (not (= (bvand extraKeysAfter!68 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1075455 () Bool)

(assert (=> b!1075455 (= e!614684 (= (apply!974 lt!477413 (select (arr!33168 _keys!1163) #b00000000000000000000000000000000)) (get!17248 (select (arr!33167 _values!955) #b00000000000000000000000000000000) (dynLambda!2050 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1075455 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33704 _values!955)))))

(assert (=> b!1075455 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33705 _keys!1163)))))

(declare-fun b!1075456 () Bool)

(declare-fun Unit!35357 () Unit!35351)

(assert (=> b!1075456 (= e!614683 Unit!35357)))

(declare-fun b!1075457 () Bool)

(assert (=> b!1075457 (= e!614690 call!45532)))

(declare-fun b!1075458 () Bool)

(declare-fun res!717034 () Bool)

(assert (=> b!1075458 (=> (not res!717034) (not e!614686))))

(assert (=> b!1075458 (= res!717034 e!614689)))

(declare-fun res!717028 () Bool)

(assert (=> b!1075458 (=> res!717028 e!614689)))

(assert (=> b!1075458 (= res!717028 (not e!614687))))

(declare-fun res!717026 () Bool)

(assert (=> b!1075458 (=> (not res!717026) (not e!614687))))

(assert (=> b!1075458 (= res!717026 (bvslt #b00000000000000000000000000000000 (size!33705 _keys!1163)))))

(declare-fun b!1075459 () Bool)

(declare-fun res!717029 () Bool)

(assert (=> b!1075459 (=> (not res!717029) (not e!614686))))

(declare-fun e!614692 () Bool)

(assert (=> b!1075459 (= res!717029 e!614692)))

(declare-fun c!108013 () Bool)

(assert (=> b!1075459 (= c!108013 (not (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1075460 () Bool)

(assert (=> b!1075460 (= e!614680 (+!3184 call!45533 (tuple2!16707 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907)))))

(declare-fun bm!45529 () Bool)

(declare-fun call!45527 () Bool)

(assert (=> bm!45529 (= call!45527 (contains!6362 lt!477413 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1075461 () Bool)

(assert (=> b!1075461 (= e!614691 call!45532)))

(declare-fun b!1075462 () Bool)

(assert (=> b!1075462 (= e!614692 (not call!45527))))

(declare-fun b!1075463 () Bool)

(assert (=> b!1075463 (= e!614692 e!614681)))

(declare-fun res!717032 () Bool)

(assert (=> b!1075463 (= res!717032 call!45527)))

(assert (=> b!1075463 (=> (not res!717032) (not e!614681))))

(declare-fun bm!45530 () Bool)

(assert (=> bm!45530 (= call!45531 call!45528)))

(declare-fun b!1075464 () Bool)

(declare-fun c!108012 () Bool)

(assert (=> b!1075464 (= c!108012 (and (not (= (bvand extraKeysAfter!68 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!1075464 (= e!614691 e!614690)))

(assert (= (and d!129547 c!108015) b!1075460))

(assert (= (and d!129547 (not c!108015)) b!1075453))

(assert (= (and b!1075453 c!108017) b!1075461))

(assert (= (and b!1075453 (not c!108017)) b!1075464))

(assert (= (and b!1075464 c!108012) b!1075457))

(assert (= (and b!1075464 (not c!108012)) b!1075447))

(assert (= (or b!1075457 b!1075447) bm!45530))

(assert (= (or b!1075461 bm!45530) bm!45526))

(assert (= (or b!1075461 b!1075457) bm!45528))

(assert (= (or b!1075460 bm!45526) bm!45527))

(assert (= (or b!1075460 bm!45528) bm!45524))

(assert (= (and d!129547 res!717031) b!1075449))

(assert (= (and d!129547 c!108014) b!1075445))

(assert (= (and d!129547 (not c!108014)) b!1075456))

(assert (= (and d!129547 res!717033) b!1075458))

(assert (= (and b!1075458 res!717026) b!1075446))

(assert (= (and b!1075458 (not res!717028)) b!1075450))

(assert (= (and b!1075450 res!717030) b!1075455))

(assert (= (and b!1075458 res!717034) b!1075459))

(assert (= (and b!1075459 c!108013) b!1075463))

(assert (= (and b!1075459 (not c!108013)) b!1075462))

(assert (= (and b!1075463 res!717032) b!1075452))

(assert (= (or b!1075463 b!1075462) bm!45529))

(assert (= (and b!1075459 res!717029) b!1075454))

(assert (= (and b!1075454 c!108016) b!1075444))

(assert (= (and b!1075454 (not c!108016)) b!1075451))

(assert (= (and b!1075444 res!717027) b!1075448))

(assert (= (or b!1075444 b!1075451) bm!45525))

(declare-fun b_lambda!16909 () Bool)

(assert (=> (not b_lambda!16909) (not b!1075455)))

(assert (=> b!1075455 t!32642))

(declare-fun b_and!35163 () Bool)

(assert (= b_and!35161 (and (=> t!32642 result!14835) b_and!35163)))

(assert (=> bm!45527 m!994289))

(assert (=> b!1075455 m!994341))

(declare-fun m!994409 () Bool)

(assert (=> b!1075455 m!994409))

(assert (=> b!1075455 m!994359))

(assert (=> b!1075455 m!994361))

(assert (=> b!1075455 m!994359))

(assert (=> b!1075455 m!994361))

(assert (=> b!1075455 m!994363))

(assert (=> b!1075455 m!994341))

(declare-fun m!994411 () Bool)

(assert (=> b!1075452 m!994411))

(assert (=> b!1075446 m!994341))

(assert (=> b!1075446 m!994341))

(assert (=> b!1075446 m!994343))

(assert (=> b!1075449 m!994341))

(assert (=> b!1075449 m!994341))

(assert (=> b!1075449 m!994343))

(assert (=> b!1075450 m!994341))

(assert (=> b!1075450 m!994341))

(declare-fun m!994413 () Bool)

(assert (=> b!1075450 m!994413))

(assert (=> d!129547 m!994303))

(declare-fun m!994415 () Bool)

(assert (=> b!1075445 m!994415))

(declare-fun m!994417 () Bool)

(assert (=> b!1075445 m!994417))

(declare-fun m!994419 () Bool)

(assert (=> b!1075445 m!994419))

(declare-fun m!994421 () Bool)

(assert (=> b!1075445 m!994421))

(assert (=> b!1075445 m!994289))

(declare-fun m!994423 () Bool)

(assert (=> b!1075445 m!994423))

(declare-fun m!994425 () Bool)

(assert (=> b!1075445 m!994425))

(assert (=> b!1075445 m!994341))

(declare-fun m!994427 () Bool)

(assert (=> b!1075445 m!994427))

(assert (=> b!1075445 m!994417))

(declare-fun m!994429 () Bool)

(assert (=> b!1075445 m!994429))

(declare-fun m!994431 () Bool)

(assert (=> b!1075445 m!994431))

(declare-fun m!994433 () Bool)

(assert (=> b!1075445 m!994433))

(assert (=> b!1075445 m!994415))

(declare-fun m!994435 () Bool)

(assert (=> b!1075445 m!994435))

(assert (=> b!1075445 m!994431))

(declare-fun m!994437 () Bool)

(assert (=> b!1075445 m!994437))

(declare-fun m!994439 () Bool)

(assert (=> b!1075445 m!994439))

(assert (=> b!1075445 m!994427))

(declare-fun m!994441 () Bool)

(assert (=> b!1075445 m!994441))

(declare-fun m!994443 () Bool)

(assert (=> b!1075445 m!994443))

(declare-fun m!994445 () Bool)

(assert (=> b!1075460 m!994445))

(declare-fun m!994447 () Bool)

(assert (=> bm!45525 m!994447))

(declare-fun m!994449 () Bool)

(assert (=> bm!45524 m!994449))

(declare-fun m!994451 () Bool)

(assert (=> bm!45529 m!994451))

(declare-fun m!994453 () Bool)

(assert (=> b!1075448 m!994453))

(assert (=> b!1075326 d!129547))

(declare-fun d!129549 () Bool)

(declare-fun lt!477428 () ListLongMap!14687)

(assert (=> d!129549 (not (contains!6362 lt!477428 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun removeStrictlySorted!77 (List!23279 (_ BitVec 64)) List!23279)

(assert (=> d!129549 (= lt!477428 (ListLongMap!14688 (removeStrictlySorted!77 (toList!7359 lt!477302) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!129549 (= (-!710 lt!477302 #b0000000000000000000000000000000000000000000000000000000000000000) lt!477428)))

(declare-fun bs!31679 () Bool)

(assert (= bs!31679 d!129549))

(declare-fun m!994455 () Bool)

(assert (=> bs!31679 m!994455))

(declare-fun m!994457 () Bool)

(assert (=> bs!31679 m!994457))

(assert (=> b!1075326 d!129549))

(declare-fun d!129551 () Bool)

(assert (=> d!129551 (= (-!710 lt!477302 #b0000000000000000000000000000000000000000000000000000000000000000) lt!477302)))

(declare-fun lt!477431 () Unit!35351)

(declare-fun choose!1760 (ListLongMap!14687 (_ BitVec 64)) Unit!35351)

(assert (=> d!129551 (= lt!477431 (choose!1760 lt!477302 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!129551 (not (contains!6362 lt!477302 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!129551 (= (removeNotPresentStillSame!74 lt!477302 #b0000000000000000000000000000000000000000000000000000000000000000) lt!477431)))

(declare-fun bs!31680 () Bool)

(assert (= bs!31680 d!129551))

(assert (=> bs!31680 m!994297))

(declare-fun m!994459 () Bool)

(assert (=> bs!31680 m!994459))

(assert (=> bs!31680 m!994309))

(assert (=> b!1075326 d!129551))

(declare-fun bm!45533 () Bool)

(declare-fun call!45536 () Bool)

(assert (=> bm!45533 (= call!45536 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1163 mask!1515))))

(declare-fun d!129553 () Bool)

(declare-fun res!717040 () Bool)

(declare-fun e!614700 () Bool)

(assert (=> d!129553 (=> res!717040 e!614700)))

(assert (=> d!129553 (= res!717040 (bvsge #b00000000000000000000000000000000 (size!33705 _keys!1163)))))

(assert (=> d!129553 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515) e!614700)))

(declare-fun b!1075473 () Bool)

(declare-fun e!614699 () Bool)

(assert (=> b!1075473 (= e!614700 e!614699)))

(declare-fun c!108020 () Bool)

(assert (=> b!1075473 (= c!108020 (validKeyInArray!0 (select (arr!33168 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun b!1075474 () Bool)

(declare-fun e!614701 () Bool)

(assert (=> b!1075474 (= e!614701 call!45536)))

(declare-fun b!1075475 () Bool)

(assert (=> b!1075475 (= e!614699 e!614701)))

(declare-fun lt!477438 () (_ BitVec 64))

(assert (=> b!1075475 (= lt!477438 (select (arr!33168 _keys!1163) #b00000000000000000000000000000000))))

(declare-fun lt!477439 () Unit!35351)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!68970 (_ BitVec 64) (_ BitVec 32)) Unit!35351)

(assert (=> b!1075475 (= lt!477439 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1163 lt!477438 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!68970 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1075475 (arrayContainsKey!0 _keys!1163 lt!477438 #b00000000000000000000000000000000)))

(declare-fun lt!477440 () Unit!35351)

(assert (=> b!1075475 (= lt!477440 lt!477439)))

(declare-fun res!717039 () Bool)

(declare-datatypes ((SeekEntryResult!9889 0))(
  ( (MissingZero!9889 (index!41926 (_ BitVec 32))) (Found!9889 (index!41927 (_ BitVec 32))) (Intermediate!9889 (undefined!10701 Bool) (index!41928 (_ BitVec 32)) (x!96374 (_ BitVec 32))) (Undefined!9889) (MissingVacant!9889 (index!41929 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!68970 (_ BitVec 32)) SeekEntryResult!9889)

(assert (=> b!1075475 (= res!717039 (= (seekEntryOrOpen!0 (select (arr!33168 _keys!1163) #b00000000000000000000000000000000) _keys!1163 mask!1515) (Found!9889 #b00000000000000000000000000000000)))))

(assert (=> b!1075475 (=> (not res!717039) (not e!614701))))

(declare-fun b!1075476 () Bool)

(assert (=> b!1075476 (= e!614699 call!45536)))

(assert (= (and d!129553 (not res!717040)) b!1075473))

(assert (= (and b!1075473 c!108020) b!1075475))

(assert (= (and b!1075473 (not c!108020)) b!1075476))

(assert (= (and b!1075475 res!717039) b!1075474))

(assert (= (or b!1075474 b!1075476) bm!45533))

(declare-fun m!994461 () Bool)

(assert (=> bm!45533 m!994461))

(assert (=> b!1075473 m!994341))

(assert (=> b!1075473 m!994341))

(assert (=> b!1075473 m!994343))

(assert (=> b!1075475 m!994341))

(declare-fun m!994463 () Bool)

(assert (=> b!1075475 m!994463))

(declare-fun m!994465 () Bool)

(assert (=> b!1075475 m!994465))

(assert (=> b!1075475 m!994341))

(declare-fun m!994467 () Bool)

(assert (=> b!1075475 m!994467))

(assert (=> b!1075325 d!129553))

(declare-fun d!129555 () Bool)

(assert (=> d!129555 (= (getCurrentListMapNoExtraKeys!3886 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963) (getCurrentListMapNoExtraKeys!3886 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun lt!477443 () Unit!35351)

(declare-fun choose!1761 (array!68970 array!68968 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39827 V!39827 V!39827 V!39827 (_ BitVec 32) Int) Unit!35351)

(assert (=> d!129555 (= lt!477443 (choose!1761 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> d!129555 (validMask!0 mask!1515)))

(assert (=> d!129555 (= (lemmaNoChangeToArrayThenSameMapNoExtras!905 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963) lt!477443)))

(declare-fun bs!31681 () Bool)

(assert (= bs!31681 d!129555))

(assert (=> bs!31681 m!994291))

(assert (=> bs!31681 m!994289))

(declare-fun m!994469 () Bool)

(assert (=> bs!31681 m!994469))

(assert (=> bs!31681 m!994303))

(assert (=> b!1075320 d!129555))

(declare-fun e!614720 () Bool)

(declare-fun lt!477461 () ListLongMap!14687)

(declare-fun b!1075501 () Bool)

(assert (=> b!1075501 (= e!614720 (= lt!477461 (getCurrentListMapNoExtraKeys!3886 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!963)))))

(declare-fun b!1075502 () Bool)

(declare-fun e!614716 () ListLongMap!14687)

(declare-fun call!45539 () ListLongMap!14687)

(assert (=> b!1075502 (= e!614716 call!45539)))

(declare-fun b!1075503 () Bool)

(declare-fun e!614717 () Bool)

(assert (=> b!1075503 (= e!614717 (validKeyInArray!0 (select (arr!33168 _keys!1163) #b00000000000000000000000000000000)))))

(assert (=> b!1075503 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!1075504 () Bool)

(assert (=> b!1075504 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33705 _keys!1163)))))

(assert (=> b!1075504 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33704 _values!955)))))

(declare-fun e!614719 () Bool)

(assert (=> b!1075504 (= e!614719 (= (apply!974 lt!477461 (select (arr!33168 _keys!1163) #b00000000000000000000000000000000)) (get!17248 (select (arr!33167 _values!955) #b00000000000000000000000000000000) (dynLambda!2050 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun d!129557 () Bool)

(declare-fun e!614718 () Bool)

(assert (=> d!129557 e!614718))

(declare-fun res!717051 () Bool)

(assert (=> d!129557 (=> (not res!717051) (not e!614718))))

(assert (=> d!129557 (= res!717051 (not (contains!6362 lt!477461 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!614722 () ListLongMap!14687)

(assert (=> d!129557 (= lt!477461 e!614722)))

(declare-fun c!108029 () Bool)

(assert (=> d!129557 (= c!108029 (bvsge #b00000000000000000000000000000000 (size!33705 _keys!1163)))))

(assert (=> d!129557 (validMask!0 mask!1515)))

(assert (=> d!129557 (= (getCurrentListMapNoExtraKeys!3886 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963) lt!477461)))

(declare-fun b!1075505 () Bool)

(assert (=> b!1075505 (= e!614722 (ListLongMap!14688 Nil!23276))))

(declare-fun b!1075506 () Bool)

(declare-fun e!614721 () Bool)

(assert (=> b!1075506 (= e!614718 e!614721)))

(declare-fun c!108031 () Bool)

(assert (=> b!1075506 (= c!108031 e!614717)))

(declare-fun res!717052 () Bool)

(assert (=> b!1075506 (=> (not res!717052) (not e!614717))))

(assert (=> b!1075506 (= res!717052 (bvslt #b00000000000000000000000000000000 (size!33705 _keys!1163)))))

(declare-fun b!1075507 () Bool)

(assert (=> b!1075507 (= e!614722 e!614716)))

(declare-fun c!108032 () Bool)

(assert (=> b!1075507 (= c!108032 (validKeyInArray!0 (select (arr!33168 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun b!1075508 () Bool)

(declare-fun lt!477462 () Unit!35351)

(declare-fun lt!477460 () Unit!35351)

(assert (=> b!1075508 (= lt!477462 lt!477460)))

(declare-fun lt!477459 () ListLongMap!14687)

(declare-fun lt!477463 () V!39827)

(declare-fun lt!477464 () (_ BitVec 64))

(declare-fun lt!477458 () (_ BitVec 64))

(assert (=> b!1075508 (not (contains!6362 (+!3184 lt!477459 (tuple2!16707 lt!477458 lt!477463)) lt!477464))))

(declare-fun addStillNotContains!269 (ListLongMap!14687 (_ BitVec 64) V!39827 (_ BitVec 64)) Unit!35351)

(assert (=> b!1075508 (= lt!477460 (addStillNotContains!269 lt!477459 lt!477458 lt!477463 lt!477464))))

(assert (=> b!1075508 (= lt!477464 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1075508 (= lt!477463 (get!17248 (select (arr!33167 _values!955) #b00000000000000000000000000000000) (dynLambda!2050 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1075508 (= lt!477458 (select (arr!33168 _keys!1163) #b00000000000000000000000000000000))))

(assert (=> b!1075508 (= lt!477459 call!45539)))

(assert (=> b!1075508 (= e!614716 (+!3184 call!45539 (tuple2!16707 (select (arr!33168 _keys!1163) #b00000000000000000000000000000000) (get!17248 (select (arr!33167 _values!955) #b00000000000000000000000000000000) (dynLambda!2050 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1075509 () Bool)

(assert (=> b!1075509 (= e!614721 e!614719)))

(assert (=> b!1075509 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33705 _keys!1163)))))

(declare-fun res!717049 () Bool)

(assert (=> b!1075509 (= res!717049 (contains!6362 lt!477461 (select (arr!33168 _keys!1163) #b00000000000000000000000000000000)))))

(assert (=> b!1075509 (=> (not res!717049) (not e!614719))))

(declare-fun bm!45536 () Bool)

(assert (=> bm!45536 (= call!45539 (getCurrentListMapNoExtraKeys!3886 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!963))))

(declare-fun b!1075510 () Bool)

(assert (=> b!1075510 (= e!614721 e!614720)))

(declare-fun c!108030 () Bool)

(assert (=> b!1075510 (= c!108030 (bvslt #b00000000000000000000000000000000 (size!33705 _keys!1163)))))

(declare-fun b!1075511 () Bool)

(declare-fun isEmpty!960 (ListLongMap!14687) Bool)

(assert (=> b!1075511 (= e!614720 (isEmpty!960 lt!477461))))

(declare-fun b!1075512 () Bool)

(declare-fun res!717050 () Bool)

(assert (=> b!1075512 (=> (not res!717050) (not e!614718))))

(assert (=> b!1075512 (= res!717050 (not (contains!6362 lt!477461 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!129557 c!108029) b!1075505))

(assert (= (and d!129557 (not c!108029)) b!1075507))

(assert (= (and b!1075507 c!108032) b!1075508))

(assert (= (and b!1075507 (not c!108032)) b!1075502))

(assert (= (or b!1075508 b!1075502) bm!45536))

(assert (= (and d!129557 res!717051) b!1075512))

(assert (= (and b!1075512 res!717050) b!1075506))

(assert (= (and b!1075506 res!717052) b!1075503))

(assert (= (and b!1075506 c!108031) b!1075509))

(assert (= (and b!1075506 (not c!108031)) b!1075510))

(assert (= (and b!1075509 res!717049) b!1075504))

(assert (= (and b!1075510 c!108030) b!1075501))

(assert (= (and b!1075510 (not c!108030)) b!1075511))

(declare-fun b_lambda!16911 () Bool)

(assert (=> (not b_lambda!16911) (not b!1075504)))

(assert (=> b!1075504 t!32642))

(declare-fun b_and!35165 () Bool)

(assert (= b_and!35163 (and (=> t!32642 result!14835) b_and!35165)))

(declare-fun b_lambda!16913 () Bool)

(assert (=> (not b_lambda!16913) (not b!1075508)))

(assert (=> b!1075508 t!32642))

(declare-fun b_and!35167 () Bool)

(assert (= b_and!35165 (and (=> t!32642 result!14835) b_and!35167)))

(assert (=> b!1075509 m!994341))

(assert (=> b!1075509 m!994341))

(declare-fun m!994471 () Bool)

(assert (=> b!1075509 m!994471))

(assert (=> b!1075503 m!994341))

(assert (=> b!1075503 m!994341))

(assert (=> b!1075503 m!994343))

(declare-fun m!994473 () Bool)

(assert (=> b!1075512 m!994473))

(assert (=> b!1075504 m!994341))

(declare-fun m!994475 () Bool)

(assert (=> b!1075504 m!994475))

(assert (=> b!1075504 m!994359))

(assert (=> b!1075504 m!994361))

(assert (=> b!1075504 m!994363))

(assert (=> b!1075504 m!994341))

(assert (=> b!1075504 m!994359))

(assert (=> b!1075504 m!994361))

(declare-fun m!994477 () Bool)

(assert (=> b!1075511 m!994477))

(assert (=> b!1075508 m!994359))

(assert (=> b!1075508 m!994361))

(assert (=> b!1075508 m!994363))

(assert (=> b!1075508 m!994341))

(assert (=> b!1075508 m!994359))

(declare-fun m!994479 () Bool)

(assert (=> b!1075508 m!994479))

(assert (=> b!1075508 m!994361))

(declare-fun m!994481 () Bool)

(assert (=> b!1075508 m!994481))

(assert (=> b!1075508 m!994479))

(declare-fun m!994483 () Bool)

(assert (=> b!1075508 m!994483))

(declare-fun m!994485 () Bool)

(assert (=> b!1075508 m!994485))

(declare-fun m!994487 () Bool)

(assert (=> d!129557 m!994487))

(assert (=> d!129557 m!994303))

(assert (=> b!1075507 m!994341))

(assert (=> b!1075507 m!994341))

(assert (=> b!1075507 m!994343))

(declare-fun m!994489 () Bool)

(assert (=> b!1075501 m!994489))

(assert (=> bm!45536 m!994489))

(assert (=> b!1075320 d!129557))

(declare-fun b!1075513 () Bool)

(declare-fun lt!477468 () ListLongMap!14687)

(declare-fun e!614727 () Bool)

(assert (=> b!1075513 (= e!614727 (= lt!477468 (getCurrentListMapNoExtraKeys!3886 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!963)))))

(declare-fun b!1075514 () Bool)

(declare-fun e!614723 () ListLongMap!14687)

(declare-fun call!45540 () ListLongMap!14687)

(assert (=> b!1075514 (= e!614723 call!45540)))

(declare-fun b!1075515 () Bool)

(declare-fun e!614724 () Bool)

(assert (=> b!1075515 (= e!614724 (validKeyInArray!0 (select (arr!33168 _keys!1163) #b00000000000000000000000000000000)))))

(assert (=> b!1075515 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!1075516 () Bool)

(assert (=> b!1075516 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33705 _keys!1163)))))

(assert (=> b!1075516 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33704 _values!955)))))

(declare-fun e!614726 () Bool)

(assert (=> b!1075516 (= e!614726 (= (apply!974 lt!477468 (select (arr!33168 _keys!1163) #b00000000000000000000000000000000)) (get!17248 (select (arr!33167 _values!955) #b00000000000000000000000000000000) (dynLambda!2050 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun d!129559 () Bool)

(declare-fun e!614725 () Bool)

(assert (=> d!129559 e!614725))

(declare-fun res!717055 () Bool)

(assert (=> d!129559 (=> (not res!717055) (not e!614725))))

(assert (=> d!129559 (= res!717055 (not (contains!6362 lt!477468 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!614729 () ListLongMap!14687)

(assert (=> d!129559 (= lt!477468 e!614729)))

(declare-fun c!108033 () Bool)

(assert (=> d!129559 (= c!108033 (bvsge #b00000000000000000000000000000000 (size!33705 _keys!1163)))))

(assert (=> d!129559 (validMask!0 mask!1515)))

(assert (=> d!129559 (= (getCurrentListMapNoExtraKeys!3886 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963) lt!477468)))

(declare-fun b!1075517 () Bool)

(assert (=> b!1075517 (= e!614729 (ListLongMap!14688 Nil!23276))))

(declare-fun b!1075518 () Bool)

(declare-fun e!614728 () Bool)

(assert (=> b!1075518 (= e!614725 e!614728)))

(declare-fun c!108035 () Bool)

(assert (=> b!1075518 (= c!108035 e!614724)))

(declare-fun res!717056 () Bool)

(assert (=> b!1075518 (=> (not res!717056) (not e!614724))))

(assert (=> b!1075518 (= res!717056 (bvslt #b00000000000000000000000000000000 (size!33705 _keys!1163)))))

(declare-fun b!1075519 () Bool)

(assert (=> b!1075519 (= e!614729 e!614723)))

(declare-fun c!108036 () Bool)

(assert (=> b!1075519 (= c!108036 (validKeyInArray!0 (select (arr!33168 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun b!1075520 () Bool)

(declare-fun lt!477469 () Unit!35351)

(declare-fun lt!477467 () Unit!35351)

(assert (=> b!1075520 (= lt!477469 lt!477467)))

(declare-fun lt!477470 () V!39827)

(declare-fun lt!477471 () (_ BitVec 64))

(declare-fun lt!477466 () ListLongMap!14687)

(declare-fun lt!477465 () (_ BitVec 64))

(assert (=> b!1075520 (not (contains!6362 (+!3184 lt!477466 (tuple2!16707 lt!477465 lt!477470)) lt!477471))))

(assert (=> b!1075520 (= lt!477467 (addStillNotContains!269 lt!477466 lt!477465 lt!477470 lt!477471))))

(assert (=> b!1075520 (= lt!477471 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1075520 (= lt!477470 (get!17248 (select (arr!33167 _values!955) #b00000000000000000000000000000000) (dynLambda!2050 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1075520 (= lt!477465 (select (arr!33168 _keys!1163) #b00000000000000000000000000000000))))

(assert (=> b!1075520 (= lt!477466 call!45540)))

(assert (=> b!1075520 (= e!614723 (+!3184 call!45540 (tuple2!16707 (select (arr!33168 _keys!1163) #b00000000000000000000000000000000) (get!17248 (select (arr!33167 _values!955) #b00000000000000000000000000000000) (dynLambda!2050 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1075521 () Bool)

(assert (=> b!1075521 (= e!614728 e!614726)))

(assert (=> b!1075521 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33705 _keys!1163)))))

(declare-fun res!717053 () Bool)

(assert (=> b!1075521 (= res!717053 (contains!6362 lt!477468 (select (arr!33168 _keys!1163) #b00000000000000000000000000000000)))))

(assert (=> b!1075521 (=> (not res!717053) (not e!614726))))

(declare-fun bm!45537 () Bool)

(assert (=> bm!45537 (= call!45540 (getCurrentListMapNoExtraKeys!3886 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!963))))

(declare-fun b!1075522 () Bool)

(assert (=> b!1075522 (= e!614728 e!614727)))

(declare-fun c!108034 () Bool)

(assert (=> b!1075522 (= c!108034 (bvslt #b00000000000000000000000000000000 (size!33705 _keys!1163)))))

(declare-fun b!1075523 () Bool)

(assert (=> b!1075523 (= e!614727 (isEmpty!960 lt!477468))))

(declare-fun b!1075524 () Bool)

(declare-fun res!717054 () Bool)

(assert (=> b!1075524 (=> (not res!717054) (not e!614725))))

(assert (=> b!1075524 (= res!717054 (not (contains!6362 lt!477468 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!129559 c!108033) b!1075517))

(assert (= (and d!129559 (not c!108033)) b!1075519))

(assert (= (and b!1075519 c!108036) b!1075520))

(assert (= (and b!1075519 (not c!108036)) b!1075514))

(assert (= (or b!1075520 b!1075514) bm!45537))

(assert (= (and d!129559 res!717055) b!1075524))

(assert (= (and b!1075524 res!717054) b!1075518))

(assert (= (and b!1075518 res!717056) b!1075515))

(assert (= (and b!1075518 c!108035) b!1075521))

(assert (= (and b!1075518 (not c!108035)) b!1075522))

(assert (= (and b!1075521 res!717053) b!1075516))

(assert (= (and b!1075522 c!108034) b!1075513))

(assert (= (and b!1075522 (not c!108034)) b!1075523))

(declare-fun b_lambda!16915 () Bool)

(assert (=> (not b_lambda!16915) (not b!1075516)))

(assert (=> b!1075516 t!32642))

(declare-fun b_and!35169 () Bool)

(assert (= b_and!35167 (and (=> t!32642 result!14835) b_and!35169)))

(declare-fun b_lambda!16917 () Bool)

(assert (=> (not b_lambda!16917) (not b!1075520)))

(assert (=> b!1075520 t!32642))

(declare-fun b_and!35171 () Bool)

(assert (= b_and!35169 (and (=> t!32642 result!14835) b_and!35171)))

(assert (=> b!1075521 m!994341))

(assert (=> b!1075521 m!994341))

(declare-fun m!994491 () Bool)

(assert (=> b!1075521 m!994491))

(assert (=> b!1075515 m!994341))

(assert (=> b!1075515 m!994341))

(assert (=> b!1075515 m!994343))

(declare-fun m!994493 () Bool)

(assert (=> b!1075524 m!994493))

(assert (=> b!1075516 m!994341))

(declare-fun m!994495 () Bool)

(assert (=> b!1075516 m!994495))

(assert (=> b!1075516 m!994359))

(assert (=> b!1075516 m!994361))

(assert (=> b!1075516 m!994363))

(assert (=> b!1075516 m!994341))

(assert (=> b!1075516 m!994359))

(assert (=> b!1075516 m!994361))

(declare-fun m!994497 () Bool)

(assert (=> b!1075523 m!994497))

(assert (=> b!1075520 m!994359))

(assert (=> b!1075520 m!994361))

(assert (=> b!1075520 m!994363))

(assert (=> b!1075520 m!994341))

(assert (=> b!1075520 m!994359))

(declare-fun m!994499 () Bool)

(assert (=> b!1075520 m!994499))

(assert (=> b!1075520 m!994361))

(declare-fun m!994501 () Bool)

(assert (=> b!1075520 m!994501))

(assert (=> b!1075520 m!994499))

(declare-fun m!994503 () Bool)

(assert (=> b!1075520 m!994503))

(declare-fun m!994505 () Bool)

(assert (=> b!1075520 m!994505))

(declare-fun m!994507 () Bool)

(assert (=> d!129559 m!994507))

(assert (=> d!129559 m!994303))

(assert (=> b!1075519 m!994341))

(assert (=> b!1075519 m!994341))

(assert (=> b!1075519 m!994343))

(declare-fun m!994509 () Bool)

(assert (=> b!1075513 m!994509))

(assert (=> bm!45537 m!994509))

(assert (=> b!1075320 d!129559))

(declare-fun d!129561 () Bool)

(assert (=> d!129561 (= (validMask!0 mask!1515) (and (or (= mask!1515 #b00000000000000000000000000000111) (= mask!1515 #b00000000000000000000000000001111) (= mask!1515 #b00000000000000000000000000011111) (= mask!1515 #b00000000000000000000000000111111) (= mask!1515 #b00000000000000000000000001111111) (= mask!1515 #b00000000000000000000000011111111) (= mask!1515 #b00000000000000000000000111111111) (= mask!1515 #b00000000000000000000001111111111) (= mask!1515 #b00000000000000000000011111111111) (= mask!1515 #b00000000000000000000111111111111) (= mask!1515 #b00000000000000000001111111111111) (= mask!1515 #b00000000000000000011111111111111) (= mask!1515 #b00000000000000000111111111111111) (= mask!1515 #b00000000000000001111111111111111) (= mask!1515 #b00000000000000011111111111111111) (= mask!1515 #b00000000000000111111111111111111) (= mask!1515 #b00000000000001111111111111111111) (= mask!1515 #b00000000000011111111111111111111) (= mask!1515 #b00000000000111111111111111111111) (= mask!1515 #b00000000001111111111111111111111) (= mask!1515 #b00000000011111111111111111111111) (= mask!1515 #b00000000111111111111111111111111) (= mask!1515 #b00000001111111111111111111111111) (= mask!1515 #b00000011111111111111111111111111) (= mask!1515 #b00000111111111111111111111111111) (= mask!1515 #b00001111111111111111111111111111) (= mask!1515 #b00011111111111111111111111111111) (= mask!1515 #b00111111111111111111111111111111)) (bvsle mask!1515 #b00111111111111111111111111111111)))))

(assert (=> start!95166 d!129561))

(declare-fun d!129563 () Bool)

(assert (=> d!129563 (= (array_inv!25482 _values!955) (bvsge (size!33704 _values!955) #b00000000000000000000000000000000))))

(assert (=> start!95166 d!129563))

(declare-fun d!129565 () Bool)

(assert (=> d!129565 (= (array_inv!25483 _keys!1163) (bvsge (size!33705 _keys!1163) #b00000000000000000000000000000000))))

(assert (=> start!95166 d!129565))

(declare-fun b!1075531 () Bool)

(declare-fun e!614735 () Bool)

(assert (=> b!1075531 (= e!614735 tp_is_empty!26019)))

(declare-fun mapNonEmpty!40768 () Bool)

(declare-fun mapRes!40768 () Bool)

(declare-fun tp!78123 () Bool)

(assert (=> mapNonEmpty!40768 (= mapRes!40768 (and tp!78123 e!614735))))

(declare-fun mapValue!40768 () ValueCell!12306)

(declare-fun mapRest!40768 () (Array (_ BitVec 32) ValueCell!12306))

(declare-fun mapKey!40768 () (_ BitVec 32))

(assert (=> mapNonEmpty!40768 (= mapRest!40762 (store mapRest!40768 mapKey!40768 mapValue!40768))))

(declare-fun mapIsEmpty!40768 () Bool)

(assert (=> mapIsEmpty!40768 mapRes!40768))

(declare-fun b!1075532 () Bool)

(declare-fun e!614734 () Bool)

(assert (=> b!1075532 (= e!614734 tp_is_empty!26019)))

(declare-fun condMapEmpty!40768 () Bool)

(declare-fun mapDefault!40768 () ValueCell!12306)

(assert (=> mapNonEmpty!40762 (= condMapEmpty!40768 (= mapRest!40762 ((as const (Array (_ BitVec 32) ValueCell!12306)) mapDefault!40768)))))

(assert (=> mapNonEmpty!40762 (= tp!78113 (and e!614734 mapRes!40768))))

(assert (= (and mapNonEmpty!40762 condMapEmpty!40768) mapIsEmpty!40768))

(assert (= (and mapNonEmpty!40762 (not condMapEmpty!40768)) mapNonEmpty!40768))

(assert (= (and mapNonEmpty!40768 ((_ is ValueCellFull!12306) mapValue!40768)) b!1075531))

(assert (= (and mapNonEmpty!40762 ((_ is ValueCellFull!12306) mapDefault!40768)) b!1075532))

(declare-fun m!994511 () Bool)

(assert (=> mapNonEmpty!40768 m!994511))

(declare-fun b_lambda!16919 () Bool)

(assert (= b_lambda!16913 (or (and start!95166 b_free!22209) b_lambda!16919)))

(declare-fun b_lambda!16921 () Bool)

(assert (= b_lambda!16909 (or (and start!95166 b_free!22209) b_lambda!16921)))

(declare-fun b_lambda!16923 () Bool)

(assert (= b_lambda!16917 (or (and start!95166 b_free!22209) b_lambda!16923)))

(declare-fun b_lambda!16925 () Bool)

(assert (= b_lambda!16915 (or (and start!95166 b_free!22209) b_lambda!16925)))

(declare-fun b_lambda!16927 () Bool)

(assert (= b_lambda!16907 (or (and start!95166 b_free!22209) b_lambda!16927)))

(declare-fun b_lambda!16929 () Bool)

(assert (= b_lambda!16911 (or (and start!95166 b_free!22209) b_lambda!16929)))

(check-sat (not b!1075425) (not d!129555) (not b!1075376) (not bm!45525) (not b!1075513) (not b!1075504) (not b!1075507) (not b!1075426) (not b!1075511) (not bm!45502) (not b!1075519) (not b!1075450) (not b!1075524) (not d!129557) (not b!1075523) (not bm!45527) (not b!1075429) (not b!1075508) (not b_lambda!16921) (not b!1075449) (not b!1075432) (not b!1075501) (not b!1075422) (not d!129545) (not b!1075503) (not b!1075473) (not b!1075521) b_and!35171 (not b!1075365) (not d!129547) (not d!129559) (not bm!45524) (not bm!45536) (not b!1075427) (not b!1075512) (not bm!45533) (not mapNonEmpty!40768) (not b!1075448) (not d!129551) (not b!1075452) (not b!1075520) (not bm!45537) (not b_lambda!16929) (not b_lambda!16927) (not d!129543) (not bm!45529) (not b!1075378) (not b!1075516) (not b!1075446) (not b!1075515) (not bm!45522) (not b_lambda!16923) (not d!129549) (not b!1075455) (not b_lambda!16919) (not b_lambda!16925) (not b!1075423) (not b!1075437) (not bm!45517) (not bm!45518) (not b!1075475) (not b_next!22209) (not b!1075369) (not b!1075460) (not b!1075509) (not b!1075367) (not b!1075445) (not bm!45520) tp_is_empty!26019)
(check-sat b_and!35171 (not b_next!22209))

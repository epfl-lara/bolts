; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!93988 () Bool)

(assert start!93988)

(declare-fun b_free!21411 () Bool)

(declare-fun b_next!21411 () Bool)

(assert (=> start!93988 (= b_free!21411 (not b_next!21411))))

(declare-fun tp!75660 () Bool)

(declare-fun b_and!34151 () Bool)

(assert (=> start!93988 (= tp!75660 b_and!34151)))

(declare-fun b!1062575 () Bool)

(declare-fun e!605348 () Bool)

(declare-fun e!605350 () Bool)

(assert (=> b!1062575 (= e!605348 (not e!605350))))

(declare-fun res!709613 () Bool)

(assert (=> b!1062575 (=> res!709613 e!605350)))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1062575 (= res!709613 (or (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-datatypes ((V!38763 0))(
  ( (V!38764 (val!12661 Int)) )
))
(declare-datatypes ((tuple2!16108 0))(
  ( (tuple2!16109 (_1!8064 (_ BitVec 64)) (_2!8064 V!38763)) )
))
(declare-datatypes ((List!22719 0))(
  ( (Nil!22716) (Cons!22715 (h!23924 tuple2!16108) (t!32037 List!22719)) )
))
(declare-datatypes ((ListLongMap!14089 0))(
  ( (ListLongMap!14090 (toList!7060 List!22719)) )
))
(declare-fun lt!468182 () ListLongMap!14089)

(declare-fun lt!468180 () ListLongMap!14089)

(assert (=> b!1062575 (= lt!468182 lt!468180)))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-datatypes ((ValueCell!11907 0))(
  ( (ValueCellFull!11907 (v!15272 V!38763)) (EmptyCell!11907) )
))
(declare-datatypes ((array!67416 0))(
  ( (array!67417 (arr!32411 (Array (_ BitVec 32) ValueCell!11907)) (size!32948 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67416)

(declare-fun minValue!907 () V!38763)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-datatypes ((Unit!34789 0))(
  ( (Unit!34790) )
))
(declare-fun lt!468181 () Unit!34789)

(declare-fun zeroValueBefore!47 () V!38763)

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!38763)

(declare-datatypes ((array!67418 0))(
  ( (array!67419 (arr!32412 (Array (_ BitVec 32) (_ BitVec 64))) (size!32949 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67418)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!659 (array!67418 array!67416 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!38763 V!38763 V!38763 V!38763 (_ BitVec 32) Int) Unit!34789)

(assert (=> b!1062575 (= lt!468181 (lemmaNoChangeToArrayThenSameMapNoExtras!659 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3620 (array!67418 array!67416 (_ BitVec 32) (_ BitVec 32) V!38763 V!38763 (_ BitVec 32) Int) ListLongMap!14089)

(assert (=> b!1062575 (= lt!468180 (getCurrentListMapNoExtraKeys!3620 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1062575 (= lt!468182 (getCurrentListMapNoExtraKeys!3620 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun mapIsEmpty!39505 () Bool)

(declare-fun mapRes!39505 () Bool)

(assert (=> mapIsEmpty!39505 mapRes!39505))

(declare-fun b!1062576 () Bool)

(declare-fun res!709610 () Bool)

(assert (=> b!1062576 (=> (not res!709610) (not e!605348))))

(assert (=> b!1062576 (= res!709610 (and (= (size!32948 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!32949 _keys!1163) (size!32948 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1062577 () Bool)

(declare-fun e!605349 () Bool)

(assert (=> b!1062577 (= e!605349 (bvsle #b00000000000000000000000000000000 (size!32949 _keys!1163)))))

(declare-fun lt!468179 () ListLongMap!14089)

(declare-fun -!573 (ListLongMap!14089 (_ BitVec 64)) ListLongMap!14089)

(assert (=> b!1062577 (= (-!573 lt!468179 #b0000000000000000000000000000000000000000000000000000000000000000) lt!468179)))

(declare-fun lt!468183 () Unit!34789)

(declare-fun removeNotPresentStillSame!19 (ListLongMap!14089 (_ BitVec 64)) Unit!34789)

(assert (=> b!1062577 (= lt!468183 (removeNotPresentStillSame!19 lt!468179 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun res!709612 () Bool)

(assert (=> start!93988 (=> (not res!709612) (not e!605348))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!93988 (= res!709612 (validMask!0 mask!1515))))

(assert (=> start!93988 e!605348))

(assert (=> start!93988 true))

(declare-fun tp_is_empty!25221 () Bool)

(assert (=> start!93988 tp_is_empty!25221))

(declare-fun e!605346 () Bool)

(declare-fun array_inv!24946 (array!67416) Bool)

(assert (=> start!93988 (and (array_inv!24946 _values!955) e!605346)))

(assert (=> start!93988 tp!75660))

(declare-fun array_inv!24947 (array!67418) Bool)

(assert (=> start!93988 (array_inv!24947 _keys!1163)))

(declare-fun b!1062578 () Bool)

(declare-fun res!709614 () Bool)

(assert (=> b!1062578 (=> (not res!709614) (not e!605348))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!67418 (_ BitVec 32)) Bool)

(assert (=> b!1062578 (= res!709614 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1062579 () Bool)

(assert (=> b!1062579 (= e!605350 e!605349)))

(declare-fun res!709611 () Bool)

(assert (=> b!1062579 (=> res!709611 e!605349)))

(declare-fun contains!6255 (ListLongMap!14089 (_ BitVec 64)) Bool)

(assert (=> b!1062579 (= res!709611 (contains!6255 lt!468179 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun getCurrentListMap!4005 (array!67418 array!67416 (_ BitVec 32) (_ BitVec 32) V!38763 V!38763 (_ BitVec 32) Int) ListLongMap!14089)

(assert (=> b!1062579 (= lt!468179 (getCurrentListMap!4005 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1062580 () Bool)

(declare-fun res!709615 () Bool)

(assert (=> b!1062580 (=> (not res!709615) (not e!605348))))

(declare-datatypes ((List!22720 0))(
  ( (Nil!22717) (Cons!22716 (h!23925 (_ BitVec 64)) (t!32038 List!22720)) )
))
(declare-fun arrayNoDuplicates!0 (array!67418 (_ BitVec 32) List!22720) Bool)

(assert (=> b!1062580 (= res!709615 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22717))))

(declare-fun b!1062581 () Bool)

(declare-fun e!605347 () Bool)

(assert (=> b!1062581 (= e!605347 tp_is_empty!25221)))

(declare-fun b!1062582 () Bool)

(declare-fun e!605352 () Bool)

(assert (=> b!1062582 (= e!605346 (and e!605352 mapRes!39505))))

(declare-fun condMapEmpty!39505 () Bool)

(declare-fun mapDefault!39505 () ValueCell!11907)

(assert (=> b!1062582 (= condMapEmpty!39505 (= (arr!32411 _values!955) ((as const (Array (_ BitVec 32) ValueCell!11907)) mapDefault!39505)))))

(declare-fun mapNonEmpty!39505 () Bool)

(declare-fun tp!75659 () Bool)

(assert (=> mapNonEmpty!39505 (= mapRes!39505 (and tp!75659 e!605347))))

(declare-fun mapKey!39505 () (_ BitVec 32))

(declare-fun mapValue!39505 () ValueCell!11907)

(declare-fun mapRest!39505 () (Array (_ BitVec 32) ValueCell!11907))

(assert (=> mapNonEmpty!39505 (= (arr!32411 _values!955) (store mapRest!39505 mapKey!39505 mapValue!39505))))

(declare-fun b!1062583 () Bool)

(assert (=> b!1062583 (= e!605352 tp_is_empty!25221)))

(assert (= (and start!93988 res!709612) b!1062576))

(assert (= (and b!1062576 res!709610) b!1062578))

(assert (= (and b!1062578 res!709614) b!1062580))

(assert (= (and b!1062580 res!709615) b!1062575))

(assert (= (and b!1062575 (not res!709613)) b!1062579))

(assert (= (and b!1062579 (not res!709611)) b!1062577))

(assert (= (and b!1062582 condMapEmpty!39505) mapIsEmpty!39505))

(assert (= (and b!1062582 (not condMapEmpty!39505)) mapNonEmpty!39505))

(get-info :version)

(assert (= (and mapNonEmpty!39505 ((_ is ValueCellFull!11907) mapValue!39505)) b!1062581))

(assert (= (and b!1062582 ((_ is ValueCellFull!11907) mapDefault!39505)) b!1062583))

(assert (= start!93988 b!1062582))

(declare-fun m!981457 () Bool)

(assert (=> start!93988 m!981457))

(declare-fun m!981459 () Bool)

(assert (=> start!93988 m!981459))

(declare-fun m!981461 () Bool)

(assert (=> start!93988 m!981461))

(declare-fun m!981463 () Bool)

(assert (=> mapNonEmpty!39505 m!981463))

(declare-fun m!981465 () Bool)

(assert (=> b!1062575 m!981465))

(declare-fun m!981467 () Bool)

(assert (=> b!1062575 m!981467))

(declare-fun m!981469 () Bool)

(assert (=> b!1062575 m!981469))

(declare-fun m!981471 () Bool)

(assert (=> b!1062580 m!981471))

(declare-fun m!981473 () Bool)

(assert (=> b!1062577 m!981473))

(declare-fun m!981475 () Bool)

(assert (=> b!1062577 m!981475))

(declare-fun m!981477 () Bool)

(assert (=> b!1062579 m!981477))

(declare-fun m!981479 () Bool)

(assert (=> b!1062579 m!981479))

(declare-fun m!981481 () Bool)

(assert (=> b!1062578 m!981481))

(check-sat (not mapNonEmpty!39505) (not b!1062577) tp_is_empty!25221 (not b!1062579) (not b!1062578) (not b!1062580) (not b!1062575) (not start!93988) (not b_next!21411) b_and!34151)
(check-sat b_and!34151 (not b_next!21411))
(get-model)

(declare-fun b!1062621 () Bool)

(declare-fun e!605384 () Bool)

(declare-fun call!44913 () Bool)

(assert (=> b!1062621 (= e!605384 call!44913)))

(declare-fun b!1062622 () Bool)

(declare-fun e!605383 () Bool)

(assert (=> b!1062622 (= e!605383 e!605384)))

(declare-fun c!107190 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1062622 (= c!107190 (validKeyInArray!0 (select (arr!32412 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun b!1062623 () Bool)

(declare-fun e!605385 () Bool)

(declare-fun contains!6257 (List!22720 (_ BitVec 64)) Bool)

(assert (=> b!1062623 (= e!605385 (contains!6257 Nil!22717 (select (arr!32412 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun b!1062624 () Bool)

(assert (=> b!1062624 (= e!605384 call!44913)))

(declare-fun b!1062625 () Bool)

(declare-fun e!605382 () Bool)

(assert (=> b!1062625 (= e!605382 e!605383)))

(declare-fun res!709642 () Bool)

(assert (=> b!1062625 (=> (not res!709642) (not e!605383))))

(assert (=> b!1062625 (= res!709642 (not e!605385))))

(declare-fun res!709640 () Bool)

(assert (=> b!1062625 (=> (not res!709640) (not e!605385))))

(assert (=> b!1062625 (= res!709640 (validKeyInArray!0 (select (arr!32412 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun d!128815 () Bool)

(declare-fun res!709641 () Bool)

(assert (=> d!128815 (=> res!709641 e!605382)))

(assert (=> d!128815 (= res!709641 (bvsge #b00000000000000000000000000000000 (size!32949 _keys!1163)))))

(assert (=> d!128815 (= (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22717) e!605382)))

(declare-fun bm!44910 () Bool)

(assert (=> bm!44910 (= call!44913 (arrayNoDuplicates!0 _keys!1163 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!107190 (Cons!22716 (select (arr!32412 _keys!1163) #b00000000000000000000000000000000) Nil!22717) Nil!22717)))))

(assert (= (and d!128815 (not res!709641)) b!1062625))

(assert (= (and b!1062625 res!709640) b!1062623))

(assert (= (and b!1062625 res!709642) b!1062622))

(assert (= (and b!1062622 c!107190) b!1062621))

(assert (= (and b!1062622 (not c!107190)) b!1062624))

(assert (= (or b!1062621 b!1062624) bm!44910))

(declare-fun m!981509 () Bool)

(assert (=> b!1062622 m!981509))

(assert (=> b!1062622 m!981509))

(declare-fun m!981511 () Bool)

(assert (=> b!1062622 m!981511))

(assert (=> b!1062623 m!981509))

(assert (=> b!1062623 m!981509))

(declare-fun m!981513 () Bool)

(assert (=> b!1062623 m!981513))

(assert (=> b!1062625 m!981509))

(assert (=> b!1062625 m!981509))

(assert (=> b!1062625 m!981511))

(assert (=> bm!44910 m!981509))

(declare-fun m!981515 () Bool)

(assert (=> bm!44910 m!981515))

(assert (=> b!1062580 d!128815))

(declare-fun d!128817 () Bool)

(declare-fun e!605390 () Bool)

(assert (=> d!128817 e!605390))

(declare-fun res!709645 () Bool)

(assert (=> d!128817 (=> res!709645 e!605390)))

(declare-fun lt!468208 () Bool)

(assert (=> d!128817 (= res!709645 (not lt!468208))))

(declare-fun lt!468210 () Bool)

(assert (=> d!128817 (= lt!468208 lt!468210)))

(declare-fun lt!468209 () Unit!34789)

(declare-fun e!605391 () Unit!34789)

(assert (=> d!128817 (= lt!468209 e!605391)))

(declare-fun c!107193 () Bool)

(assert (=> d!128817 (= c!107193 lt!468210)))

(declare-fun containsKey!573 (List!22719 (_ BitVec 64)) Bool)

(assert (=> d!128817 (= lt!468210 (containsKey!573 (toList!7060 lt!468179) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!128817 (= (contains!6255 lt!468179 #b0000000000000000000000000000000000000000000000000000000000000000) lt!468208)))

(declare-fun b!1062632 () Bool)

(declare-fun lt!468207 () Unit!34789)

(assert (=> b!1062632 (= e!605391 lt!468207)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!405 (List!22719 (_ BitVec 64)) Unit!34789)

(assert (=> b!1062632 (= lt!468207 (lemmaContainsKeyImpliesGetValueByKeyDefined!405 (toList!7060 lt!468179) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Option!651 0))(
  ( (Some!650 (v!15274 V!38763)) (None!649) )
))
(declare-fun isDefined!445 (Option!651) Bool)

(declare-fun getValueByKey!600 (List!22719 (_ BitVec 64)) Option!651)

(assert (=> b!1062632 (isDefined!445 (getValueByKey!600 (toList!7060 lt!468179) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1062633 () Bool)

(declare-fun Unit!34793 () Unit!34789)

(assert (=> b!1062633 (= e!605391 Unit!34793)))

(declare-fun b!1062634 () Bool)

(assert (=> b!1062634 (= e!605390 (isDefined!445 (getValueByKey!600 (toList!7060 lt!468179) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!128817 c!107193) b!1062632))

(assert (= (and d!128817 (not c!107193)) b!1062633))

(assert (= (and d!128817 (not res!709645)) b!1062634))

(declare-fun m!981517 () Bool)

(assert (=> d!128817 m!981517))

(declare-fun m!981519 () Bool)

(assert (=> b!1062632 m!981519))

(declare-fun m!981521 () Bool)

(assert (=> b!1062632 m!981521))

(assert (=> b!1062632 m!981521))

(declare-fun m!981523 () Bool)

(assert (=> b!1062632 m!981523))

(assert (=> b!1062634 m!981521))

(assert (=> b!1062634 m!981521))

(assert (=> b!1062634 m!981523))

(assert (=> b!1062579 d!128817))

(declare-fun c!107206 () Bool)

(declare-fun call!44934 () ListLongMap!14089)

(declare-fun c!107208 () Bool)

(declare-fun call!44933 () ListLongMap!14089)

(declare-fun call!44930 () ListLongMap!14089)

(declare-fun bm!44925 () Bool)

(declare-fun call!44931 () ListLongMap!14089)

(declare-fun +!3077 (ListLongMap!14089 tuple2!16108) ListLongMap!14089)

(assert (=> bm!44925 (= call!44930 (+!3077 (ite c!107206 call!44934 (ite c!107208 call!44931 call!44933)) (ite (or c!107206 c!107208) (tuple2!16109 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47) (tuple2!16109 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907))))))

(declare-fun b!1062677 () Bool)

(declare-fun e!605424 () Unit!34789)

(declare-fun lt!468261 () Unit!34789)

(assert (=> b!1062677 (= e!605424 lt!468261)))

(declare-fun lt!468274 () ListLongMap!14089)

(assert (=> b!1062677 (= lt!468274 (getCurrentListMapNoExtraKeys!3620 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun lt!468263 () (_ BitVec 64))

(assert (=> b!1062677 (= lt!468263 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!468257 () (_ BitVec 64))

(assert (=> b!1062677 (= lt!468257 (select (arr!32412 _keys!1163) #b00000000000000000000000000000000))))

(declare-fun lt!468259 () Unit!34789)

(declare-fun addStillContains!640 (ListLongMap!14089 (_ BitVec 64) V!38763 (_ BitVec 64)) Unit!34789)

(assert (=> b!1062677 (= lt!468259 (addStillContains!640 lt!468274 lt!468263 zeroValueBefore!47 lt!468257))))

(assert (=> b!1062677 (contains!6255 (+!3077 lt!468274 (tuple2!16109 lt!468263 zeroValueBefore!47)) lt!468257)))

(declare-fun lt!468267 () Unit!34789)

(assert (=> b!1062677 (= lt!468267 lt!468259)))

(declare-fun lt!468266 () ListLongMap!14089)

(assert (=> b!1062677 (= lt!468266 (getCurrentListMapNoExtraKeys!3620 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun lt!468264 () (_ BitVec 64))

(assert (=> b!1062677 (= lt!468264 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!468269 () (_ BitVec 64))

(assert (=> b!1062677 (= lt!468269 (select (arr!32412 _keys!1163) #b00000000000000000000000000000000))))

(declare-fun lt!468260 () Unit!34789)

(declare-fun addApplyDifferent!492 (ListLongMap!14089 (_ BitVec 64) V!38763 (_ BitVec 64)) Unit!34789)

(assert (=> b!1062677 (= lt!468260 (addApplyDifferent!492 lt!468266 lt!468264 minValue!907 lt!468269))))

(declare-fun apply!954 (ListLongMap!14089 (_ BitVec 64)) V!38763)

(assert (=> b!1062677 (= (apply!954 (+!3077 lt!468266 (tuple2!16109 lt!468264 minValue!907)) lt!468269) (apply!954 lt!468266 lt!468269))))

(declare-fun lt!468273 () Unit!34789)

(assert (=> b!1062677 (= lt!468273 lt!468260)))

(declare-fun lt!468258 () ListLongMap!14089)

(assert (=> b!1062677 (= lt!468258 (getCurrentListMapNoExtraKeys!3620 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun lt!468265 () (_ BitVec 64))

(assert (=> b!1062677 (= lt!468265 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!468276 () (_ BitVec 64))

(assert (=> b!1062677 (= lt!468276 (select (arr!32412 _keys!1163) #b00000000000000000000000000000000))))

(declare-fun lt!468275 () Unit!34789)

(assert (=> b!1062677 (= lt!468275 (addApplyDifferent!492 lt!468258 lt!468265 zeroValueBefore!47 lt!468276))))

(assert (=> b!1062677 (= (apply!954 (+!3077 lt!468258 (tuple2!16109 lt!468265 zeroValueBefore!47)) lt!468276) (apply!954 lt!468258 lt!468276))))

(declare-fun lt!468272 () Unit!34789)

(assert (=> b!1062677 (= lt!468272 lt!468275)))

(declare-fun lt!468271 () ListLongMap!14089)

(assert (=> b!1062677 (= lt!468271 (getCurrentListMapNoExtraKeys!3620 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun lt!468262 () (_ BitVec 64))

(assert (=> b!1062677 (= lt!468262 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!468255 () (_ BitVec 64))

(assert (=> b!1062677 (= lt!468255 (select (arr!32412 _keys!1163) #b00000000000000000000000000000000))))

(assert (=> b!1062677 (= lt!468261 (addApplyDifferent!492 lt!468271 lt!468262 minValue!907 lt!468255))))

(assert (=> b!1062677 (= (apply!954 (+!3077 lt!468271 (tuple2!16109 lt!468262 minValue!907)) lt!468255) (apply!954 lt!468271 lt!468255))))

(declare-fun bm!44926 () Bool)

(assert (=> bm!44926 (= call!44931 call!44934)))

(declare-fun b!1062678 () Bool)

(declare-fun e!605425 () Bool)

(declare-fun lt!468256 () ListLongMap!14089)

(assert (=> b!1062678 (= e!605425 (= (apply!954 lt!468256 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValueBefore!47))))

(declare-fun b!1062679 () Bool)

(declare-fun e!605429 () ListLongMap!14089)

(assert (=> b!1062679 (= e!605429 call!44933)))

(declare-fun bm!44927 () Bool)

(declare-fun call!44928 () ListLongMap!14089)

(assert (=> bm!44927 (= call!44928 call!44930)))

(declare-fun b!1062680 () Bool)

(declare-fun e!605430 () Bool)

(declare-fun e!605418 () Bool)

(assert (=> b!1062680 (= e!605430 e!605418)))

(declare-fun res!709669 () Bool)

(declare-fun call!44929 () Bool)

(assert (=> b!1062680 (= res!709669 call!44929)))

(assert (=> b!1062680 (=> (not res!709669) (not e!605418))))

(declare-fun b!1062681 () Bool)

(declare-fun Unit!34794 () Unit!34789)

(assert (=> b!1062681 (= e!605424 Unit!34794)))

(declare-fun b!1062682 () Bool)

(declare-fun e!605426 () Bool)

(declare-fun call!44932 () Bool)

(assert (=> b!1062682 (= e!605426 (not call!44932))))

(declare-fun b!1062684 () Bool)

(assert (=> b!1062684 (= e!605418 (= (apply!954 lt!468256 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!907))))

(declare-fun b!1062685 () Bool)

(declare-fun c!107207 () Bool)

(assert (=> b!1062685 (= c!107207 (and (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!605422 () ListLongMap!14089)

(assert (=> b!1062685 (= e!605422 e!605429)))

(declare-fun b!1062686 () Bool)

(declare-fun e!605427 () ListLongMap!14089)

(assert (=> b!1062686 (= e!605427 (+!3077 call!44930 (tuple2!16109 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907)))))

(declare-fun b!1062687 () Bool)

(declare-fun e!605420 () Bool)

(assert (=> b!1062687 (= e!605420 (validKeyInArray!0 (select (arr!32412 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun bm!44928 () Bool)

(assert (=> bm!44928 (= call!44934 (getCurrentListMapNoExtraKeys!3620 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1062688 () Bool)

(declare-fun e!605421 () Bool)

(assert (=> b!1062688 (= e!605421 (validKeyInArray!0 (select (arr!32412 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun bm!44929 () Bool)

(assert (=> bm!44929 (= call!44932 (contains!6255 lt!468256 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1062689 () Bool)

(assert (=> b!1062689 (= e!605427 e!605422)))

(assert (=> b!1062689 (= c!107208 (and (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1062690 () Bool)

(declare-fun e!605419 () Bool)

(declare-fun e!605428 () Bool)

(assert (=> b!1062690 (= e!605419 e!605428)))

(declare-fun res!709664 () Bool)

(assert (=> b!1062690 (=> (not res!709664) (not e!605428))))

(assert (=> b!1062690 (= res!709664 (contains!6255 lt!468256 (select (arr!32412 _keys!1163) #b00000000000000000000000000000000)))))

(assert (=> b!1062690 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!32949 _keys!1163)))))

(declare-fun bm!44930 () Bool)

(assert (=> bm!44930 (= call!44933 call!44931)))

(declare-fun d!128819 () Bool)

(declare-fun e!605423 () Bool)

(assert (=> d!128819 e!605423))

(declare-fun res!709665 () Bool)

(assert (=> d!128819 (=> (not res!709665) (not e!605423))))

(assert (=> d!128819 (= res!709665 (or (bvsge #b00000000000000000000000000000000 (size!32949 _keys!1163)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!32949 _keys!1163)))))))

(declare-fun lt!468268 () ListLongMap!14089)

(assert (=> d!128819 (= lt!468256 lt!468268)))

(declare-fun lt!468270 () Unit!34789)

(assert (=> d!128819 (= lt!468270 e!605424)))

(declare-fun c!107211 () Bool)

(assert (=> d!128819 (= c!107211 e!605420)))

(declare-fun res!709672 () Bool)

(assert (=> d!128819 (=> (not res!709672) (not e!605420))))

(assert (=> d!128819 (= res!709672 (bvslt #b00000000000000000000000000000000 (size!32949 _keys!1163)))))

(assert (=> d!128819 (= lt!468268 e!605427)))

(assert (=> d!128819 (= c!107206 (and (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!128819 (validMask!0 mask!1515)))

(assert (=> d!128819 (= (getCurrentListMap!4005 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963) lt!468256)))

(declare-fun b!1062683 () Bool)

(assert (=> b!1062683 (= e!605430 (not call!44929))))

(declare-fun b!1062691 () Bool)

(assert (=> b!1062691 (= e!605426 e!605425)))

(declare-fun res!709667 () Bool)

(assert (=> b!1062691 (= res!709667 call!44932)))

(assert (=> b!1062691 (=> (not res!709667) (not e!605425))))

(declare-fun b!1062692 () Bool)

(assert (=> b!1062692 (= e!605429 call!44928)))

(declare-fun b!1062693 () Bool)

(assert (=> b!1062693 (= e!605423 e!605430)))

(declare-fun c!107209 () Bool)

(assert (=> b!1062693 (= c!107209 (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!44931 () Bool)

(assert (=> bm!44931 (= call!44929 (contains!6255 lt!468256 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1062694 () Bool)

(declare-fun res!709668 () Bool)

(assert (=> b!1062694 (=> (not res!709668) (not e!605423))))

(assert (=> b!1062694 (= res!709668 e!605419)))

(declare-fun res!709666 () Bool)

(assert (=> b!1062694 (=> res!709666 e!605419)))

(assert (=> b!1062694 (= res!709666 (not e!605421))))

(declare-fun res!709670 () Bool)

(assert (=> b!1062694 (=> (not res!709670) (not e!605421))))

(assert (=> b!1062694 (= res!709670 (bvslt #b00000000000000000000000000000000 (size!32949 _keys!1163)))))

(declare-fun b!1062695 () Bool)

(assert (=> b!1062695 (= e!605422 call!44928)))

(declare-fun b!1062696 () Bool)

(declare-fun get!16962 (ValueCell!11907 V!38763) V!38763)

(declare-fun dynLambda!2030 (Int (_ BitVec 64)) V!38763)

(assert (=> b!1062696 (= e!605428 (= (apply!954 lt!468256 (select (arr!32412 _keys!1163) #b00000000000000000000000000000000)) (get!16962 (select (arr!32411 _values!955) #b00000000000000000000000000000000) (dynLambda!2030 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1062696 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!32948 _values!955)))))

(assert (=> b!1062696 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!32949 _keys!1163)))))

(declare-fun b!1062697 () Bool)

(declare-fun res!709671 () Bool)

(assert (=> b!1062697 (=> (not res!709671) (not e!605423))))

(assert (=> b!1062697 (= res!709671 e!605426)))

(declare-fun c!107210 () Bool)

(assert (=> b!1062697 (= c!107210 (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (= (and d!128819 c!107206) b!1062686))

(assert (= (and d!128819 (not c!107206)) b!1062689))

(assert (= (and b!1062689 c!107208) b!1062695))

(assert (= (and b!1062689 (not c!107208)) b!1062685))

(assert (= (and b!1062685 c!107207) b!1062692))

(assert (= (and b!1062685 (not c!107207)) b!1062679))

(assert (= (or b!1062692 b!1062679) bm!44930))

(assert (= (or b!1062695 bm!44930) bm!44926))

(assert (= (or b!1062695 b!1062692) bm!44927))

(assert (= (or b!1062686 bm!44926) bm!44928))

(assert (= (or b!1062686 bm!44927) bm!44925))

(assert (= (and d!128819 res!709672) b!1062687))

(assert (= (and d!128819 c!107211) b!1062677))

(assert (= (and d!128819 (not c!107211)) b!1062681))

(assert (= (and d!128819 res!709665) b!1062694))

(assert (= (and b!1062694 res!709670) b!1062688))

(assert (= (and b!1062694 (not res!709666)) b!1062690))

(assert (= (and b!1062690 res!709664) b!1062696))

(assert (= (and b!1062694 res!709668) b!1062697))

(assert (= (and b!1062697 c!107210) b!1062691))

(assert (= (and b!1062697 (not c!107210)) b!1062682))

(assert (= (and b!1062691 res!709667) b!1062678))

(assert (= (or b!1062691 b!1062682) bm!44929))

(assert (= (and b!1062697 res!709671) b!1062693))

(assert (= (and b!1062693 c!107209) b!1062680))

(assert (= (and b!1062693 (not c!107209)) b!1062683))

(assert (= (and b!1062680 res!709669) b!1062684))

(assert (= (or b!1062680 b!1062683) bm!44931))

(declare-fun b_lambda!16491 () Bool)

(assert (=> (not b_lambda!16491) (not b!1062696)))

(declare-fun t!32042 () Bool)

(declare-fun tb!7141 () Bool)

(assert (=> (and start!93988 (= defaultEntry!963 defaultEntry!963) t!32042) tb!7141))

(declare-fun result!14715 () Bool)

(assert (=> tb!7141 (= result!14715 tp_is_empty!25221)))

(assert (=> b!1062696 t!32042))

(declare-fun b_and!34155 () Bool)

(assert (= b_and!34151 (and (=> t!32042 result!14715) b_and!34155)))

(declare-fun m!981525 () Bool)

(assert (=> bm!44929 m!981525))

(assert (=> bm!44928 m!981469))

(declare-fun m!981527 () Bool)

(assert (=> b!1062678 m!981527))

(declare-fun m!981529 () Bool)

(assert (=> b!1062684 m!981529))

(assert (=> b!1062696 m!981509))

(declare-fun m!981531 () Bool)

(assert (=> b!1062696 m!981531))

(assert (=> b!1062696 m!981531))

(declare-fun m!981533 () Bool)

(assert (=> b!1062696 m!981533))

(declare-fun m!981535 () Bool)

(assert (=> b!1062696 m!981535))

(assert (=> b!1062696 m!981533))

(assert (=> b!1062696 m!981509))

(declare-fun m!981537 () Bool)

(assert (=> b!1062696 m!981537))

(assert (=> b!1062688 m!981509))

(assert (=> b!1062688 m!981509))

(assert (=> b!1062688 m!981511))

(declare-fun m!981539 () Bool)

(assert (=> bm!44931 m!981539))

(assert (=> d!128819 m!981457))

(assert (=> b!1062690 m!981509))

(assert (=> b!1062690 m!981509))

(declare-fun m!981541 () Bool)

(assert (=> b!1062690 m!981541))

(declare-fun m!981543 () Bool)

(assert (=> bm!44925 m!981543))

(declare-fun m!981545 () Bool)

(assert (=> b!1062677 m!981545))

(assert (=> b!1062677 m!981509))

(declare-fun m!981547 () Bool)

(assert (=> b!1062677 m!981547))

(declare-fun m!981549 () Bool)

(assert (=> b!1062677 m!981549))

(declare-fun m!981551 () Bool)

(assert (=> b!1062677 m!981551))

(declare-fun m!981553 () Bool)

(assert (=> b!1062677 m!981553))

(assert (=> b!1062677 m!981469))

(declare-fun m!981555 () Bool)

(assert (=> b!1062677 m!981555))

(assert (=> b!1062677 m!981545))

(declare-fun m!981557 () Bool)

(assert (=> b!1062677 m!981557))

(declare-fun m!981559 () Bool)

(assert (=> b!1062677 m!981559))

(declare-fun m!981561 () Bool)

(assert (=> b!1062677 m!981561))

(declare-fun m!981563 () Bool)

(assert (=> b!1062677 m!981563))

(assert (=> b!1062677 m!981553))

(declare-fun m!981565 () Bool)

(assert (=> b!1062677 m!981565))

(declare-fun m!981567 () Bool)

(assert (=> b!1062677 m!981567))

(assert (=> b!1062677 m!981559))

(declare-fun m!981569 () Bool)

(assert (=> b!1062677 m!981569))

(declare-fun m!981571 () Bool)

(assert (=> b!1062677 m!981571))

(assert (=> b!1062677 m!981567))

(declare-fun m!981573 () Bool)

(assert (=> b!1062677 m!981573))

(declare-fun m!981575 () Bool)

(assert (=> b!1062686 m!981575))

(assert (=> b!1062687 m!981509))

(assert (=> b!1062687 m!981509))

(assert (=> b!1062687 m!981511))

(assert (=> b!1062579 d!128819))

(declare-fun d!128821 () Bool)

(assert (=> d!128821 (= (getCurrentListMapNoExtraKeys!3620 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963) (getCurrentListMapNoExtraKeys!3620 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun lt!468279 () Unit!34789)

(declare-fun choose!1730 (array!67418 array!67416 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!38763 V!38763 V!38763 V!38763 (_ BitVec 32) Int) Unit!34789)

(assert (=> d!128821 (= lt!468279 (choose!1730 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> d!128821 (validMask!0 mask!1515)))

(assert (=> d!128821 (= (lemmaNoChangeToArrayThenSameMapNoExtras!659 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963) lt!468279)))

(declare-fun bs!31237 () Bool)

(assert (= bs!31237 d!128821))

(assert (=> bs!31237 m!981469))

(assert (=> bs!31237 m!981467))

(declare-fun m!981577 () Bool)

(assert (=> bs!31237 m!981577))

(assert (=> bs!31237 m!981457))

(assert (=> b!1062575 d!128821))

(declare-fun b!1062724 () Bool)

(declare-fun e!605448 () Bool)

(declare-fun e!605446 () Bool)

(assert (=> b!1062724 (= e!605448 e!605446)))

(declare-fun c!107222 () Bool)

(declare-fun e!605445 () Bool)

(assert (=> b!1062724 (= c!107222 e!605445)))

(declare-fun res!709682 () Bool)

(assert (=> b!1062724 (=> (not res!709682) (not e!605445))))

(assert (=> b!1062724 (= res!709682 (bvslt #b00000000000000000000000000000000 (size!32949 _keys!1163)))))

(declare-fun b!1062725 () Bool)

(declare-fun e!605451 () Bool)

(assert (=> b!1062725 (= e!605446 e!605451)))

(assert (=> b!1062725 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!32949 _keys!1163)))))

(declare-fun res!709683 () Bool)

(declare-fun lt!468296 () ListLongMap!14089)

(assert (=> b!1062725 (= res!709683 (contains!6255 lt!468296 (select (arr!32412 _keys!1163) #b00000000000000000000000000000000)))))

(assert (=> b!1062725 (=> (not res!709683) (not e!605451))))

(declare-fun b!1062726 () Bool)

(assert (=> b!1062726 (= e!605445 (validKeyInArray!0 (select (arr!32412 _keys!1163) #b00000000000000000000000000000000)))))

(assert (=> b!1062726 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun call!44937 () ListLongMap!14089)

(declare-fun bm!44934 () Bool)

(assert (=> bm!44934 (= call!44937 (getCurrentListMapNoExtraKeys!3620 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!963))))

(declare-fun b!1062727 () Bool)

(declare-fun e!605450 () Bool)

(declare-fun isEmpty!940 (ListLongMap!14089) Bool)

(assert (=> b!1062727 (= e!605450 (isEmpty!940 lt!468296))))

(declare-fun d!128823 () Bool)

(assert (=> d!128823 e!605448))

(declare-fun res!709681 () Bool)

(assert (=> d!128823 (=> (not res!709681) (not e!605448))))

(assert (=> d!128823 (= res!709681 (not (contains!6255 lt!468296 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!605449 () ListLongMap!14089)

(assert (=> d!128823 (= lt!468296 e!605449)))

(declare-fun c!107223 () Bool)

(assert (=> d!128823 (= c!107223 (bvsge #b00000000000000000000000000000000 (size!32949 _keys!1163)))))

(assert (=> d!128823 (validMask!0 mask!1515)))

(assert (=> d!128823 (= (getCurrentListMapNoExtraKeys!3620 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963) lt!468296)))

(declare-fun b!1062728 () Bool)

(declare-fun res!709684 () Bool)

(assert (=> b!1062728 (=> (not res!709684) (not e!605448))))

(assert (=> b!1062728 (= res!709684 (not (contains!6255 lt!468296 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1062729 () Bool)

(declare-fun e!605447 () ListLongMap!14089)

(assert (=> b!1062729 (= e!605449 e!605447)))

(declare-fun c!107220 () Bool)

(assert (=> b!1062729 (= c!107220 (validKeyInArray!0 (select (arr!32412 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun b!1062730 () Bool)

(assert (=> b!1062730 (= e!605447 call!44937)))

(declare-fun b!1062731 () Bool)

(assert (=> b!1062731 (= e!605446 e!605450)))

(declare-fun c!107221 () Bool)

(assert (=> b!1062731 (= c!107221 (bvslt #b00000000000000000000000000000000 (size!32949 _keys!1163)))))

(declare-fun b!1062732 () Bool)

(assert (=> b!1062732 (= e!605450 (= lt!468296 (getCurrentListMapNoExtraKeys!3620 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!963)))))

(declare-fun b!1062733 () Bool)

(assert (=> b!1062733 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!32949 _keys!1163)))))

(assert (=> b!1062733 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!32948 _values!955)))))

(assert (=> b!1062733 (= e!605451 (= (apply!954 lt!468296 (select (arr!32412 _keys!1163) #b00000000000000000000000000000000)) (get!16962 (select (arr!32411 _values!955) #b00000000000000000000000000000000) (dynLambda!2030 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1062734 () Bool)

(assert (=> b!1062734 (= e!605449 (ListLongMap!14090 Nil!22716))))

(declare-fun b!1062735 () Bool)

(declare-fun lt!468299 () Unit!34789)

(declare-fun lt!468294 () Unit!34789)

(assert (=> b!1062735 (= lt!468299 lt!468294)))

(declare-fun lt!468297 () V!38763)

(declare-fun lt!468300 () (_ BitVec 64))

(declare-fun lt!468295 () ListLongMap!14089)

(declare-fun lt!468298 () (_ BitVec 64))

(assert (=> b!1062735 (not (contains!6255 (+!3077 lt!468295 (tuple2!16109 lt!468300 lt!468297)) lt!468298))))

(declare-fun addStillNotContains!249 (ListLongMap!14089 (_ BitVec 64) V!38763 (_ BitVec 64)) Unit!34789)

(assert (=> b!1062735 (= lt!468294 (addStillNotContains!249 lt!468295 lt!468300 lt!468297 lt!468298))))

(assert (=> b!1062735 (= lt!468298 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1062735 (= lt!468297 (get!16962 (select (arr!32411 _values!955) #b00000000000000000000000000000000) (dynLambda!2030 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1062735 (= lt!468300 (select (arr!32412 _keys!1163) #b00000000000000000000000000000000))))

(assert (=> b!1062735 (= lt!468295 call!44937)))

(assert (=> b!1062735 (= e!605447 (+!3077 call!44937 (tuple2!16109 (select (arr!32412 _keys!1163) #b00000000000000000000000000000000) (get!16962 (select (arr!32411 _values!955) #b00000000000000000000000000000000) (dynLambda!2030 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (= (and d!128823 c!107223) b!1062734))

(assert (= (and d!128823 (not c!107223)) b!1062729))

(assert (= (and b!1062729 c!107220) b!1062735))

(assert (= (and b!1062729 (not c!107220)) b!1062730))

(assert (= (or b!1062735 b!1062730) bm!44934))

(assert (= (and d!128823 res!709681) b!1062728))

(assert (= (and b!1062728 res!709684) b!1062724))

(assert (= (and b!1062724 res!709682) b!1062726))

(assert (= (and b!1062724 c!107222) b!1062725))

(assert (= (and b!1062724 (not c!107222)) b!1062731))

(assert (= (and b!1062725 res!709683) b!1062733))

(assert (= (and b!1062731 c!107221) b!1062732))

(assert (= (and b!1062731 (not c!107221)) b!1062727))

(declare-fun b_lambda!16493 () Bool)

(assert (=> (not b_lambda!16493) (not b!1062733)))

(assert (=> b!1062733 t!32042))

(declare-fun b_and!34157 () Bool)

(assert (= b_and!34155 (and (=> t!32042 result!14715) b_and!34157)))

(declare-fun b_lambda!16495 () Bool)

(assert (=> (not b_lambda!16495) (not b!1062735)))

(assert (=> b!1062735 t!32042))

(declare-fun b_and!34159 () Bool)

(assert (= b_and!34157 (and (=> t!32042 result!14715) b_and!34159)))

(declare-fun m!981579 () Bool)

(assert (=> b!1062732 m!981579))

(assert (=> b!1062733 m!981531))

(assert (=> b!1062733 m!981533))

(assert (=> b!1062733 m!981509))

(assert (=> b!1062733 m!981509))

(declare-fun m!981581 () Bool)

(assert (=> b!1062733 m!981581))

(assert (=> b!1062733 m!981531))

(assert (=> b!1062733 m!981533))

(assert (=> b!1062733 m!981535))

(assert (=> bm!44934 m!981579))

(assert (=> b!1062726 m!981509))

(assert (=> b!1062726 m!981509))

(assert (=> b!1062726 m!981511))

(assert (=> b!1062729 m!981509))

(assert (=> b!1062729 m!981509))

(assert (=> b!1062729 m!981511))

(declare-fun m!981583 () Bool)

(assert (=> d!128823 m!981583))

(assert (=> d!128823 m!981457))

(declare-fun m!981585 () Bool)

(assert (=> b!1062727 m!981585))

(declare-fun m!981587 () Bool)

(assert (=> b!1062728 m!981587))

(declare-fun m!981589 () Bool)

(assert (=> b!1062735 m!981589))

(assert (=> b!1062735 m!981531))

(assert (=> b!1062735 m!981533))

(declare-fun m!981591 () Bool)

(assert (=> b!1062735 m!981591))

(declare-fun m!981593 () Bool)

(assert (=> b!1062735 m!981593))

(assert (=> b!1062735 m!981509))

(assert (=> b!1062735 m!981591))

(declare-fun m!981595 () Bool)

(assert (=> b!1062735 m!981595))

(assert (=> b!1062735 m!981531))

(assert (=> b!1062735 m!981533))

(assert (=> b!1062735 m!981535))

(assert (=> b!1062725 m!981509))

(assert (=> b!1062725 m!981509))

(declare-fun m!981597 () Bool)

(assert (=> b!1062725 m!981597))

(assert (=> b!1062575 d!128823))

(declare-fun b!1062736 () Bool)

(declare-fun e!605455 () Bool)

(declare-fun e!605453 () Bool)

(assert (=> b!1062736 (= e!605455 e!605453)))

(declare-fun c!107226 () Bool)

(declare-fun e!605452 () Bool)

(assert (=> b!1062736 (= c!107226 e!605452)))

(declare-fun res!709686 () Bool)

(assert (=> b!1062736 (=> (not res!709686) (not e!605452))))

(assert (=> b!1062736 (= res!709686 (bvslt #b00000000000000000000000000000000 (size!32949 _keys!1163)))))

(declare-fun b!1062737 () Bool)

(declare-fun e!605458 () Bool)

(assert (=> b!1062737 (= e!605453 e!605458)))

(assert (=> b!1062737 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!32949 _keys!1163)))))

(declare-fun res!709687 () Bool)

(declare-fun lt!468303 () ListLongMap!14089)

(assert (=> b!1062737 (= res!709687 (contains!6255 lt!468303 (select (arr!32412 _keys!1163) #b00000000000000000000000000000000)))))

(assert (=> b!1062737 (=> (not res!709687) (not e!605458))))

(declare-fun b!1062738 () Bool)

(assert (=> b!1062738 (= e!605452 (validKeyInArray!0 (select (arr!32412 _keys!1163) #b00000000000000000000000000000000)))))

(assert (=> b!1062738 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun call!44938 () ListLongMap!14089)

(declare-fun bm!44935 () Bool)

(assert (=> bm!44935 (= call!44938 (getCurrentListMapNoExtraKeys!3620 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!963))))

(declare-fun b!1062739 () Bool)

(declare-fun e!605457 () Bool)

(assert (=> b!1062739 (= e!605457 (isEmpty!940 lt!468303))))

(declare-fun d!128825 () Bool)

(assert (=> d!128825 e!605455))

(declare-fun res!709685 () Bool)

(assert (=> d!128825 (=> (not res!709685) (not e!605455))))

(assert (=> d!128825 (= res!709685 (not (contains!6255 lt!468303 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!605456 () ListLongMap!14089)

(assert (=> d!128825 (= lt!468303 e!605456)))

(declare-fun c!107227 () Bool)

(assert (=> d!128825 (= c!107227 (bvsge #b00000000000000000000000000000000 (size!32949 _keys!1163)))))

(assert (=> d!128825 (validMask!0 mask!1515)))

(assert (=> d!128825 (= (getCurrentListMapNoExtraKeys!3620 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963) lt!468303)))

(declare-fun b!1062740 () Bool)

(declare-fun res!709688 () Bool)

(assert (=> b!1062740 (=> (not res!709688) (not e!605455))))

(assert (=> b!1062740 (= res!709688 (not (contains!6255 lt!468303 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1062741 () Bool)

(declare-fun e!605454 () ListLongMap!14089)

(assert (=> b!1062741 (= e!605456 e!605454)))

(declare-fun c!107224 () Bool)

(assert (=> b!1062741 (= c!107224 (validKeyInArray!0 (select (arr!32412 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun b!1062742 () Bool)

(assert (=> b!1062742 (= e!605454 call!44938)))

(declare-fun b!1062743 () Bool)

(assert (=> b!1062743 (= e!605453 e!605457)))

(declare-fun c!107225 () Bool)

(assert (=> b!1062743 (= c!107225 (bvslt #b00000000000000000000000000000000 (size!32949 _keys!1163)))))

(declare-fun b!1062744 () Bool)

(assert (=> b!1062744 (= e!605457 (= lt!468303 (getCurrentListMapNoExtraKeys!3620 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!963)))))

(declare-fun b!1062745 () Bool)

(assert (=> b!1062745 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!32949 _keys!1163)))))

(assert (=> b!1062745 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!32948 _values!955)))))

(assert (=> b!1062745 (= e!605458 (= (apply!954 lt!468303 (select (arr!32412 _keys!1163) #b00000000000000000000000000000000)) (get!16962 (select (arr!32411 _values!955) #b00000000000000000000000000000000) (dynLambda!2030 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1062746 () Bool)

(assert (=> b!1062746 (= e!605456 (ListLongMap!14090 Nil!22716))))

(declare-fun b!1062747 () Bool)

(declare-fun lt!468306 () Unit!34789)

(declare-fun lt!468301 () Unit!34789)

(assert (=> b!1062747 (= lt!468306 lt!468301)))

(declare-fun lt!468302 () ListLongMap!14089)

(declare-fun lt!468307 () (_ BitVec 64))

(declare-fun lt!468304 () V!38763)

(declare-fun lt!468305 () (_ BitVec 64))

(assert (=> b!1062747 (not (contains!6255 (+!3077 lt!468302 (tuple2!16109 lt!468307 lt!468304)) lt!468305))))

(assert (=> b!1062747 (= lt!468301 (addStillNotContains!249 lt!468302 lt!468307 lt!468304 lt!468305))))

(assert (=> b!1062747 (= lt!468305 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1062747 (= lt!468304 (get!16962 (select (arr!32411 _values!955) #b00000000000000000000000000000000) (dynLambda!2030 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1062747 (= lt!468307 (select (arr!32412 _keys!1163) #b00000000000000000000000000000000))))

(assert (=> b!1062747 (= lt!468302 call!44938)))

(assert (=> b!1062747 (= e!605454 (+!3077 call!44938 (tuple2!16109 (select (arr!32412 _keys!1163) #b00000000000000000000000000000000) (get!16962 (select (arr!32411 _values!955) #b00000000000000000000000000000000) (dynLambda!2030 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (= (and d!128825 c!107227) b!1062746))

(assert (= (and d!128825 (not c!107227)) b!1062741))

(assert (= (and b!1062741 c!107224) b!1062747))

(assert (= (and b!1062741 (not c!107224)) b!1062742))

(assert (= (or b!1062747 b!1062742) bm!44935))

(assert (= (and d!128825 res!709685) b!1062740))

(assert (= (and b!1062740 res!709688) b!1062736))

(assert (= (and b!1062736 res!709686) b!1062738))

(assert (= (and b!1062736 c!107226) b!1062737))

(assert (= (and b!1062736 (not c!107226)) b!1062743))

(assert (= (and b!1062737 res!709687) b!1062745))

(assert (= (and b!1062743 c!107225) b!1062744))

(assert (= (and b!1062743 (not c!107225)) b!1062739))

(declare-fun b_lambda!16497 () Bool)

(assert (=> (not b_lambda!16497) (not b!1062745)))

(assert (=> b!1062745 t!32042))

(declare-fun b_and!34161 () Bool)

(assert (= b_and!34159 (and (=> t!32042 result!14715) b_and!34161)))

(declare-fun b_lambda!16499 () Bool)

(assert (=> (not b_lambda!16499) (not b!1062747)))

(assert (=> b!1062747 t!32042))

(declare-fun b_and!34163 () Bool)

(assert (= b_and!34161 (and (=> t!32042 result!14715) b_and!34163)))

(declare-fun m!981599 () Bool)

(assert (=> b!1062744 m!981599))

(assert (=> b!1062745 m!981531))

(assert (=> b!1062745 m!981533))

(assert (=> b!1062745 m!981509))

(assert (=> b!1062745 m!981509))

(declare-fun m!981601 () Bool)

(assert (=> b!1062745 m!981601))

(assert (=> b!1062745 m!981531))

(assert (=> b!1062745 m!981533))

(assert (=> b!1062745 m!981535))

(assert (=> bm!44935 m!981599))

(assert (=> b!1062738 m!981509))

(assert (=> b!1062738 m!981509))

(assert (=> b!1062738 m!981511))

(assert (=> b!1062741 m!981509))

(assert (=> b!1062741 m!981509))

(assert (=> b!1062741 m!981511))

(declare-fun m!981603 () Bool)

(assert (=> d!128825 m!981603))

(assert (=> d!128825 m!981457))

(declare-fun m!981605 () Bool)

(assert (=> b!1062739 m!981605))

(declare-fun m!981607 () Bool)

(assert (=> b!1062740 m!981607))

(declare-fun m!981609 () Bool)

(assert (=> b!1062747 m!981609))

(assert (=> b!1062747 m!981531))

(assert (=> b!1062747 m!981533))

(declare-fun m!981611 () Bool)

(assert (=> b!1062747 m!981611))

(declare-fun m!981613 () Bool)

(assert (=> b!1062747 m!981613))

(assert (=> b!1062747 m!981509))

(assert (=> b!1062747 m!981611))

(declare-fun m!981615 () Bool)

(assert (=> b!1062747 m!981615))

(assert (=> b!1062747 m!981531))

(assert (=> b!1062747 m!981533))

(assert (=> b!1062747 m!981535))

(assert (=> b!1062737 m!981509))

(assert (=> b!1062737 m!981509))

(declare-fun m!981617 () Bool)

(assert (=> b!1062737 m!981617))

(assert (=> b!1062575 d!128825))

(declare-fun d!128827 () Bool)

(assert (=> d!128827 (= (validMask!0 mask!1515) (and (or (= mask!1515 #b00000000000000000000000000000111) (= mask!1515 #b00000000000000000000000000001111) (= mask!1515 #b00000000000000000000000000011111) (= mask!1515 #b00000000000000000000000000111111) (= mask!1515 #b00000000000000000000000001111111) (= mask!1515 #b00000000000000000000000011111111) (= mask!1515 #b00000000000000000000000111111111) (= mask!1515 #b00000000000000000000001111111111) (= mask!1515 #b00000000000000000000011111111111) (= mask!1515 #b00000000000000000000111111111111) (= mask!1515 #b00000000000000000001111111111111) (= mask!1515 #b00000000000000000011111111111111) (= mask!1515 #b00000000000000000111111111111111) (= mask!1515 #b00000000000000001111111111111111) (= mask!1515 #b00000000000000011111111111111111) (= mask!1515 #b00000000000000111111111111111111) (= mask!1515 #b00000000000001111111111111111111) (= mask!1515 #b00000000000011111111111111111111) (= mask!1515 #b00000000000111111111111111111111) (= mask!1515 #b00000000001111111111111111111111) (= mask!1515 #b00000000011111111111111111111111) (= mask!1515 #b00000000111111111111111111111111) (= mask!1515 #b00000001111111111111111111111111) (= mask!1515 #b00000011111111111111111111111111) (= mask!1515 #b00000111111111111111111111111111) (= mask!1515 #b00001111111111111111111111111111) (= mask!1515 #b00011111111111111111111111111111) (= mask!1515 #b00111111111111111111111111111111)) (bvsle mask!1515 #b00111111111111111111111111111111)))))

(assert (=> start!93988 d!128827))

(declare-fun d!128829 () Bool)

(assert (=> d!128829 (= (array_inv!24946 _values!955) (bvsge (size!32948 _values!955) #b00000000000000000000000000000000))))

(assert (=> start!93988 d!128829))

(declare-fun d!128831 () Bool)

(assert (=> d!128831 (= (array_inv!24947 _keys!1163) (bvsge (size!32949 _keys!1163) #b00000000000000000000000000000000))))

(assert (=> start!93988 d!128831))

(declare-fun bm!44938 () Bool)

(declare-fun call!44941 () Bool)

(assert (=> bm!44938 (= call!44941 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1163 mask!1515))))

(declare-fun b!1062756 () Bool)

(declare-fun e!605466 () Bool)

(assert (=> b!1062756 (= e!605466 call!44941)))

(declare-fun d!128833 () Bool)

(declare-fun res!709693 () Bool)

(declare-fun e!605465 () Bool)

(assert (=> d!128833 (=> res!709693 e!605465)))

(assert (=> d!128833 (= res!709693 (bvsge #b00000000000000000000000000000000 (size!32949 _keys!1163)))))

(assert (=> d!128833 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515) e!605465)))

(declare-fun b!1062757 () Bool)

(assert (=> b!1062757 (= e!605465 e!605466)))

(declare-fun c!107230 () Bool)

(assert (=> b!1062757 (= c!107230 (validKeyInArray!0 (select (arr!32412 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun b!1062758 () Bool)

(declare-fun e!605467 () Bool)

(assert (=> b!1062758 (= e!605467 call!44941)))

(declare-fun b!1062759 () Bool)

(assert (=> b!1062759 (= e!605466 e!605467)))

(declare-fun lt!468315 () (_ BitVec 64))

(assert (=> b!1062759 (= lt!468315 (select (arr!32412 _keys!1163) #b00000000000000000000000000000000))))

(declare-fun lt!468316 () Unit!34789)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!67418 (_ BitVec 64) (_ BitVec 32)) Unit!34789)

(assert (=> b!1062759 (= lt!468316 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1163 lt!468315 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!67418 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1062759 (arrayContainsKey!0 _keys!1163 lt!468315 #b00000000000000000000000000000000)))

(declare-fun lt!468314 () Unit!34789)

(assert (=> b!1062759 (= lt!468314 lt!468316)))

(declare-fun res!709694 () Bool)

(declare-datatypes ((SeekEntryResult!9869 0))(
  ( (MissingZero!9869 (index!41846 (_ BitVec 32))) (Found!9869 (index!41847 (_ BitVec 32))) (Intermediate!9869 (undefined!10681 Bool) (index!41848 (_ BitVec 32)) (x!95070 (_ BitVec 32))) (Undefined!9869) (MissingVacant!9869 (index!41849 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!67418 (_ BitVec 32)) SeekEntryResult!9869)

(assert (=> b!1062759 (= res!709694 (= (seekEntryOrOpen!0 (select (arr!32412 _keys!1163) #b00000000000000000000000000000000) _keys!1163 mask!1515) (Found!9869 #b00000000000000000000000000000000)))))

(assert (=> b!1062759 (=> (not res!709694) (not e!605467))))

(assert (= (and d!128833 (not res!709693)) b!1062757))

(assert (= (and b!1062757 c!107230) b!1062759))

(assert (= (and b!1062757 (not c!107230)) b!1062756))

(assert (= (and b!1062759 res!709694) b!1062758))

(assert (= (or b!1062758 b!1062756) bm!44938))

(declare-fun m!981619 () Bool)

(assert (=> bm!44938 m!981619))

(assert (=> b!1062757 m!981509))

(assert (=> b!1062757 m!981509))

(assert (=> b!1062757 m!981511))

(assert (=> b!1062759 m!981509))

(declare-fun m!981621 () Bool)

(assert (=> b!1062759 m!981621))

(declare-fun m!981623 () Bool)

(assert (=> b!1062759 m!981623))

(assert (=> b!1062759 m!981509))

(declare-fun m!981625 () Bool)

(assert (=> b!1062759 m!981625))

(assert (=> b!1062578 d!128833))

(declare-fun d!128835 () Bool)

(declare-fun lt!468319 () ListLongMap!14089)

(assert (=> d!128835 (not (contains!6255 lt!468319 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun removeStrictlySorted!68 (List!22719 (_ BitVec 64)) List!22719)

(assert (=> d!128835 (= lt!468319 (ListLongMap!14090 (removeStrictlySorted!68 (toList!7060 lt!468179) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!128835 (= (-!573 lt!468179 #b0000000000000000000000000000000000000000000000000000000000000000) lt!468319)))

(declare-fun bs!31238 () Bool)

(assert (= bs!31238 d!128835))

(declare-fun m!981627 () Bool)

(assert (=> bs!31238 m!981627))

(declare-fun m!981629 () Bool)

(assert (=> bs!31238 m!981629))

(assert (=> b!1062577 d!128835))

(declare-fun d!128837 () Bool)

(assert (=> d!128837 (= (-!573 lt!468179 #b0000000000000000000000000000000000000000000000000000000000000000) lt!468179)))

(declare-fun lt!468322 () Unit!34789)

(declare-fun choose!1731 (ListLongMap!14089 (_ BitVec 64)) Unit!34789)

(assert (=> d!128837 (= lt!468322 (choose!1731 lt!468179 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!128837 (not (contains!6255 lt!468179 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!128837 (= (removeNotPresentStillSame!19 lt!468179 #b0000000000000000000000000000000000000000000000000000000000000000) lt!468322)))

(declare-fun bs!31239 () Bool)

(assert (= bs!31239 d!128837))

(assert (=> bs!31239 m!981473))

(declare-fun m!981631 () Bool)

(assert (=> bs!31239 m!981631))

(assert (=> bs!31239 m!981477))

(assert (=> b!1062577 d!128837))

(declare-fun b!1062766 () Bool)

(declare-fun e!605473 () Bool)

(assert (=> b!1062766 (= e!605473 tp_is_empty!25221)))

(declare-fun mapNonEmpty!39511 () Bool)

(declare-fun mapRes!39511 () Bool)

(declare-fun tp!75669 () Bool)

(assert (=> mapNonEmpty!39511 (= mapRes!39511 (and tp!75669 e!605473))))

(declare-fun mapValue!39511 () ValueCell!11907)

(declare-fun mapKey!39511 () (_ BitVec 32))

(declare-fun mapRest!39511 () (Array (_ BitVec 32) ValueCell!11907))

(assert (=> mapNonEmpty!39511 (= mapRest!39505 (store mapRest!39511 mapKey!39511 mapValue!39511))))

(declare-fun mapIsEmpty!39511 () Bool)

(assert (=> mapIsEmpty!39511 mapRes!39511))

(declare-fun b!1062767 () Bool)

(declare-fun e!605472 () Bool)

(assert (=> b!1062767 (= e!605472 tp_is_empty!25221)))

(declare-fun condMapEmpty!39511 () Bool)

(declare-fun mapDefault!39511 () ValueCell!11907)

(assert (=> mapNonEmpty!39505 (= condMapEmpty!39511 (= mapRest!39505 ((as const (Array (_ BitVec 32) ValueCell!11907)) mapDefault!39511)))))

(assert (=> mapNonEmpty!39505 (= tp!75659 (and e!605472 mapRes!39511))))

(assert (= (and mapNonEmpty!39505 condMapEmpty!39511) mapIsEmpty!39511))

(assert (= (and mapNonEmpty!39505 (not condMapEmpty!39511)) mapNonEmpty!39511))

(assert (= (and mapNonEmpty!39511 ((_ is ValueCellFull!11907) mapValue!39511)) b!1062766))

(assert (= (and mapNonEmpty!39505 ((_ is ValueCellFull!11907) mapDefault!39511)) b!1062767))

(declare-fun m!981633 () Bool)

(assert (=> mapNonEmpty!39511 m!981633))

(declare-fun b_lambda!16501 () Bool)

(assert (= b_lambda!16497 (or (and start!93988 b_free!21411) b_lambda!16501)))

(declare-fun b_lambda!16503 () Bool)

(assert (= b_lambda!16495 (or (and start!93988 b_free!21411) b_lambda!16503)))

(declare-fun b_lambda!16505 () Bool)

(assert (= b_lambda!16491 (or (and start!93988 b_free!21411) b_lambda!16505)))

(declare-fun b_lambda!16507 () Bool)

(assert (= b_lambda!16493 (or (and start!93988 b_free!21411) b_lambda!16507)))

(declare-fun b_lambda!16509 () Bool)

(assert (= b_lambda!16499 (or (and start!93988 b_free!21411) b_lambda!16509)))

(check-sat b_and!34163 (not b!1062738) (not b!1062728) (not b!1062741) (not b!1062739) (not d!128835) (not bm!44910) (not d!128837) (not b!1062632) (not b!1062757) (not b!1062684) (not b!1062735) (not d!128821) (not d!128819) (not b!1062725) (not b!1062737) (not d!128825) (not b!1062726) (not b_next!21411) (not b!1062747) (not b_lambda!16501) (not b!1062696) (not bm!44928) (not b_lambda!16505) (not b!1062623) (not b_lambda!16509) (not b!1062677) tp_is_empty!25221 (not b!1062759) (not d!128823) (not b!1062740) (not bm!44938) (not bm!44935) (not b!1062686) (not b_lambda!16503) (not d!128817) (not b!1062744) (not b!1062687) (not b!1062727) (not bm!44931) (not b_lambda!16507) (not b!1062678) (not b!1062733) (not mapNonEmpty!39511) (not bm!44934) (not b!1062729) (not b!1062745) (not bm!44925) (not b!1062625) (not b!1062732) (not b!1062622) (not b!1062688) (not bm!44929) (not b!1062690) (not b!1062634))
(check-sat b_and!34163 (not b_next!21411))

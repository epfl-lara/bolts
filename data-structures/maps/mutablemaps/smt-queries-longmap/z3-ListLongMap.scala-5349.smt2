; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!71606 () Bool)

(assert start!71606)

(declare-fun b_free!13503 () Bool)

(declare-fun b_next!13503 () Bool)

(assert (=> start!71606 (= b_free!13503 (not b_next!13503))))

(declare-fun tp!47301 () Bool)

(declare-fun b_and!22579 () Bool)

(assert (=> start!71606 (= tp!47301 b_and!22579)))

(declare-fun b!831636 () Bool)

(declare-fun res!566088 () Bool)

(declare-fun e!463804 () Bool)

(assert (=> b!831636 (=> (not res!566088) (not e!463804))))

(declare-datatypes ((array!46572 0))(
  ( (array!46573 (arr!22317 (Array (_ BitVec 32) (_ BitVec 64))) (size!22738 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!46572)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-datatypes ((V!25285 0))(
  ( (V!25286 (val!7654 Int)) )
))
(declare-datatypes ((ValueCell!7191 0))(
  ( (ValueCellFull!7191 (v!10095 V!25285)) (EmptyCell!7191) )
))
(declare-datatypes ((array!46574 0))(
  ( (array!46575 (arr!22318 (Array (_ BitVec 32) ValueCell!7191)) (size!22739 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!46574)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!831636 (= res!566088 (and (= (size!22739 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22738 _keys!976) (size!22739 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!831637 () Bool)

(declare-fun e!463803 () Bool)

(assert (=> b!831637 (= e!463804 (not e!463803))))

(declare-fun res!566087 () Bool)

(assert (=> b!831637 (=> res!566087 e!463803)))

(assert (=> b!831637 (= res!566087 (or (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!10180 0))(
  ( (tuple2!10181 (_1!5100 (_ BitVec 64)) (_2!5100 V!25285)) )
))
(declare-datatypes ((List!16008 0))(
  ( (Nil!16005) (Cons!16004 (h!17134 tuple2!10180) (t!22384 List!16008)) )
))
(declare-datatypes ((ListLongMap!9017 0))(
  ( (ListLongMap!9018 (toList!4524 List!16008)) )
))
(declare-fun lt!377369 () ListLongMap!9017)

(declare-fun lt!377373 () ListLongMap!9017)

(assert (=> b!831637 (= lt!377369 lt!377373)))

(declare-fun zeroValueBefore!34 () V!25285)

(declare-fun zeroValueAfter!34 () V!25285)

(declare-fun minValue!754 () V!25285)

(declare-datatypes ((Unit!28497 0))(
  ( (Unit!28498) )
))
(declare-fun lt!377368 () Unit!28497)

(declare-fun defaultEntry!796 () Int)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!613 (array!46572 array!46574 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!25285 V!25285 V!25285 V!25285 (_ BitVec 32) Int) Unit!28497)

(assert (=> b!831637 (= lt!377368 (lemmaNoChangeToArrayThenSameMapNoExtras!613 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2523 (array!46572 array!46574 (_ BitVec 32) (_ BitVec 32) V!25285 V!25285 (_ BitVec 32) Int) ListLongMap!9017)

(assert (=> b!831637 (= lt!377373 (getCurrentListMapNoExtraKeys!2523 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!831637 (= lt!377369 (getCurrentListMapNoExtraKeys!2523 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!377367 () ListLongMap!9017)

(declare-fun lt!377372 () tuple2!10180)

(declare-fun lt!377371 () tuple2!10180)

(declare-fun e!463805 () Bool)

(declare-fun b!831638 () Bool)

(declare-fun +!1952 (ListLongMap!9017 tuple2!10180) ListLongMap!9017)

(assert (=> b!831638 (= e!463805 (= lt!377367 (+!1952 (+!1952 lt!377369 lt!377371) lt!377372)))))

(declare-fun res!566089 () Bool)

(assert (=> start!71606 (=> (not res!566089) (not e!463804))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!71606 (= res!566089 (validMask!0 mask!1312))))

(assert (=> start!71606 e!463804))

(declare-fun tp_is_empty!15213 () Bool)

(assert (=> start!71606 tp_is_empty!15213))

(declare-fun array_inv!17749 (array!46572) Bool)

(assert (=> start!71606 (array_inv!17749 _keys!976)))

(assert (=> start!71606 true))

(declare-fun e!463802 () Bool)

(declare-fun array_inv!17750 (array!46574) Bool)

(assert (=> start!71606 (and (array_inv!17750 _values!788) e!463802)))

(assert (=> start!71606 tp!47301))

(declare-fun b!831639 () Bool)

(declare-fun res!566086 () Bool)

(assert (=> b!831639 (=> (not res!566086) (not e!463804))))

(declare-datatypes ((List!16009 0))(
  ( (Nil!16006) (Cons!16005 (h!17135 (_ BitVec 64)) (t!22385 List!16009)) )
))
(declare-fun arrayNoDuplicates!0 (array!46572 (_ BitVec 32) List!16009) Bool)

(assert (=> b!831639 (= res!566086 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!16006))))

(declare-fun b!831640 () Bool)

(declare-fun res!566091 () Bool)

(assert (=> b!831640 (=> (not res!566091) (not e!463804))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!46572 (_ BitVec 32)) Bool)

(assert (=> b!831640 (= res!566091 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!831641 () Bool)

(declare-fun res!566092 () Bool)

(assert (=> b!831641 (=> (not res!566092) (not e!463805))))

(declare-fun lt!377370 () ListLongMap!9017)

(assert (=> b!831641 (= res!566092 (= lt!377370 (+!1952 (+!1952 lt!377373 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)) lt!377371)))))

(declare-fun mapIsEmpty!24477 () Bool)

(declare-fun mapRes!24477 () Bool)

(assert (=> mapIsEmpty!24477 mapRes!24477))

(declare-fun b!831642 () Bool)

(assert (=> b!831642 (= e!463803 (= lt!377370 (+!1952 (+!1952 lt!377373 lt!377371) (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))))

(assert (=> b!831642 e!463805))

(declare-fun res!566090 () Bool)

(assert (=> b!831642 (=> (not res!566090) (not e!463805))))

(assert (=> b!831642 (= res!566090 (= lt!377367 (+!1952 (+!1952 lt!377369 lt!377372) lt!377371)))))

(assert (=> b!831642 (= lt!377371 (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))

(assert (=> b!831642 (= lt!377372 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34))))

(declare-fun getCurrentListMap!2593 (array!46572 array!46574 (_ BitVec 32) (_ BitVec 32) V!25285 V!25285 (_ BitVec 32) Int) ListLongMap!9017)

(assert (=> b!831642 (= lt!377370 (getCurrentListMap!2593 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!831642 (= lt!377367 (getCurrentListMap!2593 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!831643 () Bool)

(declare-fun e!463807 () Bool)

(assert (=> b!831643 (= e!463802 (and e!463807 mapRes!24477))))

(declare-fun condMapEmpty!24477 () Bool)

(declare-fun mapDefault!24477 () ValueCell!7191)

(assert (=> b!831643 (= condMapEmpty!24477 (= (arr!22318 _values!788) ((as const (Array (_ BitVec 32) ValueCell!7191)) mapDefault!24477)))))

(declare-fun b!831644 () Bool)

(assert (=> b!831644 (= e!463807 tp_is_empty!15213)))

(declare-fun b!831645 () Bool)

(declare-fun e!463801 () Bool)

(assert (=> b!831645 (= e!463801 tp_is_empty!15213)))

(declare-fun mapNonEmpty!24477 () Bool)

(declare-fun tp!47300 () Bool)

(assert (=> mapNonEmpty!24477 (= mapRes!24477 (and tp!47300 e!463801))))

(declare-fun mapRest!24477 () (Array (_ BitVec 32) ValueCell!7191))

(declare-fun mapValue!24477 () ValueCell!7191)

(declare-fun mapKey!24477 () (_ BitVec 32))

(assert (=> mapNonEmpty!24477 (= (arr!22318 _values!788) (store mapRest!24477 mapKey!24477 mapValue!24477))))

(assert (= (and start!71606 res!566089) b!831636))

(assert (= (and b!831636 res!566088) b!831640))

(assert (= (and b!831640 res!566091) b!831639))

(assert (= (and b!831639 res!566086) b!831637))

(assert (= (and b!831637 (not res!566087)) b!831642))

(assert (= (and b!831642 res!566090) b!831641))

(assert (= (and b!831641 res!566092) b!831638))

(assert (= (and b!831643 condMapEmpty!24477) mapIsEmpty!24477))

(assert (= (and b!831643 (not condMapEmpty!24477)) mapNonEmpty!24477))

(get-info :version)

(assert (= (and mapNonEmpty!24477 ((_ is ValueCellFull!7191) mapValue!24477)) b!831645))

(assert (= (and b!831643 ((_ is ValueCellFull!7191) mapDefault!24477)) b!831644))

(assert (= start!71606 b!831643))

(declare-fun m!775621 () Bool)

(assert (=> b!831638 m!775621))

(assert (=> b!831638 m!775621))

(declare-fun m!775623 () Bool)

(assert (=> b!831638 m!775623))

(declare-fun m!775625 () Bool)

(assert (=> start!71606 m!775625))

(declare-fun m!775627 () Bool)

(assert (=> start!71606 m!775627))

(declare-fun m!775629 () Bool)

(assert (=> start!71606 m!775629))

(declare-fun m!775631 () Bool)

(assert (=> b!831641 m!775631))

(assert (=> b!831641 m!775631))

(declare-fun m!775633 () Bool)

(assert (=> b!831641 m!775633))

(declare-fun m!775635 () Bool)

(assert (=> b!831637 m!775635))

(declare-fun m!775637 () Bool)

(assert (=> b!831637 m!775637))

(declare-fun m!775639 () Bool)

(assert (=> b!831637 m!775639))

(declare-fun m!775641 () Bool)

(assert (=> b!831640 m!775641))

(declare-fun m!775643 () Bool)

(assert (=> b!831642 m!775643))

(declare-fun m!775645 () Bool)

(assert (=> b!831642 m!775645))

(declare-fun m!775647 () Bool)

(assert (=> b!831642 m!775647))

(assert (=> b!831642 m!775645))

(declare-fun m!775649 () Bool)

(assert (=> b!831642 m!775649))

(assert (=> b!831642 m!775643))

(declare-fun m!775651 () Bool)

(assert (=> b!831642 m!775651))

(declare-fun m!775653 () Bool)

(assert (=> b!831642 m!775653))

(declare-fun m!775655 () Bool)

(assert (=> b!831639 m!775655))

(declare-fun m!775657 () Bool)

(assert (=> mapNonEmpty!24477 m!775657))

(check-sat (not b_next!13503) (not mapNonEmpty!24477) (not b!831639) (not b!831638) (not b!831642) (not b!831641) (not start!71606) (not b!831640) (not b!831637) b_and!22579 tp_is_empty!15213)
(check-sat b_and!22579 (not b_next!13503))
(get-model)

(declare-fun b!831686 () Bool)

(declare-fun e!463837 () Bool)

(declare-fun contains!4211 (List!16009 (_ BitVec 64)) Bool)

(assert (=> b!831686 (= e!463837 (contains!4211 Nil!16006 (select (arr!22317 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun b!831687 () Bool)

(declare-fun e!463840 () Bool)

(declare-fun e!463838 () Bool)

(assert (=> b!831687 (= e!463840 e!463838)))

(declare-fun c!90242 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!831687 (= c!90242 (validKeyInArray!0 (select (arr!22317 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun b!831688 () Bool)

(declare-fun call!36361 () Bool)

(assert (=> b!831688 (= e!463838 call!36361)))

(declare-fun d!106219 () Bool)

(declare-fun res!566120 () Bool)

(declare-fun e!463839 () Bool)

(assert (=> d!106219 (=> res!566120 e!463839)))

(assert (=> d!106219 (= res!566120 (bvsge #b00000000000000000000000000000000 (size!22738 _keys!976)))))

(assert (=> d!106219 (= (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!16006) e!463839)))

(declare-fun b!831689 () Bool)

(assert (=> b!831689 (= e!463838 call!36361)))

(declare-fun b!831690 () Bool)

(assert (=> b!831690 (= e!463839 e!463840)))

(declare-fun res!566121 () Bool)

(assert (=> b!831690 (=> (not res!566121) (not e!463840))))

(assert (=> b!831690 (= res!566121 (not e!463837))))

(declare-fun res!566122 () Bool)

(assert (=> b!831690 (=> (not res!566122) (not e!463837))))

(assert (=> b!831690 (= res!566122 (validKeyInArray!0 (select (arr!22317 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun bm!36358 () Bool)

(assert (=> bm!36358 (= call!36361 (arrayNoDuplicates!0 _keys!976 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!90242 (Cons!16005 (select (arr!22317 _keys!976) #b00000000000000000000000000000000) Nil!16006) Nil!16006)))))

(assert (= (and d!106219 (not res!566120)) b!831690))

(assert (= (and b!831690 res!566122) b!831686))

(assert (= (and b!831690 res!566121) b!831687))

(assert (= (and b!831687 c!90242) b!831688))

(assert (= (and b!831687 (not c!90242)) b!831689))

(assert (= (or b!831688 b!831689) bm!36358))

(declare-fun m!775697 () Bool)

(assert (=> b!831686 m!775697))

(assert (=> b!831686 m!775697))

(declare-fun m!775699 () Bool)

(assert (=> b!831686 m!775699))

(assert (=> b!831687 m!775697))

(assert (=> b!831687 m!775697))

(declare-fun m!775701 () Bool)

(assert (=> b!831687 m!775701))

(assert (=> b!831690 m!775697))

(assert (=> b!831690 m!775697))

(assert (=> b!831690 m!775701))

(assert (=> bm!36358 m!775697))

(declare-fun m!775703 () Bool)

(assert (=> bm!36358 m!775703))

(assert (=> b!831639 d!106219))

(declare-fun d!106221 () Bool)

(declare-fun e!463843 () Bool)

(assert (=> d!106221 e!463843))

(declare-fun res!566128 () Bool)

(assert (=> d!106221 (=> (not res!566128) (not e!463843))))

(declare-fun lt!377403 () ListLongMap!9017)

(declare-fun contains!4212 (ListLongMap!9017 (_ BitVec 64)) Bool)

(assert (=> d!106221 (= res!566128 (contains!4212 lt!377403 (_1!5100 lt!377371)))))

(declare-fun lt!377405 () List!16008)

(assert (=> d!106221 (= lt!377403 (ListLongMap!9018 lt!377405))))

(declare-fun lt!377406 () Unit!28497)

(declare-fun lt!377404 () Unit!28497)

(assert (=> d!106221 (= lt!377406 lt!377404)))

(declare-datatypes ((Option!421 0))(
  ( (Some!420 (v!10097 V!25285)) (None!419) )
))
(declare-fun getValueByKey!415 (List!16008 (_ BitVec 64)) Option!421)

(assert (=> d!106221 (= (getValueByKey!415 lt!377405 (_1!5100 lt!377371)) (Some!420 (_2!5100 lt!377371)))))

(declare-fun lemmaContainsTupThenGetReturnValue!231 (List!16008 (_ BitVec 64) V!25285) Unit!28497)

(assert (=> d!106221 (= lt!377404 (lemmaContainsTupThenGetReturnValue!231 lt!377405 (_1!5100 lt!377371) (_2!5100 lt!377371)))))

(declare-fun insertStrictlySorted!269 (List!16008 (_ BitVec 64) V!25285) List!16008)

(assert (=> d!106221 (= lt!377405 (insertStrictlySorted!269 (toList!4524 (+!1952 lt!377373 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))) (_1!5100 lt!377371) (_2!5100 lt!377371)))))

(assert (=> d!106221 (= (+!1952 (+!1952 lt!377373 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)) lt!377371) lt!377403)))

(declare-fun b!831695 () Bool)

(declare-fun res!566127 () Bool)

(assert (=> b!831695 (=> (not res!566127) (not e!463843))))

(assert (=> b!831695 (= res!566127 (= (getValueByKey!415 (toList!4524 lt!377403) (_1!5100 lt!377371)) (Some!420 (_2!5100 lt!377371))))))

(declare-fun b!831696 () Bool)

(declare-fun contains!4213 (List!16008 tuple2!10180) Bool)

(assert (=> b!831696 (= e!463843 (contains!4213 (toList!4524 lt!377403) lt!377371))))

(assert (= (and d!106221 res!566128) b!831695))

(assert (= (and b!831695 res!566127) b!831696))

(declare-fun m!775705 () Bool)

(assert (=> d!106221 m!775705))

(declare-fun m!775707 () Bool)

(assert (=> d!106221 m!775707))

(declare-fun m!775709 () Bool)

(assert (=> d!106221 m!775709))

(declare-fun m!775711 () Bool)

(assert (=> d!106221 m!775711))

(declare-fun m!775713 () Bool)

(assert (=> b!831695 m!775713))

(declare-fun m!775715 () Bool)

(assert (=> b!831696 m!775715))

(assert (=> b!831641 d!106221))

(declare-fun d!106223 () Bool)

(declare-fun e!463844 () Bool)

(assert (=> d!106223 e!463844))

(declare-fun res!566130 () Bool)

(assert (=> d!106223 (=> (not res!566130) (not e!463844))))

(declare-fun lt!377407 () ListLongMap!9017)

(assert (=> d!106223 (= res!566130 (contains!4212 lt!377407 (_1!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))))

(declare-fun lt!377409 () List!16008)

(assert (=> d!106223 (= lt!377407 (ListLongMap!9018 lt!377409))))

(declare-fun lt!377410 () Unit!28497)

(declare-fun lt!377408 () Unit!28497)

(assert (=> d!106223 (= lt!377410 lt!377408)))

(assert (=> d!106223 (= (getValueByKey!415 lt!377409 (_1!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))) (Some!420 (_2!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))))

(assert (=> d!106223 (= lt!377408 (lemmaContainsTupThenGetReturnValue!231 lt!377409 (_1!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)) (_2!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))))

(assert (=> d!106223 (= lt!377409 (insertStrictlySorted!269 (toList!4524 lt!377373) (_1!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)) (_2!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))))

(assert (=> d!106223 (= (+!1952 lt!377373 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)) lt!377407)))

(declare-fun b!831697 () Bool)

(declare-fun res!566129 () Bool)

(assert (=> b!831697 (=> (not res!566129) (not e!463844))))

(assert (=> b!831697 (= res!566129 (= (getValueByKey!415 (toList!4524 lt!377407) (_1!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))) (Some!420 (_2!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))))))

(declare-fun b!831698 () Bool)

(assert (=> b!831698 (= e!463844 (contains!4213 (toList!4524 lt!377407) (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))))

(assert (= (and d!106223 res!566130) b!831697))

(assert (= (and b!831697 res!566129) b!831698))

(declare-fun m!775717 () Bool)

(assert (=> d!106223 m!775717))

(declare-fun m!775719 () Bool)

(assert (=> d!106223 m!775719))

(declare-fun m!775721 () Bool)

(assert (=> d!106223 m!775721))

(declare-fun m!775723 () Bool)

(assert (=> d!106223 m!775723))

(declare-fun m!775725 () Bool)

(assert (=> b!831697 m!775725))

(declare-fun m!775727 () Bool)

(assert (=> b!831698 m!775727))

(assert (=> b!831641 d!106223))

(declare-fun b!831707 () Bool)

(declare-fun e!463853 () Bool)

(declare-fun e!463852 () Bool)

(assert (=> b!831707 (= e!463853 e!463852)))

(declare-fun c!90245 () Bool)

(assert (=> b!831707 (= c!90245 (validKeyInArray!0 (select (arr!22317 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun b!831708 () Bool)

(declare-fun call!36364 () Bool)

(assert (=> b!831708 (= e!463852 call!36364)))

(declare-fun d!106225 () Bool)

(declare-fun res!566135 () Bool)

(assert (=> d!106225 (=> res!566135 e!463853)))

(assert (=> d!106225 (= res!566135 (bvsge #b00000000000000000000000000000000 (size!22738 _keys!976)))))

(assert (=> d!106225 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312) e!463853)))

(declare-fun b!831709 () Bool)

(declare-fun e!463851 () Bool)

(assert (=> b!831709 (= e!463851 call!36364)))

(declare-fun bm!36361 () Bool)

(assert (=> bm!36361 (= call!36364 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!976 mask!1312))))

(declare-fun b!831710 () Bool)

(assert (=> b!831710 (= e!463852 e!463851)))

(declare-fun lt!377417 () (_ BitVec 64))

(assert (=> b!831710 (= lt!377417 (select (arr!22317 _keys!976) #b00000000000000000000000000000000))))

(declare-fun lt!377419 () Unit!28497)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!46572 (_ BitVec 64) (_ BitVec 32)) Unit!28497)

(assert (=> b!831710 (= lt!377419 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!976 lt!377417 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!46572 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!831710 (arrayContainsKey!0 _keys!976 lt!377417 #b00000000000000000000000000000000)))

(declare-fun lt!377418 () Unit!28497)

(assert (=> b!831710 (= lt!377418 lt!377419)))

(declare-fun res!566136 () Bool)

(declare-datatypes ((SeekEntryResult!8734 0))(
  ( (MissingZero!8734 (index!37306 (_ BitVec 32))) (Found!8734 (index!37307 (_ BitVec 32))) (Intermediate!8734 (undefined!9546 Bool) (index!37308 (_ BitVec 32)) (x!70122 (_ BitVec 32))) (Undefined!8734) (MissingVacant!8734 (index!37309 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!46572 (_ BitVec 32)) SeekEntryResult!8734)

(assert (=> b!831710 (= res!566136 (= (seekEntryOrOpen!0 (select (arr!22317 _keys!976) #b00000000000000000000000000000000) _keys!976 mask!1312) (Found!8734 #b00000000000000000000000000000000)))))

(assert (=> b!831710 (=> (not res!566136) (not e!463851))))

(assert (= (and d!106225 (not res!566135)) b!831707))

(assert (= (and b!831707 c!90245) b!831710))

(assert (= (and b!831707 (not c!90245)) b!831708))

(assert (= (and b!831710 res!566136) b!831709))

(assert (= (or b!831709 b!831708) bm!36361))

(assert (=> b!831707 m!775697))

(assert (=> b!831707 m!775697))

(assert (=> b!831707 m!775701))

(declare-fun m!775729 () Bool)

(assert (=> bm!36361 m!775729))

(assert (=> b!831710 m!775697))

(declare-fun m!775731 () Bool)

(assert (=> b!831710 m!775731))

(declare-fun m!775733 () Bool)

(assert (=> b!831710 m!775733))

(assert (=> b!831710 m!775697))

(declare-fun m!775735 () Bool)

(assert (=> b!831710 m!775735))

(assert (=> b!831640 d!106225))

(declare-fun d!106227 () Bool)

(assert (=> d!106227 (= (getCurrentListMapNoExtraKeys!2523 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) (getCurrentListMapNoExtraKeys!2523 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!377422 () Unit!28497)

(declare-fun choose!1430 (array!46572 array!46574 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!25285 V!25285 V!25285 V!25285 (_ BitVec 32) Int) Unit!28497)

(assert (=> d!106227 (= lt!377422 (choose!1430 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> d!106227 (validMask!0 mask!1312)))

(assert (=> d!106227 (= (lemmaNoChangeToArrayThenSameMapNoExtras!613 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) lt!377422)))

(declare-fun bs!23249 () Bool)

(assert (= bs!23249 d!106227))

(assert (=> bs!23249 m!775639))

(assert (=> bs!23249 m!775637))

(declare-fun m!775737 () Bool)

(assert (=> bs!23249 m!775737))

(assert (=> bs!23249 m!775625))

(assert (=> b!831637 d!106227))

(declare-fun b!831735 () Bool)

(declare-fun e!463868 () ListLongMap!9017)

(declare-fun e!463870 () ListLongMap!9017)

(assert (=> b!831735 (= e!463868 e!463870)))

(declare-fun c!90256 () Bool)

(assert (=> b!831735 (= c!90256 (validKeyInArray!0 (select (arr!22317 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun b!831736 () Bool)

(declare-fun e!463869 () Bool)

(declare-fun e!463872 () Bool)

(assert (=> b!831736 (= e!463869 e!463872)))

(declare-fun c!90254 () Bool)

(declare-fun e!463873 () Bool)

(assert (=> b!831736 (= c!90254 e!463873)))

(declare-fun res!566146 () Bool)

(assert (=> b!831736 (=> (not res!566146) (not e!463873))))

(assert (=> b!831736 (= res!566146 (bvslt #b00000000000000000000000000000000 (size!22738 _keys!976)))))

(declare-fun b!831737 () Bool)

(declare-fun lt!377437 () Unit!28497)

(declare-fun lt!377440 () Unit!28497)

(assert (=> b!831737 (= lt!377437 lt!377440)))

(declare-fun lt!377441 () ListLongMap!9017)

(declare-fun lt!377443 () V!25285)

(declare-fun lt!377438 () (_ BitVec 64))

(declare-fun lt!377439 () (_ BitVec 64))

(assert (=> b!831737 (not (contains!4212 (+!1952 lt!377441 (tuple2!10181 lt!377438 lt!377443)) lt!377439))))

(declare-fun addStillNotContains!200 (ListLongMap!9017 (_ BitVec 64) V!25285 (_ BitVec 64)) Unit!28497)

(assert (=> b!831737 (= lt!377440 (addStillNotContains!200 lt!377441 lt!377438 lt!377443 lt!377439))))

(assert (=> b!831737 (= lt!377439 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun get!11828 (ValueCell!7191 V!25285) V!25285)

(declare-fun dynLambda!983 (Int (_ BitVec 64)) V!25285)

(assert (=> b!831737 (= lt!377443 (get!11828 (select (arr!22318 _values!788) #b00000000000000000000000000000000) (dynLambda!983 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!831737 (= lt!377438 (select (arr!22317 _keys!976) #b00000000000000000000000000000000))))

(declare-fun call!36367 () ListLongMap!9017)

(assert (=> b!831737 (= lt!377441 call!36367)))

(assert (=> b!831737 (= e!463870 (+!1952 call!36367 (tuple2!10181 (select (arr!22317 _keys!976) #b00000000000000000000000000000000) (get!11828 (select (arr!22318 _values!788) #b00000000000000000000000000000000) (dynLambda!983 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!831738 () Bool)

(declare-fun e!463874 () Bool)

(assert (=> b!831738 (= e!463872 e!463874)))

(assert (=> b!831738 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22738 _keys!976)))))

(declare-fun res!566145 () Bool)

(declare-fun lt!377442 () ListLongMap!9017)

(assert (=> b!831738 (= res!566145 (contains!4212 lt!377442 (select (arr!22317 _keys!976) #b00000000000000000000000000000000)))))

(assert (=> b!831738 (=> (not res!566145) (not e!463874))))

(declare-fun b!831739 () Bool)

(assert (=> b!831739 (= e!463870 call!36367)))

(declare-fun b!831740 () Bool)

(assert (=> b!831740 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22738 _keys!976)))))

(assert (=> b!831740 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22739 _values!788)))))

(declare-fun apply!373 (ListLongMap!9017 (_ BitVec 64)) V!25285)

(assert (=> b!831740 (= e!463874 (= (apply!373 lt!377442 (select (arr!22317 _keys!976) #b00000000000000000000000000000000)) (get!11828 (select (arr!22318 _values!788) #b00000000000000000000000000000000) (dynLambda!983 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!831741 () Bool)

(declare-fun e!463871 () Bool)

(assert (=> b!831741 (= e!463872 e!463871)))

(declare-fun c!90255 () Bool)

(assert (=> b!831741 (= c!90255 (bvslt #b00000000000000000000000000000000 (size!22738 _keys!976)))))

(declare-fun b!831742 () Bool)

(assert (=> b!831742 (= e!463871 (= lt!377442 (getCurrentListMapNoExtraKeys!2523 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!796)))))

(declare-fun bm!36364 () Bool)

(assert (=> bm!36364 (= call!36367 (getCurrentListMapNoExtraKeys!2523 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!796))))

(declare-fun b!831744 () Bool)

(declare-fun isEmpty!662 (ListLongMap!9017) Bool)

(assert (=> b!831744 (= e!463871 (isEmpty!662 lt!377442))))

(declare-fun b!831745 () Bool)

(declare-fun res!566147 () Bool)

(assert (=> b!831745 (=> (not res!566147) (not e!463869))))

(assert (=> b!831745 (= res!566147 (not (contains!4212 lt!377442 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!831746 () Bool)

(assert (=> b!831746 (= e!463873 (validKeyInArray!0 (select (arr!22317 _keys!976) #b00000000000000000000000000000000)))))

(assert (=> b!831746 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun d!106229 () Bool)

(assert (=> d!106229 e!463869))

(declare-fun res!566148 () Bool)

(assert (=> d!106229 (=> (not res!566148) (not e!463869))))

(assert (=> d!106229 (= res!566148 (not (contains!4212 lt!377442 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!106229 (= lt!377442 e!463868)))

(declare-fun c!90257 () Bool)

(assert (=> d!106229 (= c!90257 (bvsge #b00000000000000000000000000000000 (size!22738 _keys!976)))))

(assert (=> d!106229 (validMask!0 mask!1312)))

(assert (=> d!106229 (= (getCurrentListMapNoExtraKeys!2523 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) lt!377442)))

(declare-fun b!831743 () Bool)

(assert (=> b!831743 (= e!463868 (ListLongMap!9018 Nil!16005))))

(assert (= (and d!106229 c!90257) b!831743))

(assert (= (and d!106229 (not c!90257)) b!831735))

(assert (= (and b!831735 c!90256) b!831737))

(assert (= (and b!831735 (not c!90256)) b!831739))

(assert (= (or b!831737 b!831739) bm!36364))

(assert (= (and d!106229 res!566148) b!831745))

(assert (= (and b!831745 res!566147) b!831736))

(assert (= (and b!831736 res!566146) b!831746))

(assert (= (and b!831736 c!90254) b!831738))

(assert (= (and b!831736 (not c!90254)) b!831741))

(assert (= (and b!831738 res!566145) b!831740))

(assert (= (and b!831741 c!90255) b!831742))

(assert (= (and b!831741 (not c!90255)) b!831744))

(declare-fun b_lambda!11433 () Bool)

(assert (=> (not b_lambda!11433) (not b!831737)))

(declare-fun t!22389 () Bool)

(declare-fun tb!4235 () Bool)

(assert (=> (and start!71606 (= defaultEntry!796 defaultEntry!796) t!22389) tb!4235))

(declare-fun result!8029 () Bool)

(assert (=> tb!4235 (= result!8029 tp_is_empty!15213)))

(assert (=> b!831737 t!22389))

(declare-fun b_and!22583 () Bool)

(assert (= b_and!22579 (and (=> t!22389 result!8029) b_and!22583)))

(declare-fun b_lambda!11435 () Bool)

(assert (=> (not b_lambda!11435) (not b!831740)))

(assert (=> b!831740 t!22389))

(declare-fun b_and!22585 () Bool)

(assert (= b_and!22583 (and (=> t!22389 result!8029) b_and!22585)))

(declare-fun m!775739 () Bool)

(assert (=> bm!36364 m!775739))

(assert (=> b!831738 m!775697))

(assert (=> b!831738 m!775697))

(declare-fun m!775741 () Bool)

(assert (=> b!831738 m!775741))

(declare-fun m!775743 () Bool)

(assert (=> b!831737 m!775743))

(declare-fun m!775745 () Bool)

(assert (=> b!831737 m!775745))

(declare-fun m!775747 () Bool)

(assert (=> b!831737 m!775747))

(declare-fun m!775749 () Bool)

(assert (=> b!831737 m!775749))

(assert (=> b!831737 m!775743))

(declare-fun m!775751 () Bool)

(assert (=> b!831737 m!775751))

(assert (=> b!831737 m!775697))

(declare-fun m!775753 () Bool)

(assert (=> b!831737 m!775753))

(declare-fun m!775755 () Bool)

(assert (=> b!831737 m!775755))

(assert (=> b!831737 m!775745))

(assert (=> b!831737 m!775747))

(declare-fun m!775757 () Bool)

(assert (=> d!106229 m!775757))

(assert (=> d!106229 m!775625))

(assert (=> b!831742 m!775739))

(declare-fun m!775759 () Bool)

(assert (=> b!831744 m!775759))

(assert (=> b!831746 m!775697))

(assert (=> b!831746 m!775697))

(assert (=> b!831746 m!775701))

(declare-fun m!775761 () Bool)

(assert (=> b!831745 m!775761))

(assert (=> b!831735 m!775697))

(assert (=> b!831735 m!775697))

(assert (=> b!831735 m!775701))

(assert (=> b!831740 m!775745))

(assert (=> b!831740 m!775747))

(assert (=> b!831740 m!775749))

(assert (=> b!831740 m!775697))

(assert (=> b!831740 m!775697))

(declare-fun m!775763 () Bool)

(assert (=> b!831740 m!775763))

(assert (=> b!831740 m!775745))

(assert (=> b!831740 m!775747))

(assert (=> b!831637 d!106229))

(declare-fun b!831749 () Bool)

(declare-fun e!463875 () ListLongMap!9017)

(declare-fun e!463877 () ListLongMap!9017)

(assert (=> b!831749 (= e!463875 e!463877)))

(declare-fun c!90260 () Bool)

(assert (=> b!831749 (= c!90260 (validKeyInArray!0 (select (arr!22317 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun b!831750 () Bool)

(declare-fun e!463876 () Bool)

(declare-fun e!463879 () Bool)

(assert (=> b!831750 (= e!463876 e!463879)))

(declare-fun c!90258 () Bool)

(declare-fun e!463880 () Bool)

(assert (=> b!831750 (= c!90258 e!463880)))

(declare-fun res!566150 () Bool)

(assert (=> b!831750 (=> (not res!566150) (not e!463880))))

(assert (=> b!831750 (= res!566150 (bvslt #b00000000000000000000000000000000 (size!22738 _keys!976)))))

(declare-fun b!831751 () Bool)

(declare-fun lt!377444 () Unit!28497)

(declare-fun lt!377447 () Unit!28497)

(assert (=> b!831751 (= lt!377444 lt!377447)))

(declare-fun lt!377450 () V!25285)

(declare-fun lt!377446 () (_ BitVec 64))

(declare-fun lt!377445 () (_ BitVec 64))

(declare-fun lt!377448 () ListLongMap!9017)

(assert (=> b!831751 (not (contains!4212 (+!1952 lt!377448 (tuple2!10181 lt!377445 lt!377450)) lt!377446))))

(assert (=> b!831751 (= lt!377447 (addStillNotContains!200 lt!377448 lt!377445 lt!377450 lt!377446))))

(assert (=> b!831751 (= lt!377446 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!831751 (= lt!377450 (get!11828 (select (arr!22318 _values!788) #b00000000000000000000000000000000) (dynLambda!983 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!831751 (= lt!377445 (select (arr!22317 _keys!976) #b00000000000000000000000000000000))))

(declare-fun call!36368 () ListLongMap!9017)

(assert (=> b!831751 (= lt!377448 call!36368)))

(assert (=> b!831751 (= e!463877 (+!1952 call!36368 (tuple2!10181 (select (arr!22317 _keys!976) #b00000000000000000000000000000000) (get!11828 (select (arr!22318 _values!788) #b00000000000000000000000000000000) (dynLambda!983 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!831752 () Bool)

(declare-fun e!463881 () Bool)

(assert (=> b!831752 (= e!463879 e!463881)))

(assert (=> b!831752 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22738 _keys!976)))))

(declare-fun res!566149 () Bool)

(declare-fun lt!377449 () ListLongMap!9017)

(assert (=> b!831752 (= res!566149 (contains!4212 lt!377449 (select (arr!22317 _keys!976) #b00000000000000000000000000000000)))))

(assert (=> b!831752 (=> (not res!566149) (not e!463881))))

(declare-fun b!831753 () Bool)

(assert (=> b!831753 (= e!463877 call!36368)))

(declare-fun b!831754 () Bool)

(assert (=> b!831754 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22738 _keys!976)))))

(assert (=> b!831754 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22739 _values!788)))))

(assert (=> b!831754 (= e!463881 (= (apply!373 lt!377449 (select (arr!22317 _keys!976) #b00000000000000000000000000000000)) (get!11828 (select (arr!22318 _values!788) #b00000000000000000000000000000000) (dynLambda!983 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!831755 () Bool)

(declare-fun e!463878 () Bool)

(assert (=> b!831755 (= e!463879 e!463878)))

(declare-fun c!90259 () Bool)

(assert (=> b!831755 (= c!90259 (bvslt #b00000000000000000000000000000000 (size!22738 _keys!976)))))

(declare-fun b!831756 () Bool)

(assert (=> b!831756 (= e!463878 (= lt!377449 (getCurrentListMapNoExtraKeys!2523 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!796)))))

(declare-fun bm!36365 () Bool)

(assert (=> bm!36365 (= call!36368 (getCurrentListMapNoExtraKeys!2523 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!796))))

(declare-fun b!831758 () Bool)

(assert (=> b!831758 (= e!463878 (isEmpty!662 lt!377449))))

(declare-fun b!831759 () Bool)

(declare-fun res!566151 () Bool)

(assert (=> b!831759 (=> (not res!566151) (not e!463876))))

(assert (=> b!831759 (= res!566151 (not (contains!4212 lt!377449 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!831760 () Bool)

(assert (=> b!831760 (= e!463880 (validKeyInArray!0 (select (arr!22317 _keys!976) #b00000000000000000000000000000000)))))

(assert (=> b!831760 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun d!106231 () Bool)

(assert (=> d!106231 e!463876))

(declare-fun res!566152 () Bool)

(assert (=> d!106231 (=> (not res!566152) (not e!463876))))

(assert (=> d!106231 (= res!566152 (not (contains!4212 lt!377449 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!106231 (= lt!377449 e!463875)))

(declare-fun c!90261 () Bool)

(assert (=> d!106231 (= c!90261 (bvsge #b00000000000000000000000000000000 (size!22738 _keys!976)))))

(assert (=> d!106231 (validMask!0 mask!1312)))

(assert (=> d!106231 (= (getCurrentListMapNoExtraKeys!2523 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) lt!377449)))

(declare-fun b!831757 () Bool)

(assert (=> b!831757 (= e!463875 (ListLongMap!9018 Nil!16005))))

(assert (= (and d!106231 c!90261) b!831757))

(assert (= (and d!106231 (not c!90261)) b!831749))

(assert (= (and b!831749 c!90260) b!831751))

(assert (= (and b!831749 (not c!90260)) b!831753))

(assert (= (or b!831751 b!831753) bm!36365))

(assert (= (and d!106231 res!566152) b!831759))

(assert (= (and b!831759 res!566151) b!831750))

(assert (= (and b!831750 res!566150) b!831760))

(assert (= (and b!831750 c!90258) b!831752))

(assert (= (and b!831750 (not c!90258)) b!831755))

(assert (= (and b!831752 res!566149) b!831754))

(assert (= (and b!831755 c!90259) b!831756))

(assert (= (and b!831755 (not c!90259)) b!831758))

(declare-fun b_lambda!11437 () Bool)

(assert (=> (not b_lambda!11437) (not b!831751)))

(assert (=> b!831751 t!22389))

(declare-fun b_and!22587 () Bool)

(assert (= b_and!22585 (and (=> t!22389 result!8029) b_and!22587)))

(declare-fun b_lambda!11439 () Bool)

(assert (=> (not b_lambda!11439) (not b!831754)))

(assert (=> b!831754 t!22389))

(declare-fun b_and!22589 () Bool)

(assert (= b_and!22587 (and (=> t!22389 result!8029) b_and!22589)))

(declare-fun m!775765 () Bool)

(assert (=> bm!36365 m!775765))

(assert (=> b!831752 m!775697))

(assert (=> b!831752 m!775697))

(declare-fun m!775767 () Bool)

(assert (=> b!831752 m!775767))

(declare-fun m!775769 () Bool)

(assert (=> b!831751 m!775769))

(assert (=> b!831751 m!775745))

(assert (=> b!831751 m!775747))

(assert (=> b!831751 m!775749))

(assert (=> b!831751 m!775769))

(declare-fun m!775771 () Bool)

(assert (=> b!831751 m!775771))

(assert (=> b!831751 m!775697))

(declare-fun m!775773 () Bool)

(assert (=> b!831751 m!775773))

(declare-fun m!775775 () Bool)

(assert (=> b!831751 m!775775))

(assert (=> b!831751 m!775745))

(assert (=> b!831751 m!775747))

(declare-fun m!775777 () Bool)

(assert (=> d!106231 m!775777))

(assert (=> d!106231 m!775625))

(assert (=> b!831756 m!775765))

(declare-fun m!775779 () Bool)

(assert (=> b!831758 m!775779))

(assert (=> b!831760 m!775697))

(assert (=> b!831760 m!775697))

(assert (=> b!831760 m!775701))

(declare-fun m!775781 () Bool)

(assert (=> b!831759 m!775781))

(assert (=> b!831749 m!775697))

(assert (=> b!831749 m!775697))

(assert (=> b!831749 m!775701))

(assert (=> b!831754 m!775745))

(assert (=> b!831754 m!775747))

(assert (=> b!831754 m!775749))

(assert (=> b!831754 m!775697))

(assert (=> b!831754 m!775697))

(declare-fun m!775783 () Bool)

(assert (=> b!831754 m!775783))

(assert (=> b!831754 m!775745))

(assert (=> b!831754 m!775747))

(assert (=> b!831637 d!106231))

(declare-fun d!106233 () Bool)

(assert (=> d!106233 (= (validMask!0 mask!1312) (and (or (= mask!1312 #b00000000000000000000000000000111) (= mask!1312 #b00000000000000000000000000001111) (= mask!1312 #b00000000000000000000000000011111) (= mask!1312 #b00000000000000000000000000111111) (= mask!1312 #b00000000000000000000000001111111) (= mask!1312 #b00000000000000000000000011111111) (= mask!1312 #b00000000000000000000000111111111) (= mask!1312 #b00000000000000000000001111111111) (= mask!1312 #b00000000000000000000011111111111) (= mask!1312 #b00000000000000000000111111111111) (= mask!1312 #b00000000000000000001111111111111) (= mask!1312 #b00000000000000000011111111111111) (= mask!1312 #b00000000000000000111111111111111) (= mask!1312 #b00000000000000001111111111111111) (= mask!1312 #b00000000000000011111111111111111) (= mask!1312 #b00000000000000111111111111111111) (= mask!1312 #b00000000000001111111111111111111) (= mask!1312 #b00000000000011111111111111111111) (= mask!1312 #b00000000000111111111111111111111) (= mask!1312 #b00000000001111111111111111111111) (= mask!1312 #b00000000011111111111111111111111) (= mask!1312 #b00000000111111111111111111111111) (= mask!1312 #b00000001111111111111111111111111) (= mask!1312 #b00000011111111111111111111111111) (= mask!1312 #b00000111111111111111111111111111) (= mask!1312 #b00001111111111111111111111111111) (= mask!1312 #b00011111111111111111111111111111) (= mask!1312 #b00111111111111111111111111111111)) (bvsle mask!1312 #b00111111111111111111111111111111)))))

(assert (=> start!71606 d!106233))

(declare-fun d!106235 () Bool)

(assert (=> d!106235 (= (array_inv!17749 _keys!976) (bvsge (size!22738 _keys!976) #b00000000000000000000000000000000))))

(assert (=> start!71606 d!106235))

(declare-fun d!106237 () Bool)

(assert (=> d!106237 (= (array_inv!17750 _values!788) (bvsge (size!22739 _values!788) #b00000000000000000000000000000000))))

(assert (=> start!71606 d!106237))

(declare-fun d!106239 () Bool)

(declare-fun e!463882 () Bool)

(assert (=> d!106239 e!463882))

(declare-fun res!566154 () Bool)

(assert (=> d!106239 (=> (not res!566154) (not e!463882))))

(declare-fun lt!377451 () ListLongMap!9017)

(assert (=> d!106239 (= res!566154 (contains!4212 lt!377451 (_1!5100 lt!377372)))))

(declare-fun lt!377453 () List!16008)

(assert (=> d!106239 (= lt!377451 (ListLongMap!9018 lt!377453))))

(declare-fun lt!377454 () Unit!28497)

(declare-fun lt!377452 () Unit!28497)

(assert (=> d!106239 (= lt!377454 lt!377452)))

(assert (=> d!106239 (= (getValueByKey!415 lt!377453 (_1!5100 lt!377372)) (Some!420 (_2!5100 lt!377372)))))

(assert (=> d!106239 (= lt!377452 (lemmaContainsTupThenGetReturnValue!231 lt!377453 (_1!5100 lt!377372) (_2!5100 lt!377372)))))

(assert (=> d!106239 (= lt!377453 (insertStrictlySorted!269 (toList!4524 (+!1952 lt!377369 lt!377371)) (_1!5100 lt!377372) (_2!5100 lt!377372)))))

(assert (=> d!106239 (= (+!1952 (+!1952 lt!377369 lt!377371) lt!377372) lt!377451)))

(declare-fun b!831761 () Bool)

(declare-fun res!566153 () Bool)

(assert (=> b!831761 (=> (not res!566153) (not e!463882))))

(assert (=> b!831761 (= res!566153 (= (getValueByKey!415 (toList!4524 lt!377451) (_1!5100 lt!377372)) (Some!420 (_2!5100 lt!377372))))))

(declare-fun b!831762 () Bool)

(assert (=> b!831762 (= e!463882 (contains!4213 (toList!4524 lt!377451) lt!377372))))

(assert (= (and d!106239 res!566154) b!831761))

(assert (= (and b!831761 res!566153) b!831762))

(declare-fun m!775785 () Bool)

(assert (=> d!106239 m!775785))

(declare-fun m!775787 () Bool)

(assert (=> d!106239 m!775787))

(declare-fun m!775789 () Bool)

(assert (=> d!106239 m!775789))

(declare-fun m!775791 () Bool)

(assert (=> d!106239 m!775791))

(declare-fun m!775793 () Bool)

(assert (=> b!831761 m!775793))

(declare-fun m!775795 () Bool)

(assert (=> b!831762 m!775795))

(assert (=> b!831638 d!106239))

(declare-fun d!106241 () Bool)

(declare-fun e!463883 () Bool)

(assert (=> d!106241 e!463883))

(declare-fun res!566156 () Bool)

(assert (=> d!106241 (=> (not res!566156) (not e!463883))))

(declare-fun lt!377455 () ListLongMap!9017)

(assert (=> d!106241 (= res!566156 (contains!4212 lt!377455 (_1!5100 lt!377371)))))

(declare-fun lt!377457 () List!16008)

(assert (=> d!106241 (= lt!377455 (ListLongMap!9018 lt!377457))))

(declare-fun lt!377458 () Unit!28497)

(declare-fun lt!377456 () Unit!28497)

(assert (=> d!106241 (= lt!377458 lt!377456)))

(assert (=> d!106241 (= (getValueByKey!415 lt!377457 (_1!5100 lt!377371)) (Some!420 (_2!5100 lt!377371)))))

(assert (=> d!106241 (= lt!377456 (lemmaContainsTupThenGetReturnValue!231 lt!377457 (_1!5100 lt!377371) (_2!5100 lt!377371)))))

(assert (=> d!106241 (= lt!377457 (insertStrictlySorted!269 (toList!4524 lt!377369) (_1!5100 lt!377371) (_2!5100 lt!377371)))))

(assert (=> d!106241 (= (+!1952 lt!377369 lt!377371) lt!377455)))

(declare-fun b!831763 () Bool)

(declare-fun res!566155 () Bool)

(assert (=> b!831763 (=> (not res!566155) (not e!463883))))

(assert (=> b!831763 (= res!566155 (= (getValueByKey!415 (toList!4524 lt!377455) (_1!5100 lt!377371)) (Some!420 (_2!5100 lt!377371))))))

(declare-fun b!831764 () Bool)

(assert (=> b!831764 (= e!463883 (contains!4213 (toList!4524 lt!377455) lt!377371))))

(assert (= (and d!106241 res!566156) b!831763))

(assert (= (and b!831763 res!566155) b!831764))

(declare-fun m!775797 () Bool)

(assert (=> d!106241 m!775797))

(declare-fun m!775799 () Bool)

(assert (=> d!106241 m!775799))

(declare-fun m!775801 () Bool)

(assert (=> d!106241 m!775801))

(declare-fun m!775803 () Bool)

(assert (=> d!106241 m!775803))

(declare-fun m!775805 () Bool)

(assert (=> b!831763 m!775805))

(declare-fun m!775807 () Bool)

(assert (=> b!831764 m!775807))

(assert (=> b!831638 d!106241))

(declare-fun d!106243 () Bool)

(declare-fun e!463884 () Bool)

(assert (=> d!106243 e!463884))

(declare-fun res!566158 () Bool)

(assert (=> d!106243 (=> (not res!566158) (not e!463884))))

(declare-fun lt!377459 () ListLongMap!9017)

(assert (=> d!106243 (= res!566158 (contains!4212 lt!377459 (_1!5100 lt!377372)))))

(declare-fun lt!377461 () List!16008)

(assert (=> d!106243 (= lt!377459 (ListLongMap!9018 lt!377461))))

(declare-fun lt!377462 () Unit!28497)

(declare-fun lt!377460 () Unit!28497)

(assert (=> d!106243 (= lt!377462 lt!377460)))

(assert (=> d!106243 (= (getValueByKey!415 lt!377461 (_1!5100 lt!377372)) (Some!420 (_2!5100 lt!377372)))))

(assert (=> d!106243 (= lt!377460 (lemmaContainsTupThenGetReturnValue!231 lt!377461 (_1!5100 lt!377372) (_2!5100 lt!377372)))))

(assert (=> d!106243 (= lt!377461 (insertStrictlySorted!269 (toList!4524 lt!377369) (_1!5100 lt!377372) (_2!5100 lt!377372)))))

(assert (=> d!106243 (= (+!1952 lt!377369 lt!377372) lt!377459)))

(declare-fun b!831765 () Bool)

(declare-fun res!566157 () Bool)

(assert (=> b!831765 (=> (not res!566157) (not e!463884))))

(assert (=> b!831765 (= res!566157 (= (getValueByKey!415 (toList!4524 lt!377459) (_1!5100 lt!377372)) (Some!420 (_2!5100 lt!377372))))))

(declare-fun b!831766 () Bool)

(assert (=> b!831766 (= e!463884 (contains!4213 (toList!4524 lt!377459) lt!377372))))

(assert (= (and d!106243 res!566158) b!831765))

(assert (= (and b!831765 res!566157) b!831766))

(declare-fun m!775809 () Bool)

(assert (=> d!106243 m!775809))

(declare-fun m!775811 () Bool)

(assert (=> d!106243 m!775811))

(declare-fun m!775813 () Bool)

(assert (=> d!106243 m!775813))

(declare-fun m!775815 () Bool)

(assert (=> d!106243 m!775815))

(declare-fun m!775817 () Bool)

(assert (=> b!831765 m!775817))

(declare-fun m!775819 () Bool)

(assert (=> b!831766 m!775819))

(assert (=> b!831642 d!106243))

(declare-fun b!831809 () Bool)

(declare-fun res!566177 () Bool)

(declare-fun e!463920 () Bool)

(assert (=> b!831809 (=> (not res!566177) (not e!463920))))

(declare-fun e!463922 () Bool)

(assert (=> b!831809 (= res!566177 e!463922)))

(declare-fun c!90274 () Bool)

(assert (=> b!831809 (= c!90274 (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!831810 () Bool)

(declare-fun e!463913 () Unit!28497)

(declare-fun Unit!28501 () Unit!28497)

(assert (=> b!831810 (= e!463913 Unit!28501)))

(declare-fun bm!36380 () Bool)

(declare-fun call!36388 () ListLongMap!9017)

(declare-fun call!36384 () ListLongMap!9017)

(assert (=> bm!36380 (= call!36388 call!36384)))

(declare-fun b!831811 () Bool)

(declare-fun e!463914 () ListLongMap!9017)

(declare-fun e!463923 () ListLongMap!9017)

(assert (=> b!831811 (= e!463914 e!463923)))

(declare-fun c!90279 () Bool)

(assert (=> b!831811 (= c!90279 (and (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysAfter!53 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!831812 () Bool)

(declare-fun lt!377518 () Unit!28497)

(assert (=> b!831812 (= e!463913 lt!377518)))

(declare-fun lt!377512 () ListLongMap!9017)

(assert (=> b!831812 (= lt!377512 (getCurrentListMapNoExtraKeys!2523 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!377507 () (_ BitVec 64))

(assert (=> b!831812 (= lt!377507 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!377513 () (_ BitVec 64))

(assert (=> b!831812 (= lt!377513 (select (arr!22317 _keys!976) #b00000000000000000000000000000000))))

(declare-fun lt!377519 () Unit!28497)

(declare-fun addStillContains!324 (ListLongMap!9017 (_ BitVec 64) V!25285 (_ BitVec 64)) Unit!28497)

(assert (=> b!831812 (= lt!377519 (addStillContains!324 lt!377512 lt!377507 zeroValueAfter!34 lt!377513))))

(assert (=> b!831812 (contains!4212 (+!1952 lt!377512 (tuple2!10181 lt!377507 zeroValueAfter!34)) lt!377513)))

(declare-fun lt!377517 () Unit!28497)

(assert (=> b!831812 (= lt!377517 lt!377519)))

(declare-fun lt!377511 () ListLongMap!9017)

(assert (=> b!831812 (= lt!377511 (getCurrentListMapNoExtraKeys!2523 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!377521 () (_ BitVec 64))

(assert (=> b!831812 (= lt!377521 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!377524 () (_ BitVec 64))

(assert (=> b!831812 (= lt!377524 (select (arr!22317 _keys!976) #b00000000000000000000000000000000))))

(declare-fun lt!377514 () Unit!28497)

(declare-fun addApplyDifferent!324 (ListLongMap!9017 (_ BitVec 64) V!25285 (_ BitVec 64)) Unit!28497)

(assert (=> b!831812 (= lt!377514 (addApplyDifferent!324 lt!377511 lt!377521 minValue!754 lt!377524))))

(assert (=> b!831812 (= (apply!373 (+!1952 lt!377511 (tuple2!10181 lt!377521 minValue!754)) lt!377524) (apply!373 lt!377511 lt!377524))))

(declare-fun lt!377520 () Unit!28497)

(assert (=> b!831812 (= lt!377520 lt!377514)))

(declare-fun lt!377510 () ListLongMap!9017)

(assert (=> b!831812 (= lt!377510 (getCurrentListMapNoExtraKeys!2523 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!377526 () (_ BitVec 64))

(assert (=> b!831812 (= lt!377526 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!377515 () (_ BitVec 64))

(assert (=> b!831812 (= lt!377515 (select (arr!22317 _keys!976) #b00000000000000000000000000000000))))

(declare-fun lt!377527 () Unit!28497)

(assert (=> b!831812 (= lt!377527 (addApplyDifferent!324 lt!377510 lt!377526 zeroValueAfter!34 lt!377515))))

(assert (=> b!831812 (= (apply!373 (+!1952 lt!377510 (tuple2!10181 lt!377526 zeroValueAfter!34)) lt!377515) (apply!373 lt!377510 lt!377515))))

(declare-fun lt!377523 () Unit!28497)

(assert (=> b!831812 (= lt!377523 lt!377527)))

(declare-fun lt!377525 () ListLongMap!9017)

(assert (=> b!831812 (= lt!377525 (getCurrentListMapNoExtraKeys!2523 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!377516 () (_ BitVec 64))

(assert (=> b!831812 (= lt!377516 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!377528 () (_ BitVec 64))

(assert (=> b!831812 (= lt!377528 (select (arr!22317 _keys!976) #b00000000000000000000000000000000))))

(assert (=> b!831812 (= lt!377518 (addApplyDifferent!324 lt!377525 lt!377516 minValue!754 lt!377528))))

(assert (=> b!831812 (= (apply!373 (+!1952 lt!377525 (tuple2!10181 lt!377516 minValue!754)) lt!377528) (apply!373 lt!377525 lt!377528))))

(declare-fun b!831813 () Bool)

(declare-fun call!36386 () Bool)

(assert (=> b!831813 (= e!463922 (not call!36386))))

(declare-fun b!831814 () Bool)

(declare-fun e!463915 () Bool)

(assert (=> b!831814 (= e!463922 e!463915)))

(declare-fun res!566181 () Bool)

(assert (=> b!831814 (= res!566181 call!36386)))

(assert (=> b!831814 (=> (not res!566181) (not e!463915))))

(declare-fun bm!36381 () Bool)

(declare-fun lt!377508 () ListLongMap!9017)

(assert (=> bm!36381 (= call!36386 (contains!4212 lt!377508 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!831815 () Bool)

(declare-fun e!463921 () Bool)

(declare-fun e!463918 () Bool)

(assert (=> b!831815 (= e!463921 e!463918)))

(declare-fun res!566182 () Bool)

(declare-fun call!36385 () Bool)

(assert (=> b!831815 (= res!566182 call!36385)))

(assert (=> b!831815 (=> (not res!566182) (not e!463918))))

(declare-fun b!831816 () Bool)

(declare-fun call!36389 () ListLongMap!9017)

(assert (=> b!831816 (= e!463914 (+!1952 call!36389 (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))))

(declare-fun bm!36382 () Bool)

(assert (=> bm!36382 (= call!36384 (getCurrentListMapNoExtraKeys!2523 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!831817 () Bool)

(declare-fun e!463917 () ListLongMap!9017)

(declare-fun call!36383 () ListLongMap!9017)

(assert (=> b!831817 (= e!463917 call!36383)))

(declare-fun b!831818 () Bool)

(assert (=> b!831818 (= e!463921 (not call!36385))))

(declare-fun d!106245 () Bool)

(assert (=> d!106245 e!463920))

(declare-fun res!566180 () Bool)

(assert (=> d!106245 (=> (not res!566180) (not e!463920))))

(assert (=> d!106245 (= res!566180 (or (bvsge #b00000000000000000000000000000000 (size!22738 _keys!976)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22738 _keys!976)))))))

(declare-fun lt!377509 () ListLongMap!9017)

(assert (=> d!106245 (= lt!377508 lt!377509)))

(declare-fun lt!377522 () Unit!28497)

(assert (=> d!106245 (= lt!377522 e!463913)))

(declare-fun c!90276 () Bool)

(declare-fun e!463919 () Bool)

(assert (=> d!106245 (= c!90276 e!463919)))

(declare-fun res!566183 () Bool)

(assert (=> d!106245 (=> (not res!566183) (not e!463919))))

(assert (=> d!106245 (= res!566183 (bvslt #b00000000000000000000000000000000 (size!22738 _keys!976)))))

(assert (=> d!106245 (= lt!377509 e!463914)))

(declare-fun c!90277 () Bool)

(assert (=> d!106245 (= c!90277 (and (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!106245 (validMask!0 mask!1312)))

(assert (=> d!106245 (= (getCurrentListMap!2593 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) lt!377508)))

(declare-fun b!831819 () Bool)

(assert (=> b!831819 (= e!463919 (validKeyInArray!0 (select (arr!22317 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun b!831820 () Bool)

(declare-fun e!463912 () Bool)

(declare-fun e!463911 () Bool)

(assert (=> b!831820 (= e!463912 e!463911)))

(declare-fun res!566179 () Bool)

(assert (=> b!831820 (=> (not res!566179) (not e!463911))))

(assert (=> b!831820 (= res!566179 (contains!4212 lt!377508 (select (arr!22317 _keys!976) #b00000000000000000000000000000000)))))

(assert (=> b!831820 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22738 _keys!976)))))

(declare-fun bm!36383 () Bool)

(assert (=> bm!36383 (= call!36389 (+!1952 (ite c!90277 call!36384 (ite c!90279 call!36388 call!36383)) (ite (or c!90277 c!90279) (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34) (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))

(declare-fun b!831821 () Bool)

(assert (=> b!831821 (= e!463915 (= (apply!373 lt!377508 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValueAfter!34))))

(declare-fun b!831822 () Bool)

(declare-fun c!90275 () Bool)

(assert (=> b!831822 (= c!90275 (and (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!831822 (= e!463923 e!463917)))

(declare-fun bm!36384 () Bool)

(assert (=> bm!36384 (= call!36383 call!36388)))

(declare-fun bm!36385 () Bool)

(declare-fun call!36387 () ListLongMap!9017)

(assert (=> bm!36385 (= call!36387 call!36389)))

(declare-fun b!831823 () Bool)

(assert (=> b!831823 (= e!463918 (= (apply!373 lt!377508 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!754))))

(declare-fun b!831824 () Bool)

(assert (=> b!831824 (= e!463920 e!463921)))

(declare-fun c!90278 () Bool)

(assert (=> b!831824 (= c!90278 (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!831825 () Bool)

(declare-fun e!463916 () Bool)

(assert (=> b!831825 (= e!463916 (validKeyInArray!0 (select (arr!22317 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun b!831826 () Bool)

(assert (=> b!831826 (= e!463923 call!36387)))

(declare-fun b!831827 () Bool)

(assert (=> b!831827 (= e!463911 (= (apply!373 lt!377508 (select (arr!22317 _keys!976) #b00000000000000000000000000000000)) (get!11828 (select (arr!22318 _values!788) #b00000000000000000000000000000000) (dynLambda!983 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!831827 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22739 _values!788)))))

(assert (=> b!831827 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22738 _keys!976)))))

(declare-fun b!831828 () Bool)

(assert (=> b!831828 (= e!463917 call!36387)))

(declare-fun b!831829 () Bool)

(declare-fun res!566178 () Bool)

(assert (=> b!831829 (=> (not res!566178) (not e!463920))))

(assert (=> b!831829 (= res!566178 e!463912)))

(declare-fun res!566185 () Bool)

(assert (=> b!831829 (=> res!566185 e!463912)))

(assert (=> b!831829 (= res!566185 (not e!463916))))

(declare-fun res!566184 () Bool)

(assert (=> b!831829 (=> (not res!566184) (not e!463916))))

(assert (=> b!831829 (= res!566184 (bvslt #b00000000000000000000000000000000 (size!22738 _keys!976)))))

(declare-fun bm!36386 () Bool)

(assert (=> bm!36386 (= call!36385 (contains!4212 lt!377508 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!106245 c!90277) b!831816))

(assert (= (and d!106245 (not c!90277)) b!831811))

(assert (= (and b!831811 c!90279) b!831826))

(assert (= (and b!831811 (not c!90279)) b!831822))

(assert (= (and b!831822 c!90275) b!831828))

(assert (= (and b!831822 (not c!90275)) b!831817))

(assert (= (or b!831828 b!831817) bm!36384))

(assert (= (or b!831826 bm!36384) bm!36380))

(assert (= (or b!831826 b!831828) bm!36385))

(assert (= (or b!831816 bm!36380) bm!36382))

(assert (= (or b!831816 bm!36385) bm!36383))

(assert (= (and d!106245 res!566183) b!831819))

(assert (= (and d!106245 c!90276) b!831812))

(assert (= (and d!106245 (not c!90276)) b!831810))

(assert (= (and d!106245 res!566180) b!831829))

(assert (= (and b!831829 res!566184) b!831825))

(assert (= (and b!831829 (not res!566185)) b!831820))

(assert (= (and b!831820 res!566179) b!831827))

(assert (= (and b!831829 res!566178) b!831809))

(assert (= (and b!831809 c!90274) b!831814))

(assert (= (and b!831809 (not c!90274)) b!831813))

(assert (= (and b!831814 res!566181) b!831821))

(assert (= (or b!831814 b!831813) bm!36381))

(assert (= (and b!831809 res!566177) b!831824))

(assert (= (and b!831824 c!90278) b!831815))

(assert (= (and b!831824 (not c!90278)) b!831818))

(assert (= (and b!831815 res!566182) b!831823))

(assert (= (or b!831815 b!831818) bm!36386))

(declare-fun b_lambda!11441 () Bool)

(assert (=> (not b_lambda!11441) (not b!831827)))

(assert (=> b!831827 t!22389))

(declare-fun b_and!22591 () Bool)

(assert (= b_and!22589 (and (=> t!22389 result!8029) b_and!22591)))

(assert (=> b!831819 m!775697))

(assert (=> b!831819 m!775697))

(assert (=> b!831819 m!775701))

(assert (=> b!831825 m!775697))

(assert (=> b!831825 m!775697))

(assert (=> b!831825 m!775701))

(declare-fun m!775821 () Bool)

(assert (=> b!831812 m!775821))

(declare-fun m!775823 () Bool)

(assert (=> b!831812 m!775823))

(declare-fun m!775825 () Bool)

(assert (=> b!831812 m!775825))

(assert (=> b!831812 m!775637))

(declare-fun m!775827 () Bool)

(assert (=> b!831812 m!775827))

(declare-fun m!775829 () Bool)

(assert (=> b!831812 m!775829))

(assert (=> b!831812 m!775825))

(declare-fun m!775831 () Bool)

(assert (=> b!831812 m!775831))

(declare-fun m!775833 () Bool)

(assert (=> b!831812 m!775833))

(declare-fun m!775835 () Bool)

(assert (=> b!831812 m!775835))

(declare-fun m!775837 () Bool)

(assert (=> b!831812 m!775837))

(declare-fun m!775839 () Bool)

(assert (=> b!831812 m!775839))

(assert (=> b!831812 m!775835))

(declare-fun m!775841 () Bool)

(assert (=> b!831812 m!775841))

(declare-fun m!775843 () Bool)

(assert (=> b!831812 m!775843))

(declare-fun m!775845 () Bool)

(assert (=> b!831812 m!775845))

(assert (=> b!831812 m!775697))

(assert (=> b!831812 m!775837))

(declare-fun m!775847 () Bool)

(assert (=> b!831812 m!775847))

(declare-fun m!775849 () Bool)

(assert (=> b!831812 m!775849))

(assert (=> b!831812 m!775821))

(declare-fun m!775851 () Bool)

(assert (=> b!831816 m!775851))

(declare-fun m!775853 () Bool)

(assert (=> bm!36386 m!775853))

(declare-fun m!775855 () Bool)

(assert (=> b!831823 m!775855))

(assert (=> b!831827 m!775747))

(assert (=> b!831827 m!775697))

(declare-fun m!775857 () Bool)

(assert (=> b!831827 m!775857))

(assert (=> b!831827 m!775745))

(assert (=> b!831827 m!775697))

(assert (=> b!831827 m!775745))

(assert (=> b!831827 m!775747))

(assert (=> b!831827 m!775749))

(assert (=> b!831820 m!775697))

(assert (=> b!831820 m!775697))

(declare-fun m!775859 () Bool)

(assert (=> b!831820 m!775859))

(assert (=> bm!36382 m!775637))

(assert (=> d!106245 m!775625))

(declare-fun m!775861 () Bool)

(assert (=> bm!36383 m!775861))

(declare-fun m!775863 () Bool)

(assert (=> bm!36381 m!775863))

(declare-fun m!775865 () Bool)

(assert (=> b!831821 m!775865))

(assert (=> b!831642 d!106245))

(declare-fun d!106247 () Bool)

(declare-fun e!463924 () Bool)

(assert (=> d!106247 e!463924))

(declare-fun res!566187 () Bool)

(assert (=> d!106247 (=> (not res!566187) (not e!463924))))

(declare-fun lt!377529 () ListLongMap!9017)

(assert (=> d!106247 (= res!566187 (contains!4212 lt!377529 (_1!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))))

(declare-fun lt!377531 () List!16008)

(assert (=> d!106247 (= lt!377529 (ListLongMap!9018 lt!377531))))

(declare-fun lt!377532 () Unit!28497)

(declare-fun lt!377530 () Unit!28497)

(assert (=> d!106247 (= lt!377532 lt!377530)))

(assert (=> d!106247 (= (getValueByKey!415 lt!377531 (_1!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))) (Some!420 (_2!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))))

(assert (=> d!106247 (= lt!377530 (lemmaContainsTupThenGetReturnValue!231 lt!377531 (_1!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)) (_2!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))))

(assert (=> d!106247 (= lt!377531 (insertStrictlySorted!269 (toList!4524 (+!1952 lt!377373 lt!377371)) (_1!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)) (_2!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))))

(assert (=> d!106247 (= (+!1952 (+!1952 lt!377373 lt!377371) (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)) lt!377529)))

(declare-fun b!831830 () Bool)

(declare-fun res!566186 () Bool)

(assert (=> b!831830 (=> (not res!566186) (not e!463924))))

(assert (=> b!831830 (= res!566186 (= (getValueByKey!415 (toList!4524 lt!377529) (_1!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))) (Some!420 (_2!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))))))

(declare-fun b!831831 () Bool)

(assert (=> b!831831 (= e!463924 (contains!4213 (toList!4524 lt!377529) (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))))

(assert (= (and d!106247 res!566187) b!831830))

(assert (= (and b!831830 res!566186) b!831831))

(declare-fun m!775867 () Bool)

(assert (=> d!106247 m!775867))

(declare-fun m!775869 () Bool)

(assert (=> d!106247 m!775869))

(declare-fun m!775871 () Bool)

(assert (=> d!106247 m!775871))

(declare-fun m!775873 () Bool)

(assert (=> d!106247 m!775873))

(declare-fun m!775875 () Bool)

(assert (=> b!831830 m!775875))

(declare-fun m!775877 () Bool)

(assert (=> b!831831 m!775877))

(assert (=> b!831642 d!106247))

(declare-fun d!106249 () Bool)

(declare-fun e!463925 () Bool)

(assert (=> d!106249 e!463925))

(declare-fun res!566189 () Bool)

(assert (=> d!106249 (=> (not res!566189) (not e!463925))))

(declare-fun lt!377533 () ListLongMap!9017)

(assert (=> d!106249 (= res!566189 (contains!4212 lt!377533 (_1!5100 lt!377371)))))

(declare-fun lt!377535 () List!16008)

(assert (=> d!106249 (= lt!377533 (ListLongMap!9018 lt!377535))))

(declare-fun lt!377536 () Unit!28497)

(declare-fun lt!377534 () Unit!28497)

(assert (=> d!106249 (= lt!377536 lt!377534)))

(assert (=> d!106249 (= (getValueByKey!415 lt!377535 (_1!5100 lt!377371)) (Some!420 (_2!5100 lt!377371)))))

(assert (=> d!106249 (= lt!377534 (lemmaContainsTupThenGetReturnValue!231 lt!377535 (_1!5100 lt!377371) (_2!5100 lt!377371)))))

(assert (=> d!106249 (= lt!377535 (insertStrictlySorted!269 (toList!4524 lt!377373) (_1!5100 lt!377371) (_2!5100 lt!377371)))))

(assert (=> d!106249 (= (+!1952 lt!377373 lt!377371) lt!377533)))

(declare-fun b!831832 () Bool)

(declare-fun res!566188 () Bool)

(assert (=> b!831832 (=> (not res!566188) (not e!463925))))

(assert (=> b!831832 (= res!566188 (= (getValueByKey!415 (toList!4524 lt!377533) (_1!5100 lt!377371)) (Some!420 (_2!5100 lt!377371))))))

(declare-fun b!831833 () Bool)

(assert (=> b!831833 (= e!463925 (contains!4213 (toList!4524 lt!377533) lt!377371))))

(assert (= (and d!106249 res!566189) b!831832))

(assert (= (and b!831832 res!566188) b!831833))

(declare-fun m!775879 () Bool)

(assert (=> d!106249 m!775879))

(declare-fun m!775881 () Bool)

(assert (=> d!106249 m!775881))

(declare-fun m!775883 () Bool)

(assert (=> d!106249 m!775883))

(declare-fun m!775885 () Bool)

(assert (=> d!106249 m!775885))

(declare-fun m!775887 () Bool)

(assert (=> b!831832 m!775887))

(declare-fun m!775889 () Bool)

(assert (=> b!831833 m!775889))

(assert (=> b!831642 d!106249))

(declare-fun d!106251 () Bool)

(declare-fun e!463926 () Bool)

(assert (=> d!106251 e!463926))

(declare-fun res!566191 () Bool)

(assert (=> d!106251 (=> (not res!566191) (not e!463926))))

(declare-fun lt!377537 () ListLongMap!9017)

(assert (=> d!106251 (= res!566191 (contains!4212 lt!377537 (_1!5100 lt!377371)))))

(declare-fun lt!377539 () List!16008)

(assert (=> d!106251 (= lt!377537 (ListLongMap!9018 lt!377539))))

(declare-fun lt!377540 () Unit!28497)

(declare-fun lt!377538 () Unit!28497)

(assert (=> d!106251 (= lt!377540 lt!377538)))

(assert (=> d!106251 (= (getValueByKey!415 lt!377539 (_1!5100 lt!377371)) (Some!420 (_2!5100 lt!377371)))))

(assert (=> d!106251 (= lt!377538 (lemmaContainsTupThenGetReturnValue!231 lt!377539 (_1!5100 lt!377371) (_2!5100 lt!377371)))))

(assert (=> d!106251 (= lt!377539 (insertStrictlySorted!269 (toList!4524 (+!1952 lt!377369 lt!377372)) (_1!5100 lt!377371) (_2!5100 lt!377371)))))

(assert (=> d!106251 (= (+!1952 (+!1952 lt!377369 lt!377372) lt!377371) lt!377537)))

(declare-fun b!831834 () Bool)

(declare-fun res!566190 () Bool)

(assert (=> b!831834 (=> (not res!566190) (not e!463926))))

(assert (=> b!831834 (= res!566190 (= (getValueByKey!415 (toList!4524 lt!377537) (_1!5100 lt!377371)) (Some!420 (_2!5100 lt!377371))))))

(declare-fun b!831835 () Bool)

(assert (=> b!831835 (= e!463926 (contains!4213 (toList!4524 lt!377537) lt!377371))))

(assert (= (and d!106251 res!566191) b!831834))

(assert (= (and b!831834 res!566190) b!831835))

(declare-fun m!775891 () Bool)

(assert (=> d!106251 m!775891))

(declare-fun m!775893 () Bool)

(assert (=> d!106251 m!775893))

(declare-fun m!775895 () Bool)

(assert (=> d!106251 m!775895))

(declare-fun m!775897 () Bool)

(assert (=> d!106251 m!775897))

(declare-fun m!775899 () Bool)

(assert (=> b!831834 m!775899))

(declare-fun m!775901 () Bool)

(assert (=> b!831835 m!775901))

(assert (=> b!831642 d!106251))

(declare-fun b!831836 () Bool)

(declare-fun res!566192 () Bool)

(declare-fun e!463936 () Bool)

(assert (=> b!831836 (=> (not res!566192) (not e!463936))))

(declare-fun e!463938 () Bool)

(assert (=> b!831836 (= res!566192 e!463938)))

(declare-fun c!90280 () Bool)

(assert (=> b!831836 (= c!90280 (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!831837 () Bool)

(declare-fun e!463929 () Unit!28497)

(declare-fun Unit!28502 () Unit!28497)

(assert (=> b!831837 (= e!463929 Unit!28502)))

(declare-fun bm!36387 () Bool)

(declare-fun call!36395 () ListLongMap!9017)

(declare-fun call!36391 () ListLongMap!9017)

(assert (=> bm!36387 (= call!36395 call!36391)))

(declare-fun b!831838 () Bool)

(declare-fun e!463930 () ListLongMap!9017)

(declare-fun e!463939 () ListLongMap!9017)

(assert (=> b!831838 (= e!463930 e!463939)))

(declare-fun c!90285 () Bool)

(assert (=> b!831838 (= c!90285 (and (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!831839 () Bool)

(declare-fun lt!377552 () Unit!28497)

(assert (=> b!831839 (= e!463929 lt!377552)))

(declare-fun lt!377546 () ListLongMap!9017)

(assert (=> b!831839 (= lt!377546 (getCurrentListMapNoExtraKeys!2523 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!377541 () (_ BitVec 64))

(assert (=> b!831839 (= lt!377541 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!377547 () (_ BitVec 64))

(assert (=> b!831839 (= lt!377547 (select (arr!22317 _keys!976) #b00000000000000000000000000000000))))

(declare-fun lt!377553 () Unit!28497)

(assert (=> b!831839 (= lt!377553 (addStillContains!324 lt!377546 lt!377541 zeroValueBefore!34 lt!377547))))

(assert (=> b!831839 (contains!4212 (+!1952 lt!377546 (tuple2!10181 lt!377541 zeroValueBefore!34)) lt!377547)))

(declare-fun lt!377551 () Unit!28497)

(assert (=> b!831839 (= lt!377551 lt!377553)))

(declare-fun lt!377545 () ListLongMap!9017)

(assert (=> b!831839 (= lt!377545 (getCurrentListMapNoExtraKeys!2523 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!377555 () (_ BitVec 64))

(assert (=> b!831839 (= lt!377555 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!377558 () (_ BitVec 64))

(assert (=> b!831839 (= lt!377558 (select (arr!22317 _keys!976) #b00000000000000000000000000000000))))

(declare-fun lt!377548 () Unit!28497)

(assert (=> b!831839 (= lt!377548 (addApplyDifferent!324 lt!377545 lt!377555 minValue!754 lt!377558))))

(assert (=> b!831839 (= (apply!373 (+!1952 lt!377545 (tuple2!10181 lt!377555 minValue!754)) lt!377558) (apply!373 lt!377545 lt!377558))))

(declare-fun lt!377554 () Unit!28497)

(assert (=> b!831839 (= lt!377554 lt!377548)))

(declare-fun lt!377544 () ListLongMap!9017)

(assert (=> b!831839 (= lt!377544 (getCurrentListMapNoExtraKeys!2523 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!377560 () (_ BitVec 64))

(assert (=> b!831839 (= lt!377560 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!377549 () (_ BitVec 64))

(assert (=> b!831839 (= lt!377549 (select (arr!22317 _keys!976) #b00000000000000000000000000000000))))

(declare-fun lt!377561 () Unit!28497)

(assert (=> b!831839 (= lt!377561 (addApplyDifferent!324 lt!377544 lt!377560 zeroValueBefore!34 lt!377549))))

(assert (=> b!831839 (= (apply!373 (+!1952 lt!377544 (tuple2!10181 lt!377560 zeroValueBefore!34)) lt!377549) (apply!373 lt!377544 lt!377549))))

(declare-fun lt!377557 () Unit!28497)

(assert (=> b!831839 (= lt!377557 lt!377561)))

(declare-fun lt!377559 () ListLongMap!9017)

(assert (=> b!831839 (= lt!377559 (getCurrentListMapNoExtraKeys!2523 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!377550 () (_ BitVec 64))

(assert (=> b!831839 (= lt!377550 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!377562 () (_ BitVec 64))

(assert (=> b!831839 (= lt!377562 (select (arr!22317 _keys!976) #b00000000000000000000000000000000))))

(assert (=> b!831839 (= lt!377552 (addApplyDifferent!324 lt!377559 lt!377550 minValue!754 lt!377562))))

(assert (=> b!831839 (= (apply!373 (+!1952 lt!377559 (tuple2!10181 lt!377550 minValue!754)) lt!377562) (apply!373 lt!377559 lt!377562))))

(declare-fun b!831840 () Bool)

(declare-fun call!36393 () Bool)

(assert (=> b!831840 (= e!463938 (not call!36393))))

(declare-fun b!831841 () Bool)

(declare-fun e!463931 () Bool)

(assert (=> b!831841 (= e!463938 e!463931)))

(declare-fun res!566196 () Bool)

(assert (=> b!831841 (= res!566196 call!36393)))

(assert (=> b!831841 (=> (not res!566196) (not e!463931))))

(declare-fun bm!36388 () Bool)

(declare-fun lt!377542 () ListLongMap!9017)

(assert (=> bm!36388 (= call!36393 (contains!4212 lt!377542 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!831842 () Bool)

(declare-fun e!463937 () Bool)

(declare-fun e!463934 () Bool)

(assert (=> b!831842 (= e!463937 e!463934)))

(declare-fun res!566197 () Bool)

(declare-fun call!36392 () Bool)

(assert (=> b!831842 (= res!566197 call!36392)))

(assert (=> b!831842 (=> (not res!566197) (not e!463934))))

(declare-fun b!831843 () Bool)

(declare-fun call!36396 () ListLongMap!9017)

(assert (=> b!831843 (= e!463930 (+!1952 call!36396 (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))))

(declare-fun bm!36389 () Bool)

(assert (=> bm!36389 (= call!36391 (getCurrentListMapNoExtraKeys!2523 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!831844 () Bool)

(declare-fun e!463933 () ListLongMap!9017)

(declare-fun call!36390 () ListLongMap!9017)

(assert (=> b!831844 (= e!463933 call!36390)))

(declare-fun b!831845 () Bool)

(assert (=> b!831845 (= e!463937 (not call!36392))))

(declare-fun d!106253 () Bool)

(assert (=> d!106253 e!463936))

(declare-fun res!566195 () Bool)

(assert (=> d!106253 (=> (not res!566195) (not e!463936))))

(assert (=> d!106253 (= res!566195 (or (bvsge #b00000000000000000000000000000000 (size!22738 _keys!976)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22738 _keys!976)))))))

(declare-fun lt!377543 () ListLongMap!9017)

(assert (=> d!106253 (= lt!377542 lt!377543)))

(declare-fun lt!377556 () Unit!28497)

(assert (=> d!106253 (= lt!377556 e!463929)))

(declare-fun c!90282 () Bool)

(declare-fun e!463935 () Bool)

(assert (=> d!106253 (= c!90282 e!463935)))

(declare-fun res!566198 () Bool)

(assert (=> d!106253 (=> (not res!566198) (not e!463935))))

(assert (=> d!106253 (= res!566198 (bvslt #b00000000000000000000000000000000 (size!22738 _keys!976)))))

(assert (=> d!106253 (= lt!377543 e!463930)))

(declare-fun c!90283 () Bool)

(assert (=> d!106253 (= c!90283 (and (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!106253 (validMask!0 mask!1312)))

(assert (=> d!106253 (= (getCurrentListMap!2593 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) lt!377542)))

(declare-fun b!831846 () Bool)

(assert (=> b!831846 (= e!463935 (validKeyInArray!0 (select (arr!22317 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun b!831847 () Bool)

(declare-fun e!463928 () Bool)

(declare-fun e!463927 () Bool)

(assert (=> b!831847 (= e!463928 e!463927)))

(declare-fun res!566194 () Bool)

(assert (=> b!831847 (=> (not res!566194) (not e!463927))))

(assert (=> b!831847 (= res!566194 (contains!4212 lt!377542 (select (arr!22317 _keys!976) #b00000000000000000000000000000000)))))

(assert (=> b!831847 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22738 _keys!976)))))

(declare-fun bm!36390 () Bool)

(assert (=> bm!36390 (= call!36396 (+!1952 (ite c!90283 call!36391 (ite c!90285 call!36395 call!36390)) (ite (or c!90283 c!90285) (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34) (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))

(declare-fun b!831848 () Bool)

(assert (=> b!831848 (= e!463931 (= (apply!373 lt!377542 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValueBefore!34))))

(declare-fun b!831849 () Bool)

(declare-fun c!90281 () Bool)

(assert (=> b!831849 (= c!90281 (and (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!831849 (= e!463939 e!463933)))

(declare-fun bm!36391 () Bool)

(assert (=> bm!36391 (= call!36390 call!36395)))

(declare-fun bm!36392 () Bool)

(declare-fun call!36394 () ListLongMap!9017)

(assert (=> bm!36392 (= call!36394 call!36396)))

(declare-fun b!831850 () Bool)

(assert (=> b!831850 (= e!463934 (= (apply!373 lt!377542 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!754))))

(declare-fun b!831851 () Bool)

(assert (=> b!831851 (= e!463936 e!463937)))

(declare-fun c!90284 () Bool)

(assert (=> b!831851 (= c!90284 (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!831852 () Bool)

(declare-fun e!463932 () Bool)

(assert (=> b!831852 (= e!463932 (validKeyInArray!0 (select (arr!22317 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun b!831853 () Bool)

(assert (=> b!831853 (= e!463939 call!36394)))

(declare-fun b!831854 () Bool)

(assert (=> b!831854 (= e!463927 (= (apply!373 lt!377542 (select (arr!22317 _keys!976) #b00000000000000000000000000000000)) (get!11828 (select (arr!22318 _values!788) #b00000000000000000000000000000000) (dynLambda!983 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!831854 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22739 _values!788)))))

(assert (=> b!831854 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22738 _keys!976)))))

(declare-fun b!831855 () Bool)

(assert (=> b!831855 (= e!463933 call!36394)))

(declare-fun b!831856 () Bool)

(declare-fun res!566193 () Bool)

(assert (=> b!831856 (=> (not res!566193) (not e!463936))))

(assert (=> b!831856 (= res!566193 e!463928)))

(declare-fun res!566200 () Bool)

(assert (=> b!831856 (=> res!566200 e!463928)))

(assert (=> b!831856 (= res!566200 (not e!463932))))

(declare-fun res!566199 () Bool)

(assert (=> b!831856 (=> (not res!566199) (not e!463932))))

(assert (=> b!831856 (= res!566199 (bvslt #b00000000000000000000000000000000 (size!22738 _keys!976)))))

(declare-fun bm!36393 () Bool)

(assert (=> bm!36393 (= call!36392 (contains!4212 lt!377542 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!106253 c!90283) b!831843))

(assert (= (and d!106253 (not c!90283)) b!831838))

(assert (= (and b!831838 c!90285) b!831853))

(assert (= (and b!831838 (not c!90285)) b!831849))

(assert (= (and b!831849 c!90281) b!831855))

(assert (= (and b!831849 (not c!90281)) b!831844))

(assert (= (or b!831855 b!831844) bm!36391))

(assert (= (or b!831853 bm!36391) bm!36387))

(assert (= (or b!831853 b!831855) bm!36392))

(assert (= (or b!831843 bm!36387) bm!36389))

(assert (= (or b!831843 bm!36392) bm!36390))

(assert (= (and d!106253 res!566198) b!831846))

(assert (= (and d!106253 c!90282) b!831839))

(assert (= (and d!106253 (not c!90282)) b!831837))

(assert (= (and d!106253 res!566195) b!831856))

(assert (= (and b!831856 res!566199) b!831852))

(assert (= (and b!831856 (not res!566200)) b!831847))

(assert (= (and b!831847 res!566194) b!831854))

(assert (= (and b!831856 res!566193) b!831836))

(assert (= (and b!831836 c!90280) b!831841))

(assert (= (and b!831836 (not c!90280)) b!831840))

(assert (= (and b!831841 res!566196) b!831848))

(assert (= (or b!831841 b!831840) bm!36388))

(assert (= (and b!831836 res!566192) b!831851))

(assert (= (and b!831851 c!90284) b!831842))

(assert (= (and b!831851 (not c!90284)) b!831845))

(assert (= (and b!831842 res!566197) b!831850))

(assert (= (or b!831842 b!831845) bm!36393))

(declare-fun b_lambda!11443 () Bool)

(assert (=> (not b_lambda!11443) (not b!831854)))

(assert (=> b!831854 t!22389))

(declare-fun b_and!22593 () Bool)

(assert (= b_and!22591 (and (=> t!22389 result!8029) b_and!22593)))

(assert (=> b!831846 m!775697))

(assert (=> b!831846 m!775697))

(assert (=> b!831846 m!775701))

(assert (=> b!831852 m!775697))

(assert (=> b!831852 m!775697))

(assert (=> b!831852 m!775701))

(declare-fun m!775903 () Bool)

(assert (=> b!831839 m!775903))

(declare-fun m!775905 () Bool)

(assert (=> b!831839 m!775905))

(declare-fun m!775907 () Bool)

(assert (=> b!831839 m!775907))

(assert (=> b!831839 m!775639))

(declare-fun m!775909 () Bool)

(assert (=> b!831839 m!775909))

(declare-fun m!775911 () Bool)

(assert (=> b!831839 m!775911))

(assert (=> b!831839 m!775907))

(declare-fun m!775913 () Bool)

(assert (=> b!831839 m!775913))

(declare-fun m!775915 () Bool)

(assert (=> b!831839 m!775915))

(declare-fun m!775917 () Bool)

(assert (=> b!831839 m!775917))

(declare-fun m!775919 () Bool)

(assert (=> b!831839 m!775919))

(declare-fun m!775921 () Bool)

(assert (=> b!831839 m!775921))

(assert (=> b!831839 m!775917))

(declare-fun m!775923 () Bool)

(assert (=> b!831839 m!775923))

(declare-fun m!775925 () Bool)

(assert (=> b!831839 m!775925))

(declare-fun m!775927 () Bool)

(assert (=> b!831839 m!775927))

(assert (=> b!831839 m!775697))

(assert (=> b!831839 m!775919))

(declare-fun m!775929 () Bool)

(assert (=> b!831839 m!775929))

(declare-fun m!775931 () Bool)

(assert (=> b!831839 m!775931))

(assert (=> b!831839 m!775903))

(declare-fun m!775933 () Bool)

(assert (=> b!831843 m!775933))

(declare-fun m!775935 () Bool)

(assert (=> bm!36393 m!775935))

(declare-fun m!775937 () Bool)

(assert (=> b!831850 m!775937))

(assert (=> b!831854 m!775747))

(assert (=> b!831854 m!775697))

(declare-fun m!775939 () Bool)

(assert (=> b!831854 m!775939))

(assert (=> b!831854 m!775745))

(assert (=> b!831854 m!775697))

(assert (=> b!831854 m!775745))

(assert (=> b!831854 m!775747))

(assert (=> b!831854 m!775749))

(assert (=> b!831847 m!775697))

(assert (=> b!831847 m!775697))

(declare-fun m!775941 () Bool)

(assert (=> b!831847 m!775941))

(assert (=> bm!36389 m!775639))

(assert (=> d!106253 m!775625))

(declare-fun m!775943 () Bool)

(assert (=> bm!36390 m!775943))

(declare-fun m!775945 () Bool)

(assert (=> bm!36388 m!775945))

(declare-fun m!775947 () Bool)

(assert (=> b!831848 m!775947))

(assert (=> b!831642 d!106253))

(declare-fun b!831863 () Bool)

(declare-fun e!463944 () Bool)

(assert (=> b!831863 (= e!463944 tp_is_empty!15213)))

(declare-fun b!831864 () Bool)

(declare-fun e!463945 () Bool)

(assert (=> b!831864 (= e!463945 tp_is_empty!15213)))

(declare-fun condMapEmpty!24483 () Bool)

(declare-fun mapDefault!24483 () ValueCell!7191)

(assert (=> mapNonEmpty!24477 (= condMapEmpty!24483 (= mapRest!24477 ((as const (Array (_ BitVec 32) ValueCell!7191)) mapDefault!24483)))))

(declare-fun mapRes!24483 () Bool)

(assert (=> mapNonEmpty!24477 (= tp!47300 (and e!463945 mapRes!24483))))

(declare-fun mapIsEmpty!24483 () Bool)

(assert (=> mapIsEmpty!24483 mapRes!24483))

(declare-fun mapNonEmpty!24483 () Bool)

(declare-fun tp!47310 () Bool)

(assert (=> mapNonEmpty!24483 (= mapRes!24483 (and tp!47310 e!463944))))

(declare-fun mapValue!24483 () ValueCell!7191)

(declare-fun mapRest!24483 () (Array (_ BitVec 32) ValueCell!7191))

(declare-fun mapKey!24483 () (_ BitVec 32))

(assert (=> mapNonEmpty!24483 (= mapRest!24477 (store mapRest!24483 mapKey!24483 mapValue!24483))))

(assert (= (and mapNonEmpty!24477 condMapEmpty!24483) mapIsEmpty!24483))

(assert (= (and mapNonEmpty!24477 (not condMapEmpty!24483)) mapNonEmpty!24483))

(assert (= (and mapNonEmpty!24483 ((_ is ValueCellFull!7191) mapValue!24483)) b!831863))

(assert (= (and mapNonEmpty!24477 ((_ is ValueCellFull!7191) mapDefault!24483)) b!831864))

(declare-fun m!775949 () Bool)

(assert (=> mapNonEmpty!24483 m!775949))

(declare-fun b_lambda!11445 () Bool)

(assert (= b_lambda!11437 (or (and start!71606 b_free!13503) b_lambda!11445)))

(declare-fun b_lambda!11447 () Bool)

(assert (= b_lambda!11443 (or (and start!71606 b_free!13503) b_lambda!11447)))

(declare-fun b_lambda!11449 () Bool)

(assert (= b_lambda!11433 (or (and start!71606 b_free!13503) b_lambda!11449)))

(declare-fun b_lambda!11451 () Bool)

(assert (= b_lambda!11439 (or (and start!71606 b_free!13503) b_lambda!11451)))

(declare-fun b_lambda!11453 () Bool)

(assert (= b_lambda!11441 (or (and start!71606 b_free!13503) b_lambda!11453)))

(declare-fun b_lambda!11455 () Bool)

(assert (= b_lambda!11435 (or (and start!71606 b_free!13503) b_lambda!11455)))

(check-sat (not bm!36361) (not b!831846) (not b!831823) (not b!831710) (not b!831697) (not b!831762) (not b_lambda!11455) (not b!831690) (not bm!36364) (not b!831850) (not b_lambda!11447) (not bm!36382) (not b_next!13503) (not d!106243) (not bm!36358) (not b!831821) (not d!106231) (not d!106251) (not b!831742) (not b!831764) (not d!106241) (not b!831758) (not b!831754) (not d!106227) (not b!831761) (not bm!36386) (not b!831835) (not b!831848) (not bm!36393) (not b!831830) (not b!831812) (not b!831749) (not b_lambda!11451) (not b!831839) (not b!831831) (not b!831756) (not b!831740) (not mapNonEmpty!24483) (not b!831766) b_and!22593 (not b!831819) (not b!831760) (not b_lambda!11453) (not b!831686) (not bm!36389) (not d!106229) (not b!831696) (not b!831765) (not b!831687) (not b!831746) (not b_lambda!11445) (not b!831695) (not bm!36365) tp_is_empty!15213 (not bm!36388) (not b!831832) (not b!831752) (not d!106221) (not b!831698) (not b!831843) (not b!831816) (not b!831763) (not d!106249) (not b!831825) (not bm!36390) (not bm!36383) (not d!106247) (not b!831820) (not d!106245) (not b!831735) (not b!831852) (not b!831854) (not b!831745) (not d!106239) (not d!106253) (not b!831751) (not bm!36381) (not b!831759) (not b!831738) (not b_lambda!11449) (not b!831737) (not b!831834) (not b!831833) (not b!831707) (not b!831847) (not b!831744) (not b!831827) (not d!106223))
(check-sat b_and!22593 (not b_next!13503))
(get-model)

(declare-fun d!106255 () Bool)

(declare-fun get!11829 (Option!421) V!25285)

(assert (=> d!106255 (= (apply!373 lt!377559 lt!377562) (get!11829 (getValueByKey!415 (toList!4524 lt!377559) lt!377562)))))

(declare-fun bs!23250 () Bool)

(assert (= bs!23250 d!106255))

(declare-fun m!775951 () Bool)

(assert (=> bs!23250 m!775951))

(assert (=> bs!23250 m!775951))

(declare-fun m!775953 () Bool)

(assert (=> bs!23250 m!775953))

(assert (=> b!831839 d!106255))

(declare-fun d!106257 () Bool)

(assert (=> d!106257 (= (apply!373 lt!377544 lt!377549) (get!11829 (getValueByKey!415 (toList!4524 lt!377544) lt!377549)))))

(declare-fun bs!23251 () Bool)

(assert (= bs!23251 d!106257))

(declare-fun m!775955 () Bool)

(assert (=> bs!23251 m!775955))

(assert (=> bs!23251 m!775955))

(declare-fun m!775957 () Bool)

(assert (=> bs!23251 m!775957))

(assert (=> b!831839 d!106257))

(declare-fun d!106259 () Bool)

(assert (=> d!106259 (= (apply!373 (+!1952 lt!377545 (tuple2!10181 lt!377555 minValue!754)) lt!377558) (apply!373 lt!377545 lt!377558))))

(declare-fun lt!377565 () Unit!28497)

(declare-fun choose!1431 (ListLongMap!9017 (_ BitVec 64) V!25285 (_ BitVec 64)) Unit!28497)

(assert (=> d!106259 (= lt!377565 (choose!1431 lt!377545 lt!377555 minValue!754 lt!377558))))

(declare-fun e!463948 () Bool)

(assert (=> d!106259 e!463948))

(declare-fun res!566203 () Bool)

(assert (=> d!106259 (=> (not res!566203) (not e!463948))))

(assert (=> d!106259 (= res!566203 (contains!4212 lt!377545 lt!377558))))

(assert (=> d!106259 (= (addApplyDifferent!324 lt!377545 lt!377555 minValue!754 lt!377558) lt!377565)))

(declare-fun b!831868 () Bool)

(assert (=> b!831868 (= e!463948 (not (= lt!377558 lt!377555)))))

(assert (= (and d!106259 res!566203) b!831868))

(declare-fun m!775959 () Bool)

(assert (=> d!106259 m!775959))

(assert (=> d!106259 m!775911))

(assert (=> d!106259 m!775907))

(assert (=> d!106259 m!775913))

(assert (=> d!106259 m!775907))

(declare-fun m!775961 () Bool)

(assert (=> d!106259 m!775961))

(assert (=> b!831839 d!106259))

(declare-fun d!106261 () Bool)

(declare-fun e!463949 () Bool)

(assert (=> d!106261 e!463949))

(declare-fun res!566205 () Bool)

(assert (=> d!106261 (=> (not res!566205) (not e!463949))))

(declare-fun lt!377566 () ListLongMap!9017)

(assert (=> d!106261 (= res!566205 (contains!4212 lt!377566 (_1!5100 (tuple2!10181 lt!377560 zeroValueBefore!34))))))

(declare-fun lt!377568 () List!16008)

(assert (=> d!106261 (= lt!377566 (ListLongMap!9018 lt!377568))))

(declare-fun lt!377569 () Unit!28497)

(declare-fun lt!377567 () Unit!28497)

(assert (=> d!106261 (= lt!377569 lt!377567)))

(assert (=> d!106261 (= (getValueByKey!415 lt!377568 (_1!5100 (tuple2!10181 lt!377560 zeroValueBefore!34))) (Some!420 (_2!5100 (tuple2!10181 lt!377560 zeroValueBefore!34))))))

(assert (=> d!106261 (= lt!377567 (lemmaContainsTupThenGetReturnValue!231 lt!377568 (_1!5100 (tuple2!10181 lt!377560 zeroValueBefore!34)) (_2!5100 (tuple2!10181 lt!377560 zeroValueBefore!34))))))

(assert (=> d!106261 (= lt!377568 (insertStrictlySorted!269 (toList!4524 lt!377544) (_1!5100 (tuple2!10181 lt!377560 zeroValueBefore!34)) (_2!5100 (tuple2!10181 lt!377560 zeroValueBefore!34))))))

(assert (=> d!106261 (= (+!1952 lt!377544 (tuple2!10181 lt!377560 zeroValueBefore!34)) lt!377566)))

(declare-fun b!831869 () Bool)

(declare-fun res!566204 () Bool)

(assert (=> b!831869 (=> (not res!566204) (not e!463949))))

(assert (=> b!831869 (= res!566204 (= (getValueByKey!415 (toList!4524 lt!377566) (_1!5100 (tuple2!10181 lt!377560 zeroValueBefore!34))) (Some!420 (_2!5100 (tuple2!10181 lt!377560 zeroValueBefore!34)))))))

(declare-fun b!831870 () Bool)

(assert (=> b!831870 (= e!463949 (contains!4213 (toList!4524 lt!377566) (tuple2!10181 lt!377560 zeroValueBefore!34)))))

(assert (= (and d!106261 res!566205) b!831869))

(assert (= (and b!831869 res!566204) b!831870))

(declare-fun m!775963 () Bool)

(assert (=> d!106261 m!775963))

(declare-fun m!775965 () Bool)

(assert (=> d!106261 m!775965))

(declare-fun m!775967 () Bool)

(assert (=> d!106261 m!775967))

(declare-fun m!775969 () Bool)

(assert (=> d!106261 m!775969))

(declare-fun m!775971 () Bool)

(assert (=> b!831869 m!775971))

(declare-fun m!775973 () Bool)

(assert (=> b!831870 m!775973))

(assert (=> b!831839 d!106261))

(declare-fun d!106263 () Bool)

(assert (=> d!106263 (= (apply!373 lt!377545 lt!377558) (get!11829 (getValueByKey!415 (toList!4524 lt!377545) lt!377558)))))

(declare-fun bs!23252 () Bool)

(assert (= bs!23252 d!106263))

(declare-fun m!775975 () Bool)

(assert (=> bs!23252 m!775975))

(assert (=> bs!23252 m!775975))

(declare-fun m!775977 () Bool)

(assert (=> bs!23252 m!775977))

(assert (=> b!831839 d!106263))

(declare-fun d!106265 () Bool)

(assert (=> d!106265 (contains!4212 (+!1952 lt!377546 (tuple2!10181 lt!377541 zeroValueBefore!34)) lt!377547)))

(declare-fun lt!377572 () Unit!28497)

(declare-fun choose!1432 (ListLongMap!9017 (_ BitVec 64) V!25285 (_ BitVec 64)) Unit!28497)

(assert (=> d!106265 (= lt!377572 (choose!1432 lt!377546 lt!377541 zeroValueBefore!34 lt!377547))))

(assert (=> d!106265 (contains!4212 lt!377546 lt!377547)))

(assert (=> d!106265 (= (addStillContains!324 lt!377546 lt!377541 zeroValueBefore!34 lt!377547) lt!377572)))

(declare-fun bs!23253 () Bool)

(assert (= bs!23253 d!106265))

(assert (=> bs!23253 m!775917))

(assert (=> bs!23253 m!775917))

(assert (=> bs!23253 m!775923))

(declare-fun m!775979 () Bool)

(assert (=> bs!23253 m!775979))

(declare-fun m!775981 () Bool)

(assert (=> bs!23253 m!775981))

(assert (=> b!831839 d!106265))

(declare-fun d!106267 () Bool)

(declare-fun e!463950 () Bool)

(assert (=> d!106267 e!463950))

(declare-fun res!566207 () Bool)

(assert (=> d!106267 (=> (not res!566207) (not e!463950))))

(declare-fun lt!377573 () ListLongMap!9017)

(assert (=> d!106267 (= res!566207 (contains!4212 lt!377573 (_1!5100 (tuple2!10181 lt!377555 minValue!754))))))

(declare-fun lt!377575 () List!16008)

(assert (=> d!106267 (= lt!377573 (ListLongMap!9018 lt!377575))))

(declare-fun lt!377576 () Unit!28497)

(declare-fun lt!377574 () Unit!28497)

(assert (=> d!106267 (= lt!377576 lt!377574)))

(assert (=> d!106267 (= (getValueByKey!415 lt!377575 (_1!5100 (tuple2!10181 lt!377555 minValue!754))) (Some!420 (_2!5100 (tuple2!10181 lt!377555 minValue!754))))))

(assert (=> d!106267 (= lt!377574 (lemmaContainsTupThenGetReturnValue!231 lt!377575 (_1!5100 (tuple2!10181 lt!377555 minValue!754)) (_2!5100 (tuple2!10181 lt!377555 minValue!754))))))

(assert (=> d!106267 (= lt!377575 (insertStrictlySorted!269 (toList!4524 lt!377545) (_1!5100 (tuple2!10181 lt!377555 minValue!754)) (_2!5100 (tuple2!10181 lt!377555 minValue!754))))))

(assert (=> d!106267 (= (+!1952 lt!377545 (tuple2!10181 lt!377555 minValue!754)) lt!377573)))

(declare-fun b!831872 () Bool)

(declare-fun res!566206 () Bool)

(assert (=> b!831872 (=> (not res!566206) (not e!463950))))

(assert (=> b!831872 (= res!566206 (= (getValueByKey!415 (toList!4524 lt!377573) (_1!5100 (tuple2!10181 lt!377555 minValue!754))) (Some!420 (_2!5100 (tuple2!10181 lt!377555 minValue!754)))))))

(declare-fun b!831873 () Bool)

(assert (=> b!831873 (= e!463950 (contains!4213 (toList!4524 lt!377573) (tuple2!10181 lt!377555 minValue!754)))))

(assert (= (and d!106267 res!566207) b!831872))

(assert (= (and b!831872 res!566206) b!831873))

(declare-fun m!775983 () Bool)

(assert (=> d!106267 m!775983))

(declare-fun m!775985 () Bool)

(assert (=> d!106267 m!775985))

(declare-fun m!775987 () Bool)

(assert (=> d!106267 m!775987))

(declare-fun m!775989 () Bool)

(assert (=> d!106267 m!775989))

(declare-fun m!775991 () Bool)

(assert (=> b!831872 m!775991))

(declare-fun m!775993 () Bool)

(assert (=> b!831873 m!775993))

(assert (=> b!831839 d!106267))

(declare-fun d!106269 () Bool)

(assert (=> d!106269 (= (apply!373 (+!1952 lt!377559 (tuple2!10181 lt!377550 minValue!754)) lt!377562) (apply!373 lt!377559 lt!377562))))

(declare-fun lt!377577 () Unit!28497)

(assert (=> d!106269 (= lt!377577 (choose!1431 lt!377559 lt!377550 minValue!754 lt!377562))))

(declare-fun e!463951 () Bool)

(assert (=> d!106269 e!463951))

(declare-fun res!566208 () Bool)

(assert (=> d!106269 (=> (not res!566208) (not e!463951))))

(assert (=> d!106269 (= res!566208 (contains!4212 lt!377559 lt!377562))))

(assert (=> d!106269 (= (addApplyDifferent!324 lt!377559 lt!377550 minValue!754 lt!377562) lt!377577)))

(declare-fun b!831874 () Bool)

(assert (=> b!831874 (= e!463951 (not (= lt!377562 lt!377550)))))

(assert (= (and d!106269 res!566208) b!831874))

(declare-fun m!775995 () Bool)

(assert (=> d!106269 m!775995))

(assert (=> d!106269 m!775921))

(assert (=> d!106269 m!775919))

(assert (=> d!106269 m!775929))

(assert (=> d!106269 m!775919))

(declare-fun m!775997 () Bool)

(assert (=> d!106269 m!775997))

(assert (=> b!831839 d!106269))

(declare-fun d!106271 () Bool)

(declare-fun e!463952 () Bool)

(assert (=> d!106271 e!463952))

(declare-fun res!566210 () Bool)

(assert (=> d!106271 (=> (not res!566210) (not e!463952))))

(declare-fun lt!377578 () ListLongMap!9017)

(assert (=> d!106271 (= res!566210 (contains!4212 lt!377578 (_1!5100 (tuple2!10181 lt!377550 minValue!754))))))

(declare-fun lt!377580 () List!16008)

(assert (=> d!106271 (= lt!377578 (ListLongMap!9018 lt!377580))))

(declare-fun lt!377581 () Unit!28497)

(declare-fun lt!377579 () Unit!28497)

(assert (=> d!106271 (= lt!377581 lt!377579)))

(assert (=> d!106271 (= (getValueByKey!415 lt!377580 (_1!5100 (tuple2!10181 lt!377550 minValue!754))) (Some!420 (_2!5100 (tuple2!10181 lt!377550 minValue!754))))))

(assert (=> d!106271 (= lt!377579 (lemmaContainsTupThenGetReturnValue!231 lt!377580 (_1!5100 (tuple2!10181 lt!377550 minValue!754)) (_2!5100 (tuple2!10181 lt!377550 minValue!754))))))

(assert (=> d!106271 (= lt!377580 (insertStrictlySorted!269 (toList!4524 lt!377559) (_1!5100 (tuple2!10181 lt!377550 minValue!754)) (_2!5100 (tuple2!10181 lt!377550 minValue!754))))))

(assert (=> d!106271 (= (+!1952 lt!377559 (tuple2!10181 lt!377550 minValue!754)) lt!377578)))

(declare-fun b!831875 () Bool)

(declare-fun res!566209 () Bool)

(assert (=> b!831875 (=> (not res!566209) (not e!463952))))

(assert (=> b!831875 (= res!566209 (= (getValueByKey!415 (toList!4524 lt!377578) (_1!5100 (tuple2!10181 lt!377550 minValue!754))) (Some!420 (_2!5100 (tuple2!10181 lt!377550 minValue!754)))))))

(declare-fun b!831876 () Bool)

(assert (=> b!831876 (= e!463952 (contains!4213 (toList!4524 lt!377578) (tuple2!10181 lt!377550 minValue!754)))))

(assert (= (and d!106271 res!566210) b!831875))

(assert (= (and b!831875 res!566209) b!831876))

(declare-fun m!775999 () Bool)

(assert (=> d!106271 m!775999))

(declare-fun m!776001 () Bool)

(assert (=> d!106271 m!776001))

(declare-fun m!776003 () Bool)

(assert (=> d!106271 m!776003))

(declare-fun m!776005 () Bool)

(assert (=> d!106271 m!776005))

(declare-fun m!776007 () Bool)

(assert (=> b!831875 m!776007))

(declare-fun m!776009 () Bool)

(assert (=> b!831876 m!776009))

(assert (=> b!831839 d!106271))

(declare-fun d!106273 () Bool)

(assert (=> d!106273 (= (apply!373 (+!1952 lt!377559 (tuple2!10181 lt!377550 minValue!754)) lt!377562) (get!11829 (getValueByKey!415 (toList!4524 (+!1952 lt!377559 (tuple2!10181 lt!377550 minValue!754))) lt!377562)))))

(declare-fun bs!23254 () Bool)

(assert (= bs!23254 d!106273))

(declare-fun m!776011 () Bool)

(assert (=> bs!23254 m!776011))

(assert (=> bs!23254 m!776011))

(declare-fun m!776013 () Bool)

(assert (=> bs!23254 m!776013))

(assert (=> b!831839 d!106273))

(declare-fun d!106275 () Bool)

(declare-fun e!463957 () Bool)

(assert (=> d!106275 e!463957))

(declare-fun res!566213 () Bool)

(assert (=> d!106275 (=> res!566213 e!463957)))

(declare-fun lt!377593 () Bool)

(assert (=> d!106275 (= res!566213 (not lt!377593))))

(declare-fun lt!377590 () Bool)

(assert (=> d!106275 (= lt!377593 lt!377590)))

(declare-fun lt!377592 () Unit!28497)

(declare-fun e!463958 () Unit!28497)

(assert (=> d!106275 (= lt!377592 e!463958)))

(declare-fun c!90288 () Bool)

(assert (=> d!106275 (= c!90288 lt!377590)))

(declare-fun containsKey!401 (List!16008 (_ BitVec 64)) Bool)

(assert (=> d!106275 (= lt!377590 (containsKey!401 (toList!4524 (+!1952 lt!377546 (tuple2!10181 lt!377541 zeroValueBefore!34))) lt!377547))))

(assert (=> d!106275 (= (contains!4212 (+!1952 lt!377546 (tuple2!10181 lt!377541 zeroValueBefore!34)) lt!377547) lt!377593)))

(declare-fun b!831883 () Bool)

(declare-fun lt!377591 () Unit!28497)

(assert (=> b!831883 (= e!463958 lt!377591)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!311 (List!16008 (_ BitVec 64)) Unit!28497)

(assert (=> b!831883 (= lt!377591 (lemmaContainsKeyImpliesGetValueByKeyDefined!311 (toList!4524 (+!1952 lt!377546 (tuple2!10181 lt!377541 zeroValueBefore!34))) lt!377547))))

(declare-fun isDefined!312 (Option!421) Bool)

(assert (=> b!831883 (isDefined!312 (getValueByKey!415 (toList!4524 (+!1952 lt!377546 (tuple2!10181 lt!377541 zeroValueBefore!34))) lt!377547))))

(declare-fun b!831884 () Bool)

(declare-fun Unit!28503 () Unit!28497)

(assert (=> b!831884 (= e!463958 Unit!28503)))

(declare-fun b!831885 () Bool)

(assert (=> b!831885 (= e!463957 (isDefined!312 (getValueByKey!415 (toList!4524 (+!1952 lt!377546 (tuple2!10181 lt!377541 zeroValueBefore!34))) lt!377547)))))

(assert (= (and d!106275 c!90288) b!831883))

(assert (= (and d!106275 (not c!90288)) b!831884))

(assert (= (and d!106275 (not res!566213)) b!831885))

(declare-fun m!776015 () Bool)

(assert (=> d!106275 m!776015))

(declare-fun m!776017 () Bool)

(assert (=> b!831883 m!776017))

(declare-fun m!776019 () Bool)

(assert (=> b!831883 m!776019))

(assert (=> b!831883 m!776019))

(declare-fun m!776021 () Bool)

(assert (=> b!831883 m!776021))

(assert (=> b!831885 m!776019))

(assert (=> b!831885 m!776019))

(assert (=> b!831885 m!776021))

(assert (=> b!831839 d!106275))

(declare-fun d!106277 () Bool)

(declare-fun e!463959 () Bool)

(assert (=> d!106277 e!463959))

(declare-fun res!566215 () Bool)

(assert (=> d!106277 (=> (not res!566215) (not e!463959))))

(declare-fun lt!377594 () ListLongMap!9017)

(assert (=> d!106277 (= res!566215 (contains!4212 lt!377594 (_1!5100 (tuple2!10181 lt!377541 zeroValueBefore!34))))))

(declare-fun lt!377596 () List!16008)

(assert (=> d!106277 (= lt!377594 (ListLongMap!9018 lt!377596))))

(declare-fun lt!377597 () Unit!28497)

(declare-fun lt!377595 () Unit!28497)

(assert (=> d!106277 (= lt!377597 lt!377595)))

(assert (=> d!106277 (= (getValueByKey!415 lt!377596 (_1!5100 (tuple2!10181 lt!377541 zeroValueBefore!34))) (Some!420 (_2!5100 (tuple2!10181 lt!377541 zeroValueBefore!34))))))

(assert (=> d!106277 (= lt!377595 (lemmaContainsTupThenGetReturnValue!231 lt!377596 (_1!5100 (tuple2!10181 lt!377541 zeroValueBefore!34)) (_2!5100 (tuple2!10181 lt!377541 zeroValueBefore!34))))))

(assert (=> d!106277 (= lt!377596 (insertStrictlySorted!269 (toList!4524 lt!377546) (_1!5100 (tuple2!10181 lt!377541 zeroValueBefore!34)) (_2!5100 (tuple2!10181 lt!377541 zeroValueBefore!34))))))

(assert (=> d!106277 (= (+!1952 lt!377546 (tuple2!10181 lt!377541 zeroValueBefore!34)) lt!377594)))

(declare-fun b!831886 () Bool)

(declare-fun res!566214 () Bool)

(assert (=> b!831886 (=> (not res!566214) (not e!463959))))

(assert (=> b!831886 (= res!566214 (= (getValueByKey!415 (toList!4524 lt!377594) (_1!5100 (tuple2!10181 lt!377541 zeroValueBefore!34))) (Some!420 (_2!5100 (tuple2!10181 lt!377541 zeroValueBefore!34)))))))

(declare-fun b!831887 () Bool)

(assert (=> b!831887 (= e!463959 (contains!4213 (toList!4524 lt!377594) (tuple2!10181 lt!377541 zeroValueBefore!34)))))

(assert (= (and d!106277 res!566215) b!831886))

(assert (= (and b!831886 res!566214) b!831887))

(declare-fun m!776023 () Bool)

(assert (=> d!106277 m!776023))

(declare-fun m!776025 () Bool)

(assert (=> d!106277 m!776025))

(declare-fun m!776027 () Bool)

(assert (=> d!106277 m!776027))

(declare-fun m!776029 () Bool)

(assert (=> d!106277 m!776029))

(declare-fun m!776031 () Bool)

(assert (=> b!831886 m!776031))

(declare-fun m!776033 () Bool)

(assert (=> b!831887 m!776033))

(assert (=> b!831839 d!106277))

(declare-fun d!106279 () Bool)

(assert (=> d!106279 (= (apply!373 (+!1952 lt!377545 (tuple2!10181 lt!377555 minValue!754)) lt!377558) (get!11829 (getValueByKey!415 (toList!4524 (+!1952 lt!377545 (tuple2!10181 lt!377555 minValue!754))) lt!377558)))))

(declare-fun bs!23255 () Bool)

(assert (= bs!23255 d!106279))

(declare-fun m!776035 () Bool)

(assert (=> bs!23255 m!776035))

(assert (=> bs!23255 m!776035))

(declare-fun m!776037 () Bool)

(assert (=> bs!23255 m!776037))

(assert (=> b!831839 d!106279))

(declare-fun d!106281 () Bool)

(assert (=> d!106281 (= (apply!373 (+!1952 lt!377544 (tuple2!10181 lt!377560 zeroValueBefore!34)) lt!377549) (get!11829 (getValueByKey!415 (toList!4524 (+!1952 lt!377544 (tuple2!10181 lt!377560 zeroValueBefore!34))) lt!377549)))))

(declare-fun bs!23256 () Bool)

(assert (= bs!23256 d!106281))

(declare-fun m!776039 () Bool)

(assert (=> bs!23256 m!776039))

(assert (=> bs!23256 m!776039))

(declare-fun m!776041 () Bool)

(assert (=> bs!23256 m!776041))

(assert (=> b!831839 d!106281))

(declare-fun d!106283 () Bool)

(assert (=> d!106283 (= (apply!373 (+!1952 lt!377544 (tuple2!10181 lt!377560 zeroValueBefore!34)) lt!377549) (apply!373 lt!377544 lt!377549))))

(declare-fun lt!377598 () Unit!28497)

(assert (=> d!106283 (= lt!377598 (choose!1431 lt!377544 lt!377560 zeroValueBefore!34 lt!377549))))

(declare-fun e!463960 () Bool)

(assert (=> d!106283 e!463960))

(declare-fun res!566216 () Bool)

(assert (=> d!106283 (=> (not res!566216) (not e!463960))))

(assert (=> d!106283 (= res!566216 (contains!4212 lt!377544 lt!377549))))

(assert (=> d!106283 (= (addApplyDifferent!324 lt!377544 lt!377560 zeroValueBefore!34 lt!377549) lt!377598)))

(declare-fun b!831888 () Bool)

(assert (=> b!831888 (= e!463960 (not (= lt!377549 lt!377560)))))

(assert (= (and d!106283 res!566216) b!831888))

(declare-fun m!776043 () Bool)

(assert (=> d!106283 m!776043))

(assert (=> d!106283 m!775915))

(assert (=> d!106283 m!775903))

(assert (=> d!106283 m!775905))

(assert (=> d!106283 m!775903))

(declare-fun m!776045 () Bool)

(assert (=> d!106283 m!776045))

(assert (=> b!831839 d!106283))

(assert (=> b!831839 d!106231))

(declare-fun d!106285 () Bool)

(declare-fun e!463961 () Bool)

(assert (=> d!106285 e!463961))

(declare-fun res!566217 () Bool)

(assert (=> d!106285 (=> res!566217 e!463961)))

(declare-fun lt!377602 () Bool)

(assert (=> d!106285 (= res!566217 (not lt!377602))))

(declare-fun lt!377599 () Bool)

(assert (=> d!106285 (= lt!377602 lt!377599)))

(declare-fun lt!377601 () Unit!28497)

(declare-fun e!463962 () Unit!28497)

(assert (=> d!106285 (= lt!377601 e!463962)))

(declare-fun c!90289 () Bool)

(assert (=> d!106285 (= c!90289 lt!377599)))

(assert (=> d!106285 (= lt!377599 (containsKey!401 (toList!4524 lt!377449) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!106285 (= (contains!4212 lt!377449 #b0000000000000000000000000000000000000000000000000000000000000000) lt!377602)))

(declare-fun b!831889 () Bool)

(declare-fun lt!377600 () Unit!28497)

(assert (=> b!831889 (= e!463962 lt!377600)))

(assert (=> b!831889 (= lt!377600 (lemmaContainsKeyImpliesGetValueByKeyDefined!311 (toList!4524 lt!377449) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!831889 (isDefined!312 (getValueByKey!415 (toList!4524 lt!377449) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!831890 () Bool)

(declare-fun Unit!28504 () Unit!28497)

(assert (=> b!831890 (= e!463962 Unit!28504)))

(declare-fun b!831891 () Bool)

(assert (=> b!831891 (= e!463961 (isDefined!312 (getValueByKey!415 (toList!4524 lt!377449) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!106285 c!90289) b!831889))

(assert (= (and d!106285 (not c!90289)) b!831890))

(assert (= (and d!106285 (not res!566217)) b!831891))

(declare-fun m!776047 () Bool)

(assert (=> d!106285 m!776047))

(declare-fun m!776049 () Bool)

(assert (=> b!831889 m!776049))

(declare-fun m!776051 () Bool)

(assert (=> b!831889 m!776051))

(assert (=> b!831889 m!776051))

(declare-fun m!776053 () Bool)

(assert (=> b!831889 m!776053))

(assert (=> b!831891 m!776051))

(assert (=> b!831891 m!776051))

(assert (=> b!831891 m!776053))

(assert (=> d!106231 d!106285))

(assert (=> d!106231 d!106233))

(declare-fun d!106287 () Bool)

(declare-fun e!463963 () Bool)

(assert (=> d!106287 e!463963))

(declare-fun res!566219 () Bool)

(assert (=> d!106287 (=> (not res!566219) (not e!463963))))

(declare-fun lt!377603 () ListLongMap!9017)

(assert (=> d!106287 (= res!566219 (contains!4212 lt!377603 (_1!5100 (ite (or c!90277 c!90279) (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34) (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))))))

(declare-fun lt!377605 () List!16008)

(assert (=> d!106287 (= lt!377603 (ListLongMap!9018 lt!377605))))

(declare-fun lt!377606 () Unit!28497)

(declare-fun lt!377604 () Unit!28497)

(assert (=> d!106287 (= lt!377606 lt!377604)))

(assert (=> d!106287 (= (getValueByKey!415 lt!377605 (_1!5100 (ite (or c!90277 c!90279) (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34) (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))) (Some!420 (_2!5100 (ite (or c!90277 c!90279) (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34) (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))))))

(assert (=> d!106287 (= lt!377604 (lemmaContainsTupThenGetReturnValue!231 lt!377605 (_1!5100 (ite (or c!90277 c!90279) (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34) (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))) (_2!5100 (ite (or c!90277 c!90279) (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34) (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))))))

(assert (=> d!106287 (= lt!377605 (insertStrictlySorted!269 (toList!4524 (ite c!90277 call!36384 (ite c!90279 call!36388 call!36383))) (_1!5100 (ite (or c!90277 c!90279) (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34) (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))) (_2!5100 (ite (or c!90277 c!90279) (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34) (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))))))

(assert (=> d!106287 (= (+!1952 (ite c!90277 call!36384 (ite c!90279 call!36388 call!36383)) (ite (or c!90277 c!90279) (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34) (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))) lt!377603)))

(declare-fun b!831892 () Bool)

(declare-fun res!566218 () Bool)

(assert (=> b!831892 (=> (not res!566218) (not e!463963))))

(assert (=> b!831892 (= res!566218 (= (getValueByKey!415 (toList!4524 lt!377603) (_1!5100 (ite (or c!90277 c!90279) (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34) (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))) (Some!420 (_2!5100 (ite (or c!90277 c!90279) (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34) (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))))

(declare-fun b!831893 () Bool)

(assert (=> b!831893 (= e!463963 (contains!4213 (toList!4524 lt!377603) (ite (or c!90277 c!90279) (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34) (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))

(assert (= (and d!106287 res!566219) b!831892))

(assert (= (and b!831892 res!566218) b!831893))

(declare-fun m!776055 () Bool)

(assert (=> d!106287 m!776055))

(declare-fun m!776057 () Bool)

(assert (=> d!106287 m!776057))

(declare-fun m!776059 () Bool)

(assert (=> d!106287 m!776059))

(declare-fun m!776061 () Bool)

(assert (=> d!106287 m!776061))

(declare-fun m!776063 () Bool)

(assert (=> b!831892 m!776063))

(declare-fun m!776065 () Bool)

(assert (=> b!831893 m!776065))

(assert (=> bm!36383 d!106287))

(declare-fun d!106289 () Bool)

(declare-fun e!463964 () Bool)

(assert (=> d!106289 e!463964))

(declare-fun res!566220 () Bool)

(assert (=> d!106289 (=> res!566220 e!463964)))

(declare-fun lt!377610 () Bool)

(assert (=> d!106289 (= res!566220 (not lt!377610))))

(declare-fun lt!377607 () Bool)

(assert (=> d!106289 (= lt!377610 lt!377607)))

(declare-fun lt!377609 () Unit!28497)

(declare-fun e!463965 () Unit!28497)

(assert (=> d!106289 (= lt!377609 e!463965)))

(declare-fun c!90290 () Bool)

(assert (=> d!106289 (= c!90290 lt!377607)))

(assert (=> d!106289 (= lt!377607 (containsKey!401 (toList!4524 lt!377449) (select (arr!22317 _keys!976) #b00000000000000000000000000000000)))))

(assert (=> d!106289 (= (contains!4212 lt!377449 (select (arr!22317 _keys!976) #b00000000000000000000000000000000)) lt!377610)))

(declare-fun b!831894 () Bool)

(declare-fun lt!377608 () Unit!28497)

(assert (=> b!831894 (= e!463965 lt!377608)))

(assert (=> b!831894 (= lt!377608 (lemmaContainsKeyImpliesGetValueByKeyDefined!311 (toList!4524 lt!377449) (select (arr!22317 _keys!976) #b00000000000000000000000000000000)))))

(assert (=> b!831894 (isDefined!312 (getValueByKey!415 (toList!4524 lt!377449) (select (arr!22317 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun b!831895 () Bool)

(declare-fun Unit!28505 () Unit!28497)

(assert (=> b!831895 (= e!463965 Unit!28505)))

(declare-fun b!831896 () Bool)

(assert (=> b!831896 (= e!463964 (isDefined!312 (getValueByKey!415 (toList!4524 lt!377449) (select (arr!22317 _keys!976) #b00000000000000000000000000000000))))))

(assert (= (and d!106289 c!90290) b!831894))

(assert (= (and d!106289 (not c!90290)) b!831895))

(assert (= (and d!106289 (not res!566220)) b!831896))

(assert (=> d!106289 m!775697))

(declare-fun m!776067 () Bool)

(assert (=> d!106289 m!776067))

(assert (=> b!831894 m!775697))

(declare-fun m!776069 () Bool)

(assert (=> b!831894 m!776069))

(assert (=> b!831894 m!775697))

(declare-fun m!776071 () Bool)

(assert (=> b!831894 m!776071))

(assert (=> b!831894 m!776071))

(declare-fun m!776073 () Bool)

(assert (=> b!831894 m!776073))

(assert (=> b!831896 m!775697))

(assert (=> b!831896 m!776071))

(assert (=> b!831896 m!776071))

(assert (=> b!831896 m!776073))

(assert (=> b!831752 d!106289))

(declare-fun d!106291 () Bool)

(declare-fun e!463966 () Bool)

(assert (=> d!106291 e!463966))

(declare-fun res!566221 () Bool)

(assert (=> d!106291 (=> res!566221 e!463966)))

(declare-fun lt!377614 () Bool)

(assert (=> d!106291 (= res!566221 (not lt!377614))))

(declare-fun lt!377611 () Bool)

(assert (=> d!106291 (= lt!377614 lt!377611)))

(declare-fun lt!377613 () Unit!28497)

(declare-fun e!463967 () Unit!28497)

(assert (=> d!106291 (= lt!377613 e!463967)))

(declare-fun c!90291 () Bool)

(assert (=> d!106291 (= c!90291 lt!377611)))

(assert (=> d!106291 (= lt!377611 (containsKey!401 (toList!4524 lt!377442) (select (arr!22317 _keys!976) #b00000000000000000000000000000000)))))

(assert (=> d!106291 (= (contains!4212 lt!377442 (select (arr!22317 _keys!976) #b00000000000000000000000000000000)) lt!377614)))

(declare-fun b!831897 () Bool)

(declare-fun lt!377612 () Unit!28497)

(assert (=> b!831897 (= e!463967 lt!377612)))

(assert (=> b!831897 (= lt!377612 (lemmaContainsKeyImpliesGetValueByKeyDefined!311 (toList!4524 lt!377442) (select (arr!22317 _keys!976) #b00000000000000000000000000000000)))))

(assert (=> b!831897 (isDefined!312 (getValueByKey!415 (toList!4524 lt!377442) (select (arr!22317 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun b!831898 () Bool)

(declare-fun Unit!28506 () Unit!28497)

(assert (=> b!831898 (= e!463967 Unit!28506)))

(declare-fun b!831899 () Bool)

(assert (=> b!831899 (= e!463966 (isDefined!312 (getValueByKey!415 (toList!4524 lt!377442) (select (arr!22317 _keys!976) #b00000000000000000000000000000000))))))

(assert (= (and d!106291 c!90291) b!831897))

(assert (= (and d!106291 (not c!90291)) b!831898))

(assert (= (and d!106291 (not res!566221)) b!831899))

(assert (=> d!106291 m!775697))

(declare-fun m!776075 () Bool)

(assert (=> d!106291 m!776075))

(assert (=> b!831897 m!775697))

(declare-fun m!776077 () Bool)

(assert (=> b!831897 m!776077))

(assert (=> b!831897 m!775697))

(declare-fun m!776079 () Bool)

(assert (=> b!831897 m!776079))

(assert (=> b!831897 m!776079))

(declare-fun m!776081 () Bool)

(assert (=> b!831897 m!776081))

(assert (=> b!831899 m!775697))

(assert (=> b!831899 m!776079))

(assert (=> b!831899 m!776079))

(assert (=> b!831899 m!776081))

(assert (=> b!831738 d!106291))

(declare-fun d!106293 () Bool)

(declare-fun lt!377617 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!390 (List!16008) (InoxSet tuple2!10180))

(assert (=> d!106293 (= lt!377617 (select (content!390 (toList!4524 lt!377455)) lt!377371))))

(declare-fun e!463972 () Bool)

(assert (=> d!106293 (= lt!377617 e!463972)))

(declare-fun res!566226 () Bool)

(assert (=> d!106293 (=> (not res!566226) (not e!463972))))

(assert (=> d!106293 (= res!566226 ((_ is Cons!16004) (toList!4524 lt!377455)))))

(assert (=> d!106293 (= (contains!4213 (toList!4524 lt!377455) lt!377371) lt!377617)))

(declare-fun b!831904 () Bool)

(declare-fun e!463973 () Bool)

(assert (=> b!831904 (= e!463972 e!463973)))

(declare-fun res!566227 () Bool)

(assert (=> b!831904 (=> res!566227 e!463973)))

(assert (=> b!831904 (= res!566227 (= (h!17134 (toList!4524 lt!377455)) lt!377371))))

(declare-fun b!831905 () Bool)

(assert (=> b!831905 (= e!463973 (contains!4213 (t!22384 (toList!4524 lt!377455)) lt!377371))))

(assert (= (and d!106293 res!566226) b!831904))

(assert (= (and b!831904 (not res!566227)) b!831905))

(declare-fun m!776083 () Bool)

(assert (=> d!106293 m!776083))

(declare-fun m!776085 () Bool)

(assert (=> d!106293 m!776085))

(declare-fun m!776087 () Bool)

(assert (=> b!831905 m!776087))

(assert (=> b!831764 d!106293))

(declare-fun d!106295 () Bool)

(declare-fun e!463974 () Bool)

(assert (=> d!106295 e!463974))

(declare-fun res!566228 () Bool)

(assert (=> d!106295 (=> res!566228 e!463974)))

(declare-fun lt!377621 () Bool)

(assert (=> d!106295 (= res!566228 (not lt!377621))))

(declare-fun lt!377618 () Bool)

(assert (=> d!106295 (= lt!377621 lt!377618)))

(declare-fun lt!377620 () Unit!28497)

(declare-fun e!463975 () Unit!28497)

(assert (=> d!106295 (= lt!377620 e!463975)))

(declare-fun c!90292 () Bool)

(assert (=> d!106295 (= c!90292 lt!377618)))

(assert (=> d!106295 (= lt!377618 (containsKey!401 (toList!4524 lt!377407) (_1!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))))

(assert (=> d!106295 (= (contains!4212 lt!377407 (_1!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))) lt!377621)))

(declare-fun b!831906 () Bool)

(declare-fun lt!377619 () Unit!28497)

(assert (=> b!831906 (= e!463975 lt!377619)))

(assert (=> b!831906 (= lt!377619 (lemmaContainsKeyImpliesGetValueByKeyDefined!311 (toList!4524 lt!377407) (_1!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))))

(assert (=> b!831906 (isDefined!312 (getValueByKey!415 (toList!4524 lt!377407) (_1!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))))

(declare-fun b!831907 () Bool)

(declare-fun Unit!28507 () Unit!28497)

(assert (=> b!831907 (= e!463975 Unit!28507)))

(declare-fun b!831908 () Bool)

(assert (=> b!831908 (= e!463974 (isDefined!312 (getValueByKey!415 (toList!4524 lt!377407) (_1!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))))))

(assert (= (and d!106295 c!90292) b!831906))

(assert (= (and d!106295 (not c!90292)) b!831907))

(assert (= (and d!106295 (not res!566228)) b!831908))

(declare-fun m!776089 () Bool)

(assert (=> d!106295 m!776089))

(declare-fun m!776091 () Bool)

(assert (=> b!831906 m!776091))

(assert (=> b!831906 m!775725))

(assert (=> b!831906 m!775725))

(declare-fun m!776093 () Bool)

(assert (=> b!831906 m!776093))

(assert (=> b!831908 m!775725))

(assert (=> b!831908 m!775725))

(assert (=> b!831908 m!776093))

(assert (=> d!106223 d!106295))

(declare-fun d!106297 () Bool)

(declare-fun c!90297 () Bool)

(assert (=> d!106297 (= c!90297 (and ((_ is Cons!16004) lt!377409) (= (_1!5100 (h!17134 lt!377409)) (_1!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))))))

(declare-fun e!463980 () Option!421)

(assert (=> d!106297 (= (getValueByKey!415 lt!377409 (_1!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))) e!463980)))

(declare-fun b!831917 () Bool)

(assert (=> b!831917 (= e!463980 (Some!420 (_2!5100 (h!17134 lt!377409))))))

(declare-fun b!831920 () Bool)

(declare-fun e!463981 () Option!421)

(assert (=> b!831920 (= e!463981 None!419)))

(declare-fun b!831918 () Bool)

(assert (=> b!831918 (= e!463980 e!463981)))

(declare-fun c!90298 () Bool)

(assert (=> b!831918 (= c!90298 (and ((_ is Cons!16004) lt!377409) (not (= (_1!5100 (h!17134 lt!377409)) (_1!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))))))

(declare-fun b!831919 () Bool)

(assert (=> b!831919 (= e!463981 (getValueByKey!415 (t!22384 lt!377409) (_1!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))))

(assert (= (and d!106297 c!90297) b!831917))

(assert (= (and d!106297 (not c!90297)) b!831918))

(assert (= (and b!831918 c!90298) b!831919))

(assert (= (and b!831918 (not c!90298)) b!831920))

(declare-fun m!776095 () Bool)

(assert (=> b!831919 m!776095))

(assert (=> d!106223 d!106297))

(declare-fun d!106299 () Bool)

(assert (=> d!106299 (= (getValueByKey!415 lt!377409 (_1!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))) (Some!420 (_2!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))))

(declare-fun lt!377624 () Unit!28497)

(declare-fun choose!1433 (List!16008 (_ BitVec 64) V!25285) Unit!28497)

(assert (=> d!106299 (= lt!377624 (choose!1433 lt!377409 (_1!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)) (_2!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))))

(declare-fun e!463984 () Bool)

(assert (=> d!106299 e!463984))

(declare-fun res!566233 () Bool)

(assert (=> d!106299 (=> (not res!566233) (not e!463984))))

(declare-fun isStrictlySorted!438 (List!16008) Bool)

(assert (=> d!106299 (= res!566233 (isStrictlySorted!438 lt!377409))))

(assert (=> d!106299 (= (lemmaContainsTupThenGetReturnValue!231 lt!377409 (_1!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)) (_2!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))) lt!377624)))

(declare-fun b!831925 () Bool)

(declare-fun res!566234 () Bool)

(assert (=> b!831925 (=> (not res!566234) (not e!463984))))

(assert (=> b!831925 (= res!566234 (containsKey!401 lt!377409 (_1!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))))

(declare-fun b!831926 () Bool)

(assert (=> b!831926 (= e!463984 (contains!4213 lt!377409 (tuple2!10181 (_1!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)) (_2!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))))))

(assert (= (and d!106299 res!566233) b!831925))

(assert (= (and b!831925 res!566234) b!831926))

(assert (=> d!106299 m!775719))

(declare-fun m!776097 () Bool)

(assert (=> d!106299 m!776097))

(declare-fun m!776099 () Bool)

(assert (=> d!106299 m!776099))

(declare-fun m!776101 () Bool)

(assert (=> b!831925 m!776101))

(declare-fun m!776103 () Bool)

(assert (=> b!831926 m!776103))

(assert (=> d!106223 d!106299))

(declare-fun b!831947 () Bool)

(declare-fun e!463999 () List!16008)

(declare-fun call!36404 () List!16008)

(assert (=> b!831947 (= e!463999 call!36404)))

(declare-fun b!831948 () Bool)

(declare-fun res!566239 () Bool)

(declare-fun e!463996 () Bool)

(assert (=> b!831948 (=> (not res!566239) (not e!463996))))

(declare-fun lt!377627 () List!16008)

(assert (=> b!831948 (= res!566239 (containsKey!401 lt!377627 (_1!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))))

(declare-fun b!831949 () Bool)

(declare-fun c!90308 () Bool)

(declare-fun e!463998 () List!16008)

(declare-fun c!90310 () Bool)

(assert (=> b!831949 (= e!463998 (ite c!90308 (t!22384 (toList!4524 lt!377373)) (ite c!90310 (Cons!16004 (h!17134 (toList!4524 lt!377373)) (t!22384 (toList!4524 lt!377373))) Nil!16005)))))

(declare-fun b!831950 () Bool)

(declare-fun e!463995 () List!16008)

(assert (=> b!831950 (= e!463995 e!463999)))

(assert (=> b!831950 (= c!90308 (and ((_ is Cons!16004) (toList!4524 lt!377373)) (= (_1!5100 (h!17134 (toList!4524 lt!377373))) (_1!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))))))

(declare-fun b!831951 () Bool)

(assert (=> b!831951 (= e!463998 (insertStrictlySorted!269 (t!22384 (toList!4524 lt!377373)) (_1!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)) (_2!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))))

(declare-fun bm!36400 () Bool)

(declare-fun call!36405 () List!16008)

(assert (=> bm!36400 (= call!36404 call!36405)))

(declare-fun b!831952 () Bool)

(assert (=> b!831952 (= e!463996 (contains!4213 lt!377627 (tuple2!10181 (_1!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)) (_2!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))))))

(declare-fun b!831953 () Bool)

(declare-fun e!463997 () List!16008)

(declare-fun call!36403 () List!16008)

(assert (=> b!831953 (= e!463997 call!36403)))

(declare-fun b!831954 () Bool)

(assert (=> b!831954 (= c!90310 (and ((_ is Cons!16004) (toList!4524 lt!377373)) (bvsgt (_1!5100 (h!17134 (toList!4524 lt!377373))) (_1!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))))))

(assert (=> b!831954 (= e!463999 e!463997)))

(declare-fun d!106301 () Bool)

(assert (=> d!106301 e!463996))

(declare-fun res!566240 () Bool)

(assert (=> d!106301 (=> (not res!566240) (not e!463996))))

(assert (=> d!106301 (= res!566240 (isStrictlySorted!438 lt!377627))))

(assert (=> d!106301 (= lt!377627 e!463995)))

(declare-fun c!90309 () Bool)

(assert (=> d!106301 (= c!90309 (and ((_ is Cons!16004) (toList!4524 lt!377373)) (bvslt (_1!5100 (h!17134 (toList!4524 lt!377373))) (_1!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))))))

(assert (=> d!106301 (isStrictlySorted!438 (toList!4524 lt!377373))))

(assert (=> d!106301 (= (insertStrictlySorted!269 (toList!4524 lt!377373) (_1!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)) (_2!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))) lt!377627)))

(declare-fun b!831955 () Bool)

(assert (=> b!831955 (= e!463997 call!36403)))

(declare-fun bm!36401 () Bool)

(declare-fun $colon$colon!536 (List!16008 tuple2!10180) List!16008)

(assert (=> bm!36401 (= call!36405 ($colon$colon!536 e!463998 (ite c!90309 (h!17134 (toList!4524 lt!377373)) (tuple2!10181 (_1!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)) (_2!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))))))

(declare-fun c!90307 () Bool)

(assert (=> bm!36401 (= c!90307 c!90309)))

(declare-fun bm!36402 () Bool)

(assert (=> bm!36402 (= call!36403 call!36404)))

(declare-fun b!831956 () Bool)

(assert (=> b!831956 (= e!463995 call!36405)))

(assert (= (and d!106301 c!90309) b!831956))

(assert (= (and d!106301 (not c!90309)) b!831950))

(assert (= (and b!831950 c!90308) b!831947))

(assert (= (and b!831950 (not c!90308)) b!831954))

(assert (= (and b!831954 c!90310) b!831953))

(assert (= (and b!831954 (not c!90310)) b!831955))

(assert (= (or b!831953 b!831955) bm!36402))

(assert (= (or b!831947 bm!36402) bm!36400))

(assert (= (or b!831956 bm!36400) bm!36401))

(assert (= (and bm!36401 c!90307) b!831951))

(assert (= (and bm!36401 (not c!90307)) b!831949))

(assert (= (and d!106301 res!566240) b!831948))

(assert (= (and b!831948 res!566239) b!831952))

(declare-fun m!776105 () Bool)

(assert (=> b!831948 m!776105))

(declare-fun m!776107 () Bool)

(assert (=> b!831951 m!776107))

(declare-fun m!776109 () Bool)

(assert (=> d!106301 m!776109))

(declare-fun m!776111 () Bool)

(assert (=> d!106301 m!776111))

(declare-fun m!776113 () Bool)

(assert (=> b!831952 m!776113))

(declare-fun m!776115 () Bool)

(assert (=> bm!36401 m!776115))

(assert (=> d!106223 d!106301))

(assert (=> bm!36389 d!106231))

(declare-fun d!106303 () Bool)

(declare-fun lt!377628 () Bool)

(assert (=> d!106303 (= lt!377628 (select (content!390 (toList!4524 lt!377529)) (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))))

(declare-fun e!464000 () Bool)

(assert (=> d!106303 (= lt!377628 e!464000)))

(declare-fun res!566241 () Bool)

(assert (=> d!106303 (=> (not res!566241) (not e!464000))))

(assert (=> d!106303 (= res!566241 ((_ is Cons!16004) (toList!4524 lt!377529)))))

(assert (=> d!106303 (= (contains!4213 (toList!4524 lt!377529) (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)) lt!377628)))

(declare-fun b!831957 () Bool)

(declare-fun e!464001 () Bool)

(assert (=> b!831957 (= e!464000 e!464001)))

(declare-fun res!566242 () Bool)

(assert (=> b!831957 (=> res!566242 e!464001)))

(assert (=> b!831957 (= res!566242 (= (h!17134 (toList!4524 lt!377529)) (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))))

(declare-fun b!831958 () Bool)

(assert (=> b!831958 (= e!464001 (contains!4213 (t!22384 (toList!4524 lt!377529)) (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))))

(assert (= (and d!106303 res!566241) b!831957))

(assert (= (and b!831957 (not res!566242)) b!831958))

(declare-fun m!776117 () Bool)

(assert (=> d!106303 m!776117))

(declare-fun m!776119 () Bool)

(assert (=> d!106303 m!776119))

(declare-fun m!776121 () Bool)

(assert (=> b!831958 m!776121))

(assert (=> b!831831 d!106303))

(declare-fun d!106305 () Bool)

(declare-fun e!464002 () Bool)

(assert (=> d!106305 e!464002))

(declare-fun res!566243 () Bool)

(assert (=> d!106305 (=> res!566243 e!464002)))

(declare-fun lt!377632 () Bool)

(assert (=> d!106305 (= res!566243 (not lt!377632))))

(declare-fun lt!377629 () Bool)

(assert (=> d!106305 (= lt!377632 lt!377629)))

(declare-fun lt!377631 () Unit!28497)

(declare-fun e!464003 () Unit!28497)

(assert (=> d!106305 (= lt!377631 e!464003)))

(declare-fun c!90311 () Bool)

(assert (=> d!106305 (= c!90311 lt!377629)))

(assert (=> d!106305 (= lt!377629 (containsKey!401 (toList!4524 lt!377542) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!106305 (= (contains!4212 lt!377542 #b1000000000000000000000000000000000000000000000000000000000000000) lt!377632)))

(declare-fun b!831959 () Bool)

(declare-fun lt!377630 () Unit!28497)

(assert (=> b!831959 (= e!464003 lt!377630)))

(assert (=> b!831959 (= lt!377630 (lemmaContainsKeyImpliesGetValueByKeyDefined!311 (toList!4524 lt!377542) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!831959 (isDefined!312 (getValueByKey!415 (toList!4524 lt!377542) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!831960 () Bool)

(declare-fun Unit!28508 () Unit!28497)

(assert (=> b!831960 (= e!464003 Unit!28508)))

(declare-fun b!831961 () Bool)

(assert (=> b!831961 (= e!464002 (isDefined!312 (getValueByKey!415 (toList!4524 lt!377542) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!106305 c!90311) b!831959))

(assert (= (and d!106305 (not c!90311)) b!831960))

(assert (= (and d!106305 (not res!566243)) b!831961))

(declare-fun m!776123 () Bool)

(assert (=> d!106305 m!776123))

(declare-fun m!776125 () Bool)

(assert (=> b!831959 m!776125))

(declare-fun m!776127 () Bool)

(assert (=> b!831959 m!776127))

(assert (=> b!831959 m!776127))

(declare-fun m!776129 () Bool)

(assert (=> b!831959 m!776129))

(assert (=> b!831961 m!776127))

(assert (=> b!831961 m!776127))

(assert (=> b!831961 m!776129))

(assert (=> bm!36393 d!106305))

(declare-fun d!106307 () Bool)

(declare-fun lt!377633 () Bool)

(assert (=> d!106307 (= lt!377633 (select (content!390 (toList!4524 lt!377451)) lt!377372))))

(declare-fun e!464004 () Bool)

(assert (=> d!106307 (= lt!377633 e!464004)))

(declare-fun res!566244 () Bool)

(assert (=> d!106307 (=> (not res!566244) (not e!464004))))

(assert (=> d!106307 (= res!566244 ((_ is Cons!16004) (toList!4524 lt!377451)))))

(assert (=> d!106307 (= (contains!4213 (toList!4524 lt!377451) lt!377372) lt!377633)))

(declare-fun b!831962 () Bool)

(declare-fun e!464005 () Bool)

(assert (=> b!831962 (= e!464004 e!464005)))

(declare-fun res!566245 () Bool)

(assert (=> b!831962 (=> res!566245 e!464005)))

(assert (=> b!831962 (= res!566245 (= (h!17134 (toList!4524 lt!377451)) lt!377372))))

(declare-fun b!831963 () Bool)

(assert (=> b!831963 (= e!464005 (contains!4213 (t!22384 (toList!4524 lt!377451)) lt!377372))))

(assert (= (and d!106307 res!566244) b!831962))

(assert (= (and b!831962 (not res!566245)) b!831963))

(declare-fun m!776131 () Bool)

(assert (=> d!106307 m!776131))

(declare-fun m!776133 () Bool)

(assert (=> d!106307 m!776133))

(declare-fun m!776135 () Bool)

(assert (=> b!831963 m!776135))

(assert (=> b!831762 d!106307))

(declare-fun d!106309 () Bool)

(assert (=> d!106309 (= (validKeyInArray!0 (select (arr!22317 _keys!976) #b00000000000000000000000000000000)) (and (not (= (select (arr!22317 _keys!976) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!22317 _keys!976) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!831687 d!106309))

(declare-fun b!831964 () Bool)

(declare-fun e!464006 () ListLongMap!9017)

(declare-fun e!464008 () ListLongMap!9017)

(assert (=> b!831964 (= e!464006 e!464008)))

(declare-fun c!90314 () Bool)

(assert (=> b!831964 (= c!90314 (validKeyInArray!0 (select (arr!22317 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!831965 () Bool)

(declare-fun e!464007 () Bool)

(declare-fun e!464010 () Bool)

(assert (=> b!831965 (= e!464007 e!464010)))

(declare-fun c!90312 () Bool)

(declare-fun e!464011 () Bool)

(assert (=> b!831965 (= c!90312 e!464011)))

(declare-fun res!566247 () Bool)

(assert (=> b!831965 (=> (not res!566247) (not e!464011))))

(assert (=> b!831965 (= res!566247 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!22738 _keys!976)))))

(declare-fun b!831966 () Bool)

(declare-fun lt!377634 () Unit!28497)

(declare-fun lt!377637 () Unit!28497)

(assert (=> b!831966 (= lt!377634 lt!377637)))

(declare-fun lt!377640 () V!25285)

(declare-fun lt!377638 () ListLongMap!9017)

(declare-fun lt!377635 () (_ BitVec 64))

(declare-fun lt!377636 () (_ BitVec 64))

(assert (=> b!831966 (not (contains!4212 (+!1952 lt!377638 (tuple2!10181 lt!377635 lt!377640)) lt!377636))))

(assert (=> b!831966 (= lt!377637 (addStillNotContains!200 lt!377638 lt!377635 lt!377640 lt!377636))))

(assert (=> b!831966 (= lt!377636 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!831966 (= lt!377640 (get!11828 (select (arr!22318 _values!788) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (dynLambda!983 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!831966 (= lt!377635 (select (arr!22317 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun call!36406 () ListLongMap!9017)

(assert (=> b!831966 (= lt!377638 call!36406)))

(assert (=> b!831966 (= e!464008 (+!1952 call!36406 (tuple2!10181 (select (arr!22317 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (get!11828 (select (arr!22318 _values!788) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (dynLambda!983 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!831967 () Bool)

(declare-fun e!464012 () Bool)

(assert (=> b!831967 (= e!464010 e!464012)))

(assert (=> b!831967 (and (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!22738 _keys!976)))))

(declare-fun res!566246 () Bool)

(declare-fun lt!377639 () ListLongMap!9017)

(assert (=> b!831967 (= res!566246 (contains!4212 lt!377639 (select (arr!22317 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!831967 (=> (not res!566246) (not e!464012))))

(declare-fun b!831968 () Bool)

(assert (=> b!831968 (= e!464008 call!36406)))

(declare-fun b!831969 () Bool)

(assert (=> b!831969 (and (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!22738 _keys!976)))))

(assert (=> b!831969 (and (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!22739 _values!788)))))

(assert (=> b!831969 (= e!464012 (= (apply!373 lt!377639 (select (arr!22317 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))) (get!11828 (select (arr!22318 _values!788) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (dynLambda!983 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!831970 () Bool)

(declare-fun e!464009 () Bool)

(assert (=> b!831970 (= e!464010 e!464009)))

(declare-fun c!90313 () Bool)

(assert (=> b!831970 (= c!90313 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!22738 _keys!976)))))

(declare-fun b!831971 () Bool)

(assert (=> b!831971 (= e!464009 (= lt!377639 (getCurrentListMapNoExtraKeys!2523 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) defaultEntry!796)))))

(declare-fun bm!36403 () Bool)

(assert (=> bm!36403 (= call!36406 (getCurrentListMapNoExtraKeys!2523 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) defaultEntry!796))))

(declare-fun b!831973 () Bool)

(assert (=> b!831973 (= e!464009 (isEmpty!662 lt!377639))))

(declare-fun b!831974 () Bool)

(declare-fun res!566248 () Bool)

(assert (=> b!831974 (=> (not res!566248) (not e!464007))))

(assert (=> b!831974 (= res!566248 (not (contains!4212 lt!377639 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!831975 () Bool)

(assert (=> b!831975 (= e!464011 (validKeyInArray!0 (select (arr!22317 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!831975 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))

(declare-fun d!106311 () Bool)

(assert (=> d!106311 e!464007))

(declare-fun res!566249 () Bool)

(assert (=> d!106311 (=> (not res!566249) (not e!464007))))

(assert (=> d!106311 (= res!566249 (not (contains!4212 lt!377639 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!106311 (= lt!377639 e!464006)))

(declare-fun c!90315 () Bool)

(assert (=> d!106311 (= c!90315 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!22738 _keys!976)))))

(assert (=> d!106311 (validMask!0 mask!1312)))

(assert (=> d!106311 (= (getCurrentListMapNoExtraKeys!2523 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!796) lt!377639)))

(declare-fun b!831972 () Bool)

(assert (=> b!831972 (= e!464006 (ListLongMap!9018 Nil!16005))))

(assert (= (and d!106311 c!90315) b!831972))

(assert (= (and d!106311 (not c!90315)) b!831964))

(assert (= (and b!831964 c!90314) b!831966))

(assert (= (and b!831964 (not c!90314)) b!831968))

(assert (= (or b!831966 b!831968) bm!36403))

(assert (= (and d!106311 res!566249) b!831974))

(assert (= (and b!831974 res!566248) b!831965))

(assert (= (and b!831965 res!566247) b!831975))

(assert (= (and b!831965 c!90312) b!831967))

(assert (= (and b!831965 (not c!90312)) b!831970))

(assert (= (and b!831967 res!566246) b!831969))

(assert (= (and b!831970 c!90313) b!831971))

(assert (= (and b!831970 (not c!90313)) b!831973))

(declare-fun b_lambda!11457 () Bool)

(assert (=> (not b_lambda!11457) (not b!831966)))

(assert (=> b!831966 t!22389))

(declare-fun b_and!22595 () Bool)

(assert (= b_and!22593 (and (=> t!22389 result!8029) b_and!22595)))

(declare-fun b_lambda!11459 () Bool)

(assert (=> (not b_lambda!11459) (not b!831969)))

(assert (=> b!831969 t!22389))

(declare-fun b_and!22597 () Bool)

(assert (= b_and!22595 (and (=> t!22389 result!8029) b_and!22597)))

(declare-fun m!776137 () Bool)

(assert (=> bm!36403 m!776137))

(declare-fun m!776139 () Bool)

(assert (=> b!831967 m!776139))

(assert (=> b!831967 m!776139))

(declare-fun m!776141 () Bool)

(assert (=> b!831967 m!776141))

(declare-fun m!776143 () Bool)

(assert (=> b!831966 m!776143))

(declare-fun m!776145 () Bool)

(assert (=> b!831966 m!776145))

(assert (=> b!831966 m!775747))

(declare-fun m!776147 () Bool)

(assert (=> b!831966 m!776147))

(assert (=> b!831966 m!776143))

(declare-fun m!776149 () Bool)

(assert (=> b!831966 m!776149))

(assert (=> b!831966 m!776139))

(declare-fun m!776151 () Bool)

(assert (=> b!831966 m!776151))

(declare-fun m!776153 () Bool)

(assert (=> b!831966 m!776153))

(assert (=> b!831966 m!776145))

(assert (=> b!831966 m!775747))

(declare-fun m!776155 () Bool)

(assert (=> d!106311 m!776155))

(assert (=> d!106311 m!775625))

(assert (=> b!831971 m!776137))

(declare-fun m!776157 () Bool)

(assert (=> b!831973 m!776157))

(assert (=> b!831975 m!776139))

(assert (=> b!831975 m!776139))

(declare-fun m!776159 () Bool)

(assert (=> b!831975 m!776159))

(declare-fun m!776161 () Bool)

(assert (=> b!831974 m!776161))

(assert (=> b!831964 m!776139))

(assert (=> b!831964 m!776139))

(assert (=> b!831964 m!776159))

(assert (=> b!831969 m!776145))

(assert (=> b!831969 m!775747))

(assert (=> b!831969 m!776147))

(assert (=> b!831969 m!776139))

(assert (=> b!831969 m!776139))

(declare-fun m!776163 () Bool)

(assert (=> b!831969 m!776163))

(assert (=> b!831969 m!776145))

(assert (=> b!831969 m!775747))

(assert (=> b!831742 d!106311))

(assert (=> b!831707 d!106309))

(declare-fun d!106313 () Bool)

(declare-fun e!464013 () Bool)

(assert (=> d!106313 e!464013))

(declare-fun res!566250 () Bool)

(assert (=> d!106313 (=> res!566250 e!464013)))

(declare-fun lt!377644 () Bool)

(assert (=> d!106313 (= res!566250 (not lt!377644))))

(declare-fun lt!377641 () Bool)

(assert (=> d!106313 (= lt!377644 lt!377641)))

(declare-fun lt!377643 () Unit!28497)

(declare-fun e!464014 () Unit!28497)

(assert (=> d!106313 (= lt!377643 e!464014)))

(declare-fun c!90316 () Bool)

(assert (=> d!106313 (= c!90316 lt!377641)))

(assert (=> d!106313 (= lt!377641 (containsKey!401 (toList!4524 lt!377542) (select (arr!22317 _keys!976) #b00000000000000000000000000000000)))))

(assert (=> d!106313 (= (contains!4212 lt!377542 (select (arr!22317 _keys!976) #b00000000000000000000000000000000)) lt!377644)))

(declare-fun b!831976 () Bool)

(declare-fun lt!377642 () Unit!28497)

(assert (=> b!831976 (= e!464014 lt!377642)))

(assert (=> b!831976 (= lt!377642 (lemmaContainsKeyImpliesGetValueByKeyDefined!311 (toList!4524 lt!377542) (select (arr!22317 _keys!976) #b00000000000000000000000000000000)))))

(assert (=> b!831976 (isDefined!312 (getValueByKey!415 (toList!4524 lt!377542) (select (arr!22317 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun b!831977 () Bool)

(declare-fun Unit!28509 () Unit!28497)

(assert (=> b!831977 (= e!464014 Unit!28509)))

(declare-fun b!831978 () Bool)

(assert (=> b!831978 (= e!464013 (isDefined!312 (getValueByKey!415 (toList!4524 lt!377542) (select (arr!22317 _keys!976) #b00000000000000000000000000000000))))))

(assert (= (and d!106313 c!90316) b!831976))

(assert (= (and d!106313 (not c!90316)) b!831977))

(assert (= (and d!106313 (not res!566250)) b!831978))

(assert (=> d!106313 m!775697))

(declare-fun m!776165 () Bool)

(assert (=> d!106313 m!776165))

(assert (=> b!831976 m!775697))

(declare-fun m!776167 () Bool)

(assert (=> b!831976 m!776167))

(assert (=> b!831976 m!775697))

(declare-fun m!776169 () Bool)

(assert (=> b!831976 m!776169))

(assert (=> b!831976 m!776169))

(declare-fun m!776171 () Bool)

(assert (=> b!831976 m!776171))

(assert (=> b!831978 m!775697))

(assert (=> b!831978 m!776169))

(assert (=> b!831978 m!776169))

(assert (=> b!831978 m!776171))

(assert (=> b!831847 d!106313))

(declare-fun d!106315 () Bool)

(assert (=> d!106315 (= (apply!373 lt!377542 #b0000000000000000000000000000000000000000000000000000000000000000) (get!11829 (getValueByKey!415 (toList!4524 lt!377542) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!23257 () Bool)

(assert (= bs!23257 d!106315))

(declare-fun m!776173 () Bool)

(assert (=> bs!23257 m!776173))

(assert (=> bs!23257 m!776173))

(declare-fun m!776175 () Bool)

(assert (=> bs!23257 m!776175))

(assert (=> b!831848 d!106315))

(declare-fun d!106317 () Bool)

(declare-fun c!90317 () Bool)

(assert (=> d!106317 (= c!90317 (and ((_ is Cons!16004) (toList!4524 lt!377403)) (= (_1!5100 (h!17134 (toList!4524 lt!377403))) (_1!5100 lt!377371))))))

(declare-fun e!464015 () Option!421)

(assert (=> d!106317 (= (getValueByKey!415 (toList!4524 lt!377403) (_1!5100 lt!377371)) e!464015)))

(declare-fun b!831979 () Bool)

(assert (=> b!831979 (= e!464015 (Some!420 (_2!5100 (h!17134 (toList!4524 lt!377403)))))))

(declare-fun b!831982 () Bool)

(declare-fun e!464016 () Option!421)

(assert (=> b!831982 (= e!464016 None!419)))

(declare-fun b!831980 () Bool)

(assert (=> b!831980 (= e!464015 e!464016)))

(declare-fun c!90318 () Bool)

(assert (=> b!831980 (= c!90318 (and ((_ is Cons!16004) (toList!4524 lt!377403)) (not (= (_1!5100 (h!17134 (toList!4524 lt!377403))) (_1!5100 lt!377371)))))))

(declare-fun b!831981 () Bool)

(assert (=> b!831981 (= e!464016 (getValueByKey!415 (t!22384 (toList!4524 lt!377403)) (_1!5100 lt!377371)))))

(assert (= (and d!106317 c!90317) b!831979))

(assert (= (and d!106317 (not c!90317)) b!831980))

(assert (= (and b!831980 c!90318) b!831981))

(assert (= (and b!831980 (not c!90318)) b!831982))

(declare-fun m!776177 () Bool)

(assert (=> b!831981 m!776177))

(assert (=> b!831695 d!106317))

(declare-fun d!106319 () Bool)

(declare-fun lt!377645 () Bool)

(assert (=> d!106319 (= lt!377645 (select (content!390 (toList!4524 lt!377533)) lt!377371))))

(declare-fun e!464017 () Bool)

(assert (=> d!106319 (= lt!377645 e!464017)))

(declare-fun res!566251 () Bool)

(assert (=> d!106319 (=> (not res!566251) (not e!464017))))

(assert (=> d!106319 (= res!566251 ((_ is Cons!16004) (toList!4524 lt!377533)))))

(assert (=> d!106319 (= (contains!4213 (toList!4524 lt!377533) lt!377371) lt!377645)))

(declare-fun b!831983 () Bool)

(declare-fun e!464018 () Bool)

(assert (=> b!831983 (= e!464017 e!464018)))

(declare-fun res!566252 () Bool)

(assert (=> b!831983 (=> res!566252 e!464018)))

(assert (=> b!831983 (= res!566252 (= (h!17134 (toList!4524 lt!377533)) lt!377371))))

(declare-fun b!831984 () Bool)

(assert (=> b!831984 (= e!464018 (contains!4213 (t!22384 (toList!4524 lt!377533)) lt!377371))))

(assert (= (and d!106319 res!566251) b!831983))

(assert (= (and b!831983 (not res!566252)) b!831984))

(declare-fun m!776179 () Bool)

(assert (=> d!106319 m!776179))

(declare-fun m!776181 () Bool)

(assert (=> d!106319 m!776181))

(declare-fun m!776183 () Bool)

(assert (=> b!831984 m!776183))

(assert (=> b!831833 d!106319))

(declare-fun d!106321 () Bool)

(assert (=> d!106321 (= (apply!373 lt!377449 (select (arr!22317 _keys!976) #b00000000000000000000000000000000)) (get!11829 (getValueByKey!415 (toList!4524 lt!377449) (select (arr!22317 _keys!976) #b00000000000000000000000000000000))))))

(declare-fun bs!23258 () Bool)

(assert (= bs!23258 d!106321))

(assert (=> bs!23258 m!775697))

(assert (=> bs!23258 m!776071))

(assert (=> bs!23258 m!776071))

(declare-fun m!776185 () Bool)

(assert (=> bs!23258 m!776185))

(assert (=> b!831754 d!106321))

(declare-fun d!106323 () Bool)

(declare-fun c!90321 () Bool)

(assert (=> d!106323 (= c!90321 ((_ is ValueCellFull!7191) (select (arr!22318 _values!788) #b00000000000000000000000000000000)))))

(declare-fun e!464021 () V!25285)

(assert (=> d!106323 (= (get!11828 (select (arr!22318 _values!788) #b00000000000000000000000000000000) (dynLambda!983 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)) e!464021)))

(declare-fun b!831989 () Bool)

(declare-fun get!11830 (ValueCell!7191 V!25285) V!25285)

(assert (=> b!831989 (= e!464021 (get!11830 (select (arr!22318 _values!788) #b00000000000000000000000000000000) (dynLambda!983 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!831990 () Bool)

(declare-fun get!11831 (ValueCell!7191 V!25285) V!25285)

(assert (=> b!831990 (= e!464021 (get!11831 (select (arr!22318 _values!788) #b00000000000000000000000000000000) (dynLambda!983 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!106323 c!90321) b!831989))

(assert (= (and d!106323 (not c!90321)) b!831990))

(assert (=> b!831989 m!775745))

(assert (=> b!831989 m!775747))

(declare-fun m!776187 () Bool)

(assert (=> b!831989 m!776187))

(assert (=> b!831990 m!775745))

(assert (=> b!831990 m!775747))

(declare-fun m!776189 () Bool)

(assert (=> b!831990 m!776189))

(assert (=> b!831754 d!106323))

(declare-fun d!106325 () Bool)

(assert (=> d!106325 (= (apply!373 (+!1952 lt!377510 (tuple2!10181 lt!377526 zeroValueAfter!34)) lt!377515) (apply!373 lt!377510 lt!377515))))

(declare-fun lt!377646 () Unit!28497)

(assert (=> d!106325 (= lt!377646 (choose!1431 lt!377510 lt!377526 zeroValueAfter!34 lt!377515))))

(declare-fun e!464022 () Bool)

(assert (=> d!106325 e!464022))

(declare-fun res!566253 () Bool)

(assert (=> d!106325 (=> (not res!566253) (not e!464022))))

(assert (=> d!106325 (= res!566253 (contains!4212 lt!377510 lt!377515))))

(assert (=> d!106325 (= (addApplyDifferent!324 lt!377510 lt!377526 zeroValueAfter!34 lt!377515) lt!377646)))

(declare-fun b!831991 () Bool)

(assert (=> b!831991 (= e!464022 (not (= lt!377515 lt!377526)))))

(assert (= (and d!106325 res!566253) b!831991))

(declare-fun m!776191 () Bool)

(assert (=> d!106325 m!776191))

(assert (=> d!106325 m!775833))

(assert (=> d!106325 m!775821))

(assert (=> d!106325 m!775823))

(assert (=> d!106325 m!775821))

(declare-fun m!776193 () Bool)

(assert (=> d!106325 m!776193))

(assert (=> b!831812 d!106325))

(declare-fun d!106327 () Bool)

(assert (=> d!106327 (= (apply!373 (+!1952 lt!377525 (tuple2!10181 lt!377516 minValue!754)) lt!377528) (get!11829 (getValueByKey!415 (toList!4524 (+!1952 lt!377525 (tuple2!10181 lt!377516 minValue!754))) lt!377528)))))

(declare-fun bs!23259 () Bool)

(assert (= bs!23259 d!106327))

(declare-fun m!776195 () Bool)

(assert (=> bs!23259 m!776195))

(assert (=> bs!23259 m!776195))

(declare-fun m!776197 () Bool)

(assert (=> bs!23259 m!776197))

(assert (=> b!831812 d!106327))

(declare-fun d!106329 () Bool)

(assert (=> d!106329 (= (apply!373 lt!377511 lt!377524) (get!11829 (getValueByKey!415 (toList!4524 lt!377511) lt!377524)))))

(declare-fun bs!23260 () Bool)

(assert (= bs!23260 d!106329))

(declare-fun m!776199 () Bool)

(assert (=> bs!23260 m!776199))

(assert (=> bs!23260 m!776199))

(declare-fun m!776201 () Bool)

(assert (=> bs!23260 m!776201))

(assert (=> b!831812 d!106329))

(declare-fun d!106331 () Bool)

(declare-fun e!464023 () Bool)

(assert (=> d!106331 e!464023))

(declare-fun res!566255 () Bool)

(assert (=> d!106331 (=> (not res!566255) (not e!464023))))

(declare-fun lt!377647 () ListLongMap!9017)

(assert (=> d!106331 (= res!566255 (contains!4212 lt!377647 (_1!5100 (tuple2!10181 lt!377521 minValue!754))))))

(declare-fun lt!377649 () List!16008)

(assert (=> d!106331 (= lt!377647 (ListLongMap!9018 lt!377649))))

(declare-fun lt!377650 () Unit!28497)

(declare-fun lt!377648 () Unit!28497)

(assert (=> d!106331 (= lt!377650 lt!377648)))

(assert (=> d!106331 (= (getValueByKey!415 lt!377649 (_1!5100 (tuple2!10181 lt!377521 minValue!754))) (Some!420 (_2!5100 (tuple2!10181 lt!377521 minValue!754))))))

(assert (=> d!106331 (= lt!377648 (lemmaContainsTupThenGetReturnValue!231 lt!377649 (_1!5100 (tuple2!10181 lt!377521 minValue!754)) (_2!5100 (tuple2!10181 lt!377521 minValue!754))))))

(assert (=> d!106331 (= lt!377649 (insertStrictlySorted!269 (toList!4524 lt!377511) (_1!5100 (tuple2!10181 lt!377521 minValue!754)) (_2!5100 (tuple2!10181 lt!377521 minValue!754))))))

(assert (=> d!106331 (= (+!1952 lt!377511 (tuple2!10181 lt!377521 minValue!754)) lt!377647)))

(declare-fun b!831992 () Bool)

(declare-fun res!566254 () Bool)

(assert (=> b!831992 (=> (not res!566254) (not e!464023))))

(assert (=> b!831992 (= res!566254 (= (getValueByKey!415 (toList!4524 lt!377647) (_1!5100 (tuple2!10181 lt!377521 minValue!754))) (Some!420 (_2!5100 (tuple2!10181 lt!377521 minValue!754)))))))

(declare-fun b!831993 () Bool)

(assert (=> b!831993 (= e!464023 (contains!4213 (toList!4524 lt!377647) (tuple2!10181 lt!377521 minValue!754)))))

(assert (= (and d!106331 res!566255) b!831992))

(assert (= (and b!831992 res!566254) b!831993))

(declare-fun m!776203 () Bool)

(assert (=> d!106331 m!776203))

(declare-fun m!776205 () Bool)

(assert (=> d!106331 m!776205))

(declare-fun m!776207 () Bool)

(assert (=> d!106331 m!776207))

(declare-fun m!776209 () Bool)

(assert (=> d!106331 m!776209))

(declare-fun m!776211 () Bool)

(assert (=> b!831992 m!776211))

(declare-fun m!776213 () Bool)

(assert (=> b!831993 m!776213))

(assert (=> b!831812 d!106331))

(declare-fun d!106333 () Bool)

(assert (=> d!106333 (= (apply!373 (+!1952 lt!377511 (tuple2!10181 lt!377521 minValue!754)) lt!377524) (get!11829 (getValueByKey!415 (toList!4524 (+!1952 lt!377511 (tuple2!10181 lt!377521 minValue!754))) lt!377524)))))

(declare-fun bs!23261 () Bool)

(assert (= bs!23261 d!106333))

(declare-fun m!776215 () Bool)

(assert (=> bs!23261 m!776215))

(assert (=> bs!23261 m!776215))

(declare-fun m!776217 () Bool)

(assert (=> bs!23261 m!776217))

(assert (=> b!831812 d!106333))

(declare-fun d!106335 () Bool)

(assert (=> d!106335 (contains!4212 (+!1952 lt!377512 (tuple2!10181 lt!377507 zeroValueAfter!34)) lt!377513)))

(declare-fun lt!377651 () Unit!28497)

(assert (=> d!106335 (= lt!377651 (choose!1432 lt!377512 lt!377507 zeroValueAfter!34 lt!377513))))

(assert (=> d!106335 (contains!4212 lt!377512 lt!377513)))

(assert (=> d!106335 (= (addStillContains!324 lt!377512 lt!377507 zeroValueAfter!34 lt!377513) lt!377651)))

(declare-fun bs!23262 () Bool)

(assert (= bs!23262 d!106335))

(assert (=> bs!23262 m!775835))

(assert (=> bs!23262 m!775835))

(assert (=> bs!23262 m!775841))

(declare-fun m!776219 () Bool)

(assert (=> bs!23262 m!776219))

(declare-fun m!776221 () Bool)

(assert (=> bs!23262 m!776221))

(assert (=> b!831812 d!106335))

(declare-fun d!106337 () Bool)

(declare-fun e!464024 () Bool)

(assert (=> d!106337 e!464024))

(declare-fun res!566256 () Bool)

(assert (=> d!106337 (=> res!566256 e!464024)))

(declare-fun lt!377655 () Bool)

(assert (=> d!106337 (= res!566256 (not lt!377655))))

(declare-fun lt!377652 () Bool)

(assert (=> d!106337 (= lt!377655 lt!377652)))

(declare-fun lt!377654 () Unit!28497)

(declare-fun e!464025 () Unit!28497)

(assert (=> d!106337 (= lt!377654 e!464025)))

(declare-fun c!90322 () Bool)

(assert (=> d!106337 (= c!90322 lt!377652)))

(assert (=> d!106337 (= lt!377652 (containsKey!401 (toList!4524 (+!1952 lt!377512 (tuple2!10181 lt!377507 zeroValueAfter!34))) lt!377513))))

(assert (=> d!106337 (= (contains!4212 (+!1952 lt!377512 (tuple2!10181 lt!377507 zeroValueAfter!34)) lt!377513) lt!377655)))

(declare-fun b!831994 () Bool)

(declare-fun lt!377653 () Unit!28497)

(assert (=> b!831994 (= e!464025 lt!377653)))

(assert (=> b!831994 (= lt!377653 (lemmaContainsKeyImpliesGetValueByKeyDefined!311 (toList!4524 (+!1952 lt!377512 (tuple2!10181 lt!377507 zeroValueAfter!34))) lt!377513))))

(assert (=> b!831994 (isDefined!312 (getValueByKey!415 (toList!4524 (+!1952 lt!377512 (tuple2!10181 lt!377507 zeroValueAfter!34))) lt!377513))))

(declare-fun b!831995 () Bool)

(declare-fun Unit!28510 () Unit!28497)

(assert (=> b!831995 (= e!464025 Unit!28510)))

(declare-fun b!831996 () Bool)

(assert (=> b!831996 (= e!464024 (isDefined!312 (getValueByKey!415 (toList!4524 (+!1952 lt!377512 (tuple2!10181 lt!377507 zeroValueAfter!34))) lt!377513)))))

(assert (= (and d!106337 c!90322) b!831994))

(assert (= (and d!106337 (not c!90322)) b!831995))

(assert (= (and d!106337 (not res!566256)) b!831996))

(declare-fun m!776223 () Bool)

(assert (=> d!106337 m!776223))

(declare-fun m!776225 () Bool)

(assert (=> b!831994 m!776225))

(declare-fun m!776227 () Bool)

(assert (=> b!831994 m!776227))

(assert (=> b!831994 m!776227))

(declare-fun m!776229 () Bool)

(assert (=> b!831994 m!776229))

(assert (=> b!831996 m!776227))

(assert (=> b!831996 m!776227))

(assert (=> b!831996 m!776229))

(assert (=> b!831812 d!106337))

(assert (=> b!831812 d!106229))

(declare-fun d!106339 () Bool)

(assert (=> d!106339 (= (apply!373 lt!377510 lt!377515) (get!11829 (getValueByKey!415 (toList!4524 lt!377510) lt!377515)))))

(declare-fun bs!23263 () Bool)

(assert (= bs!23263 d!106339))

(declare-fun m!776231 () Bool)

(assert (=> bs!23263 m!776231))

(assert (=> bs!23263 m!776231))

(declare-fun m!776233 () Bool)

(assert (=> bs!23263 m!776233))

(assert (=> b!831812 d!106339))

(declare-fun d!106341 () Bool)

(declare-fun e!464026 () Bool)

(assert (=> d!106341 e!464026))

(declare-fun res!566258 () Bool)

(assert (=> d!106341 (=> (not res!566258) (not e!464026))))

(declare-fun lt!377656 () ListLongMap!9017)

(assert (=> d!106341 (= res!566258 (contains!4212 lt!377656 (_1!5100 (tuple2!10181 lt!377526 zeroValueAfter!34))))))

(declare-fun lt!377658 () List!16008)

(assert (=> d!106341 (= lt!377656 (ListLongMap!9018 lt!377658))))

(declare-fun lt!377659 () Unit!28497)

(declare-fun lt!377657 () Unit!28497)

(assert (=> d!106341 (= lt!377659 lt!377657)))

(assert (=> d!106341 (= (getValueByKey!415 lt!377658 (_1!5100 (tuple2!10181 lt!377526 zeroValueAfter!34))) (Some!420 (_2!5100 (tuple2!10181 lt!377526 zeroValueAfter!34))))))

(assert (=> d!106341 (= lt!377657 (lemmaContainsTupThenGetReturnValue!231 lt!377658 (_1!5100 (tuple2!10181 lt!377526 zeroValueAfter!34)) (_2!5100 (tuple2!10181 lt!377526 zeroValueAfter!34))))))

(assert (=> d!106341 (= lt!377658 (insertStrictlySorted!269 (toList!4524 lt!377510) (_1!5100 (tuple2!10181 lt!377526 zeroValueAfter!34)) (_2!5100 (tuple2!10181 lt!377526 zeroValueAfter!34))))))

(assert (=> d!106341 (= (+!1952 lt!377510 (tuple2!10181 lt!377526 zeroValueAfter!34)) lt!377656)))

(declare-fun b!831997 () Bool)

(declare-fun res!566257 () Bool)

(assert (=> b!831997 (=> (not res!566257) (not e!464026))))

(assert (=> b!831997 (= res!566257 (= (getValueByKey!415 (toList!4524 lt!377656) (_1!5100 (tuple2!10181 lt!377526 zeroValueAfter!34))) (Some!420 (_2!5100 (tuple2!10181 lt!377526 zeroValueAfter!34)))))))

(declare-fun b!831998 () Bool)

(assert (=> b!831998 (= e!464026 (contains!4213 (toList!4524 lt!377656) (tuple2!10181 lt!377526 zeroValueAfter!34)))))

(assert (= (and d!106341 res!566258) b!831997))

(assert (= (and b!831997 res!566257) b!831998))

(declare-fun m!776235 () Bool)

(assert (=> d!106341 m!776235))

(declare-fun m!776237 () Bool)

(assert (=> d!106341 m!776237))

(declare-fun m!776239 () Bool)

(assert (=> d!106341 m!776239))

(declare-fun m!776241 () Bool)

(assert (=> d!106341 m!776241))

(declare-fun m!776243 () Bool)

(assert (=> b!831997 m!776243))

(declare-fun m!776245 () Bool)

(assert (=> b!831998 m!776245))

(assert (=> b!831812 d!106341))

(declare-fun d!106343 () Bool)

(assert (=> d!106343 (= (apply!373 (+!1952 lt!377510 (tuple2!10181 lt!377526 zeroValueAfter!34)) lt!377515) (get!11829 (getValueByKey!415 (toList!4524 (+!1952 lt!377510 (tuple2!10181 lt!377526 zeroValueAfter!34))) lt!377515)))))

(declare-fun bs!23264 () Bool)

(assert (= bs!23264 d!106343))

(declare-fun m!776247 () Bool)

(assert (=> bs!23264 m!776247))

(assert (=> bs!23264 m!776247))

(declare-fun m!776249 () Bool)

(assert (=> bs!23264 m!776249))

(assert (=> b!831812 d!106343))

(declare-fun d!106345 () Bool)

(declare-fun e!464027 () Bool)

(assert (=> d!106345 e!464027))

(declare-fun res!566260 () Bool)

(assert (=> d!106345 (=> (not res!566260) (not e!464027))))

(declare-fun lt!377660 () ListLongMap!9017)

(assert (=> d!106345 (= res!566260 (contains!4212 lt!377660 (_1!5100 (tuple2!10181 lt!377516 minValue!754))))))

(declare-fun lt!377662 () List!16008)

(assert (=> d!106345 (= lt!377660 (ListLongMap!9018 lt!377662))))

(declare-fun lt!377663 () Unit!28497)

(declare-fun lt!377661 () Unit!28497)

(assert (=> d!106345 (= lt!377663 lt!377661)))

(assert (=> d!106345 (= (getValueByKey!415 lt!377662 (_1!5100 (tuple2!10181 lt!377516 minValue!754))) (Some!420 (_2!5100 (tuple2!10181 lt!377516 minValue!754))))))

(assert (=> d!106345 (= lt!377661 (lemmaContainsTupThenGetReturnValue!231 lt!377662 (_1!5100 (tuple2!10181 lt!377516 minValue!754)) (_2!5100 (tuple2!10181 lt!377516 minValue!754))))))

(assert (=> d!106345 (= lt!377662 (insertStrictlySorted!269 (toList!4524 lt!377525) (_1!5100 (tuple2!10181 lt!377516 minValue!754)) (_2!5100 (tuple2!10181 lt!377516 minValue!754))))))

(assert (=> d!106345 (= (+!1952 lt!377525 (tuple2!10181 lt!377516 minValue!754)) lt!377660)))

(declare-fun b!831999 () Bool)

(declare-fun res!566259 () Bool)

(assert (=> b!831999 (=> (not res!566259) (not e!464027))))

(assert (=> b!831999 (= res!566259 (= (getValueByKey!415 (toList!4524 lt!377660) (_1!5100 (tuple2!10181 lt!377516 minValue!754))) (Some!420 (_2!5100 (tuple2!10181 lt!377516 minValue!754)))))))

(declare-fun b!832000 () Bool)

(assert (=> b!832000 (= e!464027 (contains!4213 (toList!4524 lt!377660) (tuple2!10181 lt!377516 minValue!754)))))

(assert (= (and d!106345 res!566260) b!831999))

(assert (= (and b!831999 res!566259) b!832000))

(declare-fun m!776251 () Bool)

(assert (=> d!106345 m!776251))

(declare-fun m!776253 () Bool)

(assert (=> d!106345 m!776253))

(declare-fun m!776255 () Bool)

(assert (=> d!106345 m!776255))

(declare-fun m!776257 () Bool)

(assert (=> d!106345 m!776257))

(declare-fun m!776259 () Bool)

(assert (=> b!831999 m!776259))

(declare-fun m!776261 () Bool)

(assert (=> b!832000 m!776261))

(assert (=> b!831812 d!106345))

(declare-fun d!106347 () Bool)

(assert (=> d!106347 (= (apply!373 lt!377525 lt!377528) (get!11829 (getValueByKey!415 (toList!4524 lt!377525) lt!377528)))))

(declare-fun bs!23265 () Bool)

(assert (= bs!23265 d!106347))

(declare-fun m!776263 () Bool)

(assert (=> bs!23265 m!776263))

(assert (=> bs!23265 m!776263))

(declare-fun m!776265 () Bool)

(assert (=> bs!23265 m!776265))

(assert (=> b!831812 d!106347))

(declare-fun d!106349 () Bool)

(declare-fun e!464028 () Bool)

(assert (=> d!106349 e!464028))

(declare-fun res!566262 () Bool)

(assert (=> d!106349 (=> (not res!566262) (not e!464028))))

(declare-fun lt!377664 () ListLongMap!9017)

(assert (=> d!106349 (= res!566262 (contains!4212 lt!377664 (_1!5100 (tuple2!10181 lt!377507 zeroValueAfter!34))))))

(declare-fun lt!377666 () List!16008)

(assert (=> d!106349 (= lt!377664 (ListLongMap!9018 lt!377666))))

(declare-fun lt!377667 () Unit!28497)

(declare-fun lt!377665 () Unit!28497)

(assert (=> d!106349 (= lt!377667 lt!377665)))

(assert (=> d!106349 (= (getValueByKey!415 lt!377666 (_1!5100 (tuple2!10181 lt!377507 zeroValueAfter!34))) (Some!420 (_2!5100 (tuple2!10181 lt!377507 zeroValueAfter!34))))))

(assert (=> d!106349 (= lt!377665 (lemmaContainsTupThenGetReturnValue!231 lt!377666 (_1!5100 (tuple2!10181 lt!377507 zeroValueAfter!34)) (_2!5100 (tuple2!10181 lt!377507 zeroValueAfter!34))))))

(assert (=> d!106349 (= lt!377666 (insertStrictlySorted!269 (toList!4524 lt!377512) (_1!5100 (tuple2!10181 lt!377507 zeroValueAfter!34)) (_2!5100 (tuple2!10181 lt!377507 zeroValueAfter!34))))))

(assert (=> d!106349 (= (+!1952 lt!377512 (tuple2!10181 lt!377507 zeroValueAfter!34)) lt!377664)))

(declare-fun b!832001 () Bool)

(declare-fun res!566261 () Bool)

(assert (=> b!832001 (=> (not res!566261) (not e!464028))))

(assert (=> b!832001 (= res!566261 (= (getValueByKey!415 (toList!4524 lt!377664) (_1!5100 (tuple2!10181 lt!377507 zeroValueAfter!34))) (Some!420 (_2!5100 (tuple2!10181 lt!377507 zeroValueAfter!34)))))))

(declare-fun b!832002 () Bool)

(assert (=> b!832002 (= e!464028 (contains!4213 (toList!4524 lt!377664) (tuple2!10181 lt!377507 zeroValueAfter!34)))))

(assert (= (and d!106349 res!566262) b!832001))

(assert (= (and b!832001 res!566261) b!832002))

(declare-fun m!776267 () Bool)

(assert (=> d!106349 m!776267))

(declare-fun m!776269 () Bool)

(assert (=> d!106349 m!776269))

(declare-fun m!776271 () Bool)

(assert (=> d!106349 m!776271))

(declare-fun m!776273 () Bool)

(assert (=> d!106349 m!776273))

(declare-fun m!776275 () Bool)

(assert (=> b!832001 m!776275))

(declare-fun m!776277 () Bool)

(assert (=> b!832002 m!776277))

(assert (=> b!831812 d!106349))

(declare-fun d!106351 () Bool)

(assert (=> d!106351 (= (apply!373 (+!1952 lt!377511 (tuple2!10181 lt!377521 minValue!754)) lt!377524) (apply!373 lt!377511 lt!377524))))

(declare-fun lt!377668 () Unit!28497)

(assert (=> d!106351 (= lt!377668 (choose!1431 lt!377511 lt!377521 minValue!754 lt!377524))))

(declare-fun e!464029 () Bool)

(assert (=> d!106351 e!464029))

(declare-fun res!566263 () Bool)

(assert (=> d!106351 (=> (not res!566263) (not e!464029))))

(assert (=> d!106351 (= res!566263 (contains!4212 lt!377511 lt!377524))))

(assert (=> d!106351 (= (addApplyDifferent!324 lt!377511 lt!377521 minValue!754 lt!377524) lt!377668)))

(declare-fun b!832003 () Bool)

(assert (=> b!832003 (= e!464029 (not (= lt!377524 lt!377521)))))

(assert (= (and d!106351 res!566263) b!832003))

(declare-fun m!776279 () Bool)

(assert (=> d!106351 m!776279))

(assert (=> d!106351 m!775829))

(assert (=> d!106351 m!775825))

(assert (=> d!106351 m!775831))

(assert (=> d!106351 m!775825))

(declare-fun m!776281 () Bool)

(assert (=> d!106351 m!776281))

(assert (=> b!831812 d!106351))

(declare-fun d!106353 () Bool)

(assert (=> d!106353 (= (apply!373 (+!1952 lt!377525 (tuple2!10181 lt!377516 minValue!754)) lt!377528) (apply!373 lt!377525 lt!377528))))

(declare-fun lt!377669 () Unit!28497)

(assert (=> d!106353 (= lt!377669 (choose!1431 lt!377525 lt!377516 minValue!754 lt!377528))))

(declare-fun e!464030 () Bool)

(assert (=> d!106353 e!464030))

(declare-fun res!566264 () Bool)

(assert (=> d!106353 (=> (not res!566264) (not e!464030))))

(assert (=> d!106353 (= res!566264 (contains!4212 lt!377525 lt!377528))))

(assert (=> d!106353 (= (addApplyDifferent!324 lt!377525 lt!377516 minValue!754 lt!377528) lt!377669)))

(declare-fun b!832004 () Bool)

(assert (=> b!832004 (= e!464030 (not (= lt!377528 lt!377516)))))

(assert (= (and d!106353 res!566264) b!832004))

(declare-fun m!776283 () Bool)

(assert (=> d!106353 m!776283))

(assert (=> d!106353 m!775839))

(assert (=> d!106353 m!775837))

(assert (=> d!106353 m!775847))

(assert (=> d!106353 m!775837))

(declare-fun m!776285 () Bool)

(assert (=> d!106353 m!776285))

(assert (=> b!831812 d!106353))

(declare-fun d!106355 () Bool)

(declare-fun lt!377670 () Bool)

(assert (=> d!106355 (= lt!377670 (select (content!390 (toList!4524 lt!377459)) lt!377372))))

(declare-fun e!464031 () Bool)

(assert (=> d!106355 (= lt!377670 e!464031)))

(declare-fun res!566265 () Bool)

(assert (=> d!106355 (=> (not res!566265) (not e!464031))))

(assert (=> d!106355 (= res!566265 ((_ is Cons!16004) (toList!4524 lt!377459)))))

(assert (=> d!106355 (= (contains!4213 (toList!4524 lt!377459) lt!377372) lt!377670)))

(declare-fun b!832005 () Bool)

(declare-fun e!464032 () Bool)

(assert (=> b!832005 (= e!464031 e!464032)))

(declare-fun res!566266 () Bool)

(assert (=> b!832005 (=> res!566266 e!464032)))

(assert (=> b!832005 (= res!566266 (= (h!17134 (toList!4524 lt!377459)) lt!377372))))

(declare-fun b!832006 () Bool)

(assert (=> b!832006 (= e!464032 (contains!4213 (t!22384 (toList!4524 lt!377459)) lt!377372))))

(assert (= (and d!106355 res!566265) b!832005))

(assert (= (and b!832005 (not res!566266)) b!832006))

(declare-fun m!776287 () Bool)

(assert (=> d!106355 m!776287))

(declare-fun m!776289 () Bool)

(assert (=> d!106355 m!776289))

(declare-fun m!776291 () Bool)

(assert (=> b!832006 m!776291))

(assert (=> b!831766 d!106355))

(declare-fun d!106357 () Bool)

(declare-fun e!464033 () Bool)

(assert (=> d!106357 e!464033))

(declare-fun res!566267 () Bool)

(assert (=> d!106357 (=> res!566267 e!464033)))

(declare-fun lt!377674 () Bool)

(assert (=> d!106357 (= res!566267 (not lt!377674))))

(declare-fun lt!377671 () Bool)

(assert (=> d!106357 (= lt!377674 lt!377671)))

(declare-fun lt!377673 () Unit!28497)

(declare-fun e!464034 () Unit!28497)

(assert (=> d!106357 (= lt!377673 e!464034)))

(declare-fun c!90323 () Bool)

(assert (=> d!106357 (= c!90323 lt!377671)))

(assert (=> d!106357 (= lt!377671 (containsKey!401 (toList!4524 lt!377508) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!106357 (= (contains!4212 lt!377508 #b1000000000000000000000000000000000000000000000000000000000000000) lt!377674)))

(declare-fun b!832007 () Bool)

(declare-fun lt!377672 () Unit!28497)

(assert (=> b!832007 (= e!464034 lt!377672)))

(assert (=> b!832007 (= lt!377672 (lemmaContainsKeyImpliesGetValueByKeyDefined!311 (toList!4524 lt!377508) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!832007 (isDefined!312 (getValueByKey!415 (toList!4524 lt!377508) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!832008 () Bool)

(declare-fun Unit!28511 () Unit!28497)

(assert (=> b!832008 (= e!464034 Unit!28511)))

(declare-fun b!832009 () Bool)

(assert (=> b!832009 (= e!464033 (isDefined!312 (getValueByKey!415 (toList!4524 lt!377508) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!106357 c!90323) b!832007))

(assert (= (and d!106357 (not c!90323)) b!832008))

(assert (= (and d!106357 (not res!566267)) b!832009))

(declare-fun m!776293 () Bool)

(assert (=> d!106357 m!776293))

(declare-fun m!776295 () Bool)

(assert (=> b!832007 m!776295))

(declare-fun m!776297 () Bool)

(assert (=> b!832007 m!776297))

(assert (=> b!832007 m!776297))

(declare-fun m!776299 () Bool)

(assert (=> b!832007 m!776299))

(assert (=> b!832009 m!776297))

(assert (=> b!832009 m!776297))

(assert (=> b!832009 m!776299))

(assert (=> bm!36386 d!106357))

(declare-fun b!832010 () Bool)

(declare-fun e!464035 () ListLongMap!9017)

(declare-fun e!464037 () ListLongMap!9017)

(assert (=> b!832010 (= e!464035 e!464037)))

(declare-fun c!90326 () Bool)

(assert (=> b!832010 (= c!90326 (validKeyInArray!0 (select (arr!22317 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!832011 () Bool)

(declare-fun e!464036 () Bool)

(declare-fun e!464039 () Bool)

(assert (=> b!832011 (= e!464036 e!464039)))

(declare-fun c!90324 () Bool)

(declare-fun e!464040 () Bool)

(assert (=> b!832011 (= c!90324 e!464040)))

(declare-fun res!566269 () Bool)

(assert (=> b!832011 (=> (not res!566269) (not e!464040))))

(assert (=> b!832011 (= res!566269 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!22738 _keys!976)))))

(declare-fun b!832012 () Bool)

(declare-fun lt!377675 () Unit!28497)

(declare-fun lt!377678 () Unit!28497)

(assert (=> b!832012 (= lt!377675 lt!377678)))

(declare-fun lt!377676 () (_ BitVec 64))

(declare-fun lt!377679 () ListLongMap!9017)

(declare-fun lt!377677 () (_ BitVec 64))

(declare-fun lt!377681 () V!25285)

(assert (=> b!832012 (not (contains!4212 (+!1952 lt!377679 (tuple2!10181 lt!377676 lt!377681)) lt!377677))))

(assert (=> b!832012 (= lt!377678 (addStillNotContains!200 lt!377679 lt!377676 lt!377681 lt!377677))))

(assert (=> b!832012 (= lt!377677 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!832012 (= lt!377681 (get!11828 (select (arr!22318 _values!788) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (dynLambda!983 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!832012 (= lt!377676 (select (arr!22317 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun call!36407 () ListLongMap!9017)

(assert (=> b!832012 (= lt!377679 call!36407)))

(assert (=> b!832012 (= e!464037 (+!1952 call!36407 (tuple2!10181 (select (arr!22317 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (get!11828 (select (arr!22318 _values!788) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (dynLambda!983 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!832013 () Bool)

(declare-fun e!464041 () Bool)

(assert (=> b!832013 (= e!464039 e!464041)))

(assert (=> b!832013 (and (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!22738 _keys!976)))))

(declare-fun res!566268 () Bool)

(declare-fun lt!377680 () ListLongMap!9017)

(assert (=> b!832013 (= res!566268 (contains!4212 lt!377680 (select (arr!22317 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!832013 (=> (not res!566268) (not e!464041))))

(declare-fun b!832014 () Bool)

(assert (=> b!832014 (= e!464037 call!36407)))

(declare-fun b!832015 () Bool)

(assert (=> b!832015 (and (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!22738 _keys!976)))))

(assert (=> b!832015 (and (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!22739 _values!788)))))

(assert (=> b!832015 (= e!464041 (= (apply!373 lt!377680 (select (arr!22317 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))) (get!11828 (select (arr!22318 _values!788) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (dynLambda!983 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!832016 () Bool)

(declare-fun e!464038 () Bool)

(assert (=> b!832016 (= e!464039 e!464038)))

(declare-fun c!90325 () Bool)

(assert (=> b!832016 (= c!90325 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!22738 _keys!976)))))

(declare-fun b!832017 () Bool)

(assert (=> b!832017 (= e!464038 (= lt!377680 (getCurrentListMapNoExtraKeys!2523 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) defaultEntry!796)))))

(declare-fun bm!36404 () Bool)

(assert (=> bm!36404 (= call!36407 (getCurrentListMapNoExtraKeys!2523 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) defaultEntry!796))))

(declare-fun b!832019 () Bool)

(assert (=> b!832019 (= e!464038 (isEmpty!662 lt!377680))))

(declare-fun b!832020 () Bool)

(declare-fun res!566270 () Bool)

(assert (=> b!832020 (=> (not res!566270) (not e!464036))))

(assert (=> b!832020 (= res!566270 (not (contains!4212 lt!377680 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!832021 () Bool)

(assert (=> b!832021 (= e!464040 (validKeyInArray!0 (select (arr!22317 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!832021 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))

(declare-fun d!106359 () Bool)

(assert (=> d!106359 e!464036))

(declare-fun res!566271 () Bool)

(assert (=> d!106359 (=> (not res!566271) (not e!464036))))

(assert (=> d!106359 (= res!566271 (not (contains!4212 lt!377680 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!106359 (= lt!377680 e!464035)))

(declare-fun c!90327 () Bool)

(assert (=> d!106359 (= c!90327 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!22738 _keys!976)))))

(assert (=> d!106359 (validMask!0 mask!1312)))

(assert (=> d!106359 (= (getCurrentListMapNoExtraKeys!2523 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!796) lt!377680)))

(declare-fun b!832018 () Bool)

(assert (=> b!832018 (= e!464035 (ListLongMap!9018 Nil!16005))))

(assert (= (and d!106359 c!90327) b!832018))

(assert (= (and d!106359 (not c!90327)) b!832010))

(assert (= (and b!832010 c!90326) b!832012))

(assert (= (and b!832010 (not c!90326)) b!832014))

(assert (= (or b!832012 b!832014) bm!36404))

(assert (= (and d!106359 res!566271) b!832020))

(assert (= (and b!832020 res!566270) b!832011))

(assert (= (and b!832011 res!566269) b!832021))

(assert (= (and b!832011 c!90324) b!832013))

(assert (= (and b!832011 (not c!90324)) b!832016))

(assert (= (and b!832013 res!566268) b!832015))

(assert (= (and b!832016 c!90325) b!832017))

(assert (= (and b!832016 (not c!90325)) b!832019))

(declare-fun b_lambda!11461 () Bool)

(assert (=> (not b_lambda!11461) (not b!832012)))

(assert (=> b!832012 t!22389))

(declare-fun b_and!22599 () Bool)

(assert (= b_and!22597 (and (=> t!22389 result!8029) b_and!22599)))

(declare-fun b_lambda!11463 () Bool)

(assert (=> (not b_lambda!11463) (not b!832015)))

(assert (=> b!832015 t!22389))

(declare-fun b_and!22601 () Bool)

(assert (= b_and!22599 (and (=> t!22389 result!8029) b_and!22601)))

(declare-fun m!776301 () Bool)

(assert (=> bm!36404 m!776301))

(assert (=> b!832013 m!776139))

(assert (=> b!832013 m!776139))

(declare-fun m!776303 () Bool)

(assert (=> b!832013 m!776303))

(declare-fun m!776305 () Bool)

(assert (=> b!832012 m!776305))

(assert (=> b!832012 m!776145))

(assert (=> b!832012 m!775747))

(assert (=> b!832012 m!776147))

(assert (=> b!832012 m!776305))

(declare-fun m!776307 () Bool)

(assert (=> b!832012 m!776307))

(assert (=> b!832012 m!776139))

(declare-fun m!776309 () Bool)

(assert (=> b!832012 m!776309))

(declare-fun m!776311 () Bool)

(assert (=> b!832012 m!776311))

(assert (=> b!832012 m!776145))

(assert (=> b!832012 m!775747))

(declare-fun m!776313 () Bool)

(assert (=> d!106359 m!776313))

(assert (=> d!106359 m!775625))

(assert (=> b!832017 m!776301))

(declare-fun m!776315 () Bool)

(assert (=> b!832019 m!776315))

(assert (=> b!832021 m!776139))

(assert (=> b!832021 m!776139))

(assert (=> b!832021 m!776159))

(declare-fun m!776317 () Bool)

(assert (=> b!832020 m!776317))

(assert (=> b!832010 m!776139))

(assert (=> b!832010 m!776139))

(assert (=> b!832010 m!776159))

(assert (=> b!832015 m!776145))

(assert (=> b!832015 m!775747))

(assert (=> b!832015 m!776147))

(assert (=> b!832015 m!776139))

(assert (=> b!832015 m!776139))

(declare-fun m!776319 () Bool)

(assert (=> b!832015 m!776319))

(assert (=> b!832015 m!776145))

(assert (=> b!832015 m!775747))

(assert (=> b!831756 d!106359))

(declare-fun d!106361 () Bool)

(declare-fun lt!377682 () Bool)

(assert (=> d!106361 (= lt!377682 (select (content!390 (toList!4524 lt!377537)) lt!377371))))

(declare-fun e!464042 () Bool)

(assert (=> d!106361 (= lt!377682 e!464042)))

(declare-fun res!566272 () Bool)

(assert (=> d!106361 (=> (not res!566272) (not e!464042))))

(assert (=> d!106361 (= res!566272 ((_ is Cons!16004) (toList!4524 lt!377537)))))

(assert (=> d!106361 (= (contains!4213 (toList!4524 lt!377537) lt!377371) lt!377682)))

(declare-fun b!832022 () Bool)

(declare-fun e!464043 () Bool)

(assert (=> b!832022 (= e!464042 e!464043)))

(declare-fun res!566273 () Bool)

(assert (=> b!832022 (=> res!566273 e!464043)))

(assert (=> b!832022 (= res!566273 (= (h!17134 (toList!4524 lt!377537)) lt!377371))))

(declare-fun b!832023 () Bool)

(assert (=> b!832023 (= e!464043 (contains!4213 (t!22384 (toList!4524 lt!377537)) lt!377371))))

(assert (= (and d!106361 res!566272) b!832022))

(assert (= (and b!832022 (not res!566273)) b!832023))

(declare-fun m!776321 () Bool)

(assert (=> d!106361 m!776321))

(declare-fun m!776323 () Bool)

(assert (=> d!106361 m!776323))

(declare-fun m!776325 () Bool)

(assert (=> b!832023 m!776325))

(assert (=> b!831835 d!106361))

(declare-fun d!106363 () Bool)

(assert (=> d!106363 (= (apply!373 lt!377442 (select (arr!22317 _keys!976) #b00000000000000000000000000000000)) (get!11829 (getValueByKey!415 (toList!4524 lt!377442) (select (arr!22317 _keys!976) #b00000000000000000000000000000000))))))

(declare-fun bs!23266 () Bool)

(assert (= bs!23266 d!106363))

(assert (=> bs!23266 m!775697))

(assert (=> bs!23266 m!776079))

(assert (=> bs!23266 m!776079))

(declare-fun m!776327 () Bool)

(assert (=> bs!23266 m!776327))

(assert (=> b!831740 d!106363))

(assert (=> b!831740 d!106323))

(declare-fun d!106365 () Bool)

(assert (=> d!106365 (= (apply!373 lt!377542 #b1000000000000000000000000000000000000000000000000000000000000000) (get!11829 (getValueByKey!415 (toList!4524 lt!377542) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!23267 () Bool)

(assert (= bs!23267 d!106365))

(assert (=> bs!23267 m!776127))

(assert (=> bs!23267 m!776127))

(declare-fun m!776329 () Bool)

(assert (=> bs!23267 m!776329))

(assert (=> b!831850 d!106365))

(declare-fun d!106367 () Bool)

(declare-fun e!464044 () Bool)

(assert (=> d!106367 e!464044))

(declare-fun res!566274 () Bool)

(assert (=> d!106367 (=> res!566274 e!464044)))

(declare-fun lt!377686 () Bool)

(assert (=> d!106367 (= res!566274 (not lt!377686))))

(declare-fun lt!377683 () Bool)

(assert (=> d!106367 (= lt!377686 lt!377683)))

(declare-fun lt!377685 () Unit!28497)

(declare-fun e!464045 () Unit!28497)

(assert (=> d!106367 (= lt!377685 e!464045)))

(declare-fun c!90328 () Bool)

(assert (=> d!106367 (= c!90328 lt!377683)))

(assert (=> d!106367 (= lt!377683 (containsKey!401 (toList!4524 lt!377508) (select (arr!22317 _keys!976) #b00000000000000000000000000000000)))))

(assert (=> d!106367 (= (contains!4212 lt!377508 (select (arr!22317 _keys!976) #b00000000000000000000000000000000)) lt!377686)))

(declare-fun b!832024 () Bool)

(declare-fun lt!377684 () Unit!28497)

(assert (=> b!832024 (= e!464045 lt!377684)))

(assert (=> b!832024 (= lt!377684 (lemmaContainsKeyImpliesGetValueByKeyDefined!311 (toList!4524 lt!377508) (select (arr!22317 _keys!976) #b00000000000000000000000000000000)))))

(assert (=> b!832024 (isDefined!312 (getValueByKey!415 (toList!4524 lt!377508) (select (arr!22317 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun b!832025 () Bool)

(declare-fun Unit!28512 () Unit!28497)

(assert (=> b!832025 (= e!464045 Unit!28512)))

(declare-fun b!832026 () Bool)

(assert (=> b!832026 (= e!464044 (isDefined!312 (getValueByKey!415 (toList!4524 lt!377508) (select (arr!22317 _keys!976) #b00000000000000000000000000000000))))))

(assert (= (and d!106367 c!90328) b!832024))

(assert (= (and d!106367 (not c!90328)) b!832025))

(assert (= (and d!106367 (not res!566274)) b!832026))

(assert (=> d!106367 m!775697))

(declare-fun m!776331 () Bool)

(assert (=> d!106367 m!776331))

(assert (=> b!832024 m!775697))

(declare-fun m!776333 () Bool)

(assert (=> b!832024 m!776333))

(assert (=> b!832024 m!775697))

(declare-fun m!776335 () Bool)

(assert (=> b!832024 m!776335))

(assert (=> b!832024 m!776335))

(declare-fun m!776337 () Bool)

(assert (=> b!832024 m!776337))

(assert (=> b!832026 m!775697))

(assert (=> b!832026 m!776335))

(assert (=> b!832026 m!776335))

(assert (=> b!832026 m!776337))

(assert (=> b!831820 d!106367))

(declare-fun d!106369 () Bool)

(declare-fun e!464046 () Bool)

(assert (=> d!106369 e!464046))

(declare-fun res!566275 () Bool)

(assert (=> d!106369 (=> res!566275 e!464046)))

(declare-fun lt!377690 () Bool)

(assert (=> d!106369 (= res!566275 (not lt!377690))))

(declare-fun lt!377687 () Bool)

(assert (=> d!106369 (= lt!377690 lt!377687)))

(declare-fun lt!377689 () Unit!28497)

(declare-fun e!464047 () Unit!28497)

(assert (=> d!106369 (= lt!377689 e!464047)))

(declare-fun c!90329 () Bool)

(assert (=> d!106369 (= c!90329 lt!377687)))

(assert (=> d!106369 (= lt!377687 (containsKey!401 (toList!4524 lt!377451) (_1!5100 lt!377372)))))

(assert (=> d!106369 (= (contains!4212 lt!377451 (_1!5100 lt!377372)) lt!377690)))

(declare-fun b!832027 () Bool)

(declare-fun lt!377688 () Unit!28497)

(assert (=> b!832027 (= e!464047 lt!377688)))

(assert (=> b!832027 (= lt!377688 (lemmaContainsKeyImpliesGetValueByKeyDefined!311 (toList!4524 lt!377451) (_1!5100 lt!377372)))))

(assert (=> b!832027 (isDefined!312 (getValueByKey!415 (toList!4524 lt!377451) (_1!5100 lt!377372)))))

(declare-fun b!832028 () Bool)

(declare-fun Unit!28513 () Unit!28497)

(assert (=> b!832028 (= e!464047 Unit!28513)))

(declare-fun b!832029 () Bool)

(assert (=> b!832029 (= e!464046 (isDefined!312 (getValueByKey!415 (toList!4524 lt!377451) (_1!5100 lt!377372))))))

(assert (= (and d!106369 c!90329) b!832027))

(assert (= (and d!106369 (not c!90329)) b!832028))

(assert (= (and d!106369 (not res!566275)) b!832029))

(declare-fun m!776339 () Bool)

(assert (=> d!106369 m!776339))

(declare-fun m!776341 () Bool)

(assert (=> b!832027 m!776341))

(assert (=> b!832027 m!775793))

(assert (=> b!832027 m!775793))

(declare-fun m!776343 () Bool)

(assert (=> b!832027 m!776343))

(assert (=> b!832029 m!775793))

(assert (=> b!832029 m!775793))

(assert (=> b!832029 m!776343))

(assert (=> d!106239 d!106369))

(declare-fun d!106371 () Bool)

(declare-fun c!90330 () Bool)

(assert (=> d!106371 (= c!90330 (and ((_ is Cons!16004) lt!377453) (= (_1!5100 (h!17134 lt!377453)) (_1!5100 lt!377372))))))

(declare-fun e!464048 () Option!421)

(assert (=> d!106371 (= (getValueByKey!415 lt!377453 (_1!5100 lt!377372)) e!464048)))

(declare-fun b!832030 () Bool)

(assert (=> b!832030 (= e!464048 (Some!420 (_2!5100 (h!17134 lt!377453))))))

(declare-fun b!832033 () Bool)

(declare-fun e!464049 () Option!421)

(assert (=> b!832033 (= e!464049 None!419)))

(declare-fun b!832031 () Bool)

(assert (=> b!832031 (= e!464048 e!464049)))

(declare-fun c!90331 () Bool)

(assert (=> b!832031 (= c!90331 (and ((_ is Cons!16004) lt!377453) (not (= (_1!5100 (h!17134 lt!377453)) (_1!5100 lt!377372)))))))

(declare-fun b!832032 () Bool)

(assert (=> b!832032 (= e!464049 (getValueByKey!415 (t!22384 lt!377453) (_1!5100 lt!377372)))))

(assert (= (and d!106371 c!90330) b!832030))

(assert (= (and d!106371 (not c!90330)) b!832031))

(assert (= (and b!832031 c!90331) b!832032))

(assert (= (and b!832031 (not c!90331)) b!832033))

(declare-fun m!776345 () Bool)

(assert (=> b!832032 m!776345))

(assert (=> d!106239 d!106371))

(declare-fun d!106373 () Bool)

(assert (=> d!106373 (= (getValueByKey!415 lt!377453 (_1!5100 lt!377372)) (Some!420 (_2!5100 lt!377372)))))

(declare-fun lt!377691 () Unit!28497)

(assert (=> d!106373 (= lt!377691 (choose!1433 lt!377453 (_1!5100 lt!377372) (_2!5100 lt!377372)))))

(declare-fun e!464050 () Bool)

(assert (=> d!106373 e!464050))

(declare-fun res!566276 () Bool)

(assert (=> d!106373 (=> (not res!566276) (not e!464050))))

(assert (=> d!106373 (= res!566276 (isStrictlySorted!438 lt!377453))))

(assert (=> d!106373 (= (lemmaContainsTupThenGetReturnValue!231 lt!377453 (_1!5100 lt!377372) (_2!5100 lt!377372)) lt!377691)))

(declare-fun b!832034 () Bool)

(declare-fun res!566277 () Bool)

(assert (=> b!832034 (=> (not res!566277) (not e!464050))))

(assert (=> b!832034 (= res!566277 (containsKey!401 lt!377453 (_1!5100 lt!377372)))))

(declare-fun b!832035 () Bool)

(assert (=> b!832035 (= e!464050 (contains!4213 lt!377453 (tuple2!10181 (_1!5100 lt!377372) (_2!5100 lt!377372))))))

(assert (= (and d!106373 res!566276) b!832034))

(assert (= (and b!832034 res!566277) b!832035))

(assert (=> d!106373 m!775787))

(declare-fun m!776347 () Bool)

(assert (=> d!106373 m!776347))

(declare-fun m!776349 () Bool)

(assert (=> d!106373 m!776349))

(declare-fun m!776351 () Bool)

(assert (=> b!832034 m!776351))

(declare-fun m!776353 () Bool)

(assert (=> b!832035 m!776353))

(assert (=> d!106239 d!106373))

(declare-fun b!832036 () Bool)

(declare-fun e!464055 () List!16008)

(declare-fun call!36409 () List!16008)

(assert (=> b!832036 (= e!464055 call!36409)))

(declare-fun b!832037 () Bool)

(declare-fun res!566278 () Bool)

(declare-fun e!464052 () Bool)

(assert (=> b!832037 (=> (not res!566278) (not e!464052))))

(declare-fun lt!377692 () List!16008)

(assert (=> b!832037 (= res!566278 (containsKey!401 lt!377692 (_1!5100 lt!377372)))))

(declare-fun c!90335 () Bool)

(declare-fun b!832038 () Bool)

(declare-fun e!464054 () List!16008)

(declare-fun c!90333 () Bool)

(assert (=> b!832038 (= e!464054 (ite c!90333 (t!22384 (toList!4524 (+!1952 lt!377369 lt!377371))) (ite c!90335 (Cons!16004 (h!17134 (toList!4524 (+!1952 lt!377369 lt!377371))) (t!22384 (toList!4524 (+!1952 lt!377369 lt!377371)))) Nil!16005)))))

(declare-fun b!832039 () Bool)

(declare-fun e!464051 () List!16008)

(assert (=> b!832039 (= e!464051 e!464055)))

(assert (=> b!832039 (= c!90333 (and ((_ is Cons!16004) (toList!4524 (+!1952 lt!377369 lt!377371))) (= (_1!5100 (h!17134 (toList!4524 (+!1952 lt!377369 lt!377371)))) (_1!5100 lt!377372))))))

(declare-fun b!832040 () Bool)

(assert (=> b!832040 (= e!464054 (insertStrictlySorted!269 (t!22384 (toList!4524 (+!1952 lt!377369 lt!377371))) (_1!5100 lt!377372) (_2!5100 lt!377372)))))

(declare-fun bm!36405 () Bool)

(declare-fun call!36410 () List!16008)

(assert (=> bm!36405 (= call!36409 call!36410)))

(declare-fun b!832041 () Bool)

(assert (=> b!832041 (= e!464052 (contains!4213 lt!377692 (tuple2!10181 (_1!5100 lt!377372) (_2!5100 lt!377372))))))

(declare-fun b!832042 () Bool)

(declare-fun e!464053 () List!16008)

(declare-fun call!36408 () List!16008)

(assert (=> b!832042 (= e!464053 call!36408)))

(declare-fun b!832043 () Bool)

(assert (=> b!832043 (= c!90335 (and ((_ is Cons!16004) (toList!4524 (+!1952 lt!377369 lt!377371))) (bvsgt (_1!5100 (h!17134 (toList!4524 (+!1952 lt!377369 lt!377371)))) (_1!5100 lt!377372))))))

(assert (=> b!832043 (= e!464055 e!464053)))

(declare-fun d!106375 () Bool)

(assert (=> d!106375 e!464052))

(declare-fun res!566279 () Bool)

(assert (=> d!106375 (=> (not res!566279) (not e!464052))))

(assert (=> d!106375 (= res!566279 (isStrictlySorted!438 lt!377692))))

(assert (=> d!106375 (= lt!377692 e!464051)))

(declare-fun c!90334 () Bool)

(assert (=> d!106375 (= c!90334 (and ((_ is Cons!16004) (toList!4524 (+!1952 lt!377369 lt!377371))) (bvslt (_1!5100 (h!17134 (toList!4524 (+!1952 lt!377369 lt!377371)))) (_1!5100 lt!377372))))))

(assert (=> d!106375 (isStrictlySorted!438 (toList!4524 (+!1952 lt!377369 lt!377371)))))

(assert (=> d!106375 (= (insertStrictlySorted!269 (toList!4524 (+!1952 lt!377369 lt!377371)) (_1!5100 lt!377372) (_2!5100 lt!377372)) lt!377692)))

(declare-fun b!832044 () Bool)

(assert (=> b!832044 (= e!464053 call!36408)))

(declare-fun bm!36406 () Bool)

(assert (=> bm!36406 (= call!36410 ($colon$colon!536 e!464054 (ite c!90334 (h!17134 (toList!4524 (+!1952 lt!377369 lt!377371))) (tuple2!10181 (_1!5100 lt!377372) (_2!5100 lt!377372)))))))

(declare-fun c!90332 () Bool)

(assert (=> bm!36406 (= c!90332 c!90334)))

(declare-fun bm!36407 () Bool)

(assert (=> bm!36407 (= call!36408 call!36409)))

(declare-fun b!832045 () Bool)

(assert (=> b!832045 (= e!464051 call!36410)))

(assert (= (and d!106375 c!90334) b!832045))

(assert (= (and d!106375 (not c!90334)) b!832039))

(assert (= (and b!832039 c!90333) b!832036))

(assert (= (and b!832039 (not c!90333)) b!832043))

(assert (= (and b!832043 c!90335) b!832042))

(assert (= (and b!832043 (not c!90335)) b!832044))

(assert (= (or b!832042 b!832044) bm!36407))

(assert (= (or b!832036 bm!36407) bm!36405))

(assert (= (or b!832045 bm!36405) bm!36406))

(assert (= (and bm!36406 c!90332) b!832040))

(assert (= (and bm!36406 (not c!90332)) b!832038))

(assert (= (and d!106375 res!566279) b!832037))

(assert (= (and b!832037 res!566278) b!832041))

(declare-fun m!776355 () Bool)

(assert (=> b!832037 m!776355))

(declare-fun m!776357 () Bool)

(assert (=> b!832040 m!776357))

(declare-fun m!776359 () Bool)

(assert (=> d!106375 m!776359))

(declare-fun m!776361 () Bool)

(assert (=> d!106375 m!776361))

(declare-fun m!776363 () Bool)

(assert (=> b!832041 m!776363))

(declare-fun m!776365 () Bool)

(assert (=> bm!36406 m!776365))

(assert (=> d!106239 d!106375))

(declare-fun d!106377 () Bool)

(declare-fun e!464056 () Bool)

(assert (=> d!106377 e!464056))

(declare-fun res!566280 () Bool)

(assert (=> d!106377 (=> res!566280 e!464056)))

(declare-fun lt!377696 () Bool)

(assert (=> d!106377 (= res!566280 (not lt!377696))))

(declare-fun lt!377693 () Bool)

(assert (=> d!106377 (= lt!377696 lt!377693)))

(declare-fun lt!377695 () Unit!28497)

(declare-fun e!464057 () Unit!28497)

(assert (=> d!106377 (= lt!377695 e!464057)))

(declare-fun c!90336 () Bool)

(assert (=> d!106377 (= c!90336 lt!377693)))

(assert (=> d!106377 (= lt!377693 (containsKey!401 (toList!4524 lt!377449) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!106377 (= (contains!4212 lt!377449 #b1000000000000000000000000000000000000000000000000000000000000000) lt!377696)))

(declare-fun b!832046 () Bool)

(declare-fun lt!377694 () Unit!28497)

(assert (=> b!832046 (= e!464057 lt!377694)))

(assert (=> b!832046 (= lt!377694 (lemmaContainsKeyImpliesGetValueByKeyDefined!311 (toList!4524 lt!377449) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!832046 (isDefined!312 (getValueByKey!415 (toList!4524 lt!377449) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!832047 () Bool)

(declare-fun Unit!28514 () Unit!28497)

(assert (=> b!832047 (= e!464057 Unit!28514)))

(declare-fun b!832048 () Bool)

(assert (=> b!832048 (= e!464056 (isDefined!312 (getValueByKey!415 (toList!4524 lt!377449) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!106377 c!90336) b!832046))

(assert (= (and d!106377 (not c!90336)) b!832047))

(assert (= (and d!106377 (not res!566280)) b!832048))

(declare-fun m!776367 () Bool)

(assert (=> d!106377 m!776367))

(declare-fun m!776369 () Bool)

(assert (=> b!832046 m!776369))

(declare-fun m!776371 () Bool)

(assert (=> b!832046 m!776371))

(assert (=> b!832046 m!776371))

(declare-fun m!776373 () Bool)

(assert (=> b!832046 m!776373))

(assert (=> b!832048 m!776371))

(assert (=> b!832048 m!776371))

(assert (=> b!832048 m!776373))

(assert (=> b!831759 d!106377))

(assert (=> bm!36382 d!106229))

(declare-fun b!832049 () Bool)

(declare-fun e!464058 () Bool)

(assert (=> b!832049 (= e!464058 (contains!4211 (ite c!90242 (Cons!16005 (select (arr!22317 _keys!976) #b00000000000000000000000000000000) Nil!16006) Nil!16006) (select (arr!22317 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!832050 () Bool)

(declare-fun e!464061 () Bool)

(declare-fun e!464059 () Bool)

(assert (=> b!832050 (= e!464061 e!464059)))

(declare-fun c!90337 () Bool)

(assert (=> b!832050 (= c!90337 (validKeyInArray!0 (select (arr!22317 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!832051 () Bool)

(declare-fun call!36411 () Bool)

(assert (=> b!832051 (= e!464059 call!36411)))

(declare-fun d!106379 () Bool)

(declare-fun res!566281 () Bool)

(declare-fun e!464060 () Bool)

(assert (=> d!106379 (=> res!566281 e!464060)))

(assert (=> d!106379 (= res!566281 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!22738 _keys!976)))))

(assert (=> d!106379 (= (arrayNoDuplicates!0 _keys!976 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!90242 (Cons!16005 (select (arr!22317 _keys!976) #b00000000000000000000000000000000) Nil!16006) Nil!16006)) e!464060)))

(declare-fun b!832052 () Bool)

(assert (=> b!832052 (= e!464059 call!36411)))

(declare-fun b!832053 () Bool)

(assert (=> b!832053 (= e!464060 e!464061)))

(declare-fun res!566282 () Bool)

(assert (=> b!832053 (=> (not res!566282) (not e!464061))))

(assert (=> b!832053 (= res!566282 (not e!464058))))

(declare-fun res!566283 () Bool)

(assert (=> b!832053 (=> (not res!566283) (not e!464058))))

(assert (=> b!832053 (= res!566283 (validKeyInArray!0 (select (arr!22317 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun bm!36408 () Bool)

(assert (=> bm!36408 (= call!36411 (arrayNoDuplicates!0 _keys!976 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!90337 (Cons!16005 (select (arr!22317 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!90242 (Cons!16005 (select (arr!22317 _keys!976) #b00000000000000000000000000000000) Nil!16006) Nil!16006)) (ite c!90242 (Cons!16005 (select (arr!22317 _keys!976) #b00000000000000000000000000000000) Nil!16006) Nil!16006))))))

(assert (= (and d!106379 (not res!566281)) b!832053))

(assert (= (and b!832053 res!566283) b!832049))

(assert (= (and b!832053 res!566282) b!832050))

(assert (= (and b!832050 c!90337) b!832051))

(assert (= (and b!832050 (not c!90337)) b!832052))

(assert (= (or b!832051 b!832052) bm!36408))

(assert (=> b!832049 m!776139))

(assert (=> b!832049 m!776139))

(declare-fun m!776375 () Bool)

(assert (=> b!832049 m!776375))

(assert (=> b!832050 m!776139))

(assert (=> b!832050 m!776139))

(assert (=> b!832050 m!776159))

(assert (=> b!832053 m!776139))

(assert (=> b!832053 m!776139))

(assert (=> b!832053 m!776159))

(assert (=> bm!36408 m!776139))

(declare-fun m!776377 () Bool)

(assert (=> bm!36408 m!776377))

(assert (=> bm!36358 d!106379))

(declare-fun d!106381 () Bool)

(declare-fun e!464062 () Bool)

(assert (=> d!106381 e!464062))

(declare-fun res!566284 () Bool)

(assert (=> d!106381 (=> res!566284 e!464062)))

(declare-fun lt!377700 () Bool)

(assert (=> d!106381 (= res!566284 (not lt!377700))))

(declare-fun lt!377697 () Bool)

(assert (=> d!106381 (= lt!377700 lt!377697)))

(declare-fun lt!377699 () Unit!28497)

(declare-fun e!464063 () Unit!28497)

(assert (=> d!106381 (= lt!377699 e!464063)))

(declare-fun c!90338 () Bool)

(assert (=> d!106381 (= c!90338 lt!377697)))

(assert (=> d!106381 (= lt!377697 (containsKey!401 (toList!4524 lt!377442) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!106381 (= (contains!4212 lt!377442 #b1000000000000000000000000000000000000000000000000000000000000000) lt!377700)))

(declare-fun b!832054 () Bool)

(declare-fun lt!377698 () Unit!28497)

(assert (=> b!832054 (= e!464063 lt!377698)))

(assert (=> b!832054 (= lt!377698 (lemmaContainsKeyImpliesGetValueByKeyDefined!311 (toList!4524 lt!377442) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!832054 (isDefined!312 (getValueByKey!415 (toList!4524 lt!377442) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!832055 () Bool)

(declare-fun Unit!28515 () Unit!28497)

(assert (=> b!832055 (= e!464063 Unit!28515)))

(declare-fun b!832056 () Bool)

(assert (=> b!832056 (= e!464062 (isDefined!312 (getValueByKey!415 (toList!4524 lt!377442) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!106381 c!90338) b!832054))

(assert (= (and d!106381 (not c!90338)) b!832055))

(assert (= (and d!106381 (not res!566284)) b!832056))

(declare-fun m!776379 () Bool)

(assert (=> d!106381 m!776379))

(declare-fun m!776381 () Bool)

(assert (=> b!832054 m!776381))

(declare-fun m!776383 () Bool)

(assert (=> b!832054 m!776383))

(assert (=> b!832054 m!776383))

(declare-fun m!776385 () Bool)

(assert (=> b!832054 m!776385))

(assert (=> b!832056 m!776383))

(assert (=> b!832056 m!776383))

(assert (=> b!832056 m!776385))

(assert (=> b!831745 d!106381))

(declare-fun d!106383 () Bool)

(assert (=> d!106383 (arrayContainsKey!0 _keys!976 lt!377417 #b00000000000000000000000000000000)))

(declare-fun lt!377703 () Unit!28497)

(declare-fun choose!13 (array!46572 (_ BitVec 64) (_ BitVec 32)) Unit!28497)

(assert (=> d!106383 (= lt!377703 (choose!13 _keys!976 lt!377417 #b00000000000000000000000000000000))))

(assert (=> d!106383 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(assert (=> d!106383 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!976 lt!377417 #b00000000000000000000000000000000) lt!377703)))

(declare-fun bs!23268 () Bool)

(assert (= bs!23268 d!106383))

(assert (=> bs!23268 m!775733))

(declare-fun m!776387 () Bool)

(assert (=> bs!23268 m!776387))

(assert (=> b!831710 d!106383))

(declare-fun d!106385 () Bool)

(declare-fun res!566289 () Bool)

(declare-fun e!464068 () Bool)

(assert (=> d!106385 (=> res!566289 e!464068)))

(assert (=> d!106385 (= res!566289 (= (select (arr!22317 _keys!976) #b00000000000000000000000000000000) lt!377417))))

(assert (=> d!106385 (= (arrayContainsKey!0 _keys!976 lt!377417 #b00000000000000000000000000000000) e!464068)))

(declare-fun b!832061 () Bool)

(declare-fun e!464069 () Bool)

(assert (=> b!832061 (= e!464068 e!464069)))

(declare-fun res!566290 () Bool)

(assert (=> b!832061 (=> (not res!566290) (not e!464069))))

(assert (=> b!832061 (= res!566290 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!22738 _keys!976)))))

(declare-fun b!832062 () Bool)

(assert (=> b!832062 (= e!464069 (arrayContainsKey!0 _keys!976 lt!377417 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!106385 (not res!566289)) b!832061))

(assert (= (and b!832061 res!566290) b!832062))

(assert (=> d!106385 m!775697))

(declare-fun m!776389 () Bool)

(assert (=> b!832062 m!776389))

(assert (=> b!831710 d!106385))

(declare-fun b!832075 () Bool)

(declare-fun e!464078 () SeekEntryResult!8734)

(declare-fun lt!377711 () SeekEntryResult!8734)

(assert (=> b!832075 (= e!464078 (Found!8734 (index!37308 lt!377711)))))

(declare-fun b!832076 () Bool)

(declare-fun e!464076 () SeekEntryResult!8734)

(assert (=> b!832076 (= e!464076 (MissingZero!8734 (index!37308 lt!377711)))))

(declare-fun b!832077 () Bool)

(declare-fun c!90347 () Bool)

(declare-fun lt!377712 () (_ BitVec 64))

(assert (=> b!832077 (= c!90347 (= lt!377712 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!832077 (= e!464078 e!464076)))

(declare-fun b!832078 () Bool)

(declare-fun e!464077 () SeekEntryResult!8734)

(assert (=> b!832078 (= e!464077 Undefined!8734)))

(declare-fun d!106387 () Bool)

(declare-fun lt!377710 () SeekEntryResult!8734)

(assert (=> d!106387 (and (or ((_ is Undefined!8734) lt!377710) (not ((_ is Found!8734) lt!377710)) (and (bvsge (index!37307 lt!377710) #b00000000000000000000000000000000) (bvslt (index!37307 lt!377710) (size!22738 _keys!976)))) (or ((_ is Undefined!8734) lt!377710) ((_ is Found!8734) lt!377710) (not ((_ is MissingZero!8734) lt!377710)) (and (bvsge (index!37306 lt!377710) #b00000000000000000000000000000000) (bvslt (index!37306 lt!377710) (size!22738 _keys!976)))) (or ((_ is Undefined!8734) lt!377710) ((_ is Found!8734) lt!377710) ((_ is MissingZero!8734) lt!377710) (not ((_ is MissingVacant!8734) lt!377710)) (and (bvsge (index!37309 lt!377710) #b00000000000000000000000000000000) (bvslt (index!37309 lt!377710) (size!22738 _keys!976)))) (or ((_ is Undefined!8734) lt!377710) (ite ((_ is Found!8734) lt!377710) (= (select (arr!22317 _keys!976) (index!37307 lt!377710)) (select (arr!22317 _keys!976) #b00000000000000000000000000000000)) (ite ((_ is MissingZero!8734) lt!377710) (= (select (arr!22317 _keys!976) (index!37306 lt!377710)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!8734) lt!377710) (= (select (arr!22317 _keys!976) (index!37309 lt!377710)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!106387 (= lt!377710 e!464077)))

(declare-fun c!90345 () Bool)

(assert (=> d!106387 (= c!90345 (and ((_ is Intermediate!8734) lt!377711) (undefined!9546 lt!377711)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!46572 (_ BitVec 32)) SeekEntryResult!8734)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!106387 (= lt!377711 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!22317 _keys!976) #b00000000000000000000000000000000) mask!1312) (select (arr!22317 _keys!976) #b00000000000000000000000000000000) _keys!976 mask!1312))))

(assert (=> d!106387 (validMask!0 mask!1312)))

(assert (=> d!106387 (= (seekEntryOrOpen!0 (select (arr!22317 _keys!976) #b00000000000000000000000000000000) _keys!976 mask!1312) lt!377710)))

(declare-fun b!832079 () Bool)

(assert (=> b!832079 (= e!464077 e!464078)))

(assert (=> b!832079 (= lt!377712 (select (arr!22317 _keys!976) (index!37308 lt!377711)))))

(declare-fun c!90346 () Bool)

(assert (=> b!832079 (= c!90346 (= lt!377712 (select (arr!22317 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun b!832080 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!46572 (_ BitVec 32)) SeekEntryResult!8734)

(assert (=> b!832080 (= e!464076 (seekKeyOrZeroReturnVacant!0 (x!70122 lt!377711) (index!37308 lt!377711) (index!37308 lt!377711) (select (arr!22317 _keys!976) #b00000000000000000000000000000000) _keys!976 mask!1312))))

(assert (= (and d!106387 c!90345) b!832078))

(assert (= (and d!106387 (not c!90345)) b!832079))

(assert (= (and b!832079 c!90346) b!832075))

(assert (= (and b!832079 (not c!90346)) b!832077))

(assert (= (and b!832077 c!90347) b!832076))

(assert (= (and b!832077 (not c!90347)) b!832080))

(declare-fun m!776391 () Bool)

(assert (=> d!106387 m!776391))

(assert (=> d!106387 m!775625))

(declare-fun m!776393 () Bool)

(assert (=> d!106387 m!776393))

(declare-fun m!776395 () Bool)

(assert (=> d!106387 m!776395))

(assert (=> d!106387 m!775697))

(declare-fun m!776397 () Bool)

(assert (=> d!106387 m!776397))

(assert (=> d!106387 m!775697))

(assert (=> d!106387 m!776395))

(declare-fun m!776399 () Bool)

(assert (=> d!106387 m!776399))

(declare-fun m!776401 () Bool)

(assert (=> b!832079 m!776401))

(assert (=> b!832080 m!775697))

(declare-fun m!776403 () Bool)

(assert (=> b!832080 m!776403))

(assert (=> b!831710 d!106387))

(declare-fun d!106389 () Bool)

(declare-fun c!90348 () Bool)

(assert (=> d!106389 (= c!90348 (and ((_ is Cons!16004) (toList!4524 lt!377407)) (= (_1!5100 (h!17134 (toList!4524 lt!377407))) (_1!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))))))

(declare-fun e!464079 () Option!421)

(assert (=> d!106389 (= (getValueByKey!415 (toList!4524 lt!377407) (_1!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))) e!464079)))

(declare-fun b!832081 () Bool)

(assert (=> b!832081 (= e!464079 (Some!420 (_2!5100 (h!17134 (toList!4524 lt!377407)))))))

(declare-fun b!832084 () Bool)

(declare-fun e!464080 () Option!421)

(assert (=> b!832084 (= e!464080 None!419)))

(declare-fun b!832082 () Bool)

(assert (=> b!832082 (= e!464079 e!464080)))

(declare-fun c!90349 () Bool)

(assert (=> b!832082 (= c!90349 (and ((_ is Cons!16004) (toList!4524 lt!377407)) (not (= (_1!5100 (h!17134 (toList!4524 lt!377407))) (_1!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))))))

(declare-fun b!832083 () Bool)

(assert (=> b!832083 (= e!464080 (getValueByKey!415 (t!22384 (toList!4524 lt!377407)) (_1!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))))

(assert (= (and d!106389 c!90348) b!832081))

(assert (= (and d!106389 (not c!90348)) b!832082))

(assert (= (and b!832082 c!90349) b!832083))

(assert (= (and b!832082 (not c!90349)) b!832084))

(declare-fun m!776405 () Bool)

(assert (=> b!832083 m!776405))

(assert (=> b!831697 d!106389))

(assert (=> d!106245 d!106233))

(declare-fun d!106391 () Bool)

(declare-fun e!464081 () Bool)

(assert (=> d!106391 e!464081))

(declare-fun res!566291 () Bool)

(assert (=> d!106391 (=> res!566291 e!464081)))

(declare-fun lt!377716 () Bool)

(assert (=> d!106391 (= res!566291 (not lt!377716))))

(declare-fun lt!377713 () Bool)

(assert (=> d!106391 (= lt!377716 lt!377713)))

(declare-fun lt!377715 () Unit!28497)

(declare-fun e!464082 () Unit!28497)

(assert (=> d!106391 (= lt!377715 e!464082)))

(declare-fun c!90350 () Bool)

(assert (=> d!106391 (= c!90350 lt!377713)))

(assert (=> d!106391 (= lt!377713 (containsKey!401 (toList!4524 lt!377537) (_1!5100 lt!377371)))))

(assert (=> d!106391 (= (contains!4212 lt!377537 (_1!5100 lt!377371)) lt!377716)))

(declare-fun b!832085 () Bool)

(declare-fun lt!377714 () Unit!28497)

(assert (=> b!832085 (= e!464082 lt!377714)))

(assert (=> b!832085 (= lt!377714 (lemmaContainsKeyImpliesGetValueByKeyDefined!311 (toList!4524 lt!377537) (_1!5100 lt!377371)))))

(assert (=> b!832085 (isDefined!312 (getValueByKey!415 (toList!4524 lt!377537) (_1!5100 lt!377371)))))

(declare-fun b!832086 () Bool)

(declare-fun Unit!28516 () Unit!28497)

(assert (=> b!832086 (= e!464082 Unit!28516)))

(declare-fun b!832087 () Bool)

(assert (=> b!832087 (= e!464081 (isDefined!312 (getValueByKey!415 (toList!4524 lt!377537) (_1!5100 lt!377371))))))

(assert (= (and d!106391 c!90350) b!832085))

(assert (= (and d!106391 (not c!90350)) b!832086))

(assert (= (and d!106391 (not res!566291)) b!832087))

(declare-fun m!776407 () Bool)

(assert (=> d!106391 m!776407))

(declare-fun m!776409 () Bool)

(assert (=> b!832085 m!776409))

(assert (=> b!832085 m!775899))

(assert (=> b!832085 m!775899))

(declare-fun m!776411 () Bool)

(assert (=> b!832085 m!776411))

(assert (=> b!832087 m!775899))

(assert (=> b!832087 m!775899))

(assert (=> b!832087 m!776411))

(assert (=> d!106251 d!106391))

(declare-fun d!106393 () Bool)

(declare-fun c!90351 () Bool)

(assert (=> d!106393 (= c!90351 (and ((_ is Cons!16004) lt!377539) (= (_1!5100 (h!17134 lt!377539)) (_1!5100 lt!377371))))))

(declare-fun e!464083 () Option!421)

(assert (=> d!106393 (= (getValueByKey!415 lt!377539 (_1!5100 lt!377371)) e!464083)))

(declare-fun b!832088 () Bool)

(assert (=> b!832088 (= e!464083 (Some!420 (_2!5100 (h!17134 lt!377539))))))

(declare-fun b!832091 () Bool)

(declare-fun e!464084 () Option!421)

(assert (=> b!832091 (= e!464084 None!419)))

(declare-fun b!832089 () Bool)

(assert (=> b!832089 (= e!464083 e!464084)))

(declare-fun c!90352 () Bool)

(assert (=> b!832089 (= c!90352 (and ((_ is Cons!16004) lt!377539) (not (= (_1!5100 (h!17134 lt!377539)) (_1!5100 lt!377371)))))))

(declare-fun b!832090 () Bool)

(assert (=> b!832090 (= e!464084 (getValueByKey!415 (t!22384 lt!377539) (_1!5100 lt!377371)))))

(assert (= (and d!106393 c!90351) b!832088))

(assert (= (and d!106393 (not c!90351)) b!832089))

(assert (= (and b!832089 c!90352) b!832090))

(assert (= (and b!832089 (not c!90352)) b!832091))

(declare-fun m!776413 () Bool)

(assert (=> b!832090 m!776413))

(assert (=> d!106251 d!106393))

(declare-fun d!106395 () Bool)

(assert (=> d!106395 (= (getValueByKey!415 lt!377539 (_1!5100 lt!377371)) (Some!420 (_2!5100 lt!377371)))))

(declare-fun lt!377717 () Unit!28497)

(assert (=> d!106395 (= lt!377717 (choose!1433 lt!377539 (_1!5100 lt!377371) (_2!5100 lt!377371)))))

(declare-fun e!464085 () Bool)

(assert (=> d!106395 e!464085))

(declare-fun res!566292 () Bool)

(assert (=> d!106395 (=> (not res!566292) (not e!464085))))

(assert (=> d!106395 (= res!566292 (isStrictlySorted!438 lt!377539))))

(assert (=> d!106395 (= (lemmaContainsTupThenGetReturnValue!231 lt!377539 (_1!5100 lt!377371) (_2!5100 lt!377371)) lt!377717)))

(declare-fun b!832092 () Bool)

(declare-fun res!566293 () Bool)

(assert (=> b!832092 (=> (not res!566293) (not e!464085))))

(assert (=> b!832092 (= res!566293 (containsKey!401 lt!377539 (_1!5100 lt!377371)))))

(declare-fun b!832093 () Bool)

(assert (=> b!832093 (= e!464085 (contains!4213 lt!377539 (tuple2!10181 (_1!5100 lt!377371) (_2!5100 lt!377371))))))

(assert (= (and d!106395 res!566292) b!832092))

(assert (= (and b!832092 res!566293) b!832093))

(assert (=> d!106395 m!775893))

(declare-fun m!776415 () Bool)

(assert (=> d!106395 m!776415))

(declare-fun m!776417 () Bool)

(assert (=> d!106395 m!776417))

(declare-fun m!776419 () Bool)

(assert (=> b!832092 m!776419))

(declare-fun m!776421 () Bool)

(assert (=> b!832093 m!776421))

(assert (=> d!106251 d!106395))

(declare-fun b!832094 () Bool)

(declare-fun e!464090 () List!16008)

(declare-fun call!36413 () List!16008)

(assert (=> b!832094 (= e!464090 call!36413)))

(declare-fun b!832095 () Bool)

(declare-fun res!566294 () Bool)

(declare-fun e!464087 () Bool)

(assert (=> b!832095 (=> (not res!566294) (not e!464087))))

(declare-fun lt!377718 () List!16008)

(assert (=> b!832095 (= res!566294 (containsKey!401 lt!377718 (_1!5100 lt!377371)))))

(declare-fun c!90356 () Bool)

(declare-fun c!90354 () Bool)

(declare-fun b!832096 () Bool)

(declare-fun e!464089 () List!16008)

(assert (=> b!832096 (= e!464089 (ite c!90354 (t!22384 (toList!4524 (+!1952 lt!377369 lt!377372))) (ite c!90356 (Cons!16004 (h!17134 (toList!4524 (+!1952 lt!377369 lt!377372))) (t!22384 (toList!4524 (+!1952 lt!377369 lt!377372)))) Nil!16005)))))

(declare-fun b!832097 () Bool)

(declare-fun e!464086 () List!16008)

(assert (=> b!832097 (= e!464086 e!464090)))

(assert (=> b!832097 (= c!90354 (and ((_ is Cons!16004) (toList!4524 (+!1952 lt!377369 lt!377372))) (= (_1!5100 (h!17134 (toList!4524 (+!1952 lt!377369 lt!377372)))) (_1!5100 lt!377371))))))

(declare-fun b!832098 () Bool)

(assert (=> b!832098 (= e!464089 (insertStrictlySorted!269 (t!22384 (toList!4524 (+!1952 lt!377369 lt!377372))) (_1!5100 lt!377371) (_2!5100 lt!377371)))))

(declare-fun bm!36409 () Bool)

(declare-fun call!36414 () List!16008)

(assert (=> bm!36409 (= call!36413 call!36414)))

(declare-fun b!832099 () Bool)

(assert (=> b!832099 (= e!464087 (contains!4213 lt!377718 (tuple2!10181 (_1!5100 lt!377371) (_2!5100 lt!377371))))))

(declare-fun b!832100 () Bool)

(declare-fun e!464088 () List!16008)

(declare-fun call!36412 () List!16008)

(assert (=> b!832100 (= e!464088 call!36412)))

(declare-fun b!832101 () Bool)

(assert (=> b!832101 (= c!90356 (and ((_ is Cons!16004) (toList!4524 (+!1952 lt!377369 lt!377372))) (bvsgt (_1!5100 (h!17134 (toList!4524 (+!1952 lt!377369 lt!377372)))) (_1!5100 lt!377371))))))

(assert (=> b!832101 (= e!464090 e!464088)))

(declare-fun d!106397 () Bool)

(assert (=> d!106397 e!464087))

(declare-fun res!566295 () Bool)

(assert (=> d!106397 (=> (not res!566295) (not e!464087))))

(assert (=> d!106397 (= res!566295 (isStrictlySorted!438 lt!377718))))

(assert (=> d!106397 (= lt!377718 e!464086)))

(declare-fun c!90355 () Bool)

(assert (=> d!106397 (= c!90355 (and ((_ is Cons!16004) (toList!4524 (+!1952 lt!377369 lt!377372))) (bvslt (_1!5100 (h!17134 (toList!4524 (+!1952 lt!377369 lt!377372)))) (_1!5100 lt!377371))))))

(assert (=> d!106397 (isStrictlySorted!438 (toList!4524 (+!1952 lt!377369 lt!377372)))))

(assert (=> d!106397 (= (insertStrictlySorted!269 (toList!4524 (+!1952 lt!377369 lt!377372)) (_1!5100 lt!377371) (_2!5100 lt!377371)) lt!377718)))

(declare-fun b!832102 () Bool)

(assert (=> b!832102 (= e!464088 call!36412)))

(declare-fun bm!36410 () Bool)

(assert (=> bm!36410 (= call!36414 ($colon$colon!536 e!464089 (ite c!90355 (h!17134 (toList!4524 (+!1952 lt!377369 lt!377372))) (tuple2!10181 (_1!5100 lt!377371) (_2!5100 lt!377371)))))))

(declare-fun c!90353 () Bool)

(assert (=> bm!36410 (= c!90353 c!90355)))

(declare-fun bm!36411 () Bool)

(assert (=> bm!36411 (= call!36412 call!36413)))

(declare-fun b!832103 () Bool)

(assert (=> b!832103 (= e!464086 call!36414)))

(assert (= (and d!106397 c!90355) b!832103))

(assert (= (and d!106397 (not c!90355)) b!832097))

(assert (= (and b!832097 c!90354) b!832094))

(assert (= (and b!832097 (not c!90354)) b!832101))

(assert (= (and b!832101 c!90356) b!832100))

(assert (= (and b!832101 (not c!90356)) b!832102))

(assert (= (or b!832100 b!832102) bm!36411))

(assert (= (or b!832094 bm!36411) bm!36409))

(assert (= (or b!832103 bm!36409) bm!36410))

(assert (= (and bm!36410 c!90353) b!832098))

(assert (= (and bm!36410 (not c!90353)) b!832096))

(assert (= (and d!106397 res!566295) b!832095))

(assert (= (and b!832095 res!566294) b!832099))

(declare-fun m!776423 () Bool)

(assert (=> b!832095 m!776423))

(declare-fun m!776425 () Bool)

(assert (=> b!832098 m!776425))

(declare-fun m!776427 () Bool)

(assert (=> d!106397 m!776427))

(declare-fun m!776429 () Bool)

(assert (=> d!106397 m!776429))

(declare-fun m!776431 () Bool)

(assert (=> b!832099 m!776431))

(declare-fun m!776433 () Bool)

(assert (=> bm!36410 m!776433))

(assert (=> d!106251 d!106397))

(declare-fun d!106399 () Bool)

(declare-fun e!464091 () Bool)

(assert (=> d!106399 e!464091))

(declare-fun res!566296 () Bool)

(assert (=> d!106399 (=> res!566296 e!464091)))

(declare-fun lt!377722 () Bool)

(assert (=> d!106399 (= res!566296 (not lt!377722))))

(declare-fun lt!377719 () Bool)

(assert (=> d!106399 (= lt!377722 lt!377719)))

(declare-fun lt!377721 () Unit!28497)

(declare-fun e!464092 () Unit!28497)

(assert (=> d!106399 (= lt!377721 e!464092)))

(declare-fun c!90357 () Bool)

(assert (=> d!106399 (= c!90357 lt!377719)))

(assert (=> d!106399 (= lt!377719 (containsKey!401 (toList!4524 lt!377529) (_1!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))))

(assert (=> d!106399 (= (contains!4212 lt!377529 (_1!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))) lt!377722)))

(declare-fun b!832104 () Bool)

(declare-fun lt!377720 () Unit!28497)

(assert (=> b!832104 (= e!464092 lt!377720)))

(assert (=> b!832104 (= lt!377720 (lemmaContainsKeyImpliesGetValueByKeyDefined!311 (toList!4524 lt!377529) (_1!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))))

(assert (=> b!832104 (isDefined!312 (getValueByKey!415 (toList!4524 lt!377529) (_1!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))))

(declare-fun b!832105 () Bool)

(declare-fun Unit!28517 () Unit!28497)

(assert (=> b!832105 (= e!464092 Unit!28517)))

(declare-fun b!832106 () Bool)

(assert (=> b!832106 (= e!464091 (isDefined!312 (getValueByKey!415 (toList!4524 lt!377529) (_1!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))))))

(assert (= (and d!106399 c!90357) b!832104))

(assert (= (and d!106399 (not c!90357)) b!832105))

(assert (= (and d!106399 (not res!566296)) b!832106))

(declare-fun m!776435 () Bool)

(assert (=> d!106399 m!776435))

(declare-fun m!776437 () Bool)

(assert (=> b!832104 m!776437))

(assert (=> b!832104 m!775875))

(assert (=> b!832104 m!775875))

(declare-fun m!776439 () Bool)

(assert (=> b!832104 m!776439))

(assert (=> b!832106 m!775875))

(assert (=> b!832106 m!775875))

(assert (=> b!832106 m!776439))

(assert (=> d!106247 d!106399))

(declare-fun d!106401 () Bool)

(declare-fun c!90358 () Bool)

(assert (=> d!106401 (= c!90358 (and ((_ is Cons!16004) lt!377531) (= (_1!5100 (h!17134 lt!377531)) (_1!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))))))

(declare-fun e!464093 () Option!421)

(assert (=> d!106401 (= (getValueByKey!415 lt!377531 (_1!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))) e!464093)))

(declare-fun b!832107 () Bool)

(assert (=> b!832107 (= e!464093 (Some!420 (_2!5100 (h!17134 lt!377531))))))

(declare-fun b!832110 () Bool)

(declare-fun e!464094 () Option!421)

(assert (=> b!832110 (= e!464094 None!419)))

(declare-fun b!832108 () Bool)

(assert (=> b!832108 (= e!464093 e!464094)))

(declare-fun c!90359 () Bool)

(assert (=> b!832108 (= c!90359 (and ((_ is Cons!16004) lt!377531) (not (= (_1!5100 (h!17134 lt!377531)) (_1!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))))))

(declare-fun b!832109 () Bool)

(assert (=> b!832109 (= e!464094 (getValueByKey!415 (t!22384 lt!377531) (_1!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))))

(assert (= (and d!106401 c!90358) b!832107))

(assert (= (and d!106401 (not c!90358)) b!832108))

(assert (= (and b!832108 c!90359) b!832109))

(assert (= (and b!832108 (not c!90359)) b!832110))

(declare-fun m!776441 () Bool)

(assert (=> b!832109 m!776441))

(assert (=> d!106247 d!106401))

(declare-fun d!106403 () Bool)

(assert (=> d!106403 (= (getValueByKey!415 lt!377531 (_1!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))) (Some!420 (_2!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))))

(declare-fun lt!377723 () Unit!28497)

(assert (=> d!106403 (= lt!377723 (choose!1433 lt!377531 (_1!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)) (_2!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))))

(declare-fun e!464095 () Bool)

(assert (=> d!106403 e!464095))

(declare-fun res!566297 () Bool)

(assert (=> d!106403 (=> (not res!566297) (not e!464095))))

(assert (=> d!106403 (= res!566297 (isStrictlySorted!438 lt!377531))))

(assert (=> d!106403 (= (lemmaContainsTupThenGetReturnValue!231 lt!377531 (_1!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)) (_2!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))) lt!377723)))

(declare-fun b!832111 () Bool)

(declare-fun res!566298 () Bool)

(assert (=> b!832111 (=> (not res!566298) (not e!464095))))

(assert (=> b!832111 (= res!566298 (containsKey!401 lt!377531 (_1!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))))

(declare-fun b!832112 () Bool)

(assert (=> b!832112 (= e!464095 (contains!4213 lt!377531 (tuple2!10181 (_1!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)) (_2!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))))))

(assert (= (and d!106403 res!566297) b!832111))

(assert (= (and b!832111 res!566298) b!832112))

(assert (=> d!106403 m!775869))

(declare-fun m!776443 () Bool)

(assert (=> d!106403 m!776443))

(declare-fun m!776445 () Bool)

(assert (=> d!106403 m!776445))

(declare-fun m!776447 () Bool)

(assert (=> b!832111 m!776447))

(declare-fun m!776449 () Bool)

(assert (=> b!832112 m!776449))

(assert (=> d!106247 d!106403))

(declare-fun b!832113 () Bool)

(declare-fun e!464100 () List!16008)

(declare-fun call!36416 () List!16008)

(assert (=> b!832113 (= e!464100 call!36416)))

(declare-fun b!832114 () Bool)

(declare-fun res!566299 () Bool)

(declare-fun e!464097 () Bool)

(assert (=> b!832114 (=> (not res!566299) (not e!464097))))

(declare-fun lt!377724 () List!16008)

(assert (=> b!832114 (= res!566299 (containsKey!401 lt!377724 (_1!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))))

(declare-fun b!832115 () Bool)

(declare-fun e!464099 () List!16008)

(declare-fun c!90363 () Bool)

(declare-fun c!90361 () Bool)

(assert (=> b!832115 (= e!464099 (ite c!90361 (t!22384 (toList!4524 (+!1952 lt!377373 lt!377371))) (ite c!90363 (Cons!16004 (h!17134 (toList!4524 (+!1952 lt!377373 lt!377371))) (t!22384 (toList!4524 (+!1952 lt!377373 lt!377371)))) Nil!16005)))))

(declare-fun b!832116 () Bool)

(declare-fun e!464096 () List!16008)

(assert (=> b!832116 (= e!464096 e!464100)))

(assert (=> b!832116 (= c!90361 (and ((_ is Cons!16004) (toList!4524 (+!1952 lt!377373 lt!377371))) (= (_1!5100 (h!17134 (toList!4524 (+!1952 lt!377373 lt!377371)))) (_1!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))))))

(declare-fun b!832117 () Bool)

(assert (=> b!832117 (= e!464099 (insertStrictlySorted!269 (t!22384 (toList!4524 (+!1952 lt!377373 lt!377371))) (_1!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)) (_2!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))))

(declare-fun bm!36412 () Bool)

(declare-fun call!36417 () List!16008)

(assert (=> bm!36412 (= call!36416 call!36417)))

(declare-fun b!832118 () Bool)

(assert (=> b!832118 (= e!464097 (contains!4213 lt!377724 (tuple2!10181 (_1!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)) (_2!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))))))

(declare-fun b!832119 () Bool)

(declare-fun e!464098 () List!16008)

(declare-fun call!36415 () List!16008)

(assert (=> b!832119 (= e!464098 call!36415)))

(declare-fun b!832120 () Bool)

(assert (=> b!832120 (= c!90363 (and ((_ is Cons!16004) (toList!4524 (+!1952 lt!377373 lt!377371))) (bvsgt (_1!5100 (h!17134 (toList!4524 (+!1952 lt!377373 lt!377371)))) (_1!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))))))

(assert (=> b!832120 (= e!464100 e!464098)))

(declare-fun d!106405 () Bool)

(assert (=> d!106405 e!464097))

(declare-fun res!566300 () Bool)

(assert (=> d!106405 (=> (not res!566300) (not e!464097))))

(assert (=> d!106405 (= res!566300 (isStrictlySorted!438 lt!377724))))

(assert (=> d!106405 (= lt!377724 e!464096)))

(declare-fun c!90362 () Bool)

(assert (=> d!106405 (= c!90362 (and ((_ is Cons!16004) (toList!4524 (+!1952 lt!377373 lt!377371))) (bvslt (_1!5100 (h!17134 (toList!4524 (+!1952 lt!377373 lt!377371)))) (_1!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))))))

(assert (=> d!106405 (isStrictlySorted!438 (toList!4524 (+!1952 lt!377373 lt!377371)))))

(assert (=> d!106405 (= (insertStrictlySorted!269 (toList!4524 (+!1952 lt!377373 lt!377371)) (_1!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)) (_2!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))) lt!377724)))

(declare-fun b!832121 () Bool)

(assert (=> b!832121 (= e!464098 call!36415)))

(declare-fun bm!36413 () Bool)

(assert (=> bm!36413 (= call!36417 ($colon$colon!536 e!464099 (ite c!90362 (h!17134 (toList!4524 (+!1952 lt!377373 lt!377371))) (tuple2!10181 (_1!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)) (_2!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))))))

(declare-fun c!90360 () Bool)

(assert (=> bm!36413 (= c!90360 c!90362)))

(declare-fun bm!36414 () Bool)

(assert (=> bm!36414 (= call!36415 call!36416)))

(declare-fun b!832122 () Bool)

(assert (=> b!832122 (= e!464096 call!36417)))

(assert (= (and d!106405 c!90362) b!832122))

(assert (= (and d!106405 (not c!90362)) b!832116))

(assert (= (and b!832116 c!90361) b!832113))

(assert (= (and b!832116 (not c!90361)) b!832120))

(assert (= (and b!832120 c!90363) b!832119))

(assert (= (and b!832120 (not c!90363)) b!832121))

(assert (= (or b!832119 b!832121) bm!36414))

(assert (= (or b!832113 bm!36414) bm!36412))

(assert (= (or b!832122 bm!36412) bm!36413))

(assert (= (and bm!36413 c!90360) b!832117))

(assert (= (and bm!36413 (not c!90360)) b!832115))

(assert (= (and d!106405 res!566300) b!832114))

(assert (= (and b!832114 res!566299) b!832118))

(declare-fun m!776451 () Bool)

(assert (=> b!832114 m!776451))

(declare-fun m!776453 () Bool)

(assert (=> b!832117 m!776453))

(declare-fun m!776455 () Bool)

(assert (=> d!106405 m!776455))

(declare-fun m!776457 () Bool)

(assert (=> d!106405 m!776457))

(declare-fun m!776459 () Bool)

(assert (=> b!832118 m!776459))

(declare-fun m!776461 () Bool)

(assert (=> bm!36413 m!776461))

(assert (=> d!106247 d!106405))

(assert (=> b!831852 d!106309))

(declare-fun d!106407 () Bool)

(declare-fun e!464101 () Bool)

(assert (=> d!106407 e!464101))

(declare-fun res!566301 () Bool)

(assert (=> d!106407 (=> res!566301 e!464101)))

(declare-fun lt!377728 () Bool)

(assert (=> d!106407 (= res!566301 (not lt!377728))))

(declare-fun lt!377725 () Bool)

(assert (=> d!106407 (= lt!377728 lt!377725)))

(declare-fun lt!377727 () Unit!28497)

(declare-fun e!464102 () Unit!28497)

(assert (=> d!106407 (= lt!377727 e!464102)))

(declare-fun c!90364 () Bool)

(assert (=> d!106407 (= c!90364 lt!377725)))

(assert (=> d!106407 (= lt!377725 (containsKey!401 (toList!4524 lt!377455) (_1!5100 lt!377371)))))

(assert (=> d!106407 (= (contains!4212 lt!377455 (_1!5100 lt!377371)) lt!377728)))

(declare-fun b!832123 () Bool)

(declare-fun lt!377726 () Unit!28497)

(assert (=> b!832123 (= e!464102 lt!377726)))

(assert (=> b!832123 (= lt!377726 (lemmaContainsKeyImpliesGetValueByKeyDefined!311 (toList!4524 lt!377455) (_1!5100 lt!377371)))))

(assert (=> b!832123 (isDefined!312 (getValueByKey!415 (toList!4524 lt!377455) (_1!5100 lt!377371)))))

(declare-fun b!832124 () Bool)

(declare-fun Unit!28518 () Unit!28497)

(assert (=> b!832124 (= e!464102 Unit!28518)))

(declare-fun b!832125 () Bool)

(assert (=> b!832125 (= e!464101 (isDefined!312 (getValueByKey!415 (toList!4524 lt!377455) (_1!5100 lt!377371))))))

(assert (= (and d!106407 c!90364) b!832123))

(assert (= (and d!106407 (not c!90364)) b!832124))

(assert (= (and d!106407 (not res!566301)) b!832125))

(declare-fun m!776463 () Bool)

(assert (=> d!106407 m!776463))

(declare-fun m!776465 () Bool)

(assert (=> b!832123 m!776465))

(assert (=> b!832123 m!775805))

(assert (=> b!832123 m!775805))

(declare-fun m!776467 () Bool)

(assert (=> b!832123 m!776467))

(assert (=> b!832125 m!775805))

(assert (=> b!832125 m!775805))

(assert (=> b!832125 m!776467))

(assert (=> d!106241 d!106407))

(declare-fun d!106409 () Bool)

(declare-fun c!90365 () Bool)

(assert (=> d!106409 (= c!90365 (and ((_ is Cons!16004) lt!377457) (= (_1!5100 (h!17134 lt!377457)) (_1!5100 lt!377371))))))

(declare-fun e!464103 () Option!421)

(assert (=> d!106409 (= (getValueByKey!415 lt!377457 (_1!5100 lt!377371)) e!464103)))

(declare-fun b!832126 () Bool)

(assert (=> b!832126 (= e!464103 (Some!420 (_2!5100 (h!17134 lt!377457))))))

(declare-fun b!832129 () Bool)

(declare-fun e!464104 () Option!421)

(assert (=> b!832129 (= e!464104 None!419)))

(declare-fun b!832127 () Bool)

(assert (=> b!832127 (= e!464103 e!464104)))

(declare-fun c!90366 () Bool)

(assert (=> b!832127 (= c!90366 (and ((_ is Cons!16004) lt!377457) (not (= (_1!5100 (h!17134 lt!377457)) (_1!5100 lt!377371)))))))

(declare-fun b!832128 () Bool)

(assert (=> b!832128 (= e!464104 (getValueByKey!415 (t!22384 lt!377457) (_1!5100 lt!377371)))))

(assert (= (and d!106409 c!90365) b!832126))

(assert (= (and d!106409 (not c!90365)) b!832127))

(assert (= (and b!832127 c!90366) b!832128))

(assert (= (and b!832127 (not c!90366)) b!832129))

(declare-fun m!776469 () Bool)

(assert (=> b!832128 m!776469))

(assert (=> d!106241 d!106409))

(declare-fun d!106411 () Bool)

(assert (=> d!106411 (= (getValueByKey!415 lt!377457 (_1!5100 lt!377371)) (Some!420 (_2!5100 lt!377371)))))

(declare-fun lt!377729 () Unit!28497)

(assert (=> d!106411 (= lt!377729 (choose!1433 lt!377457 (_1!5100 lt!377371) (_2!5100 lt!377371)))))

(declare-fun e!464105 () Bool)

(assert (=> d!106411 e!464105))

(declare-fun res!566302 () Bool)

(assert (=> d!106411 (=> (not res!566302) (not e!464105))))

(assert (=> d!106411 (= res!566302 (isStrictlySorted!438 lt!377457))))

(assert (=> d!106411 (= (lemmaContainsTupThenGetReturnValue!231 lt!377457 (_1!5100 lt!377371) (_2!5100 lt!377371)) lt!377729)))

(declare-fun b!832130 () Bool)

(declare-fun res!566303 () Bool)

(assert (=> b!832130 (=> (not res!566303) (not e!464105))))

(assert (=> b!832130 (= res!566303 (containsKey!401 lt!377457 (_1!5100 lt!377371)))))

(declare-fun b!832131 () Bool)

(assert (=> b!832131 (= e!464105 (contains!4213 lt!377457 (tuple2!10181 (_1!5100 lt!377371) (_2!5100 lt!377371))))))

(assert (= (and d!106411 res!566302) b!832130))

(assert (= (and b!832130 res!566303) b!832131))

(assert (=> d!106411 m!775799))

(declare-fun m!776471 () Bool)

(assert (=> d!106411 m!776471))

(declare-fun m!776473 () Bool)

(assert (=> d!106411 m!776473))

(declare-fun m!776475 () Bool)

(assert (=> b!832130 m!776475))

(declare-fun m!776477 () Bool)

(assert (=> b!832131 m!776477))

(assert (=> d!106241 d!106411))

(declare-fun b!832132 () Bool)

(declare-fun e!464110 () List!16008)

(declare-fun call!36419 () List!16008)

(assert (=> b!832132 (= e!464110 call!36419)))

(declare-fun b!832133 () Bool)

(declare-fun res!566304 () Bool)

(declare-fun e!464107 () Bool)

(assert (=> b!832133 (=> (not res!566304) (not e!464107))))

(declare-fun lt!377730 () List!16008)

(assert (=> b!832133 (= res!566304 (containsKey!401 lt!377730 (_1!5100 lt!377371)))))

(declare-fun e!464109 () List!16008)

(declare-fun c!90370 () Bool)

(declare-fun b!832134 () Bool)

(declare-fun c!90368 () Bool)

(assert (=> b!832134 (= e!464109 (ite c!90368 (t!22384 (toList!4524 lt!377369)) (ite c!90370 (Cons!16004 (h!17134 (toList!4524 lt!377369)) (t!22384 (toList!4524 lt!377369))) Nil!16005)))))

(declare-fun b!832135 () Bool)

(declare-fun e!464106 () List!16008)

(assert (=> b!832135 (= e!464106 e!464110)))

(assert (=> b!832135 (= c!90368 (and ((_ is Cons!16004) (toList!4524 lt!377369)) (= (_1!5100 (h!17134 (toList!4524 lt!377369))) (_1!5100 lt!377371))))))

(declare-fun b!832136 () Bool)

(assert (=> b!832136 (= e!464109 (insertStrictlySorted!269 (t!22384 (toList!4524 lt!377369)) (_1!5100 lt!377371) (_2!5100 lt!377371)))))

(declare-fun bm!36415 () Bool)

(declare-fun call!36420 () List!16008)

(assert (=> bm!36415 (= call!36419 call!36420)))

(declare-fun b!832137 () Bool)

(assert (=> b!832137 (= e!464107 (contains!4213 lt!377730 (tuple2!10181 (_1!5100 lt!377371) (_2!5100 lt!377371))))))

(declare-fun b!832138 () Bool)

(declare-fun e!464108 () List!16008)

(declare-fun call!36418 () List!16008)

(assert (=> b!832138 (= e!464108 call!36418)))

(declare-fun b!832139 () Bool)

(assert (=> b!832139 (= c!90370 (and ((_ is Cons!16004) (toList!4524 lt!377369)) (bvsgt (_1!5100 (h!17134 (toList!4524 lt!377369))) (_1!5100 lt!377371))))))

(assert (=> b!832139 (= e!464110 e!464108)))

(declare-fun d!106413 () Bool)

(assert (=> d!106413 e!464107))

(declare-fun res!566305 () Bool)

(assert (=> d!106413 (=> (not res!566305) (not e!464107))))

(assert (=> d!106413 (= res!566305 (isStrictlySorted!438 lt!377730))))

(assert (=> d!106413 (= lt!377730 e!464106)))

(declare-fun c!90369 () Bool)

(assert (=> d!106413 (= c!90369 (and ((_ is Cons!16004) (toList!4524 lt!377369)) (bvslt (_1!5100 (h!17134 (toList!4524 lt!377369))) (_1!5100 lt!377371))))))

(assert (=> d!106413 (isStrictlySorted!438 (toList!4524 lt!377369))))

(assert (=> d!106413 (= (insertStrictlySorted!269 (toList!4524 lt!377369) (_1!5100 lt!377371) (_2!5100 lt!377371)) lt!377730)))

(declare-fun b!832140 () Bool)

(assert (=> b!832140 (= e!464108 call!36418)))

(declare-fun bm!36416 () Bool)

(assert (=> bm!36416 (= call!36420 ($colon$colon!536 e!464109 (ite c!90369 (h!17134 (toList!4524 lt!377369)) (tuple2!10181 (_1!5100 lt!377371) (_2!5100 lt!377371)))))))

(declare-fun c!90367 () Bool)

(assert (=> bm!36416 (= c!90367 c!90369)))

(declare-fun bm!36417 () Bool)

(assert (=> bm!36417 (= call!36418 call!36419)))

(declare-fun b!832141 () Bool)

(assert (=> b!832141 (= e!464106 call!36420)))

(assert (= (and d!106413 c!90369) b!832141))

(assert (= (and d!106413 (not c!90369)) b!832135))

(assert (= (and b!832135 c!90368) b!832132))

(assert (= (and b!832135 (not c!90368)) b!832139))

(assert (= (and b!832139 c!90370) b!832138))

(assert (= (and b!832139 (not c!90370)) b!832140))

(assert (= (or b!832138 b!832140) bm!36417))

(assert (= (or b!832132 bm!36417) bm!36415))

(assert (= (or b!832141 bm!36415) bm!36416))

(assert (= (and bm!36416 c!90367) b!832136))

(assert (= (and bm!36416 (not c!90367)) b!832134))

(assert (= (and d!106413 res!566305) b!832133))

(assert (= (and b!832133 res!566304) b!832137))

(declare-fun m!776479 () Bool)

(assert (=> b!832133 m!776479))

(declare-fun m!776481 () Bool)

(assert (=> b!832136 m!776481))

(declare-fun m!776483 () Bool)

(assert (=> d!106413 m!776483))

(declare-fun m!776485 () Bool)

(assert (=> d!106413 m!776485))

(declare-fun m!776487 () Bool)

(assert (=> b!832137 m!776487))

(declare-fun m!776489 () Bool)

(assert (=> bm!36416 m!776489))

(assert (=> d!106241 d!106413))

(declare-fun d!106415 () Bool)

(declare-fun e!464111 () Bool)

(assert (=> d!106415 e!464111))

(declare-fun res!566306 () Bool)

(assert (=> d!106415 (=> res!566306 e!464111)))

(declare-fun lt!377734 () Bool)

(assert (=> d!106415 (= res!566306 (not lt!377734))))

(declare-fun lt!377731 () Bool)

(assert (=> d!106415 (= lt!377734 lt!377731)))

(declare-fun lt!377733 () Unit!28497)

(declare-fun e!464112 () Unit!28497)

(assert (=> d!106415 (= lt!377733 e!464112)))

(declare-fun c!90371 () Bool)

(assert (=> d!106415 (= c!90371 lt!377731)))

(assert (=> d!106415 (= lt!377731 (containsKey!401 (toList!4524 lt!377459) (_1!5100 lt!377372)))))

(assert (=> d!106415 (= (contains!4212 lt!377459 (_1!5100 lt!377372)) lt!377734)))

(declare-fun b!832142 () Bool)

(declare-fun lt!377732 () Unit!28497)

(assert (=> b!832142 (= e!464112 lt!377732)))

(assert (=> b!832142 (= lt!377732 (lemmaContainsKeyImpliesGetValueByKeyDefined!311 (toList!4524 lt!377459) (_1!5100 lt!377372)))))

(assert (=> b!832142 (isDefined!312 (getValueByKey!415 (toList!4524 lt!377459) (_1!5100 lt!377372)))))

(declare-fun b!832143 () Bool)

(declare-fun Unit!28519 () Unit!28497)

(assert (=> b!832143 (= e!464112 Unit!28519)))

(declare-fun b!832144 () Bool)

(assert (=> b!832144 (= e!464111 (isDefined!312 (getValueByKey!415 (toList!4524 lt!377459) (_1!5100 lt!377372))))))

(assert (= (and d!106415 c!90371) b!832142))

(assert (= (and d!106415 (not c!90371)) b!832143))

(assert (= (and d!106415 (not res!566306)) b!832144))

(declare-fun m!776491 () Bool)

(assert (=> d!106415 m!776491))

(declare-fun m!776493 () Bool)

(assert (=> b!832142 m!776493))

(assert (=> b!832142 m!775817))

(assert (=> b!832142 m!775817))

(declare-fun m!776495 () Bool)

(assert (=> b!832142 m!776495))

(assert (=> b!832144 m!775817))

(assert (=> b!832144 m!775817))

(assert (=> b!832144 m!776495))

(assert (=> d!106243 d!106415))

(declare-fun d!106417 () Bool)

(declare-fun c!90372 () Bool)

(assert (=> d!106417 (= c!90372 (and ((_ is Cons!16004) lt!377461) (= (_1!5100 (h!17134 lt!377461)) (_1!5100 lt!377372))))))

(declare-fun e!464113 () Option!421)

(assert (=> d!106417 (= (getValueByKey!415 lt!377461 (_1!5100 lt!377372)) e!464113)))

(declare-fun b!832145 () Bool)

(assert (=> b!832145 (= e!464113 (Some!420 (_2!5100 (h!17134 lt!377461))))))

(declare-fun b!832148 () Bool)

(declare-fun e!464114 () Option!421)

(assert (=> b!832148 (= e!464114 None!419)))

(declare-fun b!832146 () Bool)

(assert (=> b!832146 (= e!464113 e!464114)))

(declare-fun c!90373 () Bool)

(assert (=> b!832146 (= c!90373 (and ((_ is Cons!16004) lt!377461) (not (= (_1!5100 (h!17134 lt!377461)) (_1!5100 lt!377372)))))))

(declare-fun b!832147 () Bool)

(assert (=> b!832147 (= e!464114 (getValueByKey!415 (t!22384 lt!377461) (_1!5100 lt!377372)))))

(assert (= (and d!106417 c!90372) b!832145))

(assert (= (and d!106417 (not c!90372)) b!832146))

(assert (= (and b!832146 c!90373) b!832147))

(assert (= (and b!832146 (not c!90373)) b!832148))

(declare-fun m!776497 () Bool)

(assert (=> b!832147 m!776497))

(assert (=> d!106243 d!106417))

(declare-fun d!106419 () Bool)

(assert (=> d!106419 (= (getValueByKey!415 lt!377461 (_1!5100 lt!377372)) (Some!420 (_2!5100 lt!377372)))))

(declare-fun lt!377735 () Unit!28497)

(assert (=> d!106419 (= lt!377735 (choose!1433 lt!377461 (_1!5100 lt!377372) (_2!5100 lt!377372)))))

(declare-fun e!464115 () Bool)

(assert (=> d!106419 e!464115))

(declare-fun res!566307 () Bool)

(assert (=> d!106419 (=> (not res!566307) (not e!464115))))

(assert (=> d!106419 (= res!566307 (isStrictlySorted!438 lt!377461))))

(assert (=> d!106419 (= (lemmaContainsTupThenGetReturnValue!231 lt!377461 (_1!5100 lt!377372) (_2!5100 lt!377372)) lt!377735)))

(declare-fun b!832149 () Bool)

(declare-fun res!566308 () Bool)

(assert (=> b!832149 (=> (not res!566308) (not e!464115))))

(assert (=> b!832149 (= res!566308 (containsKey!401 lt!377461 (_1!5100 lt!377372)))))

(declare-fun b!832150 () Bool)

(assert (=> b!832150 (= e!464115 (contains!4213 lt!377461 (tuple2!10181 (_1!5100 lt!377372) (_2!5100 lt!377372))))))

(assert (= (and d!106419 res!566307) b!832149))

(assert (= (and b!832149 res!566308) b!832150))

(assert (=> d!106419 m!775811))

(declare-fun m!776499 () Bool)

(assert (=> d!106419 m!776499))

(declare-fun m!776501 () Bool)

(assert (=> d!106419 m!776501))

(declare-fun m!776503 () Bool)

(assert (=> b!832149 m!776503))

(declare-fun m!776505 () Bool)

(assert (=> b!832150 m!776505))

(assert (=> d!106243 d!106419))

(declare-fun b!832151 () Bool)

(declare-fun e!464120 () List!16008)

(declare-fun call!36422 () List!16008)

(assert (=> b!832151 (= e!464120 call!36422)))

(declare-fun b!832152 () Bool)

(declare-fun res!566309 () Bool)

(declare-fun e!464117 () Bool)

(assert (=> b!832152 (=> (not res!566309) (not e!464117))))

(declare-fun lt!377736 () List!16008)

(assert (=> b!832152 (= res!566309 (containsKey!401 lt!377736 (_1!5100 lt!377372)))))

(declare-fun c!90377 () Bool)

(declare-fun c!90375 () Bool)

(declare-fun b!832153 () Bool)

(declare-fun e!464119 () List!16008)

(assert (=> b!832153 (= e!464119 (ite c!90375 (t!22384 (toList!4524 lt!377369)) (ite c!90377 (Cons!16004 (h!17134 (toList!4524 lt!377369)) (t!22384 (toList!4524 lt!377369))) Nil!16005)))))

(declare-fun b!832154 () Bool)

(declare-fun e!464116 () List!16008)

(assert (=> b!832154 (= e!464116 e!464120)))

(assert (=> b!832154 (= c!90375 (and ((_ is Cons!16004) (toList!4524 lt!377369)) (= (_1!5100 (h!17134 (toList!4524 lt!377369))) (_1!5100 lt!377372))))))

(declare-fun b!832155 () Bool)

(assert (=> b!832155 (= e!464119 (insertStrictlySorted!269 (t!22384 (toList!4524 lt!377369)) (_1!5100 lt!377372) (_2!5100 lt!377372)))))

(declare-fun bm!36418 () Bool)

(declare-fun call!36423 () List!16008)

(assert (=> bm!36418 (= call!36422 call!36423)))

(declare-fun b!832156 () Bool)

(assert (=> b!832156 (= e!464117 (contains!4213 lt!377736 (tuple2!10181 (_1!5100 lt!377372) (_2!5100 lt!377372))))))

(declare-fun b!832157 () Bool)

(declare-fun e!464118 () List!16008)

(declare-fun call!36421 () List!16008)

(assert (=> b!832157 (= e!464118 call!36421)))

(declare-fun b!832158 () Bool)

(assert (=> b!832158 (= c!90377 (and ((_ is Cons!16004) (toList!4524 lt!377369)) (bvsgt (_1!5100 (h!17134 (toList!4524 lt!377369))) (_1!5100 lt!377372))))))

(assert (=> b!832158 (= e!464120 e!464118)))

(declare-fun d!106421 () Bool)

(assert (=> d!106421 e!464117))

(declare-fun res!566310 () Bool)

(assert (=> d!106421 (=> (not res!566310) (not e!464117))))

(assert (=> d!106421 (= res!566310 (isStrictlySorted!438 lt!377736))))

(assert (=> d!106421 (= lt!377736 e!464116)))

(declare-fun c!90376 () Bool)

(assert (=> d!106421 (= c!90376 (and ((_ is Cons!16004) (toList!4524 lt!377369)) (bvslt (_1!5100 (h!17134 (toList!4524 lt!377369))) (_1!5100 lt!377372))))))

(assert (=> d!106421 (isStrictlySorted!438 (toList!4524 lt!377369))))

(assert (=> d!106421 (= (insertStrictlySorted!269 (toList!4524 lt!377369) (_1!5100 lt!377372) (_2!5100 lt!377372)) lt!377736)))

(declare-fun b!832159 () Bool)

(assert (=> b!832159 (= e!464118 call!36421)))

(declare-fun bm!36419 () Bool)

(assert (=> bm!36419 (= call!36423 ($colon$colon!536 e!464119 (ite c!90376 (h!17134 (toList!4524 lt!377369)) (tuple2!10181 (_1!5100 lt!377372) (_2!5100 lt!377372)))))))

(declare-fun c!90374 () Bool)

(assert (=> bm!36419 (= c!90374 c!90376)))

(declare-fun bm!36420 () Bool)

(assert (=> bm!36420 (= call!36421 call!36422)))

(declare-fun b!832160 () Bool)

(assert (=> b!832160 (= e!464116 call!36423)))

(assert (= (and d!106421 c!90376) b!832160))

(assert (= (and d!106421 (not c!90376)) b!832154))

(assert (= (and b!832154 c!90375) b!832151))

(assert (= (and b!832154 (not c!90375)) b!832158))

(assert (= (and b!832158 c!90377) b!832157))

(assert (= (and b!832158 (not c!90377)) b!832159))

(assert (= (or b!832157 b!832159) bm!36420))

(assert (= (or b!832151 bm!36420) bm!36418))

(assert (= (or b!832160 bm!36418) bm!36419))

(assert (= (and bm!36419 c!90374) b!832155))

(assert (= (and bm!36419 (not c!90374)) b!832153))

(assert (= (and d!106421 res!566310) b!832152))

(assert (= (and b!832152 res!566309) b!832156))

(declare-fun m!776507 () Bool)

(assert (=> b!832152 m!776507))

(declare-fun m!776509 () Bool)

(assert (=> b!832155 m!776509))

(declare-fun m!776511 () Bool)

(assert (=> d!106421 m!776511))

(assert (=> d!106421 m!776485))

(declare-fun m!776513 () Bool)

(assert (=> b!832156 m!776513))

(declare-fun m!776515 () Bool)

(assert (=> bm!36419 m!776515))

(assert (=> d!106243 d!106421))

(declare-fun d!106423 () Bool)

(assert (=> d!106423 (= (apply!373 lt!377542 (select (arr!22317 _keys!976) #b00000000000000000000000000000000)) (get!11829 (getValueByKey!415 (toList!4524 lt!377542) (select (arr!22317 _keys!976) #b00000000000000000000000000000000))))))

(declare-fun bs!23269 () Bool)

(assert (= bs!23269 d!106423))

(assert (=> bs!23269 m!775697))

(assert (=> bs!23269 m!776169))

(assert (=> bs!23269 m!776169))

(declare-fun m!776517 () Bool)

(assert (=> bs!23269 m!776517))

(assert (=> b!831854 d!106423))

(assert (=> b!831854 d!106323))

(declare-fun d!106425 () Bool)

(declare-fun e!464121 () Bool)

(assert (=> d!106425 e!464121))

(declare-fun res!566311 () Bool)

(assert (=> d!106425 (=> res!566311 e!464121)))

(declare-fun lt!377740 () Bool)

(assert (=> d!106425 (= res!566311 (not lt!377740))))

(declare-fun lt!377737 () Bool)

(assert (=> d!106425 (= lt!377740 lt!377737)))

(declare-fun lt!377739 () Unit!28497)

(declare-fun e!464122 () Unit!28497)

(assert (=> d!106425 (= lt!377739 e!464122)))

(declare-fun c!90378 () Bool)

(assert (=> d!106425 (= c!90378 lt!377737)))

(assert (=> d!106425 (= lt!377737 (containsKey!401 (toList!4524 lt!377533) (_1!5100 lt!377371)))))

(assert (=> d!106425 (= (contains!4212 lt!377533 (_1!5100 lt!377371)) lt!377740)))

(declare-fun b!832161 () Bool)

(declare-fun lt!377738 () Unit!28497)

(assert (=> b!832161 (= e!464122 lt!377738)))

(assert (=> b!832161 (= lt!377738 (lemmaContainsKeyImpliesGetValueByKeyDefined!311 (toList!4524 lt!377533) (_1!5100 lt!377371)))))

(assert (=> b!832161 (isDefined!312 (getValueByKey!415 (toList!4524 lt!377533) (_1!5100 lt!377371)))))

(declare-fun b!832162 () Bool)

(declare-fun Unit!28520 () Unit!28497)

(assert (=> b!832162 (= e!464122 Unit!28520)))

(declare-fun b!832163 () Bool)

(assert (=> b!832163 (= e!464121 (isDefined!312 (getValueByKey!415 (toList!4524 lt!377533) (_1!5100 lt!377371))))))

(assert (= (and d!106425 c!90378) b!832161))

(assert (= (and d!106425 (not c!90378)) b!832162))

(assert (= (and d!106425 (not res!566311)) b!832163))

(declare-fun m!776519 () Bool)

(assert (=> d!106425 m!776519))

(declare-fun m!776521 () Bool)

(assert (=> b!832161 m!776521))

(assert (=> b!832161 m!775887))

(assert (=> b!832161 m!775887))

(declare-fun m!776523 () Bool)

(assert (=> b!832161 m!776523))

(assert (=> b!832163 m!775887))

(assert (=> b!832163 m!775887))

(assert (=> b!832163 m!776523))

(assert (=> d!106249 d!106425))

(declare-fun d!106427 () Bool)

(declare-fun c!90379 () Bool)

(assert (=> d!106427 (= c!90379 (and ((_ is Cons!16004) lt!377535) (= (_1!5100 (h!17134 lt!377535)) (_1!5100 lt!377371))))))

(declare-fun e!464123 () Option!421)

(assert (=> d!106427 (= (getValueByKey!415 lt!377535 (_1!5100 lt!377371)) e!464123)))

(declare-fun b!832164 () Bool)

(assert (=> b!832164 (= e!464123 (Some!420 (_2!5100 (h!17134 lt!377535))))))

(declare-fun b!832167 () Bool)

(declare-fun e!464124 () Option!421)

(assert (=> b!832167 (= e!464124 None!419)))

(declare-fun b!832165 () Bool)

(assert (=> b!832165 (= e!464123 e!464124)))

(declare-fun c!90380 () Bool)

(assert (=> b!832165 (= c!90380 (and ((_ is Cons!16004) lt!377535) (not (= (_1!5100 (h!17134 lt!377535)) (_1!5100 lt!377371)))))))

(declare-fun b!832166 () Bool)

(assert (=> b!832166 (= e!464124 (getValueByKey!415 (t!22384 lt!377535) (_1!5100 lt!377371)))))

(assert (= (and d!106427 c!90379) b!832164))

(assert (= (and d!106427 (not c!90379)) b!832165))

(assert (= (and b!832165 c!90380) b!832166))

(assert (= (and b!832165 (not c!90380)) b!832167))

(declare-fun m!776525 () Bool)

(assert (=> b!832166 m!776525))

(assert (=> d!106249 d!106427))

(declare-fun d!106429 () Bool)

(assert (=> d!106429 (= (getValueByKey!415 lt!377535 (_1!5100 lt!377371)) (Some!420 (_2!5100 lt!377371)))))

(declare-fun lt!377741 () Unit!28497)

(assert (=> d!106429 (= lt!377741 (choose!1433 lt!377535 (_1!5100 lt!377371) (_2!5100 lt!377371)))))

(declare-fun e!464125 () Bool)

(assert (=> d!106429 e!464125))

(declare-fun res!566312 () Bool)

(assert (=> d!106429 (=> (not res!566312) (not e!464125))))

(assert (=> d!106429 (= res!566312 (isStrictlySorted!438 lt!377535))))

(assert (=> d!106429 (= (lemmaContainsTupThenGetReturnValue!231 lt!377535 (_1!5100 lt!377371) (_2!5100 lt!377371)) lt!377741)))

(declare-fun b!832168 () Bool)

(declare-fun res!566313 () Bool)

(assert (=> b!832168 (=> (not res!566313) (not e!464125))))

(assert (=> b!832168 (= res!566313 (containsKey!401 lt!377535 (_1!5100 lt!377371)))))

(declare-fun b!832169 () Bool)

(assert (=> b!832169 (= e!464125 (contains!4213 lt!377535 (tuple2!10181 (_1!5100 lt!377371) (_2!5100 lt!377371))))))

(assert (= (and d!106429 res!566312) b!832168))

(assert (= (and b!832168 res!566313) b!832169))

(assert (=> d!106429 m!775881))

(declare-fun m!776527 () Bool)

(assert (=> d!106429 m!776527))

(declare-fun m!776529 () Bool)

(assert (=> d!106429 m!776529))

(declare-fun m!776531 () Bool)

(assert (=> b!832168 m!776531))

(declare-fun m!776533 () Bool)

(assert (=> b!832169 m!776533))

(assert (=> d!106249 d!106429))

(declare-fun b!832170 () Bool)

(declare-fun e!464130 () List!16008)

(declare-fun call!36425 () List!16008)

(assert (=> b!832170 (= e!464130 call!36425)))

(declare-fun b!832171 () Bool)

(declare-fun res!566314 () Bool)

(declare-fun e!464127 () Bool)

(assert (=> b!832171 (=> (not res!566314) (not e!464127))))

(declare-fun lt!377742 () List!16008)

(assert (=> b!832171 (= res!566314 (containsKey!401 lt!377742 (_1!5100 lt!377371)))))

(declare-fun c!90384 () Bool)

(declare-fun b!832172 () Bool)

(declare-fun e!464129 () List!16008)

(declare-fun c!90382 () Bool)

(assert (=> b!832172 (= e!464129 (ite c!90382 (t!22384 (toList!4524 lt!377373)) (ite c!90384 (Cons!16004 (h!17134 (toList!4524 lt!377373)) (t!22384 (toList!4524 lt!377373))) Nil!16005)))))

(declare-fun b!832173 () Bool)

(declare-fun e!464126 () List!16008)

(assert (=> b!832173 (= e!464126 e!464130)))

(assert (=> b!832173 (= c!90382 (and ((_ is Cons!16004) (toList!4524 lt!377373)) (= (_1!5100 (h!17134 (toList!4524 lt!377373))) (_1!5100 lt!377371))))))

(declare-fun b!832174 () Bool)

(assert (=> b!832174 (= e!464129 (insertStrictlySorted!269 (t!22384 (toList!4524 lt!377373)) (_1!5100 lt!377371) (_2!5100 lt!377371)))))

(declare-fun bm!36421 () Bool)

(declare-fun call!36426 () List!16008)

(assert (=> bm!36421 (= call!36425 call!36426)))

(declare-fun b!832175 () Bool)

(assert (=> b!832175 (= e!464127 (contains!4213 lt!377742 (tuple2!10181 (_1!5100 lt!377371) (_2!5100 lt!377371))))))

(declare-fun b!832176 () Bool)

(declare-fun e!464128 () List!16008)

(declare-fun call!36424 () List!16008)

(assert (=> b!832176 (= e!464128 call!36424)))

(declare-fun b!832177 () Bool)

(assert (=> b!832177 (= c!90384 (and ((_ is Cons!16004) (toList!4524 lt!377373)) (bvsgt (_1!5100 (h!17134 (toList!4524 lt!377373))) (_1!5100 lt!377371))))))

(assert (=> b!832177 (= e!464130 e!464128)))

(declare-fun d!106431 () Bool)

(assert (=> d!106431 e!464127))

(declare-fun res!566315 () Bool)

(assert (=> d!106431 (=> (not res!566315) (not e!464127))))

(assert (=> d!106431 (= res!566315 (isStrictlySorted!438 lt!377742))))

(assert (=> d!106431 (= lt!377742 e!464126)))

(declare-fun c!90383 () Bool)

(assert (=> d!106431 (= c!90383 (and ((_ is Cons!16004) (toList!4524 lt!377373)) (bvslt (_1!5100 (h!17134 (toList!4524 lt!377373))) (_1!5100 lt!377371))))))

(assert (=> d!106431 (isStrictlySorted!438 (toList!4524 lt!377373))))

(assert (=> d!106431 (= (insertStrictlySorted!269 (toList!4524 lt!377373) (_1!5100 lt!377371) (_2!5100 lt!377371)) lt!377742)))

(declare-fun b!832178 () Bool)

(assert (=> b!832178 (= e!464128 call!36424)))

(declare-fun bm!36422 () Bool)

(assert (=> bm!36422 (= call!36426 ($colon$colon!536 e!464129 (ite c!90383 (h!17134 (toList!4524 lt!377373)) (tuple2!10181 (_1!5100 lt!377371) (_2!5100 lt!377371)))))))

(declare-fun c!90381 () Bool)

(assert (=> bm!36422 (= c!90381 c!90383)))

(declare-fun bm!36423 () Bool)

(assert (=> bm!36423 (= call!36424 call!36425)))

(declare-fun b!832179 () Bool)

(assert (=> b!832179 (= e!464126 call!36426)))

(assert (= (and d!106431 c!90383) b!832179))

(assert (= (and d!106431 (not c!90383)) b!832173))

(assert (= (and b!832173 c!90382) b!832170))

(assert (= (and b!832173 (not c!90382)) b!832177))

(assert (= (and b!832177 c!90384) b!832176))

(assert (= (and b!832177 (not c!90384)) b!832178))

(assert (= (or b!832176 b!832178) bm!36423))

(assert (= (or b!832170 bm!36423) bm!36421))

(assert (= (or b!832179 bm!36421) bm!36422))

(assert (= (and bm!36422 c!90381) b!832174))

(assert (= (and bm!36422 (not c!90381)) b!832172))

(assert (= (and d!106431 res!566315) b!832171))

(assert (= (and b!832171 res!566314) b!832175))

(declare-fun m!776535 () Bool)

(assert (=> b!832171 m!776535))

(declare-fun m!776537 () Bool)

(assert (=> b!832174 m!776537))

(declare-fun m!776539 () Bool)

(assert (=> d!106431 m!776539))

(assert (=> d!106431 m!776111))

(declare-fun m!776541 () Bool)

(assert (=> b!832175 m!776541))

(declare-fun m!776543 () Bool)

(assert (=> bm!36422 m!776543))

(assert (=> d!106249 d!106431))

(declare-fun d!106433 () Bool)

(assert (=> d!106433 (= (apply!373 lt!377508 #b0000000000000000000000000000000000000000000000000000000000000000) (get!11829 (getValueByKey!415 (toList!4524 lt!377508) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!23270 () Bool)

(assert (= bs!23270 d!106433))

(declare-fun m!776545 () Bool)

(assert (=> bs!23270 m!776545))

(assert (=> bs!23270 m!776545))

(declare-fun m!776547 () Bool)

(assert (=> bs!23270 m!776547))

(assert (=> b!831821 d!106433))

(declare-fun d!106435 () Bool)

(declare-fun e!464131 () Bool)

(assert (=> d!106435 e!464131))

(declare-fun res!566317 () Bool)

(assert (=> d!106435 (=> (not res!566317) (not e!464131))))

(declare-fun lt!377743 () ListLongMap!9017)

(assert (=> d!106435 (= res!566317 (contains!4212 lt!377743 (_1!5100 (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))

(declare-fun lt!377745 () List!16008)

(assert (=> d!106435 (= lt!377743 (ListLongMap!9018 lt!377745))))

(declare-fun lt!377746 () Unit!28497)

(declare-fun lt!377744 () Unit!28497)

(assert (=> d!106435 (= lt!377746 lt!377744)))

(assert (=> d!106435 (= (getValueByKey!415 lt!377745 (_1!5100 (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))) (Some!420 (_2!5100 (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))

(assert (=> d!106435 (= lt!377744 (lemmaContainsTupThenGetReturnValue!231 lt!377745 (_1!5100 (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)) (_2!5100 (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))

(assert (=> d!106435 (= lt!377745 (insertStrictlySorted!269 (toList!4524 call!36396) (_1!5100 (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)) (_2!5100 (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))

(assert (=> d!106435 (= (+!1952 call!36396 (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)) lt!377743)))

(declare-fun b!832180 () Bool)

(declare-fun res!566316 () Bool)

(assert (=> b!832180 (=> (not res!566316) (not e!464131))))

(assert (=> b!832180 (= res!566316 (= (getValueByKey!415 (toList!4524 lt!377743) (_1!5100 (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))) (Some!420 (_2!5100 (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))))))

(declare-fun b!832181 () Bool)

(assert (=> b!832181 (= e!464131 (contains!4213 (toList!4524 lt!377743) (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))))

(assert (= (and d!106435 res!566317) b!832180))

(assert (= (and b!832180 res!566316) b!832181))

(declare-fun m!776549 () Bool)

(assert (=> d!106435 m!776549))

(declare-fun m!776551 () Bool)

(assert (=> d!106435 m!776551))

(declare-fun m!776553 () Bool)

(assert (=> d!106435 m!776553))

(declare-fun m!776555 () Bool)

(assert (=> d!106435 m!776555))

(declare-fun m!776557 () Bool)

(assert (=> b!832180 m!776557))

(declare-fun m!776559 () Bool)

(assert (=> b!832181 m!776559))

(assert (=> b!831843 d!106435))

(declare-fun d!106437 () Bool)

(declare-fun c!90385 () Bool)

(assert (=> d!106437 (= c!90385 (and ((_ is Cons!16004) (toList!4524 lt!377529)) (= (_1!5100 (h!17134 (toList!4524 lt!377529))) (_1!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))))))

(declare-fun e!464132 () Option!421)

(assert (=> d!106437 (= (getValueByKey!415 (toList!4524 lt!377529) (_1!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))) e!464132)))

(declare-fun b!832182 () Bool)

(assert (=> b!832182 (= e!464132 (Some!420 (_2!5100 (h!17134 (toList!4524 lt!377529)))))))

(declare-fun b!832185 () Bool)

(declare-fun e!464133 () Option!421)

(assert (=> b!832185 (= e!464133 None!419)))

(declare-fun b!832183 () Bool)

(assert (=> b!832183 (= e!464132 e!464133)))

(declare-fun c!90386 () Bool)

(assert (=> b!832183 (= c!90386 (and ((_ is Cons!16004) (toList!4524 lt!377529)) (not (= (_1!5100 (h!17134 (toList!4524 lt!377529))) (_1!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))))))

(declare-fun b!832184 () Bool)

(assert (=> b!832184 (= e!464133 (getValueByKey!415 (t!22384 (toList!4524 lt!377529)) (_1!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))))

(assert (= (and d!106437 c!90385) b!832182))

(assert (= (and d!106437 (not c!90385)) b!832183))

(assert (= (and b!832183 c!90386) b!832184))

(assert (= (and b!832183 (not c!90386)) b!832185))

(declare-fun m!776561 () Bool)

(assert (=> b!832184 m!776561))

(assert (=> b!831830 d!106437))

(declare-fun d!106439 () Bool)

(declare-fun e!464134 () Bool)

(assert (=> d!106439 e!464134))

(declare-fun res!566319 () Bool)

(assert (=> d!106439 (=> (not res!566319) (not e!464134))))

(declare-fun lt!377747 () ListLongMap!9017)

(assert (=> d!106439 (= res!566319 (contains!4212 lt!377747 (_1!5100 (tuple2!10181 (select (arr!22317 _keys!976) #b00000000000000000000000000000000) (get!11828 (select (arr!22318 _values!788) #b00000000000000000000000000000000) (dynLambda!983 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun lt!377749 () List!16008)

(assert (=> d!106439 (= lt!377747 (ListLongMap!9018 lt!377749))))

(declare-fun lt!377750 () Unit!28497)

(declare-fun lt!377748 () Unit!28497)

(assert (=> d!106439 (= lt!377750 lt!377748)))

(assert (=> d!106439 (= (getValueByKey!415 lt!377749 (_1!5100 (tuple2!10181 (select (arr!22317 _keys!976) #b00000000000000000000000000000000) (get!11828 (select (arr!22318 _values!788) #b00000000000000000000000000000000) (dynLambda!983 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!420 (_2!5100 (tuple2!10181 (select (arr!22317 _keys!976) #b00000000000000000000000000000000) (get!11828 (select (arr!22318 _values!788) #b00000000000000000000000000000000) (dynLambda!983 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!106439 (= lt!377748 (lemmaContainsTupThenGetReturnValue!231 lt!377749 (_1!5100 (tuple2!10181 (select (arr!22317 _keys!976) #b00000000000000000000000000000000) (get!11828 (select (arr!22318 _values!788) #b00000000000000000000000000000000) (dynLambda!983 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!5100 (tuple2!10181 (select (arr!22317 _keys!976) #b00000000000000000000000000000000) (get!11828 (select (arr!22318 _values!788) #b00000000000000000000000000000000) (dynLambda!983 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!106439 (= lt!377749 (insertStrictlySorted!269 (toList!4524 call!36367) (_1!5100 (tuple2!10181 (select (arr!22317 _keys!976) #b00000000000000000000000000000000) (get!11828 (select (arr!22318 _values!788) #b00000000000000000000000000000000) (dynLambda!983 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!5100 (tuple2!10181 (select (arr!22317 _keys!976) #b00000000000000000000000000000000) (get!11828 (select (arr!22318 _values!788) #b00000000000000000000000000000000) (dynLambda!983 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!106439 (= (+!1952 call!36367 (tuple2!10181 (select (arr!22317 _keys!976) #b00000000000000000000000000000000) (get!11828 (select (arr!22318 _values!788) #b00000000000000000000000000000000) (dynLambda!983 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))) lt!377747)))

(declare-fun b!832186 () Bool)

(declare-fun res!566318 () Bool)

(assert (=> b!832186 (=> (not res!566318) (not e!464134))))

(assert (=> b!832186 (= res!566318 (= (getValueByKey!415 (toList!4524 lt!377747) (_1!5100 (tuple2!10181 (select (arr!22317 _keys!976) #b00000000000000000000000000000000) (get!11828 (select (arr!22318 _values!788) #b00000000000000000000000000000000) (dynLambda!983 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!420 (_2!5100 (tuple2!10181 (select (arr!22317 _keys!976) #b00000000000000000000000000000000) (get!11828 (select (arr!22318 _values!788) #b00000000000000000000000000000000) (dynLambda!983 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun b!832187 () Bool)

(assert (=> b!832187 (= e!464134 (contains!4213 (toList!4524 lt!377747) (tuple2!10181 (select (arr!22317 _keys!976) #b00000000000000000000000000000000) (get!11828 (select (arr!22318 _values!788) #b00000000000000000000000000000000) (dynLambda!983 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (= (and d!106439 res!566319) b!832186))

(assert (= (and b!832186 res!566318) b!832187))

(declare-fun m!776563 () Bool)

(assert (=> d!106439 m!776563))

(declare-fun m!776565 () Bool)

(assert (=> d!106439 m!776565))

(declare-fun m!776567 () Bool)

(assert (=> d!106439 m!776567))

(declare-fun m!776569 () Bool)

(assert (=> d!106439 m!776569))

(declare-fun m!776571 () Bool)

(assert (=> b!832186 m!776571))

(declare-fun m!776573 () Bool)

(assert (=> b!832187 m!776573))

(assert (=> b!831737 d!106439))

(assert (=> b!831737 d!106323))

(declare-fun d!106441 () Bool)

(assert (=> d!106441 (not (contains!4212 (+!1952 lt!377441 (tuple2!10181 lt!377438 lt!377443)) lt!377439))))

(declare-fun lt!377753 () Unit!28497)

(declare-fun choose!1434 (ListLongMap!9017 (_ BitVec 64) V!25285 (_ BitVec 64)) Unit!28497)

(assert (=> d!106441 (= lt!377753 (choose!1434 lt!377441 lt!377438 lt!377443 lt!377439))))

(declare-fun e!464137 () Bool)

(assert (=> d!106441 e!464137))

(declare-fun res!566322 () Bool)

(assert (=> d!106441 (=> (not res!566322) (not e!464137))))

(assert (=> d!106441 (= res!566322 (not (contains!4212 lt!377441 lt!377439)))))

(assert (=> d!106441 (= (addStillNotContains!200 lt!377441 lt!377438 lt!377443 lt!377439) lt!377753)))

(declare-fun b!832191 () Bool)

(assert (=> b!832191 (= e!464137 (not (= lt!377438 lt!377439)))))

(assert (= (and d!106441 res!566322) b!832191))

(assert (=> d!106441 m!775743))

(assert (=> d!106441 m!775743))

(assert (=> d!106441 m!775751))

(declare-fun m!776575 () Bool)

(assert (=> d!106441 m!776575))

(declare-fun m!776577 () Bool)

(assert (=> d!106441 m!776577))

(assert (=> b!831737 d!106441))

(declare-fun d!106443 () Bool)

(declare-fun e!464138 () Bool)

(assert (=> d!106443 e!464138))

(declare-fun res!566324 () Bool)

(assert (=> d!106443 (=> (not res!566324) (not e!464138))))

(declare-fun lt!377754 () ListLongMap!9017)

(assert (=> d!106443 (= res!566324 (contains!4212 lt!377754 (_1!5100 (tuple2!10181 lt!377438 lt!377443))))))

(declare-fun lt!377756 () List!16008)

(assert (=> d!106443 (= lt!377754 (ListLongMap!9018 lt!377756))))

(declare-fun lt!377757 () Unit!28497)

(declare-fun lt!377755 () Unit!28497)

(assert (=> d!106443 (= lt!377757 lt!377755)))

(assert (=> d!106443 (= (getValueByKey!415 lt!377756 (_1!5100 (tuple2!10181 lt!377438 lt!377443))) (Some!420 (_2!5100 (tuple2!10181 lt!377438 lt!377443))))))

(assert (=> d!106443 (= lt!377755 (lemmaContainsTupThenGetReturnValue!231 lt!377756 (_1!5100 (tuple2!10181 lt!377438 lt!377443)) (_2!5100 (tuple2!10181 lt!377438 lt!377443))))))

(assert (=> d!106443 (= lt!377756 (insertStrictlySorted!269 (toList!4524 lt!377441) (_1!5100 (tuple2!10181 lt!377438 lt!377443)) (_2!5100 (tuple2!10181 lt!377438 lt!377443))))))

(assert (=> d!106443 (= (+!1952 lt!377441 (tuple2!10181 lt!377438 lt!377443)) lt!377754)))

(declare-fun b!832192 () Bool)

(declare-fun res!566323 () Bool)

(assert (=> b!832192 (=> (not res!566323) (not e!464138))))

(assert (=> b!832192 (= res!566323 (= (getValueByKey!415 (toList!4524 lt!377754) (_1!5100 (tuple2!10181 lt!377438 lt!377443))) (Some!420 (_2!5100 (tuple2!10181 lt!377438 lt!377443)))))))

(declare-fun b!832193 () Bool)

(assert (=> b!832193 (= e!464138 (contains!4213 (toList!4524 lt!377754) (tuple2!10181 lt!377438 lt!377443)))))

(assert (= (and d!106443 res!566324) b!832192))

(assert (= (and b!832192 res!566323) b!832193))

(declare-fun m!776579 () Bool)

(assert (=> d!106443 m!776579))

(declare-fun m!776581 () Bool)

(assert (=> d!106443 m!776581))

(declare-fun m!776583 () Bool)

(assert (=> d!106443 m!776583))

(declare-fun m!776585 () Bool)

(assert (=> d!106443 m!776585))

(declare-fun m!776587 () Bool)

(assert (=> b!832192 m!776587))

(declare-fun m!776589 () Bool)

(assert (=> b!832193 m!776589))

(assert (=> b!831737 d!106443))

(declare-fun d!106445 () Bool)

(declare-fun e!464139 () Bool)

(assert (=> d!106445 e!464139))

(declare-fun res!566325 () Bool)

(assert (=> d!106445 (=> res!566325 e!464139)))

(declare-fun lt!377761 () Bool)

(assert (=> d!106445 (= res!566325 (not lt!377761))))

(declare-fun lt!377758 () Bool)

(assert (=> d!106445 (= lt!377761 lt!377758)))

(declare-fun lt!377760 () Unit!28497)

(declare-fun e!464140 () Unit!28497)

(assert (=> d!106445 (= lt!377760 e!464140)))

(declare-fun c!90387 () Bool)

(assert (=> d!106445 (= c!90387 lt!377758)))

(assert (=> d!106445 (= lt!377758 (containsKey!401 (toList!4524 (+!1952 lt!377441 (tuple2!10181 lt!377438 lt!377443))) lt!377439))))

(assert (=> d!106445 (= (contains!4212 (+!1952 lt!377441 (tuple2!10181 lt!377438 lt!377443)) lt!377439) lt!377761)))

(declare-fun b!832194 () Bool)

(declare-fun lt!377759 () Unit!28497)

(assert (=> b!832194 (= e!464140 lt!377759)))

(assert (=> b!832194 (= lt!377759 (lemmaContainsKeyImpliesGetValueByKeyDefined!311 (toList!4524 (+!1952 lt!377441 (tuple2!10181 lt!377438 lt!377443))) lt!377439))))

(assert (=> b!832194 (isDefined!312 (getValueByKey!415 (toList!4524 (+!1952 lt!377441 (tuple2!10181 lt!377438 lt!377443))) lt!377439))))

(declare-fun b!832195 () Bool)

(declare-fun Unit!28521 () Unit!28497)

(assert (=> b!832195 (= e!464140 Unit!28521)))

(declare-fun b!832196 () Bool)

(assert (=> b!832196 (= e!464139 (isDefined!312 (getValueByKey!415 (toList!4524 (+!1952 lt!377441 (tuple2!10181 lt!377438 lt!377443))) lt!377439)))))

(assert (= (and d!106445 c!90387) b!832194))

(assert (= (and d!106445 (not c!90387)) b!832195))

(assert (= (and d!106445 (not res!566325)) b!832196))

(declare-fun m!776591 () Bool)

(assert (=> d!106445 m!776591))

(declare-fun m!776593 () Bool)

(assert (=> b!832194 m!776593))

(declare-fun m!776595 () Bool)

(assert (=> b!832194 m!776595))

(assert (=> b!832194 m!776595))

(declare-fun m!776597 () Bool)

(assert (=> b!832194 m!776597))

(assert (=> b!832196 m!776595))

(assert (=> b!832196 m!776595))

(assert (=> b!832196 m!776597))

(assert (=> b!831737 d!106445))

(declare-fun d!106447 () Bool)

(declare-fun c!90388 () Bool)

(assert (=> d!106447 (= c!90388 (and ((_ is Cons!16004) (toList!4524 lt!377455)) (= (_1!5100 (h!17134 (toList!4524 lt!377455))) (_1!5100 lt!377371))))))

(declare-fun e!464141 () Option!421)

(assert (=> d!106447 (= (getValueByKey!415 (toList!4524 lt!377455) (_1!5100 lt!377371)) e!464141)))

(declare-fun b!832197 () Bool)

(assert (=> b!832197 (= e!464141 (Some!420 (_2!5100 (h!17134 (toList!4524 lt!377455)))))))

(declare-fun b!832200 () Bool)

(declare-fun e!464142 () Option!421)

(assert (=> b!832200 (= e!464142 None!419)))

(declare-fun b!832198 () Bool)

(assert (=> b!832198 (= e!464141 e!464142)))

(declare-fun c!90389 () Bool)

(assert (=> b!832198 (= c!90389 (and ((_ is Cons!16004) (toList!4524 lt!377455)) (not (= (_1!5100 (h!17134 (toList!4524 lt!377455))) (_1!5100 lt!377371)))))))

(declare-fun b!832199 () Bool)

(assert (=> b!832199 (= e!464142 (getValueByKey!415 (t!22384 (toList!4524 lt!377455)) (_1!5100 lt!377371)))))

(assert (= (and d!106447 c!90388) b!832197))

(assert (= (and d!106447 (not c!90388)) b!832198))

(assert (= (and b!832198 c!90389) b!832199))

(assert (= (and b!832198 (not c!90389)) b!832200))

(declare-fun m!776599 () Bool)

(assert (=> b!832199 m!776599))

(assert (=> b!831763 d!106447))

(declare-fun d!106449 () Bool)

(declare-fun c!90390 () Bool)

(assert (=> d!106449 (= c!90390 (and ((_ is Cons!16004) (toList!4524 lt!377459)) (= (_1!5100 (h!17134 (toList!4524 lt!377459))) (_1!5100 lt!377372))))))

(declare-fun e!464143 () Option!421)

(assert (=> d!106449 (= (getValueByKey!415 (toList!4524 lt!377459) (_1!5100 lt!377372)) e!464143)))

(declare-fun b!832201 () Bool)

(assert (=> b!832201 (= e!464143 (Some!420 (_2!5100 (h!17134 (toList!4524 lt!377459)))))))

(declare-fun b!832204 () Bool)

(declare-fun e!464144 () Option!421)

(assert (=> b!832204 (= e!464144 None!419)))

(declare-fun b!832202 () Bool)

(assert (=> b!832202 (= e!464143 e!464144)))

(declare-fun c!90391 () Bool)

(assert (=> b!832202 (= c!90391 (and ((_ is Cons!16004) (toList!4524 lt!377459)) (not (= (_1!5100 (h!17134 (toList!4524 lt!377459))) (_1!5100 lt!377372)))))))

(declare-fun b!832203 () Bool)

(assert (=> b!832203 (= e!464144 (getValueByKey!415 (t!22384 (toList!4524 lt!377459)) (_1!5100 lt!377372)))))

(assert (= (and d!106449 c!90390) b!832201))

(assert (= (and d!106449 (not c!90390)) b!832202))

(assert (= (and b!832202 c!90391) b!832203))

(assert (= (and b!832202 (not c!90391)) b!832204))

(declare-fun m!776601 () Bool)

(assert (=> b!832203 m!776601))

(assert (=> b!831765 d!106449))

(declare-fun d!106451 () Bool)

(declare-fun c!90392 () Bool)

(assert (=> d!106451 (= c!90392 (and ((_ is Cons!16004) (toList!4524 lt!377533)) (= (_1!5100 (h!17134 (toList!4524 lt!377533))) (_1!5100 lt!377371))))))

(declare-fun e!464145 () Option!421)

(assert (=> d!106451 (= (getValueByKey!415 (toList!4524 lt!377533) (_1!5100 lt!377371)) e!464145)))

(declare-fun b!832205 () Bool)

(assert (=> b!832205 (= e!464145 (Some!420 (_2!5100 (h!17134 (toList!4524 lt!377533)))))))

(declare-fun b!832208 () Bool)

(declare-fun e!464146 () Option!421)

(assert (=> b!832208 (= e!464146 None!419)))

(declare-fun b!832206 () Bool)

(assert (=> b!832206 (= e!464145 e!464146)))

(declare-fun c!90393 () Bool)

(assert (=> b!832206 (= c!90393 (and ((_ is Cons!16004) (toList!4524 lt!377533)) (not (= (_1!5100 (h!17134 (toList!4524 lt!377533))) (_1!5100 lt!377371)))))))

(declare-fun b!832207 () Bool)

(assert (=> b!832207 (= e!464146 (getValueByKey!415 (t!22384 (toList!4524 lt!377533)) (_1!5100 lt!377371)))))

(assert (= (and d!106451 c!90392) b!832205))

(assert (= (and d!106451 (not c!90392)) b!832206))

(assert (= (and b!832206 c!90393) b!832207))

(assert (= (and b!832206 (not c!90393)) b!832208))

(declare-fun m!776603 () Bool)

(assert (=> b!832207 m!776603))

(assert (=> b!831832 d!106451))

(declare-fun d!106453 () Bool)

(assert (=> d!106453 (= (apply!373 lt!377508 (select (arr!22317 _keys!976) #b00000000000000000000000000000000)) (get!11829 (getValueByKey!415 (toList!4524 lt!377508) (select (arr!22317 _keys!976) #b00000000000000000000000000000000))))))

(declare-fun bs!23271 () Bool)

(assert (= bs!23271 d!106453))

(assert (=> bs!23271 m!775697))

(assert (=> bs!23271 m!776335))

(assert (=> bs!23271 m!776335))

(declare-fun m!776605 () Bool)

(assert (=> bs!23271 m!776605))

(assert (=> b!831827 d!106453))

(assert (=> b!831827 d!106323))

(assert (=> d!106253 d!106233))

(declare-fun d!106455 () Bool)

(assert (=> d!106455 (= (apply!373 lt!377508 #b1000000000000000000000000000000000000000000000000000000000000000) (get!11829 (getValueByKey!415 (toList!4524 lt!377508) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!23272 () Bool)

(assert (= bs!23272 d!106455))

(assert (=> bs!23272 m!776297))

(assert (=> bs!23272 m!776297))

(declare-fun m!776607 () Bool)

(assert (=> bs!23272 m!776607))

(assert (=> b!831823 d!106455))

(assert (=> b!831749 d!106309))

(assert (=> b!831825 d!106309))

(declare-fun d!106457 () Bool)

(declare-fun e!464147 () Bool)

(assert (=> d!106457 e!464147))

(declare-fun res!566326 () Bool)

(assert (=> d!106457 (=> res!566326 e!464147)))

(declare-fun lt!377765 () Bool)

(assert (=> d!106457 (= res!566326 (not lt!377765))))

(declare-fun lt!377762 () Bool)

(assert (=> d!106457 (= lt!377765 lt!377762)))

(declare-fun lt!377764 () Unit!28497)

(declare-fun e!464148 () Unit!28497)

(assert (=> d!106457 (= lt!377764 e!464148)))

(declare-fun c!90394 () Bool)

(assert (=> d!106457 (= c!90394 lt!377762)))

(assert (=> d!106457 (= lt!377762 (containsKey!401 (toList!4524 (+!1952 lt!377448 (tuple2!10181 lt!377445 lt!377450))) lt!377446))))

(assert (=> d!106457 (= (contains!4212 (+!1952 lt!377448 (tuple2!10181 lt!377445 lt!377450)) lt!377446) lt!377765)))

(declare-fun b!832209 () Bool)

(declare-fun lt!377763 () Unit!28497)

(assert (=> b!832209 (= e!464148 lt!377763)))

(assert (=> b!832209 (= lt!377763 (lemmaContainsKeyImpliesGetValueByKeyDefined!311 (toList!4524 (+!1952 lt!377448 (tuple2!10181 lt!377445 lt!377450))) lt!377446))))

(assert (=> b!832209 (isDefined!312 (getValueByKey!415 (toList!4524 (+!1952 lt!377448 (tuple2!10181 lt!377445 lt!377450))) lt!377446))))

(declare-fun b!832210 () Bool)

(declare-fun Unit!28522 () Unit!28497)

(assert (=> b!832210 (= e!464148 Unit!28522)))

(declare-fun b!832211 () Bool)

(assert (=> b!832211 (= e!464147 (isDefined!312 (getValueByKey!415 (toList!4524 (+!1952 lt!377448 (tuple2!10181 lt!377445 lt!377450))) lt!377446)))))

(assert (= (and d!106457 c!90394) b!832209))

(assert (= (and d!106457 (not c!90394)) b!832210))

(assert (= (and d!106457 (not res!566326)) b!832211))

(declare-fun m!776609 () Bool)

(assert (=> d!106457 m!776609))

(declare-fun m!776611 () Bool)

(assert (=> b!832209 m!776611))

(declare-fun m!776613 () Bool)

(assert (=> b!832209 m!776613))

(assert (=> b!832209 m!776613))

(declare-fun m!776615 () Bool)

(assert (=> b!832209 m!776615))

(assert (=> b!832211 m!776613))

(assert (=> b!832211 m!776613))

(assert (=> b!832211 m!776615))

(assert (=> b!831751 d!106457))

(assert (=> b!831751 d!106323))

(declare-fun d!106459 () Bool)

(assert (=> d!106459 (not (contains!4212 (+!1952 lt!377448 (tuple2!10181 lt!377445 lt!377450)) lt!377446))))

(declare-fun lt!377766 () Unit!28497)

(assert (=> d!106459 (= lt!377766 (choose!1434 lt!377448 lt!377445 lt!377450 lt!377446))))

(declare-fun e!464149 () Bool)

(assert (=> d!106459 e!464149))

(declare-fun res!566327 () Bool)

(assert (=> d!106459 (=> (not res!566327) (not e!464149))))

(assert (=> d!106459 (= res!566327 (not (contains!4212 lt!377448 lt!377446)))))

(assert (=> d!106459 (= (addStillNotContains!200 lt!377448 lt!377445 lt!377450 lt!377446) lt!377766)))

(declare-fun b!832212 () Bool)

(assert (=> b!832212 (= e!464149 (not (= lt!377445 lt!377446)))))

(assert (= (and d!106459 res!566327) b!832212))

(assert (=> d!106459 m!775769))

(assert (=> d!106459 m!775769))

(assert (=> d!106459 m!775771))

(declare-fun m!776617 () Bool)

(assert (=> d!106459 m!776617))

(declare-fun m!776619 () Bool)

(assert (=> d!106459 m!776619))

(assert (=> b!831751 d!106459))

(declare-fun d!106461 () Bool)

(declare-fun e!464150 () Bool)

(assert (=> d!106461 e!464150))

(declare-fun res!566329 () Bool)

(assert (=> d!106461 (=> (not res!566329) (not e!464150))))

(declare-fun lt!377767 () ListLongMap!9017)

(assert (=> d!106461 (= res!566329 (contains!4212 lt!377767 (_1!5100 (tuple2!10181 lt!377445 lt!377450))))))

(declare-fun lt!377769 () List!16008)

(assert (=> d!106461 (= lt!377767 (ListLongMap!9018 lt!377769))))

(declare-fun lt!377770 () Unit!28497)

(declare-fun lt!377768 () Unit!28497)

(assert (=> d!106461 (= lt!377770 lt!377768)))

(assert (=> d!106461 (= (getValueByKey!415 lt!377769 (_1!5100 (tuple2!10181 lt!377445 lt!377450))) (Some!420 (_2!5100 (tuple2!10181 lt!377445 lt!377450))))))

(assert (=> d!106461 (= lt!377768 (lemmaContainsTupThenGetReturnValue!231 lt!377769 (_1!5100 (tuple2!10181 lt!377445 lt!377450)) (_2!5100 (tuple2!10181 lt!377445 lt!377450))))))

(assert (=> d!106461 (= lt!377769 (insertStrictlySorted!269 (toList!4524 lt!377448) (_1!5100 (tuple2!10181 lt!377445 lt!377450)) (_2!5100 (tuple2!10181 lt!377445 lt!377450))))))

(assert (=> d!106461 (= (+!1952 lt!377448 (tuple2!10181 lt!377445 lt!377450)) lt!377767)))

(declare-fun b!832213 () Bool)

(declare-fun res!566328 () Bool)

(assert (=> b!832213 (=> (not res!566328) (not e!464150))))

(assert (=> b!832213 (= res!566328 (= (getValueByKey!415 (toList!4524 lt!377767) (_1!5100 (tuple2!10181 lt!377445 lt!377450))) (Some!420 (_2!5100 (tuple2!10181 lt!377445 lt!377450)))))))

(declare-fun b!832214 () Bool)

(assert (=> b!832214 (= e!464150 (contains!4213 (toList!4524 lt!377767) (tuple2!10181 lt!377445 lt!377450)))))

(assert (= (and d!106461 res!566329) b!832213))

(assert (= (and b!832213 res!566328) b!832214))

(declare-fun m!776621 () Bool)

(assert (=> d!106461 m!776621))

(declare-fun m!776623 () Bool)

(assert (=> d!106461 m!776623))

(declare-fun m!776625 () Bool)

(assert (=> d!106461 m!776625))

(declare-fun m!776627 () Bool)

(assert (=> d!106461 m!776627))

(declare-fun m!776629 () Bool)

(assert (=> b!832213 m!776629))

(declare-fun m!776631 () Bool)

(assert (=> b!832214 m!776631))

(assert (=> b!831751 d!106461))

(declare-fun d!106463 () Bool)

(declare-fun e!464151 () Bool)

(assert (=> d!106463 e!464151))

(declare-fun res!566331 () Bool)

(assert (=> d!106463 (=> (not res!566331) (not e!464151))))

(declare-fun lt!377771 () ListLongMap!9017)

(assert (=> d!106463 (= res!566331 (contains!4212 lt!377771 (_1!5100 (tuple2!10181 (select (arr!22317 _keys!976) #b00000000000000000000000000000000) (get!11828 (select (arr!22318 _values!788) #b00000000000000000000000000000000) (dynLambda!983 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun lt!377773 () List!16008)

(assert (=> d!106463 (= lt!377771 (ListLongMap!9018 lt!377773))))

(declare-fun lt!377774 () Unit!28497)

(declare-fun lt!377772 () Unit!28497)

(assert (=> d!106463 (= lt!377774 lt!377772)))

(assert (=> d!106463 (= (getValueByKey!415 lt!377773 (_1!5100 (tuple2!10181 (select (arr!22317 _keys!976) #b00000000000000000000000000000000) (get!11828 (select (arr!22318 _values!788) #b00000000000000000000000000000000) (dynLambda!983 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!420 (_2!5100 (tuple2!10181 (select (arr!22317 _keys!976) #b00000000000000000000000000000000) (get!11828 (select (arr!22318 _values!788) #b00000000000000000000000000000000) (dynLambda!983 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!106463 (= lt!377772 (lemmaContainsTupThenGetReturnValue!231 lt!377773 (_1!5100 (tuple2!10181 (select (arr!22317 _keys!976) #b00000000000000000000000000000000) (get!11828 (select (arr!22318 _values!788) #b00000000000000000000000000000000) (dynLambda!983 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!5100 (tuple2!10181 (select (arr!22317 _keys!976) #b00000000000000000000000000000000) (get!11828 (select (arr!22318 _values!788) #b00000000000000000000000000000000) (dynLambda!983 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!106463 (= lt!377773 (insertStrictlySorted!269 (toList!4524 call!36368) (_1!5100 (tuple2!10181 (select (arr!22317 _keys!976) #b00000000000000000000000000000000) (get!11828 (select (arr!22318 _values!788) #b00000000000000000000000000000000) (dynLambda!983 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!5100 (tuple2!10181 (select (arr!22317 _keys!976) #b00000000000000000000000000000000) (get!11828 (select (arr!22318 _values!788) #b00000000000000000000000000000000) (dynLambda!983 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!106463 (= (+!1952 call!36368 (tuple2!10181 (select (arr!22317 _keys!976) #b00000000000000000000000000000000) (get!11828 (select (arr!22318 _values!788) #b00000000000000000000000000000000) (dynLambda!983 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))) lt!377771)))

(declare-fun b!832215 () Bool)

(declare-fun res!566330 () Bool)

(assert (=> b!832215 (=> (not res!566330) (not e!464151))))

(assert (=> b!832215 (= res!566330 (= (getValueByKey!415 (toList!4524 lt!377771) (_1!5100 (tuple2!10181 (select (arr!22317 _keys!976) #b00000000000000000000000000000000) (get!11828 (select (arr!22318 _values!788) #b00000000000000000000000000000000) (dynLambda!983 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!420 (_2!5100 (tuple2!10181 (select (arr!22317 _keys!976) #b00000000000000000000000000000000) (get!11828 (select (arr!22318 _values!788) #b00000000000000000000000000000000) (dynLambda!983 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun b!832216 () Bool)

(assert (=> b!832216 (= e!464151 (contains!4213 (toList!4524 lt!377771) (tuple2!10181 (select (arr!22317 _keys!976) #b00000000000000000000000000000000) (get!11828 (select (arr!22318 _values!788) #b00000000000000000000000000000000) (dynLambda!983 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (= (and d!106463 res!566331) b!832215))

(assert (= (and b!832215 res!566330) b!832216))

(declare-fun m!776633 () Bool)

(assert (=> d!106463 m!776633))

(declare-fun m!776635 () Bool)

(assert (=> d!106463 m!776635))

(declare-fun m!776637 () Bool)

(assert (=> d!106463 m!776637))

(declare-fun m!776639 () Bool)

(assert (=> d!106463 m!776639))

(declare-fun m!776641 () Bool)

(assert (=> b!832215 m!776641))

(declare-fun m!776643 () Bool)

(assert (=> b!832216 m!776643))

(assert (=> b!831751 d!106463))

(declare-fun d!106465 () Bool)

(declare-fun e!464152 () Bool)

(assert (=> d!106465 e!464152))

(declare-fun res!566332 () Bool)

(assert (=> d!106465 (=> res!566332 e!464152)))

(declare-fun lt!377778 () Bool)

(assert (=> d!106465 (= res!566332 (not lt!377778))))

(declare-fun lt!377775 () Bool)

(assert (=> d!106465 (= lt!377778 lt!377775)))

(declare-fun lt!377777 () Unit!28497)

(declare-fun e!464153 () Unit!28497)

(assert (=> d!106465 (= lt!377777 e!464153)))

(declare-fun c!90395 () Bool)

(assert (=> d!106465 (= c!90395 lt!377775)))

(assert (=> d!106465 (= lt!377775 (containsKey!401 (toList!4524 lt!377403) (_1!5100 lt!377371)))))

(assert (=> d!106465 (= (contains!4212 lt!377403 (_1!5100 lt!377371)) lt!377778)))

(declare-fun b!832217 () Bool)

(declare-fun lt!377776 () Unit!28497)

(assert (=> b!832217 (= e!464153 lt!377776)))

(assert (=> b!832217 (= lt!377776 (lemmaContainsKeyImpliesGetValueByKeyDefined!311 (toList!4524 lt!377403) (_1!5100 lt!377371)))))

(assert (=> b!832217 (isDefined!312 (getValueByKey!415 (toList!4524 lt!377403) (_1!5100 lt!377371)))))

(declare-fun b!832218 () Bool)

(declare-fun Unit!28523 () Unit!28497)

(assert (=> b!832218 (= e!464153 Unit!28523)))

(declare-fun b!832219 () Bool)

(assert (=> b!832219 (= e!464152 (isDefined!312 (getValueByKey!415 (toList!4524 lt!377403) (_1!5100 lt!377371))))))

(assert (= (and d!106465 c!90395) b!832217))

(assert (= (and d!106465 (not c!90395)) b!832218))

(assert (= (and d!106465 (not res!566332)) b!832219))

(declare-fun m!776645 () Bool)

(assert (=> d!106465 m!776645))

(declare-fun m!776647 () Bool)

(assert (=> b!832217 m!776647))

(assert (=> b!832217 m!775713))

(assert (=> b!832217 m!775713))

(declare-fun m!776649 () Bool)

(assert (=> b!832217 m!776649))

(assert (=> b!832219 m!775713))

(assert (=> b!832219 m!775713))

(assert (=> b!832219 m!776649))

(assert (=> d!106221 d!106465))

(declare-fun d!106467 () Bool)

(declare-fun c!90396 () Bool)

(assert (=> d!106467 (= c!90396 (and ((_ is Cons!16004) lt!377405) (= (_1!5100 (h!17134 lt!377405)) (_1!5100 lt!377371))))))

(declare-fun e!464154 () Option!421)

(assert (=> d!106467 (= (getValueByKey!415 lt!377405 (_1!5100 lt!377371)) e!464154)))

(declare-fun b!832220 () Bool)

(assert (=> b!832220 (= e!464154 (Some!420 (_2!5100 (h!17134 lt!377405))))))

(declare-fun b!832223 () Bool)

(declare-fun e!464155 () Option!421)

(assert (=> b!832223 (= e!464155 None!419)))

(declare-fun b!832221 () Bool)

(assert (=> b!832221 (= e!464154 e!464155)))

(declare-fun c!90397 () Bool)

(assert (=> b!832221 (= c!90397 (and ((_ is Cons!16004) lt!377405) (not (= (_1!5100 (h!17134 lt!377405)) (_1!5100 lt!377371)))))))

(declare-fun b!832222 () Bool)

(assert (=> b!832222 (= e!464155 (getValueByKey!415 (t!22384 lt!377405) (_1!5100 lt!377371)))))

(assert (= (and d!106467 c!90396) b!832220))

(assert (= (and d!106467 (not c!90396)) b!832221))

(assert (= (and b!832221 c!90397) b!832222))

(assert (= (and b!832221 (not c!90397)) b!832223))

(declare-fun m!776651 () Bool)

(assert (=> b!832222 m!776651))

(assert (=> d!106221 d!106467))

(declare-fun d!106469 () Bool)

(assert (=> d!106469 (= (getValueByKey!415 lt!377405 (_1!5100 lt!377371)) (Some!420 (_2!5100 lt!377371)))))

(declare-fun lt!377779 () Unit!28497)

(assert (=> d!106469 (= lt!377779 (choose!1433 lt!377405 (_1!5100 lt!377371) (_2!5100 lt!377371)))))

(declare-fun e!464156 () Bool)

(assert (=> d!106469 e!464156))

(declare-fun res!566333 () Bool)

(assert (=> d!106469 (=> (not res!566333) (not e!464156))))

(assert (=> d!106469 (= res!566333 (isStrictlySorted!438 lt!377405))))

(assert (=> d!106469 (= (lemmaContainsTupThenGetReturnValue!231 lt!377405 (_1!5100 lt!377371) (_2!5100 lt!377371)) lt!377779)))

(declare-fun b!832224 () Bool)

(declare-fun res!566334 () Bool)

(assert (=> b!832224 (=> (not res!566334) (not e!464156))))

(assert (=> b!832224 (= res!566334 (containsKey!401 lt!377405 (_1!5100 lt!377371)))))

(declare-fun b!832225 () Bool)

(assert (=> b!832225 (= e!464156 (contains!4213 lt!377405 (tuple2!10181 (_1!5100 lt!377371) (_2!5100 lt!377371))))))

(assert (= (and d!106469 res!566333) b!832224))

(assert (= (and b!832224 res!566334) b!832225))

(assert (=> d!106469 m!775707))

(declare-fun m!776653 () Bool)

(assert (=> d!106469 m!776653))

(declare-fun m!776655 () Bool)

(assert (=> d!106469 m!776655))

(declare-fun m!776657 () Bool)

(assert (=> b!832224 m!776657))

(declare-fun m!776659 () Bool)

(assert (=> b!832225 m!776659))

(assert (=> d!106221 d!106469))

(declare-fun b!832226 () Bool)

(declare-fun e!464161 () List!16008)

(declare-fun call!36428 () List!16008)

(assert (=> b!832226 (= e!464161 call!36428)))

(declare-fun b!832227 () Bool)

(declare-fun res!566335 () Bool)

(declare-fun e!464158 () Bool)

(assert (=> b!832227 (=> (not res!566335) (not e!464158))))

(declare-fun lt!377780 () List!16008)

(assert (=> b!832227 (= res!566335 (containsKey!401 lt!377780 (_1!5100 lt!377371)))))

(declare-fun b!832228 () Bool)

(declare-fun c!90399 () Bool)

(declare-fun c!90401 () Bool)

(declare-fun e!464160 () List!16008)

(assert (=> b!832228 (= e!464160 (ite c!90399 (t!22384 (toList!4524 (+!1952 lt!377373 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))) (ite c!90401 (Cons!16004 (h!17134 (toList!4524 (+!1952 lt!377373 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))) (t!22384 (toList!4524 (+!1952 lt!377373 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))) Nil!16005)))))

(declare-fun b!832229 () Bool)

(declare-fun e!464157 () List!16008)

(assert (=> b!832229 (= e!464157 e!464161)))

(assert (=> b!832229 (= c!90399 (and ((_ is Cons!16004) (toList!4524 (+!1952 lt!377373 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))) (= (_1!5100 (h!17134 (toList!4524 (+!1952 lt!377373 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))) (_1!5100 lt!377371))))))

(declare-fun b!832230 () Bool)

(assert (=> b!832230 (= e!464160 (insertStrictlySorted!269 (t!22384 (toList!4524 (+!1952 lt!377373 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))) (_1!5100 lt!377371) (_2!5100 lt!377371)))))

(declare-fun bm!36424 () Bool)

(declare-fun call!36429 () List!16008)

(assert (=> bm!36424 (= call!36428 call!36429)))

(declare-fun b!832231 () Bool)

(assert (=> b!832231 (= e!464158 (contains!4213 lt!377780 (tuple2!10181 (_1!5100 lt!377371) (_2!5100 lt!377371))))))

(declare-fun b!832232 () Bool)

(declare-fun e!464159 () List!16008)

(declare-fun call!36427 () List!16008)

(assert (=> b!832232 (= e!464159 call!36427)))

(declare-fun b!832233 () Bool)

(assert (=> b!832233 (= c!90401 (and ((_ is Cons!16004) (toList!4524 (+!1952 lt!377373 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))) (bvsgt (_1!5100 (h!17134 (toList!4524 (+!1952 lt!377373 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))) (_1!5100 lt!377371))))))

(assert (=> b!832233 (= e!464161 e!464159)))

(declare-fun d!106471 () Bool)

(assert (=> d!106471 e!464158))

(declare-fun res!566336 () Bool)

(assert (=> d!106471 (=> (not res!566336) (not e!464158))))

(assert (=> d!106471 (= res!566336 (isStrictlySorted!438 lt!377780))))

(assert (=> d!106471 (= lt!377780 e!464157)))

(declare-fun c!90400 () Bool)

(assert (=> d!106471 (= c!90400 (and ((_ is Cons!16004) (toList!4524 (+!1952 lt!377373 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))) (bvslt (_1!5100 (h!17134 (toList!4524 (+!1952 lt!377373 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))) (_1!5100 lt!377371))))))

(assert (=> d!106471 (isStrictlySorted!438 (toList!4524 (+!1952 lt!377373 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))))

(assert (=> d!106471 (= (insertStrictlySorted!269 (toList!4524 (+!1952 lt!377373 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))) (_1!5100 lt!377371) (_2!5100 lt!377371)) lt!377780)))

(declare-fun b!832234 () Bool)

(assert (=> b!832234 (= e!464159 call!36427)))

(declare-fun bm!36425 () Bool)

(assert (=> bm!36425 (= call!36429 ($colon$colon!536 e!464160 (ite c!90400 (h!17134 (toList!4524 (+!1952 lt!377373 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))) (tuple2!10181 (_1!5100 lt!377371) (_2!5100 lt!377371)))))))

(declare-fun c!90398 () Bool)

(assert (=> bm!36425 (= c!90398 c!90400)))

(declare-fun bm!36426 () Bool)

(assert (=> bm!36426 (= call!36427 call!36428)))

(declare-fun b!832235 () Bool)

(assert (=> b!832235 (= e!464157 call!36429)))

(assert (= (and d!106471 c!90400) b!832235))

(assert (= (and d!106471 (not c!90400)) b!832229))

(assert (= (and b!832229 c!90399) b!832226))

(assert (= (and b!832229 (not c!90399)) b!832233))

(assert (= (and b!832233 c!90401) b!832232))

(assert (= (and b!832233 (not c!90401)) b!832234))

(assert (= (or b!832232 b!832234) bm!36426))

(assert (= (or b!832226 bm!36426) bm!36424))

(assert (= (or b!832235 bm!36424) bm!36425))

(assert (= (and bm!36425 c!90398) b!832230))

(assert (= (and bm!36425 (not c!90398)) b!832228))

(assert (= (and d!106471 res!566336) b!832227))

(assert (= (and b!832227 res!566335) b!832231))

(declare-fun m!776661 () Bool)

(assert (=> b!832227 m!776661))

(declare-fun m!776663 () Bool)

(assert (=> b!832230 m!776663))

(declare-fun m!776665 () Bool)

(assert (=> d!106471 m!776665))

(declare-fun m!776667 () Bool)

(assert (=> d!106471 m!776667))

(declare-fun m!776669 () Bool)

(assert (=> b!832231 m!776669))

(declare-fun m!776671 () Bool)

(assert (=> bm!36425 m!776671))

(assert (=> d!106221 d!106471))

(declare-fun d!106473 () Bool)

(declare-fun e!464162 () Bool)

(assert (=> d!106473 e!464162))

(declare-fun res!566337 () Bool)

(assert (=> d!106473 (=> res!566337 e!464162)))

(declare-fun lt!377784 () Bool)

(assert (=> d!106473 (= res!566337 (not lt!377784))))

(declare-fun lt!377781 () Bool)

(assert (=> d!106473 (= lt!377784 lt!377781)))

(declare-fun lt!377783 () Unit!28497)

(declare-fun e!464163 () Unit!28497)

(assert (=> d!106473 (= lt!377783 e!464163)))

(declare-fun c!90402 () Bool)

(assert (=> d!106473 (= c!90402 lt!377781)))

(assert (=> d!106473 (= lt!377781 (containsKey!401 (toList!4524 lt!377542) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!106473 (= (contains!4212 lt!377542 #b0000000000000000000000000000000000000000000000000000000000000000) lt!377784)))

(declare-fun b!832236 () Bool)

(declare-fun lt!377782 () Unit!28497)

(assert (=> b!832236 (= e!464163 lt!377782)))

(assert (=> b!832236 (= lt!377782 (lemmaContainsKeyImpliesGetValueByKeyDefined!311 (toList!4524 lt!377542) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!832236 (isDefined!312 (getValueByKey!415 (toList!4524 lt!377542) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!832237 () Bool)

(declare-fun Unit!28524 () Unit!28497)

(assert (=> b!832237 (= e!464163 Unit!28524)))

(declare-fun b!832238 () Bool)

(assert (=> b!832238 (= e!464162 (isDefined!312 (getValueByKey!415 (toList!4524 lt!377542) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!106473 c!90402) b!832236))

(assert (= (and d!106473 (not c!90402)) b!832237))

(assert (= (and d!106473 (not res!566337)) b!832238))

(declare-fun m!776673 () Bool)

(assert (=> d!106473 m!776673))

(declare-fun m!776675 () Bool)

(assert (=> b!832236 m!776675))

(assert (=> b!832236 m!776173))

(assert (=> b!832236 m!776173))

(declare-fun m!776677 () Bool)

(assert (=> b!832236 m!776677))

(assert (=> b!832238 m!776173))

(assert (=> b!832238 m!776173))

(assert (=> b!832238 m!776677))

(assert (=> bm!36388 d!106473))

(declare-fun d!106475 () Bool)

(declare-fun c!90403 () Bool)

(assert (=> d!106475 (= c!90403 (and ((_ is Cons!16004) (toList!4524 lt!377451)) (= (_1!5100 (h!17134 (toList!4524 lt!377451))) (_1!5100 lt!377372))))))

(declare-fun e!464164 () Option!421)

(assert (=> d!106475 (= (getValueByKey!415 (toList!4524 lt!377451) (_1!5100 lt!377372)) e!464164)))

(declare-fun b!832239 () Bool)

(assert (=> b!832239 (= e!464164 (Some!420 (_2!5100 (h!17134 (toList!4524 lt!377451)))))))

(declare-fun b!832242 () Bool)

(declare-fun e!464165 () Option!421)

(assert (=> b!832242 (= e!464165 None!419)))

(declare-fun b!832240 () Bool)

(assert (=> b!832240 (= e!464164 e!464165)))

(declare-fun c!90404 () Bool)

(assert (=> b!832240 (= c!90404 (and ((_ is Cons!16004) (toList!4524 lt!377451)) (not (= (_1!5100 (h!17134 (toList!4524 lt!377451))) (_1!5100 lt!377372)))))))

(declare-fun b!832241 () Bool)

(assert (=> b!832241 (= e!464165 (getValueByKey!415 (t!22384 (toList!4524 lt!377451)) (_1!5100 lt!377372)))))

(assert (= (and d!106475 c!90403) b!832239))

(assert (= (and d!106475 (not c!90403)) b!832240))

(assert (= (and b!832240 c!90404) b!832241))

(assert (= (and b!832240 (not c!90404)) b!832242))

(declare-fun m!776679 () Bool)

(assert (=> b!832241 m!776679))

(assert (=> b!831761 d!106475))

(declare-fun d!106477 () Bool)

(declare-fun e!464166 () Bool)

(assert (=> d!106477 e!464166))

(declare-fun res!566338 () Bool)

(assert (=> d!106477 (=> res!566338 e!464166)))

(declare-fun lt!377788 () Bool)

(assert (=> d!106477 (= res!566338 (not lt!377788))))

(declare-fun lt!377785 () Bool)

(assert (=> d!106477 (= lt!377788 lt!377785)))

(declare-fun lt!377787 () Unit!28497)

(declare-fun e!464167 () Unit!28497)

(assert (=> d!106477 (= lt!377787 e!464167)))

(declare-fun c!90405 () Bool)

(assert (=> d!106477 (= c!90405 lt!377785)))

(assert (=> d!106477 (= lt!377785 (containsKey!401 (toList!4524 lt!377442) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!106477 (= (contains!4212 lt!377442 #b0000000000000000000000000000000000000000000000000000000000000000) lt!377788)))

(declare-fun b!832243 () Bool)

(declare-fun lt!377786 () Unit!28497)

(assert (=> b!832243 (= e!464167 lt!377786)))

(assert (=> b!832243 (= lt!377786 (lemmaContainsKeyImpliesGetValueByKeyDefined!311 (toList!4524 lt!377442) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!832243 (isDefined!312 (getValueByKey!415 (toList!4524 lt!377442) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!832244 () Bool)

(declare-fun Unit!28525 () Unit!28497)

(assert (=> b!832244 (= e!464167 Unit!28525)))

(declare-fun b!832245 () Bool)

(assert (=> b!832245 (= e!464166 (isDefined!312 (getValueByKey!415 (toList!4524 lt!377442) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!106477 c!90405) b!832243))

(assert (= (and d!106477 (not c!90405)) b!832244))

(assert (= (and d!106477 (not res!566338)) b!832245))

(declare-fun m!776681 () Bool)

(assert (=> d!106477 m!776681))

(declare-fun m!776683 () Bool)

(assert (=> b!832243 m!776683))

(declare-fun m!776685 () Bool)

(assert (=> b!832243 m!776685))

(assert (=> b!832243 m!776685))

(declare-fun m!776687 () Bool)

(assert (=> b!832243 m!776687))

(assert (=> b!832245 m!776685))

(assert (=> b!832245 m!776685))

(assert (=> b!832245 m!776687))

(assert (=> d!106229 d!106477))

(assert (=> d!106229 d!106233))

(assert (=> b!831735 d!106309))

(assert (=> d!106227 d!106231))

(assert (=> d!106227 d!106229))

(declare-fun d!106479 () Bool)

(assert (=> d!106479 (= (getCurrentListMapNoExtraKeys!2523 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) (getCurrentListMapNoExtraKeys!2523 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> d!106479 true))

(declare-fun _$13!49 () Unit!28497)

(assert (=> d!106479 (= (choose!1430 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) _$13!49)))

(declare-fun bs!23273 () Bool)

(assert (= bs!23273 d!106479))

(assert (=> bs!23273 m!775639))

(assert (=> bs!23273 m!775637))

(assert (=> d!106227 d!106479))

(assert (=> d!106227 d!106233))

(declare-fun d!106481 () Bool)

(declare-fun e!464168 () Bool)

(assert (=> d!106481 e!464168))

(declare-fun res!566339 () Bool)

(assert (=> d!106481 (=> res!566339 e!464168)))

(declare-fun lt!377792 () Bool)

(assert (=> d!106481 (= res!566339 (not lt!377792))))

(declare-fun lt!377789 () Bool)

(assert (=> d!106481 (= lt!377792 lt!377789)))

(declare-fun lt!377791 () Unit!28497)

(declare-fun e!464169 () Unit!28497)

(assert (=> d!106481 (= lt!377791 e!464169)))

(declare-fun c!90406 () Bool)

(assert (=> d!106481 (= c!90406 lt!377789)))

(assert (=> d!106481 (= lt!377789 (containsKey!401 (toList!4524 lt!377508) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!106481 (= (contains!4212 lt!377508 #b0000000000000000000000000000000000000000000000000000000000000000) lt!377792)))

(declare-fun b!832246 () Bool)

(declare-fun lt!377790 () Unit!28497)

(assert (=> b!832246 (= e!464169 lt!377790)))

(assert (=> b!832246 (= lt!377790 (lemmaContainsKeyImpliesGetValueByKeyDefined!311 (toList!4524 lt!377508) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!832246 (isDefined!312 (getValueByKey!415 (toList!4524 lt!377508) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!832247 () Bool)

(declare-fun Unit!28526 () Unit!28497)

(assert (=> b!832247 (= e!464169 Unit!28526)))

(declare-fun b!832248 () Bool)

(assert (=> b!832248 (= e!464168 (isDefined!312 (getValueByKey!415 (toList!4524 lt!377508) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!106481 c!90406) b!832246))

(assert (= (and d!106481 (not c!90406)) b!832247))

(assert (= (and d!106481 (not res!566339)) b!832248))

(declare-fun m!776689 () Bool)

(assert (=> d!106481 m!776689))

(declare-fun m!776691 () Bool)

(assert (=> b!832246 m!776691))

(assert (=> b!832246 m!776545))

(assert (=> b!832246 m!776545))

(declare-fun m!776693 () Bool)

(assert (=> b!832246 m!776693))

(assert (=> b!832248 m!776545))

(assert (=> b!832248 m!776545))

(assert (=> b!832248 m!776693))

(assert (=> bm!36381 d!106481))

(declare-fun d!106483 () Bool)

(declare-fun lt!377795 () Bool)

(declare-fun content!391 (List!16009) (InoxSet (_ BitVec 64)))

(assert (=> d!106483 (= lt!377795 (select (content!391 Nil!16006) (select (arr!22317 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun e!464175 () Bool)

(assert (=> d!106483 (= lt!377795 e!464175)))

(declare-fun res!566345 () Bool)

(assert (=> d!106483 (=> (not res!566345) (not e!464175))))

(assert (=> d!106483 (= res!566345 ((_ is Cons!16005) Nil!16006))))

(assert (=> d!106483 (= (contains!4211 Nil!16006 (select (arr!22317 _keys!976) #b00000000000000000000000000000000)) lt!377795)))

(declare-fun b!832253 () Bool)

(declare-fun e!464174 () Bool)

(assert (=> b!832253 (= e!464175 e!464174)))

(declare-fun res!566344 () Bool)

(assert (=> b!832253 (=> res!566344 e!464174)))

(assert (=> b!832253 (= res!566344 (= (h!17135 Nil!16006) (select (arr!22317 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun b!832254 () Bool)

(assert (=> b!832254 (= e!464174 (contains!4211 (t!22385 Nil!16006) (select (arr!22317 _keys!976) #b00000000000000000000000000000000)))))

(assert (= (and d!106483 res!566345) b!832253))

(assert (= (and b!832253 (not res!566344)) b!832254))

(declare-fun m!776695 () Bool)

(assert (=> d!106483 m!776695))

(assert (=> d!106483 m!775697))

(declare-fun m!776697 () Bool)

(assert (=> d!106483 m!776697))

(assert (=> b!832254 m!775697))

(declare-fun m!776699 () Bool)

(assert (=> b!832254 m!776699))

(assert (=> b!831686 d!106483))

(assert (=> bm!36365 d!106359))

(declare-fun d!106485 () Bool)

(declare-fun isEmpty!663 (List!16008) Bool)

(assert (=> d!106485 (= (isEmpty!662 lt!377449) (isEmpty!663 (toList!4524 lt!377449)))))

(declare-fun bs!23274 () Bool)

(assert (= bs!23274 d!106485))

(declare-fun m!776701 () Bool)

(assert (=> bs!23274 m!776701))

(assert (=> b!831758 d!106485))

(declare-fun d!106487 () Bool)

(declare-fun e!464176 () Bool)

(assert (=> d!106487 e!464176))

(declare-fun res!566347 () Bool)

(assert (=> d!106487 (=> (not res!566347) (not e!464176))))

(declare-fun lt!377796 () ListLongMap!9017)

(assert (=> d!106487 (= res!566347 (contains!4212 lt!377796 (_1!5100 (ite (or c!90283 c!90285) (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34) (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))))))

(declare-fun lt!377798 () List!16008)

(assert (=> d!106487 (= lt!377796 (ListLongMap!9018 lt!377798))))

(declare-fun lt!377799 () Unit!28497)

(declare-fun lt!377797 () Unit!28497)

(assert (=> d!106487 (= lt!377799 lt!377797)))

(assert (=> d!106487 (= (getValueByKey!415 lt!377798 (_1!5100 (ite (or c!90283 c!90285) (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34) (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))) (Some!420 (_2!5100 (ite (or c!90283 c!90285) (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34) (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))))))

(assert (=> d!106487 (= lt!377797 (lemmaContainsTupThenGetReturnValue!231 lt!377798 (_1!5100 (ite (or c!90283 c!90285) (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34) (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))) (_2!5100 (ite (or c!90283 c!90285) (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34) (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))))))

(assert (=> d!106487 (= lt!377798 (insertStrictlySorted!269 (toList!4524 (ite c!90283 call!36391 (ite c!90285 call!36395 call!36390))) (_1!5100 (ite (or c!90283 c!90285) (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34) (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))) (_2!5100 (ite (or c!90283 c!90285) (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34) (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))))))

(assert (=> d!106487 (= (+!1952 (ite c!90283 call!36391 (ite c!90285 call!36395 call!36390)) (ite (or c!90283 c!90285) (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34) (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))) lt!377796)))

(declare-fun b!832255 () Bool)

(declare-fun res!566346 () Bool)

(assert (=> b!832255 (=> (not res!566346) (not e!464176))))

(assert (=> b!832255 (= res!566346 (= (getValueByKey!415 (toList!4524 lt!377796) (_1!5100 (ite (or c!90283 c!90285) (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34) (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))) (Some!420 (_2!5100 (ite (or c!90283 c!90285) (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34) (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))))

(declare-fun b!832256 () Bool)

(assert (=> b!832256 (= e!464176 (contains!4213 (toList!4524 lt!377796) (ite (or c!90283 c!90285) (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34) (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))

(assert (= (and d!106487 res!566347) b!832255))

(assert (= (and b!832255 res!566346) b!832256))

(declare-fun m!776703 () Bool)

(assert (=> d!106487 m!776703))

(declare-fun m!776705 () Bool)

(assert (=> d!106487 m!776705))

(declare-fun m!776707 () Bool)

(assert (=> d!106487 m!776707))

(declare-fun m!776709 () Bool)

(assert (=> d!106487 m!776709))

(declare-fun m!776711 () Bool)

(assert (=> b!832255 m!776711))

(declare-fun m!776713 () Bool)

(assert (=> b!832256 m!776713))

(assert (=> bm!36390 d!106487))

(assert (=> bm!36364 d!106311))

(assert (=> b!831846 d!106309))

(declare-fun d!106489 () Bool)

(declare-fun c!90407 () Bool)

(assert (=> d!106489 (= c!90407 (and ((_ is Cons!16004) (toList!4524 lt!377537)) (= (_1!5100 (h!17134 (toList!4524 lt!377537))) (_1!5100 lt!377371))))))

(declare-fun e!464177 () Option!421)

(assert (=> d!106489 (= (getValueByKey!415 (toList!4524 lt!377537) (_1!5100 lt!377371)) e!464177)))

(declare-fun b!832257 () Bool)

(assert (=> b!832257 (= e!464177 (Some!420 (_2!5100 (h!17134 (toList!4524 lt!377537)))))))

(declare-fun b!832260 () Bool)

(declare-fun e!464178 () Option!421)

(assert (=> b!832260 (= e!464178 None!419)))

(declare-fun b!832258 () Bool)

(assert (=> b!832258 (= e!464177 e!464178)))

(declare-fun c!90408 () Bool)

(assert (=> b!832258 (= c!90408 (and ((_ is Cons!16004) (toList!4524 lt!377537)) (not (= (_1!5100 (h!17134 (toList!4524 lt!377537))) (_1!5100 lt!377371)))))))

(declare-fun b!832259 () Bool)

(assert (=> b!832259 (= e!464178 (getValueByKey!415 (t!22384 (toList!4524 lt!377537)) (_1!5100 lt!377371)))))

(assert (= (and d!106489 c!90407) b!832257))

(assert (= (and d!106489 (not c!90407)) b!832258))

(assert (= (and b!832258 c!90408) b!832259))

(assert (= (and b!832258 (not c!90408)) b!832260))

(declare-fun m!776715 () Bool)

(assert (=> b!832259 m!776715))

(assert (=> b!831834 d!106489))

(assert (=> b!831746 d!106309))

(assert (=> b!831819 d!106309))

(declare-fun d!106491 () Bool)

(declare-fun lt!377800 () Bool)

(assert (=> d!106491 (= lt!377800 (select (content!390 (toList!4524 lt!377403)) lt!377371))))

(declare-fun e!464179 () Bool)

(assert (=> d!106491 (= lt!377800 e!464179)))

(declare-fun res!566348 () Bool)

(assert (=> d!106491 (=> (not res!566348) (not e!464179))))

(assert (=> d!106491 (= res!566348 ((_ is Cons!16004) (toList!4524 lt!377403)))))

(assert (=> d!106491 (= (contains!4213 (toList!4524 lt!377403) lt!377371) lt!377800)))

(declare-fun b!832261 () Bool)

(declare-fun e!464180 () Bool)

(assert (=> b!832261 (= e!464179 e!464180)))

(declare-fun res!566349 () Bool)

(assert (=> b!832261 (=> res!566349 e!464180)))

(assert (=> b!832261 (= res!566349 (= (h!17134 (toList!4524 lt!377403)) lt!377371))))

(declare-fun b!832262 () Bool)

(assert (=> b!832262 (= e!464180 (contains!4213 (t!22384 (toList!4524 lt!377403)) lt!377371))))

(assert (= (and d!106491 res!566348) b!832261))

(assert (= (and b!832261 (not res!566349)) b!832262))

(declare-fun m!776717 () Bool)

(assert (=> d!106491 m!776717))

(declare-fun m!776719 () Bool)

(assert (=> d!106491 m!776719))

(declare-fun m!776721 () Bool)

(assert (=> b!832262 m!776721))

(assert (=> b!831696 d!106491))

(declare-fun d!106493 () Bool)

(assert (=> d!106493 (= (isEmpty!662 lt!377442) (isEmpty!663 (toList!4524 lt!377442)))))

(declare-fun bs!23275 () Bool)

(assert (= bs!23275 d!106493))

(declare-fun m!776723 () Bool)

(assert (=> bs!23275 m!776723))

(assert (=> b!831744 d!106493))

(declare-fun d!106495 () Bool)

(declare-fun e!464181 () Bool)

(assert (=> d!106495 e!464181))

(declare-fun res!566351 () Bool)

(assert (=> d!106495 (=> (not res!566351) (not e!464181))))

(declare-fun lt!377801 () ListLongMap!9017)

(assert (=> d!106495 (= res!566351 (contains!4212 lt!377801 (_1!5100 (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))

(declare-fun lt!377803 () List!16008)

(assert (=> d!106495 (= lt!377801 (ListLongMap!9018 lt!377803))))

(declare-fun lt!377804 () Unit!28497)

(declare-fun lt!377802 () Unit!28497)

(assert (=> d!106495 (= lt!377804 lt!377802)))

(assert (=> d!106495 (= (getValueByKey!415 lt!377803 (_1!5100 (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))) (Some!420 (_2!5100 (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))

(assert (=> d!106495 (= lt!377802 (lemmaContainsTupThenGetReturnValue!231 lt!377803 (_1!5100 (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)) (_2!5100 (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))

(assert (=> d!106495 (= lt!377803 (insertStrictlySorted!269 (toList!4524 call!36389) (_1!5100 (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)) (_2!5100 (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))

(assert (=> d!106495 (= (+!1952 call!36389 (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)) lt!377801)))

(declare-fun b!832263 () Bool)

(declare-fun res!566350 () Bool)

(assert (=> b!832263 (=> (not res!566350) (not e!464181))))

(assert (=> b!832263 (= res!566350 (= (getValueByKey!415 (toList!4524 lt!377801) (_1!5100 (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))) (Some!420 (_2!5100 (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))))))

(declare-fun b!832264 () Bool)

(assert (=> b!832264 (= e!464181 (contains!4213 (toList!4524 lt!377801) (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))))

(assert (= (and d!106495 res!566351) b!832263))

(assert (= (and b!832263 res!566350) b!832264))

(declare-fun m!776725 () Bool)

(assert (=> d!106495 m!776725))

(declare-fun m!776727 () Bool)

(assert (=> d!106495 m!776727))

(declare-fun m!776729 () Bool)

(assert (=> d!106495 m!776729))

(declare-fun m!776731 () Bool)

(assert (=> d!106495 m!776731))

(declare-fun m!776733 () Bool)

(assert (=> b!832263 m!776733))

(declare-fun m!776735 () Bool)

(assert (=> b!832264 m!776735))

(assert (=> b!831816 d!106495))

(declare-fun d!106497 () Bool)

(declare-fun lt!377805 () Bool)

(assert (=> d!106497 (= lt!377805 (select (content!390 (toList!4524 lt!377407)) (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))))

(declare-fun e!464182 () Bool)

(assert (=> d!106497 (= lt!377805 e!464182)))

(declare-fun res!566352 () Bool)

(assert (=> d!106497 (=> (not res!566352) (not e!464182))))

(assert (=> d!106497 (= res!566352 ((_ is Cons!16004) (toList!4524 lt!377407)))))

(assert (=> d!106497 (= (contains!4213 (toList!4524 lt!377407) (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)) lt!377805)))

(declare-fun b!832265 () Bool)

(declare-fun e!464183 () Bool)

(assert (=> b!832265 (= e!464182 e!464183)))

(declare-fun res!566353 () Bool)

(assert (=> b!832265 (=> res!566353 e!464183)))

(assert (=> b!832265 (= res!566353 (= (h!17134 (toList!4524 lt!377407)) (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))))

(declare-fun b!832266 () Bool)

(assert (=> b!832266 (= e!464183 (contains!4213 (t!22384 (toList!4524 lt!377407)) (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))))

(assert (= (and d!106497 res!566352) b!832265))

(assert (= (and b!832265 (not res!566353)) b!832266))

(declare-fun m!776737 () Bool)

(assert (=> d!106497 m!776737))

(declare-fun m!776739 () Bool)

(assert (=> d!106497 m!776739))

(declare-fun m!776741 () Bool)

(assert (=> b!832266 m!776741))

(assert (=> b!831698 d!106497))

(declare-fun b!832267 () Bool)

(declare-fun e!464186 () Bool)

(declare-fun e!464185 () Bool)

(assert (=> b!832267 (= e!464186 e!464185)))

(declare-fun c!90409 () Bool)

(assert (=> b!832267 (= c!90409 (validKeyInArray!0 (select (arr!22317 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!832268 () Bool)

(declare-fun call!36430 () Bool)

(assert (=> b!832268 (= e!464185 call!36430)))

(declare-fun d!106499 () Bool)

(declare-fun res!566354 () Bool)

(assert (=> d!106499 (=> res!566354 e!464186)))

(assert (=> d!106499 (= res!566354 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!22738 _keys!976)))))

(assert (=> d!106499 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!976 mask!1312) e!464186)))

(declare-fun b!832269 () Bool)

(declare-fun e!464184 () Bool)

(assert (=> b!832269 (= e!464184 call!36430)))

(declare-fun bm!36427 () Bool)

(assert (=> bm!36427 (= call!36430 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) _keys!976 mask!1312))))

(declare-fun b!832270 () Bool)

(assert (=> b!832270 (= e!464185 e!464184)))

(declare-fun lt!377806 () (_ BitVec 64))

(assert (=> b!832270 (= lt!377806 (select (arr!22317 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun lt!377808 () Unit!28497)

(assert (=> b!832270 (= lt!377808 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!976 lt!377806 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (=> b!832270 (arrayContainsKey!0 _keys!976 lt!377806 #b00000000000000000000000000000000)))

(declare-fun lt!377807 () Unit!28497)

(assert (=> b!832270 (= lt!377807 lt!377808)))

(declare-fun res!566355 () Bool)

(assert (=> b!832270 (= res!566355 (= (seekEntryOrOpen!0 (select (arr!22317 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) _keys!976 mask!1312) (Found!8734 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!832270 (=> (not res!566355) (not e!464184))))

(assert (= (and d!106499 (not res!566354)) b!832267))

(assert (= (and b!832267 c!90409) b!832270))

(assert (= (and b!832267 (not c!90409)) b!832268))

(assert (= (and b!832270 res!566355) b!832269))

(assert (= (or b!832269 b!832268) bm!36427))

(assert (=> b!832267 m!776139))

(assert (=> b!832267 m!776139))

(assert (=> b!832267 m!776159))

(declare-fun m!776743 () Bool)

(assert (=> bm!36427 m!776743))

(assert (=> b!832270 m!776139))

(declare-fun m!776745 () Bool)

(assert (=> b!832270 m!776745))

(declare-fun m!776747 () Bool)

(assert (=> b!832270 m!776747))

(assert (=> b!832270 m!776139))

(declare-fun m!776749 () Bool)

(assert (=> b!832270 m!776749))

(assert (=> bm!36361 d!106499))

(assert (=> b!831690 d!106309))

(assert (=> b!831760 d!106309))

(declare-fun b!832271 () Bool)

(declare-fun e!464187 () Bool)

(assert (=> b!832271 (= e!464187 tp_is_empty!15213)))

(declare-fun b!832272 () Bool)

(declare-fun e!464188 () Bool)

(assert (=> b!832272 (= e!464188 tp_is_empty!15213)))

(declare-fun condMapEmpty!24484 () Bool)

(declare-fun mapDefault!24484 () ValueCell!7191)

(assert (=> mapNonEmpty!24483 (= condMapEmpty!24484 (= mapRest!24483 ((as const (Array (_ BitVec 32) ValueCell!7191)) mapDefault!24484)))))

(declare-fun mapRes!24484 () Bool)

(assert (=> mapNonEmpty!24483 (= tp!47310 (and e!464188 mapRes!24484))))

(declare-fun mapIsEmpty!24484 () Bool)

(assert (=> mapIsEmpty!24484 mapRes!24484))

(declare-fun mapNonEmpty!24484 () Bool)

(declare-fun tp!47311 () Bool)

(assert (=> mapNonEmpty!24484 (= mapRes!24484 (and tp!47311 e!464187))))

(declare-fun mapKey!24484 () (_ BitVec 32))

(declare-fun mapRest!24484 () (Array (_ BitVec 32) ValueCell!7191))

(declare-fun mapValue!24484 () ValueCell!7191)

(assert (=> mapNonEmpty!24484 (= mapRest!24483 (store mapRest!24484 mapKey!24484 mapValue!24484))))

(assert (= (and mapNonEmpty!24483 condMapEmpty!24484) mapIsEmpty!24484))

(assert (= (and mapNonEmpty!24483 (not condMapEmpty!24484)) mapNonEmpty!24484))

(assert (= (and mapNonEmpty!24484 ((_ is ValueCellFull!7191) mapValue!24484)) b!832271))

(assert (= (and mapNonEmpty!24483 ((_ is ValueCellFull!7191) mapDefault!24484)) b!832272))

(declare-fun m!776751 () Bool)

(assert (=> mapNonEmpty!24484 m!776751))

(declare-fun b_lambda!11465 () Bool)

(assert (= b_lambda!11457 (or (and start!71606 b_free!13503) b_lambda!11465)))

(declare-fun b_lambda!11467 () Bool)

(assert (= b_lambda!11459 (or (and start!71606 b_free!13503) b_lambda!11467)))

(declare-fun b_lambda!11469 () Bool)

(assert (= b_lambda!11463 (or (and start!71606 b_free!13503) b_lambda!11469)))

(declare-fun b_lambda!11471 () Bool)

(assert (= b_lambda!11461 (or (and start!71606 b_free!13503) b_lambda!11471)))

(check-sat (not b!832050) (not d!106273) (not b_lambda!11455) (not b!832083) (not b!832112) (not d!106463) (not b!831886) (not b!832255) (not d!106481) (not b!832013) (not d!106321) (not b!832041) (not b_next!13503) (not d!106315) (not d!106293) (not b_lambda!11467) (not b!832203) (not d!106363) (not b!832035) (not d!106341) (not b_lambda!11447) (not b!831926) (not d!106407) (not b!832207) (not d!106257) (not b!832245) (not b!832222) (not b!831996) (not b!832156) (not b!832114) (not d!106387) (not d!106421) (not b!831908) (not d!106327) (not b!832196) (not d!106291) (not d!106305) (not b!831981) (not b!832248) (not b!832054) (not b!832040) (not b!831971) (not d!106345) (not d!106459) (not d!106411) (not b!831906) (not b!832225) (not b!832227) (not d!106453) (not b!832199) (not b!832180) (not b!831948) (not b!832046) (not b!831998) (not b!832209) (not d!106339) (not d!106433) (not d!106455) (not b!832056) (not d!106333) (not d!106261) (not b!832118) (not d!106491) (not d!106485) (not b!832211) (not b!832149) (not b!832006) (not b!832002) (not b!832270) (not d!106457) (not d!106469) (not b!831885) (not d!106483) (not b!832231) (not b_lambda!11451) (not d!106405) (not b!832106) (not b!832104) (not d!106435) (not d!106275) (not b!832020) (not b!831883) (not d!106351) (not b!831892) (not b!831872) (not b!832161) (not d!106399) (not b!832152) (not b!832080) (not b!832037) (not b!832215) (not b!832241) (not d!106295) (not bm!36404) (not b!831958) (not d!106313) (not b!832254) (not b!831875) (not b!832193) (not b_lambda!11453) (not b!832224) (not b!832125) (not b!831966) (not d!106269) (not b!832147) (not d!106443) (not b!831990) (not b!832150) (not b!832093) (not b!832213) (not b!832027) (not b!831978) (not b!831894) (not b!832034) (not b!832163) (not b!831951) (not bm!36408) (not d!106431) (not b!831870) (not b!831994) (not d!106359) (not b!832230) (not b!831925) (not b!832015) (not b!831893) (not d!106493) (not b!831897) b_and!22601 (not b_lambda!11445) (not b!831964) (not b!831961) (not b!832194) (not b_lambda!11471) (not b!832123) (not b!832256) (not d!106465) tp_is_empty!15213 (not b!832095) (not b!832009) (not d!106461) (not b!832144) (not d!106373) (not d!106397) (not d!106283) (not b!832246) (not b!832062) (not d!106423) (not d!106357) (not b!832017) (not b!832137) (not b!832024) (not b!832053) (not b!832029) (not b!832263) (not b!832099) (not d!106375) (not b!831974) (not d!106445) (not b!831999) (not bm!36410) (not d!106441) (not d!106439) (not bm!36406) (not d!106331) (not b_lambda!11465) (not d!106329) (not d!106303) (not b!832021) (not d!106335) (not d!106471) (not b!831887) (not b!832109) (not b!832111) (not b!831896) (not b!832007) (not b!832219) (not b!831876) (not b!832169) (not d!106277) (not b!831975) (not b_lambda!11469) (not b!832259) (not b!832000) (not b!832175) (not b!831873) (not d!106301) (not d!106377) (not d!106429) (not d!106413) (not d!106337) (not b!832136) (not b!832187) (not b!832186) (not b!831963) (not b!831952) (not d!106495) (not d!106349) (not d!106381) (not bm!36427) (not d!106425) (not b!831976) (not bm!36401) (not b!832131) (not b!832171) (not d!106473) (not b!832092) (not bm!36419) (not b!832236) (not d!106403) (not b!832238) (not b!832085) (not d!106311) (not b!831997) (not b!832128) (not b!832019) (not d!106307) (not d!106353) (not b!832181) (not d!106395) (not b!832168) (not b!832174) (not b!832023) (not d!106497) (not d!106325) (not d!106343) (not d!106347) (not bm!36413) (not b!832012) (not b!832217) (not b!831989) (not b!832192) (not b!832048) (not b!832216) (not d!106319) (not b!832001) (not b!832098) (not b!831973) (not b!832262) (not b!831889) (not b!832243) (not d!106487) (not b!831919) (not d!106477) (not d!106287) (not b!832133) (not b!832032) (not b!831993) (not b!832184) (not b!832130) (not d!106263) (not d!106365) (not d!106391) (not d!106415) (not b!831905) (not b!831992) (not b!832090) (not b!832266) (not b!831969) (not b!832166) (not d!106369) (not d!106383) (not b!832142) (not d!106299) (not d!106267) (not d!106279) (not d!106281) (not b!832214) (not d!106361) (not b!831869) (not bm!36425) (not b_lambda!11449) (not b!831967) (not d!106419) (not b!832117) (not mapNonEmpty!24484) (not bm!36416) (not d!106285) (not d!106479) (not b!831984) (not bm!36403) (not d!106355) (not b!832087) (not d!106265) (not b!832010) (not b!831891) (not d!106255) (not b!832026) (not b!831899) (not d!106259) (not d!106367) (not d!106271) (not b!831959) (not b!832264) (not d!106289) (not b!832155) (not b!832267) (not bm!36422) (not b!832049))
(check-sat b_and!22601 (not b_next!13503))
(get-model)

(declare-fun c!90410 () Bool)

(declare-fun d!106501 () Bool)

(assert (=> d!106501 (= c!90410 (and ((_ is Cons!16004) (toList!4524 lt!377660)) (= (_1!5100 (h!17134 (toList!4524 lt!377660))) (_1!5100 (tuple2!10181 lt!377516 minValue!754)))))))

(declare-fun e!464189 () Option!421)

(assert (=> d!106501 (= (getValueByKey!415 (toList!4524 lt!377660) (_1!5100 (tuple2!10181 lt!377516 minValue!754))) e!464189)))

(declare-fun b!832273 () Bool)

(assert (=> b!832273 (= e!464189 (Some!420 (_2!5100 (h!17134 (toList!4524 lt!377660)))))))

(declare-fun b!832276 () Bool)

(declare-fun e!464190 () Option!421)

(assert (=> b!832276 (= e!464190 None!419)))

(declare-fun b!832274 () Bool)

(assert (=> b!832274 (= e!464189 e!464190)))

(declare-fun c!90411 () Bool)

(assert (=> b!832274 (= c!90411 (and ((_ is Cons!16004) (toList!4524 lt!377660)) (not (= (_1!5100 (h!17134 (toList!4524 lt!377660))) (_1!5100 (tuple2!10181 lt!377516 minValue!754))))))))

(declare-fun b!832275 () Bool)

(assert (=> b!832275 (= e!464190 (getValueByKey!415 (t!22384 (toList!4524 lt!377660)) (_1!5100 (tuple2!10181 lt!377516 minValue!754))))))

(assert (= (and d!106501 c!90410) b!832273))

(assert (= (and d!106501 (not c!90410)) b!832274))

(assert (= (and b!832274 c!90411) b!832275))

(assert (= (and b!832274 (not c!90411)) b!832276))

(declare-fun m!776753 () Bool)

(assert (=> b!832275 m!776753))

(assert (=> b!831999 d!106501))

(declare-fun d!106503 () Bool)

(declare-fun res!566360 () Bool)

(declare-fun e!464195 () Bool)

(assert (=> d!106503 (=> res!566360 e!464195)))

(assert (=> d!106503 (= res!566360 (and ((_ is Cons!16004) lt!377461) (= (_1!5100 (h!17134 lt!377461)) (_1!5100 lt!377372))))))

(assert (=> d!106503 (= (containsKey!401 lt!377461 (_1!5100 lt!377372)) e!464195)))

(declare-fun b!832281 () Bool)

(declare-fun e!464196 () Bool)

(assert (=> b!832281 (= e!464195 e!464196)))

(declare-fun res!566361 () Bool)

(assert (=> b!832281 (=> (not res!566361) (not e!464196))))

(assert (=> b!832281 (= res!566361 (and (or (not ((_ is Cons!16004) lt!377461)) (bvsle (_1!5100 (h!17134 lt!377461)) (_1!5100 lt!377372))) ((_ is Cons!16004) lt!377461) (bvslt (_1!5100 (h!17134 lt!377461)) (_1!5100 lt!377372))))))

(declare-fun b!832282 () Bool)

(assert (=> b!832282 (= e!464196 (containsKey!401 (t!22384 lt!377461) (_1!5100 lt!377372)))))

(assert (= (and d!106503 (not res!566360)) b!832281))

(assert (= (and b!832281 res!566361) b!832282))

(declare-fun m!776755 () Bool)

(assert (=> b!832282 m!776755))

(assert (=> b!832149 d!106503))

(declare-fun d!106505 () Bool)

(declare-fun res!566362 () Bool)

(declare-fun e!464197 () Bool)

(assert (=> d!106505 (=> res!566362 e!464197)))

(assert (=> d!106505 (= res!566362 (and ((_ is Cons!16004) lt!377692) (= (_1!5100 (h!17134 lt!377692)) (_1!5100 lt!377372))))))

(assert (=> d!106505 (= (containsKey!401 lt!377692 (_1!5100 lt!377372)) e!464197)))

(declare-fun b!832283 () Bool)

(declare-fun e!464198 () Bool)

(assert (=> b!832283 (= e!464197 e!464198)))

(declare-fun res!566363 () Bool)

(assert (=> b!832283 (=> (not res!566363) (not e!464198))))

(assert (=> b!832283 (= res!566363 (and (or (not ((_ is Cons!16004) lt!377692)) (bvsle (_1!5100 (h!17134 lt!377692)) (_1!5100 lt!377372))) ((_ is Cons!16004) lt!377692) (bvslt (_1!5100 (h!17134 lt!377692)) (_1!5100 lt!377372))))))

(declare-fun b!832284 () Bool)

(assert (=> b!832284 (= e!464198 (containsKey!401 (t!22384 lt!377692) (_1!5100 lt!377372)))))

(assert (= (and d!106505 (not res!566362)) b!832283))

(assert (= (and b!832283 res!566363) b!832284))

(declare-fun m!776757 () Bool)

(assert (=> b!832284 m!776757))

(assert (=> b!832037 d!106505))

(declare-fun d!106507 () Bool)

(assert (=> d!106507 (= (get!11829 (getValueByKey!415 (toList!4524 (+!1952 lt!377559 (tuple2!10181 lt!377550 minValue!754))) lt!377562)) (v!10097 (getValueByKey!415 (toList!4524 (+!1952 lt!377559 (tuple2!10181 lt!377550 minValue!754))) lt!377562)))))

(assert (=> d!106273 d!106507))

(declare-fun c!90412 () Bool)

(declare-fun d!106509 () Bool)

(assert (=> d!106509 (= c!90412 (and ((_ is Cons!16004) (toList!4524 (+!1952 lt!377559 (tuple2!10181 lt!377550 minValue!754)))) (= (_1!5100 (h!17134 (toList!4524 (+!1952 lt!377559 (tuple2!10181 lt!377550 minValue!754))))) lt!377562)))))

(declare-fun e!464199 () Option!421)

(assert (=> d!106509 (= (getValueByKey!415 (toList!4524 (+!1952 lt!377559 (tuple2!10181 lt!377550 minValue!754))) lt!377562) e!464199)))

(declare-fun b!832285 () Bool)

(assert (=> b!832285 (= e!464199 (Some!420 (_2!5100 (h!17134 (toList!4524 (+!1952 lt!377559 (tuple2!10181 lt!377550 minValue!754)))))))))

(declare-fun b!832288 () Bool)

(declare-fun e!464200 () Option!421)

(assert (=> b!832288 (= e!464200 None!419)))

(declare-fun b!832286 () Bool)

(assert (=> b!832286 (= e!464199 e!464200)))

(declare-fun c!90413 () Bool)

(assert (=> b!832286 (= c!90413 (and ((_ is Cons!16004) (toList!4524 (+!1952 lt!377559 (tuple2!10181 lt!377550 minValue!754)))) (not (= (_1!5100 (h!17134 (toList!4524 (+!1952 lt!377559 (tuple2!10181 lt!377550 minValue!754))))) lt!377562))))))

(declare-fun b!832287 () Bool)

(assert (=> b!832287 (= e!464200 (getValueByKey!415 (t!22384 (toList!4524 (+!1952 lt!377559 (tuple2!10181 lt!377550 minValue!754)))) lt!377562))))

(assert (= (and d!106509 c!90412) b!832285))

(assert (= (and d!106509 (not c!90412)) b!832286))

(assert (= (and b!832286 c!90413) b!832287))

(assert (= (and b!832286 (not c!90413)) b!832288))

(declare-fun m!776759 () Bool)

(assert (=> b!832287 m!776759))

(assert (=> d!106273 d!106509))

(declare-fun d!106511 () Bool)

(declare-fun c!90414 () Bool)

(assert (=> d!106511 (= c!90414 (and ((_ is Cons!16004) (t!22384 lt!377539)) (= (_1!5100 (h!17134 (t!22384 lt!377539))) (_1!5100 lt!377371))))))

(declare-fun e!464201 () Option!421)

(assert (=> d!106511 (= (getValueByKey!415 (t!22384 lt!377539) (_1!5100 lt!377371)) e!464201)))

(declare-fun b!832289 () Bool)

(assert (=> b!832289 (= e!464201 (Some!420 (_2!5100 (h!17134 (t!22384 lt!377539)))))))

(declare-fun b!832292 () Bool)

(declare-fun e!464202 () Option!421)

(assert (=> b!832292 (= e!464202 None!419)))

(declare-fun b!832290 () Bool)

(assert (=> b!832290 (= e!464201 e!464202)))

(declare-fun c!90415 () Bool)

(assert (=> b!832290 (= c!90415 (and ((_ is Cons!16004) (t!22384 lt!377539)) (not (= (_1!5100 (h!17134 (t!22384 lt!377539))) (_1!5100 lt!377371)))))))

(declare-fun b!832291 () Bool)

(assert (=> b!832291 (= e!464202 (getValueByKey!415 (t!22384 (t!22384 lt!377539)) (_1!5100 lt!377371)))))

(assert (= (and d!106511 c!90414) b!832289))

(assert (= (and d!106511 (not c!90414)) b!832290))

(assert (= (and b!832290 c!90415) b!832291))

(assert (= (and b!832290 (not c!90415)) b!832292))

(declare-fun m!776761 () Bool)

(assert (=> b!832291 m!776761))

(assert (=> b!832090 d!106511))

(declare-fun c!90416 () Bool)

(declare-fun d!106513 () Bool)

(assert (=> d!106513 (= c!90416 (and ((_ is Cons!16004) (toList!4524 lt!377747)) (= (_1!5100 (h!17134 (toList!4524 lt!377747))) (_1!5100 (tuple2!10181 (select (arr!22317 _keys!976) #b00000000000000000000000000000000) (get!11828 (select (arr!22318 _values!788) #b00000000000000000000000000000000) (dynLambda!983 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun e!464203 () Option!421)

(assert (=> d!106513 (= (getValueByKey!415 (toList!4524 lt!377747) (_1!5100 (tuple2!10181 (select (arr!22317 _keys!976) #b00000000000000000000000000000000) (get!11828 (select (arr!22318 _values!788) #b00000000000000000000000000000000) (dynLambda!983 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))) e!464203)))

(declare-fun b!832293 () Bool)

(assert (=> b!832293 (= e!464203 (Some!420 (_2!5100 (h!17134 (toList!4524 lt!377747)))))))

(declare-fun b!832296 () Bool)

(declare-fun e!464204 () Option!421)

(assert (=> b!832296 (= e!464204 None!419)))

(declare-fun b!832294 () Bool)

(assert (=> b!832294 (= e!464203 e!464204)))

(declare-fun c!90417 () Bool)

(assert (=> b!832294 (= c!90417 (and ((_ is Cons!16004) (toList!4524 lt!377747)) (not (= (_1!5100 (h!17134 (toList!4524 lt!377747))) (_1!5100 (tuple2!10181 (select (arr!22317 _keys!976) #b00000000000000000000000000000000) (get!11828 (select (arr!22318 _values!788) #b00000000000000000000000000000000) (dynLambda!983 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))))))))

(declare-fun b!832295 () Bool)

(assert (=> b!832295 (= e!464204 (getValueByKey!415 (t!22384 (toList!4524 lt!377747)) (_1!5100 (tuple2!10181 (select (arr!22317 _keys!976) #b00000000000000000000000000000000) (get!11828 (select (arr!22318 _values!788) #b00000000000000000000000000000000) (dynLambda!983 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (= (and d!106513 c!90416) b!832293))

(assert (= (and d!106513 (not c!90416)) b!832294))

(assert (= (and b!832294 c!90417) b!832295))

(assert (= (and b!832294 (not c!90417)) b!832296))

(declare-fun m!776763 () Bool)

(assert (=> b!832295 m!776763))

(assert (=> b!832186 d!106513))

(declare-fun d!106515 () Bool)

(declare-fun e!464205 () Bool)

(assert (=> d!106515 e!464205))

(declare-fun res!566364 () Bool)

(assert (=> d!106515 (=> res!566364 e!464205)))

(declare-fun lt!377812 () Bool)

(assert (=> d!106515 (= res!566364 (not lt!377812))))

(declare-fun lt!377809 () Bool)

(assert (=> d!106515 (= lt!377812 lt!377809)))

(declare-fun lt!377811 () Unit!28497)

(declare-fun e!464206 () Unit!28497)

(assert (=> d!106515 (= lt!377811 e!464206)))

(declare-fun c!90418 () Bool)

(assert (=> d!106515 (= c!90418 lt!377809)))

(assert (=> d!106515 (= lt!377809 (containsKey!401 (toList!4524 lt!377545) lt!377558))))

(assert (=> d!106515 (= (contains!4212 lt!377545 lt!377558) lt!377812)))

(declare-fun b!832297 () Bool)

(declare-fun lt!377810 () Unit!28497)

(assert (=> b!832297 (= e!464206 lt!377810)))

(assert (=> b!832297 (= lt!377810 (lemmaContainsKeyImpliesGetValueByKeyDefined!311 (toList!4524 lt!377545) lt!377558))))

(assert (=> b!832297 (isDefined!312 (getValueByKey!415 (toList!4524 lt!377545) lt!377558))))

(declare-fun b!832298 () Bool)

(declare-fun Unit!28527 () Unit!28497)

(assert (=> b!832298 (= e!464206 Unit!28527)))

(declare-fun b!832299 () Bool)

(assert (=> b!832299 (= e!464205 (isDefined!312 (getValueByKey!415 (toList!4524 lt!377545) lt!377558)))))

(assert (= (and d!106515 c!90418) b!832297))

(assert (= (and d!106515 (not c!90418)) b!832298))

(assert (= (and d!106515 (not res!566364)) b!832299))

(declare-fun m!776765 () Bool)

(assert (=> d!106515 m!776765))

(declare-fun m!776767 () Bool)

(assert (=> b!832297 m!776767))

(assert (=> b!832297 m!775975))

(assert (=> b!832297 m!775975))

(declare-fun m!776769 () Bool)

(assert (=> b!832297 m!776769))

(assert (=> b!832299 m!775975))

(assert (=> b!832299 m!775975))

(assert (=> b!832299 m!776769))

(assert (=> d!106259 d!106515))

(assert (=> d!106259 d!106263))

(assert (=> d!106259 d!106279))

(assert (=> d!106259 d!106267))

(declare-fun d!106517 () Bool)

(assert (=> d!106517 (= (apply!373 (+!1952 lt!377545 (tuple2!10181 lt!377555 minValue!754)) lt!377558) (apply!373 lt!377545 lt!377558))))

(assert (=> d!106517 true))

(declare-fun _$34!1147 () Unit!28497)

(assert (=> d!106517 (= (choose!1431 lt!377545 lt!377555 minValue!754 lt!377558) _$34!1147)))

(declare-fun bs!23276 () Bool)

(assert (= bs!23276 d!106517))

(assert (=> bs!23276 m!775907))

(assert (=> bs!23276 m!775907))

(assert (=> bs!23276 m!775913))

(assert (=> bs!23276 m!775911))

(assert (=> d!106259 d!106517))

(declare-fun d!106519 () Bool)

(declare-fun c!90419 () Bool)

(assert (=> d!106519 (= c!90419 (and ((_ is Cons!16004) (toList!4524 lt!377767)) (= (_1!5100 (h!17134 (toList!4524 lt!377767))) (_1!5100 (tuple2!10181 lt!377445 lt!377450)))))))

(declare-fun e!464207 () Option!421)

(assert (=> d!106519 (= (getValueByKey!415 (toList!4524 lt!377767) (_1!5100 (tuple2!10181 lt!377445 lt!377450))) e!464207)))

(declare-fun b!832301 () Bool)

(assert (=> b!832301 (= e!464207 (Some!420 (_2!5100 (h!17134 (toList!4524 lt!377767)))))))

(declare-fun b!832304 () Bool)

(declare-fun e!464208 () Option!421)

(assert (=> b!832304 (= e!464208 None!419)))

(declare-fun b!832302 () Bool)

(assert (=> b!832302 (= e!464207 e!464208)))

(declare-fun c!90420 () Bool)

(assert (=> b!832302 (= c!90420 (and ((_ is Cons!16004) (toList!4524 lt!377767)) (not (= (_1!5100 (h!17134 (toList!4524 lt!377767))) (_1!5100 (tuple2!10181 lt!377445 lt!377450))))))))

(declare-fun b!832303 () Bool)

(assert (=> b!832303 (= e!464208 (getValueByKey!415 (t!22384 (toList!4524 lt!377767)) (_1!5100 (tuple2!10181 lt!377445 lt!377450))))))

(assert (= (and d!106519 c!90419) b!832301))

(assert (= (and d!106519 (not c!90419)) b!832302))

(assert (= (and b!832302 c!90420) b!832303))

(assert (= (and b!832302 (not c!90420)) b!832304))

(declare-fun m!776771 () Bool)

(assert (=> b!832303 m!776771))

(assert (=> b!832213 d!106519))

(declare-fun d!106521 () Bool)

(assert (=> d!106521 (= (get!11829 (getValueByKey!415 (toList!4524 (+!1952 lt!377544 (tuple2!10181 lt!377560 zeroValueBefore!34))) lt!377549)) (v!10097 (getValueByKey!415 (toList!4524 (+!1952 lt!377544 (tuple2!10181 lt!377560 zeroValueBefore!34))) lt!377549)))))

(assert (=> d!106281 d!106521))

(declare-fun d!106523 () Bool)

(declare-fun c!90421 () Bool)

(assert (=> d!106523 (= c!90421 (and ((_ is Cons!16004) (toList!4524 (+!1952 lt!377544 (tuple2!10181 lt!377560 zeroValueBefore!34)))) (= (_1!5100 (h!17134 (toList!4524 (+!1952 lt!377544 (tuple2!10181 lt!377560 zeroValueBefore!34))))) lt!377549)))))

(declare-fun e!464209 () Option!421)

(assert (=> d!106523 (= (getValueByKey!415 (toList!4524 (+!1952 lt!377544 (tuple2!10181 lt!377560 zeroValueBefore!34))) lt!377549) e!464209)))

(declare-fun b!832305 () Bool)

(assert (=> b!832305 (= e!464209 (Some!420 (_2!5100 (h!17134 (toList!4524 (+!1952 lt!377544 (tuple2!10181 lt!377560 zeroValueBefore!34)))))))))

(declare-fun b!832308 () Bool)

(declare-fun e!464210 () Option!421)

(assert (=> b!832308 (= e!464210 None!419)))

(declare-fun b!832306 () Bool)

(assert (=> b!832306 (= e!464209 e!464210)))

(declare-fun c!90422 () Bool)

(assert (=> b!832306 (= c!90422 (and ((_ is Cons!16004) (toList!4524 (+!1952 lt!377544 (tuple2!10181 lt!377560 zeroValueBefore!34)))) (not (= (_1!5100 (h!17134 (toList!4524 (+!1952 lt!377544 (tuple2!10181 lt!377560 zeroValueBefore!34))))) lt!377549))))))

(declare-fun b!832307 () Bool)

(assert (=> b!832307 (= e!464210 (getValueByKey!415 (t!22384 (toList!4524 (+!1952 lt!377544 (tuple2!10181 lt!377560 zeroValueBefore!34)))) lt!377549))))

(assert (= (and d!106523 c!90421) b!832305))

(assert (= (and d!106523 (not c!90421)) b!832306))

(assert (= (and b!832306 c!90422) b!832307))

(assert (= (and b!832306 (not c!90422)) b!832308))

(declare-fun m!776773 () Bool)

(assert (=> b!832307 m!776773))

(assert (=> d!106281 d!106523))

(declare-fun d!106525 () Bool)

(assert (=> d!106525 (isDefined!312 (getValueByKey!415 (toList!4524 (+!1952 lt!377546 (tuple2!10181 lt!377541 zeroValueBefore!34))) lt!377547))))

(declare-fun lt!377815 () Unit!28497)

(declare-fun choose!1435 (List!16008 (_ BitVec 64)) Unit!28497)

(assert (=> d!106525 (= lt!377815 (choose!1435 (toList!4524 (+!1952 lt!377546 (tuple2!10181 lt!377541 zeroValueBefore!34))) lt!377547))))

(declare-fun e!464213 () Bool)

(assert (=> d!106525 e!464213))

(declare-fun res!566367 () Bool)

(assert (=> d!106525 (=> (not res!566367) (not e!464213))))

(assert (=> d!106525 (= res!566367 (isStrictlySorted!438 (toList!4524 (+!1952 lt!377546 (tuple2!10181 lt!377541 zeroValueBefore!34)))))))

(assert (=> d!106525 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!311 (toList!4524 (+!1952 lt!377546 (tuple2!10181 lt!377541 zeroValueBefore!34))) lt!377547) lt!377815)))

(declare-fun b!832311 () Bool)

(assert (=> b!832311 (= e!464213 (containsKey!401 (toList!4524 (+!1952 lt!377546 (tuple2!10181 lt!377541 zeroValueBefore!34))) lt!377547))))

(assert (= (and d!106525 res!566367) b!832311))

(assert (=> d!106525 m!776019))

(assert (=> d!106525 m!776019))

(assert (=> d!106525 m!776021))

(declare-fun m!776775 () Bool)

(assert (=> d!106525 m!776775))

(declare-fun m!776777 () Bool)

(assert (=> d!106525 m!776777))

(assert (=> b!832311 m!776015))

(assert (=> b!831883 d!106525))

(declare-fun d!106527 () Bool)

(declare-fun isEmpty!664 (Option!421) Bool)

(assert (=> d!106527 (= (isDefined!312 (getValueByKey!415 (toList!4524 (+!1952 lt!377546 (tuple2!10181 lt!377541 zeroValueBefore!34))) lt!377547)) (not (isEmpty!664 (getValueByKey!415 (toList!4524 (+!1952 lt!377546 (tuple2!10181 lt!377541 zeroValueBefore!34))) lt!377547))))))

(declare-fun bs!23277 () Bool)

(assert (= bs!23277 d!106527))

(assert (=> bs!23277 m!776019))

(declare-fun m!776779 () Bool)

(assert (=> bs!23277 m!776779))

(assert (=> b!831883 d!106527))

(declare-fun d!106529 () Bool)

(declare-fun c!90423 () Bool)

(assert (=> d!106529 (= c!90423 (and ((_ is Cons!16004) (toList!4524 (+!1952 lt!377546 (tuple2!10181 lt!377541 zeroValueBefore!34)))) (= (_1!5100 (h!17134 (toList!4524 (+!1952 lt!377546 (tuple2!10181 lt!377541 zeroValueBefore!34))))) lt!377547)))))

(declare-fun e!464214 () Option!421)

(assert (=> d!106529 (= (getValueByKey!415 (toList!4524 (+!1952 lt!377546 (tuple2!10181 lt!377541 zeroValueBefore!34))) lt!377547) e!464214)))

(declare-fun b!832312 () Bool)

(assert (=> b!832312 (= e!464214 (Some!420 (_2!5100 (h!17134 (toList!4524 (+!1952 lt!377546 (tuple2!10181 lt!377541 zeroValueBefore!34)))))))))

(declare-fun b!832315 () Bool)

(declare-fun e!464215 () Option!421)

(assert (=> b!832315 (= e!464215 None!419)))

(declare-fun b!832313 () Bool)

(assert (=> b!832313 (= e!464214 e!464215)))

(declare-fun c!90424 () Bool)

(assert (=> b!832313 (= c!90424 (and ((_ is Cons!16004) (toList!4524 (+!1952 lt!377546 (tuple2!10181 lt!377541 zeroValueBefore!34)))) (not (= (_1!5100 (h!17134 (toList!4524 (+!1952 lt!377546 (tuple2!10181 lt!377541 zeroValueBefore!34))))) lt!377547))))))

(declare-fun b!832314 () Bool)

(assert (=> b!832314 (= e!464215 (getValueByKey!415 (t!22384 (toList!4524 (+!1952 lt!377546 (tuple2!10181 lt!377541 zeroValueBefore!34)))) lt!377547))))

(assert (= (and d!106529 c!90423) b!832312))

(assert (= (and d!106529 (not c!90423)) b!832313))

(assert (= (and b!832313 c!90424) b!832314))

(assert (= (and b!832313 (not c!90424)) b!832315))

(declare-fun m!776781 () Bool)

(assert (=> b!832314 m!776781))

(assert (=> b!831883 d!106529))

(declare-fun d!106531 () Bool)

(declare-fun res!566368 () Bool)

(declare-fun e!464216 () Bool)

(assert (=> d!106531 (=> res!566368 e!464216)))

(assert (=> d!106531 (= res!566368 (and ((_ is Cons!16004) lt!377535) (= (_1!5100 (h!17134 lt!377535)) (_1!5100 lt!377371))))))

(assert (=> d!106531 (= (containsKey!401 lt!377535 (_1!5100 lt!377371)) e!464216)))

(declare-fun b!832316 () Bool)

(declare-fun e!464217 () Bool)

(assert (=> b!832316 (= e!464216 e!464217)))

(declare-fun res!566369 () Bool)

(assert (=> b!832316 (=> (not res!566369) (not e!464217))))

(assert (=> b!832316 (= res!566369 (and (or (not ((_ is Cons!16004) lt!377535)) (bvsle (_1!5100 (h!17134 lt!377535)) (_1!5100 lt!377371))) ((_ is Cons!16004) lt!377535) (bvslt (_1!5100 (h!17134 lt!377535)) (_1!5100 lt!377371))))))

(declare-fun b!832317 () Bool)

(assert (=> b!832317 (= e!464217 (containsKey!401 (t!22384 lt!377535) (_1!5100 lt!377371)))))

(assert (= (and d!106531 (not res!566368)) b!832316))

(assert (= (and b!832316 res!566369) b!832317))

(declare-fun m!776783 () Bool)

(assert (=> b!832317 m!776783))

(assert (=> b!832168 d!106531))

(declare-fun d!106533 () Bool)

(assert (=> d!106533 (= (isDefined!312 (getValueByKey!415 (toList!4524 lt!377533) (_1!5100 lt!377371))) (not (isEmpty!664 (getValueByKey!415 (toList!4524 lt!377533) (_1!5100 lt!377371)))))))

(declare-fun bs!23278 () Bool)

(assert (= bs!23278 d!106533))

(assert (=> bs!23278 m!775887))

(declare-fun m!776785 () Bool)

(assert (=> bs!23278 m!776785))

(assert (=> b!832163 d!106533))

(assert (=> b!832163 d!106451))

(declare-fun d!106535 () Bool)

(declare-fun res!566370 () Bool)

(declare-fun e!464218 () Bool)

(assert (=> d!106535 (=> res!566370 e!464218)))

(assert (=> d!106535 (= res!566370 (and ((_ is Cons!16004) (toList!4524 lt!377442)) (= (_1!5100 (h!17134 (toList!4524 lt!377442))) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!106535 (= (containsKey!401 (toList!4524 lt!377442) #b1000000000000000000000000000000000000000000000000000000000000000) e!464218)))

(declare-fun b!832318 () Bool)

(declare-fun e!464219 () Bool)

(assert (=> b!832318 (= e!464218 e!464219)))

(declare-fun res!566371 () Bool)

(assert (=> b!832318 (=> (not res!566371) (not e!464219))))

(assert (=> b!832318 (= res!566371 (and (or (not ((_ is Cons!16004) (toList!4524 lt!377442))) (bvsle (_1!5100 (h!17134 (toList!4524 lt!377442))) #b1000000000000000000000000000000000000000000000000000000000000000)) ((_ is Cons!16004) (toList!4524 lt!377442)) (bvslt (_1!5100 (h!17134 (toList!4524 lt!377442))) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!832319 () Bool)

(assert (=> b!832319 (= e!464219 (containsKey!401 (t!22384 (toList!4524 lt!377442)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!106535 (not res!566370)) b!832318))

(assert (= (and b!832318 res!566371) b!832319))

(declare-fun m!776787 () Bool)

(assert (=> b!832319 m!776787))

(assert (=> d!106381 d!106535))

(declare-fun d!106537 () Bool)

(declare-fun res!566372 () Bool)

(declare-fun e!464220 () Bool)

(assert (=> d!106537 (=> res!566372 e!464220)))

(assert (=> d!106537 (= res!566372 (and ((_ is Cons!16004) (toList!4524 lt!377542)) (= (_1!5100 (h!17134 (toList!4524 lt!377542))) (select (arr!22317 _keys!976) #b00000000000000000000000000000000))))))

(assert (=> d!106537 (= (containsKey!401 (toList!4524 lt!377542) (select (arr!22317 _keys!976) #b00000000000000000000000000000000)) e!464220)))

(declare-fun b!832320 () Bool)

(declare-fun e!464221 () Bool)

(assert (=> b!832320 (= e!464220 e!464221)))

(declare-fun res!566373 () Bool)

(assert (=> b!832320 (=> (not res!566373) (not e!464221))))

(assert (=> b!832320 (= res!566373 (and (or (not ((_ is Cons!16004) (toList!4524 lt!377542))) (bvsle (_1!5100 (h!17134 (toList!4524 lt!377542))) (select (arr!22317 _keys!976) #b00000000000000000000000000000000))) ((_ is Cons!16004) (toList!4524 lt!377542)) (bvslt (_1!5100 (h!17134 (toList!4524 lt!377542))) (select (arr!22317 _keys!976) #b00000000000000000000000000000000))))))

(declare-fun b!832321 () Bool)

(assert (=> b!832321 (= e!464221 (containsKey!401 (t!22384 (toList!4524 lt!377542)) (select (arr!22317 _keys!976) #b00000000000000000000000000000000)))))

(assert (= (and d!106537 (not res!566372)) b!832320))

(assert (= (and b!832320 res!566373) b!832321))

(assert (=> b!832321 m!775697))

(declare-fun m!776789 () Bool)

(assert (=> b!832321 m!776789))

(assert (=> d!106313 d!106537))

(declare-fun d!106539 () Bool)

(declare-fun res!566374 () Bool)

(declare-fun e!464222 () Bool)

(assert (=> d!106539 (=> res!566374 e!464222)))

(assert (=> d!106539 (= res!566374 (and ((_ is Cons!16004) (toList!4524 lt!377449)) (= (_1!5100 (h!17134 (toList!4524 lt!377449))) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!106539 (= (containsKey!401 (toList!4524 lt!377449) #b1000000000000000000000000000000000000000000000000000000000000000) e!464222)))

(declare-fun b!832322 () Bool)

(declare-fun e!464223 () Bool)

(assert (=> b!832322 (= e!464222 e!464223)))

(declare-fun res!566375 () Bool)

(assert (=> b!832322 (=> (not res!566375) (not e!464223))))

(assert (=> b!832322 (= res!566375 (and (or (not ((_ is Cons!16004) (toList!4524 lt!377449))) (bvsle (_1!5100 (h!17134 (toList!4524 lt!377449))) #b1000000000000000000000000000000000000000000000000000000000000000)) ((_ is Cons!16004) (toList!4524 lt!377449)) (bvslt (_1!5100 (h!17134 (toList!4524 lt!377449))) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!832323 () Bool)

(assert (=> b!832323 (= e!464223 (containsKey!401 (t!22384 (toList!4524 lt!377449)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!106539 (not res!566374)) b!832322))

(assert (= (and b!832322 res!566375) b!832323))

(declare-fun m!776791 () Bool)

(assert (=> b!832323 m!776791))

(assert (=> d!106377 d!106539))

(declare-fun b!832324 () Bool)

(declare-fun e!464224 () ListLongMap!9017)

(declare-fun e!464226 () ListLongMap!9017)

(assert (=> b!832324 (= e!464224 e!464226)))

(declare-fun c!90427 () Bool)

(assert (=> b!832324 (= c!90427 (validKeyInArray!0 (select (arr!22317 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001))))))

(declare-fun b!832325 () Bool)

(declare-fun e!464225 () Bool)

(declare-fun e!464228 () Bool)

(assert (=> b!832325 (= e!464225 e!464228)))

(declare-fun c!90425 () Bool)

(declare-fun e!464229 () Bool)

(assert (=> b!832325 (= c!90425 e!464229)))

(declare-fun res!566377 () Bool)

(assert (=> b!832325 (=> (not res!566377) (not e!464229))))

(assert (=> b!832325 (= res!566377 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!22738 _keys!976)))))

(declare-fun b!832326 () Bool)

(declare-fun lt!377816 () Unit!28497)

(declare-fun lt!377819 () Unit!28497)

(assert (=> b!832326 (= lt!377816 lt!377819)))

(declare-fun lt!377818 () (_ BitVec 64))

(declare-fun lt!377820 () ListLongMap!9017)

(declare-fun lt!377822 () V!25285)

(declare-fun lt!377817 () (_ BitVec 64))

(assert (=> b!832326 (not (contains!4212 (+!1952 lt!377820 (tuple2!10181 lt!377817 lt!377822)) lt!377818))))

(assert (=> b!832326 (= lt!377819 (addStillNotContains!200 lt!377820 lt!377817 lt!377822 lt!377818))))

(assert (=> b!832326 (= lt!377818 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!832326 (= lt!377822 (get!11828 (select (arr!22318 _values!788) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)) (dynLambda!983 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!832326 (= lt!377817 (select (arr!22317 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)))))

(declare-fun call!36431 () ListLongMap!9017)

(assert (=> b!832326 (= lt!377820 call!36431)))

(assert (=> b!832326 (= e!464226 (+!1952 call!36431 (tuple2!10181 (select (arr!22317 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)) (get!11828 (select (arr!22318 _values!788) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)) (dynLambda!983 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!832327 () Bool)

(declare-fun e!464230 () Bool)

(assert (=> b!832327 (= e!464228 e!464230)))

(assert (=> b!832327 (and (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!22738 _keys!976)))))

(declare-fun res!566376 () Bool)

(declare-fun lt!377821 () ListLongMap!9017)

(assert (=> b!832327 (= res!566376 (contains!4212 lt!377821 (select (arr!22317 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001))))))

(assert (=> b!832327 (=> (not res!566376) (not e!464230))))

(declare-fun b!832328 () Bool)

(assert (=> b!832328 (= e!464226 call!36431)))

(declare-fun b!832329 () Bool)

(assert (=> b!832329 (and (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!22738 _keys!976)))))

(assert (=> b!832329 (and (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!22739 _values!788)))))

(assert (=> b!832329 (= e!464230 (= (apply!373 lt!377821 (select (arr!22317 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001))) (get!11828 (select (arr!22318 _values!788) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)) (dynLambda!983 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!832330 () Bool)

(declare-fun e!464227 () Bool)

(assert (=> b!832330 (= e!464228 e!464227)))

(declare-fun c!90426 () Bool)

(assert (=> b!832330 (= c!90426 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!22738 _keys!976)))))

(declare-fun b!832331 () Bool)

(assert (=> b!832331 (= e!464227 (= lt!377821 (getCurrentListMapNoExtraKeys!2523 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001 #b00000000000000000000000000000001) defaultEntry!796)))))

(declare-fun bm!36428 () Bool)

(assert (=> bm!36428 (= call!36431 (getCurrentListMapNoExtraKeys!2523 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001 #b00000000000000000000000000000001) defaultEntry!796))))

(declare-fun b!832333 () Bool)

(assert (=> b!832333 (= e!464227 (isEmpty!662 lt!377821))))

(declare-fun b!832334 () Bool)

(declare-fun res!566378 () Bool)

(assert (=> b!832334 (=> (not res!566378) (not e!464225))))

(assert (=> b!832334 (= res!566378 (not (contains!4212 lt!377821 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!832335 () Bool)

(assert (=> b!832335 (= e!464229 (validKeyInArray!0 (select (arr!22317 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001))))))

(assert (=> b!832335 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))

(declare-fun d!106541 () Bool)

(assert (=> d!106541 e!464225))

(declare-fun res!566379 () Bool)

(assert (=> d!106541 (=> (not res!566379) (not e!464225))))

(assert (=> d!106541 (= res!566379 (not (contains!4212 lt!377821 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!106541 (= lt!377821 e!464224)))

(declare-fun c!90428 () Bool)

(assert (=> d!106541 (= c!90428 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!22738 _keys!976)))))

(assert (=> d!106541 (validMask!0 mask!1312)))

(assert (=> d!106541 (= (getCurrentListMapNoExtraKeys!2523 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) defaultEntry!796) lt!377821)))

(declare-fun b!832332 () Bool)

(assert (=> b!832332 (= e!464224 (ListLongMap!9018 Nil!16005))))

(assert (= (and d!106541 c!90428) b!832332))

(assert (= (and d!106541 (not c!90428)) b!832324))

(assert (= (and b!832324 c!90427) b!832326))

(assert (= (and b!832324 (not c!90427)) b!832328))

(assert (= (or b!832326 b!832328) bm!36428))

(assert (= (and d!106541 res!566379) b!832334))

(assert (= (and b!832334 res!566378) b!832325))

(assert (= (and b!832325 res!566377) b!832335))

(assert (= (and b!832325 c!90425) b!832327))

(assert (= (and b!832325 (not c!90425)) b!832330))

(assert (= (and b!832327 res!566376) b!832329))

(assert (= (and b!832330 c!90426) b!832331))

(assert (= (and b!832330 (not c!90426)) b!832333))

(declare-fun b_lambda!11473 () Bool)

(assert (=> (not b_lambda!11473) (not b!832326)))

(assert (=> b!832326 t!22389))

(declare-fun b_and!22603 () Bool)

(assert (= b_and!22601 (and (=> t!22389 result!8029) b_and!22603)))

(declare-fun b_lambda!11475 () Bool)

(assert (=> (not b_lambda!11475) (not b!832329)))

(assert (=> b!832329 t!22389))

(declare-fun b_and!22605 () Bool)

(assert (= b_and!22603 (and (=> t!22389 result!8029) b_and!22605)))

(declare-fun m!776793 () Bool)

(assert (=> bm!36428 m!776793))

(declare-fun m!776795 () Bool)

(assert (=> b!832327 m!776795))

(assert (=> b!832327 m!776795))

(declare-fun m!776797 () Bool)

(assert (=> b!832327 m!776797))

(declare-fun m!776799 () Bool)

(assert (=> b!832326 m!776799))

(declare-fun m!776801 () Bool)

(assert (=> b!832326 m!776801))

(assert (=> b!832326 m!775747))

(declare-fun m!776803 () Bool)

(assert (=> b!832326 m!776803))

(assert (=> b!832326 m!776799))

(declare-fun m!776805 () Bool)

(assert (=> b!832326 m!776805))

(assert (=> b!832326 m!776795))

(declare-fun m!776807 () Bool)

(assert (=> b!832326 m!776807))

(declare-fun m!776809 () Bool)

(assert (=> b!832326 m!776809))

(assert (=> b!832326 m!776801))

(assert (=> b!832326 m!775747))

(declare-fun m!776811 () Bool)

(assert (=> d!106541 m!776811))

(assert (=> d!106541 m!775625))

(assert (=> b!832331 m!776793))

(declare-fun m!776813 () Bool)

(assert (=> b!832333 m!776813))

(assert (=> b!832335 m!776795))

(assert (=> b!832335 m!776795))

(declare-fun m!776815 () Bool)

(assert (=> b!832335 m!776815))

(declare-fun m!776817 () Bool)

(assert (=> b!832334 m!776817))

(assert (=> b!832324 m!776795))

(assert (=> b!832324 m!776795))

(assert (=> b!832324 m!776815))

(assert (=> b!832329 m!776801))

(assert (=> b!832329 m!775747))

(assert (=> b!832329 m!776803))

(assert (=> b!832329 m!776795))

(assert (=> b!832329 m!776795))

(declare-fun m!776819 () Bool)

(assert (=> b!832329 m!776819))

(assert (=> b!832329 m!776801))

(assert (=> b!832329 m!775747))

(assert (=> bm!36403 d!106541))

(declare-fun d!106543 () Bool)

(declare-fun res!566384 () Bool)

(declare-fun e!464235 () Bool)

(assert (=> d!106543 (=> res!566384 e!464235)))

(assert (=> d!106543 (= res!566384 (or ((_ is Nil!16005) lt!377692) ((_ is Nil!16005) (t!22384 lt!377692))))))

(assert (=> d!106543 (= (isStrictlySorted!438 lt!377692) e!464235)))

(declare-fun b!832340 () Bool)

(declare-fun e!464236 () Bool)

(assert (=> b!832340 (= e!464235 e!464236)))

(declare-fun res!566385 () Bool)

(assert (=> b!832340 (=> (not res!566385) (not e!464236))))

(assert (=> b!832340 (= res!566385 (bvslt (_1!5100 (h!17134 lt!377692)) (_1!5100 (h!17134 (t!22384 lt!377692)))))))

(declare-fun b!832341 () Bool)

(assert (=> b!832341 (= e!464236 (isStrictlySorted!438 (t!22384 lt!377692)))))

(assert (= (and d!106543 (not res!566384)) b!832340))

(assert (= (and b!832340 res!566385) b!832341))

(declare-fun m!776821 () Bool)

(assert (=> b!832341 m!776821))

(assert (=> d!106375 d!106543))

(declare-fun d!106545 () Bool)

(declare-fun res!566386 () Bool)

(declare-fun e!464237 () Bool)

(assert (=> d!106545 (=> res!566386 e!464237)))

(assert (=> d!106545 (= res!566386 (or ((_ is Nil!16005) (toList!4524 (+!1952 lt!377369 lt!377371))) ((_ is Nil!16005) (t!22384 (toList!4524 (+!1952 lt!377369 lt!377371))))))))

(assert (=> d!106545 (= (isStrictlySorted!438 (toList!4524 (+!1952 lt!377369 lt!377371))) e!464237)))

(declare-fun b!832342 () Bool)

(declare-fun e!464238 () Bool)

(assert (=> b!832342 (= e!464237 e!464238)))

(declare-fun res!566387 () Bool)

(assert (=> b!832342 (=> (not res!566387) (not e!464238))))

(assert (=> b!832342 (= res!566387 (bvslt (_1!5100 (h!17134 (toList!4524 (+!1952 lt!377369 lt!377371)))) (_1!5100 (h!17134 (t!22384 (toList!4524 (+!1952 lt!377369 lt!377371)))))))))

(declare-fun b!832343 () Bool)

(assert (=> b!832343 (= e!464238 (isStrictlySorted!438 (t!22384 (toList!4524 (+!1952 lt!377369 lt!377371)))))))

(assert (= (and d!106545 (not res!566386)) b!832342))

(assert (= (and b!832342 res!566387) b!832343))

(declare-fun m!776823 () Bool)

(assert (=> b!832343 m!776823))

(assert (=> d!106375 d!106545))

(declare-fun d!106547 () Bool)

(assert (=> d!106547 (isDefined!312 (getValueByKey!415 (toList!4524 lt!377537) (_1!5100 lt!377371)))))

(declare-fun lt!377823 () Unit!28497)

(assert (=> d!106547 (= lt!377823 (choose!1435 (toList!4524 lt!377537) (_1!5100 lt!377371)))))

(declare-fun e!464239 () Bool)

(assert (=> d!106547 e!464239))

(declare-fun res!566388 () Bool)

(assert (=> d!106547 (=> (not res!566388) (not e!464239))))

(assert (=> d!106547 (= res!566388 (isStrictlySorted!438 (toList!4524 lt!377537)))))

(assert (=> d!106547 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!311 (toList!4524 lt!377537) (_1!5100 lt!377371)) lt!377823)))

(declare-fun b!832344 () Bool)

(assert (=> b!832344 (= e!464239 (containsKey!401 (toList!4524 lt!377537) (_1!5100 lt!377371)))))

(assert (= (and d!106547 res!566388) b!832344))

(assert (=> d!106547 m!775899))

(assert (=> d!106547 m!775899))

(assert (=> d!106547 m!776411))

(declare-fun m!776825 () Bool)

(assert (=> d!106547 m!776825))

(declare-fun m!776827 () Bool)

(assert (=> d!106547 m!776827))

(assert (=> b!832344 m!776407))

(assert (=> b!832085 d!106547))

(declare-fun d!106549 () Bool)

(assert (=> d!106549 (= (isDefined!312 (getValueByKey!415 (toList!4524 lt!377537) (_1!5100 lt!377371))) (not (isEmpty!664 (getValueByKey!415 (toList!4524 lt!377537) (_1!5100 lt!377371)))))))

(declare-fun bs!23279 () Bool)

(assert (= bs!23279 d!106549))

(assert (=> bs!23279 m!775899))

(declare-fun m!776829 () Bool)

(assert (=> bs!23279 m!776829))

(assert (=> b!832085 d!106549))

(assert (=> b!832085 d!106489))

(declare-fun d!106551 () Bool)

(declare-fun lt!377824 () Bool)

(assert (=> d!106551 (= lt!377824 (select (content!390 lt!377736) (tuple2!10181 (_1!5100 lt!377372) (_2!5100 lt!377372))))))

(declare-fun e!464240 () Bool)

(assert (=> d!106551 (= lt!377824 e!464240)))

(declare-fun res!566389 () Bool)

(assert (=> d!106551 (=> (not res!566389) (not e!464240))))

(assert (=> d!106551 (= res!566389 ((_ is Cons!16004) lt!377736))))

(assert (=> d!106551 (= (contains!4213 lt!377736 (tuple2!10181 (_1!5100 lt!377372) (_2!5100 lt!377372))) lt!377824)))

(declare-fun b!832345 () Bool)

(declare-fun e!464241 () Bool)

(assert (=> b!832345 (= e!464240 e!464241)))

(declare-fun res!566390 () Bool)

(assert (=> b!832345 (=> res!566390 e!464241)))

(assert (=> b!832345 (= res!566390 (= (h!17134 lt!377736) (tuple2!10181 (_1!5100 lt!377372) (_2!5100 lt!377372))))))

(declare-fun b!832346 () Bool)

(assert (=> b!832346 (= e!464241 (contains!4213 (t!22384 lt!377736) (tuple2!10181 (_1!5100 lt!377372) (_2!5100 lt!377372))))))

(assert (= (and d!106551 res!566389) b!832345))

(assert (= (and b!832345 (not res!566390)) b!832346))

(declare-fun m!776831 () Bool)

(assert (=> d!106551 m!776831))

(declare-fun m!776833 () Bool)

(assert (=> d!106551 m!776833))

(declare-fun m!776835 () Bool)

(assert (=> b!832346 m!776835))

(assert (=> b!832156 d!106551))

(declare-fun d!106553 () Bool)

(declare-fun lt!377825 () Bool)

(assert (=> d!106553 (= lt!377825 (select (content!390 lt!377405) (tuple2!10181 (_1!5100 lt!377371) (_2!5100 lt!377371))))))

(declare-fun e!464242 () Bool)

(assert (=> d!106553 (= lt!377825 e!464242)))

(declare-fun res!566391 () Bool)

(assert (=> d!106553 (=> (not res!566391) (not e!464242))))

(assert (=> d!106553 (= res!566391 ((_ is Cons!16004) lt!377405))))

(assert (=> d!106553 (= (contains!4213 lt!377405 (tuple2!10181 (_1!5100 lt!377371) (_2!5100 lt!377371))) lt!377825)))

(declare-fun b!832347 () Bool)

(declare-fun e!464243 () Bool)

(assert (=> b!832347 (= e!464242 e!464243)))

(declare-fun res!566392 () Bool)

(assert (=> b!832347 (=> res!566392 e!464243)))

(assert (=> b!832347 (= res!566392 (= (h!17134 lt!377405) (tuple2!10181 (_1!5100 lt!377371) (_2!5100 lt!377371))))))

(declare-fun b!832348 () Bool)

(assert (=> b!832348 (= e!464243 (contains!4213 (t!22384 lt!377405) (tuple2!10181 (_1!5100 lt!377371) (_2!5100 lt!377371))))))

(assert (= (and d!106553 res!566391) b!832347))

(assert (= (and b!832347 (not res!566392)) b!832348))

(declare-fun m!776837 () Bool)

(assert (=> d!106553 m!776837))

(declare-fun m!776839 () Bool)

(assert (=> d!106553 m!776839))

(declare-fun m!776841 () Bool)

(assert (=> b!832348 m!776841))

(assert (=> b!832225 d!106553))

(declare-fun d!106555 () Bool)

(assert (=> d!106555 (isDefined!312 (getValueByKey!415 (toList!4524 lt!377508) (select (arr!22317 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun lt!377826 () Unit!28497)

(assert (=> d!106555 (= lt!377826 (choose!1435 (toList!4524 lt!377508) (select (arr!22317 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun e!464244 () Bool)

(assert (=> d!106555 e!464244))

(declare-fun res!566393 () Bool)

(assert (=> d!106555 (=> (not res!566393) (not e!464244))))

(assert (=> d!106555 (= res!566393 (isStrictlySorted!438 (toList!4524 lt!377508)))))

(assert (=> d!106555 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!311 (toList!4524 lt!377508) (select (arr!22317 _keys!976) #b00000000000000000000000000000000)) lt!377826)))

(declare-fun b!832349 () Bool)

(assert (=> b!832349 (= e!464244 (containsKey!401 (toList!4524 lt!377508) (select (arr!22317 _keys!976) #b00000000000000000000000000000000)))))

(assert (= (and d!106555 res!566393) b!832349))

(assert (=> d!106555 m!775697))

(assert (=> d!106555 m!776335))

(assert (=> d!106555 m!776335))

(assert (=> d!106555 m!776337))

(assert (=> d!106555 m!775697))

(declare-fun m!776843 () Bool)

(assert (=> d!106555 m!776843))

(declare-fun m!776845 () Bool)

(assert (=> d!106555 m!776845))

(assert (=> b!832349 m!775697))

(assert (=> b!832349 m!776331))

(assert (=> b!832024 d!106555))

(declare-fun d!106557 () Bool)

(assert (=> d!106557 (= (isDefined!312 (getValueByKey!415 (toList!4524 lt!377508) (select (arr!22317 _keys!976) #b00000000000000000000000000000000))) (not (isEmpty!664 (getValueByKey!415 (toList!4524 lt!377508) (select (arr!22317 _keys!976) #b00000000000000000000000000000000)))))))

(declare-fun bs!23280 () Bool)

(assert (= bs!23280 d!106557))

(assert (=> bs!23280 m!776335))

(declare-fun m!776847 () Bool)

(assert (=> bs!23280 m!776847))

(assert (=> b!832024 d!106557))

(declare-fun d!106559 () Bool)

(declare-fun c!90429 () Bool)

(assert (=> d!106559 (= c!90429 (and ((_ is Cons!16004) (toList!4524 lt!377508)) (= (_1!5100 (h!17134 (toList!4524 lt!377508))) (select (arr!22317 _keys!976) #b00000000000000000000000000000000))))))

(declare-fun e!464245 () Option!421)

(assert (=> d!106559 (= (getValueByKey!415 (toList!4524 lt!377508) (select (arr!22317 _keys!976) #b00000000000000000000000000000000)) e!464245)))

(declare-fun b!832350 () Bool)

(assert (=> b!832350 (= e!464245 (Some!420 (_2!5100 (h!17134 (toList!4524 lt!377508)))))))

(declare-fun b!832353 () Bool)

(declare-fun e!464246 () Option!421)

(assert (=> b!832353 (= e!464246 None!419)))

(declare-fun b!832351 () Bool)

(assert (=> b!832351 (= e!464245 e!464246)))

(declare-fun c!90430 () Bool)

(assert (=> b!832351 (= c!90430 (and ((_ is Cons!16004) (toList!4524 lt!377508)) (not (= (_1!5100 (h!17134 (toList!4524 lt!377508))) (select (arr!22317 _keys!976) #b00000000000000000000000000000000)))))))

(declare-fun b!832352 () Bool)

(assert (=> b!832352 (= e!464246 (getValueByKey!415 (t!22384 (toList!4524 lt!377508)) (select (arr!22317 _keys!976) #b00000000000000000000000000000000)))))

(assert (= (and d!106559 c!90429) b!832350))

(assert (= (and d!106559 (not c!90429)) b!832351))

(assert (= (and b!832351 c!90430) b!832352))

(assert (= (and b!832351 (not c!90430)) b!832353))

(assert (=> b!832352 m!775697))

(declare-fun m!776849 () Bool)

(assert (=> b!832352 m!776849))

(assert (=> b!832024 d!106559))

(declare-fun d!106561 () Bool)

(declare-fun lt!377827 () Bool)

(assert (=> d!106561 (= lt!377827 (select (content!390 (toList!4524 lt!377743)) (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))))

(declare-fun e!464247 () Bool)

(assert (=> d!106561 (= lt!377827 e!464247)))

(declare-fun res!566394 () Bool)

(assert (=> d!106561 (=> (not res!566394) (not e!464247))))

(assert (=> d!106561 (= res!566394 ((_ is Cons!16004) (toList!4524 lt!377743)))))

(assert (=> d!106561 (= (contains!4213 (toList!4524 lt!377743) (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)) lt!377827)))

(declare-fun b!832354 () Bool)

(declare-fun e!464248 () Bool)

(assert (=> b!832354 (= e!464247 e!464248)))

(declare-fun res!566395 () Bool)

(assert (=> b!832354 (=> res!566395 e!464248)))

(assert (=> b!832354 (= res!566395 (= (h!17134 (toList!4524 lt!377743)) (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))))

(declare-fun b!832355 () Bool)

(assert (=> b!832355 (= e!464248 (contains!4213 (t!22384 (toList!4524 lt!377743)) (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))))

(assert (= (and d!106561 res!566394) b!832354))

(assert (= (and b!832354 (not res!566395)) b!832355))

(declare-fun m!776851 () Bool)

(assert (=> d!106561 m!776851))

(declare-fun m!776853 () Bool)

(assert (=> d!106561 m!776853))

(declare-fun m!776855 () Bool)

(assert (=> b!832355 m!776855))

(assert (=> b!832181 d!106561))

(declare-fun d!106563 () Bool)

(assert (=> d!106563 (= (get!11829 (getValueByKey!415 (toList!4524 (+!1952 lt!377525 (tuple2!10181 lt!377516 minValue!754))) lt!377528)) (v!10097 (getValueByKey!415 (toList!4524 (+!1952 lt!377525 (tuple2!10181 lt!377516 minValue!754))) lt!377528)))))

(assert (=> d!106327 d!106563))

(declare-fun d!106565 () Bool)

(declare-fun c!90431 () Bool)

(assert (=> d!106565 (= c!90431 (and ((_ is Cons!16004) (toList!4524 (+!1952 lt!377525 (tuple2!10181 lt!377516 minValue!754)))) (= (_1!5100 (h!17134 (toList!4524 (+!1952 lt!377525 (tuple2!10181 lt!377516 minValue!754))))) lt!377528)))))

(declare-fun e!464249 () Option!421)

(assert (=> d!106565 (= (getValueByKey!415 (toList!4524 (+!1952 lt!377525 (tuple2!10181 lt!377516 minValue!754))) lt!377528) e!464249)))

(declare-fun b!832356 () Bool)

(assert (=> b!832356 (= e!464249 (Some!420 (_2!5100 (h!17134 (toList!4524 (+!1952 lt!377525 (tuple2!10181 lt!377516 minValue!754)))))))))

(declare-fun b!832359 () Bool)

(declare-fun e!464250 () Option!421)

(assert (=> b!832359 (= e!464250 None!419)))

(declare-fun b!832357 () Bool)

(assert (=> b!832357 (= e!464249 e!464250)))

(declare-fun c!90432 () Bool)

(assert (=> b!832357 (= c!90432 (and ((_ is Cons!16004) (toList!4524 (+!1952 lt!377525 (tuple2!10181 lt!377516 minValue!754)))) (not (= (_1!5100 (h!17134 (toList!4524 (+!1952 lt!377525 (tuple2!10181 lt!377516 minValue!754))))) lt!377528))))))

(declare-fun b!832358 () Bool)

(assert (=> b!832358 (= e!464250 (getValueByKey!415 (t!22384 (toList!4524 (+!1952 lt!377525 (tuple2!10181 lt!377516 minValue!754)))) lt!377528))))

(assert (= (and d!106565 c!90431) b!832356))

(assert (= (and d!106565 (not c!90431)) b!832357))

(assert (= (and b!832357 c!90432) b!832358))

(assert (= (and b!832357 (not c!90432)) b!832359))

(declare-fun m!776857 () Bool)

(assert (=> b!832358 m!776857))

(assert (=> d!106327 d!106565))

(declare-fun d!106567 () Bool)

(assert (=> d!106567 (= (isDefined!312 (getValueByKey!415 (toList!4524 lt!377508) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (isEmpty!664 (getValueByKey!415 (toList!4524 lt!377508) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun bs!23281 () Bool)

(assert (= bs!23281 d!106567))

(assert (=> bs!23281 m!776545))

(declare-fun m!776859 () Bool)

(assert (=> bs!23281 m!776859))

(assert (=> b!832248 d!106567))

(declare-fun d!106569 () Bool)

(declare-fun c!90433 () Bool)

(assert (=> d!106569 (= c!90433 (and ((_ is Cons!16004) (toList!4524 lt!377508)) (= (_1!5100 (h!17134 (toList!4524 lt!377508))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!464251 () Option!421)

(assert (=> d!106569 (= (getValueByKey!415 (toList!4524 lt!377508) #b0000000000000000000000000000000000000000000000000000000000000000) e!464251)))

(declare-fun b!832360 () Bool)

(assert (=> b!832360 (= e!464251 (Some!420 (_2!5100 (h!17134 (toList!4524 lt!377508)))))))

(declare-fun b!832363 () Bool)

(declare-fun e!464252 () Option!421)

(assert (=> b!832363 (= e!464252 None!419)))

(declare-fun b!832361 () Bool)

(assert (=> b!832361 (= e!464251 e!464252)))

(declare-fun c!90434 () Bool)

(assert (=> b!832361 (= c!90434 (and ((_ is Cons!16004) (toList!4524 lt!377508)) (not (= (_1!5100 (h!17134 (toList!4524 lt!377508))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!832362 () Bool)

(assert (=> b!832362 (= e!464252 (getValueByKey!415 (t!22384 (toList!4524 lt!377508)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!106569 c!90433) b!832360))

(assert (= (and d!106569 (not c!90433)) b!832361))

(assert (= (and b!832361 c!90434) b!832362))

(assert (= (and b!832361 (not c!90434)) b!832363))

(declare-fun m!776861 () Bool)

(assert (=> b!832362 m!776861))

(assert (=> b!832248 d!106569))

(declare-fun d!106571 () Bool)

(declare-fun res!566396 () Bool)

(declare-fun e!464253 () Bool)

(assert (=> d!106571 (=> res!566396 e!464253)))

(assert (=> d!106571 (= res!566396 (and ((_ is Cons!16004) (toList!4524 lt!377537)) (= (_1!5100 (h!17134 (toList!4524 lt!377537))) (_1!5100 lt!377371))))))

(assert (=> d!106571 (= (containsKey!401 (toList!4524 lt!377537) (_1!5100 lt!377371)) e!464253)))

(declare-fun b!832364 () Bool)

(declare-fun e!464254 () Bool)

(assert (=> b!832364 (= e!464253 e!464254)))

(declare-fun res!566397 () Bool)

(assert (=> b!832364 (=> (not res!566397) (not e!464254))))

(assert (=> b!832364 (= res!566397 (and (or (not ((_ is Cons!16004) (toList!4524 lt!377537))) (bvsle (_1!5100 (h!17134 (toList!4524 lt!377537))) (_1!5100 lt!377371))) ((_ is Cons!16004) (toList!4524 lt!377537)) (bvslt (_1!5100 (h!17134 (toList!4524 lt!377537))) (_1!5100 lt!377371))))))

(declare-fun b!832365 () Bool)

(assert (=> b!832365 (= e!464254 (containsKey!401 (t!22384 (toList!4524 lt!377537)) (_1!5100 lt!377371)))))

(assert (= (and d!106571 (not res!566396)) b!832364))

(assert (= (and b!832364 res!566397) b!832365))

(declare-fun m!776863 () Bool)

(assert (=> b!832365 m!776863))

(assert (=> d!106391 d!106571))

(declare-fun d!106573 () Bool)

(declare-fun c!90437 () Bool)

(assert (=> d!106573 (= c!90437 ((_ is Nil!16005) (toList!4524 lt!377403)))))

(declare-fun e!464257 () (InoxSet tuple2!10180))

(assert (=> d!106573 (= (content!390 (toList!4524 lt!377403)) e!464257)))

(declare-fun b!832370 () Bool)

(assert (=> b!832370 (= e!464257 ((as const (Array tuple2!10180 Bool)) false))))

(declare-fun b!832371 () Bool)

(assert (=> b!832371 (= e!464257 ((_ map or) (store ((as const (Array tuple2!10180 Bool)) false) (h!17134 (toList!4524 lt!377403)) true) (content!390 (t!22384 (toList!4524 lt!377403)))))))

(assert (= (and d!106573 c!90437) b!832370))

(assert (= (and d!106573 (not c!90437)) b!832371))

(declare-fun m!776865 () Bool)

(assert (=> b!832371 m!776865))

(declare-fun m!776867 () Bool)

(assert (=> b!832371 m!776867))

(assert (=> d!106491 d!106573))

(declare-fun d!106575 () Bool)

(declare-fun c!90438 () Bool)

(assert (=> d!106575 (= c!90438 ((_ is Nil!16005) (toList!4524 lt!377537)))))

(declare-fun e!464258 () (InoxSet tuple2!10180))

(assert (=> d!106575 (= (content!390 (toList!4524 lt!377537)) e!464258)))

(declare-fun b!832372 () Bool)

(assert (=> b!832372 (= e!464258 ((as const (Array tuple2!10180 Bool)) false))))

(declare-fun b!832373 () Bool)

(assert (=> b!832373 (= e!464258 ((_ map or) (store ((as const (Array tuple2!10180 Bool)) false) (h!17134 (toList!4524 lt!377537)) true) (content!390 (t!22384 (toList!4524 lt!377537)))))))

(assert (= (and d!106575 c!90438) b!832372))

(assert (= (and d!106575 (not c!90438)) b!832373))

(declare-fun m!776869 () Bool)

(assert (=> b!832373 m!776869))

(declare-fun m!776871 () Bool)

(assert (=> b!832373 m!776871))

(assert (=> d!106361 d!106575))

(declare-fun d!106577 () Bool)

(declare-fun lt!377828 () Bool)

(assert (=> d!106577 (= lt!377828 (select (content!390 lt!377742) (tuple2!10181 (_1!5100 lt!377371) (_2!5100 lt!377371))))))

(declare-fun e!464259 () Bool)

(assert (=> d!106577 (= lt!377828 e!464259)))

(declare-fun res!566398 () Bool)

(assert (=> d!106577 (=> (not res!566398) (not e!464259))))

(assert (=> d!106577 (= res!566398 ((_ is Cons!16004) lt!377742))))

(assert (=> d!106577 (= (contains!4213 lt!377742 (tuple2!10181 (_1!5100 lt!377371) (_2!5100 lt!377371))) lt!377828)))

(declare-fun b!832374 () Bool)

(declare-fun e!464260 () Bool)

(assert (=> b!832374 (= e!464259 e!464260)))

(declare-fun res!566399 () Bool)

(assert (=> b!832374 (=> res!566399 e!464260)))

(assert (=> b!832374 (= res!566399 (= (h!17134 lt!377742) (tuple2!10181 (_1!5100 lt!377371) (_2!5100 lt!377371))))))

(declare-fun b!832375 () Bool)

(assert (=> b!832375 (= e!464260 (contains!4213 (t!22384 lt!377742) (tuple2!10181 (_1!5100 lt!377371) (_2!5100 lt!377371))))))

(assert (= (and d!106577 res!566398) b!832374))

(assert (= (and b!832374 (not res!566399)) b!832375))

(declare-fun m!776873 () Bool)

(assert (=> d!106577 m!776873))

(declare-fun m!776875 () Bool)

(assert (=> d!106577 m!776875))

(declare-fun m!776877 () Bool)

(assert (=> b!832375 m!776877))

(assert (=> b!832175 d!106577))

(declare-fun d!106579 () Bool)

(declare-fun lt!377829 () Bool)

(assert (=> d!106579 (= lt!377829 (select (content!390 (toList!4524 lt!377566)) (tuple2!10181 lt!377560 zeroValueBefore!34)))))

(declare-fun e!464261 () Bool)

(assert (=> d!106579 (= lt!377829 e!464261)))

(declare-fun res!566400 () Bool)

(assert (=> d!106579 (=> (not res!566400) (not e!464261))))

(assert (=> d!106579 (= res!566400 ((_ is Cons!16004) (toList!4524 lt!377566)))))

(assert (=> d!106579 (= (contains!4213 (toList!4524 lt!377566) (tuple2!10181 lt!377560 zeroValueBefore!34)) lt!377829)))

(declare-fun b!832376 () Bool)

(declare-fun e!464262 () Bool)

(assert (=> b!832376 (= e!464261 e!464262)))

(declare-fun res!566401 () Bool)

(assert (=> b!832376 (=> res!566401 e!464262)))

(assert (=> b!832376 (= res!566401 (= (h!17134 (toList!4524 lt!377566)) (tuple2!10181 lt!377560 zeroValueBefore!34)))))

(declare-fun b!832377 () Bool)

(assert (=> b!832377 (= e!464262 (contains!4213 (t!22384 (toList!4524 lt!377566)) (tuple2!10181 lt!377560 zeroValueBefore!34)))))

(assert (= (and d!106579 res!566400) b!832376))

(assert (= (and b!832376 (not res!566401)) b!832377))

(declare-fun m!776879 () Bool)

(assert (=> d!106579 m!776879))

(declare-fun m!776881 () Bool)

(assert (=> d!106579 m!776881))

(declare-fun m!776883 () Bool)

(assert (=> b!832377 m!776883))

(assert (=> b!831870 d!106579))

(declare-fun d!106581 () Bool)

(assert (=> d!106581 (= (get!11830 (select (arr!22318 _values!788) #b00000000000000000000000000000000) (dynLambda!983 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)) (v!10095 (select (arr!22318 _values!788) #b00000000000000000000000000000000)))))

(assert (=> b!831989 d!106581))

(declare-fun d!106583 () Bool)

(declare-fun lt!377830 () Bool)

(assert (=> d!106583 (= lt!377830 (select (content!390 lt!377531) (tuple2!10181 (_1!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)) (_2!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))))))

(declare-fun e!464263 () Bool)

(assert (=> d!106583 (= lt!377830 e!464263)))

(declare-fun res!566402 () Bool)

(assert (=> d!106583 (=> (not res!566402) (not e!464263))))

(assert (=> d!106583 (= res!566402 ((_ is Cons!16004) lt!377531))))

(assert (=> d!106583 (= (contains!4213 lt!377531 (tuple2!10181 (_1!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)) (_2!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))) lt!377830)))

(declare-fun b!832378 () Bool)

(declare-fun e!464264 () Bool)

(assert (=> b!832378 (= e!464263 e!464264)))

(declare-fun res!566403 () Bool)

(assert (=> b!832378 (=> res!566403 e!464264)))

(assert (=> b!832378 (= res!566403 (= (h!17134 lt!377531) (tuple2!10181 (_1!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)) (_2!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))))))

(declare-fun b!832379 () Bool)

(assert (=> b!832379 (= e!464264 (contains!4213 (t!22384 lt!377531) (tuple2!10181 (_1!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)) (_2!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))))))

(assert (= (and d!106583 res!566402) b!832378))

(assert (= (and b!832378 (not res!566403)) b!832379))

(declare-fun m!776885 () Bool)

(assert (=> d!106583 m!776885))

(declare-fun m!776887 () Bool)

(assert (=> d!106583 m!776887))

(declare-fun m!776889 () Bool)

(assert (=> b!832379 m!776889))

(assert (=> b!832112 d!106583))

(declare-fun d!106585 () Bool)

(declare-fun res!566404 () Bool)

(declare-fun e!464265 () Bool)

(assert (=> d!106585 (=> res!566404 e!464265)))

(assert (=> d!106585 (= res!566404 (and ((_ is Cons!16004) lt!377409) (= (_1!5100 (h!17134 lt!377409)) (_1!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))))))

(assert (=> d!106585 (= (containsKey!401 lt!377409 (_1!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))) e!464265)))

(declare-fun b!832380 () Bool)

(declare-fun e!464266 () Bool)

(assert (=> b!832380 (= e!464265 e!464266)))

(declare-fun res!566405 () Bool)

(assert (=> b!832380 (=> (not res!566405) (not e!464266))))

(assert (=> b!832380 (= res!566405 (and (or (not ((_ is Cons!16004) lt!377409)) (bvsle (_1!5100 (h!17134 lt!377409)) (_1!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))) ((_ is Cons!16004) lt!377409) (bvslt (_1!5100 (h!17134 lt!377409)) (_1!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))))))

(declare-fun b!832381 () Bool)

(assert (=> b!832381 (= e!464266 (containsKey!401 (t!22384 lt!377409) (_1!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))))

(assert (= (and d!106585 (not res!566404)) b!832380))

(assert (= (and b!832380 res!566405) b!832381))

(declare-fun m!776891 () Bool)

(assert (=> b!832381 m!776891))

(assert (=> b!831925 d!106585))

(declare-fun d!106587 () Bool)

(assert (=> d!106587 (isDefined!312 (getValueByKey!415 (toList!4524 lt!377442) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!377831 () Unit!28497)

(assert (=> d!106587 (= lt!377831 (choose!1435 (toList!4524 lt!377442) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!464267 () Bool)

(assert (=> d!106587 e!464267))

(declare-fun res!566406 () Bool)

(assert (=> d!106587 (=> (not res!566406) (not e!464267))))

(assert (=> d!106587 (= res!566406 (isStrictlySorted!438 (toList!4524 lt!377442)))))

(assert (=> d!106587 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!311 (toList!4524 lt!377442) #b0000000000000000000000000000000000000000000000000000000000000000) lt!377831)))

(declare-fun b!832382 () Bool)

(assert (=> b!832382 (= e!464267 (containsKey!401 (toList!4524 lt!377442) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!106587 res!566406) b!832382))

(assert (=> d!106587 m!776685))

(assert (=> d!106587 m!776685))

(assert (=> d!106587 m!776687))

(declare-fun m!776893 () Bool)

(assert (=> d!106587 m!776893))

(declare-fun m!776895 () Bool)

(assert (=> d!106587 m!776895))

(assert (=> b!832382 m!776681))

(assert (=> b!832243 d!106587))

(declare-fun d!106589 () Bool)

(assert (=> d!106589 (= (isDefined!312 (getValueByKey!415 (toList!4524 lt!377442) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (isEmpty!664 (getValueByKey!415 (toList!4524 lt!377442) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun bs!23282 () Bool)

(assert (= bs!23282 d!106589))

(assert (=> bs!23282 m!776685))

(declare-fun m!776897 () Bool)

(assert (=> bs!23282 m!776897))

(assert (=> b!832243 d!106589))

(declare-fun d!106591 () Bool)

(declare-fun c!90439 () Bool)

(assert (=> d!106591 (= c!90439 (and ((_ is Cons!16004) (toList!4524 lt!377442)) (= (_1!5100 (h!17134 (toList!4524 lt!377442))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!464268 () Option!421)

(assert (=> d!106591 (= (getValueByKey!415 (toList!4524 lt!377442) #b0000000000000000000000000000000000000000000000000000000000000000) e!464268)))

(declare-fun b!832383 () Bool)

(assert (=> b!832383 (= e!464268 (Some!420 (_2!5100 (h!17134 (toList!4524 lt!377442)))))))

(declare-fun b!832386 () Bool)

(declare-fun e!464269 () Option!421)

(assert (=> b!832386 (= e!464269 None!419)))

(declare-fun b!832384 () Bool)

(assert (=> b!832384 (= e!464268 e!464269)))

(declare-fun c!90440 () Bool)

(assert (=> b!832384 (= c!90440 (and ((_ is Cons!16004) (toList!4524 lt!377442)) (not (= (_1!5100 (h!17134 (toList!4524 lt!377442))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!832385 () Bool)

(assert (=> b!832385 (= e!464269 (getValueByKey!415 (t!22384 (toList!4524 lt!377442)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!106591 c!90439) b!832383))

(assert (= (and d!106591 (not c!90439)) b!832384))

(assert (= (and b!832384 c!90440) b!832385))

(assert (= (and b!832384 (not c!90440)) b!832386))

(declare-fun m!776899 () Bool)

(assert (=> b!832385 m!776899))

(assert (=> b!832243 d!106591))

(declare-fun d!106593 () Bool)

(declare-fun res!566407 () Bool)

(declare-fun e!464270 () Bool)

(assert (=> d!106593 (=> res!566407 e!464270)))

(assert (=> d!106593 (= res!566407 (and ((_ is Cons!16004) (toList!4524 lt!377508)) (= (_1!5100 (h!17134 (toList!4524 lt!377508))) (select (arr!22317 _keys!976) #b00000000000000000000000000000000))))))

(assert (=> d!106593 (= (containsKey!401 (toList!4524 lt!377508) (select (arr!22317 _keys!976) #b00000000000000000000000000000000)) e!464270)))

(declare-fun b!832387 () Bool)

(declare-fun e!464271 () Bool)

(assert (=> b!832387 (= e!464270 e!464271)))

(declare-fun res!566408 () Bool)

(assert (=> b!832387 (=> (not res!566408) (not e!464271))))

(assert (=> b!832387 (= res!566408 (and (or (not ((_ is Cons!16004) (toList!4524 lt!377508))) (bvsle (_1!5100 (h!17134 (toList!4524 lt!377508))) (select (arr!22317 _keys!976) #b00000000000000000000000000000000))) ((_ is Cons!16004) (toList!4524 lt!377508)) (bvslt (_1!5100 (h!17134 (toList!4524 lt!377508))) (select (arr!22317 _keys!976) #b00000000000000000000000000000000))))))

(declare-fun b!832388 () Bool)

(assert (=> b!832388 (= e!464271 (containsKey!401 (t!22384 (toList!4524 lt!377508)) (select (arr!22317 _keys!976) #b00000000000000000000000000000000)))))

(assert (= (and d!106593 (not res!566407)) b!832387))

(assert (= (and b!832387 res!566408) b!832388))

(assert (=> b!832388 m!775697))

(declare-fun m!776901 () Bool)

(assert (=> b!832388 m!776901))

(assert (=> d!106367 d!106593))

(declare-fun b!832389 () Bool)

(declare-fun e!464276 () List!16008)

(declare-fun call!36433 () List!16008)

(assert (=> b!832389 (= e!464276 call!36433)))

(declare-fun b!832390 () Bool)

(declare-fun res!566409 () Bool)

(declare-fun e!464273 () Bool)

(assert (=> b!832390 (=> (not res!566409) (not e!464273))))

(declare-fun lt!377832 () List!16008)

(assert (=> b!832390 (= res!566409 (containsKey!401 lt!377832 (_1!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))))

(declare-fun c!90442 () Bool)

(declare-fun e!464275 () List!16008)

(declare-fun b!832391 () Bool)

(declare-fun c!90444 () Bool)

(assert (=> b!832391 (= e!464275 (ite c!90442 (t!22384 (t!22384 (toList!4524 lt!377373))) (ite c!90444 (Cons!16004 (h!17134 (t!22384 (toList!4524 lt!377373))) (t!22384 (t!22384 (toList!4524 lt!377373)))) Nil!16005)))))

(declare-fun b!832392 () Bool)

(declare-fun e!464272 () List!16008)

(assert (=> b!832392 (= e!464272 e!464276)))

(assert (=> b!832392 (= c!90442 (and ((_ is Cons!16004) (t!22384 (toList!4524 lt!377373))) (= (_1!5100 (h!17134 (t!22384 (toList!4524 lt!377373)))) (_1!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))))))

(declare-fun b!832393 () Bool)

(assert (=> b!832393 (= e!464275 (insertStrictlySorted!269 (t!22384 (t!22384 (toList!4524 lt!377373))) (_1!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)) (_2!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))))

(declare-fun bm!36429 () Bool)

(declare-fun call!36434 () List!16008)

(assert (=> bm!36429 (= call!36433 call!36434)))

(declare-fun b!832394 () Bool)

(assert (=> b!832394 (= e!464273 (contains!4213 lt!377832 (tuple2!10181 (_1!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)) (_2!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))))))

(declare-fun b!832395 () Bool)

(declare-fun e!464274 () List!16008)

(declare-fun call!36432 () List!16008)

(assert (=> b!832395 (= e!464274 call!36432)))

(declare-fun b!832396 () Bool)

(assert (=> b!832396 (= c!90444 (and ((_ is Cons!16004) (t!22384 (toList!4524 lt!377373))) (bvsgt (_1!5100 (h!17134 (t!22384 (toList!4524 lt!377373)))) (_1!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))))))

(assert (=> b!832396 (= e!464276 e!464274)))

(declare-fun d!106595 () Bool)

(assert (=> d!106595 e!464273))

(declare-fun res!566410 () Bool)

(assert (=> d!106595 (=> (not res!566410) (not e!464273))))

(assert (=> d!106595 (= res!566410 (isStrictlySorted!438 lt!377832))))

(assert (=> d!106595 (= lt!377832 e!464272)))

(declare-fun c!90443 () Bool)

(assert (=> d!106595 (= c!90443 (and ((_ is Cons!16004) (t!22384 (toList!4524 lt!377373))) (bvslt (_1!5100 (h!17134 (t!22384 (toList!4524 lt!377373)))) (_1!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))))))

(assert (=> d!106595 (isStrictlySorted!438 (t!22384 (toList!4524 lt!377373)))))

(assert (=> d!106595 (= (insertStrictlySorted!269 (t!22384 (toList!4524 lt!377373)) (_1!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)) (_2!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))) lt!377832)))

(declare-fun b!832397 () Bool)

(assert (=> b!832397 (= e!464274 call!36432)))

(declare-fun bm!36430 () Bool)

(assert (=> bm!36430 (= call!36434 ($colon$colon!536 e!464275 (ite c!90443 (h!17134 (t!22384 (toList!4524 lt!377373))) (tuple2!10181 (_1!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)) (_2!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))))))

(declare-fun c!90441 () Bool)

(assert (=> bm!36430 (= c!90441 c!90443)))

(declare-fun bm!36431 () Bool)

(assert (=> bm!36431 (= call!36432 call!36433)))

(declare-fun b!832398 () Bool)

(assert (=> b!832398 (= e!464272 call!36434)))

(assert (= (and d!106595 c!90443) b!832398))

(assert (= (and d!106595 (not c!90443)) b!832392))

(assert (= (and b!832392 c!90442) b!832389))

(assert (= (and b!832392 (not c!90442)) b!832396))

(assert (= (and b!832396 c!90444) b!832395))

(assert (= (and b!832396 (not c!90444)) b!832397))

(assert (= (or b!832395 b!832397) bm!36431))

(assert (= (or b!832389 bm!36431) bm!36429))

(assert (= (or b!832398 bm!36429) bm!36430))

(assert (= (and bm!36430 c!90441) b!832393))

(assert (= (and bm!36430 (not c!90441)) b!832391))

(assert (= (and d!106595 res!566410) b!832390))

(assert (= (and b!832390 res!566409) b!832394))

(declare-fun m!776903 () Bool)

(assert (=> b!832390 m!776903))

(declare-fun m!776905 () Bool)

(assert (=> b!832393 m!776905))

(declare-fun m!776907 () Bool)

(assert (=> d!106595 m!776907))

(declare-fun m!776909 () Bool)

(assert (=> d!106595 m!776909))

(declare-fun m!776911 () Bool)

(assert (=> b!832394 m!776911))

(declare-fun m!776913 () Bool)

(assert (=> bm!36430 m!776913))

(assert (=> b!831951 d!106595))

(declare-fun d!106597 () Bool)

(declare-fun e!464277 () Bool)

(assert (=> d!106597 e!464277))

(declare-fun res!566411 () Bool)

(assert (=> d!106597 (=> res!566411 e!464277)))

(declare-fun lt!377836 () Bool)

(assert (=> d!106597 (= res!566411 (not lt!377836))))

(declare-fun lt!377833 () Bool)

(assert (=> d!106597 (= lt!377836 lt!377833)))

(declare-fun lt!377835 () Unit!28497)

(declare-fun e!464278 () Unit!28497)

(assert (=> d!106597 (= lt!377835 e!464278)))

(declare-fun c!90445 () Bool)

(assert (=> d!106597 (= c!90445 lt!377833)))

(assert (=> d!106597 (= lt!377833 (containsKey!401 (toList!4524 lt!377743) (_1!5100 (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))

(assert (=> d!106597 (= (contains!4212 lt!377743 (_1!5100 (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))) lt!377836)))

(declare-fun b!832399 () Bool)

(declare-fun lt!377834 () Unit!28497)

(assert (=> b!832399 (= e!464278 lt!377834)))

(assert (=> b!832399 (= lt!377834 (lemmaContainsKeyImpliesGetValueByKeyDefined!311 (toList!4524 lt!377743) (_1!5100 (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))

(assert (=> b!832399 (isDefined!312 (getValueByKey!415 (toList!4524 lt!377743) (_1!5100 (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))

(declare-fun b!832400 () Bool)

(declare-fun Unit!28528 () Unit!28497)

(assert (=> b!832400 (= e!464278 Unit!28528)))

(declare-fun b!832401 () Bool)

(assert (=> b!832401 (= e!464277 (isDefined!312 (getValueByKey!415 (toList!4524 lt!377743) (_1!5100 (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))))))

(assert (= (and d!106597 c!90445) b!832399))

(assert (= (and d!106597 (not c!90445)) b!832400))

(assert (= (and d!106597 (not res!566411)) b!832401))

(declare-fun m!776915 () Bool)

(assert (=> d!106597 m!776915))

(declare-fun m!776917 () Bool)

(assert (=> b!832399 m!776917))

(assert (=> b!832399 m!776557))

(assert (=> b!832399 m!776557))

(declare-fun m!776919 () Bool)

(assert (=> b!832399 m!776919))

(assert (=> b!832401 m!776557))

(assert (=> b!832401 m!776557))

(assert (=> b!832401 m!776919))

(assert (=> d!106435 d!106597))

(declare-fun d!106599 () Bool)

(declare-fun c!90446 () Bool)

(assert (=> d!106599 (= c!90446 (and ((_ is Cons!16004) lt!377745) (= (_1!5100 (h!17134 lt!377745)) (_1!5100 (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))))))

(declare-fun e!464279 () Option!421)

(assert (=> d!106599 (= (getValueByKey!415 lt!377745 (_1!5100 (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))) e!464279)))

(declare-fun b!832402 () Bool)

(assert (=> b!832402 (= e!464279 (Some!420 (_2!5100 (h!17134 lt!377745))))))

(declare-fun b!832405 () Bool)

(declare-fun e!464280 () Option!421)

(assert (=> b!832405 (= e!464280 None!419)))

(declare-fun b!832403 () Bool)

(assert (=> b!832403 (= e!464279 e!464280)))

(declare-fun c!90447 () Bool)

(assert (=> b!832403 (= c!90447 (and ((_ is Cons!16004) lt!377745) (not (= (_1!5100 (h!17134 lt!377745)) (_1!5100 (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))))

(declare-fun b!832404 () Bool)

(assert (=> b!832404 (= e!464280 (getValueByKey!415 (t!22384 lt!377745) (_1!5100 (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))

(assert (= (and d!106599 c!90446) b!832402))

(assert (= (and d!106599 (not c!90446)) b!832403))

(assert (= (and b!832403 c!90447) b!832404))

(assert (= (and b!832403 (not c!90447)) b!832405))

(declare-fun m!776921 () Bool)

(assert (=> b!832404 m!776921))

(assert (=> d!106435 d!106599))

(declare-fun d!106601 () Bool)

(assert (=> d!106601 (= (getValueByKey!415 lt!377745 (_1!5100 (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))) (Some!420 (_2!5100 (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))

(declare-fun lt!377837 () Unit!28497)

(assert (=> d!106601 (= lt!377837 (choose!1433 lt!377745 (_1!5100 (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)) (_2!5100 (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))

(declare-fun e!464281 () Bool)

(assert (=> d!106601 e!464281))

(declare-fun res!566412 () Bool)

(assert (=> d!106601 (=> (not res!566412) (not e!464281))))

(assert (=> d!106601 (= res!566412 (isStrictlySorted!438 lt!377745))))

(assert (=> d!106601 (= (lemmaContainsTupThenGetReturnValue!231 lt!377745 (_1!5100 (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)) (_2!5100 (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))) lt!377837)))

(declare-fun b!832406 () Bool)

(declare-fun res!566413 () Bool)

(assert (=> b!832406 (=> (not res!566413) (not e!464281))))

(assert (=> b!832406 (= res!566413 (containsKey!401 lt!377745 (_1!5100 (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))

(declare-fun b!832407 () Bool)

(assert (=> b!832407 (= e!464281 (contains!4213 lt!377745 (tuple2!10181 (_1!5100 (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)) (_2!5100 (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))))))

(assert (= (and d!106601 res!566412) b!832406))

(assert (= (and b!832406 res!566413) b!832407))

(assert (=> d!106601 m!776551))

(declare-fun m!776923 () Bool)

(assert (=> d!106601 m!776923))

(declare-fun m!776925 () Bool)

(assert (=> d!106601 m!776925))

(declare-fun m!776927 () Bool)

(assert (=> b!832406 m!776927))

(declare-fun m!776929 () Bool)

(assert (=> b!832407 m!776929))

(assert (=> d!106435 d!106601))

(declare-fun b!832408 () Bool)

(declare-fun e!464286 () List!16008)

(declare-fun call!36436 () List!16008)

(assert (=> b!832408 (= e!464286 call!36436)))

(declare-fun b!832409 () Bool)

(declare-fun res!566414 () Bool)

(declare-fun e!464283 () Bool)

(assert (=> b!832409 (=> (not res!566414) (not e!464283))))

(declare-fun lt!377838 () List!16008)

(assert (=> b!832409 (= res!566414 (containsKey!401 lt!377838 (_1!5100 (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))

(declare-fun e!464285 () List!16008)

(declare-fun c!90451 () Bool)

(declare-fun b!832410 () Bool)

(declare-fun c!90449 () Bool)

(assert (=> b!832410 (= e!464285 (ite c!90449 (t!22384 (toList!4524 call!36396)) (ite c!90451 (Cons!16004 (h!17134 (toList!4524 call!36396)) (t!22384 (toList!4524 call!36396))) Nil!16005)))))

(declare-fun b!832411 () Bool)

(declare-fun e!464282 () List!16008)

(assert (=> b!832411 (= e!464282 e!464286)))

(assert (=> b!832411 (= c!90449 (and ((_ is Cons!16004) (toList!4524 call!36396)) (= (_1!5100 (h!17134 (toList!4524 call!36396))) (_1!5100 (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))))))

(declare-fun b!832412 () Bool)

(assert (=> b!832412 (= e!464285 (insertStrictlySorted!269 (t!22384 (toList!4524 call!36396)) (_1!5100 (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)) (_2!5100 (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))

(declare-fun bm!36432 () Bool)

(declare-fun call!36437 () List!16008)

(assert (=> bm!36432 (= call!36436 call!36437)))

(declare-fun b!832413 () Bool)

(assert (=> b!832413 (= e!464283 (contains!4213 lt!377838 (tuple2!10181 (_1!5100 (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)) (_2!5100 (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))))))

(declare-fun b!832414 () Bool)

(declare-fun e!464284 () List!16008)

(declare-fun call!36435 () List!16008)

(assert (=> b!832414 (= e!464284 call!36435)))

(declare-fun b!832415 () Bool)

(assert (=> b!832415 (= c!90451 (and ((_ is Cons!16004) (toList!4524 call!36396)) (bvsgt (_1!5100 (h!17134 (toList!4524 call!36396))) (_1!5100 (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))))))

(assert (=> b!832415 (= e!464286 e!464284)))

(declare-fun d!106603 () Bool)

(assert (=> d!106603 e!464283))

(declare-fun res!566415 () Bool)

(assert (=> d!106603 (=> (not res!566415) (not e!464283))))

(assert (=> d!106603 (= res!566415 (isStrictlySorted!438 lt!377838))))

(assert (=> d!106603 (= lt!377838 e!464282)))

(declare-fun c!90450 () Bool)

(assert (=> d!106603 (= c!90450 (and ((_ is Cons!16004) (toList!4524 call!36396)) (bvslt (_1!5100 (h!17134 (toList!4524 call!36396))) (_1!5100 (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))))))

(assert (=> d!106603 (isStrictlySorted!438 (toList!4524 call!36396))))

(assert (=> d!106603 (= (insertStrictlySorted!269 (toList!4524 call!36396) (_1!5100 (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)) (_2!5100 (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))) lt!377838)))

(declare-fun b!832416 () Bool)

(assert (=> b!832416 (= e!464284 call!36435)))

(declare-fun bm!36433 () Bool)

(assert (=> bm!36433 (= call!36437 ($colon$colon!536 e!464285 (ite c!90450 (h!17134 (toList!4524 call!36396)) (tuple2!10181 (_1!5100 (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)) (_2!5100 (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))))

(declare-fun c!90448 () Bool)

(assert (=> bm!36433 (= c!90448 c!90450)))

(declare-fun bm!36434 () Bool)

(assert (=> bm!36434 (= call!36435 call!36436)))

(declare-fun b!832417 () Bool)

(assert (=> b!832417 (= e!464282 call!36437)))

(assert (= (and d!106603 c!90450) b!832417))

(assert (= (and d!106603 (not c!90450)) b!832411))

(assert (= (and b!832411 c!90449) b!832408))

(assert (= (and b!832411 (not c!90449)) b!832415))

(assert (= (and b!832415 c!90451) b!832414))

(assert (= (and b!832415 (not c!90451)) b!832416))

(assert (= (or b!832414 b!832416) bm!36434))

(assert (= (or b!832408 bm!36434) bm!36432))

(assert (= (or b!832417 bm!36432) bm!36433))

(assert (= (and bm!36433 c!90448) b!832412))

(assert (= (and bm!36433 (not c!90448)) b!832410))

(assert (= (and d!106603 res!566415) b!832409))

(assert (= (and b!832409 res!566414) b!832413))

(declare-fun m!776931 () Bool)

(assert (=> b!832409 m!776931))

(declare-fun m!776933 () Bool)

(assert (=> b!832412 m!776933))

(declare-fun m!776935 () Bool)

(assert (=> d!106603 m!776935))

(declare-fun m!776937 () Bool)

(assert (=> d!106603 m!776937))

(declare-fun m!776939 () Bool)

(assert (=> b!832413 m!776939))

(declare-fun m!776941 () Bool)

(assert (=> bm!36433 m!776941))

(assert (=> d!106435 d!106603))

(declare-fun lt!377839 () Bool)

(declare-fun d!106605 () Bool)

(assert (=> d!106605 (= lt!377839 (select (content!390 (toList!4524 lt!377771)) (tuple2!10181 (select (arr!22317 _keys!976) #b00000000000000000000000000000000) (get!11828 (select (arr!22318 _values!788) #b00000000000000000000000000000000) (dynLambda!983 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!464287 () Bool)

(assert (=> d!106605 (= lt!377839 e!464287)))

(declare-fun res!566416 () Bool)

(assert (=> d!106605 (=> (not res!566416) (not e!464287))))

(assert (=> d!106605 (= res!566416 ((_ is Cons!16004) (toList!4524 lt!377771)))))

(assert (=> d!106605 (= (contains!4213 (toList!4524 lt!377771) (tuple2!10181 (select (arr!22317 _keys!976) #b00000000000000000000000000000000) (get!11828 (select (arr!22318 _values!788) #b00000000000000000000000000000000) (dynLambda!983 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))) lt!377839)))

(declare-fun b!832418 () Bool)

(declare-fun e!464288 () Bool)

(assert (=> b!832418 (= e!464287 e!464288)))

(declare-fun res!566417 () Bool)

(assert (=> b!832418 (=> res!566417 e!464288)))

(assert (=> b!832418 (= res!566417 (= (h!17134 (toList!4524 lt!377771)) (tuple2!10181 (select (arr!22317 _keys!976) #b00000000000000000000000000000000) (get!11828 (select (arr!22318 _values!788) #b00000000000000000000000000000000) (dynLambda!983 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!832419 () Bool)

(assert (=> b!832419 (= e!464288 (contains!4213 (t!22384 (toList!4524 lt!377771)) (tuple2!10181 (select (arr!22317 _keys!976) #b00000000000000000000000000000000) (get!11828 (select (arr!22318 _values!788) #b00000000000000000000000000000000) (dynLambda!983 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (= (and d!106605 res!566416) b!832418))

(assert (= (and b!832418 (not res!566417)) b!832419))

(declare-fun m!776943 () Bool)

(assert (=> d!106605 m!776943))

(declare-fun m!776945 () Bool)

(assert (=> d!106605 m!776945))

(declare-fun m!776947 () Bool)

(assert (=> b!832419 m!776947))

(assert (=> b!832216 d!106605))

(assert (=> d!106459 d!106457))

(assert (=> d!106459 d!106461))

(declare-fun d!106607 () Bool)

(assert (=> d!106607 (not (contains!4212 (+!1952 lt!377448 (tuple2!10181 lt!377445 lt!377450)) lt!377446))))

(assert (=> d!106607 true))

(declare-fun _$36!347 () Unit!28497)

(assert (=> d!106607 (= (choose!1434 lt!377448 lt!377445 lt!377450 lt!377446) _$36!347)))

(declare-fun bs!23283 () Bool)

(assert (= bs!23283 d!106607))

(assert (=> bs!23283 m!775769))

(assert (=> bs!23283 m!775769))

(assert (=> bs!23283 m!775771))

(assert (=> d!106459 d!106607))

(declare-fun d!106609 () Bool)

(declare-fun e!464289 () Bool)

(assert (=> d!106609 e!464289))

(declare-fun res!566418 () Bool)

(assert (=> d!106609 (=> res!566418 e!464289)))

(declare-fun lt!377843 () Bool)

(assert (=> d!106609 (= res!566418 (not lt!377843))))

(declare-fun lt!377840 () Bool)

(assert (=> d!106609 (= lt!377843 lt!377840)))

(declare-fun lt!377842 () Unit!28497)

(declare-fun e!464290 () Unit!28497)

(assert (=> d!106609 (= lt!377842 e!464290)))

(declare-fun c!90452 () Bool)

(assert (=> d!106609 (= c!90452 lt!377840)))

(assert (=> d!106609 (= lt!377840 (containsKey!401 (toList!4524 lt!377448) lt!377446))))

(assert (=> d!106609 (= (contains!4212 lt!377448 lt!377446) lt!377843)))

(declare-fun b!832421 () Bool)

(declare-fun lt!377841 () Unit!28497)

(assert (=> b!832421 (= e!464290 lt!377841)))

(assert (=> b!832421 (= lt!377841 (lemmaContainsKeyImpliesGetValueByKeyDefined!311 (toList!4524 lt!377448) lt!377446))))

(assert (=> b!832421 (isDefined!312 (getValueByKey!415 (toList!4524 lt!377448) lt!377446))))

(declare-fun b!832422 () Bool)

(declare-fun Unit!28529 () Unit!28497)

(assert (=> b!832422 (= e!464290 Unit!28529)))

(declare-fun b!832423 () Bool)

(assert (=> b!832423 (= e!464289 (isDefined!312 (getValueByKey!415 (toList!4524 lt!377448) lt!377446)))))

(assert (= (and d!106609 c!90452) b!832421))

(assert (= (and d!106609 (not c!90452)) b!832422))

(assert (= (and d!106609 (not res!566418)) b!832423))

(declare-fun m!776949 () Bool)

(assert (=> d!106609 m!776949))

(declare-fun m!776951 () Bool)

(assert (=> b!832421 m!776951))

(declare-fun m!776953 () Bool)

(assert (=> b!832421 m!776953))

(assert (=> b!832421 m!776953))

(declare-fun m!776955 () Bool)

(assert (=> b!832421 m!776955))

(assert (=> b!832423 m!776953))

(assert (=> b!832423 m!776953))

(assert (=> b!832423 m!776955))

(assert (=> d!106459 d!106609))

(declare-fun d!106611 () Bool)

(assert (=> d!106611 (= (validKeyInArray!0 (select (arr!22317 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))) (and (not (= (select (arr!22317 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!22317 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!832010 d!106611))

(declare-fun d!106613 () Bool)

(assert (=> d!106613 (= (content!391 Nil!16006) ((as const (Array (_ BitVec 64) Bool)) false))))

(assert (=> d!106483 d!106613))

(declare-fun b!832424 () Bool)

(declare-fun e!464295 () List!16008)

(declare-fun call!36439 () List!16008)

(assert (=> b!832424 (= e!464295 call!36439)))

(declare-fun b!832425 () Bool)

(declare-fun res!566419 () Bool)

(declare-fun e!464292 () Bool)

(assert (=> b!832425 (=> (not res!566419) (not e!464292))))

(declare-fun lt!377844 () List!16008)

(assert (=> b!832425 (= res!566419 (containsKey!401 lt!377844 (_1!5100 lt!377371)))))

(declare-fun b!832426 () Bool)

(declare-fun c!90454 () Bool)

(declare-fun c!90456 () Bool)

(declare-fun e!464294 () List!16008)

(assert (=> b!832426 (= e!464294 (ite c!90454 (t!22384 (t!22384 (toList!4524 (+!1952 lt!377369 lt!377372)))) (ite c!90456 (Cons!16004 (h!17134 (t!22384 (toList!4524 (+!1952 lt!377369 lt!377372)))) (t!22384 (t!22384 (toList!4524 (+!1952 lt!377369 lt!377372))))) Nil!16005)))))

(declare-fun b!832427 () Bool)

(declare-fun e!464291 () List!16008)

(assert (=> b!832427 (= e!464291 e!464295)))

(assert (=> b!832427 (= c!90454 (and ((_ is Cons!16004) (t!22384 (toList!4524 (+!1952 lt!377369 lt!377372)))) (= (_1!5100 (h!17134 (t!22384 (toList!4524 (+!1952 lt!377369 lt!377372))))) (_1!5100 lt!377371))))))

(declare-fun b!832428 () Bool)

(assert (=> b!832428 (= e!464294 (insertStrictlySorted!269 (t!22384 (t!22384 (toList!4524 (+!1952 lt!377369 lt!377372)))) (_1!5100 lt!377371) (_2!5100 lt!377371)))))

(declare-fun bm!36435 () Bool)

(declare-fun call!36440 () List!16008)

(assert (=> bm!36435 (= call!36439 call!36440)))

(declare-fun b!832429 () Bool)

(assert (=> b!832429 (= e!464292 (contains!4213 lt!377844 (tuple2!10181 (_1!5100 lt!377371) (_2!5100 lt!377371))))))

(declare-fun b!832430 () Bool)

(declare-fun e!464293 () List!16008)

(declare-fun call!36438 () List!16008)

(assert (=> b!832430 (= e!464293 call!36438)))

(declare-fun b!832431 () Bool)

(assert (=> b!832431 (= c!90456 (and ((_ is Cons!16004) (t!22384 (toList!4524 (+!1952 lt!377369 lt!377372)))) (bvsgt (_1!5100 (h!17134 (t!22384 (toList!4524 (+!1952 lt!377369 lt!377372))))) (_1!5100 lt!377371))))))

(assert (=> b!832431 (= e!464295 e!464293)))

(declare-fun d!106615 () Bool)

(assert (=> d!106615 e!464292))

(declare-fun res!566420 () Bool)

(assert (=> d!106615 (=> (not res!566420) (not e!464292))))

(assert (=> d!106615 (= res!566420 (isStrictlySorted!438 lt!377844))))

(assert (=> d!106615 (= lt!377844 e!464291)))

(declare-fun c!90455 () Bool)

(assert (=> d!106615 (= c!90455 (and ((_ is Cons!16004) (t!22384 (toList!4524 (+!1952 lt!377369 lt!377372)))) (bvslt (_1!5100 (h!17134 (t!22384 (toList!4524 (+!1952 lt!377369 lt!377372))))) (_1!5100 lt!377371))))))

(assert (=> d!106615 (isStrictlySorted!438 (t!22384 (toList!4524 (+!1952 lt!377369 lt!377372))))))

(assert (=> d!106615 (= (insertStrictlySorted!269 (t!22384 (toList!4524 (+!1952 lt!377369 lt!377372))) (_1!5100 lt!377371) (_2!5100 lt!377371)) lt!377844)))

(declare-fun b!832432 () Bool)

(assert (=> b!832432 (= e!464293 call!36438)))

(declare-fun bm!36436 () Bool)

(assert (=> bm!36436 (= call!36440 ($colon$colon!536 e!464294 (ite c!90455 (h!17134 (t!22384 (toList!4524 (+!1952 lt!377369 lt!377372)))) (tuple2!10181 (_1!5100 lt!377371) (_2!5100 lt!377371)))))))

(declare-fun c!90453 () Bool)

(assert (=> bm!36436 (= c!90453 c!90455)))

(declare-fun bm!36437 () Bool)

(assert (=> bm!36437 (= call!36438 call!36439)))

(declare-fun b!832433 () Bool)

(assert (=> b!832433 (= e!464291 call!36440)))

(assert (= (and d!106615 c!90455) b!832433))

(assert (= (and d!106615 (not c!90455)) b!832427))

(assert (= (and b!832427 c!90454) b!832424))

(assert (= (and b!832427 (not c!90454)) b!832431))

(assert (= (and b!832431 c!90456) b!832430))

(assert (= (and b!832431 (not c!90456)) b!832432))

(assert (= (or b!832430 b!832432) bm!36437))

(assert (= (or b!832424 bm!36437) bm!36435))

(assert (= (or b!832433 bm!36435) bm!36436))

(assert (= (and bm!36436 c!90453) b!832428))

(assert (= (and bm!36436 (not c!90453)) b!832426))

(assert (= (and d!106615 res!566420) b!832425))

(assert (= (and b!832425 res!566419) b!832429))

(declare-fun m!776957 () Bool)

(assert (=> b!832425 m!776957))

(declare-fun m!776959 () Bool)

(assert (=> b!832428 m!776959))

(declare-fun m!776961 () Bool)

(assert (=> d!106615 m!776961))

(declare-fun m!776963 () Bool)

(assert (=> d!106615 m!776963))

(declare-fun m!776965 () Bool)

(assert (=> b!832429 m!776965))

(declare-fun m!776967 () Bool)

(assert (=> bm!36436 m!776967))

(assert (=> b!832098 d!106615))

(declare-fun d!106617 () Bool)

(declare-fun lt!377845 () Bool)

(assert (=> d!106617 (= lt!377845 (select (content!390 (t!22384 (toList!4524 lt!377407))) (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))))

(declare-fun e!464296 () Bool)

(assert (=> d!106617 (= lt!377845 e!464296)))

(declare-fun res!566421 () Bool)

(assert (=> d!106617 (=> (not res!566421) (not e!464296))))

(assert (=> d!106617 (= res!566421 ((_ is Cons!16004) (t!22384 (toList!4524 lt!377407))))))

(assert (=> d!106617 (= (contains!4213 (t!22384 (toList!4524 lt!377407)) (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)) lt!377845)))

(declare-fun b!832434 () Bool)

(declare-fun e!464297 () Bool)

(assert (=> b!832434 (= e!464296 e!464297)))

(declare-fun res!566422 () Bool)

(assert (=> b!832434 (=> res!566422 e!464297)))

(assert (=> b!832434 (= res!566422 (= (h!17134 (t!22384 (toList!4524 lt!377407))) (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))))

(declare-fun b!832435 () Bool)

(assert (=> b!832435 (= e!464297 (contains!4213 (t!22384 (t!22384 (toList!4524 lt!377407))) (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))))

(assert (= (and d!106617 res!566421) b!832434))

(assert (= (and b!832434 (not res!566422)) b!832435))

(declare-fun m!776969 () Bool)

(assert (=> d!106617 m!776969))

(declare-fun m!776971 () Bool)

(assert (=> d!106617 m!776971))

(declare-fun m!776973 () Bool)

(assert (=> b!832435 m!776973))

(assert (=> b!832266 d!106617))

(assert (=> d!106283 d!106257))

(assert (=> d!106283 d!106261))

(assert (=> d!106283 d!106281))

(declare-fun d!106619 () Bool)

(declare-fun e!464298 () Bool)

(assert (=> d!106619 e!464298))

(declare-fun res!566423 () Bool)

(assert (=> d!106619 (=> res!566423 e!464298)))

(declare-fun lt!377849 () Bool)

(assert (=> d!106619 (= res!566423 (not lt!377849))))

(declare-fun lt!377846 () Bool)

(assert (=> d!106619 (= lt!377849 lt!377846)))

(declare-fun lt!377848 () Unit!28497)

(declare-fun e!464299 () Unit!28497)

(assert (=> d!106619 (= lt!377848 e!464299)))

(declare-fun c!90457 () Bool)

(assert (=> d!106619 (= c!90457 lt!377846)))

(assert (=> d!106619 (= lt!377846 (containsKey!401 (toList!4524 lt!377544) lt!377549))))

(assert (=> d!106619 (= (contains!4212 lt!377544 lt!377549) lt!377849)))

(declare-fun b!832436 () Bool)

(declare-fun lt!377847 () Unit!28497)

(assert (=> b!832436 (= e!464299 lt!377847)))

(assert (=> b!832436 (= lt!377847 (lemmaContainsKeyImpliesGetValueByKeyDefined!311 (toList!4524 lt!377544) lt!377549))))

(assert (=> b!832436 (isDefined!312 (getValueByKey!415 (toList!4524 lt!377544) lt!377549))))

(declare-fun b!832437 () Bool)

(declare-fun Unit!28530 () Unit!28497)

(assert (=> b!832437 (= e!464299 Unit!28530)))

(declare-fun b!832438 () Bool)

(assert (=> b!832438 (= e!464298 (isDefined!312 (getValueByKey!415 (toList!4524 lt!377544) lt!377549)))))

(assert (= (and d!106619 c!90457) b!832436))

(assert (= (and d!106619 (not c!90457)) b!832437))

(assert (= (and d!106619 (not res!566423)) b!832438))

(declare-fun m!776975 () Bool)

(assert (=> d!106619 m!776975))

(declare-fun m!776977 () Bool)

(assert (=> b!832436 m!776977))

(assert (=> b!832436 m!775955))

(assert (=> b!832436 m!775955))

(declare-fun m!776979 () Bool)

(assert (=> b!832436 m!776979))

(assert (=> b!832438 m!775955))

(assert (=> b!832438 m!775955))

(assert (=> b!832438 m!776979))

(assert (=> d!106283 d!106619))

(declare-fun d!106621 () Bool)

(assert (=> d!106621 (= (apply!373 (+!1952 lt!377544 (tuple2!10181 lt!377560 zeroValueBefore!34)) lt!377549) (apply!373 lt!377544 lt!377549))))

(assert (=> d!106621 true))

(declare-fun _$34!1148 () Unit!28497)

(assert (=> d!106621 (= (choose!1431 lt!377544 lt!377560 zeroValueBefore!34 lt!377549) _$34!1148)))

(declare-fun bs!23284 () Bool)

(assert (= bs!23284 d!106621))

(assert (=> bs!23284 m!775903))

(assert (=> bs!23284 m!775903))

(assert (=> bs!23284 m!775905))

(assert (=> bs!23284 m!775915))

(assert (=> d!106283 d!106621))

(declare-fun b!832439 () Bool)

(declare-fun e!464300 () ListLongMap!9017)

(declare-fun e!464302 () ListLongMap!9017)

(assert (=> b!832439 (= e!464300 e!464302)))

(declare-fun c!90460 () Bool)

(assert (=> b!832439 (= c!90460 (validKeyInArray!0 (select (arr!22317 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001))))))

(declare-fun b!832440 () Bool)

(declare-fun e!464301 () Bool)

(declare-fun e!464304 () Bool)

(assert (=> b!832440 (= e!464301 e!464304)))

(declare-fun c!90458 () Bool)

(declare-fun e!464305 () Bool)

(assert (=> b!832440 (= c!90458 e!464305)))

(declare-fun res!566425 () Bool)

(assert (=> b!832440 (=> (not res!566425) (not e!464305))))

(assert (=> b!832440 (= res!566425 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!22738 _keys!976)))))

(declare-fun b!832441 () Bool)

(declare-fun lt!377850 () Unit!28497)

(declare-fun lt!377853 () Unit!28497)

(assert (=> b!832441 (= lt!377850 lt!377853)))

(declare-fun lt!377856 () V!25285)

(declare-fun lt!377852 () (_ BitVec 64))

(declare-fun lt!377854 () ListLongMap!9017)

(declare-fun lt!377851 () (_ BitVec 64))

(assert (=> b!832441 (not (contains!4212 (+!1952 lt!377854 (tuple2!10181 lt!377851 lt!377856)) lt!377852))))

(assert (=> b!832441 (= lt!377853 (addStillNotContains!200 lt!377854 lt!377851 lt!377856 lt!377852))))

(assert (=> b!832441 (= lt!377852 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!832441 (= lt!377856 (get!11828 (select (arr!22318 _values!788) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)) (dynLambda!983 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!832441 (= lt!377851 (select (arr!22317 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)))))

(declare-fun call!36441 () ListLongMap!9017)

(assert (=> b!832441 (= lt!377854 call!36441)))

(assert (=> b!832441 (= e!464302 (+!1952 call!36441 (tuple2!10181 (select (arr!22317 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)) (get!11828 (select (arr!22318 _values!788) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)) (dynLambda!983 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!832442 () Bool)

(declare-fun e!464306 () Bool)

(assert (=> b!832442 (= e!464304 e!464306)))

(assert (=> b!832442 (and (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!22738 _keys!976)))))

(declare-fun res!566424 () Bool)

(declare-fun lt!377855 () ListLongMap!9017)

(assert (=> b!832442 (= res!566424 (contains!4212 lt!377855 (select (arr!22317 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001))))))

(assert (=> b!832442 (=> (not res!566424) (not e!464306))))

(declare-fun b!832443 () Bool)

(assert (=> b!832443 (= e!464302 call!36441)))

(declare-fun b!832444 () Bool)

(assert (=> b!832444 (and (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!22738 _keys!976)))))

(assert (=> b!832444 (and (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!22739 _values!788)))))

(assert (=> b!832444 (= e!464306 (= (apply!373 lt!377855 (select (arr!22317 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001))) (get!11828 (select (arr!22318 _values!788) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)) (dynLambda!983 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!832445 () Bool)

(declare-fun e!464303 () Bool)

(assert (=> b!832445 (= e!464304 e!464303)))

(declare-fun c!90459 () Bool)

(assert (=> b!832445 (= c!90459 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!22738 _keys!976)))))

(declare-fun b!832446 () Bool)

(assert (=> b!832446 (= e!464303 (= lt!377855 (getCurrentListMapNoExtraKeys!2523 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001 #b00000000000000000000000000000001) defaultEntry!796)))))

(declare-fun bm!36438 () Bool)

(assert (=> bm!36438 (= call!36441 (getCurrentListMapNoExtraKeys!2523 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001 #b00000000000000000000000000000001) defaultEntry!796))))

(declare-fun b!832448 () Bool)

(assert (=> b!832448 (= e!464303 (isEmpty!662 lt!377855))))

(declare-fun b!832449 () Bool)

(declare-fun res!566426 () Bool)

(assert (=> b!832449 (=> (not res!566426) (not e!464301))))

(assert (=> b!832449 (= res!566426 (not (contains!4212 lt!377855 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!832450 () Bool)

(assert (=> b!832450 (= e!464305 (validKeyInArray!0 (select (arr!22317 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001))))))

(assert (=> b!832450 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))

(declare-fun d!106623 () Bool)

(assert (=> d!106623 e!464301))

(declare-fun res!566427 () Bool)

(assert (=> d!106623 (=> (not res!566427) (not e!464301))))

(assert (=> d!106623 (= res!566427 (not (contains!4212 lt!377855 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!106623 (= lt!377855 e!464300)))

(declare-fun c!90461 () Bool)

(assert (=> d!106623 (= c!90461 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!22738 _keys!976)))))

(assert (=> d!106623 (validMask!0 mask!1312)))

(assert (=> d!106623 (= (getCurrentListMapNoExtraKeys!2523 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) defaultEntry!796) lt!377855)))

(declare-fun b!832447 () Bool)

(assert (=> b!832447 (= e!464300 (ListLongMap!9018 Nil!16005))))

(assert (= (and d!106623 c!90461) b!832447))

(assert (= (and d!106623 (not c!90461)) b!832439))

(assert (= (and b!832439 c!90460) b!832441))

(assert (= (and b!832439 (not c!90460)) b!832443))

(assert (= (or b!832441 b!832443) bm!36438))

(assert (= (and d!106623 res!566427) b!832449))

(assert (= (and b!832449 res!566426) b!832440))

(assert (= (and b!832440 res!566425) b!832450))

(assert (= (and b!832440 c!90458) b!832442))

(assert (= (and b!832440 (not c!90458)) b!832445))

(assert (= (and b!832442 res!566424) b!832444))

(assert (= (and b!832445 c!90459) b!832446))

(assert (= (and b!832445 (not c!90459)) b!832448))

(declare-fun b_lambda!11477 () Bool)

(assert (=> (not b_lambda!11477) (not b!832441)))

(assert (=> b!832441 t!22389))

(declare-fun b_and!22607 () Bool)

(assert (= b_and!22605 (and (=> t!22389 result!8029) b_and!22607)))

(declare-fun b_lambda!11479 () Bool)

(assert (=> (not b_lambda!11479) (not b!832444)))

(assert (=> b!832444 t!22389))

(declare-fun b_and!22609 () Bool)

(assert (= b_and!22607 (and (=> t!22389 result!8029) b_and!22609)))

(declare-fun m!776981 () Bool)

(assert (=> bm!36438 m!776981))

(assert (=> b!832442 m!776795))

(assert (=> b!832442 m!776795))

(declare-fun m!776983 () Bool)

(assert (=> b!832442 m!776983))

(declare-fun m!776985 () Bool)

(assert (=> b!832441 m!776985))

(assert (=> b!832441 m!776801))

(assert (=> b!832441 m!775747))

(assert (=> b!832441 m!776803))

(assert (=> b!832441 m!776985))

(declare-fun m!776987 () Bool)

(assert (=> b!832441 m!776987))

(assert (=> b!832441 m!776795))

(declare-fun m!776989 () Bool)

(assert (=> b!832441 m!776989))

(declare-fun m!776991 () Bool)

(assert (=> b!832441 m!776991))

(assert (=> b!832441 m!776801))

(assert (=> b!832441 m!775747))

(declare-fun m!776993 () Bool)

(assert (=> d!106623 m!776993))

(assert (=> d!106623 m!775625))

(assert (=> b!832446 m!776981))

(declare-fun m!776995 () Bool)

(assert (=> b!832448 m!776995))

(assert (=> b!832450 m!776795))

(assert (=> b!832450 m!776795))

(assert (=> b!832450 m!776815))

(declare-fun m!776997 () Bool)

(assert (=> b!832449 m!776997))

(assert (=> b!832439 m!776795))

(assert (=> b!832439 m!776795))

(assert (=> b!832439 m!776815))

(assert (=> b!832444 m!776801))

(assert (=> b!832444 m!775747))

(assert (=> b!832444 m!776803))

(assert (=> b!832444 m!776795))

(assert (=> b!832444 m!776795))

(declare-fun m!776999 () Bool)

(assert (=> b!832444 m!776999))

(assert (=> b!832444 m!776801))

(assert (=> b!832444 m!775747))

(assert (=> bm!36404 d!106623))

(declare-fun d!106625 () Bool)

(assert (=> d!106625 (= (get!11829 (getValueByKey!415 (toList!4524 lt!377559) lt!377562)) (v!10097 (getValueByKey!415 (toList!4524 lt!377559) lt!377562)))))

(assert (=> d!106255 d!106625))

(declare-fun d!106627 () Bool)

(declare-fun c!90462 () Bool)

(assert (=> d!106627 (= c!90462 (and ((_ is Cons!16004) (toList!4524 lt!377559)) (= (_1!5100 (h!17134 (toList!4524 lt!377559))) lt!377562)))))

(declare-fun e!464307 () Option!421)

(assert (=> d!106627 (= (getValueByKey!415 (toList!4524 lt!377559) lt!377562) e!464307)))

(declare-fun b!832451 () Bool)

(assert (=> b!832451 (= e!464307 (Some!420 (_2!5100 (h!17134 (toList!4524 lt!377559)))))))

(declare-fun b!832454 () Bool)

(declare-fun e!464308 () Option!421)

(assert (=> b!832454 (= e!464308 None!419)))

(declare-fun b!832452 () Bool)

(assert (=> b!832452 (= e!464307 e!464308)))

(declare-fun c!90463 () Bool)

(assert (=> b!832452 (= c!90463 (and ((_ is Cons!16004) (toList!4524 lt!377559)) (not (= (_1!5100 (h!17134 (toList!4524 lt!377559))) lt!377562))))))

(declare-fun b!832453 () Bool)

(assert (=> b!832453 (= e!464308 (getValueByKey!415 (t!22384 (toList!4524 lt!377559)) lt!377562))))

(assert (= (and d!106627 c!90462) b!832451))

(assert (= (and d!106627 (not c!90462)) b!832452))

(assert (= (and b!832452 c!90463) b!832453))

(assert (= (and b!832452 (not c!90463)) b!832454))

(declare-fun m!777001 () Bool)

(assert (=> b!832453 m!777001))

(assert (=> d!106255 d!106627))

(declare-fun d!106629 () Bool)

(assert (=> d!106629 (= (isDefined!312 (getValueByKey!415 (toList!4524 lt!377508) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (isEmpty!664 (getValueByKey!415 (toList!4524 lt!377508) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun bs!23285 () Bool)

(assert (= bs!23285 d!106629))

(assert (=> bs!23285 m!776297))

(declare-fun m!777003 () Bool)

(assert (=> bs!23285 m!777003))

(assert (=> b!832009 d!106629))

(declare-fun d!106631 () Bool)

(declare-fun c!90464 () Bool)

(assert (=> d!106631 (= c!90464 (and ((_ is Cons!16004) (toList!4524 lt!377508)) (= (_1!5100 (h!17134 (toList!4524 lt!377508))) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!464309 () Option!421)

(assert (=> d!106631 (= (getValueByKey!415 (toList!4524 lt!377508) #b1000000000000000000000000000000000000000000000000000000000000000) e!464309)))

(declare-fun b!832455 () Bool)

(assert (=> b!832455 (= e!464309 (Some!420 (_2!5100 (h!17134 (toList!4524 lt!377508)))))))

(declare-fun b!832458 () Bool)

(declare-fun e!464310 () Option!421)

(assert (=> b!832458 (= e!464310 None!419)))

(declare-fun b!832456 () Bool)

(assert (=> b!832456 (= e!464309 e!464310)))

(declare-fun c!90465 () Bool)

(assert (=> b!832456 (= c!90465 (and ((_ is Cons!16004) (toList!4524 lt!377508)) (not (= (_1!5100 (h!17134 (toList!4524 lt!377508))) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!832457 () Bool)

(assert (=> b!832457 (= e!464310 (getValueByKey!415 (t!22384 (toList!4524 lt!377508)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!106631 c!90464) b!832455))

(assert (= (and d!106631 (not c!90464)) b!832456))

(assert (= (and b!832456 c!90465) b!832457))

(assert (= (and b!832456 (not c!90465)) b!832458))

(declare-fun m!777005 () Bool)

(assert (=> b!832457 m!777005))

(assert (=> b!832009 d!106631))

(declare-fun d!106633 () Bool)

(declare-fun res!566428 () Bool)

(declare-fun e!464311 () Bool)

(assert (=> d!106633 (=> res!566428 e!464311)))

(assert (=> d!106633 (= res!566428 (and ((_ is Cons!16004) (toList!4524 (+!1952 lt!377546 (tuple2!10181 lt!377541 zeroValueBefore!34)))) (= (_1!5100 (h!17134 (toList!4524 (+!1952 lt!377546 (tuple2!10181 lt!377541 zeroValueBefore!34))))) lt!377547)))))

(assert (=> d!106633 (= (containsKey!401 (toList!4524 (+!1952 lt!377546 (tuple2!10181 lt!377541 zeroValueBefore!34))) lt!377547) e!464311)))

(declare-fun b!832459 () Bool)

(declare-fun e!464312 () Bool)

(assert (=> b!832459 (= e!464311 e!464312)))

(declare-fun res!566429 () Bool)

(assert (=> b!832459 (=> (not res!566429) (not e!464312))))

(assert (=> b!832459 (= res!566429 (and (or (not ((_ is Cons!16004) (toList!4524 (+!1952 lt!377546 (tuple2!10181 lt!377541 zeroValueBefore!34))))) (bvsle (_1!5100 (h!17134 (toList!4524 (+!1952 lt!377546 (tuple2!10181 lt!377541 zeroValueBefore!34))))) lt!377547)) ((_ is Cons!16004) (toList!4524 (+!1952 lt!377546 (tuple2!10181 lt!377541 zeroValueBefore!34)))) (bvslt (_1!5100 (h!17134 (toList!4524 (+!1952 lt!377546 (tuple2!10181 lt!377541 zeroValueBefore!34))))) lt!377547)))))

(declare-fun b!832460 () Bool)

(assert (=> b!832460 (= e!464312 (containsKey!401 (t!22384 (toList!4524 (+!1952 lt!377546 (tuple2!10181 lt!377541 zeroValueBefore!34)))) lt!377547))))

(assert (= (and d!106633 (not res!566428)) b!832459))

(assert (= (and b!832459 res!566429) b!832460))

(declare-fun m!777007 () Bool)

(assert (=> b!832460 m!777007))

(assert (=> d!106275 d!106633))

(declare-fun d!106635 () Bool)

(declare-fun res!566430 () Bool)

(declare-fun e!464313 () Bool)

(assert (=> d!106635 (=> res!566430 e!464313)))

(assert (=> d!106635 (= res!566430 (and ((_ is Cons!16004) (toList!4524 lt!377442)) (= (_1!5100 (h!17134 (toList!4524 lt!377442))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!106635 (= (containsKey!401 (toList!4524 lt!377442) #b0000000000000000000000000000000000000000000000000000000000000000) e!464313)))

(declare-fun b!832461 () Bool)

(declare-fun e!464314 () Bool)

(assert (=> b!832461 (= e!464313 e!464314)))

(declare-fun res!566431 () Bool)

(assert (=> b!832461 (=> (not res!566431) (not e!464314))))

(assert (=> b!832461 (= res!566431 (and (or (not ((_ is Cons!16004) (toList!4524 lt!377442))) (bvsle (_1!5100 (h!17134 (toList!4524 lt!377442))) #b0000000000000000000000000000000000000000000000000000000000000000)) ((_ is Cons!16004) (toList!4524 lt!377442)) (bvslt (_1!5100 (h!17134 (toList!4524 lt!377442))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!832462 () Bool)

(assert (=> b!832462 (= e!464314 (containsKey!401 (t!22384 (toList!4524 lt!377442)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!106635 (not res!566430)) b!832461))

(assert (= (and b!832461 res!566431) b!832462))

(declare-fun m!777009 () Bool)

(assert (=> b!832462 m!777009))

(assert (=> d!106477 d!106635))

(assert (=> b!831971 d!106541))

(declare-fun d!106637 () Bool)

(assert (=> d!106637 (isDefined!312 (getValueByKey!415 (toList!4524 lt!377442) (select (arr!22317 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun lt!377857 () Unit!28497)

(assert (=> d!106637 (= lt!377857 (choose!1435 (toList!4524 lt!377442) (select (arr!22317 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun e!464315 () Bool)

(assert (=> d!106637 e!464315))

(declare-fun res!566432 () Bool)

(assert (=> d!106637 (=> (not res!566432) (not e!464315))))

(assert (=> d!106637 (= res!566432 (isStrictlySorted!438 (toList!4524 lt!377442)))))

(assert (=> d!106637 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!311 (toList!4524 lt!377442) (select (arr!22317 _keys!976) #b00000000000000000000000000000000)) lt!377857)))

(declare-fun b!832463 () Bool)

(assert (=> b!832463 (= e!464315 (containsKey!401 (toList!4524 lt!377442) (select (arr!22317 _keys!976) #b00000000000000000000000000000000)))))

(assert (= (and d!106637 res!566432) b!832463))

(assert (=> d!106637 m!775697))

(assert (=> d!106637 m!776079))

(assert (=> d!106637 m!776079))

(assert (=> d!106637 m!776081))

(assert (=> d!106637 m!775697))

(declare-fun m!777011 () Bool)

(assert (=> d!106637 m!777011))

(assert (=> d!106637 m!776895))

(assert (=> b!832463 m!775697))

(assert (=> b!832463 m!776075))

(assert (=> b!831897 d!106637))

(declare-fun d!106639 () Bool)

(assert (=> d!106639 (= (isDefined!312 (getValueByKey!415 (toList!4524 lt!377442) (select (arr!22317 _keys!976) #b00000000000000000000000000000000))) (not (isEmpty!664 (getValueByKey!415 (toList!4524 lt!377442) (select (arr!22317 _keys!976) #b00000000000000000000000000000000)))))))

(declare-fun bs!23286 () Bool)

(assert (= bs!23286 d!106639))

(assert (=> bs!23286 m!776079))

(declare-fun m!777013 () Bool)

(assert (=> bs!23286 m!777013))

(assert (=> b!831897 d!106639))

(declare-fun d!106641 () Bool)

(declare-fun c!90466 () Bool)

(assert (=> d!106641 (= c!90466 (and ((_ is Cons!16004) (toList!4524 lt!377442)) (= (_1!5100 (h!17134 (toList!4524 lt!377442))) (select (arr!22317 _keys!976) #b00000000000000000000000000000000))))))

(declare-fun e!464316 () Option!421)

(assert (=> d!106641 (= (getValueByKey!415 (toList!4524 lt!377442) (select (arr!22317 _keys!976) #b00000000000000000000000000000000)) e!464316)))

(declare-fun b!832464 () Bool)

(assert (=> b!832464 (= e!464316 (Some!420 (_2!5100 (h!17134 (toList!4524 lt!377442)))))))

(declare-fun b!832467 () Bool)

(declare-fun e!464317 () Option!421)

(assert (=> b!832467 (= e!464317 None!419)))

(declare-fun b!832465 () Bool)

(assert (=> b!832465 (= e!464316 e!464317)))

(declare-fun c!90467 () Bool)

(assert (=> b!832465 (= c!90467 (and ((_ is Cons!16004) (toList!4524 lt!377442)) (not (= (_1!5100 (h!17134 (toList!4524 lt!377442))) (select (arr!22317 _keys!976) #b00000000000000000000000000000000)))))))

(declare-fun b!832466 () Bool)

(assert (=> b!832466 (= e!464317 (getValueByKey!415 (t!22384 (toList!4524 lt!377442)) (select (arr!22317 _keys!976) #b00000000000000000000000000000000)))))

(assert (= (and d!106641 c!90466) b!832464))

(assert (= (and d!106641 (not c!90466)) b!832465))

(assert (= (and b!832465 c!90467) b!832466))

(assert (= (and b!832465 (not c!90467)) b!832467))

(assert (=> b!832466 m!775697))

(declare-fun m!777015 () Bool)

(assert (=> b!832466 m!777015))

(assert (=> b!831897 d!106641))

(declare-fun d!106643 () Bool)

(assert (=> d!106643 (= (isDefined!312 (getValueByKey!415 (toList!4524 lt!377403) (_1!5100 lt!377371))) (not (isEmpty!664 (getValueByKey!415 (toList!4524 lt!377403) (_1!5100 lt!377371)))))))

(declare-fun bs!23287 () Bool)

(assert (= bs!23287 d!106643))

(assert (=> bs!23287 m!775713))

(declare-fun m!777017 () Bool)

(assert (=> bs!23287 m!777017))

(assert (=> b!832219 d!106643))

(assert (=> b!832219 d!106317))

(declare-fun d!106645 () Bool)

(assert (not d!106645))

(assert (=> b!832254 d!106645))

(declare-fun d!106647 () Bool)

(declare-fun e!464318 () Bool)

(assert (=> d!106647 e!464318))

(declare-fun res!566433 () Bool)

(assert (=> d!106647 (=> res!566433 e!464318)))

(declare-fun lt!377861 () Bool)

(assert (=> d!106647 (= res!566433 (not lt!377861))))

(declare-fun lt!377858 () Bool)

(assert (=> d!106647 (= lt!377861 lt!377858)))

(declare-fun lt!377860 () Unit!28497)

(declare-fun e!464319 () Unit!28497)

(assert (=> d!106647 (= lt!377860 e!464319)))

(declare-fun c!90468 () Bool)

(assert (=> d!106647 (= c!90468 lt!377858)))

(assert (=> d!106647 (= lt!377858 (containsKey!401 (toList!4524 lt!377566) (_1!5100 (tuple2!10181 lt!377560 zeroValueBefore!34))))))

(assert (=> d!106647 (= (contains!4212 lt!377566 (_1!5100 (tuple2!10181 lt!377560 zeroValueBefore!34))) lt!377861)))

(declare-fun b!832468 () Bool)

(declare-fun lt!377859 () Unit!28497)

(assert (=> b!832468 (= e!464319 lt!377859)))

(assert (=> b!832468 (= lt!377859 (lemmaContainsKeyImpliesGetValueByKeyDefined!311 (toList!4524 lt!377566) (_1!5100 (tuple2!10181 lt!377560 zeroValueBefore!34))))))

(assert (=> b!832468 (isDefined!312 (getValueByKey!415 (toList!4524 lt!377566) (_1!5100 (tuple2!10181 lt!377560 zeroValueBefore!34))))))

(declare-fun b!832469 () Bool)

(declare-fun Unit!28531 () Unit!28497)

(assert (=> b!832469 (= e!464319 Unit!28531)))

(declare-fun b!832470 () Bool)

(assert (=> b!832470 (= e!464318 (isDefined!312 (getValueByKey!415 (toList!4524 lt!377566) (_1!5100 (tuple2!10181 lt!377560 zeroValueBefore!34)))))))

(assert (= (and d!106647 c!90468) b!832468))

(assert (= (and d!106647 (not c!90468)) b!832469))

(assert (= (and d!106647 (not res!566433)) b!832470))

(declare-fun m!777019 () Bool)

(assert (=> d!106647 m!777019))

(declare-fun m!777021 () Bool)

(assert (=> b!832468 m!777021))

(assert (=> b!832468 m!775971))

(assert (=> b!832468 m!775971))

(declare-fun m!777023 () Bool)

(assert (=> b!832468 m!777023))

(assert (=> b!832470 m!775971))

(assert (=> b!832470 m!775971))

(assert (=> b!832470 m!777023))

(assert (=> d!106261 d!106647))

(declare-fun c!90469 () Bool)

(declare-fun d!106649 () Bool)

(assert (=> d!106649 (= c!90469 (and ((_ is Cons!16004) lt!377568) (= (_1!5100 (h!17134 lt!377568)) (_1!5100 (tuple2!10181 lt!377560 zeroValueBefore!34)))))))

(declare-fun e!464320 () Option!421)

(assert (=> d!106649 (= (getValueByKey!415 lt!377568 (_1!5100 (tuple2!10181 lt!377560 zeroValueBefore!34))) e!464320)))

(declare-fun b!832471 () Bool)

(assert (=> b!832471 (= e!464320 (Some!420 (_2!5100 (h!17134 lt!377568))))))

(declare-fun b!832474 () Bool)

(declare-fun e!464321 () Option!421)

(assert (=> b!832474 (= e!464321 None!419)))

(declare-fun b!832472 () Bool)

(assert (=> b!832472 (= e!464320 e!464321)))

(declare-fun c!90470 () Bool)

(assert (=> b!832472 (= c!90470 (and ((_ is Cons!16004) lt!377568) (not (= (_1!5100 (h!17134 lt!377568)) (_1!5100 (tuple2!10181 lt!377560 zeroValueBefore!34))))))))

(declare-fun b!832473 () Bool)

(assert (=> b!832473 (= e!464321 (getValueByKey!415 (t!22384 lt!377568) (_1!5100 (tuple2!10181 lt!377560 zeroValueBefore!34))))))

(assert (= (and d!106649 c!90469) b!832471))

(assert (= (and d!106649 (not c!90469)) b!832472))

(assert (= (and b!832472 c!90470) b!832473))

(assert (= (and b!832472 (not c!90470)) b!832474))

(declare-fun m!777025 () Bool)

(assert (=> b!832473 m!777025))

(assert (=> d!106261 d!106649))

(declare-fun d!106651 () Bool)

(assert (=> d!106651 (= (getValueByKey!415 lt!377568 (_1!5100 (tuple2!10181 lt!377560 zeroValueBefore!34))) (Some!420 (_2!5100 (tuple2!10181 lt!377560 zeroValueBefore!34))))))

(declare-fun lt!377862 () Unit!28497)

(assert (=> d!106651 (= lt!377862 (choose!1433 lt!377568 (_1!5100 (tuple2!10181 lt!377560 zeroValueBefore!34)) (_2!5100 (tuple2!10181 lt!377560 zeroValueBefore!34))))))

(declare-fun e!464322 () Bool)

(assert (=> d!106651 e!464322))

(declare-fun res!566434 () Bool)

(assert (=> d!106651 (=> (not res!566434) (not e!464322))))

(assert (=> d!106651 (= res!566434 (isStrictlySorted!438 lt!377568))))

(assert (=> d!106651 (= (lemmaContainsTupThenGetReturnValue!231 lt!377568 (_1!5100 (tuple2!10181 lt!377560 zeroValueBefore!34)) (_2!5100 (tuple2!10181 lt!377560 zeroValueBefore!34))) lt!377862)))

(declare-fun b!832475 () Bool)

(declare-fun res!566435 () Bool)

(assert (=> b!832475 (=> (not res!566435) (not e!464322))))

(assert (=> b!832475 (= res!566435 (containsKey!401 lt!377568 (_1!5100 (tuple2!10181 lt!377560 zeroValueBefore!34))))))

(declare-fun b!832476 () Bool)

(assert (=> b!832476 (= e!464322 (contains!4213 lt!377568 (tuple2!10181 (_1!5100 (tuple2!10181 lt!377560 zeroValueBefore!34)) (_2!5100 (tuple2!10181 lt!377560 zeroValueBefore!34)))))))

(assert (= (and d!106651 res!566434) b!832475))

(assert (= (and b!832475 res!566435) b!832476))

(assert (=> d!106651 m!775965))

(declare-fun m!777027 () Bool)

(assert (=> d!106651 m!777027))

(declare-fun m!777029 () Bool)

(assert (=> d!106651 m!777029))

(declare-fun m!777031 () Bool)

(assert (=> b!832475 m!777031))

(declare-fun m!777033 () Bool)

(assert (=> b!832476 m!777033))

(assert (=> d!106261 d!106651))

(declare-fun b!832477 () Bool)

(declare-fun e!464327 () List!16008)

(declare-fun call!36443 () List!16008)

(assert (=> b!832477 (= e!464327 call!36443)))

(declare-fun b!832478 () Bool)

(declare-fun res!566436 () Bool)

(declare-fun e!464324 () Bool)

(assert (=> b!832478 (=> (not res!566436) (not e!464324))))

(declare-fun lt!377863 () List!16008)

(assert (=> b!832478 (= res!566436 (containsKey!401 lt!377863 (_1!5100 (tuple2!10181 lt!377560 zeroValueBefore!34))))))

(declare-fun c!90474 () Bool)

(declare-fun c!90472 () Bool)

(declare-fun b!832479 () Bool)

(declare-fun e!464326 () List!16008)

(assert (=> b!832479 (= e!464326 (ite c!90472 (t!22384 (toList!4524 lt!377544)) (ite c!90474 (Cons!16004 (h!17134 (toList!4524 lt!377544)) (t!22384 (toList!4524 lt!377544))) Nil!16005)))))

(declare-fun b!832480 () Bool)

(declare-fun e!464323 () List!16008)

(assert (=> b!832480 (= e!464323 e!464327)))

(assert (=> b!832480 (= c!90472 (and ((_ is Cons!16004) (toList!4524 lt!377544)) (= (_1!5100 (h!17134 (toList!4524 lt!377544))) (_1!5100 (tuple2!10181 lt!377560 zeroValueBefore!34)))))))

(declare-fun b!832481 () Bool)

(assert (=> b!832481 (= e!464326 (insertStrictlySorted!269 (t!22384 (toList!4524 lt!377544)) (_1!5100 (tuple2!10181 lt!377560 zeroValueBefore!34)) (_2!5100 (tuple2!10181 lt!377560 zeroValueBefore!34))))))

(declare-fun bm!36439 () Bool)

(declare-fun call!36444 () List!16008)

(assert (=> bm!36439 (= call!36443 call!36444)))

(declare-fun b!832482 () Bool)

(assert (=> b!832482 (= e!464324 (contains!4213 lt!377863 (tuple2!10181 (_1!5100 (tuple2!10181 lt!377560 zeroValueBefore!34)) (_2!5100 (tuple2!10181 lt!377560 zeroValueBefore!34)))))))

(declare-fun b!832483 () Bool)

(declare-fun e!464325 () List!16008)

(declare-fun call!36442 () List!16008)

(assert (=> b!832483 (= e!464325 call!36442)))

(declare-fun b!832484 () Bool)

(assert (=> b!832484 (= c!90474 (and ((_ is Cons!16004) (toList!4524 lt!377544)) (bvsgt (_1!5100 (h!17134 (toList!4524 lt!377544))) (_1!5100 (tuple2!10181 lt!377560 zeroValueBefore!34)))))))

(assert (=> b!832484 (= e!464327 e!464325)))

(declare-fun d!106653 () Bool)

(assert (=> d!106653 e!464324))

(declare-fun res!566437 () Bool)

(assert (=> d!106653 (=> (not res!566437) (not e!464324))))

(assert (=> d!106653 (= res!566437 (isStrictlySorted!438 lt!377863))))

(assert (=> d!106653 (= lt!377863 e!464323)))

(declare-fun c!90473 () Bool)

(assert (=> d!106653 (= c!90473 (and ((_ is Cons!16004) (toList!4524 lt!377544)) (bvslt (_1!5100 (h!17134 (toList!4524 lt!377544))) (_1!5100 (tuple2!10181 lt!377560 zeroValueBefore!34)))))))

(assert (=> d!106653 (isStrictlySorted!438 (toList!4524 lt!377544))))

(assert (=> d!106653 (= (insertStrictlySorted!269 (toList!4524 lt!377544) (_1!5100 (tuple2!10181 lt!377560 zeroValueBefore!34)) (_2!5100 (tuple2!10181 lt!377560 zeroValueBefore!34))) lt!377863)))

(declare-fun b!832485 () Bool)

(assert (=> b!832485 (= e!464325 call!36442)))

(declare-fun bm!36440 () Bool)

(assert (=> bm!36440 (= call!36444 ($colon$colon!536 e!464326 (ite c!90473 (h!17134 (toList!4524 lt!377544)) (tuple2!10181 (_1!5100 (tuple2!10181 lt!377560 zeroValueBefore!34)) (_2!5100 (tuple2!10181 lt!377560 zeroValueBefore!34))))))))

(declare-fun c!90471 () Bool)

(assert (=> bm!36440 (= c!90471 c!90473)))

(declare-fun bm!36441 () Bool)

(assert (=> bm!36441 (= call!36442 call!36443)))

(declare-fun b!832486 () Bool)

(assert (=> b!832486 (= e!464323 call!36444)))

(assert (= (and d!106653 c!90473) b!832486))

(assert (= (and d!106653 (not c!90473)) b!832480))

(assert (= (and b!832480 c!90472) b!832477))

(assert (= (and b!832480 (not c!90472)) b!832484))

(assert (= (and b!832484 c!90474) b!832483))

(assert (= (and b!832484 (not c!90474)) b!832485))

(assert (= (or b!832483 b!832485) bm!36441))

(assert (= (or b!832477 bm!36441) bm!36439))

(assert (= (or b!832486 bm!36439) bm!36440))

(assert (= (and bm!36440 c!90471) b!832481))

(assert (= (and bm!36440 (not c!90471)) b!832479))

(assert (= (and d!106653 res!566437) b!832478))

(assert (= (and b!832478 res!566436) b!832482))

(declare-fun m!777035 () Bool)

(assert (=> b!832478 m!777035))

(declare-fun m!777037 () Bool)

(assert (=> b!832481 m!777037))

(declare-fun m!777039 () Bool)

(assert (=> d!106653 m!777039))

(declare-fun m!777041 () Bool)

(assert (=> d!106653 m!777041))

(declare-fun m!777043 () Bool)

(assert (=> b!832482 m!777043))

(declare-fun m!777045 () Bool)

(assert (=> bm!36440 m!777045))

(assert (=> d!106261 d!106653))

(declare-fun d!106655 () Bool)

(declare-fun c!90475 () Bool)

(assert (=> d!106655 (= c!90475 (and ((_ is Cons!16004) (t!22384 lt!377461)) (= (_1!5100 (h!17134 (t!22384 lt!377461))) (_1!5100 lt!377372))))))

(declare-fun e!464328 () Option!421)

(assert (=> d!106655 (= (getValueByKey!415 (t!22384 lt!377461) (_1!5100 lt!377372)) e!464328)))

(declare-fun b!832487 () Bool)

(assert (=> b!832487 (= e!464328 (Some!420 (_2!5100 (h!17134 (t!22384 lt!377461)))))))

(declare-fun b!832490 () Bool)

(declare-fun e!464329 () Option!421)

(assert (=> b!832490 (= e!464329 None!419)))

(declare-fun b!832488 () Bool)

(assert (=> b!832488 (= e!464328 e!464329)))

(declare-fun c!90476 () Bool)

(assert (=> b!832488 (= c!90476 (and ((_ is Cons!16004) (t!22384 lt!377461)) (not (= (_1!5100 (h!17134 (t!22384 lt!377461))) (_1!5100 lt!377372)))))))

(declare-fun b!832489 () Bool)

(assert (=> b!832489 (= e!464329 (getValueByKey!415 (t!22384 (t!22384 lt!377461)) (_1!5100 lt!377372)))))

(assert (= (and d!106655 c!90475) b!832487))

(assert (= (and d!106655 (not c!90475)) b!832488))

(assert (= (and b!832488 c!90476) b!832489))

(assert (= (and b!832488 (not c!90476)) b!832490))

(declare-fun m!777047 () Bool)

(assert (=> b!832489 m!777047))

(assert (=> b!832147 d!106655))

(declare-fun lt!377864 () Bool)

(declare-fun d!106657 () Bool)

(assert (=> d!106657 (= lt!377864 (select (content!390 (toList!4524 lt!377796)) (ite (or c!90283 c!90285) (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34) (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))

(declare-fun e!464330 () Bool)

(assert (=> d!106657 (= lt!377864 e!464330)))

(declare-fun res!566438 () Bool)

(assert (=> d!106657 (=> (not res!566438) (not e!464330))))

(assert (=> d!106657 (= res!566438 ((_ is Cons!16004) (toList!4524 lt!377796)))))

(assert (=> d!106657 (= (contains!4213 (toList!4524 lt!377796) (ite (or c!90283 c!90285) (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34) (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))) lt!377864)))

(declare-fun b!832491 () Bool)

(declare-fun e!464331 () Bool)

(assert (=> b!832491 (= e!464330 e!464331)))

(declare-fun res!566439 () Bool)

(assert (=> b!832491 (=> res!566439 e!464331)))

(assert (=> b!832491 (= res!566439 (= (h!17134 (toList!4524 lt!377796)) (ite (or c!90283 c!90285) (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34) (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))

(declare-fun b!832492 () Bool)

(assert (=> b!832492 (= e!464331 (contains!4213 (t!22384 (toList!4524 lt!377796)) (ite (or c!90283 c!90285) (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34) (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))

(assert (= (and d!106657 res!566438) b!832491))

(assert (= (and b!832491 (not res!566439)) b!832492))

(declare-fun m!777049 () Bool)

(assert (=> d!106657 m!777049))

(declare-fun m!777051 () Bool)

(assert (=> d!106657 m!777051))

(declare-fun m!777053 () Bool)

(assert (=> b!832492 m!777053))

(assert (=> b!832256 d!106657))

(declare-fun d!106659 () Bool)

(assert (=> d!106659 (= ($colon$colon!536 e!464109 (ite c!90369 (h!17134 (toList!4524 lt!377369)) (tuple2!10181 (_1!5100 lt!377371) (_2!5100 lt!377371)))) (Cons!16004 (ite c!90369 (h!17134 (toList!4524 lt!377369)) (tuple2!10181 (_1!5100 lt!377371) (_2!5100 lt!377371))) e!464109))))

(assert (=> bm!36416 d!106659))

(assert (=> d!106411 d!106409))

(declare-fun d!106661 () Bool)

(assert (=> d!106661 (= (getValueByKey!415 lt!377457 (_1!5100 lt!377371)) (Some!420 (_2!5100 lt!377371)))))

(assert (=> d!106661 true))

(declare-fun _$22!576 () Unit!28497)

(assert (=> d!106661 (= (choose!1433 lt!377457 (_1!5100 lt!377371) (_2!5100 lt!377371)) _$22!576)))

(declare-fun bs!23288 () Bool)

(assert (= bs!23288 d!106661))

(assert (=> bs!23288 m!775799))

(assert (=> d!106411 d!106661))

(declare-fun d!106663 () Bool)

(declare-fun res!566440 () Bool)

(declare-fun e!464332 () Bool)

(assert (=> d!106663 (=> res!566440 e!464332)))

(assert (=> d!106663 (= res!566440 (or ((_ is Nil!16005) lt!377457) ((_ is Nil!16005) (t!22384 lt!377457))))))

(assert (=> d!106663 (= (isStrictlySorted!438 lt!377457) e!464332)))

(declare-fun b!832493 () Bool)

(declare-fun e!464333 () Bool)

(assert (=> b!832493 (= e!464332 e!464333)))

(declare-fun res!566441 () Bool)

(assert (=> b!832493 (=> (not res!566441) (not e!464333))))

(assert (=> b!832493 (= res!566441 (bvslt (_1!5100 (h!17134 lt!377457)) (_1!5100 (h!17134 (t!22384 lt!377457)))))))

(declare-fun b!832494 () Bool)

(assert (=> b!832494 (= e!464333 (isStrictlySorted!438 (t!22384 lt!377457)))))

(assert (= (and d!106663 (not res!566440)) b!832493))

(assert (= (and b!832493 res!566441) b!832494))

(declare-fun m!777055 () Bool)

(assert (=> b!832494 m!777055))

(assert (=> d!106411 d!106663))

(declare-fun c!90477 () Bool)

(declare-fun d!106665 () Bool)

(assert (=> d!106665 (= c!90477 (and ((_ is Cons!16004) (toList!4524 lt!377566)) (= (_1!5100 (h!17134 (toList!4524 lt!377566))) (_1!5100 (tuple2!10181 lt!377560 zeroValueBefore!34)))))))

(declare-fun e!464334 () Option!421)

(assert (=> d!106665 (= (getValueByKey!415 (toList!4524 lt!377566) (_1!5100 (tuple2!10181 lt!377560 zeroValueBefore!34))) e!464334)))

(declare-fun b!832495 () Bool)

(assert (=> b!832495 (= e!464334 (Some!420 (_2!5100 (h!17134 (toList!4524 lt!377566)))))))

(declare-fun b!832498 () Bool)

(declare-fun e!464335 () Option!421)

(assert (=> b!832498 (= e!464335 None!419)))

(declare-fun b!832496 () Bool)

(assert (=> b!832496 (= e!464334 e!464335)))

(declare-fun c!90478 () Bool)

(assert (=> b!832496 (= c!90478 (and ((_ is Cons!16004) (toList!4524 lt!377566)) (not (= (_1!5100 (h!17134 (toList!4524 lt!377566))) (_1!5100 (tuple2!10181 lt!377560 zeroValueBefore!34))))))))

(declare-fun b!832497 () Bool)

(assert (=> b!832497 (= e!464335 (getValueByKey!415 (t!22384 (toList!4524 lt!377566)) (_1!5100 (tuple2!10181 lt!377560 zeroValueBefore!34))))))

(assert (= (and d!106665 c!90477) b!832495))

(assert (= (and d!106665 (not c!90477)) b!832496))

(assert (= (and b!832496 c!90478) b!832497))

(assert (= (and b!832496 (not c!90478)) b!832498))

(declare-fun m!777057 () Bool)

(assert (=> b!832497 m!777057))

(assert (=> b!831869 d!106665))

(declare-fun d!106667 () Bool)

(declare-fun res!566442 () Bool)

(declare-fun e!464336 () Bool)

(assert (=> d!106667 (=> res!566442 e!464336)))

(assert (=> d!106667 (= res!566442 (and ((_ is Cons!16004) lt!377405) (= (_1!5100 (h!17134 lt!377405)) (_1!5100 lt!377371))))))

(assert (=> d!106667 (= (containsKey!401 lt!377405 (_1!5100 lt!377371)) e!464336)))

(declare-fun b!832499 () Bool)

(declare-fun e!464337 () Bool)

(assert (=> b!832499 (= e!464336 e!464337)))

(declare-fun res!566443 () Bool)

(assert (=> b!832499 (=> (not res!566443) (not e!464337))))

(assert (=> b!832499 (= res!566443 (and (or (not ((_ is Cons!16004) lt!377405)) (bvsle (_1!5100 (h!17134 lt!377405)) (_1!5100 lt!377371))) ((_ is Cons!16004) lt!377405) (bvslt (_1!5100 (h!17134 lt!377405)) (_1!5100 lt!377371))))))

(declare-fun b!832500 () Bool)

(assert (=> b!832500 (= e!464337 (containsKey!401 (t!22384 lt!377405) (_1!5100 lt!377371)))))

(assert (= (and d!106667 (not res!566442)) b!832499))

(assert (= (and b!832499 res!566443) b!832500))

(declare-fun m!777059 () Bool)

(assert (=> b!832500 m!777059))

(assert (=> b!832224 d!106667))

(declare-fun d!106669 () Bool)

(declare-fun c!90479 () Bool)

(assert (=> d!106669 (= c!90479 (and ((_ is Cons!16004) (toList!4524 lt!377743)) (= (_1!5100 (h!17134 (toList!4524 lt!377743))) (_1!5100 (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))))))

(declare-fun e!464338 () Option!421)

(assert (=> d!106669 (= (getValueByKey!415 (toList!4524 lt!377743) (_1!5100 (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))) e!464338)))

(declare-fun b!832501 () Bool)

(assert (=> b!832501 (= e!464338 (Some!420 (_2!5100 (h!17134 (toList!4524 lt!377743)))))))

(declare-fun b!832504 () Bool)

(declare-fun e!464339 () Option!421)

(assert (=> b!832504 (= e!464339 None!419)))

(declare-fun b!832502 () Bool)

(assert (=> b!832502 (= e!464338 e!464339)))

(declare-fun c!90480 () Bool)

(assert (=> b!832502 (= c!90480 (and ((_ is Cons!16004) (toList!4524 lt!377743)) (not (= (_1!5100 (h!17134 (toList!4524 lt!377743))) (_1!5100 (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))))

(declare-fun b!832503 () Bool)

(assert (=> b!832503 (= e!464339 (getValueByKey!415 (t!22384 (toList!4524 lt!377743)) (_1!5100 (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))

(assert (= (and d!106669 c!90479) b!832501))

(assert (= (and d!106669 (not c!90479)) b!832502))

(assert (= (and b!832502 c!90480) b!832503))

(assert (= (and b!832502 (not c!90480)) b!832504))

(declare-fun m!777061 () Bool)

(assert (=> b!832503 m!777061))

(assert (=> b!832180 d!106669))

(declare-fun d!106671 () Bool)

(assert (=> d!106671 (= (isDefined!312 (getValueByKey!415 (toList!4524 lt!377529) (_1!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))) (not (isEmpty!664 (getValueByKey!415 (toList!4524 lt!377529) (_1!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))))))

(declare-fun bs!23289 () Bool)

(assert (= bs!23289 d!106671))

(assert (=> bs!23289 m!775875))

(declare-fun m!777063 () Bool)

(assert (=> bs!23289 m!777063))

(assert (=> b!832106 d!106671))

(assert (=> b!832106 d!106437))

(declare-fun d!106673 () Bool)

(declare-fun c!90481 () Bool)

(assert (=> d!106673 (= c!90481 ((_ is Nil!16005) (toList!4524 lt!377451)))))

(declare-fun e!464340 () (InoxSet tuple2!10180))

(assert (=> d!106673 (= (content!390 (toList!4524 lt!377451)) e!464340)))

(declare-fun b!832505 () Bool)

(assert (=> b!832505 (= e!464340 ((as const (Array tuple2!10180 Bool)) false))))

(declare-fun b!832506 () Bool)

(assert (=> b!832506 (= e!464340 ((_ map or) (store ((as const (Array tuple2!10180 Bool)) false) (h!17134 (toList!4524 lt!377451)) true) (content!390 (t!22384 (toList!4524 lt!377451)))))))

(assert (= (and d!106673 c!90481) b!832505))

(assert (= (and d!106673 (not c!90481)) b!832506))

(declare-fun m!777065 () Bool)

(assert (=> b!832506 m!777065))

(declare-fun m!777067 () Bool)

(assert (=> b!832506 m!777067))

(assert (=> d!106307 d!106673))

(assert (=> d!106441 d!106445))

(assert (=> d!106441 d!106443))

(declare-fun d!106675 () Bool)

(assert (=> d!106675 (not (contains!4212 (+!1952 lt!377441 (tuple2!10181 lt!377438 lt!377443)) lt!377439))))

(assert (=> d!106675 true))

(declare-fun _$36!348 () Unit!28497)

(assert (=> d!106675 (= (choose!1434 lt!377441 lt!377438 lt!377443 lt!377439) _$36!348)))

(declare-fun bs!23290 () Bool)

(assert (= bs!23290 d!106675))

(assert (=> bs!23290 m!775743))

(assert (=> bs!23290 m!775743))

(assert (=> bs!23290 m!775751))

(assert (=> d!106441 d!106675))

(declare-fun d!106677 () Bool)

(declare-fun e!464341 () Bool)

(assert (=> d!106677 e!464341))

(declare-fun res!566444 () Bool)

(assert (=> d!106677 (=> res!566444 e!464341)))

(declare-fun lt!377868 () Bool)

(assert (=> d!106677 (= res!566444 (not lt!377868))))

(declare-fun lt!377865 () Bool)

(assert (=> d!106677 (= lt!377868 lt!377865)))

(declare-fun lt!377867 () Unit!28497)

(declare-fun e!464342 () Unit!28497)

(assert (=> d!106677 (= lt!377867 e!464342)))

(declare-fun c!90482 () Bool)

(assert (=> d!106677 (= c!90482 lt!377865)))

(assert (=> d!106677 (= lt!377865 (containsKey!401 (toList!4524 lt!377441) lt!377439))))

(assert (=> d!106677 (= (contains!4212 lt!377441 lt!377439) lt!377868)))

(declare-fun b!832507 () Bool)

(declare-fun lt!377866 () Unit!28497)

(assert (=> b!832507 (= e!464342 lt!377866)))

(assert (=> b!832507 (= lt!377866 (lemmaContainsKeyImpliesGetValueByKeyDefined!311 (toList!4524 lt!377441) lt!377439))))

(assert (=> b!832507 (isDefined!312 (getValueByKey!415 (toList!4524 lt!377441) lt!377439))))

(declare-fun b!832508 () Bool)

(declare-fun Unit!28532 () Unit!28497)

(assert (=> b!832508 (= e!464342 Unit!28532)))

(declare-fun b!832509 () Bool)

(assert (=> b!832509 (= e!464341 (isDefined!312 (getValueByKey!415 (toList!4524 lt!377441) lt!377439)))))

(assert (= (and d!106677 c!90482) b!832507))

(assert (= (and d!106677 (not c!90482)) b!832508))

(assert (= (and d!106677 (not res!566444)) b!832509))

(declare-fun m!777069 () Bool)

(assert (=> d!106677 m!777069))

(declare-fun m!777071 () Bool)

(assert (=> b!832507 m!777071))

(declare-fun m!777073 () Bool)

(assert (=> b!832507 m!777073))

(assert (=> b!832507 m!777073))

(declare-fun m!777075 () Bool)

(assert (=> b!832507 m!777075))

(assert (=> b!832509 m!777073))

(assert (=> b!832509 m!777073))

(assert (=> b!832509 m!777075))

(assert (=> d!106441 d!106677))

(declare-fun d!106679 () Bool)

(declare-fun res!566445 () Bool)

(declare-fun e!464343 () Bool)

(assert (=> d!106679 (=> res!566445 e!464343)))

(assert (=> d!106679 (= res!566445 (and ((_ is Cons!16004) (toList!4524 lt!377442)) (= (_1!5100 (h!17134 (toList!4524 lt!377442))) (select (arr!22317 _keys!976) #b00000000000000000000000000000000))))))

(assert (=> d!106679 (= (containsKey!401 (toList!4524 lt!377442) (select (arr!22317 _keys!976) #b00000000000000000000000000000000)) e!464343)))

(declare-fun b!832510 () Bool)

(declare-fun e!464344 () Bool)

(assert (=> b!832510 (= e!464343 e!464344)))

(declare-fun res!566446 () Bool)

(assert (=> b!832510 (=> (not res!566446) (not e!464344))))

(assert (=> b!832510 (= res!566446 (and (or (not ((_ is Cons!16004) (toList!4524 lt!377442))) (bvsle (_1!5100 (h!17134 (toList!4524 lt!377442))) (select (arr!22317 _keys!976) #b00000000000000000000000000000000))) ((_ is Cons!16004) (toList!4524 lt!377442)) (bvslt (_1!5100 (h!17134 (toList!4524 lt!377442))) (select (arr!22317 _keys!976) #b00000000000000000000000000000000))))))

(declare-fun b!832511 () Bool)

(assert (=> b!832511 (= e!464344 (containsKey!401 (t!22384 (toList!4524 lt!377442)) (select (arr!22317 _keys!976) #b00000000000000000000000000000000)))))

(assert (= (and d!106679 (not res!566445)) b!832510))

(assert (= (and b!832510 res!566446) b!832511))

(assert (=> b!832511 m!775697))

(declare-fun m!777077 () Bool)

(assert (=> b!832511 m!777077))

(assert (=> d!106291 d!106679))

(declare-fun d!106681 () Bool)

(declare-fun res!566447 () Bool)

(declare-fun e!464345 () Bool)

(assert (=> d!106681 (=> res!566447 e!464345)))

(assert (=> d!106681 (= res!566447 (= (select (arr!22317 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) lt!377417))))

(assert (=> d!106681 (= (arrayContainsKey!0 _keys!976 lt!377417 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) e!464345)))

(declare-fun b!832512 () Bool)

(declare-fun e!464346 () Bool)

(assert (=> b!832512 (= e!464345 e!464346)))

(declare-fun res!566448 () Bool)

(assert (=> b!832512 (=> (not res!566448) (not e!464346))))

(assert (=> b!832512 (= res!566448 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!22738 _keys!976)))))

(declare-fun b!832513 () Bool)

(assert (=> b!832513 (= e!464346 (arrayContainsKey!0 _keys!976 lt!377417 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)))))

(assert (= (and d!106681 (not res!566447)) b!832512))

(assert (= (and b!832512 res!566448) b!832513))

(assert (=> d!106681 m!776139))

(declare-fun m!777079 () Bool)

(assert (=> b!832513 m!777079))

(assert (=> b!832062 d!106681))

(declare-fun d!106683 () Bool)

(assert (=> d!106683 (= (get!11829 (getValueByKey!415 (toList!4524 lt!377511) lt!377524)) (v!10097 (getValueByKey!415 (toList!4524 lt!377511) lt!377524)))))

(assert (=> d!106329 d!106683))

(declare-fun d!106685 () Bool)

(declare-fun c!90483 () Bool)

(assert (=> d!106685 (= c!90483 (and ((_ is Cons!16004) (toList!4524 lt!377511)) (= (_1!5100 (h!17134 (toList!4524 lt!377511))) lt!377524)))))

(declare-fun e!464347 () Option!421)

(assert (=> d!106685 (= (getValueByKey!415 (toList!4524 lt!377511) lt!377524) e!464347)))

(declare-fun b!832514 () Bool)

(assert (=> b!832514 (= e!464347 (Some!420 (_2!5100 (h!17134 (toList!4524 lt!377511)))))))

(declare-fun b!832517 () Bool)

(declare-fun e!464348 () Option!421)

(assert (=> b!832517 (= e!464348 None!419)))

(declare-fun b!832515 () Bool)

(assert (=> b!832515 (= e!464347 e!464348)))

(declare-fun c!90484 () Bool)

(assert (=> b!832515 (= c!90484 (and ((_ is Cons!16004) (toList!4524 lt!377511)) (not (= (_1!5100 (h!17134 (toList!4524 lt!377511))) lt!377524))))))

(declare-fun b!832516 () Bool)

(assert (=> b!832516 (= e!464348 (getValueByKey!415 (t!22384 (toList!4524 lt!377511)) lt!377524))))

(assert (= (and d!106685 c!90483) b!832514))

(assert (= (and d!106685 (not c!90483)) b!832515))

(assert (= (and b!832515 c!90484) b!832516))

(assert (= (and b!832515 (not c!90484)) b!832517))

(declare-fun m!777081 () Bool)

(assert (=> b!832516 m!777081))

(assert (=> d!106329 d!106685))

(declare-fun d!106687 () Bool)

(declare-fun c!90485 () Bool)

(assert (=> d!106687 (= c!90485 (and ((_ is Cons!16004) (t!22384 lt!377535)) (= (_1!5100 (h!17134 (t!22384 lt!377535))) (_1!5100 lt!377371))))))

(declare-fun e!464349 () Option!421)

(assert (=> d!106687 (= (getValueByKey!415 (t!22384 lt!377535) (_1!5100 lt!377371)) e!464349)))

(declare-fun b!832518 () Bool)

(assert (=> b!832518 (= e!464349 (Some!420 (_2!5100 (h!17134 (t!22384 lt!377535)))))))

(declare-fun b!832521 () Bool)

(declare-fun e!464350 () Option!421)

(assert (=> b!832521 (= e!464350 None!419)))

(declare-fun b!832519 () Bool)

(assert (=> b!832519 (= e!464349 e!464350)))

(declare-fun c!90486 () Bool)

(assert (=> b!832519 (= c!90486 (and ((_ is Cons!16004) (t!22384 lt!377535)) (not (= (_1!5100 (h!17134 (t!22384 lt!377535))) (_1!5100 lt!377371)))))))

(declare-fun b!832520 () Bool)

(assert (=> b!832520 (= e!464350 (getValueByKey!415 (t!22384 (t!22384 lt!377535)) (_1!5100 lt!377371)))))

(assert (= (and d!106687 c!90485) b!832518))

(assert (= (and d!106687 (not c!90485)) b!832519))

(assert (= (and b!832519 c!90486) b!832520))

(assert (= (and b!832519 (not c!90486)) b!832521))

(declare-fun m!777083 () Bool)

(assert (=> b!832520 m!777083))

(assert (=> b!832166 d!106687))

(declare-fun d!106689 () Bool)

(assert (=> d!106689 (= (isEmpty!663 (toList!4524 lt!377449)) ((_ is Nil!16005) (toList!4524 lt!377449)))))

(assert (=> d!106485 d!106689))

(declare-fun d!106691 () Bool)

(assert (=> d!106691 (= (get!11829 (getValueByKey!415 (toList!4524 lt!377508) #b1000000000000000000000000000000000000000000000000000000000000000)) (v!10097 (getValueByKey!415 (toList!4524 lt!377508) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!106455 d!106691))

(assert (=> d!106455 d!106631))

(declare-fun d!106693 () Bool)

(declare-fun e!464351 () Bool)

(assert (=> d!106693 e!464351))

(declare-fun res!566449 () Bool)

(assert (=> d!106693 (=> res!566449 e!464351)))

(declare-fun lt!377872 () Bool)

(assert (=> d!106693 (= res!566449 (not lt!377872))))

(declare-fun lt!377869 () Bool)

(assert (=> d!106693 (= lt!377872 lt!377869)))

(declare-fun lt!377871 () Unit!28497)

(declare-fun e!464352 () Unit!28497)

(assert (=> d!106693 (= lt!377871 e!464352)))

(declare-fun c!90487 () Bool)

(assert (=> d!106693 (= c!90487 lt!377869)))

(assert (=> d!106693 (= lt!377869 (containsKey!401 (toList!4524 lt!377771) (_1!5100 (tuple2!10181 (select (arr!22317 _keys!976) #b00000000000000000000000000000000) (get!11828 (select (arr!22318 _values!788) #b00000000000000000000000000000000) (dynLambda!983 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!106693 (= (contains!4212 lt!377771 (_1!5100 (tuple2!10181 (select (arr!22317 _keys!976) #b00000000000000000000000000000000) (get!11828 (select (arr!22318 _values!788) #b00000000000000000000000000000000) (dynLambda!983 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))) lt!377872)))

(declare-fun b!832522 () Bool)

(declare-fun lt!377870 () Unit!28497)

(assert (=> b!832522 (= e!464352 lt!377870)))

(assert (=> b!832522 (= lt!377870 (lemmaContainsKeyImpliesGetValueByKeyDefined!311 (toList!4524 lt!377771) (_1!5100 (tuple2!10181 (select (arr!22317 _keys!976) #b00000000000000000000000000000000) (get!11828 (select (arr!22318 _values!788) #b00000000000000000000000000000000) (dynLambda!983 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> b!832522 (isDefined!312 (getValueByKey!415 (toList!4524 lt!377771) (_1!5100 (tuple2!10181 (select (arr!22317 _keys!976) #b00000000000000000000000000000000) (get!11828 (select (arr!22318 _values!788) #b00000000000000000000000000000000) (dynLambda!983 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun b!832523 () Bool)

(declare-fun Unit!28533 () Unit!28497)

(assert (=> b!832523 (= e!464352 Unit!28533)))

(declare-fun b!832524 () Bool)

(assert (=> b!832524 (= e!464351 (isDefined!312 (getValueByKey!415 (toList!4524 lt!377771) (_1!5100 (tuple2!10181 (select (arr!22317 _keys!976) #b00000000000000000000000000000000) (get!11828 (select (arr!22318 _values!788) #b00000000000000000000000000000000) (dynLambda!983 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(assert (= (and d!106693 c!90487) b!832522))

(assert (= (and d!106693 (not c!90487)) b!832523))

(assert (= (and d!106693 (not res!566449)) b!832524))

(declare-fun m!777085 () Bool)

(assert (=> d!106693 m!777085))

(declare-fun m!777087 () Bool)

(assert (=> b!832522 m!777087))

(assert (=> b!832522 m!776641))

(assert (=> b!832522 m!776641))

(declare-fun m!777089 () Bool)

(assert (=> b!832522 m!777089))

(assert (=> b!832524 m!776641))

(assert (=> b!832524 m!776641))

(assert (=> b!832524 m!777089))

(assert (=> d!106463 d!106693))

(declare-fun c!90488 () Bool)

(declare-fun d!106695 () Bool)

(assert (=> d!106695 (= c!90488 (and ((_ is Cons!16004) lt!377773) (= (_1!5100 (h!17134 lt!377773)) (_1!5100 (tuple2!10181 (select (arr!22317 _keys!976) #b00000000000000000000000000000000) (get!11828 (select (arr!22318 _values!788) #b00000000000000000000000000000000) (dynLambda!983 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun e!464353 () Option!421)

(assert (=> d!106695 (= (getValueByKey!415 lt!377773 (_1!5100 (tuple2!10181 (select (arr!22317 _keys!976) #b00000000000000000000000000000000) (get!11828 (select (arr!22318 _values!788) #b00000000000000000000000000000000) (dynLambda!983 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))) e!464353)))

(declare-fun b!832525 () Bool)

(assert (=> b!832525 (= e!464353 (Some!420 (_2!5100 (h!17134 lt!377773))))))

(declare-fun b!832528 () Bool)

(declare-fun e!464354 () Option!421)

(assert (=> b!832528 (= e!464354 None!419)))

(declare-fun b!832526 () Bool)

(assert (=> b!832526 (= e!464353 e!464354)))

(declare-fun c!90489 () Bool)

(assert (=> b!832526 (= c!90489 (and ((_ is Cons!16004) lt!377773) (not (= (_1!5100 (h!17134 lt!377773)) (_1!5100 (tuple2!10181 (select (arr!22317 _keys!976) #b00000000000000000000000000000000) (get!11828 (select (arr!22318 _values!788) #b00000000000000000000000000000000) (dynLambda!983 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))))))))

(declare-fun b!832527 () Bool)

(assert (=> b!832527 (= e!464354 (getValueByKey!415 (t!22384 lt!377773) (_1!5100 (tuple2!10181 (select (arr!22317 _keys!976) #b00000000000000000000000000000000) (get!11828 (select (arr!22318 _values!788) #b00000000000000000000000000000000) (dynLambda!983 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (= (and d!106695 c!90488) b!832525))

(assert (= (and d!106695 (not c!90488)) b!832526))

(assert (= (and b!832526 c!90489) b!832527))

(assert (= (and b!832526 (not c!90489)) b!832528))

(declare-fun m!777091 () Bool)

(assert (=> b!832527 m!777091))

(assert (=> d!106463 d!106695))

(declare-fun d!106697 () Bool)

(assert (=> d!106697 (= (getValueByKey!415 lt!377773 (_1!5100 (tuple2!10181 (select (arr!22317 _keys!976) #b00000000000000000000000000000000) (get!11828 (select (arr!22318 _values!788) #b00000000000000000000000000000000) (dynLambda!983 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!420 (_2!5100 (tuple2!10181 (select (arr!22317 _keys!976) #b00000000000000000000000000000000) (get!11828 (select (arr!22318 _values!788) #b00000000000000000000000000000000) (dynLambda!983 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun lt!377873 () Unit!28497)

(assert (=> d!106697 (= lt!377873 (choose!1433 lt!377773 (_1!5100 (tuple2!10181 (select (arr!22317 _keys!976) #b00000000000000000000000000000000) (get!11828 (select (arr!22318 _values!788) #b00000000000000000000000000000000) (dynLambda!983 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!5100 (tuple2!10181 (select (arr!22317 _keys!976) #b00000000000000000000000000000000) (get!11828 (select (arr!22318 _values!788) #b00000000000000000000000000000000) (dynLambda!983 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!464355 () Bool)

(assert (=> d!106697 e!464355))

(declare-fun res!566450 () Bool)

(assert (=> d!106697 (=> (not res!566450) (not e!464355))))

(assert (=> d!106697 (= res!566450 (isStrictlySorted!438 lt!377773))))

(assert (=> d!106697 (= (lemmaContainsTupThenGetReturnValue!231 lt!377773 (_1!5100 (tuple2!10181 (select (arr!22317 _keys!976) #b00000000000000000000000000000000) (get!11828 (select (arr!22318 _values!788) #b00000000000000000000000000000000) (dynLambda!983 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!5100 (tuple2!10181 (select (arr!22317 _keys!976) #b00000000000000000000000000000000) (get!11828 (select (arr!22318 _values!788) #b00000000000000000000000000000000) (dynLambda!983 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))) lt!377873)))

(declare-fun b!832529 () Bool)

(declare-fun res!566451 () Bool)

(assert (=> b!832529 (=> (not res!566451) (not e!464355))))

(assert (=> b!832529 (= res!566451 (containsKey!401 lt!377773 (_1!5100 (tuple2!10181 (select (arr!22317 _keys!976) #b00000000000000000000000000000000) (get!11828 (select (arr!22318 _values!788) #b00000000000000000000000000000000) (dynLambda!983 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun b!832530 () Bool)

(assert (=> b!832530 (= e!464355 (contains!4213 lt!377773 (tuple2!10181 (_1!5100 (tuple2!10181 (select (arr!22317 _keys!976) #b00000000000000000000000000000000) (get!11828 (select (arr!22318 _values!788) #b00000000000000000000000000000000) (dynLambda!983 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!5100 (tuple2!10181 (select (arr!22317 _keys!976) #b00000000000000000000000000000000) (get!11828 (select (arr!22318 _values!788) #b00000000000000000000000000000000) (dynLambda!983 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(assert (= (and d!106697 res!566450) b!832529))

(assert (= (and b!832529 res!566451) b!832530))

(assert (=> d!106697 m!776635))

(declare-fun m!777093 () Bool)

(assert (=> d!106697 m!777093))

(declare-fun m!777095 () Bool)

(assert (=> d!106697 m!777095))

(declare-fun m!777097 () Bool)

(assert (=> b!832529 m!777097))

(declare-fun m!777099 () Bool)

(assert (=> b!832530 m!777099))

(assert (=> d!106463 d!106697))

(declare-fun b!832531 () Bool)

(declare-fun e!464360 () List!16008)

(declare-fun call!36446 () List!16008)

(assert (=> b!832531 (= e!464360 call!36446)))

(declare-fun b!832532 () Bool)

(declare-fun res!566452 () Bool)

(declare-fun e!464357 () Bool)

(assert (=> b!832532 (=> (not res!566452) (not e!464357))))

(declare-fun lt!377874 () List!16008)

(assert (=> b!832532 (= res!566452 (containsKey!401 lt!377874 (_1!5100 (tuple2!10181 (select (arr!22317 _keys!976) #b00000000000000000000000000000000) (get!11828 (select (arr!22318 _values!788) #b00000000000000000000000000000000) (dynLambda!983 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun c!90493 () Bool)

(declare-fun b!832533 () Bool)

(declare-fun c!90491 () Bool)

(declare-fun e!464359 () List!16008)

(assert (=> b!832533 (= e!464359 (ite c!90491 (t!22384 (toList!4524 call!36368)) (ite c!90493 (Cons!16004 (h!17134 (toList!4524 call!36368)) (t!22384 (toList!4524 call!36368))) Nil!16005)))))

(declare-fun b!832534 () Bool)

(declare-fun e!464356 () List!16008)

(assert (=> b!832534 (= e!464356 e!464360)))

(assert (=> b!832534 (= c!90491 (and ((_ is Cons!16004) (toList!4524 call!36368)) (= (_1!5100 (h!17134 (toList!4524 call!36368))) (_1!5100 (tuple2!10181 (select (arr!22317 _keys!976) #b00000000000000000000000000000000) (get!11828 (select (arr!22318 _values!788) #b00000000000000000000000000000000) (dynLambda!983 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun b!832535 () Bool)

(assert (=> b!832535 (= e!464359 (insertStrictlySorted!269 (t!22384 (toList!4524 call!36368)) (_1!5100 (tuple2!10181 (select (arr!22317 _keys!976) #b00000000000000000000000000000000) (get!11828 (select (arr!22318 _values!788) #b00000000000000000000000000000000) (dynLambda!983 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!5100 (tuple2!10181 (select (arr!22317 _keys!976) #b00000000000000000000000000000000) (get!11828 (select (arr!22318 _values!788) #b00000000000000000000000000000000) (dynLambda!983 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun bm!36442 () Bool)

(declare-fun call!36447 () List!16008)

(assert (=> bm!36442 (= call!36446 call!36447)))

(declare-fun b!832536 () Bool)

(assert (=> b!832536 (= e!464357 (contains!4213 lt!377874 (tuple2!10181 (_1!5100 (tuple2!10181 (select (arr!22317 _keys!976) #b00000000000000000000000000000000) (get!11828 (select (arr!22318 _values!788) #b00000000000000000000000000000000) (dynLambda!983 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!5100 (tuple2!10181 (select (arr!22317 _keys!976) #b00000000000000000000000000000000) (get!11828 (select (arr!22318 _values!788) #b00000000000000000000000000000000) (dynLambda!983 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun b!832537 () Bool)

(declare-fun e!464358 () List!16008)

(declare-fun call!36445 () List!16008)

(assert (=> b!832537 (= e!464358 call!36445)))

(declare-fun b!832538 () Bool)

(assert (=> b!832538 (= c!90493 (and ((_ is Cons!16004) (toList!4524 call!36368)) (bvsgt (_1!5100 (h!17134 (toList!4524 call!36368))) (_1!5100 (tuple2!10181 (select (arr!22317 _keys!976) #b00000000000000000000000000000000) (get!11828 (select (arr!22318 _values!788) #b00000000000000000000000000000000) (dynLambda!983 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(assert (=> b!832538 (= e!464360 e!464358)))

(declare-fun d!106699 () Bool)

(assert (=> d!106699 e!464357))

(declare-fun res!566453 () Bool)

(assert (=> d!106699 (=> (not res!566453) (not e!464357))))

(assert (=> d!106699 (= res!566453 (isStrictlySorted!438 lt!377874))))

(assert (=> d!106699 (= lt!377874 e!464356)))

(declare-fun c!90492 () Bool)

(assert (=> d!106699 (= c!90492 (and ((_ is Cons!16004) (toList!4524 call!36368)) (bvslt (_1!5100 (h!17134 (toList!4524 call!36368))) (_1!5100 (tuple2!10181 (select (arr!22317 _keys!976) #b00000000000000000000000000000000) (get!11828 (select (arr!22318 _values!788) #b00000000000000000000000000000000) (dynLambda!983 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(assert (=> d!106699 (isStrictlySorted!438 (toList!4524 call!36368))))

(assert (=> d!106699 (= (insertStrictlySorted!269 (toList!4524 call!36368) (_1!5100 (tuple2!10181 (select (arr!22317 _keys!976) #b00000000000000000000000000000000) (get!11828 (select (arr!22318 _values!788) #b00000000000000000000000000000000) (dynLambda!983 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!5100 (tuple2!10181 (select (arr!22317 _keys!976) #b00000000000000000000000000000000) (get!11828 (select (arr!22318 _values!788) #b00000000000000000000000000000000) (dynLambda!983 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))) lt!377874)))

(declare-fun b!832539 () Bool)

(assert (=> b!832539 (= e!464358 call!36445)))

(declare-fun bm!36443 () Bool)

(assert (=> bm!36443 (= call!36447 ($colon$colon!536 e!464359 (ite c!90492 (h!17134 (toList!4524 call!36368)) (tuple2!10181 (_1!5100 (tuple2!10181 (select (arr!22317 _keys!976) #b00000000000000000000000000000000) (get!11828 (select (arr!22318 _values!788) #b00000000000000000000000000000000) (dynLambda!983 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!5100 (tuple2!10181 (select (arr!22317 _keys!976) #b00000000000000000000000000000000) (get!11828 (select (arr!22318 _values!788) #b00000000000000000000000000000000) (dynLambda!983 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))))))))

(declare-fun c!90490 () Bool)

(assert (=> bm!36443 (= c!90490 c!90492)))

(declare-fun bm!36444 () Bool)

(assert (=> bm!36444 (= call!36445 call!36446)))

(declare-fun b!832540 () Bool)

(assert (=> b!832540 (= e!464356 call!36447)))

(assert (= (and d!106699 c!90492) b!832540))

(assert (= (and d!106699 (not c!90492)) b!832534))

(assert (= (and b!832534 c!90491) b!832531))

(assert (= (and b!832534 (not c!90491)) b!832538))

(assert (= (and b!832538 c!90493) b!832537))

(assert (= (and b!832538 (not c!90493)) b!832539))

(assert (= (or b!832537 b!832539) bm!36444))

(assert (= (or b!832531 bm!36444) bm!36442))

(assert (= (or b!832540 bm!36442) bm!36443))

(assert (= (and bm!36443 c!90490) b!832535))

(assert (= (and bm!36443 (not c!90490)) b!832533))

(assert (= (and d!106699 res!566453) b!832532))

(assert (= (and b!832532 res!566452) b!832536))

(declare-fun m!777101 () Bool)

(assert (=> b!832532 m!777101))

(declare-fun m!777103 () Bool)

(assert (=> b!832535 m!777103))

(declare-fun m!777105 () Bool)

(assert (=> d!106699 m!777105))

(declare-fun m!777107 () Bool)

(assert (=> d!106699 m!777107))

(declare-fun m!777109 () Bool)

(assert (=> b!832536 m!777109))

(declare-fun m!777111 () Bool)

(assert (=> bm!36443 m!777111))

(assert (=> d!106463 d!106699))

(declare-fun d!106701 () Bool)

(declare-fun res!566454 () Bool)

(declare-fun e!464361 () Bool)

(assert (=> d!106701 (=> res!566454 e!464361)))

(assert (=> d!106701 (= res!566454 (and ((_ is Cons!16004) lt!377531) (= (_1!5100 (h!17134 lt!377531)) (_1!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))))))

(assert (=> d!106701 (= (containsKey!401 lt!377531 (_1!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))) e!464361)))

(declare-fun b!832541 () Bool)

(declare-fun e!464362 () Bool)

(assert (=> b!832541 (= e!464361 e!464362)))

(declare-fun res!566455 () Bool)

(assert (=> b!832541 (=> (not res!566455) (not e!464362))))

(assert (=> b!832541 (= res!566455 (and (or (not ((_ is Cons!16004) lt!377531)) (bvsle (_1!5100 (h!17134 lt!377531)) (_1!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))) ((_ is Cons!16004) lt!377531) (bvslt (_1!5100 (h!17134 lt!377531)) (_1!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))))))

(declare-fun b!832542 () Bool)

(assert (=> b!832542 (= e!464362 (containsKey!401 (t!22384 lt!377531) (_1!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))))

(assert (= (and d!106701 (not res!566454)) b!832541))

(assert (= (and b!832541 res!566455) b!832542))

(declare-fun m!777113 () Bool)

(assert (=> b!832542 m!777113))

(assert (=> b!832111 d!106701))

(assert (=> b!832050 d!106611))

(declare-fun d!106703 () Bool)

(assert (=> d!106703 (= (get!11829 (getValueByKey!415 (toList!4524 lt!377525) lt!377528)) (v!10097 (getValueByKey!415 (toList!4524 lt!377525) lt!377528)))))

(assert (=> d!106347 d!106703))

(declare-fun d!106705 () Bool)

(declare-fun c!90494 () Bool)

(assert (=> d!106705 (= c!90494 (and ((_ is Cons!16004) (toList!4524 lt!377525)) (= (_1!5100 (h!17134 (toList!4524 lt!377525))) lt!377528)))))

(declare-fun e!464363 () Option!421)

(assert (=> d!106705 (= (getValueByKey!415 (toList!4524 lt!377525) lt!377528) e!464363)))

(declare-fun b!832543 () Bool)

(assert (=> b!832543 (= e!464363 (Some!420 (_2!5100 (h!17134 (toList!4524 lt!377525)))))))

(declare-fun b!832546 () Bool)

(declare-fun e!464364 () Option!421)

(assert (=> b!832546 (= e!464364 None!419)))

(declare-fun b!832544 () Bool)

(assert (=> b!832544 (= e!464363 e!464364)))

(declare-fun c!90495 () Bool)

(assert (=> b!832544 (= c!90495 (and ((_ is Cons!16004) (toList!4524 lt!377525)) (not (= (_1!5100 (h!17134 (toList!4524 lt!377525))) lt!377528))))))

(declare-fun b!832545 () Bool)

(assert (=> b!832545 (= e!464364 (getValueByKey!415 (t!22384 (toList!4524 lt!377525)) lt!377528))))

(assert (= (and d!106705 c!90494) b!832543))

(assert (= (and d!106705 (not c!90494)) b!832544))

(assert (= (and b!832544 c!90495) b!832545))

(assert (= (and b!832544 (not c!90495)) b!832546))

(declare-fun m!777115 () Bool)

(assert (=> b!832545 m!777115))

(assert (=> d!106347 d!106705))

(declare-fun d!106707 () Bool)

(assert (=> d!106707 (isDefined!312 (getValueByKey!415 (toList!4524 lt!377459) (_1!5100 lt!377372)))))

(declare-fun lt!377875 () Unit!28497)

(assert (=> d!106707 (= lt!377875 (choose!1435 (toList!4524 lt!377459) (_1!5100 lt!377372)))))

(declare-fun e!464365 () Bool)

(assert (=> d!106707 e!464365))

(declare-fun res!566456 () Bool)

(assert (=> d!106707 (=> (not res!566456) (not e!464365))))

(assert (=> d!106707 (= res!566456 (isStrictlySorted!438 (toList!4524 lt!377459)))))

(assert (=> d!106707 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!311 (toList!4524 lt!377459) (_1!5100 lt!377372)) lt!377875)))

(declare-fun b!832547 () Bool)

(assert (=> b!832547 (= e!464365 (containsKey!401 (toList!4524 lt!377459) (_1!5100 lt!377372)))))

(assert (= (and d!106707 res!566456) b!832547))

(assert (=> d!106707 m!775817))

(assert (=> d!106707 m!775817))

(assert (=> d!106707 m!776495))

(declare-fun m!777117 () Bool)

(assert (=> d!106707 m!777117))

(declare-fun m!777119 () Bool)

(assert (=> d!106707 m!777119))

(assert (=> b!832547 m!776491))

(assert (=> b!832142 d!106707))

(declare-fun d!106709 () Bool)

(assert (=> d!106709 (= (isDefined!312 (getValueByKey!415 (toList!4524 lt!377459) (_1!5100 lt!377372))) (not (isEmpty!664 (getValueByKey!415 (toList!4524 lt!377459) (_1!5100 lt!377372)))))))

(declare-fun bs!23291 () Bool)

(assert (= bs!23291 d!106709))

(assert (=> bs!23291 m!775817))

(declare-fun m!777121 () Bool)

(assert (=> bs!23291 m!777121))

(assert (=> b!832142 d!106709))

(assert (=> b!832142 d!106449))

(declare-fun d!106711 () Bool)

(declare-fun lt!377876 () Bool)

(assert (=> d!106711 (= lt!377876 (select (content!390 lt!377453) (tuple2!10181 (_1!5100 lt!377372) (_2!5100 lt!377372))))))

(declare-fun e!464366 () Bool)

(assert (=> d!106711 (= lt!377876 e!464366)))

(declare-fun res!566457 () Bool)

(assert (=> d!106711 (=> (not res!566457) (not e!464366))))

(assert (=> d!106711 (= res!566457 ((_ is Cons!16004) lt!377453))))

(assert (=> d!106711 (= (contains!4213 lt!377453 (tuple2!10181 (_1!5100 lt!377372) (_2!5100 lt!377372))) lt!377876)))

(declare-fun b!832548 () Bool)

(declare-fun e!464367 () Bool)

(assert (=> b!832548 (= e!464366 e!464367)))

(declare-fun res!566458 () Bool)

(assert (=> b!832548 (=> res!566458 e!464367)))

(assert (=> b!832548 (= res!566458 (= (h!17134 lt!377453) (tuple2!10181 (_1!5100 lt!377372) (_2!5100 lt!377372))))))

(declare-fun b!832549 () Bool)

(assert (=> b!832549 (= e!464367 (contains!4213 (t!22384 lt!377453) (tuple2!10181 (_1!5100 lt!377372) (_2!5100 lt!377372))))))

(assert (= (and d!106711 res!566457) b!832548))

(assert (= (and b!832548 (not res!566458)) b!832549))

(declare-fun m!777123 () Bool)

(assert (=> d!106711 m!777123))

(declare-fun m!777125 () Bool)

(assert (=> d!106711 m!777125))

(declare-fun m!777127 () Bool)

(assert (=> b!832549 m!777127))

(assert (=> b!832035 d!106711))

(declare-fun d!106713 () Bool)

(declare-fun e!464368 () Bool)

(assert (=> d!106713 e!464368))

(declare-fun res!566459 () Bool)

(assert (=> d!106713 (=> res!566459 e!464368)))

(declare-fun lt!377880 () Bool)

(assert (=> d!106713 (= res!566459 (not lt!377880))))

(declare-fun lt!377877 () Bool)

(assert (=> d!106713 (= lt!377880 lt!377877)))

(declare-fun lt!377879 () Unit!28497)

(declare-fun e!464369 () Unit!28497)

(assert (=> d!106713 (= lt!377879 e!464369)))

(declare-fun c!90496 () Bool)

(assert (=> d!106713 (= c!90496 lt!377877)))

(assert (=> d!106713 (= lt!377877 (containsKey!401 (toList!4524 lt!377680) (select (arr!22317 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> d!106713 (= (contains!4212 lt!377680 (select (arr!22317 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))) lt!377880)))

(declare-fun b!832550 () Bool)

(declare-fun lt!377878 () Unit!28497)

(assert (=> b!832550 (= e!464369 lt!377878)))

(assert (=> b!832550 (= lt!377878 (lemmaContainsKeyImpliesGetValueByKeyDefined!311 (toList!4524 lt!377680) (select (arr!22317 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!832550 (isDefined!312 (getValueByKey!415 (toList!4524 lt!377680) (select (arr!22317 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!832551 () Bool)

(declare-fun Unit!28534 () Unit!28497)

(assert (=> b!832551 (= e!464369 Unit!28534)))

(declare-fun b!832552 () Bool)

(assert (=> b!832552 (= e!464368 (isDefined!312 (getValueByKey!415 (toList!4524 lt!377680) (select (arr!22317 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))))

(assert (= (and d!106713 c!90496) b!832550))

(assert (= (and d!106713 (not c!90496)) b!832551))

(assert (= (and d!106713 (not res!566459)) b!832552))

(assert (=> d!106713 m!776139))

(declare-fun m!777129 () Bool)

(assert (=> d!106713 m!777129))

(assert (=> b!832550 m!776139))

(declare-fun m!777131 () Bool)

(assert (=> b!832550 m!777131))

(assert (=> b!832550 m!776139))

(declare-fun m!777133 () Bool)

(assert (=> b!832550 m!777133))

(assert (=> b!832550 m!777133))

(declare-fun m!777135 () Bool)

(assert (=> b!832550 m!777135))

(assert (=> b!832552 m!776139))

(assert (=> b!832552 m!777133))

(assert (=> b!832552 m!777133))

(assert (=> b!832552 m!777135))

(assert (=> b!832013 d!106713))

(declare-fun b!832571 () Bool)

(declare-fun e!464383 () Bool)

(declare-fun lt!377885 () SeekEntryResult!8734)

(assert (=> b!832571 (= e!464383 (bvsge (x!70122 lt!377885) #b01111111111111111111111111111110))))

(declare-fun b!832572 () Bool)

(declare-fun e!464381 () Bool)

(assert (=> b!832572 (= e!464383 e!464381)))

(declare-fun res!566467 () Bool)

(assert (=> b!832572 (= res!566467 (and ((_ is Intermediate!8734) lt!377885) (not (undefined!9546 lt!377885)) (bvslt (x!70122 lt!377885) #b01111111111111111111111111111110) (bvsge (x!70122 lt!377885) #b00000000000000000000000000000000) (bvsge (x!70122 lt!377885) #b00000000000000000000000000000000)))))

(assert (=> b!832572 (=> (not res!566467) (not e!464381))))

(declare-fun b!832573 () Bool)

(declare-fun e!464384 () SeekEntryResult!8734)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!832573 (= e!464384 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!22317 _keys!976) #b00000000000000000000000000000000) mask!1312) #b00000000000000000000000000000000 mask!1312) (select (arr!22317 _keys!976) #b00000000000000000000000000000000) _keys!976 mask!1312))))

(declare-fun b!832574 () Bool)

(declare-fun e!464380 () SeekEntryResult!8734)

(assert (=> b!832574 (= e!464380 e!464384)))

(declare-fun c!90504 () Bool)

(declare-fun lt!377886 () (_ BitVec 64))

(assert (=> b!832574 (= c!90504 (or (= lt!377886 (select (arr!22317 _keys!976) #b00000000000000000000000000000000)) (= (bvadd lt!377886 lt!377886) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!832575 () Bool)

(assert (=> b!832575 (= e!464380 (Intermediate!8734 true (toIndex!0 (select (arr!22317 _keys!976) #b00000000000000000000000000000000) mask!1312) #b00000000000000000000000000000000))))

(declare-fun d!106715 () Bool)

(assert (=> d!106715 e!464383))

(declare-fun c!90505 () Bool)

(assert (=> d!106715 (= c!90505 (and ((_ is Intermediate!8734) lt!377885) (undefined!9546 lt!377885)))))

(assert (=> d!106715 (= lt!377885 e!464380)))

(declare-fun c!90503 () Bool)

(assert (=> d!106715 (= c!90503 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!106715 (= lt!377886 (select (arr!22317 _keys!976) (toIndex!0 (select (arr!22317 _keys!976) #b00000000000000000000000000000000) mask!1312)))))

(assert (=> d!106715 (validMask!0 mask!1312)))

(assert (=> d!106715 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!22317 _keys!976) #b00000000000000000000000000000000) mask!1312) (select (arr!22317 _keys!976) #b00000000000000000000000000000000) _keys!976 mask!1312) lt!377885)))

(declare-fun b!832576 () Bool)

(assert (=> b!832576 (= e!464384 (Intermediate!8734 false (toIndex!0 (select (arr!22317 _keys!976) #b00000000000000000000000000000000) mask!1312) #b00000000000000000000000000000000))))

(declare-fun b!832577 () Bool)

(assert (=> b!832577 (and (bvsge (index!37308 lt!377885) #b00000000000000000000000000000000) (bvslt (index!37308 lt!377885) (size!22738 _keys!976)))))

(declare-fun e!464382 () Bool)

(assert (=> b!832577 (= e!464382 (= (select (arr!22317 _keys!976) (index!37308 lt!377885)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!832578 () Bool)

(assert (=> b!832578 (and (bvsge (index!37308 lt!377885) #b00000000000000000000000000000000) (bvslt (index!37308 lt!377885) (size!22738 _keys!976)))))

(declare-fun res!566468 () Bool)

(assert (=> b!832578 (= res!566468 (= (select (arr!22317 _keys!976) (index!37308 lt!377885)) (select (arr!22317 _keys!976) #b00000000000000000000000000000000)))))

(assert (=> b!832578 (=> res!566468 e!464382)))

(assert (=> b!832578 (= e!464381 e!464382)))

(declare-fun b!832579 () Bool)

(assert (=> b!832579 (and (bvsge (index!37308 lt!377885) #b00000000000000000000000000000000) (bvslt (index!37308 lt!377885) (size!22738 _keys!976)))))

(declare-fun res!566466 () Bool)

(assert (=> b!832579 (= res!566466 (= (select (arr!22317 _keys!976) (index!37308 lt!377885)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!832579 (=> res!566466 e!464382)))

(assert (= (and d!106715 c!90503) b!832575))

(assert (= (and d!106715 (not c!90503)) b!832574))

(assert (= (and b!832574 c!90504) b!832576))

(assert (= (and b!832574 (not c!90504)) b!832573))

(assert (= (and d!106715 c!90505) b!832571))

(assert (= (and d!106715 (not c!90505)) b!832572))

(assert (= (and b!832572 res!566467) b!832578))

(assert (= (and b!832578 (not res!566468)) b!832579))

(assert (= (and b!832579 (not res!566466)) b!832577))

(assert (=> d!106715 m!776395))

(declare-fun m!777137 () Bool)

(assert (=> d!106715 m!777137))

(assert (=> d!106715 m!775625))

(declare-fun m!777139 () Bool)

(assert (=> b!832578 m!777139))

(assert (=> b!832577 m!777139))

(assert (=> b!832579 m!777139))

(assert (=> b!832573 m!776395))

(declare-fun m!777141 () Bool)

(assert (=> b!832573 m!777141))

(assert (=> b!832573 m!777141))

(assert (=> b!832573 m!775697))

(declare-fun m!777143 () Bool)

(assert (=> b!832573 m!777143))

(assert (=> d!106387 d!106715))

(declare-fun d!106717 () Bool)

(declare-fun lt!377892 () (_ BitVec 32))

(declare-fun lt!377891 () (_ BitVec 32))

(assert (=> d!106717 (= lt!377892 (bvmul (bvxor lt!377891 (bvlshr lt!377891 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!106717 (= lt!377891 ((_ extract 31 0) (bvand (bvxor (select (arr!22317 _keys!976) #b00000000000000000000000000000000) (bvlshr (select (arr!22317 _keys!976) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!106717 (and (bvsge mask!1312 #b00000000000000000000000000000000) (let ((res!566469 (let ((h!17138 ((_ extract 31 0) (bvand (bvxor (select (arr!22317 _keys!976) #b00000000000000000000000000000000) (bvlshr (select (arr!22317 _keys!976) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!70132 (bvmul (bvxor h!17138 (bvlshr h!17138 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!70132 (bvlshr x!70132 #b00000000000000000000000000001101)) mask!1312))))) (and (bvslt res!566469 (bvadd mask!1312 #b00000000000000000000000000000001)) (bvsge res!566469 #b00000000000000000000000000000000))))))

(assert (=> d!106717 (= (toIndex!0 (select (arr!22317 _keys!976) #b00000000000000000000000000000000) mask!1312) (bvand (bvxor lt!377892 (bvlshr lt!377892 #b00000000000000000000000000001101)) mask!1312))))

(assert (=> d!106387 d!106717))

(assert (=> d!106387 d!106233))

(declare-fun d!106719 () Bool)

(declare-fun c!90506 () Bool)

(assert (=> d!106719 (= c!90506 (and ((_ is Cons!16004) (toList!4524 lt!377801)) (= (_1!5100 (h!17134 (toList!4524 lt!377801))) (_1!5100 (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))))))

(declare-fun e!464385 () Option!421)

(assert (=> d!106719 (= (getValueByKey!415 (toList!4524 lt!377801) (_1!5100 (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))) e!464385)))

(declare-fun b!832580 () Bool)

(assert (=> b!832580 (= e!464385 (Some!420 (_2!5100 (h!17134 (toList!4524 lt!377801)))))))

(declare-fun b!832583 () Bool)

(declare-fun e!464386 () Option!421)

(assert (=> b!832583 (= e!464386 None!419)))

(declare-fun b!832581 () Bool)

(assert (=> b!832581 (= e!464385 e!464386)))

(declare-fun c!90507 () Bool)

(assert (=> b!832581 (= c!90507 (and ((_ is Cons!16004) (toList!4524 lt!377801)) (not (= (_1!5100 (h!17134 (toList!4524 lt!377801))) (_1!5100 (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))))

(declare-fun b!832582 () Bool)

(assert (=> b!832582 (= e!464386 (getValueByKey!415 (t!22384 (toList!4524 lt!377801)) (_1!5100 (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))

(assert (= (and d!106719 c!90506) b!832580))

(assert (= (and d!106719 (not c!90506)) b!832581))

(assert (= (and b!832581 c!90507) b!832582))

(assert (= (and b!832581 (not c!90507)) b!832583))

(declare-fun m!777145 () Bool)

(assert (=> b!832582 m!777145))

(assert (=> b!832263 d!106719))

(assert (=> b!831885 d!106527))

(assert (=> b!831885 d!106529))

(declare-fun d!106721 () Bool)

(declare-fun c!90508 () Bool)

(assert (=> d!106721 (= c!90508 (and ((_ is Cons!16004) (t!22384 (toList!4524 lt!377451))) (= (_1!5100 (h!17134 (t!22384 (toList!4524 lt!377451)))) (_1!5100 lt!377372))))))

(declare-fun e!464387 () Option!421)

(assert (=> d!106721 (= (getValueByKey!415 (t!22384 (toList!4524 lt!377451)) (_1!5100 lt!377372)) e!464387)))

(declare-fun b!832584 () Bool)

(assert (=> b!832584 (= e!464387 (Some!420 (_2!5100 (h!17134 (t!22384 (toList!4524 lt!377451))))))))

(declare-fun b!832587 () Bool)

(declare-fun e!464388 () Option!421)

(assert (=> b!832587 (= e!464388 None!419)))

(declare-fun b!832585 () Bool)

(assert (=> b!832585 (= e!464387 e!464388)))

(declare-fun c!90509 () Bool)

(assert (=> b!832585 (= c!90509 (and ((_ is Cons!16004) (t!22384 (toList!4524 lt!377451))) (not (= (_1!5100 (h!17134 (t!22384 (toList!4524 lt!377451)))) (_1!5100 lt!377372)))))))

(declare-fun b!832586 () Bool)

(assert (=> b!832586 (= e!464388 (getValueByKey!415 (t!22384 (t!22384 (toList!4524 lt!377451))) (_1!5100 lt!377372)))))

(assert (= (and d!106721 c!90508) b!832584))

(assert (= (and d!106721 (not c!90508)) b!832585))

(assert (= (and b!832585 c!90509) b!832586))

(assert (= (and b!832585 (not c!90509)) b!832587))

(declare-fun m!777147 () Bool)

(assert (=> b!832586 m!777147))

(assert (=> b!832241 d!106721))

(declare-fun d!106723 () Bool)

(declare-fun e!464389 () Bool)

(assert (=> d!106723 e!464389))

(declare-fun res!566471 () Bool)

(assert (=> d!106723 (=> (not res!566471) (not e!464389))))

(declare-fun lt!377893 () ListLongMap!9017)

(assert (=> d!106723 (= res!566471 (contains!4212 lt!377893 (_1!5100 (tuple2!10181 lt!377635 lt!377640))))))

(declare-fun lt!377895 () List!16008)

(assert (=> d!106723 (= lt!377893 (ListLongMap!9018 lt!377895))))

(declare-fun lt!377896 () Unit!28497)

(declare-fun lt!377894 () Unit!28497)

(assert (=> d!106723 (= lt!377896 lt!377894)))

(assert (=> d!106723 (= (getValueByKey!415 lt!377895 (_1!5100 (tuple2!10181 lt!377635 lt!377640))) (Some!420 (_2!5100 (tuple2!10181 lt!377635 lt!377640))))))

(assert (=> d!106723 (= lt!377894 (lemmaContainsTupThenGetReturnValue!231 lt!377895 (_1!5100 (tuple2!10181 lt!377635 lt!377640)) (_2!5100 (tuple2!10181 lt!377635 lt!377640))))))

(assert (=> d!106723 (= lt!377895 (insertStrictlySorted!269 (toList!4524 lt!377638) (_1!5100 (tuple2!10181 lt!377635 lt!377640)) (_2!5100 (tuple2!10181 lt!377635 lt!377640))))))

(assert (=> d!106723 (= (+!1952 lt!377638 (tuple2!10181 lt!377635 lt!377640)) lt!377893)))

(declare-fun b!832588 () Bool)

(declare-fun res!566470 () Bool)

(assert (=> b!832588 (=> (not res!566470) (not e!464389))))

(assert (=> b!832588 (= res!566470 (= (getValueByKey!415 (toList!4524 lt!377893) (_1!5100 (tuple2!10181 lt!377635 lt!377640))) (Some!420 (_2!5100 (tuple2!10181 lt!377635 lt!377640)))))))

(declare-fun b!832589 () Bool)

(assert (=> b!832589 (= e!464389 (contains!4213 (toList!4524 lt!377893) (tuple2!10181 lt!377635 lt!377640)))))

(assert (= (and d!106723 res!566471) b!832588))

(assert (= (and b!832588 res!566470) b!832589))

(declare-fun m!777149 () Bool)

(assert (=> d!106723 m!777149))

(declare-fun m!777151 () Bool)

(assert (=> d!106723 m!777151))

(declare-fun m!777153 () Bool)

(assert (=> d!106723 m!777153))

(declare-fun m!777155 () Bool)

(assert (=> d!106723 m!777155))

(declare-fun m!777157 () Bool)

(assert (=> b!832588 m!777157))

(declare-fun m!777159 () Bool)

(assert (=> b!832589 m!777159))

(assert (=> b!831966 d!106723))

(declare-fun d!106725 () Bool)

(declare-fun e!464390 () Bool)

(assert (=> d!106725 e!464390))

(declare-fun res!566473 () Bool)

(assert (=> d!106725 (=> (not res!566473) (not e!464390))))

(declare-fun lt!377897 () ListLongMap!9017)

(assert (=> d!106725 (= res!566473 (contains!4212 lt!377897 (_1!5100 (tuple2!10181 (select (arr!22317 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (get!11828 (select (arr!22318 _values!788) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (dynLambda!983 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun lt!377899 () List!16008)

(assert (=> d!106725 (= lt!377897 (ListLongMap!9018 lt!377899))))

(declare-fun lt!377900 () Unit!28497)

(declare-fun lt!377898 () Unit!28497)

(assert (=> d!106725 (= lt!377900 lt!377898)))

(assert (=> d!106725 (= (getValueByKey!415 lt!377899 (_1!5100 (tuple2!10181 (select (arr!22317 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (get!11828 (select (arr!22318 _values!788) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (dynLambda!983 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!420 (_2!5100 (tuple2!10181 (select (arr!22317 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (get!11828 (select (arr!22318 _values!788) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (dynLambda!983 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!106725 (= lt!377898 (lemmaContainsTupThenGetReturnValue!231 lt!377899 (_1!5100 (tuple2!10181 (select (arr!22317 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (get!11828 (select (arr!22318 _values!788) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (dynLambda!983 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!5100 (tuple2!10181 (select (arr!22317 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (get!11828 (select (arr!22318 _values!788) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (dynLambda!983 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!106725 (= lt!377899 (insertStrictlySorted!269 (toList!4524 call!36406) (_1!5100 (tuple2!10181 (select (arr!22317 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (get!11828 (select (arr!22318 _values!788) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (dynLambda!983 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!5100 (tuple2!10181 (select (arr!22317 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (get!11828 (select (arr!22318 _values!788) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (dynLambda!983 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!106725 (= (+!1952 call!36406 (tuple2!10181 (select (arr!22317 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (get!11828 (select (arr!22318 _values!788) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (dynLambda!983 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))) lt!377897)))

(declare-fun b!832590 () Bool)

(declare-fun res!566472 () Bool)

(assert (=> b!832590 (=> (not res!566472) (not e!464390))))

(assert (=> b!832590 (= res!566472 (= (getValueByKey!415 (toList!4524 lt!377897) (_1!5100 (tuple2!10181 (select (arr!22317 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (get!11828 (select (arr!22318 _values!788) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (dynLambda!983 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!420 (_2!5100 (tuple2!10181 (select (arr!22317 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (get!11828 (select (arr!22318 _values!788) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (dynLambda!983 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun b!832591 () Bool)

(assert (=> b!832591 (= e!464390 (contains!4213 (toList!4524 lt!377897) (tuple2!10181 (select (arr!22317 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (get!11828 (select (arr!22318 _values!788) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (dynLambda!983 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (= (and d!106725 res!566473) b!832590))

(assert (= (and b!832590 res!566472) b!832591))

(declare-fun m!777161 () Bool)

(assert (=> d!106725 m!777161))

(declare-fun m!777163 () Bool)

(assert (=> d!106725 m!777163))

(declare-fun m!777165 () Bool)

(assert (=> d!106725 m!777165))

(declare-fun m!777167 () Bool)

(assert (=> d!106725 m!777167))

(declare-fun m!777169 () Bool)

(assert (=> b!832590 m!777169))

(declare-fun m!777171 () Bool)

(assert (=> b!832591 m!777171))

(assert (=> b!831966 d!106725))

(declare-fun d!106727 () Bool)

(declare-fun c!90510 () Bool)

(assert (=> d!106727 (= c!90510 ((_ is ValueCellFull!7191) (select (arr!22318 _values!788) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun e!464391 () V!25285)

(assert (=> d!106727 (= (get!11828 (select (arr!22318 _values!788) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (dynLambda!983 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)) e!464391)))

(declare-fun b!832592 () Bool)

(assert (=> b!832592 (= e!464391 (get!11830 (select (arr!22318 _values!788) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (dynLambda!983 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!832593 () Bool)

(assert (=> b!832593 (= e!464391 (get!11831 (select (arr!22318 _values!788) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (dynLambda!983 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!106727 c!90510) b!832592))

(assert (= (and d!106727 (not c!90510)) b!832593))

(assert (=> b!832592 m!776145))

(assert (=> b!832592 m!775747))

(declare-fun m!777173 () Bool)

(assert (=> b!832592 m!777173))

(assert (=> b!832593 m!776145))

(assert (=> b!832593 m!775747))

(declare-fun m!777175 () Bool)

(assert (=> b!832593 m!777175))

(assert (=> b!831966 d!106727))

(declare-fun d!106729 () Bool)

(assert (=> d!106729 (not (contains!4212 (+!1952 lt!377638 (tuple2!10181 lt!377635 lt!377640)) lt!377636))))

(declare-fun lt!377901 () Unit!28497)

(assert (=> d!106729 (= lt!377901 (choose!1434 lt!377638 lt!377635 lt!377640 lt!377636))))

(declare-fun e!464392 () Bool)

(assert (=> d!106729 e!464392))

(declare-fun res!566474 () Bool)

(assert (=> d!106729 (=> (not res!566474) (not e!464392))))

(assert (=> d!106729 (= res!566474 (not (contains!4212 lt!377638 lt!377636)))))

(assert (=> d!106729 (= (addStillNotContains!200 lt!377638 lt!377635 lt!377640 lt!377636) lt!377901)))

(declare-fun b!832594 () Bool)

(assert (=> b!832594 (= e!464392 (not (= lt!377635 lt!377636)))))

(assert (= (and d!106729 res!566474) b!832594))

(assert (=> d!106729 m!776143))

(assert (=> d!106729 m!776143))

(assert (=> d!106729 m!776149))

(declare-fun m!777177 () Bool)

(assert (=> d!106729 m!777177))

(declare-fun m!777179 () Bool)

(assert (=> d!106729 m!777179))

(assert (=> b!831966 d!106729))

(declare-fun d!106731 () Bool)

(declare-fun e!464393 () Bool)

(assert (=> d!106731 e!464393))

(declare-fun res!566475 () Bool)

(assert (=> d!106731 (=> res!566475 e!464393)))

(declare-fun lt!377905 () Bool)

(assert (=> d!106731 (= res!566475 (not lt!377905))))

(declare-fun lt!377902 () Bool)

(assert (=> d!106731 (= lt!377905 lt!377902)))

(declare-fun lt!377904 () Unit!28497)

(declare-fun e!464394 () Unit!28497)

(assert (=> d!106731 (= lt!377904 e!464394)))

(declare-fun c!90511 () Bool)

(assert (=> d!106731 (= c!90511 lt!377902)))

(assert (=> d!106731 (= lt!377902 (containsKey!401 (toList!4524 (+!1952 lt!377638 (tuple2!10181 lt!377635 lt!377640))) lt!377636))))

(assert (=> d!106731 (= (contains!4212 (+!1952 lt!377638 (tuple2!10181 lt!377635 lt!377640)) lt!377636) lt!377905)))

(declare-fun b!832595 () Bool)

(declare-fun lt!377903 () Unit!28497)

(assert (=> b!832595 (= e!464394 lt!377903)))

(assert (=> b!832595 (= lt!377903 (lemmaContainsKeyImpliesGetValueByKeyDefined!311 (toList!4524 (+!1952 lt!377638 (tuple2!10181 lt!377635 lt!377640))) lt!377636))))

(assert (=> b!832595 (isDefined!312 (getValueByKey!415 (toList!4524 (+!1952 lt!377638 (tuple2!10181 lt!377635 lt!377640))) lt!377636))))

(declare-fun b!832596 () Bool)

(declare-fun Unit!28535 () Unit!28497)

(assert (=> b!832596 (= e!464394 Unit!28535)))

(declare-fun b!832597 () Bool)

(assert (=> b!832597 (= e!464393 (isDefined!312 (getValueByKey!415 (toList!4524 (+!1952 lt!377638 (tuple2!10181 lt!377635 lt!377640))) lt!377636)))))

(assert (= (and d!106731 c!90511) b!832595))

(assert (= (and d!106731 (not c!90511)) b!832596))

(assert (= (and d!106731 (not res!566475)) b!832597))

(declare-fun m!777181 () Bool)

(assert (=> d!106731 m!777181))

(declare-fun m!777183 () Bool)

(assert (=> b!832595 m!777183))

(declare-fun m!777185 () Bool)

(assert (=> b!832595 m!777185))

(assert (=> b!832595 m!777185))

(declare-fun m!777187 () Bool)

(assert (=> b!832595 m!777187))

(assert (=> b!832597 m!777185))

(assert (=> b!832597 m!777185))

(assert (=> b!832597 m!777187))

(assert (=> b!831966 d!106731))

(declare-fun d!106733 () Bool)

(declare-fun e!464395 () Bool)

(assert (=> d!106733 e!464395))

(declare-fun res!566476 () Bool)

(assert (=> d!106733 (=> res!566476 e!464395)))

(declare-fun lt!377909 () Bool)

(assert (=> d!106733 (= res!566476 (not lt!377909))))

(declare-fun lt!377906 () Bool)

(assert (=> d!106733 (= lt!377909 lt!377906)))

(declare-fun lt!377908 () Unit!28497)

(declare-fun e!464396 () Unit!28497)

(assert (=> d!106733 (= lt!377908 e!464396)))

(declare-fun c!90512 () Bool)

(assert (=> d!106733 (= c!90512 lt!377906)))

(assert (=> d!106733 (= lt!377906 (containsKey!401 (toList!4524 lt!377578) (_1!5100 (tuple2!10181 lt!377550 minValue!754))))))

(assert (=> d!106733 (= (contains!4212 lt!377578 (_1!5100 (tuple2!10181 lt!377550 minValue!754))) lt!377909)))

(declare-fun b!832598 () Bool)

(declare-fun lt!377907 () Unit!28497)

(assert (=> b!832598 (= e!464396 lt!377907)))

(assert (=> b!832598 (= lt!377907 (lemmaContainsKeyImpliesGetValueByKeyDefined!311 (toList!4524 lt!377578) (_1!5100 (tuple2!10181 lt!377550 minValue!754))))))

(assert (=> b!832598 (isDefined!312 (getValueByKey!415 (toList!4524 lt!377578) (_1!5100 (tuple2!10181 lt!377550 minValue!754))))))

(declare-fun b!832599 () Bool)

(declare-fun Unit!28536 () Unit!28497)

(assert (=> b!832599 (= e!464396 Unit!28536)))

(declare-fun b!832600 () Bool)

(assert (=> b!832600 (= e!464395 (isDefined!312 (getValueByKey!415 (toList!4524 lt!377578) (_1!5100 (tuple2!10181 lt!377550 minValue!754)))))))

(assert (= (and d!106733 c!90512) b!832598))

(assert (= (and d!106733 (not c!90512)) b!832599))

(assert (= (and d!106733 (not res!566476)) b!832600))

(declare-fun m!777189 () Bool)

(assert (=> d!106733 m!777189))

(declare-fun m!777191 () Bool)

(assert (=> b!832598 m!777191))

(assert (=> b!832598 m!776007))

(assert (=> b!832598 m!776007))

(declare-fun m!777193 () Bool)

(assert (=> b!832598 m!777193))

(assert (=> b!832600 m!776007))

(assert (=> b!832600 m!776007))

(assert (=> b!832600 m!777193))

(assert (=> d!106271 d!106733))

(declare-fun c!90513 () Bool)

(declare-fun d!106735 () Bool)

(assert (=> d!106735 (= c!90513 (and ((_ is Cons!16004) lt!377580) (= (_1!5100 (h!17134 lt!377580)) (_1!5100 (tuple2!10181 lt!377550 minValue!754)))))))

(declare-fun e!464397 () Option!421)

(assert (=> d!106735 (= (getValueByKey!415 lt!377580 (_1!5100 (tuple2!10181 lt!377550 minValue!754))) e!464397)))

(declare-fun b!832601 () Bool)

(assert (=> b!832601 (= e!464397 (Some!420 (_2!5100 (h!17134 lt!377580))))))

(declare-fun b!832604 () Bool)

(declare-fun e!464398 () Option!421)

(assert (=> b!832604 (= e!464398 None!419)))

(declare-fun b!832602 () Bool)

(assert (=> b!832602 (= e!464397 e!464398)))

(declare-fun c!90514 () Bool)

(assert (=> b!832602 (= c!90514 (and ((_ is Cons!16004) lt!377580) (not (= (_1!5100 (h!17134 lt!377580)) (_1!5100 (tuple2!10181 lt!377550 minValue!754))))))))

(declare-fun b!832603 () Bool)

(assert (=> b!832603 (= e!464398 (getValueByKey!415 (t!22384 lt!377580) (_1!5100 (tuple2!10181 lt!377550 minValue!754))))))

(assert (= (and d!106735 c!90513) b!832601))

(assert (= (and d!106735 (not c!90513)) b!832602))

(assert (= (and b!832602 c!90514) b!832603))

(assert (= (and b!832602 (not c!90514)) b!832604))

(declare-fun m!777195 () Bool)

(assert (=> b!832603 m!777195))

(assert (=> d!106271 d!106735))

(declare-fun d!106737 () Bool)

(assert (=> d!106737 (= (getValueByKey!415 lt!377580 (_1!5100 (tuple2!10181 lt!377550 minValue!754))) (Some!420 (_2!5100 (tuple2!10181 lt!377550 minValue!754))))))

(declare-fun lt!377910 () Unit!28497)

(assert (=> d!106737 (= lt!377910 (choose!1433 lt!377580 (_1!5100 (tuple2!10181 lt!377550 minValue!754)) (_2!5100 (tuple2!10181 lt!377550 minValue!754))))))

(declare-fun e!464399 () Bool)

(assert (=> d!106737 e!464399))

(declare-fun res!566477 () Bool)

(assert (=> d!106737 (=> (not res!566477) (not e!464399))))

(assert (=> d!106737 (= res!566477 (isStrictlySorted!438 lt!377580))))

(assert (=> d!106737 (= (lemmaContainsTupThenGetReturnValue!231 lt!377580 (_1!5100 (tuple2!10181 lt!377550 minValue!754)) (_2!5100 (tuple2!10181 lt!377550 minValue!754))) lt!377910)))

(declare-fun b!832605 () Bool)

(declare-fun res!566478 () Bool)

(assert (=> b!832605 (=> (not res!566478) (not e!464399))))

(assert (=> b!832605 (= res!566478 (containsKey!401 lt!377580 (_1!5100 (tuple2!10181 lt!377550 minValue!754))))))

(declare-fun b!832606 () Bool)

(assert (=> b!832606 (= e!464399 (contains!4213 lt!377580 (tuple2!10181 (_1!5100 (tuple2!10181 lt!377550 minValue!754)) (_2!5100 (tuple2!10181 lt!377550 minValue!754)))))))

(assert (= (and d!106737 res!566477) b!832605))

(assert (= (and b!832605 res!566478) b!832606))

(assert (=> d!106737 m!776001))

(declare-fun m!777197 () Bool)

(assert (=> d!106737 m!777197))

(declare-fun m!777199 () Bool)

(assert (=> d!106737 m!777199))

(declare-fun m!777201 () Bool)

(assert (=> b!832605 m!777201))

(declare-fun m!777203 () Bool)

(assert (=> b!832606 m!777203))

(assert (=> d!106271 d!106737))

(declare-fun b!832607 () Bool)

(declare-fun e!464404 () List!16008)

(declare-fun call!36449 () List!16008)

(assert (=> b!832607 (= e!464404 call!36449)))

(declare-fun b!832608 () Bool)

(declare-fun res!566479 () Bool)

(declare-fun e!464401 () Bool)

(assert (=> b!832608 (=> (not res!566479) (not e!464401))))

(declare-fun lt!377911 () List!16008)

(assert (=> b!832608 (= res!566479 (containsKey!401 lt!377911 (_1!5100 (tuple2!10181 lt!377550 minValue!754))))))

(declare-fun c!90516 () Bool)

(declare-fun e!464403 () List!16008)

(declare-fun c!90518 () Bool)

(declare-fun b!832609 () Bool)

(assert (=> b!832609 (= e!464403 (ite c!90516 (t!22384 (toList!4524 lt!377559)) (ite c!90518 (Cons!16004 (h!17134 (toList!4524 lt!377559)) (t!22384 (toList!4524 lt!377559))) Nil!16005)))))

(declare-fun b!832610 () Bool)

(declare-fun e!464400 () List!16008)

(assert (=> b!832610 (= e!464400 e!464404)))

(assert (=> b!832610 (= c!90516 (and ((_ is Cons!16004) (toList!4524 lt!377559)) (= (_1!5100 (h!17134 (toList!4524 lt!377559))) (_1!5100 (tuple2!10181 lt!377550 minValue!754)))))))

(declare-fun b!832611 () Bool)

(assert (=> b!832611 (= e!464403 (insertStrictlySorted!269 (t!22384 (toList!4524 lt!377559)) (_1!5100 (tuple2!10181 lt!377550 minValue!754)) (_2!5100 (tuple2!10181 lt!377550 minValue!754))))))

(declare-fun bm!36445 () Bool)

(declare-fun call!36450 () List!16008)

(assert (=> bm!36445 (= call!36449 call!36450)))

(declare-fun b!832612 () Bool)

(assert (=> b!832612 (= e!464401 (contains!4213 lt!377911 (tuple2!10181 (_1!5100 (tuple2!10181 lt!377550 minValue!754)) (_2!5100 (tuple2!10181 lt!377550 minValue!754)))))))

(declare-fun b!832613 () Bool)

(declare-fun e!464402 () List!16008)

(declare-fun call!36448 () List!16008)

(assert (=> b!832613 (= e!464402 call!36448)))

(declare-fun b!832614 () Bool)

(assert (=> b!832614 (= c!90518 (and ((_ is Cons!16004) (toList!4524 lt!377559)) (bvsgt (_1!5100 (h!17134 (toList!4524 lt!377559))) (_1!5100 (tuple2!10181 lt!377550 minValue!754)))))))

(assert (=> b!832614 (= e!464404 e!464402)))

(declare-fun d!106739 () Bool)

(assert (=> d!106739 e!464401))

(declare-fun res!566480 () Bool)

(assert (=> d!106739 (=> (not res!566480) (not e!464401))))

(assert (=> d!106739 (= res!566480 (isStrictlySorted!438 lt!377911))))

(assert (=> d!106739 (= lt!377911 e!464400)))

(declare-fun c!90517 () Bool)

(assert (=> d!106739 (= c!90517 (and ((_ is Cons!16004) (toList!4524 lt!377559)) (bvslt (_1!5100 (h!17134 (toList!4524 lt!377559))) (_1!5100 (tuple2!10181 lt!377550 minValue!754)))))))

(assert (=> d!106739 (isStrictlySorted!438 (toList!4524 lt!377559))))

(assert (=> d!106739 (= (insertStrictlySorted!269 (toList!4524 lt!377559) (_1!5100 (tuple2!10181 lt!377550 minValue!754)) (_2!5100 (tuple2!10181 lt!377550 minValue!754))) lt!377911)))

(declare-fun b!832615 () Bool)

(assert (=> b!832615 (= e!464402 call!36448)))

(declare-fun bm!36446 () Bool)

(assert (=> bm!36446 (= call!36450 ($colon$colon!536 e!464403 (ite c!90517 (h!17134 (toList!4524 lt!377559)) (tuple2!10181 (_1!5100 (tuple2!10181 lt!377550 minValue!754)) (_2!5100 (tuple2!10181 lt!377550 minValue!754))))))))

(declare-fun c!90515 () Bool)

(assert (=> bm!36446 (= c!90515 c!90517)))

(declare-fun bm!36447 () Bool)

(assert (=> bm!36447 (= call!36448 call!36449)))

(declare-fun b!832616 () Bool)

(assert (=> b!832616 (= e!464400 call!36450)))

(assert (= (and d!106739 c!90517) b!832616))

(assert (= (and d!106739 (not c!90517)) b!832610))

(assert (= (and b!832610 c!90516) b!832607))

(assert (= (and b!832610 (not c!90516)) b!832614))

(assert (= (and b!832614 c!90518) b!832613))

(assert (= (and b!832614 (not c!90518)) b!832615))

(assert (= (or b!832613 b!832615) bm!36447))

(assert (= (or b!832607 bm!36447) bm!36445))

(assert (= (or b!832616 bm!36445) bm!36446))

(assert (= (and bm!36446 c!90515) b!832611))

(assert (= (and bm!36446 (not c!90515)) b!832609))

(assert (= (and d!106739 res!566480) b!832608))

(assert (= (and b!832608 res!566479) b!832612))

(declare-fun m!777205 () Bool)

(assert (=> b!832608 m!777205))

(declare-fun m!777207 () Bool)

(assert (=> b!832611 m!777207))

(declare-fun m!777209 () Bool)

(assert (=> d!106739 m!777209))

(declare-fun m!777211 () Bool)

(assert (=> d!106739 m!777211))

(declare-fun m!777213 () Bool)

(assert (=> b!832612 m!777213))

(declare-fun m!777215 () Bool)

(assert (=> bm!36446 m!777215))

(assert (=> d!106271 d!106739))

(declare-fun d!106741 () Bool)

(declare-fun lt!377912 () Bool)

(assert (=> d!106741 (= lt!377912 (select (content!390 (t!22384 (toList!4524 lt!377455))) lt!377371))))

(declare-fun e!464405 () Bool)

(assert (=> d!106741 (= lt!377912 e!464405)))

(declare-fun res!566481 () Bool)

(assert (=> d!106741 (=> (not res!566481) (not e!464405))))

(assert (=> d!106741 (= res!566481 ((_ is Cons!16004) (t!22384 (toList!4524 lt!377455))))))

(assert (=> d!106741 (= (contains!4213 (t!22384 (toList!4524 lt!377455)) lt!377371) lt!377912)))

(declare-fun b!832617 () Bool)

(declare-fun e!464406 () Bool)

(assert (=> b!832617 (= e!464405 e!464406)))

(declare-fun res!566482 () Bool)

(assert (=> b!832617 (=> res!566482 e!464406)))

(assert (=> b!832617 (= res!566482 (= (h!17134 (t!22384 (toList!4524 lt!377455))) lt!377371))))

(declare-fun b!832618 () Bool)

(assert (=> b!832618 (= e!464406 (contains!4213 (t!22384 (t!22384 (toList!4524 lt!377455))) lt!377371))))

(assert (= (and d!106741 res!566481) b!832617))

(assert (= (and b!832617 (not res!566482)) b!832618))

(declare-fun m!777217 () Bool)

(assert (=> d!106741 m!777217))

(declare-fun m!777219 () Bool)

(assert (=> d!106741 m!777219))

(declare-fun m!777221 () Bool)

(assert (=> b!832618 m!777221))

(assert (=> b!831905 d!106741))

(declare-fun d!106743 () Bool)

(declare-fun res!566483 () Bool)

(declare-fun e!464407 () Bool)

(assert (=> d!106743 (=> res!566483 e!464407)))

(assert (=> d!106743 (= res!566483 (or ((_ is Nil!16005) lt!377627) ((_ is Nil!16005) (t!22384 lt!377627))))))

(assert (=> d!106743 (= (isStrictlySorted!438 lt!377627) e!464407)))

(declare-fun b!832619 () Bool)

(declare-fun e!464408 () Bool)

(assert (=> b!832619 (= e!464407 e!464408)))

(declare-fun res!566484 () Bool)

(assert (=> b!832619 (=> (not res!566484) (not e!464408))))

(assert (=> b!832619 (= res!566484 (bvslt (_1!5100 (h!17134 lt!377627)) (_1!5100 (h!17134 (t!22384 lt!377627)))))))

(declare-fun b!832620 () Bool)

(assert (=> b!832620 (= e!464408 (isStrictlySorted!438 (t!22384 lt!377627)))))

(assert (= (and d!106743 (not res!566483)) b!832619))

(assert (= (and b!832619 res!566484) b!832620))

(declare-fun m!777223 () Bool)

(assert (=> b!832620 m!777223))

(assert (=> d!106301 d!106743))

(declare-fun d!106745 () Bool)

(declare-fun res!566485 () Bool)

(declare-fun e!464409 () Bool)

(assert (=> d!106745 (=> res!566485 e!464409)))

(assert (=> d!106745 (= res!566485 (or ((_ is Nil!16005) (toList!4524 lt!377373)) ((_ is Nil!16005) (t!22384 (toList!4524 lt!377373)))))))

(assert (=> d!106745 (= (isStrictlySorted!438 (toList!4524 lt!377373)) e!464409)))

(declare-fun b!832621 () Bool)

(declare-fun e!464410 () Bool)

(assert (=> b!832621 (= e!464409 e!464410)))

(declare-fun res!566486 () Bool)

(assert (=> b!832621 (=> (not res!566486) (not e!464410))))

(assert (=> b!832621 (= res!566486 (bvslt (_1!5100 (h!17134 (toList!4524 lt!377373))) (_1!5100 (h!17134 (t!22384 (toList!4524 lt!377373))))))))

(declare-fun b!832622 () Bool)

(assert (=> b!832622 (= e!464410 (isStrictlySorted!438 (t!22384 (toList!4524 lt!377373))))))

(assert (= (and d!106745 (not res!566485)) b!832621))

(assert (= (and b!832621 res!566486) b!832622))

(assert (=> b!832622 m!776909))

(assert (=> d!106301 d!106745))

(declare-fun d!106747 () Bool)

(assert (=> d!106747 (= (isEmpty!662 lt!377639) (isEmpty!663 (toList!4524 lt!377639)))))

(declare-fun bs!23292 () Bool)

(assert (= bs!23292 d!106747))

(declare-fun m!777225 () Bool)

(assert (=> bs!23292 m!777225))

(assert (=> b!831973 d!106747))

(declare-fun c!90519 () Bool)

(declare-fun d!106749 () Bool)

(assert (=> d!106749 (= c!90519 (and ((_ is Cons!16004) (toList!4524 lt!377578)) (= (_1!5100 (h!17134 (toList!4524 lt!377578))) (_1!5100 (tuple2!10181 lt!377550 minValue!754)))))))

(declare-fun e!464411 () Option!421)

(assert (=> d!106749 (= (getValueByKey!415 (toList!4524 lt!377578) (_1!5100 (tuple2!10181 lt!377550 minValue!754))) e!464411)))

(declare-fun b!832623 () Bool)

(assert (=> b!832623 (= e!464411 (Some!420 (_2!5100 (h!17134 (toList!4524 lt!377578)))))))

(declare-fun b!832626 () Bool)

(declare-fun e!464412 () Option!421)

(assert (=> b!832626 (= e!464412 None!419)))

(declare-fun b!832624 () Bool)

(assert (=> b!832624 (= e!464411 e!464412)))

(declare-fun c!90520 () Bool)

(assert (=> b!832624 (= c!90520 (and ((_ is Cons!16004) (toList!4524 lt!377578)) (not (= (_1!5100 (h!17134 (toList!4524 lt!377578))) (_1!5100 (tuple2!10181 lt!377550 minValue!754))))))))

(declare-fun b!832625 () Bool)

(assert (=> b!832625 (= e!464412 (getValueByKey!415 (t!22384 (toList!4524 lt!377578)) (_1!5100 (tuple2!10181 lt!377550 minValue!754))))))

(assert (= (and d!106749 c!90519) b!832623))

(assert (= (and d!106749 (not c!90519)) b!832624))

(assert (= (and b!832624 c!90520) b!832625))

(assert (= (and b!832624 (not c!90520)) b!832626))

(declare-fun m!777227 () Bool)

(assert (=> b!832625 m!777227))

(assert (=> b!831875 d!106749))

(assert (=> b!832087 d!106549))

(assert (=> b!832087 d!106489))

(declare-fun d!106751 () Bool)

(assert (=> d!106751 (= (get!11829 (getValueByKey!415 (toList!4524 (+!1952 lt!377510 (tuple2!10181 lt!377526 zeroValueAfter!34))) lt!377515)) (v!10097 (getValueByKey!415 (toList!4524 (+!1952 lt!377510 (tuple2!10181 lt!377526 zeroValueAfter!34))) lt!377515)))))

(assert (=> d!106343 d!106751))

(declare-fun c!90521 () Bool)

(declare-fun d!106753 () Bool)

(assert (=> d!106753 (= c!90521 (and ((_ is Cons!16004) (toList!4524 (+!1952 lt!377510 (tuple2!10181 lt!377526 zeroValueAfter!34)))) (= (_1!5100 (h!17134 (toList!4524 (+!1952 lt!377510 (tuple2!10181 lt!377526 zeroValueAfter!34))))) lt!377515)))))

(declare-fun e!464413 () Option!421)

(assert (=> d!106753 (= (getValueByKey!415 (toList!4524 (+!1952 lt!377510 (tuple2!10181 lt!377526 zeroValueAfter!34))) lt!377515) e!464413)))

(declare-fun b!832627 () Bool)

(assert (=> b!832627 (= e!464413 (Some!420 (_2!5100 (h!17134 (toList!4524 (+!1952 lt!377510 (tuple2!10181 lt!377526 zeroValueAfter!34)))))))))

(declare-fun b!832630 () Bool)

(declare-fun e!464414 () Option!421)

(assert (=> b!832630 (= e!464414 None!419)))

(declare-fun b!832628 () Bool)

(assert (=> b!832628 (= e!464413 e!464414)))

(declare-fun c!90522 () Bool)

(assert (=> b!832628 (= c!90522 (and ((_ is Cons!16004) (toList!4524 (+!1952 lt!377510 (tuple2!10181 lt!377526 zeroValueAfter!34)))) (not (= (_1!5100 (h!17134 (toList!4524 (+!1952 lt!377510 (tuple2!10181 lt!377526 zeroValueAfter!34))))) lt!377515))))))

(declare-fun b!832629 () Bool)

(assert (=> b!832629 (= e!464414 (getValueByKey!415 (t!22384 (toList!4524 (+!1952 lt!377510 (tuple2!10181 lt!377526 zeroValueAfter!34)))) lt!377515))))

(assert (= (and d!106753 c!90521) b!832627))

(assert (= (and d!106753 (not c!90521)) b!832628))

(assert (= (and b!832628 c!90522) b!832629))

(assert (= (and b!832628 (not c!90522)) b!832630))

(declare-fun m!777229 () Bool)

(assert (=> b!832629 m!777229))

(assert (=> d!106343 d!106753))

(declare-fun d!106755 () Bool)

(declare-fun res!566487 () Bool)

(declare-fun e!464415 () Bool)

(assert (=> d!106755 (=> res!566487 e!464415)))

(assert (=> d!106755 (= res!566487 (and ((_ is Cons!16004) (toList!4524 lt!377407)) (= (_1!5100 (h!17134 (toList!4524 lt!377407))) (_1!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))))))

(assert (=> d!106755 (= (containsKey!401 (toList!4524 lt!377407) (_1!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))) e!464415)))

(declare-fun b!832631 () Bool)

(declare-fun e!464416 () Bool)

(assert (=> b!832631 (= e!464415 e!464416)))

(declare-fun res!566488 () Bool)

(assert (=> b!832631 (=> (not res!566488) (not e!464416))))

(assert (=> b!832631 (= res!566488 (and (or (not ((_ is Cons!16004) (toList!4524 lt!377407))) (bvsle (_1!5100 (h!17134 (toList!4524 lt!377407))) (_1!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))) ((_ is Cons!16004) (toList!4524 lt!377407)) (bvslt (_1!5100 (h!17134 (toList!4524 lt!377407))) (_1!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))))))

(declare-fun b!832632 () Bool)

(assert (=> b!832632 (= e!464416 (containsKey!401 (t!22384 (toList!4524 lt!377407)) (_1!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))))

(assert (= (and d!106755 (not res!566487)) b!832631))

(assert (= (and b!832631 res!566488) b!832632))

(declare-fun m!777231 () Bool)

(assert (=> b!832632 m!777231))

(assert (=> d!106295 d!106755))

(declare-fun d!106757 () Bool)

(assert (=> d!106757 (isDefined!312 (getValueByKey!415 (toList!4524 (+!1952 lt!377512 (tuple2!10181 lt!377507 zeroValueAfter!34))) lt!377513))))

(declare-fun lt!377913 () Unit!28497)

(assert (=> d!106757 (= lt!377913 (choose!1435 (toList!4524 (+!1952 lt!377512 (tuple2!10181 lt!377507 zeroValueAfter!34))) lt!377513))))

(declare-fun e!464417 () Bool)

(assert (=> d!106757 e!464417))

(declare-fun res!566489 () Bool)

(assert (=> d!106757 (=> (not res!566489) (not e!464417))))

(assert (=> d!106757 (= res!566489 (isStrictlySorted!438 (toList!4524 (+!1952 lt!377512 (tuple2!10181 lt!377507 zeroValueAfter!34)))))))

(assert (=> d!106757 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!311 (toList!4524 (+!1952 lt!377512 (tuple2!10181 lt!377507 zeroValueAfter!34))) lt!377513) lt!377913)))

(declare-fun b!832633 () Bool)

(assert (=> b!832633 (= e!464417 (containsKey!401 (toList!4524 (+!1952 lt!377512 (tuple2!10181 lt!377507 zeroValueAfter!34))) lt!377513))))

(assert (= (and d!106757 res!566489) b!832633))

(assert (=> d!106757 m!776227))

(assert (=> d!106757 m!776227))

(assert (=> d!106757 m!776229))

(declare-fun m!777233 () Bool)

(assert (=> d!106757 m!777233))

(declare-fun m!777235 () Bool)

(assert (=> d!106757 m!777235))

(assert (=> b!832633 m!776223))

(assert (=> b!831994 d!106757))

(declare-fun d!106759 () Bool)

(assert (=> d!106759 (= (isDefined!312 (getValueByKey!415 (toList!4524 (+!1952 lt!377512 (tuple2!10181 lt!377507 zeroValueAfter!34))) lt!377513)) (not (isEmpty!664 (getValueByKey!415 (toList!4524 (+!1952 lt!377512 (tuple2!10181 lt!377507 zeroValueAfter!34))) lt!377513))))))

(declare-fun bs!23293 () Bool)

(assert (= bs!23293 d!106759))

(assert (=> bs!23293 m!776227))

(declare-fun m!777237 () Bool)

(assert (=> bs!23293 m!777237))

(assert (=> b!831994 d!106759))

(declare-fun c!90523 () Bool)

(declare-fun d!106761 () Bool)

(assert (=> d!106761 (= c!90523 (and ((_ is Cons!16004) (toList!4524 (+!1952 lt!377512 (tuple2!10181 lt!377507 zeroValueAfter!34)))) (= (_1!5100 (h!17134 (toList!4524 (+!1952 lt!377512 (tuple2!10181 lt!377507 zeroValueAfter!34))))) lt!377513)))))

(declare-fun e!464418 () Option!421)

(assert (=> d!106761 (= (getValueByKey!415 (toList!4524 (+!1952 lt!377512 (tuple2!10181 lt!377507 zeroValueAfter!34))) lt!377513) e!464418)))

(declare-fun b!832634 () Bool)

(assert (=> b!832634 (= e!464418 (Some!420 (_2!5100 (h!17134 (toList!4524 (+!1952 lt!377512 (tuple2!10181 lt!377507 zeroValueAfter!34)))))))))

(declare-fun b!832637 () Bool)

(declare-fun e!464419 () Option!421)

(assert (=> b!832637 (= e!464419 None!419)))

(declare-fun b!832635 () Bool)

(assert (=> b!832635 (= e!464418 e!464419)))

(declare-fun c!90524 () Bool)

(assert (=> b!832635 (= c!90524 (and ((_ is Cons!16004) (toList!4524 (+!1952 lt!377512 (tuple2!10181 lt!377507 zeroValueAfter!34)))) (not (= (_1!5100 (h!17134 (toList!4524 (+!1952 lt!377512 (tuple2!10181 lt!377507 zeroValueAfter!34))))) lt!377513))))))

(declare-fun b!832636 () Bool)

(assert (=> b!832636 (= e!464419 (getValueByKey!415 (t!22384 (toList!4524 (+!1952 lt!377512 (tuple2!10181 lt!377507 zeroValueAfter!34)))) lt!377513))))

(assert (= (and d!106761 c!90523) b!832634))

(assert (= (and d!106761 (not c!90523)) b!832635))

(assert (= (and b!832635 c!90524) b!832636))

(assert (= (and b!832635 (not c!90524)) b!832637))

(declare-fun m!777239 () Bool)

(assert (=> b!832636 m!777239))

(assert (=> b!831994 d!106761))

(declare-fun d!106763 () Bool)

(declare-fun c!90525 () Bool)

(assert (=> d!106763 (= c!90525 (and ((_ is Cons!16004) (t!22384 lt!377457)) (= (_1!5100 (h!17134 (t!22384 lt!377457))) (_1!5100 lt!377371))))))

(declare-fun e!464420 () Option!421)

(assert (=> d!106763 (= (getValueByKey!415 (t!22384 lt!377457) (_1!5100 lt!377371)) e!464420)))

(declare-fun b!832638 () Bool)

(assert (=> b!832638 (= e!464420 (Some!420 (_2!5100 (h!17134 (t!22384 lt!377457)))))))

(declare-fun b!832641 () Bool)

(declare-fun e!464421 () Option!421)

(assert (=> b!832641 (= e!464421 None!419)))

(declare-fun b!832639 () Bool)

(assert (=> b!832639 (= e!464420 e!464421)))

(declare-fun c!90526 () Bool)

(assert (=> b!832639 (= c!90526 (and ((_ is Cons!16004) (t!22384 lt!377457)) (not (= (_1!5100 (h!17134 (t!22384 lt!377457))) (_1!5100 lt!377371)))))))

(declare-fun b!832640 () Bool)

(assert (=> b!832640 (= e!464421 (getValueByKey!415 (t!22384 (t!22384 lt!377457)) (_1!5100 lt!377371)))))

(assert (= (and d!106763 c!90525) b!832638))

(assert (= (and d!106763 (not c!90525)) b!832639))

(assert (= (and b!832639 c!90526) b!832640))

(assert (= (and b!832639 (not c!90526)) b!832641))

(declare-fun m!777241 () Bool)

(assert (=> b!832640 m!777241))

(assert (=> b!832128 d!106763))

(declare-fun d!106765 () Bool)

(assert (=> d!106765 (= ($colon$colon!536 e!464160 (ite c!90400 (h!17134 (toList!4524 (+!1952 lt!377373 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))) (tuple2!10181 (_1!5100 lt!377371) (_2!5100 lt!377371)))) (Cons!16004 (ite c!90400 (h!17134 (toList!4524 (+!1952 lt!377373 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))) (tuple2!10181 (_1!5100 lt!377371) (_2!5100 lt!377371))) e!464160))))

(assert (=> bm!36425 d!106765))

(assert (=> d!106469 d!106467))

(declare-fun d!106767 () Bool)

(assert (=> d!106767 (= (getValueByKey!415 lt!377405 (_1!5100 lt!377371)) (Some!420 (_2!5100 lt!377371)))))

(assert (=> d!106767 true))

(declare-fun _$22!577 () Unit!28497)

(assert (=> d!106767 (= (choose!1433 lt!377405 (_1!5100 lt!377371) (_2!5100 lt!377371)) _$22!577)))

(declare-fun bs!23294 () Bool)

(assert (= bs!23294 d!106767))

(assert (=> bs!23294 m!775707))

(assert (=> d!106469 d!106767))

(declare-fun d!106769 () Bool)

(declare-fun res!566490 () Bool)

(declare-fun e!464422 () Bool)

(assert (=> d!106769 (=> res!566490 e!464422)))

(assert (=> d!106769 (= res!566490 (or ((_ is Nil!16005) lt!377405) ((_ is Nil!16005) (t!22384 lt!377405))))))

(assert (=> d!106769 (= (isStrictlySorted!438 lt!377405) e!464422)))

(declare-fun b!832642 () Bool)

(declare-fun e!464423 () Bool)

(assert (=> b!832642 (= e!464422 e!464423)))

(declare-fun res!566491 () Bool)

(assert (=> b!832642 (=> (not res!566491) (not e!464423))))

(assert (=> b!832642 (= res!566491 (bvslt (_1!5100 (h!17134 lt!377405)) (_1!5100 (h!17134 (t!22384 lt!377405)))))))

(declare-fun b!832643 () Bool)

(assert (=> b!832643 (= e!464423 (isStrictlySorted!438 (t!22384 lt!377405)))))

(assert (= (and d!106769 (not res!566490)) b!832642))

(assert (= (and b!832642 res!566491) b!832643))

(declare-fun m!777243 () Bool)

(assert (=> b!832643 m!777243))

(assert (=> d!106469 d!106769))

(declare-fun d!106771 () Bool)

(assert (=> d!106771 (isDefined!312 (getValueByKey!415 (toList!4524 lt!377542) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!377914 () Unit!28497)

(assert (=> d!106771 (= lt!377914 (choose!1435 (toList!4524 lt!377542) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!464424 () Bool)

(assert (=> d!106771 e!464424))

(declare-fun res!566492 () Bool)

(assert (=> d!106771 (=> (not res!566492) (not e!464424))))

(assert (=> d!106771 (= res!566492 (isStrictlySorted!438 (toList!4524 lt!377542)))))

(assert (=> d!106771 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!311 (toList!4524 lt!377542) #b0000000000000000000000000000000000000000000000000000000000000000) lt!377914)))

(declare-fun b!832644 () Bool)

(assert (=> b!832644 (= e!464424 (containsKey!401 (toList!4524 lt!377542) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!106771 res!566492) b!832644))

(assert (=> d!106771 m!776173))

(assert (=> d!106771 m!776173))

(assert (=> d!106771 m!776677))

(declare-fun m!777245 () Bool)

(assert (=> d!106771 m!777245))

(declare-fun m!777247 () Bool)

(assert (=> d!106771 m!777247))

(assert (=> b!832644 m!776673))

(assert (=> b!832236 d!106771))

(declare-fun d!106773 () Bool)

(assert (=> d!106773 (= (isDefined!312 (getValueByKey!415 (toList!4524 lt!377542) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (isEmpty!664 (getValueByKey!415 (toList!4524 lt!377542) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun bs!23295 () Bool)

(assert (= bs!23295 d!106773))

(assert (=> bs!23295 m!776173))

(declare-fun m!777249 () Bool)

(assert (=> bs!23295 m!777249))

(assert (=> b!832236 d!106773))

(declare-fun d!106775 () Bool)

(declare-fun c!90527 () Bool)

(assert (=> d!106775 (= c!90527 (and ((_ is Cons!16004) (toList!4524 lt!377542)) (= (_1!5100 (h!17134 (toList!4524 lt!377542))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!464425 () Option!421)

(assert (=> d!106775 (= (getValueByKey!415 (toList!4524 lt!377542) #b0000000000000000000000000000000000000000000000000000000000000000) e!464425)))

(declare-fun b!832645 () Bool)

(assert (=> b!832645 (= e!464425 (Some!420 (_2!5100 (h!17134 (toList!4524 lt!377542)))))))

(declare-fun b!832648 () Bool)

(declare-fun e!464426 () Option!421)

(assert (=> b!832648 (= e!464426 None!419)))

(declare-fun b!832646 () Bool)

(assert (=> b!832646 (= e!464425 e!464426)))

(declare-fun c!90528 () Bool)

(assert (=> b!832646 (= c!90528 (and ((_ is Cons!16004) (toList!4524 lt!377542)) (not (= (_1!5100 (h!17134 (toList!4524 lt!377542))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!832647 () Bool)

(assert (=> b!832647 (= e!464426 (getValueByKey!415 (t!22384 (toList!4524 lt!377542)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!106775 c!90527) b!832645))

(assert (= (and d!106775 (not c!90527)) b!832646))

(assert (= (and b!832646 c!90528) b!832647))

(assert (= (and b!832646 (not c!90528)) b!832648))

(declare-fun m!777251 () Bool)

(assert (=> b!832647 m!777251))

(assert (=> b!832236 d!106775))

(assert (=> d!106335 d!106337))

(assert (=> d!106335 d!106349))

(declare-fun d!106777 () Bool)

(assert (=> d!106777 (contains!4212 (+!1952 lt!377512 (tuple2!10181 lt!377507 zeroValueAfter!34)) lt!377513)))

(assert (=> d!106777 true))

(declare-fun _$35!427 () Unit!28497)

(assert (=> d!106777 (= (choose!1432 lt!377512 lt!377507 zeroValueAfter!34 lt!377513) _$35!427)))

(declare-fun bs!23296 () Bool)

(assert (= bs!23296 d!106777))

(assert (=> bs!23296 m!775835))

(assert (=> bs!23296 m!775835))

(assert (=> bs!23296 m!775841))

(assert (=> d!106335 d!106777))

(declare-fun d!106779 () Bool)

(declare-fun e!464427 () Bool)

(assert (=> d!106779 e!464427))

(declare-fun res!566493 () Bool)

(assert (=> d!106779 (=> res!566493 e!464427)))

(declare-fun lt!377918 () Bool)

(assert (=> d!106779 (= res!566493 (not lt!377918))))

(declare-fun lt!377915 () Bool)

(assert (=> d!106779 (= lt!377918 lt!377915)))

(declare-fun lt!377917 () Unit!28497)

(declare-fun e!464428 () Unit!28497)

(assert (=> d!106779 (= lt!377917 e!464428)))

(declare-fun c!90529 () Bool)

(assert (=> d!106779 (= c!90529 lt!377915)))

(assert (=> d!106779 (= lt!377915 (containsKey!401 (toList!4524 lt!377512) lt!377513))))

(assert (=> d!106779 (= (contains!4212 lt!377512 lt!377513) lt!377918)))

(declare-fun b!832650 () Bool)

(declare-fun lt!377916 () Unit!28497)

(assert (=> b!832650 (= e!464428 lt!377916)))

(assert (=> b!832650 (= lt!377916 (lemmaContainsKeyImpliesGetValueByKeyDefined!311 (toList!4524 lt!377512) lt!377513))))

(assert (=> b!832650 (isDefined!312 (getValueByKey!415 (toList!4524 lt!377512) lt!377513))))

(declare-fun b!832651 () Bool)

(declare-fun Unit!28537 () Unit!28497)

(assert (=> b!832651 (= e!464428 Unit!28537)))

(declare-fun b!832652 () Bool)

(assert (=> b!832652 (= e!464427 (isDefined!312 (getValueByKey!415 (toList!4524 lt!377512) lt!377513)))))

(assert (= (and d!106779 c!90529) b!832650))

(assert (= (and d!106779 (not c!90529)) b!832651))

(assert (= (and d!106779 (not res!566493)) b!832652))

(declare-fun m!777253 () Bool)

(assert (=> d!106779 m!777253))

(declare-fun m!777255 () Bool)

(assert (=> b!832650 m!777255))

(declare-fun m!777257 () Bool)

(assert (=> b!832650 m!777257))

(assert (=> b!832650 m!777257))

(declare-fun m!777259 () Bool)

(assert (=> b!832650 m!777259))

(assert (=> b!832652 m!777257))

(assert (=> b!832652 m!777257))

(assert (=> b!832652 m!777259))

(assert (=> d!106335 d!106779))

(assert (=> b!832026 d!106557))

(assert (=> b!832026 d!106559))

(declare-fun d!106781 () Bool)

(assert (=> d!106781 (isDefined!312 (getValueByKey!415 (toList!4524 lt!377455) (_1!5100 lt!377371)))))

(declare-fun lt!377919 () Unit!28497)

(assert (=> d!106781 (= lt!377919 (choose!1435 (toList!4524 lt!377455) (_1!5100 lt!377371)))))

(declare-fun e!464429 () Bool)

(assert (=> d!106781 e!464429))

(declare-fun res!566494 () Bool)

(assert (=> d!106781 (=> (not res!566494) (not e!464429))))

(assert (=> d!106781 (= res!566494 (isStrictlySorted!438 (toList!4524 lt!377455)))))

(assert (=> d!106781 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!311 (toList!4524 lt!377455) (_1!5100 lt!377371)) lt!377919)))

(declare-fun b!832653 () Bool)

(assert (=> b!832653 (= e!464429 (containsKey!401 (toList!4524 lt!377455) (_1!5100 lt!377371)))))

(assert (= (and d!106781 res!566494) b!832653))

(assert (=> d!106781 m!775805))

(assert (=> d!106781 m!775805))

(assert (=> d!106781 m!776467))

(declare-fun m!777261 () Bool)

(assert (=> d!106781 m!777261))

(declare-fun m!777263 () Bool)

(assert (=> d!106781 m!777263))

(assert (=> b!832653 m!776463))

(assert (=> b!832123 d!106781))

(declare-fun d!106783 () Bool)

(assert (=> d!106783 (= (isDefined!312 (getValueByKey!415 (toList!4524 lt!377455) (_1!5100 lt!377371))) (not (isEmpty!664 (getValueByKey!415 (toList!4524 lt!377455) (_1!5100 lt!377371)))))))

(declare-fun bs!23297 () Bool)

(assert (= bs!23297 d!106783))

(assert (=> bs!23297 m!775805))

(declare-fun m!777265 () Bool)

(assert (=> bs!23297 m!777265))

(assert (=> b!832123 d!106783))

(assert (=> b!832123 d!106447))

(declare-fun d!106785 () Bool)

(assert (=> d!106785 (= (get!11829 (getValueByKey!415 (toList!4524 (+!1952 lt!377545 (tuple2!10181 lt!377555 minValue!754))) lt!377558)) (v!10097 (getValueByKey!415 (toList!4524 (+!1952 lt!377545 (tuple2!10181 lt!377555 minValue!754))) lt!377558)))))

(assert (=> d!106279 d!106785))

(declare-fun d!106787 () Bool)

(declare-fun c!90530 () Bool)

(assert (=> d!106787 (= c!90530 (and ((_ is Cons!16004) (toList!4524 (+!1952 lt!377545 (tuple2!10181 lt!377555 minValue!754)))) (= (_1!5100 (h!17134 (toList!4524 (+!1952 lt!377545 (tuple2!10181 lt!377555 minValue!754))))) lt!377558)))))

(declare-fun e!464430 () Option!421)

(assert (=> d!106787 (= (getValueByKey!415 (toList!4524 (+!1952 lt!377545 (tuple2!10181 lt!377555 minValue!754))) lt!377558) e!464430)))

(declare-fun b!832654 () Bool)

(assert (=> b!832654 (= e!464430 (Some!420 (_2!5100 (h!17134 (toList!4524 (+!1952 lt!377545 (tuple2!10181 lt!377555 minValue!754)))))))))

(declare-fun b!832657 () Bool)

(declare-fun e!464431 () Option!421)

(assert (=> b!832657 (= e!464431 None!419)))

(declare-fun b!832655 () Bool)

(assert (=> b!832655 (= e!464430 e!464431)))

(declare-fun c!90531 () Bool)

(assert (=> b!832655 (= c!90531 (and ((_ is Cons!16004) (toList!4524 (+!1952 lt!377545 (tuple2!10181 lt!377555 minValue!754)))) (not (= (_1!5100 (h!17134 (toList!4524 (+!1952 lt!377545 (tuple2!10181 lt!377555 minValue!754))))) lt!377558))))))

(declare-fun b!832656 () Bool)

(assert (=> b!832656 (= e!464431 (getValueByKey!415 (t!22384 (toList!4524 (+!1952 lt!377545 (tuple2!10181 lt!377555 minValue!754)))) lt!377558))))

(assert (= (and d!106787 c!90530) b!832654))

(assert (= (and d!106787 (not c!90530)) b!832655))

(assert (= (and b!832655 c!90531) b!832656))

(assert (= (and b!832655 (not c!90531)) b!832657))

(declare-fun m!777267 () Bool)

(assert (=> b!832656 m!777267))

(assert (=> d!106279 d!106787))

(declare-fun d!106789 () Bool)

(declare-fun e!464432 () Bool)

(assert (=> d!106789 e!464432))

(declare-fun res!566495 () Bool)

(assert (=> d!106789 (=> res!566495 e!464432)))

(declare-fun lt!377923 () Bool)

(assert (=> d!106789 (= res!566495 (not lt!377923))))

(declare-fun lt!377920 () Bool)

(assert (=> d!106789 (= lt!377923 lt!377920)))

(declare-fun lt!377922 () Unit!28497)

(declare-fun e!464433 () Unit!28497)

(assert (=> d!106789 (= lt!377922 e!464433)))

(declare-fun c!90532 () Bool)

(assert (=> d!106789 (= c!90532 lt!377920)))

(assert (=> d!106789 (= lt!377920 (containsKey!401 (toList!4524 lt!377680) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!106789 (= (contains!4212 lt!377680 #b1000000000000000000000000000000000000000000000000000000000000000) lt!377923)))

(declare-fun b!832658 () Bool)

(declare-fun lt!377921 () Unit!28497)

(assert (=> b!832658 (= e!464433 lt!377921)))

(assert (=> b!832658 (= lt!377921 (lemmaContainsKeyImpliesGetValueByKeyDefined!311 (toList!4524 lt!377680) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!832658 (isDefined!312 (getValueByKey!415 (toList!4524 lt!377680) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!832659 () Bool)

(declare-fun Unit!28538 () Unit!28497)

(assert (=> b!832659 (= e!464433 Unit!28538)))

(declare-fun b!832660 () Bool)

(assert (=> b!832660 (= e!464432 (isDefined!312 (getValueByKey!415 (toList!4524 lt!377680) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!106789 c!90532) b!832658))

(assert (= (and d!106789 (not c!90532)) b!832659))

(assert (= (and d!106789 (not res!566495)) b!832660))

(declare-fun m!777269 () Bool)

(assert (=> d!106789 m!777269))

(declare-fun m!777271 () Bool)

(assert (=> b!832658 m!777271))

(declare-fun m!777273 () Bool)

(assert (=> b!832658 m!777273))

(assert (=> b!832658 m!777273))

(declare-fun m!777275 () Bool)

(assert (=> b!832658 m!777275))

(assert (=> b!832660 m!777273))

(assert (=> b!832660 m!777273))

(assert (=> b!832660 m!777275))

(assert (=> b!832020 d!106789))

(declare-fun d!106791 () Bool)

(assert (=> d!106791 (= ($colon$colon!536 e!464099 (ite c!90362 (h!17134 (toList!4524 (+!1952 lt!377373 lt!377371))) (tuple2!10181 (_1!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)) (_2!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))) (Cons!16004 (ite c!90362 (h!17134 (toList!4524 (+!1952 lt!377373 lt!377371))) (tuple2!10181 (_1!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)) (_2!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))) e!464099))))

(assert (=> bm!36413 d!106791))

(assert (=> d!106403 d!106401))

(declare-fun d!106793 () Bool)

(assert (=> d!106793 (= (getValueByKey!415 lt!377531 (_1!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))) (Some!420 (_2!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))))

(assert (=> d!106793 true))

(declare-fun _$22!578 () Unit!28497)

(assert (=> d!106793 (= (choose!1433 lt!377531 (_1!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)) (_2!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))) _$22!578)))

(declare-fun bs!23298 () Bool)

(assert (= bs!23298 d!106793))

(assert (=> bs!23298 m!775869))

(assert (=> d!106403 d!106793))

(declare-fun d!106795 () Bool)

(declare-fun res!566496 () Bool)

(declare-fun e!464434 () Bool)

(assert (=> d!106795 (=> res!566496 e!464434)))

(assert (=> d!106795 (= res!566496 (or ((_ is Nil!16005) lt!377531) ((_ is Nil!16005) (t!22384 lt!377531))))))

(assert (=> d!106795 (= (isStrictlySorted!438 lt!377531) e!464434)))

(declare-fun b!832661 () Bool)

(declare-fun e!464435 () Bool)

(assert (=> b!832661 (= e!464434 e!464435)))

(declare-fun res!566497 () Bool)

(assert (=> b!832661 (=> (not res!566497) (not e!464435))))

(assert (=> b!832661 (= res!566497 (bvslt (_1!5100 (h!17134 lt!377531)) (_1!5100 (h!17134 (t!22384 lt!377531)))))))

(declare-fun b!832662 () Bool)

(assert (=> b!832662 (= e!464435 (isStrictlySorted!438 (t!22384 lt!377531)))))

(assert (= (and d!106795 (not res!566496)) b!832661))

(assert (= (and b!832661 res!566497) b!832662))

(declare-fun m!777277 () Bool)

(assert (=> b!832662 m!777277))

(assert (=> d!106403 d!106795))

(declare-fun d!106797 () Bool)

(declare-fun res!566498 () Bool)

(declare-fun e!464436 () Bool)

(assert (=> d!106797 (=> res!566498 e!464436)))

(assert (=> d!106797 (= res!566498 (and ((_ is Cons!16004) lt!377539) (= (_1!5100 (h!17134 lt!377539)) (_1!5100 lt!377371))))))

(assert (=> d!106797 (= (containsKey!401 lt!377539 (_1!5100 lt!377371)) e!464436)))

(declare-fun b!832663 () Bool)

(declare-fun e!464437 () Bool)

(assert (=> b!832663 (= e!464436 e!464437)))

(declare-fun res!566499 () Bool)

(assert (=> b!832663 (=> (not res!566499) (not e!464437))))

(assert (=> b!832663 (= res!566499 (and (or (not ((_ is Cons!16004) lt!377539)) (bvsle (_1!5100 (h!17134 lt!377539)) (_1!5100 lt!377371))) ((_ is Cons!16004) lt!377539) (bvslt (_1!5100 (h!17134 lt!377539)) (_1!5100 lt!377371))))))

(declare-fun b!832664 () Bool)

(assert (=> b!832664 (= e!464437 (containsKey!401 (t!22384 lt!377539) (_1!5100 lt!377371)))))

(assert (= (and d!106797 (not res!566498)) b!832663))

(assert (= (and b!832663 res!566499) b!832664))

(declare-fun m!777279 () Bool)

(assert (=> b!832664 m!777279))

(assert (=> b!832092 d!106797))

(declare-fun d!106799 () Bool)

(assert (=> d!106799 (= (get!11829 (getValueByKey!415 (toList!4524 lt!377544) lt!377549)) (v!10097 (getValueByKey!415 (toList!4524 lt!377544) lt!377549)))))

(assert (=> d!106257 d!106799))

(declare-fun d!106801 () Bool)

(declare-fun c!90533 () Bool)

(assert (=> d!106801 (= c!90533 (and ((_ is Cons!16004) (toList!4524 lt!377544)) (= (_1!5100 (h!17134 (toList!4524 lt!377544))) lt!377549)))))

(declare-fun e!464438 () Option!421)

(assert (=> d!106801 (= (getValueByKey!415 (toList!4524 lt!377544) lt!377549) e!464438)))

(declare-fun b!832665 () Bool)

(assert (=> b!832665 (= e!464438 (Some!420 (_2!5100 (h!17134 (toList!4524 lt!377544)))))))

(declare-fun b!832668 () Bool)

(declare-fun e!464439 () Option!421)

(assert (=> b!832668 (= e!464439 None!419)))

(declare-fun b!832666 () Bool)

(assert (=> b!832666 (= e!464438 e!464439)))

(declare-fun c!90534 () Bool)

(assert (=> b!832666 (= c!90534 (and ((_ is Cons!16004) (toList!4524 lt!377544)) (not (= (_1!5100 (h!17134 (toList!4524 lt!377544))) lt!377549))))))

(declare-fun b!832667 () Bool)

(assert (=> b!832667 (= e!464439 (getValueByKey!415 (t!22384 (toList!4524 lt!377544)) lt!377549))))

(assert (= (and d!106801 c!90533) b!832665))

(assert (= (and d!106801 (not c!90533)) b!832666))

(assert (= (and b!832666 c!90534) b!832667))

(assert (= (and b!832666 (not c!90534)) b!832668))

(declare-fun m!777281 () Bool)

(assert (=> b!832667 m!777281))

(assert (=> d!106257 d!106801))

(assert (=> b!832053 d!106611))

(declare-fun d!106803 () Bool)

(declare-fun c!90535 () Bool)

(assert (=> d!106803 (= c!90535 (and ((_ is Cons!16004) (t!22384 (toList!4524 lt!377403))) (= (_1!5100 (h!17134 (t!22384 (toList!4524 lt!377403)))) (_1!5100 lt!377371))))))

(declare-fun e!464440 () Option!421)

(assert (=> d!106803 (= (getValueByKey!415 (t!22384 (toList!4524 lt!377403)) (_1!5100 lt!377371)) e!464440)))

(declare-fun b!832669 () Bool)

(assert (=> b!832669 (= e!464440 (Some!420 (_2!5100 (h!17134 (t!22384 (toList!4524 lt!377403))))))))

(declare-fun b!832672 () Bool)

(declare-fun e!464441 () Option!421)

(assert (=> b!832672 (= e!464441 None!419)))

(declare-fun b!832670 () Bool)

(assert (=> b!832670 (= e!464440 e!464441)))

(declare-fun c!90536 () Bool)

(assert (=> b!832670 (= c!90536 (and ((_ is Cons!16004) (t!22384 (toList!4524 lt!377403))) (not (= (_1!5100 (h!17134 (t!22384 (toList!4524 lt!377403)))) (_1!5100 lt!377371)))))))

(declare-fun b!832671 () Bool)

(assert (=> b!832671 (= e!464441 (getValueByKey!415 (t!22384 (t!22384 (toList!4524 lt!377403))) (_1!5100 lt!377371)))))

(assert (= (and d!106803 c!90535) b!832669))

(assert (= (and d!106803 (not c!90535)) b!832670))

(assert (= (and b!832670 c!90536) b!832671))

(assert (= (and b!832670 (not c!90536)) b!832672))

(declare-fun m!777283 () Bool)

(assert (=> b!832671 m!777283))

(assert (=> b!831981 d!106803))

(declare-fun d!106805 () Bool)

(declare-fun c!90537 () Bool)

(assert (=> d!106805 (= c!90537 (and ((_ is Cons!16004) (t!22384 (toList!4524 lt!377459))) (= (_1!5100 (h!17134 (t!22384 (toList!4524 lt!377459)))) (_1!5100 lt!377372))))))

(declare-fun e!464442 () Option!421)

(assert (=> d!106805 (= (getValueByKey!415 (t!22384 (toList!4524 lt!377459)) (_1!5100 lt!377372)) e!464442)))

(declare-fun b!832673 () Bool)

(assert (=> b!832673 (= e!464442 (Some!420 (_2!5100 (h!17134 (t!22384 (toList!4524 lt!377459))))))))

(declare-fun b!832676 () Bool)

(declare-fun e!464443 () Option!421)

(assert (=> b!832676 (= e!464443 None!419)))

(declare-fun b!832674 () Bool)

(assert (=> b!832674 (= e!464442 e!464443)))

(declare-fun c!90538 () Bool)

(assert (=> b!832674 (= c!90538 (and ((_ is Cons!16004) (t!22384 (toList!4524 lt!377459))) (not (= (_1!5100 (h!17134 (t!22384 (toList!4524 lt!377459)))) (_1!5100 lt!377372)))))))

(declare-fun b!832675 () Bool)

(assert (=> b!832675 (= e!464443 (getValueByKey!415 (t!22384 (t!22384 (toList!4524 lt!377459))) (_1!5100 lt!377372)))))

(assert (= (and d!106805 c!90537) b!832673))

(assert (= (and d!106805 (not c!90537)) b!832674))

(assert (= (and b!832674 c!90538) b!832675))

(assert (= (and b!832674 (not c!90538)) b!832676))

(declare-fun m!777285 () Bool)

(assert (=> b!832675 m!777285))

(assert (=> b!832203 d!106805))

(declare-fun d!106807 () Bool)

(assert (=> d!106807 (= (get!11829 (getValueByKey!415 (toList!4524 lt!377508) (select (arr!22317 _keys!976) #b00000000000000000000000000000000))) (v!10097 (getValueByKey!415 (toList!4524 lt!377508) (select (arr!22317 _keys!976) #b00000000000000000000000000000000))))))

(assert (=> d!106453 d!106807))

(assert (=> d!106453 d!106559))

(assert (=> b!832245 d!106589))

(assert (=> b!832245 d!106591))

(declare-fun d!106809 () Bool)

(declare-fun e!464444 () Bool)

(assert (=> d!106809 e!464444))

(declare-fun res!566500 () Bool)

(assert (=> d!106809 (=> res!566500 e!464444)))

(declare-fun lt!377927 () Bool)

(assert (=> d!106809 (= res!566500 (not lt!377927))))

(declare-fun lt!377924 () Bool)

(assert (=> d!106809 (= lt!377927 lt!377924)))

(declare-fun lt!377926 () Unit!28497)

(declare-fun e!464445 () Unit!28497)

(assert (=> d!106809 (= lt!377926 e!464445)))

(declare-fun c!90539 () Bool)

(assert (=> d!106809 (= c!90539 lt!377924)))

(assert (=> d!106809 (= lt!377924 (containsKey!401 (toList!4524 lt!377639) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!106809 (= (contains!4212 lt!377639 #b0000000000000000000000000000000000000000000000000000000000000000) lt!377927)))

(declare-fun b!832677 () Bool)

(declare-fun lt!377925 () Unit!28497)

(assert (=> b!832677 (= e!464445 lt!377925)))

(assert (=> b!832677 (= lt!377925 (lemmaContainsKeyImpliesGetValueByKeyDefined!311 (toList!4524 lt!377639) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!832677 (isDefined!312 (getValueByKey!415 (toList!4524 lt!377639) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!832678 () Bool)

(declare-fun Unit!28539 () Unit!28497)

(assert (=> b!832678 (= e!464445 Unit!28539)))

(declare-fun b!832679 () Bool)

(assert (=> b!832679 (= e!464444 (isDefined!312 (getValueByKey!415 (toList!4524 lt!377639) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!106809 c!90539) b!832677))

(assert (= (and d!106809 (not c!90539)) b!832678))

(assert (= (and d!106809 (not res!566500)) b!832679))

(declare-fun m!777287 () Bool)

(assert (=> d!106809 m!777287))

(declare-fun m!777289 () Bool)

(assert (=> b!832677 m!777289))

(declare-fun m!777291 () Bool)

(assert (=> b!832677 m!777291))

(assert (=> b!832677 m!777291))

(declare-fun m!777293 () Bool)

(assert (=> b!832677 m!777293))

(assert (=> b!832679 m!777291))

(assert (=> b!832679 m!777291))

(assert (=> b!832679 m!777293))

(assert (=> d!106311 d!106809))

(assert (=> d!106311 d!106233))

(declare-fun d!106811 () Bool)

(declare-fun res!566501 () Bool)

(declare-fun e!464446 () Bool)

(assert (=> d!106811 (=> res!566501 e!464446)))

(assert (=> d!106811 (= res!566501 (and ((_ is Cons!16004) lt!377780) (= (_1!5100 (h!17134 lt!377780)) (_1!5100 lt!377371))))))

(assert (=> d!106811 (= (containsKey!401 lt!377780 (_1!5100 lt!377371)) e!464446)))

(declare-fun b!832680 () Bool)

(declare-fun e!464447 () Bool)

(assert (=> b!832680 (= e!464446 e!464447)))

(declare-fun res!566502 () Bool)

(assert (=> b!832680 (=> (not res!566502) (not e!464447))))

(assert (=> b!832680 (= res!566502 (and (or (not ((_ is Cons!16004) lt!377780)) (bvsle (_1!5100 (h!17134 lt!377780)) (_1!5100 lt!377371))) ((_ is Cons!16004) lt!377780) (bvslt (_1!5100 (h!17134 lt!377780)) (_1!5100 lt!377371))))))

(declare-fun b!832681 () Bool)

(assert (=> b!832681 (= e!464447 (containsKey!401 (t!22384 lt!377780) (_1!5100 lt!377371)))))

(assert (= (and d!106811 (not res!566501)) b!832680))

(assert (= (and b!832680 res!566502) b!832681))

(declare-fun m!777295 () Bool)

(assert (=> b!832681 m!777295))

(assert (=> b!832227 d!106811))

(declare-fun d!106813 () Bool)

(declare-fun lt!377928 () Bool)

(assert (=> d!106813 (= lt!377928 (select (content!390 lt!377718) (tuple2!10181 (_1!5100 lt!377371) (_2!5100 lt!377371))))))

(declare-fun e!464448 () Bool)

(assert (=> d!106813 (= lt!377928 e!464448)))

(declare-fun res!566503 () Bool)

(assert (=> d!106813 (=> (not res!566503) (not e!464448))))

(assert (=> d!106813 (= res!566503 ((_ is Cons!16004) lt!377718))))

(assert (=> d!106813 (= (contains!4213 lt!377718 (tuple2!10181 (_1!5100 lt!377371) (_2!5100 lt!377371))) lt!377928)))

(declare-fun b!832682 () Bool)

(declare-fun e!464449 () Bool)

(assert (=> b!832682 (= e!464448 e!464449)))

(declare-fun res!566504 () Bool)

(assert (=> b!832682 (=> res!566504 e!464449)))

(assert (=> b!832682 (= res!566504 (= (h!17134 lt!377718) (tuple2!10181 (_1!5100 lt!377371) (_2!5100 lt!377371))))))

(declare-fun b!832683 () Bool)

(assert (=> b!832683 (= e!464449 (contains!4213 (t!22384 lt!377718) (tuple2!10181 (_1!5100 lt!377371) (_2!5100 lt!377371))))))

(assert (= (and d!106813 res!566503) b!832682))

(assert (= (and b!832682 (not res!566504)) b!832683))

(declare-fun m!777297 () Bool)

(assert (=> d!106813 m!777297))

(declare-fun m!777299 () Bool)

(assert (=> d!106813 m!777299))

(declare-fun m!777301 () Bool)

(assert (=> b!832683 m!777301))

(assert (=> b!832099 d!106813))

(declare-fun d!106815 () Bool)

(declare-fun lt!377929 () Bool)

(assert (=> d!106815 (= lt!377929 (select (content!390 lt!377461) (tuple2!10181 (_1!5100 lt!377372) (_2!5100 lt!377372))))))

(declare-fun e!464450 () Bool)

(assert (=> d!106815 (= lt!377929 e!464450)))

(declare-fun res!566505 () Bool)

(assert (=> d!106815 (=> (not res!566505) (not e!464450))))

(assert (=> d!106815 (= res!566505 ((_ is Cons!16004) lt!377461))))

(assert (=> d!106815 (= (contains!4213 lt!377461 (tuple2!10181 (_1!5100 lt!377372) (_2!5100 lt!377372))) lt!377929)))

(declare-fun b!832684 () Bool)

(declare-fun e!464451 () Bool)

(assert (=> b!832684 (= e!464450 e!464451)))

(declare-fun res!566506 () Bool)

(assert (=> b!832684 (=> res!566506 e!464451)))

(assert (=> b!832684 (= res!566506 (= (h!17134 lt!377461) (tuple2!10181 (_1!5100 lt!377372) (_2!5100 lt!377372))))))

(declare-fun b!832685 () Bool)

(assert (=> b!832685 (= e!464451 (contains!4213 (t!22384 lt!377461) (tuple2!10181 (_1!5100 lt!377372) (_2!5100 lt!377372))))))

(assert (= (and d!106815 res!566505) b!832684))

(assert (= (and b!832684 (not res!566506)) b!832685))

(declare-fun m!777303 () Bool)

(assert (=> d!106815 m!777303))

(declare-fun m!777305 () Bool)

(assert (=> d!106815 m!777305))

(declare-fun m!777307 () Bool)

(assert (=> b!832685 m!777307))

(assert (=> b!832150 d!106815))

(declare-fun d!106817 () Bool)

(declare-fun lt!377930 () Bool)

(assert (=> d!106817 (= lt!377930 (select (content!390 (toList!4524 lt!377660)) (tuple2!10181 lt!377516 minValue!754)))))

(declare-fun e!464452 () Bool)

(assert (=> d!106817 (= lt!377930 e!464452)))

(declare-fun res!566507 () Bool)

(assert (=> d!106817 (=> (not res!566507) (not e!464452))))

(assert (=> d!106817 (= res!566507 ((_ is Cons!16004) (toList!4524 lt!377660)))))

(assert (=> d!106817 (= (contains!4213 (toList!4524 lt!377660) (tuple2!10181 lt!377516 minValue!754)) lt!377930)))

(declare-fun b!832686 () Bool)

(declare-fun e!464453 () Bool)

(assert (=> b!832686 (= e!464452 e!464453)))

(declare-fun res!566508 () Bool)

(assert (=> b!832686 (=> res!566508 e!464453)))

(assert (=> b!832686 (= res!566508 (= (h!17134 (toList!4524 lt!377660)) (tuple2!10181 lt!377516 minValue!754)))))

(declare-fun b!832687 () Bool)

(assert (=> b!832687 (= e!464453 (contains!4213 (t!22384 (toList!4524 lt!377660)) (tuple2!10181 lt!377516 minValue!754)))))

(assert (= (and d!106817 res!566507) b!832686))

(assert (= (and b!832686 (not res!566508)) b!832687))

(declare-fun m!777309 () Bool)

(assert (=> d!106817 m!777309))

(declare-fun m!777311 () Bool)

(assert (=> d!106817 m!777311))

(declare-fun m!777313 () Bool)

(assert (=> b!832687 m!777313))

(assert (=> b!832000 d!106817))

(declare-fun lt!377931 () Bool)

(declare-fun d!106819 () Bool)

(assert (=> d!106819 (= lt!377931 (select (content!390 (toList!4524 lt!377747)) (tuple2!10181 (select (arr!22317 _keys!976) #b00000000000000000000000000000000) (get!11828 (select (arr!22318 _values!788) #b00000000000000000000000000000000) (dynLambda!983 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!464454 () Bool)

(assert (=> d!106819 (= lt!377931 e!464454)))

(declare-fun res!566509 () Bool)

(assert (=> d!106819 (=> (not res!566509) (not e!464454))))

(assert (=> d!106819 (= res!566509 ((_ is Cons!16004) (toList!4524 lt!377747)))))

(assert (=> d!106819 (= (contains!4213 (toList!4524 lt!377747) (tuple2!10181 (select (arr!22317 _keys!976) #b00000000000000000000000000000000) (get!11828 (select (arr!22318 _values!788) #b00000000000000000000000000000000) (dynLambda!983 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))) lt!377931)))

(declare-fun b!832688 () Bool)

(declare-fun e!464455 () Bool)

(assert (=> b!832688 (= e!464454 e!464455)))

(declare-fun res!566510 () Bool)

(assert (=> b!832688 (=> res!566510 e!464455)))

(assert (=> b!832688 (= res!566510 (= (h!17134 (toList!4524 lt!377747)) (tuple2!10181 (select (arr!22317 _keys!976) #b00000000000000000000000000000000) (get!11828 (select (arr!22318 _values!788) #b00000000000000000000000000000000) (dynLambda!983 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!832689 () Bool)

(assert (=> b!832689 (= e!464455 (contains!4213 (t!22384 (toList!4524 lt!377747)) (tuple2!10181 (select (arr!22317 _keys!976) #b00000000000000000000000000000000) (get!11828 (select (arr!22318 _values!788) #b00000000000000000000000000000000) (dynLambda!983 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (= (and d!106819 res!566509) b!832688))

(assert (= (and b!832688 (not res!566510)) b!832689))

(declare-fun m!777315 () Bool)

(assert (=> d!106819 m!777315))

(declare-fun m!777317 () Bool)

(assert (=> d!106819 m!777317))

(declare-fun m!777319 () Bool)

(assert (=> b!832689 m!777319))

(assert (=> b!832187 d!106819))

(assert (=> b!832267 d!106611))

(declare-fun d!106821 () Bool)

(declare-fun res!566511 () Bool)

(declare-fun e!464456 () Bool)

(assert (=> d!106821 (=> res!566511 e!464456)))

(assert (=> d!106821 (= res!566511 (and ((_ is Cons!16004) (toList!4524 lt!377542)) (= (_1!5100 (h!17134 (toList!4524 lt!377542))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!106821 (= (containsKey!401 (toList!4524 lt!377542) #b0000000000000000000000000000000000000000000000000000000000000000) e!464456)))

(declare-fun b!832690 () Bool)

(declare-fun e!464457 () Bool)

(assert (=> b!832690 (= e!464456 e!464457)))

(declare-fun res!566512 () Bool)

(assert (=> b!832690 (=> (not res!566512) (not e!464457))))

(assert (=> b!832690 (= res!566512 (and (or (not ((_ is Cons!16004) (toList!4524 lt!377542))) (bvsle (_1!5100 (h!17134 (toList!4524 lt!377542))) #b0000000000000000000000000000000000000000000000000000000000000000)) ((_ is Cons!16004) (toList!4524 lt!377542)) (bvslt (_1!5100 (h!17134 (toList!4524 lt!377542))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!832691 () Bool)

(assert (=> b!832691 (= e!464457 (containsKey!401 (t!22384 (toList!4524 lt!377542)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!106821 (not res!566511)) b!832690))

(assert (= (and b!832690 res!566512) b!832691))

(declare-fun m!777321 () Bool)

(assert (=> b!832691 m!777321))

(assert (=> d!106473 d!106821))

(declare-fun d!106823 () Bool)

(declare-fun res!566513 () Bool)

(declare-fun e!464458 () Bool)

(assert (=> d!106823 (=> res!566513 e!464458)))

(assert (=> d!106823 (= res!566513 (and ((_ is Cons!16004) (toList!4524 (+!1952 lt!377512 (tuple2!10181 lt!377507 zeroValueAfter!34)))) (= (_1!5100 (h!17134 (toList!4524 (+!1952 lt!377512 (tuple2!10181 lt!377507 zeroValueAfter!34))))) lt!377513)))))

(assert (=> d!106823 (= (containsKey!401 (toList!4524 (+!1952 lt!377512 (tuple2!10181 lt!377507 zeroValueAfter!34))) lt!377513) e!464458)))

(declare-fun b!832692 () Bool)

(declare-fun e!464459 () Bool)

(assert (=> b!832692 (= e!464458 e!464459)))

(declare-fun res!566514 () Bool)

(assert (=> b!832692 (=> (not res!566514) (not e!464459))))

(assert (=> b!832692 (= res!566514 (and (or (not ((_ is Cons!16004) (toList!4524 (+!1952 lt!377512 (tuple2!10181 lt!377507 zeroValueAfter!34))))) (bvsle (_1!5100 (h!17134 (toList!4524 (+!1952 lt!377512 (tuple2!10181 lt!377507 zeroValueAfter!34))))) lt!377513)) ((_ is Cons!16004) (toList!4524 (+!1952 lt!377512 (tuple2!10181 lt!377507 zeroValueAfter!34)))) (bvslt (_1!5100 (h!17134 (toList!4524 (+!1952 lt!377512 (tuple2!10181 lt!377507 zeroValueAfter!34))))) lt!377513)))))

(declare-fun b!832693 () Bool)

(assert (=> b!832693 (= e!464459 (containsKey!401 (t!22384 (toList!4524 (+!1952 lt!377512 (tuple2!10181 lt!377507 zeroValueAfter!34)))) lt!377513))))

(assert (= (and d!106823 (not res!566513)) b!832692))

(assert (= (and b!832692 res!566514) b!832693))

(declare-fun m!777323 () Bool)

(assert (=> b!832693 m!777323))

(assert (=> d!106337 d!106823))

(declare-fun d!106825 () Bool)

(declare-fun res!566515 () Bool)

(declare-fun e!464460 () Bool)

(assert (=> d!106825 (=> res!566515 e!464460)))

(assert (=> d!106825 (= res!566515 (or ((_ is Nil!16005) lt!377780) ((_ is Nil!16005) (t!22384 lt!377780))))))

(assert (=> d!106825 (= (isStrictlySorted!438 lt!377780) e!464460)))

(declare-fun b!832694 () Bool)

(declare-fun e!464461 () Bool)

(assert (=> b!832694 (= e!464460 e!464461)))

(declare-fun res!566516 () Bool)

(assert (=> b!832694 (=> (not res!566516) (not e!464461))))

(assert (=> b!832694 (= res!566516 (bvslt (_1!5100 (h!17134 lt!377780)) (_1!5100 (h!17134 (t!22384 lt!377780)))))))

(declare-fun b!832695 () Bool)

(assert (=> b!832695 (= e!464461 (isStrictlySorted!438 (t!22384 lt!377780)))))

(assert (= (and d!106825 (not res!566515)) b!832694))

(assert (= (and b!832694 res!566516) b!832695))

(declare-fun m!777325 () Bool)

(assert (=> b!832695 m!777325))

(assert (=> d!106471 d!106825))

(declare-fun d!106827 () Bool)

(declare-fun res!566517 () Bool)

(declare-fun e!464462 () Bool)

(assert (=> d!106827 (=> res!566517 e!464462)))

(assert (=> d!106827 (= res!566517 (or ((_ is Nil!16005) (toList!4524 (+!1952 lt!377373 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))) ((_ is Nil!16005) (t!22384 (toList!4524 (+!1952 lt!377373 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))))))))

(assert (=> d!106827 (= (isStrictlySorted!438 (toList!4524 (+!1952 lt!377373 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))) e!464462)))

(declare-fun b!832696 () Bool)

(declare-fun e!464463 () Bool)

(assert (=> b!832696 (= e!464462 e!464463)))

(declare-fun res!566518 () Bool)

(assert (=> b!832696 (=> (not res!566518) (not e!464463))))

(assert (=> b!832696 (= res!566518 (bvslt (_1!5100 (h!17134 (toList!4524 (+!1952 lt!377373 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))) (_1!5100 (h!17134 (t!22384 (toList!4524 (+!1952 lt!377373 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))))))))

(declare-fun b!832697 () Bool)

(assert (=> b!832697 (= e!464463 (isStrictlySorted!438 (t!22384 (toList!4524 (+!1952 lt!377373 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))))))

(assert (= (and d!106827 (not res!566517)) b!832696))

(assert (= (and b!832696 res!566518) b!832697))

(declare-fun m!777327 () Bool)

(assert (=> b!832697 m!777327))

(assert (=> d!106471 d!106827))

(declare-fun d!106829 () Bool)

(declare-fun lt!377932 () Bool)

(assert (=> d!106829 (= lt!377932 (select (content!390 (toList!4524 lt!377767)) (tuple2!10181 lt!377445 lt!377450)))))

(declare-fun e!464464 () Bool)

(assert (=> d!106829 (= lt!377932 e!464464)))

(declare-fun res!566519 () Bool)

(assert (=> d!106829 (=> (not res!566519) (not e!464464))))

(assert (=> d!106829 (= res!566519 ((_ is Cons!16004) (toList!4524 lt!377767)))))

(assert (=> d!106829 (= (contains!4213 (toList!4524 lt!377767) (tuple2!10181 lt!377445 lt!377450)) lt!377932)))

(declare-fun b!832698 () Bool)

(declare-fun e!464465 () Bool)

(assert (=> b!832698 (= e!464464 e!464465)))

(declare-fun res!566520 () Bool)

(assert (=> b!832698 (=> res!566520 e!464465)))

(assert (=> b!832698 (= res!566520 (= (h!17134 (toList!4524 lt!377767)) (tuple2!10181 lt!377445 lt!377450)))))

(declare-fun b!832699 () Bool)

(assert (=> b!832699 (= e!464465 (contains!4213 (t!22384 (toList!4524 lt!377767)) (tuple2!10181 lt!377445 lt!377450)))))

(assert (= (and d!106829 res!566519) b!832698))

(assert (= (and b!832698 (not res!566520)) b!832699))

(declare-fun m!777329 () Bool)

(assert (=> d!106829 m!777329))

(declare-fun m!777331 () Bool)

(assert (=> d!106829 m!777331))

(declare-fun m!777333 () Bool)

(assert (=> b!832699 m!777333))

(assert (=> b!832214 d!106829))

(declare-fun d!106831 () Bool)

(declare-fun res!566521 () Bool)

(declare-fun e!464466 () Bool)

(assert (=> d!106831 (=> res!566521 e!464466)))

(assert (=> d!106831 (= res!566521 (and ((_ is Cons!16004) lt!377724) (= (_1!5100 (h!17134 lt!377724)) (_1!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))))))

(assert (=> d!106831 (= (containsKey!401 lt!377724 (_1!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))) e!464466)))

(declare-fun b!832700 () Bool)

(declare-fun e!464467 () Bool)

(assert (=> b!832700 (= e!464466 e!464467)))

(declare-fun res!566522 () Bool)

(assert (=> b!832700 (=> (not res!566522) (not e!464467))))

(assert (=> b!832700 (= res!566522 (and (or (not ((_ is Cons!16004) lt!377724)) (bvsle (_1!5100 (h!17134 lt!377724)) (_1!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))) ((_ is Cons!16004) lt!377724) (bvslt (_1!5100 (h!17134 lt!377724)) (_1!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))))))

(declare-fun b!832701 () Bool)

(assert (=> b!832701 (= e!464467 (containsKey!401 (t!22384 lt!377724) (_1!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))))

(assert (= (and d!106831 (not res!566521)) b!832700))

(assert (= (and b!832700 res!566522) b!832701))

(declare-fun m!777335 () Bool)

(assert (=> b!832701 m!777335))

(assert (=> b!832114 d!106831))

(declare-fun d!106833 () Bool)

(declare-fun e!464468 () Bool)

(assert (=> d!106833 e!464468))

(declare-fun res!566524 () Bool)

(assert (=> d!106833 (=> (not res!566524) (not e!464468))))

(declare-fun lt!377933 () ListLongMap!9017)

(assert (=> d!106833 (= res!566524 (contains!4212 lt!377933 (_1!5100 (tuple2!10181 (select (arr!22317 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (get!11828 (select (arr!22318 _values!788) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (dynLambda!983 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun lt!377935 () List!16008)

(assert (=> d!106833 (= lt!377933 (ListLongMap!9018 lt!377935))))

(declare-fun lt!377936 () Unit!28497)

(declare-fun lt!377934 () Unit!28497)

(assert (=> d!106833 (= lt!377936 lt!377934)))

(assert (=> d!106833 (= (getValueByKey!415 lt!377935 (_1!5100 (tuple2!10181 (select (arr!22317 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (get!11828 (select (arr!22318 _values!788) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (dynLambda!983 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!420 (_2!5100 (tuple2!10181 (select (arr!22317 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (get!11828 (select (arr!22318 _values!788) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (dynLambda!983 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!106833 (= lt!377934 (lemmaContainsTupThenGetReturnValue!231 lt!377935 (_1!5100 (tuple2!10181 (select (arr!22317 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (get!11828 (select (arr!22318 _values!788) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (dynLambda!983 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!5100 (tuple2!10181 (select (arr!22317 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (get!11828 (select (arr!22318 _values!788) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (dynLambda!983 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!106833 (= lt!377935 (insertStrictlySorted!269 (toList!4524 call!36407) (_1!5100 (tuple2!10181 (select (arr!22317 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (get!11828 (select (arr!22318 _values!788) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (dynLambda!983 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!5100 (tuple2!10181 (select (arr!22317 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (get!11828 (select (arr!22318 _values!788) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (dynLambda!983 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!106833 (= (+!1952 call!36407 (tuple2!10181 (select (arr!22317 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (get!11828 (select (arr!22318 _values!788) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (dynLambda!983 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))) lt!377933)))

(declare-fun b!832702 () Bool)

(declare-fun res!566523 () Bool)

(assert (=> b!832702 (=> (not res!566523) (not e!464468))))

(assert (=> b!832702 (= res!566523 (= (getValueByKey!415 (toList!4524 lt!377933) (_1!5100 (tuple2!10181 (select (arr!22317 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (get!11828 (select (arr!22318 _values!788) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (dynLambda!983 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!420 (_2!5100 (tuple2!10181 (select (arr!22317 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (get!11828 (select (arr!22318 _values!788) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (dynLambda!983 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun b!832703 () Bool)

(assert (=> b!832703 (= e!464468 (contains!4213 (toList!4524 lt!377933) (tuple2!10181 (select (arr!22317 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (get!11828 (select (arr!22318 _values!788) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (dynLambda!983 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (= (and d!106833 res!566524) b!832702))

(assert (= (and b!832702 res!566523) b!832703))

(declare-fun m!777337 () Bool)

(assert (=> d!106833 m!777337))

(declare-fun m!777339 () Bool)

(assert (=> d!106833 m!777339))

(declare-fun m!777341 () Bool)

(assert (=> d!106833 m!777341))

(declare-fun m!777343 () Bool)

(assert (=> d!106833 m!777343))

(declare-fun m!777345 () Bool)

(assert (=> b!832702 m!777345))

(declare-fun m!777347 () Bool)

(assert (=> b!832703 m!777347))

(assert (=> b!832012 d!106833))

(declare-fun d!106835 () Bool)

(declare-fun e!464469 () Bool)

(assert (=> d!106835 e!464469))

(declare-fun res!566526 () Bool)

(assert (=> d!106835 (=> (not res!566526) (not e!464469))))

(declare-fun lt!377937 () ListLongMap!9017)

(assert (=> d!106835 (= res!566526 (contains!4212 lt!377937 (_1!5100 (tuple2!10181 lt!377676 lt!377681))))))

(declare-fun lt!377939 () List!16008)

(assert (=> d!106835 (= lt!377937 (ListLongMap!9018 lt!377939))))

(declare-fun lt!377940 () Unit!28497)

(declare-fun lt!377938 () Unit!28497)

(assert (=> d!106835 (= lt!377940 lt!377938)))

(assert (=> d!106835 (= (getValueByKey!415 lt!377939 (_1!5100 (tuple2!10181 lt!377676 lt!377681))) (Some!420 (_2!5100 (tuple2!10181 lt!377676 lt!377681))))))

(assert (=> d!106835 (= lt!377938 (lemmaContainsTupThenGetReturnValue!231 lt!377939 (_1!5100 (tuple2!10181 lt!377676 lt!377681)) (_2!5100 (tuple2!10181 lt!377676 lt!377681))))))

(assert (=> d!106835 (= lt!377939 (insertStrictlySorted!269 (toList!4524 lt!377679) (_1!5100 (tuple2!10181 lt!377676 lt!377681)) (_2!5100 (tuple2!10181 lt!377676 lt!377681))))))

(assert (=> d!106835 (= (+!1952 lt!377679 (tuple2!10181 lt!377676 lt!377681)) lt!377937)))

(declare-fun b!832704 () Bool)

(declare-fun res!566525 () Bool)

(assert (=> b!832704 (=> (not res!566525) (not e!464469))))

(assert (=> b!832704 (= res!566525 (= (getValueByKey!415 (toList!4524 lt!377937) (_1!5100 (tuple2!10181 lt!377676 lt!377681))) (Some!420 (_2!5100 (tuple2!10181 lt!377676 lt!377681)))))))

(declare-fun b!832705 () Bool)

(assert (=> b!832705 (= e!464469 (contains!4213 (toList!4524 lt!377937) (tuple2!10181 lt!377676 lt!377681)))))

(assert (= (and d!106835 res!566526) b!832704))

(assert (= (and b!832704 res!566525) b!832705))

(declare-fun m!777349 () Bool)

(assert (=> d!106835 m!777349))

(declare-fun m!777351 () Bool)

(assert (=> d!106835 m!777351))

(declare-fun m!777353 () Bool)

(assert (=> d!106835 m!777353))

(declare-fun m!777355 () Bool)

(assert (=> d!106835 m!777355))

(declare-fun m!777357 () Bool)

(assert (=> b!832704 m!777357))

(declare-fun m!777359 () Bool)

(assert (=> b!832705 m!777359))

(assert (=> b!832012 d!106835))

(declare-fun d!106837 () Bool)

(declare-fun e!464470 () Bool)

(assert (=> d!106837 e!464470))

(declare-fun res!566527 () Bool)

(assert (=> d!106837 (=> res!566527 e!464470)))

(declare-fun lt!377944 () Bool)

(assert (=> d!106837 (= res!566527 (not lt!377944))))

(declare-fun lt!377941 () Bool)

(assert (=> d!106837 (= lt!377944 lt!377941)))

(declare-fun lt!377943 () Unit!28497)

(declare-fun e!464471 () Unit!28497)

(assert (=> d!106837 (= lt!377943 e!464471)))

(declare-fun c!90540 () Bool)

(assert (=> d!106837 (= c!90540 lt!377941)))

(assert (=> d!106837 (= lt!377941 (containsKey!401 (toList!4524 (+!1952 lt!377679 (tuple2!10181 lt!377676 lt!377681))) lt!377677))))

(assert (=> d!106837 (= (contains!4212 (+!1952 lt!377679 (tuple2!10181 lt!377676 lt!377681)) lt!377677) lt!377944)))

(declare-fun b!832706 () Bool)

(declare-fun lt!377942 () Unit!28497)

(assert (=> b!832706 (= e!464471 lt!377942)))

(assert (=> b!832706 (= lt!377942 (lemmaContainsKeyImpliesGetValueByKeyDefined!311 (toList!4524 (+!1952 lt!377679 (tuple2!10181 lt!377676 lt!377681))) lt!377677))))

(assert (=> b!832706 (isDefined!312 (getValueByKey!415 (toList!4524 (+!1952 lt!377679 (tuple2!10181 lt!377676 lt!377681))) lt!377677))))

(declare-fun b!832707 () Bool)

(declare-fun Unit!28540 () Unit!28497)

(assert (=> b!832707 (= e!464471 Unit!28540)))

(declare-fun b!832708 () Bool)

(assert (=> b!832708 (= e!464470 (isDefined!312 (getValueByKey!415 (toList!4524 (+!1952 lt!377679 (tuple2!10181 lt!377676 lt!377681))) lt!377677)))))

(assert (= (and d!106837 c!90540) b!832706))

(assert (= (and d!106837 (not c!90540)) b!832707))

(assert (= (and d!106837 (not res!566527)) b!832708))

(declare-fun m!777361 () Bool)

(assert (=> d!106837 m!777361))

(declare-fun m!777363 () Bool)

(assert (=> b!832706 m!777363))

(declare-fun m!777365 () Bool)

(assert (=> b!832706 m!777365))

(assert (=> b!832706 m!777365))

(declare-fun m!777367 () Bool)

(assert (=> b!832706 m!777367))

(assert (=> b!832708 m!777365))

(assert (=> b!832708 m!777365))

(assert (=> b!832708 m!777367))

(assert (=> b!832012 d!106837))

(declare-fun d!106839 () Bool)

(assert (=> d!106839 (not (contains!4212 (+!1952 lt!377679 (tuple2!10181 lt!377676 lt!377681)) lt!377677))))

(declare-fun lt!377945 () Unit!28497)

(assert (=> d!106839 (= lt!377945 (choose!1434 lt!377679 lt!377676 lt!377681 lt!377677))))

(declare-fun e!464472 () Bool)

(assert (=> d!106839 e!464472))

(declare-fun res!566528 () Bool)

(assert (=> d!106839 (=> (not res!566528) (not e!464472))))

(assert (=> d!106839 (= res!566528 (not (contains!4212 lt!377679 lt!377677)))))

(assert (=> d!106839 (= (addStillNotContains!200 lt!377679 lt!377676 lt!377681 lt!377677) lt!377945)))

(declare-fun b!832709 () Bool)

(assert (=> b!832709 (= e!464472 (not (= lt!377676 lt!377677)))))

(assert (= (and d!106839 res!566528) b!832709))

(assert (=> d!106839 m!776305))

(assert (=> d!106839 m!776305))

(assert (=> d!106839 m!776307))

(declare-fun m!777369 () Bool)

(assert (=> d!106839 m!777369))

(declare-fun m!777371 () Bool)

(assert (=> d!106839 m!777371))

(assert (=> b!832012 d!106839))

(assert (=> b!832012 d!106727))

(assert (=> b!831899 d!106639))

(assert (=> b!831899 d!106641))

(declare-fun b!832710 () Bool)

(declare-fun e!464477 () List!16008)

(declare-fun call!36452 () List!16008)

(assert (=> b!832710 (= e!464477 call!36452)))

(declare-fun b!832711 () Bool)

(declare-fun res!566529 () Bool)

(declare-fun e!464474 () Bool)

(assert (=> b!832711 (=> (not res!566529) (not e!464474))))

(declare-fun lt!377946 () List!16008)

(assert (=> b!832711 (= res!566529 (containsKey!401 lt!377946 (_1!5100 lt!377371)))))

(declare-fun c!90544 () Bool)

(declare-fun e!464476 () List!16008)

(declare-fun c!90542 () Bool)

(declare-fun b!832712 () Bool)

(assert (=> b!832712 (= e!464476 (ite c!90542 (t!22384 (t!22384 (toList!4524 lt!377369))) (ite c!90544 (Cons!16004 (h!17134 (t!22384 (toList!4524 lt!377369))) (t!22384 (t!22384 (toList!4524 lt!377369)))) Nil!16005)))))

(declare-fun b!832713 () Bool)

(declare-fun e!464473 () List!16008)

(assert (=> b!832713 (= e!464473 e!464477)))

(assert (=> b!832713 (= c!90542 (and ((_ is Cons!16004) (t!22384 (toList!4524 lt!377369))) (= (_1!5100 (h!17134 (t!22384 (toList!4524 lt!377369)))) (_1!5100 lt!377371))))))

(declare-fun b!832714 () Bool)

(assert (=> b!832714 (= e!464476 (insertStrictlySorted!269 (t!22384 (t!22384 (toList!4524 lt!377369))) (_1!5100 lt!377371) (_2!5100 lt!377371)))))

(declare-fun bm!36448 () Bool)

(declare-fun call!36453 () List!16008)

(assert (=> bm!36448 (= call!36452 call!36453)))

(declare-fun b!832715 () Bool)

(assert (=> b!832715 (= e!464474 (contains!4213 lt!377946 (tuple2!10181 (_1!5100 lt!377371) (_2!5100 lt!377371))))))

(declare-fun b!832716 () Bool)

(declare-fun e!464475 () List!16008)

(declare-fun call!36451 () List!16008)

(assert (=> b!832716 (= e!464475 call!36451)))

(declare-fun b!832717 () Bool)

(assert (=> b!832717 (= c!90544 (and ((_ is Cons!16004) (t!22384 (toList!4524 lt!377369))) (bvsgt (_1!5100 (h!17134 (t!22384 (toList!4524 lt!377369)))) (_1!5100 lt!377371))))))

(assert (=> b!832717 (= e!464477 e!464475)))

(declare-fun d!106841 () Bool)

(assert (=> d!106841 e!464474))

(declare-fun res!566530 () Bool)

(assert (=> d!106841 (=> (not res!566530) (not e!464474))))

(assert (=> d!106841 (= res!566530 (isStrictlySorted!438 lt!377946))))

(assert (=> d!106841 (= lt!377946 e!464473)))

(declare-fun c!90543 () Bool)

(assert (=> d!106841 (= c!90543 (and ((_ is Cons!16004) (t!22384 (toList!4524 lt!377369))) (bvslt (_1!5100 (h!17134 (t!22384 (toList!4524 lt!377369)))) (_1!5100 lt!377371))))))

(assert (=> d!106841 (isStrictlySorted!438 (t!22384 (toList!4524 lt!377369)))))

(assert (=> d!106841 (= (insertStrictlySorted!269 (t!22384 (toList!4524 lt!377369)) (_1!5100 lt!377371) (_2!5100 lt!377371)) lt!377946)))

(declare-fun b!832718 () Bool)

(assert (=> b!832718 (= e!464475 call!36451)))

(declare-fun bm!36449 () Bool)

(assert (=> bm!36449 (= call!36453 ($colon$colon!536 e!464476 (ite c!90543 (h!17134 (t!22384 (toList!4524 lt!377369))) (tuple2!10181 (_1!5100 lt!377371) (_2!5100 lt!377371)))))))

(declare-fun c!90541 () Bool)

(assert (=> bm!36449 (= c!90541 c!90543)))

(declare-fun bm!36450 () Bool)

(assert (=> bm!36450 (= call!36451 call!36452)))

(declare-fun b!832719 () Bool)

(assert (=> b!832719 (= e!464473 call!36453)))

(assert (= (and d!106841 c!90543) b!832719))

(assert (= (and d!106841 (not c!90543)) b!832713))

(assert (= (and b!832713 c!90542) b!832710))

(assert (= (and b!832713 (not c!90542)) b!832717))

(assert (= (and b!832717 c!90544) b!832716))

(assert (= (and b!832717 (not c!90544)) b!832718))

(assert (= (or b!832716 b!832718) bm!36450))

(assert (= (or b!832710 bm!36450) bm!36448))

(assert (= (or b!832719 bm!36448) bm!36449))

(assert (= (and bm!36449 c!90541) b!832714))

(assert (= (and bm!36449 (not c!90541)) b!832712))

(assert (= (and d!106841 res!566530) b!832711))

(assert (= (and b!832711 res!566529) b!832715))

(declare-fun m!777373 () Bool)

(assert (=> b!832711 m!777373))

(declare-fun m!777375 () Bool)

(assert (=> b!832714 m!777375))

(declare-fun m!777377 () Bool)

(assert (=> d!106841 m!777377))

(declare-fun m!777379 () Bool)

(assert (=> d!106841 m!777379))

(declare-fun m!777381 () Bool)

(assert (=> b!832715 m!777381))

(declare-fun m!777383 () Bool)

(assert (=> bm!36449 m!777383))

(assert (=> b!832136 d!106841))

(declare-fun d!106843 () Bool)

(assert (=> d!106843 (= (isEmpty!662 lt!377680) (isEmpty!663 (toList!4524 lt!377680)))))

(declare-fun bs!23299 () Bool)

(assert (= bs!23299 d!106843))

(declare-fun m!777385 () Bool)

(assert (=> bs!23299 m!777385))

(assert (=> b!832019 d!106843))

(declare-fun d!106845 () Bool)

(declare-fun lt!377947 () Bool)

(assert (=> d!106845 (= lt!377947 (select (content!390 lt!377535) (tuple2!10181 (_1!5100 lt!377371) (_2!5100 lt!377371))))))

(declare-fun e!464478 () Bool)

(assert (=> d!106845 (= lt!377947 e!464478)))

(declare-fun res!566531 () Bool)

(assert (=> d!106845 (=> (not res!566531) (not e!464478))))

(assert (=> d!106845 (= res!566531 ((_ is Cons!16004) lt!377535))))

(assert (=> d!106845 (= (contains!4213 lt!377535 (tuple2!10181 (_1!5100 lt!377371) (_2!5100 lt!377371))) lt!377947)))

(declare-fun b!832720 () Bool)

(declare-fun e!464479 () Bool)

(assert (=> b!832720 (= e!464478 e!464479)))

(declare-fun res!566532 () Bool)

(assert (=> b!832720 (=> res!566532 e!464479)))

(assert (=> b!832720 (= res!566532 (= (h!17134 lt!377535) (tuple2!10181 (_1!5100 lt!377371) (_2!5100 lt!377371))))))

(declare-fun b!832721 () Bool)

(assert (=> b!832721 (= e!464479 (contains!4213 (t!22384 lt!377535) (tuple2!10181 (_1!5100 lt!377371) (_2!5100 lt!377371))))))

(assert (= (and d!106845 res!566531) b!832720))

(assert (= (and b!832720 (not res!566532)) b!832721))

(declare-fun m!777387 () Bool)

(assert (=> d!106845 m!777387))

(declare-fun m!777389 () Bool)

(assert (=> d!106845 m!777389))

(declare-fun m!777391 () Bool)

(assert (=> b!832721 m!777391))

(assert (=> b!832169 d!106845))

(declare-fun d!106847 () Bool)

(declare-fun lt!377948 () Bool)

(assert (=> d!106847 (= lt!377948 (select (content!390 lt!377627) (tuple2!10181 (_1!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)) (_2!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))))))

(declare-fun e!464480 () Bool)

(assert (=> d!106847 (= lt!377948 e!464480)))

(declare-fun res!566533 () Bool)

(assert (=> d!106847 (=> (not res!566533) (not e!464480))))

(assert (=> d!106847 (= res!566533 ((_ is Cons!16004) lt!377627))))

(assert (=> d!106847 (= (contains!4213 lt!377627 (tuple2!10181 (_1!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)) (_2!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))) lt!377948)))

(declare-fun b!832722 () Bool)

(declare-fun e!464481 () Bool)

(assert (=> b!832722 (= e!464480 e!464481)))

(declare-fun res!566534 () Bool)

(assert (=> b!832722 (=> res!566534 e!464481)))

(assert (=> b!832722 (= res!566534 (= (h!17134 lt!377627) (tuple2!10181 (_1!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)) (_2!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))))))

(declare-fun b!832723 () Bool)

(assert (=> b!832723 (= e!464481 (contains!4213 (t!22384 lt!377627) (tuple2!10181 (_1!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)) (_2!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))))))

(assert (= (and d!106847 res!566533) b!832722))

(assert (= (and b!832722 (not res!566534)) b!832723))

(declare-fun m!777393 () Bool)

(assert (=> d!106847 m!777393))

(declare-fun m!777395 () Bool)

(assert (=> d!106847 m!777395))

(declare-fun m!777397 () Bool)

(assert (=> b!832723 m!777397))

(assert (=> b!831952 d!106847))

(declare-fun d!106849 () Bool)

(declare-fun res!566535 () Bool)

(declare-fun e!464482 () Bool)

(assert (=> d!106849 (=> res!566535 e!464482)))

(assert (=> d!106849 (= res!566535 (and ((_ is Cons!16004) (toList!4524 lt!377455)) (= (_1!5100 (h!17134 (toList!4524 lt!377455))) (_1!5100 lt!377371))))))

(assert (=> d!106849 (= (containsKey!401 (toList!4524 lt!377455) (_1!5100 lt!377371)) e!464482)))

(declare-fun b!832724 () Bool)

(declare-fun e!464483 () Bool)

(assert (=> b!832724 (= e!464482 e!464483)))

(declare-fun res!566536 () Bool)

(assert (=> b!832724 (=> (not res!566536) (not e!464483))))

(assert (=> b!832724 (= res!566536 (and (or (not ((_ is Cons!16004) (toList!4524 lt!377455))) (bvsle (_1!5100 (h!17134 (toList!4524 lt!377455))) (_1!5100 lt!377371))) ((_ is Cons!16004) (toList!4524 lt!377455)) (bvslt (_1!5100 (h!17134 (toList!4524 lt!377455))) (_1!5100 lt!377371))))))

(declare-fun b!832725 () Bool)

(assert (=> b!832725 (= e!464483 (containsKey!401 (t!22384 (toList!4524 lt!377455)) (_1!5100 lt!377371)))))

(assert (= (and d!106849 (not res!566535)) b!832724))

(assert (= (and b!832724 res!566536) b!832725))

(declare-fun m!777399 () Bool)

(assert (=> b!832725 m!777399))

(assert (=> d!106407 d!106849))

(declare-fun d!106851 () Bool)

(assert (=> d!106851 (isDefined!312 (getValueByKey!415 (toList!4524 lt!377449) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!377949 () Unit!28497)

(assert (=> d!106851 (= lt!377949 (choose!1435 (toList!4524 lt!377449) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!464484 () Bool)

(assert (=> d!106851 e!464484))

(declare-fun res!566537 () Bool)

(assert (=> d!106851 (=> (not res!566537) (not e!464484))))

(assert (=> d!106851 (= res!566537 (isStrictlySorted!438 (toList!4524 lt!377449)))))

(assert (=> d!106851 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!311 (toList!4524 lt!377449) #b0000000000000000000000000000000000000000000000000000000000000000) lt!377949)))

(declare-fun b!832726 () Bool)

(assert (=> b!832726 (= e!464484 (containsKey!401 (toList!4524 lt!377449) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!106851 res!566537) b!832726))

(assert (=> d!106851 m!776051))

(assert (=> d!106851 m!776051))

(assert (=> d!106851 m!776053))

(declare-fun m!777401 () Bool)

(assert (=> d!106851 m!777401))

(declare-fun m!777403 () Bool)

(assert (=> d!106851 m!777403))

(assert (=> b!832726 m!776047))

(assert (=> b!831889 d!106851))

(declare-fun d!106853 () Bool)

(assert (=> d!106853 (= (isDefined!312 (getValueByKey!415 (toList!4524 lt!377449) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (isEmpty!664 (getValueByKey!415 (toList!4524 lt!377449) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun bs!23300 () Bool)

(assert (= bs!23300 d!106853))

(assert (=> bs!23300 m!776051))

(declare-fun m!777405 () Bool)

(assert (=> bs!23300 m!777405))

(assert (=> b!831889 d!106853))

(declare-fun d!106855 () Bool)

(declare-fun c!90545 () Bool)

(assert (=> d!106855 (= c!90545 (and ((_ is Cons!16004) (toList!4524 lt!377449)) (= (_1!5100 (h!17134 (toList!4524 lt!377449))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!464485 () Option!421)

(assert (=> d!106855 (= (getValueByKey!415 (toList!4524 lt!377449) #b0000000000000000000000000000000000000000000000000000000000000000) e!464485)))

(declare-fun b!832727 () Bool)

(assert (=> b!832727 (= e!464485 (Some!420 (_2!5100 (h!17134 (toList!4524 lt!377449)))))))

(declare-fun b!832730 () Bool)

(declare-fun e!464486 () Option!421)

(assert (=> b!832730 (= e!464486 None!419)))

(declare-fun b!832728 () Bool)

(assert (=> b!832728 (= e!464485 e!464486)))

(declare-fun c!90546 () Bool)

(assert (=> b!832728 (= c!90546 (and ((_ is Cons!16004) (toList!4524 lt!377449)) (not (= (_1!5100 (h!17134 (toList!4524 lt!377449))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!832729 () Bool)

(assert (=> b!832729 (= e!464486 (getValueByKey!415 (t!22384 (toList!4524 lt!377449)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!106855 c!90545) b!832727))

(assert (= (and d!106855 (not c!90545)) b!832728))

(assert (= (and b!832728 c!90546) b!832729))

(assert (= (and b!832728 (not c!90546)) b!832730))

(declare-fun m!777407 () Bool)

(assert (=> b!832729 m!777407))

(assert (=> b!831889 d!106855))

(declare-fun d!106857 () Bool)

(declare-fun res!566538 () Bool)

(declare-fun e!464487 () Bool)

(assert (=> d!106857 (=> res!566538 e!464487)))

(assert (=> d!106857 (= res!566538 (or ((_ is Nil!16005) lt!377724) ((_ is Nil!16005) (t!22384 lt!377724))))))

(assert (=> d!106857 (= (isStrictlySorted!438 lt!377724) e!464487)))

(declare-fun b!832731 () Bool)

(declare-fun e!464488 () Bool)

(assert (=> b!832731 (= e!464487 e!464488)))

(declare-fun res!566539 () Bool)

(assert (=> b!832731 (=> (not res!566539) (not e!464488))))

(assert (=> b!832731 (= res!566539 (bvslt (_1!5100 (h!17134 lt!377724)) (_1!5100 (h!17134 (t!22384 lt!377724)))))))

(declare-fun b!832732 () Bool)

(assert (=> b!832732 (= e!464488 (isStrictlySorted!438 (t!22384 lt!377724)))))

(assert (= (and d!106857 (not res!566538)) b!832731))

(assert (= (and b!832731 res!566539) b!832732))

(declare-fun m!777409 () Bool)

(assert (=> b!832732 m!777409))

(assert (=> d!106405 d!106857))

(declare-fun d!106859 () Bool)

(declare-fun res!566540 () Bool)

(declare-fun e!464489 () Bool)

(assert (=> d!106859 (=> res!566540 e!464489)))

(assert (=> d!106859 (= res!566540 (or ((_ is Nil!16005) (toList!4524 (+!1952 lt!377373 lt!377371))) ((_ is Nil!16005) (t!22384 (toList!4524 (+!1952 lt!377373 lt!377371))))))))

(assert (=> d!106859 (= (isStrictlySorted!438 (toList!4524 (+!1952 lt!377373 lt!377371))) e!464489)))

(declare-fun b!832733 () Bool)

(declare-fun e!464490 () Bool)

(assert (=> b!832733 (= e!464489 e!464490)))

(declare-fun res!566541 () Bool)

(assert (=> b!832733 (=> (not res!566541) (not e!464490))))

(assert (=> b!832733 (= res!566541 (bvslt (_1!5100 (h!17134 (toList!4524 (+!1952 lt!377373 lt!377371)))) (_1!5100 (h!17134 (t!22384 (toList!4524 (+!1952 lt!377373 lt!377371)))))))))

(declare-fun b!832734 () Bool)

(assert (=> b!832734 (= e!464490 (isStrictlySorted!438 (t!22384 (toList!4524 (+!1952 lt!377373 lt!377371)))))))

(assert (= (and d!106859 (not res!566540)) b!832733))

(assert (= (and b!832733 res!566541) b!832734))

(declare-fun m!777411 () Bool)

(assert (=> b!832734 m!777411))

(assert (=> d!106405 d!106859))

(declare-fun d!106861 () Bool)

(declare-fun e!464491 () Bool)

(assert (=> d!106861 e!464491))

(declare-fun res!566542 () Bool)

(assert (=> d!106861 (=> res!566542 e!464491)))

(declare-fun lt!377953 () Bool)

(assert (=> d!106861 (= res!566542 (not lt!377953))))

(declare-fun lt!377950 () Bool)

(assert (=> d!106861 (= lt!377953 lt!377950)))

(declare-fun lt!377952 () Unit!28497)

(declare-fun e!464492 () Unit!28497)

(assert (=> d!106861 (= lt!377952 e!464492)))

(declare-fun c!90547 () Bool)

(assert (=> d!106861 (= c!90547 lt!377950)))

(assert (=> d!106861 (= lt!377950 (containsKey!401 (toList!4524 lt!377767) (_1!5100 (tuple2!10181 lt!377445 lt!377450))))))

(assert (=> d!106861 (= (contains!4212 lt!377767 (_1!5100 (tuple2!10181 lt!377445 lt!377450))) lt!377953)))

(declare-fun b!832735 () Bool)

(declare-fun lt!377951 () Unit!28497)

(assert (=> b!832735 (= e!464492 lt!377951)))

(assert (=> b!832735 (= lt!377951 (lemmaContainsKeyImpliesGetValueByKeyDefined!311 (toList!4524 lt!377767) (_1!5100 (tuple2!10181 lt!377445 lt!377450))))))

(assert (=> b!832735 (isDefined!312 (getValueByKey!415 (toList!4524 lt!377767) (_1!5100 (tuple2!10181 lt!377445 lt!377450))))))

(declare-fun b!832736 () Bool)

(declare-fun Unit!28541 () Unit!28497)

(assert (=> b!832736 (= e!464492 Unit!28541)))

(declare-fun b!832737 () Bool)

(assert (=> b!832737 (= e!464491 (isDefined!312 (getValueByKey!415 (toList!4524 lt!377767) (_1!5100 (tuple2!10181 lt!377445 lt!377450)))))))

(assert (= (and d!106861 c!90547) b!832735))

(assert (= (and d!106861 (not c!90547)) b!832736))

(assert (= (and d!106861 (not res!566542)) b!832737))

(declare-fun m!777413 () Bool)

(assert (=> d!106861 m!777413))

(declare-fun m!777415 () Bool)

(assert (=> b!832735 m!777415))

(assert (=> b!832735 m!776629))

(assert (=> b!832735 m!776629))

(declare-fun m!777417 () Bool)

(assert (=> b!832735 m!777417))

(assert (=> b!832737 m!776629))

(assert (=> b!832737 m!776629))

(assert (=> b!832737 m!777417))

(assert (=> d!106461 d!106861))

(declare-fun d!106863 () Bool)

(declare-fun c!90548 () Bool)

(assert (=> d!106863 (= c!90548 (and ((_ is Cons!16004) lt!377769) (= (_1!5100 (h!17134 lt!377769)) (_1!5100 (tuple2!10181 lt!377445 lt!377450)))))))

(declare-fun e!464493 () Option!421)

(assert (=> d!106863 (= (getValueByKey!415 lt!377769 (_1!5100 (tuple2!10181 lt!377445 lt!377450))) e!464493)))

(declare-fun b!832738 () Bool)

(assert (=> b!832738 (= e!464493 (Some!420 (_2!5100 (h!17134 lt!377769))))))

(declare-fun b!832741 () Bool)

(declare-fun e!464494 () Option!421)

(assert (=> b!832741 (= e!464494 None!419)))

(declare-fun b!832739 () Bool)

(assert (=> b!832739 (= e!464493 e!464494)))

(declare-fun c!90549 () Bool)

(assert (=> b!832739 (= c!90549 (and ((_ is Cons!16004) lt!377769) (not (= (_1!5100 (h!17134 lt!377769)) (_1!5100 (tuple2!10181 lt!377445 lt!377450))))))))

(declare-fun b!832740 () Bool)

(assert (=> b!832740 (= e!464494 (getValueByKey!415 (t!22384 lt!377769) (_1!5100 (tuple2!10181 lt!377445 lt!377450))))))

(assert (= (and d!106863 c!90548) b!832738))

(assert (= (and d!106863 (not c!90548)) b!832739))

(assert (= (and b!832739 c!90549) b!832740))

(assert (= (and b!832739 (not c!90549)) b!832741))

(declare-fun m!777419 () Bool)

(assert (=> b!832740 m!777419))

(assert (=> d!106461 d!106863))

(declare-fun d!106865 () Bool)

(assert (=> d!106865 (= (getValueByKey!415 lt!377769 (_1!5100 (tuple2!10181 lt!377445 lt!377450))) (Some!420 (_2!5100 (tuple2!10181 lt!377445 lt!377450))))))

(declare-fun lt!377954 () Unit!28497)

(assert (=> d!106865 (= lt!377954 (choose!1433 lt!377769 (_1!5100 (tuple2!10181 lt!377445 lt!377450)) (_2!5100 (tuple2!10181 lt!377445 lt!377450))))))

(declare-fun e!464495 () Bool)

(assert (=> d!106865 e!464495))

(declare-fun res!566543 () Bool)

(assert (=> d!106865 (=> (not res!566543) (not e!464495))))

(assert (=> d!106865 (= res!566543 (isStrictlySorted!438 lt!377769))))

(assert (=> d!106865 (= (lemmaContainsTupThenGetReturnValue!231 lt!377769 (_1!5100 (tuple2!10181 lt!377445 lt!377450)) (_2!5100 (tuple2!10181 lt!377445 lt!377450))) lt!377954)))

(declare-fun b!832742 () Bool)

(declare-fun res!566544 () Bool)

(assert (=> b!832742 (=> (not res!566544) (not e!464495))))

(assert (=> b!832742 (= res!566544 (containsKey!401 lt!377769 (_1!5100 (tuple2!10181 lt!377445 lt!377450))))))

(declare-fun b!832743 () Bool)

(assert (=> b!832743 (= e!464495 (contains!4213 lt!377769 (tuple2!10181 (_1!5100 (tuple2!10181 lt!377445 lt!377450)) (_2!5100 (tuple2!10181 lt!377445 lt!377450)))))))

(assert (= (and d!106865 res!566543) b!832742))

(assert (= (and b!832742 res!566544) b!832743))

(assert (=> d!106865 m!776623))

(declare-fun m!777421 () Bool)

(assert (=> d!106865 m!777421))

(declare-fun m!777423 () Bool)

(assert (=> d!106865 m!777423))

(declare-fun m!777425 () Bool)

(assert (=> b!832742 m!777425))

(declare-fun m!777427 () Bool)

(assert (=> b!832743 m!777427))

(assert (=> d!106461 d!106865))

(declare-fun b!832744 () Bool)

(declare-fun e!464500 () List!16008)

(declare-fun call!36455 () List!16008)

(assert (=> b!832744 (= e!464500 call!36455)))

(declare-fun b!832745 () Bool)

(declare-fun res!566545 () Bool)

(declare-fun e!464497 () Bool)

(assert (=> b!832745 (=> (not res!566545) (not e!464497))))

(declare-fun lt!377955 () List!16008)

(assert (=> b!832745 (= res!566545 (containsKey!401 lt!377955 (_1!5100 (tuple2!10181 lt!377445 lt!377450))))))

(declare-fun e!464499 () List!16008)

(declare-fun c!90553 () Bool)

(declare-fun b!832746 () Bool)

(declare-fun c!90551 () Bool)

(assert (=> b!832746 (= e!464499 (ite c!90551 (t!22384 (toList!4524 lt!377448)) (ite c!90553 (Cons!16004 (h!17134 (toList!4524 lt!377448)) (t!22384 (toList!4524 lt!377448))) Nil!16005)))))

(declare-fun b!832747 () Bool)

(declare-fun e!464496 () List!16008)

(assert (=> b!832747 (= e!464496 e!464500)))

(assert (=> b!832747 (= c!90551 (and ((_ is Cons!16004) (toList!4524 lt!377448)) (= (_1!5100 (h!17134 (toList!4524 lt!377448))) (_1!5100 (tuple2!10181 lt!377445 lt!377450)))))))

(declare-fun b!832748 () Bool)

(assert (=> b!832748 (= e!464499 (insertStrictlySorted!269 (t!22384 (toList!4524 lt!377448)) (_1!5100 (tuple2!10181 lt!377445 lt!377450)) (_2!5100 (tuple2!10181 lt!377445 lt!377450))))))

(declare-fun bm!36451 () Bool)

(declare-fun call!36456 () List!16008)

(assert (=> bm!36451 (= call!36455 call!36456)))

(declare-fun b!832749 () Bool)

(assert (=> b!832749 (= e!464497 (contains!4213 lt!377955 (tuple2!10181 (_1!5100 (tuple2!10181 lt!377445 lt!377450)) (_2!5100 (tuple2!10181 lt!377445 lt!377450)))))))

(declare-fun b!832750 () Bool)

(declare-fun e!464498 () List!16008)

(declare-fun call!36454 () List!16008)

(assert (=> b!832750 (= e!464498 call!36454)))

(declare-fun b!832751 () Bool)

(assert (=> b!832751 (= c!90553 (and ((_ is Cons!16004) (toList!4524 lt!377448)) (bvsgt (_1!5100 (h!17134 (toList!4524 lt!377448))) (_1!5100 (tuple2!10181 lt!377445 lt!377450)))))))

(assert (=> b!832751 (= e!464500 e!464498)))

(declare-fun d!106867 () Bool)

(assert (=> d!106867 e!464497))

(declare-fun res!566546 () Bool)

(assert (=> d!106867 (=> (not res!566546) (not e!464497))))

(assert (=> d!106867 (= res!566546 (isStrictlySorted!438 lt!377955))))

(assert (=> d!106867 (= lt!377955 e!464496)))

(declare-fun c!90552 () Bool)

(assert (=> d!106867 (= c!90552 (and ((_ is Cons!16004) (toList!4524 lt!377448)) (bvslt (_1!5100 (h!17134 (toList!4524 lt!377448))) (_1!5100 (tuple2!10181 lt!377445 lt!377450)))))))

(assert (=> d!106867 (isStrictlySorted!438 (toList!4524 lt!377448))))

(assert (=> d!106867 (= (insertStrictlySorted!269 (toList!4524 lt!377448) (_1!5100 (tuple2!10181 lt!377445 lt!377450)) (_2!5100 (tuple2!10181 lt!377445 lt!377450))) lt!377955)))

(declare-fun b!832752 () Bool)

(assert (=> b!832752 (= e!464498 call!36454)))

(declare-fun bm!36452 () Bool)

(assert (=> bm!36452 (= call!36456 ($colon$colon!536 e!464499 (ite c!90552 (h!17134 (toList!4524 lt!377448)) (tuple2!10181 (_1!5100 (tuple2!10181 lt!377445 lt!377450)) (_2!5100 (tuple2!10181 lt!377445 lt!377450))))))))

(declare-fun c!90550 () Bool)

(assert (=> bm!36452 (= c!90550 c!90552)))

(declare-fun bm!36453 () Bool)

(assert (=> bm!36453 (= call!36454 call!36455)))

(declare-fun b!832753 () Bool)

(assert (=> b!832753 (= e!464496 call!36456)))

(assert (= (and d!106867 c!90552) b!832753))

(assert (= (and d!106867 (not c!90552)) b!832747))

(assert (= (and b!832747 c!90551) b!832744))

(assert (= (and b!832747 (not c!90551)) b!832751))

(assert (= (and b!832751 c!90553) b!832750))

(assert (= (and b!832751 (not c!90553)) b!832752))

(assert (= (or b!832750 b!832752) bm!36453))

(assert (= (or b!832744 bm!36453) bm!36451))

(assert (= (or b!832753 bm!36451) bm!36452))

(assert (= (and bm!36452 c!90550) b!832748))

(assert (= (and bm!36452 (not c!90550)) b!832746))

(assert (= (and d!106867 res!566546) b!832745))

(assert (= (and b!832745 res!566545) b!832749))

(declare-fun m!777429 () Bool)

(assert (=> b!832745 m!777429))

(declare-fun m!777431 () Bool)

(assert (=> b!832748 m!777431))

(declare-fun m!777433 () Bool)

(assert (=> d!106867 m!777433))

(declare-fun m!777435 () Bool)

(assert (=> d!106867 m!777435))

(declare-fun m!777437 () Bool)

(assert (=> b!832749 m!777437))

(declare-fun m!777439 () Bool)

(assert (=> bm!36452 m!777439))

(assert (=> d!106461 d!106867))

(declare-fun d!106869 () Bool)

(assert (=> d!106869 (isDefined!312 (getValueByKey!415 (toList!4524 lt!377442) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!377956 () Unit!28497)

(assert (=> d!106869 (= lt!377956 (choose!1435 (toList!4524 lt!377442) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!464501 () Bool)

(assert (=> d!106869 e!464501))

(declare-fun res!566547 () Bool)

(assert (=> d!106869 (=> (not res!566547) (not e!464501))))

(assert (=> d!106869 (= res!566547 (isStrictlySorted!438 (toList!4524 lt!377442)))))

(assert (=> d!106869 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!311 (toList!4524 lt!377442) #b1000000000000000000000000000000000000000000000000000000000000000) lt!377956)))

(declare-fun b!832754 () Bool)

(assert (=> b!832754 (= e!464501 (containsKey!401 (toList!4524 lt!377442) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!106869 res!566547) b!832754))

(assert (=> d!106869 m!776383))

(assert (=> d!106869 m!776383))

(assert (=> d!106869 m!776385))

(declare-fun m!777441 () Bool)

(assert (=> d!106869 m!777441))

(assert (=> d!106869 m!776895))

(assert (=> b!832754 m!776379))

(assert (=> b!832054 d!106869))

(declare-fun d!106871 () Bool)

(assert (=> d!106871 (= (isDefined!312 (getValueByKey!415 (toList!4524 lt!377442) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (isEmpty!664 (getValueByKey!415 (toList!4524 lt!377442) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun bs!23301 () Bool)

(assert (= bs!23301 d!106871))

(assert (=> bs!23301 m!776383))

(declare-fun m!777443 () Bool)

(assert (=> bs!23301 m!777443))

(assert (=> b!832054 d!106871))

(declare-fun d!106873 () Bool)

(declare-fun c!90554 () Bool)

(assert (=> d!106873 (= c!90554 (and ((_ is Cons!16004) (toList!4524 lt!377442)) (= (_1!5100 (h!17134 (toList!4524 lt!377442))) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!464502 () Option!421)

(assert (=> d!106873 (= (getValueByKey!415 (toList!4524 lt!377442) #b1000000000000000000000000000000000000000000000000000000000000000) e!464502)))

(declare-fun b!832755 () Bool)

(assert (=> b!832755 (= e!464502 (Some!420 (_2!5100 (h!17134 (toList!4524 lt!377442)))))))

(declare-fun b!832758 () Bool)

(declare-fun e!464503 () Option!421)

(assert (=> b!832758 (= e!464503 None!419)))

(declare-fun b!832756 () Bool)

(assert (=> b!832756 (= e!464502 e!464503)))

(declare-fun c!90555 () Bool)

(assert (=> b!832756 (= c!90555 (and ((_ is Cons!16004) (toList!4524 lt!377442)) (not (= (_1!5100 (h!17134 (toList!4524 lt!377442))) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!832757 () Bool)

(assert (=> b!832757 (= e!464503 (getValueByKey!415 (t!22384 (toList!4524 lt!377442)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!106873 c!90554) b!832755))

(assert (= (and d!106873 (not c!90554)) b!832756))

(assert (= (and b!832756 c!90555) b!832757))

(assert (= (and b!832756 (not c!90555)) b!832758))

(declare-fun m!777445 () Bool)

(assert (=> b!832757 m!777445))

(assert (=> b!832054 d!106873))

(declare-fun d!106875 () Bool)

(assert (=> d!106875 (isDefined!312 (getValueByKey!415 (toList!4524 lt!377449) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!377957 () Unit!28497)

(assert (=> d!106875 (= lt!377957 (choose!1435 (toList!4524 lt!377449) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!464504 () Bool)

(assert (=> d!106875 e!464504))

(declare-fun res!566548 () Bool)

(assert (=> d!106875 (=> (not res!566548) (not e!464504))))

(assert (=> d!106875 (= res!566548 (isStrictlySorted!438 (toList!4524 lt!377449)))))

(assert (=> d!106875 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!311 (toList!4524 lt!377449) #b1000000000000000000000000000000000000000000000000000000000000000) lt!377957)))

(declare-fun b!832759 () Bool)

(assert (=> b!832759 (= e!464504 (containsKey!401 (toList!4524 lt!377449) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!106875 res!566548) b!832759))

(assert (=> d!106875 m!776371))

(assert (=> d!106875 m!776371))

(assert (=> d!106875 m!776373))

(declare-fun m!777447 () Bool)

(assert (=> d!106875 m!777447))

(assert (=> d!106875 m!777403))

(assert (=> b!832759 m!776367))

(assert (=> b!832046 d!106875))

(declare-fun d!106877 () Bool)

(assert (=> d!106877 (= (isDefined!312 (getValueByKey!415 (toList!4524 lt!377449) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (isEmpty!664 (getValueByKey!415 (toList!4524 lt!377449) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun bs!23302 () Bool)

(assert (= bs!23302 d!106877))

(assert (=> bs!23302 m!776371))

(declare-fun m!777449 () Bool)

(assert (=> bs!23302 m!777449))

(assert (=> b!832046 d!106877))

(declare-fun d!106879 () Bool)

(declare-fun c!90556 () Bool)

(assert (=> d!106879 (= c!90556 (and ((_ is Cons!16004) (toList!4524 lt!377449)) (= (_1!5100 (h!17134 (toList!4524 lt!377449))) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!464505 () Option!421)

(assert (=> d!106879 (= (getValueByKey!415 (toList!4524 lt!377449) #b1000000000000000000000000000000000000000000000000000000000000000) e!464505)))

(declare-fun b!832760 () Bool)

(assert (=> b!832760 (= e!464505 (Some!420 (_2!5100 (h!17134 (toList!4524 lt!377449)))))))

(declare-fun b!832763 () Bool)

(declare-fun e!464506 () Option!421)

(assert (=> b!832763 (= e!464506 None!419)))

(declare-fun b!832761 () Bool)

(assert (=> b!832761 (= e!464505 e!464506)))

(declare-fun c!90557 () Bool)

(assert (=> b!832761 (= c!90557 (and ((_ is Cons!16004) (toList!4524 lt!377449)) (not (= (_1!5100 (h!17134 (toList!4524 lt!377449))) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!832762 () Bool)

(assert (=> b!832762 (= e!464506 (getValueByKey!415 (t!22384 (toList!4524 lt!377449)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!106879 c!90556) b!832760))

(assert (= (and d!106879 (not c!90556)) b!832761))

(assert (= (and b!832761 c!90557) b!832762))

(assert (= (and b!832761 (not c!90557)) b!832763))

(declare-fun m!777451 () Bool)

(assert (=> b!832762 m!777451))

(assert (=> b!832046 d!106879))

(declare-fun d!106881 () Bool)

(assert (=> d!106881 (isDefined!312 (getValueByKey!415 (toList!4524 lt!377542) (select (arr!22317 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun lt!377958 () Unit!28497)

(assert (=> d!106881 (= lt!377958 (choose!1435 (toList!4524 lt!377542) (select (arr!22317 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun e!464507 () Bool)

(assert (=> d!106881 e!464507))

(declare-fun res!566549 () Bool)

(assert (=> d!106881 (=> (not res!566549) (not e!464507))))

(assert (=> d!106881 (= res!566549 (isStrictlySorted!438 (toList!4524 lt!377542)))))

(assert (=> d!106881 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!311 (toList!4524 lt!377542) (select (arr!22317 _keys!976) #b00000000000000000000000000000000)) lt!377958)))

(declare-fun b!832764 () Bool)

(assert (=> b!832764 (= e!464507 (containsKey!401 (toList!4524 lt!377542) (select (arr!22317 _keys!976) #b00000000000000000000000000000000)))))

(assert (= (and d!106881 res!566549) b!832764))

(assert (=> d!106881 m!775697))

(assert (=> d!106881 m!776169))

(assert (=> d!106881 m!776169))

(assert (=> d!106881 m!776171))

(assert (=> d!106881 m!775697))

(declare-fun m!777453 () Bool)

(assert (=> d!106881 m!777453))

(assert (=> d!106881 m!777247))

(assert (=> b!832764 m!775697))

(assert (=> b!832764 m!776165))

(assert (=> b!831976 d!106881))

(declare-fun d!106883 () Bool)

(assert (=> d!106883 (= (isDefined!312 (getValueByKey!415 (toList!4524 lt!377542) (select (arr!22317 _keys!976) #b00000000000000000000000000000000))) (not (isEmpty!664 (getValueByKey!415 (toList!4524 lt!377542) (select (arr!22317 _keys!976) #b00000000000000000000000000000000)))))))

(declare-fun bs!23303 () Bool)

(assert (= bs!23303 d!106883))

(assert (=> bs!23303 m!776169))

(declare-fun m!777455 () Bool)

(assert (=> bs!23303 m!777455))

(assert (=> b!831976 d!106883))

(declare-fun d!106885 () Bool)

(declare-fun c!90558 () Bool)

(assert (=> d!106885 (= c!90558 (and ((_ is Cons!16004) (toList!4524 lt!377542)) (= (_1!5100 (h!17134 (toList!4524 lt!377542))) (select (arr!22317 _keys!976) #b00000000000000000000000000000000))))))

(declare-fun e!464508 () Option!421)

(assert (=> d!106885 (= (getValueByKey!415 (toList!4524 lt!377542) (select (arr!22317 _keys!976) #b00000000000000000000000000000000)) e!464508)))

(declare-fun b!832765 () Bool)

(assert (=> b!832765 (= e!464508 (Some!420 (_2!5100 (h!17134 (toList!4524 lt!377542)))))))

(declare-fun b!832768 () Bool)

(declare-fun e!464509 () Option!421)

(assert (=> b!832768 (= e!464509 None!419)))

(declare-fun b!832766 () Bool)

(assert (=> b!832766 (= e!464508 e!464509)))

(declare-fun c!90559 () Bool)

(assert (=> b!832766 (= c!90559 (and ((_ is Cons!16004) (toList!4524 lt!377542)) (not (= (_1!5100 (h!17134 (toList!4524 lt!377542))) (select (arr!22317 _keys!976) #b00000000000000000000000000000000)))))))

(declare-fun b!832767 () Bool)

(assert (=> b!832767 (= e!464509 (getValueByKey!415 (t!22384 (toList!4524 lt!377542)) (select (arr!22317 _keys!976) #b00000000000000000000000000000000)))))

(assert (= (and d!106885 c!90558) b!832765))

(assert (= (and d!106885 (not c!90558)) b!832766))

(assert (= (and b!832766 c!90559) b!832767))

(assert (= (and b!832766 (not c!90559)) b!832768))

(assert (=> b!832767 m!775697))

(declare-fun m!777457 () Bool)

(assert (=> b!832767 m!777457))

(assert (=> b!831976 d!106885))

(declare-fun d!106887 () Bool)

(assert (=> d!106887 (= (get!11829 (getValueByKey!415 (toList!4524 lt!377542) (select (arr!22317 _keys!976) #b00000000000000000000000000000000))) (v!10097 (getValueByKey!415 (toList!4524 lt!377542) (select (arr!22317 _keys!976) #b00000000000000000000000000000000))))))

(assert (=> d!106423 d!106887))

(assert (=> d!106423 d!106885))

(declare-fun d!106889 () Bool)

(assert (=> d!106889 (= ($colon$colon!536 e!464054 (ite c!90334 (h!17134 (toList!4524 (+!1952 lt!377369 lt!377371))) (tuple2!10181 (_1!5100 lt!377372) (_2!5100 lt!377372)))) (Cons!16004 (ite c!90334 (h!17134 (toList!4524 (+!1952 lt!377369 lt!377371))) (tuple2!10181 (_1!5100 lt!377372) (_2!5100 lt!377372))) e!464054))))

(assert (=> bm!36406 d!106889))

(assert (=> d!106269 d!106255))

(declare-fun d!106891 () Bool)

(assert (=> d!106891 (= (apply!373 (+!1952 lt!377559 (tuple2!10181 lt!377550 minValue!754)) lt!377562) (apply!373 lt!377559 lt!377562))))

(assert (=> d!106891 true))

(declare-fun _$34!1149 () Unit!28497)

(assert (=> d!106891 (= (choose!1431 lt!377559 lt!377550 minValue!754 lt!377562) _$34!1149)))

(declare-fun bs!23304 () Bool)

(assert (= bs!23304 d!106891))

(assert (=> bs!23304 m!775919))

(assert (=> bs!23304 m!775919))

(assert (=> bs!23304 m!775929))

(assert (=> bs!23304 m!775921))

(assert (=> d!106269 d!106891))

(declare-fun d!106893 () Bool)

(declare-fun e!464510 () Bool)

(assert (=> d!106893 e!464510))

(declare-fun res!566550 () Bool)

(assert (=> d!106893 (=> res!566550 e!464510)))

(declare-fun lt!377962 () Bool)

(assert (=> d!106893 (= res!566550 (not lt!377962))))

(declare-fun lt!377959 () Bool)

(assert (=> d!106893 (= lt!377962 lt!377959)))

(declare-fun lt!377961 () Unit!28497)

(declare-fun e!464511 () Unit!28497)

(assert (=> d!106893 (= lt!377961 e!464511)))

(declare-fun c!90560 () Bool)

(assert (=> d!106893 (= c!90560 lt!377959)))

(assert (=> d!106893 (= lt!377959 (containsKey!401 (toList!4524 lt!377559) lt!377562))))

(assert (=> d!106893 (= (contains!4212 lt!377559 lt!377562) lt!377962)))

(declare-fun b!832769 () Bool)

(declare-fun lt!377960 () Unit!28497)

(assert (=> b!832769 (= e!464511 lt!377960)))

(assert (=> b!832769 (= lt!377960 (lemmaContainsKeyImpliesGetValueByKeyDefined!311 (toList!4524 lt!377559) lt!377562))))

(assert (=> b!832769 (isDefined!312 (getValueByKey!415 (toList!4524 lt!377559) lt!377562))))

(declare-fun b!832770 () Bool)

(declare-fun Unit!28542 () Unit!28497)

(assert (=> b!832770 (= e!464511 Unit!28542)))

(declare-fun b!832771 () Bool)

(assert (=> b!832771 (= e!464510 (isDefined!312 (getValueByKey!415 (toList!4524 lt!377559) lt!377562)))))

(assert (= (and d!106893 c!90560) b!832769))

(assert (= (and d!106893 (not c!90560)) b!832770))

(assert (= (and d!106893 (not res!566550)) b!832771))

(declare-fun m!777459 () Bool)

(assert (=> d!106893 m!777459))

(declare-fun m!777461 () Bool)

(assert (=> b!832769 m!777461))

(assert (=> b!832769 m!775951))

(assert (=> b!832769 m!775951))

(declare-fun m!777463 () Bool)

(assert (=> b!832769 m!777463))

(assert (=> b!832771 m!775951))

(assert (=> b!832771 m!775951))

(assert (=> b!832771 m!777463))

(assert (=> d!106269 d!106893))

(assert (=> d!106269 d!106271))

(assert (=> d!106269 d!106273))

(assert (=> d!106373 d!106371))

(declare-fun d!106895 () Bool)

(assert (=> d!106895 (= (getValueByKey!415 lt!377453 (_1!5100 lt!377372)) (Some!420 (_2!5100 lt!377372)))))

(assert (=> d!106895 true))

(declare-fun _$22!579 () Unit!28497)

(assert (=> d!106895 (= (choose!1433 lt!377453 (_1!5100 lt!377372) (_2!5100 lt!377372)) _$22!579)))

(declare-fun bs!23305 () Bool)

(assert (= bs!23305 d!106895))

(assert (=> bs!23305 m!775787))

(assert (=> d!106373 d!106895))

(declare-fun d!106897 () Bool)

(declare-fun res!566551 () Bool)

(declare-fun e!464512 () Bool)

(assert (=> d!106897 (=> res!566551 e!464512)))

(assert (=> d!106897 (= res!566551 (or ((_ is Nil!16005) lt!377453) ((_ is Nil!16005) (t!22384 lt!377453))))))

(assert (=> d!106897 (= (isStrictlySorted!438 lt!377453) e!464512)))

(declare-fun b!832772 () Bool)

(declare-fun e!464513 () Bool)

(assert (=> b!832772 (= e!464512 e!464513)))

(declare-fun res!566552 () Bool)

(assert (=> b!832772 (=> (not res!566552) (not e!464513))))

(assert (=> b!832772 (= res!566552 (bvslt (_1!5100 (h!17134 lt!377453)) (_1!5100 (h!17134 (t!22384 lt!377453)))))))

(declare-fun b!832773 () Bool)

(assert (=> b!832773 (= e!464513 (isStrictlySorted!438 (t!22384 lt!377453)))))

(assert (= (and d!106897 (not res!566551)) b!832772))

(assert (= (and b!832772 res!566552) b!832773))

(declare-fun m!777465 () Bool)

(assert (=> b!832773 m!777465))

(assert (=> d!106373 d!106897))

(declare-fun d!106899 () Bool)

(declare-fun e!464514 () Bool)

(assert (=> d!106899 e!464514))

(declare-fun res!566553 () Bool)

(assert (=> d!106899 (=> res!566553 e!464514)))

(declare-fun lt!377966 () Bool)

(assert (=> d!106899 (= res!566553 (not lt!377966))))

(declare-fun lt!377963 () Bool)

(assert (=> d!106899 (= lt!377966 lt!377963)))

(declare-fun lt!377965 () Unit!28497)

(declare-fun e!464515 () Unit!28497)

(assert (=> d!106899 (= lt!377965 e!464515)))

(declare-fun c!90561 () Bool)

(assert (=> d!106899 (= c!90561 lt!377963)))

(assert (=> d!106899 (= lt!377963 (containsKey!401 (toList!4524 lt!377680) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!106899 (= (contains!4212 lt!377680 #b0000000000000000000000000000000000000000000000000000000000000000) lt!377966)))

(declare-fun b!832774 () Bool)

(declare-fun lt!377964 () Unit!28497)

(assert (=> b!832774 (= e!464515 lt!377964)))

(assert (=> b!832774 (= lt!377964 (lemmaContainsKeyImpliesGetValueByKeyDefined!311 (toList!4524 lt!377680) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!832774 (isDefined!312 (getValueByKey!415 (toList!4524 lt!377680) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!832775 () Bool)

(declare-fun Unit!28543 () Unit!28497)

(assert (=> b!832775 (= e!464515 Unit!28543)))

(declare-fun b!832776 () Bool)

(assert (=> b!832776 (= e!464514 (isDefined!312 (getValueByKey!415 (toList!4524 lt!377680) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!106899 c!90561) b!832774))

(assert (= (and d!106899 (not c!90561)) b!832775))

(assert (= (and d!106899 (not res!566553)) b!832776))

(declare-fun m!777467 () Bool)

(assert (=> d!106899 m!777467))

(declare-fun m!777469 () Bool)

(assert (=> b!832774 m!777469))

(declare-fun m!777471 () Bool)

(assert (=> b!832774 m!777471))

(assert (=> b!832774 m!777471))

(declare-fun m!777473 () Bool)

(assert (=> b!832774 m!777473))

(assert (=> b!832776 m!777471))

(assert (=> b!832776 m!777471))

(assert (=> b!832776 m!777473))

(assert (=> d!106359 d!106899))

(assert (=> d!106359 d!106233))

(declare-fun d!106901 () Bool)

(declare-fun lt!377967 () Bool)

(assert (=> d!106901 (= lt!377967 (select (content!390 lt!377409) (tuple2!10181 (_1!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)) (_2!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))))))

(declare-fun e!464516 () Bool)

(assert (=> d!106901 (= lt!377967 e!464516)))

(declare-fun res!566554 () Bool)

(assert (=> d!106901 (=> (not res!566554) (not e!464516))))

(assert (=> d!106901 (= res!566554 ((_ is Cons!16004) lt!377409))))

(assert (=> d!106901 (= (contains!4213 lt!377409 (tuple2!10181 (_1!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)) (_2!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))) lt!377967)))

(declare-fun b!832777 () Bool)

(declare-fun e!464517 () Bool)

(assert (=> b!832777 (= e!464516 e!464517)))

(declare-fun res!566555 () Bool)

(assert (=> b!832777 (=> res!566555 e!464517)))

(assert (=> b!832777 (= res!566555 (= (h!17134 lt!377409) (tuple2!10181 (_1!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)) (_2!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))))))

(declare-fun b!832778 () Bool)

(assert (=> b!832778 (= e!464517 (contains!4213 (t!22384 lt!377409) (tuple2!10181 (_1!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)) (_2!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))))))

(assert (= (and d!106901 res!566554) b!832777))

(assert (= (and b!832777 (not res!566555)) b!832778))

(declare-fun m!777475 () Bool)

(assert (=> d!106901 m!777475))

(declare-fun m!777477 () Bool)

(assert (=> d!106901 m!777477))

(declare-fun m!777479 () Bool)

(assert (=> b!832778 m!777479))

(assert (=> b!831926 d!106901))

(assert (=> b!831964 d!106611))

(declare-fun d!106903 () Bool)

(declare-fun c!90562 () Bool)

(assert (=> d!106903 (= c!90562 ((_ is Nil!16005) (toList!4524 lt!377407)))))

(declare-fun e!464518 () (InoxSet tuple2!10180))

(assert (=> d!106903 (= (content!390 (toList!4524 lt!377407)) e!464518)))

(declare-fun b!832779 () Bool)

(assert (=> b!832779 (= e!464518 ((as const (Array tuple2!10180 Bool)) false))))

(declare-fun b!832780 () Bool)

(assert (=> b!832780 (= e!464518 ((_ map or) (store ((as const (Array tuple2!10180 Bool)) false) (h!17134 (toList!4524 lt!377407)) true) (content!390 (t!22384 (toList!4524 lt!377407)))))))

(assert (= (and d!106903 c!90562) b!832779))

(assert (= (and d!106903 (not c!90562)) b!832780))

(declare-fun m!777481 () Bool)

(assert (=> b!832780 m!777481))

(assert (=> b!832780 m!776969))

(assert (=> d!106497 d!106903))

(assert (=> b!832144 d!106709))

(assert (=> b!832144 d!106449))

(declare-fun d!106905 () Bool)

(declare-fun e!464519 () Bool)

(assert (=> d!106905 e!464519))

(declare-fun res!566556 () Bool)

(assert (=> d!106905 (=> res!566556 e!464519)))

(declare-fun lt!377971 () Bool)

(assert (=> d!106905 (= res!566556 (not lt!377971))))

(declare-fun lt!377968 () Bool)

(assert (=> d!106905 (= lt!377971 lt!377968)))

(declare-fun lt!377970 () Unit!28497)

(declare-fun e!464520 () Unit!28497)

(assert (=> d!106905 (= lt!377970 e!464520)))

(declare-fun c!90563 () Bool)

(assert (=> d!106905 (= c!90563 lt!377968)))

(assert (=> d!106905 (= lt!377968 (containsKey!401 (toList!4524 lt!377660) (_1!5100 (tuple2!10181 lt!377516 minValue!754))))))

(assert (=> d!106905 (= (contains!4212 lt!377660 (_1!5100 (tuple2!10181 lt!377516 minValue!754))) lt!377971)))

(declare-fun b!832781 () Bool)

(declare-fun lt!377969 () Unit!28497)

(assert (=> b!832781 (= e!464520 lt!377969)))

(assert (=> b!832781 (= lt!377969 (lemmaContainsKeyImpliesGetValueByKeyDefined!311 (toList!4524 lt!377660) (_1!5100 (tuple2!10181 lt!377516 minValue!754))))))

(assert (=> b!832781 (isDefined!312 (getValueByKey!415 (toList!4524 lt!377660) (_1!5100 (tuple2!10181 lt!377516 minValue!754))))))

(declare-fun b!832782 () Bool)

(declare-fun Unit!28544 () Unit!28497)

(assert (=> b!832782 (= e!464520 Unit!28544)))

(declare-fun b!832783 () Bool)

(assert (=> b!832783 (= e!464519 (isDefined!312 (getValueByKey!415 (toList!4524 lt!377660) (_1!5100 (tuple2!10181 lt!377516 minValue!754)))))))

(assert (= (and d!106905 c!90563) b!832781))

(assert (= (and d!106905 (not c!90563)) b!832782))

(assert (= (and d!106905 (not res!566556)) b!832783))

(declare-fun m!777483 () Bool)

(assert (=> d!106905 m!777483))

(declare-fun m!777485 () Bool)

(assert (=> b!832781 m!777485))

(assert (=> b!832781 m!776259))

(assert (=> b!832781 m!776259))

(declare-fun m!777487 () Bool)

(assert (=> b!832781 m!777487))

(assert (=> b!832783 m!776259))

(assert (=> b!832783 m!776259))

(assert (=> b!832783 m!777487))

(assert (=> d!106345 d!106905))

(declare-fun d!106907 () Bool)

(declare-fun c!90564 () Bool)

(assert (=> d!106907 (= c!90564 (and ((_ is Cons!16004) lt!377662) (= (_1!5100 (h!17134 lt!377662)) (_1!5100 (tuple2!10181 lt!377516 minValue!754)))))))

(declare-fun e!464521 () Option!421)

(assert (=> d!106907 (= (getValueByKey!415 lt!377662 (_1!5100 (tuple2!10181 lt!377516 minValue!754))) e!464521)))

(declare-fun b!832784 () Bool)

(assert (=> b!832784 (= e!464521 (Some!420 (_2!5100 (h!17134 lt!377662))))))

(declare-fun b!832787 () Bool)

(declare-fun e!464522 () Option!421)

(assert (=> b!832787 (= e!464522 None!419)))

(declare-fun b!832785 () Bool)

(assert (=> b!832785 (= e!464521 e!464522)))

(declare-fun c!90565 () Bool)

(assert (=> b!832785 (= c!90565 (and ((_ is Cons!16004) lt!377662) (not (= (_1!5100 (h!17134 lt!377662)) (_1!5100 (tuple2!10181 lt!377516 minValue!754))))))))

(declare-fun b!832786 () Bool)

(assert (=> b!832786 (= e!464522 (getValueByKey!415 (t!22384 lt!377662) (_1!5100 (tuple2!10181 lt!377516 minValue!754))))))

(assert (= (and d!106907 c!90564) b!832784))

(assert (= (and d!106907 (not c!90564)) b!832785))

(assert (= (and b!832785 c!90565) b!832786))

(assert (= (and b!832785 (not c!90565)) b!832787))

(declare-fun m!777489 () Bool)

(assert (=> b!832786 m!777489))

(assert (=> d!106345 d!106907))

(declare-fun d!106909 () Bool)

(assert (=> d!106909 (= (getValueByKey!415 lt!377662 (_1!5100 (tuple2!10181 lt!377516 minValue!754))) (Some!420 (_2!5100 (tuple2!10181 lt!377516 minValue!754))))))

(declare-fun lt!377972 () Unit!28497)

(assert (=> d!106909 (= lt!377972 (choose!1433 lt!377662 (_1!5100 (tuple2!10181 lt!377516 minValue!754)) (_2!5100 (tuple2!10181 lt!377516 minValue!754))))))

(declare-fun e!464523 () Bool)

(assert (=> d!106909 e!464523))

(declare-fun res!566557 () Bool)

(assert (=> d!106909 (=> (not res!566557) (not e!464523))))

(assert (=> d!106909 (= res!566557 (isStrictlySorted!438 lt!377662))))

(assert (=> d!106909 (= (lemmaContainsTupThenGetReturnValue!231 lt!377662 (_1!5100 (tuple2!10181 lt!377516 minValue!754)) (_2!5100 (tuple2!10181 lt!377516 minValue!754))) lt!377972)))

(declare-fun b!832788 () Bool)

(declare-fun res!566558 () Bool)

(assert (=> b!832788 (=> (not res!566558) (not e!464523))))

(assert (=> b!832788 (= res!566558 (containsKey!401 lt!377662 (_1!5100 (tuple2!10181 lt!377516 minValue!754))))))

(declare-fun b!832789 () Bool)

(assert (=> b!832789 (= e!464523 (contains!4213 lt!377662 (tuple2!10181 (_1!5100 (tuple2!10181 lt!377516 minValue!754)) (_2!5100 (tuple2!10181 lt!377516 minValue!754)))))))

(assert (= (and d!106909 res!566557) b!832788))

(assert (= (and b!832788 res!566558) b!832789))

(assert (=> d!106909 m!776253))

(declare-fun m!777491 () Bool)

(assert (=> d!106909 m!777491))

(declare-fun m!777493 () Bool)

(assert (=> d!106909 m!777493))

(declare-fun m!777495 () Bool)

(assert (=> b!832788 m!777495))

(declare-fun m!777497 () Bool)

(assert (=> b!832789 m!777497))

(assert (=> d!106345 d!106909))

(declare-fun b!832790 () Bool)

(declare-fun e!464528 () List!16008)

(declare-fun call!36458 () List!16008)

(assert (=> b!832790 (= e!464528 call!36458)))

(declare-fun b!832791 () Bool)

(declare-fun res!566559 () Bool)

(declare-fun e!464525 () Bool)

(assert (=> b!832791 (=> (not res!566559) (not e!464525))))

(declare-fun lt!377973 () List!16008)

(assert (=> b!832791 (= res!566559 (containsKey!401 lt!377973 (_1!5100 (tuple2!10181 lt!377516 minValue!754))))))

(declare-fun c!90567 () Bool)

(declare-fun b!832792 () Bool)

(declare-fun e!464527 () List!16008)

(declare-fun c!90569 () Bool)

(assert (=> b!832792 (= e!464527 (ite c!90567 (t!22384 (toList!4524 lt!377525)) (ite c!90569 (Cons!16004 (h!17134 (toList!4524 lt!377525)) (t!22384 (toList!4524 lt!377525))) Nil!16005)))))

(declare-fun b!832793 () Bool)

(declare-fun e!464524 () List!16008)

(assert (=> b!832793 (= e!464524 e!464528)))

(assert (=> b!832793 (= c!90567 (and ((_ is Cons!16004) (toList!4524 lt!377525)) (= (_1!5100 (h!17134 (toList!4524 lt!377525))) (_1!5100 (tuple2!10181 lt!377516 minValue!754)))))))

(declare-fun b!832794 () Bool)

(assert (=> b!832794 (= e!464527 (insertStrictlySorted!269 (t!22384 (toList!4524 lt!377525)) (_1!5100 (tuple2!10181 lt!377516 minValue!754)) (_2!5100 (tuple2!10181 lt!377516 minValue!754))))))

(declare-fun bm!36454 () Bool)

(declare-fun call!36459 () List!16008)

(assert (=> bm!36454 (= call!36458 call!36459)))

(declare-fun b!832795 () Bool)

(assert (=> b!832795 (= e!464525 (contains!4213 lt!377973 (tuple2!10181 (_1!5100 (tuple2!10181 lt!377516 minValue!754)) (_2!5100 (tuple2!10181 lt!377516 minValue!754)))))))

(declare-fun b!832796 () Bool)

(declare-fun e!464526 () List!16008)

(declare-fun call!36457 () List!16008)

(assert (=> b!832796 (= e!464526 call!36457)))

(declare-fun b!832797 () Bool)

(assert (=> b!832797 (= c!90569 (and ((_ is Cons!16004) (toList!4524 lt!377525)) (bvsgt (_1!5100 (h!17134 (toList!4524 lt!377525))) (_1!5100 (tuple2!10181 lt!377516 minValue!754)))))))

(assert (=> b!832797 (= e!464528 e!464526)))

(declare-fun d!106911 () Bool)

(assert (=> d!106911 e!464525))

(declare-fun res!566560 () Bool)

(assert (=> d!106911 (=> (not res!566560) (not e!464525))))

(assert (=> d!106911 (= res!566560 (isStrictlySorted!438 lt!377973))))

(assert (=> d!106911 (= lt!377973 e!464524)))

(declare-fun c!90568 () Bool)

(assert (=> d!106911 (= c!90568 (and ((_ is Cons!16004) (toList!4524 lt!377525)) (bvslt (_1!5100 (h!17134 (toList!4524 lt!377525))) (_1!5100 (tuple2!10181 lt!377516 minValue!754)))))))

(assert (=> d!106911 (isStrictlySorted!438 (toList!4524 lt!377525))))

(assert (=> d!106911 (= (insertStrictlySorted!269 (toList!4524 lt!377525) (_1!5100 (tuple2!10181 lt!377516 minValue!754)) (_2!5100 (tuple2!10181 lt!377516 minValue!754))) lt!377973)))

(declare-fun b!832798 () Bool)

(assert (=> b!832798 (= e!464526 call!36457)))

(declare-fun bm!36455 () Bool)

(assert (=> bm!36455 (= call!36459 ($colon$colon!536 e!464527 (ite c!90568 (h!17134 (toList!4524 lt!377525)) (tuple2!10181 (_1!5100 (tuple2!10181 lt!377516 minValue!754)) (_2!5100 (tuple2!10181 lt!377516 minValue!754))))))))

(declare-fun c!90566 () Bool)

(assert (=> bm!36455 (= c!90566 c!90568)))

(declare-fun bm!36456 () Bool)

(assert (=> bm!36456 (= call!36457 call!36458)))

(declare-fun b!832799 () Bool)

(assert (=> b!832799 (= e!464524 call!36459)))

(assert (= (and d!106911 c!90568) b!832799))

(assert (= (and d!106911 (not c!90568)) b!832793))

(assert (= (and b!832793 c!90567) b!832790))

(assert (= (and b!832793 (not c!90567)) b!832797))

(assert (= (and b!832797 c!90569) b!832796))

(assert (= (and b!832797 (not c!90569)) b!832798))

(assert (= (or b!832796 b!832798) bm!36456))

(assert (= (or b!832790 bm!36456) bm!36454))

(assert (= (or b!832799 bm!36454) bm!36455))

(assert (= (and bm!36455 c!90566) b!832794))

(assert (= (and bm!36455 (not c!90566)) b!832792))

(assert (= (and d!106911 res!566560) b!832791))

(assert (= (and b!832791 res!566559) b!832795))

(declare-fun m!777499 () Bool)

(assert (=> b!832791 m!777499))

(declare-fun m!777501 () Bool)

(assert (=> b!832794 m!777501))

(declare-fun m!777503 () Bool)

(assert (=> d!106911 m!777503))

(declare-fun m!777505 () Bool)

(assert (=> d!106911 m!777505))

(declare-fun m!777507 () Bool)

(assert (=> b!832795 m!777507))

(declare-fun m!777509 () Bool)

(assert (=> bm!36455 m!777509))

(assert (=> d!106345 d!106911))

(declare-fun d!106913 () Bool)

(declare-fun e!464529 () Bool)

(assert (=> d!106913 e!464529))

(declare-fun res!566561 () Bool)

(assert (=> d!106913 (=> res!566561 e!464529)))

(declare-fun lt!377977 () Bool)

(assert (=> d!106913 (= res!566561 (not lt!377977))))

(declare-fun lt!377974 () Bool)

(assert (=> d!106913 (= lt!377977 lt!377974)))

(declare-fun lt!377976 () Unit!28497)

(declare-fun e!464530 () Unit!28497)

(assert (=> d!106913 (= lt!377976 e!464530)))

(declare-fun c!90570 () Bool)

(assert (=> d!106913 (= c!90570 lt!377974)))

(assert (=> d!106913 (= lt!377974 (containsKey!401 (toList!4524 lt!377747) (_1!5100 (tuple2!10181 (select (arr!22317 _keys!976) #b00000000000000000000000000000000) (get!11828 (select (arr!22318 _values!788) #b00000000000000000000000000000000) (dynLambda!983 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!106913 (= (contains!4212 lt!377747 (_1!5100 (tuple2!10181 (select (arr!22317 _keys!976) #b00000000000000000000000000000000) (get!11828 (select (arr!22318 _values!788) #b00000000000000000000000000000000) (dynLambda!983 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))) lt!377977)))

(declare-fun b!832800 () Bool)

(declare-fun lt!377975 () Unit!28497)

(assert (=> b!832800 (= e!464530 lt!377975)))

(assert (=> b!832800 (= lt!377975 (lemmaContainsKeyImpliesGetValueByKeyDefined!311 (toList!4524 lt!377747) (_1!5100 (tuple2!10181 (select (arr!22317 _keys!976) #b00000000000000000000000000000000) (get!11828 (select (arr!22318 _values!788) #b00000000000000000000000000000000) (dynLambda!983 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> b!832800 (isDefined!312 (getValueByKey!415 (toList!4524 lt!377747) (_1!5100 (tuple2!10181 (select (arr!22317 _keys!976) #b00000000000000000000000000000000) (get!11828 (select (arr!22318 _values!788) #b00000000000000000000000000000000) (dynLambda!983 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun b!832801 () Bool)

(declare-fun Unit!28545 () Unit!28497)

(assert (=> b!832801 (= e!464530 Unit!28545)))

(declare-fun b!832802 () Bool)

(assert (=> b!832802 (= e!464529 (isDefined!312 (getValueByKey!415 (toList!4524 lt!377747) (_1!5100 (tuple2!10181 (select (arr!22317 _keys!976) #b00000000000000000000000000000000) (get!11828 (select (arr!22318 _values!788) #b00000000000000000000000000000000) (dynLambda!983 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(assert (= (and d!106913 c!90570) b!832800))

(assert (= (and d!106913 (not c!90570)) b!832801))

(assert (= (and d!106913 (not res!566561)) b!832802))

(declare-fun m!777511 () Bool)

(assert (=> d!106913 m!777511))

(declare-fun m!777513 () Bool)

(assert (=> b!832800 m!777513))

(assert (=> b!832800 m!776571))

(assert (=> b!832800 m!776571))

(declare-fun m!777515 () Bool)

(assert (=> b!832800 m!777515))

(assert (=> b!832802 m!776571))

(assert (=> b!832802 m!776571))

(assert (=> b!832802 m!777515))

(assert (=> d!106439 d!106913))

(declare-fun d!106915 () Bool)

(declare-fun c!90571 () Bool)

(assert (=> d!106915 (= c!90571 (and ((_ is Cons!16004) lt!377749) (= (_1!5100 (h!17134 lt!377749)) (_1!5100 (tuple2!10181 (select (arr!22317 _keys!976) #b00000000000000000000000000000000) (get!11828 (select (arr!22318 _values!788) #b00000000000000000000000000000000) (dynLambda!983 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun e!464531 () Option!421)

(assert (=> d!106915 (= (getValueByKey!415 lt!377749 (_1!5100 (tuple2!10181 (select (arr!22317 _keys!976) #b00000000000000000000000000000000) (get!11828 (select (arr!22318 _values!788) #b00000000000000000000000000000000) (dynLambda!983 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))) e!464531)))

(declare-fun b!832803 () Bool)

(assert (=> b!832803 (= e!464531 (Some!420 (_2!5100 (h!17134 lt!377749))))))

(declare-fun b!832806 () Bool)

(declare-fun e!464532 () Option!421)

(assert (=> b!832806 (= e!464532 None!419)))

(declare-fun b!832804 () Bool)

(assert (=> b!832804 (= e!464531 e!464532)))

(declare-fun c!90572 () Bool)

(assert (=> b!832804 (= c!90572 (and ((_ is Cons!16004) lt!377749) (not (= (_1!5100 (h!17134 lt!377749)) (_1!5100 (tuple2!10181 (select (arr!22317 _keys!976) #b00000000000000000000000000000000) (get!11828 (select (arr!22318 _values!788) #b00000000000000000000000000000000) (dynLambda!983 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))))))))

(declare-fun b!832805 () Bool)

(assert (=> b!832805 (= e!464532 (getValueByKey!415 (t!22384 lt!377749) (_1!5100 (tuple2!10181 (select (arr!22317 _keys!976) #b00000000000000000000000000000000) (get!11828 (select (arr!22318 _values!788) #b00000000000000000000000000000000) (dynLambda!983 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (= (and d!106915 c!90571) b!832803))

(assert (= (and d!106915 (not c!90571)) b!832804))

(assert (= (and b!832804 c!90572) b!832805))

(assert (= (and b!832804 (not c!90572)) b!832806))

(declare-fun m!777517 () Bool)

(assert (=> b!832805 m!777517))

(assert (=> d!106439 d!106915))

(declare-fun d!106917 () Bool)

(assert (=> d!106917 (= (getValueByKey!415 lt!377749 (_1!5100 (tuple2!10181 (select (arr!22317 _keys!976) #b00000000000000000000000000000000) (get!11828 (select (arr!22318 _values!788) #b00000000000000000000000000000000) (dynLambda!983 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!420 (_2!5100 (tuple2!10181 (select (arr!22317 _keys!976) #b00000000000000000000000000000000) (get!11828 (select (arr!22318 _values!788) #b00000000000000000000000000000000) (dynLambda!983 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun lt!377978 () Unit!28497)

(assert (=> d!106917 (= lt!377978 (choose!1433 lt!377749 (_1!5100 (tuple2!10181 (select (arr!22317 _keys!976) #b00000000000000000000000000000000) (get!11828 (select (arr!22318 _values!788) #b00000000000000000000000000000000) (dynLambda!983 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!5100 (tuple2!10181 (select (arr!22317 _keys!976) #b00000000000000000000000000000000) (get!11828 (select (arr!22318 _values!788) #b00000000000000000000000000000000) (dynLambda!983 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!464533 () Bool)

(assert (=> d!106917 e!464533))

(declare-fun res!566562 () Bool)

(assert (=> d!106917 (=> (not res!566562) (not e!464533))))

(assert (=> d!106917 (= res!566562 (isStrictlySorted!438 lt!377749))))

(assert (=> d!106917 (= (lemmaContainsTupThenGetReturnValue!231 lt!377749 (_1!5100 (tuple2!10181 (select (arr!22317 _keys!976) #b00000000000000000000000000000000) (get!11828 (select (arr!22318 _values!788) #b00000000000000000000000000000000) (dynLambda!983 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!5100 (tuple2!10181 (select (arr!22317 _keys!976) #b00000000000000000000000000000000) (get!11828 (select (arr!22318 _values!788) #b00000000000000000000000000000000) (dynLambda!983 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))) lt!377978)))

(declare-fun b!832807 () Bool)

(declare-fun res!566563 () Bool)

(assert (=> b!832807 (=> (not res!566563) (not e!464533))))

(assert (=> b!832807 (= res!566563 (containsKey!401 lt!377749 (_1!5100 (tuple2!10181 (select (arr!22317 _keys!976) #b00000000000000000000000000000000) (get!11828 (select (arr!22318 _values!788) #b00000000000000000000000000000000) (dynLambda!983 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun b!832808 () Bool)

(assert (=> b!832808 (= e!464533 (contains!4213 lt!377749 (tuple2!10181 (_1!5100 (tuple2!10181 (select (arr!22317 _keys!976) #b00000000000000000000000000000000) (get!11828 (select (arr!22318 _values!788) #b00000000000000000000000000000000) (dynLambda!983 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!5100 (tuple2!10181 (select (arr!22317 _keys!976) #b00000000000000000000000000000000) (get!11828 (select (arr!22318 _values!788) #b00000000000000000000000000000000) (dynLambda!983 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(assert (= (and d!106917 res!566562) b!832807))

(assert (= (and b!832807 res!566563) b!832808))

(assert (=> d!106917 m!776565))

(declare-fun m!777519 () Bool)

(assert (=> d!106917 m!777519))

(declare-fun m!777521 () Bool)

(assert (=> d!106917 m!777521))

(declare-fun m!777523 () Bool)

(assert (=> b!832807 m!777523))

(declare-fun m!777525 () Bool)

(assert (=> b!832808 m!777525))

(assert (=> d!106439 d!106917))

(declare-fun b!832809 () Bool)

(declare-fun e!464538 () List!16008)

(declare-fun call!36461 () List!16008)

(assert (=> b!832809 (= e!464538 call!36461)))

(declare-fun b!832810 () Bool)

(declare-fun res!566564 () Bool)

(declare-fun e!464535 () Bool)

(assert (=> b!832810 (=> (not res!566564) (not e!464535))))

(declare-fun lt!377979 () List!16008)

(assert (=> b!832810 (= res!566564 (containsKey!401 lt!377979 (_1!5100 (tuple2!10181 (select (arr!22317 _keys!976) #b00000000000000000000000000000000) (get!11828 (select (arr!22318 _values!788) #b00000000000000000000000000000000) (dynLambda!983 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!464537 () List!16008)

(declare-fun c!90574 () Bool)

(declare-fun c!90576 () Bool)

(declare-fun b!832811 () Bool)

(assert (=> b!832811 (= e!464537 (ite c!90574 (t!22384 (toList!4524 call!36367)) (ite c!90576 (Cons!16004 (h!17134 (toList!4524 call!36367)) (t!22384 (toList!4524 call!36367))) Nil!16005)))))

(declare-fun b!832812 () Bool)

(declare-fun e!464534 () List!16008)

(assert (=> b!832812 (= e!464534 e!464538)))

(assert (=> b!832812 (= c!90574 (and ((_ is Cons!16004) (toList!4524 call!36367)) (= (_1!5100 (h!17134 (toList!4524 call!36367))) (_1!5100 (tuple2!10181 (select (arr!22317 _keys!976) #b00000000000000000000000000000000) (get!11828 (select (arr!22318 _values!788) #b00000000000000000000000000000000) (dynLambda!983 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun b!832813 () Bool)

(assert (=> b!832813 (= e!464537 (insertStrictlySorted!269 (t!22384 (toList!4524 call!36367)) (_1!5100 (tuple2!10181 (select (arr!22317 _keys!976) #b00000000000000000000000000000000) (get!11828 (select (arr!22318 _values!788) #b00000000000000000000000000000000) (dynLambda!983 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!5100 (tuple2!10181 (select (arr!22317 _keys!976) #b00000000000000000000000000000000) (get!11828 (select (arr!22318 _values!788) #b00000000000000000000000000000000) (dynLambda!983 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun bm!36457 () Bool)

(declare-fun call!36462 () List!16008)

(assert (=> bm!36457 (= call!36461 call!36462)))

(declare-fun b!832814 () Bool)

(assert (=> b!832814 (= e!464535 (contains!4213 lt!377979 (tuple2!10181 (_1!5100 (tuple2!10181 (select (arr!22317 _keys!976) #b00000000000000000000000000000000) (get!11828 (select (arr!22318 _values!788) #b00000000000000000000000000000000) (dynLambda!983 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!5100 (tuple2!10181 (select (arr!22317 _keys!976) #b00000000000000000000000000000000) (get!11828 (select (arr!22318 _values!788) #b00000000000000000000000000000000) (dynLambda!983 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun b!832815 () Bool)

(declare-fun e!464536 () List!16008)

(declare-fun call!36460 () List!16008)

(assert (=> b!832815 (= e!464536 call!36460)))

(declare-fun b!832816 () Bool)

(assert (=> b!832816 (= c!90576 (and ((_ is Cons!16004) (toList!4524 call!36367)) (bvsgt (_1!5100 (h!17134 (toList!4524 call!36367))) (_1!5100 (tuple2!10181 (select (arr!22317 _keys!976) #b00000000000000000000000000000000) (get!11828 (select (arr!22318 _values!788) #b00000000000000000000000000000000) (dynLambda!983 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(assert (=> b!832816 (= e!464538 e!464536)))

(declare-fun d!106919 () Bool)

(assert (=> d!106919 e!464535))

(declare-fun res!566565 () Bool)

(assert (=> d!106919 (=> (not res!566565) (not e!464535))))

(assert (=> d!106919 (= res!566565 (isStrictlySorted!438 lt!377979))))

(assert (=> d!106919 (= lt!377979 e!464534)))

(declare-fun c!90575 () Bool)

(assert (=> d!106919 (= c!90575 (and ((_ is Cons!16004) (toList!4524 call!36367)) (bvslt (_1!5100 (h!17134 (toList!4524 call!36367))) (_1!5100 (tuple2!10181 (select (arr!22317 _keys!976) #b00000000000000000000000000000000) (get!11828 (select (arr!22318 _values!788) #b00000000000000000000000000000000) (dynLambda!983 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(assert (=> d!106919 (isStrictlySorted!438 (toList!4524 call!36367))))

(assert (=> d!106919 (= (insertStrictlySorted!269 (toList!4524 call!36367) (_1!5100 (tuple2!10181 (select (arr!22317 _keys!976) #b00000000000000000000000000000000) (get!11828 (select (arr!22318 _values!788) #b00000000000000000000000000000000) (dynLambda!983 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!5100 (tuple2!10181 (select (arr!22317 _keys!976) #b00000000000000000000000000000000) (get!11828 (select (arr!22318 _values!788) #b00000000000000000000000000000000) (dynLambda!983 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))) lt!377979)))

(declare-fun b!832817 () Bool)

(assert (=> b!832817 (= e!464536 call!36460)))

(declare-fun bm!36458 () Bool)

(assert (=> bm!36458 (= call!36462 ($colon$colon!536 e!464537 (ite c!90575 (h!17134 (toList!4524 call!36367)) (tuple2!10181 (_1!5100 (tuple2!10181 (select (arr!22317 _keys!976) #b00000000000000000000000000000000) (get!11828 (select (arr!22318 _values!788) #b00000000000000000000000000000000) (dynLambda!983 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!5100 (tuple2!10181 (select (arr!22317 _keys!976) #b00000000000000000000000000000000) (get!11828 (select (arr!22318 _values!788) #b00000000000000000000000000000000) (dynLambda!983 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))))))))

(declare-fun c!90573 () Bool)

(assert (=> bm!36458 (= c!90573 c!90575)))

(declare-fun bm!36459 () Bool)

(assert (=> bm!36459 (= call!36460 call!36461)))

(declare-fun b!832818 () Bool)

(assert (=> b!832818 (= e!464534 call!36462)))

(assert (= (and d!106919 c!90575) b!832818))

(assert (= (and d!106919 (not c!90575)) b!832812))

(assert (= (and b!832812 c!90574) b!832809))

(assert (= (and b!832812 (not c!90574)) b!832816))

(assert (= (and b!832816 c!90576) b!832815))

(assert (= (and b!832816 (not c!90576)) b!832817))

(assert (= (or b!832815 b!832817) bm!36459))

(assert (= (or b!832809 bm!36459) bm!36457))

(assert (= (or b!832818 bm!36457) bm!36458))

(assert (= (and bm!36458 c!90573) b!832813))

(assert (= (and bm!36458 (not c!90573)) b!832811))

(assert (= (and d!106919 res!566565) b!832810))

(assert (= (and b!832810 res!566564) b!832814))

(declare-fun m!777527 () Bool)

(assert (=> b!832810 m!777527))

(declare-fun m!777529 () Bool)

(assert (=> b!832813 m!777529))

(declare-fun m!777531 () Bool)

(assert (=> d!106919 m!777531))

(declare-fun m!777533 () Bool)

(assert (=> d!106919 m!777533))

(declare-fun m!777535 () Bool)

(assert (=> b!832814 m!777535))

(declare-fun m!777537 () Bool)

(assert (=> bm!36458 m!777537))

(assert (=> d!106439 d!106919))

(declare-fun d!106921 () Bool)

(assert (=> d!106921 (= (get!11829 (getValueByKey!415 (toList!4524 lt!377508) #b0000000000000000000000000000000000000000000000000000000000000000)) (v!10097 (getValueByKey!415 (toList!4524 lt!377508) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!106433 d!106921))

(assert (=> d!106433 d!106569))

(declare-fun d!106923 () Bool)

(assert (=> d!106923 (= (get!11831 (select (arr!22318 _values!788) #b00000000000000000000000000000000) (dynLambda!983 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)) (dynLambda!983 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!831990 d!106923))

(declare-fun d!106925 () Bool)

(declare-fun res!566566 () Bool)

(declare-fun e!464539 () Bool)

(assert (=> d!106925 (=> res!566566 e!464539)))

(assert (=> d!106925 (= res!566566 (and ((_ is Cons!16004) (toList!4524 lt!377449)) (= (_1!5100 (h!17134 (toList!4524 lt!377449))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!106925 (= (containsKey!401 (toList!4524 lt!377449) #b0000000000000000000000000000000000000000000000000000000000000000) e!464539)))

(declare-fun b!832819 () Bool)

(declare-fun e!464540 () Bool)

(assert (=> b!832819 (= e!464539 e!464540)))

(declare-fun res!566567 () Bool)

(assert (=> b!832819 (=> (not res!566567) (not e!464540))))

(assert (=> b!832819 (= res!566567 (and (or (not ((_ is Cons!16004) (toList!4524 lt!377449))) (bvsle (_1!5100 (h!17134 (toList!4524 lt!377449))) #b0000000000000000000000000000000000000000000000000000000000000000)) ((_ is Cons!16004) (toList!4524 lt!377449)) (bvslt (_1!5100 (h!17134 (toList!4524 lt!377449))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!832820 () Bool)

(assert (=> b!832820 (= e!464540 (containsKey!401 (t!22384 (toList!4524 lt!377449)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!106925 (not res!566566)) b!832819))

(assert (= (and b!832819 res!566567) b!832820))

(declare-fun m!777539 () Bool)

(assert (=> b!832820 m!777539))

(assert (=> d!106285 d!106925))

(declare-fun d!106927 () Bool)

(declare-fun res!566568 () Bool)

(declare-fun e!464541 () Bool)

(assert (=> d!106927 (=> res!566568 e!464541)))

(assert (=> d!106927 (= res!566568 (or ((_ is Nil!16005) lt!377718) ((_ is Nil!16005) (t!22384 lt!377718))))))

(assert (=> d!106927 (= (isStrictlySorted!438 lt!377718) e!464541)))

(declare-fun b!832821 () Bool)

(declare-fun e!464542 () Bool)

(assert (=> b!832821 (= e!464541 e!464542)))

(declare-fun res!566569 () Bool)

(assert (=> b!832821 (=> (not res!566569) (not e!464542))))

(assert (=> b!832821 (= res!566569 (bvslt (_1!5100 (h!17134 lt!377718)) (_1!5100 (h!17134 (t!22384 lt!377718)))))))

(declare-fun b!832822 () Bool)

(assert (=> b!832822 (= e!464542 (isStrictlySorted!438 (t!22384 lt!377718)))))

(assert (= (and d!106927 (not res!566568)) b!832821))

(assert (= (and b!832821 res!566569) b!832822))

(declare-fun m!777541 () Bool)

(assert (=> b!832822 m!777541))

(assert (=> d!106397 d!106927))

(declare-fun d!106929 () Bool)

(declare-fun res!566570 () Bool)

(declare-fun e!464543 () Bool)

(assert (=> d!106929 (=> res!566570 e!464543)))

(assert (=> d!106929 (= res!566570 (or ((_ is Nil!16005) (toList!4524 (+!1952 lt!377369 lt!377372))) ((_ is Nil!16005) (t!22384 (toList!4524 (+!1952 lt!377369 lt!377372))))))))

(assert (=> d!106929 (= (isStrictlySorted!438 (toList!4524 (+!1952 lt!377369 lt!377372))) e!464543)))

(declare-fun b!832823 () Bool)

(declare-fun e!464544 () Bool)

(assert (=> b!832823 (= e!464543 e!464544)))

(declare-fun res!566571 () Bool)

(assert (=> b!832823 (=> (not res!566571) (not e!464544))))

(assert (=> b!832823 (= res!566571 (bvslt (_1!5100 (h!17134 (toList!4524 (+!1952 lt!377369 lt!377372)))) (_1!5100 (h!17134 (t!22384 (toList!4524 (+!1952 lt!377369 lt!377372)))))))))

(declare-fun b!832824 () Bool)

(assert (=> b!832824 (= e!464544 (isStrictlySorted!438 (t!22384 (toList!4524 (+!1952 lt!377369 lt!377372)))))))

(assert (= (and d!106929 (not res!566570)) b!832823))

(assert (= (and b!832823 res!566571) b!832824))

(assert (=> b!832824 m!776963))

(assert (=> d!106397 d!106929))

(declare-fun d!106931 () Bool)

(declare-fun c!90577 () Bool)

(assert (=> d!106931 (= c!90577 ((_ is Nil!16005) (toList!4524 lt!377529)))))

(declare-fun e!464545 () (InoxSet tuple2!10180))

(assert (=> d!106931 (= (content!390 (toList!4524 lt!377529)) e!464545)))

(declare-fun b!832825 () Bool)

(assert (=> b!832825 (= e!464545 ((as const (Array tuple2!10180 Bool)) false))))

(declare-fun b!832826 () Bool)

(assert (=> b!832826 (= e!464545 ((_ map or) (store ((as const (Array tuple2!10180 Bool)) false) (h!17134 (toList!4524 lt!377529)) true) (content!390 (t!22384 (toList!4524 lt!377529)))))))

(assert (= (and d!106931 c!90577) b!832825))

(assert (= (and d!106931 (not c!90577)) b!832826))

(declare-fun m!777543 () Bool)

(assert (=> b!832826 m!777543))

(declare-fun m!777545 () Bool)

(assert (=> b!832826 m!777545))

(assert (=> d!106303 d!106931))

(declare-fun d!106933 () Bool)

(assert (=> d!106933 (= (apply!373 lt!377680 (select (arr!22317 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))) (get!11829 (getValueByKey!415 (toList!4524 lt!377680) (select (arr!22317 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))))

(declare-fun bs!23306 () Bool)

(assert (= bs!23306 d!106933))

(assert (=> bs!23306 m!776139))

(assert (=> bs!23306 m!777133))

(assert (=> bs!23306 m!777133))

(declare-fun m!777547 () Bool)

(assert (=> bs!23306 m!777547))

(assert (=> b!832015 d!106933))

(assert (=> b!832015 d!106727))

(declare-fun d!106935 () Bool)

(declare-fun c!90578 () Bool)

(assert (=> d!106935 (= c!90578 (and ((_ is Cons!16004) (toList!4524 lt!377603)) (= (_1!5100 (h!17134 (toList!4524 lt!377603))) (_1!5100 (ite (or c!90277 c!90279) (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34) (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))))

(declare-fun e!464546 () Option!421)

(assert (=> d!106935 (= (getValueByKey!415 (toList!4524 lt!377603) (_1!5100 (ite (or c!90277 c!90279) (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34) (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))) e!464546)))

(declare-fun b!832827 () Bool)

(assert (=> b!832827 (= e!464546 (Some!420 (_2!5100 (h!17134 (toList!4524 lt!377603)))))))

(declare-fun b!832830 () Bool)

(declare-fun e!464547 () Option!421)

(assert (=> b!832830 (= e!464547 None!419)))

(declare-fun b!832828 () Bool)

(assert (=> b!832828 (= e!464546 e!464547)))

(declare-fun c!90579 () Bool)

(assert (=> b!832828 (= c!90579 (and ((_ is Cons!16004) (toList!4524 lt!377603)) (not (= (_1!5100 (h!17134 (toList!4524 lt!377603))) (_1!5100 (ite (or c!90277 c!90279) (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34) (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))))))))

(declare-fun b!832829 () Bool)

(assert (=> b!832829 (= e!464547 (getValueByKey!415 (t!22384 (toList!4524 lt!377603)) (_1!5100 (ite (or c!90277 c!90279) (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34) (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))))))

(assert (= (and d!106935 c!90578) b!832827))

(assert (= (and d!106935 (not c!90578)) b!832828))

(assert (= (and b!832828 c!90579) b!832829))

(assert (= (and b!832828 (not c!90579)) b!832830))

(declare-fun m!777549 () Bool)

(assert (=> b!832829 m!777549))

(assert (=> b!831892 d!106935))

(declare-fun b!832831 () Bool)

(declare-fun e!464552 () List!16008)

(declare-fun call!36464 () List!16008)

(assert (=> b!832831 (= e!464552 call!36464)))

(declare-fun b!832832 () Bool)

(declare-fun res!566572 () Bool)

(declare-fun e!464549 () Bool)

(assert (=> b!832832 (=> (not res!566572) (not e!464549))))

(declare-fun lt!377980 () List!16008)

(assert (=> b!832832 (= res!566572 (containsKey!401 lt!377980 (_1!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))))

(declare-fun c!90583 () Bool)

(declare-fun c!90581 () Bool)

(declare-fun b!832833 () Bool)

(declare-fun e!464551 () List!16008)

(assert (=> b!832833 (= e!464551 (ite c!90581 (t!22384 (t!22384 (toList!4524 (+!1952 lt!377373 lt!377371)))) (ite c!90583 (Cons!16004 (h!17134 (t!22384 (toList!4524 (+!1952 lt!377373 lt!377371)))) (t!22384 (t!22384 (toList!4524 (+!1952 lt!377373 lt!377371))))) Nil!16005)))))

(declare-fun b!832834 () Bool)

(declare-fun e!464548 () List!16008)

(assert (=> b!832834 (= e!464548 e!464552)))

(assert (=> b!832834 (= c!90581 (and ((_ is Cons!16004) (t!22384 (toList!4524 (+!1952 lt!377373 lt!377371)))) (= (_1!5100 (h!17134 (t!22384 (toList!4524 (+!1952 lt!377373 lt!377371))))) (_1!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))))))

(declare-fun b!832835 () Bool)

(assert (=> b!832835 (= e!464551 (insertStrictlySorted!269 (t!22384 (t!22384 (toList!4524 (+!1952 lt!377373 lt!377371)))) (_1!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)) (_2!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))))

(declare-fun bm!36460 () Bool)

(declare-fun call!36465 () List!16008)

(assert (=> bm!36460 (= call!36464 call!36465)))

(declare-fun b!832836 () Bool)

(assert (=> b!832836 (= e!464549 (contains!4213 lt!377980 (tuple2!10181 (_1!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)) (_2!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))))))

(declare-fun b!832837 () Bool)

(declare-fun e!464550 () List!16008)

(declare-fun call!36463 () List!16008)

(assert (=> b!832837 (= e!464550 call!36463)))

(declare-fun b!832838 () Bool)

(assert (=> b!832838 (= c!90583 (and ((_ is Cons!16004) (t!22384 (toList!4524 (+!1952 lt!377373 lt!377371)))) (bvsgt (_1!5100 (h!17134 (t!22384 (toList!4524 (+!1952 lt!377373 lt!377371))))) (_1!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))))))

(assert (=> b!832838 (= e!464552 e!464550)))

(declare-fun d!106937 () Bool)

(assert (=> d!106937 e!464549))

(declare-fun res!566573 () Bool)

(assert (=> d!106937 (=> (not res!566573) (not e!464549))))

(assert (=> d!106937 (= res!566573 (isStrictlySorted!438 lt!377980))))

(assert (=> d!106937 (= lt!377980 e!464548)))

(declare-fun c!90582 () Bool)

(assert (=> d!106937 (= c!90582 (and ((_ is Cons!16004) (t!22384 (toList!4524 (+!1952 lt!377373 lt!377371)))) (bvslt (_1!5100 (h!17134 (t!22384 (toList!4524 (+!1952 lt!377373 lt!377371))))) (_1!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))))))

(assert (=> d!106937 (isStrictlySorted!438 (t!22384 (toList!4524 (+!1952 lt!377373 lt!377371))))))

(assert (=> d!106937 (= (insertStrictlySorted!269 (t!22384 (toList!4524 (+!1952 lt!377373 lt!377371))) (_1!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)) (_2!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))) lt!377980)))

(declare-fun b!832839 () Bool)

(assert (=> b!832839 (= e!464550 call!36463)))

(declare-fun bm!36461 () Bool)

(assert (=> bm!36461 (= call!36465 ($colon$colon!536 e!464551 (ite c!90582 (h!17134 (t!22384 (toList!4524 (+!1952 lt!377373 lt!377371)))) (tuple2!10181 (_1!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)) (_2!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))))))

(declare-fun c!90580 () Bool)

(assert (=> bm!36461 (= c!90580 c!90582)))

(declare-fun bm!36462 () Bool)

(assert (=> bm!36462 (= call!36463 call!36464)))

(declare-fun b!832840 () Bool)

(assert (=> b!832840 (= e!464548 call!36465)))

(assert (= (and d!106937 c!90582) b!832840))

(assert (= (and d!106937 (not c!90582)) b!832834))

(assert (= (and b!832834 c!90581) b!832831))

(assert (= (and b!832834 (not c!90581)) b!832838))

(assert (= (and b!832838 c!90583) b!832837))

(assert (= (and b!832838 (not c!90583)) b!832839))

(assert (= (or b!832837 b!832839) bm!36462))

(assert (= (or b!832831 bm!36462) bm!36460))

(assert (= (or b!832840 bm!36460) bm!36461))

(assert (= (and bm!36461 c!90580) b!832835))

(assert (= (and bm!36461 (not c!90580)) b!832833))

(assert (= (and d!106937 res!566573) b!832832))

(assert (= (and b!832832 res!566572) b!832836))

(declare-fun m!777551 () Bool)

(assert (=> b!832832 m!777551))

(declare-fun m!777553 () Bool)

(assert (=> b!832835 m!777553))

(declare-fun m!777555 () Bool)

(assert (=> d!106937 m!777555))

(assert (=> d!106937 m!777411))

(declare-fun m!777557 () Bool)

(assert (=> b!832836 m!777557))

(declare-fun m!777559 () Bool)

(assert (=> bm!36461 m!777559))

(assert (=> b!832117 d!106937))

(declare-fun d!106939 () Bool)

(declare-fun lt!377981 () Bool)

(assert (=> d!106939 (= lt!377981 (select (content!390 lt!377457) (tuple2!10181 (_1!5100 lt!377371) (_2!5100 lt!377371))))))

(declare-fun e!464553 () Bool)

(assert (=> d!106939 (= lt!377981 e!464553)))

(declare-fun res!566574 () Bool)

(assert (=> d!106939 (=> (not res!566574) (not e!464553))))

(assert (=> d!106939 (= res!566574 ((_ is Cons!16004) lt!377457))))

(assert (=> d!106939 (= (contains!4213 lt!377457 (tuple2!10181 (_1!5100 lt!377371) (_2!5100 lt!377371))) lt!377981)))

(declare-fun b!832841 () Bool)

(declare-fun e!464554 () Bool)

(assert (=> b!832841 (= e!464553 e!464554)))

(declare-fun res!566575 () Bool)

(assert (=> b!832841 (=> res!566575 e!464554)))

(assert (=> b!832841 (= res!566575 (= (h!17134 lt!377457) (tuple2!10181 (_1!5100 lt!377371) (_2!5100 lt!377371))))))

(declare-fun b!832842 () Bool)

(assert (=> b!832842 (= e!464554 (contains!4213 (t!22384 lt!377457) (tuple2!10181 (_1!5100 lt!377371) (_2!5100 lt!377371))))))

(assert (= (and d!106939 res!566574) b!832841))

(assert (= (and b!832841 (not res!566575)) b!832842))

(declare-fun m!777561 () Bool)

(assert (=> d!106939 m!777561))

(declare-fun m!777563 () Bool)

(assert (=> d!106939 m!777563))

(declare-fun m!777565 () Bool)

(assert (=> b!832842 m!777565))

(assert (=> b!832131 d!106939))

(declare-fun d!106941 () Bool)

(declare-fun res!566576 () Bool)

(declare-fun e!464555 () Bool)

(assert (=> d!106941 (=> res!566576 e!464555)))

(assert (=> d!106941 (= res!566576 (and ((_ is Cons!16004) lt!377627) (= (_1!5100 (h!17134 lt!377627)) (_1!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))))))

(assert (=> d!106941 (= (containsKey!401 lt!377627 (_1!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))) e!464555)))

(declare-fun b!832843 () Bool)

(declare-fun e!464556 () Bool)

(assert (=> b!832843 (= e!464555 e!464556)))

(declare-fun res!566577 () Bool)

(assert (=> b!832843 (=> (not res!566577) (not e!464556))))

(assert (=> b!832843 (= res!566577 (and (or (not ((_ is Cons!16004) lt!377627)) (bvsle (_1!5100 (h!17134 lt!377627)) (_1!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))) ((_ is Cons!16004) lt!377627) (bvslt (_1!5100 (h!17134 lt!377627)) (_1!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))))))

(declare-fun b!832844 () Bool)

(assert (=> b!832844 (= e!464556 (containsKey!401 (t!22384 lt!377627) (_1!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))))

(assert (= (and d!106941 (not res!566576)) b!832843))

(assert (= (and b!832843 res!566577) b!832844))

(declare-fun m!777567 () Bool)

(assert (=> b!832844 m!777567))

(assert (=> b!831948 d!106941))

(declare-fun d!106943 () Bool)

(declare-fun lt!377982 () Bool)

(assert (=> d!106943 (= lt!377982 (select (content!390 (toList!4524 lt!377594)) (tuple2!10181 lt!377541 zeroValueBefore!34)))))

(declare-fun e!464557 () Bool)

(assert (=> d!106943 (= lt!377982 e!464557)))

(declare-fun res!566578 () Bool)

(assert (=> d!106943 (=> (not res!566578) (not e!464557))))

(assert (=> d!106943 (= res!566578 ((_ is Cons!16004) (toList!4524 lt!377594)))))

(assert (=> d!106943 (= (contains!4213 (toList!4524 lt!377594) (tuple2!10181 lt!377541 zeroValueBefore!34)) lt!377982)))

(declare-fun b!832845 () Bool)

(declare-fun e!464558 () Bool)

(assert (=> b!832845 (= e!464557 e!464558)))

(declare-fun res!566579 () Bool)

(assert (=> b!832845 (=> res!566579 e!464558)))

(assert (=> b!832845 (= res!566579 (= (h!17134 (toList!4524 lt!377594)) (tuple2!10181 lt!377541 zeroValueBefore!34)))))

(declare-fun b!832846 () Bool)

(assert (=> b!832846 (= e!464558 (contains!4213 (t!22384 (toList!4524 lt!377594)) (tuple2!10181 lt!377541 zeroValueBefore!34)))))

(assert (= (and d!106943 res!566578) b!832845))

(assert (= (and b!832845 (not res!566579)) b!832846))

(declare-fun m!777569 () Bool)

(assert (=> d!106943 m!777569))

(declare-fun m!777571 () Bool)

(assert (=> d!106943 m!777571))

(declare-fun m!777573 () Bool)

(assert (=> b!832846 m!777573))

(assert (=> b!831887 d!106943))

(declare-fun b!832847 () Bool)

(declare-fun e!464561 () Bool)

(declare-fun e!464560 () Bool)

(assert (=> b!832847 (= e!464561 e!464560)))

(declare-fun c!90584 () Bool)

(assert (=> b!832847 (= c!90584 (validKeyInArray!0 (select (arr!22317 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001))))))

(declare-fun b!832848 () Bool)

(declare-fun call!36466 () Bool)

(assert (=> b!832848 (= e!464560 call!36466)))

(declare-fun d!106945 () Bool)

(declare-fun res!566580 () Bool)

(assert (=> d!106945 (=> res!566580 e!464561)))

(assert (=> d!106945 (= res!566580 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!22738 _keys!976)))))

(assert (=> d!106945 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) _keys!976 mask!1312) e!464561)))

(declare-fun b!832849 () Bool)

(declare-fun e!464559 () Bool)

(assert (=> b!832849 (= e!464559 call!36466)))

(declare-fun bm!36463 () Bool)

(assert (=> bm!36463 (= call!36466 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001 #b00000000000000000000000000000001) _keys!976 mask!1312))))

(declare-fun b!832850 () Bool)

(assert (=> b!832850 (= e!464560 e!464559)))

(declare-fun lt!377983 () (_ BitVec 64))

(assert (=> b!832850 (= lt!377983 (select (arr!22317 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)))))

(declare-fun lt!377985 () Unit!28497)

(assert (=> b!832850 (= lt!377985 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!976 lt!377983 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)))))

(assert (=> b!832850 (arrayContainsKey!0 _keys!976 lt!377983 #b00000000000000000000000000000000)))

(declare-fun lt!377984 () Unit!28497)

(assert (=> b!832850 (= lt!377984 lt!377985)))

(declare-fun res!566581 () Bool)

(assert (=> b!832850 (= res!566581 (= (seekEntryOrOpen!0 (select (arr!22317 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)) _keys!976 mask!1312) (Found!8734 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001))))))

(assert (=> b!832850 (=> (not res!566581) (not e!464559))))

(assert (= (and d!106945 (not res!566580)) b!832847))

(assert (= (and b!832847 c!90584) b!832850))

(assert (= (and b!832847 (not c!90584)) b!832848))

(assert (= (and b!832850 res!566581) b!832849))

(assert (= (or b!832849 b!832848) bm!36463))

(assert (=> b!832847 m!776795))

(assert (=> b!832847 m!776795))

(assert (=> b!832847 m!776815))

(declare-fun m!777575 () Bool)

(assert (=> bm!36463 m!777575))

(assert (=> b!832850 m!776795))

(declare-fun m!777577 () Bool)

(assert (=> b!832850 m!777577))

(declare-fun m!777579 () Bool)

(assert (=> b!832850 m!777579))

(assert (=> b!832850 m!776795))

(declare-fun m!777581 () Bool)

(assert (=> b!832850 m!777581))

(assert (=> bm!36427 d!106945))

(declare-fun d!106947 () Bool)

(declare-fun res!566582 () Bool)

(declare-fun e!464562 () Bool)

(assert (=> d!106947 (=> res!566582 e!464562)))

(assert (=> d!106947 (= res!566582 (and ((_ is Cons!16004) (toList!4524 lt!377529)) (= (_1!5100 (h!17134 (toList!4524 lt!377529))) (_1!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))))))

(assert (=> d!106947 (= (containsKey!401 (toList!4524 lt!377529) (_1!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))) e!464562)))

(declare-fun b!832851 () Bool)

(declare-fun e!464563 () Bool)

(assert (=> b!832851 (= e!464562 e!464563)))

(declare-fun res!566583 () Bool)

(assert (=> b!832851 (=> (not res!566583) (not e!464563))))

(assert (=> b!832851 (= res!566583 (and (or (not ((_ is Cons!16004) (toList!4524 lt!377529))) (bvsle (_1!5100 (h!17134 (toList!4524 lt!377529))) (_1!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))) ((_ is Cons!16004) (toList!4524 lt!377529)) (bvslt (_1!5100 (h!17134 (toList!4524 lt!377529))) (_1!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))))))

(declare-fun b!832852 () Bool)

(assert (=> b!832852 (= e!464563 (containsKey!401 (t!22384 (toList!4524 lt!377529)) (_1!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))))

(assert (= (and d!106947 (not res!566582)) b!832851))

(assert (= (and b!832851 res!566583) b!832852))

(declare-fun m!777583 () Bool)

(assert (=> b!832852 m!777583))

(assert (=> d!106399 d!106947))

(assert (=> d!106383 d!106385))

(declare-fun d!106949 () Bool)

(assert (=> d!106949 (arrayContainsKey!0 _keys!976 lt!377417 #b00000000000000000000000000000000)))

(assert (=> d!106949 true))

(declare-fun _$60!397 () Unit!28497)

(assert (=> d!106949 (= (choose!13 _keys!976 lt!377417 #b00000000000000000000000000000000) _$60!397)))

(declare-fun bs!23307 () Bool)

(assert (= bs!23307 d!106949))

(assert (=> bs!23307 m!775733))

(assert (=> d!106383 d!106949))

(declare-fun d!106951 () Bool)

(assert (=> d!106951 (= (get!11829 (getValueByKey!415 (toList!4524 lt!377542) #b0000000000000000000000000000000000000000000000000000000000000000)) (v!10097 (getValueByKey!415 (toList!4524 lt!377542) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!106315 d!106951))

(assert (=> d!106315 d!106775))

(declare-fun d!106953 () Bool)

(declare-fun e!464564 () Bool)

(assert (=> d!106953 e!464564))

(declare-fun res!566584 () Bool)

(assert (=> d!106953 (=> res!566584 e!464564)))

(declare-fun lt!377989 () Bool)

(assert (=> d!106953 (= res!566584 (not lt!377989))))

(declare-fun lt!377986 () Bool)

(assert (=> d!106953 (= lt!377989 lt!377986)))

(declare-fun lt!377988 () Unit!28497)

(declare-fun e!464565 () Unit!28497)

(assert (=> d!106953 (= lt!377988 e!464565)))

(declare-fun c!90585 () Bool)

(assert (=> d!106953 (= c!90585 lt!377986)))

(assert (=> d!106953 (= lt!377986 (containsKey!401 (toList!4524 lt!377656) (_1!5100 (tuple2!10181 lt!377526 zeroValueAfter!34))))))

(assert (=> d!106953 (= (contains!4212 lt!377656 (_1!5100 (tuple2!10181 lt!377526 zeroValueAfter!34))) lt!377989)))

(declare-fun b!832853 () Bool)

(declare-fun lt!377987 () Unit!28497)

(assert (=> b!832853 (= e!464565 lt!377987)))

(assert (=> b!832853 (= lt!377987 (lemmaContainsKeyImpliesGetValueByKeyDefined!311 (toList!4524 lt!377656) (_1!5100 (tuple2!10181 lt!377526 zeroValueAfter!34))))))

(assert (=> b!832853 (isDefined!312 (getValueByKey!415 (toList!4524 lt!377656) (_1!5100 (tuple2!10181 lt!377526 zeroValueAfter!34))))))

(declare-fun b!832854 () Bool)

(declare-fun Unit!28546 () Unit!28497)

(assert (=> b!832854 (= e!464565 Unit!28546)))

(declare-fun b!832855 () Bool)

(assert (=> b!832855 (= e!464564 (isDefined!312 (getValueByKey!415 (toList!4524 lt!377656) (_1!5100 (tuple2!10181 lt!377526 zeroValueAfter!34)))))))

(assert (= (and d!106953 c!90585) b!832853))

(assert (= (and d!106953 (not c!90585)) b!832854))

(assert (= (and d!106953 (not res!566584)) b!832855))

(declare-fun m!777585 () Bool)

(assert (=> d!106953 m!777585))

(declare-fun m!777587 () Bool)

(assert (=> b!832853 m!777587))

(assert (=> b!832853 m!776243))

(assert (=> b!832853 m!776243))

(declare-fun m!777589 () Bool)

(assert (=> b!832853 m!777589))

(assert (=> b!832855 m!776243))

(assert (=> b!832855 m!776243))

(assert (=> b!832855 m!777589))

(assert (=> d!106341 d!106953))

(declare-fun c!90586 () Bool)

(declare-fun d!106955 () Bool)

(assert (=> d!106955 (= c!90586 (and ((_ is Cons!16004) lt!377658) (= (_1!5100 (h!17134 lt!377658)) (_1!5100 (tuple2!10181 lt!377526 zeroValueAfter!34)))))))

(declare-fun e!464566 () Option!421)

(assert (=> d!106955 (= (getValueByKey!415 lt!377658 (_1!5100 (tuple2!10181 lt!377526 zeroValueAfter!34))) e!464566)))

(declare-fun b!832856 () Bool)

(assert (=> b!832856 (= e!464566 (Some!420 (_2!5100 (h!17134 lt!377658))))))

(declare-fun b!832859 () Bool)

(declare-fun e!464567 () Option!421)

(assert (=> b!832859 (= e!464567 None!419)))

(declare-fun b!832857 () Bool)

(assert (=> b!832857 (= e!464566 e!464567)))

(declare-fun c!90587 () Bool)

(assert (=> b!832857 (= c!90587 (and ((_ is Cons!16004) lt!377658) (not (= (_1!5100 (h!17134 lt!377658)) (_1!5100 (tuple2!10181 lt!377526 zeroValueAfter!34))))))))

(declare-fun b!832858 () Bool)

(assert (=> b!832858 (= e!464567 (getValueByKey!415 (t!22384 lt!377658) (_1!5100 (tuple2!10181 lt!377526 zeroValueAfter!34))))))

(assert (= (and d!106955 c!90586) b!832856))

(assert (= (and d!106955 (not c!90586)) b!832857))

(assert (= (and b!832857 c!90587) b!832858))

(assert (= (and b!832857 (not c!90587)) b!832859))

(declare-fun m!777591 () Bool)

(assert (=> b!832858 m!777591))

(assert (=> d!106341 d!106955))

(declare-fun d!106957 () Bool)

(assert (=> d!106957 (= (getValueByKey!415 lt!377658 (_1!5100 (tuple2!10181 lt!377526 zeroValueAfter!34))) (Some!420 (_2!5100 (tuple2!10181 lt!377526 zeroValueAfter!34))))))

(declare-fun lt!377990 () Unit!28497)

(assert (=> d!106957 (= lt!377990 (choose!1433 lt!377658 (_1!5100 (tuple2!10181 lt!377526 zeroValueAfter!34)) (_2!5100 (tuple2!10181 lt!377526 zeroValueAfter!34))))))

(declare-fun e!464568 () Bool)

(assert (=> d!106957 e!464568))

(declare-fun res!566585 () Bool)

(assert (=> d!106957 (=> (not res!566585) (not e!464568))))

(assert (=> d!106957 (= res!566585 (isStrictlySorted!438 lt!377658))))

(assert (=> d!106957 (= (lemmaContainsTupThenGetReturnValue!231 lt!377658 (_1!5100 (tuple2!10181 lt!377526 zeroValueAfter!34)) (_2!5100 (tuple2!10181 lt!377526 zeroValueAfter!34))) lt!377990)))

(declare-fun b!832860 () Bool)

(declare-fun res!566586 () Bool)

(assert (=> b!832860 (=> (not res!566586) (not e!464568))))

(assert (=> b!832860 (= res!566586 (containsKey!401 lt!377658 (_1!5100 (tuple2!10181 lt!377526 zeroValueAfter!34))))))

(declare-fun b!832861 () Bool)

(assert (=> b!832861 (= e!464568 (contains!4213 lt!377658 (tuple2!10181 (_1!5100 (tuple2!10181 lt!377526 zeroValueAfter!34)) (_2!5100 (tuple2!10181 lt!377526 zeroValueAfter!34)))))))

(assert (= (and d!106957 res!566585) b!832860))

(assert (= (and b!832860 res!566586) b!832861))

(assert (=> d!106957 m!776237))

(declare-fun m!777593 () Bool)

(assert (=> d!106957 m!777593))

(declare-fun m!777595 () Bool)

(assert (=> d!106957 m!777595))

(declare-fun m!777597 () Bool)

(assert (=> b!832860 m!777597))

(declare-fun m!777599 () Bool)

(assert (=> b!832861 m!777599))

(assert (=> d!106341 d!106957))

(declare-fun b!832862 () Bool)

(declare-fun e!464573 () List!16008)

(declare-fun call!36468 () List!16008)

(assert (=> b!832862 (= e!464573 call!36468)))

(declare-fun b!832863 () Bool)

(declare-fun res!566587 () Bool)

(declare-fun e!464570 () Bool)

(assert (=> b!832863 (=> (not res!566587) (not e!464570))))

(declare-fun lt!377991 () List!16008)

(assert (=> b!832863 (= res!566587 (containsKey!401 lt!377991 (_1!5100 (tuple2!10181 lt!377526 zeroValueAfter!34))))))

(declare-fun b!832864 () Bool)

(declare-fun c!90589 () Bool)

(declare-fun e!464572 () List!16008)

(declare-fun c!90591 () Bool)

(assert (=> b!832864 (= e!464572 (ite c!90589 (t!22384 (toList!4524 lt!377510)) (ite c!90591 (Cons!16004 (h!17134 (toList!4524 lt!377510)) (t!22384 (toList!4524 lt!377510))) Nil!16005)))))

(declare-fun b!832865 () Bool)

(declare-fun e!464569 () List!16008)

(assert (=> b!832865 (= e!464569 e!464573)))

(assert (=> b!832865 (= c!90589 (and ((_ is Cons!16004) (toList!4524 lt!377510)) (= (_1!5100 (h!17134 (toList!4524 lt!377510))) (_1!5100 (tuple2!10181 lt!377526 zeroValueAfter!34)))))))

(declare-fun b!832866 () Bool)

(assert (=> b!832866 (= e!464572 (insertStrictlySorted!269 (t!22384 (toList!4524 lt!377510)) (_1!5100 (tuple2!10181 lt!377526 zeroValueAfter!34)) (_2!5100 (tuple2!10181 lt!377526 zeroValueAfter!34))))))

(declare-fun bm!36464 () Bool)

(declare-fun call!36469 () List!16008)

(assert (=> bm!36464 (= call!36468 call!36469)))

(declare-fun b!832867 () Bool)

(assert (=> b!832867 (= e!464570 (contains!4213 lt!377991 (tuple2!10181 (_1!5100 (tuple2!10181 lt!377526 zeroValueAfter!34)) (_2!5100 (tuple2!10181 lt!377526 zeroValueAfter!34)))))))

(declare-fun b!832868 () Bool)

(declare-fun e!464571 () List!16008)

(declare-fun call!36467 () List!16008)

(assert (=> b!832868 (= e!464571 call!36467)))

(declare-fun b!832869 () Bool)

(assert (=> b!832869 (= c!90591 (and ((_ is Cons!16004) (toList!4524 lt!377510)) (bvsgt (_1!5100 (h!17134 (toList!4524 lt!377510))) (_1!5100 (tuple2!10181 lt!377526 zeroValueAfter!34)))))))

(assert (=> b!832869 (= e!464573 e!464571)))

(declare-fun d!106959 () Bool)

(assert (=> d!106959 e!464570))

(declare-fun res!566588 () Bool)

(assert (=> d!106959 (=> (not res!566588) (not e!464570))))

(assert (=> d!106959 (= res!566588 (isStrictlySorted!438 lt!377991))))

(assert (=> d!106959 (= lt!377991 e!464569)))

(declare-fun c!90590 () Bool)

(assert (=> d!106959 (= c!90590 (and ((_ is Cons!16004) (toList!4524 lt!377510)) (bvslt (_1!5100 (h!17134 (toList!4524 lt!377510))) (_1!5100 (tuple2!10181 lt!377526 zeroValueAfter!34)))))))

(assert (=> d!106959 (isStrictlySorted!438 (toList!4524 lt!377510))))

(assert (=> d!106959 (= (insertStrictlySorted!269 (toList!4524 lt!377510) (_1!5100 (tuple2!10181 lt!377526 zeroValueAfter!34)) (_2!5100 (tuple2!10181 lt!377526 zeroValueAfter!34))) lt!377991)))

(declare-fun b!832870 () Bool)

(assert (=> b!832870 (= e!464571 call!36467)))

(declare-fun bm!36465 () Bool)

(assert (=> bm!36465 (= call!36469 ($colon$colon!536 e!464572 (ite c!90590 (h!17134 (toList!4524 lt!377510)) (tuple2!10181 (_1!5100 (tuple2!10181 lt!377526 zeroValueAfter!34)) (_2!5100 (tuple2!10181 lt!377526 zeroValueAfter!34))))))))

(declare-fun c!90588 () Bool)

(assert (=> bm!36465 (= c!90588 c!90590)))

(declare-fun bm!36466 () Bool)

(assert (=> bm!36466 (= call!36467 call!36468)))

(declare-fun b!832871 () Bool)

(assert (=> b!832871 (= e!464569 call!36469)))

(assert (= (and d!106959 c!90590) b!832871))

(assert (= (and d!106959 (not c!90590)) b!832865))

(assert (= (and b!832865 c!90589) b!832862))

(assert (= (and b!832865 (not c!90589)) b!832869))

(assert (= (and b!832869 c!90591) b!832868))

(assert (= (and b!832869 (not c!90591)) b!832870))

(assert (= (or b!832868 b!832870) bm!36466))

(assert (= (or b!832862 bm!36466) bm!36464))

(assert (= (or b!832871 bm!36464) bm!36465))

(assert (= (and bm!36465 c!90588) b!832866))

(assert (= (and bm!36465 (not c!90588)) b!832864))

(assert (= (and d!106959 res!566588) b!832863))

(assert (= (and b!832863 res!566587) b!832867))

(declare-fun m!777601 () Bool)

(assert (=> b!832863 m!777601))

(declare-fun m!777603 () Bool)

(assert (=> b!832866 m!777603))

(declare-fun m!777605 () Bool)

(assert (=> d!106959 m!777605))

(declare-fun m!777607 () Bool)

(assert (=> d!106959 m!777607))

(declare-fun m!777609 () Bool)

(assert (=> b!832867 m!777609))

(declare-fun m!777611 () Bool)

(assert (=> bm!36465 m!777611))

(assert (=> d!106341 d!106959))

(declare-fun d!106961 () Bool)

(declare-fun c!90592 () Bool)

(assert (=> d!106961 (= c!90592 (and ((_ is Cons!16004) (t!22384 lt!377453)) (= (_1!5100 (h!17134 (t!22384 lt!377453))) (_1!5100 lt!377372))))))

(declare-fun e!464574 () Option!421)

(assert (=> d!106961 (= (getValueByKey!415 (t!22384 lt!377453) (_1!5100 lt!377372)) e!464574)))

(declare-fun b!832872 () Bool)

(assert (=> b!832872 (= e!464574 (Some!420 (_2!5100 (h!17134 (t!22384 lt!377453)))))))

(declare-fun b!832875 () Bool)

(declare-fun e!464575 () Option!421)

(assert (=> b!832875 (= e!464575 None!419)))

(declare-fun b!832873 () Bool)

(assert (=> b!832873 (= e!464574 e!464575)))

(declare-fun c!90593 () Bool)

(assert (=> b!832873 (= c!90593 (and ((_ is Cons!16004) (t!22384 lt!377453)) (not (= (_1!5100 (h!17134 (t!22384 lt!377453))) (_1!5100 lt!377372)))))))

(declare-fun b!832874 () Bool)

(assert (=> b!832874 (= e!464575 (getValueByKey!415 (t!22384 (t!22384 lt!377453)) (_1!5100 lt!377372)))))

(assert (= (and d!106961 c!90592) b!832872))

(assert (= (and d!106961 (not c!90592)) b!832873))

(assert (= (and b!832873 c!90593) b!832874))

(assert (= (and b!832873 (not c!90593)) b!832875))

(declare-fun m!777613 () Bool)

(assert (=> b!832874 m!777613))

(assert (=> b!832032 d!106961))

(declare-fun d!106963 () Bool)

(assert (=> d!106963 (isDefined!312 (getValueByKey!415 (toList!4524 (+!1952 lt!377448 (tuple2!10181 lt!377445 lt!377450))) lt!377446))))

(declare-fun lt!377992 () Unit!28497)

(assert (=> d!106963 (= lt!377992 (choose!1435 (toList!4524 (+!1952 lt!377448 (tuple2!10181 lt!377445 lt!377450))) lt!377446))))

(declare-fun e!464576 () Bool)

(assert (=> d!106963 e!464576))

(declare-fun res!566589 () Bool)

(assert (=> d!106963 (=> (not res!566589) (not e!464576))))

(assert (=> d!106963 (= res!566589 (isStrictlySorted!438 (toList!4524 (+!1952 lt!377448 (tuple2!10181 lt!377445 lt!377450)))))))

(assert (=> d!106963 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!311 (toList!4524 (+!1952 lt!377448 (tuple2!10181 lt!377445 lt!377450))) lt!377446) lt!377992)))

(declare-fun b!832876 () Bool)

(assert (=> b!832876 (= e!464576 (containsKey!401 (toList!4524 (+!1952 lt!377448 (tuple2!10181 lt!377445 lt!377450))) lt!377446))))

(assert (= (and d!106963 res!566589) b!832876))

(assert (=> d!106963 m!776613))

(assert (=> d!106963 m!776613))

(assert (=> d!106963 m!776615))

(declare-fun m!777615 () Bool)

(assert (=> d!106963 m!777615))

(declare-fun m!777617 () Bool)

(assert (=> d!106963 m!777617))

(assert (=> b!832876 m!776609))

(assert (=> b!832209 d!106963))

(declare-fun d!106965 () Bool)

(assert (=> d!106965 (= (isDefined!312 (getValueByKey!415 (toList!4524 (+!1952 lt!377448 (tuple2!10181 lt!377445 lt!377450))) lt!377446)) (not (isEmpty!664 (getValueByKey!415 (toList!4524 (+!1952 lt!377448 (tuple2!10181 lt!377445 lt!377450))) lt!377446))))))

(declare-fun bs!23308 () Bool)

(assert (= bs!23308 d!106965))

(assert (=> bs!23308 m!776613))

(declare-fun m!777619 () Bool)

(assert (=> bs!23308 m!777619))

(assert (=> b!832209 d!106965))

(declare-fun c!90594 () Bool)

(declare-fun d!106967 () Bool)

(assert (=> d!106967 (= c!90594 (and ((_ is Cons!16004) (toList!4524 (+!1952 lt!377448 (tuple2!10181 lt!377445 lt!377450)))) (= (_1!5100 (h!17134 (toList!4524 (+!1952 lt!377448 (tuple2!10181 lt!377445 lt!377450))))) lt!377446)))))

(declare-fun e!464577 () Option!421)

(assert (=> d!106967 (= (getValueByKey!415 (toList!4524 (+!1952 lt!377448 (tuple2!10181 lt!377445 lt!377450))) lt!377446) e!464577)))

(declare-fun b!832877 () Bool)

(assert (=> b!832877 (= e!464577 (Some!420 (_2!5100 (h!17134 (toList!4524 (+!1952 lt!377448 (tuple2!10181 lt!377445 lt!377450)))))))))

(declare-fun b!832880 () Bool)

(declare-fun e!464578 () Option!421)

(assert (=> b!832880 (= e!464578 None!419)))

(declare-fun b!832878 () Bool)

(assert (=> b!832878 (= e!464577 e!464578)))

(declare-fun c!90595 () Bool)

(assert (=> b!832878 (= c!90595 (and ((_ is Cons!16004) (toList!4524 (+!1952 lt!377448 (tuple2!10181 lt!377445 lt!377450)))) (not (= (_1!5100 (h!17134 (toList!4524 (+!1952 lt!377448 (tuple2!10181 lt!377445 lt!377450))))) lt!377446))))))

(declare-fun b!832879 () Bool)

(assert (=> b!832879 (= e!464578 (getValueByKey!415 (t!22384 (toList!4524 (+!1952 lt!377448 (tuple2!10181 lt!377445 lt!377450)))) lt!377446))))

(assert (= (and d!106967 c!90594) b!832877))

(assert (= (and d!106967 (not c!90594)) b!832878))

(assert (= (and b!832878 c!90595) b!832879))

(assert (= (and b!832878 (not c!90595)) b!832880))

(declare-fun m!777621 () Bool)

(assert (=> b!832879 m!777621))

(assert (=> b!832209 d!106967))

(declare-fun d!106969 () Bool)

(declare-fun e!464579 () Bool)

(assert (=> d!106969 e!464579))

(declare-fun res!566590 () Bool)

(assert (=> d!106969 (=> res!566590 e!464579)))

(declare-fun lt!377996 () Bool)

(assert (=> d!106969 (= res!566590 (not lt!377996))))

(declare-fun lt!377993 () Bool)

(assert (=> d!106969 (= lt!377996 lt!377993)))

(declare-fun lt!377995 () Unit!28497)

(declare-fun e!464580 () Unit!28497)

(assert (=> d!106969 (= lt!377995 e!464580)))

(declare-fun c!90596 () Bool)

(assert (=> d!106969 (= c!90596 lt!377993)))

(assert (=> d!106969 (= lt!377993 (containsKey!401 (toList!4524 lt!377594) (_1!5100 (tuple2!10181 lt!377541 zeroValueBefore!34))))))

(assert (=> d!106969 (= (contains!4212 lt!377594 (_1!5100 (tuple2!10181 lt!377541 zeroValueBefore!34))) lt!377996)))

(declare-fun b!832881 () Bool)

(declare-fun lt!377994 () Unit!28497)

(assert (=> b!832881 (= e!464580 lt!377994)))

(assert (=> b!832881 (= lt!377994 (lemmaContainsKeyImpliesGetValueByKeyDefined!311 (toList!4524 lt!377594) (_1!5100 (tuple2!10181 lt!377541 zeroValueBefore!34))))))

(assert (=> b!832881 (isDefined!312 (getValueByKey!415 (toList!4524 lt!377594) (_1!5100 (tuple2!10181 lt!377541 zeroValueBefore!34))))))

(declare-fun b!832882 () Bool)

(declare-fun Unit!28547 () Unit!28497)

(assert (=> b!832882 (= e!464580 Unit!28547)))

(declare-fun b!832883 () Bool)

(assert (=> b!832883 (= e!464579 (isDefined!312 (getValueByKey!415 (toList!4524 lt!377594) (_1!5100 (tuple2!10181 lt!377541 zeroValueBefore!34)))))))

(assert (= (and d!106969 c!90596) b!832881))

(assert (= (and d!106969 (not c!90596)) b!832882))

(assert (= (and d!106969 (not res!566590)) b!832883))

(declare-fun m!777623 () Bool)

(assert (=> d!106969 m!777623))

(declare-fun m!777625 () Bool)

(assert (=> b!832881 m!777625))

(assert (=> b!832881 m!776031))

(assert (=> b!832881 m!776031))

(declare-fun m!777627 () Bool)

(assert (=> b!832881 m!777627))

(assert (=> b!832883 m!776031))

(assert (=> b!832883 m!776031))

(assert (=> b!832883 m!777627))

(assert (=> d!106277 d!106969))

(declare-fun c!90597 () Bool)

(declare-fun d!106971 () Bool)

(assert (=> d!106971 (= c!90597 (and ((_ is Cons!16004) lt!377596) (= (_1!5100 (h!17134 lt!377596)) (_1!5100 (tuple2!10181 lt!377541 zeroValueBefore!34)))))))

(declare-fun e!464581 () Option!421)

(assert (=> d!106971 (= (getValueByKey!415 lt!377596 (_1!5100 (tuple2!10181 lt!377541 zeroValueBefore!34))) e!464581)))

(declare-fun b!832884 () Bool)

(assert (=> b!832884 (= e!464581 (Some!420 (_2!5100 (h!17134 lt!377596))))))

(declare-fun b!832887 () Bool)

(declare-fun e!464582 () Option!421)

(assert (=> b!832887 (= e!464582 None!419)))

(declare-fun b!832885 () Bool)

(assert (=> b!832885 (= e!464581 e!464582)))

(declare-fun c!90598 () Bool)

(assert (=> b!832885 (= c!90598 (and ((_ is Cons!16004) lt!377596) (not (= (_1!5100 (h!17134 lt!377596)) (_1!5100 (tuple2!10181 lt!377541 zeroValueBefore!34))))))))

(declare-fun b!832886 () Bool)

(assert (=> b!832886 (= e!464582 (getValueByKey!415 (t!22384 lt!377596) (_1!5100 (tuple2!10181 lt!377541 zeroValueBefore!34))))))

(assert (= (and d!106971 c!90597) b!832884))

(assert (= (and d!106971 (not c!90597)) b!832885))

(assert (= (and b!832885 c!90598) b!832886))

(assert (= (and b!832885 (not c!90598)) b!832887))

(declare-fun m!777629 () Bool)

(assert (=> b!832886 m!777629))

(assert (=> d!106277 d!106971))

(declare-fun d!106973 () Bool)

(assert (=> d!106973 (= (getValueByKey!415 lt!377596 (_1!5100 (tuple2!10181 lt!377541 zeroValueBefore!34))) (Some!420 (_2!5100 (tuple2!10181 lt!377541 zeroValueBefore!34))))))

(declare-fun lt!377997 () Unit!28497)

(assert (=> d!106973 (= lt!377997 (choose!1433 lt!377596 (_1!5100 (tuple2!10181 lt!377541 zeroValueBefore!34)) (_2!5100 (tuple2!10181 lt!377541 zeroValueBefore!34))))))

(declare-fun e!464583 () Bool)

(assert (=> d!106973 e!464583))

(declare-fun res!566591 () Bool)

(assert (=> d!106973 (=> (not res!566591) (not e!464583))))

(assert (=> d!106973 (= res!566591 (isStrictlySorted!438 lt!377596))))

(assert (=> d!106973 (= (lemmaContainsTupThenGetReturnValue!231 lt!377596 (_1!5100 (tuple2!10181 lt!377541 zeroValueBefore!34)) (_2!5100 (tuple2!10181 lt!377541 zeroValueBefore!34))) lt!377997)))

(declare-fun b!832888 () Bool)

(declare-fun res!566592 () Bool)

(assert (=> b!832888 (=> (not res!566592) (not e!464583))))

(assert (=> b!832888 (= res!566592 (containsKey!401 lt!377596 (_1!5100 (tuple2!10181 lt!377541 zeroValueBefore!34))))))

(declare-fun b!832889 () Bool)

(assert (=> b!832889 (= e!464583 (contains!4213 lt!377596 (tuple2!10181 (_1!5100 (tuple2!10181 lt!377541 zeroValueBefore!34)) (_2!5100 (tuple2!10181 lt!377541 zeroValueBefore!34)))))))

(assert (= (and d!106973 res!566591) b!832888))

(assert (= (and b!832888 res!566592) b!832889))

(assert (=> d!106973 m!776025))

(declare-fun m!777631 () Bool)

(assert (=> d!106973 m!777631))

(declare-fun m!777633 () Bool)

(assert (=> d!106973 m!777633))

(declare-fun m!777635 () Bool)

(assert (=> b!832888 m!777635))

(declare-fun m!777637 () Bool)

(assert (=> b!832889 m!777637))

(assert (=> d!106277 d!106973))

(declare-fun b!832890 () Bool)

(declare-fun e!464588 () List!16008)

(declare-fun call!36471 () List!16008)

(assert (=> b!832890 (= e!464588 call!36471)))

(declare-fun b!832891 () Bool)

(declare-fun res!566593 () Bool)

(declare-fun e!464585 () Bool)

(assert (=> b!832891 (=> (not res!566593) (not e!464585))))

(declare-fun lt!377998 () List!16008)

(assert (=> b!832891 (= res!566593 (containsKey!401 lt!377998 (_1!5100 (tuple2!10181 lt!377541 zeroValueBefore!34))))))

(declare-fun c!90602 () Bool)

(declare-fun c!90600 () Bool)

(declare-fun b!832892 () Bool)

(declare-fun e!464587 () List!16008)

(assert (=> b!832892 (= e!464587 (ite c!90600 (t!22384 (toList!4524 lt!377546)) (ite c!90602 (Cons!16004 (h!17134 (toList!4524 lt!377546)) (t!22384 (toList!4524 lt!377546))) Nil!16005)))))

(declare-fun b!832893 () Bool)

(declare-fun e!464584 () List!16008)

(assert (=> b!832893 (= e!464584 e!464588)))

(assert (=> b!832893 (= c!90600 (and ((_ is Cons!16004) (toList!4524 lt!377546)) (= (_1!5100 (h!17134 (toList!4524 lt!377546))) (_1!5100 (tuple2!10181 lt!377541 zeroValueBefore!34)))))))

(declare-fun b!832894 () Bool)

(assert (=> b!832894 (= e!464587 (insertStrictlySorted!269 (t!22384 (toList!4524 lt!377546)) (_1!5100 (tuple2!10181 lt!377541 zeroValueBefore!34)) (_2!5100 (tuple2!10181 lt!377541 zeroValueBefore!34))))))

(declare-fun bm!36467 () Bool)

(declare-fun call!36472 () List!16008)

(assert (=> bm!36467 (= call!36471 call!36472)))

(declare-fun b!832895 () Bool)

(assert (=> b!832895 (= e!464585 (contains!4213 lt!377998 (tuple2!10181 (_1!5100 (tuple2!10181 lt!377541 zeroValueBefore!34)) (_2!5100 (tuple2!10181 lt!377541 zeroValueBefore!34)))))))

(declare-fun b!832896 () Bool)

(declare-fun e!464586 () List!16008)

(declare-fun call!36470 () List!16008)

(assert (=> b!832896 (= e!464586 call!36470)))

(declare-fun b!832897 () Bool)

(assert (=> b!832897 (= c!90602 (and ((_ is Cons!16004) (toList!4524 lt!377546)) (bvsgt (_1!5100 (h!17134 (toList!4524 lt!377546))) (_1!5100 (tuple2!10181 lt!377541 zeroValueBefore!34)))))))

(assert (=> b!832897 (= e!464588 e!464586)))

(declare-fun d!106975 () Bool)

(assert (=> d!106975 e!464585))

(declare-fun res!566594 () Bool)

(assert (=> d!106975 (=> (not res!566594) (not e!464585))))

(assert (=> d!106975 (= res!566594 (isStrictlySorted!438 lt!377998))))

(assert (=> d!106975 (= lt!377998 e!464584)))

(declare-fun c!90601 () Bool)

(assert (=> d!106975 (= c!90601 (and ((_ is Cons!16004) (toList!4524 lt!377546)) (bvslt (_1!5100 (h!17134 (toList!4524 lt!377546))) (_1!5100 (tuple2!10181 lt!377541 zeroValueBefore!34)))))))

(assert (=> d!106975 (isStrictlySorted!438 (toList!4524 lt!377546))))

(assert (=> d!106975 (= (insertStrictlySorted!269 (toList!4524 lt!377546) (_1!5100 (tuple2!10181 lt!377541 zeroValueBefore!34)) (_2!5100 (tuple2!10181 lt!377541 zeroValueBefore!34))) lt!377998)))

(declare-fun b!832898 () Bool)

(assert (=> b!832898 (= e!464586 call!36470)))

(declare-fun bm!36468 () Bool)

(assert (=> bm!36468 (= call!36472 ($colon$colon!536 e!464587 (ite c!90601 (h!17134 (toList!4524 lt!377546)) (tuple2!10181 (_1!5100 (tuple2!10181 lt!377541 zeroValueBefore!34)) (_2!5100 (tuple2!10181 lt!377541 zeroValueBefore!34))))))))

(declare-fun c!90599 () Bool)

(assert (=> bm!36468 (= c!90599 c!90601)))

(declare-fun bm!36469 () Bool)

(assert (=> bm!36469 (= call!36470 call!36471)))

(declare-fun b!832899 () Bool)

(assert (=> b!832899 (= e!464584 call!36472)))

(assert (= (and d!106975 c!90601) b!832899))

(assert (= (and d!106975 (not c!90601)) b!832893))

(assert (= (and b!832893 c!90600) b!832890))

(assert (= (and b!832893 (not c!90600)) b!832897))

(assert (= (and b!832897 c!90602) b!832896))

(assert (= (and b!832897 (not c!90602)) b!832898))

(assert (= (or b!832896 b!832898) bm!36469))

(assert (= (or b!832890 bm!36469) bm!36467))

(assert (= (or b!832899 bm!36467) bm!36468))

(assert (= (and bm!36468 c!90599) b!832894))

(assert (= (and bm!36468 (not c!90599)) b!832892))

(assert (= (and d!106975 res!566594) b!832891))

(assert (= (and b!832891 res!566593) b!832895))

(declare-fun m!777639 () Bool)

(assert (=> b!832891 m!777639))

(declare-fun m!777641 () Bool)

(assert (=> b!832894 m!777641))

(declare-fun m!777643 () Bool)

(assert (=> d!106975 m!777643))

(declare-fun m!777645 () Bool)

(assert (=> d!106975 m!777645))

(declare-fun m!777647 () Bool)

(assert (=> b!832895 m!777647))

(declare-fun m!777649 () Bool)

(assert (=> bm!36468 m!777649))

(assert (=> d!106277 d!106975))

(declare-fun d!106977 () Bool)

(declare-fun c!90603 () Bool)

(assert (=> d!106977 (= c!90603 (and ((_ is Cons!16004) (toList!4524 lt!377656)) (= (_1!5100 (h!17134 (toList!4524 lt!377656))) (_1!5100 (tuple2!10181 lt!377526 zeroValueAfter!34)))))))

(declare-fun e!464589 () Option!421)

(assert (=> d!106977 (= (getValueByKey!415 (toList!4524 lt!377656) (_1!5100 (tuple2!10181 lt!377526 zeroValueAfter!34))) e!464589)))

(declare-fun b!832900 () Bool)

(assert (=> b!832900 (= e!464589 (Some!420 (_2!5100 (h!17134 (toList!4524 lt!377656)))))))

(declare-fun b!832903 () Bool)

(declare-fun e!464590 () Option!421)

(assert (=> b!832903 (= e!464590 None!419)))

(declare-fun b!832901 () Bool)

(assert (=> b!832901 (= e!464589 e!464590)))

(declare-fun c!90604 () Bool)

(assert (=> b!832901 (= c!90604 (and ((_ is Cons!16004) (toList!4524 lt!377656)) (not (= (_1!5100 (h!17134 (toList!4524 lt!377656))) (_1!5100 (tuple2!10181 lt!377526 zeroValueAfter!34))))))))

(declare-fun b!832902 () Bool)

(assert (=> b!832902 (= e!464590 (getValueByKey!415 (t!22384 (toList!4524 lt!377656)) (_1!5100 (tuple2!10181 lt!377526 zeroValueAfter!34))))))

(assert (= (and d!106977 c!90603) b!832900))

(assert (= (and d!106977 (not c!90603)) b!832901))

(assert (= (and b!832901 c!90604) b!832902))

(assert (= (and b!832901 (not c!90604)) b!832903))

(declare-fun m!777651 () Bool)

(assert (=> b!832902 m!777651))

(assert (=> b!831997 d!106977))

(assert (=> b!832238 d!106773))

(assert (=> b!832238 d!106775))

(assert (=> b!831975 d!106611))

(declare-fun d!106979 () Bool)

(assert (=> d!106979 (isDefined!312 (getValueByKey!415 (toList!4524 (+!1952 lt!377441 (tuple2!10181 lt!377438 lt!377443))) lt!377439))))

(declare-fun lt!377999 () Unit!28497)

(assert (=> d!106979 (= lt!377999 (choose!1435 (toList!4524 (+!1952 lt!377441 (tuple2!10181 lt!377438 lt!377443))) lt!377439))))

(declare-fun e!464591 () Bool)

(assert (=> d!106979 e!464591))

(declare-fun res!566595 () Bool)

(assert (=> d!106979 (=> (not res!566595) (not e!464591))))

(assert (=> d!106979 (= res!566595 (isStrictlySorted!438 (toList!4524 (+!1952 lt!377441 (tuple2!10181 lt!377438 lt!377443)))))))

(assert (=> d!106979 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!311 (toList!4524 (+!1952 lt!377441 (tuple2!10181 lt!377438 lt!377443))) lt!377439) lt!377999)))

(declare-fun b!832904 () Bool)

(assert (=> b!832904 (= e!464591 (containsKey!401 (toList!4524 (+!1952 lt!377441 (tuple2!10181 lt!377438 lt!377443))) lt!377439))))

(assert (= (and d!106979 res!566595) b!832904))

(assert (=> d!106979 m!776595))

(assert (=> d!106979 m!776595))

(assert (=> d!106979 m!776597))

(declare-fun m!777653 () Bool)

(assert (=> d!106979 m!777653))

(declare-fun m!777655 () Bool)

(assert (=> d!106979 m!777655))

(assert (=> b!832904 m!776591))

(assert (=> b!832194 d!106979))

(declare-fun d!106981 () Bool)

(assert (=> d!106981 (= (isDefined!312 (getValueByKey!415 (toList!4524 (+!1952 lt!377441 (tuple2!10181 lt!377438 lt!377443))) lt!377439)) (not (isEmpty!664 (getValueByKey!415 (toList!4524 (+!1952 lt!377441 (tuple2!10181 lt!377438 lt!377443))) lt!377439))))))

(declare-fun bs!23309 () Bool)

(assert (= bs!23309 d!106981))

(assert (=> bs!23309 m!776595))

(declare-fun m!777657 () Bool)

(assert (=> bs!23309 m!777657))

(assert (=> b!832194 d!106981))

(declare-fun c!90605 () Bool)

(declare-fun d!106983 () Bool)

(assert (=> d!106983 (= c!90605 (and ((_ is Cons!16004) (toList!4524 (+!1952 lt!377441 (tuple2!10181 lt!377438 lt!377443)))) (= (_1!5100 (h!17134 (toList!4524 (+!1952 lt!377441 (tuple2!10181 lt!377438 lt!377443))))) lt!377439)))))

(declare-fun e!464592 () Option!421)

(assert (=> d!106983 (= (getValueByKey!415 (toList!4524 (+!1952 lt!377441 (tuple2!10181 lt!377438 lt!377443))) lt!377439) e!464592)))

(declare-fun b!832905 () Bool)

(assert (=> b!832905 (= e!464592 (Some!420 (_2!5100 (h!17134 (toList!4524 (+!1952 lt!377441 (tuple2!10181 lt!377438 lt!377443)))))))))

(declare-fun b!832908 () Bool)

(declare-fun e!464593 () Option!421)

(assert (=> b!832908 (= e!464593 None!419)))

(declare-fun b!832906 () Bool)

(assert (=> b!832906 (= e!464592 e!464593)))

(declare-fun c!90606 () Bool)

(assert (=> b!832906 (= c!90606 (and ((_ is Cons!16004) (toList!4524 (+!1952 lt!377441 (tuple2!10181 lt!377438 lt!377443)))) (not (= (_1!5100 (h!17134 (toList!4524 (+!1952 lt!377441 (tuple2!10181 lt!377438 lt!377443))))) lt!377439))))))

(declare-fun b!832907 () Bool)

(assert (=> b!832907 (= e!464593 (getValueByKey!415 (t!22384 (toList!4524 (+!1952 lt!377441 (tuple2!10181 lt!377438 lt!377443)))) lt!377439))))

(assert (= (and d!106983 c!90605) b!832905))

(assert (= (and d!106983 (not c!90605)) b!832906))

(assert (= (and b!832906 c!90606) b!832907))

(assert (= (and b!832906 (not c!90606)) b!832908))

(declare-fun m!777659 () Bool)

(assert (=> b!832907 m!777659))

(assert (=> b!832194 d!106983))

(declare-fun d!106985 () Bool)

(assert (=> d!106985 (isDefined!312 (getValueByKey!415 (toList!4524 lt!377451) (_1!5100 lt!377372)))))

(declare-fun lt!378000 () Unit!28497)

(assert (=> d!106985 (= lt!378000 (choose!1435 (toList!4524 lt!377451) (_1!5100 lt!377372)))))

(declare-fun e!464594 () Bool)

(assert (=> d!106985 e!464594))

(declare-fun res!566596 () Bool)

(assert (=> d!106985 (=> (not res!566596) (not e!464594))))

(assert (=> d!106985 (= res!566596 (isStrictlySorted!438 (toList!4524 lt!377451)))))

(assert (=> d!106985 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!311 (toList!4524 lt!377451) (_1!5100 lt!377372)) lt!378000)))

(declare-fun b!832909 () Bool)

(assert (=> b!832909 (= e!464594 (containsKey!401 (toList!4524 lt!377451) (_1!5100 lt!377372)))))

(assert (= (and d!106985 res!566596) b!832909))

(assert (=> d!106985 m!775793))

(assert (=> d!106985 m!775793))

(assert (=> d!106985 m!776343))

(declare-fun m!777661 () Bool)

(assert (=> d!106985 m!777661))

(declare-fun m!777663 () Bool)

(assert (=> d!106985 m!777663))

(assert (=> b!832909 m!776339))

(assert (=> b!832027 d!106985))

(declare-fun d!106987 () Bool)

(assert (=> d!106987 (= (isDefined!312 (getValueByKey!415 (toList!4524 lt!377451) (_1!5100 lt!377372))) (not (isEmpty!664 (getValueByKey!415 (toList!4524 lt!377451) (_1!5100 lt!377372)))))))

(declare-fun bs!23310 () Bool)

(assert (= bs!23310 d!106987))

(assert (=> bs!23310 m!775793))

(declare-fun m!777665 () Bool)

(assert (=> bs!23310 m!777665))

(assert (=> b!832027 d!106987))

(assert (=> b!832027 d!106475))

(declare-fun d!106989 () Bool)

(declare-fun c!90607 () Bool)

(assert (=> d!106989 (= c!90607 (and ((_ is Cons!16004) (t!22384 (toList!4524 lt!377529))) (= (_1!5100 (h!17134 (t!22384 (toList!4524 lt!377529)))) (_1!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))))))

(declare-fun e!464595 () Option!421)

(assert (=> d!106989 (= (getValueByKey!415 (t!22384 (toList!4524 lt!377529)) (_1!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))) e!464595)))

(declare-fun b!832910 () Bool)

(assert (=> b!832910 (= e!464595 (Some!420 (_2!5100 (h!17134 (t!22384 (toList!4524 lt!377529))))))))

(declare-fun b!832913 () Bool)

(declare-fun e!464596 () Option!421)

(assert (=> b!832913 (= e!464596 None!419)))

(declare-fun b!832911 () Bool)

(assert (=> b!832911 (= e!464595 e!464596)))

(declare-fun c!90608 () Bool)

(assert (=> b!832911 (= c!90608 (and ((_ is Cons!16004) (t!22384 (toList!4524 lt!377529))) (not (= (_1!5100 (h!17134 (t!22384 (toList!4524 lt!377529)))) (_1!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))))))

(declare-fun b!832912 () Bool)

(assert (=> b!832912 (= e!464596 (getValueByKey!415 (t!22384 (t!22384 (toList!4524 lt!377529))) (_1!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))))

(assert (= (and d!106989 c!90607) b!832910))

(assert (= (and d!106989 (not c!90607)) b!832911))

(assert (= (and b!832911 c!90608) b!832912))

(assert (= (and b!832911 (not c!90608)) b!832913))

(declare-fun m!777667 () Bool)

(assert (=> b!832912 m!777667))

(assert (=> b!832184 d!106989))

(assert (=> b!831996 d!106759))

(assert (=> b!831996 d!106761))

(assert (=> d!106419 d!106417))

(declare-fun d!106991 () Bool)

(assert (=> d!106991 (= (getValueByKey!415 lt!377461 (_1!5100 lt!377372)) (Some!420 (_2!5100 lt!377372)))))

(assert (=> d!106991 true))

(declare-fun _$22!580 () Unit!28497)

(assert (=> d!106991 (= (choose!1433 lt!377461 (_1!5100 lt!377372) (_2!5100 lt!377372)) _$22!580)))

(declare-fun bs!23311 () Bool)

(assert (= bs!23311 d!106991))

(assert (=> bs!23311 m!775811))

(assert (=> d!106419 d!106991))

(declare-fun d!106993 () Bool)

(declare-fun res!566597 () Bool)

(declare-fun e!464597 () Bool)

(assert (=> d!106993 (=> res!566597 e!464597)))

(assert (=> d!106993 (= res!566597 (or ((_ is Nil!16005) lt!377461) ((_ is Nil!16005) (t!22384 lt!377461))))))

(assert (=> d!106993 (= (isStrictlySorted!438 lt!377461) e!464597)))

(declare-fun b!832914 () Bool)

(declare-fun e!464598 () Bool)

(assert (=> b!832914 (= e!464597 e!464598)))

(declare-fun res!566598 () Bool)

(assert (=> b!832914 (=> (not res!566598) (not e!464598))))

(assert (=> b!832914 (= res!566598 (bvslt (_1!5100 (h!17134 lt!377461)) (_1!5100 (h!17134 (t!22384 lt!377461)))))))

(declare-fun b!832915 () Bool)

(assert (=> b!832915 (= e!464598 (isStrictlySorted!438 (t!22384 lt!377461)))))

(assert (= (and d!106993 (not res!566597)) b!832914))

(assert (= (and b!832914 res!566598) b!832915))

(declare-fun m!777669 () Bool)

(assert (=> b!832915 m!777669))

(assert (=> d!106419 d!106993))

(declare-fun lt!378001 () Bool)

(declare-fun d!106995 () Bool)

(assert (=> d!106995 (= lt!378001 (select (content!390 (toList!4524 lt!377573)) (tuple2!10181 lt!377555 minValue!754)))))

(declare-fun e!464599 () Bool)

(assert (=> d!106995 (= lt!378001 e!464599)))

(declare-fun res!566599 () Bool)

(assert (=> d!106995 (=> (not res!566599) (not e!464599))))

(assert (=> d!106995 (= res!566599 ((_ is Cons!16004) (toList!4524 lt!377573)))))

(assert (=> d!106995 (= (contains!4213 (toList!4524 lt!377573) (tuple2!10181 lt!377555 minValue!754)) lt!378001)))

(declare-fun b!832916 () Bool)

(declare-fun e!464600 () Bool)

(assert (=> b!832916 (= e!464599 e!464600)))

(declare-fun res!566600 () Bool)

(assert (=> b!832916 (=> res!566600 e!464600)))

(assert (=> b!832916 (= res!566600 (= (h!17134 (toList!4524 lt!377573)) (tuple2!10181 lt!377555 minValue!754)))))

(declare-fun b!832917 () Bool)

(assert (=> b!832917 (= e!464600 (contains!4213 (t!22384 (toList!4524 lt!377573)) (tuple2!10181 lt!377555 minValue!754)))))

(assert (= (and d!106995 res!566599) b!832916))

(assert (= (and b!832916 (not res!566600)) b!832917))

(declare-fun m!777671 () Bool)

(assert (=> d!106995 m!777671))

(declare-fun m!777673 () Bool)

(assert (=> d!106995 m!777673))

(declare-fun m!777675 () Bool)

(assert (=> b!832917 m!777675))

(assert (=> b!831873 d!106995))

(declare-fun d!106997 () Bool)

(declare-fun res!566601 () Bool)

(declare-fun e!464601 () Bool)

(assert (=> d!106997 (=> res!566601 e!464601)))

(assert (=> d!106997 (= res!566601 (and ((_ is Cons!16004) lt!377457) (= (_1!5100 (h!17134 lt!377457)) (_1!5100 lt!377371))))))

(assert (=> d!106997 (= (containsKey!401 lt!377457 (_1!5100 lt!377371)) e!464601)))

(declare-fun b!832918 () Bool)

(declare-fun e!464602 () Bool)

(assert (=> b!832918 (= e!464601 e!464602)))

(declare-fun res!566602 () Bool)

(assert (=> b!832918 (=> (not res!566602) (not e!464602))))

(assert (=> b!832918 (= res!566602 (and (or (not ((_ is Cons!16004) lt!377457)) (bvsle (_1!5100 (h!17134 lt!377457)) (_1!5100 lt!377371))) ((_ is Cons!16004) lt!377457) (bvslt (_1!5100 (h!17134 lt!377457)) (_1!5100 lt!377371))))))

(declare-fun b!832919 () Bool)

(assert (=> b!832919 (= e!464602 (containsKey!401 (t!22384 lt!377457) (_1!5100 lt!377371)))))

(assert (= (and d!106997 (not res!566601)) b!832918))

(assert (= (and b!832918 res!566602) b!832919))

(declare-fun m!777677 () Bool)

(assert (=> b!832919 m!777677))

(assert (=> b!832130 d!106997))

(assert (=> d!106265 d!106275))

(assert (=> d!106265 d!106277))

(declare-fun d!106999 () Bool)

(assert (=> d!106999 (contains!4212 (+!1952 lt!377546 (tuple2!10181 lt!377541 zeroValueBefore!34)) lt!377547)))

(assert (=> d!106999 true))

(declare-fun _$35!428 () Unit!28497)

(assert (=> d!106999 (= (choose!1432 lt!377546 lt!377541 zeroValueBefore!34 lt!377547) _$35!428)))

(declare-fun bs!23312 () Bool)

(assert (= bs!23312 d!106999))

(assert (=> bs!23312 m!775917))

(assert (=> bs!23312 m!775917))

(assert (=> bs!23312 m!775923))

(assert (=> d!106265 d!106999))

(declare-fun d!107001 () Bool)

(declare-fun e!464603 () Bool)

(assert (=> d!107001 e!464603))

(declare-fun res!566603 () Bool)

(assert (=> d!107001 (=> res!566603 e!464603)))

(declare-fun lt!378005 () Bool)

(assert (=> d!107001 (= res!566603 (not lt!378005))))

(declare-fun lt!378002 () Bool)

(assert (=> d!107001 (= lt!378005 lt!378002)))

(declare-fun lt!378004 () Unit!28497)

(declare-fun e!464604 () Unit!28497)

(assert (=> d!107001 (= lt!378004 e!464604)))

(declare-fun c!90609 () Bool)

(assert (=> d!107001 (= c!90609 lt!378002)))

(assert (=> d!107001 (= lt!378002 (containsKey!401 (toList!4524 lt!377546) lt!377547))))

(assert (=> d!107001 (= (contains!4212 lt!377546 lt!377547) lt!378005)))

(declare-fun b!832920 () Bool)

(declare-fun lt!378003 () Unit!28497)

(assert (=> b!832920 (= e!464604 lt!378003)))

(assert (=> b!832920 (= lt!378003 (lemmaContainsKeyImpliesGetValueByKeyDefined!311 (toList!4524 lt!377546) lt!377547))))

(assert (=> b!832920 (isDefined!312 (getValueByKey!415 (toList!4524 lt!377546) lt!377547))))

(declare-fun b!832921 () Bool)

(declare-fun Unit!28548 () Unit!28497)

(assert (=> b!832921 (= e!464604 Unit!28548)))

(declare-fun b!832922 () Bool)

(assert (=> b!832922 (= e!464603 (isDefined!312 (getValueByKey!415 (toList!4524 lt!377546) lt!377547)))))

(assert (= (and d!107001 c!90609) b!832920))

(assert (= (and d!107001 (not c!90609)) b!832921))

(assert (= (and d!107001 (not res!566603)) b!832922))

(declare-fun m!777679 () Bool)

(assert (=> d!107001 m!777679))

(declare-fun m!777681 () Bool)

(assert (=> b!832920 m!777681))

(declare-fun m!777683 () Bool)

(assert (=> b!832920 m!777683))

(assert (=> b!832920 m!777683))

(declare-fun m!777685 () Bool)

(assert (=> b!832920 m!777685))

(assert (=> b!832922 m!777683))

(assert (=> b!832922 m!777683))

(assert (=> b!832922 m!777685))

(assert (=> d!106265 d!107001))

(assert (=> b!832125 d!106783))

(assert (=> b!832125 d!106447))

(declare-fun d!107003 () Bool)

(assert (=> d!107003 (= ($colon$colon!536 e!464119 (ite c!90376 (h!17134 (toList!4524 lt!377369)) (tuple2!10181 (_1!5100 lt!377372) (_2!5100 lt!377372)))) (Cons!16004 (ite c!90376 (h!17134 (toList!4524 lt!377369)) (tuple2!10181 (_1!5100 lt!377372) (_2!5100 lt!377372))) e!464119))))

(assert (=> bm!36419 d!107003))

(declare-fun d!107005 () Bool)

(declare-fun res!566604 () Bool)

(declare-fun e!464605 () Bool)

(assert (=> d!107005 (=> res!566604 e!464605)))

(assert (=> d!107005 (= res!566604 (and ((_ is Cons!16004) (toList!4524 lt!377451)) (= (_1!5100 (h!17134 (toList!4524 lt!377451))) (_1!5100 lt!377372))))))

(assert (=> d!107005 (= (containsKey!401 (toList!4524 lt!377451) (_1!5100 lt!377372)) e!464605)))

(declare-fun b!832923 () Bool)

(declare-fun e!464606 () Bool)

(assert (=> b!832923 (= e!464605 e!464606)))

(declare-fun res!566605 () Bool)

(assert (=> b!832923 (=> (not res!566605) (not e!464606))))

(assert (=> b!832923 (= res!566605 (and (or (not ((_ is Cons!16004) (toList!4524 lt!377451))) (bvsle (_1!5100 (h!17134 (toList!4524 lt!377451))) (_1!5100 lt!377372))) ((_ is Cons!16004) (toList!4524 lt!377451)) (bvslt (_1!5100 (h!17134 (toList!4524 lt!377451))) (_1!5100 lt!377372))))))

(declare-fun b!832924 () Bool)

(assert (=> b!832924 (= e!464606 (containsKey!401 (t!22384 (toList!4524 lt!377451)) (_1!5100 lt!377372)))))

(assert (= (and d!107005 (not res!566604)) b!832923))

(assert (= (and b!832923 res!566605) b!832924))

(declare-fun m!777687 () Bool)

(assert (=> b!832924 m!777687))

(assert (=> d!106369 d!107005))

(declare-fun d!107007 () Bool)

(assert (=> d!107007 (= ($colon$colon!536 e!464129 (ite c!90383 (h!17134 (toList!4524 lt!377373)) (tuple2!10181 (_1!5100 lt!377371) (_2!5100 lt!377371)))) (Cons!16004 (ite c!90383 (h!17134 (toList!4524 lt!377373)) (tuple2!10181 (_1!5100 lt!377371) (_2!5100 lt!377371))) e!464129))))

(assert (=> bm!36422 d!107007))

(assert (=> d!106429 d!106427))

(declare-fun d!107009 () Bool)

(assert (=> d!107009 (= (getValueByKey!415 lt!377535 (_1!5100 lt!377371)) (Some!420 (_2!5100 lt!377371)))))

(assert (=> d!107009 true))

(declare-fun _$22!581 () Unit!28497)

(assert (=> d!107009 (= (choose!1433 lt!377535 (_1!5100 lt!377371) (_2!5100 lt!377371)) _$22!581)))

(declare-fun bs!23313 () Bool)

(assert (= bs!23313 d!107009))

(assert (=> bs!23313 m!775881))

(assert (=> d!106429 d!107009))

(declare-fun d!107011 () Bool)

(declare-fun res!566606 () Bool)

(declare-fun e!464607 () Bool)

(assert (=> d!107011 (=> res!566606 e!464607)))

(assert (=> d!107011 (= res!566606 (or ((_ is Nil!16005) lt!377535) ((_ is Nil!16005) (t!22384 lt!377535))))))

(assert (=> d!107011 (= (isStrictlySorted!438 lt!377535) e!464607)))

(declare-fun b!832925 () Bool)

(declare-fun e!464608 () Bool)

(assert (=> b!832925 (= e!464607 e!464608)))

(declare-fun res!566607 () Bool)

(assert (=> b!832925 (=> (not res!566607) (not e!464608))))

(assert (=> b!832925 (= res!566607 (bvslt (_1!5100 (h!17134 lt!377535)) (_1!5100 (h!17134 (t!22384 lt!377535)))))))

(declare-fun b!832926 () Bool)

(assert (=> b!832926 (= e!464608 (isStrictlySorted!438 (t!22384 lt!377535)))))

(assert (= (and d!107011 (not res!566606)) b!832925))

(assert (= (and b!832925 res!566607) b!832926))

(declare-fun m!777689 () Bool)

(assert (=> b!832926 m!777689))

(assert (=> d!106429 d!107011))

(declare-fun d!107013 () Bool)

(declare-fun res!566608 () Bool)

(declare-fun e!464609 () Bool)

(assert (=> d!107013 (=> res!566608 e!464609)))

(assert (=> d!107013 (= res!566608 (and ((_ is Cons!16004) (toList!4524 (+!1952 lt!377448 (tuple2!10181 lt!377445 lt!377450)))) (= (_1!5100 (h!17134 (toList!4524 (+!1952 lt!377448 (tuple2!10181 lt!377445 lt!377450))))) lt!377446)))))

(assert (=> d!107013 (= (containsKey!401 (toList!4524 (+!1952 lt!377448 (tuple2!10181 lt!377445 lt!377450))) lt!377446) e!464609)))

(declare-fun b!832927 () Bool)

(declare-fun e!464610 () Bool)

(assert (=> b!832927 (= e!464609 e!464610)))

(declare-fun res!566609 () Bool)

(assert (=> b!832927 (=> (not res!566609) (not e!464610))))

(assert (=> b!832927 (= res!566609 (and (or (not ((_ is Cons!16004) (toList!4524 (+!1952 lt!377448 (tuple2!10181 lt!377445 lt!377450))))) (bvsle (_1!5100 (h!17134 (toList!4524 (+!1952 lt!377448 (tuple2!10181 lt!377445 lt!377450))))) lt!377446)) ((_ is Cons!16004) (toList!4524 (+!1952 lt!377448 (tuple2!10181 lt!377445 lt!377450)))) (bvslt (_1!5100 (h!17134 (toList!4524 (+!1952 lt!377448 (tuple2!10181 lt!377445 lt!377450))))) lt!377446)))))

(declare-fun b!832928 () Bool)

(assert (=> b!832928 (= e!464610 (containsKey!401 (t!22384 (toList!4524 (+!1952 lt!377448 (tuple2!10181 lt!377445 lt!377450)))) lt!377446))))

(assert (= (and d!107013 (not res!566608)) b!832927))

(assert (= (and b!832927 res!566609) b!832928))

(declare-fun m!777691 () Bool)

(assert (=> b!832928 m!777691))

(assert (=> d!106457 d!107013))

(declare-fun c!90610 () Bool)

(declare-fun d!107015 () Bool)

(assert (=> d!107015 (= c!90610 (and ((_ is Cons!16004) (toList!4524 lt!377594)) (= (_1!5100 (h!17134 (toList!4524 lt!377594))) (_1!5100 (tuple2!10181 lt!377541 zeroValueBefore!34)))))))

(declare-fun e!464611 () Option!421)

(assert (=> d!107015 (= (getValueByKey!415 (toList!4524 lt!377594) (_1!5100 (tuple2!10181 lt!377541 zeroValueBefore!34))) e!464611)))

(declare-fun b!832929 () Bool)

(assert (=> b!832929 (= e!464611 (Some!420 (_2!5100 (h!17134 (toList!4524 lt!377594)))))))

(declare-fun b!832932 () Bool)

(declare-fun e!464612 () Option!421)

(assert (=> b!832932 (= e!464612 None!419)))

(declare-fun b!832930 () Bool)

(assert (=> b!832930 (= e!464611 e!464612)))

(declare-fun c!90611 () Bool)

(assert (=> b!832930 (= c!90611 (and ((_ is Cons!16004) (toList!4524 lt!377594)) (not (= (_1!5100 (h!17134 (toList!4524 lt!377594))) (_1!5100 (tuple2!10181 lt!377541 zeroValueBefore!34))))))))

(declare-fun b!832931 () Bool)

(assert (=> b!832931 (= e!464612 (getValueByKey!415 (t!22384 (toList!4524 lt!377594)) (_1!5100 (tuple2!10181 lt!377541 zeroValueBefore!34))))))

(assert (= (and d!107015 c!90610) b!832929))

(assert (= (and d!107015 (not c!90610)) b!832930))

(assert (= (and b!832930 c!90611) b!832931))

(assert (= (and b!832930 (not c!90611)) b!832932))

(declare-fun m!777693 () Bool)

(assert (=> b!832931 m!777693))

(assert (=> b!831886 d!107015))

(declare-fun d!107017 () Bool)

(declare-fun res!566610 () Bool)

(declare-fun e!464613 () Bool)

(assert (=> d!107017 (=> res!566610 e!464613)))

(assert (=> d!107017 (= res!566610 (and ((_ is Cons!16004) (toList!4524 (+!1952 lt!377441 (tuple2!10181 lt!377438 lt!377443)))) (= (_1!5100 (h!17134 (toList!4524 (+!1952 lt!377441 (tuple2!10181 lt!377438 lt!377443))))) lt!377439)))))

(assert (=> d!107017 (= (containsKey!401 (toList!4524 (+!1952 lt!377441 (tuple2!10181 lt!377438 lt!377443))) lt!377439) e!464613)))

(declare-fun b!832933 () Bool)

(declare-fun e!464614 () Bool)

(assert (=> b!832933 (= e!464613 e!464614)))

(declare-fun res!566611 () Bool)

(assert (=> b!832933 (=> (not res!566611) (not e!464614))))

(assert (=> b!832933 (= res!566611 (and (or (not ((_ is Cons!16004) (toList!4524 (+!1952 lt!377441 (tuple2!10181 lt!377438 lt!377443))))) (bvsle (_1!5100 (h!17134 (toList!4524 (+!1952 lt!377441 (tuple2!10181 lt!377438 lt!377443))))) lt!377439)) ((_ is Cons!16004) (toList!4524 (+!1952 lt!377441 (tuple2!10181 lt!377438 lt!377443)))) (bvslt (_1!5100 (h!17134 (toList!4524 (+!1952 lt!377441 (tuple2!10181 lt!377438 lt!377443))))) lt!377439)))))

(declare-fun b!832934 () Bool)

(assert (=> b!832934 (= e!464614 (containsKey!401 (t!22384 (toList!4524 (+!1952 lt!377441 (tuple2!10181 lt!377438 lt!377443)))) lt!377439))))

(assert (= (and d!107017 (not res!566610)) b!832933))

(assert (= (and b!832933 res!566611) b!832934))

(declare-fun m!777695 () Bool)

(assert (=> b!832934 m!777695))

(assert (=> d!106445 d!107017))

(declare-fun d!107019 () Bool)

(declare-fun lt!378006 () Bool)

(assert (=> d!107019 (= lt!378006 (select (content!390 (toList!4524 lt!377801)) (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))))

(declare-fun e!464615 () Bool)

(assert (=> d!107019 (= lt!378006 e!464615)))

(declare-fun res!566612 () Bool)

(assert (=> d!107019 (=> (not res!566612) (not e!464615))))

(assert (=> d!107019 (= res!566612 ((_ is Cons!16004) (toList!4524 lt!377801)))))

(assert (=> d!107019 (= (contains!4213 (toList!4524 lt!377801) (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)) lt!378006)))

(declare-fun b!832935 () Bool)

(declare-fun e!464616 () Bool)

(assert (=> b!832935 (= e!464615 e!464616)))

(declare-fun res!566613 () Bool)

(assert (=> b!832935 (=> res!566613 e!464616)))

(assert (=> b!832935 (= res!566613 (= (h!17134 (toList!4524 lt!377801)) (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))))

(declare-fun b!832936 () Bool)

(assert (=> b!832936 (= e!464616 (contains!4213 (t!22384 (toList!4524 lt!377801)) (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))))

(assert (= (and d!107019 res!566612) b!832935))

(assert (= (and b!832935 (not res!566613)) b!832936))

(declare-fun m!777697 () Bool)

(assert (=> d!107019 m!777697))

(declare-fun m!777699 () Bool)

(assert (=> d!107019 m!777699))

(declare-fun m!777701 () Bool)

(assert (=> b!832936 m!777701))

(assert (=> b!832264 d!107019))

(declare-fun d!107021 () Bool)

(declare-fun e!464617 () Bool)

(assert (=> d!107021 e!464617))

(declare-fun res!566614 () Bool)

(assert (=> d!107021 (=> res!566614 e!464617)))

(declare-fun lt!378010 () Bool)

(assert (=> d!107021 (= res!566614 (not lt!378010))))

(declare-fun lt!378007 () Bool)

(assert (=> d!107021 (= lt!378010 lt!378007)))

(declare-fun lt!378009 () Unit!28497)

(declare-fun e!464618 () Unit!28497)

(assert (=> d!107021 (= lt!378009 e!464618)))

(declare-fun c!90612 () Bool)

(assert (=> d!107021 (= c!90612 lt!378007)))

(assert (=> d!107021 (= lt!378007 (containsKey!401 (toList!4524 lt!377639) (select (arr!22317 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> d!107021 (= (contains!4212 lt!377639 (select (arr!22317 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))) lt!378010)))

(declare-fun b!832937 () Bool)

(declare-fun lt!378008 () Unit!28497)

(assert (=> b!832937 (= e!464618 lt!378008)))

(assert (=> b!832937 (= lt!378008 (lemmaContainsKeyImpliesGetValueByKeyDefined!311 (toList!4524 lt!377639) (select (arr!22317 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!832937 (isDefined!312 (getValueByKey!415 (toList!4524 lt!377639) (select (arr!22317 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!832938 () Bool)

(declare-fun Unit!28549 () Unit!28497)

(assert (=> b!832938 (= e!464618 Unit!28549)))

(declare-fun b!832939 () Bool)

(assert (=> b!832939 (= e!464617 (isDefined!312 (getValueByKey!415 (toList!4524 lt!377639) (select (arr!22317 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))))

(assert (= (and d!107021 c!90612) b!832937))

(assert (= (and d!107021 (not c!90612)) b!832938))

(assert (= (and d!107021 (not res!566614)) b!832939))

(assert (=> d!107021 m!776139))

(declare-fun m!777703 () Bool)

(assert (=> d!107021 m!777703))

(assert (=> b!832937 m!776139))

(declare-fun m!777705 () Bool)

(assert (=> b!832937 m!777705))

(assert (=> b!832937 m!776139))

(declare-fun m!777707 () Bool)

(assert (=> b!832937 m!777707))

(assert (=> b!832937 m!777707))

(declare-fun m!777709 () Bool)

(assert (=> b!832937 m!777709))

(assert (=> b!832939 m!776139))

(assert (=> b!832939 m!777707))

(assert (=> b!832939 m!777707))

(assert (=> b!832939 m!777709))

(assert (=> b!831967 d!107021))

(assert (=> b!831891 d!106853))

(assert (=> b!831891 d!106855))

(declare-fun d!107023 () Bool)

(declare-fun res!566615 () Bool)

(declare-fun e!464619 () Bool)

(assert (=> d!107023 (=> res!566615 e!464619)))

(assert (=> d!107023 (= res!566615 (and ((_ is Cons!16004) lt!377736) (= (_1!5100 (h!17134 lt!377736)) (_1!5100 lt!377372))))))

(assert (=> d!107023 (= (containsKey!401 lt!377736 (_1!5100 lt!377372)) e!464619)))

(declare-fun b!832940 () Bool)

(declare-fun e!464620 () Bool)

(assert (=> b!832940 (= e!464619 e!464620)))

(declare-fun res!566616 () Bool)

(assert (=> b!832940 (=> (not res!566616) (not e!464620))))

(assert (=> b!832940 (= res!566616 (and (or (not ((_ is Cons!16004) lt!377736)) (bvsle (_1!5100 (h!17134 lt!377736)) (_1!5100 lt!377372))) ((_ is Cons!16004) lt!377736) (bvslt (_1!5100 (h!17134 lt!377736)) (_1!5100 lt!377372))))))

(declare-fun b!832941 () Bool)

(assert (=> b!832941 (= e!464620 (containsKey!401 (t!22384 lt!377736) (_1!5100 lt!377372)))))

(assert (= (and d!107023 (not res!566615)) b!832940))

(assert (= (and b!832940 res!566616) b!832941))

(declare-fun m!777711 () Bool)

(assert (=> b!832941 m!777711))

(assert (=> b!832152 d!107023))

(declare-fun d!107025 () Bool)

(declare-fun e!464621 () Bool)

(assert (=> d!107025 e!464621))

(declare-fun res!566617 () Bool)

(assert (=> d!107025 (=> res!566617 e!464621)))

(declare-fun lt!378014 () Bool)

(assert (=> d!107025 (= res!566617 (not lt!378014))))

(declare-fun lt!378011 () Bool)

(assert (=> d!107025 (= lt!378014 lt!378011)))

(declare-fun lt!378013 () Unit!28497)

(declare-fun e!464622 () Unit!28497)

(assert (=> d!107025 (= lt!378013 e!464622)))

(declare-fun c!90613 () Bool)

(assert (=> d!107025 (= c!90613 lt!378011)))

(assert (=> d!107025 (= lt!378011 (containsKey!401 (toList!4524 lt!377639) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!107025 (= (contains!4212 lt!377639 #b1000000000000000000000000000000000000000000000000000000000000000) lt!378014)))

(declare-fun b!832942 () Bool)

(declare-fun lt!378012 () Unit!28497)

(assert (=> b!832942 (= e!464622 lt!378012)))

(assert (=> b!832942 (= lt!378012 (lemmaContainsKeyImpliesGetValueByKeyDefined!311 (toList!4524 lt!377639) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!832942 (isDefined!312 (getValueByKey!415 (toList!4524 lt!377639) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!832943 () Bool)

(declare-fun Unit!28550 () Unit!28497)

(assert (=> b!832943 (= e!464622 Unit!28550)))

(declare-fun b!832944 () Bool)

(assert (=> b!832944 (= e!464621 (isDefined!312 (getValueByKey!415 (toList!4524 lt!377639) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!107025 c!90613) b!832942))

(assert (= (and d!107025 (not c!90613)) b!832943))

(assert (= (and d!107025 (not res!566617)) b!832944))

(declare-fun m!777713 () Bool)

(assert (=> d!107025 m!777713))

(declare-fun m!777715 () Bool)

(assert (=> b!832942 m!777715))

(declare-fun m!777717 () Bool)

(assert (=> b!832942 m!777717))

(assert (=> b!832942 m!777717))

(declare-fun m!777719 () Bool)

(assert (=> b!832942 m!777719))

(assert (=> b!832944 m!777717))

(assert (=> b!832944 m!777717))

(assert (=> b!832944 m!777719))

(assert (=> b!831974 d!107025))

(declare-fun d!107027 () Bool)

(declare-fun lt!378015 () Bool)

(assert (=> d!107027 (= lt!378015 (select (content!390 (toList!4524 lt!377578)) (tuple2!10181 lt!377550 minValue!754)))))

(declare-fun e!464623 () Bool)

(assert (=> d!107027 (= lt!378015 e!464623)))

(declare-fun res!566618 () Bool)

(assert (=> d!107027 (=> (not res!566618) (not e!464623))))

(assert (=> d!107027 (= res!566618 ((_ is Cons!16004) (toList!4524 lt!377578)))))

(assert (=> d!107027 (= (contains!4213 (toList!4524 lt!377578) (tuple2!10181 lt!377550 minValue!754)) lt!378015)))

(declare-fun b!832945 () Bool)

(declare-fun e!464624 () Bool)

(assert (=> b!832945 (= e!464623 e!464624)))

(declare-fun res!566619 () Bool)

(assert (=> b!832945 (=> res!566619 e!464624)))

(assert (=> b!832945 (= res!566619 (= (h!17134 (toList!4524 lt!377578)) (tuple2!10181 lt!377550 minValue!754)))))

(declare-fun b!832946 () Bool)

(assert (=> b!832946 (= e!464624 (contains!4213 (t!22384 (toList!4524 lt!377578)) (tuple2!10181 lt!377550 minValue!754)))))

(assert (= (and d!107027 res!566618) b!832945))

(assert (= (and b!832945 (not res!566619)) b!832946))

(declare-fun m!777721 () Bool)

(assert (=> d!107027 m!777721))

(declare-fun m!777723 () Bool)

(assert (=> d!107027 m!777723))

(declare-fun m!777725 () Bool)

(assert (=> b!832946 m!777725))

(assert (=> b!831876 d!107027))

(declare-fun d!107029 () Bool)

(declare-fun e!464625 () Bool)

(assert (=> d!107029 e!464625))

(declare-fun res!566620 () Bool)

(assert (=> d!107029 (=> res!566620 e!464625)))

(declare-fun lt!378019 () Bool)

(assert (=> d!107029 (= res!566620 (not lt!378019))))

(declare-fun lt!378016 () Bool)

(assert (=> d!107029 (= lt!378019 lt!378016)))

(declare-fun lt!378018 () Unit!28497)

(declare-fun e!464626 () Unit!28497)

(assert (=> d!107029 (= lt!378018 e!464626)))

(declare-fun c!90614 () Bool)

(assert (=> d!107029 (= c!90614 lt!378016)))

(assert (=> d!107029 (= lt!378016 (containsKey!401 (toList!4524 lt!377511) lt!377524))))

(assert (=> d!107029 (= (contains!4212 lt!377511 lt!377524) lt!378019)))

(declare-fun b!832947 () Bool)

(declare-fun lt!378017 () Unit!28497)

(assert (=> b!832947 (= e!464626 lt!378017)))

(assert (=> b!832947 (= lt!378017 (lemmaContainsKeyImpliesGetValueByKeyDefined!311 (toList!4524 lt!377511) lt!377524))))

(assert (=> b!832947 (isDefined!312 (getValueByKey!415 (toList!4524 lt!377511) lt!377524))))

(declare-fun b!832948 () Bool)

(declare-fun Unit!28551 () Unit!28497)

(assert (=> b!832948 (= e!464626 Unit!28551)))

(declare-fun b!832949 () Bool)

(assert (=> b!832949 (= e!464625 (isDefined!312 (getValueByKey!415 (toList!4524 lt!377511) lt!377524)))))

(assert (= (and d!107029 c!90614) b!832947))

(assert (= (and d!107029 (not c!90614)) b!832948))

(assert (= (and d!107029 (not res!566620)) b!832949))

(declare-fun m!777727 () Bool)

(assert (=> d!107029 m!777727))

(declare-fun m!777729 () Bool)

(assert (=> b!832947 m!777729))

(assert (=> b!832947 m!776199))

(assert (=> b!832947 m!776199))

(declare-fun m!777731 () Bool)

(assert (=> b!832947 m!777731))

(assert (=> b!832949 m!776199))

(assert (=> b!832949 m!776199))

(assert (=> b!832949 m!777731))

(assert (=> d!106351 d!107029))

(declare-fun d!107031 () Bool)

(assert (=> d!107031 (= (apply!373 (+!1952 lt!377511 (tuple2!10181 lt!377521 minValue!754)) lt!377524) (apply!373 lt!377511 lt!377524))))

(assert (=> d!107031 true))

(declare-fun _$34!1150 () Unit!28497)

(assert (=> d!107031 (= (choose!1431 lt!377511 lt!377521 minValue!754 lt!377524) _$34!1150)))

(declare-fun bs!23314 () Bool)

(assert (= bs!23314 d!107031))

(assert (=> bs!23314 m!775825))

(assert (=> bs!23314 m!775825))

(assert (=> bs!23314 m!775831))

(assert (=> bs!23314 m!775829))

(assert (=> d!106351 d!107031))

(assert (=> d!106351 d!106329))

(assert (=> d!106351 d!106331))

(assert (=> d!106351 d!106333))

(declare-fun b!832950 () Bool)

(declare-fun e!464631 () List!16008)

(declare-fun call!36474 () List!16008)

(assert (=> b!832950 (= e!464631 call!36474)))

(declare-fun b!832951 () Bool)

(declare-fun res!566621 () Bool)

(declare-fun e!464628 () Bool)

(assert (=> b!832951 (=> (not res!566621) (not e!464628))))

(declare-fun lt!378020 () List!16008)

(assert (=> b!832951 (= res!566621 (containsKey!401 lt!378020 (_1!5100 lt!377372)))))

(declare-fun c!90616 () Bool)

(declare-fun e!464630 () List!16008)

(declare-fun c!90618 () Bool)

(declare-fun b!832952 () Bool)

(assert (=> b!832952 (= e!464630 (ite c!90616 (t!22384 (t!22384 (toList!4524 (+!1952 lt!377369 lt!377371)))) (ite c!90618 (Cons!16004 (h!17134 (t!22384 (toList!4524 (+!1952 lt!377369 lt!377371)))) (t!22384 (t!22384 (toList!4524 (+!1952 lt!377369 lt!377371))))) Nil!16005)))))

(declare-fun b!832953 () Bool)

(declare-fun e!464627 () List!16008)

(assert (=> b!832953 (= e!464627 e!464631)))

(assert (=> b!832953 (= c!90616 (and ((_ is Cons!16004) (t!22384 (toList!4524 (+!1952 lt!377369 lt!377371)))) (= (_1!5100 (h!17134 (t!22384 (toList!4524 (+!1952 lt!377369 lt!377371))))) (_1!5100 lt!377372))))))

(declare-fun b!832954 () Bool)

(assert (=> b!832954 (= e!464630 (insertStrictlySorted!269 (t!22384 (t!22384 (toList!4524 (+!1952 lt!377369 lt!377371)))) (_1!5100 lt!377372) (_2!5100 lt!377372)))))

(declare-fun bm!36470 () Bool)

(declare-fun call!36475 () List!16008)

(assert (=> bm!36470 (= call!36474 call!36475)))

(declare-fun b!832955 () Bool)

(assert (=> b!832955 (= e!464628 (contains!4213 lt!378020 (tuple2!10181 (_1!5100 lt!377372) (_2!5100 lt!377372))))))

(declare-fun b!832956 () Bool)

(declare-fun e!464629 () List!16008)

(declare-fun call!36473 () List!16008)

(assert (=> b!832956 (= e!464629 call!36473)))

(declare-fun b!832957 () Bool)

(assert (=> b!832957 (= c!90618 (and ((_ is Cons!16004) (t!22384 (toList!4524 (+!1952 lt!377369 lt!377371)))) (bvsgt (_1!5100 (h!17134 (t!22384 (toList!4524 (+!1952 lt!377369 lt!377371))))) (_1!5100 lt!377372))))))

(assert (=> b!832957 (= e!464631 e!464629)))

(declare-fun d!107033 () Bool)

(assert (=> d!107033 e!464628))

(declare-fun res!566622 () Bool)

(assert (=> d!107033 (=> (not res!566622) (not e!464628))))

(assert (=> d!107033 (= res!566622 (isStrictlySorted!438 lt!378020))))

(assert (=> d!107033 (= lt!378020 e!464627)))

(declare-fun c!90617 () Bool)

(assert (=> d!107033 (= c!90617 (and ((_ is Cons!16004) (t!22384 (toList!4524 (+!1952 lt!377369 lt!377371)))) (bvslt (_1!5100 (h!17134 (t!22384 (toList!4524 (+!1952 lt!377369 lt!377371))))) (_1!5100 lt!377372))))))

(assert (=> d!107033 (isStrictlySorted!438 (t!22384 (toList!4524 (+!1952 lt!377369 lt!377371))))))

(assert (=> d!107033 (= (insertStrictlySorted!269 (t!22384 (toList!4524 (+!1952 lt!377369 lt!377371))) (_1!5100 lt!377372) (_2!5100 lt!377372)) lt!378020)))

(declare-fun b!832958 () Bool)

(assert (=> b!832958 (= e!464629 call!36473)))

(declare-fun bm!36471 () Bool)

(assert (=> bm!36471 (= call!36475 ($colon$colon!536 e!464630 (ite c!90617 (h!17134 (t!22384 (toList!4524 (+!1952 lt!377369 lt!377371)))) (tuple2!10181 (_1!5100 lt!377372) (_2!5100 lt!377372)))))))

(declare-fun c!90615 () Bool)

(assert (=> bm!36471 (= c!90615 c!90617)))

(declare-fun bm!36472 () Bool)

(assert (=> bm!36472 (= call!36473 call!36474)))

(declare-fun b!832959 () Bool)

(assert (=> b!832959 (= e!464627 call!36475)))

(assert (= (and d!107033 c!90617) b!832959))

(assert (= (and d!107033 (not c!90617)) b!832953))

(assert (= (and b!832953 c!90616) b!832950))

(assert (= (and b!832953 (not c!90616)) b!832957))

(assert (= (and b!832957 c!90618) b!832956))

(assert (= (and b!832957 (not c!90618)) b!832958))

(assert (= (or b!832956 b!832958) bm!36472))

(assert (= (or b!832950 bm!36472) bm!36470))

(assert (= (or b!832959 bm!36470) bm!36471))

(assert (= (and bm!36471 c!90615) b!832954))

(assert (= (and bm!36471 (not c!90615)) b!832952))

(assert (= (and d!107033 res!566622) b!832951))

(assert (= (and b!832951 res!566621) b!832955))

(declare-fun m!777733 () Bool)

(assert (=> b!832951 m!777733))

(declare-fun m!777735 () Bool)

(assert (=> b!832954 m!777735))

(declare-fun m!777737 () Bool)

(assert (=> d!107033 m!777737))

(assert (=> d!107033 m!776823))

(declare-fun m!777739 () Bool)

(assert (=> b!832955 m!777739))

(declare-fun m!777741 () Bool)

(assert (=> bm!36471 m!777741))

(assert (=> b!832040 d!107033))

(assert (=> d!106479 d!106231))

(assert (=> d!106479 d!106229))

(declare-fun d!107035 () Bool)

(assert (=> d!107035 (isDefined!312 (getValueByKey!415 (toList!4524 lt!377542) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!378021 () Unit!28497)

(assert (=> d!107035 (= lt!378021 (choose!1435 (toList!4524 lt!377542) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!464632 () Bool)

(assert (=> d!107035 e!464632))

(declare-fun res!566623 () Bool)

(assert (=> d!107035 (=> (not res!566623) (not e!464632))))

(assert (=> d!107035 (= res!566623 (isStrictlySorted!438 (toList!4524 lt!377542)))))

(assert (=> d!107035 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!311 (toList!4524 lt!377542) #b1000000000000000000000000000000000000000000000000000000000000000) lt!378021)))

(declare-fun b!832960 () Bool)

(assert (=> b!832960 (= e!464632 (containsKey!401 (toList!4524 lt!377542) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!107035 res!566623) b!832960))

(assert (=> d!107035 m!776127))

(assert (=> d!107035 m!776127))

(assert (=> d!107035 m!776129))

(declare-fun m!777743 () Bool)

(assert (=> d!107035 m!777743))

(assert (=> d!107035 m!777247))

(assert (=> b!832960 m!776123))

(assert (=> b!831959 d!107035))

(declare-fun d!107037 () Bool)

(assert (=> d!107037 (= (isDefined!312 (getValueByKey!415 (toList!4524 lt!377542) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (isEmpty!664 (getValueByKey!415 (toList!4524 lt!377542) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun bs!23315 () Bool)

(assert (= bs!23315 d!107037))

(assert (=> bs!23315 m!776127))

(declare-fun m!777745 () Bool)

(assert (=> bs!23315 m!777745))

(assert (=> b!831959 d!107037))

(declare-fun d!107039 () Bool)

(declare-fun c!90619 () Bool)

(assert (=> d!107039 (= c!90619 (and ((_ is Cons!16004) (toList!4524 lt!377542)) (= (_1!5100 (h!17134 (toList!4524 lt!377542))) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!464633 () Option!421)

(assert (=> d!107039 (= (getValueByKey!415 (toList!4524 lt!377542) #b1000000000000000000000000000000000000000000000000000000000000000) e!464633)))

(declare-fun b!832961 () Bool)

(assert (=> b!832961 (= e!464633 (Some!420 (_2!5100 (h!17134 (toList!4524 lt!377542)))))))

(declare-fun b!832964 () Bool)

(declare-fun e!464634 () Option!421)

(assert (=> b!832964 (= e!464634 None!419)))

(declare-fun b!832962 () Bool)

(assert (=> b!832962 (= e!464633 e!464634)))

(declare-fun c!90620 () Bool)

(assert (=> b!832962 (= c!90620 (and ((_ is Cons!16004) (toList!4524 lt!377542)) (not (= (_1!5100 (h!17134 (toList!4524 lt!377542))) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!832963 () Bool)

(assert (=> b!832963 (= e!464634 (getValueByKey!415 (t!22384 (toList!4524 lt!377542)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!107039 c!90619) b!832961))

(assert (= (and d!107039 (not c!90619)) b!832962))

(assert (= (and b!832962 c!90620) b!832963))

(assert (= (and b!832962 (not c!90620)) b!832964))

(declare-fun m!777747 () Bool)

(assert (=> b!832963 m!777747))

(assert (=> b!831959 d!107039))

(declare-fun d!107041 () Bool)

(assert (=> d!107041 (= (get!11829 (getValueByKey!415 (toList!4524 (+!1952 lt!377511 (tuple2!10181 lt!377521 minValue!754))) lt!377524)) (v!10097 (getValueByKey!415 (toList!4524 (+!1952 lt!377511 (tuple2!10181 lt!377521 minValue!754))) lt!377524)))))

(assert (=> d!106333 d!107041))

(declare-fun c!90621 () Bool)

(declare-fun d!107043 () Bool)

(assert (=> d!107043 (= c!90621 (and ((_ is Cons!16004) (toList!4524 (+!1952 lt!377511 (tuple2!10181 lt!377521 minValue!754)))) (= (_1!5100 (h!17134 (toList!4524 (+!1952 lt!377511 (tuple2!10181 lt!377521 minValue!754))))) lt!377524)))))

(declare-fun e!464635 () Option!421)

(assert (=> d!107043 (= (getValueByKey!415 (toList!4524 (+!1952 lt!377511 (tuple2!10181 lt!377521 minValue!754))) lt!377524) e!464635)))

(declare-fun b!832965 () Bool)

(assert (=> b!832965 (= e!464635 (Some!420 (_2!5100 (h!17134 (toList!4524 (+!1952 lt!377511 (tuple2!10181 lt!377521 minValue!754)))))))))

(declare-fun b!832968 () Bool)

(declare-fun e!464636 () Option!421)

(assert (=> b!832968 (= e!464636 None!419)))

(declare-fun b!832966 () Bool)

(assert (=> b!832966 (= e!464635 e!464636)))

(declare-fun c!90622 () Bool)

(assert (=> b!832966 (= c!90622 (and ((_ is Cons!16004) (toList!4524 (+!1952 lt!377511 (tuple2!10181 lt!377521 minValue!754)))) (not (= (_1!5100 (h!17134 (toList!4524 (+!1952 lt!377511 (tuple2!10181 lt!377521 minValue!754))))) lt!377524))))))

(declare-fun b!832967 () Bool)

(assert (=> b!832967 (= e!464636 (getValueByKey!415 (t!22384 (toList!4524 (+!1952 lt!377511 (tuple2!10181 lt!377521 minValue!754)))) lt!377524))))

(assert (= (and d!107043 c!90621) b!832965))

(assert (= (and d!107043 (not c!90621)) b!832966))

(assert (= (and b!832966 c!90622) b!832967))

(assert (= (and b!832966 (not c!90622)) b!832968))

(declare-fun m!777749 () Bool)

(assert (=> b!832967 m!777749))

(assert (=> d!106333 d!107043))

(declare-fun d!107045 () Bool)

(assert (=> d!107045 (isDefined!312 (getValueByKey!415 (toList!4524 lt!377449) (select (arr!22317 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun lt!378022 () Unit!28497)

(assert (=> d!107045 (= lt!378022 (choose!1435 (toList!4524 lt!377449) (select (arr!22317 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun e!464637 () Bool)

(assert (=> d!107045 e!464637))

(declare-fun res!566624 () Bool)

(assert (=> d!107045 (=> (not res!566624) (not e!464637))))

(assert (=> d!107045 (= res!566624 (isStrictlySorted!438 (toList!4524 lt!377449)))))

(assert (=> d!107045 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!311 (toList!4524 lt!377449) (select (arr!22317 _keys!976) #b00000000000000000000000000000000)) lt!378022)))

(declare-fun b!832969 () Bool)

(assert (=> b!832969 (= e!464637 (containsKey!401 (toList!4524 lt!377449) (select (arr!22317 _keys!976) #b00000000000000000000000000000000)))))

(assert (= (and d!107045 res!566624) b!832969))

(assert (=> d!107045 m!775697))

(assert (=> d!107045 m!776071))

(assert (=> d!107045 m!776071))

(assert (=> d!107045 m!776073))

(assert (=> d!107045 m!775697))

(declare-fun m!777751 () Bool)

(assert (=> d!107045 m!777751))

(assert (=> d!107045 m!777403))

(assert (=> b!832969 m!775697))

(assert (=> b!832969 m!776067))

(assert (=> b!831894 d!107045))

(declare-fun d!107047 () Bool)

(assert (=> d!107047 (= (isDefined!312 (getValueByKey!415 (toList!4524 lt!377449) (select (arr!22317 _keys!976) #b00000000000000000000000000000000))) (not (isEmpty!664 (getValueByKey!415 (toList!4524 lt!377449) (select (arr!22317 _keys!976) #b00000000000000000000000000000000)))))))

(declare-fun bs!23316 () Bool)

(assert (= bs!23316 d!107047))

(assert (=> bs!23316 m!776071))

(declare-fun m!777753 () Bool)

(assert (=> bs!23316 m!777753))

(assert (=> b!831894 d!107047))

(declare-fun d!107049 () Bool)

(declare-fun c!90623 () Bool)

(assert (=> d!107049 (= c!90623 (and ((_ is Cons!16004) (toList!4524 lt!377449)) (= (_1!5100 (h!17134 (toList!4524 lt!377449))) (select (arr!22317 _keys!976) #b00000000000000000000000000000000))))))

(declare-fun e!464638 () Option!421)

(assert (=> d!107049 (= (getValueByKey!415 (toList!4524 lt!377449) (select (arr!22317 _keys!976) #b00000000000000000000000000000000)) e!464638)))

(declare-fun b!832970 () Bool)

(assert (=> b!832970 (= e!464638 (Some!420 (_2!5100 (h!17134 (toList!4524 lt!377449)))))))

(declare-fun b!832973 () Bool)

(declare-fun e!464639 () Option!421)

(assert (=> b!832973 (= e!464639 None!419)))

(declare-fun b!832971 () Bool)

(assert (=> b!832971 (= e!464638 e!464639)))

(declare-fun c!90624 () Bool)

(assert (=> b!832971 (= c!90624 (and ((_ is Cons!16004) (toList!4524 lt!377449)) (not (= (_1!5100 (h!17134 (toList!4524 lt!377449))) (select (arr!22317 _keys!976) #b00000000000000000000000000000000)))))))

(declare-fun b!832972 () Bool)

(assert (=> b!832972 (= e!464639 (getValueByKey!415 (t!22384 (toList!4524 lt!377449)) (select (arr!22317 _keys!976) #b00000000000000000000000000000000)))))

(assert (= (and d!107049 c!90623) b!832970))

(assert (= (and d!107049 (not c!90623)) b!832971))

(assert (= (and b!832971 c!90624) b!832972))

(assert (= (and b!832971 (not c!90624)) b!832973))

(assert (=> b!832972 m!775697))

(declare-fun m!777755 () Bool)

(assert (=> b!832972 m!777755))

(assert (=> b!831894 d!107049))

(declare-fun d!107051 () Bool)

(declare-fun res!566625 () Bool)

(declare-fun e!464640 () Bool)

(assert (=> d!107051 (=> res!566625 e!464640)))

(assert (=> d!107051 (= res!566625 (or ((_ is Nil!16005) lt!377736) ((_ is Nil!16005) (t!22384 lt!377736))))))

(assert (=> d!107051 (= (isStrictlySorted!438 lt!377736) e!464640)))

(declare-fun b!832974 () Bool)

(declare-fun e!464641 () Bool)

(assert (=> b!832974 (= e!464640 e!464641)))

(declare-fun res!566626 () Bool)

(assert (=> b!832974 (=> (not res!566626) (not e!464641))))

(assert (=> b!832974 (= res!566626 (bvslt (_1!5100 (h!17134 lt!377736)) (_1!5100 (h!17134 (t!22384 lt!377736)))))))

(declare-fun b!832975 () Bool)

(assert (=> b!832975 (= e!464641 (isStrictlySorted!438 (t!22384 lt!377736)))))

(assert (= (and d!107051 (not res!566625)) b!832974))

(assert (= (and b!832974 res!566626) b!832975))

(declare-fun m!777757 () Bool)

(assert (=> b!832975 m!777757))

(assert (=> d!106421 d!107051))

(declare-fun d!107053 () Bool)

(declare-fun res!566627 () Bool)

(declare-fun e!464642 () Bool)

(assert (=> d!107053 (=> res!566627 e!464642)))

(assert (=> d!107053 (= res!566627 (or ((_ is Nil!16005) (toList!4524 lt!377369)) ((_ is Nil!16005) (t!22384 (toList!4524 lt!377369)))))))

(assert (=> d!107053 (= (isStrictlySorted!438 (toList!4524 lt!377369)) e!464642)))

(declare-fun b!832976 () Bool)

(declare-fun e!464643 () Bool)

(assert (=> b!832976 (= e!464642 e!464643)))

(declare-fun res!566628 () Bool)

(assert (=> b!832976 (=> (not res!566628) (not e!464643))))

(assert (=> b!832976 (= res!566628 (bvslt (_1!5100 (h!17134 (toList!4524 lt!377369))) (_1!5100 (h!17134 (t!22384 (toList!4524 lt!377369))))))))

(declare-fun b!832977 () Bool)

(assert (=> b!832977 (= e!464643 (isStrictlySorted!438 (t!22384 (toList!4524 lt!377369))))))

(assert (= (and d!107053 (not res!566627)) b!832976))

(assert (= (and b!832976 res!566628) b!832977))

(assert (=> b!832977 m!777379))

(assert (=> d!106421 d!107053))

(declare-fun d!107055 () Bool)

(declare-fun lt!378023 () Bool)

(assert (=> d!107055 (= lt!378023 (select (content!390 lt!377539) (tuple2!10181 (_1!5100 lt!377371) (_2!5100 lt!377371))))))

(declare-fun e!464644 () Bool)

(assert (=> d!107055 (= lt!378023 e!464644)))

(declare-fun res!566629 () Bool)

(assert (=> d!107055 (=> (not res!566629) (not e!464644))))

(assert (=> d!107055 (= res!566629 ((_ is Cons!16004) lt!377539))))

(assert (=> d!107055 (= (contains!4213 lt!377539 (tuple2!10181 (_1!5100 lt!377371) (_2!5100 lt!377371))) lt!378023)))

(declare-fun b!832978 () Bool)

(declare-fun e!464645 () Bool)

(assert (=> b!832978 (= e!464644 e!464645)))

(declare-fun res!566630 () Bool)

(assert (=> b!832978 (=> res!566630 e!464645)))

(assert (=> b!832978 (= res!566630 (= (h!17134 lt!377539) (tuple2!10181 (_1!5100 lt!377371) (_2!5100 lt!377371))))))

(declare-fun b!832979 () Bool)

(assert (=> b!832979 (= e!464645 (contains!4213 (t!22384 lt!377539) (tuple2!10181 (_1!5100 lt!377371) (_2!5100 lt!377371))))))

(assert (= (and d!107055 res!566629) b!832978))

(assert (= (and b!832978 (not res!566630)) b!832979))

(declare-fun m!777759 () Bool)

(assert (=> d!107055 m!777759))

(declare-fun m!777761 () Bool)

(assert (=> d!107055 m!777761))

(declare-fun m!777763 () Bool)

(assert (=> b!832979 m!777763))

(assert (=> b!832093 d!107055))

(declare-fun d!107057 () Bool)

(declare-fun c!90625 () Bool)

(assert (=> d!107057 (= c!90625 (and ((_ is Cons!16004) (t!22384 (toList!4524 lt!377407))) (= (_1!5100 (h!17134 (t!22384 (toList!4524 lt!377407)))) (_1!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))))))

(declare-fun e!464646 () Option!421)

(assert (=> d!107057 (= (getValueByKey!415 (t!22384 (toList!4524 lt!377407)) (_1!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))) e!464646)))

(declare-fun b!832980 () Bool)

(assert (=> b!832980 (= e!464646 (Some!420 (_2!5100 (h!17134 (t!22384 (toList!4524 lt!377407))))))))

(declare-fun b!832983 () Bool)

(declare-fun e!464647 () Option!421)

(assert (=> b!832983 (= e!464647 None!419)))

(declare-fun b!832981 () Bool)

(assert (=> b!832981 (= e!464646 e!464647)))

(declare-fun c!90626 () Bool)

(assert (=> b!832981 (= c!90626 (and ((_ is Cons!16004) (t!22384 (toList!4524 lt!377407))) (not (= (_1!5100 (h!17134 (t!22384 (toList!4524 lt!377407)))) (_1!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))))))

(declare-fun b!832982 () Bool)

(assert (=> b!832982 (= e!464647 (getValueByKey!415 (t!22384 (t!22384 (toList!4524 lt!377407))) (_1!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))))

(assert (= (and d!107057 c!90625) b!832980))

(assert (= (and d!107057 (not c!90625)) b!832981))

(assert (= (and b!832981 c!90626) b!832982))

(assert (= (and b!832981 (not c!90626)) b!832983))

(declare-fun m!777765 () Bool)

(assert (=> b!832982 m!777765))

(assert (=> b!832083 d!107057))

(declare-fun d!107059 () Bool)

(declare-fun c!90627 () Bool)

(assert (=> d!107059 (= c!90627 (and ((_ is Cons!16004) (t!22384 (toList!4524 lt!377537))) (= (_1!5100 (h!17134 (t!22384 (toList!4524 lt!377537)))) (_1!5100 lt!377371))))))

(declare-fun e!464648 () Option!421)

(assert (=> d!107059 (= (getValueByKey!415 (t!22384 (toList!4524 lt!377537)) (_1!5100 lt!377371)) e!464648)))

(declare-fun b!832984 () Bool)

(assert (=> b!832984 (= e!464648 (Some!420 (_2!5100 (h!17134 (t!22384 (toList!4524 lt!377537))))))))

(declare-fun b!832987 () Bool)

(declare-fun e!464649 () Option!421)

(assert (=> b!832987 (= e!464649 None!419)))

(declare-fun b!832985 () Bool)

(assert (=> b!832985 (= e!464648 e!464649)))

(declare-fun c!90628 () Bool)

(assert (=> b!832985 (= c!90628 (and ((_ is Cons!16004) (t!22384 (toList!4524 lt!377537))) (not (= (_1!5100 (h!17134 (t!22384 (toList!4524 lt!377537)))) (_1!5100 lt!377371)))))))

(declare-fun b!832986 () Bool)

(assert (=> b!832986 (= e!464649 (getValueByKey!415 (t!22384 (t!22384 (toList!4524 lt!377537))) (_1!5100 lt!377371)))))

(assert (= (and d!107059 c!90627) b!832984))

(assert (= (and d!107059 (not c!90627)) b!832985))

(assert (= (and b!832985 c!90628) b!832986))

(assert (= (and b!832985 (not c!90628)) b!832987))

(declare-fun m!777767 () Bool)

(assert (=> b!832986 m!777767))

(assert (=> b!832259 d!107059))

(declare-fun d!107061 () Bool)

(declare-fun lt!378024 () Bool)

(assert (=> d!107061 (= lt!378024 (select (content!390 lt!377730) (tuple2!10181 (_1!5100 lt!377371) (_2!5100 lt!377371))))))

(declare-fun e!464650 () Bool)

(assert (=> d!107061 (= lt!378024 e!464650)))

(declare-fun res!566631 () Bool)

(assert (=> d!107061 (=> (not res!566631) (not e!464650))))

(assert (=> d!107061 (= res!566631 ((_ is Cons!16004) lt!377730))))

(assert (=> d!107061 (= (contains!4213 lt!377730 (tuple2!10181 (_1!5100 lt!377371) (_2!5100 lt!377371))) lt!378024)))

(declare-fun b!832988 () Bool)

(declare-fun e!464651 () Bool)

(assert (=> b!832988 (= e!464650 e!464651)))

(declare-fun res!566632 () Bool)

(assert (=> b!832988 (=> res!566632 e!464651)))

(assert (=> b!832988 (= res!566632 (= (h!17134 lt!377730) (tuple2!10181 (_1!5100 lt!377371) (_2!5100 lt!377371))))))

(declare-fun b!832989 () Bool)

(assert (=> b!832989 (= e!464651 (contains!4213 (t!22384 lt!377730) (tuple2!10181 (_1!5100 lt!377371) (_2!5100 lt!377371))))))

(assert (= (and d!107061 res!566631) b!832988))

(assert (= (and b!832988 (not res!566632)) b!832989))

(declare-fun m!777769 () Bool)

(assert (=> d!107061 m!777769))

(declare-fun m!777771 () Bool)

(assert (=> d!107061 m!777771))

(declare-fun m!777773 () Bool)

(assert (=> b!832989 m!777773))

(assert (=> b!832137 d!107061))

(declare-fun d!107063 () Bool)

(declare-fun e!464652 () Bool)

(assert (=> d!107063 e!464652))

(declare-fun res!566633 () Bool)

(assert (=> d!107063 (=> res!566633 e!464652)))

(declare-fun lt!378028 () Bool)

(assert (=> d!107063 (= res!566633 (not lt!378028))))

(declare-fun lt!378025 () Bool)

(assert (=> d!107063 (= lt!378028 lt!378025)))

(declare-fun lt!378027 () Unit!28497)

(declare-fun e!464653 () Unit!28497)

(assert (=> d!107063 (= lt!378027 e!464653)))

(declare-fun c!90629 () Bool)

(assert (=> d!107063 (= c!90629 lt!378025)))

(assert (=> d!107063 (= lt!378025 (containsKey!401 (toList!4524 lt!377573) (_1!5100 (tuple2!10181 lt!377555 minValue!754))))))

(assert (=> d!107063 (= (contains!4212 lt!377573 (_1!5100 (tuple2!10181 lt!377555 minValue!754))) lt!378028)))

(declare-fun b!832990 () Bool)

(declare-fun lt!378026 () Unit!28497)

(assert (=> b!832990 (= e!464653 lt!378026)))

(assert (=> b!832990 (= lt!378026 (lemmaContainsKeyImpliesGetValueByKeyDefined!311 (toList!4524 lt!377573) (_1!5100 (tuple2!10181 lt!377555 minValue!754))))))

(assert (=> b!832990 (isDefined!312 (getValueByKey!415 (toList!4524 lt!377573) (_1!5100 (tuple2!10181 lt!377555 minValue!754))))))

(declare-fun b!832991 () Bool)

(declare-fun Unit!28552 () Unit!28497)

(assert (=> b!832991 (= e!464653 Unit!28552)))

(declare-fun b!832992 () Bool)

(assert (=> b!832992 (= e!464652 (isDefined!312 (getValueByKey!415 (toList!4524 lt!377573) (_1!5100 (tuple2!10181 lt!377555 minValue!754)))))))

(assert (= (and d!107063 c!90629) b!832990))

(assert (= (and d!107063 (not c!90629)) b!832991))

(assert (= (and d!107063 (not res!566633)) b!832992))

(declare-fun m!777775 () Bool)

(assert (=> d!107063 m!777775))

(declare-fun m!777777 () Bool)

(assert (=> b!832990 m!777777))

(assert (=> b!832990 m!775991))

(assert (=> b!832990 m!775991))

(declare-fun m!777779 () Bool)

(assert (=> b!832990 m!777779))

(assert (=> b!832992 m!775991))

(assert (=> b!832992 m!775991))

(assert (=> b!832992 m!777779))

(assert (=> d!106267 d!107063))

(declare-fun c!90630 () Bool)

(declare-fun d!107065 () Bool)

(assert (=> d!107065 (= c!90630 (and ((_ is Cons!16004) lt!377575) (= (_1!5100 (h!17134 lt!377575)) (_1!5100 (tuple2!10181 lt!377555 minValue!754)))))))

(declare-fun e!464654 () Option!421)

(assert (=> d!107065 (= (getValueByKey!415 lt!377575 (_1!5100 (tuple2!10181 lt!377555 minValue!754))) e!464654)))

(declare-fun b!832993 () Bool)

(assert (=> b!832993 (= e!464654 (Some!420 (_2!5100 (h!17134 lt!377575))))))

(declare-fun b!832996 () Bool)

(declare-fun e!464655 () Option!421)

(assert (=> b!832996 (= e!464655 None!419)))

(declare-fun b!832994 () Bool)

(assert (=> b!832994 (= e!464654 e!464655)))

(declare-fun c!90631 () Bool)

(assert (=> b!832994 (= c!90631 (and ((_ is Cons!16004) lt!377575) (not (= (_1!5100 (h!17134 lt!377575)) (_1!5100 (tuple2!10181 lt!377555 minValue!754))))))))

(declare-fun b!832995 () Bool)

(assert (=> b!832995 (= e!464655 (getValueByKey!415 (t!22384 lt!377575) (_1!5100 (tuple2!10181 lt!377555 minValue!754))))))

(assert (= (and d!107065 c!90630) b!832993))

(assert (= (and d!107065 (not c!90630)) b!832994))

(assert (= (and b!832994 c!90631) b!832995))

(assert (= (and b!832994 (not c!90631)) b!832996))

(declare-fun m!777781 () Bool)

(assert (=> b!832995 m!777781))

(assert (=> d!106267 d!107065))

(declare-fun d!107067 () Bool)

(assert (=> d!107067 (= (getValueByKey!415 lt!377575 (_1!5100 (tuple2!10181 lt!377555 minValue!754))) (Some!420 (_2!5100 (tuple2!10181 lt!377555 minValue!754))))))

(declare-fun lt!378029 () Unit!28497)

(assert (=> d!107067 (= lt!378029 (choose!1433 lt!377575 (_1!5100 (tuple2!10181 lt!377555 minValue!754)) (_2!5100 (tuple2!10181 lt!377555 minValue!754))))))

(declare-fun e!464656 () Bool)

(assert (=> d!107067 e!464656))

(declare-fun res!566634 () Bool)

(assert (=> d!107067 (=> (not res!566634) (not e!464656))))

(assert (=> d!107067 (= res!566634 (isStrictlySorted!438 lt!377575))))

(assert (=> d!107067 (= (lemmaContainsTupThenGetReturnValue!231 lt!377575 (_1!5100 (tuple2!10181 lt!377555 minValue!754)) (_2!5100 (tuple2!10181 lt!377555 minValue!754))) lt!378029)))

(declare-fun b!832997 () Bool)

(declare-fun res!566635 () Bool)

(assert (=> b!832997 (=> (not res!566635) (not e!464656))))

(assert (=> b!832997 (= res!566635 (containsKey!401 lt!377575 (_1!5100 (tuple2!10181 lt!377555 minValue!754))))))

(declare-fun b!832998 () Bool)

(assert (=> b!832998 (= e!464656 (contains!4213 lt!377575 (tuple2!10181 (_1!5100 (tuple2!10181 lt!377555 minValue!754)) (_2!5100 (tuple2!10181 lt!377555 minValue!754)))))))

(assert (= (and d!107067 res!566634) b!832997))

(assert (= (and b!832997 res!566635) b!832998))

(assert (=> d!107067 m!775985))

(declare-fun m!777783 () Bool)

(assert (=> d!107067 m!777783))

(declare-fun m!777785 () Bool)

(assert (=> d!107067 m!777785))

(declare-fun m!777787 () Bool)

(assert (=> b!832997 m!777787))

(declare-fun m!777789 () Bool)

(assert (=> b!832998 m!777789))

(assert (=> d!106267 d!107067))

(declare-fun b!832999 () Bool)

(declare-fun e!464661 () List!16008)

(declare-fun call!36477 () List!16008)

(assert (=> b!832999 (= e!464661 call!36477)))

(declare-fun b!833000 () Bool)

(declare-fun res!566636 () Bool)

(declare-fun e!464658 () Bool)

(assert (=> b!833000 (=> (not res!566636) (not e!464658))))

(declare-fun lt!378030 () List!16008)

(assert (=> b!833000 (= res!566636 (containsKey!401 lt!378030 (_1!5100 (tuple2!10181 lt!377555 minValue!754))))))

(declare-fun b!833001 () Bool)

(declare-fun e!464660 () List!16008)

(declare-fun c!90633 () Bool)

(declare-fun c!90635 () Bool)

(assert (=> b!833001 (= e!464660 (ite c!90633 (t!22384 (toList!4524 lt!377545)) (ite c!90635 (Cons!16004 (h!17134 (toList!4524 lt!377545)) (t!22384 (toList!4524 lt!377545))) Nil!16005)))))

(declare-fun b!833002 () Bool)

(declare-fun e!464657 () List!16008)

(assert (=> b!833002 (= e!464657 e!464661)))

(assert (=> b!833002 (= c!90633 (and ((_ is Cons!16004) (toList!4524 lt!377545)) (= (_1!5100 (h!17134 (toList!4524 lt!377545))) (_1!5100 (tuple2!10181 lt!377555 minValue!754)))))))

(declare-fun b!833003 () Bool)

(assert (=> b!833003 (= e!464660 (insertStrictlySorted!269 (t!22384 (toList!4524 lt!377545)) (_1!5100 (tuple2!10181 lt!377555 minValue!754)) (_2!5100 (tuple2!10181 lt!377555 minValue!754))))))

(declare-fun bm!36473 () Bool)

(declare-fun call!36478 () List!16008)

(assert (=> bm!36473 (= call!36477 call!36478)))

(declare-fun b!833004 () Bool)

(assert (=> b!833004 (= e!464658 (contains!4213 lt!378030 (tuple2!10181 (_1!5100 (tuple2!10181 lt!377555 minValue!754)) (_2!5100 (tuple2!10181 lt!377555 minValue!754)))))))

(declare-fun b!833005 () Bool)

(declare-fun e!464659 () List!16008)

(declare-fun call!36476 () List!16008)

(assert (=> b!833005 (= e!464659 call!36476)))

(declare-fun b!833006 () Bool)

(assert (=> b!833006 (= c!90635 (and ((_ is Cons!16004) (toList!4524 lt!377545)) (bvsgt (_1!5100 (h!17134 (toList!4524 lt!377545))) (_1!5100 (tuple2!10181 lt!377555 minValue!754)))))))

(assert (=> b!833006 (= e!464661 e!464659)))

(declare-fun d!107069 () Bool)

(assert (=> d!107069 e!464658))

(declare-fun res!566637 () Bool)

(assert (=> d!107069 (=> (not res!566637) (not e!464658))))

(assert (=> d!107069 (= res!566637 (isStrictlySorted!438 lt!378030))))

(assert (=> d!107069 (= lt!378030 e!464657)))

(declare-fun c!90634 () Bool)

(assert (=> d!107069 (= c!90634 (and ((_ is Cons!16004) (toList!4524 lt!377545)) (bvslt (_1!5100 (h!17134 (toList!4524 lt!377545))) (_1!5100 (tuple2!10181 lt!377555 minValue!754)))))))

(assert (=> d!107069 (isStrictlySorted!438 (toList!4524 lt!377545))))

(assert (=> d!107069 (= (insertStrictlySorted!269 (toList!4524 lt!377545) (_1!5100 (tuple2!10181 lt!377555 minValue!754)) (_2!5100 (tuple2!10181 lt!377555 minValue!754))) lt!378030)))

(declare-fun b!833007 () Bool)

(assert (=> b!833007 (= e!464659 call!36476)))

(declare-fun bm!36474 () Bool)

(assert (=> bm!36474 (= call!36478 ($colon$colon!536 e!464660 (ite c!90634 (h!17134 (toList!4524 lt!377545)) (tuple2!10181 (_1!5100 (tuple2!10181 lt!377555 minValue!754)) (_2!5100 (tuple2!10181 lt!377555 minValue!754))))))))

(declare-fun c!90632 () Bool)

(assert (=> bm!36474 (= c!90632 c!90634)))

(declare-fun bm!36475 () Bool)

(assert (=> bm!36475 (= call!36476 call!36477)))

(declare-fun b!833008 () Bool)

(assert (=> b!833008 (= e!464657 call!36478)))

(assert (= (and d!107069 c!90634) b!833008))

(assert (= (and d!107069 (not c!90634)) b!833002))

(assert (= (and b!833002 c!90633) b!832999))

(assert (= (and b!833002 (not c!90633)) b!833006))

(assert (= (and b!833006 c!90635) b!833005))

(assert (= (and b!833006 (not c!90635)) b!833007))

(assert (= (or b!833005 b!833007) bm!36475))

(assert (= (or b!832999 bm!36475) bm!36473))

(assert (= (or b!833008 bm!36473) bm!36474))

(assert (= (and bm!36474 c!90632) b!833003))

(assert (= (and bm!36474 (not c!90632)) b!833001))

(assert (= (and d!107069 res!566637) b!833000))

(assert (= (and b!833000 res!566636) b!833004))

(declare-fun m!777791 () Bool)

(assert (=> b!833000 m!777791))

(declare-fun m!777793 () Bool)

(assert (=> b!833003 m!777793))

(declare-fun m!777795 () Bool)

(assert (=> d!107069 m!777795))

(declare-fun m!777797 () Bool)

(assert (=> d!107069 m!777797))

(declare-fun m!777799 () Bool)

(assert (=> b!833004 m!777799))

(declare-fun m!777801 () Bool)

(assert (=> bm!36474 m!777801))

(assert (=> d!106267 d!107069))

(declare-fun d!107071 () Bool)

(declare-fun e!464662 () Bool)

(assert (=> d!107071 e!464662))

(declare-fun res!566638 () Bool)

(assert (=> d!107071 (=> res!566638 e!464662)))

(declare-fun lt!378034 () Bool)

(assert (=> d!107071 (= res!566638 (not lt!378034))))

(declare-fun lt!378031 () Bool)

(assert (=> d!107071 (= lt!378034 lt!378031)))

(declare-fun lt!378033 () Unit!28497)

(declare-fun e!464663 () Unit!28497)

(assert (=> d!107071 (= lt!378033 e!464663)))

(declare-fun c!90636 () Bool)

(assert (=> d!107071 (= c!90636 lt!378031)))

(assert (=> d!107071 (= lt!378031 (containsKey!401 (toList!4524 lt!377801) (_1!5100 (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))

(assert (=> d!107071 (= (contains!4212 lt!377801 (_1!5100 (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))) lt!378034)))

(declare-fun b!833009 () Bool)

(declare-fun lt!378032 () Unit!28497)

(assert (=> b!833009 (= e!464663 lt!378032)))

(assert (=> b!833009 (= lt!378032 (lemmaContainsKeyImpliesGetValueByKeyDefined!311 (toList!4524 lt!377801) (_1!5100 (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))

(assert (=> b!833009 (isDefined!312 (getValueByKey!415 (toList!4524 lt!377801) (_1!5100 (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))

(declare-fun b!833010 () Bool)

(declare-fun Unit!28553 () Unit!28497)

(assert (=> b!833010 (= e!464663 Unit!28553)))

(declare-fun b!833011 () Bool)

(assert (=> b!833011 (= e!464662 (isDefined!312 (getValueByKey!415 (toList!4524 lt!377801) (_1!5100 (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))))))

(assert (= (and d!107071 c!90636) b!833009))

(assert (= (and d!107071 (not c!90636)) b!833010))

(assert (= (and d!107071 (not res!566638)) b!833011))

(declare-fun m!777803 () Bool)

(assert (=> d!107071 m!777803))

(declare-fun m!777805 () Bool)

(assert (=> b!833009 m!777805))

(assert (=> b!833009 m!776733))

(assert (=> b!833009 m!776733))

(declare-fun m!777807 () Bool)

(assert (=> b!833009 m!777807))

(assert (=> b!833011 m!776733))

(assert (=> b!833011 m!776733))

(assert (=> b!833011 m!777807))

(assert (=> d!106495 d!107071))

(declare-fun d!107073 () Bool)

(declare-fun c!90637 () Bool)

(assert (=> d!107073 (= c!90637 (and ((_ is Cons!16004) lt!377803) (= (_1!5100 (h!17134 lt!377803)) (_1!5100 (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))))))

(declare-fun e!464664 () Option!421)

(assert (=> d!107073 (= (getValueByKey!415 lt!377803 (_1!5100 (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))) e!464664)))

(declare-fun b!833012 () Bool)

(assert (=> b!833012 (= e!464664 (Some!420 (_2!5100 (h!17134 lt!377803))))))

(declare-fun b!833015 () Bool)

(declare-fun e!464665 () Option!421)

(assert (=> b!833015 (= e!464665 None!419)))

(declare-fun b!833013 () Bool)

(assert (=> b!833013 (= e!464664 e!464665)))

(declare-fun c!90638 () Bool)

(assert (=> b!833013 (= c!90638 (and ((_ is Cons!16004) lt!377803) (not (= (_1!5100 (h!17134 lt!377803)) (_1!5100 (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))))

(declare-fun b!833014 () Bool)

(assert (=> b!833014 (= e!464665 (getValueByKey!415 (t!22384 lt!377803) (_1!5100 (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))

(assert (= (and d!107073 c!90637) b!833012))

(assert (= (and d!107073 (not c!90637)) b!833013))

(assert (= (and b!833013 c!90638) b!833014))

(assert (= (and b!833013 (not c!90638)) b!833015))

(declare-fun m!777809 () Bool)

(assert (=> b!833014 m!777809))

(assert (=> d!106495 d!107073))

(declare-fun d!107075 () Bool)

(assert (=> d!107075 (= (getValueByKey!415 lt!377803 (_1!5100 (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))) (Some!420 (_2!5100 (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))

(declare-fun lt!378035 () Unit!28497)

(assert (=> d!107075 (= lt!378035 (choose!1433 lt!377803 (_1!5100 (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)) (_2!5100 (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))

(declare-fun e!464666 () Bool)

(assert (=> d!107075 e!464666))

(declare-fun res!566639 () Bool)

(assert (=> d!107075 (=> (not res!566639) (not e!464666))))

(assert (=> d!107075 (= res!566639 (isStrictlySorted!438 lt!377803))))

(assert (=> d!107075 (= (lemmaContainsTupThenGetReturnValue!231 lt!377803 (_1!5100 (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)) (_2!5100 (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))) lt!378035)))

(declare-fun b!833016 () Bool)

(declare-fun res!566640 () Bool)

(assert (=> b!833016 (=> (not res!566640) (not e!464666))))

(assert (=> b!833016 (= res!566640 (containsKey!401 lt!377803 (_1!5100 (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))

(declare-fun b!833017 () Bool)

(assert (=> b!833017 (= e!464666 (contains!4213 lt!377803 (tuple2!10181 (_1!5100 (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)) (_2!5100 (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))))))

(assert (= (and d!107075 res!566639) b!833016))

(assert (= (and b!833016 res!566640) b!833017))

(assert (=> d!107075 m!776727))

(declare-fun m!777811 () Bool)

(assert (=> d!107075 m!777811))

(declare-fun m!777813 () Bool)

(assert (=> d!107075 m!777813))

(declare-fun m!777815 () Bool)

(assert (=> b!833016 m!777815))

(declare-fun m!777817 () Bool)

(assert (=> b!833017 m!777817))

(assert (=> d!106495 d!107075))

(declare-fun b!833018 () Bool)

(declare-fun e!464671 () List!16008)

(declare-fun call!36480 () List!16008)

(assert (=> b!833018 (= e!464671 call!36480)))

(declare-fun b!833019 () Bool)

(declare-fun res!566641 () Bool)

(declare-fun e!464668 () Bool)

(assert (=> b!833019 (=> (not res!566641) (not e!464668))))

(declare-fun lt!378036 () List!16008)

(assert (=> b!833019 (= res!566641 (containsKey!401 lt!378036 (_1!5100 (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))

(declare-fun c!90640 () Bool)

(declare-fun c!90642 () Bool)

(declare-fun b!833020 () Bool)

(declare-fun e!464670 () List!16008)

(assert (=> b!833020 (= e!464670 (ite c!90640 (t!22384 (toList!4524 call!36389)) (ite c!90642 (Cons!16004 (h!17134 (toList!4524 call!36389)) (t!22384 (toList!4524 call!36389))) Nil!16005)))))

(declare-fun b!833021 () Bool)

(declare-fun e!464667 () List!16008)

(assert (=> b!833021 (= e!464667 e!464671)))

(assert (=> b!833021 (= c!90640 (and ((_ is Cons!16004) (toList!4524 call!36389)) (= (_1!5100 (h!17134 (toList!4524 call!36389))) (_1!5100 (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))))))

(declare-fun b!833022 () Bool)

(assert (=> b!833022 (= e!464670 (insertStrictlySorted!269 (t!22384 (toList!4524 call!36389)) (_1!5100 (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)) (_2!5100 (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))

(declare-fun bm!36476 () Bool)

(declare-fun call!36481 () List!16008)

(assert (=> bm!36476 (= call!36480 call!36481)))

(declare-fun b!833023 () Bool)

(assert (=> b!833023 (= e!464668 (contains!4213 lt!378036 (tuple2!10181 (_1!5100 (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)) (_2!5100 (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))))))

(declare-fun b!833024 () Bool)

(declare-fun e!464669 () List!16008)

(declare-fun call!36479 () List!16008)

(assert (=> b!833024 (= e!464669 call!36479)))

(declare-fun b!833025 () Bool)

(assert (=> b!833025 (= c!90642 (and ((_ is Cons!16004) (toList!4524 call!36389)) (bvsgt (_1!5100 (h!17134 (toList!4524 call!36389))) (_1!5100 (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))))))

(assert (=> b!833025 (= e!464671 e!464669)))

(declare-fun d!107077 () Bool)

(assert (=> d!107077 e!464668))

(declare-fun res!566642 () Bool)

(assert (=> d!107077 (=> (not res!566642) (not e!464668))))

(assert (=> d!107077 (= res!566642 (isStrictlySorted!438 lt!378036))))

(assert (=> d!107077 (= lt!378036 e!464667)))

(declare-fun c!90641 () Bool)

(assert (=> d!107077 (= c!90641 (and ((_ is Cons!16004) (toList!4524 call!36389)) (bvslt (_1!5100 (h!17134 (toList!4524 call!36389))) (_1!5100 (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))))))

(assert (=> d!107077 (isStrictlySorted!438 (toList!4524 call!36389))))

(assert (=> d!107077 (= (insertStrictlySorted!269 (toList!4524 call!36389) (_1!5100 (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)) (_2!5100 (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))) lt!378036)))

(declare-fun b!833026 () Bool)

(assert (=> b!833026 (= e!464669 call!36479)))

(declare-fun bm!36477 () Bool)

(assert (=> bm!36477 (= call!36481 ($colon$colon!536 e!464670 (ite c!90641 (h!17134 (toList!4524 call!36389)) (tuple2!10181 (_1!5100 (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)) (_2!5100 (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))))

(declare-fun c!90639 () Bool)

(assert (=> bm!36477 (= c!90639 c!90641)))

(declare-fun bm!36478 () Bool)

(assert (=> bm!36478 (= call!36479 call!36480)))

(declare-fun b!833027 () Bool)

(assert (=> b!833027 (= e!464667 call!36481)))

(assert (= (and d!107077 c!90641) b!833027))

(assert (= (and d!107077 (not c!90641)) b!833021))

(assert (= (and b!833021 c!90640) b!833018))

(assert (= (and b!833021 (not c!90640)) b!833025))

(assert (= (and b!833025 c!90642) b!833024))

(assert (= (and b!833025 (not c!90642)) b!833026))

(assert (= (or b!833024 b!833026) bm!36478))

(assert (= (or b!833018 bm!36478) bm!36476))

(assert (= (or b!833027 bm!36476) bm!36477))

(assert (= (and bm!36477 c!90639) b!833022))

(assert (= (and bm!36477 (not c!90639)) b!833020))

(assert (= (and d!107077 res!566642) b!833019))

(assert (= (and b!833019 res!566641) b!833023))

(declare-fun m!777819 () Bool)

(assert (=> b!833019 m!777819))

(declare-fun m!777821 () Bool)

(assert (=> b!833022 m!777821))

(declare-fun m!777823 () Bool)

(assert (=> d!107077 m!777823))

(declare-fun m!777825 () Bool)

(assert (=> d!107077 m!777825))

(declare-fun m!777827 () Bool)

(assert (=> b!833023 m!777827))

(declare-fun m!777829 () Bool)

(assert (=> bm!36477 m!777829))

(assert (=> d!106495 d!107077))

(declare-fun d!107079 () Bool)

(declare-fun lt!378037 () Bool)

(assert (=> d!107079 (= lt!378037 (select (content!390 (t!22384 (toList!4524 lt!377529))) (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))))

(declare-fun e!464672 () Bool)

(assert (=> d!107079 (= lt!378037 e!464672)))

(declare-fun res!566643 () Bool)

(assert (=> d!107079 (=> (not res!566643) (not e!464672))))

(assert (=> d!107079 (= res!566643 ((_ is Cons!16004) (t!22384 (toList!4524 lt!377529))))))

(assert (=> d!107079 (= (contains!4213 (t!22384 (toList!4524 lt!377529)) (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)) lt!378037)))

(declare-fun b!833028 () Bool)

(declare-fun e!464673 () Bool)

(assert (=> b!833028 (= e!464672 e!464673)))

(declare-fun res!566644 () Bool)

(assert (=> b!833028 (=> res!566644 e!464673)))

(assert (=> b!833028 (= res!566644 (= (h!17134 (t!22384 (toList!4524 lt!377529))) (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))))

(declare-fun b!833029 () Bool)

(assert (=> b!833029 (= e!464673 (contains!4213 (t!22384 (t!22384 (toList!4524 lt!377529))) (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))))

(assert (= (and d!107079 res!566643) b!833028))

(assert (= (and b!833028 (not res!566644)) b!833029))

(assert (=> d!107079 m!777545))

(declare-fun m!777831 () Bool)

(assert (=> d!107079 m!777831))

(declare-fun m!777833 () Bool)

(assert (=> b!833029 m!777833))

(assert (=> b!831958 d!107079))

(assert (=> b!832021 d!106611))

(declare-fun d!107081 () Bool)

(declare-fun c!90643 () Bool)

(assert (=> d!107081 (= c!90643 ((_ is Nil!16005) (toList!4524 lt!377455)))))

(declare-fun e!464674 () (InoxSet tuple2!10180))

(assert (=> d!107081 (= (content!390 (toList!4524 lt!377455)) e!464674)))

(declare-fun b!833030 () Bool)

(assert (=> b!833030 (= e!464674 ((as const (Array tuple2!10180 Bool)) false))))

(declare-fun b!833031 () Bool)

(assert (=> b!833031 (= e!464674 ((_ map or) (store ((as const (Array tuple2!10180 Bool)) false) (h!17134 (toList!4524 lt!377455)) true) (content!390 (t!22384 (toList!4524 lt!377455)))))))

(assert (= (and d!107081 c!90643) b!833030))

(assert (= (and d!107081 (not c!90643)) b!833031))

(declare-fun m!777835 () Bool)

(assert (=> b!833031 m!777835))

(assert (=> b!833031 m!777217))

(assert (=> d!106293 d!107081))

(declare-fun c!90644 () Bool)

(declare-fun d!107083 () Bool)

(assert (=> d!107083 (= c!90644 (and ((_ is Cons!16004) (toList!4524 lt!377573)) (= (_1!5100 (h!17134 (toList!4524 lt!377573))) (_1!5100 (tuple2!10181 lt!377555 minValue!754)))))))

(declare-fun e!464675 () Option!421)

(assert (=> d!107083 (= (getValueByKey!415 (toList!4524 lt!377573) (_1!5100 (tuple2!10181 lt!377555 minValue!754))) e!464675)))

(declare-fun b!833032 () Bool)

(assert (=> b!833032 (= e!464675 (Some!420 (_2!5100 (h!17134 (toList!4524 lt!377573)))))))

(declare-fun b!833035 () Bool)

(declare-fun e!464676 () Option!421)

(assert (=> b!833035 (= e!464676 None!419)))

(declare-fun b!833033 () Bool)

(assert (=> b!833033 (= e!464675 e!464676)))

(declare-fun c!90645 () Bool)

(assert (=> b!833033 (= c!90645 (and ((_ is Cons!16004) (toList!4524 lt!377573)) (not (= (_1!5100 (h!17134 (toList!4524 lt!377573))) (_1!5100 (tuple2!10181 lt!377555 minValue!754))))))))

(declare-fun b!833034 () Bool)

(assert (=> b!833034 (= e!464676 (getValueByKey!415 (t!22384 (toList!4524 lt!377573)) (_1!5100 (tuple2!10181 lt!377555 minValue!754))))))

(assert (= (and d!107083 c!90644) b!833032))

(assert (= (and d!107083 (not c!90644)) b!833033))

(assert (= (and b!833033 c!90645) b!833034))

(assert (= (and b!833033 (not c!90645)) b!833035))

(declare-fun m!777837 () Bool)

(assert (=> b!833034 m!777837))

(assert (=> b!831872 d!107083))

(declare-fun d!107085 () Bool)

(declare-fun res!566645 () Bool)

(declare-fun e!464677 () Bool)

(assert (=> d!107085 (=> res!566645 e!464677)))

(assert (=> d!107085 (= res!566645 (and ((_ is Cons!16004) (toList!4524 lt!377449)) (= (_1!5100 (h!17134 (toList!4524 lt!377449))) (select (arr!22317 _keys!976) #b00000000000000000000000000000000))))))

(assert (=> d!107085 (= (containsKey!401 (toList!4524 lt!377449) (select (arr!22317 _keys!976) #b00000000000000000000000000000000)) e!464677)))

(declare-fun b!833036 () Bool)

(declare-fun e!464678 () Bool)

(assert (=> b!833036 (= e!464677 e!464678)))

(declare-fun res!566646 () Bool)

(assert (=> b!833036 (=> (not res!566646) (not e!464678))))

(assert (=> b!833036 (= res!566646 (and (or (not ((_ is Cons!16004) (toList!4524 lt!377449))) (bvsle (_1!5100 (h!17134 (toList!4524 lt!377449))) (select (arr!22317 _keys!976) #b00000000000000000000000000000000))) ((_ is Cons!16004) (toList!4524 lt!377449)) (bvslt (_1!5100 (h!17134 (toList!4524 lt!377449))) (select (arr!22317 _keys!976) #b00000000000000000000000000000000))))))

(declare-fun b!833037 () Bool)

(assert (=> b!833037 (= e!464678 (containsKey!401 (t!22384 (toList!4524 lt!377449)) (select (arr!22317 _keys!976) #b00000000000000000000000000000000)))))

(assert (= (and d!107085 (not res!566645)) b!833036))

(assert (= (and b!833036 res!566646) b!833037))

(assert (=> b!833037 m!775697))

(declare-fun m!777839 () Bool)

(assert (=> b!833037 m!777839))

(assert (=> d!106289 d!107085))

(declare-fun d!107087 () Bool)

(assert (=> d!107087 (= (get!11829 (getValueByKey!415 (toList!4524 lt!377542) #b1000000000000000000000000000000000000000000000000000000000000000)) (v!10097 (getValueByKey!415 (toList!4524 lt!377542) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!106365 d!107087))

(assert (=> d!106365 d!107039))

(declare-fun d!107089 () Bool)

(declare-fun res!566647 () Bool)

(declare-fun e!464679 () Bool)

(assert (=> d!107089 (=> res!566647 e!464679)))

(assert (=> d!107089 (= res!566647 (and ((_ is Cons!16004) (toList!4524 lt!377542)) (= (_1!5100 (h!17134 (toList!4524 lt!377542))) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!107089 (= (containsKey!401 (toList!4524 lt!377542) #b1000000000000000000000000000000000000000000000000000000000000000) e!464679)))

(declare-fun b!833038 () Bool)

(declare-fun e!464680 () Bool)

(assert (=> b!833038 (= e!464679 e!464680)))

(declare-fun res!566648 () Bool)

(assert (=> b!833038 (=> (not res!566648) (not e!464680))))

(assert (=> b!833038 (= res!566648 (and (or (not ((_ is Cons!16004) (toList!4524 lt!377542))) (bvsle (_1!5100 (h!17134 (toList!4524 lt!377542))) #b1000000000000000000000000000000000000000000000000000000000000000)) ((_ is Cons!16004) (toList!4524 lt!377542)) (bvslt (_1!5100 (h!17134 (toList!4524 lt!377542))) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!833039 () Bool)

(assert (=> b!833039 (= e!464680 (containsKey!401 (t!22384 (toList!4524 lt!377542)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!107089 (not res!566647)) b!833038))

(assert (= (and b!833038 res!566648) b!833039))

(declare-fun m!777841 () Bool)

(assert (=> b!833039 m!777841))

(assert (=> d!106305 d!107089))

(declare-fun d!107091 () Bool)

(declare-fun res!566649 () Bool)

(declare-fun e!464681 () Bool)

(assert (=> d!107091 (=> res!566649 e!464681)))

(assert (=> d!107091 (= res!566649 (or ((_ is Nil!16005) lt!377742) ((_ is Nil!16005) (t!22384 lt!377742))))))

(assert (=> d!107091 (= (isStrictlySorted!438 lt!377742) e!464681)))

(declare-fun b!833040 () Bool)

(declare-fun e!464682 () Bool)

(assert (=> b!833040 (= e!464681 e!464682)))

(declare-fun res!566650 () Bool)

(assert (=> b!833040 (=> (not res!566650) (not e!464682))))

(assert (=> b!833040 (= res!566650 (bvslt (_1!5100 (h!17134 lt!377742)) (_1!5100 (h!17134 (t!22384 lt!377742)))))))

(declare-fun b!833041 () Bool)

(assert (=> b!833041 (= e!464682 (isStrictlySorted!438 (t!22384 lt!377742)))))

(assert (= (and d!107091 (not res!566649)) b!833040))

(assert (= (and b!833040 res!566650) b!833041))

(declare-fun m!777843 () Bool)

(assert (=> b!833041 m!777843))

(assert (=> d!106431 d!107091))

(assert (=> d!106431 d!106745))

(declare-fun e!464683 () Bool)

(declare-fun b!833042 () Bool)

(assert (=> b!833042 (= e!464683 (contains!4211 (ite c!90337 (Cons!16005 (select (arr!22317 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!90242 (Cons!16005 (select (arr!22317 _keys!976) #b00000000000000000000000000000000) Nil!16006) Nil!16006)) (ite c!90242 (Cons!16005 (select (arr!22317 _keys!976) #b00000000000000000000000000000000) Nil!16006) Nil!16006)) (select (arr!22317 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001))))))

(declare-fun b!833043 () Bool)

(declare-fun e!464686 () Bool)

(declare-fun e!464684 () Bool)

(assert (=> b!833043 (= e!464686 e!464684)))

(declare-fun c!90646 () Bool)

(assert (=> b!833043 (= c!90646 (validKeyInArray!0 (select (arr!22317 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001))))))

(declare-fun b!833044 () Bool)

(declare-fun call!36482 () Bool)

(assert (=> b!833044 (= e!464684 call!36482)))

(declare-fun d!107093 () Bool)

(declare-fun res!566651 () Bool)

(declare-fun e!464685 () Bool)

(assert (=> d!107093 (=> res!566651 e!464685)))

(assert (=> d!107093 (= res!566651 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!22738 _keys!976)))))

(assert (=> d!107093 (= (arrayNoDuplicates!0 _keys!976 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!90337 (Cons!16005 (select (arr!22317 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!90242 (Cons!16005 (select (arr!22317 _keys!976) #b00000000000000000000000000000000) Nil!16006) Nil!16006)) (ite c!90242 (Cons!16005 (select (arr!22317 _keys!976) #b00000000000000000000000000000000) Nil!16006) Nil!16006))) e!464685)))

(declare-fun b!833045 () Bool)

(assert (=> b!833045 (= e!464684 call!36482)))

(declare-fun b!833046 () Bool)

(assert (=> b!833046 (= e!464685 e!464686)))

(declare-fun res!566652 () Bool)

(assert (=> b!833046 (=> (not res!566652) (not e!464686))))

(assert (=> b!833046 (= res!566652 (not e!464683))))

(declare-fun res!566653 () Bool)

(assert (=> b!833046 (=> (not res!566653) (not e!464683))))

(assert (=> b!833046 (= res!566653 (validKeyInArray!0 (select (arr!22317 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001))))))

(declare-fun bm!36479 () Bool)

(assert (=> bm!36479 (= call!36482 (arrayNoDuplicates!0 _keys!976 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!90646 (Cons!16005 (select (arr!22317 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)) (ite c!90337 (Cons!16005 (select (arr!22317 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!90242 (Cons!16005 (select (arr!22317 _keys!976) #b00000000000000000000000000000000) Nil!16006) Nil!16006)) (ite c!90242 (Cons!16005 (select (arr!22317 _keys!976) #b00000000000000000000000000000000) Nil!16006) Nil!16006))) (ite c!90337 (Cons!16005 (select (arr!22317 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!90242 (Cons!16005 (select (arr!22317 _keys!976) #b00000000000000000000000000000000) Nil!16006) Nil!16006)) (ite c!90242 (Cons!16005 (select (arr!22317 _keys!976) #b00000000000000000000000000000000) Nil!16006) Nil!16006)))))))

(assert (= (and d!107093 (not res!566651)) b!833046))

(assert (= (and b!833046 res!566653) b!833042))

(assert (= (and b!833046 res!566652) b!833043))

(assert (= (and b!833043 c!90646) b!833044))

(assert (= (and b!833043 (not c!90646)) b!833045))

(assert (= (or b!833044 b!833045) bm!36479))

(assert (=> b!833042 m!776795))

(assert (=> b!833042 m!776795))

(declare-fun m!777845 () Bool)

(assert (=> b!833042 m!777845))

(assert (=> b!833043 m!776795))

(assert (=> b!833043 m!776795))

(assert (=> b!833043 m!776815))

(assert (=> b!833046 m!776795))

(assert (=> b!833046 m!776795))

(assert (=> b!833046 m!776815))

(assert (=> bm!36479 m!776795))

(declare-fun m!777847 () Bool)

(assert (=> bm!36479 m!777847))

(assert (=> bm!36408 d!107093))

(declare-fun d!107095 () Bool)

(declare-fun res!566654 () Bool)

(declare-fun e!464687 () Bool)

(assert (=> d!107095 (=> res!566654 e!464687)))

(assert (=> d!107095 (= res!566654 (and ((_ is Cons!16004) lt!377742) (= (_1!5100 (h!17134 lt!377742)) (_1!5100 lt!377371))))))

(assert (=> d!107095 (= (containsKey!401 lt!377742 (_1!5100 lt!377371)) e!464687)))

(declare-fun b!833047 () Bool)

(declare-fun e!464688 () Bool)

(assert (=> b!833047 (= e!464687 e!464688)))

(declare-fun res!566655 () Bool)

(assert (=> b!833047 (=> (not res!566655) (not e!464688))))

(assert (=> b!833047 (= res!566655 (and (or (not ((_ is Cons!16004) lt!377742)) (bvsle (_1!5100 (h!17134 lt!377742)) (_1!5100 lt!377371))) ((_ is Cons!16004) lt!377742) (bvslt (_1!5100 (h!17134 lt!377742)) (_1!5100 lt!377371))))))

(declare-fun b!833048 () Bool)

(assert (=> b!833048 (= e!464688 (containsKey!401 (t!22384 lt!377742) (_1!5100 lt!377371)))))

(assert (= (and d!107095 (not res!566654)) b!833047))

(assert (= (and b!833047 res!566655) b!833048))

(declare-fun m!777849 () Bool)

(assert (=> b!833048 m!777849))

(assert (=> b!832171 d!107095))

(assert (=> b!832056 d!106871))

(assert (=> b!832056 d!106873))

(assert (=> d!106299 d!106297))

(declare-fun d!107097 () Bool)

(assert (=> d!107097 (= (getValueByKey!415 lt!377409 (_1!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))) (Some!420 (_2!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))))

(assert (=> d!107097 true))

(declare-fun _$22!582 () Unit!28497)

(assert (=> d!107097 (= (choose!1433 lt!377409 (_1!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)) (_2!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))) _$22!582)))

(declare-fun bs!23317 () Bool)

(assert (= bs!23317 d!107097))

(assert (=> bs!23317 m!775719))

(assert (=> d!106299 d!107097))

(declare-fun d!107099 () Bool)

(declare-fun res!566656 () Bool)

(declare-fun e!464689 () Bool)

(assert (=> d!107099 (=> res!566656 e!464689)))

(assert (=> d!107099 (= res!566656 (or ((_ is Nil!16005) lt!377409) ((_ is Nil!16005) (t!22384 lt!377409))))))

(assert (=> d!107099 (= (isStrictlySorted!438 lt!377409) e!464689)))

(declare-fun b!833049 () Bool)

(declare-fun e!464690 () Bool)

(assert (=> b!833049 (= e!464689 e!464690)))

(declare-fun res!566657 () Bool)

(assert (=> b!833049 (=> (not res!566657) (not e!464690))))

(assert (=> b!833049 (= res!566657 (bvslt (_1!5100 (h!17134 lt!377409)) (_1!5100 (h!17134 (t!22384 lt!377409)))))))

(declare-fun b!833050 () Bool)

(assert (=> b!833050 (= e!464690 (isStrictlySorted!438 (t!22384 lt!377409)))))

(assert (= (and d!107099 (not res!566656)) b!833049))

(assert (= (and b!833049 res!566657) b!833050))

(declare-fun m!777851 () Bool)

(assert (=> b!833050 m!777851))

(assert (=> d!106299 d!107099))

(assert (=> b!832048 d!106877))

(assert (=> b!832048 d!106879))

(assert (=> b!831978 d!106883))

(assert (=> b!831978 d!106885))

(declare-fun d!107101 () Bool)

(assert (=> d!107101 (isDefined!312 (getValueByKey!415 (toList!4524 lt!377407) (_1!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))))

(declare-fun lt!378038 () Unit!28497)

(assert (=> d!107101 (= lt!378038 (choose!1435 (toList!4524 lt!377407) (_1!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))))

(declare-fun e!464691 () Bool)

(assert (=> d!107101 e!464691))

(declare-fun res!566658 () Bool)

(assert (=> d!107101 (=> (not res!566658) (not e!464691))))

(assert (=> d!107101 (= res!566658 (isStrictlySorted!438 (toList!4524 lt!377407)))))

(assert (=> d!107101 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!311 (toList!4524 lt!377407) (_1!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))) lt!378038)))

(declare-fun b!833051 () Bool)

(assert (=> b!833051 (= e!464691 (containsKey!401 (toList!4524 lt!377407) (_1!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))))

(assert (= (and d!107101 res!566658) b!833051))

(assert (=> d!107101 m!775725))

(assert (=> d!107101 m!775725))

(assert (=> d!107101 m!776093))

(declare-fun m!777853 () Bool)

(assert (=> d!107101 m!777853))

(declare-fun m!777855 () Bool)

(assert (=> d!107101 m!777855))

(assert (=> b!833051 m!776089))

(assert (=> b!831906 d!107101))

(declare-fun d!107103 () Bool)

(assert (=> d!107103 (= (isDefined!312 (getValueByKey!415 (toList!4524 lt!377407) (_1!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))) (not (isEmpty!664 (getValueByKey!415 (toList!4524 lt!377407) (_1!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))))))

(declare-fun bs!23318 () Bool)

(assert (= bs!23318 d!107103))

(assert (=> bs!23318 m!775725))

(declare-fun m!777857 () Bool)

(assert (=> bs!23318 m!777857))

(assert (=> b!831906 d!107103))

(assert (=> b!831906 d!106389))

(declare-fun d!107105 () Bool)

(declare-fun e!464692 () Bool)

(assert (=> d!107105 e!464692))

(declare-fun res!566659 () Bool)

(assert (=> d!107105 (=> res!566659 e!464692)))

(declare-fun lt!378042 () Bool)

(assert (=> d!107105 (= res!566659 (not lt!378042))))

(declare-fun lt!378039 () Bool)

(assert (=> d!107105 (= lt!378042 lt!378039)))

(declare-fun lt!378041 () Unit!28497)

(declare-fun e!464693 () Unit!28497)

(assert (=> d!107105 (= lt!378041 e!464693)))

(declare-fun c!90647 () Bool)

(assert (=> d!107105 (= c!90647 lt!378039)))

(assert (=> d!107105 (= lt!378039 (containsKey!401 (toList!4524 lt!377510) lt!377515))))

(assert (=> d!107105 (= (contains!4212 lt!377510 lt!377515) lt!378042)))

(declare-fun b!833052 () Bool)

(declare-fun lt!378040 () Unit!28497)

(assert (=> b!833052 (= e!464693 lt!378040)))

(assert (=> b!833052 (= lt!378040 (lemmaContainsKeyImpliesGetValueByKeyDefined!311 (toList!4524 lt!377510) lt!377515))))

(assert (=> b!833052 (isDefined!312 (getValueByKey!415 (toList!4524 lt!377510) lt!377515))))

(declare-fun b!833053 () Bool)

(declare-fun Unit!28554 () Unit!28497)

(assert (=> b!833053 (= e!464693 Unit!28554)))

(declare-fun b!833054 () Bool)

(assert (=> b!833054 (= e!464692 (isDefined!312 (getValueByKey!415 (toList!4524 lt!377510) lt!377515)))))

(assert (= (and d!107105 c!90647) b!833052))

(assert (= (and d!107105 (not c!90647)) b!833053))

(assert (= (and d!107105 (not res!566659)) b!833054))

(declare-fun m!777859 () Bool)

(assert (=> d!107105 m!777859))

(declare-fun m!777861 () Bool)

(assert (=> b!833052 m!777861))

(assert (=> b!833052 m!776231))

(assert (=> b!833052 m!776231))

(declare-fun m!777863 () Bool)

(assert (=> b!833052 m!777863))

(assert (=> b!833054 m!776231))

(assert (=> b!833054 m!776231))

(assert (=> b!833054 m!777863))

(assert (=> d!106325 d!107105))

(assert (=> d!106325 d!106339))

(declare-fun d!107107 () Bool)

(assert (=> d!107107 (= (apply!373 (+!1952 lt!377510 (tuple2!10181 lt!377526 zeroValueAfter!34)) lt!377515) (apply!373 lt!377510 lt!377515))))

(assert (=> d!107107 true))

(declare-fun _$34!1151 () Unit!28497)

(assert (=> d!107107 (= (choose!1431 lt!377510 lt!377526 zeroValueAfter!34 lt!377515) _$34!1151)))

(declare-fun bs!23319 () Bool)

(assert (= bs!23319 d!107107))

(assert (=> bs!23319 m!775821))

(assert (=> bs!23319 m!775821))

(assert (=> bs!23319 m!775823))

(assert (=> bs!23319 m!775833))

(assert (=> d!106325 d!107107))

(assert (=> d!106325 d!106341))

(assert (=> d!106325 d!106343))

(declare-fun c!90648 () Bool)

(declare-fun d!107109 () Bool)

(assert (=> d!107109 (= c!90648 (and ((_ is Cons!16004) (toList!4524 lt!377771)) (= (_1!5100 (h!17134 (toList!4524 lt!377771))) (_1!5100 (tuple2!10181 (select (arr!22317 _keys!976) #b00000000000000000000000000000000) (get!11828 (select (arr!22318 _values!788) #b00000000000000000000000000000000) (dynLambda!983 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun e!464694 () Option!421)

(assert (=> d!107109 (= (getValueByKey!415 (toList!4524 lt!377771) (_1!5100 (tuple2!10181 (select (arr!22317 _keys!976) #b00000000000000000000000000000000) (get!11828 (select (arr!22318 _values!788) #b00000000000000000000000000000000) (dynLambda!983 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))) e!464694)))

(declare-fun b!833055 () Bool)

(assert (=> b!833055 (= e!464694 (Some!420 (_2!5100 (h!17134 (toList!4524 lt!377771)))))))

(declare-fun b!833058 () Bool)

(declare-fun e!464695 () Option!421)

(assert (=> b!833058 (= e!464695 None!419)))

(declare-fun b!833056 () Bool)

(assert (=> b!833056 (= e!464694 e!464695)))

(declare-fun c!90649 () Bool)

(assert (=> b!833056 (= c!90649 (and ((_ is Cons!16004) (toList!4524 lt!377771)) (not (= (_1!5100 (h!17134 (toList!4524 lt!377771))) (_1!5100 (tuple2!10181 (select (arr!22317 _keys!976) #b00000000000000000000000000000000) (get!11828 (select (arr!22318 _values!788) #b00000000000000000000000000000000) (dynLambda!983 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))))))))

(declare-fun b!833057 () Bool)

(assert (=> b!833057 (= e!464695 (getValueByKey!415 (t!22384 (toList!4524 lt!377771)) (_1!5100 (tuple2!10181 (select (arr!22317 _keys!976) #b00000000000000000000000000000000) (get!11828 (select (arr!22318 _values!788) #b00000000000000000000000000000000) (dynLambda!983 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (= (and d!107109 c!90648) b!833055))

(assert (= (and d!107109 (not c!90648)) b!833056))

(assert (= (and b!833056 c!90649) b!833057))

(assert (= (and b!833056 (not c!90649)) b!833058))

(declare-fun m!777865 () Bool)

(assert (=> b!833057 m!777865))

(assert (=> b!832215 d!107109))

(declare-fun d!107111 () Bool)

(declare-fun lt!378043 () Bool)

(assert (=> d!107111 (= lt!378043 (select (content!390 (t!22384 (toList!4524 lt!377403))) lt!377371))))

(declare-fun e!464696 () Bool)

(assert (=> d!107111 (= lt!378043 e!464696)))

(declare-fun res!566660 () Bool)

(assert (=> d!107111 (=> (not res!566660) (not e!464696))))

(assert (=> d!107111 (= res!566660 ((_ is Cons!16004) (t!22384 (toList!4524 lt!377403))))))

(assert (=> d!107111 (= (contains!4213 (t!22384 (toList!4524 lt!377403)) lt!377371) lt!378043)))

(declare-fun b!833059 () Bool)

(declare-fun e!464697 () Bool)

(assert (=> b!833059 (= e!464696 e!464697)))

(declare-fun res!566661 () Bool)

(assert (=> b!833059 (=> res!566661 e!464697)))

(assert (=> b!833059 (= res!566661 (= (h!17134 (t!22384 (toList!4524 lt!377403))) lt!377371))))

(declare-fun b!833060 () Bool)

(assert (=> b!833060 (= e!464697 (contains!4213 (t!22384 (t!22384 (toList!4524 lt!377403))) lt!377371))))

(assert (= (and d!107111 res!566660) b!833059))

(assert (= (and b!833059 (not res!566661)) b!833060))

(assert (=> d!107111 m!776867))

(declare-fun m!777867 () Bool)

(assert (=> d!107111 m!777867))

(declare-fun m!777869 () Bool)

(assert (=> b!833060 m!777869))

(assert (=> b!832262 d!107111))

(declare-fun d!107113 () Bool)

(declare-fun c!90650 () Bool)

(assert (=> d!107113 (= c!90650 ((_ is Nil!16005) (toList!4524 lt!377533)))))

(declare-fun e!464698 () (InoxSet tuple2!10180))

(assert (=> d!107113 (= (content!390 (toList!4524 lt!377533)) e!464698)))

(declare-fun b!833061 () Bool)

(assert (=> b!833061 (= e!464698 ((as const (Array tuple2!10180 Bool)) false))))

(declare-fun b!833062 () Bool)

(assert (=> b!833062 (= e!464698 ((_ map or) (store ((as const (Array tuple2!10180 Bool)) false) (h!17134 (toList!4524 lt!377533)) true) (content!390 (t!22384 (toList!4524 lt!377533)))))))

(assert (= (and d!107113 c!90650) b!833061))

(assert (= (and d!107113 (not c!90650)) b!833062))

(declare-fun m!777871 () Bool)

(assert (=> b!833062 m!777871))

(declare-fun m!777873 () Bool)

(assert (=> b!833062 m!777873))

(assert (=> d!106319 d!107113))

(declare-fun d!107115 () Bool)

(assert (=> d!107115 (isDefined!312 (getValueByKey!415 (toList!4524 lt!377533) (_1!5100 lt!377371)))))

(declare-fun lt!378044 () Unit!28497)

(assert (=> d!107115 (= lt!378044 (choose!1435 (toList!4524 lt!377533) (_1!5100 lt!377371)))))

(declare-fun e!464699 () Bool)

(assert (=> d!107115 e!464699))

(declare-fun res!566662 () Bool)

(assert (=> d!107115 (=> (not res!566662) (not e!464699))))

(assert (=> d!107115 (= res!566662 (isStrictlySorted!438 (toList!4524 lt!377533)))))

(assert (=> d!107115 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!311 (toList!4524 lt!377533) (_1!5100 lt!377371)) lt!378044)))

(declare-fun b!833063 () Bool)

(assert (=> b!833063 (= e!464699 (containsKey!401 (toList!4524 lt!377533) (_1!5100 lt!377371)))))

(assert (= (and d!107115 res!566662) b!833063))

(assert (=> d!107115 m!775887))

(assert (=> d!107115 m!775887))

(assert (=> d!107115 m!776523))

(declare-fun m!777875 () Bool)

(assert (=> d!107115 m!777875))

(declare-fun m!777877 () Bool)

(assert (=> d!107115 m!777877))

(assert (=> b!833063 m!776519))

(assert (=> b!832161 d!107115))

(assert (=> b!832161 d!106533))

(assert (=> b!832161 d!106451))

(declare-fun d!107117 () Bool)

(declare-fun c!90651 () Bool)

(assert (=> d!107117 (= c!90651 ((_ is Nil!16005) (toList!4524 lt!377459)))))

(declare-fun e!464700 () (InoxSet tuple2!10180))

(assert (=> d!107117 (= (content!390 (toList!4524 lt!377459)) e!464700)))

(declare-fun b!833064 () Bool)

(assert (=> b!833064 (= e!464700 ((as const (Array tuple2!10180 Bool)) false))))

(declare-fun b!833065 () Bool)

(assert (=> b!833065 (= e!464700 ((_ map or) (store ((as const (Array tuple2!10180 Bool)) false) (h!17134 (toList!4524 lt!377459)) true) (content!390 (t!22384 (toList!4524 lt!377459)))))))

(assert (= (and d!107117 c!90651) b!833064))

(assert (= (and d!107117 (not c!90651)) b!833065))

(declare-fun m!777879 () Bool)

(assert (=> b!833065 m!777879))

(declare-fun m!777881 () Bool)

(assert (=> b!833065 m!777881))

(assert (=> d!106355 d!107117))

(declare-fun d!107119 () Bool)

(declare-fun lt!378045 () Bool)

(assert (=> d!107119 (= lt!378045 (select (content!390 lt!377780) (tuple2!10181 (_1!5100 lt!377371) (_2!5100 lt!377371))))))

(declare-fun e!464701 () Bool)

(assert (=> d!107119 (= lt!378045 e!464701)))

(declare-fun res!566663 () Bool)

(assert (=> d!107119 (=> (not res!566663) (not e!464701))))

(assert (=> d!107119 (= res!566663 ((_ is Cons!16004) lt!377780))))

(assert (=> d!107119 (= (contains!4213 lt!377780 (tuple2!10181 (_1!5100 lt!377371) (_2!5100 lt!377371))) lt!378045)))

(declare-fun b!833066 () Bool)

(declare-fun e!464702 () Bool)

(assert (=> b!833066 (= e!464701 e!464702)))

(declare-fun res!566664 () Bool)

(assert (=> b!833066 (=> res!566664 e!464702)))

(assert (=> b!833066 (= res!566664 (= (h!17134 lt!377780) (tuple2!10181 (_1!5100 lt!377371) (_2!5100 lt!377371))))))

(declare-fun b!833067 () Bool)

(assert (=> b!833067 (= e!464702 (contains!4213 (t!22384 lt!377780) (tuple2!10181 (_1!5100 lt!377371) (_2!5100 lt!377371))))))

(assert (= (and d!107119 res!566663) b!833066))

(assert (= (and b!833066 (not res!566664)) b!833067))

(declare-fun m!777883 () Bool)

(assert (=> d!107119 m!777883))

(declare-fun m!777885 () Bool)

(assert (=> d!107119 m!777885))

(declare-fun m!777887 () Bool)

(assert (=> b!833067 m!777887))

(assert (=> b!832231 d!107119))

(declare-fun d!107121 () Bool)

(declare-fun e!464703 () Bool)

(assert (=> d!107121 e!464703))

(declare-fun res!566665 () Bool)

(assert (=> d!107121 (=> res!566665 e!464703)))

(declare-fun lt!378049 () Bool)

(assert (=> d!107121 (= res!566665 (not lt!378049))))

(declare-fun lt!378046 () Bool)

(assert (=> d!107121 (= lt!378049 lt!378046)))

(declare-fun lt!378048 () Unit!28497)

(declare-fun e!464704 () Unit!28497)

(assert (=> d!107121 (= lt!378048 e!464704)))

(declare-fun c!90652 () Bool)

(assert (=> d!107121 (= c!90652 lt!378046)))

(assert (=> d!107121 (= lt!378046 (containsKey!401 (toList!4524 lt!377796) (_1!5100 (ite (or c!90283 c!90285) (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34) (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))))))

(assert (=> d!107121 (= (contains!4212 lt!377796 (_1!5100 (ite (or c!90283 c!90285) (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34) (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))) lt!378049)))

(declare-fun b!833068 () Bool)

(declare-fun lt!378047 () Unit!28497)

(assert (=> b!833068 (= e!464704 lt!378047)))

(assert (=> b!833068 (= lt!378047 (lemmaContainsKeyImpliesGetValueByKeyDefined!311 (toList!4524 lt!377796) (_1!5100 (ite (or c!90283 c!90285) (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34) (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))))))

(assert (=> b!833068 (isDefined!312 (getValueByKey!415 (toList!4524 lt!377796) (_1!5100 (ite (or c!90283 c!90285) (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34) (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))))))

(declare-fun b!833069 () Bool)

(declare-fun Unit!28555 () Unit!28497)

(assert (=> b!833069 (= e!464704 Unit!28555)))

(declare-fun b!833070 () Bool)

(assert (=> b!833070 (= e!464703 (isDefined!312 (getValueByKey!415 (toList!4524 lt!377796) (_1!5100 (ite (or c!90283 c!90285) (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34) (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))))

(assert (= (and d!107121 c!90652) b!833068))

(assert (= (and d!107121 (not c!90652)) b!833069))

(assert (= (and d!107121 (not res!566665)) b!833070))

(declare-fun m!777889 () Bool)

(assert (=> d!107121 m!777889))

(declare-fun m!777891 () Bool)

(assert (=> b!833068 m!777891))

(assert (=> b!833068 m!776711))

(assert (=> b!833068 m!776711))

(declare-fun m!777893 () Bool)

(assert (=> b!833068 m!777893))

(assert (=> b!833070 m!776711))

(assert (=> b!833070 m!776711))

(assert (=> b!833070 m!777893))

(assert (=> d!106487 d!107121))

(declare-fun d!107123 () Bool)

(declare-fun c!90653 () Bool)

(assert (=> d!107123 (= c!90653 (and ((_ is Cons!16004) lt!377798) (= (_1!5100 (h!17134 lt!377798)) (_1!5100 (ite (or c!90283 c!90285) (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34) (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))))

(declare-fun e!464705 () Option!421)

(assert (=> d!107123 (= (getValueByKey!415 lt!377798 (_1!5100 (ite (or c!90283 c!90285) (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34) (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))) e!464705)))

(declare-fun b!833071 () Bool)

(assert (=> b!833071 (= e!464705 (Some!420 (_2!5100 (h!17134 lt!377798))))))

(declare-fun b!833074 () Bool)

(declare-fun e!464706 () Option!421)

(assert (=> b!833074 (= e!464706 None!419)))

(declare-fun b!833072 () Bool)

(assert (=> b!833072 (= e!464705 e!464706)))

(declare-fun c!90654 () Bool)

(assert (=> b!833072 (= c!90654 (and ((_ is Cons!16004) lt!377798) (not (= (_1!5100 (h!17134 lt!377798)) (_1!5100 (ite (or c!90283 c!90285) (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34) (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))))))))

(declare-fun b!833073 () Bool)

(assert (=> b!833073 (= e!464706 (getValueByKey!415 (t!22384 lt!377798) (_1!5100 (ite (or c!90283 c!90285) (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34) (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))))))

(assert (= (and d!107123 c!90653) b!833071))

(assert (= (and d!107123 (not c!90653)) b!833072))

(assert (= (and b!833072 c!90654) b!833073))

(assert (= (and b!833072 (not c!90654)) b!833074))

(declare-fun m!777895 () Bool)

(assert (=> b!833073 m!777895))

(assert (=> d!106487 d!107123))

(declare-fun d!107125 () Bool)

(assert (=> d!107125 (= (getValueByKey!415 lt!377798 (_1!5100 (ite (or c!90283 c!90285) (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34) (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))) (Some!420 (_2!5100 (ite (or c!90283 c!90285) (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34) (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))))))

(declare-fun lt!378050 () Unit!28497)

(assert (=> d!107125 (= lt!378050 (choose!1433 lt!377798 (_1!5100 (ite (or c!90283 c!90285) (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34) (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))) (_2!5100 (ite (or c!90283 c!90285) (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34) (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))))))

(declare-fun e!464707 () Bool)

(assert (=> d!107125 e!464707))

(declare-fun res!566666 () Bool)

(assert (=> d!107125 (=> (not res!566666) (not e!464707))))

(assert (=> d!107125 (= res!566666 (isStrictlySorted!438 lt!377798))))

(assert (=> d!107125 (= (lemmaContainsTupThenGetReturnValue!231 lt!377798 (_1!5100 (ite (or c!90283 c!90285) (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34) (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))) (_2!5100 (ite (or c!90283 c!90285) (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34) (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))) lt!378050)))

(declare-fun b!833075 () Bool)

(declare-fun res!566667 () Bool)

(assert (=> b!833075 (=> (not res!566667) (not e!464707))))

(assert (=> b!833075 (= res!566667 (containsKey!401 lt!377798 (_1!5100 (ite (or c!90283 c!90285) (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34) (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))))))

(declare-fun b!833076 () Bool)

(assert (=> b!833076 (= e!464707 (contains!4213 lt!377798 (tuple2!10181 (_1!5100 (ite (or c!90283 c!90285) (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34) (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))) (_2!5100 (ite (or c!90283 c!90285) (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34) (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))))

(assert (= (and d!107125 res!566666) b!833075))

(assert (= (and b!833075 res!566667) b!833076))

(assert (=> d!107125 m!776705))

(declare-fun m!777897 () Bool)

(assert (=> d!107125 m!777897))

(declare-fun m!777899 () Bool)

(assert (=> d!107125 m!777899))

(declare-fun m!777901 () Bool)

(assert (=> b!833075 m!777901))

(declare-fun m!777903 () Bool)

(assert (=> b!833076 m!777903))

(assert (=> d!106487 d!107125))

(declare-fun b!833077 () Bool)

(declare-fun e!464712 () List!16008)

(declare-fun call!36484 () List!16008)

(assert (=> b!833077 (= e!464712 call!36484)))

(declare-fun b!833078 () Bool)

(declare-fun res!566668 () Bool)

(declare-fun e!464709 () Bool)

(assert (=> b!833078 (=> (not res!566668) (not e!464709))))

(declare-fun lt!378051 () List!16008)

(assert (=> b!833078 (= res!566668 (containsKey!401 lt!378051 (_1!5100 (ite (or c!90283 c!90285) (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34) (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))))))

(declare-fun c!90656 () Bool)

(declare-fun c!90658 () Bool)

(declare-fun b!833079 () Bool)

(declare-fun e!464711 () List!16008)

(assert (=> b!833079 (= e!464711 (ite c!90656 (t!22384 (toList!4524 (ite c!90283 call!36391 (ite c!90285 call!36395 call!36390)))) (ite c!90658 (Cons!16004 (h!17134 (toList!4524 (ite c!90283 call!36391 (ite c!90285 call!36395 call!36390)))) (t!22384 (toList!4524 (ite c!90283 call!36391 (ite c!90285 call!36395 call!36390))))) Nil!16005)))))

(declare-fun b!833080 () Bool)

(declare-fun e!464708 () List!16008)

(assert (=> b!833080 (= e!464708 e!464712)))

(assert (=> b!833080 (= c!90656 (and ((_ is Cons!16004) (toList!4524 (ite c!90283 call!36391 (ite c!90285 call!36395 call!36390)))) (= (_1!5100 (h!17134 (toList!4524 (ite c!90283 call!36391 (ite c!90285 call!36395 call!36390))))) (_1!5100 (ite (or c!90283 c!90285) (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34) (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))))

(declare-fun b!833081 () Bool)

(assert (=> b!833081 (= e!464711 (insertStrictlySorted!269 (t!22384 (toList!4524 (ite c!90283 call!36391 (ite c!90285 call!36395 call!36390)))) (_1!5100 (ite (or c!90283 c!90285) (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34) (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))) (_2!5100 (ite (or c!90283 c!90285) (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34) (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))))))

(declare-fun bm!36480 () Bool)

(declare-fun call!36485 () List!16008)

(assert (=> bm!36480 (= call!36484 call!36485)))

(declare-fun b!833082 () Bool)

(assert (=> b!833082 (= e!464709 (contains!4213 lt!378051 (tuple2!10181 (_1!5100 (ite (or c!90283 c!90285) (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34) (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))) (_2!5100 (ite (or c!90283 c!90285) (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34) (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))))

(declare-fun b!833083 () Bool)

(declare-fun e!464710 () List!16008)

(declare-fun call!36483 () List!16008)

(assert (=> b!833083 (= e!464710 call!36483)))

(declare-fun b!833084 () Bool)

(assert (=> b!833084 (= c!90658 (and ((_ is Cons!16004) (toList!4524 (ite c!90283 call!36391 (ite c!90285 call!36395 call!36390)))) (bvsgt (_1!5100 (h!17134 (toList!4524 (ite c!90283 call!36391 (ite c!90285 call!36395 call!36390))))) (_1!5100 (ite (or c!90283 c!90285) (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34) (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))))

(assert (=> b!833084 (= e!464712 e!464710)))

(declare-fun d!107127 () Bool)

(assert (=> d!107127 e!464709))

(declare-fun res!566669 () Bool)

(assert (=> d!107127 (=> (not res!566669) (not e!464709))))

(assert (=> d!107127 (= res!566669 (isStrictlySorted!438 lt!378051))))

(assert (=> d!107127 (= lt!378051 e!464708)))

(declare-fun c!90657 () Bool)

(assert (=> d!107127 (= c!90657 (and ((_ is Cons!16004) (toList!4524 (ite c!90283 call!36391 (ite c!90285 call!36395 call!36390)))) (bvslt (_1!5100 (h!17134 (toList!4524 (ite c!90283 call!36391 (ite c!90285 call!36395 call!36390))))) (_1!5100 (ite (or c!90283 c!90285) (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34) (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))))

(assert (=> d!107127 (isStrictlySorted!438 (toList!4524 (ite c!90283 call!36391 (ite c!90285 call!36395 call!36390))))))

(assert (=> d!107127 (= (insertStrictlySorted!269 (toList!4524 (ite c!90283 call!36391 (ite c!90285 call!36395 call!36390))) (_1!5100 (ite (or c!90283 c!90285) (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34) (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))) (_2!5100 (ite (or c!90283 c!90285) (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34) (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))) lt!378051)))

(declare-fun b!833085 () Bool)

(assert (=> b!833085 (= e!464710 call!36483)))

(declare-fun bm!36481 () Bool)

(assert (=> bm!36481 (= call!36485 ($colon$colon!536 e!464711 (ite c!90657 (h!17134 (toList!4524 (ite c!90283 call!36391 (ite c!90285 call!36395 call!36390)))) (tuple2!10181 (_1!5100 (ite (or c!90283 c!90285) (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34) (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))) (_2!5100 (ite (or c!90283 c!90285) (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34) (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))))))))

(declare-fun c!90655 () Bool)

(assert (=> bm!36481 (= c!90655 c!90657)))

(declare-fun bm!36482 () Bool)

(assert (=> bm!36482 (= call!36483 call!36484)))

(declare-fun b!833086 () Bool)

(assert (=> b!833086 (= e!464708 call!36485)))

(assert (= (and d!107127 c!90657) b!833086))

(assert (= (and d!107127 (not c!90657)) b!833080))

(assert (= (and b!833080 c!90656) b!833077))

(assert (= (and b!833080 (not c!90656)) b!833084))

(assert (= (and b!833084 c!90658) b!833083))

(assert (= (and b!833084 (not c!90658)) b!833085))

(assert (= (or b!833083 b!833085) bm!36482))

(assert (= (or b!833077 bm!36482) bm!36480))

(assert (= (or b!833086 bm!36480) bm!36481))

(assert (= (and bm!36481 c!90655) b!833081))

(assert (= (and bm!36481 (not c!90655)) b!833079))

(assert (= (and d!107127 res!566669) b!833078))

(assert (= (and b!833078 res!566668) b!833082))

(declare-fun m!777905 () Bool)

(assert (=> b!833078 m!777905))

(declare-fun m!777907 () Bool)

(assert (=> b!833081 m!777907))

(declare-fun m!777909 () Bool)

(assert (=> d!107127 m!777909))

(declare-fun m!777911 () Bool)

(assert (=> d!107127 m!777911))

(declare-fun m!777913 () Bool)

(assert (=> b!833082 m!777913))

(declare-fun m!777915 () Bool)

(assert (=> bm!36481 m!777915))

(assert (=> d!106487 d!107127))

(declare-fun d!107129 () Bool)

(declare-fun c!90659 () Bool)

(assert (=> d!107129 (= c!90659 (and ((_ is Cons!16004) (t!22384 (toList!4524 lt!377455))) (= (_1!5100 (h!17134 (t!22384 (toList!4524 lt!377455)))) (_1!5100 lt!377371))))))

(declare-fun e!464713 () Option!421)

(assert (=> d!107129 (= (getValueByKey!415 (t!22384 (toList!4524 lt!377455)) (_1!5100 lt!377371)) e!464713)))

(declare-fun b!833087 () Bool)

(assert (=> b!833087 (= e!464713 (Some!420 (_2!5100 (h!17134 (t!22384 (toList!4524 lt!377455))))))))

(declare-fun b!833090 () Bool)

(declare-fun e!464714 () Option!421)

(assert (=> b!833090 (= e!464714 None!419)))

(declare-fun b!833088 () Bool)

(assert (=> b!833088 (= e!464713 e!464714)))

(declare-fun c!90660 () Bool)

(assert (=> b!833088 (= c!90660 (and ((_ is Cons!16004) (t!22384 (toList!4524 lt!377455))) (not (= (_1!5100 (h!17134 (t!22384 (toList!4524 lt!377455)))) (_1!5100 lt!377371)))))))

(declare-fun b!833089 () Bool)

(assert (=> b!833089 (= e!464714 (getValueByKey!415 (t!22384 (t!22384 (toList!4524 lt!377455))) (_1!5100 lt!377371)))))

(assert (= (and d!107129 c!90659) b!833087))

(assert (= (and d!107129 (not c!90659)) b!833088))

(assert (= (and b!833088 c!90660) b!833089))

(assert (= (and b!833088 (not c!90660)) b!833090))

(declare-fun m!777917 () Bool)

(assert (=> b!833089 m!777917))

(assert (=> b!832199 d!107129))

(declare-fun lt!378052 () Bool)

(declare-fun d!107131 () Bool)

(assert (=> d!107131 (= lt!378052 (select (content!390 (toList!4524 lt!377754)) (tuple2!10181 lt!377438 lt!377443)))))

(declare-fun e!464715 () Bool)

(assert (=> d!107131 (= lt!378052 e!464715)))

(declare-fun res!566670 () Bool)

(assert (=> d!107131 (=> (not res!566670) (not e!464715))))

(assert (=> d!107131 (= res!566670 ((_ is Cons!16004) (toList!4524 lt!377754)))))

(assert (=> d!107131 (= (contains!4213 (toList!4524 lt!377754) (tuple2!10181 lt!377438 lt!377443)) lt!378052)))

(declare-fun b!833091 () Bool)

(declare-fun e!464716 () Bool)

(assert (=> b!833091 (= e!464715 e!464716)))

(declare-fun res!566671 () Bool)

(assert (=> b!833091 (=> res!566671 e!464716)))

(assert (=> b!833091 (= res!566671 (= (h!17134 (toList!4524 lt!377754)) (tuple2!10181 lt!377438 lt!377443)))))

(declare-fun b!833092 () Bool)

(assert (=> b!833092 (= e!464716 (contains!4213 (t!22384 (toList!4524 lt!377754)) (tuple2!10181 lt!377438 lt!377443)))))

(assert (= (and d!107131 res!566670) b!833091))

(assert (= (and b!833091 (not res!566671)) b!833092))

(declare-fun m!777919 () Bool)

(assert (=> d!107131 m!777919))

(declare-fun m!777921 () Bool)

(assert (=> d!107131 m!777921))

(declare-fun m!777923 () Bool)

(assert (=> b!833092 m!777923))

(assert (=> b!832193 d!107131))

(declare-fun d!107133 () Bool)

(declare-fun res!566672 () Bool)

(declare-fun e!464717 () Bool)

(assert (=> d!107133 (=> res!566672 e!464717)))

(assert (=> d!107133 (= res!566672 (and ((_ is Cons!16004) (toList!4524 lt!377459)) (= (_1!5100 (h!17134 (toList!4524 lt!377459))) (_1!5100 lt!377372))))))

(assert (=> d!107133 (= (containsKey!401 (toList!4524 lt!377459) (_1!5100 lt!377372)) e!464717)))

(declare-fun b!833093 () Bool)

(declare-fun e!464718 () Bool)

(assert (=> b!833093 (= e!464717 e!464718)))

(declare-fun res!566673 () Bool)

(assert (=> b!833093 (=> (not res!566673) (not e!464718))))

(assert (=> b!833093 (= res!566673 (and (or (not ((_ is Cons!16004) (toList!4524 lt!377459))) (bvsle (_1!5100 (h!17134 (toList!4524 lt!377459))) (_1!5100 lt!377372))) ((_ is Cons!16004) (toList!4524 lt!377459)) (bvslt (_1!5100 (h!17134 (toList!4524 lt!377459))) (_1!5100 lt!377372))))))

(declare-fun b!833094 () Bool)

(assert (=> b!833094 (= e!464718 (containsKey!401 (t!22384 (toList!4524 lt!377459)) (_1!5100 lt!377372)))))

(assert (= (and d!107133 (not res!566672)) b!833093))

(assert (= (and b!833093 res!566673) b!833094))

(declare-fun m!777925 () Bool)

(assert (=> b!833094 m!777925))

(assert (=> d!106415 d!107133))

(declare-fun d!107135 () Bool)

(declare-fun res!566674 () Bool)

(declare-fun e!464719 () Bool)

(assert (=> d!107135 (=> res!566674 e!464719)))

(assert (=> d!107135 (= res!566674 (or ((_ is Nil!16005) lt!377730) ((_ is Nil!16005) (t!22384 lt!377730))))))

(assert (=> d!107135 (= (isStrictlySorted!438 lt!377730) e!464719)))

(declare-fun b!833095 () Bool)

(declare-fun e!464720 () Bool)

(assert (=> b!833095 (= e!464719 e!464720)))

(declare-fun res!566675 () Bool)

(assert (=> b!833095 (=> (not res!566675) (not e!464720))))

(assert (=> b!833095 (= res!566675 (bvslt (_1!5100 (h!17134 lt!377730)) (_1!5100 (h!17134 (t!22384 lt!377730)))))))

(declare-fun b!833096 () Bool)

(assert (=> b!833096 (= e!464720 (isStrictlySorted!438 (t!22384 lt!377730)))))

(assert (= (and d!107135 (not res!566674)) b!833095))

(assert (= (and b!833095 res!566675) b!833096))

(declare-fun m!777927 () Bool)

(assert (=> b!833096 m!777927))

(assert (=> d!106413 d!107135))

(assert (=> d!106413 d!107053))

(declare-fun d!107137 () Bool)

(assert (=> d!107137 (= (isEmpty!663 (toList!4524 lt!377442)) ((_ is Nil!16005) (toList!4524 lt!377442)))))

(assert (=> d!106493 d!107137))

(declare-fun d!107139 () Bool)

(declare-fun res!566676 () Bool)

(declare-fun e!464721 () Bool)

(assert (=> d!107139 (=> res!566676 e!464721)))

(assert (=> d!107139 (= res!566676 (and ((_ is Cons!16004) lt!377730) (= (_1!5100 (h!17134 lt!377730)) (_1!5100 lt!377371))))))

(assert (=> d!107139 (= (containsKey!401 lt!377730 (_1!5100 lt!377371)) e!464721)))

(declare-fun b!833097 () Bool)

(declare-fun e!464722 () Bool)

(assert (=> b!833097 (= e!464721 e!464722)))

(declare-fun res!566677 () Bool)

(assert (=> b!833097 (=> (not res!566677) (not e!464722))))

(assert (=> b!833097 (= res!566677 (and (or (not ((_ is Cons!16004) lt!377730)) (bvsle (_1!5100 (h!17134 lt!377730)) (_1!5100 lt!377371))) ((_ is Cons!16004) lt!377730) (bvslt (_1!5100 (h!17134 lt!377730)) (_1!5100 lt!377371))))))

(declare-fun b!833098 () Bool)

(assert (=> b!833098 (= e!464722 (containsKey!401 (t!22384 lt!377730) (_1!5100 lt!377371)))))

(assert (= (and d!107139 (not res!566676)) b!833097))

(assert (= (and b!833097 res!566677) b!833098))

(declare-fun m!777929 () Bool)

(assert (=> b!833098 m!777929))

(assert (=> b!832133 d!107139))

(declare-fun d!107141 () Bool)

(declare-fun lt!378053 () Bool)

(assert (=> d!107141 (= lt!378053 (select (content!390 (t!22384 (toList!4524 lt!377537))) lt!377371))))

(declare-fun e!464723 () Bool)

(assert (=> d!107141 (= lt!378053 e!464723)))

(declare-fun res!566678 () Bool)

(assert (=> d!107141 (=> (not res!566678) (not e!464723))))

(assert (=> d!107141 (= res!566678 ((_ is Cons!16004) (t!22384 (toList!4524 lt!377537))))))

(assert (=> d!107141 (= (contains!4213 (t!22384 (toList!4524 lt!377537)) lt!377371) lt!378053)))

(declare-fun b!833099 () Bool)

(declare-fun e!464724 () Bool)

(assert (=> b!833099 (= e!464723 e!464724)))

(declare-fun res!566679 () Bool)

(assert (=> b!833099 (=> res!566679 e!464724)))

(assert (=> b!833099 (= res!566679 (= (h!17134 (t!22384 (toList!4524 lt!377537))) lt!377371))))

(declare-fun b!833100 () Bool)

(assert (=> b!833100 (= e!464724 (contains!4213 (t!22384 (t!22384 (toList!4524 lt!377537))) lt!377371))))

(assert (= (and d!107141 res!566678) b!833099))

(assert (= (and b!833099 (not res!566679)) b!833100))

(assert (=> d!107141 m!776871))

(declare-fun m!777931 () Bool)

(assert (=> d!107141 m!777931))

(declare-fun m!777933 () Bool)

(assert (=> b!833100 m!777933))

(assert (=> b!832023 d!107141))

(assert (=> b!832017 d!106623))

(declare-fun d!107143 () Bool)

(declare-fun lt!378054 () Bool)

(assert (=> d!107143 (= lt!378054 (select (content!390 lt!377724) (tuple2!10181 (_1!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)) (_2!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))))))

(declare-fun e!464725 () Bool)

(assert (=> d!107143 (= lt!378054 e!464725)))

(declare-fun res!566680 () Bool)

(assert (=> d!107143 (=> (not res!566680) (not e!464725))))

(assert (=> d!107143 (= res!566680 ((_ is Cons!16004) lt!377724))))

(assert (=> d!107143 (= (contains!4213 lt!377724 (tuple2!10181 (_1!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)) (_2!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))) lt!378054)))

(declare-fun b!833101 () Bool)

(declare-fun e!464726 () Bool)

(assert (=> b!833101 (= e!464725 e!464726)))

(declare-fun res!566681 () Bool)

(assert (=> b!833101 (=> res!566681 e!464726)))

(assert (=> b!833101 (= res!566681 (= (h!17134 lt!377724) (tuple2!10181 (_1!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)) (_2!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))))))

(declare-fun b!833102 () Bool)

(assert (=> b!833102 (= e!464726 (contains!4213 (t!22384 lt!377724) (tuple2!10181 (_1!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)) (_2!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))))))

(assert (= (and d!107143 res!566680) b!833101))

(assert (= (and b!833101 (not res!566681)) b!833102))

(declare-fun m!777935 () Bool)

(assert (=> d!107143 m!777935))

(declare-fun m!777937 () Bool)

(assert (=> d!107143 m!777937))

(declare-fun m!777939 () Bool)

(assert (=> b!833102 m!777939))

(assert (=> b!832118 d!107143))

(assert (=> b!832029 d!106987))

(assert (=> b!832029 d!106475))

(declare-fun d!107145 () Bool)

(assert (=> d!107145 (= (get!11829 (getValueByKey!415 (toList!4524 lt!377442) (select (arr!22317 _keys!976) #b00000000000000000000000000000000))) (v!10097 (getValueByKey!415 (toList!4524 lt!377442) (select (arr!22317 _keys!976) #b00000000000000000000000000000000))))))

(assert (=> d!106363 d!107145))

(assert (=> d!106363 d!106641))

(declare-fun lt!378055 () Bool)

(declare-fun d!107147 () Bool)

(assert (=> d!107147 (= lt!378055 (select (content!390 (toList!4524 lt!377647)) (tuple2!10181 lt!377521 minValue!754)))))

(declare-fun e!464727 () Bool)

(assert (=> d!107147 (= lt!378055 e!464727)))

(declare-fun res!566682 () Bool)

(assert (=> d!107147 (=> (not res!566682) (not e!464727))))

(assert (=> d!107147 (= res!566682 ((_ is Cons!16004) (toList!4524 lt!377647)))))

(assert (=> d!107147 (= (contains!4213 (toList!4524 lt!377647) (tuple2!10181 lt!377521 minValue!754)) lt!378055)))

(declare-fun b!833103 () Bool)

(declare-fun e!464728 () Bool)

(assert (=> b!833103 (= e!464727 e!464728)))

(declare-fun res!566683 () Bool)

(assert (=> b!833103 (=> res!566683 e!464728)))

(assert (=> b!833103 (= res!566683 (= (h!17134 (toList!4524 lt!377647)) (tuple2!10181 lt!377521 minValue!754)))))

(declare-fun b!833104 () Bool)

(assert (=> b!833104 (= e!464728 (contains!4213 (t!22384 (toList!4524 lt!377647)) (tuple2!10181 lt!377521 minValue!754)))))

(assert (= (and d!107147 res!566682) b!833103))

(assert (= (and b!833103 (not res!566683)) b!833104))

(declare-fun m!777941 () Bool)

(assert (=> d!107147 m!777941))

(declare-fun m!777943 () Bool)

(assert (=> d!107147 m!777943))

(declare-fun m!777945 () Bool)

(assert (=> b!833104 m!777945))

(assert (=> b!831993 d!107147))

(declare-fun c!90661 () Bool)

(declare-fun d!107149 () Bool)

(assert (=> d!107149 (= c!90661 (and ((_ is Cons!16004) (toList!4524 lt!377796)) (= (_1!5100 (h!17134 (toList!4524 lt!377796))) (_1!5100 (ite (or c!90283 c!90285) (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34) (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))))

(declare-fun e!464729 () Option!421)

(assert (=> d!107149 (= (getValueByKey!415 (toList!4524 lt!377796) (_1!5100 (ite (or c!90283 c!90285) (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34) (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))) e!464729)))

(declare-fun b!833105 () Bool)

(assert (=> b!833105 (= e!464729 (Some!420 (_2!5100 (h!17134 (toList!4524 lt!377796)))))))

(declare-fun b!833108 () Bool)

(declare-fun e!464730 () Option!421)

(assert (=> b!833108 (= e!464730 None!419)))

(declare-fun b!833106 () Bool)

(assert (=> b!833106 (= e!464729 e!464730)))

(declare-fun c!90662 () Bool)

(assert (=> b!833106 (= c!90662 (and ((_ is Cons!16004) (toList!4524 lt!377796)) (not (= (_1!5100 (h!17134 (toList!4524 lt!377796))) (_1!5100 (ite (or c!90283 c!90285) (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34) (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))))))))

(declare-fun b!833107 () Bool)

(assert (=> b!833107 (= e!464730 (getValueByKey!415 (t!22384 (toList!4524 lt!377796)) (_1!5100 (ite (or c!90283 c!90285) (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34) (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))))))

(assert (= (and d!107149 c!90661) b!833105))

(assert (= (and d!107149 (not c!90661)) b!833106))

(assert (= (and b!833106 c!90662) b!833107))

(assert (= (and b!833106 (not c!90662)) b!833108))

(declare-fun m!777947 () Bool)

(assert (=> b!833107 m!777947))

(assert (=> b!832255 d!107149))

(assert (=> b!832211 d!106965))

(assert (=> b!832211 d!106967))

(declare-fun b!833109 () Bool)

(declare-fun e!464735 () List!16008)

(declare-fun call!36487 () List!16008)

(assert (=> b!833109 (= e!464735 call!36487)))

(declare-fun b!833110 () Bool)

(declare-fun res!566684 () Bool)

(declare-fun e!464732 () Bool)

(assert (=> b!833110 (=> (not res!566684) (not e!464732))))

(declare-fun lt!378056 () List!16008)

(assert (=> b!833110 (= res!566684 (containsKey!401 lt!378056 (_1!5100 lt!377372)))))

(declare-fun b!833111 () Bool)

(declare-fun c!90664 () Bool)

(declare-fun c!90666 () Bool)

(declare-fun e!464734 () List!16008)

(assert (=> b!833111 (= e!464734 (ite c!90664 (t!22384 (t!22384 (toList!4524 lt!377369))) (ite c!90666 (Cons!16004 (h!17134 (t!22384 (toList!4524 lt!377369))) (t!22384 (t!22384 (toList!4524 lt!377369)))) Nil!16005)))))

(declare-fun b!833112 () Bool)

(declare-fun e!464731 () List!16008)

(assert (=> b!833112 (= e!464731 e!464735)))

(assert (=> b!833112 (= c!90664 (and ((_ is Cons!16004) (t!22384 (toList!4524 lt!377369))) (= (_1!5100 (h!17134 (t!22384 (toList!4524 lt!377369)))) (_1!5100 lt!377372))))))

(declare-fun b!833113 () Bool)

(assert (=> b!833113 (= e!464734 (insertStrictlySorted!269 (t!22384 (t!22384 (toList!4524 lt!377369))) (_1!5100 lt!377372) (_2!5100 lt!377372)))))

(declare-fun bm!36483 () Bool)

(declare-fun call!36488 () List!16008)

(assert (=> bm!36483 (= call!36487 call!36488)))

(declare-fun b!833114 () Bool)

(assert (=> b!833114 (= e!464732 (contains!4213 lt!378056 (tuple2!10181 (_1!5100 lt!377372) (_2!5100 lt!377372))))))

(declare-fun b!833115 () Bool)

(declare-fun e!464733 () List!16008)

(declare-fun call!36486 () List!16008)

(assert (=> b!833115 (= e!464733 call!36486)))

(declare-fun b!833116 () Bool)

(assert (=> b!833116 (= c!90666 (and ((_ is Cons!16004) (t!22384 (toList!4524 lt!377369))) (bvsgt (_1!5100 (h!17134 (t!22384 (toList!4524 lt!377369)))) (_1!5100 lt!377372))))))

(assert (=> b!833116 (= e!464735 e!464733)))

(declare-fun d!107151 () Bool)

(assert (=> d!107151 e!464732))

(declare-fun res!566685 () Bool)

(assert (=> d!107151 (=> (not res!566685) (not e!464732))))

(assert (=> d!107151 (= res!566685 (isStrictlySorted!438 lt!378056))))

(assert (=> d!107151 (= lt!378056 e!464731)))

(declare-fun c!90665 () Bool)

(assert (=> d!107151 (= c!90665 (and ((_ is Cons!16004) (t!22384 (toList!4524 lt!377369))) (bvslt (_1!5100 (h!17134 (t!22384 (toList!4524 lt!377369)))) (_1!5100 lt!377372))))))

(assert (=> d!107151 (isStrictlySorted!438 (t!22384 (toList!4524 lt!377369)))))

(assert (=> d!107151 (= (insertStrictlySorted!269 (t!22384 (toList!4524 lt!377369)) (_1!5100 lt!377372) (_2!5100 lt!377372)) lt!378056)))

(declare-fun b!833117 () Bool)

(assert (=> b!833117 (= e!464733 call!36486)))

(declare-fun bm!36484 () Bool)

(assert (=> bm!36484 (= call!36488 ($colon$colon!536 e!464734 (ite c!90665 (h!17134 (t!22384 (toList!4524 lt!377369))) (tuple2!10181 (_1!5100 lt!377372) (_2!5100 lt!377372)))))))

(declare-fun c!90663 () Bool)

(assert (=> bm!36484 (= c!90663 c!90665)))

(declare-fun bm!36485 () Bool)

(assert (=> bm!36485 (= call!36486 call!36487)))

(declare-fun b!833118 () Bool)

(assert (=> b!833118 (= e!464731 call!36488)))

(assert (= (and d!107151 c!90665) b!833118))

(assert (= (and d!107151 (not c!90665)) b!833112))

(assert (= (and b!833112 c!90664) b!833109))

(assert (= (and b!833112 (not c!90664)) b!833116))

(assert (= (and b!833116 c!90666) b!833115))

(assert (= (and b!833116 (not c!90666)) b!833117))

(assert (= (or b!833115 b!833117) bm!36485))

(assert (= (or b!833109 bm!36485) bm!36483))

(assert (= (or b!833118 bm!36483) bm!36484))

(assert (= (and bm!36484 c!90663) b!833113))

(assert (= (and bm!36484 (not c!90663)) b!833111))

(assert (= (and d!107151 res!566685) b!833110))

(assert (= (and b!833110 res!566684) b!833114))

(declare-fun m!777949 () Bool)

(assert (=> b!833110 m!777949))

(declare-fun m!777951 () Bool)

(assert (=> b!833113 m!777951))

(declare-fun m!777953 () Bool)

(assert (=> d!107151 m!777953))

(assert (=> d!107151 m!777379))

(declare-fun m!777955 () Bool)

(assert (=> b!833114 m!777955))

(declare-fun m!777957 () Bool)

(assert (=> bm!36484 m!777957))

(assert (=> b!832155 d!107151))

(assert (=> b!832196 d!106981))

(assert (=> b!832196 d!106983))

(declare-fun d!107153 () Bool)

(declare-fun lt!378057 () Bool)

(assert (=> d!107153 (= lt!378057 (select (content!390 (toList!4524 lt!377664)) (tuple2!10181 lt!377507 zeroValueAfter!34)))))

(declare-fun e!464736 () Bool)

(assert (=> d!107153 (= lt!378057 e!464736)))

(declare-fun res!566686 () Bool)

(assert (=> d!107153 (=> (not res!566686) (not e!464736))))

(assert (=> d!107153 (= res!566686 ((_ is Cons!16004) (toList!4524 lt!377664)))))

(assert (=> d!107153 (= (contains!4213 (toList!4524 lt!377664) (tuple2!10181 lt!377507 zeroValueAfter!34)) lt!378057)))

(declare-fun b!833119 () Bool)

(declare-fun e!464737 () Bool)

(assert (=> b!833119 (= e!464736 e!464737)))

(declare-fun res!566687 () Bool)

(assert (=> b!833119 (=> res!566687 e!464737)))

(assert (=> b!833119 (= res!566687 (= (h!17134 (toList!4524 lt!377664)) (tuple2!10181 lt!377507 zeroValueAfter!34)))))

(declare-fun b!833120 () Bool)

(assert (=> b!833120 (= e!464737 (contains!4213 (t!22384 (toList!4524 lt!377664)) (tuple2!10181 lt!377507 zeroValueAfter!34)))))

(assert (= (and d!107153 res!566686) b!833119))

(assert (= (and b!833119 (not res!566687)) b!833120))

(declare-fun m!777959 () Bool)

(assert (=> d!107153 m!777959))

(declare-fun m!777961 () Bool)

(assert (=> d!107153 m!777961))

(declare-fun m!777963 () Bool)

(assert (=> b!833120 m!777963))

(assert (=> b!832002 d!107153))

(declare-fun d!107155 () Bool)

(declare-fun c!90667 () Bool)

(assert (=> d!107155 (= c!90667 (and ((_ is Cons!16004) (t!22384 lt!377409)) (= (_1!5100 (h!17134 (t!22384 lt!377409))) (_1!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))))))

(declare-fun e!464738 () Option!421)

(assert (=> d!107155 (= (getValueByKey!415 (t!22384 lt!377409) (_1!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))) e!464738)))

(declare-fun b!833121 () Bool)

(assert (=> b!833121 (= e!464738 (Some!420 (_2!5100 (h!17134 (t!22384 lt!377409)))))))

(declare-fun b!833124 () Bool)

(declare-fun e!464739 () Option!421)

(assert (=> b!833124 (= e!464739 None!419)))

(declare-fun b!833122 () Bool)

(assert (=> b!833122 (= e!464738 e!464739)))

(declare-fun c!90668 () Bool)

(assert (=> b!833122 (= c!90668 (and ((_ is Cons!16004) (t!22384 lt!377409)) (not (= (_1!5100 (h!17134 (t!22384 lt!377409))) (_1!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))))))

(declare-fun b!833123 () Bool)

(assert (=> b!833123 (= e!464739 (getValueByKey!415 (t!22384 (t!22384 lt!377409)) (_1!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))))

(assert (= (and d!107155 c!90667) b!833121))

(assert (= (and d!107155 (not c!90667)) b!833122))

(assert (= (and b!833122 c!90668) b!833123))

(assert (= (and b!833122 (not c!90668)) b!833124))

(declare-fun m!777965 () Bool)

(assert (=> b!833123 m!777965))

(assert (=> b!831919 d!107155))

(declare-fun b!833125 () Bool)

(declare-fun e!464744 () List!16008)

(declare-fun call!36490 () List!16008)

(assert (=> b!833125 (= e!464744 call!36490)))

(declare-fun b!833126 () Bool)

(declare-fun res!566688 () Bool)

(declare-fun e!464741 () Bool)

(assert (=> b!833126 (=> (not res!566688) (not e!464741))))

(declare-fun lt!378058 () List!16008)

(assert (=> b!833126 (= res!566688 (containsKey!401 lt!378058 (_1!5100 lt!377371)))))

(declare-fun c!90672 () Bool)

(declare-fun b!833127 () Bool)

(declare-fun c!90670 () Bool)

(declare-fun e!464743 () List!16008)

(assert (=> b!833127 (= e!464743 (ite c!90670 (t!22384 (t!22384 (toList!4524 lt!377373))) (ite c!90672 (Cons!16004 (h!17134 (t!22384 (toList!4524 lt!377373))) (t!22384 (t!22384 (toList!4524 lt!377373)))) Nil!16005)))))

(declare-fun b!833128 () Bool)

(declare-fun e!464740 () List!16008)

(assert (=> b!833128 (= e!464740 e!464744)))

(assert (=> b!833128 (= c!90670 (and ((_ is Cons!16004) (t!22384 (toList!4524 lt!377373))) (= (_1!5100 (h!17134 (t!22384 (toList!4524 lt!377373)))) (_1!5100 lt!377371))))))

(declare-fun b!833129 () Bool)

(assert (=> b!833129 (= e!464743 (insertStrictlySorted!269 (t!22384 (t!22384 (toList!4524 lt!377373))) (_1!5100 lt!377371) (_2!5100 lt!377371)))))

(declare-fun bm!36486 () Bool)

(declare-fun call!36491 () List!16008)

(assert (=> bm!36486 (= call!36490 call!36491)))

(declare-fun b!833130 () Bool)

(assert (=> b!833130 (= e!464741 (contains!4213 lt!378058 (tuple2!10181 (_1!5100 lt!377371) (_2!5100 lt!377371))))))

(declare-fun b!833131 () Bool)

(declare-fun e!464742 () List!16008)

(declare-fun call!36489 () List!16008)

(assert (=> b!833131 (= e!464742 call!36489)))

(declare-fun b!833132 () Bool)

(assert (=> b!833132 (= c!90672 (and ((_ is Cons!16004) (t!22384 (toList!4524 lt!377373))) (bvsgt (_1!5100 (h!17134 (t!22384 (toList!4524 lt!377373)))) (_1!5100 lt!377371))))))

(assert (=> b!833132 (= e!464744 e!464742)))

(declare-fun d!107157 () Bool)

(assert (=> d!107157 e!464741))

(declare-fun res!566689 () Bool)

(assert (=> d!107157 (=> (not res!566689) (not e!464741))))

(assert (=> d!107157 (= res!566689 (isStrictlySorted!438 lt!378058))))

(assert (=> d!107157 (= lt!378058 e!464740)))

(declare-fun c!90671 () Bool)

(assert (=> d!107157 (= c!90671 (and ((_ is Cons!16004) (t!22384 (toList!4524 lt!377373))) (bvslt (_1!5100 (h!17134 (t!22384 (toList!4524 lt!377373)))) (_1!5100 lt!377371))))))

(assert (=> d!107157 (isStrictlySorted!438 (t!22384 (toList!4524 lt!377373)))))

(assert (=> d!107157 (= (insertStrictlySorted!269 (t!22384 (toList!4524 lt!377373)) (_1!5100 lt!377371) (_2!5100 lt!377371)) lt!378058)))

(declare-fun b!833133 () Bool)

(assert (=> b!833133 (= e!464742 call!36489)))

(declare-fun bm!36487 () Bool)

(assert (=> bm!36487 (= call!36491 ($colon$colon!536 e!464743 (ite c!90671 (h!17134 (t!22384 (toList!4524 lt!377373))) (tuple2!10181 (_1!5100 lt!377371) (_2!5100 lt!377371)))))))

(declare-fun c!90669 () Bool)

(assert (=> bm!36487 (= c!90669 c!90671)))

(declare-fun bm!36488 () Bool)

(assert (=> bm!36488 (= call!36489 call!36490)))

(declare-fun b!833134 () Bool)

(assert (=> b!833134 (= e!464740 call!36491)))

(assert (= (and d!107157 c!90671) b!833134))

(assert (= (and d!107157 (not c!90671)) b!833128))

(assert (= (and b!833128 c!90670) b!833125))

(assert (= (and b!833128 (not c!90670)) b!833132))

(assert (= (and b!833132 c!90672) b!833131))

(assert (= (and b!833132 (not c!90672)) b!833133))

(assert (= (or b!833131 b!833133) bm!36488))

(assert (= (or b!833125 bm!36488) bm!36486))

(assert (= (or b!833134 bm!36486) bm!36487))

(assert (= (and bm!36487 c!90669) b!833129))

(assert (= (and bm!36487 (not c!90669)) b!833127))

(assert (= (and d!107157 res!566689) b!833126))

(assert (= (and b!833126 res!566688) b!833130))

(declare-fun m!777967 () Bool)

(assert (=> b!833126 m!777967))

(declare-fun m!777969 () Bool)

(assert (=> b!833129 m!777969))

(declare-fun m!777971 () Bool)

(assert (=> d!107157 m!777971))

(assert (=> d!107157 m!776909))

(declare-fun m!777973 () Bool)

(assert (=> b!833130 m!777973))

(declare-fun m!777975 () Bool)

(assert (=> bm!36487 m!777975))

(assert (=> b!832174 d!107157))

(declare-fun d!107159 () Bool)

(assert (=> d!107159 (isDefined!312 (getValueByKey!415 (toList!4524 lt!377508) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!378059 () Unit!28497)

(assert (=> d!107159 (= lt!378059 (choose!1435 (toList!4524 lt!377508) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!464745 () Bool)

(assert (=> d!107159 e!464745))

(declare-fun res!566690 () Bool)

(assert (=> d!107159 (=> (not res!566690) (not e!464745))))

(assert (=> d!107159 (= res!566690 (isStrictlySorted!438 (toList!4524 lt!377508)))))

(assert (=> d!107159 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!311 (toList!4524 lt!377508) #b0000000000000000000000000000000000000000000000000000000000000000) lt!378059)))

(declare-fun b!833135 () Bool)

(assert (=> b!833135 (= e!464745 (containsKey!401 (toList!4524 lt!377508) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!107159 res!566690) b!833135))

(assert (=> d!107159 m!776545))

(assert (=> d!107159 m!776545))

(assert (=> d!107159 m!776693))

(declare-fun m!777977 () Bool)

(assert (=> d!107159 m!777977))

(assert (=> d!107159 m!776845))

(assert (=> b!833135 m!776689))

(assert (=> b!832246 d!107159))

(assert (=> b!832246 d!106567))

(assert (=> b!832246 d!106569))

(declare-fun d!107161 () Bool)

(declare-fun res!566691 () Bool)

(declare-fun e!464746 () Bool)

(assert (=> d!107161 (=> res!566691 e!464746)))

(assert (=> d!107161 (= res!566691 (and ((_ is Cons!16004) (toList!4524 lt!377533)) (= (_1!5100 (h!17134 (toList!4524 lt!377533))) (_1!5100 lt!377371))))))

(assert (=> d!107161 (= (containsKey!401 (toList!4524 lt!377533) (_1!5100 lt!377371)) e!464746)))

(declare-fun b!833136 () Bool)

(declare-fun e!464747 () Bool)

(assert (=> b!833136 (= e!464746 e!464747)))

(declare-fun res!566692 () Bool)

(assert (=> b!833136 (=> (not res!566692) (not e!464747))))

(assert (=> b!833136 (= res!566692 (and (or (not ((_ is Cons!16004) (toList!4524 lt!377533))) (bvsle (_1!5100 (h!17134 (toList!4524 lt!377533))) (_1!5100 lt!377371))) ((_ is Cons!16004) (toList!4524 lt!377533)) (bvslt (_1!5100 (h!17134 (toList!4524 lt!377533))) (_1!5100 lt!377371))))))

(declare-fun b!833137 () Bool)

(assert (=> b!833137 (= e!464747 (containsKey!401 (t!22384 (toList!4524 lt!377533)) (_1!5100 lt!377371)))))

(assert (= (and d!107161 (not res!566691)) b!833136))

(assert (= (and b!833136 res!566692) b!833137))

(declare-fun m!777979 () Bool)

(assert (=> b!833137 m!777979))

(assert (=> d!106425 d!107161))

(declare-fun d!107163 () Bool)

(declare-fun lt!378060 () Bool)

(assert (=> d!107163 (= lt!378060 (select (content!391 (ite c!90242 (Cons!16005 (select (arr!22317 _keys!976) #b00000000000000000000000000000000) Nil!16006) Nil!16006)) (select (arr!22317 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun e!464749 () Bool)

(assert (=> d!107163 (= lt!378060 e!464749)))

(declare-fun res!566694 () Bool)

(assert (=> d!107163 (=> (not res!566694) (not e!464749))))

(assert (=> d!107163 (= res!566694 ((_ is Cons!16005) (ite c!90242 (Cons!16005 (select (arr!22317 _keys!976) #b00000000000000000000000000000000) Nil!16006) Nil!16006)))))

(assert (=> d!107163 (= (contains!4211 (ite c!90242 (Cons!16005 (select (arr!22317 _keys!976) #b00000000000000000000000000000000) Nil!16006) Nil!16006) (select (arr!22317 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))) lt!378060)))

(declare-fun b!833138 () Bool)

(declare-fun e!464748 () Bool)

(assert (=> b!833138 (= e!464749 e!464748)))

(declare-fun res!566693 () Bool)

(assert (=> b!833138 (=> res!566693 e!464748)))

(assert (=> b!833138 (= res!566693 (= (h!17135 (ite c!90242 (Cons!16005 (select (arr!22317 _keys!976) #b00000000000000000000000000000000) Nil!16006) Nil!16006)) (select (arr!22317 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!833139 () Bool)

(assert (=> b!833139 (= e!464748 (contains!4211 (t!22385 (ite c!90242 (Cons!16005 (select (arr!22317 _keys!976) #b00000000000000000000000000000000) Nil!16006) Nil!16006)) (select (arr!22317 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (= (and d!107163 res!566694) b!833138))

(assert (= (and b!833138 (not res!566693)) b!833139))

(declare-fun m!777981 () Bool)

(assert (=> d!107163 m!777981))

(assert (=> d!107163 m!776139))

(declare-fun m!777983 () Bool)

(assert (=> d!107163 m!777983))

(assert (=> b!833139 m!776139))

(declare-fun m!777985 () Bool)

(assert (=> b!833139 m!777985))

(assert (=> b!832049 d!107163))

(declare-fun d!107165 () Bool)

(declare-fun res!566695 () Bool)

(declare-fun e!464750 () Bool)

(assert (=> d!107165 (=> res!566695 e!464750)))

(assert (=> d!107165 (= res!566695 (and ((_ is Cons!16004) lt!377453) (= (_1!5100 (h!17134 lt!377453)) (_1!5100 lt!377372))))))

(assert (=> d!107165 (= (containsKey!401 lt!377453 (_1!5100 lt!377372)) e!464750)))

(declare-fun b!833140 () Bool)

(declare-fun e!464751 () Bool)

(assert (=> b!833140 (= e!464750 e!464751)))

(declare-fun res!566696 () Bool)

(assert (=> b!833140 (=> (not res!566696) (not e!464751))))

(assert (=> b!833140 (= res!566696 (and (or (not ((_ is Cons!16004) lt!377453)) (bvsle (_1!5100 (h!17134 lt!377453)) (_1!5100 lt!377372))) ((_ is Cons!16004) lt!377453) (bvslt (_1!5100 (h!17134 lt!377453)) (_1!5100 lt!377372))))))

(declare-fun b!833141 () Bool)

(assert (=> b!833141 (= e!464751 (containsKey!401 (t!22384 lt!377453) (_1!5100 lt!377372)))))

(assert (= (and d!107165 (not res!566695)) b!833140))

(assert (= (and b!833140 res!566696) b!833141))

(declare-fun m!777987 () Bool)

(assert (=> b!833141 m!777987))

(assert (=> b!832034 d!107165))

(declare-fun d!107167 () Bool)

(declare-fun e!464752 () Bool)

(assert (=> d!107167 e!464752))

(declare-fun res!566697 () Bool)

(assert (=> d!107167 (=> res!566697 e!464752)))

(declare-fun lt!378064 () Bool)

(assert (=> d!107167 (= res!566697 (not lt!378064))))

(declare-fun lt!378061 () Bool)

(assert (=> d!107167 (= lt!378064 lt!378061)))

(declare-fun lt!378063 () Unit!28497)

(declare-fun e!464753 () Unit!28497)

(assert (=> d!107167 (= lt!378063 e!464753)))

(declare-fun c!90673 () Bool)

(assert (=> d!107167 (= c!90673 lt!378061)))

(assert (=> d!107167 (= lt!378061 (containsKey!401 (toList!4524 lt!377664) (_1!5100 (tuple2!10181 lt!377507 zeroValueAfter!34))))))

(assert (=> d!107167 (= (contains!4212 lt!377664 (_1!5100 (tuple2!10181 lt!377507 zeroValueAfter!34))) lt!378064)))

(declare-fun b!833142 () Bool)

(declare-fun lt!378062 () Unit!28497)

(assert (=> b!833142 (= e!464753 lt!378062)))

(assert (=> b!833142 (= lt!378062 (lemmaContainsKeyImpliesGetValueByKeyDefined!311 (toList!4524 lt!377664) (_1!5100 (tuple2!10181 lt!377507 zeroValueAfter!34))))))

(assert (=> b!833142 (isDefined!312 (getValueByKey!415 (toList!4524 lt!377664) (_1!5100 (tuple2!10181 lt!377507 zeroValueAfter!34))))))

(declare-fun b!833143 () Bool)

(declare-fun Unit!28556 () Unit!28497)

(assert (=> b!833143 (= e!464753 Unit!28556)))

(declare-fun b!833144 () Bool)

(assert (=> b!833144 (= e!464752 (isDefined!312 (getValueByKey!415 (toList!4524 lt!377664) (_1!5100 (tuple2!10181 lt!377507 zeroValueAfter!34)))))))

(assert (= (and d!107167 c!90673) b!833142))

(assert (= (and d!107167 (not c!90673)) b!833143))

(assert (= (and d!107167 (not res!566697)) b!833144))

(declare-fun m!777989 () Bool)

(assert (=> d!107167 m!777989))

(declare-fun m!777991 () Bool)

(assert (=> b!833142 m!777991))

(assert (=> b!833142 m!776275))

(assert (=> b!833142 m!776275))

(declare-fun m!777993 () Bool)

(assert (=> b!833142 m!777993))

(assert (=> b!833144 m!776275))

(assert (=> b!833144 m!776275))

(assert (=> b!833144 m!777993))

(assert (=> d!106349 d!107167))

(declare-fun d!107169 () Bool)

(declare-fun c!90674 () Bool)

(assert (=> d!107169 (= c!90674 (and ((_ is Cons!16004) lt!377666) (= (_1!5100 (h!17134 lt!377666)) (_1!5100 (tuple2!10181 lt!377507 zeroValueAfter!34)))))))

(declare-fun e!464754 () Option!421)

(assert (=> d!107169 (= (getValueByKey!415 lt!377666 (_1!5100 (tuple2!10181 lt!377507 zeroValueAfter!34))) e!464754)))

(declare-fun b!833145 () Bool)

(assert (=> b!833145 (= e!464754 (Some!420 (_2!5100 (h!17134 lt!377666))))))

(declare-fun b!833148 () Bool)

(declare-fun e!464755 () Option!421)

(assert (=> b!833148 (= e!464755 None!419)))

(declare-fun b!833146 () Bool)

(assert (=> b!833146 (= e!464754 e!464755)))

(declare-fun c!90675 () Bool)

(assert (=> b!833146 (= c!90675 (and ((_ is Cons!16004) lt!377666) (not (= (_1!5100 (h!17134 lt!377666)) (_1!5100 (tuple2!10181 lt!377507 zeroValueAfter!34))))))))

(declare-fun b!833147 () Bool)

(assert (=> b!833147 (= e!464755 (getValueByKey!415 (t!22384 lt!377666) (_1!5100 (tuple2!10181 lt!377507 zeroValueAfter!34))))))

(assert (= (and d!107169 c!90674) b!833145))

(assert (= (and d!107169 (not c!90674)) b!833146))

(assert (= (and b!833146 c!90675) b!833147))

(assert (= (and b!833146 (not c!90675)) b!833148))

(declare-fun m!777995 () Bool)

(assert (=> b!833147 m!777995))

(assert (=> d!106349 d!107169))

(declare-fun d!107171 () Bool)

(assert (=> d!107171 (= (getValueByKey!415 lt!377666 (_1!5100 (tuple2!10181 lt!377507 zeroValueAfter!34))) (Some!420 (_2!5100 (tuple2!10181 lt!377507 zeroValueAfter!34))))))

(declare-fun lt!378065 () Unit!28497)

(assert (=> d!107171 (= lt!378065 (choose!1433 lt!377666 (_1!5100 (tuple2!10181 lt!377507 zeroValueAfter!34)) (_2!5100 (tuple2!10181 lt!377507 zeroValueAfter!34))))))

(declare-fun e!464756 () Bool)

(assert (=> d!107171 e!464756))

(declare-fun res!566698 () Bool)

(assert (=> d!107171 (=> (not res!566698) (not e!464756))))

(assert (=> d!107171 (= res!566698 (isStrictlySorted!438 lt!377666))))

(assert (=> d!107171 (= (lemmaContainsTupThenGetReturnValue!231 lt!377666 (_1!5100 (tuple2!10181 lt!377507 zeroValueAfter!34)) (_2!5100 (tuple2!10181 lt!377507 zeroValueAfter!34))) lt!378065)))

(declare-fun b!833149 () Bool)

(declare-fun res!566699 () Bool)

(assert (=> b!833149 (=> (not res!566699) (not e!464756))))

(assert (=> b!833149 (= res!566699 (containsKey!401 lt!377666 (_1!5100 (tuple2!10181 lt!377507 zeroValueAfter!34))))))

(declare-fun b!833150 () Bool)

(assert (=> b!833150 (= e!464756 (contains!4213 lt!377666 (tuple2!10181 (_1!5100 (tuple2!10181 lt!377507 zeroValueAfter!34)) (_2!5100 (tuple2!10181 lt!377507 zeroValueAfter!34)))))))

(assert (= (and d!107171 res!566698) b!833149))

(assert (= (and b!833149 res!566699) b!833150))

(assert (=> d!107171 m!776269))

(declare-fun m!777997 () Bool)

(assert (=> d!107171 m!777997))

(declare-fun m!777999 () Bool)

(assert (=> d!107171 m!777999))

(declare-fun m!778001 () Bool)

(assert (=> b!833149 m!778001))

(declare-fun m!778003 () Bool)

(assert (=> b!833150 m!778003))

(assert (=> d!106349 d!107171))

(declare-fun b!833151 () Bool)

(declare-fun e!464761 () List!16008)

(declare-fun call!36493 () List!16008)

(assert (=> b!833151 (= e!464761 call!36493)))

(declare-fun b!833152 () Bool)

(declare-fun res!566700 () Bool)

(declare-fun e!464758 () Bool)

(assert (=> b!833152 (=> (not res!566700) (not e!464758))))

(declare-fun lt!378066 () List!16008)

(assert (=> b!833152 (= res!566700 (containsKey!401 lt!378066 (_1!5100 (tuple2!10181 lt!377507 zeroValueAfter!34))))))

(declare-fun e!464760 () List!16008)

(declare-fun b!833153 () Bool)

(declare-fun c!90679 () Bool)

(declare-fun c!90677 () Bool)

(assert (=> b!833153 (= e!464760 (ite c!90677 (t!22384 (toList!4524 lt!377512)) (ite c!90679 (Cons!16004 (h!17134 (toList!4524 lt!377512)) (t!22384 (toList!4524 lt!377512))) Nil!16005)))))

(declare-fun b!833154 () Bool)

(declare-fun e!464757 () List!16008)

(assert (=> b!833154 (= e!464757 e!464761)))

(assert (=> b!833154 (= c!90677 (and ((_ is Cons!16004) (toList!4524 lt!377512)) (= (_1!5100 (h!17134 (toList!4524 lt!377512))) (_1!5100 (tuple2!10181 lt!377507 zeroValueAfter!34)))))))

(declare-fun b!833155 () Bool)

(assert (=> b!833155 (= e!464760 (insertStrictlySorted!269 (t!22384 (toList!4524 lt!377512)) (_1!5100 (tuple2!10181 lt!377507 zeroValueAfter!34)) (_2!5100 (tuple2!10181 lt!377507 zeroValueAfter!34))))))

(declare-fun bm!36489 () Bool)

(declare-fun call!36494 () List!16008)

(assert (=> bm!36489 (= call!36493 call!36494)))

(declare-fun b!833156 () Bool)

(assert (=> b!833156 (= e!464758 (contains!4213 lt!378066 (tuple2!10181 (_1!5100 (tuple2!10181 lt!377507 zeroValueAfter!34)) (_2!5100 (tuple2!10181 lt!377507 zeroValueAfter!34)))))))

(declare-fun b!833157 () Bool)

(declare-fun e!464759 () List!16008)

(declare-fun call!36492 () List!16008)

(assert (=> b!833157 (= e!464759 call!36492)))

(declare-fun b!833158 () Bool)

(assert (=> b!833158 (= c!90679 (and ((_ is Cons!16004) (toList!4524 lt!377512)) (bvsgt (_1!5100 (h!17134 (toList!4524 lt!377512))) (_1!5100 (tuple2!10181 lt!377507 zeroValueAfter!34)))))))

(assert (=> b!833158 (= e!464761 e!464759)))

(declare-fun d!107173 () Bool)

(assert (=> d!107173 e!464758))

(declare-fun res!566701 () Bool)

(assert (=> d!107173 (=> (not res!566701) (not e!464758))))

(assert (=> d!107173 (= res!566701 (isStrictlySorted!438 lt!378066))))

(assert (=> d!107173 (= lt!378066 e!464757)))

(declare-fun c!90678 () Bool)

(assert (=> d!107173 (= c!90678 (and ((_ is Cons!16004) (toList!4524 lt!377512)) (bvslt (_1!5100 (h!17134 (toList!4524 lt!377512))) (_1!5100 (tuple2!10181 lt!377507 zeroValueAfter!34)))))))

(assert (=> d!107173 (isStrictlySorted!438 (toList!4524 lt!377512))))

(assert (=> d!107173 (= (insertStrictlySorted!269 (toList!4524 lt!377512) (_1!5100 (tuple2!10181 lt!377507 zeroValueAfter!34)) (_2!5100 (tuple2!10181 lt!377507 zeroValueAfter!34))) lt!378066)))

(declare-fun b!833159 () Bool)

(assert (=> b!833159 (= e!464759 call!36492)))

(declare-fun bm!36490 () Bool)

(assert (=> bm!36490 (= call!36494 ($colon$colon!536 e!464760 (ite c!90678 (h!17134 (toList!4524 lt!377512)) (tuple2!10181 (_1!5100 (tuple2!10181 lt!377507 zeroValueAfter!34)) (_2!5100 (tuple2!10181 lt!377507 zeroValueAfter!34))))))))

(declare-fun c!90676 () Bool)

(assert (=> bm!36490 (= c!90676 c!90678)))

(declare-fun bm!36491 () Bool)

(assert (=> bm!36491 (= call!36492 call!36493)))

(declare-fun b!833160 () Bool)

(assert (=> b!833160 (= e!464757 call!36494)))

(assert (= (and d!107173 c!90678) b!833160))

(assert (= (and d!107173 (not c!90678)) b!833154))

(assert (= (and b!833154 c!90677) b!833151))

(assert (= (and b!833154 (not c!90677)) b!833158))

(assert (= (and b!833158 c!90679) b!833157))

(assert (= (and b!833158 (not c!90679)) b!833159))

(assert (= (or b!833157 b!833159) bm!36491))

(assert (= (or b!833151 bm!36491) bm!36489))

(assert (= (or b!833160 bm!36489) bm!36490))

(assert (= (and bm!36490 c!90676) b!833155))

(assert (= (and bm!36490 (not c!90676)) b!833153))

(assert (= (and d!107173 res!566701) b!833152))

(assert (= (and b!833152 res!566700) b!833156))

(declare-fun m!778005 () Bool)

(assert (=> b!833152 m!778005))

(declare-fun m!778007 () Bool)

(assert (=> b!833155 m!778007))

(declare-fun m!778009 () Bool)

(assert (=> d!107173 m!778009))

(declare-fun m!778011 () Bool)

(assert (=> d!107173 m!778011))

(declare-fun m!778013 () Bool)

(assert (=> b!833156 m!778013))

(declare-fun m!778015 () Bool)

(assert (=> bm!36490 m!778015))

(assert (=> d!106349 d!107173))

(declare-fun d!107175 () Bool)

(assert (=> d!107175 (= (apply!373 lt!377639 (select (arr!22317 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))) (get!11829 (getValueByKey!415 (toList!4524 lt!377639) (select (arr!22317 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))))

(declare-fun bs!23320 () Bool)

(assert (= bs!23320 d!107175))

(assert (=> bs!23320 m!776139))

(assert (=> bs!23320 m!777707))

(assert (=> bs!23320 m!777707))

(declare-fun m!778017 () Bool)

(assert (=> bs!23320 m!778017))

(assert (=> b!831969 d!107175))

(assert (=> b!831969 d!106727))

(declare-fun d!107177 () Bool)

(declare-fun lt!378067 () Bool)

(assert (=> d!107177 (= lt!378067 (select (content!390 (t!22384 (toList!4524 lt!377451))) lt!377372))))

(declare-fun e!464762 () Bool)

(assert (=> d!107177 (= lt!378067 e!464762)))

(declare-fun res!566702 () Bool)

(assert (=> d!107177 (=> (not res!566702) (not e!464762))))

(assert (=> d!107177 (= res!566702 ((_ is Cons!16004) (t!22384 (toList!4524 lt!377451))))))

(assert (=> d!107177 (= (contains!4213 (t!22384 (toList!4524 lt!377451)) lt!377372) lt!378067)))

(declare-fun b!833161 () Bool)

(declare-fun e!464763 () Bool)

(assert (=> b!833161 (= e!464762 e!464763)))

(declare-fun res!566703 () Bool)

(assert (=> b!833161 (=> res!566703 e!464763)))

(assert (=> b!833161 (= res!566703 (= (h!17134 (t!22384 (toList!4524 lt!377451))) lt!377372))))

(declare-fun b!833162 () Bool)

(assert (=> b!833162 (= e!464763 (contains!4213 (t!22384 (t!22384 (toList!4524 lt!377451))) lt!377372))))

(assert (= (and d!107177 res!566702) b!833161))

(assert (= (and b!833161 (not res!566703)) b!833162))

(assert (=> d!107177 m!777067))

(declare-fun m!778019 () Bool)

(assert (=> d!107177 m!778019))

(declare-fun m!778021 () Bool)

(assert (=> b!833162 m!778021))

(assert (=> b!831963 d!107177))

(declare-fun d!107179 () Bool)

(declare-fun e!464764 () Bool)

(assert (=> d!107179 e!464764))

(declare-fun res!566704 () Bool)

(assert (=> d!107179 (=> res!566704 e!464764)))

(declare-fun lt!378071 () Bool)

(assert (=> d!107179 (= res!566704 (not lt!378071))))

(declare-fun lt!378068 () Bool)

(assert (=> d!107179 (= lt!378071 lt!378068)))

(declare-fun lt!378070 () Unit!28497)

(declare-fun e!464765 () Unit!28497)

(assert (=> d!107179 (= lt!378070 e!464765)))

(declare-fun c!90680 () Bool)

(assert (=> d!107179 (= c!90680 lt!378068)))

(assert (=> d!107179 (= lt!378068 (containsKey!401 (toList!4524 lt!377754) (_1!5100 (tuple2!10181 lt!377438 lt!377443))))))

(assert (=> d!107179 (= (contains!4212 lt!377754 (_1!5100 (tuple2!10181 lt!377438 lt!377443))) lt!378071)))

(declare-fun b!833163 () Bool)

(declare-fun lt!378069 () Unit!28497)

(assert (=> b!833163 (= e!464765 lt!378069)))

(assert (=> b!833163 (= lt!378069 (lemmaContainsKeyImpliesGetValueByKeyDefined!311 (toList!4524 lt!377754) (_1!5100 (tuple2!10181 lt!377438 lt!377443))))))

(assert (=> b!833163 (isDefined!312 (getValueByKey!415 (toList!4524 lt!377754) (_1!5100 (tuple2!10181 lt!377438 lt!377443))))))

(declare-fun b!833164 () Bool)

(declare-fun Unit!28557 () Unit!28497)

(assert (=> b!833164 (= e!464765 Unit!28557)))

(declare-fun b!833165 () Bool)

(assert (=> b!833165 (= e!464764 (isDefined!312 (getValueByKey!415 (toList!4524 lt!377754) (_1!5100 (tuple2!10181 lt!377438 lt!377443)))))))

(assert (= (and d!107179 c!90680) b!833163))

(assert (= (and d!107179 (not c!90680)) b!833164))

(assert (= (and d!107179 (not res!566704)) b!833165))

(declare-fun m!778023 () Bool)

(assert (=> d!107179 m!778023))

(declare-fun m!778025 () Bool)

(assert (=> b!833163 m!778025))

(assert (=> b!833163 m!776587))

(assert (=> b!833163 m!776587))

(declare-fun m!778027 () Bool)

(assert (=> b!833163 m!778027))

(assert (=> b!833165 m!776587))

(assert (=> b!833165 m!776587))

(assert (=> b!833165 m!778027))

(assert (=> d!106443 d!107179))

(declare-fun c!90681 () Bool)

(declare-fun d!107181 () Bool)

(assert (=> d!107181 (= c!90681 (and ((_ is Cons!16004) lt!377756) (= (_1!5100 (h!17134 lt!377756)) (_1!5100 (tuple2!10181 lt!377438 lt!377443)))))))

(declare-fun e!464766 () Option!421)

(assert (=> d!107181 (= (getValueByKey!415 lt!377756 (_1!5100 (tuple2!10181 lt!377438 lt!377443))) e!464766)))

(declare-fun b!833166 () Bool)

(assert (=> b!833166 (= e!464766 (Some!420 (_2!5100 (h!17134 lt!377756))))))

(declare-fun b!833169 () Bool)

(declare-fun e!464767 () Option!421)

(assert (=> b!833169 (= e!464767 None!419)))

(declare-fun b!833167 () Bool)

(assert (=> b!833167 (= e!464766 e!464767)))

(declare-fun c!90682 () Bool)

(assert (=> b!833167 (= c!90682 (and ((_ is Cons!16004) lt!377756) (not (= (_1!5100 (h!17134 lt!377756)) (_1!5100 (tuple2!10181 lt!377438 lt!377443))))))))

(declare-fun b!833168 () Bool)

(assert (=> b!833168 (= e!464767 (getValueByKey!415 (t!22384 lt!377756) (_1!5100 (tuple2!10181 lt!377438 lt!377443))))))

(assert (= (and d!107181 c!90681) b!833166))

(assert (= (and d!107181 (not c!90681)) b!833167))

(assert (= (and b!833167 c!90682) b!833168))

(assert (= (and b!833167 (not c!90682)) b!833169))

(declare-fun m!778029 () Bool)

(assert (=> b!833168 m!778029))

(assert (=> d!106443 d!107181))

(declare-fun d!107183 () Bool)

(assert (=> d!107183 (= (getValueByKey!415 lt!377756 (_1!5100 (tuple2!10181 lt!377438 lt!377443))) (Some!420 (_2!5100 (tuple2!10181 lt!377438 lt!377443))))))

(declare-fun lt!378072 () Unit!28497)

(assert (=> d!107183 (= lt!378072 (choose!1433 lt!377756 (_1!5100 (tuple2!10181 lt!377438 lt!377443)) (_2!5100 (tuple2!10181 lt!377438 lt!377443))))))

(declare-fun e!464768 () Bool)

(assert (=> d!107183 e!464768))

(declare-fun res!566705 () Bool)

(assert (=> d!107183 (=> (not res!566705) (not e!464768))))

(assert (=> d!107183 (= res!566705 (isStrictlySorted!438 lt!377756))))

(assert (=> d!107183 (= (lemmaContainsTupThenGetReturnValue!231 lt!377756 (_1!5100 (tuple2!10181 lt!377438 lt!377443)) (_2!5100 (tuple2!10181 lt!377438 lt!377443))) lt!378072)))

(declare-fun b!833170 () Bool)

(declare-fun res!566706 () Bool)

(assert (=> b!833170 (=> (not res!566706) (not e!464768))))

(assert (=> b!833170 (= res!566706 (containsKey!401 lt!377756 (_1!5100 (tuple2!10181 lt!377438 lt!377443))))))

(declare-fun b!833171 () Bool)

(assert (=> b!833171 (= e!464768 (contains!4213 lt!377756 (tuple2!10181 (_1!5100 (tuple2!10181 lt!377438 lt!377443)) (_2!5100 (tuple2!10181 lt!377438 lt!377443)))))))

(assert (= (and d!107183 res!566705) b!833170))

(assert (= (and b!833170 res!566706) b!833171))

(assert (=> d!107183 m!776581))

(declare-fun m!778031 () Bool)

(assert (=> d!107183 m!778031))

(declare-fun m!778033 () Bool)

(assert (=> d!107183 m!778033))

(declare-fun m!778035 () Bool)

(assert (=> b!833170 m!778035))

(declare-fun m!778037 () Bool)

(assert (=> b!833171 m!778037))

(assert (=> d!106443 d!107183))

(declare-fun b!833172 () Bool)

(declare-fun e!464773 () List!16008)

(declare-fun call!36496 () List!16008)

(assert (=> b!833172 (= e!464773 call!36496)))

(declare-fun b!833173 () Bool)

(declare-fun res!566707 () Bool)

(declare-fun e!464770 () Bool)

(assert (=> b!833173 (=> (not res!566707) (not e!464770))))

(declare-fun lt!378073 () List!16008)

(assert (=> b!833173 (= res!566707 (containsKey!401 lt!378073 (_1!5100 (tuple2!10181 lt!377438 lt!377443))))))

(declare-fun c!90684 () Bool)

(declare-fun b!833174 () Bool)

(declare-fun e!464772 () List!16008)

(declare-fun c!90686 () Bool)

(assert (=> b!833174 (= e!464772 (ite c!90684 (t!22384 (toList!4524 lt!377441)) (ite c!90686 (Cons!16004 (h!17134 (toList!4524 lt!377441)) (t!22384 (toList!4524 lt!377441))) Nil!16005)))))

(declare-fun b!833175 () Bool)

(declare-fun e!464769 () List!16008)

(assert (=> b!833175 (= e!464769 e!464773)))

(assert (=> b!833175 (= c!90684 (and ((_ is Cons!16004) (toList!4524 lt!377441)) (= (_1!5100 (h!17134 (toList!4524 lt!377441))) (_1!5100 (tuple2!10181 lt!377438 lt!377443)))))))

(declare-fun b!833176 () Bool)

(assert (=> b!833176 (= e!464772 (insertStrictlySorted!269 (t!22384 (toList!4524 lt!377441)) (_1!5100 (tuple2!10181 lt!377438 lt!377443)) (_2!5100 (tuple2!10181 lt!377438 lt!377443))))))

(declare-fun bm!36492 () Bool)

(declare-fun call!36497 () List!16008)

(assert (=> bm!36492 (= call!36496 call!36497)))

(declare-fun b!833177 () Bool)

(assert (=> b!833177 (= e!464770 (contains!4213 lt!378073 (tuple2!10181 (_1!5100 (tuple2!10181 lt!377438 lt!377443)) (_2!5100 (tuple2!10181 lt!377438 lt!377443)))))))

(declare-fun b!833178 () Bool)

(declare-fun e!464771 () List!16008)

(declare-fun call!36495 () List!16008)

(assert (=> b!833178 (= e!464771 call!36495)))

(declare-fun b!833179 () Bool)

(assert (=> b!833179 (= c!90686 (and ((_ is Cons!16004) (toList!4524 lt!377441)) (bvsgt (_1!5100 (h!17134 (toList!4524 lt!377441))) (_1!5100 (tuple2!10181 lt!377438 lt!377443)))))))

(assert (=> b!833179 (= e!464773 e!464771)))

(declare-fun d!107185 () Bool)

(assert (=> d!107185 e!464770))

(declare-fun res!566708 () Bool)

(assert (=> d!107185 (=> (not res!566708) (not e!464770))))

(assert (=> d!107185 (= res!566708 (isStrictlySorted!438 lt!378073))))

(assert (=> d!107185 (= lt!378073 e!464769)))

(declare-fun c!90685 () Bool)

(assert (=> d!107185 (= c!90685 (and ((_ is Cons!16004) (toList!4524 lt!377441)) (bvslt (_1!5100 (h!17134 (toList!4524 lt!377441))) (_1!5100 (tuple2!10181 lt!377438 lt!377443)))))))

(assert (=> d!107185 (isStrictlySorted!438 (toList!4524 lt!377441))))

(assert (=> d!107185 (= (insertStrictlySorted!269 (toList!4524 lt!377441) (_1!5100 (tuple2!10181 lt!377438 lt!377443)) (_2!5100 (tuple2!10181 lt!377438 lt!377443))) lt!378073)))

(declare-fun b!833180 () Bool)

(assert (=> b!833180 (= e!464771 call!36495)))

(declare-fun bm!36493 () Bool)

(assert (=> bm!36493 (= call!36497 ($colon$colon!536 e!464772 (ite c!90685 (h!17134 (toList!4524 lt!377441)) (tuple2!10181 (_1!5100 (tuple2!10181 lt!377438 lt!377443)) (_2!5100 (tuple2!10181 lt!377438 lt!377443))))))))

(declare-fun c!90683 () Bool)

(assert (=> bm!36493 (= c!90683 c!90685)))

(declare-fun bm!36494 () Bool)

(assert (=> bm!36494 (= call!36495 call!36496)))

(declare-fun b!833181 () Bool)

(assert (=> b!833181 (= e!464769 call!36497)))

(assert (= (and d!107185 c!90685) b!833181))

(assert (= (and d!107185 (not c!90685)) b!833175))

(assert (= (and b!833175 c!90684) b!833172))

(assert (= (and b!833175 (not c!90684)) b!833179))

(assert (= (and b!833179 c!90686) b!833178))

(assert (= (and b!833179 (not c!90686)) b!833180))

(assert (= (or b!833178 b!833180) bm!36494))

(assert (= (or b!833172 bm!36494) bm!36492))

(assert (= (or b!833181 bm!36492) bm!36493))

(assert (= (and bm!36493 c!90683) b!833176))

(assert (= (and bm!36493 (not c!90683)) b!833174))

(assert (= (and d!107185 res!566708) b!833173))

(assert (= (and b!833173 res!566707) b!833177))

(declare-fun m!778039 () Bool)

(assert (=> b!833173 m!778039))

(declare-fun m!778041 () Bool)

(assert (=> b!833176 m!778041))

(declare-fun m!778043 () Bool)

(assert (=> d!107185 m!778043))

(declare-fun m!778045 () Bool)

(assert (=> d!107185 m!778045))

(declare-fun m!778047 () Bool)

(assert (=> b!833177 m!778047))

(declare-fun m!778049 () Bool)

(assert (=> bm!36493 m!778049))

(assert (=> d!106443 d!107185))

(declare-fun d!107187 () Bool)

(assert (=> d!107187 (arrayContainsKey!0 _keys!976 lt!377806 #b00000000000000000000000000000000)))

(declare-fun lt!378074 () Unit!28497)

(assert (=> d!107187 (= lt!378074 (choose!13 _keys!976 lt!377806 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (=> d!107187 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))

(assert (=> d!107187 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!976 lt!377806 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) lt!378074)))

(declare-fun bs!23321 () Bool)

(assert (= bs!23321 d!107187))

(assert (=> bs!23321 m!776747))

(declare-fun m!778051 () Bool)

(assert (=> bs!23321 m!778051))

(assert (=> b!832270 d!107187))

(declare-fun d!107189 () Bool)

(declare-fun res!566709 () Bool)

(declare-fun e!464774 () Bool)

(assert (=> d!107189 (=> res!566709 e!464774)))

(assert (=> d!107189 (= res!566709 (= (select (arr!22317 _keys!976) #b00000000000000000000000000000000) lt!377806))))

(assert (=> d!107189 (= (arrayContainsKey!0 _keys!976 lt!377806 #b00000000000000000000000000000000) e!464774)))

(declare-fun b!833182 () Bool)

(declare-fun e!464775 () Bool)

(assert (=> b!833182 (= e!464774 e!464775)))

(declare-fun res!566710 () Bool)

(assert (=> b!833182 (=> (not res!566710) (not e!464775))))

(assert (=> b!833182 (= res!566710 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!22738 _keys!976)))))

(declare-fun b!833183 () Bool)

(assert (=> b!833183 (= e!464775 (arrayContainsKey!0 _keys!976 lt!377806 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!107189 (not res!566709)) b!833182))

(assert (= (and b!833182 res!566710) b!833183))

(assert (=> d!107189 m!775697))

(declare-fun m!778053 () Bool)

(assert (=> b!833183 m!778053))

(assert (=> b!832270 d!107189))

(declare-fun b!833184 () Bool)

(declare-fun e!464778 () SeekEntryResult!8734)

(declare-fun lt!378076 () SeekEntryResult!8734)

(assert (=> b!833184 (= e!464778 (Found!8734 (index!37308 lt!378076)))))

(declare-fun b!833185 () Bool)

(declare-fun e!464776 () SeekEntryResult!8734)

(assert (=> b!833185 (= e!464776 (MissingZero!8734 (index!37308 lt!378076)))))

(declare-fun b!833186 () Bool)

(declare-fun c!90689 () Bool)

(declare-fun lt!378077 () (_ BitVec 64))

(assert (=> b!833186 (= c!90689 (= lt!378077 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!833186 (= e!464778 e!464776)))

(declare-fun b!833187 () Bool)

(declare-fun e!464777 () SeekEntryResult!8734)

(assert (=> b!833187 (= e!464777 Undefined!8734)))

(declare-fun d!107191 () Bool)

(declare-fun lt!378075 () SeekEntryResult!8734)

(assert (=> d!107191 (and (or ((_ is Undefined!8734) lt!378075) (not ((_ is Found!8734) lt!378075)) (and (bvsge (index!37307 lt!378075) #b00000000000000000000000000000000) (bvslt (index!37307 lt!378075) (size!22738 _keys!976)))) (or ((_ is Undefined!8734) lt!378075) ((_ is Found!8734) lt!378075) (not ((_ is MissingZero!8734) lt!378075)) (and (bvsge (index!37306 lt!378075) #b00000000000000000000000000000000) (bvslt (index!37306 lt!378075) (size!22738 _keys!976)))) (or ((_ is Undefined!8734) lt!378075) ((_ is Found!8734) lt!378075) ((_ is MissingZero!8734) lt!378075) (not ((_ is MissingVacant!8734) lt!378075)) (and (bvsge (index!37309 lt!378075) #b00000000000000000000000000000000) (bvslt (index!37309 lt!378075) (size!22738 _keys!976)))) (or ((_ is Undefined!8734) lt!378075) (ite ((_ is Found!8734) lt!378075) (= (select (arr!22317 _keys!976) (index!37307 lt!378075)) (select (arr!22317 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))) (ite ((_ is MissingZero!8734) lt!378075) (= (select (arr!22317 _keys!976) (index!37306 lt!378075)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!8734) lt!378075) (= (select (arr!22317 _keys!976) (index!37309 lt!378075)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!107191 (= lt!378075 e!464777)))

(declare-fun c!90687 () Bool)

(assert (=> d!107191 (= c!90687 (and ((_ is Intermediate!8734) lt!378076) (undefined!9546 lt!378076)))))

(assert (=> d!107191 (= lt!378076 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!22317 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) mask!1312) (select (arr!22317 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) _keys!976 mask!1312))))

(assert (=> d!107191 (validMask!0 mask!1312)))

(assert (=> d!107191 (= (seekEntryOrOpen!0 (select (arr!22317 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) _keys!976 mask!1312) lt!378075)))

(declare-fun b!833188 () Bool)

(assert (=> b!833188 (= e!464777 e!464778)))

(assert (=> b!833188 (= lt!378077 (select (arr!22317 _keys!976) (index!37308 lt!378076)))))

(declare-fun c!90688 () Bool)

(assert (=> b!833188 (= c!90688 (= lt!378077 (select (arr!22317 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!833189 () Bool)

(assert (=> b!833189 (= e!464776 (seekKeyOrZeroReturnVacant!0 (x!70122 lt!378076) (index!37308 lt!378076) (index!37308 lt!378076) (select (arr!22317 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) _keys!976 mask!1312))))

(assert (= (and d!107191 c!90687) b!833187))

(assert (= (and d!107191 (not c!90687)) b!833188))

(assert (= (and b!833188 c!90688) b!833184))

(assert (= (and b!833188 (not c!90688)) b!833186))

(assert (= (and b!833186 c!90689) b!833185))

(assert (= (and b!833186 (not c!90689)) b!833189))

(declare-fun m!778055 () Bool)

(assert (=> d!107191 m!778055))

(assert (=> d!107191 m!775625))

(declare-fun m!778057 () Bool)

(assert (=> d!107191 m!778057))

(declare-fun m!778059 () Bool)

(assert (=> d!107191 m!778059))

(assert (=> d!107191 m!776139))

(declare-fun m!778061 () Bool)

(assert (=> d!107191 m!778061))

(assert (=> d!107191 m!776139))

(assert (=> d!107191 m!778059))

(declare-fun m!778063 () Bool)

(assert (=> d!107191 m!778063))

(declare-fun m!778065 () Bool)

(assert (=> b!833188 m!778065))

(assert (=> b!833189 m!776139))

(declare-fun m!778067 () Bool)

(assert (=> b!833189 m!778067))

(assert (=> b!832270 d!107191))

(declare-fun d!107193 () Bool)

(assert (=> d!107193 (= (get!11829 (getValueByKey!415 (toList!4524 lt!377510) lt!377515)) (v!10097 (getValueByKey!415 (toList!4524 lt!377510) lt!377515)))))

(assert (=> d!106339 d!107193))

(declare-fun d!107195 () Bool)

(declare-fun c!90690 () Bool)

(assert (=> d!107195 (= c!90690 (and ((_ is Cons!16004) (toList!4524 lt!377510)) (= (_1!5100 (h!17134 (toList!4524 lt!377510))) lt!377515)))))

(declare-fun e!464779 () Option!421)

(assert (=> d!107195 (= (getValueByKey!415 (toList!4524 lt!377510) lt!377515) e!464779)))

(declare-fun b!833190 () Bool)

(assert (=> b!833190 (= e!464779 (Some!420 (_2!5100 (h!17134 (toList!4524 lt!377510)))))))

(declare-fun b!833193 () Bool)

(declare-fun e!464780 () Option!421)

(assert (=> b!833193 (= e!464780 None!419)))

(declare-fun b!833191 () Bool)

(assert (=> b!833191 (= e!464779 e!464780)))

(declare-fun c!90691 () Bool)

(assert (=> b!833191 (= c!90691 (and ((_ is Cons!16004) (toList!4524 lt!377510)) (not (= (_1!5100 (h!17134 (toList!4524 lt!377510))) lt!377515))))))

(declare-fun b!833192 () Bool)

(assert (=> b!833192 (= e!464780 (getValueByKey!415 (t!22384 (toList!4524 lt!377510)) lt!377515))))

(assert (= (and d!107195 c!90690) b!833190))

(assert (= (and d!107195 (not c!90690)) b!833191))

(assert (= (and b!833191 c!90691) b!833192))

(assert (= (and b!833191 (not c!90691)) b!833193))

(declare-fun m!778069 () Bool)

(assert (=> b!833192 m!778069))

(assert (=> d!106339 d!107195))

(declare-fun d!107197 () Bool)

(declare-fun c!90692 () Bool)

(assert (=> d!107197 (= c!90692 (and ((_ is Cons!16004) (t!22384 lt!377405)) (= (_1!5100 (h!17134 (t!22384 lt!377405))) (_1!5100 lt!377371))))))

(declare-fun e!464781 () Option!421)

(assert (=> d!107197 (= (getValueByKey!415 (t!22384 lt!377405) (_1!5100 lt!377371)) e!464781)))

(declare-fun b!833194 () Bool)

(assert (=> b!833194 (= e!464781 (Some!420 (_2!5100 (h!17134 (t!22384 lt!377405)))))))

(declare-fun b!833197 () Bool)

(declare-fun e!464782 () Option!421)

(assert (=> b!833197 (= e!464782 None!419)))

(declare-fun b!833195 () Bool)

(assert (=> b!833195 (= e!464781 e!464782)))

(declare-fun c!90693 () Bool)

(assert (=> b!833195 (= c!90693 (and ((_ is Cons!16004) (t!22384 lt!377405)) (not (= (_1!5100 (h!17134 (t!22384 lt!377405))) (_1!5100 lt!377371)))))))

(declare-fun b!833196 () Bool)

(assert (=> b!833196 (= e!464782 (getValueByKey!415 (t!22384 (t!22384 lt!377405)) (_1!5100 lt!377371)))))

(assert (= (and d!107197 c!90692) b!833194))

(assert (= (and d!107197 (not c!90692)) b!833195))

(assert (= (and b!833195 c!90693) b!833196))

(assert (= (and b!833195 (not c!90693)) b!833197))

(declare-fun m!778071 () Bool)

(assert (=> b!833196 m!778071))

(assert (=> b!832222 d!107197))

(declare-fun c!90694 () Bool)

(declare-fun d!107199 () Bool)

(assert (=> d!107199 (= c!90694 (and ((_ is Cons!16004) (toList!4524 lt!377754)) (= (_1!5100 (h!17134 (toList!4524 lt!377754))) (_1!5100 (tuple2!10181 lt!377438 lt!377443)))))))

(declare-fun e!464783 () Option!421)

(assert (=> d!107199 (= (getValueByKey!415 (toList!4524 lt!377754) (_1!5100 (tuple2!10181 lt!377438 lt!377443))) e!464783)))

(declare-fun b!833198 () Bool)

(assert (=> b!833198 (= e!464783 (Some!420 (_2!5100 (h!17134 (toList!4524 lt!377754)))))))

(declare-fun b!833201 () Bool)

(declare-fun e!464784 () Option!421)

(assert (=> b!833201 (= e!464784 None!419)))

(declare-fun b!833199 () Bool)

(assert (=> b!833199 (= e!464783 e!464784)))

(declare-fun c!90695 () Bool)

(assert (=> b!833199 (= c!90695 (and ((_ is Cons!16004) (toList!4524 lt!377754)) (not (= (_1!5100 (h!17134 (toList!4524 lt!377754))) (_1!5100 (tuple2!10181 lt!377438 lt!377443))))))))

(declare-fun b!833200 () Bool)

(assert (=> b!833200 (= e!464784 (getValueByKey!415 (t!22384 (toList!4524 lt!377754)) (_1!5100 (tuple2!10181 lt!377438 lt!377443))))))

(assert (= (and d!107199 c!90694) b!833198))

(assert (= (and d!107199 (not c!90694)) b!833199))

(assert (= (and b!833199 c!90695) b!833200))

(assert (= (and b!833199 (not c!90695)) b!833201))

(declare-fun m!778073 () Bool)

(assert (=> b!833200 m!778073))

(assert (=> b!832192 d!107199))

(assert (=> d!106395 d!106393))

(declare-fun d!107201 () Bool)

(assert (=> d!107201 (= (getValueByKey!415 lt!377539 (_1!5100 lt!377371)) (Some!420 (_2!5100 lt!377371)))))

(assert (=> d!107201 true))

(declare-fun _$22!583 () Unit!28497)

(assert (=> d!107201 (= (choose!1433 lt!377539 (_1!5100 lt!377371) (_2!5100 lt!377371)) _$22!583)))

(declare-fun bs!23322 () Bool)

(assert (= bs!23322 d!107201))

(assert (=> bs!23322 m!775893))

(assert (=> d!106395 d!107201))

(declare-fun d!107203 () Bool)

(declare-fun res!566711 () Bool)

(declare-fun e!464785 () Bool)

(assert (=> d!107203 (=> res!566711 e!464785)))

(assert (=> d!107203 (= res!566711 (or ((_ is Nil!16005) lt!377539) ((_ is Nil!16005) (t!22384 lt!377539))))))

(assert (=> d!107203 (= (isStrictlySorted!438 lt!377539) e!464785)))

(declare-fun b!833202 () Bool)

(declare-fun e!464786 () Bool)

(assert (=> b!833202 (= e!464785 e!464786)))

(declare-fun res!566712 () Bool)

(assert (=> b!833202 (=> (not res!566712) (not e!464786))))

(assert (=> b!833202 (= res!566712 (bvslt (_1!5100 (h!17134 lt!377539)) (_1!5100 (h!17134 (t!22384 lt!377539)))))))

(declare-fun b!833203 () Bool)

(assert (=> b!833203 (= e!464786 (isStrictlySorted!438 (t!22384 lt!377539)))))

(assert (= (and d!107203 (not res!566711)) b!833202))

(assert (= (and b!833202 res!566712) b!833203))

(declare-fun m!778075 () Bool)

(assert (=> b!833203 m!778075))

(assert (=> d!106395 d!107203))

(assert (=> b!831961 d!107037))

(assert (=> b!831961 d!107039))

(declare-fun d!107205 () Bool)

(assert (=> d!107205 (= (get!11829 (getValueByKey!415 (toList!4524 lt!377545) lt!377558)) (v!10097 (getValueByKey!415 (toList!4524 lt!377545) lt!377558)))))

(assert (=> d!106263 d!107205))

(declare-fun d!107207 () Bool)

(declare-fun c!90696 () Bool)

(assert (=> d!107207 (= c!90696 (and ((_ is Cons!16004) (toList!4524 lt!377545)) (= (_1!5100 (h!17134 (toList!4524 lt!377545))) lt!377558)))))

(declare-fun e!464787 () Option!421)

(assert (=> d!107207 (= (getValueByKey!415 (toList!4524 lt!377545) lt!377558) e!464787)))

(declare-fun b!833204 () Bool)

(assert (=> b!833204 (= e!464787 (Some!420 (_2!5100 (h!17134 (toList!4524 lt!377545)))))))

(declare-fun b!833207 () Bool)

(declare-fun e!464788 () Option!421)

(assert (=> b!833207 (= e!464788 None!419)))

(declare-fun b!833205 () Bool)

(assert (=> b!833205 (= e!464787 e!464788)))

(declare-fun c!90697 () Bool)

(assert (=> b!833205 (= c!90697 (and ((_ is Cons!16004) (toList!4524 lt!377545)) (not (= (_1!5100 (h!17134 (toList!4524 lt!377545))) lt!377558))))))

(declare-fun b!833206 () Bool)

(assert (=> b!833206 (= e!464788 (getValueByKey!415 (t!22384 (toList!4524 lt!377545)) lt!377558))))

(assert (= (and d!107207 c!90696) b!833204))

(assert (= (and d!107207 (not c!90696)) b!833205))

(assert (= (and b!833205 c!90697) b!833206))

(assert (= (and b!833205 (not c!90697)) b!833207))

(declare-fun m!778077 () Bool)

(assert (=> b!833206 m!778077))

(assert (=> d!106263 d!107207))

(declare-fun d!107209 () Bool)

(declare-fun res!566713 () Bool)

(declare-fun e!464789 () Bool)

(assert (=> d!107209 (=> res!566713 e!464789)))

(assert (=> d!107209 (= res!566713 (and ((_ is Cons!16004) (toList!4524 lt!377508)) (= (_1!5100 (h!17134 (toList!4524 lt!377508))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!107209 (= (containsKey!401 (toList!4524 lt!377508) #b0000000000000000000000000000000000000000000000000000000000000000) e!464789)))

(declare-fun b!833208 () Bool)

(declare-fun e!464790 () Bool)

(assert (=> b!833208 (= e!464789 e!464790)))

(declare-fun res!566714 () Bool)

(assert (=> b!833208 (=> (not res!566714) (not e!464790))))

(assert (=> b!833208 (= res!566714 (and (or (not ((_ is Cons!16004) (toList!4524 lt!377508))) (bvsle (_1!5100 (h!17134 (toList!4524 lt!377508))) #b0000000000000000000000000000000000000000000000000000000000000000)) ((_ is Cons!16004) (toList!4524 lt!377508)) (bvslt (_1!5100 (h!17134 (toList!4524 lt!377508))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!833209 () Bool)

(assert (=> b!833209 (= e!464790 (containsKey!401 (t!22384 (toList!4524 lt!377508)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!107209 (not res!566713)) b!833208))

(assert (= (and b!833208 res!566714) b!833209))

(declare-fun m!778079 () Bool)

(assert (=> b!833209 m!778079))

(assert (=> d!106481 d!107209))

(declare-fun d!107211 () Bool)

(assert (=> d!107211 (= ($colon$colon!536 e!463998 (ite c!90309 (h!17134 (toList!4524 lt!377373)) (tuple2!10181 (_1!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)) (_2!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))) (Cons!16004 (ite c!90309 (h!17134 (toList!4524 lt!377373)) (tuple2!10181 (_1!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)) (_2!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))) e!463998))))

(assert (=> bm!36401 d!107211))

(assert (=> b!831896 d!107047))

(assert (=> b!831896 d!107049))

(declare-fun d!107213 () Bool)

(declare-fun e!464791 () Bool)

(assert (=> d!107213 e!464791))

(declare-fun res!566715 () Bool)

(assert (=> d!107213 (=> res!566715 e!464791)))

(declare-fun lt!378081 () Bool)

(assert (=> d!107213 (= res!566715 (not lt!378081))))

(declare-fun lt!378078 () Bool)

(assert (=> d!107213 (= lt!378081 lt!378078)))

(declare-fun lt!378080 () Unit!28497)

(declare-fun e!464792 () Unit!28497)

(assert (=> d!107213 (= lt!378080 e!464792)))

(declare-fun c!90698 () Bool)

(assert (=> d!107213 (= c!90698 lt!378078)))

(assert (=> d!107213 (= lt!378078 (containsKey!401 (toList!4524 lt!377647) (_1!5100 (tuple2!10181 lt!377521 minValue!754))))))

(assert (=> d!107213 (= (contains!4212 lt!377647 (_1!5100 (tuple2!10181 lt!377521 minValue!754))) lt!378081)))

(declare-fun b!833210 () Bool)

(declare-fun lt!378079 () Unit!28497)

(assert (=> b!833210 (= e!464792 lt!378079)))

(assert (=> b!833210 (= lt!378079 (lemmaContainsKeyImpliesGetValueByKeyDefined!311 (toList!4524 lt!377647) (_1!5100 (tuple2!10181 lt!377521 minValue!754))))))

(assert (=> b!833210 (isDefined!312 (getValueByKey!415 (toList!4524 lt!377647) (_1!5100 (tuple2!10181 lt!377521 minValue!754))))))

(declare-fun b!833211 () Bool)

(declare-fun Unit!28558 () Unit!28497)

(assert (=> b!833211 (= e!464792 Unit!28558)))

(declare-fun b!833212 () Bool)

(assert (=> b!833212 (= e!464791 (isDefined!312 (getValueByKey!415 (toList!4524 lt!377647) (_1!5100 (tuple2!10181 lt!377521 minValue!754)))))))

(assert (= (and d!107213 c!90698) b!833210))

(assert (= (and d!107213 (not c!90698)) b!833211))

(assert (= (and d!107213 (not res!566715)) b!833212))

(declare-fun m!778081 () Bool)

(assert (=> d!107213 m!778081))

(declare-fun m!778083 () Bool)

(assert (=> b!833210 m!778083))

(assert (=> b!833210 m!776211))

(assert (=> b!833210 m!776211))

(declare-fun m!778085 () Bool)

(assert (=> b!833210 m!778085))

(assert (=> b!833212 m!776211))

(assert (=> b!833212 m!776211))

(assert (=> b!833212 m!778085))

(assert (=> d!106331 d!107213))

(declare-fun c!90699 () Bool)

(declare-fun d!107215 () Bool)

(assert (=> d!107215 (= c!90699 (and ((_ is Cons!16004) lt!377649) (= (_1!5100 (h!17134 lt!377649)) (_1!5100 (tuple2!10181 lt!377521 minValue!754)))))))

(declare-fun e!464793 () Option!421)

(assert (=> d!107215 (= (getValueByKey!415 lt!377649 (_1!5100 (tuple2!10181 lt!377521 minValue!754))) e!464793)))

(declare-fun b!833213 () Bool)

(assert (=> b!833213 (= e!464793 (Some!420 (_2!5100 (h!17134 lt!377649))))))

(declare-fun b!833216 () Bool)

(declare-fun e!464794 () Option!421)

(assert (=> b!833216 (= e!464794 None!419)))

(declare-fun b!833214 () Bool)

(assert (=> b!833214 (= e!464793 e!464794)))

(declare-fun c!90700 () Bool)

(assert (=> b!833214 (= c!90700 (and ((_ is Cons!16004) lt!377649) (not (= (_1!5100 (h!17134 lt!377649)) (_1!5100 (tuple2!10181 lt!377521 minValue!754))))))))

(declare-fun b!833215 () Bool)

(assert (=> b!833215 (= e!464794 (getValueByKey!415 (t!22384 lt!377649) (_1!5100 (tuple2!10181 lt!377521 minValue!754))))))

(assert (= (and d!107215 c!90699) b!833213))

(assert (= (and d!107215 (not c!90699)) b!833214))

(assert (= (and b!833214 c!90700) b!833215))

(assert (= (and b!833214 (not c!90700)) b!833216))

(declare-fun m!778087 () Bool)

(assert (=> b!833215 m!778087))

(assert (=> d!106331 d!107215))

(declare-fun d!107217 () Bool)

(assert (=> d!107217 (= (getValueByKey!415 lt!377649 (_1!5100 (tuple2!10181 lt!377521 minValue!754))) (Some!420 (_2!5100 (tuple2!10181 lt!377521 minValue!754))))))

(declare-fun lt!378082 () Unit!28497)

(assert (=> d!107217 (= lt!378082 (choose!1433 lt!377649 (_1!5100 (tuple2!10181 lt!377521 minValue!754)) (_2!5100 (tuple2!10181 lt!377521 minValue!754))))))

(declare-fun e!464795 () Bool)

(assert (=> d!107217 e!464795))

(declare-fun res!566716 () Bool)

(assert (=> d!107217 (=> (not res!566716) (not e!464795))))

(assert (=> d!107217 (= res!566716 (isStrictlySorted!438 lt!377649))))

(assert (=> d!107217 (= (lemmaContainsTupThenGetReturnValue!231 lt!377649 (_1!5100 (tuple2!10181 lt!377521 minValue!754)) (_2!5100 (tuple2!10181 lt!377521 minValue!754))) lt!378082)))

(declare-fun b!833217 () Bool)

(declare-fun res!566717 () Bool)

(assert (=> b!833217 (=> (not res!566717) (not e!464795))))

(assert (=> b!833217 (= res!566717 (containsKey!401 lt!377649 (_1!5100 (tuple2!10181 lt!377521 minValue!754))))))

(declare-fun b!833218 () Bool)

(assert (=> b!833218 (= e!464795 (contains!4213 lt!377649 (tuple2!10181 (_1!5100 (tuple2!10181 lt!377521 minValue!754)) (_2!5100 (tuple2!10181 lt!377521 minValue!754)))))))

(assert (= (and d!107217 res!566716) b!833217))

(assert (= (and b!833217 res!566717) b!833218))

(assert (=> d!107217 m!776205))

(declare-fun m!778089 () Bool)

(assert (=> d!107217 m!778089))

(declare-fun m!778091 () Bool)

(assert (=> d!107217 m!778091))

(declare-fun m!778093 () Bool)

(assert (=> b!833217 m!778093))

(declare-fun m!778095 () Bool)

(assert (=> b!833218 m!778095))

(assert (=> d!106331 d!107217))

(declare-fun b!833219 () Bool)

(declare-fun e!464800 () List!16008)

(declare-fun call!36499 () List!16008)

(assert (=> b!833219 (= e!464800 call!36499)))

(declare-fun b!833220 () Bool)

(declare-fun res!566718 () Bool)

(declare-fun e!464797 () Bool)

(assert (=> b!833220 (=> (not res!566718) (not e!464797))))

(declare-fun lt!378083 () List!16008)

(assert (=> b!833220 (= res!566718 (containsKey!401 lt!378083 (_1!5100 (tuple2!10181 lt!377521 minValue!754))))))

(declare-fun c!90704 () Bool)

(declare-fun b!833221 () Bool)

(declare-fun e!464799 () List!16008)

(declare-fun c!90702 () Bool)

(assert (=> b!833221 (= e!464799 (ite c!90702 (t!22384 (toList!4524 lt!377511)) (ite c!90704 (Cons!16004 (h!17134 (toList!4524 lt!377511)) (t!22384 (toList!4524 lt!377511))) Nil!16005)))))

(declare-fun b!833222 () Bool)

(declare-fun e!464796 () List!16008)

(assert (=> b!833222 (= e!464796 e!464800)))

(assert (=> b!833222 (= c!90702 (and ((_ is Cons!16004) (toList!4524 lt!377511)) (= (_1!5100 (h!17134 (toList!4524 lt!377511))) (_1!5100 (tuple2!10181 lt!377521 minValue!754)))))))

(declare-fun b!833223 () Bool)

(assert (=> b!833223 (= e!464799 (insertStrictlySorted!269 (t!22384 (toList!4524 lt!377511)) (_1!5100 (tuple2!10181 lt!377521 minValue!754)) (_2!5100 (tuple2!10181 lt!377521 minValue!754))))))

(declare-fun bm!36495 () Bool)

(declare-fun call!36500 () List!16008)

(assert (=> bm!36495 (= call!36499 call!36500)))

(declare-fun b!833224 () Bool)

(assert (=> b!833224 (= e!464797 (contains!4213 lt!378083 (tuple2!10181 (_1!5100 (tuple2!10181 lt!377521 minValue!754)) (_2!5100 (tuple2!10181 lt!377521 minValue!754)))))))

(declare-fun b!833225 () Bool)

(declare-fun e!464798 () List!16008)

(declare-fun call!36498 () List!16008)

(assert (=> b!833225 (= e!464798 call!36498)))

(declare-fun b!833226 () Bool)

(assert (=> b!833226 (= c!90704 (and ((_ is Cons!16004) (toList!4524 lt!377511)) (bvsgt (_1!5100 (h!17134 (toList!4524 lt!377511))) (_1!5100 (tuple2!10181 lt!377521 minValue!754)))))))

(assert (=> b!833226 (= e!464800 e!464798)))

(declare-fun d!107219 () Bool)

(assert (=> d!107219 e!464797))

(declare-fun res!566719 () Bool)

(assert (=> d!107219 (=> (not res!566719) (not e!464797))))

(assert (=> d!107219 (= res!566719 (isStrictlySorted!438 lt!378083))))

(assert (=> d!107219 (= lt!378083 e!464796)))

(declare-fun c!90703 () Bool)

(assert (=> d!107219 (= c!90703 (and ((_ is Cons!16004) (toList!4524 lt!377511)) (bvslt (_1!5100 (h!17134 (toList!4524 lt!377511))) (_1!5100 (tuple2!10181 lt!377521 minValue!754)))))))

(assert (=> d!107219 (isStrictlySorted!438 (toList!4524 lt!377511))))

(assert (=> d!107219 (= (insertStrictlySorted!269 (toList!4524 lt!377511) (_1!5100 (tuple2!10181 lt!377521 minValue!754)) (_2!5100 (tuple2!10181 lt!377521 minValue!754))) lt!378083)))

(declare-fun b!833227 () Bool)

(assert (=> b!833227 (= e!464798 call!36498)))

(declare-fun bm!36496 () Bool)

(assert (=> bm!36496 (= call!36500 ($colon$colon!536 e!464799 (ite c!90703 (h!17134 (toList!4524 lt!377511)) (tuple2!10181 (_1!5100 (tuple2!10181 lt!377521 minValue!754)) (_2!5100 (tuple2!10181 lt!377521 minValue!754))))))))

(declare-fun c!90701 () Bool)

(assert (=> bm!36496 (= c!90701 c!90703)))

(declare-fun bm!36497 () Bool)

(assert (=> bm!36497 (= call!36498 call!36499)))

(declare-fun b!833228 () Bool)

(assert (=> b!833228 (= e!464796 call!36500)))

(assert (= (and d!107219 c!90703) b!833228))

(assert (= (and d!107219 (not c!90703)) b!833222))

(assert (= (and b!833222 c!90702) b!833219))

(assert (= (and b!833222 (not c!90702)) b!833226))

(assert (= (and b!833226 c!90704) b!833225))

(assert (= (and b!833226 (not c!90704)) b!833227))

(assert (= (or b!833225 b!833227) bm!36497))

(assert (= (or b!833219 bm!36497) bm!36495))

(assert (= (or b!833228 bm!36495) bm!36496))

(assert (= (and bm!36496 c!90701) b!833223))

(assert (= (and bm!36496 (not c!90701)) b!833221))

(assert (= (and d!107219 res!566719) b!833220))

(assert (= (and b!833220 res!566718) b!833224))

(declare-fun m!778097 () Bool)

(assert (=> b!833220 m!778097))

(declare-fun m!778099 () Bool)

(assert (=> b!833223 m!778099))

(declare-fun m!778101 () Bool)

(assert (=> d!107219 m!778101))

(declare-fun m!778103 () Bool)

(assert (=> d!107219 m!778103))

(declare-fun m!778105 () Bool)

(assert (=> b!833224 m!778105))

(declare-fun m!778107 () Bool)

(assert (=> bm!36496 m!778107))

(assert (=> d!106331 d!107219))

(declare-fun d!107221 () Bool)

(declare-fun lt!378084 () Bool)

(assert (=> d!107221 (= lt!378084 (select (content!390 (toList!4524 lt!377603)) (ite (or c!90277 c!90279) (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34) (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))

(declare-fun e!464801 () Bool)

(assert (=> d!107221 (= lt!378084 e!464801)))

(declare-fun res!566720 () Bool)

(assert (=> d!107221 (=> (not res!566720) (not e!464801))))

(assert (=> d!107221 (= res!566720 ((_ is Cons!16004) (toList!4524 lt!377603)))))

(assert (=> d!107221 (= (contains!4213 (toList!4524 lt!377603) (ite (or c!90277 c!90279) (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34) (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))) lt!378084)))

(declare-fun b!833229 () Bool)

(declare-fun e!464802 () Bool)

(assert (=> b!833229 (= e!464801 e!464802)))

(declare-fun res!566721 () Bool)

(assert (=> b!833229 (=> res!566721 e!464802)))

(assert (=> b!833229 (= res!566721 (= (h!17134 (toList!4524 lt!377603)) (ite (or c!90277 c!90279) (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34) (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))

(declare-fun b!833230 () Bool)

(assert (=> b!833230 (= e!464802 (contains!4213 (t!22384 (toList!4524 lt!377603)) (ite (or c!90277 c!90279) (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34) (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))

(assert (= (and d!107221 res!566720) b!833229))

(assert (= (and b!833229 (not res!566721)) b!833230))

(declare-fun m!778109 () Bool)

(assert (=> d!107221 m!778109))

(declare-fun m!778111 () Bool)

(assert (=> d!107221 m!778111))

(declare-fun m!778113 () Bool)

(assert (=> b!833230 m!778113))

(assert (=> b!831893 d!107221))

(declare-fun d!107223 () Bool)

(assert (=> d!107223 (isDefined!312 (getValueByKey!415 (toList!4524 lt!377403) (_1!5100 lt!377371)))))

(declare-fun lt!378085 () Unit!28497)

(assert (=> d!107223 (= lt!378085 (choose!1435 (toList!4524 lt!377403) (_1!5100 lt!377371)))))

(declare-fun e!464803 () Bool)

(assert (=> d!107223 e!464803))

(declare-fun res!566722 () Bool)

(assert (=> d!107223 (=> (not res!566722) (not e!464803))))

(assert (=> d!107223 (= res!566722 (isStrictlySorted!438 (toList!4524 lt!377403)))))

(assert (=> d!107223 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!311 (toList!4524 lt!377403) (_1!5100 lt!377371)) lt!378085)))

(declare-fun b!833231 () Bool)

(assert (=> b!833231 (= e!464803 (containsKey!401 (toList!4524 lt!377403) (_1!5100 lt!377371)))))

(assert (= (and d!107223 res!566722) b!833231))

(assert (=> d!107223 m!775713))

(assert (=> d!107223 m!775713))

(assert (=> d!107223 m!776649))

(declare-fun m!778115 () Bool)

(assert (=> d!107223 m!778115))

(declare-fun m!778117 () Bool)

(assert (=> d!107223 m!778117))

(assert (=> b!833231 m!776645))

(assert (=> b!832217 d!107223))

(assert (=> b!832217 d!106643))

(assert (=> b!832217 d!106317))

(declare-fun d!107225 () Bool)

(declare-fun c!90705 () Bool)

(assert (=> d!107225 (= c!90705 (and ((_ is Cons!16004) (t!22384 lt!377531)) (= (_1!5100 (h!17134 (t!22384 lt!377531))) (_1!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))))))

(declare-fun e!464804 () Option!421)

(assert (=> d!107225 (= (getValueByKey!415 (t!22384 lt!377531) (_1!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))) e!464804)))

(declare-fun b!833232 () Bool)

(assert (=> b!833232 (= e!464804 (Some!420 (_2!5100 (h!17134 (t!22384 lt!377531)))))))

(declare-fun b!833235 () Bool)

(declare-fun e!464805 () Option!421)

(assert (=> b!833235 (= e!464805 None!419)))

(declare-fun b!833233 () Bool)

(assert (=> b!833233 (= e!464804 e!464805)))

(declare-fun c!90706 () Bool)

(assert (=> b!833233 (= c!90706 (and ((_ is Cons!16004) (t!22384 lt!377531)) (not (= (_1!5100 (h!17134 (t!22384 lt!377531))) (_1!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))))))

(declare-fun b!833234 () Bool)

(assert (=> b!833234 (= e!464805 (getValueByKey!415 (t!22384 (t!22384 lt!377531)) (_1!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))))

(assert (= (and d!107225 c!90705) b!833232))

(assert (= (and d!107225 (not c!90705)) b!833233))

(assert (= (and b!833233 c!90706) b!833234))

(assert (= (and b!833233 (not c!90706)) b!833235))

(declare-fun m!778119 () Bool)

(assert (=> b!833234 m!778119))

(assert (=> b!832109 d!107225))

(declare-fun d!107227 () Bool)

(assert (=> d!107227 (isDefined!312 (getValueByKey!415 (toList!4524 lt!377508) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!378086 () Unit!28497)

(assert (=> d!107227 (= lt!378086 (choose!1435 (toList!4524 lt!377508) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!464806 () Bool)

(assert (=> d!107227 e!464806))

(declare-fun res!566723 () Bool)

(assert (=> d!107227 (=> (not res!566723) (not e!464806))))

(assert (=> d!107227 (= res!566723 (isStrictlySorted!438 (toList!4524 lt!377508)))))

(assert (=> d!107227 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!311 (toList!4524 lt!377508) #b1000000000000000000000000000000000000000000000000000000000000000) lt!378086)))

(declare-fun b!833236 () Bool)

(assert (=> b!833236 (= e!464806 (containsKey!401 (toList!4524 lt!377508) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!107227 res!566723) b!833236))

(assert (=> d!107227 m!776297))

(assert (=> d!107227 m!776297))

(assert (=> d!107227 m!776299))

(declare-fun m!778121 () Bool)

(assert (=> d!107227 m!778121))

(assert (=> d!107227 m!776845))

(assert (=> b!833236 m!776293))

(assert (=> b!832007 d!107227))

(assert (=> b!832007 d!106629))

(assert (=> b!832007 d!106631))

(declare-fun d!107229 () Bool)

(assert (=> d!107229 (= ($colon$colon!536 e!464089 (ite c!90355 (h!17134 (toList!4524 (+!1952 lt!377369 lt!377372))) (tuple2!10181 (_1!5100 lt!377371) (_2!5100 lt!377371)))) (Cons!16004 (ite c!90355 (h!17134 (toList!4524 (+!1952 lt!377369 lt!377372))) (tuple2!10181 (_1!5100 lt!377371) (_2!5100 lt!377371))) e!464089))))

(assert (=> bm!36410 d!107229))

(declare-fun d!107231 () Bool)

(declare-fun lt!378087 () Bool)

(assert (=> d!107231 (= lt!378087 (select (content!390 lt!377692) (tuple2!10181 (_1!5100 lt!377372) (_2!5100 lt!377372))))))

(declare-fun e!464807 () Bool)

(assert (=> d!107231 (= lt!378087 e!464807)))

(declare-fun res!566724 () Bool)

(assert (=> d!107231 (=> (not res!566724) (not e!464807))))

(assert (=> d!107231 (= res!566724 ((_ is Cons!16004) lt!377692))))

(assert (=> d!107231 (= (contains!4213 lt!377692 (tuple2!10181 (_1!5100 lt!377372) (_2!5100 lt!377372))) lt!378087)))

(declare-fun b!833237 () Bool)

(declare-fun e!464808 () Bool)

(assert (=> b!833237 (= e!464807 e!464808)))

(declare-fun res!566725 () Bool)

(assert (=> b!833237 (=> res!566725 e!464808)))

(assert (=> b!833237 (= res!566725 (= (h!17134 lt!377692) (tuple2!10181 (_1!5100 lt!377372) (_2!5100 lt!377372))))))

(declare-fun b!833238 () Bool)

(assert (=> b!833238 (= e!464808 (contains!4213 (t!22384 lt!377692) (tuple2!10181 (_1!5100 lt!377372) (_2!5100 lt!377372))))))

(assert (= (and d!107231 res!566724) b!833237))

(assert (= (and b!833237 (not res!566725)) b!833238))

(declare-fun m!778123 () Bool)

(assert (=> d!107231 m!778123))

(declare-fun m!778125 () Bool)

(assert (=> d!107231 m!778125))

(declare-fun m!778127 () Bool)

(assert (=> b!833238 m!778127))

(assert (=> b!832041 d!107231))

(declare-fun d!107233 () Bool)

(declare-fun c!90707 () Bool)

(assert (=> d!107233 (= c!90707 (and ((_ is Cons!16004) (toList!4524 lt!377647)) (= (_1!5100 (h!17134 (toList!4524 lt!377647))) (_1!5100 (tuple2!10181 lt!377521 minValue!754)))))))

(declare-fun e!464809 () Option!421)

(assert (=> d!107233 (= (getValueByKey!415 (toList!4524 lt!377647) (_1!5100 (tuple2!10181 lt!377521 minValue!754))) e!464809)))

(declare-fun b!833239 () Bool)

(assert (=> b!833239 (= e!464809 (Some!420 (_2!5100 (h!17134 (toList!4524 lt!377647)))))))

(declare-fun b!833242 () Bool)

(declare-fun e!464810 () Option!421)

(assert (=> b!833242 (= e!464810 None!419)))

(declare-fun b!833240 () Bool)

(assert (=> b!833240 (= e!464809 e!464810)))

(declare-fun c!90708 () Bool)

(assert (=> b!833240 (= c!90708 (and ((_ is Cons!16004) (toList!4524 lt!377647)) (not (= (_1!5100 (h!17134 (toList!4524 lt!377647))) (_1!5100 (tuple2!10181 lt!377521 minValue!754))))))))

(declare-fun b!833241 () Bool)

(assert (=> b!833241 (= e!464810 (getValueByKey!415 (t!22384 (toList!4524 lt!377647)) (_1!5100 (tuple2!10181 lt!377521 minValue!754))))))

(assert (= (and d!107233 c!90707) b!833239))

(assert (= (and d!107233 (not c!90707)) b!833240))

(assert (= (and b!833240 c!90708) b!833241))

(assert (= (and b!833240 (not c!90708)) b!833242))

(declare-fun m!778129 () Bool)

(assert (=> b!833241 m!778129))

(assert (=> b!831992 d!107233))

(assert (=> d!106353 d!106327))

(declare-fun d!107235 () Bool)

(declare-fun e!464811 () Bool)

(assert (=> d!107235 e!464811))

(declare-fun res!566726 () Bool)

(assert (=> d!107235 (=> res!566726 e!464811)))

(declare-fun lt!378091 () Bool)

(assert (=> d!107235 (= res!566726 (not lt!378091))))

(declare-fun lt!378088 () Bool)

(assert (=> d!107235 (= lt!378091 lt!378088)))

(declare-fun lt!378090 () Unit!28497)

(declare-fun e!464812 () Unit!28497)

(assert (=> d!107235 (= lt!378090 e!464812)))

(declare-fun c!90709 () Bool)

(assert (=> d!107235 (= c!90709 lt!378088)))

(assert (=> d!107235 (= lt!378088 (containsKey!401 (toList!4524 lt!377525) lt!377528))))

(assert (=> d!107235 (= (contains!4212 lt!377525 lt!377528) lt!378091)))

(declare-fun b!833243 () Bool)

(declare-fun lt!378089 () Unit!28497)

(assert (=> b!833243 (= e!464812 lt!378089)))

(assert (=> b!833243 (= lt!378089 (lemmaContainsKeyImpliesGetValueByKeyDefined!311 (toList!4524 lt!377525) lt!377528))))

(assert (=> b!833243 (isDefined!312 (getValueByKey!415 (toList!4524 lt!377525) lt!377528))))

(declare-fun b!833244 () Bool)

(declare-fun Unit!28559 () Unit!28497)

(assert (=> b!833244 (= e!464812 Unit!28559)))

(declare-fun b!833245 () Bool)

(assert (=> b!833245 (= e!464811 (isDefined!312 (getValueByKey!415 (toList!4524 lt!377525) lt!377528)))))

(assert (= (and d!107235 c!90709) b!833243))

(assert (= (and d!107235 (not c!90709)) b!833244))

(assert (= (and d!107235 (not res!566726)) b!833245))

(declare-fun m!778131 () Bool)

(assert (=> d!107235 m!778131))

(declare-fun m!778133 () Bool)

(assert (=> b!833243 m!778133))

(assert (=> b!833243 m!776263))

(assert (=> b!833243 m!776263))

(declare-fun m!778135 () Bool)

(assert (=> b!833243 m!778135))

(assert (=> b!833245 m!776263))

(assert (=> b!833245 m!776263))

(assert (=> b!833245 m!778135))

(assert (=> d!106353 d!107235))

(declare-fun d!107237 () Bool)

(assert (=> d!107237 (= (apply!373 (+!1952 lt!377525 (tuple2!10181 lt!377516 minValue!754)) lt!377528) (apply!373 lt!377525 lt!377528))))

(assert (=> d!107237 true))

(declare-fun _$34!1152 () Unit!28497)

(assert (=> d!107237 (= (choose!1431 lt!377525 lt!377516 minValue!754 lt!377528) _$34!1152)))

(declare-fun bs!23323 () Bool)

(assert (= bs!23323 d!107237))

(assert (=> bs!23323 m!775837))

(assert (=> bs!23323 m!775837))

(assert (=> bs!23323 m!775847))

(assert (=> bs!23323 m!775839))

(assert (=> d!106353 d!107237))

(assert (=> d!106353 d!106345))

(assert (=> d!106353 d!106347))

(declare-fun d!107239 () Bool)

(declare-fun lt!378092 () Bool)

(assert (=> d!107239 (= lt!378092 (select (content!390 (t!22384 (toList!4524 lt!377459))) lt!377372))))

(declare-fun e!464813 () Bool)

(assert (=> d!107239 (= lt!378092 e!464813)))

(declare-fun res!566727 () Bool)

(assert (=> d!107239 (=> (not res!566727) (not e!464813))))

(assert (=> d!107239 (= res!566727 ((_ is Cons!16004) (t!22384 (toList!4524 lt!377459))))))

(assert (=> d!107239 (= (contains!4213 (t!22384 (toList!4524 lt!377459)) lt!377372) lt!378092)))

(declare-fun b!833246 () Bool)

(declare-fun e!464814 () Bool)

(assert (=> b!833246 (= e!464813 e!464814)))

(declare-fun res!566728 () Bool)

(assert (=> b!833246 (=> res!566728 e!464814)))

(assert (=> b!833246 (= res!566728 (= (h!17134 (t!22384 (toList!4524 lt!377459))) lt!377372))))

(declare-fun b!833247 () Bool)

(assert (=> b!833247 (= e!464814 (contains!4213 (t!22384 (t!22384 (toList!4524 lt!377459))) lt!377372))))

(assert (= (and d!107239 res!566727) b!833246))

(assert (= (and b!833246 (not res!566728)) b!833247))

(assert (=> d!107239 m!777881))

(declare-fun m!778137 () Bool)

(assert (=> d!107239 m!778137))

(declare-fun m!778139 () Bool)

(assert (=> b!833247 m!778139))

(assert (=> b!832006 d!107239))

(declare-fun d!107241 () Bool)

(declare-fun lt!378093 () Bool)

(assert (=> d!107241 (= lt!378093 (select (content!390 (t!22384 (toList!4524 lt!377533))) lt!377371))))

(declare-fun e!464815 () Bool)

(assert (=> d!107241 (= lt!378093 e!464815)))

(declare-fun res!566729 () Bool)

(assert (=> d!107241 (=> (not res!566729) (not e!464815))))

(assert (=> d!107241 (= res!566729 ((_ is Cons!16004) (t!22384 (toList!4524 lt!377533))))))

(assert (=> d!107241 (= (contains!4213 (t!22384 (toList!4524 lt!377533)) lt!377371) lt!378093)))

(declare-fun b!833248 () Bool)

(declare-fun e!464816 () Bool)

(assert (=> b!833248 (= e!464815 e!464816)))

(declare-fun res!566730 () Bool)

(assert (=> b!833248 (=> res!566730 e!464816)))

(assert (=> b!833248 (= res!566730 (= (h!17134 (t!22384 (toList!4524 lt!377533))) lt!377371))))

(declare-fun b!833249 () Bool)

(assert (=> b!833249 (= e!464816 (contains!4213 (t!22384 (t!22384 (toList!4524 lt!377533))) lt!377371))))

(assert (= (and d!107241 res!566729) b!833248))

(assert (= (and b!833248 (not res!566730)) b!833249))

(assert (=> d!107241 m!777873))

(declare-fun m!778141 () Bool)

(assert (=> d!107241 m!778141))

(declare-fun m!778143 () Bool)

(assert (=> b!833249 m!778143))

(assert (=> b!831984 d!107241))

(declare-fun d!107243 () Bool)

(declare-fun c!90710 () Bool)

(assert (=> d!107243 (= c!90710 (and ((_ is Cons!16004) (t!22384 (toList!4524 lt!377533))) (= (_1!5100 (h!17134 (t!22384 (toList!4524 lt!377533)))) (_1!5100 lt!377371))))))

(declare-fun e!464817 () Option!421)

(assert (=> d!107243 (= (getValueByKey!415 (t!22384 (toList!4524 lt!377533)) (_1!5100 lt!377371)) e!464817)))

(declare-fun b!833250 () Bool)

(assert (=> b!833250 (= e!464817 (Some!420 (_2!5100 (h!17134 (t!22384 (toList!4524 lt!377533))))))))

(declare-fun b!833253 () Bool)

(declare-fun e!464818 () Option!421)

(assert (=> b!833253 (= e!464818 None!419)))

(declare-fun b!833251 () Bool)

(assert (=> b!833251 (= e!464817 e!464818)))

(declare-fun c!90711 () Bool)

(assert (=> b!833251 (= c!90711 (and ((_ is Cons!16004) (t!22384 (toList!4524 lt!377533))) (not (= (_1!5100 (h!17134 (t!22384 (toList!4524 lt!377533)))) (_1!5100 lt!377371)))))))

(declare-fun b!833252 () Bool)

(assert (=> b!833252 (= e!464818 (getValueByKey!415 (t!22384 (t!22384 (toList!4524 lt!377533))) (_1!5100 lt!377371)))))

(assert (= (and d!107243 c!90710) b!833250))

(assert (= (and d!107243 (not c!90710)) b!833251))

(assert (= (and b!833251 c!90711) b!833252))

(assert (= (and b!833251 (not c!90711)) b!833253))

(declare-fun m!778145 () Bool)

(assert (=> b!833252 m!778145))

(assert (=> b!832207 d!107243))

(declare-fun d!107245 () Bool)

(assert (=> d!107245 (isDefined!312 (getValueByKey!415 (toList!4524 lt!377529) (_1!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))))

(declare-fun lt!378094 () Unit!28497)

(assert (=> d!107245 (= lt!378094 (choose!1435 (toList!4524 lt!377529) (_1!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))))

(declare-fun e!464819 () Bool)

(assert (=> d!107245 e!464819))

(declare-fun res!566731 () Bool)

(assert (=> d!107245 (=> (not res!566731) (not e!464819))))

(assert (=> d!107245 (= res!566731 (isStrictlySorted!438 (toList!4524 lt!377529)))))

(assert (=> d!107245 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!311 (toList!4524 lt!377529) (_1!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))) lt!378094)))

(declare-fun b!833254 () Bool)

(assert (=> b!833254 (= e!464819 (containsKey!401 (toList!4524 lt!377529) (_1!5100 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))))

(assert (= (and d!107245 res!566731) b!833254))

(assert (=> d!107245 m!775875))

(assert (=> d!107245 m!775875))

(assert (=> d!107245 m!776439))

(declare-fun m!778147 () Bool)

(assert (=> d!107245 m!778147))

(declare-fun m!778149 () Bool)

(assert (=> d!107245 m!778149))

(assert (=> b!833254 m!776435))

(assert (=> b!832104 d!107245))

(assert (=> b!832104 d!106671))

(assert (=> b!832104 d!106437))

(declare-fun d!107247 () Bool)

(declare-fun c!90712 () Bool)

(assert (=> d!107247 (= c!90712 (and ((_ is Cons!16004) (toList!4524 lt!377664)) (= (_1!5100 (h!17134 (toList!4524 lt!377664))) (_1!5100 (tuple2!10181 lt!377507 zeroValueAfter!34)))))))

(declare-fun e!464820 () Option!421)

(assert (=> d!107247 (= (getValueByKey!415 (toList!4524 lt!377664) (_1!5100 (tuple2!10181 lt!377507 zeroValueAfter!34))) e!464820)))

(declare-fun b!833255 () Bool)

(assert (=> b!833255 (= e!464820 (Some!420 (_2!5100 (h!17134 (toList!4524 lt!377664)))))))

(declare-fun b!833258 () Bool)

(declare-fun e!464821 () Option!421)

(assert (=> b!833258 (= e!464821 None!419)))

(declare-fun b!833256 () Bool)

(assert (=> b!833256 (= e!464820 e!464821)))

(declare-fun c!90713 () Bool)

(assert (=> b!833256 (= c!90713 (and ((_ is Cons!16004) (toList!4524 lt!377664)) (not (= (_1!5100 (h!17134 (toList!4524 lt!377664))) (_1!5100 (tuple2!10181 lt!377507 zeroValueAfter!34))))))))

(declare-fun b!833257 () Bool)

(assert (=> b!833257 (= e!464821 (getValueByKey!415 (t!22384 (toList!4524 lt!377664)) (_1!5100 (tuple2!10181 lt!377507 zeroValueAfter!34))))))

(assert (= (and d!107247 c!90712) b!833255))

(assert (= (and d!107247 (not c!90712)) b!833256))

(assert (= (and b!833256 c!90713) b!833257))

(assert (= (and b!833256 (not c!90713)) b!833258))

(declare-fun m!778151 () Bool)

(assert (=> b!833257 m!778151))

(assert (=> b!832001 d!107247))

(declare-fun b!833271 () Bool)

(declare-fun c!90720 () Bool)

(declare-fun lt!378099 () (_ BitVec 64))

(assert (=> b!833271 (= c!90720 (= lt!378099 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!464830 () SeekEntryResult!8734)

(declare-fun e!464828 () SeekEntryResult!8734)

(assert (=> b!833271 (= e!464830 e!464828)))

(declare-fun b!833272 () Bool)

(assert (=> b!833272 (= e!464828 (MissingVacant!8734 (index!37308 lt!377711)))))

(declare-fun b!833273 () Bool)

(declare-fun e!464829 () SeekEntryResult!8734)

(assert (=> b!833273 (= e!464829 Undefined!8734)))

(declare-fun b!833274 () Bool)

(assert (=> b!833274 (= e!464828 (seekKeyOrZeroReturnVacant!0 (bvadd (x!70122 lt!377711) #b00000000000000000000000000000001) (nextIndex!0 (index!37308 lt!377711) (x!70122 lt!377711) mask!1312) (index!37308 lt!377711) (select (arr!22317 _keys!976) #b00000000000000000000000000000000) _keys!976 mask!1312))))

(declare-fun d!107249 () Bool)

(declare-fun lt!378100 () SeekEntryResult!8734)

(assert (=> d!107249 (and (or ((_ is Undefined!8734) lt!378100) (not ((_ is Found!8734) lt!378100)) (and (bvsge (index!37307 lt!378100) #b00000000000000000000000000000000) (bvslt (index!37307 lt!378100) (size!22738 _keys!976)))) (or ((_ is Undefined!8734) lt!378100) ((_ is Found!8734) lt!378100) (not ((_ is MissingVacant!8734) lt!378100)) (not (= (index!37309 lt!378100) (index!37308 lt!377711))) (and (bvsge (index!37309 lt!378100) #b00000000000000000000000000000000) (bvslt (index!37309 lt!378100) (size!22738 _keys!976)))) (or ((_ is Undefined!8734) lt!378100) (ite ((_ is Found!8734) lt!378100) (= (select (arr!22317 _keys!976) (index!37307 lt!378100)) (select (arr!22317 _keys!976) #b00000000000000000000000000000000)) (and ((_ is MissingVacant!8734) lt!378100) (= (index!37309 lt!378100) (index!37308 lt!377711)) (= (select (arr!22317 _keys!976) (index!37309 lt!378100)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!107249 (= lt!378100 e!464829)))

(declare-fun c!90722 () Bool)

(assert (=> d!107249 (= c!90722 (bvsge (x!70122 lt!377711) #b01111111111111111111111111111110))))

(assert (=> d!107249 (= lt!378099 (select (arr!22317 _keys!976) (index!37308 lt!377711)))))

(assert (=> d!107249 (validMask!0 mask!1312)))

(assert (=> d!107249 (= (seekKeyOrZeroReturnVacant!0 (x!70122 lt!377711) (index!37308 lt!377711) (index!37308 lt!377711) (select (arr!22317 _keys!976) #b00000000000000000000000000000000) _keys!976 mask!1312) lt!378100)))

(declare-fun b!833275 () Bool)

(assert (=> b!833275 (= e!464829 e!464830)))

(declare-fun c!90721 () Bool)

(assert (=> b!833275 (= c!90721 (= lt!378099 (select (arr!22317 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun b!833276 () Bool)

(assert (=> b!833276 (= e!464830 (Found!8734 (index!37308 lt!377711)))))

(assert (= (and d!107249 c!90722) b!833273))

(assert (= (and d!107249 (not c!90722)) b!833275))

(assert (= (and b!833275 c!90721) b!833276))

(assert (= (and b!833275 (not c!90721)) b!833271))

(assert (= (and b!833271 c!90720) b!833272))

(assert (= (and b!833271 (not c!90720)) b!833274))

(declare-fun m!778153 () Bool)

(assert (=> b!833274 m!778153))

(assert (=> b!833274 m!778153))

(assert (=> b!833274 m!775697))

(declare-fun m!778155 () Bool)

(assert (=> b!833274 m!778155))

(declare-fun m!778157 () Bool)

(assert (=> d!107249 m!778157))

(declare-fun m!778159 () Bool)

(assert (=> d!107249 m!778159))

(assert (=> d!107249 m!776401))

(assert (=> d!107249 m!775625))

(assert (=> b!832080 d!107249))

(declare-fun d!107251 () Bool)

(declare-fun res!566732 () Bool)

(declare-fun e!464831 () Bool)

(assert (=> d!107251 (=> res!566732 e!464831)))

(assert (=> d!107251 (= res!566732 (and ((_ is Cons!16004) (toList!4524 lt!377508)) (= (_1!5100 (h!17134 (toList!4524 lt!377508))) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!107251 (= (containsKey!401 (toList!4524 lt!377508) #b1000000000000000000000000000000000000000000000000000000000000000) e!464831)))

(declare-fun b!833277 () Bool)

(declare-fun e!464832 () Bool)

(assert (=> b!833277 (= e!464831 e!464832)))

(declare-fun res!566733 () Bool)

(assert (=> b!833277 (=> (not res!566733) (not e!464832))))

(assert (=> b!833277 (= res!566733 (and (or (not ((_ is Cons!16004) (toList!4524 lt!377508))) (bvsle (_1!5100 (h!17134 (toList!4524 lt!377508))) #b1000000000000000000000000000000000000000000000000000000000000000)) ((_ is Cons!16004) (toList!4524 lt!377508)) (bvslt (_1!5100 (h!17134 (toList!4524 lt!377508))) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!833278 () Bool)

(assert (=> b!833278 (= e!464832 (containsKey!401 (t!22384 (toList!4524 lt!377508)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!107251 (not res!566732)) b!833277))

(assert (= (and b!833277 res!566733) b!833278))

(declare-fun m!778161 () Bool)

(assert (=> b!833278 m!778161))

(assert (=> d!106357 d!107251))

(declare-fun d!107253 () Bool)

(assert (=> d!107253 (= (get!11829 (getValueByKey!415 (toList!4524 lt!377449) (select (arr!22317 _keys!976) #b00000000000000000000000000000000))) (v!10097 (getValueByKey!415 (toList!4524 lt!377449) (select (arr!22317 _keys!976) #b00000000000000000000000000000000))))))

(assert (=> d!106321 d!107253))

(assert (=> d!106321 d!107049))

(declare-fun d!107255 () Bool)

(declare-fun res!566734 () Bool)

(declare-fun e!464833 () Bool)

(assert (=> d!107255 (=> res!566734 e!464833)))

(assert (=> d!107255 (= res!566734 (and ((_ is Cons!16004) lt!377718) (= (_1!5100 (h!17134 lt!377718)) (_1!5100 lt!377371))))))

(assert (=> d!107255 (= (containsKey!401 lt!377718 (_1!5100 lt!377371)) e!464833)))

(declare-fun b!833279 () Bool)

(declare-fun e!464834 () Bool)

(assert (=> b!833279 (= e!464833 e!464834)))

(declare-fun res!566735 () Bool)

(assert (=> b!833279 (=> (not res!566735) (not e!464834))))

(assert (=> b!833279 (= res!566735 (and (or (not ((_ is Cons!16004) lt!377718)) (bvsle (_1!5100 (h!17134 lt!377718)) (_1!5100 lt!377371))) ((_ is Cons!16004) lt!377718) (bvslt (_1!5100 (h!17134 lt!377718)) (_1!5100 lt!377371))))))

(declare-fun b!833280 () Bool)

(assert (=> b!833280 (= e!464834 (containsKey!401 (t!22384 lt!377718) (_1!5100 lt!377371)))))

(assert (= (and d!107255 (not res!566734)) b!833279))

(assert (= (and b!833279 res!566735) b!833280))

(declare-fun m!778163 () Bool)

(assert (=> b!833280 m!778163))

(assert (=> b!832095 d!107255))

(assert (=> b!831908 d!107103))

(assert (=> b!831908 d!106389))

(declare-fun b!833281 () Bool)

(declare-fun e!464839 () List!16008)

(declare-fun call!36502 () List!16008)

(assert (=> b!833281 (= e!464839 call!36502)))

(declare-fun b!833282 () Bool)

(declare-fun res!566736 () Bool)

(declare-fun e!464836 () Bool)

(assert (=> b!833282 (=> (not res!566736) (not e!464836))))

(declare-fun lt!378101 () List!16008)

(assert (=> b!833282 (= res!566736 (containsKey!401 lt!378101 (_1!5100 lt!377371)))))

(declare-fun c!90726 () Bool)

(declare-fun b!833283 () Bool)

(declare-fun e!464838 () List!16008)

(declare-fun c!90724 () Bool)

(assert (=> b!833283 (= e!464838 (ite c!90724 (t!22384 (t!22384 (toList!4524 (+!1952 lt!377373 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))) (ite c!90726 (Cons!16004 (h!17134 (t!22384 (toList!4524 (+!1952 lt!377373 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))) (t!22384 (t!22384 (toList!4524 (+!1952 lt!377373 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))))) Nil!16005)))))

(declare-fun b!833284 () Bool)

(declare-fun e!464835 () List!16008)

(assert (=> b!833284 (= e!464835 e!464839)))

(assert (=> b!833284 (= c!90724 (and ((_ is Cons!16004) (t!22384 (toList!4524 (+!1952 lt!377373 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))) (= (_1!5100 (h!17134 (t!22384 (toList!4524 (+!1952 lt!377373 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))))) (_1!5100 lt!377371))))))

(declare-fun b!833285 () Bool)

(assert (=> b!833285 (= e!464838 (insertStrictlySorted!269 (t!22384 (t!22384 (toList!4524 (+!1952 lt!377373 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))) (_1!5100 lt!377371) (_2!5100 lt!377371)))))

(declare-fun bm!36498 () Bool)

(declare-fun call!36503 () List!16008)

(assert (=> bm!36498 (= call!36502 call!36503)))

(declare-fun b!833286 () Bool)

(assert (=> b!833286 (= e!464836 (contains!4213 lt!378101 (tuple2!10181 (_1!5100 lt!377371) (_2!5100 lt!377371))))))

(declare-fun b!833287 () Bool)

(declare-fun e!464837 () List!16008)

(declare-fun call!36501 () List!16008)

(assert (=> b!833287 (= e!464837 call!36501)))

(declare-fun b!833288 () Bool)

(assert (=> b!833288 (= c!90726 (and ((_ is Cons!16004) (t!22384 (toList!4524 (+!1952 lt!377373 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))) (bvsgt (_1!5100 (h!17134 (t!22384 (toList!4524 (+!1952 lt!377373 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))))) (_1!5100 lt!377371))))))

(assert (=> b!833288 (= e!464839 e!464837)))

(declare-fun d!107257 () Bool)

(assert (=> d!107257 e!464836))

(declare-fun res!566737 () Bool)

(assert (=> d!107257 (=> (not res!566737) (not e!464836))))

(assert (=> d!107257 (= res!566737 (isStrictlySorted!438 lt!378101))))

(assert (=> d!107257 (= lt!378101 e!464835)))

(declare-fun c!90725 () Bool)

(assert (=> d!107257 (= c!90725 (and ((_ is Cons!16004) (t!22384 (toList!4524 (+!1952 lt!377373 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))) (bvslt (_1!5100 (h!17134 (t!22384 (toList!4524 (+!1952 lt!377373 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))))) (_1!5100 lt!377371))))))

(assert (=> d!107257 (isStrictlySorted!438 (t!22384 (toList!4524 (+!1952 lt!377373 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))))))

(assert (=> d!107257 (= (insertStrictlySorted!269 (t!22384 (toList!4524 (+!1952 lt!377373 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))) (_1!5100 lt!377371) (_2!5100 lt!377371)) lt!378101)))

(declare-fun b!833289 () Bool)

(assert (=> b!833289 (= e!464837 call!36501)))

(declare-fun bm!36499 () Bool)

(assert (=> bm!36499 (= call!36503 ($colon$colon!536 e!464838 (ite c!90725 (h!17134 (t!22384 (toList!4524 (+!1952 lt!377373 (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))) (tuple2!10181 (_1!5100 lt!377371) (_2!5100 lt!377371)))))))

(declare-fun c!90723 () Bool)

(assert (=> bm!36499 (= c!90723 c!90725)))

(declare-fun bm!36500 () Bool)

(assert (=> bm!36500 (= call!36501 call!36502)))

(declare-fun b!833290 () Bool)

(assert (=> b!833290 (= e!464835 call!36503)))

(assert (= (and d!107257 c!90725) b!833290))

(assert (= (and d!107257 (not c!90725)) b!833284))

(assert (= (and b!833284 c!90724) b!833281))

(assert (= (and b!833284 (not c!90724)) b!833288))

(assert (= (and b!833288 c!90726) b!833287))

(assert (= (and b!833288 (not c!90726)) b!833289))

(assert (= (or b!833287 b!833289) bm!36500))

(assert (= (or b!833281 bm!36500) bm!36498))

(assert (= (or b!833290 bm!36498) bm!36499))

(assert (= (and bm!36499 c!90723) b!833285))

(assert (= (and bm!36499 (not c!90723)) b!833283))

(assert (= (and d!107257 res!566737) b!833282))

(assert (= (and b!833282 res!566736) b!833286))

(declare-fun m!778165 () Bool)

(assert (=> b!833282 m!778165))

(declare-fun m!778167 () Bool)

(assert (=> b!833285 m!778167))

(declare-fun m!778169 () Bool)

(assert (=> d!107257 m!778169))

(assert (=> d!107257 m!777327))

(declare-fun m!778171 () Bool)

(assert (=> b!833286 m!778171))

(declare-fun m!778173 () Bool)

(assert (=> bm!36499 m!778173))

(assert (=> b!832230 d!107257))

(declare-fun d!107259 () Bool)

(declare-fun lt!378102 () Bool)

(assert (=> d!107259 (= lt!378102 (select (content!390 (toList!4524 lt!377656)) (tuple2!10181 lt!377526 zeroValueAfter!34)))))

(declare-fun e!464840 () Bool)

(assert (=> d!107259 (= lt!378102 e!464840)))

(declare-fun res!566738 () Bool)

(assert (=> d!107259 (=> (not res!566738) (not e!464840))))

(assert (=> d!107259 (= res!566738 ((_ is Cons!16004) (toList!4524 lt!377656)))))

(assert (=> d!107259 (= (contains!4213 (toList!4524 lt!377656) (tuple2!10181 lt!377526 zeroValueAfter!34)) lt!378102)))

(declare-fun b!833291 () Bool)

(declare-fun e!464841 () Bool)

(assert (=> b!833291 (= e!464840 e!464841)))

(declare-fun res!566739 () Bool)

(assert (=> b!833291 (=> res!566739 e!464841)))

(assert (=> b!833291 (= res!566739 (= (h!17134 (toList!4524 lt!377656)) (tuple2!10181 lt!377526 zeroValueAfter!34)))))

(declare-fun b!833292 () Bool)

(assert (=> b!833292 (= e!464841 (contains!4213 (t!22384 (toList!4524 lt!377656)) (tuple2!10181 lt!377526 zeroValueAfter!34)))))

(assert (= (and d!107259 res!566738) b!833291))

(assert (= (and b!833291 (not res!566739)) b!833292))

(declare-fun m!778175 () Bool)

(assert (=> d!107259 m!778175))

(declare-fun m!778177 () Bool)

(assert (=> d!107259 m!778177))

(declare-fun m!778179 () Bool)

(assert (=> b!833292 m!778179))

(assert (=> b!831998 d!107259))

(declare-fun d!107261 () Bool)

(declare-fun res!566740 () Bool)

(declare-fun e!464842 () Bool)

(assert (=> d!107261 (=> res!566740 e!464842)))

(assert (=> d!107261 (= res!566740 (and ((_ is Cons!16004) (toList!4524 lt!377403)) (= (_1!5100 (h!17134 (toList!4524 lt!377403))) (_1!5100 lt!377371))))))

(assert (=> d!107261 (= (containsKey!401 (toList!4524 lt!377403) (_1!5100 lt!377371)) e!464842)))

(declare-fun b!833293 () Bool)

(declare-fun e!464843 () Bool)

(assert (=> b!833293 (= e!464842 e!464843)))

(declare-fun res!566741 () Bool)

(assert (=> b!833293 (=> (not res!566741) (not e!464843))))

(assert (=> b!833293 (= res!566741 (and (or (not ((_ is Cons!16004) (toList!4524 lt!377403))) (bvsle (_1!5100 (h!17134 (toList!4524 lt!377403))) (_1!5100 lt!377371))) ((_ is Cons!16004) (toList!4524 lt!377403)) (bvslt (_1!5100 (h!17134 (toList!4524 lt!377403))) (_1!5100 lt!377371))))))

(declare-fun b!833294 () Bool)

(assert (=> b!833294 (= e!464843 (containsKey!401 (t!22384 (toList!4524 lt!377403)) (_1!5100 lt!377371)))))

(assert (= (and d!107261 (not res!566740)) b!833293))

(assert (= (and b!833293 res!566741) b!833294))

(declare-fun m!778181 () Bool)

(assert (=> b!833294 m!778181))

(assert (=> d!106465 d!107261))

(declare-fun d!107263 () Bool)

(declare-fun e!464844 () Bool)

(assert (=> d!107263 e!464844))

(declare-fun res!566742 () Bool)

(assert (=> d!107263 (=> res!566742 e!464844)))

(declare-fun lt!378106 () Bool)

(assert (=> d!107263 (= res!566742 (not lt!378106))))

(declare-fun lt!378103 () Bool)

(assert (=> d!107263 (= lt!378106 lt!378103)))

(declare-fun lt!378105 () Unit!28497)

(declare-fun e!464845 () Unit!28497)

(assert (=> d!107263 (= lt!378105 e!464845)))

(declare-fun c!90727 () Bool)

(assert (=> d!107263 (= c!90727 lt!378103)))

(assert (=> d!107263 (= lt!378103 (containsKey!401 (toList!4524 lt!377603) (_1!5100 (ite (or c!90277 c!90279) (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34) (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))))))

(assert (=> d!107263 (= (contains!4212 lt!377603 (_1!5100 (ite (or c!90277 c!90279) (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34) (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))) lt!378106)))

(declare-fun b!833295 () Bool)

(declare-fun lt!378104 () Unit!28497)

(assert (=> b!833295 (= e!464845 lt!378104)))

(assert (=> b!833295 (= lt!378104 (lemmaContainsKeyImpliesGetValueByKeyDefined!311 (toList!4524 lt!377603) (_1!5100 (ite (or c!90277 c!90279) (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34) (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))))))

(assert (=> b!833295 (isDefined!312 (getValueByKey!415 (toList!4524 lt!377603) (_1!5100 (ite (or c!90277 c!90279) (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34) (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))))))

(declare-fun b!833296 () Bool)

(declare-fun Unit!28560 () Unit!28497)

(assert (=> b!833296 (= e!464845 Unit!28560)))

(declare-fun b!833297 () Bool)

(assert (=> b!833297 (= e!464844 (isDefined!312 (getValueByKey!415 (toList!4524 lt!377603) (_1!5100 (ite (or c!90277 c!90279) (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34) (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))))

(assert (= (and d!107263 c!90727) b!833295))

(assert (= (and d!107263 (not c!90727)) b!833296))

(assert (= (and d!107263 (not res!566742)) b!833297))

(declare-fun m!778183 () Bool)

(assert (=> d!107263 m!778183))

(declare-fun m!778185 () Bool)

(assert (=> b!833295 m!778185))

(assert (=> b!833295 m!776063))

(assert (=> b!833295 m!776063))

(declare-fun m!778187 () Bool)

(assert (=> b!833295 m!778187))

(assert (=> b!833297 m!776063))

(assert (=> b!833297 m!776063))

(assert (=> b!833297 m!778187))

(assert (=> d!106287 d!107263))

(declare-fun d!107265 () Bool)

(declare-fun c!90728 () Bool)

(assert (=> d!107265 (= c!90728 (and ((_ is Cons!16004) lt!377605) (= (_1!5100 (h!17134 lt!377605)) (_1!5100 (ite (or c!90277 c!90279) (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34) (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))))

(declare-fun e!464846 () Option!421)

(assert (=> d!107265 (= (getValueByKey!415 lt!377605 (_1!5100 (ite (or c!90277 c!90279) (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34) (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))) e!464846)))

(declare-fun b!833298 () Bool)

(assert (=> b!833298 (= e!464846 (Some!420 (_2!5100 (h!17134 lt!377605))))))

(declare-fun b!833301 () Bool)

(declare-fun e!464847 () Option!421)

(assert (=> b!833301 (= e!464847 None!419)))

(declare-fun b!833299 () Bool)

(assert (=> b!833299 (= e!464846 e!464847)))

(declare-fun c!90729 () Bool)

(assert (=> b!833299 (= c!90729 (and ((_ is Cons!16004) lt!377605) (not (= (_1!5100 (h!17134 lt!377605)) (_1!5100 (ite (or c!90277 c!90279) (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34) (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))))))))

(declare-fun b!833300 () Bool)

(assert (=> b!833300 (= e!464847 (getValueByKey!415 (t!22384 lt!377605) (_1!5100 (ite (or c!90277 c!90279) (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34) (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))))))

(assert (= (and d!107265 c!90728) b!833298))

(assert (= (and d!107265 (not c!90728)) b!833299))

(assert (= (and b!833299 c!90729) b!833300))

(assert (= (and b!833299 (not c!90729)) b!833301))

(declare-fun m!778189 () Bool)

(assert (=> b!833300 m!778189))

(assert (=> d!106287 d!107265))

(declare-fun d!107267 () Bool)

(assert (=> d!107267 (= (getValueByKey!415 lt!377605 (_1!5100 (ite (or c!90277 c!90279) (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34) (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))) (Some!420 (_2!5100 (ite (or c!90277 c!90279) (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34) (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))))))

(declare-fun lt!378107 () Unit!28497)

(assert (=> d!107267 (= lt!378107 (choose!1433 lt!377605 (_1!5100 (ite (or c!90277 c!90279) (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34) (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))) (_2!5100 (ite (or c!90277 c!90279) (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34) (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))))))

(declare-fun e!464848 () Bool)

(assert (=> d!107267 e!464848))

(declare-fun res!566743 () Bool)

(assert (=> d!107267 (=> (not res!566743) (not e!464848))))

(assert (=> d!107267 (= res!566743 (isStrictlySorted!438 lt!377605))))

(assert (=> d!107267 (= (lemmaContainsTupThenGetReturnValue!231 lt!377605 (_1!5100 (ite (or c!90277 c!90279) (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34) (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))) (_2!5100 (ite (or c!90277 c!90279) (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34) (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))) lt!378107)))

(declare-fun b!833302 () Bool)

(declare-fun res!566744 () Bool)

(assert (=> b!833302 (=> (not res!566744) (not e!464848))))

(assert (=> b!833302 (= res!566744 (containsKey!401 lt!377605 (_1!5100 (ite (or c!90277 c!90279) (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34) (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))))))

(declare-fun b!833303 () Bool)

(assert (=> b!833303 (= e!464848 (contains!4213 lt!377605 (tuple2!10181 (_1!5100 (ite (or c!90277 c!90279) (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34) (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))) (_2!5100 (ite (or c!90277 c!90279) (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34) (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))))

(assert (= (and d!107267 res!566743) b!833302))

(assert (= (and b!833302 res!566744) b!833303))

(assert (=> d!107267 m!776057))

(declare-fun m!778191 () Bool)

(assert (=> d!107267 m!778191))

(declare-fun m!778193 () Bool)

(assert (=> d!107267 m!778193))

(declare-fun m!778195 () Bool)

(assert (=> b!833302 m!778195))

(declare-fun m!778197 () Bool)

(assert (=> b!833303 m!778197))

(assert (=> d!106287 d!107267))

(declare-fun b!833304 () Bool)

(declare-fun e!464853 () List!16008)

(declare-fun call!36505 () List!16008)

(assert (=> b!833304 (= e!464853 call!36505)))

(declare-fun b!833305 () Bool)

(declare-fun res!566745 () Bool)

(declare-fun e!464850 () Bool)

(assert (=> b!833305 (=> (not res!566745) (not e!464850))))

(declare-fun lt!378108 () List!16008)

(assert (=> b!833305 (= res!566745 (containsKey!401 lt!378108 (_1!5100 (ite (or c!90277 c!90279) (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34) (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))))))

(declare-fun c!90731 () Bool)

(declare-fun c!90733 () Bool)

(declare-fun b!833306 () Bool)

(declare-fun e!464852 () List!16008)

(assert (=> b!833306 (= e!464852 (ite c!90731 (t!22384 (toList!4524 (ite c!90277 call!36384 (ite c!90279 call!36388 call!36383)))) (ite c!90733 (Cons!16004 (h!17134 (toList!4524 (ite c!90277 call!36384 (ite c!90279 call!36388 call!36383)))) (t!22384 (toList!4524 (ite c!90277 call!36384 (ite c!90279 call!36388 call!36383))))) Nil!16005)))))

(declare-fun b!833307 () Bool)

(declare-fun e!464849 () List!16008)

(assert (=> b!833307 (= e!464849 e!464853)))

(assert (=> b!833307 (= c!90731 (and ((_ is Cons!16004) (toList!4524 (ite c!90277 call!36384 (ite c!90279 call!36388 call!36383)))) (= (_1!5100 (h!17134 (toList!4524 (ite c!90277 call!36384 (ite c!90279 call!36388 call!36383))))) (_1!5100 (ite (or c!90277 c!90279) (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34) (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))))

(declare-fun b!833308 () Bool)

(assert (=> b!833308 (= e!464852 (insertStrictlySorted!269 (t!22384 (toList!4524 (ite c!90277 call!36384 (ite c!90279 call!36388 call!36383)))) (_1!5100 (ite (or c!90277 c!90279) (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34) (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))) (_2!5100 (ite (or c!90277 c!90279) (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34) (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))))))

(declare-fun bm!36501 () Bool)

(declare-fun call!36506 () List!16008)

(assert (=> bm!36501 (= call!36505 call!36506)))

(declare-fun b!833309 () Bool)

(assert (=> b!833309 (= e!464850 (contains!4213 lt!378108 (tuple2!10181 (_1!5100 (ite (or c!90277 c!90279) (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34) (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))) (_2!5100 (ite (or c!90277 c!90279) (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34) (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))))

(declare-fun b!833310 () Bool)

(declare-fun e!464851 () List!16008)

(declare-fun call!36504 () List!16008)

(assert (=> b!833310 (= e!464851 call!36504)))

(declare-fun b!833311 () Bool)

(assert (=> b!833311 (= c!90733 (and ((_ is Cons!16004) (toList!4524 (ite c!90277 call!36384 (ite c!90279 call!36388 call!36383)))) (bvsgt (_1!5100 (h!17134 (toList!4524 (ite c!90277 call!36384 (ite c!90279 call!36388 call!36383))))) (_1!5100 (ite (or c!90277 c!90279) (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34) (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))))

(assert (=> b!833311 (= e!464853 e!464851)))

(declare-fun d!107269 () Bool)

(assert (=> d!107269 e!464850))

(declare-fun res!566746 () Bool)

(assert (=> d!107269 (=> (not res!566746) (not e!464850))))

(assert (=> d!107269 (= res!566746 (isStrictlySorted!438 lt!378108))))

(assert (=> d!107269 (= lt!378108 e!464849)))

(declare-fun c!90732 () Bool)

(assert (=> d!107269 (= c!90732 (and ((_ is Cons!16004) (toList!4524 (ite c!90277 call!36384 (ite c!90279 call!36388 call!36383)))) (bvslt (_1!5100 (h!17134 (toList!4524 (ite c!90277 call!36384 (ite c!90279 call!36388 call!36383))))) (_1!5100 (ite (or c!90277 c!90279) (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34) (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))))

(assert (=> d!107269 (isStrictlySorted!438 (toList!4524 (ite c!90277 call!36384 (ite c!90279 call!36388 call!36383))))))

(assert (=> d!107269 (= (insertStrictlySorted!269 (toList!4524 (ite c!90277 call!36384 (ite c!90279 call!36388 call!36383))) (_1!5100 (ite (or c!90277 c!90279) (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34) (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))) (_2!5100 (ite (or c!90277 c!90279) (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34) (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))) lt!378108)))

(declare-fun b!833312 () Bool)

(assert (=> b!833312 (= e!464851 call!36504)))

(declare-fun bm!36502 () Bool)

(assert (=> bm!36502 (= call!36506 ($colon$colon!536 e!464852 (ite c!90732 (h!17134 (toList!4524 (ite c!90277 call!36384 (ite c!90279 call!36388 call!36383)))) (tuple2!10181 (_1!5100 (ite (or c!90277 c!90279) (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34) (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))) (_2!5100 (ite (or c!90277 c!90279) (tuple2!10181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34) (tuple2!10181 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))))))))

(declare-fun c!90730 () Bool)

(assert (=> bm!36502 (= c!90730 c!90732)))

(declare-fun bm!36503 () Bool)

(assert (=> bm!36503 (= call!36504 call!36505)))

(declare-fun b!833313 () Bool)

(assert (=> b!833313 (= e!464849 call!36506)))

(assert (= (and d!107269 c!90732) b!833313))

(assert (= (and d!107269 (not c!90732)) b!833307))

(assert (= (and b!833307 c!90731) b!833304))

(assert (= (and b!833307 (not c!90731)) b!833311))

(assert (= (and b!833311 c!90733) b!833310))

(assert (= (and b!833311 (not c!90733)) b!833312))

(assert (= (or b!833310 b!833312) bm!36503))

(assert (= (or b!833304 bm!36503) bm!36501))

(assert (= (or b!833313 bm!36501) bm!36502))

(assert (= (and bm!36502 c!90730) b!833308))

(assert (= (and bm!36502 (not c!90730)) b!833306))

(assert (= (and d!107269 res!566746) b!833305))

(assert (= (and b!833305 res!566745) b!833309))

(declare-fun m!778199 () Bool)

(assert (=> b!833305 m!778199))

(declare-fun m!778201 () Bool)

(assert (=> b!833308 m!778201))

(declare-fun m!778203 () Bool)

(assert (=> d!107269 m!778203))

(declare-fun m!778205 () Bool)

(assert (=> d!107269 m!778205))

(declare-fun m!778207 () Bool)

(assert (=> b!833309 m!778207))

(declare-fun m!778209 () Bool)

(assert (=> bm!36502 m!778209))

(assert (=> d!106287 d!107269))

(declare-fun b!833314 () Bool)

(declare-fun e!464854 () Bool)

(assert (=> b!833314 (= e!464854 tp_is_empty!15213)))

(declare-fun b!833315 () Bool)

(declare-fun e!464855 () Bool)

(assert (=> b!833315 (= e!464855 tp_is_empty!15213)))

(declare-fun condMapEmpty!24485 () Bool)

(declare-fun mapDefault!24485 () ValueCell!7191)

(assert (=> mapNonEmpty!24484 (= condMapEmpty!24485 (= mapRest!24484 ((as const (Array (_ BitVec 32) ValueCell!7191)) mapDefault!24485)))))

(declare-fun mapRes!24485 () Bool)

(assert (=> mapNonEmpty!24484 (= tp!47311 (and e!464855 mapRes!24485))))

(declare-fun mapIsEmpty!24485 () Bool)

(assert (=> mapIsEmpty!24485 mapRes!24485))

(declare-fun mapNonEmpty!24485 () Bool)

(declare-fun tp!47312 () Bool)

(assert (=> mapNonEmpty!24485 (= mapRes!24485 (and tp!47312 e!464854))))

(declare-fun mapKey!24485 () (_ BitVec 32))

(declare-fun mapRest!24485 () (Array (_ BitVec 32) ValueCell!7191))

(declare-fun mapValue!24485 () ValueCell!7191)

(assert (=> mapNonEmpty!24485 (= mapRest!24484 (store mapRest!24485 mapKey!24485 mapValue!24485))))

(assert (= (and mapNonEmpty!24484 condMapEmpty!24485) mapIsEmpty!24485))

(assert (= (and mapNonEmpty!24484 (not condMapEmpty!24485)) mapNonEmpty!24485))

(assert (= (and mapNonEmpty!24485 ((_ is ValueCellFull!7191) mapValue!24485)) b!833314))

(assert (= (and mapNonEmpty!24484 ((_ is ValueCellFull!7191) mapDefault!24485)) b!833315))

(declare-fun m!778211 () Bool)

(assert (=> mapNonEmpty!24485 m!778211))

(declare-fun b_lambda!11481 () Bool)

(assert (= b_lambda!11475 (or (and start!71606 b_free!13503) b_lambda!11481)))

(declare-fun b_lambda!11483 () Bool)

(assert (= b_lambda!11477 (or (and start!71606 b_free!13503) b_lambda!11483)))

(declare-fun b_lambda!11485 () Bool)

(assert (= b_lambda!11479 (or (and start!71606 b_free!13503) b_lambda!11485)))

(declare-fun b_lambda!11487 () Bool)

(assert (= b_lambda!11473 (or (and start!71606 b_free!13503) b_lambda!11487)))

(check-sat (not b!832711) (not b!832295) (not d!107257) (not b!832725) (not bm!36487) (not d!107183) (not d!107079) (not b!832876) (not b!832767) (not b!832853) (not d!107103) (not b!832737) (not bm!36452) (not b!832466) (not b_lambda!11455) (not bm!36428) (not b!832640) (not b!832677) (not b!832644) (not b!833063) (not d!106865) (not b!833096) (not d!106973) (not b_next!13503) (not d!106609) (not b!832507) (not b!833303) (not d!106893) (not b_lambda!11447) (not b!832394) (not d!106713) (not b!832749) (not b_lambda!11467) (not b!832982) (not d!106737) (not d!106777) (not b!832802) (not b!833014) (not b!832460) (not b!832858) (not b!832536) (not d!106771) (not d!107231) (not b!833011) (not b!833113) (not b!833247) (not d!106595) (not b!832329) (not b!833218) (not d!107249) (not d!106847) (not b!832883) (not b!832714) (not d!107219) (not b!832520) (not b!832708) (not b!832275) (not d!107061) (not d!106557) (not b!832810) (not b!832904) (not d!106651) (not b!832740) (not d!107201) (not b!832423) (not b!832529) (not d!106647) (not b!833009) (not d!106741) (not b!832683) (not b!832425) (not b_lambda!11483) (not bm!36499) (not d!107077) (not d!107245) (not b!832652) (not d!106875) (not d!107175) (not b!833177) (not b!832820) (not bm!36438) (not b!833076) (not d!107157) (not b!832373) (not d!106657) (not bm!36477) (not b!832390) (not b!832922) (not b!832549) (not d!106767) (not b!833183) (not b!832399) (not b!833048) (not b!832371) (not d!106677) (not b!833274) (not b!832967) (not b!832441) (not b!832894) (not d!106555) (not b_lambda!11487) (not d!106949) (not d!106899) (not d!107025) (not b!832934) (not d!107009) (not b!833031) (not b!833068) (not d!106567) (not d!106995) (not b!833023) (not b!832949) (not d!107115) (not b!832867) (not b!832453) (not d!106579) (not b!832664) (not b!833203) (not b!833039) (not b!832385) (not b!832406) (not b!833120) (not d!106697) (not d!107153) (not b!833243) (not b!832861) (not d!106877) (not b!832632) (not b!832895) (not d!106671) (not b!832789) (not b!832814) (not d!106913) (not b!832388) (not b!832524) (not b_lambda!11451) (not d!106943) (not b!832939) (not b!832448) (not b!832704) (not b!833022) (not d!106661) (not b!833245) (not b!833130) (not b!833297) (not b!832844) (not b!833000) (not b!832589) (not d!106597) (not b!832794) (not b!832481) (not d!106583) (not b!833241) (not b!832701) (not b!832735) (not bm!36496) (not b!832769) (not b!833037) (not d!107033) (not b!832463) (not b!832836) (not b!833150) (not bm!36468) (not d!106525) (not d!106515) (not b!832436) (not b!832653) (not b!832866) (not b!832438) (not b!832413) (not b!832902) (not b!832522) (not b!832588) (not d!106715) (not b!832407) (not b!833141) (not b!832822) (not b!832449) (not b!833217) (not d!107241) (not d!106813) (not b!832721) (not b!832297) (not b!832783) (not b!833173) (not d!107221) (not b!832307) (not d!106551) (not bm!36461) (not d!107111) (not d!106833) (not b!832743) (not d!106911) (not b!833107) (not b!832715) (not b!833034) (not b!832860) (not b!832808) (not b!832299) (not b!832691) (not b!833280) (not b!832500) (not b!832975) (not d!106739) (not b!833176) (not b!832693) (not d!106871) (not b_lambda!11453) (not b!832324) (not b!832992) (not b!832494) (not b!832660) (not d!106905) (not b!833078) (not b!832947) (not b!832401) (not d!107187) (not d!107171) (not d!106815) (not b!832346) (not b!833046) (not d!106937) (not b!832847) (not d!106577) (not b!832331) (not d!107269) (not d!107167) (not d!107151) (not d!107143) (not d!106965) (not b!832946) (not d!106549) (not d!106909) (not d!107101) (not b!833004) (not b!833142) (not b!833052) (not b!832327) (not d!107237) (not b!832826) (not b!832550) (not d!106589) (not b!832886) (not b!832852) (not b!833200) (not b!832989) (not b!832745) (not b!833051) (not bm!36481) (not b!832593) (not b!833212) (not b!832429) (not b!832734) (not b!832591) (not d!107105) (not d!106711) (not b!833054) (not b!832829) (not d!106917) (not d!106729) (not d!106881) (not b!832774) (not b!832605) (not d!106605) (not d!106829) (not d!106607) (not b!832951) (not b!832598) (not b!832891) (not b!832813) (not b!832729) (not d!106615) (not d!106891) (not d!107191) (not b!833041) (not d!107173) (not b!833308) (not b!833224) (not b_lambda!11445) (not b!832941) (not b!832612) (not b!832888) (not d!106933) (not b!832912) (not b!833156) (not d!106759) (not d!107019) (not b!833092) (not b!832942) (not b!833302) (not d!107141) (not b!833189) tp_is_empty!15213 (not b!832723) (not b!832439) (not b!832319) (not b!833309) (not b!833149) (not d!106773) (not bm!36471) (not b!832687) (not b!832889) (not b_lambda!11471) (not b!833123) (not b!833017) (not b!832355) (not b!832444) (not d!106639) (not b!833029) (not b!832919) (not b!832650) (not b!832986) (not d!106725) (not d!106991) (not d!107021) (not b!833295) (not b!832303) (not b!832909) (not b!833230) (not d!106617) (not b!832776) (not b!833104) (not b!832497) (not b!832915) (not b!833238) (not b!833089) (not b!832470) (not b!832824) (not b!832595) (not d!106845) (not b!832547) (not d!106843) (not b!832960) (not d!106527) (not b!832552) (not b!832788) (not b!832530) (not bm!36490) (not b!832535) (not b!832732) (not b!832326) (not b!832475) (not d!106853) (not d!107125) (not b!833236) (not d!106731) (not b!832726) (not b!832995) (not bm!36449) (not b!833050) (not bm!36436) (not b!832344) (not b!832699) (not d!107121) (not d!106623) (not b!832759) (not d!107063) (not b!832748) (not b!832955) (not d!106757) (not b_lambda!11465) (not b!832658) (not b!833234) (not b!832573) (not b!832473) (not d!107259) (not mapNonEmpty!24485) (not d!107055) (not d!107185) (not b!832511) (not b!832656) (not b!833114) (not b!833129) (not b!832863) (not b!833163) (not b!832695) (not d!107075) (not d!106895) (not b!832928) (not b!833057) (not b!832476) (not b!832977) (not b!832592) (not b!832492) (not b!833162) (not b!832702) (not b!833292) (not b!832478) (not b!833067) (not b!832618) (not b!833171) (not b!832675) (not b!832603) (not d!106779) (not b!832287) (not b!832600) (not b!832590) (not d!106957) (not d!106629) (not b!832979) (not bm!36455) (not b!833249) (not b!832771) (not d!106883) (not b!832936) (not d!106707) (not b!832375) (not b_lambda!11469) (not d!106793) (not b!833082) (not b!832622) (not d!106837) (not b!832954) (not b!833252) (not b!833152) (not d!106981) (not d!106809) (not b!832920) (not b!833100) (not d!107029) (not d!106985) (not d!106963) (not d!106541) (not b!832791) (not d!107179) (not b!832846) (not b!832842) (not b!832334) (not d!106637) (not b!832781) (not b!833144) (not b!832924) (not b!832343) (not b_lambda!11481) (not bm!36430) (not b!832435) (not b!832937) (not b!832764) (not b!832513) (not b!832850) (not b!832412) (not b!832625) (not b!833019) (not b!832990) (not b!832409) (not b!832671) (not b!832442) (not bm!36446) (not b!832917) (not b!833139) (not b!833210) (not bm!36502) (not b!833196) (not b!833206) (not b!833016) (not d!107217) (not b!833165) (not d!107127) (not b!832697) (not d!106675) (not d!107027) (not d!107159) (not b!832786) (not b!832807) (not b!832606) (not d!107045) (not b!832321) (not b!832314) (not d!106953) (not b!832532) (not b!832365) (not d!106819) (not d!107035) (not b!833215) (not d!106839) (not b!833209) (not b!832608) b_and!22609 (not d!107235) (not b!832742) (not b!832404) (not b!832284) (not d!106969) (not b!833192) (not b!832582) (not b!832393) (not b!832805) (not b!832629) (not b!833042) (not d!107067) (not d!106861) (not b!833060) (not d!106919) (not d!107097) (not b!832419) (not d!106643) (not b!832335) (not d!106979) (not bm!36479) (not b!833003) (not b!833073) (not b!832446) (not b!832457) (not b!832503) (not b!832881) (not d!106939) (not bm!36463) (not b!833137) (not d!106987) (not d!107119) (not b!833065) (not b!832468) (not d!106603) (not b!832352) (not b!833170) (not b!832835) (not b!832907) (not d!107213) (not d!107071) (not d!106621) (not d!107031) (not b!832706) (not b!832963) (not d!106817) (not d!106999) (not b!833223) (not d!106601) (not d!106747) (not b!833300) (not bm!36458) (not d!107131) (not b!832703) (not b!832944) (not b!833254) (not d!106835) (not d!107069) (not b!832795) (not b!832379) (not b!833070) (not b!833075) (not b!832377) (not d!107177) (not b!832997) (not d!106533) (not b!832972) (not d!106619) (not b!832647) (not d!106653) (not b!832482) (not b!832542) (not b!832969) (not b!832778) (not b!832341) (not b!833220) (not d!107267) (not b!832667) (not d!106975) (not b!832421) (not b!832681) (not d!106869) (not b!833294) (not d!106547) (not b!832358) (not bm!36433) (not b!832428) (not d!107037) (not b!833282) (not b!832643) (not b!832879) (not b!832679) (not b!833231) (not b!832516) (not b!833043) (not d!106709) (not bm!36440) (not b!832705) (not b!832855) (not b!832926) (not d!106959) (not b!833126) (not b!832317) (not b!833098) (not b!832874) (not b!832349) (not d!106789) (not b!833278) (not b!833147) (not b!832311) (not d!106901) (not b!833110) (not d!106783) (not b!833102) (not b_lambda!11485) (not b!833081) (not b!832506) (not b!832780) (not d!106553) (not b!832586) (not b!832545) (not b!833155) (not bm!36465) (not b!832931) (not d!106841) (not b!832282) (not b!833094) (not b!832633) (not b!832509) (not d!106561) (not d!106587) (not b!832382) (not b!832620) (not b!832998) (not d!107001) (not b!832800) (not b!833285) (not b_lambda!11449) (not b!832757) (not d!106781) (not b!832611) (not b!833257) (not d!106733) (not b!832462) (not bm!36493) (not b!832362) (not b!832291) (not b!832333) (not b!833305) (not b!832832) (not d!106699) (not b!833135) (not b!832450) (not b!832689) (not b!832762) (not b!832348) (not d!107107) (not d!106867) (not b!832754) (not b!833062) (not d!107147) (not b!832527) (not bm!36484) (not b!832323) (not b!832597) (not d!107263) (not b!833168) (not b!833286) (not d!107047) (not b!832773) (not b!832685) (not b!832636) (not bm!36474) (not d!107227) (not d!107163) (not d!106851) (not b!832381) (not d!107223) (not d!107239) (not b!832662) (not d!106723) (not bm!36443) (not b!832489) (not d!106693) (not d!106517))
(check-sat b_and!22609 (not b_next!13503))

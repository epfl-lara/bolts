; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!70768 () Bool)

(assert start!70768)

(declare-fun b_free!13017 () Bool)

(declare-fun b_next!13017 () Bool)

(assert (=> start!70768 (= b_free!13017 (not b_next!13017))))

(declare-fun tp!45792 () Bool)

(declare-fun b_and!21897 () Bool)

(assert (=> start!70768 (= tp!45792 b_and!21897)))

(declare-fun b!821562 () Bool)

(declare-fun e!456680 () Bool)

(declare-fun e!456678 () Bool)

(declare-fun mapRes!23698 () Bool)

(assert (=> b!821562 (= e!456680 (and e!456678 mapRes!23698))))

(declare-fun condMapEmpty!23698 () Bool)

(declare-datatypes ((V!24637 0))(
  ( (V!24638 (val!7411 Int)) )
))
(declare-datatypes ((ValueCell!6948 0))(
  ( (ValueCellFull!6948 (v!9838 V!24637)) (EmptyCell!6948) )
))
(declare-datatypes ((array!45608 0))(
  ( (array!45609 (arr!21851 (Array (_ BitVec 32) ValueCell!6948)) (size!22272 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45608)

(declare-fun mapDefault!23698 () ValueCell!6948)

(assert (=> b!821562 (= condMapEmpty!23698 (= (arr!21851 _values!788) ((as const (Array (_ BitVec 32) ValueCell!6948)) mapDefault!23698)))))

(declare-fun b!821563 () Bool)

(declare-fun e!456682 () Bool)

(declare-datatypes ((array!45610 0))(
  ( (array!45611 (arr!21852 (Array (_ BitVec 32) (_ BitVec 64))) (size!22273 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45610)

(assert (=> b!821563 (= e!456682 (bvsle #b00000000000000000000000000000000 (size!22273 _keys!976)))))

(declare-fun zeroValueBefore!34 () V!24637)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun minValue!754 () V!24637)

(declare-datatypes ((tuple2!9776 0))(
  ( (tuple2!9777 (_1!4898 (_ BitVec 64)) (_2!4898 V!24637)) )
))
(declare-datatypes ((List!15636 0))(
  ( (Nil!15633) (Cons!15632 (h!16761 tuple2!9776) (t!21979 List!15636)) )
))
(declare-datatypes ((ListLongMap!8613 0))(
  ( (ListLongMap!8614 (toList!4322 List!15636)) )
))
(declare-fun lt!369309 () ListLongMap!8613)

(declare-fun getCurrentListMap!2457 (array!45610 array!45608 (_ BitVec 32) (_ BitVec 32) V!24637 V!24637 (_ BitVec 32) Int) ListLongMap!8613)

(assert (=> b!821563 (= lt!369309 (getCurrentListMap!2457 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!821564 () Bool)

(declare-fun tp_is_empty!14727 () Bool)

(assert (=> b!821564 (= e!456678 tp_is_empty!14727)))

(declare-fun b!821565 () Bool)

(declare-fun res!560544 () Bool)

(declare-fun e!456681 () Bool)

(assert (=> b!821565 (=> (not res!560544) (not e!456681))))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!821565 (= res!560544 (and (= (size!22272 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22273 _keys!976) (size!22272 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun mapNonEmpty!23698 () Bool)

(declare-fun tp!45793 () Bool)

(declare-fun e!456677 () Bool)

(assert (=> mapNonEmpty!23698 (= mapRes!23698 (and tp!45793 e!456677))))

(declare-fun mapValue!23698 () ValueCell!6948)

(declare-fun mapKey!23698 () (_ BitVec 32))

(declare-fun mapRest!23698 () (Array (_ BitVec 32) ValueCell!6948))

(assert (=> mapNonEmpty!23698 (= (arr!21851 _values!788) (store mapRest!23698 mapKey!23698 mapValue!23698))))

(declare-fun res!560547 () Bool)

(assert (=> start!70768 (=> (not res!560547) (not e!456681))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70768 (= res!560547 (validMask!0 mask!1312))))

(assert (=> start!70768 e!456681))

(assert (=> start!70768 tp_is_empty!14727))

(declare-fun array_inv!17429 (array!45610) Bool)

(assert (=> start!70768 (array_inv!17429 _keys!976)))

(assert (=> start!70768 true))

(declare-fun array_inv!17430 (array!45608) Bool)

(assert (=> start!70768 (and (array_inv!17430 _values!788) e!456680)))

(assert (=> start!70768 tp!45792))

(declare-fun b!821566 () Bool)

(declare-fun res!560546 () Bool)

(assert (=> b!821566 (=> (not res!560546) (not e!456681))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!45610 (_ BitVec 32)) Bool)

(assert (=> b!821566 (= res!560546 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun mapIsEmpty!23698 () Bool)

(assert (=> mapIsEmpty!23698 mapRes!23698))

(declare-fun b!821567 () Bool)

(assert (=> b!821567 (= e!456681 (not e!456682))))

(declare-fun res!560548 () Bool)

(assert (=> b!821567 (=> res!560548 e!456682)))

(assert (=> b!821567 (= res!560548 (or (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun lt!369307 () ListLongMap!8613)

(declare-fun lt!369308 () ListLongMap!8613)

(assert (=> b!821567 (= lt!369307 lt!369308)))

(declare-datatypes ((Unit!28087 0))(
  ( (Unit!28088) )
))
(declare-fun lt!369310 () Unit!28087)

(declare-fun zeroValueAfter!34 () V!24637)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!467 (array!45610 array!45608 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24637 V!24637 V!24637 V!24637 (_ BitVec 32) Int) Unit!28087)

(assert (=> b!821567 (= lt!369310 (lemmaNoChangeToArrayThenSameMapNoExtras!467 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2351 (array!45610 array!45608 (_ BitVec 32) (_ BitVec 32) V!24637 V!24637 (_ BitVec 32) Int) ListLongMap!8613)

(assert (=> b!821567 (= lt!369308 (getCurrentListMapNoExtraKeys!2351 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!821567 (= lt!369307 (getCurrentListMapNoExtraKeys!2351 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!821568 () Bool)

(assert (=> b!821568 (= e!456677 tp_is_empty!14727)))

(declare-fun b!821569 () Bool)

(declare-fun res!560545 () Bool)

(assert (=> b!821569 (=> (not res!560545) (not e!456681))))

(declare-datatypes ((List!15637 0))(
  ( (Nil!15634) (Cons!15633 (h!16762 (_ BitVec 64)) (t!21980 List!15637)) )
))
(declare-fun arrayNoDuplicates!0 (array!45610 (_ BitVec 32) List!15637) Bool)

(assert (=> b!821569 (= res!560545 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15634))))

(assert (= (and start!70768 res!560547) b!821565))

(assert (= (and b!821565 res!560544) b!821566))

(assert (= (and b!821566 res!560546) b!821569))

(assert (= (and b!821569 res!560545) b!821567))

(assert (= (and b!821567 (not res!560548)) b!821563))

(assert (= (and b!821562 condMapEmpty!23698) mapIsEmpty!23698))

(assert (= (and b!821562 (not condMapEmpty!23698)) mapNonEmpty!23698))

(get-info :version)

(assert (= (and mapNonEmpty!23698 ((_ is ValueCellFull!6948) mapValue!23698)) b!821568))

(assert (= (and b!821562 ((_ is ValueCellFull!6948) mapDefault!23698)) b!821564))

(assert (= start!70768 b!821562))

(declare-fun m!763403 () Bool)

(assert (=> b!821563 m!763403))

(declare-fun m!763405 () Bool)

(assert (=> b!821566 m!763405))

(declare-fun m!763407 () Bool)

(assert (=> start!70768 m!763407))

(declare-fun m!763409 () Bool)

(assert (=> start!70768 m!763409))

(declare-fun m!763411 () Bool)

(assert (=> start!70768 m!763411))

(declare-fun m!763413 () Bool)

(assert (=> b!821567 m!763413))

(declare-fun m!763415 () Bool)

(assert (=> b!821567 m!763415))

(declare-fun m!763417 () Bool)

(assert (=> b!821567 m!763417))

(declare-fun m!763419 () Bool)

(assert (=> b!821569 m!763419))

(declare-fun m!763421 () Bool)

(assert (=> mapNonEmpty!23698 m!763421))

(check-sat (not b!821567) (not mapNonEmpty!23698) (not b!821563) (not start!70768) b_and!21897 (not b!821569) tp_is_empty!14727 (not b!821566) (not b_next!13017))
(check-sat b_and!21897 (not b_next!13017))
(get-model)

(declare-fun bm!35734 () Bool)

(declare-fun call!35739 () ListLongMap!8613)

(declare-fun call!35737 () ListLongMap!8613)

(assert (=> bm!35734 (= call!35739 call!35737)))

(declare-fun b!821636 () Bool)

(declare-fun e!456735 () ListLongMap!8613)

(declare-fun e!456734 () ListLongMap!8613)

(assert (=> b!821636 (= e!456735 e!456734)))

(declare-fun c!89165 () Bool)

(assert (=> b!821636 (= c!89165 (and (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun c!89164 () Bool)

(declare-fun call!35742 () ListLongMap!8613)

(declare-fun bm!35735 () Bool)

(declare-fun call!35741 () ListLongMap!8613)

(declare-fun call!35740 () ListLongMap!8613)

(declare-fun +!1827 (ListLongMap!8613 tuple2!9776) ListLongMap!8613)

(assert (=> bm!35735 (= call!35737 (+!1827 (ite c!89164 call!35741 (ite c!89165 call!35742 call!35740)) (ite (or c!89164 c!89165) (tuple2!9777 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34) (tuple2!9777 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))

(declare-fun b!821637 () Bool)

(declare-fun res!560585 () Bool)

(declare-fun e!456739 () Bool)

(assert (=> b!821637 (=> (not res!560585) (not e!456739))))

(declare-fun e!456731 () Bool)

(assert (=> b!821637 (= res!560585 e!456731)))

(declare-fun c!89168 () Bool)

(assert (=> b!821637 (= c!89168 (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!821638 () Bool)

(declare-fun e!456728 () Bool)

(assert (=> b!821638 (= e!456731 e!456728)))

(declare-fun res!560588 () Bool)

(declare-fun call!35738 () Bool)

(assert (=> b!821638 (= res!560588 call!35738)))

(assert (=> b!821638 (=> (not res!560588) (not e!456728))))

(declare-fun b!821639 () Bool)

(declare-fun e!456738 () Unit!28087)

(declare-fun lt!369385 () Unit!28087)

(assert (=> b!821639 (= e!456738 lt!369385)))

(declare-fun lt!369384 () ListLongMap!8613)

(assert (=> b!821639 (= lt!369384 (getCurrentListMapNoExtraKeys!2351 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!369377 () (_ BitVec 64))

(assert (=> b!821639 (= lt!369377 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!369378 () (_ BitVec 64))

(assert (=> b!821639 (= lt!369378 (select (arr!21852 _keys!976) #b00000000000000000000000000000000))))

(declare-fun lt!369381 () Unit!28087)

(declare-fun addStillContains!310 (ListLongMap!8613 (_ BitVec 64) V!24637 (_ BitVec 64)) Unit!28087)

(assert (=> b!821639 (= lt!369381 (addStillContains!310 lt!369384 lt!369377 zeroValueBefore!34 lt!369378))))

(declare-fun contains!4167 (ListLongMap!8613 (_ BitVec 64)) Bool)

(assert (=> b!821639 (contains!4167 (+!1827 lt!369384 (tuple2!9777 lt!369377 zeroValueBefore!34)) lt!369378)))

(declare-fun lt!369380 () Unit!28087)

(assert (=> b!821639 (= lt!369380 lt!369381)))

(declare-fun lt!369376 () ListLongMap!8613)

(assert (=> b!821639 (= lt!369376 (getCurrentListMapNoExtraKeys!2351 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!369373 () (_ BitVec 64))

(assert (=> b!821639 (= lt!369373 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!369387 () (_ BitVec 64))

(assert (=> b!821639 (= lt!369387 (select (arr!21852 _keys!976) #b00000000000000000000000000000000))))

(declare-fun lt!369379 () Unit!28087)

(declare-fun addApplyDifferent!310 (ListLongMap!8613 (_ BitVec 64) V!24637 (_ BitVec 64)) Unit!28087)

(assert (=> b!821639 (= lt!369379 (addApplyDifferent!310 lt!369376 lt!369373 minValue!754 lt!369387))))

(declare-fun apply!357 (ListLongMap!8613 (_ BitVec 64)) V!24637)

(assert (=> b!821639 (= (apply!357 (+!1827 lt!369376 (tuple2!9777 lt!369373 minValue!754)) lt!369387) (apply!357 lt!369376 lt!369387))))

(declare-fun lt!369367 () Unit!28087)

(assert (=> b!821639 (= lt!369367 lt!369379)))

(declare-fun lt!369368 () ListLongMap!8613)

(assert (=> b!821639 (= lt!369368 (getCurrentListMapNoExtraKeys!2351 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!369370 () (_ BitVec 64))

(assert (=> b!821639 (= lt!369370 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!369388 () (_ BitVec 64))

(assert (=> b!821639 (= lt!369388 (select (arr!21852 _keys!976) #b00000000000000000000000000000000))))

(declare-fun lt!369386 () Unit!28087)

(assert (=> b!821639 (= lt!369386 (addApplyDifferent!310 lt!369368 lt!369370 zeroValueBefore!34 lt!369388))))

(assert (=> b!821639 (= (apply!357 (+!1827 lt!369368 (tuple2!9777 lt!369370 zeroValueBefore!34)) lt!369388) (apply!357 lt!369368 lt!369388))))

(declare-fun lt!369382 () Unit!28087)

(assert (=> b!821639 (= lt!369382 lt!369386)))

(declare-fun lt!369374 () ListLongMap!8613)

(assert (=> b!821639 (= lt!369374 (getCurrentListMapNoExtraKeys!2351 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!369383 () (_ BitVec 64))

(assert (=> b!821639 (= lt!369383 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!369375 () (_ BitVec 64))

(assert (=> b!821639 (= lt!369375 (select (arr!21852 _keys!976) #b00000000000000000000000000000000))))

(assert (=> b!821639 (= lt!369385 (addApplyDifferent!310 lt!369374 lt!369383 minValue!754 lt!369375))))

(assert (=> b!821639 (= (apply!357 (+!1827 lt!369374 (tuple2!9777 lt!369383 minValue!754)) lt!369375) (apply!357 lt!369374 lt!369375))))

(declare-fun b!821640 () Bool)

(declare-fun e!456733 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!821640 (= e!456733 (validKeyInArray!0 (select (arr!21852 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun bm!35736 () Bool)

(declare-fun call!35743 () Bool)

(declare-fun lt!369371 () ListLongMap!8613)

(assert (=> bm!35736 (= call!35743 (contains!4167 lt!369371 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!104713 () Bool)

(assert (=> d!104713 e!456739))

(declare-fun res!560586 () Bool)

(assert (=> d!104713 (=> (not res!560586) (not e!456739))))

(assert (=> d!104713 (= res!560586 (or (bvsge #b00000000000000000000000000000000 (size!22273 _keys!976)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22273 _keys!976)))))))

(declare-fun lt!369372 () ListLongMap!8613)

(assert (=> d!104713 (= lt!369371 lt!369372)))

(declare-fun lt!369369 () Unit!28087)

(assert (=> d!104713 (= lt!369369 e!456738)))

(declare-fun c!89169 () Bool)

(assert (=> d!104713 (= c!89169 e!456733)))

(declare-fun res!560582 () Bool)

(assert (=> d!104713 (=> (not res!560582) (not e!456733))))

(assert (=> d!104713 (= res!560582 (bvslt #b00000000000000000000000000000000 (size!22273 _keys!976)))))

(assert (=> d!104713 (= lt!369372 e!456735)))

(assert (=> d!104713 (= c!89164 (and (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!104713 (validMask!0 mask!1312)))

(assert (=> d!104713 (= (getCurrentListMap!2457 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) lt!369371)))

(declare-fun b!821641 () Bool)

(declare-fun e!456727 () ListLongMap!8613)

(assert (=> b!821641 (= e!456727 call!35740)))

(declare-fun b!821642 () Bool)

(declare-fun c!89167 () Bool)

(assert (=> b!821642 (= c!89167 (and (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!821642 (= e!456734 e!456727)))

(declare-fun b!821643 () Bool)

(declare-fun e!456729 () Bool)

(assert (=> b!821643 (= e!456729 (= (apply!357 lt!369371 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!754))))

(declare-fun bm!35737 () Bool)

(assert (=> bm!35737 (= call!35738 (contains!4167 lt!369371 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!821644 () Bool)

(assert (=> b!821644 (= e!456728 (= (apply!357 lt!369371 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValueBefore!34))))

(declare-fun b!821645 () Bool)

(declare-fun e!456737 () Bool)

(assert (=> b!821645 (= e!456739 e!456737)))

(declare-fun c!89166 () Bool)

(assert (=> b!821645 (= c!89166 (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun e!456736 () Bool)

(declare-fun b!821646 () Bool)

(declare-fun get!11647 (ValueCell!6948 V!24637) V!24637)

(declare-fun dynLambda!967 (Int (_ BitVec 64)) V!24637)

(assert (=> b!821646 (= e!456736 (= (apply!357 lt!369371 (select (arr!21852 _keys!976) #b00000000000000000000000000000000)) (get!11647 (select (arr!21851 _values!788) #b00000000000000000000000000000000) (dynLambda!967 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!821646 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22272 _values!788)))))

(assert (=> b!821646 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22273 _keys!976)))))

(declare-fun bm!35738 () Bool)

(assert (=> bm!35738 (= call!35741 (getCurrentListMapNoExtraKeys!2351 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!821647 () Bool)

(declare-fun Unit!28089 () Unit!28087)

(assert (=> b!821647 (= e!456738 Unit!28089)))

(declare-fun bm!35739 () Bool)

(assert (=> bm!35739 (= call!35740 call!35742)))

(declare-fun b!821648 () Bool)

(assert (=> b!821648 (= e!456734 call!35739)))

(declare-fun b!821649 () Bool)

(assert (=> b!821649 (= e!456737 e!456729)))

(declare-fun res!560590 () Bool)

(assert (=> b!821649 (= res!560590 call!35743)))

(assert (=> b!821649 (=> (not res!560590) (not e!456729))))

(declare-fun b!821650 () Bool)

(declare-fun res!560584 () Bool)

(assert (=> b!821650 (=> (not res!560584) (not e!456739))))

(declare-fun e!456732 () Bool)

(assert (=> b!821650 (= res!560584 e!456732)))

(declare-fun res!560587 () Bool)

(assert (=> b!821650 (=> res!560587 e!456732)))

(declare-fun e!456730 () Bool)

(assert (=> b!821650 (= res!560587 (not e!456730))))

(declare-fun res!560583 () Bool)

(assert (=> b!821650 (=> (not res!560583) (not e!456730))))

(assert (=> b!821650 (= res!560583 (bvslt #b00000000000000000000000000000000 (size!22273 _keys!976)))))

(declare-fun b!821651 () Bool)

(assert (=> b!821651 (= e!456737 (not call!35743))))

(declare-fun b!821652 () Bool)

(assert (=> b!821652 (= e!456732 e!456736)))

(declare-fun res!560589 () Bool)

(assert (=> b!821652 (=> (not res!560589) (not e!456736))))

(assert (=> b!821652 (= res!560589 (contains!4167 lt!369371 (select (arr!21852 _keys!976) #b00000000000000000000000000000000)))))

(assert (=> b!821652 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22273 _keys!976)))))

(declare-fun b!821653 () Bool)

(assert (=> b!821653 (= e!456727 call!35739)))

(declare-fun b!821654 () Bool)

(assert (=> b!821654 (= e!456735 (+!1827 call!35737 (tuple2!9777 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))))

(declare-fun bm!35740 () Bool)

(assert (=> bm!35740 (= call!35742 call!35741)))

(declare-fun b!821655 () Bool)

(assert (=> b!821655 (= e!456731 (not call!35738))))

(declare-fun b!821656 () Bool)

(assert (=> b!821656 (= e!456730 (validKeyInArray!0 (select (arr!21852 _keys!976) #b00000000000000000000000000000000)))))

(assert (= (and d!104713 c!89164) b!821654))

(assert (= (and d!104713 (not c!89164)) b!821636))

(assert (= (and b!821636 c!89165) b!821648))

(assert (= (and b!821636 (not c!89165)) b!821642))

(assert (= (and b!821642 c!89167) b!821653))

(assert (= (and b!821642 (not c!89167)) b!821641))

(assert (= (or b!821653 b!821641) bm!35739))

(assert (= (or b!821648 bm!35739) bm!35740))

(assert (= (or b!821648 b!821653) bm!35734))

(assert (= (or b!821654 bm!35740) bm!35738))

(assert (= (or b!821654 bm!35734) bm!35735))

(assert (= (and d!104713 res!560582) b!821640))

(assert (= (and d!104713 c!89169) b!821639))

(assert (= (and d!104713 (not c!89169)) b!821647))

(assert (= (and d!104713 res!560586) b!821650))

(assert (= (and b!821650 res!560583) b!821656))

(assert (= (and b!821650 (not res!560587)) b!821652))

(assert (= (and b!821652 res!560589) b!821646))

(assert (= (and b!821650 res!560584) b!821637))

(assert (= (and b!821637 c!89168) b!821638))

(assert (= (and b!821637 (not c!89168)) b!821655))

(assert (= (and b!821638 res!560588) b!821644))

(assert (= (or b!821638 b!821655) bm!35737))

(assert (= (and b!821637 res!560585) b!821645))

(assert (= (and b!821645 c!89166) b!821649))

(assert (= (and b!821645 (not c!89166)) b!821651))

(assert (= (and b!821649 res!560590) b!821643))

(assert (= (or b!821649 b!821651) bm!35736))

(declare-fun b_lambda!11041 () Bool)

(assert (=> (not b_lambda!11041) (not b!821646)))

(declare-fun t!21982 () Bool)

(declare-fun tb!4203 () Bool)

(assert (=> (and start!70768 (= defaultEntry!796 defaultEntry!796) t!21982) tb!4203))

(declare-fun result!7933 () Bool)

(assert (=> tb!4203 (= result!7933 tp_is_empty!14727)))

(assert (=> b!821646 t!21982))

(declare-fun b_and!21901 () Bool)

(assert (= b_and!21897 (and (=> t!21982 result!7933) b_and!21901)))

(declare-fun m!763443 () Bool)

(assert (=> b!821654 m!763443))

(assert (=> bm!35738 m!763417))

(declare-fun m!763445 () Bool)

(assert (=> b!821646 m!763445))

(declare-fun m!763447 () Bool)

(assert (=> b!821646 m!763447))

(declare-fun m!763449 () Bool)

(assert (=> b!821646 m!763449))

(declare-fun m!763451 () Bool)

(assert (=> b!821646 m!763451))

(assert (=> b!821646 m!763451))

(declare-fun m!763453 () Bool)

(assert (=> b!821646 m!763453))

(assert (=> b!821646 m!763447))

(assert (=> b!821646 m!763445))

(declare-fun m!763455 () Bool)

(assert (=> b!821643 m!763455))

(assert (=> b!821652 m!763451))

(assert (=> b!821652 m!763451))

(declare-fun m!763457 () Bool)

(assert (=> b!821652 m!763457))

(assert (=> d!104713 m!763407))

(declare-fun m!763459 () Bool)

(assert (=> bm!35736 m!763459))

(assert (=> b!821656 m!763451))

(assert (=> b!821656 m!763451))

(declare-fun m!763461 () Bool)

(assert (=> b!821656 m!763461))

(assert (=> b!821640 m!763451))

(assert (=> b!821640 m!763451))

(assert (=> b!821640 m!763461))

(declare-fun m!763463 () Bool)

(assert (=> b!821644 m!763463))

(declare-fun m!763465 () Bool)

(assert (=> bm!35735 m!763465))

(declare-fun m!763467 () Bool)

(assert (=> bm!35737 m!763467))

(declare-fun m!763469 () Bool)

(assert (=> b!821639 m!763469))

(assert (=> b!821639 m!763451))

(declare-fun m!763471 () Bool)

(assert (=> b!821639 m!763471))

(declare-fun m!763473 () Bool)

(assert (=> b!821639 m!763473))

(declare-fun m!763475 () Bool)

(assert (=> b!821639 m!763475))

(declare-fun m!763477 () Bool)

(assert (=> b!821639 m!763477))

(assert (=> b!821639 m!763469))

(declare-fun m!763479 () Bool)

(assert (=> b!821639 m!763479))

(assert (=> b!821639 m!763473))

(declare-fun m!763481 () Bool)

(assert (=> b!821639 m!763481))

(declare-fun m!763483 () Bool)

(assert (=> b!821639 m!763483))

(declare-fun m!763485 () Bool)

(assert (=> b!821639 m!763485))

(assert (=> b!821639 m!763417))

(declare-fun m!763487 () Bool)

(assert (=> b!821639 m!763487))

(declare-fun m!763489 () Bool)

(assert (=> b!821639 m!763489))

(assert (=> b!821639 m!763489))

(declare-fun m!763491 () Bool)

(assert (=> b!821639 m!763491))

(declare-fun m!763493 () Bool)

(assert (=> b!821639 m!763493))

(declare-fun m!763495 () Bool)

(assert (=> b!821639 m!763495))

(assert (=> b!821639 m!763483))

(declare-fun m!763497 () Bool)

(assert (=> b!821639 m!763497))

(assert (=> b!821563 d!104713))

(declare-fun d!104715 () Bool)

(assert (=> d!104715 (= (getCurrentListMapNoExtraKeys!2351 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) (getCurrentListMapNoExtraKeys!2351 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!369391 () Unit!28087)

(declare-fun choose!1406 (array!45610 array!45608 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24637 V!24637 V!24637 V!24637 (_ BitVec 32) Int) Unit!28087)

(assert (=> d!104715 (= lt!369391 (choose!1406 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> d!104715 (validMask!0 mask!1312)))

(assert (=> d!104715 (= (lemmaNoChangeToArrayThenSameMapNoExtras!467 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) lt!369391)))

(declare-fun bs!22917 () Bool)

(assert (= bs!22917 d!104715))

(assert (=> bs!22917 m!763417))

(assert (=> bs!22917 m!763415))

(declare-fun m!763499 () Bool)

(assert (=> bs!22917 m!763499))

(assert (=> bs!22917 m!763407))

(assert (=> b!821567 d!104715))

(declare-fun b!821683 () Bool)

(declare-fun e!456754 () Bool)

(declare-fun e!456759 () Bool)

(assert (=> b!821683 (= e!456754 e!456759)))

(declare-fun c!89181 () Bool)

(declare-fun e!456756 () Bool)

(assert (=> b!821683 (= c!89181 e!456756)))

(declare-fun res!560601 () Bool)

(assert (=> b!821683 (=> (not res!560601) (not e!456756))))

(assert (=> b!821683 (= res!560601 (bvslt #b00000000000000000000000000000000 (size!22273 _keys!976)))))

(declare-fun b!821684 () Bool)

(declare-fun e!456760 () Bool)

(assert (=> b!821684 (= e!456759 e!456760)))

(assert (=> b!821684 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22273 _keys!976)))))

(declare-fun res!560599 () Bool)

(declare-fun lt!369412 () ListLongMap!8613)

(assert (=> b!821684 (= res!560599 (contains!4167 lt!369412 (select (arr!21852 _keys!976) #b00000000000000000000000000000000)))))

(assert (=> b!821684 (=> (not res!560599) (not e!456760))))

(declare-fun e!456755 () Bool)

(declare-fun b!821685 () Bool)

(assert (=> b!821685 (= e!456755 (= lt!369412 (getCurrentListMapNoExtraKeys!2351 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!796)))))

(declare-fun b!821686 () Bool)

(declare-fun res!560602 () Bool)

(assert (=> b!821686 (=> (not res!560602) (not e!456754))))

(assert (=> b!821686 (= res!560602 (not (contains!4167 lt!369412 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bm!35743 () Bool)

(declare-fun call!35746 () ListLongMap!8613)

(assert (=> bm!35743 (= call!35746 (getCurrentListMapNoExtraKeys!2351 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!796))))

(declare-fun d!104717 () Bool)

(assert (=> d!104717 e!456754))

(declare-fun res!560600 () Bool)

(assert (=> d!104717 (=> (not res!560600) (not e!456754))))

(assert (=> d!104717 (= res!560600 (not (contains!4167 lt!369412 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!456757 () ListLongMap!8613)

(assert (=> d!104717 (= lt!369412 e!456757)))

(declare-fun c!89178 () Bool)

(assert (=> d!104717 (= c!89178 (bvsge #b00000000000000000000000000000000 (size!22273 _keys!976)))))

(assert (=> d!104717 (validMask!0 mask!1312)))

(assert (=> d!104717 (= (getCurrentListMapNoExtraKeys!2351 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) lt!369412)))

(declare-fun b!821687 () Bool)

(declare-fun isEmpty!644 (ListLongMap!8613) Bool)

(assert (=> b!821687 (= e!456755 (isEmpty!644 lt!369412))))

(declare-fun b!821688 () Bool)

(assert (=> b!821688 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22273 _keys!976)))))

(assert (=> b!821688 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22272 _values!788)))))

(assert (=> b!821688 (= e!456760 (= (apply!357 lt!369412 (select (arr!21852 _keys!976) #b00000000000000000000000000000000)) (get!11647 (select (arr!21851 _values!788) #b00000000000000000000000000000000) (dynLambda!967 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!821689 () Bool)

(declare-fun e!456758 () ListLongMap!8613)

(assert (=> b!821689 (= e!456757 e!456758)))

(declare-fun c!89179 () Bool)

(assert (=> b!821689 (= c!89179 (validKeyInArray!0 (select (arr!21852 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun b!821690 () Bool)

(assert (=> b!821690 (= e!456759 e!456755)))

(declare-fun c!89180 () Bool)

(assert (=> b!821690 (= c!89180 (bvslt #b00000000000000000000000000000000 (size!22273 _keys!976)))))

(declare-fun b!821691 () Bool)

(assert (=> b!821691 (= e!456757 (ListLongMap!8614 Nil!15633))))

(declare-fun b!821692 () Bool)

(assert (=> b!821692 (= e!456756 (validKeyInArray!0 (select (arr!21852 _keys!976) #b00000000000000000000000000000000)))))

(assert (=> b!821692 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!821693 () Bool)

(declare-fun lt!369409 () Unit!28087)

(declare-fun lt!369408 () Unit!28087)

(assert (=> b!821693 (= lt!369409 lt!369408)))

(declare-fun lt!369410 () (_ BitVec 64))

(declare-fun lt!369407 () (_ BitVec 64))

(declare-fun lt!369411 () V!24637)

(declare-fun lt!369406 () ListLongMap!8613)

(assert (=> b!821693 (not (contains!4167 (+!1827 lt!369406 (tuple2!9777 lt!369407 lt!369411)) lt!369410))))

(declare-fun addStillNotContains!184 (ListLongMap!8613 (_ BitVec 64) V!24637 (_ BitVec 64)) Unit!28087)

(assert (=> b!821693 (= lt!369408 (addStillNotContains!184 lt!369406 lt!369407 lt!369411 lt!369410))))

(assert (=> b!821693 (= lt!369410 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!821693 (= lt!369411 (get!11647 (select (arr!21851 _values!788) #b00000000000000000000000000000000) (dynLambda!967 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!821693 (= lt!369407 (select (arr!21852 _keys!976) #b00000000000000000000000000000000))))

(assert (=> b!821693 (= lt!369406 call!35746)))

(assert (=> b!821693 (= e!456758 (+!1827 call!35746 (tuple2!9777 (select (arr!21852 _keys!976) #b00000000000000000000000000000000) (get!11647 (select (arr!21851 _values!788) #b00000000000000000000000000000000) (dynLambda!967 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!821694 () Bool)

(assert (=> b!821694 (= e!456758 call!35746)))

(assert (= (and d!104717 c!89178) b!821691))

(assert (= (and d!104717 (not c!89178)) b!821689))

(assert (= (and b!821689 c!89179) b!821693))

(assert (= (and b!821689 (not c!89179)) b!821694))

(assert (= (or b!821693 b!821694) bm!35743))

(assert (= (and d!104717 res!560600) b!821686))

(assert (= (and b!821686 res!560602) b!821683))

(assert (= (and b!821683 res!560601) b!821692))

(assert (= (and b!821683 c!89181) b!821684))

(assert (= (and b!821683 (not c!89181)) b!821690))

(assert (= (and b!821684 res!560599) b!821688))

(assert (= (and b!821690 c!89180) b!821685))

(assert (= (and b!821690 (not c!89180)) b!821687))

(declare-fun b_lambda!11043 () Bool)

(assert (=> (not b_lambda!11043) (not b!821688)))

(assert (=> b!821688 t!21982))

(declare-fun b_and!21903 () Bool)

(assert (= b_and!21901 (and (=> t!21982 result!7933) b_and!21903)))

(declare-fun b_lambda!11045 () Bool)

(assert (=> (not b_lambda!11045) (not b!821693)))

(assert (=> b!821693 t!21982))

(declare-fun b_and!21905 () Bool)

(assert (= b_and!21903 (and (=> t!21982 result!7933) b_and!21905)))

(assert (=> b!821684 m!763451))

(assert (=> b!821684 m!763451))

(declare-fun m!763501 () Bool)

(assert (=> b!821684 m!763501))

(declare-fun m!763503 () Bool)

(assert (=> b!821685 m!763503))

(declare-fun m!763505 () Bool)

(assert (=> d!104717 m!763505))

(assert (=> d!104717 m!763407))

(declare-fun m!763507 () Bool)

(assert (=> b!821687 m!763507))

(declare-fun m!763509 () Bool)

(assert (=> b!821693 m!763509))

(assert (=> b!821693 m!763451))

(declare-fun m!763511 () Bool)

(assert (=> b!821693 m!763511))

(assert (=> b!821693 m!763445))

(assert (=> b!821693 m!763447))

(assert (=> b!821693 m!763449))

(declare-fun m!763513 () Bool)

(assert (=> b!821693 m!763513))

(assert (=> b!821693 m!763445))

(assert (=> b!821693 m!763447))

(assert (=> b!821693 m!763513))

(declare-fun m!763515 () Bool)

(assert (=> b!821693 m!763515))

(assert (=> bm!35743 m!763503))

(assert (=> b!821692 m!763451))

(assert (=> b!821692 m!763451))

(assert (=> b!821692 m!763461))

(declare-fun m!763517 () Bool)

(assert (=> b!821686 m!763517))

(assert (=> b!821688 m!763451))

(assert (=> b!821688 m!763445))

(assert (=> b!821688 m!763447))

(assert (=> b!821688 m!763449))

(assert (=> b!821688 m!763447))

(assert (=> b!821688 m!763445))

(assert (=> b!821688 m!763451))

(declare-fun m!763519 () Bool)

(assert (=> b!821688 m!763519))

(assert (=> b!821689 m!763451))

(assert (=> b!821689 m!763451))

(assert (=> b!821689 m!763461))

(assert (=> b!821567 d!104717))

(declare-fun b!821695 () Bool)

(declare-fun e!456761 () Bool)

(declare-fun e!456766 () Bool)

(assert (=> b!821695 (= e!456761 e!456766)))

(declare-fun c!89185 () Bool)

(declare-fun e!456763 () Bool)

(assert (=> b!821695 (= c!89185 e!456763)))

(declare-fun res!560605 () Bool)

(assert (=> b!821695 (=> (not res!560605) (not e!456763))))

(assert (=> b!821695 (= res!560605 (bvslt #b00000000000000000000000000000000 (size!22273 _keys!976)))))

(declare-fun b!821696 () Bool)

(declare-fun e!456767 () Bool)

(assert (=> b!821696 (= e!456766 e!456767)))

(assert (=> b!821696 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22273 _keys!976)))))

(declare-fun res!560603 () Bool)

(declare-fun lt!369419 () ListLongMap!8613)

(assert (=> b!821696 (= res!560603 (contains!4167 lt!369419 (select (arr!21852 _keys!976) #b00000000000000000000000000000000)))))

(assert (=> b!821696 (=> (not res!560603) (not e!456767))))

(declare-fun b!821697 () Bool)

(declare-fun e!456762 () Bool)

(assert (=> b!821697 (= e!456762 (= lt!369419 (getCurrentListMapNoExtraKeys!2351 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!796)))))

(declare-fun b!821698 () Bool)

(declare-fun res!560606 () Bool)

(assert (=> b!821698 (=> (not res!560606) (not e!456761))))

(assert (=> b!821698 (= res!560606 (not (contains!4167 lt!369419 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bm!35744 () Bool)

(declare-fun call!35747 () ListLongMap!8613)

(assert (=> bm!35744 (= call!35747 (getCurrentListMapNoExtraKeys!2351 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!796))))

(declare-fun d!104719 () Bool)

(assert (=> d!104719 e!456761))

(declare-fun res!560604 () Bool)

(assert (=> d!104719 (=> (not res!560604) (not e!456761))))

(assert (=> d!104719 (= res!560604 (not (contains!4167 lt!369419 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!456764 () ListLongMap!8613)

(assert (=> d!104719 (= lt!369419 e!456764)))

(declare-fun c!89182 () Bool)

(assert (=> d!104719 (= c!89182 (bvsge #b00000000000000000000000000000000 (size!22273 _keys!976)))))

(assert (=> d!104719 (validMask!0 mask!1312)))

(assert (=> d!104719 (= (getCurrentListMapNoExtraKeys!2351 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) lt!369419)))

(declare-fun b!821699 () Bool)

(assert (=> b!821699 (= e!456762 (isEmpty!644 lt!369419))))

(declare-fun b!821700 () Bool)

(assert (=> b!821700 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22273 _keys!976)))))

(assert (=> b!821700 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22272 _values!788)))))

(assert (=> b!821700 (= e!456767 (= (apply!357 lt!369419 (select (arr!21852 _keys!976) #b00000000000000000000000000000000)) (get!11647 (select (arr!21851 _values!788) #b00000000000000000000000000000000) (dynLambda!967 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!821701 () Bool)

(declare-fun e!456765 () ListLongMap!8613)

(assert (=> b!821701 (= e!456764 e!456765)))

(declare-fun c!89183 () Bool)

(assert (=> b!821701 (= c!89183 (validKeyInArray!0 (select (arr!21852 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun b!821702 () Bool)

(assert (=> b!821702 (= e!456766 e!456762)))

(declare-fun c!89184 () Bool)

(assert (=> b!821702 (= c!89184 (bvslt #b00000000000000000000000000000000 (size!22273 _keys!976)))))

(declare-fun b!821703 () Bool)

(assert (=> b!821703 (= e!456764 (ListLongMap!8614 Nil!15633))))

(declare-fun b!821704 () Bool)

(assert (=> b!821704 (= e!456763 (validKeyInArray!0 (select (arr!21852 _keys!976) #b00000000000000000000000000000000)))))

(assert (=> b!821704 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!821705 () Bool)

(declare-fun lt!369416 () Unit!28087)

(declare-fun lt!369415 () Unit!28087)

(assert (=> b!821705 (= lt!369416 lt!369415)))

(declare-fun lt!369417 () (_ BitVec 64))

(declare-fun lt!369413 () ListLongMap!8613)

(declare-fun lt!369414 () (_ BitVec 64))

(declare-fun lt!369418 () V!24637)

(assert (=> b!821705 (not (contains!4167 (+!1827 lt!369413 (tuple2!9777 lt!369414 lt!369418)) lt!369417))))

(assert (=> b!821705 (= lt!369415 (addStillNotContains!184 lt!369413 lt!369414 lt!369418 lt!369417))))

(assert (=> b!821705 (= lt!369417 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!821705 (= lt!369418 (get!11647 (select (arr!21851 _values!788) #b00000000000000000000000000000000) (dynLambda!967 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!821705 (= lt!369414 (select (arr!21852 _keys!976) #b00000000000000000000000000000000))))

(assert (=> b!821705 (= lt!369413 call!35747)))

(assert (=> b!821705 (= e!456765 (+!1827 call!35747 (tuple2!9777 (select (arr!21852 _keys!976) #b00000000000000000000000000000000) (get!11647 (select (arr!21851 _values!788) #b00000000000000000000000000000000) (dynLambda!967 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!821706 () Bool)

(assert (=> b!821706 (= e!456765 call!35747)))

(assert (= (and d!104719 c!89182) b!821703))

(assert (= (and d!104719 (not c!89182)) b!821701))

(assert (= (and b!821701 c!89183) b!821705))

(assert (= (and b!821701 (not c!89183)) b!821706))

(assert (= (or b!821705 b!821706) bm!35744))

(assert (= (and d!104719 res!560604) b!821698))

(assert (= (and b!821698 res!560606) b!821695))

(assert (= (and b!821695 res!560605) b!821704))

(assert (= (and b!821695 c!89185) b!821696))

(assert (= (and b!821695 (not c!89185)) b!821702))

(assert (= (and b!821696 res!560603) b!821700))

(assert (= (and b!821702 c!89184) b!821697))

(assert (= (and b!821702 (not c!89184)) b!821699))

(declare-fun b_lambda!11047 () Bool)

(assert (=> (not b_lambda!11047) (not b!821700)))

(assert (=> b!821700 t!21982))

(declare-fun b_and!21907 () Bool)

(assert (= b_and!21905 (and (=> t!21982 result!7933) b_and!21907)))

(declare-fun b_lambda!11049 () Bool)

(assert (=> (not b_lambda!11049) (not b!821705)))

(assert (=> b!821705 t!21982))

(declare-fun b_and!21909 () Bool)

(assert (= b_and!21907 (and (=> t!21982 result!7933) b_and!21909)))

(assert (=> b!821696 m!763451))

(assert (=> b!821696 m!763451))

(declare-fun m!763521 () Bool)

(assert (=> b!821696 m!763521))

(declare-fun m!763523 () Bool)

(assert (=> b!821697 m!763523))

(declare-fun m!763525 () Bool)

(assert (=> d!104719 m!763525))

(assert (=> d!104719 m!763407))

(declare-fun m!763527 () Bool)

(assert (=> b!821699 m!763527))

(declare-fun m!763529 () Bool)

(assert (=> b!821705 m!763529))

(assert (=> b!821705 m!763451))

(declare-fun m!763531 () Bool)

(assert (=> b!821705 m!763531))

(assert (=> b!821705 m!763445))

(assert (=> b!821705 m!763447))

(assert (=> b!821705 m!763449))

(declare-fun m!763533 () Bool)

(assert (=> b!821705 m!763533))

(assert (=> b!821705 m!763445))

(assert (=> b!821705 m!763447))

(assert (=> b!821705 m!763533))

(declare-fun m!763535 () Bool)

(assert (=> b!821705 m!763535))

(assert (=> bm!35744 m!763523))

(assert (=> b!821704 m!763451))

(assert (=> b!821704 m!763451))

(assert (=> b!821704 m!763461))

(declare-fun m!763537 () Bool)

(assert (=> b!821698 m!763537))

(assert (=> b!821700 m!763451))

(assert (=> b!821700 m!763445))

(assert (=> b!821700 m!763447))

(assert (=> b!821700 m!763449))

(assert (=> b!821700 m!763447))

(assert (=> b!821700 m!763445))

(assert (=> b!821700 m!763451))

(declare-fun m!763539 () Bool)

(assert (=> b!821700 m!763539))

(assert (=> b!821701 m!763451))

(assert (=> b!821701 m!763451))

(assert (=> b!821701 m!763461))

(assert (=> b!821567 d!104719))

(declare-fun d!104721 () Bool)

(declare-fun res!560612 () Bool)

(declare-fun e!456776 () Bool)

(assert (=> d!104721 (=> res!560612 e!456776)))

(assert (=> d!104721 (= res!560612 (bvsge #b00000000000000000000000000000000 (size!22273 _keys!976)))))

(assert (=> d!104721 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312) e!456776)))

(declare-fun b!821715 () Bool)

(declare-fun e!456774 () Bool)

(declare-fun call!35750 () Bool)

(assert (=> b!821715 (= e!456774 call!35750)))

(declare-fun b!821716 () Bool)

(declare-fun e!456775 () Bool)

(assert (=> b!821716 (= e!456774 e!456775)))

(declare-fun lt!369427 () (_ BitVec 64))

(assert (=> b!821716 (= lt!369427 (select (arr!21852 _keys!976) #b00000000000000000000000000000000))))

(declare-fun lt!369426 () Unit!28087)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!45610 (_ BitVec 64) (_ BitVec 32)) Unit!28087)

(assert (=> b!821716 (= lt!369426 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!976 lt!369427 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!45610 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!821716 (arrayContainsKey!0 _keys!976 lt!369427 #b00000000000000000000000000000000)))

(declare-fun lt!369428 () Unit!28087)

(assert (=> b!821716 (= lt!369428 lt!369426)))

(declare-fun res!560611 () Bool)

(declare-datatypes ((SeekEntryResult!8718 0))(
  ( (MissingZero!8718 (index!37242 (_ BitVec 32))) (Found!8718 (index!37243 (_ BitVec 32))) (Intermediate!8718 (undefined!9530 Bool) (index!37244 (_ BitVec 32)) (x!69271 (_ BitVec 32))) (Undefined!8718) (MissingVacant!8718 (index!37245 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!45610 (_ BitVec 32)) SeekEntryResult!8718)

(assert (=> b!821716 (= res!560611 (= (seekEntryOrOpen!0 (select (arr!21852 _keys!976) #b00000000000000000000000000000000) _keys!976 mask!1312) (Found!8718 #b00000000000000000000000000000000)))))

(assert (=> b!821716 (=> (not res!560611) (not e!456775))))

(declare-fun b!821717 () Bool)

(assert (=> b!821717 (= e!456775 call!35750)))

(declare-fun b!821718 () Bool)

(assert (=> b!821718 (= e!456776 e!456774)))

(declare-fun c!89188 () Bool)

(assert (=> b!821718 (= c!89188 (validKeyInArray!0 (select (arr!21852 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun bm!35747 () Bool)

(assert (=> bm!35747 (= call!35750 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!976 mask!1312))))

(assert (= (and d!104721 (not res!560612)) b!821718))

(assert (= (and b!821718 c!89188) b!821716))

(assert (= (and b!821718 (not c!89188)) b!821715))

(assert (= (and b!821716 res!560611) b!821717))

(assert (= (or b!821717 b!821715) bm!35747))

(assert (=> b!821716 m!763451))

(declare-fun m!763541 () Bool)

(assert (=> b!821716 m!763541))

(declare-fun m!763543 () Bool)

(assert (=> b!821716 m!763543))

(assert (=> b!821716 m!763451))

(declare-fun m!763545 () Bool)

(assert (=> b!821716 m!763545))

(assert (=> b!821718 m!763451))

(assert (=> b!821718 m!763451))

(assert (=> b!821718 m!763461))

(declare-fun m!763547 () Bool)

(assert (=> bm!35747 m!763547))

(assert (=> b!821566 d!104721))

(declare-fun d!104723 () Bool)

(assert (=> d!104723 (= (validMask!0 mask!1312) (and (or (= mask!1312 #b00000000000000000000000000000111) (= mask!1312 #b00000000000000000000000000001111) (= mask!1312 #b00000000000000000000000000011111) (= mask!1312 #b00000000000000000000000000111111) (= mask!1312 #b00000000000000000000000001111111) (= mask!1312 #b00000000000000000000000011111111) (= mask!1312 #b00000000000000000000000111111111) (= mask!1312 #b00000000000000000000001111111111) (= mask!1312 #b00000000000000000000011111111111) (= mask!1312 #b00000000000000000000111111111111) (= mask!1312 #b00000000000000000001111111111111) (= mask!1312 #b00000000000000000011111111111111) (= mask!1312 #b00000000000000000111111111111111) (= mask!1312 #b00000000000000001111111111111111) (= mask!1312 #b00000000000000011111111111111111) (= mask!1312 #b00000000000000111111111111111111) (= mask!1312 #b00000000000001111111111111111111) (= mask!1312 #b00000000000011111111111111111111) (= mask!1312 #b00000000000111111111111111111111) (= mask!1312 #b00000000001111111111111111111111) (= mask!1312 #b00000000011111111111111111111111) (= mask!1312 #b00000000111111111111111111111111) (= mask!1312 #b00000001111111111111111111111111) (= mask!1312 #b00000011111111111111111111111111) (= mask!1312 #b00000111111111111111111111111111) (= mask!1312 #b00001111111111111111111111111111) (= mask!1312 #b00011111111111111111111111111111) (= mask!1312 #b00111111111111111111111111111111)) (bvsle mask!1312 #b00111111111111111111111111111111)))))

(assert (=> start!70768 d!104723))

(declare-fun d!104725 () Bool)

(assert (=> d!104725 (= (array_inv!17429 _keys!976) (bvsge (size!22273 _keys!976) #b00000000000000000000000000000000))))

(assert (=> start!70768 d!104725))

(declare-fun d!104727 () Bool)

(assert (=> d!104727 (= (array_inv!17430 _values!788) (bvsge (size!22272 _values!788) #b00000000000000000000000000000000))))

(assert (=> start!70768 d!104727))

(declare-fun b!821729 () Bool)

(declare-fun e!456785 () Bool)

(declare-fun e!456787 () Bool)

(assert (=> b!821729 (= e!456785 e!456787)))

(declare-fun c!89191 () Bool)

(assert (=> b!821729 (= c!89191 (validKeyInArray!0 (select (arr!21852 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun b!821730 () Bool)

(declare-fun call!35753 () Bool)

(assert (=> b!821730 (= e!456787 call!35753)))

(declare-fun b!821732 () Bool)

(declare-fun e!456788 () Bool)

(declare-fun contains!4168 (List!15637 (_ BitVec 64)) Bool)

(assert (=> b!821732 (= e!456788 (contains!4168 Nil!15634 (select (arr!21852 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun b!821733 () Bool)

(assert (=> b!821733 (= e!456787 call!35753)))

(declare-fun bm!35750 () Bool)

(assert (=> bm!35750 (= call!35753 (arrayNoDuplicates!0 _keys!976 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!89191 (Cons!15633 (select (arr!21852 _keys!976) #b00000000000000000000000000000000) Nil!15634) Nil!15634)))))

(declare-fun d!104729 () Bool)

(declare-fun res!560619 () Bool)

(declare-fun e!456786 () Bool)

(assert (=> d!104729 (=> res!560619 e!456786)))

(assert (=> d!104729 (= res!560619 (bvsge #b00000000000000000000000000000000 (size!22273 _keys!976)))))

(assert (=> d!104729 (= (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15634) e!456786)))

(declare-fun b!821731 () Bool)

(assert (=> b!821731 (= e!456786 e!456785)))

(declare-fun res!560620 () Bool)

(assert (=> b!821731 (=> (not res!560620) (not e!456785))))

(assert (=> b!821731 (= res!560620 (not e!456788))))

(declare-fun res!560621 () Bool)

(assert (=> b!821731 (=> (not res!560621) (not e!456788))))

(assert (=> b!821731 (= res!560621 (validKeyInArray!0 (select (arr!21852 _keys!976) #b00000000000000000000000000000000)))))

(assert (= (and d!104729 (not res!560619)) b!821731))

(assert (= (and b!821731 res!560621) b!821732))

(assert (= (and b!821731 res!560620) b!821729))

(assert (= (and b!821729 c!89191) b!821730))

(assert (= (and b!821729 (not c!89191)) b!821733))

(assert (= (or b!821730 b!821733) bm!35750))

(assert (=> b!821729 m!763451))

(assert (=> b!821729 m!763451))

(assert (=> b!821729 m!763461))

(assert (=> b!821732 m!763451))

(assert (=> b!821732 m!763451))

(declare-fun m!763549 () Bool)

(assert (=> b!821732 m!763549))

(assert (=> bm!35750 m!763451))

(declare-fun m!763551 () Bool)

(assert (=> bm!35750 m!763551))

(assert (=> b!821731 m!763451))

(assert (=> b!821731 m!763451))

(assert (=> b!821731 m!763461))

(assert (=> b!821569 d!104729))

(declare-fun mapNonEmpty!23704 () Bool)

(declare-fun mapRes!23704 () Bool)

(declare-fun tp!45802 () Bool)

(declare-fun e!456793 () Bool)

(assert (=> mapNonEmpty!23704 (= mapRes!23704 (and tp!45802 e!456793))))

(declare-fun mapRest!23704 () (Array (_ BitVec 32) ValueCell!6948))

(declare-fun mapValue!23704 () ValueCell!6948)

(declare-fun mapKey!23704 () (_ BitVec 32))

(assert (=> mapNonEmpty!23704 (= mapRest!23698 (store mapRest!23704 mapKey!23704 mapValue!23704))))

(declare-fun b!821740 () Bool)

(assert (=> b!821740 (= e!456793 tp_is_empty!14727)))

(declare-fun condMapEmpty!23704 () Bool)

(declare-fun mapDefault!23704 () ValueCell!6948)

(assert (=> mapNonEmpty!23698 (= condMapEmpty!23704 (= mapRest!23698 ((as const (Array (_ BitVec 32) ValueCell!6948)) mapDefault!23704)))))

(declare-fun e!456794 () Bool)

(assert (=> mapNonEmpty!23698 (= tp!45793 (and e!456794 mapRes!23704))))

(declare-fun mapIsEmpty!23704 () Bool)

(assert (=> mapIsEmpty!23704 mapRes!23704))

(declare-fun b!821741 () Bool)

(assert (=> b!821741 (= e!456794 tp_is_empty!14727)))

(assert (= (and mapNonEmpty!23698 condMapEmpty!23704) mapIsEmpty!23704))

(assert (= (and mapNonEmpty!23698 (not condMapEmpty!23704)) mapNonEmpty!23704))

(assert (= (and mapNonEmpty!23704 ((_ is ValueCellFull!6948) mapValue!23704)) b!821740))

(assert (= (and mapNonEmpty!23698 ((_ is ValueCellFull!6948) mapDefault!23704)) b!821741))

(declare-fun m!763553 () Bool)

(assert (=> mapNonEmpty!23704 m!763553))

(declare-fun b_lambda!11051 () Bool)

(assert (= b_lambda!11041 (or (and start!70768 b_free!13017) b_lambda!11051)))

(declare-fun b_lambda!11053 () Bool)

(assert (= b_lambda!11047 (or (and start!70768 b_free!13017) b_lambda!11053)))

(declare-fun b_lambda!11055 () Bool)

(assert (= b_lambda!11049 (or (and start!70768 b_free!13017) b_lambda!11055)))

(declare-fun b_lambda!11057 () Bool)

(assert (= b_lambda!11043 (or (and start!70768 b_free!13017) b_lambda!11057)))

(declare-fun b_lambda!11059 () Bool)

(assert (= b_lambda!11045 (or (and start!70768 b_free!13017) b_lambda!11059)))

(check-sat (not b!821688) (not mapNonEmpty!23704) (not b!821705) (not b!821656) (not bm!35743) (not bm!35747) (not b!821716) b_and!21909 (not b!821699) (not b!821640) (not b!821732) (not bm!35744) (not b!821704) (not b!821686) (not b_lambda!11059) (not b!821654) (not b!821729) (not b!821644) (not b!821652) (not b!821646) (not b!821693) (not b!821698) (not b!821696) (not b_lambda!11055) (not b!821697) (not b!821701) (not b!821692) (not b!821689) (not d!104719) (not d!104717) (not b!821700) (not b!821639) (not bm!35735) (not bm!35736) (not bm!35737) (not bm!35738) (not b_lambda!11053) (not d!104715) (not bm!35750) (not b!821718) (not b_lambda!11051) (not b!821685) tp_is_empty!14727 (not b!821687) (not b_next!13017) (not d!104713) (not b!821643) (not b!821731) (not b_lambda!11057) (not b!821684))
(check-sat b_and!21909 (not b_next!13017))

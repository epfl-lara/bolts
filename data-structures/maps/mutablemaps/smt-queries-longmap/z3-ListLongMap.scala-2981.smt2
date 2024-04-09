; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!42172 () Bool)

(assert start!42172)

(declare-fun b_free!11697 () Bool)

(declare-fun b_next!11697 () Bool)

(assert (=> start!42172 (= b_free!11697 (not b_next!11697))))

(declare-fun tp!41112 () Bool)

(declare-fun b_and!20137 () Bool)

(assert (=> start!42172 (= tp!41112 b_and!20137)))

(declare-fun b!470504 () Bool)

(declare-fun e!275678 () Bool)

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-datatypes ((array!29977 0))(
  ( (array!29978 (arr!14409 (Array (_ BitVec 32) (_ BitVec 64))) (size!14761 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29977)

(assert (=> b!470504 (= e!275678 (not (or (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsle #b00000000000000000000000000000000 (size!14761 _keys!1025)))))))

(declare-datatypes ((V!18605 0))(
  ( (V!18606 (val!6607 Int)) )
))
(declare-datatypes ((tuple2!8670 0))(
  ( (tuple2!8671 (_1!4345 (_ BitVec 64)) (_2!4345 V!18605)) )
))
(declare-datatypes ((List!8792 0))(
  ( (Nil!8789) (Cons!8788 (h!9644 tuple2!8670) (t!14762 List!8792)) )
))
(declare-datatypes ((ListLongMap!7597 0))(
  ( (ListLongMap!7598 (toList!3814 List!8792)) )
))
(declare-fun lt!213528 () ListLongMap!7597)

(declare-fun lt!213527 () ListLongMap!7597)

(assert (=> b!470504 (= lt!213528 lt!213527)))

(declare-fun minValueBefore!38 () V!18605)

(declare-fun zeroValue!794 () V!18605)

(declare-fun defaultEntry!841 () Int)

(declare-datatypes ((Unit!13754 0))(
  ( (Unit!13755) )
))
(declare-fun lt!213529 () Unit!13754)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((ValueCell!6219 0))(
  ( (ValueCellFull!6219 (v!8894 V!18605)) (EmptyCell!6219) )
))
(declare-datatypes ((array!29979 0))(
  ( (array!29980 (arr!14410 (Array (_ BitVec 32) ValueCell!6219)) (size!14762 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29979)

(declare-fun minValueAfter!38 () V!18605)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!171 (array!29977 array!29979 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18605 V!18605 V!18605 V!18605 (_ BitVec 32) Int) Unit!13754)

(assert (=> b!470504 (= lt!213529 (lemmaNoChangeToArrayThenSameMapNoExtras!171 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1976 (array!29977 array!29979 (_ BitVec 32) (_ BitVec 32) V!18605 V!18605 (_ BitVec 32) Int) ListLongMap!7597)

(assert (=> b!470504 (= lt!213527 (getCurrentListMapNoExtraKeys!1976 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!470504 (= lt!213528 (getCurrentListMapNoExtraKeys!1976 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!470505 () Bool)

(declare-fun e!275676 () Bool)

(declare-fun tp_is_empty!13125 () Bool)

(assert (=> b!470505 (= e!275676 tp_is_empty!13125)))

(declare-fun b!470506 () Bool)

(declare-fun res!281203 () Bool)

(assert (=> b!470506 (=> (not res!281203) (not e!275678))))

(assert (=> b!470506 (= res!281203 (and (= (size!14762 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14761 _keys!1025) (size!14762 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun res!281205 () Bool)

(assert (=> start!42172 (=> (not res!281205) (not e!275678))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!42172 (= res!281205 (validMask!0 mask!1365))))

(assert (=> start!42172 e!275678))

(assert (=> start!42172 tp_is_empty!13125))

(assert (=> start!42172 tp!41112))

(assert (=> start!42172 true))

(declare-fun array_inv!10398 (array!29977) Bool)

(assert (=> start!42172 (array_inv!10398 _keys!1025)))

(declare-fun e!275675 () Bool)

(declare-fun array_inv!10399 (array!29979) Bool)

(assert (=> start!42172 (and (array_inv!10399 _values!833) e!275675)))

(declare-fun mapIsEmpty!21388 () Bool)

(declare-fun mapRes!21388 () Bool)

(assert (=> mapIsEmpty!21388 mapRes!21388))

(declare-fun b!470507 () Bool)

(assert (=> b!470507 (= e!275675 (and e!275676 mapRes!21388))))

(declare-fun condMapEmpty!21388 () Bool)

(declare-fun mapDefault!21388 () ValueCell!6219)

(assert (=> b!470507 (= condMapEmpty!21388 (= (arr!14410 _values!833) ((as const (Array (_ BitVec 32) ValueCell!6219)) mapDefault!21388)))))

(declare-fun mapNonEmpty!21388 () Bool)

(declare-fun tp!41113 () Bool)

(declare-fun e!275677 () Bool)

(assert (=> mapNonEmpty!21388 (= mapRes!21388 (and tp!41113 e!275677))))

(declare-fun mapKey!21388 () (_ BitVec 32))

(declare-fun mapRest!21388 () (Array (_ BitVec 32) ValueCell!6219))

(declare-fun mapValue!21388 () ValueCell!6219)

(assert (=> mapNonEmpty!21388 (= (arr!14410 _values!833) (store mapRest!21388 mapKey!21388 mapValue!21388))))

(declare-fun b!470508 () Bool)

(declare-fun res!281202 () Bool)

(assert (=> b!470508 (=> (not res!281202) (not e!275678))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!29977 (_ BitVec 32)) Bool)

(assert (=> b!470508 (= res!281202 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!470509 () Bool)

(declare-fun res!281204 () Bool)

(assert (=> b!470509 (=> (not res!281204) (not e!275678))))

(declare-datatypes ((List!8793 0))(
  ( (Nil!8790) (Cons!8789 (h!9645 (_ BitVec 64)) (t!14763 List!8793)) )
))
(declare-fun arrayNoDuplicates!0 (array!29977 (_ BitVec 32) List!8793) Bool)

(assert (=> b!470509 (= res!281204 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8790))))

(declare-fun b!470510 () Bool)

(assert (=> b!470510 (= e!275677 tp_is_empty!13125)))

(assert (= (and start!42172 res!281205) b!470506))

(assert (= (and b!470506 res!281203) b!470508))

(assert (= (and b!470508 res!281202) b!470509))

(assert (= (and b!470509 res!281204) b!470504))

(assert (= (and b!470507 condMapEmpty!21388) mapIsEmpty!21388))

(assert (= (and b!470507 (not condMapEmpty!21388)) mapNonEmpty!21388))

(get-info :version)

(assert (= (and mapNonEmpty!21388 ((_ is ValueCellFull!6219) mapValue!21388)) b!470510))

(assert (= (and b!470507 ((_ is ValueCellFull!6219) mapDefault!21388)) b!470505))

(assert (= start!42172 b!470507))

(declare-fun m!452791 () Bool)

(assert (=> b!470504 m!452791))

(declare-fun m!452793 () Bool)

(assert (=> b!470504 m!452793))

(declare-fun m!452795 () Bool)

(assert (=> b!470504 m!452795))

(declare-fun m!452797 () Bool)

(assert (=> b!470509 m!452797))

(declare-fun m!452799 () Bool)

(assert (=> b!470508 m!452799))

(declare-fun m!452801 () Bool)

(assert (=> mapNonEmpty!21388 m!452801))

(declare-fun m!452803 () Bool)

(assert (=> start!42172 m!452803))

(declare-fun m!452805 () Bool)

(assert (=> start!42172 m!452805))

(declare-fun m!452807 () Bool)

(assert (=> start!42172 m!452807))

(check-sat (not mapNonEmpty!21388) tp_is_empty!13125 (not b!470509) (not b!470508) b_and!20137 (not b_next!11697) (not b!470504) (not start!42172))
(check-sat b_and!20137 (not b_next!11697))
(get-model)

(declare-fun d!75237 () Bool)

(assert (=> d!75237 (= (getCurrentListMapNoExtraKeys!1976 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841) (getCurrentListMapNoExtraKeys!1976 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!213541 () Unit!13754)

(declare-fun choose!1355 (array!29977 array!29979 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18605 V!18605 V!18605 V!18605 (_ BitVec 32) Int) Unit!13754)

(assert (=> d!75237 (= lt!213541 (choose!1355 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> d!75237 (validMask!0 mask!1365)))

(assert (=> d!75237 (= (lemmaNoChangeToArrayThenSameMapNoExtras!171 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841) lt!213541)))

(declare-fun bs!14916 () Bool)

(assert (= bs!14916 d!75237))

(assert (=> bs!14916 m!452795))

(assert (=> bs!14916 m!452793))

(declare-fun m!452827 () Bool)

(assert (=> bs!14916 m!452827))

(assert (=> bs!14916 m!452803))

(assert (=> b!470504 d!75237))

(declare-fun b!470556 () Bool)

(declare-fun e!275708 () Bool)

(declare-fun lt!213557 () ListLongMap!7597)

(declare-fun isEmpty!580 (ListLongMap!7597) Bool)

(assert (=> b!470556 (= e!275708 (isEmpty!580 lt!213557))))

(declare-fun b!470557 () Bool)

(declare-fun e!275711 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!470557 (= e!275711 (validKeyInArray!0 (select (arr!14409 _keys!1025) #b00000000000000000000000000000000)))))

(assert (=> b!470557 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!470558 () Bool)

(declare-fun res!281226 () Bool)

(declare-fun e!275714 () Bool)

(assert (=> b!470558 (=> (not res!281226) (not e!275714))))

(declare-fun contains!2543 (ListLongMap!7597 (_ BitVec 64)) Bool)

(assert (=> b!470558 (= res!281226 (not (contains!2543 lt!213557 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!470559 () Bool)

(assert (=> b!470559 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!14761 _keys!1025)))))

(assert (=> b!470559 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!14762 _values!833)))))

(declare-fun e!275713 () Bool)

(declare-fun apply!328 (ListLongMap!7597 (_ BitVec 64)) V!18605)

(declare-fun get!7044 (ValueCell!6219 V!18605) V!18605)

(declare-fun dynLambda!920 (Int (_ BitVec 64)) V!18605)

(assert (=> b!470559 (= e!275713 (= (apply!328 lt!213557 (select (arr!14409 _keys!1025) #b00000000000000000000000000000000)) (get!7044 (select (arr!14410 _values!833) #b00000000000000000000000000000000) (dynLambda!920 defaultEntry!841 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!470560 () Bool)

(declare-fun lt!213560 () Unit!13754)

(declare-fun lt!213562 () Unit!13754)

(assert (=> b!470560 (= lt!213560 lt!213562)))

(declare-fun lt!213558 () ListLongMap!7597)

(declare-fun lt!213559 () (_ BitVec 64))

(declare-fun lt!213561 () V!18605)

(declare-fun lt!213556 () (_ BitVec 64))

(declare-fun +!1685 (ListLongMap!7597 tuple2!8670) ListLongMap!7597)

(assert (=> b!470560 (not (contains!2543 (+!1685 lt!213558 (tuple2!8671 lt!213559 lt!213561)) lt!213556))))

(declare-fun addStillNotContains!163 (ListLongMap!7597 (_ BitVec 64) V!18605 (_ BitVec 64)) Unit!13754)

(assert (=> b!470560 (= lt!213562 (addStillNotContains!163 lt!213558 lt!213559 lt!213561 lt!213556))))

(assert (=> b!470560 (= lt!213556 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!470560 (= lt!213561 (get!7044 (select (arr!14410 _values!833) #b00000000000000000000000000000000) (dynLambda!920 defaultEntry!841 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!470560 (= lt!213559 (select (arr!14409 _keys!1025) #b00000000000000000000000000000000))))

(declare-fun call!30431 () ListLongMap!7597)

(assert (=> b!470560 (= lt!213558 call!30431)))

(declare-fun e!275709 () ListLongMap!7597)

(assert (=> b!470560 (= e!275709 (+!1685 call!30431 (tuple2!8671 (select (arr!14409 _keys!1025) #b00000000000000000000000000000000) (get!7044 (select (arr!14410 _values!833) #b00000000000000000000000000000000) (dynLambda!920 defaultEntry!841 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!470561 () Bool)

(assert (=> b!470561 (= e!275708 (= lt!213557 (getCurrentListMapNoExtraKeys!1976 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!841)))))

(declare-fun b!470562 () Bool)

(declare-fun e!275712 () Bool)

(assert (=> b!470562 (= e!275712 e!275713)))

(assert (=> b!470562 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!14761 _keys!1025)))))

(declare-fun res!281227 () Bool)

(assert (=> b!470562 (= res!281227 (contains!2543 lt!213557 (select (arr!14409 _keys!1025) #b00000000000000000000000000000000)))))

(assert (=> b!470562 (=> (not res!281227) (not e!275713))))

(declare-fun b!470563 () Bool)

(declare-fun e!275710 () ListLongMap!7597)

(assert (=> b!470563 (= e!275710 (ListLongMap!7598 Nil!8789))))

(declare-fun bm!30428 () Bool)

(assert (=> bm!30428 (= call!30431 (getCurrentListMapNoExtraKeys!1976 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!841))))

(declare-fun b!470564 () Bool)

(assert (=> b!470564 (= e!275709 call!30431)))

(declare-fun b!470565 () Bool)

(assert (=> b!470565 (= e!275714 e!275712)))

(declare-fun c!56877 () Bool)

(assert (=> b!470565 (= c!56877 e!275711)))

(declare-fun res!281229 () Bool)

(assert (=> b!470565 (=> (not res!281229) (not e!275711))))

(assert (=> b!470565 (= res!281229 (bvslt #b00000000000000000000000000000000 (size!14761 _keys!1025)))))

(declare-fun d!75239 () Bool)

(assert (=> d!75239 e!275714))

(declare-fun res!281228 () Bool)

(assert (=> d!75239 (=> (not res!281228) (not e!275714))))

(assert (=> d!75239 (= res!281228 (not (contains!2543 lt!213557 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!75239 (= lt!213557 e!275710)))

(declare-fun c!56879 () Bool)

(assert (=> d!75239 (= c!56879 (bvsge #b00000000000000000000000000000000 (size!14761 _keys!1025)))))

(assert (=> d!75239 (validMask!0 mask!1365)))

(assert (=> d!75239 (= (getCurrentListMapNoExtraKeys!1976 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841) lt!213557)))

(declare-fun b!470566 () Bool)

(assert (=> b!470566 (= e!275710 e!275709)))

(declare-fun c!56876 () Bool)

(assert (=> b!470566 (= c!56876 (validKeyInArray!0 (select (arr!14409 _keys!1025) #b00000000000000000000000000000000)))))

(declare-fun b!470567 () Bool)

(assert (=> b!470567 (= e!275712 e!275708)))

(declare-fun c!56878 () Bool)

(assert (=> b!470567 (= c!56878 (bvslt #b00000000000000000000000000000000 (size!14761 _keys!1025)))))

(assert (= (and d!75239 c!56879) b!470563))

(assert (= (and d!75239 (not c!56879)) b!470566))

(assert (= (and b!470566 c!56876) b!470560))

(assert (= (and b!470566 (not c!56876)) b!470564))

(assert (= (or b!470560 b!470564) bm!30428))

(assert (= (and d!75239 res!281228) b!470558))

(assert (= (and b!470558 res!281226) b!470565))

(assert (= (and b!470565 res!281229) b!470557))

(assert (= (and b!470565 c!56877) b!470562))

(assert (= (and b!470565 (not c!56877)) b!470567))

(assert (= (and b!470562 res!281227) b!470559))

(assert (= (and b!470567 c!56878) b!470561))

(assert (= (and b!470567 (not c!56878)) b!470556))

(declare-fun b_lambda!10167 () Bool)

(assert (=> (not b_lambda!10167) (not b!470559)))

(declare-fun t!14767 () Bool)

(declare-fun tb!3929 () Bool)

(assert (=> (and start!42172 (= defaultEntry!841 defaultEntry!841) t!14767) tb!3929))

(declare-fun result!7429 () Bool)

(assert (=> tb!3929 (= result!7429 tp_is_empty!13125)))

(assert (=> b!470559 t!14767))

(declare-fun b_and!20141 () Bool)

(assert (= b_and!20137 (and (=> t!14767 result!7429) b_and!20141)))

(declare-fun b_lambda!10169 () Bool)

(assert (=> (not b_lambda!10169) (not b!470560)))

(assert (=> b!470560 t!14767))

(declare-fun b_and!20143 () Bool)

(assert (= b_and!20141 (and (=> t!14767 result!7429) b_and!20143)))

(declare-fun m!452829 () Bool)

(assert (=> b!470561 m!452829))

(declare-fun m!452831 () Bool)

(assert (=> b!470556 m!452831))

(declare-fun m!452833 () Bool)

(assert (=> b!470566 m!452833))

(assert (=> b!470566 m!452833))

(declare-fun m!452835 () Bool)

(assert (=> b!470566 m!452835))

(assert (=> b!470562 m!452833))

(assert (=> b!470562 m!452833))

(declare-fun m!452837 () Bool)

(assert (=> b!470562 m!452837))

(assert (=> bm!30428 m!452829))

(assert (=> b!470559 m!452833))

(declare-fun m!452839 () Bool)

(assert (=> b!470559 m!452839))

(declare-fun m!452841 () Bool)

(assert (=> b!470559 m!452841))

(declare-fun m!452843 () Bool)

(assert (=> b!470559 m!452843))

(assert (=> b!470559 m!452841))

(assert (=> b!470559 m!452839))

(assert (=> b!470559 m!452833))

(declare-fun m!452845 () Bool)

(assert (=> b!470559 m!452845))

(declare-fun m!452847 () Bool)

(assert (=> d!75239 m!452847))

(assert (=> d!75239 m!452803))

(assert (=> b!470557 m!452833))

(assert (=> b!470557 m!452833))

(assert (=> b!470557 m!452835))

(declare-fun m!452849 () Bool)

(assert (=> b!470558 m!452849))

(assert (=> b!470560 m!452833))

(declare-fun m!452851 () Bool)

(assert (=> b!470560 m!452851))

(declare-fun m!452853 () Bool)

(assert (=> b!470560 m!452853))

(assert (=> b!470560 m!452839))

(assert (=> b!470560 m!452841))

(assert (=> b!470560 m!452843))

(declare-fun m!452855 () Bool)

(assert (=> b!470560 m!452855))

(assert (=> b!470560 m!452839))

(assert (=> b!470560 m!452851))

(declare-fun m!452857 () Bool)

(assert (=> b!470560 m!452857))

(assert (=> b!470560 m!452841))

(assert (=> b!470504 d!75239))

(declare-fun b!470570 () Bool)

(declare-fun e!275715 () Bool)

(declare-fun lt!213564 () ListLongMap!7597)

(assert (=> b!470570 (= e!275715 (isEmpty!580 lt!213564))))

(declare-fun b!470571 () Bool)

(declare-fun e!275718 () Bool)

(assert (=> b!470571 (= e!275718 (validKeyInArray!0 (select (arr!14409 _keys!1025) #b00000000000000000000000000000000)))))

(assert (=> b!470571 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!470572 () Bool)

(declare-fun res!281230 () Bool)

(declare-fun e!275721 () Bool)

(assert (=> b!470572 (=> (not res!281230) (not e!275721))))

(assert (=> b!470572 (= res!281230 (not (contains!2543 lt!213564 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!470573 () Bool)

(assert (=> b!470573 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!14761 _keys!1025)))))

(assert (=> b!470573 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!14762 _values!833)))))

(declare-fun e!275720 () Bool)

(assert (=> b!470573 (= e!275720 (= (apply!328 lt!213564 (select (arr!14409 _keys!1025) #b00000000000000000000000000000000)) (get!7044 (select (arr!14410 _values!833) #b00000000000000000000000000000000) (dynLambda!920 defaultEntry!841 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!470574 () Bool)

(declare-fun lt!213567 () Unit!13754)

(declare-fun lt!213569 () Unit!13754)

(assert (=> b!470574 (= lt!213567 lt!213569)))

(declare-fun lt!213566 () (_ BitVec 64))

(declare-fun lt!213568 () V!18605)

(declare-fun lt!213565 () ListLongMap!7597)

(declare-fun lt!213563 () (_ BitVec 64))

(assert (=> b!470574 (not (contains!2543 (+!1685 lt!213565 (tuple2!8671 lt!213566 lt!213568)) lt!213563))))

(assert (=> b!470574 (= lt!213569 (addStillNotContains!163 lt!213565 lt!213566 lt!213568 lt!213563))))

(assert (=> b!470574 (= lt!213563 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!470574 (= lt!213568 (get!7044 (select (arr!14410 _values!833) #b00000000000000000000000000000000) (dynLambda!920 defaultEntry!841 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!470574 (= lt!213566 (select (arr!14409 _keys!1025) #b00000000000000000000000000000000))))

(declare-fun call!30432 () ListLongMap!7597)

(assert (=> b!470574 (= lt!213565 call!30432)))

(declare-fun e!275716 () ListLongMap!7597)

(assert (=> b!470574 (= e!275716 (+!1685 call!30432 (tuple2!8671 (select (arr!14409 _keys!1025) #b00000000000000000000000000000000) (get!7044 (select (arr!14410 _values!833) #b00000000000000000000000000000000) (dynLambda!920 defaultEntry!841 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!470575 () Bool)

(assert (=> b!470575 (= e!275715 (= lt!213564 (getCurrentListMapNoExtraKeys!1976 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!841)))))

(declare-fun b!470576 () Bool)

(declare-fun e!275719 () Bool)

(assert (=> b!470576 (= e!275719 e!275720)))

(assert (=> b!470576 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!14761 _keys!1025)))))

(declare-fun res!281231 () Bool)

(assert (=> b!470576 (= res!281231 (contains!2543 lt!213564 (select (arr!14409 _keys!1025) #b00000000000000000000000000000000)))))

(assert (=> b!470576 (=> (not res!281231) (not e!275720))))

(declare-fun b!470577 () Bool)

(declare-fun e!275717 () ListLongMap!7597)

(assert (=> b!470577 (= e!275717 (ListLongMap!7598 Nil!8789))))

(declare-fun bm!30429 () Bool)

(assert (=> bm!30429 (= call!30432 (getCurrentListMapNoExtraKeys!1976 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!841))))

(declare-fun b!470578 () Bool)

(assert (=> b!470578 (= e!275716 call!30432)))

(declare-fun b!470579 () Bool)

(assert (=> b!470579 (= e!275721 e!275719)))

(declare-fun c!56881 () Bool)

(assert (=> b!470579 (= c!56881 e!275718)))

(declare-fun res!281233 () Bool)

(assert (=> b!470579 (=> (not res!281233) (not e!275718))))

(assert (=> b!470579 (= res!281233 (bvslt #b00000000000000000000000000000000 (size!14761 _keys!1025)))))

(declare-fun d!75241 () Bool)

(assert (=> d!75241 e!275721))

(declare-fun res!281232 () Bool)

(assert (=> d!75241 (=> (not res!281232) (not e!275721))))

(assert (=> d!75241 (= res!281232 (not (contains!2543 lt!213564 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!75241 (= lt!213564 e!275717)))

(declare-fun c!56883 () Bool)

(assert (=> d!75241 (= c!56883 (bvsge #b00000000000000000000000000000000 (size!14761 _keys!1025)))))

(assert (=> d!75241 (validMask!0 mask!1365)))

(assert (=> d!75241 (= (getCurrentListMapNoExtraKeys!1976 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841) lt!213564)))

(declare-fun b!470580 () Bool)

(assert (=> b!470580 (= e!275717 e!275716)))

(declare-fun c!56880 () Bool)

(assert (=> b!470580 (= c!56880 (validKeyInArray!0 (select (arr!14409 _keys!1025) #b00000000000000000000000000000000)))))

(declare-fun b!470581 () Bool)

(assert (=> b!470581 (= e!275719 e!275715)))

(declare-fun c!56882 () Bool)

(assert (=> b!470581 (= c!56882 (bvslt #b00000000000000000000000000000000 (size!14761 _keys!1025)))))

(assert (= (and d!75241 c!56883) b!470577))

(assert (= (and d!75241 (not c!56883)) b!470580))

(assert (= (and b!470580 c!56880) b!470574))

(assert (= (and b!470580 (not c!56880)) b!470578))

(assert (= (or b!470574 b!470578) bm!30429))

(assert (= (and d!75241 res!281232) b!470572))

(assert (= (and b!470572 res!281230) b!470579))

(assert (= (and b!470579 res!281233) b!470571))

(assert (= (and b!470579 c!56881) b!470576))

(assert (= (and b!470579 (not c!56881)) b!470581))

(assert (= (and b!470576 res!281231) b!470573))

(assert (= (and b!470581 c!56882) b!470575))

(assert (= (and b!470581 (not c!56882)) b!470570))

(declare-fun b_lambda!10171 () Bool)

(assert (=> (not b_lambda!10171) (not b!470573)))

(assert (=> b!470573 t!14767))

(declare-fun b_and!20145 () Bool)

(assert (= b_and!20143 (and (=> t!14767 result!7429) b_and!20145)))

(declare-fun b_lambda!10173 () Bool)

(assert (=> (not b_lambda!10173) (not b!470574)))

(assert (=> b!470574 t!14767))

(declare-fun b_and!20147 () Bool)

(assert (= b_and!20145 (and (=> t!14767 result!7429) b_and!20147)))

(declare-fun m!452859 () Bool)

(assert (=> b!470575 m!452859))

(declare-fun m!452861 () Bool)

(assert (=> b!470570 m!452861))

(assert (=> b!470580 m!452833))

(assert (=> b!470580 m!452833))

(assert (=> b!470580 m!452835))

(assert (=> b!470576 m!452833))

(assert (=> b!470576 m!452833))

(declare-fun m!452863 () Bool)

(assert (=> b!470576 m!452863))

(assert (=> bm!30429 m!452859))

(assert (=> b!470573 m!452833))

(assert (=> b!470573 m!452839))

(assert (=> b!470573 m!452841))

(assert (=> b!470573 m!452843))

(assert (=> b!470573 m!452841))

(assert (=> b!470573 m!452839))

(assert (=> b!470573 m!452833))

(declare-fun m!452865 () Bool)

(assert (=> b!470573 m!452865))

(declare-fun m!452867 () Bool)

(assert (=> d!75241 m!452867))

(assert (=> d!75241 m!452803))

(assert (=> b!470571 m!452833))

(assert (=> b!470571 m!452833))

(assert (=> b!470571 m!452835))

(declare-fun m!452869 () Bool)

(assert (=> b!470572 m!452869))

(assert (=> b!470574 m!452833))

(declare-fun m!452871 () Bool)

(assert (=> b!470574 m!452871))

(declare-fun m!452873 () Bool)

(assert (=> b!470574 m!452873))

(assert (=> b!470574 m!452839))

(assert (=> b!470574 m!452841))

(assert (=> b!470574 m!452843))

(declare-fun m!452875 () Bool)

(assert (=> b!470574 m!452875))

(assert (=> b!470574 m!452839))

(assert (=> b!470574 m!452871))

(declare-fun m!452877 () Bool)

(assert (=> b!470574 m!452877))

(assert (=> b!470574 m!452841))

(assert (=> b!470504 d!75241))

(declare-fun d!75243 () Bool)

(assert (=> d!75243 (= (validMask!0 mask!1365) (and (or (= mask!1365 #b00000000000000000000000000000111) (= mask!1365 #b00000000000000000000000000001111) (= mask!1365 #b00000000000000000000000000011111) (= mask!1365 #b00000000000000000000000000111111) (= mask!1365 #b00000000000000000000000001111111) (= mask!1365 #b00000000000000000000000011111111) (= mask!1365 #b00000000000000000000000111111111) (= mask!1365 #b00000000000000000000001111111111) (= mask!1365 #b00000000000000000000011111111111) (= mask!1365 #b00000000000000000000111111111111) (= mask!1365 #b00000000000000000001111111111111) (= mask!1365 #b00000000000000000011111111111111) (= mask!1365 #b00000000000000000111111111111111) (= mask!1365 #b00000000000000001111111111111111) (= mask!1365 #b00000000000000011111111111111111) (= mask!1365 #b00000000000000111111111111111111) (= mask!1365 #b00000000000001111111111111111111) (= mask!1365 #b00000000000011111111111111111111) (= mask!1365 #b00000000000111111111111111111111) (= mask!1365 #b00000000001111111111111111111111) (= mask!1365 #b00000000011111111111111111111111) (= mask!1365 #b00000000111111111111111111111111) (= mask!1365 #b00000001111111111111111111111111) (= mask!1365 #b00000011111111111111111111111111) (= mask!1365 #b00000111111111111111111111111111) (= mask!1365 #b00001111111111111111111111111111) (= mask!1365 #b00011111111111111111111111111111) (= mask!1365 #b00111111111111111111111111111111)) (bvsle mask!1365 #b00111111111111111111111111111111)))))

(assert (=> start!42172 d!75243))

(declare-fun d!75245 () Bool)

(assert (=> d!75245 (= (array_inv!10398 _keys!1025) (bvsge (size!14761 _keys!1025) #b00000000000000000000000000000000))))

(assert (=> start!42172 d!75245))

(declare-fun d!75247 () Bool)

(assert (=> d!75247 (= (array_inv!10399 _values!833) (bvsge (size!14762 _values!833) #b00000000000000000000000000000000))))

(assert (=> start!42172 d!75247))

(declare-fun b!470590 () Bool)

(declare-fun e!275729 () Bool)

(declare-fun e!275728 () Bool)

(assert (=> b!470590 (= e!275729 e!275728)))

(declare-fun c!56886 () Bool)

(assert (=> b!470590 (= c!56886 (validKeyInArray!0 (select (arr!14409 _keys!1025) #b00000000000000000000000000000000)))))

(declare-fun b!470591 () Bool)

(declare-fun call!30435 () Bool)

(assert (=> b!470591 (= e!275728 call!30435)))

(declare-fun d!75249 () Bool)

(declare-fun res!281238 () Bool)

(assert (=> d!75249 (=> res!281238 e!275729)))

(assert (=> d!75249 (= res!281238 (bvsge #b00000000000000000000000000000000 (size!14761 _keys!1025)))))

(assert (=> d!75249 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365) e!275729)))

(declare-fun b!470592 () Bool)

(declare-fun e!275730 () Bool)

(assert (=> b!470592 (= e!275730 call!30435)))

(declare-fun b!470593 () Bool)

(assert (=> b!470593 (= e!275728 e!275730)))

(declare-fun lt!213578 () (_ BitVec 64))

(assert (=> b!470593 (= lt!213578 (select (arr!14409 _keys!1025) #b00000000000000000000000000000000))))

(declare-fun lt!213577 () Unit!13754)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!29977 (_ BitVec 64) (_ BitVec 32)) Unit!13754)

(assert (=> b!470593 (= lt!213577 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1025 lt!213578 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!29977 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!470593 (arrayContainsKey!0 _keys!1025 lt!213578 #b00000000000000000000000000000000)))

(declare-fun lt!213576 () Unit!13754)

(assert (=> b!470593 (= lt!213576 lt!213577)))

(declare-fun res!281239 () Bool)

(declare-datatypes ((SeekEntryResult!3540 0))(
  ( (MissingZero!3540 (index!16339 (_ BitVec 32))) (Found!3540 (index!16340 (_ BitVec 32))) (Intermediate!3540 (undefined!4352 Bool) (index!16341 (_ BitVec 32)) (x!44071 (_ BitVec 32))) (Undefined!3540) (MissingVacant!3540 (index!16342 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!29977 (_ BitVec 32)) SeekEntryResult!3540)

(assert (=> b!470593 (= res!281239 (= (seekEntryOrOpen!0 (select (arr!14409 _keys!1025) #b00000000000000000000000000000000) _keys!1025 mask!1365) (Found!3540 #b00000000000000000000000000000000)))))

(assert (=> b!470593 (=> (not res!281239) (not e!275730))))

(declare-fun bm!30432 () Bool)

(assert (=> bm!30432 (= call!30435 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1025 mask!1365))))

(assert (= (and d!75249 (not res!281238)) b!470590))

(assert (= (and b!470590 c!56886) b!470593))

(assert (= (and b!470590 (not c!56886)) b!470591))

(assert (= (and b!470593 res!281239) b!470592))

(assert (= (or b!470592 b!470591) bm!30432))

(assert (=> b!470590 m!452833))

(assert (=> b!470590 m!452833))

(assert (=> b!470590 m!452835))

(assert (=> b!470593 m!452833))

(declare-fun m!452879 () Bool)

(assert (=> b!470593 m!452879))

(declare-fun m!452881 () Bool)

(assert (=> b!470593 m!452881))

(assert (=> b!470593 m!452833))

(declare-fun m!452883 () Bool)

(assert (=> b!470593 m!452883))

(declare-fun m!452885 () Bool)

(assert (=> bm!30432 m!452885))

(assert (=> b!470508 d!75249))

(declare-fun b!470604 () Bool)

(declare-fun e!275742 () Bool)

(declare-fun call!30438 () Bool)

(assert (=> b!470604 (= e!275742 call!30438)))

(declare-fun b!470605 () Bool)

(declare-fun e!275739 () Bool)

(assert (=> b!470605 (= e!275739 e!275742)))

(declare-fun c!56889 () Bool)

(assert (=> b!470605 (= c!56889 (validKeyInArray!0 (select (arr!14409 _keys!1025) #b00000000000000000000000000000000)))))

(declare-fun b!470606 () Bool)

(assert (=> b!470606 (= e!275742 call!30438)))

(declare-fun b!470607 () Bool)

(declare-fun e!275741 () Bool)

(declare-fun contains!2544 (List!8793 (_ BitVec 64)) Bool)

(assert (=> b!470607 (= e!275741 (contains!2544 Nil!8790 (select (arr!14409 _keys!1025) #b00000000000000000000000000000000)))))

(declare-fun d!75251 () Bool)

(declare-fun res!281248 () Bool)

(declare-fun e!275740 () Bool)

(assert (=> d!75251 (=> res!281248 e!275740)))

(assert (=> d!75251 (= res!281248 (bvsge #b00000000000000000000000000000000 (size!14761 _keys!1025)))))

(assert (=> d!75251 (= (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8790) e!275740)))

(declare-fun b!470608 () Bool)

(assert (=> b!470608 (= e!275740 e!275739)))

(declare-fun res!281246 () Bool)

(assert (=> b!470608 (=> (not res!281246) (not e!275739))))

(assert (=> b!470608 (= res!281246 (not e!275741))))

(declare-fun res!281247 () Bool)

(assert (=> b!470608 (=> (not res!281247) (not e!275741))))

(assert (=> b!470608 (= res!281247 (validKeyInArray!0 (select (arr!14409 _keys!1025) #b00000000000000000000000000000000)))))

(declare-fun bm!30435 () Bool)

(assert (=> bm!30435 (= call!30438 (arrayNoDuplicates!0 _keys!1025 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!56889 (Cons!8789 (select (arr!14409 _keys!1025) #b00000000000000000000000000000000) Nil!8790) Nil!8790)))))

(assert (= (and d!75251 (not res!281248)) b!470608))

(assert (= (and b!470608 res!281247) b!470607))

(assert (= (and b!470608 res!281246) b!470605))

(assert (= (and b!470605 c!56889) b!470604))

(assert (= (and b!470605 (not c!56889)) b!470606))

(assert (= (or b!470604 b!470606) bm!30435))

(assert (=> b!470605 m!452833))

(assert (=> b!470605 m!452833))

(assert (=> b!470605 m!452835))

(assert (=> b!470607 m!452833))

(assert (=> b!470607 m!452833))

(declare-fun m!452887 () Bool)

(assert (=> b!470607 m!452887))

(assert (=> b!470608 m!452833))

(assert (=> b!470608 m!452833))

(assert (=> b!470608 m!452835))

(assert (=> bm!30435 m!452833))

(declare-fun m!452889 () Bool)

(assert (=> bm!30435 m!452889))

(assert (=> b!470509 d!75251))

(declare-fun b!470615 () Bool)

(declare-fun e!275748 () Bool)

(assert (=> b!470615 (= e!275748 tp_is_empty!13125)))

(declare-fun mapIsEmpty!21394 () Bool)

(declare-fun mapRes!21394 () Bool)

(assert (=> mapIsEmpty!21394 mapRes!21394))

(declare-fun condMapEmpty!21394 () Bool)

(declare-fun mapDefault!21394 () ValueCell!6219)

(assert (=> mapNonEmpty!21388 (= condMapEmpty!21394 (= mapRest!21388 ((as const (Array (_ BitVec 32) ValueCell!6219)) mapDefault!21394)))))

(declare-fun e!275747 () Bool)

(assert (=> mapNonEmpty!21388 (= tp!41113 (and e!275747 mapRes!21394))))

(declare-fun mapNonEmpty!21394 () Bool)

(declare-fun tp!41122 () Bool)

(assert (=> mapNonEmpty!21394 (= mapRes!21394 (and tp!41122 e!275748))))

(declare-fun mapValue!21394 () ValueCell!6219)

(declare-fun mapKey!21394 () (_ BitVec 32))

(declare-fun mapRest!21394 () (Array (_ BitVec 32) ValueCell!6219))

(assert (=> mapNonEmpty!21394 (= mapRest!21388 (store mapRest!21394 mapKey!21394 mapValue!21394))))

(declare-fun b!470616 () Bool)

(assert (=> b!470616 (= e!275747 tp_is_empty!13125)))

(assert (= (and mapNonEmpty!21388 condMapEmpty!21394) mapIsEmpty!21394))

(assert (= (and mapNonEmpty!21388 (not condMapEmpty!21394)) mapNonEmpty!21394))

(assert (= (and mapNonEmpty!21394 ((_ is ValueCellFull!6219) mapValue!21394)) b!470615))

(assert (= (and mapNonEmpty!21388 ((_ is ValueCellFull!6219) mapDefault!21394)) b!470616))

(declare-fun m!452891 () Bool)

(assert (=> mapNonEmpty!21394 m!452891))

(declare-fun b_lambda!10175 () Bool)

(assert (= b_lambda!10169 (or (and start!42172 b_free!11697) b_lambda!10175)))

(declare-fun b_lambda!10177 () Bool)

(assert (= b_lambda!10171 (or (and start!42172 b_free!11697) b_lambda!10177)))

(declare-fun b_lambda!10179 () Bool)

(assert (= b_lambda!10173 (or (and start!42172 b_free!11697) b_lambda!10179)))

(declare-fun b_lambda!10181 () Bool)

(assert (= b_lambda!10167 (or (and start!42172 b_free!11697) b_lambda!10181)))

(check-sat (not d!75239) (not b!470558) tp_is_empty!13125 (not bm!30432) (not b_lambda!10175) (not b!470590) b_and!20147 (not bm!30428) (not b!470605) (not b!470608) (not b_lambda!10177) (not b!470571) (not d!75237) (not b!470576) (not b_next!11697) (not b!470575) (not b_lambda!10179) (not b!470566) (not b_lambda!10181) (not b!470557) (not b!470562) (not b!470570) (not b!470561) (not b!470593) (not b!470556) (not b!470559) (not b!470572) (not d!75241) (not bm!30435) (not b!470560) (not b!470573) (not mapNonEmpty!21394) (not b!470607) (not b!470574) (not b!470580) (not bm!30429))
(check-sat b_and!20147 (not b_next!11697))

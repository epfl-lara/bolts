; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!84558 () Bool)

(assert start!84558)

(declare-fun b_free!20025 () Bool)

(declare-fun b_next!20025 () Bool)

(assert (=> start!84558 (= b_free!20025 (not b_next!20025))))

(declare-fun tp!69860 () Bool)

(declare-fun b_and!32137 () Bool)

(assert (=> start!84558 (= tp!69860 b_and!32137)))

(declare-fun b!988553 () Bool)

(declare-fun e!557454 () Bool)

(declare-fun tp_is_empty!23241 () Bool)

(assert (=> b!988553 (= e!557454 tp_is_empty!23241)))

(declare-fun b!988554 () Bool)

(declare-fun res!661297 () Bool)

(declare-fun e!557455 () Bool)

(assert (=> b!988554 (=> (not res!661297) (not e!557455))))

(declare-datatypes ((array!62429 0))(
  ( (array!62430 (arr!30065 (Array (_ BitVec 32) (_ BitVec 64))) (size!30545 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!62429)

(declare-fun from!1932 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!988554 (= res!661297 (validKeyInArray!0 (select (arr!30065 _keys!1544) from!1932)))))

(declare-fun b!988555 () Bool)

(declare-fun res!661296 () Bool)

(assert (=> b!988555 (=> (not res!661296) (not e!557455))))

(assert (=> b!988555 (= res!661296 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30545 _keys!1544))))))

(declare-fun b!988556 () Bool)

(declare-fun e!557457 () Bool)

(assert (=> b!988556 (= e!557457 tp_is_empty!23241)))

(declare-fun b!988557 () Bool)

(declare-fun res!661298 () Bool)

(assert (=> b!988557 (=> (not res!661298) (not e!557455))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-datatypes ((V!35971 0))(
  ( (V!35972 (val!11671 Int)) )
))
(declare-datatypes ((ValueCell!11139 0))(
  ( (ValueCellFull!11139 (v!14238 V!35971)) (EmptyCell!11139) )
))
(declare-datatypes ((array!62431 0))(
  ( (array!62432 (arr!30066 (Array (_ BitVec 32) ValueCell!11139)) (size!30546 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!62431)

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!988557 (= res!661298 (and (= (size!30546 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30545 _keys!1544) (size!30546 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!988558 () Bool)

(declare-fun e!557453 () Bool)

(declare-fun mapRes!36900 () Bool)

(assert (=> b!988558 (= e!557453 (and e!557454 mapRes!36900))))

(declare-fun condMapEmpty!36900 () Bool)

(declare-fun mapDefault!36900 () ValueCell!11139)

(assert (=> b!988558 (= condMapEmpty!36900 (= (arr!30066 _values!1278) ((as const (Array (_ BitVec 32) ValueCell!11139)) mapDefault!36900)))))

(declare-fun b!988559 () Bool)

(declare-fun res!661295 () Bool)

(assert (=> b!988559 (=> (not res!661295) (not e!557455))))

(assert (=> b!988559 (= res!661295 (and (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun mapNonEmpty!36900 () Bool)

(declare-fun tp!69861 () Bool)

(assert (=> mapNonEmpty!36900 (= mapRes!36900 (and tp!69861 e!557457))))

(declare-fun mapValue!36900 () ValueCell!11139)

(declare-fun mapRest!36900 () (Array (_ BitVec 32) ValueCell!11139))

(declare-fun mapKey!36900 () (_ BitVec 32))

(assert (=> mapNonEmpty!36900 (= (arr!30066 _values!1278) (store mapRest!36900 mapKey!36900 mapValue!36900))))

(declare-fun b!988560 () Bool)

(declare-fun res!661294 () Bool)

(assert (=> b!988560 (=> (not res!661294) (not e!557455))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!62429 (_ BitVec 32)) Bool)

(assert (=> b!988560 (= res!661294 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun res!661300 () Bool)

(assert (=> start!84558 (=> (not res!661300) (not e!557455))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84558 (= res!661300 (validMask!0 mask!1948))))

(assert (=> start!84558 e!557455))

(assert (=> start!84558 true))

(assert (=> start!84558 tp_is_empty!23241))

(declare-fun array_inv!23085 (array!62431) Bool)

(assert (=> start!84558 (and (array_inv!23085 _values!1278) e!557453)))

(assert (=> start!84558 tp!69860))

(declare-fun array_inv!23086 (array!62429) Bool)

(assert (=> start!84558 (array_inv!23086 _keys!1544)))

(declare-fun b!988552 () Bool)

(declare-fun res!661299 () Bool)

(assert (=> b!988552 (=> (not res!661299) (not e!557455))))

(declare-datatypes ((List!20921 0))(
  ( (Nil!20918) (Cons!20917 (h!22079 (_ BitVec 64)) (t!29866 List!20921)) )
))
(declare-fun arrayNoDuplicates!0 (array!62429 (_ BitVec 32) List!20921) Bool)

(assert (=> b!988552 (= res!661299 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20918))))

(declare-fun b!988561 () Bool)

(assert (=> b!988561 (= e!557455 (= #b0000000000000000000000000000000000000000000000000000000000000000 (select (arr!30065 _keys!1544) from!1932)))))

(declare-fun minValue!1220 () V!35971)

(declare-fun zeroValue!1220 () V!35971)

(declare-fun defaultEntry!1281 () Int)

(declare-datatypes ((tuple2!14970 0))(
  ( (tuple2!14971 (_1!7495 (_ BitVec 64)) (_2!7495 V!35971)) )
))
(declare-datatypes ((List!20922 0))(
  ( (Nil!20919) (Cons!20918 (h!22080 tuple2!14970) (t!29867 List!20922)) )
))
(declare-datatypes ((ListLongMap!13681 0))(
  ( (ListLongMap!13682 (toList!6856 List!20922)) )
))
(declare-fun lt!438489 () ListLongMap!13681)

(declare-fun getCurrentListMapNoExtraKeys!3506 (array!62429 array!62431 (_ BitVec 32) (_ BitVec 32) V!35971 V!35971 (_ BitVec 32) Int) ListLongMap!13681)

(assert (=> b!988561 (= lt!438489 (getCurrentListMapNoExtraKeys!3506 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(declare-fun mapIsEmpty!36900 () Bool)

(assert (=> mapIsEmpty!36900 mapRes!36900))

(assert (= (and start!84558 res!661300) b!988557))

(assert (= (and b!988557 res!661298) b!988560))

(assert (= (and b!988560 res!661294) b!988552))

(assert (= (and b!988552 res!661299) b!988555))

(assert (= (and b!988555 res!661296) b!988554))

(assert (= (and b!988554 res!661297) b!988559))

(assert (= (and b!988559 res!661295) b!988561))

(assert (= (and b!988558 condMapEmpty!36900) mapIsEmpty!36900))

(assert (= (and b!988558 (not condMapEmpty!36900)) mapNonEmpty!36900))

(get-info :version)

(assert (= (and mapNonEmpty!36900 ((_ is ValueCellFull!11139) mapValue!36900)) b!988556))

(assert (= (and b!988558 ((_ is ValueCellFull!11139) mapDefault!36900)) b!988553))

(assert (= start!84558 b!988558))

(declare-fun m!915815 () Bool)

(assert (=> b!988552 m!915815))

(declare-fun m!915817 () Bool)

(assert (=> b!988560 m!915817))

(declare-fun m!915819 () Bool)

(assert (=> start!84558 m!915819))

(declare-fun m!915821 () Bool)

(assert (=> start!84558 m!915821))

(declare-fun m!915823 () Bool)

(assert (=> start!84558 m!915823))

(declare-fun m!915825 () Bool)

(assert (=> mapNonEmpty!36900 m!915825))

(declare-fun m!915827 () Bool)

(assert (=> b!988561 m!915827))

(declare-fun m!915829 () Bool)

(assert (=> b!988561 m!915829))

(assert (=> b!988554 m!915827))

(assert (=> b!988554 m!915827))

(declare-fun m!915831 () Bool)

(assert (=> b!988554 m!915831))

(check-sat (not b_next!20025) (not b!988561) (not b!988560) (not mapNonEmpty!36900) (not start!84558) (not b!988552) b_and!32137 (not b!988554) tp_is_empty!23241)
(check-sat b_and!32137 (not b_next!20025))
(get-model)

(declare-fun b!988600 () Bool)

(declare-fun e!557480 () Bool)

(declare-fun call!41885 () Bool)

(assert (=> b!988600 (= e!557480 call!41885)))

(declare-fun b!988601 () Bool)

(declare-fun e!557481 () Bool)

(assert (=> b!988601 (= e!557480 e!557481)))

(declare-fun lt!438501 () (_ BitVec 64))

(assert (=> b!988601 (= lt!438501 (select (arr!30065 _keys!1544) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!32763 0))(
  ( (Unit!32764) )
))
(declare-fun lt!438500 () Unit!32763)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!62429 (_ BitVec 64) (_ BitVec 32)) Unit!32763)

(assert (=> b!988601 (= lt!438500 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1544 lt!438501 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!62429 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!988601 (arrayContainsKey!0 _keys!1544 lt!438501 #b00000000000000000000000000000000)))

(declare-fun lt!438499 () Unit!32763)

(assert (=> b!988601 (= lt!438499 lt!438500)))

(declare-fun res!661326 () Bool)

(declare-datatypes ((SeekEntryResult!9197 0))(
  ( (MissingZero!9197 (index!39158 (_ BitVec 32))) (Found!9197 (index!39159 (_ BitVec 32))) (Intermediate!9197 (undefined!10009 Bool) (index!39160 (_ BitVec 32)) (x!86019 (_ BitVec 32))) (Undefined!9197) (MissingVacant!9197 (index!39161 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!62429 (_ BitVec 32)) SeekEntryResult!9197)

(assert (=> b!988601 (= res!661326 (= (seekEntryOrOpen!0 (select (arr!30065 _keys!1544) #b00000000000000000000000000000000) _keys!1544 mask!1948) (Found!9197 #b00000000000000000000000000000000)))))

(assert (=> b!988601 (=> (not res!661326) (not e!557481))))

(declare-fun bm!41882 () Bool)

(assert (=> bm!41882 (= call!41885 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1544 mask!1948))))

(declare-fun b!988602 () Bool)

(declare-fun e!557479 () Bool)

(assert (=> b!988602 (= e!557479 e!557480)))

(declare-fun c!100145 () Bool)

(assert (=> b!988602 (= c!100145 (validKeyInArray!0 (select (arr!30065 _keys!1544) #b00000000000000000000000000000000)))))

(declare-fun d!117179 () Bool)

(declare-fun res!661327 () Bool)

(assert (=> d!117179 (=> res!661327 e!557479)))

(assert (=> d!117179 (= res!661327 (bvsge #b00000000000000000000000000000000 (size!30545 _keys!1544)))))

(assert (=> d!117179 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948) e!557479)))

(declare-fun b!988603 () Bool)

(assert (=> b!988603 (= e!557481 call!41885)))

(assert (= (and d!117179 (not res!661327)) b!988602))

(assert (= (and b!988602 c!100145) b!988601))

(assert (= (and b!988602 (not c!100145)) b!988600))

(assert (= (and b!988601 res!661326) b!988603))

(assert (= (or b!988603 b!988600) bm!41882))

(declare-fun m!915851 () Bool)

(assert (=> b!988601 m!915851))

(declare-fun m!915853 () Bool)

(assert (=> b!988601 m!915853))

(declare-fun m!915855 () Bool)

(assert (=> b!988601 m!915855))

(assert (=> b!988601 m!915851))

(declare-fun m!915857 () Bool)

(assert (=> b!988601 m!915857))

(declare-fun m!915859 () Bool)

(assert (=> bm!41882 m!915859))

(assert (=> b!988602 m!915851))

(assert (=> b!988602 m!915851))

(declare-fun m!915861 () Bool)

(assert (=> b!988602 m!915861))

(assert (=> b!988560 d!117179))

(declare-fun d!117181 () Bool)

(assert (=> d!117181 (= (validKeyInArray!0 (select (arr!30065 _keys!1544) from!1932)) (and (not (= (select (arr!30065 _keys!1544) from!1932) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!30065 _keys!1544) from!1932) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!988554 d!117181))

(declare-fun d!117183 () Bool)

(assert (=> d!117183 (= (validMask!0 mask!1948) (and (or (= mask!1948 #b00000000000000000000000000000111) (= mask!1948 #b00000000000000000000000000001111) (= mask!1948 #b00000000000000000000000000011111) (= mask!1948 #b00000000000000000000000000111111) (= mask!1948 #b00000000000000000000000001111111) (= mask!1948 #b00000000000000000000000011111111) (= mask!1948 #b00000000000000000000000111111111) (= mask!1948 #b00000000000000000000001111111111) (= mask!1948 #b00000000000000000000011111111111) (= mask!1948 #b00000000000000000000111111111111) (= mask!1948 #b00000000000000000001111111111111) (= mask!1948 #b00000000000000000011111111111111) (= mask!1948 #b00000000000000000111111111111111) (= mask!1948 #b00000000000000001111111111111111) (= mask!1948 #b00000000000000011111111111111111) (= mask!1948 #b00000000000000111111111111111111) (= mask!1948 #b00000000000001111111111111111111) (= mask!1948 #b00000000000011111111111111111111) (= mask!1948 #b00000000000111111111111111111111) (= mask!1948 #b00000000001111111111111111111111) (= mask!1948 #b00000000011111111111111111111111) (= mask!1948 #b00000000111111111111111111111111) (= mask!1948 #b00000001111111111111111111111111) (= mask!1948 #b00000011111111111111111111111111) (= mask!1948 #b00000111111111111111111111111111) (= mask!1948 #b00001111111111111111111111111111) (= mask!1948 #b00011111111111111111111111111111) (= mask!1948 #b00111111111111111111111111111111)) (bvsle mask!1948 #b00111111111111111111111111111111)))))

(assert (=> start!84558 d!117183))

(declare-fun d!117185 () Bool)

(assert (=> d!117185 (= (array_inv!23085 _values!1278) (bvsge (size!30546 _values!1278) #b00000000000000000000000000000000))))

(assert (=> start!84558 d!117185))

(declare-fun d!117187 () Bool)

(assert (=> d!117187 (= (array_inv!23086 _keys!1544) (bvsge (size!30545 _keys!1544) #b00000000000000000000000000000000))))

(assert (=> start!84558 d!117187))

(declare-fun b!988628 () Bool)

(declare-fun e!557498 () Bool)

(declare-fun lt!438522 () ListLongMap!13681)

(declare-fun isEmpty!727 (ListLongMap!13681) Bool)

(assert (=> b!988628 (= e!557498 (isEmpty!727 lt!438522))))

(declare-fun b!988629 () Bool)

(declare-fun res!661339 () Bool)

(declare-fun e!557499 () Bool)

(assert (=> b!988629 (=> (not res!661339) (not e!557499))))

(declare-fun contains!5725 (ListLongMap!13681 (_ BitVec 64)) Bool)

(assert (=> b!988629 (= res!661339 (not (contains!5725 lt!438522 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!988630 () Bool)

(declare-fun e!557496 () Bool)

(assert (=> b!988630 (= e!557496 (validKeyInArray!0 (select (arr!30065 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932))))))

(assert (=> b!988630 (bvsge (bvadd #b00000000000000000000000000000001 from!1932) #b00000000000000000000000000000000)))

(declare-fun d!117189 () Bool)

(assert (=> d!117189 e!557499))

(declare-fun res!661337 () Bool)

(assert (=> d!117189 (=> (not res!661337) (not e!557499))))

(assert (=> d!117189 (= res!661337 (not (contains!5725 lt!438522 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!557497 () ListLongMap!13681)

(assert (=> d!117189 (= lt!438522 e!557497)))

(declare-fun c!100155 () Bool)

(assert (=> d!117189 (= c!100155 (bvsge (bvadd #b00000000000000000000000000000001 from!1932) (size!30545 _keys!1544)))))

(assert (=> d!117189 (validMask!0 mask!1948)))

(assert (=> d!117189 (= (getCurrentListMapNoExtraKeys!3506 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281) lt!438522)))

(declare-fun b!988631 () Bool)

(declare-fun e!557502 () ListLongMap!13681)

(declare-fun call!41888 () ListLongMap!13681)

(assert (=> b!988631 (= e!557502 call!41888)))

(declare-fun b!988632 () Bool)

(assert (=> b!988632 (= e!557498 (= lt!438522 (getCurrentListMapNoExtraKeys!3506 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932 #b00000000000000000000000000000001) defaultEntry!1281)))))

(declare-fun b!988633 () Bool)

(assert (=> b!988633 (= e!557497 (ListLongMap!13682 Nil!20919))))

(declare-fun b!988634 () Bool)

(assert (=> b!988634 (= e!557497 e!557502)))

(declare-fun c!100154 () Bool)

(assert (=> b!988634 (= c!100154 (validKeyInArray!0 (select (arr!30065 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932))))))

(declare-fun b!988635 () Bool)

(declare-fun e!557501 () Bool)

(declare-fun e!557500 () Bool)

(assert (=> b!988635 (= e!557501 e!557500)))

(assert (=> b!988635 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1932) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1932) (size!30545 _keys!1544)))))

(declare-fun res!661336 () Bool)

(assert (=> b!988635 (= res!661336 (contains!5725 lt!438522 (select (arr!30065 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932))))))

(assert (=> b!988635 (=> (not res!661336) (not e!557500))))

(declare-fun bm!41885 () Bool)

(assert (=> bm!41885 (= call!41888 (getCurrentListMapNoExtraKeys!3506 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932 #b00000000000000000000000000000001) defaultEntry!1281))))

(declare-fun b!988636 () Bool)

(assert (=> b!988636 (= e!557501 e!557498)))

(declare-fun c!100157 () Bool)

(assert (=> b!988636 (= c!100157 (bvslt (bvadd #b00000000000000000000000000000001 from!1932) (size!30545 _keys!1544)))))

(declare-fun b!988637 () Bool)

(assert (=> b!988637 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1932) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1932) (size!30545 _keys!1544)))))

(assert (=> b!988637 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1932) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1932) (size!30546 _values!1278)))))

(declare-fun apply!929 (ListLongMap!13681 (_ BitVec 64)) V!35971)

(declare-fun get!15618 (ValueCell!11139 V!35971) V!35971)

(declare-fun dynLambda!1866 (Int (_ BitVec 64)) V!35971)

(assert (=> b!988637 (= e!557500 (= (apply!929 lt!438522 (select (arr!30065 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932))) (get!15618 (select (arr!30066 _values!1278) (bvadd #b00000000000000000000000000000001 from!1932)) (dynLambda!1866 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!988638 () Bool)

(declare-fun lt!438519 () Unit!32763)

(declare-fun lt!438521 () Unit!32763)

(assert (=> b!988638 (= lt!438519 lt!438521)))

(declare-fun lt!438520 () V!35971)

(declare-fun lt!438517 () (_ BitVec 64))

(declare-fun lt!438518 () ListLongMap!13681)

(declare-fun lt!438516 () (_ BitVec 64))

(declare-fun +!3038 (ListLongMap!13681 tuple2!14970) ListLongMap!13681)

(assert (=> b!988638 (not (contains!5725 (+!3038 lt!438518 (tuple2!14971 lt!438516 lt!438520)) lt!438517))))

(declare-fun addStillNotContains!235 (ListLongMap!13681 (_ BitVec 64) V!35971 (_ BitVec 64)) Unit!32763)

(assert (=> b!988638 (= lt!438521 (addStillNotContains!235 lt!438518 lt!438516 lt!438520 lt!438517))))

(assert (=> b!988638 (= lt!438517 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!988638 (= lt!438520 (get!15618 (select (arr!30066 _values!1278) (bvadd #b00000000000000000000000000000001 from!1932)) (dynLambda!1866 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!988638 (= lt!438516 (select (arr!30065 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932)))))

(assert (=> b!988638 (= lt!438518 call!41888)))

(assert (=> b!988638 (= e!557502 (+!3038 call!41888 (tuple2!14971 (select (arr!30065 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932)) (get!15618 (select (arr!30066 _values!1278) (bvadd #b00000000000000000000000000000001 from!1932)) (dynLambda!1866 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!988639 () Bool)

(assert (=> b!988639 (= e!557499 e!557501)))

(declare-fun c!100156 () Bool)

(assert (=> b!988639 (= c!100156 e!557496)))

(declare-fun res!661338 () Bool)

(assert (=> b!988639 (=> (not res!661338) (not e!557496))))

(assert (=> b!988639 (= res!661338 (bvslt (bvadd #b00000000000000000000000000000001 from!1932) (size!30545 _keys!1544)))))

(assert (= (and d!117189 c!100155) b!988633))

(assert (= (and d!117189 (not c!100155)) b!988634))

(assert (= (and b!988634 c!100154) b!988638))

(assert (= (and b!988634 (not c!100154)) b!988631))

(assert (= (or b!988638 b!988631) bm!41885))

(assert (= (and d!117189 res!661337) b!988629))

(assert (= (and b!988629 res!661339) b!988639))

(assert (= (and b!988639 res!661338) b!988630))

(assert (= (and b!988639 c!100156) b!988635))

(assert (= (and b!988639 (not c!100156)) b!988636))

(assert (= (and b!988635 res!661336) b!988637))

(assert (= (and b!988636 c!100157) b!988632))

(assert (= (and b!988636 (not c!100157)) b!988628))

(declare-fun b_lambda!15107 () Bool)

(assert (=> (not b_lambda!15107) (not b!988637)))

(declare-fun t!29869 () Bool)

(declare-fun tb!6797 () Bool)

(assert (=> (and start!84558 (= defaultEntry!1281 defaultEntry!1281) t!29869) tb!6797))

(declare-fun result!13581 () Bool)

(assert (=> tb!6797 (= result!13581 tp_is_empty!23241)))

(assert (=> b!988637 t!29869))

(declare-fun b_and!32141 () Bool)

(assert (= b_and!32137 (and (=> t!29869 result!13581) b_and!32141)))

(declare-fun b_lambda!15109 () Bool)

(assert (=> (not b_lambda!15109) (not b!988638)))

(assert (=> b!988638 t!29869))

(declare-fun b_and!32143 () Bool)

(assert (= b_and!32141 (and (=> t!29869 result!13581) b_and!32143)))

(declare-fun m!915863 () Bool)

(assert (=> b!988637 m!915863))

(declare-fun m!915865 () Bool)

(assert (=> b!988637 m!915865))

(declare-fun m!915867 () Bool)

(assert (=> b!988637 m!915867))

(declare-fun m!915869 () Bool)

(assert (=> b!988637 m!915869))

(assert (=> b!988637 m!915867))

(declare-fun m!915871 () Bool)

(assert (=> b!988637 m!915871))

(assert (=> b!988637 m!915869))

(assert (=> b!988637 m!915863))

(assert (=> b!988635 m!915863))

(assert (=> b!988635 m!915863))

(declare-fun m!915873 () Bool)

(assert (=> b!988635 m!915873))

(declare-fun m!915875 () Bool)

(assert (=> d!117189 m!915875))

(assert (=> d!117189 m!915819))

(declare-fun m!915877 () Bool)

(assert (=> b!988638 m!915877))

(declare-fun m!915879 () Bool)

(assert (=> b!988638 m!915879))

(assert (=> b!988638 m!915867))

(assert (=> b!988638 m!915869))

(assert (=> b!988638 m!915867))

(assert (=> b!988638 m!915871))

(assert (=> b!988638 m!915879))

(declare-fun m!915881 () Bool)

(assert (=> b!988638 m!915881))

(declare-fun m!915883 () Bool)

(assert (=> b!988638 m!915883))

(assert (=> b!988638 m!915869))

(assert (=> b!988638 m!915863))

(assert (=> b!988634 m!915863))

(assert (=> b!988634 m!915863))

(declare-fun m!915885 () Bool)

(assert (=> b!988634 m!915885))

(declare-fun m!915887 () Bool)

(assert (=> b!988628 m!915887))

(declare-fun m!915889 () Bool)

(assert (=> b!988629 m!915889))

(declare-fun m!915891 () Bool)

(assert (=> b!988632 m!915891))

(assert (=> bm!41885 m!915891))

(assert (=> b!988630 m!915863))

(assert (=> b!988630 m!915863))

(assert (=> b!988630 m!915885))

(assert (=> b!988561 d!117189))

(declare-fun b!988652 () Bool)

(declare-fun e!557511 () Bool)

(declare-fun e!557514 () Bool)

(assert (=> b!988652 (= e!557511 e!557514)))

(declare-fun c!100160 () Bool)

(assert (=> b!988652 (= c!100160 (validKeyInArray!0 (select (arr!30065 _keys!1544) #b00000000000000000000000000000000)))))

(declare-fun b!988653 () Bool)

(declare-fun call!41891 () Bool)

(assert (=> b!988653 (= e!557514 call!41891)))

(declare-fun d!117191 () Bool)

(declare-fun res!661348 () Bool)

(declare-fun e!557512 () Bool)

(assert (=> d!117191 (=> res!661348 e!557512)))

(assert (=> d!117191 (= res!661348 (bvsge #b00000000000000000000000000000000 (size!30545 _keys!1544)))))

(assert (=> d!117191 (= (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20918) e!557512)))

(declare-fun bm!41888 () Bool)

(assert (=> bm!41888 (= call!41891 (arrayNoDuplicates!0 _keys!1544 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!100160 (Cons!20917 (select (arr!30065 _keys!1544) #b00000000000000000000000000000000) Nil!20918) Nil!20918)))))

(declare-fun b!988654 () Bool)

(declare-fun e!557513 () Bool)

(declare-fun contains!5726 (List!20921 (_ BitVec 64)) Bool)

(assert (=> b!988654 (= e!557513 (contains!5726 Nil!20918 (select (arr!30065 _keys!1544) #b00000000000000000000000000000000)))))

(declare-fun b!988655 () Bool)

(assert (=> b!988655 (= e!557514 call!41891)))

(declare-fun b!988656 () Bool)

(assert (=> b!988656 (= e!557512 e!557511)))

(declare-fun res!661346 () Bool)

(assert (=> b!988656 (=> (not res!661346) (not e!557511))))

(assert (=> b!988656 (= res!661346 (not e!557513))))

(declare-fun res!661347 () Bool)

(assert (=> b!988656 (=> (not res!661347) (not e!557513))))

(assert (=> b!988656 (= res!661347 (validKeyInArray!0 (select (arr!30065 _keys!1544) #b00000000000000000000000000000000)))))

(assert (= (and d!117191 (not res!661348)) b!988656))

(assert (= (and b!988656 res!661347) b!988654))

(assert (= (and b!988656 res!661346) b!988652))

(assert (= (and b!988652 c!100160) b!988653))

(assert (= (and b!988652 (not c!100160)) b!988655))

(assert (= (or b!988653 b!988655) bm!41888))

(assert (=> b!988652 m!915851))

(assert (=> b!988652 m!915851))

(assert (=> b!988652 m!915861))

(assert (=> bm!41888 m!915851))

(declare-fun m!915893 () Bool)

(assert (=> bm!41888 m!915893))

(assert (=> b!988654 m!915851))

(assert (=> b!988654 m!915851))

(declare-fun m!915895 () Bool)

(assert (=> b!988654 m!915895))

(assert (=> b!988656 m!915851))

(assert (=> b!988656 m!915851))

(assert (=> b!988656 m!915861))

(assert (=> b!988552 d!117191))

(declare-fun condMapEmpty!36906 () Bool)

(declare-fun mapDefault!36906 () ValueCell!11139)

(assert (=> mapNonEmpty!36900 (= condMapEmpty!36906 (= mapRest!36900 ((as const (Array (_ BitVec 32) ValueCell!11139)) mapDefault!36906)))))

(declare-fun e!557519 () Bool)

(declare-fun mapRes!36906 () Bool)

(assert (=> mapNonEmpty!36900 (= tp!69861 (and e!557519 mapRes!36906))))

(declare-fun mapNonEmpty!36906 () Bool)

(declare-fun tp!69870 () Bool)

(declare-fun e!557520 () Bool)

(assert (=> mapNonEmpty!36906 (= mapRes!36906 (and tp!69870 e!557520))))

(declare-fun mapValue!36906 () ValueCell!11139)

(declare-fun mapRest!36906 () (Array (_ BitVec 32) ValueCell!11139))

(declare-fun mapKey!36906 () (_ BitVec 32))

(assert (=> mapNonEmpty!36906 (= mapRest!36900 (store mapRest!36906 mapKey!36906 mapValue!36906))))

(declare-fun mapIsEmpty!36906 () Bool)

(assert (=> mapIsEmpty!36906 mapRes!36906))

(declare-fun b!988664 () Bool)

(assert (=> b!988664 (= e!557519 tp_is_empty!23241)))

(declare-fun b!988663 () Bool)

(assert (=> b!988663 (= e!557520 tp_is_empty!23241)))

(assert (= (and mapNonEmpty!36900 condMapEmpty!36906) mapIsEmpty!36906))

(assert (= (and mapNonEmpty!36900 (not condMapEmpty!36906)) mapNonEmpty!36906))

(assert (= (and mapNonEmpty!36906 ((_ is ValueCellFull!11139) mapValue!36906)) b!988663))

(assert (= (and mapNonEmpty!36900 ((_ is ValueCellFull!11139) mapDefault!36906)) b!988664))

(declare-fun m!915897 () Bool)

(assert (=> mapNonEmpty!36906 m!915897))

(declare-fun b_lambda!15111 () Bool)

(assert (= b_lambda!15109 (or (and start!84558 b_free!20025) b_lambda!15111)))

(declare-fun b_lambda!15113 () Bool)

(assert (= b_lambda!15107 (or (and start!84558 b_free!20025) b_lambda!15113)))

(check-sat (not b!988629) (not bm!41888) (not b!988656) (not b_lambda!15113) (not bm!41882) (not b!988652) (not b!988634) (not mapNonEmpty!36906) (not b!988638) (not b_lambda!15111) tp_is_empty!23241 (not b!988654) b_and!32143 (not bm!41885) (not b_next!20025) (not b!988630) (not b!988637) (not b!988602) (not d!117189) (not b!988632) (not b!988601) (not b!988628) (not b!988635))
(check-sat b_and!32143 (not b_next!20025))

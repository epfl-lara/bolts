; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!46954 () Bool)

(assert start!46954)

(declare-fun b!516879 () Bool)

(declare-fun b_free!13607 () Bool)

(declare-fun b_next!13615 () Bool)

(assert (=> b!516879 (= b_free!13607 (not b_next!13615))))

(declare-fun tp!161277 () Bool)

(declare-fun b_and!51077 () Bool)

(assert (=> b!516879 (= tp!161277 b_and!51077)))

(declare-fun b_free!13609 () Bool)

(declare-fun b_next!13617 () Bool)

(assert (=> start!46954 (= b_free!13609 (not b_next!13617))))

(declare-fun tp!161279 () Bool)

(declare-fun b_and!51079 () Bool)

(assert (=> start!46954 (= tp!161279 b_and!51079)))

(declare-fun b!516874 () Bool)

(declare-fun b_free!13611 () Bool)

(declare-fun b_next!13619 () Bool)

(assert (=> b!516874 (= b_free!13611 (not b_next!13619))))

(declare-fun tp!161281 () Bool)

(declare-fun b_and!51081 () Bool)

(assert (=> b!516874 (= tp!161281 b_and!51081)))

(declare-fun b!516868 () Bool)

(declare-fun res!219202 () Bool)

(declare-fun e!309363 () Bool)

(assert (=> b!516868 (=> (not res!219202) (not e!309363))))

(declare-datatypes ((V!1525 0))(
  ( (V!1526 (val!1805 Int)) )
))
(declare-datatypes ((K!1427 0))(
  ( (K!1428 (val!1806 Int)) )
))
(declare-datatypes ((tuple2!5830 0))(
  ( (tuple2!5831 (_1!3131 K!1427) (_2!3131 V!1525)) )
))
(declare-datatypes ((List!4744 0))(
  ( (Nil!4734) (Cons!4734 (h!10133 tuple2!5830) (t!73310 List!4744)) )
))
(declare-datatypes ((array!2035 0))(
  ( (array!2036 (arr!934 (Array (_ BitVec 32) List!4744)) (size!3868 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!497 0))(
  ( (HashableExt!496 (__x!3466 Int)) )
))
(declare-datatypes ((array!2037 0))(
  ( (array!2038 (arr!935 (Array (_ BitVec 32) (_ BitVec 64))) (size!3869 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1050 0))(
  ( (LongMapFixedSize!1051 (defaultEntry!876 Int) (mask!1952 (_ BitVec 32)) (extraKeys!771 (_ BitVec 32)) (zeroValue!781 List!4744) (minValue!781 List!4744) (_size!1159 (_ BitVec 32)) (_keys!816 array!2037) (_values!803 array!2035) (_vacant!586 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!2041 0))(
  ( (Cell!2042 (v!15781 LongMapFixedSize!1050)) )
))
(declare-datatypes ((MutLongMap!525 0))(
  ( (LongMap!525 (underlying!1229 Cell!2041)) (MutLongMapExt!524 (__x!3467 Int)) )
))
(declare-datatypes ((Cell!2043 0))(
  ( (Cell!2044 (v!15782 MutLongMap!525)) )
))
(declare-datatypes ((MutableMap!497 0))(
  ( (MutableMapExt!496 (__x!3468 Int)) (HashMap!497 (underlying!1230 Cell!2043) (hashF!2387 Hashable!497) (_size!1160 (_ BitVec 32)) (defaultValue!646 Int)) )
))
(declare-datatypes ((tuple2!5832 0))(
  ( (tuple2!5833 (_1!3132 Bool) (_2!3132 MutableMap!497)) )
))
(declare-fun lt!215005 () tuple2!5832)

(assert (=> b!516868 (= res!219202 (_1!3132 lt!215005))))

(declare-fun b!516869 () Bool)

(declare-fun e!309354 () Bool)

(declare-fun e!309360 () Bool)

(assert (=> b!516869 (= e!309354 e!309360)))

(declare-fun b!516870 () Bool)

(declare-fun e!309357 () Bool)

(assert (=> b!516870 (= e!309363 (not e!309357))))

(declare-fun res!219201 () Bool)

(assert (=> b!516870 (=> res!219201 e!309357)))

(declare-datatypes ((ListMap!201 0))(
  ( (ListMap!202 (toList!426 List!4744)) )
))
(declare-fun lt!215008 () ListMap!201)

(declare-fun invariantList!78 (List!4744) Bool)

(assert (=> b!516870 (= res!219201 (not (invariantList!78 (toList!426 lt!215008))))))

(declare-fun p!6060 () Int)

(declare-fun forall!1408 (List!4744 Int) Bool)

(assert (=> b!516870 (forall!1408 (toList!426 lt!215008) p!6060)))

(declare-fun lt!215004 () ListMap!201)

(declare-datatypes ((Unit!8623 0))(
  ( (Unit!8624) )
))
(declare-fun lt!215006 () Unit!8623)

(declare-fun lemmaForallSubset!13 (List!4744 List!4744 Int) Unit!8623)

(assert (=> b!516870 (= lt!215006 (lemmaForallSubset!13 (toList!426 lt!215008) (toList!426 lt!215004) p!6060))))

(declare-fun res!219200 () Bool)

(declare-fun e!309358 () Bool)

(assert (=> start!46954 (=> (not res!219200) (not e!309358))))

(declare-fun hm!65 () MutableMap!497)

(get-info :version)

(assert (=> start!46954 (= res!219200 ((_ is HashMap!497) hm!65))))

(assert (=> start!46954 e!309358))

(declare-fun e!309356 () Bool)

(assert (=> start!46954 e!309356))

(assert (=> start!46954 tp!161279))

(declare-fun tp_is_empty!2639 () Bool)

(assert (=> start!46954 tp_is_empty!2639))

(declare-fun b!516871 () Bool)

(declare-fun e!309353 () Bool)

(declare-fun e!309362 () Bool)

(assert (=> b!516871 (= e!309353 e!309362)))

(declare-fun res!219205 () Bool)

(assert (=> b!516871 (=> (not res!219205) (not e!309362))))

(declare-fun valid!491 (MutableMap!497) Bool)

(assert (=> b!516871 (= res!219205 (valid!491 (_2!3132 lt!215005)))))

(declare-fun k0!1740 () K!1427)

(declare-fun remove!43 (MutableMap!497 K!1427) tuple2!5832)

(assert (=> b!516871 (= lt!215005 (remove!43 hm!65 k0!1740))))

(declare-fun -!40 (ListMap!201 K!1427) ListMap!201)

(assert (=> b!516871 (= lt!215008 (-!40 lt!215004 k0!1740))))

(declare-fun b!516872 () Bool)

(declare-fun e!309361 () Bool)

(declare-fun e!309355 () Bool)

(declare-fun lt!215007 () MutLongMap!525)

(assert (=> b!516872 (= e!309361 (and e!309355 ((_ is LongMap!525) lt!215007)))))

(assert (=> b!516872 (= lt!215007 (v!15782 (underlying!1230 hm!65)))))

(declare-fun b!516873 () Bool)

(assert (=> b!516873 (= e!309358 e!309353)))

(declare-fun res!219203 () Bool)

(assert (=> b!516873 (=> (not res!219203) (not e!309353))))

(assert (=> b!516873 (= res!219203 (forall!1408 (toList!426 lt!215004) p!6060))))

(declare-fun map!1049 (MutableMap!497) ListMap!201)

(assert (=> b!516873 (= lt!215004 (map!1049 hm!65))))

(declare-fun e!309359 () Bool)

(declare-fun tp!161282 () Bool)

(declare-fun tp!161283 () Bool)

(declare-fun array_inv!683 (array!2037) Bool)

(declare-fun array_inv!684 (array!2035) Bool)

(assert (=> b!516874 (= e!309360 (and tp!161281 tp!161283 tp!161282 (array_inv!683 (_keys!816 (v!15781 (underlying!1229 (v!15782 (underlying!1230 hm!65)))))) (array_inv!684 (_values!803 (v!15781 (underlying!1229 (v!15782 (underlying!1230 hm!65)))))) e!309359))))

(declare-fun b!516875 () Bool)

(declare-fun res!219199 () Bool)

(assert (=> b!516875 (=> (not res!219199) (not e!309363))))

(declare-fun lt!215009 () ListMap!201)

(declare-fun eq!36 (ListMap!201 ListMap!201) Bool)

(assert (=> b!516875 (= res!219199 (eq!36 lt!215009 lt!215008))))

(declare-fun b!516876 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!830 (List!4744) (InoxSet tuple2!5830))

(assert (=> b!516876 (= e!309357 (= ((_ map implies) (content!830 (toList!426 lt!215009)) (content!830 (toList!426 lt!215008))) ((as const (InoxSet tuple2!5830)) true)))))

(declare-fun b!516877 () Bool)

(assert (=> b!516877 (= e!309362 e!309363)))

(declare-fun res!219204 () Bool)

(assert (=> b!516877 (=> (not res!219204) (not e!309363))))

(assert (=> b!516877 (= res!219204 (invariantList!78 (toList!426 lt!215009)))))

(assert (=> b!516877 (= lt!215009 (map!1049 (_2!3132 lt!215005)))))

(declare-fun b!516878 () Bool)

(declare-fun tp!161278 () Bool)

(declare-fun mapRes!2031 () Bool)

(assert (=> b!516878 (= e!309359 (and tp!161278 mapRes!2031))))

(declare-fun condMapEmpty!2031 () Bool)

(declare-fun mapDefault!2031 () List!4744)

(assert (=> b!516878 (= condMapEmpty!2031 (= (arr!934 (_values!803 (v!15781 (underlying!1229 (v!15782 (underlying!1230 hm!65)))))) ((as const (Array (_ BitVec 32) List!4744)) mapDefault!2031)))))

(declare-fun mapIsEmpty!2031 () Bool)

(assert (=> mapIsEmpty!2031 mapRes!2031))

(assert (=> b!516879 (= e!309356 (and e!309361 tp!161277))))

(declare-fun b!516880 () Bool)

(assert (=> b!516880 (= e!309355 e!309354)))

(declare-fun b!516881 () Bool)

(declare-fun res!219206 () Bool)

(assert (=> b!516881 (=> (not res!219206) (not e!309358))))

(assert (=> b!516881 (= res!219206 (valid!491 hm!65))))

(declare-fun mapNonEmpty!2031 () Bool)

(declare-fun tp!161284 () Bool)

(declare-fun tp!161280 () Bool)

(assert (=> mapNonEmpty!2031 (= mapRes!2031 (and tp!161284 tp!161280))))

(declare-fun mapRest!2031 () (Array (_ BitVec 32) List!4744))

(declare-fun mapValue!2031 () List!4744)

(declare-fun mapKey!2031 () (_ BitVec 32))

(assert (=> mapNonEmpty!2031 (= (arr!934 (_values!803 (v!15781 (underlying!1229 (v!15782 (underlying!1230 hm!65)))))) (store mapRest!2031 mapKey!2031 mapValue!2031))))

(assert (= (and start!46954 res!219200) b!516881))

(assert (= (and b!516881 res!219206) b!516873))

(assert (= (and b!516873 res!219203) b!516871))

(assert (= (and b!516871 res!219205) b!516877))

(assert (= (and b!516877 res!219204) b!516868))

(assert (= (and b!516868 res!219202) b!516875))

(assert (= (and b!516875 res!219199) b!516870))

(assert (= (and b!516870 (not res!219201)) b!516876))

(assert (= (and b!516878 condMapEmpty!2031) mapIsEmpty!2031))

(assert (= (and b!516878 (not condMapEmpty!2031)) mapNonEmpty!2031))

(assert (= b!516874 b!516878))

(assert (= b!516869 b!516874))

(assert (= b!516880 b!516869))

(assert (= (and b!516872 ((_ is LongMap!525) (v!15782 (underlying!1230 hm!65)))) b!516880))

(assert (= b!516879 b!516872))

(assert (= (and start!46954 ((_ is HashMap!497) hm!65)) b!516879))

(declare-fun m!763427 () Bool)

(assert (=> mapNonEmpty!2031 m!763427))

(declare-fun m!763429 () Bool)

(assert (=> b!516877 m!763429))

(declare-fun m!763431 () Bool)

(assert (=> b!516877 m!763431))

(declare-fun m!763433 () Bool)

(assert (=> b!516870 m!763433))

(declare-fun m!763435 () Bool)

(assert (=> b!516870 m!763435))

(declare-fun m!763437 () Bool)

(assert (=> b!516870 m!763437))

(declare-fun m!763439 () Bool)

(assert (=> b!516881 m!763439))

(declare-fun m!763441 () Bool)

(assert (=> b!516875 m!763441))

(declare-fun m!763443 () Bool)

(assert (=> b!516871 m!763443))

(declare-fun m!763445 () Bool)

(assert (=> b!516871 m!763445))

(declare-fun m!763447 () Bool)

(assert (=> b!516871 m!763447))

(declare-fun m!763449 () Bool)

(assert (=> b!516873 m!763449))

(declare-fun m!763451 () Bool)

(assert (=> b!516873 m!763451))

(declare-fun m!763453 () Bool)

(assert (=> b!516874 m!763453))

(declare-fun m!763455 () Bool)

(assert (=> b!516874 m!763455))

(declare-fun m!763457 () Bool)

(assert (=> b!516876 m!763457))

(declare-fun m!763459 () Bool)

(assert (=> b!516876 m!763459))

(check-sat (not b_next!13619) (not b!516871) tp_is_empty!2639 (not b!516874) (not mapNonEmpty!2031) (not b!516870) b_and!51079 (not b!516878) (not b!516881) b_and!51077 b_and!51081 (not b!516873) (not b_next!13615) (not b!516875) (not b!516876) (not b!516877) (not b_next!13617))
(check-sat (not b_next!13619) (not b_next!13615) b_and!51079 (not b_next!13617) b_and!51077 b_and!51081)
(get-model)

(declare-fun d!184841 () Bool)

(declare-fun noDuplicatedKeys!18 (List!4744) Bool)

(assert (=> d!184841 (= (invariantList!78 (toList!426 lt!215008)) (noDuplicatedKeys!18 (toList!426 lt!215008)))))

(declare-fun bs!59904 () Bool)

(assert (= bs!59904 d!184841))

(declare-fun m!763461 () Bool)

(assert (=> bs!59904 m!763461))

(assert (=> b!516870 d!184841))

(declare-fun d!184843 () Bool)

(declare-fun res!219211 () Bool)

(declare-fun e!309369 () Bool)

(assert (=> d!184843 (=> res!219211 e!309369)))

(assert (=> d!184843 (= res!219211 ((_ is Nil!4734) (toList!426 lt!215008)))))

(assert (=> d!184843 (= (forall!1408 (toList!426 lt!215008) p!6060) e!309369)))

(declare-fun b!516886 () Bool)

(declare-fun e!309370 () Bool)

(assert (=> b!516886 (= e!309369 e!309370)))

(declare-fun res!219212 () Bool)

(assert (=> b!516886 (=> (not res!219212) (not e!309370))))

(declare-fun dynLambda!2982 (Int tuple2!5830) Bool)

(assert (=> b!516886 (= res!219212 (dynLambda!2982 p!6060 (h!10133 (toList!426 lt!215008))))))

(declare-fun b!516887 () Bool)

(assert (=> b!516887 (= e!309370 (forall!1408 (t!73310 (toList!426 lt!215008)) p!6060))))

(assert (= (and d!184843 (not res!219211)) b!516886))

(assert (= (and b!516886 res!219212) b!516887))

(declare-fun b_lambda!20093 () Bool)

(assert (=> (not b_lambda!20093) (not b!516886)))

(declare-fun t!73312 () Bool)

(declare-fun tb!47165 () Bool)

(assert (=> (and start!46954 (= p!6060 p!6060) t!73312) tb!47165))

(declare-fun result!52232 () Bool)

(assert (=> tb!47165 (= result!52232 true)))

(assert (=> b!516886 t!73312))

(declare-fun b_and!51083 () Bool)

(assert (= b_and!51079 (and (=> t!73312 result!52232) b_and!51083)))

(declare-fun m!763463 () Bool)

(assert (=> b!516886 m!763463))

(declare-fun m!763465 () Bool)

(assert (=> b!516887 m!763465))

(assert (=> b!516870 d!184843))

(declare-fun d!184845 () Bool)

(assert (=> d!184845 (forall!1408 (toList!426 lt!215008) p!6060)))

(declare-fun lt!215012 () Unit!8623)

(declare-fun choose!3685 (List!4744 List!4744 Int) Unit!8623)

(assert (=> d!184845 (= lt!215012 (choose!3685 (toList!426 lt!215008) (toList!426 lt!215004) p!6060))))

(assert (=> d!184845 (invariantList!78 (toList!426 lt!215008))))

(assert (=> d!184845 (= (lemmaForallSubset!13 (toList!426 lt!215008) (toList!426 lt!215004) p!6060) lt!215012)))

(declare-fun bs!59905 () Bool)

(assert (= bs!59905 d!184845))

(assert (=> bs!59905 m!763435))

(declare-fun m!763467 () Bool)

(assert (=> bs!59905 m!763467))

(assert (=> bs!59905 m!763433))

(assert (=> b!516870 d!184845))

(declare-fun d!184847 () Bool)

(assert (=> d!184847 (= (eq!36 lt!215009 lt!215008) (= (content!830 (toList!426 lt!215009)) (content!830 (toList!426 lt!215008))))))

(declare-fun bs!59906 () Bool)

(assert (= bs!59906 d!184847))

(assert (=> bs!59906 m!763457))

(assert (=> bs!59906 m!763459))

(assert (=> b!516875 d!184847))

(declare-fun d!184849 () Bool)

(declare-fun res!219213 () Bool)

(declare-fun e!309371 () Bool)

(assert (=> d!184849 (=> res!219213 e!309371)))

(assert (=> d!184849 (= res!219213 ((_ is Nil!4734) (toList!426 lt!215004)))))

(assert (=> d!184849 (= (forall!1408 (toList!426 lt!215004) p!6060) e!309371)))

(declare-fun b!516888 () Bool)

(declare-fun e!309372 () Bool)

(assert (=> b!516888 (= e!309371 e!309372)))

(declare-fun res!219214 () Bool)

(assert (=> b!516888 (=> (not res!219214) (not e!309372))))

(assert (=> b!516888 (= res!219214 (dynLambda!2982 p!6060 (h!10133 (toList!426 lt!215004))))))

(declare-fun b!516889 () Bool)

(assert (=> b!516889 (= e!309372 (forall!1408 (t!73310 (toList!426 lt!215004)) p!6060))))

(assert (= (and d!184849 (not res!219213)) b!516888))

(assert (= (and b!516888 res!219214) b!516889))

(declare-fun b_lambda!20095 () Bool)

(assert (=> (not b_lambda!20095) (not b!516888)))

(declare-fun t!73314 () Bool)

(declare-fun tb!47167 () Bool)

(assert (=> (and start!46954 (= p!6060 p!6060) t!73314) tb!47167))

(declare-fun result!52234 () Bool)

(assert (=> tb!47167 (= result!52234 true)))

(assert (=> b!516888 t!73314))

(declare-fun b_and!51085 () Bool)

(assert (= b_and!51083 (and (=> t!73314 result!52234) b_and!51085)))

(declare-fun m!763469 () Bool)

(assert (=> b!516888 m!763469))

(declare-fun m!763471 () Bool)

(assert (=> b!516889 m!763471))

(assert (=> b!516873 d!184849))

(declare-fun d!184851 () Bool)

(declare-fun lt!215015 () ListMap!201)

(assert (=> d!184851 (invariantList!78 (toList!426 lt!215015))))

(declare-datatypes ((tuple2!5834 0))(
  ( (tuple2!5835 (_1!3133 (_ BitVec 64)) (_2!3133 List!4744)) )
))
(declare-datatypes ((List!4745 0))(
  ( (Nil!4735) (Cons!4735 (h!10134 tuple2!5834) (t!73315 List!4745)) )
))
(declare-fun extractMap!23 (List!4745) ListMap!201)

(declare-datatypes ((ListLongMap!83 0))(
  ( (ListLongMap!84 (toList!427 List!4745)) )
))
(declare-fun map!1050 (MutLongMap!525) ListLongMap!83)

(assert (=> d!184851 (= lt!215015 (extractMap!23 (toList!427 (map!1050 (v!15782 (underlying!1230 hm!65))))))))

(assert (=> d!184851 (valid!491 hm!65)))

(assert (=> d!184851 (= (map!1049 hm!65) lt!215015)))

(declare-fun bs!59907 () Bool)

(assert (= bs!59907 d!184851))

(declare-fun m!763473 () Bool)

(assert (=> bs!59907 m!763473))

(declare-fun m!763475 () Bool)

(assert (=> bs!59907 m!763475))

(declare-fun m!763477 () Bool)

(assert (=> bs!59907 m!763477))

(assert (=> bs!59907 m!763439))

(assert (=> b!516873 d!184851))

(declare-fun d!184853 () Bool)

(assert (=> d!184853 (= (array_inv!683 (_keys!816 (v!15781 (underlying!1229 (v!15782 (underlying!1230 hm!65)))))) (bvsge (size!3869 (_keys!816 (v!15781 (underlying!1229 (v!15782 (underlying!1230 hm!65)))))) #b00000000000000000000000000000000))))

(assert (=> b!516874 d!184853))

(declare-fun d!184855 () Bool)

(assert (=> d!184855 (= (array_inv!684 (_values!803 (v!15781 (underlying!1229 (v!15782 (underlying!1230 hm!65)))))) (bvsge (size!3868 (_values!803 (v!15781 (underlying!1229 (v!15782 (underlying!1230 hm!65)))))) #b00000000000000000000000000000000))))

(assert (=> b!516874 d!184855))

(declare-fun d!184857 () Bool)

(assert (=> d!184857 (= (invariantList!78 (toList!426 lt!215009)) (noDuplicatedKeys!18 (toList!426 lt!215009)))))

(declare-fun bs!59908 () Bool)

(assert (= bs!59908 d!184857))

(declare-fun m!763479 () Bool)

(assert (=> bs!59908 m!763479))

(assert (=> b!516877 d!184857))

(declare-fun d!184859 () Bool)

(declare-fun lt!215016 () ListMap!201)

(assert (=> d!184859 (invariantList!78 (toList!426 lt!215016))))

(assert (=> d!184859 (= lt!215016 (extractMap!23 (toList!427 (map!1050 (v!15782 (underlying!1230 (_2!3132 lt!215005)))))))))

(assert (=> d!184859 (valid!491 (_2!3132 lt!215005))))

(assert (=> d!184859 (= (map!1049 (_2!3132 lt!215005)) lt!215016)))

(declare-fun bs!59909 () Bool)

(assert (= bs!59909 d!184859))

(declare-fun m!763481 () Bool)

(assert (=> bs!59909 m!763481))

(declare-fun m!763483 () Bool)

(assert (=> bs!59909 m!763483))

(declare-fun m!763485 () Bool)

(assert (=> bs!59909 m!763485))

(assert (=> bs!59909 m!763443))

(assert (=> b!516877 d!184859))

(declare-fun d!184861 () Bool)

(declare-fun c!100099 () Bool)

(assert (=> d!184861 (= c!100099 ((_ is Nil!4734) (toList!426 lt!215009)))))

(declare-fun e!309375 () (InoxSet tuple2!5830))

(assert (=> d!184861 (= (content!830 (toList!426 lt!215009)) e!309375)))

(declare-fun b!516894 () Bool)

(assert (=> b!516894 (= e!309375 ((as const (Array tuple2!5830 Bool)) false))))

(declare-fun b!516895 () Bool)

(assert (=> b!516895 (= e!309375 ((_ map or) (store ((as const (Array tuple2!5830 Bool)) false) (h!10133 (toList!426 lt!215009)) true) (content!830 (t!73310 (toList!426 lt!215009)))))))

(assert (= (and d!184861 c!100099) b!516894))

(assert (= (and d!184861 (not c!100099)) b!516895))

(declare-fun m!763487 () Bool)

(assert (=> b!516895 m!763487))

(declare-fun m!763489 () Bool)

(assert (=> b!516895 m!763489))

(assert (=> b!516876 d!184861))

(declare-fun d!184863 () Bool)

(declare-fun c!100100 () Bool)

(assert (=> d!184863 (= c!100100 ((_ is Nil!4734) (toList!426 lt!215008)))))

(declare-fun e!309376 () (InoxSet tuple2!5830))

(assert (=> d!184863 (= (content!830 (toList!426 lt!215008)) e!309376)))

(declare-fun b!516896 () Bool)

(assert (=> b!516896 (= e!309376 ((as const (Array tuple2!5830 Bool)) false))))

(declare-fun b!516897 () Bool)

(assert (=> b!516897 (= e!309376 ((_ map or) (store ((as const (Array tuple2!5830 Bool)) false) (h!10133 (toList!426 lt!215008)) true) (content!830 (t!73310 (toList!426 lt!215008)))))))

(assert (= (and d!184863 c!100100) b!516896))

(assert (= (and d!184863 (not c!100100)) b!516897))

(declare-fun m!763491 () Bool)

(assert (=> b!516897 m!763491))

(declare-fun m!763493 () Bool)

(assert (=> b!516897 m!763493))

(assert (=> b!516876 d!184863))

(declare-fun d!184865 () Bool)

(declare-fun res!219219 () Bool)

(declare-fun e!309379 () Bool)

(assert (=> d!184865 (=> (not res!219219) (not e!309379))))

(declare-fun valid!492 (MutLongMap!525) Bool)

(assert (=> d!184865 (= res!219219 (valid!492 (v!15782 (underlying!1230 hm!65))))))

(assert (=> d!184865 (= (valid!491 hm!65) e!309379)))

(declare-fun b!516902 () Bool)

(declare-fun res!219220 () Bool)

(assert (=> b!516902 (=> (not res!219220) (not e!309379))))

(declare-fun lambda!14527 () Int)

(declare-fun forall!1409 (List!4745 Int) Bool)

(assert (=> b!516902 (= res!219220 (forall!1409 (toList!427 (map!1050 (v!15782 (underlying!1230 hm!65)))) lambda!14527))))

(declare-fun b!516903 () Bool)

(declare-fun allKeysSameHashInMap!30 (ListLongMap!83 Hashable!497) Bool)

(assert (=> b!516903 (= e!309379 (allKeysSameHashInMap!30 (map!1050 (v!15782 (underlying!1230 hm!65))) (hashF!2387 hm!65)))))

(assert (= (and d!184865 res!219219) b!516902))

(assert (= (and b!516902 res!219220) b!516903))

(declare-fun m!763495 () Bool)

(assert (=> d!184865 m!763495))

(assert (=> b!516902 m!763475))

(declare-fun m!763497 () Bool)

(assert (=> b!516902 m!763497))

(assert (=> b!516903 m!763475))

(assert (=> b!516903 m!763475))

(declare-fun m!763499 () Bool)

(assert (=> b!516903 m!763499))

(assert (=> b!516881 d!184865))

(declare-fun bs!59910 () Bool)

(declare-fun b!516904 () Bool)

(assert (= bs!59910 (and b!516904 b!516902)))

(declare-fun lambda!14528 () Int)

(assert (=> bs!59910 (= lambda!14528 lambda!14527)))

(declare-fun d!184867 () Bool)

(declare-fun res!219221 () Bool)

(declare-fun e!309380 () Bool)

(assert (=> d!184867 (=> (not res!219221) (not e!309380))))

(assert (=> d!184867 (= res!219221 (valid!492 (v!15782 (underlying!1230 (_2!3132 lt!215005)))))))

(assert (=> d!184867 (= (valid!491 (_2!3132 lt!215005)) e!309380)))

(declare-fun res!219222 () Bool)

(assert (=> b!516904 (=> (not res!219222) (not e!309380))))

(assert (=> b!516904 (= res!219222 (forall!1409 (toList!427 (map!1050 (v!15782 (underlying!1230 (_2!3132 lt!215005))))) lambda!14528))))

(declare-fun b!516905 () Bool)

(assert (=> b!516905 (= e!309380 (allKeysSameHashInMap!30 (map!1050 (v!15782 (underlying!1230 (_2!3132 lt!215005)))) (hashF!2387 (_2!3132 lt!215005))))))

(assert (= (and d!184867 res!219221) b!516904))

(assert (= (and b!516904 res!219222) b!516905))

(declare-fun m!763501 () Bool)

(assert (=> d!184867 m!763501))

(assert (=> b!516904 m!763483))

(declare-fun m!763503 () Bool)

(assert (=> b!516904 m!763503))

(assert (=> b!516905 m!763483))

(assert (=> b!516905 m!763483))

(declare-fun m!763505 () Bool)

(assert (=> b!516905 m!763505))

(assert (=> b!516871 d!184867))

(declare-fun bs!59911 () Bool)

(declare-fun b!516936 () Bool)

(assert (= bs!59911 (and b!516936 b!516902)))

(declare-fun lambda!14535 () Int)

(assert (=> bs!59911 (= lambda!14535 lambda!14527)))

(declare-fun bs!59912 () Bool)

(assert (= bs!59912 (and b!516936 b!516904)))

(assert (=> bs!59912 (= lambda!14535 lambda!14528)))

(declare-fun d!184869 () Bool)

(declare-fun e!309396 () Bool)

(assert (=> d!184869 e!309396))

(declare-fun res!219229 () Bool)

(assert (=> d!184869 (=> (not res!219229) (not e!309396))))

(declare-fun lt!215105 () tuple2!5832)

(assert (=> d!184869 (= res!219229 ((_ is HashMap!497) (_2!3132 lt!215105)))))

(declare-fun e!309395 () tuple2!5832)

(assert (=> d!184869 (= lt!215105 e!309395)))

(declare-fun c!100112 () Bool)

(declare-fun lt!215083 () Bool)

(assert (=> d!184869 (= c!100112 (not lt!215083))))

(declare-fun contains!1095 (MutableMap!497 K!1427) Bool)

(assert (=> d!184869 (= lt!215083 (contains!1095 hm!65 k0!1740))))

(assert (=> d!184869 (valid!491 hm!65)))

(assert (=> d!184869 (= (remove!43 hm!65 k0!1740) lt!215105)))

(declare-fun bm!37776 () Bool)

(declare-fun call!37787 () ListMap!201)

(declare-datatypes ((tuple2!5836 0))(
  ( (tuple2!5837 (_1!3134 Unit!8623) (_2!3134 MutableMap!497)) )
))
(declare-fun lt!215082 () tuple2!5836)

(assert (=> bm!37776 (= call!37787 (map!1049 (_2!3134 lt!215082)))))

(declare-fun b!516928 () Bool)

(declare-fun call!37781 () ListMap!201)

(assert (=> b!516928 (eq!36 call!37787 call!37781)))

(declare-fun lt!215098 () Unit!8623)

(declare-fun lt!215102 () Unit!8623)

(assert (=> b!516928 (= lt!215098 lt!215102)))

(declare-fun lt!215088 () ListLongMap!83)

(declare-fun lt!215092 () List!4744)

(declare-fun call!37783 () ListMap!201)

(declare-fun lt!215078 () (_ BitVec 64))

(declare-fun +!26 (ListLongMap!83 tuple2!5834) ListLongMap!83)

(assert (=> b!516928 (eq!36 (extractMap!23 (toList!427 (+!26 lt!215088 (tuple2!5835 lt!215078 lt!215092)))) (-!40 call!37783 k0!1740))))

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!15 (ListLongMap!83 (_ BitVec 64) List!4744 K!1427 Hashable!497) Unit!8623)

(assert (=> b!516928 (= lt!215102 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!15 lt!215088 lt!215078 lt!215092 k0!1740 (hashF!2387 (_2!3134 lt!215082))))))

(declare-fun lt!215095 () Unit!8623)

(declare-fun Unit!8625 () Unit!8623)

(assert (=> b!516928 (= lt!215095 Unit!8625)))

(declare-fun lt!215089 () ListMap!201)

(declare-fun contains!1096 (ListMap!201 K!1427) Bool)

(assert (=> b!516928 (contains!1096 lt!215089 k0!1740)))

(declare-fun lt!215085 () Unit!8623)

(declare-fun Unit!8626 () Unit!8623)

(assert (=> b!516928 (= lt!215085 Unit!8626)))

(declare-fun call!37785 () Bool)

(assert (=> b!516928 call!37785))

(declare-fun lt!215084 () Unit!8623)

(declare-fun Unit!8627 () Unit!8623)

(assert (=> b!516928 (= lt!215084 Unit!8627)))

(declare-fun call!37786 () ListLongMap!83)

(assert (=> b!516928 (allKeysSameHashInMap!30 call!37786 (hashF!2387 (_2!3134 lt!215082)))))

(declare-fun lt!215079 () Unit!8623)

(declare-fun Unit!8628 () Unit!8623)

(assert (=> b!516928 (= lt!215079 Unit!8628)))

(assert (=> b!516928 (forall!1409 (toList!427 call!37786) lambda!14535)))

(declare-fun lt!215099 () Unit!8623)

(declare-fun lt!215077 () Unit!8623)

(assert (=> b!516928 (= lt!215099 lt!215077)))

(declare-fun e!309394 () Bool)

(assert (=> b!516928 e!309394))

(declare-fun res!219231 () Bool)

(assert (=> b!516928 (=> (not res!219231) (not e!309394))))

(declare-fun lt!215091 () ListLongMap!83)

(assert (=> b!516928 (= res!219231 (forall!1409 (toList!427 lt!215091) lambda!14535))))

(assert (=> b!516928 (= lt!215091 (+!26 lt!215088 (tuple2!5835 lt!215078 lt!215092)))))

(declare-fun lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!17 (ListLongMap!83 (_ BitVec 64) List!4744 Hashable!497) Unit!8623)

(assert (=> b!516928 (= lt!215077 (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!17 lt!215088 lt!215078 lt!215092 (hashF!2387 (_2!3134 lt!215082))))))

(declare-fun lt!215093 () Unit!8623)

(declare-fun lt!215086 () Unit!8623)

(assert (=> b!516928 (= lt!215093 lt!215086)))

(declare-fun lt!215080 () List!4744)

(declare-fun allKeysSameHash!18 (List!4744 (_ BitVec 64) Hashable!497) Bool)

(declare-fun removePairForKey!17 (List!4744 K!1427) List!4744)

(assert (=> b!516928 (allKeysSameHash!18 (removePairForKey!17 lt!215080 k0!1740) lt!215078 (hashF!2387 (_2!3134 lt!215082)))))

(declare-fun lemmaRemovePairForKeyPreservesHash!17 (List!4744 K!1427 (_ BitVec 64) Hashable!497) Unit!8623)

(assert (=> b!516928 (= lt!215086 (lemmaRemovePairForKeyPreservesHash!17 lt!215080 k0!1740 lt!215078 (hashF!2387 (_2!3134 lt!215082))))))

(declare-fun lt!215106 () Unit!8623)

(declare-fun lt!215103 () Unit!8623)

(assert (=> b!516928 (= lt!215106 lt!215103)))

(assert (=> b!516928 (allKeysSameHash!18 lt!215080 lt!215078 (hashF!2387 (_2!3134 lt!215082)))))

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!17 (List!4745 (_ BitVec 64) List!4744 Hashable!497) Unit!8623)

(assert (=> b!516928 (= lt!215103 (lemmaInLongMapAllKeySameHashThenForTuple!17 (toList!427 lt!215088) lt!215078 lt!215080 (hashF!2387 (_2!3134 lt!215082))))))

(declare-fun e!309397 () Unit!8623)

(declare-fun Unit!8629 () Unit!8623)

(assert (=> b!516928 (= e!309397 Unit!8629)))

(declare-fun bm!37777 () Bool)

(declare-fun call!37784 () ListMap!201)

(assert (=> bm!37777 (= call!37784 (map!1049 (_2!3132 lt!215105)))))

(declare-fun b!516929 () Bool)

(declare-fun e!309398 () ListMap!201)

(declare-fun call!37782 () ListMap!201)

(assert (=> b!516929 (= e!309398 (-!40 call!37782 k0!1740))))

(declare-fun b!516930 () Bool)

(assert (=> b!516930 (= e!309398 call!37782)))

(declare-fun bm!37778 () Bool)

(assert (=> bm!37778 (= call!37781 (-!40 (ite c!100112 call!37783 lt!215089) k0!1740))))

(declare-fun b!516931 () Bool)

(declare-fun res!219230 () Bool)

(assert (=> b!516931 (=> (not res!219230) (not e!309396))))

(assert (=> b!516931 (= res!219230 (valid!491 (_2!3132 lt!215105)))))

(declare-fun b!516932 () Bool)

(declare-fun e!309393 () Bool)

(assert (=> b!516932 (= e!309396 e!309393)))

(declare-fun c!100110 () Bool)

(assert (=> b!516932 (= c!100110 (_1!3132 lt!215105))))

(declare-fun b!516933 () Bool)

(declare-fun call!37788 () Bool)

(assert (=> b!516933 (= e!309393 call!37788)))

(declare-fun bm!37779 () Bool)

(assert (=> bm!37779 (= call!37782 (map!1049 hm!65))))

(declare-fun bm!37780 () Bool)

(assert (=> bm!37780 (= call!37785 (valid!491 (_2!3134 lt!215082)))))

(declare-fun b!516934 () Bool)

(assert (=> b!516934 (= call!37787 lt!215089)))

(declare-fun lt!215104 () Unit!8623)

(declare-fun Unit!8630 () Unit!8623)

(assert (=> b!516934 (= lt!215104 Unit!8630)))

(assert (=> b!516934 call!37785))

(declare-fun Unit!8631 () Unit!8623)

(assert (=> b!516934 (= e!309397 Unit!8631)))

(declare-fun bm!37781 () Bool)

(assert (=> bm!37781 (= call!37788 (eq!36 call!37784 e!309398))))

(declare-fun c!100111 () Bool)

(assert (=> bm!37781 (= c!100111 c!100110)))

(declare-fun b!516935 () Bool)

(assert (=> b!516935 (= e!309394 (allKeysSameHashInMap!30 lt!215091 (hashF!2387 (_2!3134 lt!215082))))))

(declare-datatypes ((tuple2!5838 0))(
  ( (tuple2!5839 (_1!3135 Bool) (_2!3135 MutLongMap!525)) )
))
(declare-fun lt!215087 () tuple2!5838)

(assert (=> b!516936 (= e!309395 (tuple2!5833 (_1!3135 lt!215087) (_2!3134 lt!215082)))))

(declare-fun hash!526 (Hashable!497 K!1427) (_ BitVec 64))

(assert (=> b!516936 (= lt!215078 (hash!526 (hashF!2387 hm!65) k0!1740))))

(declare-fun apply!1189 (MutLongMap!525 (_ BitVec 64)) List!4744)

(assert (=> b!516936 (= lt!215080 (apply!1189 (v!15782 (underlying!1230 hm!65)) lt!215078))))

(declare-fun lt!215100 () Unit!8623)

(declare-fun forallContained!448 (List!4745 Int tuple2!5834) Unit!8623)

(assert (=> b!516936 (= lt!215100 (forallContained!448 (toList!427 (map!1050 (v!15782 (underlying!1230 hm!65)))) lambda!14535 (tuple2!5835 lt!215078 (apply!1189 (v!15782 (underlying!1230 hm!65)) lt!215078))))))

(assert (=> b!516936 (= lt!215089 (map!1049 hm!65))))

(assert (=> b!516936 (= lt!215088 (map!1050 (v!15782 (underlying!1230 hm!65))))))

(assert (=> b!516936 (= lt!215092 (removePairForKey!17 lt!215080 k0!1740))))

(declare-fun update!58 (MutLongMap!525 (_ BitVec 64) List!4744) tuple2!5838)

(assert (=> b!516936 (= lt!215087 (update!58 (v!15782 (underlying!1230 hm!65)) lt!215078 lt!215092))))

(declare-fun Unit!8632 () Unit!8623)

(declare-fun Unit!8633 () Unit!8623)

(assert (=> b!516936 (= lt!215082 (ite (and (_1!3135 lt!215087) lt!215083) (tuple2!5837 Unit!8632 (HashMap!497 (Cell!2044 (_2!3135 lt!215087)) (hashF!2387 hm!65) (bvsub (_size!1160 hm!65) #b00000000000000000000000000000001) (defaultValue!646 hm!65))) (tuple2!5837 Unit!8633 (HashMap!497 (Cell!2044 (_2!3135 lt!215087)) (hashF!2387 hm!65) (_size!1160 hm!65) (defaultValue!646 hm!65)))))))

(declare-fun lt!215081 () Unit!8623)

(declare-fun lemmaRemovePairForKeyPreservesNoDuplicateKeys!17 (List!4744 K!1427) Unit!8623)

(assert (=> b!516936 (= lt!215081 (lemmaRemovePairForKeyPreservesNoDuplicateKeys!17 lt!215080 k0!1740))))

(declare-fun noDuplicateKeys!19 (List!4744) Bool)

(assert (=> b!516936 (noDuplicateKeys!19 (removePairForKey!17 lt!215080 k0!1740))))

(declare-fun lt!215097 () Unit!8623)

(assert (=> b!516936 (= lt!215097 lt!215081)))

(declare-fun c!100109 () Bool)

(assert (=> b!516936 (= c!100109 (_1!3135 lt!215087))))

(declare-fun lt!215094 () Unit!8623)

(assert (=> b!516936 (= lt!215094 e!309397)))

(declare-fun b!516937 () Bool)

(assert (=> b!516937 (= e!309393 call!37788)))

(declare-fun b!516938 () Bool)

(assert (=> b!516938 (= e!309395 (tuple2!5833 true hm!65))))

(declare-fun lt!215090 () ListLongMap!83)

(assert (=> b!516938 (= lt!215090 call!37786)))

(declare-fun lt!215096 () Unit!8623)

(declare-fun lemmaRemoveNotContainedDoesNotChange!15 (ListLongMap!83 K!1427 Hashable!497) Unit!8623)

(assert (=> b!516938 (= lt!215096 (lemmaRemoveNotContainedDoesNotChange!15 lt!215090 k0!1740 (hashF!2387 hm!65)))))

(assert (=> b!516938 (= call!37783 call!37781)))

(declare-fun lt!215101 () Unit!8623)

(assert (=> b!516938 (= lt!215101 lt!215096)))

(declare-fun bm!37782 () Bool)

(assert (=> bm!37782 (= call!37783 (extractMap!23 (ite c!100112 (toList!427 lt!215090) (toList!427 lt!215088))))))

(declare-fun bm!37783 () Bool)

(assert (=> bm!37783 (= call!37786 (map!1050 (ite c!100112 (v!15782 (underlying!1230 hm!65)) (v!15782 (underlying!1230 (_2!3134 lt!215082))))))))

(assert (= (and d!184869 c!100112) b!516938))

(assert (= (and d!184869 (not c!100112)) b!516936))

(assert (= (and b!516936 c!100109) b!516928))

(assert (= (and b!516936 (not c!100109)) b!516934))

(assert (= (and b!516928 res!219231) b!516935))

(assert (= (or b!516928 b!516934) bm!37780))

(assert (= (or b!516928 b!516934) bm!37776))

(assert (= (or b!516938 b!516928) bm!37783))

(assert (= (or b!516938 b!516928) bm!37782))

(assert (= (or b!516938 b!516928) bm!37778))

(assert (= (and d!184869 res!219229) b!516931))

(assert (= (and b!516931 res!219230) b!516932))

(assert (= (and b!516932 c!100110) b!516937))

(assert (= (and b!516932 (not c!100110)) b!516933))

(assert (= (or b!516937 b!516933) bm!37779))

(assert (= (or b!516937 b!516933) bm!37777))

(assert (= (or b!516937 b!516933) bm!37781))

(assert (= (and bm!37781 c!100111) b!516929))

(assert (= (and bm!37781 (not c!100111)) b!516930))

(declare-fun m!763507 () Bool)

(assert (=> bm!37778 m!763507))

(declare-fun m!763509 () Bool)

(assert (=> bm!37777 m!763509))

(assert (=> bm!37779 m!763451))

(declare-fun m!763511 () Bool)

(assert (=> b!516935 m!763511))

(declare-fun m!763513 () Bool)

(assert (=> b!516931 m!763513))

(declare-fun m!763515 () Bool)

(assert (=> bm!37781 m!763515))

(declare-fun m!763517 () Bool)

(assert (=> bm!37780 m!763517))

(declare-fun m!763519 () Bool)

(assert (=> b!516929 m!763519))

(declare-fun m!763521 () Bool)

(assert (=> bm!37782 m!763521))

(declare-fun m!763523 () Bool)

(assert (=> bm!37783 m!763523))

(declare-fun m!763525 () Bool)

(assert (=> b!516938 m!763525))

(declare-fun m!763527 () Bool)

(assert (=> b!516936 m!763527))

(declare-fun m!763529 () Bool)

(assert (=> b!516936 m!763529))

(declare-fun m!763531 () Bool)

(assert (=> b!516936 m!763531))

(assert (=> b!516936 m!763527))

(declare-fun m!763533 () Bool)

(assert (=> b!516936 m!763533))

(assert (=> b!516936 m!763475))

(declare-fun m!763535 () Bool)

(assert (=> b!516936 m!763535))

(declare-fun m!763537 () Bool)

(assert (=> b!516936 m!763537))

(assert (=> b!516936 m!763451))

(declare-fun m!763539 () Bool)

(assert (=> b!516936 m!763539))

(declare-fun m!763541 () Bool)

(assert (=> bm!37776 m!763541))

(declare-fun m!763543 () Bool)

(assert (=> b!516928 m!763543))

(assert (=> b!516928 m!763527))

(declare-fun m!763545 () Bool)

(assert (=> b!516928 m!763545))

(declare-fun m!763547 () Bool)

(assert (=> b!516928 m!763547))

(declare-fun m!763549 () Bool)

(assert (=> b!516928 m!763549))

(declare-fun m!763551 () Bool)

(assert (=> b!516928 m!763551))

(declare-fun m!763553 () Bool)

(assert (=> b!516928 m!763553))

(declare-fun m!763555 () Bool)

(assert (=> b!516928 m!763555))

(declare-fun m!763557 () Bool)

(assert (=> b!516928 m!763557))

(declare-fun m!763559 () Bool)

(assert (=> b!516928 m!763559))

(declare-fun m!763561 () Bool)

(assert (=> b!516928 m!763561))

(assert (=> b!516928 m!763527))

(assert (=> b!516928 m!763553))

(assert (=> b!516928 m!763551))

(declare-fun m!763563 () Bool)

(assert (=> b!516928 m!763563))

(declare-fun m!763565 () Bool)

(assert (=> b!516928 m!763565))

(declare-fun m!763567 () Bool)

(assert (=> b!516928 m!763567))

(declare-fun m!763569 () Bool)

(assert (=> b!516928 m!763569))

(declare-fun m!763571 () Bool)

(assert (=> b!516928 m!763571))

(declare-fun m!763573 () Bool)

(assert (=> d!184869 m!763573))

(assert (=> d!184869 m!763439))

(assert (=> b!516871 d!184869))

(declare-fun d!184871 () Bool)

(declare-fun e!309401 () Bool)

(assert (=> d!184871 e!309401))

(declare-fun res!219234 () Bool)

(assert (=> d!184871 (=> (not res!219234) (not e!309401))))

(declare-fun lt!215109 () ListMap!201)

(assert (=> d!184871 (= res!219234 (not (contains!1096 lt!215109 k0!1740)))))

(declare-fun removePresrvNoDuplicatedKeys!15 (List!4744 K!1427) List!4744)

(assert (=> d!184871 (= lt!215109 (ListMap!202 (removePresrvNoDuplicatedKeys!15 (toList!426 lt!215004) k0!1740)))))

(assert (=> d!184871 (= (-!40 lt!215004 k0!1740) lt!215109)))

(declare-fun b!516941 () Bool)

(declare-datatypes ((List!4746 0))(
  ( (Nil!4736) (Cons!4736 (h!10135 K!1427) (t!73316 List!4746)) )
))
(declare-fun content!831 (List!4746) (InoxSet K!1427))

(declare-fun keys!1860 (ListMap!201) List!4746)

(assert (=> b!516941 (= e!309401 (= ((_ map and) (content!831 (keys!1860 lt!215004)) ((_ map not) (store ((as const (Array K!1427 Bool)) false) k0!1740 true))) (content!831 (keys!1860 lt!215109))))))

(assert (= (and d!184871 res!219234) b!516941))

(declare-fun m!763575 () Bool)

(assert (=> d!184871 m!763575))

(declare-fun m!763577 () Bool)

(assert (=> d!184871 m!763577))

(declare-fun m!763579 () Bool)

(assert (=> b!516941 m!763579))

(declare-fun m!763581 () Bool)

(assert (=> b!516941 m!763581))

(declare-fun m!763583 () Bool)

(assert (=> b!516941 m!763583))

(assert (=> b!516941 m!763581))

(declare-fun m!763585 () Bool)

(assert (=> b!516941 m!763585))

(declare-fun m!763587 () Bool)

(assert (=> b!516941 m!763587))

(assert (=> b!516941 m!763585))

(assert (=> b!516871 d!184871))

(declare-fun b!516946 () Bool)

(declare-fun tp!161287 () Bool)

(declare-fun tp_is_empty!2641 () Bool)

(declare-fun e!309404 () Bool)

(assert (=> b!516946 (= e!309404 (and tp_is_empty!2639 tp_is_empty!2641 tp!161287))))

(assert (=> b!516874 (= tp!161283 e!309404)))

(assert (= (and b!516874 ((_ is Cons!4734) (zeroValue!781 (v!15781 (underlying!1229 (v!15782 (underlying!1230 hm!65))))))) b!516946))

(declare-fun tp!161288 () Bool)

(declare-fun b!516947 () Bool)

(declare-fun e!309405 () Bool)

(assert (=> b!516947 (= e!309405 (and tp_is_empty!2639 tp_is_empty!2641 tp!161288))))

(assert (=> b!516874 (= tp!161282 e!309405)))

(assert (= (and b!516874 ((_ is Cons!4734) (minValue!781 (v!15781 (underlying!1229 (v!15782 (underlying!1230 hm!65))))))) b!516947))

(declare-fun e!309406 () Bool)

(declare-fun tp!161289 () Bool)

(declare-fun b!516948 () Bool)

(assert (=> b!516948 (= e!309406 (and tp_is_empty!2639 tp_is_empty!2641 tp!161289))))

(assert (=> b!516878 (= tp!161278 e!309406)))

(assert (= (and b!516878 ((_ is Cons!4734) mapDefault!2031)) b!516948))

(declare-fun mapNonEmpty!2034 () Bool)

(declare-fun mapRes!2034 () Bool)

(declare-fun tp!161297 () Bool)

(declare-fun e!309411 () Bool)

(assert (=> mapNonEmpty!2034 (= mapRes!2034 (and tp!161297 e!309411))))

(declare-fun mapKey!2034 () (_ BitVec 32))

(declare-fun mapRest!2034 () (Array (_ BitVec 32) List!4744))

(declare-fun mapValue!2034 () List!4744)

(assert (=> mapNonEmpty!2034 (= mapRest!2031 (store mapRest!2034 mapKey!2034 mapValue!2034))))

(declare-fun mapIsEmpty!2034 () Bool)

(assert (=> mapIsEmpty!2034 mapRes!2034))

(declare-fun e!309412 () Bool)

(declare-fun b!516956 () Bool)

(declare-fun tp!161298 () Bool)

(assert (=> b!516956 (= e!309412 (and tp_is_empty!2639 tp_is_empty!2641 tp!161298))))

(declare-fun b!516955 () Bool)

(declare-fun tp!161296 () Bool)

(assert (=> b!516955 (= e!309411 (and tp_is_empty!2639 tp_is_empty!2641 tp!161296))))

(declare-fun condMapEmpty!2034 () Bool)

(declare-fun mapDefault!2034 () List!4744)

(assert (=> mapNonEmpty!2031 (= condMapEmpty!2034 (= mapRest!2031 ((as const (Array (_ BitVec 32) List!4744)) mapDefault!2034)))))

(assert (=> mapNonEmpty!2031 (= tp!161284 (and e!309412 mapRes!2034))))

(assert (= (and mapNonEmpty!2031 condMapEmpty!2034) mapIsEmpty!2034))

(assert (= (and mapNonEmpty!2031 (not condMapEmpty!2034)) mapNonEmpty!2034))

(assert (= (and mapNonEmpty!2034 ((_ is Cons!4734) mapValue!2034)) b!516955))

(assert (= (and mapNonEmpty!2031 ((_ is Cons!4734) mapDefault!2034)) b!516956))

(declare-fun m!763589 () Bool)

(assert (=> mapNonEmpty!2034 m!763589))

(declare-fun tp!161299 () Bool)

(declare-fun b!516957 () Bool)

(declare-fun e!309413 () Bool)

(assert (=> b!516957 (= e!309413 (and tp_is_empty!2639 tp_is_empty!2641 tp!161299))))

(assert (=> mapNonEmpty!2031 (= tp!161280 e!309413)))

(assert (= (and mapNonEmpty!2031 ((_ is Cons!4734) mapValue!2031)) b!516957))

(declare-fun b_lambda!20097 () Bool)

(assert (= b_lambda!20093 (or (and start!46954 b_free!13609) b_lambda!20097)))

(declare-fun b_lambda!20099 () Bool)

(assert (= b_lambda!20095 (or (and start!46954 b_free!13609) b_lambda!20099)))

(check-sat (not bm!37780) tp_is_empty!2639 (not b!516935) (not b!516904) (not b!516902) (not d!184871) (not b!516905) (not d!184867) (not d!184845) (not bm!37778) (not b!516931) (not b!516897) (not bm!37779) (not b!516936) (not d!184859) (not b!516948) (not d!184847) (not b_next!13619) (not mapNonEmpty!2034) (not b!516947) (not bm!37776) b_and!51077 b_and!51081 (not d!184857) (not d!184841) (not bm!37781) (not b!516929) (not b_lambda!20099) (not b!516887) (not b!516928) (not d!184869) (not b_next!13615) (not b!516903) (not b!516941) (not b_lambda!20097) (not bm!37777) (not b!516895) (not b!516957) (not bm!37782) (not b!516956) (not b!516938) (not d!184865) (not b_next!13617) (not b!516946) (not bm!37783) (not b!516955) b_and!51085 tp_is_empty!2641 (not b!516889) (not d!184851))
(check-sat (not b_next!13619) (not b_next!13615) (not b_next!13617) b_and!51085 b_and!51077 b_and!51081)

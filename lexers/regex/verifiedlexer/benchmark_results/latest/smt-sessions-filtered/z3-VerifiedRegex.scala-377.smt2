; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!11648 () Bool)

(assert start!11648)

(declare-fun b!113453 () Bool)

(declare-fun b_free!3569 () Bool)

(declare-fun b_next!3569 () Bool)

(assert (=> b!113453 (= b_free!3569 (not b_next!3569))))

(declare-fun tp!61776 () Bool)

(declare-fun b_and!5699 () Bool)

(assert (=> b!113453 (= tp!61776 b_and!5699)))

(declare-fun b!113461 () Bool)

(declare-fun b_free!3571 () Bool)

(declare-fun b_next!3571 () Bool)

(assert (=> b!113461 (= b_free!3571 (not b_next!3571))))

(declare-fun tp!61769 () Bool)

(declare-fun b_and!5701 () Bool)

(assert (=> b!113461 (= tp!61769 b_and!5701)))

(declare-fun b!113445 () Bool)

(declare-fun e!63910 () Bool)

(declare-fun lt!33110 () Int)

(declare-fun lt!33108 () Int)

(assert (=> b!113445 (= e!63910 (>= lt!33110 lt!33108))))

(declare-datatypes ((C!1860 0))(
  ( (C!1861 (val!656 Int)) )
))
(declare-datatypes ((List!1854 0))(
  ( (Nil!1848) (Cons!1848 (h!7245 C!1860) (t!22331 List!1854)) )
))
(declare-fun testedSuffix!285 () List!1854)

(declare-fun lt!33112 () List!1854)

(assert (=> b!113445 (and (= testedSuffix!285 lt!33112) (= lt!33112 testedSuffix!285))))

(declare-fun testedP!367 () List!1854)

(declare-datatypes ((Unit!1321 0))(
  ( (Unit!1322) )
))
(declare-fun lt!33111 () Unit!1321)

(declare-fun totalInput!1363 () List!1854)

(declare-fun lemmaSamePrefixThenSameSuffix!7 (List!1854 List!1854 List!1854 List!1854 List!1854) Unit!1321)

(assert (=> b!113445 (= lt!33111 (lemmaSamePrefixThenSameSuffix!7 testedP!367 testedSuffix!285 testedP!367 lt!33112 totalInput!1363))))

(declare-fun getSuffix!8 (List!1854 List!1854) List!1854)

(assert (=> b!113445 (= lt!33112 (getSuffix!8 totalInput!1363 testedP!367))))

(declare-fun b!113446 () Bool)

(declare-fun e!63907 () Bool)

(assert (=> b!113446 (= e!63907 (not e!63910))))

(declare-fun res!54191 () Bool)

(assert (=> b!113446 (=> res!54191 e!63910)))

(declare-fun isPrefix!61 (List!1854 List!1854) Bool)

(assert (=> b!113446 (= res!54191 (not (isPrefix!61 testedP!367 totalInput!1363)))))

(declare-fun lt!33109 () List!1854)

(assert (=> b!113446 (isPrefix!61 testedP!367 lt!33109)))

(declare-fun lt!33106 () Unit!1321)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!10 (List!1854 List!1854) Unit!1321)

(assert (=> b!113446 (= lt!33106 (lemmaConcatTwoListThenFirstIsPrefix!10 testedP!367 testedSuffix!285))))

(declare-fun b!113447 () Bool)

(declare-fun e!63919 () Bool)

(declare-fun tp_is_empty!993 () Bool)

(assert (=> b!113447 (= e!63919 tp_is_empty!993)))

(declare-fun b!113448 () Bool)

(declare-fun e!63917 () Bool)

(assert (=> b!113448 (= e!63917 e!63907)))

(declare-fun res!54194 () Bool)

(assert (=> b!113448 (=> (not res!54194) (not e!63907))))

(declare-fun totalInputSize!643 () Int)

(assert (=> b!113448 (= res!54194 (= totalInputSize!643 lt!33110))))

(declare-fun size!1632 (List!1854) Int)

(assert (=> b!113448 (= lt!33110 (size!1632 totalInput!1363))))

(declare-fun b!113449 () Bool)

(declare-fun tp!61766 () Bool)

(assert (=> b!113449 (= e!63919 tp!61766)))

(declare-fun mapIsEmpty!1318 () Bool)

(declare-fun mapRes!1318 () Bool)

(assert (=> mapIsEmpty!1318 mapRes!1318))

(declare-fun b!113450 () Bool)

(declare-fun e!63908 () Bool)

(assert (=> b!113450 (= e!63908 e!63917)))

(declare-fun res!54190 () Bool)

(assert (=> b!113450 (=> (not res!54190) (not e!63917))))

(declare-fun testedPSize!285 () Int)

(assert (=> b!113450 (= res!54190 (= testedPSize!285 lt!33108))))

(assert (=> b!113450 (= lt!33108 (size!1632 testedP!367))))

(declare-fun b!113451 () Bool)

(declare-fun e!63918 () Bool)

(declare-fun tp!61774 () Bool)

(assert (=> b!113451 (= e!63918 (and tp_is_empty!993 tp!61774))))

(declare-fun b!113452 () Bool)

(declare-fun tp!61773 () Bool)

(declare-fun tp!61779 () Bool)

(assert (=> b!113452 (= e!63919 (and tp!61773 tp!61779))))

(declare-fun tp!61772 () Bool)

(declare-fun tp!61770 () Bool)

(declare-datatypes ((Regex!469 0))(
  ( (ElementMatch!469 (c!26453 C!1860)) (Concat!853 (regOne!1450 Regex!469) (regTwo!1450 Regex!469)) (EmptyExpr!469) (Star!469 (reg!798 Regex!469)) (EmptyLang!469) (Union!469 (regOne!1451 Regex!469) (regTwo!1451 Regex!469)) )
))
(declare-datatypes ((Hashable!331 0))(
  ( (HashableExt!330 (__x!1930 Int)) )
))
(declare-datatypes ((tuple2!1996 0))(
  ( (tuple2!1997 (_1!1208 Regex!469) (_2!1208 C!1860)) )
))
(declare-datatypes ((tuple2!1998 0))(
  ( (tuple2!1999 (_1!1209 tuple2!1996) (_2!1209 Regex!469)) )
))
(declare-datatypes ((List!1855 0))(
  ( (Nil!1849) (Cons!1849 (h!7246 tuple2!1998) (t!22332 List!1855)) )
))
(declare-datatypes ((array!1187 0))(
  ( (array!1188 (arr!554 (Array (_ BitVec 32) (_ BitVec 64))) (size!1633 (_ BitVec 32))) )
))
(declare-datatypes ((array!1189 0))(
  ( (array!1190 (arr!555 (Array (_ BitVec 32) List!1855)) (size!1634 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!670 0))(
  ( (LongMapFixedSize!671 (defaultEntry!674 Int) (mask!1237 (_ BitVec 32)) (extraKeys!581 (_ BitVec 32)) (zeroValue!591 List!1855) (minValue!591 List!1855) (_size!803 (_ BitVec 32)) (_keys!626 array!1187) (_values!613 array!1189) (_vacant!396 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!1329 0))(
  ( (Cell!1330 (v!13201 LongMapFixedSize!670)) )
))
(declare-datatypes ((MutLongMap!335 0))(
  ( (LongMap!335 (underlying!869 Cell!1329)) (MutLongMapExt!334 (__x!1931 Int)) )
))
(declare-datatypes ((Cell!1331 0))(
  ( (Cell!1332 (v!13202 MutLongMap!335)) )
))
(declare-datatypes ((MutableMap!331 0))(
  ( (MutableMapExt!330 (__x!1932 Int)) (HashMap!331 (underlying!870 Cell!1331) (hashF!2207 Hashable!331) (_size!804 (_ BitVec 32)) (defaultValue!480 Int)) )
))
(declare-datatypes ((Cache!98 0))(
  ( (Cache!99 (cache!783 MutableMap!331)) )
))
(declare-fun cache!470 () Cache!98)

(declare-fun e!63916 () Bool)

(declare-fun e!63905 () Bool)

(declare-fun array_inv!391 (array!1187) Bool)

(declare-fun array_inv!392 (array!1189) Bool)

(assert (=> b!113453 (= e!63916 (and tp!61776 tp!61770 tp!61772 (array_inv!391 (_keys!626 (v!13201 (underlying!869 (v!13202 (underlying!870 (cache!783 cache!470))))))) (array_inv!392 (_values!613 (v!13201 (underlying!869 (v!13202 (underlying!870 (cache!783 cache!470))))))) e!63905))))

(declare-fun res!54195 () Bool)

(declare-fun e!63903 () Bool)

(assert (=> start!11648 (=> (not res!54195) (not e!63903))))

(declare-fun r!15532 () Regex!469)

(declare-fun validRegex!83 (Regex!469) Bool)

(assert (=> start!11648 (= res!54195 (validRegex!83 r!15532))))

(assert (=> start!11648 e!63903))

(assert (=> start!11648 true))

(assert (=> start!11648 e!63919))

(declare-fun e!63913 () Bool)

(assert (=> start!11648 e!63913))

(declare-fun e!63914 () Bool)

(assert (=> start!11648 e!63914))

(assert (=> start!11648 e!63918))

(declare-fun e!63906 () Bool)

(declare-fun inv!2351 (Cache!98) Bool)

(assert (=> start!11648 (and (inv!2351 cache!470) e!63906)))

(declare-fun b!113454 () Bool)

(declare-fun tp!61768 () Bool)

(declare-fun tp!61778 () Bool)

(assert (=> b!113454 (= e!63919 (and tp!61768 tp!61778))))

(declare-fun b!113455 () Bool)

(declare-fun tp!61780 () Bool)

(assert (=> b!113455 (= e!63913 (and tp_is_empty!993 tp!61780))))

(declare-fun b!113456 () Bool)

(declare-fun tp!61771 () Bool)

(assert (=> b!113456 (= e!63914 (and tp_is_empty!993 tp!61771))))

(declare-fun b!113457 () Bool)

(assert (=> b!113457 (= e!63903 e!63908)))

(declare-fun res!54192 () Bool)

(assert (=> b!113457 (=> (not res!54192) (not e!63908))))

(assert (=> b!113457 (= res!54192 (= lt!33109 totalInput!1363))))

(declare-fun ++!314 (List!1854 List!1854) List!1854)

(assert (=> b!113457 (= lt!33109 (++!314 testedP!367 testedSuffix!285))))

(declare-fun b!113458 () Bool)

(declare-fun tp!61775 () Bool)

(assert (=> b!113458 (= e!63905 (and tp!61775 mapRes!1318))))

(declare-fun condMapEmpty!1318 () Bool)

(declare-fun mapDefault!1318 () List!1855)

(assert (=> b!113458 (= condMapEmpty!1318 (= (arr!555 (_values!613 (v!13201 (underlying!869 (v!13202 (underlying!870 (cache!783 cache!470))))))) ((as const (Array (_ BitVec 32) List!1855)) mapDefault!1318)))))

(declare-fun b!113459 () Bool)

(declare-fun e!63909 () Bool)

(declare-fun e!63911 () Bool)

(assert (=> b!113459 (= e!63909 e!63911)))

(declare-fun b!113460 () Bool)

(declare-fun e!63904 () Bool)

(declare-fun lt!33107 () MutLongMap!335)

(get-info :version)

(assert (=> b!113460 (= e!63904 (and e!63909 ((_ is LongMap!335) lt!33107)))))

(assert (=> b!113460 (= lt!33107 (v!13202 (underlying!870 (cache!783 cache!470))))))

(declare-fun e!63912 () Bool)

(assert (=> b!113461 (= e!63912 (and e!63904 tp!61769))))

(declare-fun mapNonEmpty!1318 () Bool)

(declare-fun tp!61777 () Bool)

(declare-fun tp!61767 () Bool)

(assert (=> mapNonEmpty!1318 (= mapRes!1318 (and tp!61777 tp!61767))))

(declare-fun mapRest!1318 () (Array (_ BitVec 32) List!1855))

(declare-fun mapValue!1318 () List!1855)

(declare-fun mapKey!1318 () (_ BitVec 32))

(assert (=> mapNonEmpty!1318 (= (arr!555 (_values!613 (v!13201 (underlying!869 (v!13202 (underlying!870 (cache!783 cache!470))))))) (store mapRest!1318 mapKey!1318 mapValue!1318))))

(declare-fun b!113462 () Bool)

(assert (=> b!113462 (= e!63911 e!63916)))

(declare-fun b!113463 () Bool)

(assert (=> b!113463 (= e!63906 e!63912)))

(declare-fun b!113464 () Bool)

(declare-fun res!54193 () Bool)

(assert (=> b!113464 (=> (not res!54193) (not e!63903))))

(declare-fun valid!311 (Cache!98) Bool)

(assert (=> b!113464 (= res!54193 (valid!311 cache!470))))

(assert (= (and start!11648 res!54195) b!113464))

(assert (= (and b!113464 res!54193) b!113457))

(assert (= (and b!113457 res!54192) b!113450))

(assert (= (and b!113450 res!54190) b!113448))

(assert (= (and b!113448 res!54194) b!113446))

(assert (= (and b!113446 (not res!54191)) b!113445))

(assert (= (and start!11648 ((_ is ElementMatch!469) r!15532)) b!113447))

(assert (= (and start!11648 ((_ is Concat!853) r!15532)) b!113452))

(assert (= (and start!11648 ((_ is Star!469) r!15532)) b!113449))

(assert (= (and start!11648 ((_ is Union!469) r!15532)) b!113454))

(assert (= (and start!11648 ((_ is Cons!1848) totalInput!1363)) b!113455))

(assert (= (and start!11648 ((_ is Cons!1848) testedSuffix!285)) b!113456))

(assert (= (and start!11648 ((_ is Cons!1848) testedP!367)) b!113451))

(assert (= (and b!113458 condMapEmpty!1318) mapIsEmpty!1318))

(assert (= (and b!113458 (not condMapEmpty!1318)) mapNonEmpty!1318))

(assert (= b!113453 b!113458))

(assert (= b!113462 b!113453))

(assert (= b!113459 b!113462))

(assert (= (and b!113460 ((_ is LongMap!335) (v!13202 (underlying!870 (cache!783 cache!470))))) b!113459))

(assert (= b!113461 b!113460))

(assert (= (and b!113463 ((_ is HashMap!331) (cache!783 cache!470))) b!113461))

(assert (= start!11648 b!113463))

(declare-fun m!102764 () Bool)

(assert (=> b!113464 m!102764))

(declare-fun m!102766 () Bool)

(assert (=> b!113445 m!102766))

(declare-fun m!102768 () Bool)

(assert (=> b!113445 m!102768))

(declare-fun m!102770 () Bool)

(assert (=> b!113457 m!102770))

(declare-fun m!102772 () Bool)

(assert (=> mapNonEmpty!1318 m!102772))

(declare-fun m!102774 () Bool)

(assert (=> start!11648 m!102774))

(declare-fun m!102776 () Bool)

(assert (=> start!11648 m!102776))

(declare-fun m!102778 () Bool)

(assert (=> b!113453 m!102778))

(declare-fun m!102780 () Bool)

(assert (=> b!113453 m!102780))

(declare-fun m!102782 () Bool)

(assert (=> b!113448 m!102782))

(declare-fun m!102784 () Bool)

(assert (=> b!113450 m!102784))

(declare-fun m!102786 () Bool)

(assert (=> b!113446 m!102786))

(declare-fun m!102788 () Bool)

(assert (=> b!113446 m!102788))

(declare-fun m!102790 () Bool)

(assert (=> b!113446 m!102790))

(check-sat (not b_next!3569) b_and!5701 (not b!113456) (not b!113453) (not b!113458) b_and!5699 (not b!113457) (not b!113464) (not b!113448) (not b!113455) tp_is_empty!993 (not b_next!3571) (not mapNonEmpty!1318) (not b!113451) (not b!113449) (not b!113454) (not b!113452) (not b!113450) (not b!113446) (not b!113445) (not start!11648))
(check-sat b_and!5701 b_and!5699 (not b_next!3571) (not b_next!3569))
(get-model)

(declare-fun d!28166 () Bool)

(declare-fun validCacheMap!13 (MutableMap!331) Bool)

(assert (=> d!28166 (= (valid!311 cache!470) (validCacheMap!13 (cache!783 cache!470)))))

(declare-fun bs!11779 () Bool)

(assert (= bs!11779 d!28166))

(declare-fun m!102792 () Bool)

(assert (=> bs!11779 m!102792))

(assert (=> b!113464 d!28166))

(declare-fun b!113473 () Bool)

(declare-fun e!63928 () Bool)

(declare-fun e!63926 () Bool)

(assert (=> b!113473 (= e!63928 e!63926)))

(declare-fun res!54204 () Bool)

(assert (=> b!113473 (=> (not res!54204) (not e!63926))))

(assert (=> b!113473 (= res!54204 (not ((_ is Nil!1848) totalInput!1363)))))

(declare-fun b!113475 () Bool)

(declare-fun tail!208 (List!1854) List!1854)

(assert (=> b!113475 (= e!63926 (isPrefix!61 (tail!208 testedP!367) (tail!208 totalInput!1363)))))

(declare-fun b!113474 () Bool)

(declare-fun res!54207 () Bool)

(assert (=> b!113474 (=> (not res!54207) (not e!63926))))

(declare-fun head!468 (List!1854) C!1860)

(assert (=> b!113474 (= res!54207 (= (head!468 testedP!367) (head!468 totalInput!1363)))))

(declare-fun d!28168 () Bool)

(declare-fun e!63927 () Bool)

(assert (=> d!28168 e!63927))

(declare-fun res!54206 () Bool)

(assert (=> d!28168 (=> res!54206 e!63927)))

(declare-fun lt!33115 () Bool)

(assert (=> d!28168 (= res!54206 (not lt!33115))))

(assert (=> d!28168 (= lt!33115 e!63928)))

(declare-fun res!54205 () Bool)

(assert (=> d!28168 (=> res!54205 e!63928)))

(assert (=> d!28168 (= res!54205 ((_ is Nil!1848) testedP!367))))

(assert (=> d!28168 (= (isPrefix!61 testedP!367 totalInput!1363) lt!33115)))

(declare-fun b!113476 () Bool)

(assert (=> b!113476 (= e!63927 (>= (size!1632 totalInput!1363) (size!1632 testedP!367)))))

(assert (= (and d!28168 (not res!54205)) b!113473))

(assert (= (and b!113473 res!54204) b!113474))

(assert (= (and b!113474 res!54207) b!113475))

(assert (= (and d!28168 (not res!54206)) b!113476))

(declare-fun m!102794 () Bool)

(assert (=> b!113475 m!102794))

(declare-fun m!102796 () Bool)

(assert (=> b!113475 m!102796))

(assert (=> b!113475 m!102794))

(assert (=> b!113475 m!102796))

(declare-fun m!102798 () Bool)

(assert (=> b!113475 m!102798))

(declare-fun m!102800 () Bool)

(assert (=> b!113474 m!102800))

(declare-fun m!102802 () Bool)

(assert (=> b!113474 m!102802))

(assert (=> b!113476 m!102782))

(assert (=> b!113476 m!102784))

(assert (=> b!113446 d!28168))

(declare-fun b!113477 () Bool)

(declare-fun e!63931 () Bool)

(declare-fun e!63929 () Bool)

(assert (=> b!113477 (= e!63931 e!63929)))

(declare-fun res!54208 () Bool)

(assert (=> b!113477 (=> (not res!54208) (not e!63929))))

(assert (=> b!113477 (= res!54208 (not ((_ is Nil!1848) lt!33109)))))

(declare-fun b!113479 () Bool)

(assert (=> b!113479 (= e!63929 (isPrefix!61 (tail!208 testedP!367) (tail!208 lt!33109)))))

(declare-fun b!113478 () Bool)

(declare-fun res!54211 () Bool)

(assert (=> b!113478 (=> (not res!54211) (not e!63929))))

(assert (=> b!113478 (= res!54211 (= (head!468 testedP!367) (head!468 lt!33109)))))

(declare-fun d!28170 () Bool)

(declare-fun e!63930 () Bool)

(assert (=> d!28170 e!63930))

(declare-fun res!54210 () Bool)

(assert (=> d!28170 (=> res!54210 e!63930)))

(declare-fun lt!33116 () Bool)

(assert (=> d!28170 (= res!54210 (not lt!33116))))

(assert (=> d!28170 (= lt!33116 e!63931)))

(declare-fun res!54209 () Bool)

(assert (=> d!28170 (=> res!54209 e!63931)))

(assert (=> d!28170 (= res!54209 ((_ is Nil!1848) testedP!367))))

(assert (=> d!28170 (= (isPrefix!61 testedP!367 lt!33109) lt!33116)))

(declare-fun b!113480 () Bool)

(assert (=> b!113480 (= e!63930 (>= (size!1632 lt!33109) (size!1632 testedP!367)))))

(assert (= (and d!28170 (not res!54209)) b!113477))

(assert (= (and b!113477 res!54208) b!113478))

(assert (= (and b!113478 res!54211) b!113479))

(assert (= (and d!28170 (not res!54210)) b!113480))

(assert (=> b!113479 m!102794))

(declare-fun m!102804 () Bool)

(assert (=> b!113479 m!102804))

(assert (=> b!113479 m!102794))

(assert (=> b!113479 m!102804))

(declare-fun m!102806 () Bool)

(assert (=> b!113479 m!102806))

(assert (=> b!113478 m!102800))

(declare-fun m!102808 () Bool)

(assert (=> b!113478 m!102808))

(declare-fun m!102810 () Bool)

(assert (=> b!113480 m!102810))

(assert (=> b!113480 m!102784))

(assert (=> b!113446 d!28170))

(declare-fun d!28172 () Bool)

(assert (=> d!28172 (isPrefix!61 testedP!367 (++!314 testedP!367 testedSuffix!285))))

(declare-fun lt!33119 () Unit!1321)

(declare-fun choose!1508 (List!1854 List!1854) Unit!1321)

(assert (=> d!28172 (= lt!33119 (choose!1508 testedP!367 testedSuffix!285))))

(assert (=> d!28172 (= (lemmaConcatTwoListThenFirstIsPrefix!10 testedP!367 testedSuffix!285) lt!33119)))

(declare-fun bs!11780 () Bool)

(assert (= bs!11780 d!28172))

(assert (=> bs!11780 m!102770))

(assert (=> bs!11780 m!102770))

(declare-fun m!102812 () Bool)

(assert (=> bs!11780 m!102812))

(declare-fun m!102814 () Bool)

(assert (=> bs!11780 m!102814))

(assert (=> b!113446 d!28172))

(declare-fun d!28174 () Bool)

(declare-fun lt!33122 () Int)

(assert (=> d!28174 (>= lt!33122 0)))

(declare-fun e!63934 () Int)

(assert (=> d!28174 (= lt!33122 e!63934)))

(declare-fun c!26456 () Bool)

(assert (=> d!28174 (= c!26456 ((_ is Nil!1848) testedP!367))))

(assert (=> d!28174 (= (size!1632 testedP!367) lt!33122)))

(declare-fun b!113485 () Bool)

(assert (=> b!113485 (= e!63934 0)))

(declare-fun b!113486 () Bool)

(assert (=> b!113486 (= e!63934 (+ 1 (size!1632 (t!22331 testedP!367))))))

(assert (= (and d!28174 c!26456) b!113485))

(assert (= (and d!28174 (not c!26456)) b!113486))

(declare-fun m!102816 () Bool)

(assert (=> b!113486 m!102816))

(assert (=> b!113450 d!28174))

(declare-fun d!28176 () Bool)

(assert (=> d!28176 (= testedSuffix!285 lt!33112)))

(declare-fun lt!33125 () Unit!1321)

(declare-fun choose!1509 (List!1854 List!1854 List!1854 List!1854 List!1854) Unit!1321)

(assert (=> d!28176 (= lt!33125 (choose!1509 testedP!367 testedSuffix!285 testedP!367 lt!33112 totalInput!1363))))

(assert (=> d!28176 (isPrefix!61 testedP!367 totalInput!1363)))

(assert (=> d!28176 (= (lemmaSamePrefixThenSameSuffix!7 testedP!367 testedSuffix!285 testedP!367 lt!33112 totalInput!1363) lt!33125)))

(declare-fun bs!11781 () Bool)

(assert (= bs!11781 d!28176))

(declare-fun m!102818 () Bool)

(assert (=> bs!11781 m!102818))

(assert (=> bs!11781 m!102786))

(assert (=> b!113445 d!28176))

(declare-fun d!28178 () Bool)

(declare-fun lt!33128 () List!1854)

(assert (=> d!28178 (= (++!314 testedP!367 lt!33128) totalInput!1363)))

(declare-fun e!63937 () List!1854)

(assert (=> d!28178 (= lt!33128 e!63937)))

(declare-fun c!26459 () Bool)

(assert (=> d!28178 (= c!26459 ((_ is Cons!1848) testedP!367))))

(assert (=> d!28178 (>= (size!1632 totalInput!1363) (size!1632 testedP!367))))

(assert (=> d!28178 (= (getSuffix!8 totalInput!1363 testedP!367) lt!33128)))

(declare-fun b!113491 () Bool)

(assert (=> b!113491 (= e!63937 (getSuffix!8 (tail!208 totalInput!1363) (t!22331 testedP!367)))))

(declare-fun b!113492 () Bool)

(assert (=> b!113492 (= e!63937 totalInput!1363)))

(assert (= (and d!28178 c!26459) b!113491))

(assert (= (and d!28178 (not c!26459)) b!113492))

(declare-fun m!102820 () Bool)

(assert (=> d!28178 m!102820))

(assert (=> d!28178 m!102782))

(assert (=> d!28178 m!102784))

(assert (=> b!113491 m!102796))

(assert (=> b!113491 m!102796))

(declare-fun m!102822 () Bool)

(assert (=> b!113491 m!102822))

(assert (=> b!113445 d!28178))

(declare-fun b!113511 () Bool)

(declare-fun e!63953 () Bool)

(declare-fun call!4867 () Bool)

(assert (=> b!113511 (= e!63953 call!4867)))

(declare-fun bm!4862 () Bool)

(declare-fun call!4868 () Bool)

(assert (=> bm!4862 (= call!4868 call!4867)))

(declare-fun b!113512 () Bool)

(declare-fun e!63955 () Bool)

(declare-fun call!4869 () Bool)

(assert (=> b!113512 (= e!63955 call!4869)))

(declare-fun b!113513 () Bool)

(declare-fun e!63952 () Bool)

(declare-fun e!63954 () Bool)

(assert (=> b!113513 (= e!63952 e!63954)))

(declare-fun c!26465 () Bool)

(assert (=> b!113513 (= c!26465 ((_ is Union!469) r!15532))))

(declare-fun b!113514 () Bool)

(declare-fun e!63956 () Bool)

(assert (=> b!113514 (= e!63956 call!4868)))

(declare-fun b!113515 () Bool)

(declare-fun e!63957 () Bool)

(assert (=> b!113515 (= e!63957 e!63955)))

(declare-fun res!54226 () Bool)

(assert (=> b!113515 (=> (not res!54226) (not e!63955))))

(assert (=> b!113515 (= res!54226 call!4868)))

(declare-fun b!113516 () Bool)

(declare-fun res!54224 () Bool)

(assert (=> b!113516 (=> res!54224 e!63957)))

(assert (=> b!113516 (= res!54224 (not ((_ is Concat!853) r!15532)))))

(assert (=> b!113516 (= e!63954 e!63957)))

(declare-fun b!113517 () Bool)

(assert (=> b!113517 (= e!63952 e!63953)))

(declare-fun res!54225 () Bool)

(declare-fun nullable!59 (Regex!469) Bool)

(assert (=> b!113517 (= res!54225 (not (nullable!59 (reg!798 r!15532))))))

(assert (=> b!113517 (=> (not res!54225) (not e!63953))))

(declare-fun c!26464 () Bool)

(declare-fun bm!4863 () Bool)

(assert (=> bm!4863 (= call!4867 (validRegex!83 (ite c!26464 (reg!798 r!15532) (ite c!26465 (regTwo!1451 r!15532) (regOne!1450 r!15532)))))))

(declare-fun b!113518 () Bool)

(declare-fun e!63958 () Bool)

(assert (=> b!113518 (= e!63958 e!63952)))

(assert (=> b!113518 (= c!26464 ((_ is Star!469) r!15532))))

(declare-fun bm!4864 () Bool)

(assert (=> bm!4864 (= call!4869 (validRegex!83 (ite c!26465 (regOne!1451 r!15532) (regTwo!1450 r!15532))))))

(declare-fun b!113519 () Bool)

(declare-fun res!54222 () Bool)

(assert (=> b!113519 (=> (not res!54222) (not e!63956))))

(assert (=> b!113519 (= res!54222 call!4869)))

(assert (=> b!113519 (= e!63954 e!63956)))

(declare-fun d!28180 () Bool)

(declare-fun res!54223 () Bool)

(assert (=> d!28180 (=> res!54223 e!63958)))

(assert (=> d!28180 (= res!54223 ((_ is ElementMatch!469) r!15532))))

(assert (=> d!28180 (= (validRegex!83 r!15532) e!63958)))

(assert (= (and d!28180 (not res!54223)) b!113518))

(assert (= (and b!113518 c!26464) b!113517))

(assert (= (and b!113518 (not c!26464)) b!113513))

(assert (= (and b!113517 res!54225) b!113511))

(assert (= (and b!113513 c!26465) b!113519))

(assert (= (and b!113513 (not c!26465)) b!113516))

(assert (= (and b!113519 res!54222) b!113514))

(assert (= (and b!113516 (not res!54224)) b!113515))

(assert (= (and b!113515 res!54226) b!113512))

(assert (= (or b!113514 b!113515) bm!4862))

(assert (= (or b!113519 b!113512) bm!4864))

(assert (= (or b!113511 bm!4862) bm!4863))

(declare-fun m!102824 () Bool)

(assert (=> b!113517 m!102824))

(declare-fun m!102826 () Bool)

(assert (=> bm!4863 m!102826))

(declare-fun m!102828 () Bool)

(assert (=> bm!4864 m!102828))

(assert (=> start!11648 d!28180))

(declare-fun d!28182 () Bool)

(declare-fun res!54229 () Bool)

(declare-fun e!63961 () Bool)

(assert (=> d!28182 (=> (not res!54229) (not e!63961))))

(assert (=> d!28182 (= res!54229 ((_ is HashMap!331) (cache!783 cache!470)))))

(assert (=> d!28182 (= (inv!2351 cache!470) e!63961)))

(declare-fun b!113522 () Bool)

(assert (=> b!113522 (= e!63961 (validCacheMap!13 (cache!783 cache!470)))))

(assert (= (and d!28182 res!54229) b!113522))

(assert (=> b!113522 m!102792))

(assert (=> start!11648 d!28182))

(declare-fun b!113532 () Bool)

(declare-fun e!63966 () List!1854)

(assert (=> b!113532 (= e!63966 (Cons!1848 (h!7245 testedP!367) (++!314 (t!22331 testedP!367) testedSuffix!285)))))

(declare-fun d!28184 () Bool)

(declare-fun e!63967 () Bool)

(assert (=> d!28184 e!63967))

(declare-fun res!54234 () Bool)

(assert (=> d!28184 (=> (not res!54234) (not e!63967))))

(declare-fun lt!33131 () List!1854)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!211 (List!1854) (InoxSet C!1860))

(assert (=> d!28184 (= res!54234 (= (content!211 lt!33131) ((_ map or) (content!211 testedP!367) (content!211 testedSuffix!285))))))

(assert (=> d!28184 (= lt!33131 e!63966)))

(declare-fun c!26468 () Bool)

(assert (=> d!28184 (= c!26468 ((_ is Nil!1848) testedP!367))))

(assert (=> d!28184 (= (++!314 testedP!367 testedSuffix!285) lt!33131)))

(declare-fun b!113531 () Bool)

(assert (=> b!113531 (= e!63966 testedSuffix!285)))

(declare-fun b!113533 () Bool)

(declare-fun res!54235 () Bool)

(assert (=> b!113533 (=> (not res!54235) (not e!63967))))

(assert (=> b!113533 (= res!54235 (= (size!1632 lt!33131) (+ (size!1632 testedP!367) (size!1632 testedSuffix!285))))))

(declare-fun b!113534 () Bool)

(assert (=> b!113534 (= e!63967 (or (not (= testedSuffix!285 Nil!1848)) (= lt!33131 testedP!367)))))

(assert (= (and d!28184 c!26468) b!113531))

(assert (= (and d!28184 (not c!26468)) b!113532))

(assert (= (and d!28184 res!54234) b!113533))

(assert (= (and b!113533 res!54235) b!113534))

(declare-fun m!102830 () Bool)

(assert (=> b!113532 m!102830))

(declare-fun m!102832 () Bool)

(assert (=> d!28184 m!102832))

(declare-fun m!102834 () Bool)

(assert (=> d!28184 m!102834))

(declare-fun m!102836 () Bool)

(assert (=> d!28184 m!102836))

(declare-fun m!102838 () Bool)

(assert (=> b!113533 m!102838))

(assert (=> b!113533 m!102784))

(declare-fun m!102840 () Bool)

(assert (=> b!113533 m!102840))

(assert (=> b!113457 d!28184))

(declare-fun d!28186 () Bool)

(assert (=> d!28186 (= (array_inv!391 (_keys!626 (v!13201 (underlying!869 (v!13202 (underlying!870 (cache!783 cache!470))))))) (bvsge (size!1633 (_keys!626 (v!13201 (underlying!869 (v!13202 (underlying!870 (cache!783 cache!470))))))) #b00000000000000000000000000000000))))

(assert (=> b!113453 d!28186))

(declare-fun d!28188 () Bool)

(assert (=> d!28188 (= (array_inv!392 (_values!613 (v!13201 (underlying!869 (v!13202 (underlying!870 (cache!783 cache!470))))))) (bvsge (size!1634 (_values!613 (v!13201 (underlying!869 (v!13202 (underlying!870 (cache!783 cache!470))))))) #b00000000000000000000000000000000))))

(assert (=> b!113453 d!28188))

(declare-fun d!28190 () Bool)

(declare-fun lt!33132 () Int)

(assert (=> d!28190 (>= lt!33132 0)))

(declare-fun e!63968 () Int)

(assert (=> d!28190 (= lt!33132 e!63968)))

(declare-fun c!26469 () Bool)

(assert (=> d!28190 (= c!26469 ((_ is Nil!1848) totalInput!1363))))

(assert (=> d!28190 (= (size!1632 totalInput!1363) lt!33132)))

(declare-fun b!113535 () Bool)

(assert (=> b!113535 (= e!63968 0)))

(declare-fun b!113536 () Bool)

(assert (=> b!113536 (= e!63968 (+ 1 (size!1632 (t!22331 totalInput!1363))))))

(assert (= (and d!28190 c!26469) b!113535))

(assert (= (and d!28190 (not c!26469)) b!113536))

(declare-fun m!102842 () Bool)

(assert (=> b!113536 m!102842))

(assert (=> b!113448 d!28190))

(declare-fun e!63971 () Bool)

(assert (=> b!113454 (= tp!61768 e!63971)))

(declare-fun b!113549 () Bool)

(declare-fun tp!61794 () Bool)

(assert (=> b!113549 (= e!63971 tp!61794)))

(declare-fun b!113550 () Bool)

(declare-fun tp!61791 () Bool)

(declare-fun tp!61793 () Bool)

(assert (=> b!113550 (= e!63971 (and tp!61791 tp!61793))))

(declare-fun b!113548 () Bool)

(declare-fun tp!61792 () Bool)

(declare-fun tp!61795 () Bool)

(assert (=> b!113548 (= e!63971 (and tp!61792 tp!61795))))

(declare-fun b!113547 () Bool)

(assert (=> b!113547 (= e!63971 tp_is_empty!993)))

(assert (= (and b!113454 ((_ is ElementMatch!469) (regOne!1451 r!15532))) b!113547))

(assert (= (and b!113454 ((_ is Concat!853) (regOne!1451 r!15532))) b!113548))

(assert (= (and b!113454 ((_ is Star!469) (regOne!1451 r!15532))) b!113549))

(assert (= (and b!113454 ((_ is Union!469) (regOne!1451 r!15532))) b!113550))

(declare-fun e!63972 () Bool)

(assert (=> b!113454 (= tp!61778 e!63972)))

(declare-fun b!113553 () Bool)

(declare-fun tp!61799 () Bool)

(assert (=> b!113553 (= e!63972 tp!61799)))

(declare-fun b!113554 () Bool)

(declare-fun tp!61796 () Bool)

(declare-fun tp!61798 () Bool)

(assert (=> b!113554 (= e!63972 (and tp!61796 tp!61798))))

(declare-fun b!113552 () Bool)

(declare-fun tp!61797 () Bool)

(declare-fun tp!61800 () Bool)

(assert (=> b!113552 (= e!63972 (and tp!61797 tp!61800))))

(declare-fun b!113551 () Bool)

(assert (=> b!113551 (= e!63972 tp_is_empty!993)))

(assert (= (and b!113454 ((_ is ElementMatch!469) (regTwo!1451 r!15532))) b!113551))

(assert (= (and b!113454 ((_ is Concat!853) (regTwo!1451 r!15532))) b!113552))

(assert (= (and b!113454 ((_ is Star!469) (regTwo!1451 r!15532))) b!113553))

(assert (= (and b!113454 ((_ is Union!469) (regTwo!1451 r!15532))) b!113554))

(declare-fun e!63973 () Bool)

(assert (=> b!113449 (= tp!61766 e!63973)))

(declare-fun b!113557 () Bool)

(declare-fun tp!61804 () Bool)

(assert (=> b!113557 (= e!63973 tp!61804)))

(declare-fun b!113558 () Bool)

(declare-fun tp!61801 () Bool)

(declare-fun tp!61803 () Bool)

(assert (=> b!113558 (= e!63973 (and tp!61801 tp!61803))))

(declare-fun b!113556 () Bool)

(declare-fun tp!61802 () Bool)

(declare-fun tp!61805 () Bool)

(assert (=> b!113556 (= e!63973 (and tp!61802 tp!61805))))

(declare-fun b!113555 () Bool)

(assert (=> b!113555 (= e!63973 tp_is_empty!993)))

(assert (= (and b!113449 ((_ is ElementMatch!469) (reg!798 r!15532))) b!113555))

(assert (= (and b!113449 ((_ is Concat!853) (reg!798 r!15532))) b!113556))

(assert (= (and b!113449 ((_ is Star!469) (reg!798 r!15532))) b!113557))

(assert (= (and b!113449 ((_ is Union!469) (reg!798 r!15532))) b!113558))

(declare-fun b!113563 () Bool)

(declare-fun e!63976 () Bool)

(declare-fun tp!61808 () Bool)

(assert (=> b!113563 (= e!63976 (and tp_is_empty!993 tp!61808))))

(assert (=> b!113455 (= tp!61780 e!63976)))

(assert (= (and b!113455 ((_ is Cons!1848) (t!22331 totalInput!1363))) b!113563))

(declare-fun mapNonEmpty!1321 () Bool)

(declare-fun mapRes!1321 () Bool)

(declare-fun tp!61824 () Bool)

(declare-fun e!63982 () Bool)

(assert (=> mapNonEmpty!1321 (= mapRes!1321 (and tp!61824 e!63982))))

(declare-fun mapRest!1321 () (Array (_ BitVec 32) List!1855))

(declare-fun mapKey!1321 () (_ BitVec 32))

(declare-fun mapValue!1321 () List!1855)

(assert (=> mapNonEmpty!1321 (= mapRest!1318 (store mapRest!1321 mapKey!1321 mapValue!1321))))

(declare-fun condMapEmpty!1321 () Bool)

(declare-fun mapDefault!1321 () List!1855)

(assert (=> mapNonEmpty!1318 (= condMapEmpty!1321 (= mapRest!1318 ((as const (Array (_ BitVec 32) List!1855)) mapDefault!1321)))))

(declare-fun e!63981 () Bool)

(assert (=> mapNonEmpty!1318 (= tp!61777 (and e!63981 mapRes!1321))))

(declare-fun tp!61825 () Bool)

(declare-fun tp!61826 () Bool)

(declare-fun b!113570 () Bool)

(declare-fun tp!61829 () Bool)

(assert (=> b!113570 (= e!63982 (and tp!61825 tp_is_empty!993 tp!61826 tp!61829))))

(declare-fun b!113571 () Bool)

(declare-fun tp!61827 () Bool)

(declare-fun tp!61823 () Bool)

(declare-fun tp!61828 () Bool)

(assert (=> b!113571 (= e!63981 (and tp!61823 tp_is_empty!993 tp!61828 tp!61827))))

(declare-fun mapIsEmpty!1321 () Bool)

(assert (=> mapIsEmpty!1321 mapRes!1321))

(assert (= (and mapNonEmpty!1318 condMapEmpty!1321) mapIsEmpty!1321))

(assert (= (and mapNonEmpty!1318 (not condMapEmpty!1321)) mapNonEmpty!1321))

(assert (= (and mapNonEmpty!1321 ((_ is Cons!1849) mapValue!1321)) b!113570))

(assert (= (and mapNonEmpty!1318 ((_ is Cons!1849) mapDefault!1321)) b!113571))

(declare-fun m!102844 () Bool)

(assert (=> mapNonEmpty!1321 m!102844))

(declare-fun tp!61836 () Bool)

(declare-fun tp!61838 () Bool)

(declare-fun b!113576 () Bool)

(declare-fun e!63985 () Bool)

(declare-fun tp!61837 () Bool)

(assert (=> b!113576 (= e!63985 (and tp!61836 tp_is_empty!993 tp!61837 tp!61838))))

(assert (=> mapNonEmpty!1318 (= tp!61767 e!63985)))

(assert (= (and mapNonEmpty!1318 ((_ is Cons!1849) mapValue!1318)) b!113576))

(declare-fun b!113577 () Bool)

(declare-fun e!63986 () Bool)

(declare-fun tp!61839 () Bool)

(assert (=> b!113577 (= e!63986 (and tp_is_empty!993 tp!61839))))

(assert (=> b!113451 (= tp!61774 e!63986)))

(assert (= (and b!113451 ((_ is Cons!1848) (t!22331 testedP!367))) b!113577))

(declare-fun b!113578 () Bool)

(declare-fun e!63987 () Bool)

(declare-fun tp!61840 () Bool)

(assert (=> b!113578 (= e!63987 (and tp_is_empty!993 tp!61840))))

(assert (=> b!113456 (= tp!61771 e!63987)))

(assert (= (and b!113456 ((_ is Cons!1848) (t!22331 testedSuffix!285))) b!113578))

(declare-fun tp!61842 () Bool)

(declare-fun tp!61843 () Bool)

(declare-fun b!113579 () Bool)

(declare-fun e!63988 () Bool)

(declare-fun tp!61841 () Bool)

(assert (=> b!113579 (= e!63988 (and tp!61841 tp_is_empty!993 tp!61842 tp!61843))))

(assert (=> b!113453 (= tp!61770 e!63988)))

(assert (= (and b!113453 ((_ is Cons!1849) (zeroValue!591 (v!13201 (underlying!869 (v!13202 (underlying!870 (cache!783 cache!470)))))))) b!113579))

(declare-fun b!113580 () Bool)

(declare-fun tp!61846 () Bool)

(declare-fun e!63989 () Bool)

(declare-fun tp!61844 () Bool)

(declare-fun tp!61845 () Bool)

(assert (=> b!113580 (= e!63989 (and tp!61844 tp_is_empty!993 tp!61845 tp!61846))))

(assert (=> b!113453 (= tp!61772 e!63989)))

(assert (= (and b!113453 ((_ is Cons!1849) (minValue!591 (v!13201 (underlying!869 (v!13202 (underlying!870 (cache!783 cache!470)))))))) b!113580))

(declare-fun e!63990 () Bool)

(declare-fun tp!61847 () Bool)

(declare-fun b!113581 () Bool)

(declare-fun tp!61848 () Bool)

(declare-fun tp!61849 () Bool)

(assert (=> b!113581 (= e!63990 (and tp!61847 tp_is_empty!993 tp!61848 tp!61849))))

(assert (=> b!113458 (= tp!61775 e!63990)))

(assert (= (and b!113458 ((_ is Cons!1849) mapDefault!1318)) b!113581))

(declare-fun e!63991 () Bool)

(assert (=> b!113452 (= tp!61773 e!63991)))

(declare-fun b!113584 () Bool)

(declare-fun tp!61853 () Bool)

(assert (=> b!113584 (= e!63991 tp!61853)))

(declare-fun b!113585 () Bool)

(declare-fun tp!61850 () Bool)

(declare-fun tp!61852 () Bool)

(assert (=> b!113585 (= e!63991 (and tp!61850 tp!61852))))

(declare-fun b!113583 () Bool)

(declare-fun tp!61851 () Bool)

(declare-fun tp!61854 () Bool)

(assert (=> b!113583 (= e!63991 (and tp!61851 tp!61854))))

(declare-fun b!113582 () Bool)

(assert (=> b!113582 (= e!63991 tp_is_empty!993)))

(assert (= (and b!113452 ((_ is ElementMatch!469) (regOne!1450 r!15532))) b!113582))

(assert (= (and b!113452 ((_ is Concat!853) (regOne!1450 r!15532))) b!113583))

(assert (= (and b!113452 ((_ is Star!469) (regOne!1450 r!15532))) b!113584))

(assert (= (and b!113452 ((_ is Union!469) (regOne!1450 r!15532))) b!113585))

(declare-fun e!63992 () Bool)

(assert (=> b!113452 (= tp!61779 e!63992)))

(declare-fun b!113588 () Bool)

(declare-fun tp!61858 () Bool)

(assert (=> b!113588 (= e!63992 tp!61858)))

(declare-fun b!113589 () Bool)

(declare-fun tp!61855 () Bool)

(declare-fun tp!61857 () Bool)

(assert (=> b!113589 (= e!63992 (and tp!61855 tp!61857))))

(declare-fun b!113587 () Bool)

(declare-fun tp!61856 () Bool)

(declare-fun tp!61859 () Bool)

(assert (=> b!113587 (= e!63992 (and tp!61856 tp!61859))))

(declare-fun b!113586 () Bool)

(assert (=> b!113586 (= e!63992 tp_is_empty!993)))

(assert (= (and b!113452 ((_ is ElementMatch!469) (regTwo!1450 r!15532))) b!113586))

(assert (= (and b!113452 ((_ is Concat!853) (regTwo!1450 r!15532))) b!113587))

(assert (= (and b!113452 ((_ is Star!469) (regTwo!1450 r!15532))) b!113588))

(assert (= (and b!113452 ((_ is Union!469) (regTwo!1450 r!15532))) b!113589))

(check-sat (not b!113587) (not b_next!3571) (not d!28184) (not b!113576) (not d!28176) (not b!113536) (not b!113475) (not b!113579) (not b!113552) (not b!113532) (not b_next!3569) (not b!113570) (not b!113588) (not b!113478) (not b!113476) (not b!113554) (not b!113474) (not b!113557) (not b!113517) (not b!113589) b_and!5701 (not b!113558) (not b!113548) (not b!113578) (not d!28166) (not b!113486) b_and!5699 (not b!113522) (not b!113553) (not b!113533) (not bm!4863) (not b!113491) (not b!113479) (not b!113549) (not d!28172) (not b!113583) (not b!113585) (not b!113584) (not b!113577) (not b!113571) (not b!113580) (not b!113556) (not b!113480) (not b!113563) (not d!28178) (not b!113581) (not mapNonEmpty!1321) (not bm!4864) tp_is_empty!993 (not b!113550))
(check-sat b_and!5701 b_and!5699 (not b_next!3571) (not b_next!3569))

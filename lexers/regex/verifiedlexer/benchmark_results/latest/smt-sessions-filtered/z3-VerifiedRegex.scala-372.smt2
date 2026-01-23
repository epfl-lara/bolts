; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!11588 () Bool)

(assert start!11588)

(declare-fun b!112615 () Bool)

(declare-fun b_free!3529 () Bool)

(declare-fun b_next!3529 () Bool)

(assert (=> b!112615 (= b_free!3529 (not b_next!3529))))

(declare-fun tp!61169 () Bool)

(declare-fun b_and!5659 () Bool)

(assert (=> b!112615 (= tp!61169 b_and!5659)))

(declare-fun b!112613 () Bool)

(declare-fun b_free!3531 () Bool)

(declare-fun b_next!3531 () Bool)

(assert (=> b!112613 (= b_free!3531 (not b_next!3531))))

(declare-fun tp!61167 () Bool)

(declare-fun b_and!5661 () Bool)

(assert (=> b!112613 (= tp!61167 b_and!5661)))

(declare-fun b!112607 () Bool)

(declare-fun e!63303 () Bool)

(declare-fun e!63293 () Bool)

(assert (=> b!112607 (= e!63303 e!63293)))

(declare-fun res!53940 () Bool)

(assert (=> b!112607 (=> (not res!53940) (not e!63293))))

(declare-datatypes ((C!1840 0))(
  ( (C!1841 (val!646 Int)) )
))
(declare-datatypes ((List!1834 0))(
  ( (Nil!1828) (Cons!1828 (h!7225 C!1840) (t!22311 List!1834)) )
))
(declare-fun lt!32913 () List!1834)

(declare-fun totalInput!1363 () List!1834)

(assert (=> b!112607 (= res!53940 (= lt!32913 totalInput!1363))))

(declare-fun testedP!367 () List!1834)

(declare-fun testedSuffix!285 () List!1834)

(declare-fun ++!306 (List!1834 List!1834) List!1834)

(assert (=> b!112607 (= lt!32913 (++!306 testedP!367 testedSuffix!285))))

(declare-fun b!112608 () Bool)

(declare-fun e!63304 () Bool)

(declare-fun tp_is_empty!973 () Bool)

(assert (=> b!112608 (= e!63304 tp_is_empty!973)))

(declare-fun b!112609 () Bool)

(declare-fun res!53938 () Bool)

(assert (=> b!112609 (=> (not res!53938) (not e!63303))))

(declare-datatypes ((Regex!459 0))(
  ( (ElementMatch!459 (c!26414 C!1840)) (Concat!843 (regOne!1430 Regex!459) (regTwo!1430 Regex!459)) (EmptyExpr!459) (Star!459 (reg!788 Regex!459)) (EmptyLang!459) (Union!459 (regOne!1431 Regex!459) (regTwo!1431 Regex!459)) )
))
(declare-datatypes ((Hashable!321 0))(
  ( (HashableExt!320 (__x!1900 Int)) )
))
(declare-datatypes ((tuple2!1956 0))(
  ( (tuple2!1957 (_1!1188 Regex!459) (_2!1188 C!1840)) )
))
(declare-datatypes ((tuple2!1958 0))(
  ( (tuple2!1959 (_1!1189 tuple2!1956) (_2!1189 Regex!459)) )
))
(declare-datatypes ((List!1835 0))(
  ( (Nil!1829) (Cons!1829 (h!7226 tuple2!1958) (t!22312 List!1835)) )
))
(declare-datatypes ((array!1143 0))(
  ( (array!1144 (arr!534 (Array (_ BitVec 32) (_ BitVec 64))) (size!1603 (_ BitVec 32))) )
))
(declare-datatypes ((array!1145 0))(
  ( (array!1146 (arr!535 (Array (_ BitVec 32) List!1835)) (size!1604 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!650 0))(
  ( (LongMapFixedSize!651 (defaultEntry!664 Int) (mask!1222 (_ BitVec 32)) (extraKeys!571 (_ BitVec 32)) (zeroValue!581 List!1835) (minValue!581 List!1835) (_size!783 (_ BitVec 32)) (_keys!616 array!1143) (_values!603 array!1145) (_vacant!386 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!1289 0))(
  ( (Cell!1290 (v!13181 LongMapFixedSize!650)) )
))
(declare-datatypes ((MutLongMap!325 0))(
  ( (LongMap!325 (underlying!849 Cell!1289)) (MutLongMapExt!324 (__x!1901 Int)) )
))
(declare-datatypes ((Cell!1291 0))(
  ( (Cell!1292 (v!13182 MutLongMap!325)) )
))
(declare-datatypes ((MutableMap!321 0))(
  ( (MutableMapExt!320 (__x!1902 Int)) (HashMap!321 (underlying!850 Cell!1291) (hashF!2197 Hashable!321) (_size!784 (_ BitVec 32)) (defaultValue!470 Int)) )
))
(declare-datatypes ((Cache!78 0))(
  ( (Cache!79 (cache!773 MutableMap!321)) )
))
(declare-fun cache!470 () Cache!78)

(declare-fun valid!302 (Cache!78) Bool)

(assert (=> b!112609 (= res!53938 (valid!302 cache!470))))

(declare-fun b!112610 () Bool)

(declare-fun e!63305 () Bool)

(declare-fun e!63300 () Bool)

(assert (=> b!112610 (= e!63305 e!63300)))

(declare-fun res!53936 () Bool)

(assert (=> b!112610 (=> (not res!53936) (not e!63300))))

(declare-fun totalInputSize!643 () Int)

(declare-fun lt!32915 () Int)

(assert (=> b!112610 (= res!53936 (= totalInputSize!643 lt!32915))))

(declare-fun size!1605 (List!1834) Int)

(assert (=> b!112610 (= lt!32915 (size!1605 totalInput!1363))))

(declare-fun b!112611 () Bool)

(declare-fun e!63302 () Bool)

(declare-fun tp!61171 () Bool)

(assert (=> b!112611 (= e!63302 (and tp_is_empty!973 tp!61171))))

(declare-fun b!112612 () Bool)

(declare-fun e!63294 () Bool)

(declare-fun tp!61170 () Bool)

(declare-fun mapRes!1282 () Bool)

(assert (=> b!112612 (= e!63294 (and tp!61170 mapRes!1282))))

(declare-fun condMapEmpty!1282 () Bool)

(declare-fun mapDefault!1282 () List!1835)

(assert (=> b!112612 (= condMapEmpty!1282 (= (arr!535 (_values!603 (v!13181 (underlying!849 (v!13182 (underlying!850 (cache!773 cache!470))))))) ((as const (Array (_ BitVec 32) List!1835)) mapDefault!1282)))))

(declare-fun b!112614 () Bool)

(declare-fun e!63301 () Bool)

(assert (=> b!112614 (= e!63300 (not e!63301))))

(declare-fun res!53939 () Bool)

(assert (=> b!112614 (=> res!53939 e!63301)))

(declare-fun isPrefix!53 (List!1834 List!1834) Bool)

(assert (=> b!112614 (= res!53939 (not (isPrefix!53 testedP!367 totalInput!1363)))))

(assert (=> b!112614 (isPrefix!53 testedP!367 lt!32913)))

(declare-datatypes ((Unit!1305 0))(
  ( (Unit!1306) )
))
(declare-fun lt!32912 () Unit!1305)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2 (List!1834 List!1834) Unit!1305)

(assert (=> b!112614 (= lt!32912 (lemmaConcatTwoListThenFirstIsPrefix!2 testedP!367 testedSuffix!285))))

(declare-fun tp!61158 () Bool)

(declare-fun tp!61166 () Bool)

(declare-fun e!63308 () Bool)

(declare-fun array_inv!371 (array!1143) Bool)

(declare-fun array_inv!372 (array!1145) Bool)

(assert (=> b!112615 (= e!63308 (and tp!61169 tp!61158 tp!61166 (array_inv!371 (_keys!616 (v!13181 (underlying!849 (v!13182 (underlying!850 (cache!773 cache!470))))))) (array_inv!372 (_values!603 (v!13181 (underlying!849 (v!13182 (underlying!850 (cache!773 cache!470))))))) e!63294))))

(declare-fun b!112616 () Bool)

(declare-fun tp!61162 () Bool)

(declare-fun tp!61164 () Bool)

(assert (=> b!112616 (= e!63304 (and tp!61162 tp!61164))))

(declare-fun b!112617 () Bool)

(declare-fun e!63296 () Bool)

(declare-fun tp!61159 () Bool)

(assert (=> b!112617 (= e!63296 (and tp_is_empty!973 tp!61159))))

(declare-fun b!112618 () Bool)

(declare-fun e!63306 () Bool)

(declare-fun e!63299 () Bool)

(assert (=> b!112618 (= e!63306 e!63299)))

(declare-fun b!112619 () Bool)

(declare-fun e!63298 () Bool)

(declare-fun tp!61165 () Bool)

(assert (=> b!112619 (= e!63298 (and tp_is_empty!973 tp!61165))))

(declare-fun b!112620 () Bool)

(assert (=> b!112620 (= e!63293 e!63305)))

(declare-fun res!53937 () Bool)

(assert (=> b!112620 (=> (not res!53937) (not e!63305))))

(declare-fun testedPSize!285 () Int)

(declare-fun lt!32914 () Int)

(assert (=> b!112620 (= res!53937 (= testedPSize!285 lt!32914))))

(assert (=> b!112620 (= lt!32914 (size!1605 testedP!367))))

(declare-fun b!112621 () Bool)

(assert (=> b!112621 (= e!63301 (>= lt!32915 lt!32914))))

(declare-fun b!112622 () Bool)

(declare-fun tp!61163 () Bool)

(assert (=> b!112622 (= e!63304 tp!61163)))

(declare-fun e!63292 () Bool)

(assert (=> b!112613 (= e!63299 (and e!63292 tp!61167))))

(declare-fun res!53941 () Bool)

(assert (=> start!11588 (=> (not res!53941) (not e!63303))))

(declare-fun r!15532 () Regex!459)

(declare-fun validRegex!74 (Regex!459) Bool)

(assert (=> start!11588 (= res!53941 (validRegex!74 r!15532))))

(assert (=> start!11588 e!63303))

(assert (=> start!11588 true))

(assert (=> start!11588 e!63304))

(assert (=> start!11588 e!63296))

(assert (=> start!11588 e!63302))

(assert (=> start!11588 e!63298))

(declare-fun inv!2327 (Cache!78) Bool)

(assert (=> start!11588 (and (inv!2327 cache!470) e!63306)))

(declare-fun b!112623 () Bool)

(declare-fun e!63295 () Bool)

(declare-fun lt!32916 () MutLongMap!325)

(get-info :version)

(assert (=> b!112623 (= e!63292 (and e!63295 ((_ is LongMap!325) lt!32916)))))

(assert (=> b!112623 (= lt!32916 (v!13182 (underlying!850 (cache!773 cache!470))))))

(declare-fun mapNonEmpty!1282 () Bool)

(declare-fun tp!61168 () Bool)

(declare-fun tp!61172 () Bool)

(assert (=> mapNonEmpty!1282 (= mapRes!1282 (and tp!61168 tp!61172))))

(declare-fun mapValue!1282 () List!1835)

(declare-fun mapRest!1282 () (Array (_ BitVec 32) List!1835))

(declare-fun mapKey!1282 () (_ BitVec 32))

(assert (=> mapNonEmpty!1282 (= (arr!535 (_values!603 (v!13181 (underlying!849 (v!13182 (underlying!850 (cache!773 cache!470))))))) (store mapRest!1282 mapKey!1282 mapValue!1282))))

(declare-fun b!112624 () Bool)

(declare-fun e!63307 () Bool)

(assert (=> b!112624 (= e!63295 e!63307)))

(declare-fun mapIsEmpty!1282 () Bool)

(assert (=> mapIsEmpty!1282 mapRes!1282))

(declare-fun b!112625 () Bool)

(declare-fun tp!61161 () Bool)

(declare-fun tp!61160 () Bool)

(assert (=> b!112625 (= e!63304 (and tp!61161 tp!61160))))

(declare-fun b!112626 () Bool)

(assert (=> b!112626 (= e!63307 e!63308)))

(assert (= (and start!11588 res!53941) b!112609))

(assert (= (and b!112609 res!53938) b!112607))

(assert (= (and b!112607 res!53940) b!112620))

(assert (= (and b!112620 res!53937) b!112610))

(assert (= (and b!112610 res!53936) b!112614))

(assert (= (and b!112614 (not res!53939)) b!112621))

(assert (= (and start!11588 ((_ is ElementMatch!459) r!15532)) b!112608))

(assert (= (and start!11588 ((_ is Concat!843) r!15532)) b!112616))

(assert (= (and start!11588 ((_ is Star!459) r!15532)) b!112622))

(assert (= (and start!11588 ((_ is Union!459) r!15532)) b!112625))

(assert (= (and start!11588 ((_ is Cons!1828) totalInput!1363)) b!112617))

(assert (= (and start!11588 ((_ is Cons!1828) testedSuffix!285)) b!112611))

(assert (= (and start!11588 ((_ is Cons!1828) testedP!367)) b!112619))

(assert (= (and b!112612 condMapEmpty!1282) mapIsEmpty!1282))

(assert (= (and b!112612 (not condMapEmpty!1282)) mapNonEmpty!1282))

(assert (= b!112615 b!112612))

(assert (= b!112626 b!112615))

(assert (= b!112624 b!112626))

(assert (= (and b!112623 ((_ is LongMap!325) (v!13182 (underlying!850 (cache!773 cache!470))))) b!112624))

(assert (= b!112613 b!112623))

(assert (= (and b!112618 ((_ is HashMap!321) (cache!773 cache!470))) b!112613))

(assert (= start!11588 b!112618))

(declare-fun m!102394 () Bool)

(assert (=> b!112610 m!102394))

(declare-fun m!102396 () Bool)

(assert (=> start!11588 m!102396))

(declare-fun m!102398 () Bool)

(assert (=> start!11588 m!102398))

(declare-fun m!102400 () Bool)

(assert (=> b!112615 m!102400))

(declare-fun m!102402 () Bool)

(assert (=> b!112615 m!102402))

(declare-fun m!102404 () Bool)

(assert (=> mapNonEmpty!1282 m!102404))

(declare-fun m!102406 () Bool)

(assert (=> b!112620 m!102406))

(declare-fun m!102408 () Bool)

(assert (=> b!112614 m!102408))

(declare-fun m!102410 () Bool)

(assert (=> b!112614 m!102410))

(declare-fun m!102412 () Bool)

(assert (=> b!112614 m!102412))

(declare-fun m!102414 () Bool)

(assert (=> b!112607 m!102414))

(declare-fun m!102416 () Bool)

(assert (=> b!112609 m!102416))

(check-sat b_and!5659 (not b!112617) (not b!112609) (not b!112622) (not b!112611) (not b!112619) (not mapNonEmpty!1282) (not b!112616) (not b!112615) (not b!112620) (not b_next!3531) (not b!112625) (not start!11588) (not b!112610) b_and!5661 tp_is_empty!973 (not b!112607) (not b_next!3529) (not b!112614) (not b!112612))
(check-sat b_and!5661 b_and!5659 (not b_next!3531) (not b_next!3529))
(get-model)

(declare-fun b!112637 () Bool)

(declare-fun res!53947 () Bool)

(declare-fun e!63314 () Bool)

(assert (=> b!112637 (=> (not res!53947) (not e!63314))))

(declare-fun lt!32919 () List!1834)

(assert (=> b!112637 (= res!53947 (= (size!1605 lt!32919) (+ (size!1605 testedP!367) (size!1605 testedSuffix!285))))))

(declare-fun b!112638 () Bool)

(assert (=> b!112638 (= e!63314 (or (not (= testedSuffix!285 Nil!1828)) (= lt!32919 testedP!367)))))

(declare-fun b!112635 () Bool)

(declare-fun e!63313 () List!1834)

(assert (=> b!112635 (= e!63313 testedSuffix!285)))

(declare-fun d!28113 () Bool)

(assert (=> d!28113 e!63314))

(declare-fun res!53946 () Bool)

(assert (=> d!28113 (=> (not res!53946) (not e!63314))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!209 (List!1834) (InoxSet C!1840))

(assert (=> d!28113 (= res!53946 (= (content!209 lt!32919) ((_ map or) (content!209 testedP!367) (content!209 testedSuffix!285))))))

(assert (=> d!28113 (= lt!32919 e!63313)))

(declare-fun c!26417 () Bool)

(assert (=> d!28113 (= c!26417 ((_ is Nil!1828) testedP!367))))

(assert (=> d!28113 (= (++!306 testedP!367 testedSuffix!285) lt!32919)))

(declare-fun b!112636 () Bool)

(assert (=> b!112636 (= e!63313 (Cons!1828 (h!7225 testedP!367) (++!306 (t!22311 testedP!367) testedSuffix!285)))))

(assert (= (and d!28113 c!26417) b!112635))

(assert (= (and d!28113 (not c!26417)) b!112636))

(assert (= (and d!28113 res!53946) b!112637))

(assert (= (and b!112637 res!53947) b!112638))

(declare-fun m!102418 () Bool)

(assert (=> b!112637 m!102418))

(assert (=> b!112637 m!102406))

(declare-fun m!102420 () Bool)

(assert (=> b!112637 m!102420))

(declare-fun m!102422 () Bool)

(assert (=> d!28113 m!102422))

(declare-fun m!102424 () Bool)

(assert (=> d!28113 m!102424))

(declare-fun m!102426 () Bool)

(assert (=> d!28113 m!102426))

(declare-fun m!102428 () Bool)

(assert (=> b!112636 m!102428))

(assert (=> b!112607 d!28113))

(declare-fun b!112647 () Bool)

(declare-fun e!63321 () Bool)

(declare-fun e!63323 () Bool)

(assert (=> b!112647 (= e!63321 e!63323)))

(declare-fun res!53958 () Bool)

(assert (=> b!112647 (=> (not res!53958) (not e!63323))))

(assert (=> b!112647 (= res!53958 (not ((_ is Nil!1828) totalInput!1363)))))

(declare-fun b!112650 () Bool)

(declare-fun e!63322 () Bool)

(assert (=> b!112650 (= e!63322 (>= (size!1605 totalInput!1363) (size!1605 testedP!367)))))

(declare-fun b!112649 () Bool)

(declare-fun tail!206 (List!1834) List!1834)

(assert (=> b!112649 (= e!63323 (isPrefix!53 (tail!206 testedP!367) (tail!206 totalInput!1363)))))

(declare-fun d!28115 () Bool)

(assert (=> d!28115 e!63322))

(declare-fun res!53959 () Bool)

(assert (=> d!28115 (=> res!53959 e!63322)))

(declare-fun lt!32922 () Bool)

(assert (=> d!28115 (= res!53959 (not lt!32922))))

(assert (=> d!28115 (= lt!32922 e!63321)))

(declare-fun res!53957 () Bool)

(assert (=> d!28115 (=> res!53957 e!63321)))

(assert (=> d!28115 (= res!53957 ((_ is Nil!1828) testedP!367))))

(assert (=> d!28115 (= (isPrefix!53 testedP!367 totalInput!1363) lt!32922)))

(declare-fun b!112648 () Bool)

(declare-fun res!53956 () Bool)

(assert (=> b!112648 (=> (not res!53956) (not e!63323))))

(declare-fun head!466 (List!1834) C!1840)

(assert (=> b!112648 (= res!53956 (= (head!466 testedP!367) (head!466 totalInput!1363)))))

(assert (= (and d!28115 (not res!53957)) b!112647))

(assert (= (and b!112647 res!53958) b!112648))

(assert (= (and b!112648 res!53956) b!112649))

(assert (= (and d!28115 (not res!53959)) b!112650))

(assert (=> b!112650 m!102394))

(assert (=> b!112650 m!102406))

(declare-fun m!102430 () Bool)

(assert (=> b!112649 m!102430))

(declare-fun m!102432 () Bool)

(assert (=> b!112649 m!102432))

(assert (=> b!112649 m!102430))

(assert (=> b!112649 m!102432))

(declare-fun m!102434 () Bool)

(assert (=> b!112649 m!102434))

(declare-fun m!102436 () Bool)

(assert (=> b!112648 m!102436))

(declare-fun m!102438 () Bool)

(assert (=> b!112648 m!102438))

(assert (=> b!112614 d!28115))

(declare-fun b!112651 () Bool)

(declare-fun e!63324 () Bool)

(declare-fun e!63326 () Bool)

(assert (=> b!112651 (= e!63324 e!63326)))

(declare-fun res!53962 () Bool)

(assert (=> b!112651 (=> (not res!53962) (not e!63326))))

(assert (=> b!112651 (= res!53962 (not ((_ is Nil!1828) lt!32913)))))

(declare-fun b!112654 () Bool)

(declare-fun e!63325 () Bool)

(assert (=> b!112654 (= e!63325 (>= (size!1605 lt!32913) (size!1605 testedP!367)))))

(declare-fun b!112653 () Bool)

(assert (=> b!112653 (= e!63326 (isPrefix!53 (tail!206 testedP!367) (tail!206 lt!32913)))))

(declare-fun d!28117 () Bool)

(assert (=> d!28117 e!63325))

(declare-fun res!53963 () Bool)

(assert (=> d!28117 (=> res!53963 e!63325)))

(declare-fun lt!32923 () Bool)

(assert (=> d!28117 (= res!53963 (not lt!32923))))

(assert (=> d!28117 (= lt!32923 e!63324)))

(declare-fun res!53961 () Bool)

(assert (=> d!28117 (=> res!53961 e!63324)))

(assert (=> d!28117 (= res!53961 ((_ is Nil!1828) testedP!367))))

(assert (=> d!28117 (= (isPrefix!53 testedP!367 lt!32913) lt!32923)))

(declare-fun b!112652 () Bool)

(declare-fun res!53960 () Bool)

(assert (=> b!112652 (=> (not res!53960) (not e!63326))))

(assert (=> b!112652 (= res!53960 (= (head!466 testedP!367) (head!466 lt!32913)))))

(assert (= (and d!28117 (not res!53961)) b!112651))

(assert (= (and b!112651 res!53962) b!112652))

(assert (= (and b!112652 res!53960) b!112653))

(assert (= (and d!28117 (not res!53963)) b!112654))

(declare-fun m!102440 () Bool)

(assert (=> b!112654 m!102440))

(assert (=> b!112654 m!102406))

(assert (=> b!112653 m!102430))

(declare-fun m!102442 () Bool)

(assert (=> b!112653 m!102442))

(assert (=> b!112653 m!102430))

(assert (=> b!112653 m!102442))

(declare-fun m!102444 () Bool)

(assert (=> b!112653 m!102444))

(assert (=> b!112652 m!102436))

(declare-fun m!102446 () Bool)

(assert (=> b!112652 m!102446))

(assert (=> b!112614 d!28117))

(declare-fun d!28119 () Bool)

(assert (=> d!28119 (isPrefix!53 testedP!367 (++!306 testedP!367 testedSuffix!285))))

(declare-fun lt!32926 () Unit!1305)

(declare-fun choose!1505 (List!1834 List!1834) Unit!1305)

(assert (=> d!28119 (= lt!32926 (choose!1505 testedP!367 testedSuffix!285))))

(assert (=> d!28119 (= (lemmaConcatTwoListThenFirstIsPrefix!2 testedP!367 testedSuffix!285) lt!32926)))

(declare-fun bs!11764 () Bool)

(assert (= bs!11764 d!28119))

(assert (=> bs!11764 m!102414))

(assert (=> bs!11764 m!102414))

(declare-fun m!102448 () Bool)

(assert (=> bs!11764 m!102448))

(declare-fun m!102450 () Bool)

(assert (=> bs!11764 m!102450))

(assert (=> b!112614 d!28119))

(declare-fun d!28121 () Bool)

(declare-fun validCacheMap!11 (MutableMap!321) Bool)

(assert (=> d!28121 (= (valid!302 cache!470) (validCacheMap!11 (cache!773 cache!470)))))

(declare-fun bs!11765 () Bool)

(assert (= bs!11765 d!28121))

(declare-fun m!102452 () Bool)

(assert (=> bs!11765 m!102452))

(assert (=> b!112609 d!28121))

(declare-fun d!28123 () Bool)

(declare-fun lt!32929 () Int)

(assert (=> d!28123 (>= lt!32929 0)))

(declare-fun e!63329 () Int)

(assert (=> d!28123 (= lt!32929 e!63329)))

(declare-fun c!26420 () Bool)

(assert (=> d!28123 (= c!26420 ((_ is Nil!1828) testedP!367))))

(assert (=> d!28123 (= (size!1605 testedP!367) lt!32929)))

(declare-fun b!112659 () Bool)

(assert (=> b!112659 (= e!63329 0)))

(declare-fun b!112660 () Bool)

(assert (=> b!112660 (= e!63329 (+ 1 (size!1605 (t!22311 testedP!367))))))

(assert (= (and d!28123 c!26420) b!112659))

(assert (= (and d!28123 (not c!26420)) b!112660))

(declare-fun m!102454 () Bool)

(assert (=> b!112660 m!102454))

(assert (=> b!112620 d!28123))

(declare-fun d!28125 () Bool)

(assert (=> d!28125 (= (array_inv!371 (_keys!616 (v!13181 (underlying!849 (v!13182 (underlying!850 (cache!773 cache!470))))))) (bvsge (size!1603 (_keys!616 (v!13181 (underlying!849 (v!13182 (underlying!850 (cache!773 cache!470))))))) #b00000000000000000000000000000000))))

(assert (=> b!112615 d!28125))

(declare-fun d!28127 () Bool)

(assert (=> d!28127 (= (array_inv!372 (_values!603 (v!13181 (underlying!849 (v!13182 (underlying!850 (cache!773 cache!470))))))) (bvsge (size!1604 (_values!603 (v!13181 (underlying!849 (v!13182 (underlying!850 (cache!773 cache!470))))))) #b00000000000000000000000000000000))))

(assert (=> b!112615 d!28127))

(declare-fun d!28129 () Bool)

(declare-fun lt!32930 () Int)

(assert (=> d!28129 (>= lt!32930 0)))

(declare-fun e!63330 () Int)

(assert (=> d!28129 (= lt!32930 e!63330)))

(declare-fun c!26421 () Bool)

(assert (=> d!28129 (= c!26421 ((_ is Nil!1828) totalInput!1363))))

(assert (=> d!28129 (= (size!1605 totalInput!1363) lt!32930)))

(declare-fun b!112661 () Bool)

(assert (=> b!112661 (= e!63330 0)))

(declare-fun b!112662 () Bool)

(assert (=> b!112662 (= e!63330 (+ 1 (size!1605 (t!22311 totalInput!1363))))))

(assert (= (and d!28129 c!26421) b!112661))

(assert (= (and d!28129 (not c!26421)) b!112662))

(declare-fun m!102456 () Bool)

(assert (=> b!112662 m!102456))

(assert (=> b!112610 d!28129))

(declare-fun b!112681 () Bool)

(declare-fun res!53975 () Bool)

(declare-fun e!63346 () Bool)

(assert (=> b!112681 (=> res!53975 e!63346)))

(assert (=> b!112681 (= res!53975 (not ((_ is Concat!843) r!15532)))))

(declare-fun e!63349 () Bool)

(assert (=> b!112681 (= e!63349 e!63346)))

(declare-fun b!112682 () Bool)

(declare-fun e!63347 () Bool)

(assert (=> b!112682 (= e!63346 e!63347)))

(declare-fun res!53974 () Bool)

(assert (=> b!112682 (=> (not res!53974) (not e!63347))))

(declare-fun call!4849 () Bool)

(assert (=> b!112682 (= res!53974 call!4849)))

(declare-fun c!26427 () Bool)

(declare-fun bm!4844 () Bool)

(declare-fun call!4850 () Bool)

(declare-fun c!26426 () Bool)

(assert (=> bm!4844 (= call!4850 (validRegex!74 (ite c!26427 (reg!788 r!15532) (ite c!26426 (regOne!1431 r!15532) (regTwo!1430 r!15532)))))))

(declare-fun b!112683 () Bool)

(declare-fun e!63350 () Bool)

(declare-fun e!63345 () Bool)

(assert (=> b!112683 (= e!63350 e!63345)))

(declare-fun res!53976 () Bool)

(declare-fun nullable!57 (Regex!459) Bool)

(assert (=> b!112683 (= res!53976 (not (nullable!57 (reg!788 r!15532))))))

(assert (=> b!112683 (=> (not res!53976) (not e!63345))))

(declare-fun b!112684 () Bool)

(declare-fun call!4851 () Bool)

(assert (=> b!112684 (= e!63347 call!4851)))

(declare-fun b!112685 () Bool)

(assert (=> b!112685 (= e!63350 e!63349)))

(assert (=> b!112685 (= c!26426 ((_ is Union!459) r!15532))))

(declare-fun b!112686 () Bool)

(declare-fun e!63351 () Bool)

(assert (=> b!112686 (= e!63351 call!4849)))

(declare-fun bm!4846 () Bool)

(assert (=> bm!4846 (= call!4851 call!4850)))

(declare-fun b!112687 () Bool)

(declare-fun e!63348 () Bool)

(assert (=> b!112687 (= e!63348 e!63350)))

(assert (=> b!112687 (= c!26427 ((_ is Star!459) r!15532))))

(declare-fun b!112688 () Bool)

(assert (=> b!112688 (= e!63345 call!4850)))

(declare-fun b!112689 () Bool)

(declare-fun res!53977 () Bool)

(assert (=> b!112689 (=> (not res!53977) (not e!63351))))

(assert (=> b!112689 (= res!53977 call!4851)))

(assert (=> b!112689 (= e!63349 e!63351)))

(declare-fun d!28131 () Bool)

(declare-fun res!53978 () Bool)

(assert (=> d!28131 (=> res!53978 e!63348)))

(assert (=> d!28131 (= res!53978 ((_ is ElementMatch!459) r!15532))))

(assert (=> d!28131 (= (validRegex!74 r!15532) e!63348)))

(declare-fun bm!4845 () Bool)

(assert (=> bm!4845 (= call!4849 (validRegex!74 (ite c!26426 (regTwo!1431 r!15532) (regOne!1430 r!15532))))))

(assert (= (and d!28131 (not res!53978)) b!112687))

(assert (= (and b!112687 c!26427) b!112683))

(assert (= (and b!112687 (not c!26427)) b!112685))

(assert (= (and b!112683 res!53976) b!112688))

(assert (= (and b!112685 c!26426) b!112689))

(assert (= (and b!112685 (not c!26426)) b!112681))

(assert (= (and b!112689 res!53977) b!112686))

(assert (= (and b!112681 (not res!53975)) b!112682))

(assert (= (and b!112682 res!53974) b!112684))

(assert (= (or b!112686 b!112682) bm!4845))

(assert (= (or b!112689 b!112684) bm!4846))

(assert (= (or b!112688 bm!4846) bm!4844))

(declare-fun m!102458 () Bool)

(assert (=> bm!4844 m!102458))

(declare-fun m!102460 () Bool)

(assert (=> b!112683 m!102460))

(declare-fun m!102462 () Bool)

(assert (=> bm!4845 m!102462))

(assert (=> start!11588 d!28131))

(declare-fun d!28133 () Bool)

(declare-fun res!53981 () Bool)

(declare-fun e!63354 () Bool)

(assert (=> d!28133 (=> (not res!53981) (not e!63354))))

(assert (=> d!28133 (= res!53981 ((_ is HashMap!321) (cache!773 cache!470)))))

(assert (=> d!28133 (= (inv!2327 cache!470) e!63354)))

(declare-fun b!112692 () Bool)

(assert (=> b!112692 (= e!63354 (validCacheMap!11 (cache!773 cache!470)))))

(assert (= (and d!28133 res!53981) b!112692))

(assert (=> b!112692 m!102452))

(assert (=> start!11588 d!28133))

(declare-fun b!112706 () Bool)

(declare-fun e!63357 () Bool)

(declare-fun tp!61186 () Bool)

(declare-fun tp!61184 () Bool)

(assert (=> b!112706 (= e!63357 (and tp!61186 tp!61184))))

(declare-fun b!112705 () Bool)

(declare-fun tp!61187 () Bool)

(assert (=> b!112705 (= e!63357 tp!61187)))

(declare-fun b!112703 () Bool)

(assert (=> b!112703 (= e!63357 tp_is_empty!973)))

(assert (=> b!112625 (= tp!61161 e!63357)))

(declare-fun b!112704 () Bool)

(declare-fun tp!61183 () Bool)

(declare-fun tp!61185 () Bool)

(assert (=> b!112704 (= e!63357 (and tp!61183 tp!61185))))

(assert (= (and b!112625 ((_ is ElementMatch!459) (regOne!1431 r!15532))) b!112703))

(assert (= (and b!112625 ((_ is Concat!843) (regOne!1431 r!15532))) b!112704))

(assert (= (and b!112625 ((_ is Star!459) (regOne!1431 r!15532))) b!112705))

(assert (= (and b!112625 ((_ is Union!459) (regOne!1431 r!15532))) b!112706))

(declare-fun b!112710 () Bool)

(declare-fun e!63358 () Bool)

(declare-fun tp!61191 () Bool)

(declare-fun tp!61189 () Bool)

(assert (=> b!112710 (= e!63358 (and tp!61191 tp!61189))))

(declare-fun b!112709 () Bool)

(declare-fun tp!61192 () Bool)

(assert (=> b!112709 (= e!63358 tp!61192)))

(declare-fun b!112707 () Bool)

(assert (=> b!112707 (= e!63358 tp_is_empty!973)))

(assert (=> b!112625 (= tp!61160 e!63358)))

(declare-fun b!112708 () Bool)

(declare-fun tp!61188 () Bool)

(declare-fun tp!61190 () Bool)

(assert (=> b!112708 (= e!63358 (and tp!61188 tp!61190))))

(assert (= (and b!112625 ((_ is ElementMatch!459) (regTwo!1431 r!15532))) b!112707))

(assert (= (and b!112625 ((_ is Concat!843) (regTwo!1431 r!15532))) b!112708))

(assert (= (and b!112625 ((_ is Star!459) (regTwo!1431 r!15532))) b!112709))

(assert (= (and b!112625 ((_ is Union!459) (regTwo!1431 r!15532))) b!112710))

(declare-fun b!112715 () Bool)

(declare-fun e!63361 () Bool)

(declare-fun tp!61195 () Bool)

(assert (=> b!112715 (= e!63361 (and tp_is_empty!973 tp!61195))))

(assert (=> b!112611 (= tp!61171 e!63361)))

(assert (= (and b!112611 ((_ is Cons!1828) (t!22311 testedSuffix!285))) b!112715))

(declare-fun b!112719 () Bool)

(declare-fun e!63362 () Bool)

(declare-fun tp!61199 () Bool)

(declare-fun tp!61197 () Bool)

(assert (=> b!112719 (= e!63362 (and tp!61199 tp!61197))))

(declare-fun b!112718 () Bool)

(declare-fun tp!61200 () Bool)

(assert (=> b!112718 (= e!63362 tp!61200)))

(declare-fun b!112716 () Bool)

(assert (=> b!112716 (= e!63362 tp_is_empty!973)))

(assert (=> b!112622 (= tp!61163 e!63362)))

(declare-fun b!112717 () Bool)

(declare-fun tp!61196 () Bool)

(declare-fun tp!61198 () Bool)

(assert (=> b!112717 (= e!63362 (and tp!61196 tp!61198))))

(assert (= (and b!112622 ((_ is ElementMatch!459) (reg!788 r!15532))) b!112716))

(assert (= (and b!112622 ((_ is Concat!843) (reg!788 r!15532))) b!112717))

(assert (= (and b!112622 ((_ is Star!459) (reg!788 r!15532))) b!112718))

(assert (= (and b!112622 ((_ is Union!459) (reg!788 r!15532))) b!112719))

(declare-fun b!112720 () Bool)

(declare-fun e!63363 () Bool)

(declare-fun tp!61201 () Bool)

(assert (=> b!112720 (= e!63363 (and tp_is_empty!973 tp!61201))))

(assert (=> b!112617 (= tp!61159 e!63363)))

(assert (= (and b!112617 ((_ is Cons!1828) (t!22311 totalInput!1363))) b!112720))

(declare-fun b!112725 () Bool)

(declare-fun tp!61209 () Bool)

(declare-fun tp!61208 () Bool)

(declare-fun tp!61210 () Bool)

(declare-fun e!63366 () Bool)

(assert (=> b!112725 (= e!63366 (and tp!61208 tp_is_empty!973 tp!61209 tp!61210))))

(assert (=> b!112612 (= tp!61170 e!63366)))

(assert (= (and b!112612 ((_ is Cons!1829) mapDefault!1282)) b!112725))

(declare-fun mapIsEmpty!1285 () Bool)

(declare-fun mapRes!1285 () Bool)

(assert (=> mapIsEmpty!1285 mapRes!1285))

(declare-fun e!63371 () Bool)

(declare-fun b!112732 () Bool)

(declare-fun tp!61225 () Bool)

(declare-fun tp!61228 () Bool)

(declare-fun tp!61230 () Bool)

(assert (=> b!112732 (= e!63371 (and tp!61228 tp_is_empty!973 tp!61225 tp!61230))))

(declare-fun condMapEmpty!1285 () Bool)

(declare-fun mapDefault!1285 () List!1835)

(assert (=> mapNonEmpty!1282 (= condMapEmpty!1285 (= mapRest!1282 ((as const (Array (_ BitVec 32) List!1835)) mapDefault!1285)))))

(declare-fun e!63372 () Bool)

(assert (=> mapNonEmpty!1282 (= tp!61168 (and e!63372 mapRes!1285))))

(declare-fun mapNonEmpty!1285 () Bool)

(declare-fun tp!61227 () Bool)

(assert (=> mapNonEmpty!1285 (= mapRes!1285 (and tp!61227 e!63371))))

(declare-fun mapKey!1285 () (_ BitVec 32))

(declare-fun mapRest!1285 () (Array (_ BitVec 32) List!1835))

(declare-fun mapValue!1285 () List!1835)

(assert (=> mapNonEmpty!1285 (= mapRest!1282 (store mapRest!1285 mapKey!1285 mapValue!1285))))

(declare-fun b!112733 () Bool)

(declare-fun tp!61229 () Bool)

(declare-fun tp!61226 () Bool)

(declare-fun tp!61231 () Bool)

(assert (=> b!112733 (= e!63372 (and tp!61229 tp_is_empty!973 tp!61226 tp!61231))))

(assert (= (and mapNonEmpty!1282 condMapEmpty!1285) mapIsEmpty!1285))

(assert (= (and mapNonEmpty!1282 (not condMapEmpty!1285)) mapNonEmpty!1285))

(assert (= (and mapNonEmpty!1285 ((_ is Cons!1829) mapValue!1285)) b!112732))

(assert (= (and mapNonEmpty!1282 ((_ is Cons!1829) mapDefault!1285)) b!112733))

(declare-fun m!102464 () Bool)

(assert (=> mapNonEmpty!1285 m!102464))

(declare-fun b!112734 () Bool)

(declare-fun e!63373 () Bool)

(declare-fun tp!61233 () Bool)

(declare-fun tp!61234 () Bool)

(declare-fun tp!61232 () Bool)

(assert (=> b!112734 (= e!63373 (and tp!61232 tp_is_empty!973 tp!61233 tp!61234))))

(assert (=> mapNonEmpty!1282 (= tp!61172 e!63373)))

(assert (= (and mapNonEmpty!1282 ((_ is Cons!1829) mapValue!1282)) b!112734))

(declare-fun b!112735 () Bool)

(declare-fun e!63374 () Bool)

(declare-fun tp!61235 () Bool)

(assert (=> b!112735 (= e!63374 (and tp_is_empty!973 tp!61235))))

(assert (=> b!112619 (= tp!61165 e!63374)))

(assert (= (and b!112619 ((_ is Cons!1828) (t!22311 testedP!367))) b!112735))

(declare-fun b!112736 () Bool)

(declare-fun tp!61236 () Bool)

(declare-fun tp!61238 () Bool)

(declare-fun tp!61237 () Bool)

(declare-fun e!63375 () Bool)

(assert (=> b!112736 (= e!63375 (and tp!61236 tp_is_empty!973 tp!61237 tp!61238))))

(assert (=> b!112615 (= tp!61158 e!63375)))

(assert (= (and b!112615 ((_ is Cons!1829) (zeroValue!581 (v!13181 (underlying!849 (v!13182 (underlying!850 (cache!773 cache!470)))))))) b!112736))

(declare-fun tp!61241 () Bool)

(declare-fun e!63376 () Bool)

(declare-fun b!112737 () Bool)

(declare-fun tp!61240 () Bool)

(declare-fun tp!61239 () Bool)

(assert (=> b!112737 (= e!63376 (and tp!61239 tp_is_empty!973 tp!61240 tp!61241))))

(assert (=> b!112615 (= tp!61166 e!63376)))

(assert (= (and b!112615 ((_ is Cons!1829) (minValue!581 (v!13181 (underlying!849 (v!13182 (underlying!850 (cache!773 cache!470)))))))) b!112737))

(declare-fun b!112741 () Bool)

(declare-fun e!63377 () Bool)

(declare-fun tp!61245 () Bool)

(declare-fun tp!61243 () Bool)

(assert (=> b!112741 (= e!63377 (and tp!61245 tp!61243))))

(declare-fun b!112740 () Bool)

(declare-fun tp!61246 () Bool)

(assert (=> b!112740 (= e!63377 tp!61246)))

(declare-fun b!112738 () Bool)

(assert (=> b!112738 (= e!63377 tp_is_empty!973)))

(assert (=> b!112616 (= tp!61162 e!63377)))

(declare-fun b!112739 () Bool)

(declare-fun tp!61242 () Bool)

(declare-fun tp!61244 () Bool)

(assert (=> b!112739 (= e!63377 (and tp!61242 tp!61244))))

(assert (= (and b!112616 ((_ is ElementMatch!459) (regOne!1430 r!15532))) b!112738))

(assert (= (and b!112616 ((_ is Concat!843) (regOne!1430 r!15532))) b!112739))

(assert (= (and b!112616 ((_ is Star!459) (regOne!1430 r!15532))) b!112740))

(assert (= (and b!112616 ((_ is Union!459) (regOne!1430 r!15532))) b!112741))

(declare-fun b!112745 () Bool)

(declare-fun e!63378 () Bool)

(declare-fun tp!61250 () Bool)

(declare-fun tp!61248 () Bool)

(assert (=> b!112745 (= e!63378 (and tp!61250 tp!61248))))

(declare-fun b!112744 () Bool)

(declare-fun tp!61251 () Bool)

(assert (=> b!112744 (= e!63378 tp!61251)))

(declare-fun b!112742 () Bool)

(assert (=> b!112742 (= e!63378 tp_is_empty!973)))

(assert (=> b!112616 (= tp!61164 e!63378)))

(declare-fun b!112743 () Bool)

(declare-fun tp!61247 () Bool)

(declare-fun tp!61249 () Bool)

(assert (=> b!112743 (= e!63378 (and tp!61247 tp!61249))))

(assert (= (and b!112616 ((_ is ElementMatch!459) (regTwo!1430 r!15532))) b!112742))

(assert (= (and b!112616 ((_ is Concat!843) (regTwo!1430 r!15532))) b!112743))

(assert (= (and b!112616 ((_ is Star!459) (regTwo!1430 r!15532))) b!112744))

(assert (= (and b!112616 ((_ is Union!459) (regTwo!1430 r!15532))) b!112745))

(check-sat (not b_next!3531) (not b!112734) (not bm!4845) (not b!112706) (not b!112637) (not b!112739) (not b!112704) (not b!112744) b_and!5659 (not d!28121) (not b!112652) (not b!112708) (not b!112709) (not b!112705) (not b!112650) (not b!112743) (not b!112736) (not b!112719) (not b!112732) b_and!5661 (not b!112654) (not d!28119) (not mapNonEmpty!1285) (not b_next!3529) tp_is_empty!973 (not b!112745) (not b!112741) (not d!28113) (not b!112718) (not b!112737) (not b!112636) (not b!112662) (not b!112660) (not b!112725) (not b!112735) (not b!112653) (not b!112683) (not b!112649) (not b!112720) (not b!112733) (not b!112648) (not b!112717) (not b!112692) (not b!112715) (not bm!4844) (not b!112740) (not b!112710))
(check-sat b_and!5661 b_and!5659 (not b_next!3531) (not b_next!3529))

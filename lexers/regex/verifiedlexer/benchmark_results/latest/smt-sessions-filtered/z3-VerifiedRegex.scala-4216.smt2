; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!228332 () Bool)

(assert start!228332)

(declare-fun b!2314729 () Bool)

(declare-fun b_free!70157 () Bool)

(declare-fun b_next!70861 () Bool)

(assert (=> b!2314729 (= b_free!70157 (not b_next!70861))))

(declare-fun tp!735255 () Bool)

(declare-fun b_and!185057 () Bool)

(assert (=> b!2314729 (= tp!735255 b_and!185057)))

(declare-fun b!2314715 () Bool)

(declare-fun b_free!70159 () Bool)

(declare-fun b_next!70863 () Bool)

(assert (=> b!2314715 (= b_free!70159 (not b_next!70863))))

(declare-fun tp!735251 () Bool)

(declare-fun b_and!185059 () Bool)

(assert (=> b!2314715 (= tp!735251 b_and!185059)))

(declare-fun b!2314732 () Bool)

(declare-fun b_free!70161 () Bool)

(declare-fun b_next!70865 () Bool)

(assert (=> b!2314732 (= b_free!70161 (not b_next!70865))))

(declare-fun tp!735252 () Bool)

(declare-fun b_and!185061 () Bool)

(assert (=> b!2314732 (= tp!735252 b_and!185061)))

(declare-fun b!2314727 () Bool)

(declare-fun b_free!70163 () Bool)

(declare-fun b_next!70867 () Bool)

(assert (=> b!2314727 (= b_free!70163 (not b_next!70867))))

(declare-fun tp!735249 () Bool)

(declare-fun b_and!185063 () Bool)

(assert (=> b!2314727 (= tp!735249 b_and!185063)))

(declare-fun mapIsEmpty!15010 () Bool)

(declare-fun mapRes!15011 () Bool)

(assert (=> mapIsEmpty!15010 mapRes!15011))

(declare-fun b!2314709 () Bool)

(declare-fun e!1484031 () Bool)

(declare-fun e!1484021 () Bool)

(assert (=> b!2314709 (= e!1484031 e!1484021)))

(declare-fun b!2314710 () Bool)

(declare-fun e!1484023 () Bool)

(declare-fun tp!735245 () Bool)

(assert (=> b!2314710 (= e!1484023 (and tp!735245 mapRes!15011))))

(declare-fun condMapEmpty!15011 () Bool)

(declare-datatypes ((C!13732 0))(
  ( (C!13733 (val!7922 Int)) )
))
(declare-datatypes ((Regex!6787 0))(
  ( (ElementMatch!6787 (c!366862 C!13732)) (Concat!11375 (regOne!14086 Regex!6787) (regTwo!14086 Regex!6787)) (EmptyExpr!6787) (Star!6787 (reg!7116 Regex!6787)) (EmptyLang!6787) (Union!6787 (regOne!14087 Regex!6787) (regTwo!14087 Regex!6787)) )
))
(declare-datatypes ((List!27704 0))(
  ( (Nil!27606) (Cons!27606 (h!33007 Regex!6787) (t!207304 List!27704)) )
))
(declare-datatypes ((Context!4218 0))(
  ( (Context!4219 (exprs!2609 List!27704)) )
))
(declare-datatypes ((tuple2!27566 0))(
  ( (tuple2!27567 (_1!16321 Context!4218) (_2!16321 C!13732)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!27568 0))(
  ( (tuple2!27569 (_1!16322 tuple2!27566) (_2!16322 (InoxSet Context!4218))) )
))
(declare-datatypes ((List!27705 0))(
  ( (Nil!27607) (Cons!27607 (h!33008 tuple2!27568) (t!207305 List!27705)) )
))
(declare-datatypes ((array!11248 0))(
  ( (array!11249 (arr!4991 (Array (_ BitVec 32) (_ BitVec 64))) (size!21821 (_ BitVec 32))) )
))
(declare-datatypes ((array!11250 0))(
  ( (array!11251 (arr!4992 (Array (_ BitVec 32) List!27705)) (size!21822 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6418 0))(
  ( (LongMapFixedSize!6419 (defaultEntry!3574 Int) (mask!7974 (_ BitVec 32)) (extraKeys!3457 (_ BitVec 32)) (zeroValue!3467 List!27705) (minValue!3467 List!27705) (_size!6465 (_ BitVec 32)) (_keys!3506 array!11248) (_values!3489 array!11250) (_vacant!3270 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!12653 0))(
  ( (Cell!12654 (v!30658 LongMapFixedSize!6418)) )
))
(declare-datatypes ((Hashable!3119 0))(
  ( (HashableExt!3118 (__x!18329 Int)) )
))
(declare-datatypes ((MutLongMap!3209 0))(
  ( (LongMap!3209 (underlying!6623 Cell!12653)) (MutLongMapExt!3208 (__x!18330 Int)) )
))
(declare-datatypes ((Cell!12655 0))(
  ( (Cell!12656 (v!30659 MutLongMap!3209)) )
))
(declare-datatypes ((MutableMap!3119 0))(
  ( (MutableMapExt!3118 (__x!18331 Int)) (HashMap!3119 (underlying!6624 Cell!12655) (hashF!5042 Hashable!3119) (_size!6466 (_ BitVec 32)) (defaultValue!3281 Int)) )
))
(declare-datatypes ((CacheUp!2076 0))(
  ( (CacheUp!2077 (cache!3498 MutableMap!3119)) )
))
(declare-fun cacheUp!965 () CacheUp!2076)

(declare-fun mapDefault!15010 () List!27705)

(assert (=> b!2314710 (= condMapEmpty!15011 (= (arr!4992 (_values!3489 (v!30658 (underlying!6623 (v!30659 (underlying!6624 (cache!3498 cacheUp!965))))))) ((as const (Array (_ BitVec 32) List!27705)) mapDefault!15010)))))

(declare-fun e!1484009 () Bool)

(declare-fun setRes!20863 () Bool)

(declare-fun tp!735258 () Bool)

(declare-fun setNonEmpty!20863 () Bool)

(declare-fun setElem!20863 () Context!4218)

(declare-fun inv!37382 (Context!4218) Bool)

(assert (=> setNonEmpty!20863 (= setRes!20863 (and tp!735258 (inv!37382 setElem!20863) e!1484009))))

(declare-fun z!3800 () (InoxSet Context!4218))

(declare-fun setRest!20863 () (InoxSet Context!4218))

(assert (=> setNonEmpty!20863 (= z!3800 ((_ map or) (store ((as const (Array Context!4218 Bool)) false) setElem!20863 true) setRest!20863))))

(declare-fun setIsEmpty!20863 () Bool)

(assert (=> setIsEmpty!20863 setRes!20863))

(declare-fun b!2314712 () Bool)

(declare-fun e!1484014 () Bool)

(declare-fun e!1484029 () Bool)

(assert (=> b!2314712 (= e!1484014 e!1484029)))

(declare-fun b!2314713 () Bool)

(declare-fun e!1484013 () Bool)

(assert (=> b!2314713 (= e!1484021 e!1484013)))

(declare-fun b!2314714 () Bool)

(declare-fun res!989065 () Bool)

(declare-fun e!1484024 () Bool)

(assert (=> b!2314714 (=> (not res!989065) (not e!1484024))))

(declare-fun lostCauseZipper!408 ((InoxSet Context!4218)) Bool)

(assert (=> b!2314714 (= res!989065 (not (lostCauseZipper!408 z!3800)))))

(declare-fun mapNonEmpty!15010 () Bool)

(declare-fun mapRes!15010 () Bool)

(declare-fun tp!735257 () Bool)

(declare-fun tp!735256 () Bool)

(assert (=> mapNonEmpty!15010 (= mapRes!15010 (and tp!735257 tp!735256))))

(declare-datatypes ((tuple3!4136 0))(
  ( (tuple3!4137 (_1!16323 Regex!6787) (_2!16323 Context!4218) (_3!2538 C!13732)) )
))
(declare-datatypes ((tuple2!27570 0))(
  ( (tuple2!27571 (_1!16324 tuple3!4136) (_2!16324 (InoxSet Context!4218))) )
))
(declare-datatypes ((List!27706 0))(
  ( (Nil!27608) (Cons!27608 (h!33009 tuple2!27570) (t!207306 List!27706)) )
))
(declare-fun mapValue!15011 () List!27706)

(declare-fun mapRest!15010 () (Array (_ BitVec 32) List!27706))

(declare-datatypes ((array!11252 0))(
  ( (array!11253 (arr!4993 (Array (_ BitVec 32) List!27706)) (size!21823 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6420 0))(
  ( (LongMapFixedSize!6421 (defaultEntry!3575 Int) (mask!7975 (_ BitVec 32)) (extraKeys!3458 (_ BitVec 32)) (zeroValue!3468 List!27706) (minValue!3468 List!27706) (_size!6467 (_ BitVec 32)) (_keys!3507 array!11248) (_values!3490 array!11252) (_vacant!3271 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!12657 0))(
  ( (Cell!12658 (v!30660 LongMapFixedSize!6420)) )
))
(declare-datatypes ((Hashable!3120 0))(
  ( (HashableExt!3119 (__x!18332 Int)) )
))
(declare-datatypes ((MutLongMap!3210 0))(
  ( (LongMap!3210 (underlying!6625 Cell!12657)) (MutLongMapExt!3209 (__x!18333 Int)) )
))
(declare-datatypes ((Cell!12659 0))(
  ( (Cell!12660 (v!30661 MutLongMap!3210)) )
))
(declare-datatypes ((MutableMap!3120 0))(
  ( (MutableMapExt!3119 (__x!18334 Int)) (HashMap!3120 (underlying!6626 Cell!12659) (hashF!5043 Hashable!3120) (_size!6468 (_ BitVec 32)) (defaultValue!3282 Int)) )
))
(declare-datatypes ((CacheDown!2178 0))(
  ( (CacheDown!2179 (cache!3499 MutableMap!3120)) )
))
(declare-fun cacheDown!1084 () CacheDown!2178)

(declare-fun mapKey!15011 () (_ BitVec 32))

(assert (=> mapNonEmpty!15010 (= (arr!4993 (_values!3490 (v!30660 (underlying!6625 (v!30661 (underlying!6626 (cache!3499 cacheDown!1084))))))) (store mapRest!15010 mapKey!15011 mapValue!15011))))

(declare-fun e!1484019 () Bool)

(declare-fun e!1484016 () Bool)

(assert (=> b!2314715 (= e!1484019 (and e!1484016 tp!735251))))

(declare-fun b!2314716 () Bool)

(declare-fun e!1484026 () Int)

(assert (=> b!2314716 (= e!1484026 1)))

(declare-fun b!2314717 () Bool)

(declare-fun e!1484022 () Bool)

(declare-fun tp!735248 () Bool)

(assert (=> b!2314717 (= e!1484022 (and tp!735248 mapRes!15010))))

(declare-fun condMapEmpty!15010 () Bool)

(declare-fun mapDefault!15011 () List!27706)

(assert (=> b!2314717 (= condMapEmpty!15010 (= (arr!4993 (_values!3490 (v!30660 (underlying!6625 (v!30661 (underlying!6626 (cache!3499 cacheDown!1084))))))) ((as const (Array (_ BitVec 32) List!27706)) mapDefault!15011)))))

(declare-fun b!2314718 () Bool)

(assert (=> b!2314718 (= e!1484026 0)))

(declare-fun b!2314719 () Bool)

(declare-fun e!1484032 () Bool)

(assert (=> b!2314719 (= e!1484032 e!1484024)))

(declare-fun res!989064 () Bool)

(assert (=> b!2314719 (=> (not res!989064) (not e!1484024))))

(declare-fun totalInputSize!275 () Int)

(declare-fun from!1022 () Int)

(declare-fun lt!858121 () Int)

(assert (=> b!2314719 (= res!989064 (and (<= from!1022 lt!858121) (= totalInputSize!275 lt!858121) (not (= from!1022 totalInputSize!275))))))

(declare-datatypes ((List!27707 0))(
  ( (Nil!27609) (Cons!27609 (h!33010 C!13732) (t!207307 List!27707)) )
))
(declare-datatypes ((IArray!18035 0))(
  ( (IArray!18036 (innerList!9075 List!27707)) )
))
(declare-datatypes ((Conc!9015 0))(
  ( (Node!9015 (left!20919 Conc!9015) (right!21249 Conc!9015) (csize!18260 Int) (cheight!9226 Int)) (Leaf!13232 (xs!11957 IArray!18035) (csize!18261 Int)) (Empty!9015) )
))
(declare-datatypes ((BalanceConc!17762 0))(
  ( (BalanceConc!17763 (c!366863 Conc!9015)) )
))
(declare-fun totalInput!830 () BalanceConc!17762)

(declare-fun size!21824 (BalanceConc!17762) Int)

(assert (=> b!2314719 (= lt!858121 (size!21824 totalInput!830))))

(declare-fun b!2314720 () Bool)

(declare-fun e!1484010 () Bool)

(declare-fun e!1484018 () Bool)

(assert (=> b!2314720 (= e!1484010 e!1484018)))

(declare-fun b!2314721 () Bool)

(declare-fun e!1484017 () Int)

(assert (=> b!2314721 (= e!1484017 e!1484026)))

(declare-fun c!366861 () Bool)

(declare-datatypes ((tuple3!4138 0))(
  ( (tuple3!4139 (_1!16325 (InoxSet Context!4218)) (_2!16325 CacheUp!2076) (_3!2539 CacheDown!2178)) )
))
(declare-fun lt!858123 () tuple3!4138)

(declare-fun nullableZipper!596 ((InoxSet Context!4218)) Bool)

(assert (=> b!2314721 (= c!366861 (nullableZipper!596 (_1!16325 lt!858123)))))

(declare-fun res!989059 () Bool)

(assert (=> start!228332 (=> (not res!989059) (not e!1484032))))

(assert (=> start!228332 (= res!989059 (>= from!1022 0))))

(assert (=> start!228332 e!1484032))

(declare-fun e!1484012 () Bool)

(declare-fun inv!37383 (BalanceConc!17762) Bool)

(assert (=> start!228332 (and (inv!37383 totalInput!830) e!1484012)))

(assert (=> start!228332 true))

(declare-fun inv!37384 (CacheDown!2178) Bool)

(assert (=> start!228332 (and (inv!37384 cacheDown!1084) e!1484010)))

(declare-fun e!1484011 () Bool)

(declare-fun inv!37385 (CacheUp!2076) Bool)

(assert (=> start!228332 (and (inv!37385 cacheUp!965) e!1484011)))

(declare-fun condSetEmpty!20863 () Bool)

(assert (=> start!228332 (= condSetEmpty!20863 (= z!3800 ((as const (Array Context!4218 Bool)) false)))))

(assert (=> start!228332 setRes!20863))

(declare-fun b!2314711 () Bool)

(declare-datatypes ((tuple3!4140 0))(
  ( (tuple3!4141 (_1!16326 Int) (_2!16326 CacheUp!2076) (_3!2540 CacheDown!2178)) )
))
(declare-fun lt!858124 () tuple3!4140)

(assert (=> b!2314711 (= e!1484017 (+ 1 (_1!16326 lt!858124)))))

(declare-fun b!2314722 () Bool)

(declare-fun e!1484025 () Bool)

(declare-fun valid!2404 (CacheDown!2178) Bool)

(assert (=> b!2314722 (= e!1484025 (valid!2404 (_3!2540 lt!858124)))))

(declare-fun b!2314723 () Bool)

(declare-fun e!1484027 () Bool)

(assert (=> b!2314723 (= e!1484027 (valid!2404 (_3!2540 lt!858124)))))

(declare-fun b!2314724 () Bool)

(declare-fun res!989063 () Bool)

(assert (=> b!2314724 (=> (not res!989063) (not e!1484025))))

(declare-fun valid!2405 (CacheUp!2076) Bool)

(assert (=> b!2314724 (= res!989063 (valid!2405 (_2!16326 lt!858124)))))

(declare-fun b!2314725 () Bool)

(declare-fun e!1484028 () Bool)

(assert (=> b!2314725 (= e!1484029 e!1484028)))

(declare-fun b!2314726 () Bool)

(declare-fun lt!858125 () MutLongMap!3209)

(get-info :version)

(assert (=> b!2314726 (= e!1484016 (and e!1484014 ((_ is LongMap!3209) lt!858125)))))

(assert (=> b!2314726 (= lt!858125 (v!30659 (underlying!6624 (cache!3498 cacheUp!965))))))

(declare-fun mapIsEmpty!15011 () Bool)

(assert (=> mapIsEmpty!15011 mapRes!15010))

(declare-fun mapNonEmpty!15011 () Bool)

(declare-fun tp!735244 () Bool)

(declare-fun tp!735246 () Bool)

(assert (=> mapNonEmpty!15011 (= mapRes!15011 (and tp!735244 tp!735246))))

(declare-fun mapRest!15011 () (Array (_ BitVec 32) List!27705))

(declare-fun mapKey!15010 () (_ BitVec 32))

(declare-fun mapValue!15010 () List!27705)

(assert (=> mapNonEmpty!15011 (= (arr!4992 (_values!3489 (v!30658 (underlying!6623 (v!30659 (underlying!6624 (cache!3498 cacheUp!965))))))) (store mapRest!15011 mapKey!15010 mapValue!15010))))

(declare-fun tp!735247 () Bool)

(declare-fun tp!735253 () Bool)

(declare-fun array_inv!3586 (array!11248) Bool)

(declare-fun array_inv!3587 (array!11252) Bool)

(assert (=> b!2314727 (= e!1484013 (and tp!735249 tp!735253 tp!735247 (array_inv!3586 (_keys!3507 (v!30660 (underlying!6625 (v!30661 (underlying!6626 (cache!3499 cacheDown!1084))))))) (array_inv!3587 (_values!3490 (v!30660 (underlying!6625 (v!30661 (underlying!6626 (cache!3499 cacheDown!1084))))))) e!1484022))))

(declare-fun b!2314728 () Bool)

(declare-fun tp!735254 () Bool)

(assert (=> b!2314728 (= e!1484009 tp!735254)))

(declare-fun tp!735243 () Bool)

(declare-fun tp!735242 () Bool)

(declare-fun array_inv!3588 (array!11250) Bool)

(assert (=> b!2314729 (= e!1484028 (and tp!735255 tp!735242 tp!735243 (array_inv!3586 (_keys!3506 (v!30658 (underlying!6623 (v!30659 (underlying!6624 (cache!3498 cacheUp!965))))))) (array_inv!3588 (_values!3489 (v!30658 (underlying!6623 (v!30659 (underlying!6624 (cache!3498 cacheUp!965))))))) e!1484023))))

(declare-fun b!2314730 () Bool)

(declare-fun tp!735250 () Bool)

(declare-fun inv!37386 (Conc!9015) Bool)

(assert (=> b!2314730 (= e!1484012 (and (inv!37386 (c!366863 totalInput!830)) tp!735250))))

(declare-fun b!2314731 () Bool)

(assert (=> b!2314731 (= e!1484011 e!1484019)))

(declare-fun e!1484015 () Bool)

(assert (=> b!2314732 (= e!1484018 (and e!1484015 tp!735252))))

(declare-fun b!2314733 () Bool)

(declare-fun lt!858122 () MutLongMap!3210)

(assert (=> b!2314733 (= e!1484015 (and e!1484031 ((_ is LongMap!3210) lt!858122)))))

(assert (=> b!2314733 (= lt!858122 (v!30661 (underlying!6626 (cache!3499 cacheDown!1084))))))

(declare-fun b!2314734 () Bool)

(assert (=> b!2314734 (= e!1484024 (not e!1484027))))

(declare-fun res!989061 () Bool)

(assert (=> b!2314734 (=> (not res!989061) (not e!1484027))))

(declare-fun findLongestMatchInnerZipperFastV2!16 ((InoxSet Context!4218) Int BalanceConc!17762 Int) Int)

(assert (=> b!2314734 (= res!989061 (= e!1484017 (findLongestMatchInnerZipperFastV2!16 z!3800 from!1022 totalInput!830 totalInputSize!275)))))

(declare-fun c!366860 () Bool)

(assert (=> b!2314734 (= c!366860 (> (_1!16326 lt!858124) 0))))

(assert (=> b!2314734 e!1484025))

(declare-fun res!989060 () Bool)

(assert (=> b!2314734 (=> (not res!989060) (not e!1484025))))

(assert (=> b!2314734 (= res!989060 (= (_1!16326 lt!858124) (findLongestMatchInnerZipperFastV2!16 (_1!16325 lt!858123) (+ 1 from!1022) totalInput!830 totalInputSize!275)))))

(declare-fun findLongestMatchInnerZipperFastV2MemOnlyDeriv!11 ((InoxSet Context!4218) Int BalanceConc!17762 Int CacheUp!2076 CacheDown!2178) tuple3!4140)

(assert (=> b!2314734 (= lt!858124 (findLongestMatchInnerZipperFastV2MemOnlyDeriv!11 (_1!16325 lt!858123) (+ 1 from!1022) totalInput!830 totalInputSize!275 (_2!16325 lt!858123) (_3!2539 lt!858123)))))

(declare-fun derivationStepZipperMem!70 ((InoxSet Context!4218) C!13732 CacheUp!2076 CacheDown!2178) tuple3!4138)

(declare-fun apply!6685 (BalanceConc!17762 Int) C!13732)

(assert (=> b!2314734 (= lt!858123 (derivationStepZipperMem!70 z!3800 (apply!6685 totalInput!830 from!1022) cacheUp!965 cacheDown!1084))))

(declare-fun b!2314735 () Bool)

(declare-fun res!989062 () Bool)

(assert (=> b!2314735 (=> (not res!989062) (not e!1484027))))

(assert (=> b!2314735 (= res!989062 (valid!2405 (_2!16326 lt!858124)))))

(assert (= (and start!228332 res!989059) b!2314719))

(assert (= (and b!2314719 res!989064) b!2314714))

(assert (= (and b!2314714 res!989065) b!2314734))

(assert (= (and b!2314734 res!989060) b!2314724))

(assert (= (and b!2314724 res!989063) b!2314722))

(assert (= (and b!2314734 c!366860) b!2314711))

(assert (= (and b!2314734 (not c!366860)) b!2314721))

(assert (= (and b!2314721 c!366861) b!2314716))

(assert (= (and b!2314721 (not c!366861)) b!2314718))

(assert (= (and b!2314734 res!989061) b!2314735))

(assert (= (and b!2314735 res!989062) b!2314723))

(assert (= start!228332 b!2314730))

(assert (= (and b!2314717 condMapEmpty!15010) mapIsEmpty!15011))

(assert (= (and b!2314717 (not condMapEmpty!15010)) mapNonEmpty!15010))

(assert (= b!2314727 b!2314717))

(assert (= b!2314713 b!2314727))

(assert (= b!2314709 b!2314713))

(assert (= (and b!2314733 ((_ is LongMap!3210) (v!30661 (underlying!6626 (cache!3499 cacheDown!1084))))) b!2314709))

(assert (= b!2314732 b!2314733))

(assert (= (and b!2314720 ((_ is HashMap!3120) (cache!3499 cacheDown!1084))) b!2314732))

(assert (= start!228332 b!2314720))

(assert (= (and b!2314710 condMapEmpty!15011) mapIsEmpty!15010))

(assert (= (and b!2314710 (not condMapEmpty!15011)) mapNonEmpty!15011))

(assert (= b!2314729 b!2314710))

(assert (= b!2314725 b!2314729))

(assert (= b!2314712 b!2314725))

(assert (= (and b!2314726 ((_ is LongMap!3209) (v!30659 (underlying!6624 (cache!3498 cacheUp!965))))) b!2314712))

(assert (= b!2314715 b!2314726))

(assert (= (and b!2314731 ((_ is HashMap!3119) (cache!3498 cacheUp!965))) b!2314715))

(assert (= start!228332 b!2314731))

(assert (= (and start!228332 condSetEmpty!20863) setIsEmpty!20863))

(assert (= (and start!228332 (not condSetEmpty!20863)) setNonEmpty!20863))

(assert (= setNonEmpty!20863 b!2314728))

(declare-fun m!2741523 () Bool)

(assert (=> b!2314735 m!2741523))

(declare-fun m!2741525 () Bool)

(assert (=> b!2314734 m!2741525))

(assert (=> b!2314734 m!2741525))

(declare-fun m!2741527 () Bool)

(assert (=> b!2314734 m!2741527))

(declare-fun m!2741529 () Bool)

(assert (=> b!2314734 m!2741529))

(declare-fun m!2741531 () Bool)

(assert (=> b!2314734 m!2741531))

(declare-fun m!2741533 () Bool)

(assert (=> b!2314734 m!2741533))

(assert (=> b!2314724 m!2741523))

(declare-fun m!2741535 () Bool)

(assert (=> setNonEmpty!20863 m!2741535))

(declare-fun m!2741537 () Bool)

(assert (=> b!2314722 m!2741537))

(declare-fun m!2741539 () Bool)

(assert (=> mapNonEmpty!15011 m!2741539))

(declare-fun m!2741541 () Bool)

(assert (=> b!2314719 m!2741541))

(declare-fun m!2741543 () Bool)

(assert (=> b!2314730 m!2741543))

(declare-fun m!2741545 () Bool)

(assert (=> mapNonEmpty!15010 m!2741545))

(declare-fun m!2741547 () Bool)

(assert (=> start!228332 m!2741547))

(declare-fun m!2741549 () Bool)

(assert (=> start!228332 m!2741549))

(declare-fun m!2741551 () Bool)

(assert (=> start!228332 m!2741551))

(declare-fun m!2741553 () Bool)

(assert (=> b!2314727 m!2741553))

(declare-fun m!2741555 () Bool)

(assert (=> b!2314727 m!2741555))

(declare-fun m!2741557 () Bool)

(assert (=> b!2314714 m!2741557))

(declare-fun m!2741559 () Bool)

(assert (=> b!2314721 m!2741559))

(assert (=> b!2314723 m!2741537))

(declare-fun m!2741561 () Bool)

(assert (=> b!2314729 m!2741561))

(declare-fun m!2741563 () Bool)

(assert (=> b!2314729 m!2741563))

(check-sat (not mapNonEmpty!15011) (not setNonEmpty!20863) (not b!2314710) (not mapNonEmpty!15010) (not b_next!70861) b_and!185057 (not b!2314730) (not b!2314727) (not b_next!70865) (not b!2314723) (not b!2314722) (not b!2314717) (not b!2314735) b_and!185061 (not b!2314734) (not b_next!70863) (not b!2314724) b_and!185059 (not b!2314721) (not b!2314728) (not b!2314714) (not b!2314719) (not b_next!70867) (not start!228332) b_and!185063 (not b!2314729))
(check-sat (not b_next!70861) b_and!185061 (not b_next!70863) b_and!185059 b_and!185057 (not b_next!70865) (not b_next!70867) b_and!185063)
(get-model)

(declare-fun d!684483 () Bool)

(declare-fun lambda!86345 () Int)

(declare-fun exists!882 ((InoxSet Context!4218) Int) Bool)

(assert (=> d!684483 (= (nullableZipper!596 (_1!16325 lt!858123)) (exists!882 (_1!16325 lt!858123) lambda!86345))))

(declare-fun bs!458762 () Bool)

(assert (= bs!458762 d!684483))

(declare-fun m!2741565 () Bool)

(assert (=> bs!458762 m!2741565))

(assert (=> b!2314721 d!684483))

(declare-fun d!684485 () Bool)

(assert (=> d!684485 (= (array_inv!3586 (_keys!3506 (v!30658 (underlying!6623 (v!30659 (underlying!6624 (cache!3498 cacheUp!965))))))) (bvsge (size!21821 (_keys!3506 (v!30658 (underlying!6623 (v!30659 (underlying!6624 (cache!3498 cacheUp!965))))))) #b00000000000000000000000000000000))))

(assert (=> b!2314729 d!684485))

(declare-fun d!684487 () Bool)

(assert (=> d!684487 (= (array_inv!3588 (_values!3489 (v!30658 (underlying!6623 (v!30659 (underlying!6624 (cache!3498 cacheUp!965))))))) (bvsge (size!21822 (_values!3489 (v!30658 (underlying!6623 (v!30659 (underlying!6624 (cache!3498 cacheUp!965))))))) #b00000000000000000000000000000000))))

(assert (=> b!2314729 d!684487))

(declare-fun d!684489 () Bool)

(declare-fun lambda!86348 () Int)

(declare-fun forall!5516 (List!27704 Int) Bool)

(assert (=> d!684489 (= (inv!37382 setElem!20863) (forall!5516 (exprs!2609 setElem!20863) lambda!86348))))

(declare-fun bs!458763 () Bool)

(assert (= bs!458763 d!684489))

(declare-fun m!2741567 () Bool)

(assert (=> bs!458763 m!2741567))

(assert (=> setNonEmpty!20863 d!684489))

(declare-fun d!684491 () Bool)

(declare-fun lt!858128 () Int)

(declare-fun size!21825 (List!27707) Int)

(declare-fun list!10921 (BalanceConc!17762) List!27707)

(assert (=> d!684491 (= lt!858128 (size!21825 (list!10921 totalInput!830)))))

(declare-fun size!21826 (Conc!9015) Int)

(assert (=> d!684491 (= lt!858128 (size!21826 (c!366863 totalInput!830)))))

(assert (=> d!684491 (= (size!21824 totalInput!830) lt!858128)))

(declare-fun bs!458764 () Bool)

(assert (= bs!458764 d!684491))

(declare-fun m!2741569 () Bool)

(assert (=> bs!458764 m!2741569))

(assert (=> bs!458764 m!2741569))

(declare-fun m!2741571 () Bool)

(assert (=> bs!458764 m!2741571))

(declare-fun m!2741573 () Bool)

(assert (=> bs!458764 m!2741573))

(assert (=> b!2314719 d!684491))

(declare-fun d!684493 () Bool)

(assert (=> d!684493 (= (array_inv!3586 (_keys!3507 (v!30660 (underlying!6625 (v!30661 (underlying!6626 (cache!3499 cacheDown!1084))))))) (bvsge (size!21821 (_keys!3507 (v!30660 (underlying!6625 (v!30661 (underlying!6626 (cache!3499 cacheDown!1084))))))) #b00000000000000000000000000000000))))

(assert (=> b!2314727 d!684493))

(declare-fun d!684495 () Bool)

(assert (=> d!684495 (= (array_inv!3587 (_values!3490 (v!30660 (underlying!6625 (v!30661 (underlying!6626 (cache!3499 cacheDown!1084))))))) (bvsge (size!21823 (_values!3490 (v!30660 (underlying!6625 (v!30661 (underlying!6626 (cache!3499 cacheDown!1084))))))) #b00000000000000000000000000000000))))

(assert (=> b!2314727 d!684495))

(declare-fun d!684497 () Bool)

(declare-fun validCacheMapUp!317 (MutableMap!3119) Bool)

(assert (=> d!684497 (= (valid!2405 (_2!16326 lt!858124)) (validCacheMapUp!317 (cache!3498 (_2!16326 lt!858124))))))

(declare-fun bs!458765 () Bool)

(assert (= bs!458765 d!684497))

(declare-fun m!2741575 () Bool)

(assert (=> bs!458765 m!2741575))

(assert (=> b!2314735 d!684497))

(declare-fun d!684499 () Bool)

(declare-fun e!1484037 () Bool)

(assert (=> d!684499 e!1484037))

(declare-fun res!989073 () Bool)

(assert (=> d!684499 (=> (not res!989073) (not e!1484037))))

(declare-fun lt!858131 () tuple3!4140)

(assert (=> d!684499 (= res!989073 (= (_1!16326 lt!858131) (findLongestMatchInnerZipperFastV2!16 (_1!16325 lt!858123) (+ 1 from!1022) totalInput!830 totalInputSize!275)))))

(declare-fun choose!13533 ((InoxSet Context!4218) Int BalanceConc!17762 Int CacheUp!2076 CacheDown!2178) tuple3!4140)

(assert (=> d!684499 (= lt!858131 (choose!13533 (_1!16325 lt!858123) (+ 1 from!1022) totalInput!830 totalInputSize!275 (_2!16325 lt!858123) (_3!2539 lt!858123)))))

(declare-fun e!1484038 () Bool)

(assert (=> d!684499 e!1484038))

(declare-fun res!989074 () Bool)

(assert (=> d!684499 (=> (not res!989074) (not e!1484038))))

(assert (=> d!684499 (= res!989074 (>= (+ 1 from!1022) 0))))

(assert (=> d!684499 (= (findLongestMatchInnerZipperFastV2MemOnlyDeriv!11 (_1!16325 lt!858123) (+ 1 from!1022) totalInput!830 totalInputSize!275 (_2!16325 lt!858123) (_3!2539 lt!858123)) lt!858131)))

(declare-fun b!2314742 () Bool)

(assert (=> b!2314742 (= e!1484038 (<= (+ 1 from!1022) (size!21824 totalInput!830)))))

(declare-fun b!2314743 () Bool)

(declare-fun res!989072 () Bool)

(assert (=> b!2314743 (=> (not res!989072) (not e!1484037))))

(assert (=> b!2314743 (= res!989072 (valid!2405 (_2!16326 lt!858131)))))

(declare-fun b!2314744 () Bool)

(assert (=> b!2314744 (= e!1484037 (valid!2404 (_3!2540 lt!858131)))))

(assert (= (and d!684499 res!989074) b!2314742))

(assert (= (and d!684499 res!989073) b!2314743))

(assert (= (and b!2314743 res!989072) b!2314744))

(assert (=> d!684499 m!2741533))

(declare-fun m!2741577 () Bool)

(assert (=> d!684499 m!2741577))

(assert (=> b!2314742 m!2741541))

(declare-fun m!2741579 () Bool)

(assert (=> b!2314743 m!2741579))

(declare-fun m!2741581 () Bool)

(assert (=> b!2314744 m!2741581))

(assert (=> b!2314734 d!684499))

(declare-fun b!2314761 () Bool)

(declare-fun e!1484052 () Int)

(declare-fun lt!858138 () Int)

(assert (=> b!2314761 (= e!1484052 (+ 1 lt!858138))))

(declare-fun b!2314762 () Bool)

(declare-fun e!1484050 () Int)

(assert (=> b!2314762 (= e!1484050 1)))

(declare-fun b!2314763 () Bool)

(declare-fun e!1484049 () Bool)

(assert (=> b!2314763 (= e!1484049 (lostCauseZipper!408 z!3800))))

(declare-fun d!684501 () Bool)

(declare-fun lt!858140 () Int)

(assert (=> d!684501 (and (>= lt!858140 0) (<= lt!858140 (- totalInputSize!275 from!1022)))))

(declare-fun e!1484051 () Int)

(assert (=> d!684501 (= lt!858140 e!1484051)))

(declare-fun c!366874 () Bool)

(assert (=> d!684501 (= c!366874 e!1484049)))

(declare-fun res!989079 () Bool)

(assert (=> d!684501 (=> res!989079 e!1484049)))

(assert (=> d!684501 (= res!989079 (= from!1022 totalInputSize!275))))

(declare-fun e!1484053 () Bool)

(assert (=> d!684501 e!1484053))

(declare-fun res!989080 () Bool)

(assert (=> d!684501 (=> (not res!989080) (not e!1484053))))

(assert (=> d!684501 (= res!989080 (>= from!1022 0))))

(assert (=> d!684501 (= (findLongestMatchInnerZipperFastV2!16 z!3800 from!1022 totalInput!830 totalInputSize!275) lt!858140)))

(declare-fun b!2314764 () Bool)

(declare-fun c!366873 () Bool)

(declare-fun lt!858139 () (InoxSet Context!4218))

(assert (=> b!2314764 (= c!366873 (nullableZipper!596 lt!858139))))

(assert (=> b!2314764 (= e!1484052 e!1484050)))

(declare-fun b!2314765 () Bool)

(assert (=> b!2314765 (= e!1484050 0)))

(declare-fun b!2314766 () Bool)

(assert (=> b!2314766 (= e!1484051 0)))

(declare-fun b!2314767 () Bool)

(assert (=> b!2314767 (= e!1484051 e!1484052)))

(declare-fun derivationStepZipper!336 ((InoxSet Context!4218) C!13732) (InoxSet Context!4218))

(assert (=> b!2314767 (= lt!858139 (derivationStepZipper!336 z!3800 (apply!6685 totalInput!830 from!1022)))))

(assert (=> b!2314767 (= lt!858138 (findLongestMatchInnerZipperFastV2!16 lt!858139 (+ from!1022 1) totalInput!830 totalInputSize!275))))

(declare-fun c!366872 () Bool)

(assert (=> b!2314767 (= c!366872 (> lt!858138 0))))

(declare-fun b!2314768 () Bool)

(assert (=> b!2314768 (= e!1484053 (<= from!1022 (size!21824 totalInput!830)))))

(assert (= (and d!684501 res!989080) b!2314768))

(assert (= (and d!684501 (not res!989079)) b!2314763))

(assert (= (and d!684501 c!366874) b!2314766))

(assert (= (and d!684501 (not c!366874)) b!2314767))

(assert (= (and b!2314767 c!366872) b!2314761))

(assert (= (and b!2314767 (not c!366872)) b!2314764))

(assert (= (and b!2314764 c!366873) b!2314762))

(assert (= (and b!2314764 (not c!366873)) b!2314765))

(assert (=> b!2314763 m!2741557))

(declare-fun m!2741583 () Bool)

(assert (=> b!2314764 m!2741583))

(assert (=> b!2314767 m!2741525))

(assert (=> b!2314767 m!2741525))

(declare-fun m!2741585 () Bool)

(assert (=> b!2314767 m!2741585))

(declare-fun m!2741587 () Bool)

(assert (=> b!2314767 m!2741587))

(assert (=> b!2314768 m!2741541))

(assert (=> b!2314734 d!684501))

(declare-fun d!684503 () Bool)

(declare-fun lt!858143 () C!13732)

(declare-fun apply!6686 (List!27707 Int) C!13732)

(assert (=> d!684503 (= lt!858143 (apply!6686 (list!10921 totalInput!830) from!1022))))

(declare-fun apply!6687 (Conc!9015 Int) C!13732)

(assert (=> d!684503 (= lt!858143 (apply!6687 (c!366863 totalInput!830) from!1022))))

(declare-fun e!1484056 () Bool)

(assert (=> d!684503 e!1484056))

(declare-fun res!989083 () Bool)

(assert (=> d!684503 (=> (not res!989083) (not e!1484056))))

(assert (=> d!684503 (= res!989083 (<= 0 from!1022))))

(assert (=> d!684503 (= (apply!6685 totalInput!830 from!1022) lt!858143)))

(declare-fun b!2314771 () Bool)

(assert (=> b!2314771 (= e!1484056 (< from!1022 (size!21824 totalInput!830)))))

(assert (= (and d!684503 res!989083) b!2314771))

(assert (=> d!684503 m!2741569))

(assert (=> d!684503 m!2741569))

(declare-fun m!2741589 () Bool)

(assert (=> d!684503 m!2741589))

(declare-fun m!2741591 () Bool)

(assert (=> d!684503 m!2741591))

(assert (=> b!2314771 m!2741541))

(assert (=> b!2314734 d!684503))

(declare-fun b!2314772 () Bool)

(declare-fun e!1484060 () Int)

(declare-fun lt!858144 () Int)

(assert (=> b!2314772 (= e!1484060 (+ 1 lt!858144))))

(declare-fun b!2314773 () Bool)

(declare-fun e!1484058 () Int)

(assert (=> b!2314773 (= e!1484058 1)))

(declare-fun b!2314774 () Bool)

(declare-fun e!1484057 () Bool)

(assert (=> b!2314774 (= e!1484057 (lostCauseZipper!408 (_1!16325 lt!858123)))))

(declare-fun d!684505 () Bool)

(declare-fun lt!858146 () Int)

(assert (=> d!684505 (and (>= lt!858146 0) (<= lt!858146 (- totalInputSize!275 (+ 1 from!1022))))))

(declare-fun e!1484059 () Int)

(assert (=> d!684505 (= lt!858146 e!1484059)))

(declare-fun c!366877 () Bool)

(assert (=> d!684505 (= c!366877 e!1484057)))

(declare-fun res!989084 () Bool)

(assert (=> d!684505 (=> res!989084 e!1484057)))

(assert (=> d!684505 (= res!989084 (= (+ 1 from!1022) totalInputSize!275))))

(declare-fun e!1484061 () Bool)

(assert (=> d!684505 e!1484061))

(declare-fun res!989085 () Bool)

(assert (=> d!684505 (=> (not res!989085) (not e!1484061))))

(assert (=> d!684505 (= res!989085 (>= (+ 1 from!1022) 0))))

(assert (=> d!684505 (= (findLongestMatchInnerZipperFastV2!16 (_1!16325 lt!858123) (+ 1 from!1022) totalInput!830 totalInputSize!275) lt!858146)))

(declare-fun b!2314775 () Bool)

(declare-fun c!366876 () Bool)

(declare-fun lt!858145 () (InoxSet Context!4218))

(assert (=> b!2314775 (= c!366876 (nullableZipper!596 lt!858145))))

(assert (=> b!2314775 (= e!1484060 e!1484058)))

(declare-fun b!2314776 () Bool)

(assert (=> b!2314776 (= e!1484058 0)))

(declare-fun b!2314777 () Bool)

(assert (=> b!2314777 (= e!1484059 0)))

(declare-fun b!2314778 () Bool)

(assert (=> b!2314778 (= e!1484059 e!1484060)))

(assert (=> b!2314778 (= lt!858145 (derivationStepZipper!336 (_1!16325 lt!858123) (apply!6685 totalInput!830 (+ 1 from!1022))))))

(assert (=> b!2314778 (= lt!858144 (findLongestMatchInnerZipperFastV2!16 lt!858145 (+ 1 from!1022 1) totalInput!830 totalInputSize!275))))

(declare-fun c!366875 () Bool)

(assert (=> b!2314778 (= c!366875 (> lt!858144 0))))

(declare-fun b!2314779 () Bool)

(assert (=> b!2314779 (= e!1484061 (<= (+ 1 from!1022) (size!21824 totalInput!830)))))

(assert (= (and d!684505 res!989085) b!2314779))

(assert (= (and d!684505 (not res!989084)) b!2314774))

(assert (= (and d!684505 c!366877) b!2314777))

(assert (= (and d!684505 (not c!366877)) b!2314778))

(assert (= (and b!2314778 c!366875) b!2314772))

(assert (= (and b!2314778 (not c!366875)) b!2314775))

(assert (= (and b!2314775 c!366876) b!2314773))

(assert (= (and b!2314775 (not c!366876)) b!2314776))

(declare-fun m!2741593 () Bool)

(assert (=> b!2314774 m!2741593))

(declare-fun m!2741595 () Bool)

(assert (=> b!2314775 m!2741595))

(declare-fun m!2741597 () Bool)

(assert (=> b!2314778 m!2741597))

(assert (=> b!2314778 m!2741597))

(declare-fun m!2741599 () Bool)

(assert (=> b!2314778 m!2741599))

(declare-fun m!2741601 () Bool)

(assert (=> b!2314778 m!2741601))

(assert (=> b!2314779 m!2741541))

(assert (=> b!2314734 d!684505))

(declare-fun d!684507 () Bool)

(declare-fun e!1484064 () Bool)

(assert (=> d!684507 e!1484064))

(declare-fun res!989090 () Bool)

(assert (=> d!684507 (=> (not res!989090) (not e!1484064))))

(declare-fun lt!858149 () tuple3!4138)

(assert (=> d!684507 (= res!989090 (= (_1!16325 lt!858149) (derivationStepZipper!336 z!3800 (apply!6685 totalInput!830 from!1022))))))

(declare-fun choose!13534 ((InoxSet Context!4218) C!13732 CacheUp!2076 CacheDown!2178) tuple3!4138)

(assert (=> d!684507 (= lt!858149 (choose!13534 z!3800 (apply!6685 totalInput!830 from!1022) cacheUp!965 cacheDown!1084))))

(assert (=> d!684507 (= (derivationStepZipperMem!70 z!3800 (apply!6685 totalInput!830 from!1022) cacheUp!965 cacheDown!1084) lt!858149)))

(declare-fun b!2314784 () Bool)

(declare-fun res!989091 () Bool)

(assert (=> b!2314784 (=> (not res!989091) (not e!1484064))))

(assert (=> b!2314784 (= res!989091 (valid!2405 (_2!16325 lt!858149)))))

(declare-fun b!2314785 () Bool)

(assert (=> b!2314785 (= e!1484064 (valid!2404 (_3!2539 lt!858149)))))

(assert (= (and d!684507 res!989090) b!2314784))

(assert (= (and b!2314784 res!989091) b!2314785))

(assert (=> d!684507 m!2741525))

(assert (=> d!684507 m!2741585))

(assert (=> d!684507 m!2741525))

(declare-fun m!2741603 () Bool)

(assert (=> d!684507 m!2741603))

(declare-fun m!2741605 () Bool)

(assert (=> b!2314784 m!2741605))

(declare-fun m!2741607 () Bool)

(assert (=> b!2314785 m!2741607))

(assert (=> b!2314734 d!684507))

(assert (=> b!2314724 d!684497))

(declare-fun d!684509 () Bool)

(declare-fun isBalanced!2711 (Conc!9015) Bool)

(assert (=> d!684509 (= (inv!37383 totalInput!830) (isBalanced!2711 (c!366863 totalInput!830)))))

(declare-fun bs!458766 () Bool)

(assert (= bs!458766 d!684509))

(declare-fun m!2741609 () Bool)

(assert (=> bs!458766 m!2741609))

(assert (=> start!228332 d!684509))

(declare-fun d!684511 () Bool)

(declare-fun res!989094 () Bool)

(declare-fun e!1484067 () Bool)

(assert (=> d!684511 (=> (not res!989094) (not e!1484067))))

(assert (=> d!684511 (= res!989094 ((_ is HashMap!3120) (cache!3499 cacheDown!1084)))))

(assert (=> d!684511 (= (inv!37384 cacheDown!1084) e!1484067)))

(declare-fun b!2314788 () Bool)

(declare-fun validCacheMapDown!348 (MutableMap!3120) Bool)

(assert (=> b!2314788 (= e!1484067 (validCacheMapDown!348 (cache!3499 cacheDown!1084)))))

(assert (= (and d!684511 res!989094) b!2314788))

(declare-fun m!2741611 () Bool)

(assert (=> b!2314788 m!2741611))

(assert (=> start!228332 d!684511))

(declare-fun d!684513 () Bool)

(declare-fun res!989097 () Bool)

(declare-fun e!1484070 () Bool)

(assert (=> d!684513 (=> (not res!989097) (not e!1484070))))

(assert (=> d!684513 (= res!989097 ((_ is HashMap!3119) (cache!3498 cacheUp!965)))))

(assert (=> d!684513 (= (inv!37385 cacheUp!965) e!1484070)))

(declare-fun b!2314791 () Bool)

(assert (=> b!2314791 (= e!1484070 (validCacheMapUp!317 (cache!3498 cacheUp!965)))))

(assert (= (and d!684513 res!989097) b!2314791))

(declare-fun m!2741613 () Bool)

(assert (=> b!2314791 m!2741613))

(assert (=> start!228332 d!684513))

(declare-fun bs!458767 () Bool)

(declare-fun d!684515 () Bool)

(assert (= bs!458767 (and d!684515 d!684483)))

(declare-fun lambda!86361 () Int)

(assert (=> bs!458767 (not (= lambda!86361 lambda!86345))))

(declare-fun bs!458768 () Bool)

(declare-fun b!2314796 () Bool)

(assert (= bs!458768 (and b!2314796 d!684483)))

(declare-fun lambda!86362 () Int)

(assert (=> bs!458768 (not (= lambda!86362 lambda!86345))))

(declare-fun bs!458769 () Bool)

(assert (= bs!458769 (and b!2314796 d!684515)))

(assert (=> bs!458769 (not (= lambda!86362 lambda!86361))))

(declare-fun bs!458770 () Bool)

(declare-fun b!2314797 () Bool)

(assert (= bs!458770 (and b!2314797 d!684483)))

(declare-fun lambda!86363 () Int)

(assert (=> bs!458770 (not (= lambda!86363 lambda!86345))))

(declare-fun bs!458771 () Bool)

(assert (= bs!458771 (and b!2314797 d!684515)))

(assert (=> bs!458771 (not (= lambda!86363 lambda!86361))))

(declare-fun bs!458772 () Bool)

(assert (= bs!458772 (and b!2314797 b!2314796)))

(assert (=> bs!458772 (= lambda!86363 lambda!86362)))

(declare-fun bm!137430 () Bool)

(declare-datatypes ((List!27708 0))(
  ( (Nil!27610) (Cons!27610 (h!33011 Context!4218) (t!207308 List!27708)) )
))
(declare-fun call!137435 () List!27708)

(declare-fun toList!1407 ((InoxSet Context!4218)) List!27708)

(assert (=> bm!137430 (= call!137435 (toList!1407 z!3800))))

(declare-fun call!137436 () Bool)

(declare-fun c!366888 () Bool)

(declare-fun bm!137431 () Bool)

(declare-fun lt!858171 () List!27708)

(declare-fun lt!858169 () List!27708)

(declare-fun exists!883 (List!27708 Int) Bool)

(assert (=> bm!137431 (= call!137436 (exists!883 (ite c!366888 lt!858169 lt!858171) (ite c!366888 lambda!86362 lambda!86363)))))

(declare-datatypes ((Unit!40460 0))(
  ( (Unit!40461) )
))
(declare-fun e!1484077 () Unit!40460)

(declare-fun Unit!40462 () Unit!40460)

(assert (=> b!2314796 (= e!1484077 Unit!40462)))

(assert (=> b!2314796 (= lt!858169 call!137435)))

(declare-fun lt!858167 () Unit!40460)

(declare-fun lemmaNotForallThenExists!69 (List!27708 Int) Unit!40460)

(assert (=> b!2314796 (= lt!858167 (lemmaNotForallThenExists!69 lt!858169 lambda!86361))))

(assert (=> b!2314796 call!137436))

(declare-fun lt!858170 () Unit!40460)

(assert (=> b!2314796 (= lt!858170 lt!858167)))

(declare-fun Unit!40463 () Unit!40460)

(assert (=> b!2314797 (= e!1484077 Unit!40463)))

(assert (=> b!2314797 (= lt!858171 call!137435)))

(declare-fun lt!858166 () Unit!40460)

(declare-fun lemmaForallThenNotExists!69 (List!27708 Int) Unit!40460)

(assert (=> b!2314797 (= lt!858166 (lemmaForallThenNotExists!69 lt!858171 lambda!86361))))

(assert (=> b!2314797 (not call!137436)))

(declare-fun lt!858172 () Unit!40460)

(assert (=> b!2314797 (= lt!858172 lt!858166)))

(declare-fun lt!858168 () Bool)

(declare-datatypes ((Option!5417 0))(
  ( (None!5416) (Some!5416 (v!30662 List!27707)) )
))
(declare-fun isEmpty!15752 (Option!5417) Bool)

(declare-fun getLanguageWitness!168 ((InoxSet Context!4218)) Option!5417)

(assert (=> d!684515 (= lt!858168 (isEmpty!15752 (getLanguageWitness!168 z!3800)))))

(declare-fun forall!5517 ((InoxSet Context!4218) Int) Bool)

(assert (=> d!684515 (= lt!858168 (forall!5517 z!3800 lambda!86361))))

(declare-fun lt!858173 () Unit!40460)

(assert (=> d!684515 (= lt!858173 e!1484077)))

(assert (=> d!684515 (= c!366888 (not (forall!5517 z!3800 lambda!86361)))))

(assert (=> d!684515 (= (lostCauseZipper!408 z!3800) lt!858168)))

(assert (= (and d!684515 c!366888) b!2314796))

(assert (= (and d!684515 (not c!366888)) b!2314797))

(assert (= (or b!2314796 b!2314797) bm!137430))

(assert (= (or b!2314796 b!2314797) bm!137431))

(declare-fun m!2741615 () Bool)

(assert (=> bm!137430 m!2741615))

(declare-fun m!2741617 () Bool)

(assert (=> d!684515 m!2741617))

(assert (=> d!684515 m!2741617))

(declare-fun m!2741619 () Bool)

(assert (=> d!684515 m!2741619))

(declare-fun m!2741621 () Bool)

(assert (=> d!684515 m!2741621))

(assert (=> d!684515 m!2741621))

(declare-fun m!2741623 () Bool)

(assert (=> b!2314796 m!2741623))

(declare-fun m!2741625 () Bool)

(assert (=> b!2314797 m!2741625))

(declare-fun m!2741627 () Bool)

(assert (=> bm!137431 m!2741627))

(assert (=> b!2314714 d!684515))

(declare-fun d!684517 () Bool)

(assert (=> d!684517 (= (valid!2404 (_3!2540 lt!858124)) (validCacheMapDown!348 (cache!3499 (_3!2540 lt!858124))))))

(declare-fun bs!458773 () Bool)

(assert (= bs!458773 d!684517))

(declare-fun m!2741629 () Bool)

(assert (=> bs!458773 m!2741629))

(assert (=> b!2314723 d!684517))

(assert (=> b!2314722 d!684517))

(declare-fun d!684519 () Bool)

(declare-fun c!366891 () Bool)

(assert (=> d!684519 (= c!366891 ((_ is Node!9015) (c!366863 totalInput!830)))))

(declare-fun e!1484082 () Bool)

(assert (=> d!684519 (= (inv!37386 (c!366863 totalInput!830)) e!1484082)))

(declare-fun b!2314804 () Bool)

(declare-fun inv!37387 (Conc!9015) Bool)

(assert (=> b!2314804 (= e!1484082 (inv!37387 (c!366863 totalInput!830)))))

(declare-fun b!2314805 () Bool)

(declare-fun e!1484083 () Bool)

(assert (=> b!2314805 (= e!1484082 e!1484083)))

(declare-fun res!989100 () Bool)

(assert (=> b!2314805 (= res!989100 (not ((_ is Leaf!13232) (c!366863 totalInput!830))))))

(assert (=> b!2314805 (=> res!989100 e!1484083)))

(declare-fun b!2314806 () Bool)

(declare-fun inv!37388 (Conc!9015) Bool)

(assert (=> b!2314806 (= e!1484083 (inv!37388 (c!366863 totalInput!830)))))

(assert (= (and d!684519 c!366891) b!2314804))

(assert (= (and d!684519 (not c!366891)) b!2314805))

(assert (= (and b!2314805 (not res!989100)) b!2314806))

(declare-fun m!2741631 () Bool)

(assert (=> b!2314804 m!2741631))

(declare-fun m!2741633 () Bool)

(assert (=> b!2314806 m!2741633))

(assert (=> b!2314730 d!684519))

(declare-fun b!2314815 () Bool)

(declare-fun e!1484090 () Bool)

(declare-fun tp_is_empty!10765 () Bool)

(declare-fun tp!735268 () Bool)

(declare-fun e!1484092 () Bool)

(declare-fun setRes!20866 () Bool)

(assert (=> b!2314815 (= e!1484090 (and (inv!37382 (_1!16321 (_1!16322 (h!33008 (zeroValue!3467 (v!30658 (underlying!6623 (v!30659 (underlying!6624 (cache!3498 cacheUp!965)))))))))) e!1484092 tp_is_empty!10765 setRes!20866 tp!735268))))

(declare-fun condSetEmpty!20866 () Bool)

(assert (=> b!2314815 (= condSetEmpty!20866 (= (_2!16322 (h!33008 (zeroValue!3467 (v!30658 (underlying!6623 (v!30659 (underlying!6624 (cache!3498 cacheUp!965)))))))) ((as const (Array Context!4218 Bool)) false)))))

(declare-fun b!2314816 () Bool)

(declare-fun tp!735270 () Bool)

(assert (=> b!2314816 (= e!1484092 tp!735270)))

(declare-fun b!2314817 () Bool)

(declare-fun e!1484091 () Bool)

(declare-fun tp!735269 () Bool)

(assert (=> b!2314817 (= e!1484091 tp!735269)))

(assert (=> b!2314729 (= tp!735242 e!1484090)))

(declare-fun setIsEmpty!20866 () Bool)

(assert (=> setIsEmpty!20866 setRes!20866))

(declare-fun setNonEmpty!20866 () Bool)

(declare-fun setElem!20866 () Context!4218)

(declare-fun tp!735267 () Bool)

(assert (=> setNonEmpty!20866 (= setRes!20866 (and tp!735267 (inv!37382 setElem!20866) e!1484091))))

(declare-fun setRest!20866 () (InoxSet Context!4218))

(assert (=> setNonEmpty!20866 (= (_2!16322 (h!33008 (zeroValue!3467 (v!30658 (underlying!6623 (v!30659 (underlying!6624 (cache!3498 cacheUp!965)))))))) ((_ map or) (store ((as const (Array Context!4218 Bool)) false) setElem!20866 true) setRest!20866))))

(assert (= b!2314815 b!2314816))

(assert (= (and b!2314815 condSetEmpty!20866) setIsEmpty!20866))

(assert (= (and b!2314815 (not condSetEmpty!20866)) setNonEmpty!20866))

(assert (= setNonEmpty!20866 b!2314817))

(assert (= (and b!2314729 ((_ is Cons!27607) (zeroValue!3467 (v!30658 (underlying!6623 (v!30659 (underlying!6624 (cache!3498 cacheUp!965)))))))) b!2314815))

(declare-fun m!2741635 () Bool)

(assert (=> b!2314815 m!2741635))

(declare-fun m!2741637 () Bool)

(assert (=> setNonEmpty!20866 m!2741637))

(declare-fun tp!735272 () Bool)

(declare-fun e!1484093 () Bool)

(declare-fun b!2314818 () Bool)

(declare-fun setRes!20867 () Bool)

(declare-fun e!1484095 () Bool)

(assert (=> b!2314818 (= e!1484093 (and (inv!37382 (_1!16321 (_1!16322 (h!33008 (minValue!3467 (v!30658 (underlying!6623 (v!30659 (underlying!6624 (cache!3498 cacheUp!965)))))))))) e!1484095 tp_is_empty!10765 setRes!20867 tp!735272))))

(declare-fun condSetEmpty!20867 () Bool)

(assert (=> b!2314818 (= condSetEmpty!20867 (= (_2!16322 (h!33008 (minValue!3467 (v!30658 (underlying!6623 (v!30659 (underlying!6624 (cache!3498 cacheUp!965)))))))) ((as const (Array Context!4218 Bool)) false)))))

(declare-fun b!2314819 () Bool)

(declare-fun tp!735274 () Bool)

(assert (=> b!2314819 (= e!1484095 tp!735274)))

(declare-fun b!2314820 () Bool)

(declare-fun e!1484094 () Bool)

(declare-fun tp!735273 () Bool)

(assert (=> b!2314820 (= e!1484094 tp!735273)))

(assert (=> b!2314729 (= tp!735243 e!1484093)))

(declare-fun setIsEmpty!20867 () Bool)

(assert (=> setIsEmpty!20867 setRes!20867))

(declare-fun tp!735271 () Bool)

(declare-fun setElem!20867 () Context!4218)

(declare-fun setNonEmpty!20867 () Bool)

(assert (=> setNonEmpty!20867 (= setRes!20867 (and tp!735271 (inv!37382 setElem!20867) e!1484094))))

(declare-fun setRest!20867 () (InoxSet Context!4218))

(assert (=> setNonEmpty!20867 (= (_2!16322 (h!33008 (minValue!3467 (v!30658 (underlying!6623 (v!30659 (underlying!6624 (cache!3498 cacheUp!965)))))))) ((_ map or) (store ((as const (Array Context!4218 Bool)) false) setElem!20867 true) setRest!20867))))

(assert (= b!2314818 b!2314819))

(assert (= (and b!2314818 condSetEmpty!20867) setIsEmpty!20867))

(assert (= (and b!2314818 (not condSetEmpty!20867)) setNonEmpty!20867))

(assert (= setNonEmpty!20867 b!2314820))

(assert (= (and b!2314729 ((_ is Cons!27607) (minValue!3467 (v!30658 (underlying!6623 (v!30659 (underlying!6624 (cache!3498 cacheUp!965)))))))) b!2314818))

(declare-fun m!2741639 () Bool)

(assert (=> b!2314818 m!2741639))

(declare-fun m!2741641 () Bool)

(assert (=> setNonEmpty!20867 m!2741641))

(declare-fun condSetEmpty!20870 () Bool)

(assert (=> setNonEmpty!20863 (= condSetEmpty!20870 (= setRest!20863 ((as const (Array Context!4218 Bool)) false)))))

(declare-fun setRes!20870 () Bool)

(assert (=> setNonEmpty!20863 (= tp!735258 setRes!20870)))

(declare-fun setIsEmpty!20870 () Bool)

(assert (=> setIsEmpty!20870 setRes!20870))

(declare-fun e!1484098 () Bool)

(declare-fun setElem!20870 () Context!4218)

(declare-fun setNonEmpty!20870 () Bool)

(declare-fun tp!735280 () Bool)

(assert (=> setNonEmpty!20870 (= setRes!20870 (and tp!735280 (inv!37382 setElem!20870) e!1484098))))

(declare-fun setRest!20870 () (InoxSet Context!4218))

(assert (=> setNonEmpty!20870 (= setRest!20863 ((_ map or) (store ((as const (Array Context!4218 Bool)) false) setElem!20870 true) setRest!20870))))

(declare-fun b!2314825 () Bool)

(declare-fun tp!735279 () Bool)

(assert (=> b!2314825 (= e!1484098 tp!735279)))

(assert (= (and setNonEmpty!20863 condSetEmpty!20870) setIsEmpty!20870))

(assert (= (and setNonEmpty!20863 (not condSetEmpty!20870)) setNonEmpty!20870))

(assert (= setNonEmpty!20870 b!2314825))

(declare-fun m!2741643 () Bool)

(assert (=> setNonEmpty!20870 m!2741643))

(declare-fun setRes!20876 () Bool)

(declare-fun tp!735312 () Bool)

(declare-fun setNonEmpty!20875 () Bool)

(declare-fun setElem!20876 () Context!4218)

(declare-fun e!1484115 () Bool)

(assert (=> setNonEmpty!20875 (= setRes!20876 (and tp!735312 (inv!37382 setElem!20876) e!1484115))))

(declare-fun mapValue!15014 () List!27706)

(declare-fun setRest!20875 () (InoxSet Context!4218))

(assert (=> setNonEmpty!20875 (= (_2!16324 (h!33009 mapValue!15014)) ((_ map or) (store ((as const (Array Context!4218 Bool)) false) setElem!20876 true) setRest!20875))))

(declare-fun b!2314840 () Bool)

(declare-fun e!1484114 () Bool)

(declare-fun tp!735305 () Bool)

(assert (=> b!2314840 (= e!1484114 tp!735305)))

(declare-fun setNonEmpty!20876 () Bool)

(declare-fun setElem!20875 () Context!4218)

(declare-fun tp!735308 () Bool)

(declare-fun setRes!20875 () Bool)

(declare-fun e!1484113 () Bool)

(assert (=> setNonEmpty!20876 (= setRes!20875 (and tp!735308 (inv!37382 setElem!20875) e!1484113))))

(declare-fun mapDefault!15014 () List!27706)

(declare-fun setRest!20876 () (InoxSet Context!4218))

(assert (=> setNonEmpty!20876 (= (_2!16324 (h!33009 mapDefault!15014)) ((_ map or) (store ((as const (Array Context!4218 Bool)) false) setElem!20875 true) setRest!20876))))

(declare-fun b!2314841 () Bool)

(declare-fun tp!735313 () Bool)

(assert (=> b!2314841 (= e!1484113 tp!735313)))

(declare-fun condMapEmpty!15014 () Bool)

(assert (=> mapNonEmpty!15010 (= condMapEmpty!15014 (= mapRest!15010 ((as const (Array (_ BitVec 32) List!27706)) mapDefault!15014)))))

(declare-fun e!1484112 () Bool)

(declare-fun mapRes!15014 () Bool)

(assert (=> mapNonEmpty!15010 (= tp!735257 (and e!1484112 mapRes!15014))))

(declare-fun setIsEmpty!20875 () Bool)

(assert (=> setIsEmpty!20875 setRes!20875))

(declare-fun tp!735306 () Bool)

(declare-fun tp!735303 () Bool)

(declare-fun e!1484111 () Bool)

(declare-fun b!2314842 () Bool)

(assert (=> b!2314842 (= e!1484112 (and tp!735306 (inv!37382 (_2!16323 (_1!16324 (h!33009 mapDefault!15014)))) e!1484111 tp_is_empty!10765 setRes!20875 tp!735303))))

(declare-fun condSetEmpty!20875 () Bool)

(assert (=> b!2314842 (= condSetEmpty!20875 (= (_2!16324 (h!33009 mapDefault!15014)) ((as const (Array Context!4218 Bool)) false)))))

(declare-fun mapNonEmpty!15014 () Bool)

(declare-fun tp!735307 () Bool)

(declare-fun e!1484116 () Bool)

(assert (=> mapNonEmpty!15014 (= mapRes!15014 (and tp!735307 e!1484116))))

(declare-fun mapRest!15014 () (Array (_ BitVec 32) List!27706))

(declare-fun mapKey!15014 () (_ BitVec 32))

(assert (=> mapNonEmpty!15014 (= mapRest!15010 (store mapRest!15014 mapKey!15014 mapValue!15014))))

(declare-fun mapIsEmpty!15014 () Bool)

(assert (=> mapIsEmpty!15014 mapRes!15014))

(declare-fun setIsEmpty!20876 () Bool)

(assert (=> setIsEmpty!20876 setRes!20876))

(declare-fun b!2314843 () Bool)

(declare-fun tp!735304 () Bool)

(assert (=> b!2314843 (= e!1484111 tp!735304)))

(declare-fun tp!735310 () Bool)

(declare-fun tp!735311 () Bool)

(declare-fun b!2314844 () Bool)

(assert (=> b!2314844 (= e!1484116 (and tp!735311 (inv!37382 (_2!16323 (_1!16324 (h!33009 mapValue!15014)))) e!1484114 tp_is_empty!10765 setRes!20876 tp!735310))))

(declare-fun condSetEmpty!20876 () Bool)

(assert (=> b!2314844 (= condSetEmpty!20876 (= (_2!16324 (h!33009 mapValue!15014)) ((as const (Array Context!4218 Bool)) false)))))

(declare-fun b!2314845 () Bool)

(declare-fun tp!735309 () Bool)

(assert (=> b!2314845 (= e!1484115 tp!735309)))

(assert (= (and mapNonEmpty!15010 condMapEmpty!15014) mapIsEmpty!15014))

(assert (= (and mapNonEmpty!15010 (not condMapEmpty!15014)) mapNonEmpty!15014))

(assert (= b!2314844 b!2314840))

(assert (= (and b!2314844 condSetEmpty!20876) setIsEmpty!20876))

(assert (= (and b!2314844 (not condSetEmpty!20876)) setNonEmpty!20875))

(assert (= setNonEmpty!20875 b!2314845))

(assert (= (and mapNonEmpty!15014 ((_ is Cons!27608) mapValue!15014)) b!2314844))

(assert (= b!2314842 b!2314843))

(assert (= (and b!2314842 condSetEmpty!20875) setIsEmpty!20875))

(assert (= (and b!2314842 (not condSetEmpty!20875)) setNonEmpty!20876))

(assert (= setNonEmpty!20876 b!2314841))

(assert (= (and mapNonEmpty!15010 ((_ is Cons!27608) mapDefault!15014)) b!2314842))

(declare-fun m!2741645 () Bool)

(assert (=> setNonEmpty!20875 m!2741645))

(declare-fun m!2741647 () Bool)

(assert (=> b!2314844 m!2741647))

(declare-fun m!2741649 () Bool)

(assert (=> mapNonEmpty!15014 m!2741649))

(declare-fun m!2741651 () Bool)

(assert (=> b!2314842 m!2741651))

(declare-fun m!2741653 () Bool)

(assert (=> setNonEmpty!20876 m!2741653))

(declare-fun setIsEmpty!20879 () Bool)

(declare-fun setRes!20879 () Bool)

(assert (=> setIsEmpty!20879 setRes!20879))

(declare-fun tp!735326 () Bool)

(declare-fun e!1484124 () Bool)

(declare-fun b!2314854 () Bool)

(declare-fun tp!735324 () Bool)

(declare-fun e!1484125 () Bool)

(assert (=> b!2314854 (= e!1484125 (and tp!735326 (inv!37382 (_2!16323 (_1!16324 (h!33009 mapValue!15011)))) e!1484124 tp_is_empty!10765 setRes!20879 tp!735324))))

(declare-fun condSetEmpty!20879 () Bool)

(assert (=> b!2314854 (= condSetEmpty!20879 (= (_2!16324 (h!33009 mapValue!15011)) ((as const (Array Context!4218 Bool)) false)))))

(declare-fun b!2314855 () Bool)

(declare-fun tp!735327 () Bool)

(assert (=> b!2314855 (= e!1484124 tp!735327)))

(declare-fun b!2314856 () Bool)

(declare-fun e!1484123 () Bool)

(declare-fun tp!735328 () Bool)

(assert (=> b!2314856 (= e!1484123 tp!735328)))

(assert (=> mapNonEmpty!15010 (= tp!735256 e!1484125)))

(declare-fun setNonEmpty!20879 () Bool)

(declare-fun setElem!20879 () Context!4218)

(declare-fun tp!735325 () Bool)

(assert (=> setNonEmpty!20879 (= setRes!20879 (and tp!735325 (inv!37382 setElem!20879) e!1484123))))

(declare-fun setRest!20879 () (InoxSet Context!4218))

(assert (=> setNonEmpty!20879 (= (_2!16324 (h!33009 mapValue!15011)) ((_ map or) (store ((as const (Array Context!4218 Bool)) false) setElem!20879 true) setRest!20879))))

(assert (= b!2314854 b!2314855))

(assert (= (and b!2314854 condSetEmpty!20879) setIsEmpty!20879))

(assert (= (and b!2314854 (not condSetEmpty!20879)) setNonEmpty!20879))

(assert (= setNonEmpty!20879 b!2314856))

(assert (= (and mapNonEmpty!15010 ((_ is Cons!27608) mapValue!15011)) b!2314854))

(declare-fun m!2741655 () Bool)

(assert (=> b!2314854 m!2741655))

(declare-fun m!2741657 () Bool)

(assert (=> setNonEmpty!20879 m!2741657))

(declare-fun b!2314861 () Bool)

(declare-fun e!1484128 () Bool)

(declare-fun tp!735333 () Bool)

(declare-fun tp!735334 () Bool)

(assert (=> b!2314861 (= e!1484128 (and tp!735333 tp!735334))))

(assert (=> b!2314728 (= tp!735254 e!1484128)))

(assert (= (and b!2314728 ((_ is Cons!27606) (exprs!2609 setElem!20863))) b!2314861))

(declare-fun setIsEmpty!20880 () Bool)

(declare-fun setRes!20880 () Bool)

(assert (=> setIsEmpty!20880 setRes!20880))

(declare-fun e!1484131 () Bool)

(declare-fun b!2314862 () Bool)

(declare-fun tp!735335 () Bool)

(declare-fun e!1484130 () Bool)

(declare-fun tp!735337 () Bool)

(assert (=> b!2314862 (= e!1484131 (and tp!735337 (inv!37382 (_2!16323 (_1!16324 (h!33009 (zeroValue!3468 (v!30660 (underlying!6625 (v!30661 (underlying!6626 (cache!3499 cacheDown!1084)))))))))) e!1484130 tp_is_empty!10765 setRes!20880 tp!735335))))

(declare-fun condSetEmpty!20880 () Bool)

(assert (=> b!2314862 (= condSetEmpty!20880 (= (_2!16324 (h!33009 (zeroValue!3468 (v!30660 (underlying!6625 (v!30661 (underlying!6626 (cache!3499 cacheDown!1084)))))))) ((as const (Array Context!4218 Bool)) false)))))

(declare-fun b!2314863 () Bool)

(declare-fun tp!735338 () Bool)

(assert (=> b!2314863 (= e!1484130 tp!735338)))

(declare-fun b!2314864 () Bool)

(declare-fun e!1484129 () Bool)

(declare-fun tp!735339 () Bool)

(assert (=> b!2314864 (= e!1484129 tp!735339)))

(assert (=> b!2314727 (= tp!735253 e!1484131)))

(declare-fun setNonEmpty!20880 () Bool)

(declare-fun setElem!20880 () Context!4218)

(declare-fun tp!735336 () Bool)

(assert (=> setNonEmpty!20880 (= setRes!20880 (and tp!735336 (inv!37382 setElem!20880) e!1484129))))

(declare-fun setRest!20880 () (InoxSet Context!4218))

(assert (=> setNonEmpty!20880 (= (_2!16324 (h!33009 (zeroValue!3468 (v!30660 (underlying!6625 (v!30661 (underlying!6626 (cache!3499 cacheDown!1084)))))))) ((_ map or) (store ((as const (Array Context!4218 Bool)) false) setElem!20880 true) setRest!20880))))

(assert (= b!2314862 b!2314863))

(assert (= (and b!2314862 condSetEmpty!20880) setIsEmpty!20880))

(assert (= (and b!2314862 (not condSetEmpty!20880)) setNonEmpty!20880))

(assert (= setNonEmpty!20880 b!2314864))

(assert (= (and b!2314727 ((_ is Cons!27608) (zeroValue!3468 (v!30660 (underlying!6625 (v!30661 (underlying!6626 (cache!3499 cacheDown!1084)))))))) b!2314862))

(declare-fun m!2741659 () Bool)

(assert (=> b!2314862 m!2741659))

(declare-fun m!2741661 () Bool)

(assert (=> setNonEmpty!20880 m!2741661))

(declare-fun setIsEmpty!20881 () Bool)

(declare-fun setRes!20881 () Bool)

(assert (=> setIsEmpty!20881 setRes!20881))

(declare-fun e!1484134 () Bool)

(declare-fun b!2314865 () Bool)

(declare-fun tp!735342 () Bool)

(declare-fun e!1484133 () Bool)

(declare-fun tp!735340 () Bool)

(assert (=> b!2314865 (= e!1484134 (and tp!735342 (inv!37382 (_2!16323 (_1!16324 (h!33009 (minValue!3468 (v!30660 (underlying!6625 (v!30661 (underlying!6626 (cache!3499 cacheDown!1084)))))))))) e!1484133 tp_is_empty!10765 setRes!20881 tp!735340))))

(declare-fun condSetEmpty!20881 () Bool)

(assert (=> b!2314865 (= condSetEmpty!20881 (= (_2!16324 (h!33009 (minValue!3468 (v!30660 (underlying!6625 (v!30661 (underlying!6626 (cache!3499 cacheDown!1084)))))))) ((as const (Array Context!4218 Bool)) false)))))

(declare-fun b!2314866 () Bool)

(declare-fun tp!735343 () Bool)

(assert (=> b!2314866 (= e!1484133 tp!735343)))

(declare-fun b!2314867 () Bool)

(declare-fun e!1484132 () Bool)

(declare-fun tp!735344 () Bool)

(assert (=> b!2314867 (= e!1484132 tp!735344)))

(assert (=> b!2314727 (= tp!735247 e!1484134)))

(declare-fun setNonEmpty!20881 () Bool)

(declare-fun setElem!20881 () Context!4218)

(declare-fun tp!735341 () Bool)

(assert (=> setNonEmpty!20881 (= setRes!20881 (and tp!735341 (inv!37382 setElem!20881) e!1484132))))

(declare-fun setRest!20881 () (InoxSet Context!4218))

(assert (=> setNonEmpty!20881 (= (_2!16324 (h!33009 (minValue!3468 (v!30660 (underlying!6625 (v!30661 (underlying!6626 (cache!3499 cacheDown!1084)))))))) ((_ map or) (store ((as const (Array Context!4218 Bool)) false) setElem!20881 true) setRest!20881))))

(assert (= b!2314865 b!2314866))

(assert (= (and b!2314865 condSetEmpty!20881) setIsEmpty!20881))

(assert (= (and b!2314865 (not condSetEmpty!20881)) setNonEmpty!20881))

(assert (= setNonEmpty!20881 b!2314867))

(assert (= (and b!2314727 ((_ is Cons!27608) (minValue!3468 (v!30660 (underlying!6625 (v!30661 (underlying!6626 (cache!3499 cacheDown!1084)))))))) b!2314865))

(declare-fun m!2741663 () Bool)

(assert (=> b!2314865 m!2741663))

(declare-fun m!2741665 () Bool)

(assert (=> setNonEmpty!20881 m!2741665))

(declare-fun b!2314868 () Bool)

(declare-fun e!1484137 () Bool)

(declare-fun e!1484135 () Bool)

(declare-fun setRes!20882 () Bool)

(declare-fun tp!735346 () Bool)

(assert (=> b!2314868 (= e!1484135 (and (inv!37382 (_1!16321 (_1!16322 (h!33008 mapDefault!15010)))) e!1484137 tp_is_empty!10765 setRes!20882 tp!735346))))

(declare-fun condSetEmpty!20882 () Bool)

(assert (=> b!2314868 (= condSetEmpty!20882 (= (_2!16322 (h!33008 mapDefault!15010)) ((as const (Array Context!4218 Bool)) false)))))

(declare-fun b!2314869 () Bool)

(declare-fun tp!735348 () Bool)

(assert (=> b!2314869 (= e!1484137 tp!735348)))

(declare-fun b!2314870 () Bool)

(declare-fun e!1484136 () Bool)

(declare-fun tp!735347 () Bool)

(assert (=> b!2314870 (= e!1484136 tp!735347)))

(assert (=> b!2314710 (= tp!735245 e!1484135)))

(declare-fun setIsEmpty!20882 () Bool)

(assert (=> setIsEmpty!20882 setRes!20882))

(declare-fun setElem!20882 () Context!4218)

(declare-fun tp!735345 () Bool)

(declare-fun setNonEmpty!20882 () Bool)

(assert (=> setNonEmpty!20882 (= setRes!20882 (and tp!735345 (inv!37382 setElem!20882) e!1484136))))

(declare-fun setRest!20882 () (InoxSet Context!4218))

(assert (=> setNonEmpty!20882 (= (_2!16322 (h!33008 mapDefault!15010)) ((_ map or) (store ((as const (Array Context!4218 Bool)) false) setElem!20882 true) setRest!20882))))

(assert (= b!2314868 b!2314869))

(assert (= (and b!2314868 condSetEmpty!20882) setIsEmpty!20882))

(assert (= (and b!2314868 (not condSetEmpty!20882)) setNonEmpty!20882))

(assert (= setNonEmpty!20882 b!2314870))

(assert (= (and b!2314710 ((_ is Cons!27607) mapDefault!15010)) b!2314868))

(declare-fun m!2741667 () Bool)

(assert (=> b!2314868 m!2741667))

(declare-fun m!2741669 () Bool)

(assert (=> setNonEmpty!20882 m!2741669))

(declare-fun b!2314885 () Bool)

(declare-fun e!1484150 () Bool)

(declare-fun tp!735367 () Bool)

(assert (=> b!2314885 (= e!1484150 tp!735367)))

(declare-fun condMapEmpty!15017 () Bool)

(declare-fun mapDefault!15017 () List!27705)

(assert (=> mapNonEmpty!15011 (= condMapEmpty!15017 (= mapRest!15011 ((as const (Array (_ BitVec 32) List!27705)) mapDefault!15017)))))

(declare-fun e!1484151 () Bool)

(declare-fun mapRes!15017 () Bool)

(assert (=> mapNonEmpty!15011 (= tp!735244 (and e!1484151 mapRes!15017))))

(declare-fun mapNonEmpty!15017 () Bool)

(declare-fun tp!735373 () Bool)

(declare-fun e!1484152 () Bool)

(assert (=> mapNonEmpty!15017 (= mapRes!15017 (and tp!735373 e!1484152))))

(declare-fun mapKey!15017 () (_ BitVec 32))

(declare-fun mapValue!15017 () List!27705)

(declare-fun mapRest!15017 () (Array (_ BitVec 32) List!27705))

(assert (=> mapNonEmpty!15017 (= mapRest!15011 (store mapRest!15017 mapKey!15017 mapValue!15017))))

(declare-fun setElem!20888 () Context!4218)

(declare-fun setNonEmpty!20887 () Bool)

(declare-fun setRes!20887 () Bool)

(declare-fun tp!735368 () Bool)

(declare-fun e!1484155 () Bool)

(assert (=> setNonEmpty!20887 (= setRes!20887 (and tp!735368 (inv!37382 setElem!20888) e!1484155))))

(declare-fun setRest!20888 () (InoxSet Context!4218))

(assert (=> setNonEmpty!20887 (= (_2!16322 (h!33008 mapDefault!15017)) ((_ map or) (store ((as const (Array Context!4218 Bool)) false) setElem!20888 true) setRest!20888))))

(declare-fun tp!735369 () Bool)

(declare-fun b!2314886 () Bool)

(assert (=> b!2314886 (= e!1484151 (and (inv!37382 (_1!16321 (_1!16322 (h!33008 mapDefault!15017)))) e!1484150 tp_is_empty!10765 setRes!20887 tp!735369))))

(declare-fun condSetEmpty!20887 () Bool)

(assert (=> b!2314886 (= condSetEmpty!20887 (= (_2!16322 (h!33008 mapDefault!15017)) ((as const (Array Context!4218 Bool)) false)))))

(declare-fun b!2314887 () Bool)

(declare-fun e!1484153 () Bool)

(declare-fun tp!735371 () Bool)

(assert (=> b!2314887 (= e!1484153 tp!735371)))

(declare-fun b!2314888 () Bool)

(declare-fun tp!735374 () Bool)

(assert (=> b!2314888 (= e!1484155 tp!735374)))

(declare-fun mapIsEmpty!15017 () Bool)

(assert (=> mapIsEmpty!15017 mapRes!15017))

(declare-fun setNonEmpty!20888 () Bool)

(declare-fun setRes!20888 () Bool)

(declare-fun tp!735370 () Bool)

(declare-fun setElem!20887 () Context!4218)

(assert (=> setNonEmpty!20888 (= setRes!20888 (and tp!735370 (inv!37382 setElem!20887) e!1484153))))

(declare-fun setRest!20887 () (InoxSet Context!4218))

(assert (=> setNonEmpty!20888 (= (_2!16322 (h!33008 mapValue!15017)) ((_ map or) (store ((as const (Array Context!4218 Bool)) false) setElem!20887 true) setRest!20887))))

(declare-fun setIsEmpty!20887 () Bool)

(assert (=> setIsEmpty!20887 setRes!20888))

(declare-fun e!1484154 () Bool)

(declare-fun tp!735372 () Bool)

(declare-fun b!2314889 () Bool)

(assert (=> b!2314889 (= e!1484152 (and (inv!37382 (_1!16321 (_1!16322 (h!33008 mapValue!15017)))) e!1484154 tp_is_empty!10765 setRes!20888 tp!735372))))

(declare-fun condSetEmpty!20888 () Bool)

(assert (=> b!2314889 (= condSetEmpty!20888 (= (_2!16322 (h!33008 mapValue!15017)) ((as const (Array Context!4218 Bool)) false)))))

(declare-fun b!2314890 () Bool)

(declare-fun tp!735375 () Bool)

(assert (=> b!2314890 (= e!1484154 tp!735375)))

(declare-fun setIsEmpty!20888 () Bool)

(assert (=> setIsEmpty!20888 setRes!20887))

(assert (= (and mapNonEmpty!15011 condMapEmpty!15017) mapIsEmpty!15017))

(assert (= (and mapNonEmpty!15011 (not condMapEmpty!15017)) mapNonEmpty!15017))

(assert (= b!2314889 b!2314890))

(assert (= (and b!2314889 condSetEmpty!20888) setIsEmpty!20887))

(assert (= (and b!2314889 (not condSetEmpty!20888)) setNonEmpty!20888))

(assert (= setNonEmpty!20888 b!2314887))

(assert (= (and mapNonEmpty!15017 ((_ is Cons!27607) mapValue!15017)) b!2314889))

(assert (= b!2314886 b!2314885))

(assert (= (and b!2314886 condSetEmpty!20887) setIsEmpty!20888))

(assert (= (and b!2314886 (not condSetEmpty!20887)) setNonEmpty!20887))

(assert (= setNonEmpty!20887 b!2314888))

(assert (= (and mapNonEmpty!15011 ((_ is Cons!27607) mapDefault!15017)) b!2314886))

(declare-fun m!2741671 () Bool)

(assert (=> b!2314889 m!2741671))

(declare-fun m!2741673 () Bool)

(assert (=> setNonEmpty!20888 m!2741673))

(declare-fun m!2741675 () Bool)

(assert (=> b!2314886 m!2741675))

(declare-fun m!2741677 () Bool)

(assert (=> setNonEmpty!20887 m!2741677))

(declare-fun m!2741679 () Bool)

(assert (=> mapNonEmpty!15017 m!2741679))

(declare-fun tp!735377 () Bool)

(declare-fun setRes!20889 () Bool)

(declare-fun e!1484158 () Bool)

(declare-fun e!1484156 () Bool)

(declare-fun b!2314891 () Bool)

(assert (=> b!2314891 (= e!1484156 (and (inv!37382 (_1!16321 (_1!16322 (h!33008 mapValue!15010)))) e!1484158 tp_is_empty!10765 setRes!20889 tp!735377))))

(declare-fun condSetEmpty!20889 () Bool)

(assert (=> b!2314891 (= condSetEmpty!20889 (= (_2!16322 (h!33008 mapValue!15010)) ((as const (Array Context!4218 Bool)) false)))))

(declare-fun b!2314892 () Bool)

(declare-fun tp!735379 () Bool)

(assert (=> b!2314892 (= e!1484158 tp!735379)))

(declare-fun b!2314893 () Bool)

(declare-fun e!1484157 () Bool)

(declare-fun tp!735378 () Bool)

(assert (=> b!2314893 (= e!1484157 tp!735378)))

(assert (=> mapNonEmpty!15011 (= tp!735246 e!1484156)))

(declare-fun setIsEmpty!20889 () Bool)

(assert (=> setIsEmpty!20889 setRes!20889))

(declare-fun setNonEmpty!20889 () Bool)

(declare-fun tp!735376 () Bool)

(declare-fun setElem!20889 () Context!4218)

(assert (=> setNonEmpty!20889 (= setRes!20889 (and tp!735376 (inv!37382 setElem!20889) e!1484157))))

(declare-fun setRest!20889 () (InoxSet Context!4218))

(assert (=> setNonEmpty!20889 (= (_2!16322 (h!33008 mapValue!15010)) ((_ map or) (store ((as const (Array Context!4218 Bool)) false) setElem!20889 true) setRest!20889))))

(assert (= b!2314891 b!2314892))

(assert (= (and b!2314891 condSetEmpty!20889) setIsEmpty!20889))

(assert (= (and b!2314891 (not condSetEmpty!20889)) setNonEmpty!20889))

(assert (= setNonEmpty!20889 b!2314893))

(assert (= (and mapNonEmpty!15011 ((_ is Cons!27607) mapValue!15010)) b!2314891))

(declare-fun m!2741681 () Bool)

(assert (=> b!2314891 m!2741681))

(declare-fun m!2741683 () Bool)

(assert (=> setNonEmpty!20889 m!2741683))

(declare-fun setIsEmpty!20890 () Bool)

(declare-fun setRes!20890 () Bool)

(assert (=> setIsEmpty!20890 setRes!20890))

(declare-fun e!1484161 () Bool)

(declare-fun tp!735382 () Bool)

(declare-fun b!2314894 () Bool)

(declare-fun tp!735380 () Bool)

(declare-fun e!1484160 () Bool)

(assert (=> b!2314894 (= e!1484161 (and tp!735382 (inv!37382 (_2!16323 (_1!16324 (h!33009 mapDefault!15011)))) e!1484160 tp_is_empty!10765 setRes!20890 tp!735380))))

(declare-fun condSetEmpty!20890 () Bool)

(assert (=> b!2314894 (= condSetEmpty!20890 (= (_2!16324 (h!33009 mapDefault!15011)) ((as const (Array Context!4218 Bool)) false)))))

(declare-fun b!2314895 () Bool)

(declare-fun tp!735383 () Bool)

(assert (=> b!2314895 (= e!1484160 tp!735383)))

(declare-fun b!2314896 () Bool)

(declare-fun e!1484159 () Bool)

(declare-fun tp!735384 () Bool)

(assert (=> b!2314896 (= e!1484159 tp!735384)))

(assert (=> b!2314717 (= tp!735248 e!1484161)))

(declare-fun setNonEmpty!20890 () Bool)

(declare-fun tp!735381 () Bool)

(declare-fun setElem!20890 () Context!4218)

(assert (=> setNonEmpty!20890 (= setRes!20890 (and tp!735381 (inv!37382 setElem!20890) e!1484159))))

(declare-fun setRest!20890 () (InoxSet Context!4218))

(assert (=> setNonEmpty!20890 (= (_2!16324 (h!33009 mapDefault!15011)) ((_ map or) (store ((as const (Array Context!4218 Bool)) false) setElem!20890 true) setRest!20890))))

(assert (= b!2314894 b!2314895))

(assert (= (and b!2314894 condSetEmpty!20890) setIsEmpty!20890))

(assert (= (and b!2314894 (not condSetEmpty!20890)) setNonEmpty!20890))

(assert (= setNonEmpty!20890 b!2314896))

(assert (= (and b!2314717 ((_ is Cons!27608) mapDefault!15011)) b!2314894))

(declare-fun m!2741685 () Bool)

(assert (=> b!2314894 m!2741685))

(declare-fun m!2741687 () Bool)

(assert (=> setNonEmpty!20890 m!2741687))

(declare-fun b!2314905 () Bool)

(declare-fun tp!735393 () Bool)

(declare-fun e!1484166 () Bool)

(declare-fun tp!735391 () Bool)

(assert (=> b!2314905 (= e!1484166 (and (inv!37386 (left!20919 (c!366863 totalInput!830))) tp!735391 (inv!37386 (right!21249 (c!366863 totalInput!830))) tp!735393))))

(declare-fun b!2314907 () Bool)

(declare-fun e!1484167 () Bool)

(declare-fun tp!735392 () Bool)

(assert (=> b!2314907 (= e!1484167 tp!735392)))

(declare-fun b!2314906 () Bool)

(declare-fun inv!37389 (IArray!18035) Bool)

(assert (=> b!2314906 (= e!1484166 (and (inv!37389 (xs!11957 (c!366863 totalInput!830))) e!1484167))))

(assert (=> b!2314730 (= tp!735250 (and (inv!37386 (c!366863 totalInput!830)) e!1484166))))

(assert (= (and b!2314730 ((_ is Node!9015) (c!366863 totalInput!830))) b!2314905))

(assert (= b!2314906 b!2314907))

(assert (= (and b!2314730 ((_ is Leaf!13232) (c!366863 totalInput!830))) b!2314906))

(declare-fun m!2741689 () Bool)

(assert (=> b!2314905 m!2741689))

(declare-fun m!2741691 () Bool)

(assert (=> b!2314905 m!2741691))

(declare-fun m!2741693 () Bool)

(assert (=> b!2314906 m!2741693))

(assert (=> b!2314730 m!2741543))

(check-sat (not b!2314816) (not b!2314764) (not b!2314841) (not b!2314887) (not b_next!70867) (not d!684509) (not b!2314774) (not b!2314779) (not setNonEmpty!20876) (not bm!137431) (not b!2314907) (not setNonEmpty!20867) (not b!2314842) (not b!2314819) (not b!2314865) (not b!2314844) (not setNonEmpty!20870) (not b!2314775) (not b!2314743) (not setNonEmpty!20866) (not b!2314866) (not d!684517) (not b!2314791) (not b!2314797) (not b_next!70861) (not b!2314845) b_and!185061 (not d!684503) (not b!2314886) (not b!2314862) (not mapNonEmpty!15014) (not b_next!70863) (not b!2314742) (not b!2314896) b_and!185059 (not b!2314856) (not b!2314906) b_and!185057 (not setNonEmpty!20887) (not d!684499) (not b!2314855) (not b!2314867) (not b!2314892) (not b!2314894) (not b!2314768) (not b!2314730) (not setNonEmpty!20880) (not d!684497) (not b!2314891) (not d!684491) (not setNonEmpty!20881) (not b!2314806) (not setNonEmpty!20882) (not mapNonEmpty!15017) (not b!2314825) (not bm!137430) (not b!2314817) (not b!2314885) (not b!2314767) (not b!2314788) (not b!2314820) (not b!2314895) (not b!2314778) (not b!2314889) (not b!2314905) (not setNonEmpty!20875) (not setNonEmpty!20888) tp_is_empty!10765 (not b!2314804) (not b!2314744) (not setNonEmpty!20879) (not b!2314843) (not b!2314854) (not d!684515) (not setNonEmpty!20890) (not b!2314888) (not b_next!70865) (not b!2314890) (not b!2314868) (not d!684483) (not b!2314864) (not b!2314815) (not b!2314771) (not b!2314893) (not b!2314870) (not b!2314863) (not b!2314784) (not d!684489) (not setNonEmpty!20889) (not b!2314818) (not b!2314785) (not d!684507) (not b!2314840) (not b!2314796) b_and!185063 (not b!2314861) (not b!2314869) (not b!2314763))
(check-sat (not b_next!70861) b_and!185061 (not b_next!70863) b_and!185059 b_and!185057 (not b_next!70865) (not b_next!70867) b_and!185063)

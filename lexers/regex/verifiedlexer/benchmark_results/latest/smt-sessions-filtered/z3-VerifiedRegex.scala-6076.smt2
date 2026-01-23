; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!296308 () Bool)

(assert start!296308)

(declare-fun b!3160659 () Bool)

(declare-fun b_free!82977 () Bool)

(declare-fun b_next!83681 () Bool)

(assert (=> b!3160659 (= b_free!82977 (not b_next!83681))))

(declare-fun tp!994228 () Bool)

(declare-fun b_and!209219 () Bool)

(assert (=> b!3160659 (= tp!994228 b_and!209219)))

(declare-fun b!3160661 () Bool)

(declare-fun b_free!82979 () Bool)

(declare-fun b_next!83683 () Bool)

(assert (=> b!3160661 (= b_free!82979 (not b_next!83683))))

(declare-fun tp!994239 () Bool)

(declare-fun b_and!209221 () Bool)

(assert (=> b!3160661 (= tp!994239 b_and!209221)))

(declare-fun b!3160655 () Bool)

(declare-fun e!1969086 () Bool)

(declare-fun tp_is_empty!16969 () Bool)

(assert (=> b!3160655 (= e!1969086 tp_is_empty!16969)))

(declare-fun b!3160656 () Bool)

(declare-fun e!1969087 () Bool)

(declare-fun e!1969093 () Bool)

(assert (=> b!3160656 (= e!1969087 e!1969093)))

(declare-fun b!3160657 () Bool)

(declare-fun e!1969085 () Bool)

(declare-fun e!1969089 () Bool)

(assert (=> b!3160657 (= e!1969085 e!1969089)))

(declare-fun b!3160658 () Bool)

(declare-fun res!1286950 () Bool)

(declare-fun e!1969090 () Bool)

(assert (=> b!3160658 (=> (not res!1286950) (not e!1969090))))

(declare-datatypes ((C!19592 0))(
  ( (C!19593 (val!11832 Int)) )
))
(declare-datatypes ((Regex!9703 0))(
  ( (ElementMatch!9703 (c!531582 C!19592)) (Concat!15024 (regOne!19918 Regex!9703) (regTwo!19918 Regex!9703)) (EmptyExpr!9703) (Star!9703 (reg!10032 Regex!9703)) (EmptyLang!9703) (Union!9703 (regOne!19919 Regex!9703) (regTwo!19919 Regex!9703)) )
))
(declare-datatypes ((tuple2!34330 0))(
  ( (tuple2!34331 (_1!20297 Regex!9703) (_2!20297 C!19592)) )
))
(declare-datatypes ((tuple2!34332 0))(
  ( (tuple2!34333 (_1!20298 tuple2!34330) (_2!20298 Regex!9703)) )
))
(declare-datatypes ((array!14676 0))(
  ( (array!14677 (arr!6538 (Array (_ BitVec 32) (_ BitVec 64))) (size!26624 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!4040 0))(
  ( (HashableExt!4039 (__x!22478 Int)) )
))
(declare-datatypes ((List!35531 0))(
  ( (Nil!35407) (Cons!35407 (h!40827 tuple2!34332) (t!234596 List!35531)) )
))
(declare-datatypes ((array!14678 0))(
  ( (array!14679 (arr!6539 (Array (_ BitVec 32) List!35531)) (size!26625 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8248 0))(
  ( (LongMapFixedSize!8249 (defaultEntry!4509 Int) (mask!10769 (_ BitVec 32)) (extraKeys!4373 (_ BitVec 32)) (zeroValue!4383 List!35531) (minValue!4383 List!35531) (_size!8291 (_ BitVec 32)) (_keys!4424 array!14676) (_values!4405 array!14678) (_vacant!4185 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!16305 0))(
  ( (Cell!16306 (v!35027 LongMapFixedSize!8248)) )
))
(declare-datatypes ((MutLongMap!4124 0))(
  ( (LongMap!4124 (underlying!8477 Cell!16305)) (MutLongMapExt!4123 (__x!22479 Int)) )
))
(declare-datatypes ((Cell!16307 0))(
  ( (Cell!16308 (v!35028 MutLongMap!4124)) )
))
(declare-datatypes ((MutableMap!4030 0))(
  ( (MutableMapExt!4029 (__x!22480 Int)) (HashMap!4030 (underlying!8478 Cell!16307) (hashF!6072 Hashable!4040) (_size!8292 (_ BitVec 32)) (defaultValue!4201 Int)) )
))
(declare-datatypes ((Cache!330 0))(
  ( (Cache!331 (cache!4167 MutableMap!4030)) )
))
(declare-fun cache!347 () Cache!330)

(declare-fun valid!3211 (Cache!330) Bool)

(assert (=> b!3160658 (= res!1286950 (valid!3211 cache!347))))

(declare-fun tp!994230 () Bool)

(declare-fun tp!994233 () Bool)

(declare-fun e!1969091 () Bool)

(declare-fun array_inv!4682 (array!14676) Bool)

(declare-fun array_inv!4683 (array!14678) Bool)

(assert (=> b!3160659 (= e!1969093 (and tp!994228 tp!994233 tp!994230 (array_inv!4682 (_keys!4424 (v!35027 (underlying!8477 (v!35028 (underlying!8478 (cache!4167 cache!347))))))) (array_inv!4683 (_values!4405 (v!35027 (underlying!8477 (v!35028 (underlying!8478 (cache!4167 cache!347))))))) e!1969091))))

(declare-fun b!3160660 () Bool)

(declare-fun res!1286947 () Bool)

(assert (=> b!3160660 (=> (not res!1286947) (not e!1969090))))

(declare-fun r!13156 () Regex!9703)

(declare-fun a!2409 () C!19592)

(get-info :version)

(declare-datatypes ((Option!6868 0))(
  ( (None!6867) (Some!6867 (v!35029 Regex!9703)) )
))
(declare-fun get!11186 (Cache!330 Regex!9703 C!19592) Option!6868)

(assert (=> b!3160660 (= res!1286947 (not ((_ is Some!6867) (get!11186 cache!347 r!13156 a!2409))))))

(declare-fun e!1969088 () Bool)

(assert (=> b!3160661 (= e!1969089 (and e!1969088 tp!994239))))

(declare-fun b!3160662 () Bool)

(declare-fun res!1286948 () Bool)

(assert (=> b!3160662 (=> (not res!1286948) (not e!1969090))))

(assert (=> b!3160662 (= res!1286948 (and (not ((_ is EmptyExpr!9703) r!13156)) (not ((_ is EmptyLang!9703) r!13156)) (not ((_ is ElementMatch!9703) r!13156)) ((_ is Union!9703) r!13156)))))

(declare-fun b!3160663 () Bool)

(declare-fun tp!994232 () Bool)

(declare-fun tp!994229 () Bool)

(assert (=> b!3160663 (= e!1969086 (and tp!994232 tp!994229))))

(declare-fun b!3160664 () Bool)

(declare-fun tp!994238 () Bool)

(declare-fun mapRes!18716 () Bool)

(assert (=> b!3160664 (= e!1969091 (and tp!994238 mapRes!18716))))

(declare-fun condMapEmpty!18716 () Bool)

(declare-fun mapDefault!18716 () List!35531)

(assert (=> b!3160664 (= condMapEmpty!18716 (= (arr!6539 (_values!4405 (v!35027 (underlying!8477 (v!35028 (underlying!8478 (cache!4167 cache!347))))))) ((as const (Array (_ BitVec 32) List!35531)) mapDefault!18716)))))

(declare-fun b!3160665 () Bool)

(declare-fun validRegex!4433 (Regex!9703) Bool)

(assert (=> b!3160665 (= e!1969090 (not (validRegex!4433 (regOne!19919 r!13156))))))

(declare-fun b!3160666 () Bool)

(declare-fun e!1969092 () Bool)

(assert (=> b!3160666 (= e!1969092 e!1969087)))

(declare-fun b!3160667 () Bool)

(declare-fun tp!994236 () Bool)

(assert (=> b!3160667 (= e!1969086 tp!994236)))

(declare-fun b!3160668 () Bool)

(declare-fun tp!994237 () Bool)

(declare-fun tp!994231 () Bool)

(assert (=> b!3160668 (= e!1969086 (and tp!994237 tp!994231))))

(declare-fun mapNonEmpty!18716 () Bool)

(declare-fun tp!994235 () Bool)

(declare-fun tp!994234 () Bool)

(assert (=> mapNonEmpty!18716 (= mapRes!18716 (and tp!994235 tp!994234))))

(declare-fun mapValue!18716 () List!35531)

(declare-fun mapKey!18716 () (_ BitVec 32))

(declare-fun mapRest!18716 () (Array (_ BitVec 32) List!35531))

(assert (=> mapNonEmpty!18716 (= (arr!6539 (_values!4405 (v!35027 (underlying!8477 (v!35028 (underlying!8478 (cache!4167 cache!347))))))) (store mapRest!18716 mapKey!18716 mapValue!18716))))

(declare-fun res!1286949 () Bool)

(assert (=> start!296308 (=> (not res!1286949) (not e!1969090))))

(assert (=> start!296308 (= res!1286949 (validRegex!4433 r!13156))))

(assert (=> start!296308 e!1969090))

(assert (=> start!296308 e!1969086))

(declare-fun inv!48036 (Cache!330) Bool)

(assert (=> start!296308 (and (inv!48036 cache!347) e!1969085)))

(assert (=> start!296308 tp_is_empty!16969))

(declare-fun mapIsEmpty!18716 () Bool)

(assert (=> mapIsEmpty!18716 mapRes!18716))

(declare-fun b!3160669 () Bool)

(declare-fun lt!1062761 () MutLongMap!4124)

(assert (=> b!3160669 (= e!1969088 (and e!1969092 ((_ is LongMap!4124) lt!1062761)))))

(assert (=> b!3160669 (= lt!1062761 (v!35028 (underlying!8478 (cache!4167 cache!347))))))

(assert (= (and start!296308 res!1286949) b!3160658))

(assert (= (and b!3160658 res!1286950) b!3160660))

(assert (= (and b!3160660 res!1286947) b!3160662))

(assert (= (and b!3160662 res!1286948) b!3160665))

(assert (= (and start!296308 ((_ is ElementMatch!9703) r!13156)) b!3160655))

(assert (= (and start!296308 ((_ is Concat!15024) r!13156)) b!3160663))

(assert (= (and start!296308 ((_ is Star!9703) r!13156)) b!3160667))

(assert (= (and start!296308 ((_ is Union!9703) r!13156)) b!3160668))

(assert (= (and b!3160664 condMapEmpty!18716) mapIsEmpty!18716))

(assert (= (and b!3160664 (not condMapEmpty!18716)) mapNonEmpty!18716))

(assert (= b!3160659 b!3160664))

(assert (= b!3160656 b!3160659))

(assert (= b!3160666 b!3160656))

(assert (= (and b!3160669 ((_ is LongMap!4124) (v!35028 (underlying!8478 (cache!4167 cache!347))))) b!3160666))

(assert (= b!3160661 b!3160669))

(assert (= (and b!3160657 ((_ is HashMap!4030) (cache!4167 cache!347))) b!3160661))

(assert (= start!296308 b!3160657))

(declare-fun m!3425557 () Bool)

(assert (=> b!3160658 m!3425557))

(declare-fun m!3425559 () Bool)

(assert (=> mapNonEmpty!18716 m!3425559))

(declare-fun m!3425561 () Bool)

(assert (=> b!3160660 m!3425561))

(declare-fun m!3425563 () Bool)

(assert (=> b!3160665 m!3425563))

(declare-fun m!3425565 () Bool)

(assert (=> start!296308 m!3425565))

(declare-fun m!3425567 () Bool)

(assert (=> start!296308 m!3425567))

(declare-fun m!3425569 () Bool)

(assert (=> b!3160659 m!3425569))

(declare-fun m!3425571 () Bool)

(assert (=> b!3160659 m!3425571))

(check-sat (not b_next!83681) (not b!3160658) (not b!3160664) (not mapNonEmpty!18716) (not b!3160667) (not b!3160665) b_and!209221 tp_is_empty!16969 (not b!3160668) b_and!209219 (not b_next!83683) (not b!3160659) (not b!3160660) (not start!296308) (not b!3160663))
(check-sat b_and!209221 b_and!209219 (not b_next!83681) (not b_next!83683))
(get-model)

(declare-fun d!868393 () Bool)

(assert (=> d!868393 (= (array_inv!4682 (_keys!4424 (v!35027 (underlying!8477 (v!35028 (underlying!8478 (cache!4167 cache!347))))))) (bvsge (size!26624 (_keys!4424 (v!35027 (underlying!8477 (v!35028 (underlying!8478 (cache!4167 cache!347))))))) #b00000000000000000000000000000000))))

(assert (=> b!3160659 d!868393))

(declare-fun d!868395 () Bool)

(assert (=> d!868395 (= (array_inv!4683 (_values!4405 (v!35027 (underlying!8477 (v!35028 (underlying!8478 (cache!4167 cache!347))))))) (bvsge (size!26625 (_values!4405 (v!35027 (underlying!8477 (v!35028 (underlying!8478 (cache!4167 cache!347))))))) #b00000000000000000000000000000000))))

(assert (=> b!3160659 d!868395))

(declare-fun d!868397 () Bool)

(declare-fun res!1286962 () Bool)

(declare-fun e!1969114 () Bool)

(assert (=> d!868397 (=> res!1286962 e!1969114)))

(assert (=> d!868397 (= res!1286962 ((_ is ElementMatch!9703) (regOne!19919 r!13156)))))

(assert (=> d!868397 (= (validRegex!4433 (regOne!19919 r!13156)) e!1969114)))

(declare-fun b!3160688 () Bool)

(declare-fun res!1286964 () Bool)

(declare-fun e!1969108 () Bool)

(assert (=> b!3160688 (=> res!1286964 e!1969108)))

(assert (=> b!3160688 (= res!1286964 (not ((_ is Concat!15024) (regOne!19919 r!13156))))))

(declare-fun e!1969112 () Bool)

(assert (=> b!3160688 (= e!1969112 e!1969108)))

(declare-fun b!3160689 () Bool)

(declare-fun e!1969113 () Bool)

(assert (=> b!3160689 (= e!1969108 e!1969113)))

(declare-fun res!1286965 () Bool)

(assert (=> b!3160689 (=> (not res!1286965) (not e!1969113))))

(declare-fun call!228893 () Bool)

(assert (=> b!3160689 (= res!1286965 call!228893)))

(declare-fun b!3160690 () Bool)

(declare-fun e!1969110 () Bool)

(assert (=> b!3160690 (= e!1969110 e!1969112)))

(declare-fun c!531588 () Bool)

(assert (=> b!3160690 (= c!531588 ((_ is Union!9703) (regOne!19919 r!13156)))))

(declare-fun bm!228886 () Bool)

(declare-fun call!228891 () Bool)

(declare-fun c!531587 () Bool)

(assert (=> bm!228886 (= call!228891 (validRegex!4433 (ite c!531587 (reg!10032 (regOne!19919 r!13156)) (ite c!531588 (regTwo!19919 (regOne!19919 r!13156)) (regTwo!19918 (regOne!19919 r!13156))))))))

(declare-fun b!3160691 () Bool)

(assert (=> b!3160691 (= e!1969114 e!1969110)))

(assert (=> b!3160691 (= c!531587 ((_ is Star!9703) (regOne!19919 r!13156)))))

(declare-fun b!3160692 () Bool)

(declare-fun e!1969111 () Bool)

(assert (=> b!3160692 (= e!1969110 e!1969111)))

(declare-fun res!1286961 () Bool)

(declare-fun nullable!3328 (Regex!9703) Bool)

(assert (=> b!3160692 (= res!1286961 (not (nullable!3328 (reg!10032 (regOne!19919 r!13156)))))))

(assert (=> b!3160692 (=> (not res!1286961) (not e!1969111))))

(declare-fun b!3160693 () Bool)

(assert (=> b!3160693 (= e!1969111 call!228891)))

(declare-fun bm!228887 () Bool)

(declare-fun call!228892 () Bool)

(assert (=> bm!228887 (= call!228892 call!228891)))

(declare-fun b!3160694 () Bool)

(assert (=> b!3160694 (= e!1969113 call!228892)))

(declare-fun bm!228888 () Bool)

(assert (=> bm!228888 (= call!228893 (validRegex!4433 (ite c!531588 (regOne!19919 (regOne!19919 r!13156)) (regOne!19918 (regOne!19919 r!13156)))))))

(declare-fun b!3160695 () Bool)

(declare-fun e!1969109 () Bool)

(assert (=> b!3160695 (= e!1969109 call!228892)))

(declare-fun b!3160696 () Bool)

(declare-fun res!1286963 () Bool)

(assert (=> b!3160696 (=> (not res!1286963) (not e!1969109))))

(assert (=> b!3160696 (= res!1286963 call!228893)))

(assert (=> b!3160696 (= e!1969112 e!1969109)))

(assert (= (and d!868397 (not res!1286962)) b!3160691))

(assert (= (and b!3160691 c!531587) b!3160692))

(assert (= (and b!3160691 (not c!531587)) b!3160690))

(assert (= (and b!3160692 res!1286961) b!3160693))

(assert (= (and b!3160690 c!531588) b!3160696))

(assert (= (and b!3160690 (not c!531588)) b!3160688))

(assert (= (and b!3160696 res!1286963) b!3160695))

(assert (= (and b!3160688 (not res!1286964)) b!3160689))

(assert (= (and b!3160689 res!1286965) b!3160694))

(assert (= (or b!3160696 b!3160689) bm!228888))

(assert (= (or b!3160695 b!3160694) bm!228887))

(assert (= (or b!3160693 bm!228887) bm!228886))

(declare-fun m!3425573 () Bool)

(assert (=> bm!228886 m!3425573))

(declare-fun m!3425575 () Bool)

(assert (=> b!3160692 m!3425575))

(declare-fun m!3425577 () Bool)

(assert (=> bm!228888 m!3425577))

(assert (=> b!3160665 d!868397))

(declare-fun d!868399 () Bool)

(declare-fun e!1969120 () Bool)

(assert (=> d!868399 e!1969120))

(declare-fun res!1286968 () Bool)

(assert (=> d!868399 (=> res!1286968 e!1969120)))

(declare-fun lt!1062767 () Option!6868)

(declare-fun isEmpty!19745 (Option!6868) Bool)

(assert (=> d!868399 (= res!1286968 (isEmpty!19745 lt!1062767))))

(declare-fun e!1969119 () Option!6868)

(assert (=> d!868399 (= lt!1062767 e!1969119)))

(declare-fun c!531592 () Bool)

(declare-fun contains!6140 (MutableMap!4030 tuple2!34330) Bool)

(assert (=> d!868399 (= c!531592 (contains!6140 (cache!4167 cache!347) (tuple2!34331 r!13156 a!2409)))))

(assert (=> d!868399 (validRegex!4433 r!13156)))

(assert (=> d!868399 (= (get!11186 cache!347 r!13156 a!2409) lt!1062767)))

(declare-fun b!3160703 () Bool)

(declare-fun apply!7927 (MutableMap!4030 tuple2!34330) Regex!9703)

(assert (=> b!3160703 (= e!1969119 (Some!6867 (apply!7927 (cache!4167 cache!347) (tuple2!34331 r!13156 a!2409))))))

(declare-datatypes ((Unit!49752 0))(
  ( (Unit!49753) )
))
(declare-fun lt!1062766 () Unit!49752)

(declare-fun lemmaIfInCacheThenValid!43 (Cache!330 Regex!9703 C!19592) Unit!49752)

(assert (=> b!3160703 (= lt!1062766 (lemmaIfInCacheThenValid!43 cache!347 r!13156 a!2409))))

(declare-fun b!3160704 () Bool)

(assert (=> b!3160704 (= e!1969119 None!6867)))

(declare-fun b!3160705 () Bool)

(declare-fun get!11187 (Option!6868) Regex!9703)

(declare-fun derivativeStep!2878 (Regex!9703 C!19592) Regex!9703)

(assert (=> b!3160705 (= e!1969120 (= (get!11187 lt!1062767) (derivativeStep!2878 r!13156 a!2409)))))

(assert (= (and d!868399 c!531592) b!3160703))

(assert (= (and d!868399 (not c!531592)) b!3160704))

(assert (= (and d!868399 (not res!1286968)) b!3160705))

(declare-fun m!3425579 () Bool)

(assert (=> d!868399 m!3425579))

(declare-fun m!3425581 () Bool)

(assert (=> d!868399 m!3425581))

(assert (=> d!868399 m!3425565))

(declare-fun m!3425583 () Bool)

(assert (=> b!3160703 m!3425583))

(declare-fun m!3425585 () Bool)

(assert (=> b!3160703 m!3425585))

(declare-fun m!3425587 () Bool)

(assert (=> b!3160705 m!3425587))

(declare-fun m!3425589 () Bool)

(assert (=> b!3160705 m!3425589))

(assert (=> b!3160660 d!868399))

(declare-fun d!868401 () Bool)

(declare-fun res!1286970 () Bool)

(declare-fun e!1969127 () Bool)

(assert (=> d!868401 (=> res!1286970 e!1969127)))

(assert (=> d!868401 (= res!1286970 ((_ is ElementMatch!9703) r!13156))))

(assert (=> d!868401 (= (validRegex!4433 r!13156) e!1969127)))

(declare-fun b!3160706 () Bool)

(declare-fun res!1286972 () Bool)

(declare-fun e!1969121 () Bool)

(assert (=> b!3160706 (=> res!1286972 e!1969121)))

(assert (=> b!3160706 (= res!1286972 (not ((_ is Concat!15024) r!13156)))))

(declare-fun e!1969125 () Bool)

(assert (=> b!3160706 (= e!1969125 e!1969121)))

(declare-fun b!3160707 () Bool)

(declare-fun e!1969126 () Bool)

(assert (=> b!3160707 (= e!1969121 e!1969126)))

(declare-fun res!1286973 () Bool)

(assert (=> b!3160707 (=> (not res!1286973) (not e!1969126))))

(declare-fun call!228896 () Bool)

(assert (=> b!3160707 (= res!1286973 call!228896)))

(declare-fun b!3160708 () Bool)

(declare-fun e!1969123 () Bool)

(assert (=> b!3160708 (= e!1969123 e!1969125)))

(declare-fun c!531594 () Bool)

(assert (=> b!3160708 (= c!531594 ((_ is Union!9703) r!13156))))

(declare-fun bm!228889 () Bool)

(declare-fun call!228894 () Bool)

(declare-fun c!531593 () Bool)

(assert (=> bm!228889 (= call!228894 (validRegex!4433 (ite c!531593 (reg!10032 r!13156) (ite c!531594 (regTwo!19919 r!13156) (regTwo!19918 r!13156)))))))

(declare-fun b!3160709 () Bool)

(assert (=> b!3160709 (= e!1969127 e!1969123)))

(assert (=> b!3160709 (= c!531593 ((_ is Star!9703) r!13156))))

(declare-fun b!3160710 () Bool)

(declare-fun e!1969124 () Bool)

(assert (=> b!3160710 (= e!1969123 e!1969124)))

(declare-fun res!1286969 () Bool)

(assert (=> b!3160710 (= res!1286969 (not (nullable!3328 (reg!10032 r!13156))))))

(assert (=> b!3160710 (=> (not res!1286969) (not e!1969124))))

(declare-fun b!3160711 () Bool)

(assert (=> b!3160711 (= e!1969124 call!228894)))

(declare-fun bm!228890 () Bool)

(declare-fun call!228895 () Bool)

(assert (=> bm!228890 (= call!228895 call!228894)))

(declare-fun b!3160712 () Bool)

(assert (=> b!3160712 (= e!1969126 call!228895)))

(declare-fun bm!228891 () Bool)

(assert (=> bm!228891 (= call!228896 (validRegex!4433 (ite c!531594 (regOne!19919 r!13156) (regOne!19918 r!13156))))))

(declare-fun b!3160713 () Bool)

(declare-fun e!1969122 () Bool)

(assert (=> b!3160713 (= e!1969122 call!228895)))

(declare-fun b!3160714 () Bool)

(declare-fun res!1286971 () Bool)

(assert (=> b!3160714 (=> (not res!1286971) (not e!1969122))))

(assert (=> b!3160714 (= res!1286971 call!228896)))

(assert (=> b!3160714 (= e!1969125 e!1969122)))

(assert (= (and d!868401 (not res!1286970)) b!3160709))

(assert (= (and b!3160709 c!531593) b!3160710))

(assert (= (and b!3160709 (not c!531593)) b!3160708))

(assert (= (and b!3160710 res!1286969) b!3160711))

(assert (= (and b!3160708 c!531594) b!3160714))

(assert (= (and b!3160708 (not c!531594)) b!3160706))

(assert (= (and b!3160714 res!1286971) b!3160713))

(assert (= (and b!3160706 (not res!1286972)) b!3160707))

(assert (= (and b!3160707 res!1286973) b!3160712))

(assert (= (or b!3160714 b!3160707) bm!228891))

(assert (= (or b!3160713 b!3160712) bm!228890))

(assert (= (or b!3160711 bm!228890) bm!228889))

(declare-fun m!3425591 () Bool)

(assert (=> bm!228889 m!3425591))

(declare-fun m!3425593 () Bool)

(assert (=> b!3160710 m!3425593))

(declare-fun m!3425595 () Bool)

(assert (=> bm!228891 m!3425595))

(assert (=> start!296308 d!868401))

(declare-fun d!868403 () Bool)

(declare-fun res!1286976 () Bool)

(declare-fun e!1969130 () Bool)

(assert (=> d!868403 (=> (not res!1286976) (not e!1969130))))

(assert (=> d!868403 (= res!1286976 ((_ is HashMap!4030) (cache!4167 cache!347)))))

(assert (=> d!868403 (= (inv!48036 cache!347) e!1969130)))

(declare-fun b!3160717 () Bool)

(declare-fun validCacheMap!43 (MutableMap!4030) Bool)

(assert (=> b!3160717 (= e!1969130 (validCacheMap!43 (cache!4167 cache!347)))))

(assert (= (and d!868403 res!1286976) b!3160717))

(declare-fun m!3425597 () Bool)

(assert (=> b!3160717 m!3425597))

(assert (=> start!296308 d!868403))

(declare-fun d!868405 () Bool)

(assert (=> d!868405 (= (valid!3211 cache!347) (validCacheMap!43 (cache!4167 cache!347)))))

(declare-fun bs!539409 () Bool)

(assert (= bs!539409 d!868405))

(assert (=> bs!539409 m!3425597))

(assert (=> b!3160658 d!868405))

(declare-fun tp!994246 () Bool)

(declare-fun b!3160722 () Bool)

(declare-fun e!1969133 () Bool)

(declare-fun tp!994247 () Bool)

(declare-fun tp!994248 () Bool)

(assert (=> b!3160722 (= e!1969133 (and tp!994246 tp_is_empty!16969 tp!994247 tp!994248))))

(assert (=> b!3160659 (= tp!994233 e!1969133)))

(assert (= (and b!3160659 ((_ is Cons!35407) (zeroValue!4383 (v!35027 (underlying!8477 (v!35028 (underlying!8478 (cache!4167 cache!347)))))))) b!3160722))

(declare-fun tp!994249 () Bool)

(declare-fun e!1969134 () Bool)

(declare-fun tp!994251 () Bool)

(declare-fun tp!994250 () Bool)

(declare-fun b!3160723 () Bool)

(assert (=> b!3160723 (= e!1969134 (and tp!994249 tp_is_empty!16969 tp!994250 tp!994251))))

(assert (=> b!3160659 (= tp!994230 e!1969134)))

(assert (= (and b!3160659 ((_ is Cons!35407) (minValue!4383 (v!35027 (underlying!8477 (v!35028 (underlying!8478 (cache!4167 cache!347)))))))) b!3160723))

(declare-fun b!3160735 () Bool)

(declare-fun e!1969137 () Bool)

(declare-fun tp!994264 () Bool)

(declare-fun tp!994263 () Bool)

(assert (=> b!3160735 (= e!1969137 (and tp!994264 tp!994263))))

(declare-fun b!3160736 () Bool)

(declare-fun tp!994265 () Bool)

(assert (=> b!3160736 (= e!1969137 tp!994265)))

(declare-fun b!3160734 () Bool)

(assert (=> b!3160734 (= e!1969137 tp_is_empty!16969)))

(declare-fun b!3160737 () Bool)

(declare-fun tp!994262 () Bool)

(declare-fun tp!994266 () Bool)

(assert (=> b!3160737 (= e!1969137 (and tp!994262 tp!994266))))

(assert (=> b!3160663 (= tp!994232 e!1969137)))

(assert (= (and b!3160663 ((_ is ElementMatch!9703) (regOne!19918 r!13156))) b!3160734))

(assert (= (and b!3160663 ((_ is Concat!15024) (regOne!19918 r!13156))) b!3160735))

(assert (= (and b!3160663 ((_ is Star!9703) (regOne!19918 r!13156))) b!3160736))

(assert (= (and b!3160663 ((_ is Union!9703) (regOne!19918 r!13156))) b!3160737))

(declare-fun b!3160739 () Bool)

(declare-fun e!1969138 () Bool)

(declare-fun tp!994269 () Bool)

(declare-fun tp!994268 () Bool)

(assert (=> b!3160739 (= e!1969138 (and tp!994269 tp!994268))))

(declare-fun b!3160740 () Bool)

(declare-fun tp!994270 () Bool)

(assert (=> b!3160740 (= e!1969138 tp!994270)))

(declare-fun b!3160738 () Bool)

(assert (=> b!3160738 (= e!1969138 tp_is_empty!16969)))

(declare-fun b!3160741 () Bool)

(declare-fun tp!994267 () Bool)

(declare-fun tp!994271 () Bool)

(assert (=> b!3160741 (= e!1969138 (and tp!994267 tp!994271))))

(assert (=> b!3160663 (= tp!994229 e!1969138)))

(assert (= (and b!3160663 ((_ is ElementMatch!9703) (regTwo!19918 r!13156))) b!3160738))

(assert (= (and b!3160663 ((_ is Concat!15024) (regTwo!19918 r!13156))) b!3160739))

(assert (= (and b!3160663 ((_ is Star!9703) (regTwo!19918 r!13156))) b!3160740))

(assert (= (and b!3160663 ((_ is Union!9703) (regTwo!19918 r!13156))) b!3160741))

(declare-fun tp!994287 () Bool)

(declare-fun tp!994286 () Bool)

(declare-fun e!1969144 () Bool)

(declare-fun tp!994288 () Bool)

(declare-fun b!3160748 () Bool)

(assert (=> b!3160748 (= e!1969144 (and tp!994288 tp_is_empty!16969 tp!994287 tp!994286))))

(declare-fun e!1969143 () Bool)

(declare-fun tp!994290 () Bool)

(declare-fun tp!994292 () Bool)

(declare-fun tp!994289 () Bool)

(declare-fun b!3160749 () Bool)

(assert (=> b!3160749 (= e!1969143 (and tp!994292 tp_is_empty!16969 tp!994290 tp!994289))))

(declare-fun mapIsEmpty!18719 () Bool)

(declare-fun mapRes!18719 () Bool)

(assert (=> mapIsEmpty!18719 mapRes!18719))

(declare-fun mapNonEmpty!18719 () Bool)

(declare-fun tp!994291 () Bool)

(assert (=> mapNonEmpty!18719 (= mapRes!18719 (and tp!994291 e!1969144))))

(declare-fun mapValue!18719 () List!35531)

(declare-fun mapKey!18719 () (_ BitVec 32))

(declare-fun mapRest!18719 () (Array (_ BitVec 32) List!35531))

(assert (=> mapNonEmpty!18719 (= mapRest!18716 (store mapRest!18719 mapKey!18719 mapValue!18719))))

(declare-fun condMapEmpty!18719 () Bool)

(declare-fun mapDefault!18719 () List!35531)

(assert (=> mapNonEmpty!18716 (= condMapEmpty!18719 (= mapRest!18716 ((as const (Array (_ BitVec 32) List!35531)) mapDefault!18719)))))

(assert (=> mapNonEmpty!18716 (= tp!994235 (and e!1969143 mapRes!18719))))

(assert (= (and mapNonEmpty!18716 condMapEmpty!18719) mapIsEmpty!18719))

(assert (= (and mapNonEmpty!18716 (not condMapEmpty!18719)) mapNonEmpty!18719))

(assert (= (and mapNonEmpty!18719 ((_ is Cons!35407) mapValue!18719)) b!3160748))

(assert (= (and mapNonEmpty!18716 ((_ is Cons!35407) mapDefault!18719)) b!3160749))

(declare-fun m!3425599 () Bool)

(assert (=> mapNonEmpty!18719 m!3425599))

(declare-fun tp!994294 () Bool)

(declare-fun tp!994293 () Bool)

(declare-fun e!1969145 () Bool)

(declare-fun tp!994295 () Bool)

(declare-fun b!3160750 () Bool)

(assert (=> b!3160750 (= e!1969145 (and tp!994293 tp_is_empty!16969 tp!994294 tp!994295))))

(assert (=> mapNonEmpty!18716 (= tp!994234 e!1969145)))

(assert (= (and mapNonEmpty!18716 ((_ is Cons!35407) mapValue!18716)) b!3160750))

(declare-fun b!3160751 () Bool)

(declare-fun e!1969146 () Bool)

(declare-fun tp!994297 () Bool)

(declare-fun tp!994296 () Bool)

(declare-fun tp!994298 () Bool)

(assert (=> b!3160751 (= e!1969146 (and tp!994296 tp_is_empty!16969 tp!994297 tp!994298))))

(assert (=> b!3160664 (= tp!994238 e!1969146)))

(assert (= (and b!3160664 ((_ is Cons!35407) mapDefault!18716)) b!3160751))

(declare-fun b!3160753 () Bool)

(declare-fun e!1969147 () Bool)

(declare-fun tp!994301 () Bool)

(declare-fun tp!994300 () Bool)

(assert (=> b!3160753 (= e!1969147 (and tp!994301 tp!994300))))

(declare-fun b!3160754 () Bool)

(declare-fun tp!994302 () Bool)

(assert (=> b!3160754 (= e!1969147 tp!994302)))

(declare-fun b!3160752 () Bool)

(assert (=> b!3160752 (= e!1969147 tp_is_empty!16969)))

(declare-fun b!3160755 () Bool)

(declare-fun tp!994299 () Bool)

(declare-fun tp!994303 () Bool)

(assert (=> b!3160755 (= e!1969147 (and tp!994299 tp!994303))))

(assert (=> b!3160667 (= tp!994236 e!1969147)))

(assert (= (and b!3160667 ((_ is ElementMatch!9703) (reg!10032 r!13156))) b!3160752))

(assert (= (and b!3160667 ((_ is Concat!15024) (reg!10032 r!13156))) b!3160753))

(assert (= (and b!3160667 ((_ is Star!9703) (reg!10032 r!13156))) b!3160754))

(assert (= (and b!3160667 ((_ is Union!9703) (reg!10032 r!13156))) b!3160755))

(declare-fun b!3160757 () Bool)

(declare-fun e!1969148 () Bool)

(declare-fun tp!994306 () Bool)

(declare-fun tp!994305 () Bool)

(assert (=> b!3160757 (= e!1969148 (and tp!994306 tp!994305))))

(declare-fun b!3160758 () Bool)

(declare-fun tp!994307 () Bool)

(assert (=> b!3160758 (= e!1969148 tp!994307)))

(declare-fun b!3160756 () Bool)

(assert (=> b!3160756 (= e!1969148 tp_is_empty!16969)))

(declare-fun b!3160759 () Bool)

(declare-fun tp!994304 () Bool)

(declare-fun tp!994308 () Bool)

(assert (=> b!3160759 (= e!1969148 (and tp!994304 tp!994308))))

(assert (=> b!3160668 (= tp!994237 e!1969148)))

(assert (= (and b!3160668 ((_ is ElementMatch!9703) (regOne!19919 r!13156))) b!3160756))

(assert (= (and b!3160668 ((_ is Concat!15024) (regOne!19919 r!13156))) b!3160757))

(assert (= (and b!3160668 ((_ is Star!9703) (regOne!19919 r!13156))) b!3160758))

(assert (= (and b!3160668 ((_ is Union!9703) (regOne!19919 r!13156))) b!3160759))

(declare-fun b!3160761 () Bool)

(declare-fun e!1969149 () Bool)

(declare-fun tp!994311 () Bool)

(declare-fun tp!994310 () Bool)

(assert (=> b!3160761 (= e!1969149 (and tp!994311 tp!994310))))

(declare-fun b!3160762 () Bool)

(declare-fun tp!994312 () Bool)

(assert (=> b!3160762 (= e!1969149 tp!994312)))

(declare-fun b!3160760 () Bool)

(assert (=> b!3160760 (= e!1969149 tp_is_empty!16969)))

(declare-fun b!3160763 () Bool)

(declare-fun tp!994309 () Bool)

(declare-fun tp!994313 () Bool)

(assert (=> b!3160763 (= e!1969149 (and tp!994309 tp!994313))))

(assert (=> b!3160668 (= tp!994231 e!1969149)))

(assert (= (and b!3160668 ((_ is ElementMatch!9703) (regTwo!19919 r!13156))) b!3160760))

(assert (= (and b!3160668 ((_ is Concat!15024) (regTwo!19919 r!13156))) b!3160761))

(assert (= (and b!3160668 ((_ is Star!9703) (regTwo!19919 r!13156))) b!3160762))

(assert (= (and b!3160668 ((_ is Union!9703) (regTwo!19919 r!13156))) b!3160763))

(check-sat (not b!3160761) (not b!3160692) (not b!3160739) (not b!3160705) (not b!3160749) (not bm!228889) tp_is_empty!16969 (not b!3160722) b_and!209219 (not b!3160710) (not b_next!83683) (not b!3160703) (not b_next!83681) (not b!3160750) (not b!3160751) (not b!3160753) (not mapNonEmpty!18719) (not d!868405) (not b!3160758) (not b!3160741) (not b!3160754) (not b!3160759) (not b!3160757) (not d!868399) (not b!3160736) (not b!3160735) (not bm!228888) (not b!3160723) (not b!3160762) (not b!3160740) b_and!209221 (not b!3160755) (not bm!228886) (not b!3160737) (not b!3160717) (not b!3160748) (not b!3160763) (not bm!228891))
(check-sat b_and!209221 b_and!209219 (not b_next!83681) (not b_next!83683))

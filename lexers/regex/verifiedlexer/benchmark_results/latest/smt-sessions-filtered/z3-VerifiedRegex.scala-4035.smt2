; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!217928 () Bool)

(assert start!217928)

(declare-fun b!2236179 () Bool)

(declare-fun b_free!64857 () Bool)

(declare-fun b_next!65561 () Bool)

(assert (=> b!2236179 (= b_free!64857 (not b_next!65561))))

(declare-fun tp!702929 () Bool)

(declare-fun b_and!174845 () Bool)

(assert (=> b!2236179 (= tp!702929 b_and!174845)))

(declare-fun b!2236180 () Bool)

(declare-fun b_free!64859 () Bool)

(declare-fun b_next!65563 () Bool)

(assert (=> b!2236180 (= b_free!64859 (not b_next!65563))))

(declare-fun tp!702922 () Bool)

(declare-fun b_and!174847 () Bool)

(assert (=> b!2236180 (= tp!702922 b_and!174847)))

(declare-fun b!2236178 () Bool)

(declare-fun e!1429231 () Bool)

(declare-fun e!1429240 () Bool)

(assert (=> b!2236178 (= e!1429231 e!1429240)))

(declare-fun e!1429236 () Bool)

(declare-fun e!1429238 () Bool)

(assert (=> b!2236179 (= e!1429236 (and e!1429238 tp!702929))))

(declare-fun e!1429241 () Bool)

(declare-fun tp!702920 () Bool)

(declare-fun tp!702921 () Bool)

(declare-datatypes ((C!13068 0))(
  ( (C!13069 (val!7582 Int)) )
))
(declare-datatypes ((Regex!6461 0))(
  ( (ElementMatch!6461 (c!356378 C!13068)) (Concat!10799 (regOne!13434 Regex!6461) (regTwo!13434 Regex!6461)) (EmptyExpr!6461) (Star!6461 (reg!6790 Regex!6461)) (EmptyLang!6461) (Union!6461 (regOne!13435 Regex!6461) (regTwo!13435 Regex!6461)) )
))
(declare-datatypes ((List!26401 0))(
  ( (Nil!26307) (Cons!26307 (h!31708 Regex!6461) (t!199821 List!26401)) )
))
(declare-datatypes ((Context!4018 0))(
  ( (Context!4019 (exprs!2509 List!26401)) )
))
(declare-datatypes ((tuple3!3994 0))(
  ( (tuple3!3995 (_1!15318 Regex!6461) (_2!15318 Context!4018) (_3!2467 C!13068)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!25702 0))(
  ( (tuple2!25703 (_1!15319 tuple3!3994) (_2!15319 (InoxSet Context!4018))) )
))
(declare-datatypes ((array!10774 0))(
  ( (array!10775 (arr!4785 (Array (_ BitVec 32) (_ BitVec 64))) (size!20566 (_ BitVec 32))) )
))
(declare-datatypes ((List!26402 0))(
  ( (Nil!26308) (Cons!26308 (h!31709 tuple2!25702) (t!199822 List!26402)) )
))
(declare-datatypes ((array!10776 0))(
  ( (array!10777 (arr!4786 (Array (_ BitVec 32) List!26402)) (size!20567 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6198 0))(
  ( (LongMapFixedSize!6199 (defaultEntry!3464 Int) (mask!7683 (_ BitVec 32)) (extraKeys!3347 (_ BitVec 32)) (zeroValue!3357 List!26402) (minValue!3357 List!26402) (_size!6245 (_ BitVec 32)) (_keys!3396 array!10774) (_values!3379 array!10776) (_vacant!3160 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!12213 0))(
  ( (Cell!12214 (v!29911 LongMapFixedSize!6198)) )
))
(declare-datatypes ((MutLongMap!3099 0))(
  ( (LongMap!3099 (underlying!6399 Cell!12213)) (MutLongMapExt!3098 (__x!17523 Int)) )
))
(declare-datatypes ((Cell!12215 0))(
  ( (Cell!12216 (v!29912 MutLongMap!3099)) )
))
(declare-datatypes ((Hashable!3009 0))(
  ( (HashableExt!3008 (__x!17524 Int)) )
))
(declare-datatypes ((MutableMap!3009 0))(
  ( (MutableMapExt!3008 (__x!17525 Int)) (HashMap!3009 (underlying!6400 Cell!12215) (hashF!4932 Hashable!3009) (_size!6246 (_ BitVec 32)) (defaultValue!3171 Int)) )
))
(declare-datatypes ((CacheDown!2064 0))(
  ( (CacheDown!2065 (cache!3390 MutableMap!3009)) )
))
(declare-fun thiss!28797 () CacheDown!2064)

(declare-fun array_inv!3435 (array!10774) Bool)

(declare-fun array_inv!3436 (array!10776) Bool)

(assert (=> b!2236180 (= e!1429240 (and tp!702922 tp!702920 tp!702921 (array_inv!3435 (_keys!3396 (v!29911 (underlying!6399 (v!29912 (underlying!6400 (cache!3390 thiss!28797))))))) (array_inv!3436 (_values!3379 (v!29911 (underlying!6399 (v!29912 (underlying!6400 (cache!3390 thiss!28797))))))) e!1429241))))

(declare-fun b!2236181 () Bool)

(declare-fun e!1429235 () Bool)

(declare-fun tp!702928 () Bool)

(declare-fun tp!702918 () Bool)

(assert (=> b!2236181 (= e!1429235 (and tp!702928 tp!702918))))

(declare-fun mapIsEmpty!14564 () Bool)

(declare-fun mapRes!14564 () Bool)

(assert (=> mapIsEmpty!14564 mapRes!14564))

(declare-fun b!2236182 () Bool)

(declare-fun e!1429237 () Bool)

(declare-fun e!1429242 () Bool)

(assert (=> b!2236182 (= e!1429237 e!1429242)))

(declare-fun res!956756 () Bool)

(assert (=> b!2236182 (=> (not res!956756) (not e!1429242))))

(get-info :version)

(assert (=> b!2236182 (= res!956756 ((_ is HashMap!3009) (cache!3390 thiss!28797)))))

(declare-fun a!997 () C!13068)

(declare-datatypes ((Unit!39262 0))(
  ( (Unit!39263) )
))
(declare-fun lt!831723 () Unit!39262)

(declare-fun ctx!52 () Context!4018)

(declare-fun r!4766 () Regex!6461)

(declare-fun lemmaIfInCacheThenValid!30 (CacheDown!2064 Regex!6461 Context!4018 C!13068) Unit!39262)

(assert (=> b!2236182 (= lt!831723 (lemmaIfInCacheThenValid!30 thiss!28797 r!4766 ctx!52 a!997))))

(declare-fun b!2236183 () Bool)

(declare-fun res!956759 () Bool)

(assert (=> b!2236183 (=> (not res!956759) (not e!1429237))))

(declare-fun contains!4389 (MutableMap!3009 tuple3!3994) Bool)

(assert (=> b!2236183 (= res!956759 (contains!4389 (cache!3390 thiss!28797) (tuple3!3995 r!4766 ctx!52 a!997)))))

(declare-fun res!956757 () Bool)

(assert (=> start!217928 (=> (not res!956757) (not e!1429237))))

(declare-fun validCacheMapDown!311 (MutableMap!3009) Bool)

(assert (=> start!217928 (= res!956757 (validCacheMapDown!311 (cache!3390 thiss!28797)))))

(assert (=> start!217928 e!1429237))

(declare-fun e!1429234 () Bool)

(declare-fun inv!35733 (CacheDown!2064) Bool)

(assert (=> start!217928 (and (inv!35733 thiss!28797) e!1429234)))

(assert (=> start!217928 e!1429235))

(declare-fun e!1429239 () Bool)

(declare-fun inv!35734 (Context!4018) Bool)

(assert (=> start!217928 (and (inv!35734 ctx!52) e!1429239)))

(declare-fun tp_is_empty!10147 () Bool)

(assert (=> start!217928 tp_is_empty!10147))

(declare-fun b!2236184 () Bool)

(declare-fun e!1429232 () Bool)

(assert (=> b!2236184 (= e!1429232 e!1429231)))

(declare-fun b!2236185 () Bool)

(declare-fun tp!702924 () Bool)

(assert (=> b!2236185 (= e!1429239 tp!702924)))

(declare-fun b!2236186 () Bool)

(declare-fun tp!702927 () Bool)

(declare-fun tp!702919 () Bool)

(assert (=> b!2236186 (= e!1429235 (and tp!702927 tp!702919))))

(declare-fun b!2236187 () Bool)

(declare-fun valid!2342 (MutableMap!3009) Bool)

(assert (=> b!2236187 (= e!1429242 (not (valid!2342 (cache!3390 thiss!28797))))))

(declare-fun b!2236188 () Bool)

(declare-fun tp!702926 () Bool)

(assert (=> b!2236188 (= e!1429241 (and tp!702926 mapRes!14564))))

(declare-fun condMapEmpty!14564 () Bool)

(declare-fun mapDefault!14564 () List!26402)

(assert (=> b!2236188 (= condMapEmpty!14564 (= (arr!4786 (_values!3379 (v!29911 (underlying!6399 (v!29912 (underlying!6400 (cache!3390 thiss!28797))))))) ((as const (Array (_ BitVec 32) List!26402)) mapDefault!14564)))))

(declare-fun b!2236189 () Bool)

(declare-fun lt!831722 () MutLongMap!3099)

(assert (=> b!2236189 (= e!1429238 (and e!1429232 ((_ is LongMap!3099) lt!831722)))))

(assert (=> b!2236189 (= lt!831722 (v!29912 (underlying!6400 (cache!3390 thiss!28797))))))

(declare-fun b!2236190 () Bool)

(assert (=> b!2236190 (= e!1429235 tp_is_empty!10147)))

(declare-fun mapNonEmpty!14564 () Bool)

(declare-fun tp!702930 () Bool)

(declare-fun tp!702923 () Bool)

(assert (=> mapNonEmpty!14564 (= mapRes!14564 (and tp!702930 tp!702923))))

(declare-fun mapValue!14564 () List!26402)

(declare-fun mapKey!14564 () (_ BitVec 32))

(declare-fun mapRest!14564 () (Array (_ BitVec 32) List!26402))

(assert (=> mapNonEmpty!14564 (= (arr!4786 (_values!3379 (v!29911 (underlying!6399 (v!29912 (underlying!6400 (cache!3390 thiss!28797))))))) (store mapRest!14564 mapKey!14564 mapValue!14564))))

(declare-fun b!2236191 () Bool)

(declare-fun tp!702925 () Bool)

(assert (=> b!2236191 (= e!1429235 tp!702925)))

(declare-fun b!2236192 () Bool)

(declare-fun res!956758 () Bool)

(assert (=> b!2236192 (=> (not res!956758) (not e!1429237))))

(declare-fun validRegex!2425 (Regex!6461) Bool)

(assert (=> b!2236192 (= res!956758 (validRegex!2425 r!4766))))

(declare-fun b!2236193 () Bool)

(assert (=> b!2236193 (= e!1429234 e!1429236)))

(assert (= (and start!217928 res!956757) b!2236192))

(assert (= (and b!2236192 res!956758) b!2236183))

(assert (= (and b!2236183 res!956759) b!2236182))

(assert (= (and b!2236182 res!956756) b!2236187))

(assert (= (and b!2236188 condMapEmpty!14564) mapIsEmpty!14564))

(assert (= (and b!2236188 (not condMapEmpty!14564)) mapNonEmpty!14564))

(assert (= b!2236180 b!2236188))

(assert (= b!2236178 b!2236180))

(assert (= b!2236184 b!2236178))

(assert (= (and b!2236189 ((_ is LongMap!3099) (v!29912 (underlying!6400 (cache!3390 thiss!28797))))) b!2236184))

(assert (= b!2236179 b!2236189))

(assert (= (and b!2236193 ((_ is HashMap!3009) (cache!3390 thiss!28797))) b!2236179))

(assert (= start!217928 b!2236193))

(assert (= (and start!217928 ((_ is ElementMatch!6461) r!4766)) b!2236190))

(assert (= (and start!217928 ((_ is Concat!10799) r!4766)) b!2236181))

(assert (= (and start!217928 ((_ is Star!6461) r!4766)) b!2236191))

(assert (= (and start!217928 ((_ is Union!6461) r!4766)) b!2236186))

(assert (= start!217928 b!2236185))

(declare-fun m!2670124 () Bool)

(assert (=> b!2236187 m!2670124))

(declare-fun m!2670126 () Bool)

(assert (=> b!2236180 m!2670126))

(declare-fun m!2670128 () Bool)

(assert (=> b!2236180 m!2670128))

(declare-fun m!2670130 () Bool)

(assert (=> b!2236182 m!2670130))

(declare-fun m!2670132 () Bool)

(assert (=> start!217928 m!2670132))

(declare-fun m!2670134 () Bool)

(assert (=> start!217928 m!2670134))

(declare-fun m!2670136 () Bool)

(assert (=> start!217928 m!2670136))

(declare-fun m!2670138 () Bool)

(assert (=> b!2236183 m!2670138))

(declare-fun m!2670140 () Bool)

(assert (=> mapNonEmpty!14564 m!2670140))

(declare-fun m!2670142 () Bool)

(assert (=> b!2236192 m!2670142))

(check-sat (not b!2236192) (not mapNonEmpty!14564) (not b!2236188) (not b!2236182) (not start!217928) (not b!2236180) b_and!174847 (not b!2236186) b_and!174845 tp_is_empty!10147 (not b!2236181) (not b!2236187) (not b_next!65561) (not b!2236183) (not b!2236185) (not b!2236191) (not b_next!65563))
(check-sat b_and!174847 b_and!174845 (not b_next!65563) (not b_next!65561))
(get-model)

(declare-fun d!665448 () Bool)

(assert (=> d!665448 (= (array_inv!3435 (_keys!3396 (v!29911 (underlying!6399 (v!29912 (underlying!6400 (cache!3390 thiss!28797))))))) (bvsge (size!20566 (_keys!3396 (v!29911 (underlying!6399 (v!29912 (underlying!6400 (cache!3390 thiss!28797))))))) #b00000000000000000000000000000000))))

(assert (=> b!2236180 d!665448))

(declare-fun d!665450 () Bool)

(assert (=> d!665450 (= (array_inv!3436 (_values!3379 (v!29911 (underlying!6399 (v!29912 (underlying!6400 (cache!3390 thiss!28797))))))) (bvsge (size!20567 (_values!3379 (v!29911 (underlying!6399 (v!29912 (underlying!6400 (cache!3390 thiss!28797))))))) #b00000000000000000000000000000000))))

(assert (=> b!2236180 d!665450))

(declare-fun b!2236216 () Bool)

(declare-fun e!1429259 () Unit!39262)

(declare-fun e!1429262 () Unit!39262)

(assert (=> b!2236216 (= e!1429259 e!1429262)))

(declare-fun res!956767 () Bool)

(declare-fun call!134817 () Bool)

(assert (=> b!2236216 (= res!956767 call!134817)))

(declare-fun e!1429258 () Bool)

(assert (=> b!2236216 (=> (not res!956767) (not e!1429258))))

(declare-fun c!356390 () Bool)

(assert (=> b!2236216 (= c!356390 e!1429258)))

(declare-fun bm!134810 () Bool)

(declare-fun call!134819 () Bool)

(declare-datatypes ((Option!5116 0))(
  ( (None!5115) (Some!5115 (v!29913 tuple2!25702)) )
))
(declare-fun call!134816 () Option!5116)

(declare-fun isDefined!4132 (Option!5116) Bool)

(assert (=> bm!134810 (= call!134819 (isDefined!4132 call!134816))))

(declare-fun b!2236217 () Bool)

(declare-fun Unit!39264 () Unit!39262)

(assert (=> b!2236217 (= e!1429262 Unit!39264)))

(declare-fun b!2236218 () Bool)

(assert (=> b!2236218 (= e!1429258 call!134819)))

(declare-fun lt!831780 () Bool)

(declare-fun d!665452 () Bool)

(declare-datatypes ((ListMap!835 0))(
  ( (ListMap!836 (toList!1353 List!26402)) )
))
(declare-fun contains!4390 (ListMap!835 tuple3!3994) Bool)

(declare-fun map!5405 (MutableMap!3009) ListMap!835)

(assert (=> d!665452 (= lt!831780 (contains!4390 (map!5405 (cache!3390 thiss!28797)) (tuple3!3995 r!4766 ctx!52 a!997)))))

(declare-fun e!1429261 () Bool)

(assert (=> d!665452 (= lt!831780 e!1429261)))

(declare-fun res!956768 () Bool)

(assert (=> d!665452 (=> (not res!956768) (not e!1429261))))

(declare-fun lt!831766 () (_ BitVec 64))

(declare-fun contains!4391 (MutLongMap!3099 (_ BitVec 64)) Bool)

(assert (=> d!665452 (= res!956768 (contains!4391 (v!29912 (underlying!6400 (cache!3390 thiss!28797))) lt!831766))))

(declare-fun lt!831765 () Unit!39262)

(assert (=> d!665452 (= lt!831765 e!1429259)))

(declare-fun c!356389 () Bool)

(declare-datatypes ((tuple2!25704 0))(
  ( (tuple2!25705 (_1!15320 (_ BitVec 64)) (_2!15320 List!26402)) )
))
(declare-datatypes ((List!26403 0))(
  ( (Nil!26309) (Cons!26309 (h!31710 tuple2!25704) (t!199823 List!26403)) )
))
(declare-fun extractMap!108 (List!26403) ListMap!835)

(declare-datatypes ((ListLongMap!325 0))(
  ( (ListLongMap!326 (toList!1354 List!26403)) )
))
(declare-fun map!5406 (MutLongMap!3099) ListLongMap!325)

(assert (=> d!665452 (= c!356389 (contains!4390 (extractMap!108 (toList!1354 (map!5406 (v!29912 (underlying!6400 (cache!3390 thiss!28797)))))) (tuple3!3995 r!4766 ctx!52 a!997)))))

(declare-fun lt!831774 () Unit!39262)

(declare-fun e!1429257 () Unit!39262)

(assert (=> d!665452 (= lt!831774 e!1429257)))

(declare-fun c!356388 () Bool)

(assert (=> d!665452 (= c!356388 (contains!4391 (v!29912 (underlying!6400 (cache!3390 thiss!28797))) lt!831766))))

(declare-fun hash!575 (Hashable!3009 tuple3!3994) (_ BitVec 64))

(assert (=> d!665452 (= lt!831766 (hash!575 (hashF!4932 (cache!3390 thiss!28797)) (tuple3!3995 r!4766 ctx!52 a!997)))))

(assert (=> d!665452 (valid!2342 (cache!3390 thiss!28797))))

(assert (=> d!665452 (= (contains!4389 (cache!3390 thiss!28797) (tuple3!3995 r!4766 ctx!52 a!997)) lt!831780)))

(declare-fun call!134818 () List!26402)

(declare-fun bm!134811 () Bool)

(declare-fun getPair!28 (List!26402 tuple3!3994) Option!5116)

(assert (=> bm!134811 (= call!134816 (getPair!28 call!134818 (tuple3!3995 r!4766 ctx!52 a!997)))))

(declare-fun b!2236219 () Bool)

(declare-fun e!1429260 () Bool)

(assert (=> b!2236219 (= e!1429260 call!134819)))

(declare-fun b!2236220 () Bool)

(declare-fun lt!831773 () Unit!39262)

(assert (=> b!2236220 (= e!1429259 lt!831773)))

(declare-fun lt!831768 () ListLongMap!325)

(declare-fun call!134815 () ListLongMap!325)

(assert (=> b!2236220 (= lt!831768 call!134815)))

(declare-fun lemmaInGenericMapThenInLongMap!28 (ListLongMap!325 tuple3!3994 Hashable!3009) Unit!39262)

(assert (=> b!2236220 (= lt!831773 (lemmaInGenericMapThenInLongMap!28 lt!831768 (tuple3!3995 r!4766 ctx!52 a!997) (hashF!4932 (cache!3390 thiss!28797))))))

(declare-fun res!956766 () Bool)

(assert (=> b!2236220 (= res!956766 call!134817)))

(assert (=> b!2236220 (=> (not res!956766) (not e!1429260))))

(assert (=> b!2236220 e!1429260))

(declare-fun b!2236221 () Bool)

(assert (=> b!2236221 false))

(declare-fun lt!831764 () Unit!39262)

(declare-fun lt!831776 () Unit!39262)

(assert (=> b!2236221 (= lt!831764 lt!831776)))

(declare-fun lt!831771 () ListLongMap!325)

(assert (=> b!2236221 (contains!4390 (extractMap!108 (toList!1354 lt!831771)) (tuple3!3995 r!4766 ctx!52 a!997))))

(declare-fun lemmaInLongMapThenInGenericMap!28 (ListLongMap!325 tuple3!3994 Hashable!3009) Unit!39262)

(assert (=> b!2236221 (= lt!831776 (lemmaInLongMapThenInGenericMap!28 lt!831771 (tuple3!3995 r!4766 ctx!52 a!997) (hashF!4932 (cache!3390 thiss!28797))))))

(assert (=> b!2236221 (= lt!831771 call!134815)))

(declare-fun Unit!39265 () Unit!39262)

(assert (=> b!2236221 (= e!1429262 Unit!39265)))

(declare-fun bm!134812 () Bool)

(declare-fun call!134820 () (_ BitVec 64))

(declare-fun apply!6471 (ListLongMap!325 (_ BitVec 64)) List!26402)

(assert (=> bm!134812 (= call!134818 (apply!6471 (ite c!356389 lt!831768 call!134815) call!134820))))

(declare-fun b!2236222 () Bool)

(assert (=> b!2236222 false))

(declare-fun lt!831770 () Unit!39262)

(declare-fun lt!831778 () Unit!39262)

(assert (=> b!2236222 (= lt!831770 lt!831778)))

(declare-fun lt!831782 () List!26403)

(declare-fun lt!831775 () List!26402)

(declare-fun contains!4392 (List!26403 tuple2!25704) Bool)

(assert (=> b!2236222 (contains!4392 lt!831782 (tuple2!25705 lt!831766 lt!831775))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!29 (List!26403 (_ BitVec 64) List!26402) Unit!39262)

(assert (=> b!2236222 (= lt!831778 (lemmaGetValueByKeyImpliesContainsTuple!29 lt!831782 lt!831766 lt!831775))))

(declare-fun apply!6472 (MutLongMap!3099 (_ BitVec 64)) List!26402)

(assert (=> b!2236222 (= lt!831775 (apply!6472 (v!29912 (underlying!6400 (cache!3390 thiss!28797))) lt!831766))))

(assert (=> b!2236222 (= lt!831782 (toList!1354 (map!5406 (v!29912 (underlying!6400 (cache!3390 thiss!28797))))))))

(declare-fun lt!831772 () Unit!39262)

(declare-fun lt!831781 () Unit!39262)

(assert (=> b!2236222 (= lt!831772 lt!831781)))

(declare-fun lt!831769 () List!26403)

(declare-datatypes ((Option!5117 0))(
  ( (None!5116) (Some!5116 (v!29914 List!26402)) )
))
(declare-fun isDefined!4133 (Option!5117) Bool)

(declare-fun getValueByKey!72 (List!26403 (_ BitVec 64)) Option!5117)

(assert (=> b!2236222 (isDefined!4133 (getValueByKey!72 lt!831769 lt!831766))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!46 (List!26403 (_ BitVec 64)) Unit!39262)

(assert (=> b!2236222 (= lt!831781 (lemmaContainsKeyImpliesGetValueByKeyDefined!46 lt!831769 lt!831766))))

(assert (=> b!2236222 (= lt!831769 (toList!1354 (map!5406 (v!29912 (underlying!6400 (cache!3390 thiss!28797))))))))

(declare-fun lt!831767 () Unit!39262)

(declare-fun lt!831783 () Unit!39262)

(assert (=> b!2236222 (= lt!831767 lt!831783)))

(declare-fun lt!831777 () List!26403)

(declare-fun containsKey!77 (List!26403 (_ BitVec 64)) Bool)

(assert (=> b!2236222 (containsKey!77 lt!831777 lt!831766)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!29 (List!26403 (_ BitVec 64)) Unit!39262)

(assert (=> b!2236222 (= lt!831783 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!29 lt!831777 lt!831766))))

(assert (=> b!2236222 (= lt!831777 (toList!1354 (map!5406 (v!29912 (underlying!6400 (cache!3390 thiss!28797))))))))

(declare-fun e!1429263 () Unit!39262)

(declare-fun Unit!39266 () Unit!39262)

(assert (=> b!2236222 (= e!1429263 Unit!39266)))

(declare-fun bm!134813 () Bool)

(declare-fun contains!4393 (ListLongMap!325 (_ BitVec 64)) Bool)

(assert (=> bm!134813 (= call!134817 (contains!4393 (ite c!356389 lt!831768 call!134815) call!134820))))

(declare-fun b!2236223 () Bool)

(declare-fun Unit!39267 () Unit!39262)

(assert (=> b!2236223 (= e!1429257 Unit!39267)))

(declare-fun b!2236224 () Bool)

(declare-fun Unit!39268 () Unit!39262)

(assert (=> b!2236224 (= e!1429263 Unit!39268)))

(declare-fun bm!134814 () Bool)

(assert (=> bm!134814 (= call!134820 (hash!575 (hashF!4932 (cache!3390 thiss!28797)) (tuple3!3995 r!4766 ctx!52 a!997)))))

(declare-fun b!2236225 () Bool)

(declare-fun lambda!84494 () Int)

(declare-fun forallContained!775 (List!26403 Int tuple2!25704) Unit!39262)

(assert (=> b!2236225 (= e!1429257 (forallContained!775 (toList!1354 (map!5406 (v!29912 (underlying!6400 (cache!3390 thiss!28797))))) lambda!84494 (tuple2!25705 lt!831766 (apply!6472 (v!29912 (underlying!6400 (cache!3390 thiss!28797))) lt!831766))))))

(declare-fun c!356387 () Bool)

(assert (=> b!2236225 (= c!356387 (not (contains!4392 (toList!1354 (map!5406 (v!29912 (underlying!6400 (cache!3390 thiss!28797))))) (tuple2!25705 lt!831766 (apply!6472 (v!29912 (underlying!6400 (cache!3390 thiss!28797))) lt!831766)))))))

(declare-fun lt!831779 () Unit!39262)

(assert (=> b!2236225 (= lt!831779 e!1429263)))

(declare-fun bm!134815 () Bool)

(assert (=> bm!134815 (= call!134815 (map!5406 (v!29912 (underlying!6400 (cache!3390 thiss!28797)))))))

(declare-fun b!2236226 () Bool)

(assert (=> b!2236226 (= e!1429261 (isDefined!4132 (getPair!28 (apply!6472 (v!29912 (underlying!6400 (cache!3390 thiss!28797))) lt!831766) (tuple3!3995 r!4766 ctx!52 a!997))))))

(assert (= (and d!665452 c!356388) b!2236225))

(assert (= (and d!665452 (not c!356388)) b!2236223))

(assert (= (and b!2236225 c!356387) b!2236222))

(assert (= (and b!2236225 (not c!356387)) b!2236224))

(assert (= (and d!665452 c!356389) b!2236220))

(assert (= (and d!665452 (not c!356389)) b!2236216))

(assert (= (and b!2236220 res!956766) b!2236219))

(assert (= (and b!2236216 res!956767) b!2236218))

(assert (= (and b!2236216 c!356390) b!2236221))

(assert (= (and b!2236216 (not c!356390)) b!2236217))

(assert (= (or b!2236220 b!2236219 b!2236216 b!2236218) bm!134814))

(assert (= (or b!2236220 b!2236216 b!2236218 b!2236221) bm!134815))

(assert (= (or b!2236219 b!2236218) bm!134812))

(assert (= (or b!2236220 b!2236216) bm!134813))

(assert (= (or b!2236219 b!2236218) bm!134811))

(assert (= (or b!2236219 b!2236218) bm!134810))

(assert (= (and d!665452 res!956768) b!2236226))

(declare-fun m!2670144 () Bool)

(assert (=> bm!134812 m!2670144))

(declare-fun m!2670146 () Bool)

(assert (=> bm!134811 m!2670146))

(declare-fun m!2670148 () Bool)

(assert (=> b!2236225 m!2670148))

(declare-fun m!2670150 () Bool)

(assert (=> b!2236225 m!2670150))

(declare-fun m!2670152 () Bool)

(assert (=> b!2236225 m!2670152))

(declare-fun m!2670154 () Bool)

(assert (=> b!2236225 m!2670154))

(assert (=> bm!134815 m!2670148))

(assert (=> b!2236226 m!2670150))

(assert (=> b!2236226 m!2670150))

(declare-fun m!2670156 () Bool)

(assert (=> b!2236226 m!2670156))

(assert (=> b!2236226 m!2670156))

(declare-fun m!2670158 () Bool)

(assert (=> b!2236226 m!2670158))

(declare-fun m!2670160 () Bool)

(assert (=> d!665452 m!2670160))

(declare-fun m!2670162 () Bool)

(assert (=> d!665452 m!2670162))

(assert (=> d!665452 m!2670148))

(declare-fun m!2670164 () Bool)

(assert (=> d!665452 m!2670164))

(declare-fun m!2670166 () Bool)

(assert (=> d!665452 m!2670166))

(assert (=> d!665452 m!2670164))

(declare-fun m!2670168 () Bool)

(assert (=> d!665452 m!2670168))

(assert (=> d!665452 m!2670166))

(declare-fun m!2670170 () Bool)

(assert (=> d!665452 m!2670170))

(assert (=> d!665452 m!2670124))

(assert (=> bm!134814 m!2670162))

(declare-fun m!2670172 () Bool)

(assert (=> bm!134813 m!2670172))

(declare-fun m!2670174 () Bool)

(assert (=> b!2236222 m!2670174))

(declare-fun m!2670176 () Bool)

(assert (=> b!2236222 m!2670176))

(declare-fun m!2670178 () Bool)

(assert (=> b!2236222 m!2670178))

(assert (=> b!2236222 m!2670150))

(declare-fun m!2670180 () Bool)

(assert (=> b!2236222 m!2670180))

(declare-fun m!2670182 () Bool)

(assert (=> b!2236222 m!2670182))

(declare-fun m!2670184 () Bool)

(assert (=> b!2236222 m!2670184))

(assert (=> b!2236222 m!2670148))

(assert (=> b!2236222 m!2670174))

(declare-fun m!2670186 () Bool)

(assert (=> b!2236222 m!2670186))

(declare-fun m!2670188 () Bool)

(assert (=> bm!134810 m!2670188))

(declare-fun m!2670190 () Bool)

(assert (=> b!2236220 m!2670190))

(declare-fun m!2670192 () Bool)

(assert (=> b!2236221 m!2670192))

(assert (=> b!2236221 m!2670192))

(declare-fun m!2670194 () Bool)

(assert (=> b!2236221 m!2670194))

(declare-fun m!2670196 () Bool)

(assert (=> b!2236221 m!2670196))

(assert (=> b!2236183 d!665452))

(declare-fun bs!454208 () Bool)

(declare-fun b!2236231 () Bool)

(assert (= bs!454208 (and b!2236231 b!2236225)))

(declare-fun lambda!84497 () Int)

(assert (=> bs!454208 (= lambda!84497 lambda!84494)))

(declare-fun d!665454 () Bool)

(declare-fun res!956773 () Bool)

(declare-fun e!1429266 () Bool)

(assert (=> d!665454 (=> (not res!956773) (not e!1429266))))

(declare-fun valid!2343 (MutLongMap!3099) Bool)

(assert (=> d!665454 (= res!956773 (valid!2343 (v!29912 (underlying!6400 (cache!3390 thiss!28797)))))))

(assert (=> d!665454 (= (valid!2342 (cache!3390 thiss!28797)) e!1429266)))

(declare-fun res!956774 () Bool)

(assert (=> b!2236231 (=> (not res!956774) (not e!1429266))))

(declare-fun forall!5400 (List!26403 Int) Bool)

(assert (=> b!2236231 (= res!956774 (forall!5400 (toList!1354 (map!5406 (v!29912 (underlying!6400 (cache!3390 thiss!28797))))) lambda!84497))))

(declare-fun b!2236232 () Bool)

(declare-fun allKeysSameHashInMap!108 (ListLongMap!325 Hashable!3009) Bool)

(assert (=> b!2236232 (= e!1429266 (allKeysSameHashInMap!108 (map!5406 (v!29912 (underlying!6400 (cache!3390 thiss!28797)))) (hashF!4932 (cache!3390 thiss!28797))))))

(assert (= (and d!665454 res!956773) b!2236231))

(assert (= (and b!2236231 res!956774) b!2236232))

(declare-fun m!2670198 () Bool)

(assert (=> d!665454 m!2670198))

(assert (=> b!2236231 m!2670148))

(declare-fun m!2670200 () Bool)

(assert (=> b!2236231 m!2670200))

(assert (=> b!2236232 m!2670148))

(assert (=> b!2236232 m!2670148))

(declare-fun m!2670202 () Bool)

(assert (=> b!2236232 m!2670202))

(assert (=> b!2236187 d!665454))

(declare-fun bm!134822 () Bool)

(declare-fun call!134829 () Bool)

(declare-fun call!134828 () Bool)

(assert (=> bm!134822 (= call!134829 call!134828)))

(declare-fun b!2236251 () Bool)

(declare-fun e!1429282 () Bool)

(declare-fun e!1429284 () Bool)

(assert (=> b!2236251 (= e!1429282 e!1429284)))

(declare-fun c!356395 () Bool)

(assert (=> b!2236251 (= c!356395 ((_ is Union!6461) r!4766))))

(declare-fun bm!134823 () Bool)

(declare-fun c!356396 () Bool)

(assert (=> bm!134823 (= call!134828 (validRegex!2425 (ite c!356396 (reg!6790 r!4766) (ite c!356395 (regTwo!13435 r!4766) (regTwo!13434 r!4766)))))))

(declare-fun b!2236252 () Bool)

(declare-fun e!1429286 () Bool)

(assert (=> b!2236252 (= e!1429282 e!1429286)))

(declare-fun res!956787 () Bool)

(declare-fun nullable!1783 (Regex!6461) Bool)

(assert (=> b!2236252 (= res!956787 (not (nullable!1783 (reg!6790 r!4766))))))

(assert (=> b!2236252 (=> (not res!956787) (not e!1429286))))

(declare-fun b!2236253 () Bool)

(declare-fun e!1429281 () Bool)

(declare-fun e!1429283 () Bool)

(assert (=> b!2236253 (= e!1429281 e!1429283)))

(declare-fun res!956785 () Bool)

(assert (=> b!2236253 (=> (not res!956785) (not e!1429283))))

(declare-fun call!134827 () Bool)

(assert (=> b!2236253 (= res!956785 call!134827)))

(declare-fun bm!134824 () Bool)

(assert (=> bm!134824 (= call!134827 (validRegex!2425 (ite c!356395 (regOne!13435 r!4766) (regOne!13434 r!4766))))))

(declare-fun b!2236254 () Bool)

(declare-fun e!1429287 () Bool)

(assert (=> b!2236254 (= e!1429287 e!1429282)))

(assert (=> b!2236254 (= c!356396 ((_ is Star!6461) r!4766))))

(declare-fun b!2236255 () Bool)

(declare-fun res!956786 () Bool)

(declare-fun e!1429285 () Bool)

(assert (=> b!2236255 (=> (not res!956786) (not e!1429285))))

(assert (=> b!2236255 (= res!956786 call!134827)))

(assert (=> b!2236255 (= e!1429284 e!1429285)))

(declare-fun d!665456 () Bool)

(declare-fun res!956789 () Bool)

(assert (=> d!665456 (=> res!956789 e!1429287)))

(assert (=> d!665456 (= res!956789 ((_ is ElementMatch!6461) r!4766))))

(assert (=> d!665456 (= (validRegex!2425 r!4766) e!1429287)))

(declare-fun b!2236256 () Bool)

(assert (=> b!2236256 (= e!1429286 call!134828)))

(declare-fun b!2236257 () Bool)

(declare-fun res!956788 () Bool)

(assert (=> b!2236257 (=> res!956788 e!1429281)))

(assert (=> b!2236257 (= res!956788 (not ((_ is Concat!10799) r!4766)))))

(assert (=> b!2236257 (= e!1429284 e!1429281)))

(declare-fun b!2236258 () Bool)

(assert (=> b!2236258 (= e!1429283 call!134829)))

(declare-fun b!2236259 () Bool)

(assert (=> b!2236259 (= e!1429285 call!134829)))

(assert (= (and d!665456 (not res!956789)) b!2236254))

(assert (= (and b!2236254 c!356396) b!2236252))

(assert (= (and b!2236254 (not c!356396)) b!2236251))

(assert (= (and b!2236252 res!956787) b!2236256))

(assert (= (and b!2236251 c!356395) b!2236255))

(assert (= (and b!2236251 (not c!356395)) b!2236257))

(assert (= (and b!2236255 res!956786) b!2236259))

(assert (= (and b!2236257 (not res!956788)) b!2236253))

(assert (= (and b!2236253 res!956785) b!2236258))

(assert (= (or b!2236259 b!2236258) bm!134822))

(assert (= (or b!2236255 b!2236253) bm!134824))

(assert (= (or b!2236256 bm!134822) bm!134823))

(declare-fun m!2670204 () Bool)

(assert (=> bm!134823 m!2670204))

(declare-fun m!2670206 () Bool)

(assert (=> b!2236252 m!2670206))

(declare-fun m!2670208 () Bool)

(assert (=> bm!134824 m!2670208))

(assert (=> b!2236192 d!665456))

(declare-fun d!665458 () Bool)

(declare-fun res!956796 () Bool)

(declare-fun e!1429292 () Bool)

(assert (=> d!665458 (=> (not res!956796) (not e!1429292))))

(assert (=> d!665458 (= res!956796 (valid!2342 (cache!3390 thiss!28797)))))

(assert (=> d!665458 (= (validCacheMapDown!311 (cache!3390 thiss!28797)) e!1429292)))

(declare-fun b!2236266 () Bool)

(declare-fun res!956797 () Bool)

(assert (=> b!2236266 (=> (not res!956797) (not e!1429292))))

(declare-fun invariantList!372 (List!26402) Bool)

(assert (=> b!2236266 (= res!956797 (invariantList!372 (toList!1353 (map!5405 (cache!3390 thiss!28797)))))))

(declare-fun b!2236267 () Bool)

(declare-fun lambda!84500 () Int)

(declare-fun forall!5401 (List!26402 Int) Bool)

(assert (=> b!2236267 (= e!1429292 (forall!5401 (toList!1353 (map!5405 (cache!3390 thiss!28797))) lambda!84500))))

(assert (= (and d!665458 res!956796) b!2236266))

(assert (= (and b!2236266 res!956797) b!2236267))

(assert (=> d!665458 m!2670124))

(assert (=> b!2236266 m!2670164))

(declare-fun m!2670211 () Bool)

(assert (=> b!2236266 m!2670211))

(assert (=> b!2236267 m!2670164))

(declare-fun m!2670213 () Bool)

(assert (=> b!2236267 m!2670213))

(assert (=> start!217928 d!665458))

(declare-fun d!665460 () Bool)

(declare-fun res!956800 () Bool)

(declare-fun e!1429295 () Bool)

(assert (=> d!665460 (=> (not res!956800) (not e!1429295))))

(assert (=> d!665460 (= res!956800 ((_ is HashMap!3009) (cache!3390 thiss!28797)))))

(assert (=> d!665460 (= (inv!35733 thiss!28797) e!1429295)))

(declare-fun b!2236270 () Bool)

(assert (=> b!2236270 (= e!1429295 (validCacheMapDown!311 (cache!3390 thiss!28797)))))

(assert (= (and d!665460 res!956800) b!2236270))

(assert (=> b!2236270 m!2670132))

(assert (=> start!217928 d!665460))

(declare-fun d!665462 () Bool)

(declare-fun lambda!84503 () Int)

(declare-fun forall!5402 (List!26401 Int) Bool)

(assert (=> d!665462 (= (inv!35734 ctx!52) (forall!5402 (exprs!2509 ctx!52) lambda!84503))))

(declare-fun bs!454209 () Bool)

(assert (= bs!454209 d!665462))

(declare-fun m!2670215 () Bool)

(assert (=> bs!454209 m!2670215))

(assert (=> start!217928 d!665462))

(declare-fun bs!454210 () Bool)

(declare-fun b!2236285 () Bool)

(assert (= bs!454210 (and b!2236285 b!2236267)))

(declare-fun lambda!84506 () Int)

(assert (=> bs!454210 (= lambda!84506 lambda!84500)))

(declare-fun b!2236283 () Bool)

(declare-fun e!1429313 () Bool)

(declare-fun e!1429312 () Bool)

(assert (=> b!2236283 (= e!1429313 e!1429312)))

(declare-fun res!956810 () Bool)

(assert (=> b!2236283 (=> (not res!956810) (not e!1429312))))

(assert (=> b!2236283 (= res!956810 (validRegex!2425 r!4766))))

(declare-fun b!2236284 () Bool)

(declare-fun lt!831804 () tuple3!3994)

(declare-fun lt!831809 () tuple3!3994)

(assert (=> b!2236284 (= lt!831804 lt!831809)))

(declare-fun lt!831806 () (InoxSet Context!4018))

(declare-fun apply!6473 (MutableMap!3009 tuple3!3994) (InoxSet Context!4018))

(assert (=> b!2236284 (= lt!831806 (apply!6473 (cache!3390 thiss!28797) lt!831809))))

(declare-fun lt!831805 () (InoxSet Context!4018))

(assert (=> b!2236284 (= lt!831805 (apply!6473 (cache!3390 thiss!28797) lt!831809))))

(declare-fun lt!831808 () (InoxSet Context!4018))

(assert (=> b!2236284 (= lt!831808 (apply!6473 (cache!3390 thiss!28797) lt!831809))))

(declare-fun e!1429311 () Bool)

(declare-fun derivationStepZipperDown!68 (Regex!6461 Context!4018 C!13068) (InoxSet Context!4018))

(assert (=> b!2236284 (= e!1429311 (= (apply!6473 (cache!3390 thiss!28797) lt!831809) (derivationStepZipperDown!68 (_1!15318 lt!831809) (_2!15318 lt!831809) (_3!2467 lt!831809))))))

(declare-fun e!1429314 () Unit!39262)

(declare-fun lt!831807 () Unit!39262)

(assert (=> b!2236285 (= e!1429314 lt!831807)))

(assert (=> b!2236285 (= lt!831809 (tuple3!3995 r!4766 ctx!52 a!997))))

(declare-fun lemmaForallPairsThenForLookup!20 (MutableMap!3009 tuple3!3994 Int) Unit!39262)

(assert (=> b!2236285 (= lt!831807 (lemmaForallPairsThenForLookup!20 (cache!3390 thiss!28797) lt!831809 lambda!84506))))

(declare-fun lt!831802 () tuple2!25702)

(assert (=> b!2236285 (= lt!831802 (tuple2!25703 lt!831809 (apply!6473 (cache!3390 thiss!28797) lt!831809)))))

(declare-fun lt!831810 () (InoxSet Context!4018))

(assert (=> b!2236285 (= lt!831810 (apply!6473 (cache!3390 thiss!28797) lt!831809))))

(declare-fun res!956811 () Bool)

(assert (=> b!2236285 (= res!956811 (validRegex!2425 (_1!15318 lt!831809)))))

(assert (=> b!2236285 (=> (not res!956811) (not e!1429311))))

(assert (=> b!2236285 e!1429311))

(declare-fun d!665464 () Bool)

(assert (=> d!665464 e!1429313))

(declare-fun res!956809 () Bool)

(assert (=> d!665464 (=> res!956809 e!1429313)))

(assert (=> d!665464 (= res!956809 (not (contains!4389 (cache!3390 thiss!28797) (tuple3!3995 r!4766 ctx!52 a!997))))))

(declare-fun lt!831803 () Unit!39262)

(assert (=> d!665464 (= lt!831803 e!1429314)))

(declare-fun c!356399 () Bool)

(assert (=> d!665464 (= c!356399 (contains!4389 (cache!3390 thiss!28797) (tuple3!3995 r!4766 ctx!52 a!997)))))

(assert (=> d!665464 (validCacheMapDown!311 (cache!3390 thiss!28797))))

(assert (=> d!665464 (= (lemmaIfInCacheThenValid!30 thiss!28797 r!4766 ctx!52 a!997) lt!831803)))

(declare-fun b!2236286 () Bool)

(declare-fun Unit!39269 () Unit!39262)

(assert (=> b!2236286 (= e!1429314 Unit!39269)))

(declare-fun b!2236287 () Bool)

(assert (=> b!2236287 (= e!1429312 (= (derivationStepZipperDown!68 r!4766 ctx!52 a!997) (apply!6473 (cache!3390 thiss!28797) (tuple3!3995 r!4766 ctx!52 a!997))))))

(assert (= (and d!665464 c!356399) b!2236285))

(assert (= (and d!665464 (not c!356399)) b!2236286))

(assert (= (and b!2236285 res!956811) b!2236284))

(assert (= (and d!665464 (not res!956809)) b!2236283))

(assert (= (and b!2236283 res!956810) b!2236287))

(declare-fun m!2670217 () Bool)

(assert (=> b!2236284 m!2670217))

(declare-fun m!2670219 () Bool)

(assert (=> b!2236284 m!2670219))

(assert (=> d!665464 m!2670138))

(assert (=> d!665464 m!2670132))

(assert (=> b!2236283 m!2670142))

(declare-fun m!2670221 () Bool)

(assert (=> b!2236287 m!2670221))

(declare-fun m!2670223 () Bool)

(assert (=> b!2236287 m!2670223))

(declare-fun m!2670225 () Bool)

(assert (=> b!2236285 m!2670225))

(assert (=> b!2236285 m!2670217))

(declare-fun m!2670227 () Bool)

(assert (=> b!2236285 m!2670227))

(assert (=> b!2236182 d!665464))

(declare-fun b!2236296 () Bool)

(declare-fun e!1429322 () Bool)

(declare-fun tp!702942 () Bool)

(assert (=> b!2236296 (= e!1429322 tp!702942)))

(declare-fun tp!702941 () Bool)

(declare-fun b!2236297 () Bool)

(declare-fun tp!702944 () Bool)

(declare-fun setRes!20380 () Bool)

(declare-fun e!1429323 () Bool)

(assert (=> b!2236297 (= e!1429323 (and tp!702941 (inv!35734 (_2!15318 (_1!15319 (h!31709 (zeroValue!3357 (v!29911 (underlying!6399 (v!29912 (underlying!6400 (cache!3390 thiss!28797)))))))))) e!1429322 tp_is_empty!10147 setRes!20380 tp!702944))))

(declare-fun condSetEmpty!20380 () Bool)

(assert (=> b!2236297 (= condSetEmpty!20380 (= (_2!15319 (h!31709 (zeroValue!3357 (v!29911 (underlying!6399 (v!29912 (underlying!6400 (cache!3390 thiss!28797)))))))) ((as const (Array Context!4018 Bool)) false)))))

(assert (=> b!2236180 (= tp!702920 e!1429323)))

(declare-fun b!2236298 () Bool)

(declare-fun e!1429321 () Bool)

(declare-fun tp!702943 () Bool)

(assert (=> b!2236298 (= e!1429321 tp!702943)))

(declare-fun setIsEmpty!20380 () Bool)

(assert (=> setIsEmpty!20380 setRes!20380))

(declare-fun setNonEmpty!20380 () Bool)

(declare-fun tp!702945 () Bool)

(declare-fun setElem!20380 () Context!4018)

(assert (=> setNonEmpty!20380 (= setRes!20380 (and tp!702945 (inv!35734 setElem!20380) e!1429321))))

(declare-fun setRest!20380 () (InoxSet Context!4018))

(assert (=> setNonEmpty!20380 (= (_2!15319 (h!31709 (zeroValue!3357 (v!29911 (underlying!6399 (v!29912 (underlying!6400 (cache!3390 thiss!28797)))))))) ((_ map or) (store ((as const (Array Context!4018 Bool)) false) setElem!20380 true) setRest!20380))))

(assert (= b!2236297 b!2236296))

(assert (= (and b!2236297 condSetEmpty!20380) setIsEmpty!20380))

(assert (= (and b!2236297 (not condSetEmpty!20380)) setNonEmpty!20380))

(assert (= setNonEmpty!20380 b!2236298))

(assert (= (and b!2236180 ((_ is Cons!26308) (zeroValue!3357 (v!29911 (underlying!6399 (v!29912 (underlying!6400 (cache!3390 thiss!28797)))))))) b!2236297))

(declare-fun m!2670229 () Bool)

(assert (=> b!2236297 m!2670229))

(declare-fun m!2670231 () Bool)

(assert (=> setNonEmpty!20380 m!2670231))

(declare-fun b!2236299 () Bool)

(declare-fun e!1429325 () Bool)

(declare-fun tp!702947 () Bool)

(assert (=> b!2236299 (= e!1429325 tp!702947)))

(declare-fun tp!702946 () Bool)

(declare-fun e!1429326 () Bool)

(declare-fun b!2236300 () Bool)

(declare-fun tp!702949 () Bool)

(declare-fun setRes!20381 () Bool)

(assert (=> b!2236300 (= e!1429326 (and tp!702946 (inv!35734 (_2!15318 (_1!15319 (h!31709 (minValue!3357 (v!29911 (underlying!6399 (v!29912 (underlying!6400 (cache!3390 thiss!28797)))))))))) e!1429325 tp_is_empty!10147 setRes!20381 tp!702949))))

(declare-fun condSetEmpty!20381 () Bool)

(assert (=> b!2236300 (= condSetEmpty!20381 (= (_2!15319 (h!31709 (minValue!3357 (v!29911 (underlying!6399 (v!29912 (underlying!6400 (cache!3390 thiss!28797)))))))) ((as const (Array Context!4018 Bool)) false)))))

(assert (=> b!2236180 (= tp!702921 e!1429326)))

(declare-fun b!2236301 () Bool)

(declare-fun e!1429324 () Bool)

(declare-fun tp!702948 () Bool)

(assert (=> b!2236301 (= e!1429324 tp!702948)))

(declare-fun setIsEmpty!20381 () Bool)

(assert (=> setIsEmpty!20381 setRes!20381))

(declare-fun setNonEmpty!20381 () Bool)

(declare-fun setElem!20381 () Context!4018)

(declare-fun tp!702950 () Bool)

(assert (=> setNonEmpty!20381 (= setRes!20381 (and tp!702950 (inv!35734 setElem!20381) e!1429324))))

(declare-fun setRest!20381 () (InoxSet Context!4018))

(assert (=> setNonEmpty!20381 (= (_2!15319 (h!31709 (minValue!3357 (v!29911 (underlying!6399 (v!29912 (underlying!6400 (cache!3390 thiss!28797)))))))) ((_ map or) (store ((as const (Array Context!4018 Bool)) false) setElem!20381 true) setRest!20381))))

(assert (= b!2236300 b!2236299))

(assert (= (and b!2236300 condSetEmpty!20381) setIsEmpty!20381))

(assert (= (and b!2236300 (not condSetEmpty!20381)) setNonEmpty!20381))

(assert (= setNonEmpty!20381 b!2236301))

(assert (= (and b!2236180 ((_ is Cons!26308) (minValue!3357 (v!29911 (underlying!6399 (v!29912 (underlying!6400 (cache!3390 thiss!28797)))))))) b!2236300))

(declare-fun m!2670233 () Bool)

(assert (=> b!2236300 m!2670233))

(declare-fun m!2670235 () Bool)

(assert (=> setNonEmpty!20381 m!2670235))

(declare-fun b!2236306 () Bool)

(declare-fun e!1429329 () Bool)

(declare-fun tp!702955 () Bool)

(declare-fun tp!702956 () Bool)

(assert (=> b!2236306 (= e!1429329 (and tp!702955 tp!702956))))

(assert (=> b!2236185 (= tp!702924 e!1429329)))

(assert (= (and b!2236185 ((_ is Cons!26307) (exprs!2509 ctx!52))) b!2236306))

(declare-fun b!2236307 () Bool)

(declare-fun e!1429331 () Bool)

(declare-fun tp!702958 () Bool)

(assert (=> b!2236307 (= e!1429331 tp!702958)))

(declare-fun setRes!20382 () Bool)

(declare-fun tp!702957 () Bool)

(declare-fun b!2236308 () Bool)

(declare-fun tp!702960 () Bool)

(declare-fun e!1429332 () Bool)

(assert (=> b!2236308 (= e!1429332 (and tp!702957 (inv!35734 (_2!15318 (_1!15319 (h!31709 mapDefault!14564)))) e!1429331 tp_is_empty!10147 setRes!20382 tp!702960))))

(declare-fun condSetEmpty!20382 () Bool)

(assert (=> b!2236308 (= condSetEmpty!20382 (= (_2!15319 (h!31709 mapDefault!14564)) ((as const (Array Context!4018 Bool)) false)))))

(assert (=> b!2236188 (= tp!702926 e!1429332)))

(declare-fun b!2236309 () Bool)

(declare-fun e!1429330 () Bool)

(declare-fun tp!702959 () Bool)

(assert (=> b!2236309 (= e!1429330 tp!702959)))

(declare-fun setIsEmpty!20382 () Bool)

(assert (=> setIsEmpty!20382 setRes!20382))

(declare-fun setNonEmpty!20382 () Bool)

(declare-fun setElem!20382 () Context!4018)

(declare-fun tp!702961 () Bool)

(assert (=> setNonEmpty!20382 (= setRes!20382 (and tp!702961 (inv!35734 setElem!20382) e!1429330))))

(declare-fun setRest!20382 () (InoxSet Context!4018))

(assert (=> setNonEmpty!20382 (= (_2!15319 (h!31709 mapDefault!14564)) ((_ map or) (store ((as const (Array Context!4018 Bool)) false) setElem!20382 true) setRest!20382))))

(assert (= b!2236308 b!2236307))

(assert (= (and b!2236308 condSetEmpty!20382) setIsEmpty!20382))

(assert (= (and b!2236308 (not condSetEmpty!20382)) setNonEmpty!20382))

(assert (= setNonEmpty!20382 b!2236309))

(assert (= (and b!2236188 ((_ is Cons!26308) mapDefault!14564)) b!2236308))

(declare-fun m!2670237 () Bool)

(assert (=> b!2236308 m!2670237))

(declare-fun m!2670239 () Bool)

(assert (=> setNonEmpty!20382 m!2670239))

(declare-fun b!2236323 () Bool)

(declare-fun e!1429335 () Bool)

(declare-fun tp!702973 () Bool)

(declare-fun tp!702975 () Bool)

(assert (=> b!2236323 (= e!1429335 (and tp!702973 tp!702975))))

(declare-fun b!2236320 () Bool)

(assert (=> b!2236320 (= e!1429335 tp_is_empty!10147)))

(declare-fun b!2236321 () Bool)

(declare-fun tp!702976 () Bool)

(declare-fun tp!702974 () Bool)

(assert (=> b!2236321 (= e!1429335 (and tp!702976 tp!702974))))

(declare-fun b!2236322 () Bool)

(declare-fun tp!702972 () Bool)

(assert (=> b!2236322 (= e!1429335 tp!702972)))

(assert (=> b!2236191 (= tp!702925 e!1429335)))

(assert (= (and b!2236191 ((_ is ElementMatch!6461) (reg!6790 r!4766))) b!2236320))

(assert (= (and b!2236191 ((_ is Concat!10799) (reg!6790 r!4766))) b!2236321))

(assert (= (and b!2236191 ((_ is Star!6461) (reg!6790 r!4766))) b!2236322))

(assert (= (and b!2236191 ((_ is Union!6461) (reg!6790 r!4766))) b!2236323))

(declare-fun b!2236338 () Bool)

(declare-fun e!1429352 () Bool)

(declare-fun tp!703005 () Bool)

(assert (=> b!2236338 (= e!1429352 tp!703005)))

(declare-fun b!2236339 () Bool)

(declare-fun e!1429353 () Bool)

(declare-fun tp!703007 () Bool)

(assert (=> b!2236339 (= e!1429353 tp!703007)))

(declare-fun condMapEmpty!14567 () Bool)

(declare-fun mapDefault!14567 () List!26402)

(assert (=> mapNonEmpty!14564 (= condMapEmpty!14567 (= mapRest!14564 ((as const (Array (_ BitVec 32) List!26402)) mapDefault!14567)))))

(declare-fun e!1429350 () Bool)

(declare-fun mapRes!14567 () Bool)

(assert (=> mapNonEmpty!14564 (= tp!702930 (and e!1429350 mapRes!14567))))

(declare-fun b!2236340 () Bool)

(declare-fun e!1429348 () Bool)

(declare-fun tp!703009 () Bool)

(assert (=> b!2236340 (= e!1429348 tp!703009)))

(declare-fun tp!703006 () Bool)

(declare-fun b!2236341 () Bool)

(declare-fun e!1429349 () Bool)

(declare-fun e!1429351 () Bool)

(declare-fun setRes!20387 () Bool)

(declare-fun tp!703003 () Bool)

(declare-fun mapValue!14567 () List!26402)

(assert (=> b!2236341 (= e!1429351 (and tp!703006 (inv!35734 (_2!15318 (_1!15319 (h!31709 mapValue!14567)))) e!1429349 tp_is_empty!10147 setRes!20387 tp!703003))))

(declare-fun condSetEmpty!20387 () Bool)

(assert (=> b!2236341 (= condSetEmpty!20387 (= (_2!15319 (h!31709 mapValue!14567)) ((as const (Array Context!4018 Bool)) false)))))

(declare-fun tp!702999 () Bool)

(declare-fun tp!703008 () Bool)

(declare-fun b!2236342 () Bool)

(declare-fun setRes!20388 () Bool)

(assert (=> b!2236342 (= e!1429350 (and tp!703008 (inv!35734 (_2!15318 (_1!15319 (h!31709 mapDefault!14567)))) e!1429348 tp_is_empty!10147 setRes!20388 tp!702999))))

(declare-fun condSetEmpty!20388 () Bool)

(assert (=> b!2236342 (= condSetEmpty!20388 (= (_2!15319 (h!31709 mapDefault!14567)) ((as const (Array Context!4018 Bool)) false)))))

(declare-fun tp!703004 () Bool)

(declare-fun setElem!20388 () Context!4018)

(declare-fun setNonEmpty!20387 () Bool)

(assert (=> setNonEmpty!20387 (= setRes!20387 (and tp!703004 (inv!35734 setElem!20388) e!1429353))))

(declare-fun setRest!20387 () (InoxSet Context!4018))

(assert (=> setNonEmpty!20387 (= (_2!15319 (h!31709 mapValue!14567)) ((_ map or) (store ((as const (Array Context!4018 Bool)) false) setElem!20388 true) setRest!20387))))

(declare-fun b!2236343 () Bool)

(declare-fun tp!703000 () Bool)

(assert (=> b!2236343 (= e!1429349 tp!703000)))

(declare-fun setIsEmpty!20387 () Bool)

(assert (=> setIsEmpty!20387 setRes!20388))

(declare-fun mapIsEmpty!14567 () Bool)

(assert (=> mapIsEmpty!14567 mapRes!14567))

(declare-fun setIsEmpty!20388 () Bool)

(assert (=> setIsEmpty!20388 setRes!20387))

(declare-fun setElem!20387 () Context!4018)

(declare-fun tp!703002 () Bool)

(declare-fun setNonEmpty!20388 () Bool)

(assert (=> setNonEmpty!20388 (= setRes!20388 (and tp!703002 (inv!35734 setElem!20387) e!1429352))))

(declare-fun setRest!20388 () (InoxSet Context!4018))

(assert (=> setNonEmpty!20388 (= (_2!15319 (h!31709 mapDefault!14567)) ((_ map or) (store ((as const (Array Context!4018 Bool)) false) setElem!20387 true) setRest!20388))))

(declare-fun mapNonEmpty!14567 () Bool)

(declare-fun tp!703001 () Bool)

(assert (=> mapNonEmpty!14567 (= mapRes!14567 (and tp!703001 e!1429351))))

(declare-fun mapKey!14567 () (_ BitVec 32))

(declare-fun mapRest!14567 () (Array (_ BitVec 32) List!26402))

(assert (=> mapNonEmpty!14567 (= mapRest!14564 (store mapRest!14567 mapKey!14567 mapValue!14567))))

(assert (= (and mapNonEmpty!14564 condMapEmpty!14567) mapIsEmpty!14567))

(assert (= (and mapNonEmpty!14564 (not condMapEmpty!14567)) mapNonEmpty!14567))

(assert (= b!2236341 b!2236343))

(assert (= (and b!2236341 condSetEmpty!20387) setIsEmpty!20388))

(assert (= (and b!2236341 (not condSetEmpty!20387)) setNonEmpty!20387))

(assert (= setNonEmpty!20387 b!2236339))

(assert (= (and mapNonEmpty!14567 ((_ is Cons!26308) mapValue!14567)) b!2236341))

(assert (= b!2236342 b!2236340))

(assert (= (and b!2236342 condSetEmpty!20388) setIsEmpty!20387))

(assert (= (and b!2236342 (not condSetEmpty!20388)) setNonEmpty!20388))

(assert (= setNonEmpty!20388 b!2236338))

(assert (= (and mapNonEmpty!14564 ((_ is Cons!26308) mapDefault!14567)) b!2236342))

(declare-fun m!2670241 () Bool)

(assert (=> mapNonEmpty!14567 m!2670241))

(declare-fun m!2670243 () Bool)

(assert (=> b!2236341 m!2670243))

(declare-fun m!2670245 () Bool)

(assert (=> setNonEmpty!20388 m!2670245))

(declare-fun m!2670247 () Bool)

(assert (=> setNonEmpty!20387 m!2670247))

(declare-fun m!2670249 () Bool)

(assert (=> b!2236342 m!2670249))

(declare-fun b!2236344 () Bool)

(declare-fun e!1429355 () Bool)

(declare-fun tp!703011 () Bool)

(assert (=> b!2236344 (= e!1429355 tp!703011)))

(declare-fun e!1429356 () Bool)

(declare-fun tp!703013 () Bool)

(declare-fun setRes!20389 () Bool)

(declare-fun tp!703010 () Bool)

(declare-fun b!2236345 () Bool)

(assert (=> b!2236345 (= e!1429356 (and tp!703010 (inv!35734 (_2!15318 (_1!15319 (h!31709 mapValue!14564)))) e!1429355 tp_is_empty!10147 setRes!20389 tp!703013))))

(declare-fun condSetEmpty!20389 () Bool)

(assert (=> b!2236345 (= condSetEmpty!20389 (= (_2!15319 (h!31709 mapValue!14564)) ((as const (Array Context!4018 Bool)) false)))))

(assert (=> mapNonEmpty!14564 (= tp!702923 e!1429356)))

(declare-fun b!2236346 () Bool)

(declare-fun e!1429354 () Bool)

(declare-fun tp!703012 () Bool)

(assert (=> b!2236346 (= e!1429354 tp!703012)))

(declare-fun setIsEmpty!20389 () Bool)

(assert (=> setIsEmpty!20389 setRes!20389))

(declare-fun setElem!20389 () Context!4018)

(declare-fun setNonEmpty!20389 () Bool)

(declare-fun tp!703014 () Bool)

(assert (=> setNonEmpty!20389 (= setRes!20389 (and tp!703014 (inv!35734 setElem!20389) e!1429354))))

(declare-fun setRest!20389 () (InoxSet Context!4018))

(assert (=> setNonEmpty!20389 (= (_2!15319 (h!31709 mapValue!14564)) ((_ map or) (store ((as const (Array Context!4018 Bool)) false) setElem!20389 true) setRest!20389))))

(assert (= b!2236345 b!2236344))

(assert (= (and b!2236345 condSetEmpty!20389) setIsEmpty!20389))

(assert (= (and b!2236345 (not condSetEmpty!20389)) setNonEmpty!20389))

(assert (= setNonEmpty!20389 b!2236346))

(assert (= (and mapNonEmpty!14564 ((_ is Cons!26308) mapValue!14564)) b!2236345))

(declare-fun m!2670251 () Bool)

(assert (=> b!2236345 m!2670251))

(declare-fun m!2670253 () Bool)

(assert (=> setNonEmpty!20389 m!2670253))

(declare-fun b!2236350 () Bool)

(declare-fun e!1429357 () Bool)

(declare-fun tp!703016 () Bool)

(declare-fun tp!703018 () Bool)

(assert (=> b!2236350 (= e!1429357 (and tp!703016 tp!703018))))

(declare-fun b!2236347 () Bool)

(assert (=> b!2236347 (= e!1429357 tp_is_empty!10147)))

(declare-fun b!2236348 () Bool)

(declare-fun tp!703019 () Bool)

(declare-fun tp!703017 () Bool)

(assert (=> b!2236348 (= e!1429357 (and tp!703019 tp!703017))))

(declare-fun b!2236349 () Bool)

(declare-fun tp!703015 () Bool)

(assert (=> b!2236349 (= e!1429357 tp!703015)))

(assert (=> b!2236181 (= tp!702928 e!1429357)))

(assert (= (and b!2236181 ((_ is ElementMatch!6461) (regOne!13434 r!4766))) b!2236347))

(assert (= (and b!2236181 ((_ is Concat!10799) (regOne!13434 r!4766))) b!2236348))

(assert (= (and b!2236181 ((_ is Star!6461) (regOne!13434 r!4766))) b!2236349))

(assert (= (and b!2236181 ((_ is Union!6461) (regOne!13434 r!4766))) b!2236350))

(declare-fun b!2236354 () Bool)

(declare-fun e!1429358 () Bool)

(declare-fun tp!703021 () Bool)

(declare-fun tp!703023 () Bool)

(assert (=> b!2236354 (= e!1429358 (and tp!703021 tp!703023))))

(declare-fun b!2236351 () Bool)

(assert (=> b!2236351 (= e!1429358 tp_is_empty!10147)))

(declare-fun b!2236352 () Bool)

(declare-fun tp!703024 () Bool)

(declare-fun tp!703022 () Bool)

(assert (=> b!2236352 (= e!1429358 (and tp!703024 tp!703022))))

(declare-fun b!2236353 () Bool)

(declare-fun tp!703020 () Bool)

(assert (=> b!2236353 (= e!1429358 tp!703020)))

(assert (=> b!2236181 (= tp!702918 e!1429358)))

(assert (= (and b!2236181 ((_ is ElementMatch!6461) (regTwo!13434 r!4766))) b!2236351))

(assert (= (and b!2236181 ((_ is Concat!10799) (regTwo!13434 r!4766))) b!2236352))

(assert (= (and b!2236181 ((_ is Star!6461) (regTwo!13434 r!4766))) b!2236353))

(assert (= (and b!2236181 ((_ is Union!6461) (regTwo!13434 r!4766))) b!2236354))

(declare-fun b!2236358 () Bool)

(declare-fun e!1429359 () Bool)

(declare-fun tp!703026 () Bool)

(declare-fun tp!703028 () Bool)

(assert (=> b!2236358 (= e!1429359 (and tp!703026 tp!703028))))

(declare-fun b!2236355 () Bool)

(assert (=> b!2236355 (= e!1429359 tp_is_empty!10147)))

(declare-fun b!2236356 () Bool)

(declare-fun tp!703029 () Bool)

(declare-fun tp!703027 () Bool)

(assert (=> b!2236356 (= e!1429359 (and tp!703029 tp!703027))))

(declare-fun b!2236357 () Bool)

(declare-fun tp!703025 () Bool)

(assert (=> b!2236357 (= e!1429359 tp!703025)))

(assert (=> b!2236186 (= tp!702927 e!1429359)))

(assert (= (and b!2236186 ((_ is ElementMatch!6461) (regOne!13435 r!4766))) b!2236355))

(assert (= (and b!2236186 ((_ is Concat!10799) (regOne!13435 r!4766))) b!2236356))

(assert (= (and b!2236186 ((_ is Star!6461) (regOne!13435 r!4766))) b!2236357))

(assert (= (and b!2236186 ((_ is Union!6461) (regOne!13435 r!4766))) b!2236358))

(declare-fun b!2236362 () Bool)

(declare-fun e!1429360 () Bool)

(declare-fun tp!703031 () Bool)

(declare-fun tp!703033 () Bool)

(assert (=> b!2236362 (= e!1429360 (and tp!703031 tp!703033))))

(declare-fun b!2236359 () Bool)

(assert (=> b!2236359 (= e!1429360 tp_is_empty!10147)))

(declare-fun b!2236360 () Bool)

(declare-fun tp!703034 () Bool)

(declare-fun tp!703032 () Bool)

(assert (=> b!2236360 (= e!1429360 (and tp!703034 tp!703032))))

(declare-fun b!2236361 () Bool)

(declare-fun tp!703030 () Bool)

(assert (=> b!2236361 (= e!1429360 tp!703030)))

(assert (=> b!2236186 (= tp!702919 e!1429360)))

(assert (= (and b!2236186 ((_ is ElementMatch!6461) (regTwo!13435 r!4766))) b!2236359))

(assert (= (and b!2236186 ((_ is Concat!10799) (regTwo!13435 r!4766))) b!2236360))

(assert (= (and b!2236186 ((_ is Star!6461) (regTwo!13435 r!4766))) b!2236361))

(assert (= (and b!2236186 ((_ is Union!6461) (regTwo!13435 r!4766))) b!2236362))

(check-sat (not b!2236221) (not b_next!65561) (not b!2236349) (not b!2236360) (not b!2236344) (not b!2236266) (not b!2236299) (not b!2236231) (not b!2236358) (not b!2236285) (not b!2236321) (not b!2236345) (not b!2236341) (not b!2236296) (not setNonEmpty!20381) (not b!2236353) (not b!2236283) (not b!2236287) (not setNonEmpty!20387) (not d!665464) (not b!2236252) (not b!2236220) (not b!2236225) (not b!2236346) (not bm!134813) (not b!2236301) (not bm!134812) (not bm!134814) (not bm!134811) (not b!2236300) (not b!2236322) (not mapNonEmpty!14567) (not b!2236354) (not bm!134824) (not b!2236222) (not b!2236284) (not b!2236308) (not d!665454) (not b!2236309) (not b!2236297) (not setNonEmpty!20380) (not b!2236307) (not b!2236340) (not b!2236356) (not b!2236298) (not b!2236352) (not d!665458) (not b!2236342) (not b!2236270) (not bm!134815) (not b!2236226) (not bm!134823) b_and!174847 (not b!2236361) (not d!665452) (not b!2236267) (not bm!134810) (not b!2236339) (not b!2236232) b_and!174845 (not b!2236343) (not b!2236338) (not b!2236323) (not b!2236348) tp_is_empty!10147 (not b!2236362) (not b_next!65563) (not b!2236357) (not setNonEmpty!20382) (not setNonEmpty!20388) (not b!2236350) (not d!665462) (not b!2236306) (not setNonEmpty!20389))
(check-sat b_and!174847 b_and!174845 (not b_next!65563) (not b_next!65561))

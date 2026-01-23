; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!297210 () Bool)

(assert start!297210)

(declare-fun b!3173682 () Bool)

(declare-fun b_free!83385 () Bool)

(declare-fun b_next!84089 () Bool)

(assert (=> b!3173682 (= b_free!83385 (not b_next!84089))))

(declare-fun tp!1002982 () Bool)

(declare-fun b_and!209671 () Bool)

(assert (=> b!3173682 (= tp!1002982 b_and!209671)))

(declare-fun b!3173675 () Bool)

(declare-fun b_free!83387 () Bool)

(declare-fun b_next!84091 () Bool)

(assert (=> b!3173675 (= b_free!83387 (not b_next!84091))))

(declare-fun tp!1002984 () Bool)

(declare-fun b_and!209673 () Bool)

(assert (=> b!3173675 (= tp!1002984 b_and!209673)))

(declare-fun b!3173672 () Bool)

(declare-fun e!1976699 () Bool)

(declare-fun e!1976710 () Bool)

(assert (=> b!3173672 (= e!1976699 e!1976710)))

(declare-fun res!1289661 () Bool)

(assert (=> b!3173672 (=> (not res!1289661) (not e!1976710))))

(declare-datatypes ((C!19796 0))(
  ( (C!19797 (val!11934 Int)) )
))
(declare-datatypes ((Regex!9805 0))(
  ( (ElementMatch!9805 (c!533420 C!19796)) (Concat!15126 (regOne!20122 Regex!9805) (regTwo!20122 Regex!9805)) (EmptyExpr!9805) (Star!9805 (reg!10134 Regex!9805)) (EmptyLang!9805) (Union!9805 (regOne!20123 Regex!9805) (regTwo!20123 Regex!9805)) )
))
(declare-datatypes ((tuple2!34884 0))(
  ( (tuple2!34885 (_1!20574 Regex!9805) (_2!20574 C!19796)) )
))
(declare-datatypes ((tuple2!34886 0))(
  ( (tuple2!34887 (_1!20575 tuple2!34884) (_2!20575 Regex!9805)) )
))
(declare-datatypes ((List!35654 0))(
  ( (Nil!35530) (Cons!35530 (h!40950 tuple2!34886) (t!234741 List!35654)) )
))
(declare-datatypes ((array!15154 0))(
  ( (array!15155 (arr!6742 (Array (_ BitVec 32) (_ BitVec 64))) (size!26828 (_ BitVec 32))) )
))
(declare-datatypes ((array!15156 0))(
  ( (array!15157 (arr!6743 (Array (_ BitVec 32) List!35654)) (size!26829 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8452 0))(
  ( (LongMapFixedSize!8453 (defaultEntry!4611 Int) (mask!10922 (_ BitVec 32)) (extraKeys!4475 (_ BitVec 32)) (zeroValue!4485 List!35654) (minValue!4485 List!35654) (_size!8495 (_ BitVec 32)) (_keys!4526 array!15154) (_values!4507 array!15156) (_vacant!4287 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!16713 0))(
  ( (Cell!16714 (v!35304 LongMapFixedSize!8452)) )
))
(declare-datatypes ((MutLongMap!4226 0))(
  ( (LongMap!4226 (underlying!8681 Cell!16713)) (MutLongMapExt!4225 (__x!22784 Int)) )
))
(declare-datatypes ((Cell!16715 0))(
  ( (Cell!16716 (v!35305 MutLongMap!4226)) )
))
(declare-datatypes ((Hashable!4142 0))(
  ( (HashableExt!4141 (__x!22785 Int)) )
))
(declare-datatypes ((MutableMap!4132 0))(
  ( (MutableMapExt!4131 (__x!22786 Int)) (HashMap!4132 (underlying!8682 Cell!16715) (hashF!6174 Hashable!4142) (_size!8496 (_ BitVec 32)) (defaultValue!4303 Int)) )
))
(declare-datatypes ((Cache!534 0))(
  ( (Cache!535 (cache!4278 MutableMap!4132)) )
))
(declare-fun thiss!28445 () Cache!534)

(declare-fun lt!1067043 () tuple2!34884)

(declare-fun contains!6239 (MutableMap!4132 tuple2!34884) Bool)

(assert (=> b!3173672 (= res!1289661 (contains!6239 (cache!4278 thiss!28445) lt!1067043))))

(declare-fun r!4705 () Regex!9805)

(declare-fun c!6979 () C!19796)

(assert (=> b!3173672 (= lt!1067043 (tuple2!34885 r!4705 c!6979))))

(declare-fun b!3173673 () Bool)

(declare-fun e!1976701 () Bool)

(declare-fun e!1976702 () Bool)

(assert (=> b!3173673 (= e!1976701 e!1976702)))

(declare-fun b!3173674 () Bool)

(declare-fun e!1976704 () Bool)

(declare-fun tp_is_empty!17173 () Bool)

(assert (=> b!3173674 (= e!1976704 tp_is_empty!17173)))

(declare-fun e!1976707 () Bool)

(declare-fun e!1976705 () Bool)

(assert (=> b!3173675 (= e!1976707 (and e!1976705 tp!1002984))))

(declare-fun b!3173676 () Bool)

(declare-fun e!1976708 () Bool)

(assert (=> b!3173676 (= e!1976708 e!1976707)))

(declare-fun mapIsEmpty!19136 () Bool)

(declare-fun mapRes!19136 () Bool)

(assert (=> mapIsEmpty!19136 mapRes!19136))

(declare-fun b!3173677 () Bool)

(declare-fun res!1289658 () Bool)

(assert (=> b!3173677 (=> (not res!1289658) (not e!1976699))))

(declare-fun validRegex!4508 (Regex!9805) Bool)

(assert (=> b!3173677 (= res!1289658 (validRegex!4508 r!4705))))

(declare-fun res!1289660 () Bool)

(assert (=> start!297210 (=> (not res!1289660) (not e!1976699))))

(declare-fun validCacheMap!106 (MutableMap!4132) Bool)

(assert (=> start!297210 (= res!1289660 (validCacheMap!106 (cache!4278 thiss!28445)))))

(assert (=> start!297210 e!1976699))

(declare-fun inv!48265 (Cache!534) Bool)

(assert (=> start!297210 (and (inv!48265 thiss!28445) e!1976708)))

(assert (=> start!297210 e!1976704))

(assert (=> start!297210 tp_is_empty!17173))

(declare-fun b!3173678 () Bool)

(declare-fun e!1976703 () Bool)

(declare-fun tp!1002981 () Bool)

(assert (=> b!3173678 (= e!1976703 (and tp!1002981 mapRes!19136))))

(declare-fun condMapEmpty!19136 () Bool)

(declare-fun mapDefault!19136 () List!35654)

(assert (=> b!3173678 (= condMapEmpty!19136 (= (arr!6743 (_values!4507 (v!35304 (underlying!8681 (v!35305 (underlying!8682 (cache!4278 thiss!28445))))))) ((as const (Array (_ BitVec 32) List!35654)) mapDefault!19136)))))

(declare-fun mapNonEmpty!19136 () Bool)

(declare-fun tp!1002980 () Bool)

(declare-fun tp!1002977 () Bool)

(assert (=> mapNonEmpty!19136 (= mapRes!19136 (and tp!1002980 tp!1002977))))

(declare-fun mapKey!19136 () (_ BitVec 32))

(declare-fun mapRest!19136 () (Array (_ BitVec 32) List!35654))

(declare-fun mapValue!19136 () List!35654)

(assert (=> mapNonEmpty!19136 (= (arr!6743 (_values!4507 (v!35304 (underlying!8681 (v!35305 (underlying!8682 (cache!4278 thiss!28445))))))) (store mapRest!19136 mapKey!19136 mapValue!19136))))

(declare-fun b!3173679 () Bool)

(declare-fun lt!1067040 () MutLongMap!4226)

(get-info :version)

(assert (=> b!3173679 (= e!1976705 (and e!1976701 ((_ is LongMap!4226) lt!1067040)))))

(assert (=> b!3173679 (= lt!1067040 (v!35305 (underlying!8682 (cache!4278 thiss!28445))))))

(declare-fun b!3173680 () Bool)

(assert (=> b!3173680 (= e!1976710 (not ((_ is HashMap!4132) (cache!4278 thiss!28445))))))

(declare-fun e!1976700 () Bool)

(assert (=> b!3173680 e!1976700))

(declare-fun res!1289659 () Bool)

(assert (=> b!3173680 (=> (not res!1289659) (not e!1976700))))

(assert (=> b!3173680 (= res!1289659 (validRegex!4508 (_1!20574 lt!1067043)))))

(declare-fun lt!1067044 () Regex!9805)

(declare-fun apply!7982 (MutableMap!4132 tuple2!34884) Regex!9805)

(assert (=> b!3173680 (= lt!1067044 (apply!7982 (cache!4278 thiss!28445) lt!1067043))))

(declare-fun lt!1067042 () tuple2!34886)

(assert (=> b!3173680 (= lt!1067042 (tuple2!34887 lt!1067043 (apply!7982 (cache!4278 thiss!28445) lt!1067043)))))

(declare-datatypes ((Unit!50007 0))(
  ( (Unit!50008) )
))
(declare-fun lt!1067045 () Unit!50007)

(declare-fun lambda!116115 () Int)

(declare-fun lemmaForallPairsThenForLookup!55 (MutableMap!4132 tuple2!34884 Int) Unit!50007)

(assert (=> b!3173680 (= lt!1067045 (lemmaForallPairsThenForLookup!55 (cache!4278 thiss!28445) lt!1067043 lambda!116115))))

(declare-fun b!3173681 () Bool)

(declare-fun derivativeStep!2920 (Regex!9805 C!19796) Regex!9805)

(assert (=> b!3173681 (= e!1976700 (= (apply!7982 (cache!4278 thiss!28445) lt!1067043) (derivativeStep!2920 (_1!20574 lt!1067043) (_2!20574 lt!1067043))))))

(declare-fun lt!1067041 () Regex!9805)

(assert (=> b!3173681 (= lt!1067041 (apply!7982 (cache!4278 thiss!28445) lt!1067043))))

(declare-fun lt!1067039 () Regex!9805)

(assert (=> b!3173681 (= lt!1067039 (apply!7982 (cache!4278 thiss!28445) lt!1067043))))

(declare-fun lt!1067038 () tuple2!34884)

(assert (=> b!3173681 (= lt!1067038 lt!1067043)))

(declare-fun e!1976706 () Bool)

(declare-fun tp!1002983 () Bool)

(declare-fun tp!1002979 () Bool)

(declare-fun array_inv!4836 (array!15154) Bool)

(declare-fun array_inv!4837 (array!15156) Bool)

(assert (=> b!3173682 (= e!1976706 (and tp!1002982 tp!1002983 tp!1002979 (array_inv!4836 (_keys!4526 (v!35304 (underlying!8681 (v!35305 (underlying!8682 (cache!4278 thiss!28445))))))) (array_inv!4837 (_values!4507 (v!35304 (underlying!8681 (v!35305 (underlying!8682 (cache!4278 thiss!28445))))))) e!1976703))))

(declare-fun b!3173683 () Bool)

(declare-fun tp!1002985 () Bool)

(assert (=> b!3173683 (= e!1976704 tp!1002985)))

(declare-fun b!3173684 () Bool)

(declare-fun tp!1002975 () Bool)

(declare-fun tp!1002986 () Bool)

(assert (=> b!3173684 (= e!1976704 (and tp!1002975 tp!1002986))))

(declare-fun b!3173685 () Bool)

(assert (=> b!3173685 (= e!1976702 e!1976706)))

(declare-fun b!3173686 () Bool)

(declare-fun tp!1002976 () Bool)

(declare-fun tp!1002978 () Bool)

(assert (=> b!3173686 (= e!1976704 (and tp!1002976 tp!1002978))))

(assert (= (and start!297210 res!1289660) b!3173677))

(assert (= (and b!3173677 res!1289658) b!3173672))

(assert (= (and b!3173672 res!1289661) b!3173680))

(assert (= (and b!3173680 res!1289659) b!3173681))

(assert (= (and b!3173678 condMapEmpty!19136) mapIsEmpty!19136))

(assert (= (and b!3173678 (not condMapEmpty!19136)) mapNonEmpty!19136))

(assert (= b!3173682 b!3173678))

(assert (= b!3173685 b!3173682))

(assert (= b!3173673 b!3173685))

(assert (= (and b!3173679 ((_ is LongMap!4226) (v!35305 (underlying!8682 (cache!4278 thiss!28445))))) b!3173673))

(assert (= b!3173675 b!3173679))

(assert (= (and b!3173676 ((_ is HashMap!4132) (cache!4278 thiss!28445))) b!3173675))

(assert (= start!297210 b!3173676))

(assert (= (and start!297210 ((_ is ElementMatch!9805) r!4705)) b!3173674))

(assert (= (and start!297210 ((_ is Concat!15126) r!4705)) b!3173686))

(assert (= (and start!297210 ((_ is Star!9805) r!4705)) b!3173683))

(assert (= (and start!297210 ((_ is Union!9805) r!4705)) b!3173684))

(declare-fun m!3431242 () Bool)

(assert (=> b!3173677 m!3431242))

(declare-fun m!3431244 () Bool)

(assert (=> b!3173680 m!3431244))

(declare-fun m!3431246 () Bool)

(assert (=> b!3173680 m!3431246))

(declare-fun m!3431248 () Bool)

(assert (=> b!3173680 m!3431248))

(declare-fun m!3431250 () Bool)

(assert (=> mapNonEmpty!19136 m!3431250))

(declare-fun m!3431252 () Bool)

(assert (=> start!297210 m!3431252))

(declare-fun m!3431254 () Bool)

(assert (=> start!297210 m!3431254))

(assert (=> b!3173681 m!3431246))

(declare-fun m!3431256 () Bool)

(assert (=> b!3173681 m!3431256))

(declare-fun m!3431258 () Bool)

(assert (=> b!3173682 m!3431258))

(declare-fun m!3431260 () Bool)

(assert (=> b!3173682 m!3431260))

(declare-fun m!3431262 () Bool)

(assert (=> b!3173672 m!3431262))

(check-sat (not b!3173681) (not b!3173686) (not b!3173678) (not b!3173684) (not b_next!84089) b_and!209673 tp_is_empty!17173 b_and!209671 (not b!3173680) (not b!3173677) (not b!3173683) (not start!297210) (not mapNonEmpty!19136) (not b!3173672) (not b_next!84091) (not b!3173682))
(check-sat b_and!209671 b_and!209673 (not b_next!84089) (not b_next!84091))
(get-model)

(declare-fun b!3173709 () Bool)

(declare-fun e!1976728 () Unit!50007)

(declare-fun e!1976727 () Unit!50007)

(assert (=> b!3173709 (= e!1976728 e!1976727)))

(declare-fun res!1289668 () Bool)

(declare-fun call!230652 () Bool)

(assert (=> b!3173709 (= res!1289668 call!230652)))

(declare-fun e!1976729 () Bool)

(assert (=> b!3173709 (=> (not res!1289668) (not e!1976729))))

(declare-fun c!533430 () Bool)

(assert (=> b!3173709 (= c!533430 e!1976729)))

(declare-datatypes ((tuple2!34888 0))(
  ( (tuple2!34889 (_1!20576 (_ BitVec 64)) (_2!20576 List!35654)) )
))
(declare-datatypes ((List!35655 0))(
  ( (Nil!35531) (Cons!35531 (h!40951 tuple2!34888) (t!234744 List!35655)) )
))
(declare-datatypes ((ListLongMap!753 0))(
  ( (ListLongMap!754 (toList!2099 List!35655)) )
))
(declare-fun lt!1067100 () ListLongMap!753)

(declare-fun c!533429 () Bool)

(declare-fun call!230649 () ListLongMap!753)

(declare-fun bm!230643 () Bool)

(declare-fun call!230648 () (_ BitVec 64))

(declare-fun contains!6240 (ListLongMap!753 (_ BitVec 64)) Bool)

(assert (=> bm!230643 (= call!230652 (contains!6240 (ite c!533429 lt!1067100 call!230649) call!230648))))

(declare-fun bm!230644 () Bool)

(declare-datatypes ((Option!6933 0))(
  ( (None!6932) (Some!6932 (v!35306 tuple2!34886)) )
))
(declare-fun call!230651 () Option!6933)

(declare-fun call!230653 () List!35654)

(declare-fun getPair!103 (List!35654 tuple2!34884) Option!6933)

(assert (=> bm!230644 (= call!230651 (getPair!103 call!230653 lt!1067043))))

(declare-fun lt!1067088 () (_ BitVec 64))

(declare-fun e!1976731 () Bool)

(declare-fun b!3173710 () Bool)

(declare-fun isDefined!5441 (Option!6933) Bool)

(declare-fun apply!7983 (MutLongMap!4226 (_ BitVec 64)) List!35654)

(assert (=> b!3173710 (= e!1976731 (isDefined!5441 (getPair!103 (apply!7983 (v!35305 (underlying!8682 (cache!4278 thiss!28445))) lt!1067088) lt!1067043)))))

(declare-fun b!3173711 () Bool)

(declare-fun e!1976725 () Unit!50007)

(declare-fun Unit!50009 () Unit!50007)

(assert (=> b!3173711 (= e!1976725 Unit!50009)))

(declare-fun b!3173712 () Bool)

(declare-fun Unit!50010 () Unit!50007)

(assert (=> b!3173712 (= e!1976727 Unit!50010)))

(declare-fun bm!230645 () Bool)

(declare-fun apply!7984 (ListLongMap!753 (_ BitVec 64)) List!35654)

(assert (=> bm!230645 (= call!230653 (apply!7984 (ite c!533429 lt!1067100 call!230649) call!230648))))

(declare-fun b!3173713 () Bool)

(declare-fun call!230650 () Bool)

(assert (=> b!3173713 (= e!1976729 call!230650)))

(declare-fun b!3173714 () Bool)

(assert (=> b!3173714 false))

(declare-fun lt!1067105 () Unit!50007)

(declare-fun lt!1067095 () Unit!50007)

(assert (=> b!3173714 (= lt!1067105 lt!1067095)))

(declare-fun lt!1067090 () ListLongMap!753)

(declare-datatypes ((ListMap!1357 0))(
  ( (ListMap!1358 (toList!2100 List!35654)) )
))
(declare-fun contains!6241 (ListMap!1357 tuple2!34884) Bool)

(declare-fun extractMap!246 (List!35655) ListMap!1357)

(assert (=> b!3173714 (contains!6241 (extractMap!246 (toList!2099 lt!1067090)) lt!1067043)))

(declare-fun lemmaInLongMapThenInGenericMap!103 (ListLongMap!753 tuple2!34884 Hashable!4142) Unit!50007)

(assert (=> b!3173714 (= lt!1067095 (lemmaInLongMapThenInGenericMap!103 lt!1067090 lt!1067043 (hashF!6174 (cache!4278 thiss!28445))))))

(assert (=> b!3173714 (= lt!1067090 call!230649)))

(declare-fun Unit!50011 () Unit!50007)

(assert (=> b!3173714 (= e!1976727 Unit!50011)))

(declare-fun lambda!116118 () Int)

(declare-fun e!1976730 () Unit!50007)

(declare-fun b!3173715 () Bool)

(declare-fun forallContained!1081 (List!35655 Int tuple2!34888) Unit!50007)

(declare-fun map!7977 (MutLongMap!4226) ListLongMap!753)

(assert (=> b!3173715 (= e!1976730 (forallContained!1081 (toList!2099 (map!7977 (v!35305 (underlying!8682 (cache!4278 thiss!28445))))) lambda!116118 (tuple2!34889 lt!1067088 (apply!7983 (v!35305 (underlying!8682 (cache!4278 thiss!28445))) lt!1067088))))))

(declare-fun c!533432 () Bool)

(declare-fun contains!6242 (List!35655 tuple2!34888) Bool)

(assert (=> b!3173715 (= c!533432 (not (contains!6242 (toList!2099 (map!7977 (v!35305 (underlying!8682 (cache!4278 thiss!28445))))) (tuple2!34889 lt!1067088 (apply!7983 (v!35305 (underlying!8682 (cache!4278 thiss!28445))) lt!1067088)))))))

(declare-fun lt!1067093 () Unit!50007)

(assert (=> b!3173715 (= lt!1067093 e!1976725)))

(declare-fun bm!230647 () Bool)

(declare-fun hash!816 (Hashable!4142 tuple2!34884) (_ BitVec 64))

(assert (=> bm!230647 (= call!230648 (hash!816 (hashF!6174 (cache!4278 thiss!28445)) lt!1067043))))

(declare-fun bm!230648 () Bool)

(assert (=> bm!230648 (= call!230649 (map!7977 (v!35305 (underlying!8682 (cache!4278 thiss!28445)))))))

(declare-fun b!3173716 () Bool)

(declare-fun Unit!50012 () Unit!50007)

(assert (=> b!3173716 (= e!1976730 Unit!50012)))

(declare-fun b!3173717 () Bool)

(assert (=> b!3173717 false))

(declare-fun lt!1067102 () Unit!50007)

(declare-fun lt!1067103 () Unit!50007)

(assert (=> b!3173717 (= lt!1067102 lt!1067103)))

(declare-fun lt!1067087 () List!35655)

(declare-fun lt!1067089 () List!35654)

(assert (=> b!3173717 (contains!6242 lt!1067087 (tuple2!34889 lt!1067088 lt!1067089))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!109 (List!35655 (_ BitVec 64) List!35654) Unit!50007)

(assert (=> b!3173717 (= lt!1067103 (lemmaGetValueByKeyImpliesContainsTuple!109 lt!1067087 lt!1067088 lt!1067089))))

(assert (=> b!3173717 (= lt!1067089 (apply!7983 (v!35305 (underlying!8682 (cache!4278 thiss!28445))) lt!1067088))))

(assert (=> b!3173717 (= lt!1067087 (toList!2099 (map!7977 (v!35305 (underlying!8682 (cache!4278 thiss!28445))))))))

(declare-fun lt!1067092 () Unit!50007)

(declare-fun lt!1067094 () Unit!50007)

(assert (=> b!3173717 (= lt!1067092 lt!1067094)))

(declare-fun lt!1067096 () List!35655)

(declare-datatypes ((Option!6934 0))(
  ( (None!6933) (Some!6933 (v!35307 List!35654)) )
))
(declare-fun isDefined!5442 (Option!6934) Bool)

(declare-fun getValueByKey!191 (List!35655 (_ BitVec 64)) Option!6934)

(assert (=> b!3173717 (isDefined!5442 (getValueByKey!191 lt!1067096 lt!1067088))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!137 (List!35655 (_ BitVec 64)) Unit!50007)

(assert (=> b!3173717 (= lt!1067094 (lemmaContainsKeyImpliesGetValueByKeyDefined!137 lt!1067096 lt!1067088))))

(assert (=> b!3173717 (= lt!1067096 (toList!2099 (map!7977 (v!35305 (underlying!8682 (cache!4278 thiss!28445))))))))

(declare-fun lt!1067097 () Unit!50007)

(declare-fun lt!1067104 () Unit!50007)

(assert (=> b!3173717 (= lt!1067097 lt!1067104)))

(declare-fun lt!1067101 () List!35655)

(declare-fun containsKey!205 (List!35655 (_ BitVec 64)) Bool)

(assert (=> b!3173717 (containsKey!205 lt!1067101 lt!1067088)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!104 (List!35655 (_ BitVec 64)) Unit!50007)

(assert (=> b!3173717 (= lt!1067104 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!104 lt!1067101 lt!1067088))))

(assert (=> b!3173717 (= lt!1067101 (toList!2099 (map!7977 (v!35305 (underlying!8682 (cache!4278 thiss!28445))))))))

(declare-fun Unit!50013 () Unit!50007)

(assert (=> b!3173717 (= e!1976725 Unit!50013)))

(declare-fun b!3173718 () Bool)

(declare-fun e!1976726 () Bool)

(assert (=> b!3173718 (= e!1976726 call!230650)))

(declare-fun b!3173719 () Bool)

(declare-fun lt!1067091 () Unit!50007)

(assert (=> b!3173719 (= e!1976728 lt!1067091)))

(assert (=> b!3173719 (= lt!1067100 call!230649)))

(declare-fun lemmaInGenericMapThenInLongMap!103 (ListLongMap!753 tuple2!34884 Hashable!4142) Unit!50007)

(assert (=> b!3173719 (= lt!1067091 (lemmaInGenericMapThenInLongMap!103 lt!1067100 lt!1067043 (hashF!6174 (cache!4278 thiss!28445))))))

(declare-fun res!1289669 () Bool)

(assert (=> b!3173719 (= res!1289669 call!230652)))

(assert (=> b!3173719 (=> (not res!1289669) (not e!1976726))))

(assert (=> b!3173719 e!1976726))

(declare-fun d!869380 () Bool)

(declare-fun lt!1067098 () Bool)

(declare-fun map!7978 (MutableMap!4132) ListMap!1357)

(assert (=> d!869380 (= lt!1067098 (contains!6241 (map!7978 (cache!4278 thiss!28445)) lt!1067043))))

(assert (=> d!869380 (= lt!1067098 e!1976731)))

(declare-fun res!1289670 () Bool)

(assert (=> d!869380 (=> (not res!1289670) (not e!1976731))))

(declare-fun contains!6243 (MutLongMap!4226 (_ BitVec 64)) Bool)

(assert (=> d!869380 (= res!1289670 (contains!6243 (v!35305 (underlying!8682 (cache!4278 thiss!28445))) lt!1067088))))

(declare-fun lt!1067099 () Unit!50007)

(assert (=> d!869380 (= lt!1067099 e!1976728)))

(assert (=> d!869380 (= c!533429 (contains!6241 (extractMap!246 (toList!2099 (map!7977 (v!35305 (underlying!8682 (cache!4278 thiss!28445)))))) lt!1067043))))

(declare-fun lt!1067086 () Unit!50007)

(assert (=> d!869380 (= lt!1067086 e!1976730)))

(declare-fun c!533431 () Bool)

(assert (=> d!869380 (= c!533431 (contains!6243 (v!35305 (underlying!8682 (cache!4278 thiss!28445))) lt!1067088))))

(assert (=> d!869380 (= lt!1067088 (hash!816 (hashF!6174 (cache!4278 thiss!28445)) lt!1067043))))

(declare-fun valid!3287 (MutableMap!4132) Bool)

(assert (=> d!869380 (valid!3287 (cache!4278 thiss!28445))))

(assert (=> d!869380 (= (contains!6239 (cache!4278 thiss!28445) lt!1067043) lt!1067098)))

(declare-fun bm!230646 () Bool)

(assert (=> bm!230646 (= call!230650 (isDefined!5441 call!230651))))

(assert (= (and d!869380 c!533431) b!3173715))

(assert (= (and d!869380 (not c!533431)) b!3173716))

(assert (= (and b!3173715 c!533432) b!3173717))

(assert (= (and b!3173715 (not c!533432)) b!3173711))

(assert (= (and d!869380 c!533429) b!3173719))

(assert (= (and d!869380 (not c!533429)) b!3173709))

(assert (= (and b!3173719 res!1289669) b!3173718))

(assert (= (and b!3173709 res!1289668) b!3173713))

(assert (= (and b!3173709 c!533430) b!3173714))

(assert (= (and b!3173709 (not c!533430)) b!3173712))

(assert (= (or b!3173719 b!3173718 b!3173709 b!3173713) bm!230647))

(assert (= (or b!3173719 b!3173709 b!3173713 b!3173714) bm!230648))

(assert (= (or b!3173719 b!3173709) bm!230643))

(assert (= (or b!3173718 b!3173713) bm!230645))

(assert (= (or b!3173718 b!3173713) bm!230644))

(assert (= (or b!3173718 b!3173713) bm!230646))

(assert (= (and d!869380 res!1289670) b!3173710))

(declare-fun m!3431264 () Bool)

(assert (=> b!3173710 m!3431264))

(assert (=> b!3173710 m!3431264))

(declare-fun m!3431266 () Bool)

(assert (=> b!3173710 m!3431266))

(assert (=> b!3173710 m!3431266))

(declare-fun m!3431268 () Bool)

(assert (=> b!3173710 m!3431268))

(declare-fun m!3431270 () Bool)

(assert (=> bm!230645 m!3431270))

(declare-fun m!3431272 () Bool)

(assert (=> b!3173719 m!3431272))

(declare-fun m!3431274 () Bool)

(assert (=> bm!230644 m!3431274))

(declare-fun m!3431276 () Bool)

(assert (=> bm!230648 m!3431276))

(declare-fun m!3431278 () Bool)

(assert (=> bm!230647 m!3431278))

(declare-fun m!3431280 () Bool)

(assert (=> bm!230646 m!3431280))

(declare-fun m!3431282 () Bool)

(assert (=> b!3173717 m!3431282))

(declare-fun m!3431284 () Bool)

(assert (=> b!3173717 m!3431284))

(declare-fun m!3431286 () Bool)

(assert (=> b!3173717 m!3431286))

(declare-fun m!3431288 () Bool)

(assert (=> b!3173717 m!3431288))

(assert (=> b!3173717 m!3431288))

(declare-fun m!3431290 () Bool)

(assert (=> b!3173717 m!3431290))

(declare-fun m!3431292 () Bool)

(assert (=> b!3173717 m!3431292))

(assert (=> b!3173717 m!3431276))

(declare-fun m!3431294 () Bool)

(assert (=> b!3173717 m!3431294))

(assert (=> b!3173717 m!3431264))

(declare-fun m!3431296 () Bool)

(assert (=> d!869380 m!3431296))

(assert (=> d!869380 m!3431276))

(declare-fun m!3431298 () Bool)

(assert (=> d!869380 m!3431298))

(declare-fun m!3431300 () Bool)

(assert (=> d!869380 m!3431300))

(declare-fun m!3431302 () Bool)

(assert (=> d!869380 m!3431302))

(assert (=> d!869380 m!3431302))

(declare-fun m!3431304 () Bool)

(assert (=> d!869380 m!3431304))

(assert (=> d!869380 m!3431298))

(assert (=> d!869380 m!3431278))

(declare-fun m!3431306 () Bool)

(assert (=> d!869380 m!3431306))

(declare-fun m!3431308 () Bool)

(assert (=> bm!230643 m!3431308))

(assert (=> b!3173715 m!3431276))

(assert (=> b!3173715 m!3431264))

(declare-fun m!3431310 () Bool)

(assert (=> b!3173715 m!3431310))

(declare-fun m!3431312 () Bool)

(assert (=> b!3173715 m!3431312))

(declare-fun m!3431314 () Bool)

(assert (=> b!3173714 m!3431314))

(assert (=> b!3173714 m!3431314))

(declare-fun m!3431316 () Bool)

(assert (=> b!3173714 m!3431316))

(declare-fun m!3431318 () Bool)

(assert (=> b!3173714 m!3431318))

(assert (=> b!3173672 d!869380))

(declare-fun bs!539644 () Bool)

(declare-fun b!3173727 () Bool)

(assert (= bs!539644 (and b!3173727 b!3173680)))

(declare-fun lambda!116121 () Int)

(assert (=> bs!539644 (= lambda!116121 lambda!116115)))

(declare-fun d!869382 () Bool)

(declare-fun res!1289677 () Bool)

(declare-fun e!1976736 () Bool)

(assert (=> d!869382 (=> (not res!1289677) (not e!1976736))))

(assert (=> d!869382 (= res!1289677 (valid!3287 (cache!4278 thiss!28445)))))

(assert (=> d!869382 (= (validCacheMap!106 (cache!4278 thiss!28445)) e!1976736)))

(declare-fun b!3173726 () Bool)

(declare-fun res!1289678 () Bool)

(assert (=> b!3173726 (=> (not res!1289678) (not e!1976736))))

(declare-fun invariantList!500 (List!35654) Bool)

(assert (=> b!3173726 (= res!1289678 (invariantList!500 (toList!2100 (map!7978 (cache!4278 thiss!28445)))))))

(declare-fun forall!7183 (List!35654 Int) Bool)

(assert (=> b!3173727 (= e!1976736 (forall!7183 (toList!2100 (map!7978 (cache!4278 thiss!28445))) lambda!116121))))

(assert (= (and d!869382 res!1289677) b!3173726))

(assert (= (and b!3173726 res!1289678) b!3173727))

(assert (=> d!869382 m!3431296))

(assert (=> b!3173726 m!3431302))

(declare-fun m!3431321 () Bool)

(assert (=> b!3173726 m!3431321))

(assert (=> b!3173727 m!3431302))

(declare-fun m!3431323 () Bool)

(assert (=> b!3173727 m!3431323))

(assert (=> start!297210 d!869382))

(declare-fun d!869384 () Bool)

(declare-fun res!1289681 () Bool)

(declare-fun e!1976739 () Bool)

(assert (=> d!869384 (=> (not res!1289681) (not e!1976739))))

(assert (=> d!869384 (= res!1289681 ((_ is HashMap!4132) (cache!4278 thiss!28445)))))

(assert (=> d!869384 (= (inv!48265 thiss!28445) e!1976739)))

(declare-fun b!3173730 () Bool)

(assert (=> b!3173730 (= e!1976739 (validCacheMap!106 (cache!4278 thiss!28445)))))

(assert (= (and d!869384 res!1289681) b!3173730))

(assert (=> b!3173730 m!3431252))

(assert (=> start!297210 d!869384))

(declare-fun b!3173749 () Bool)

(declare-fun e!1976757 () Bool)

(declare-fun call!230661 () Bool)

(assert (=> b!3173749 (= e!1976757 call!230661)))

(declare-fun b!3173750 () Bool)

(declare-fun e!1976758 () Bool)

(assert (=> b!3173750 (= e!1976758 call!230661)))

(declare-fun call!230662 () Bool)

(declare-fun c!533437 () Bool)

(declare-fun bm!230655 () Bool)

(declare-fun c!533438 () Bool)

(assert (=> bm!230655 (= call!230662 (validRegex!4508 (ite c!533437 (reg!10134 (_1!20574 lt!1067043)) (ite c!533438 (regOne!20123 (_1!20574 lt!1067043)) (regOne!20122 (_1!20574 lt!1067043))))))))

(declare-fun b!3173751 () Bool)

(declare-fun e!1976759 () Bool)

(assert (=> b!3173751 (= e!1976759 call!230662)))

(declare-fun b!3173752 () Bool)

(declare-fun e!1976754 () Bool)

(declare-fun e!1976755 () Bool)

(assert (=> b!3173752 (= e!1976754 e!1976755)))

(assert (=> b!3173752 (= c!533437 ((_ is Star!9805) (_1!20574 lt!1067043)))))

(declare-fun b!3173753 () Bool)

(declare-fun res!1289694 () Bool)

(declare-fun e!1976756 () Bool)

(assert (=> b!3173753 (=> res!1289694 e!1976756)))

(assert (=> b!3173753 (= res!1289694 (not ((_ is Concat!15126) (_1!20574 lt!1067043))))))

(declare-fun e!1976760 () Bool)

(assert (=> b!3173753 (= e!1976760 e!1976756)))

(declare-fun b!3173754 () Bool)

(assert (=> b!3173754 (= e!1976755 e!1976759)))

(declare-fun res!1289696 () Bool)

(declare-fun nullable!3368 (Regex!9805) Bool)

(assert (=> b!3173754 (= res!1289696 (not (nullable!3368 (reg!10134 (_1!20574 lt!1067043)))))))

(assert (=> b!3173754 (=> (not res!1289696) (not e!1976759))))

(declare-fun b!3173755 () Bool)

(declare-fun res!1289692 () Bool)

(assert (=> b!3173755 (=> (not res!1289692) (not e!1976758))))

(declare-fun call!230660 () Bool)

(assert (=> b!3173755 (= res!1289692 call!230660)))

(assert (=> b!3173755 (= e!1976760 e!1976758)))

(declare-fun bm!230657 () Bool)

(assert (=> bm!230657 (= call!230660 call!230662)))

(declare-fun b!3173756 () Bool)

(assert (=> b!3173756 (= e!1976755 e!1976760)))

(assert (=> b!3173756 (= c!533438 ((_ is Union!9805) (_1!20574 lt!1067043)))))

(declare-fun b!3173757 () Bool)

(assert (=> b!3173757 (= e!1976756 e!1976757)))

(declare-fun res!1289693 () Bool)

(assert (=> b!3173757 (=> (not res!1289693) (not e!1976757))))

(assert (=> b!3173757 (= res!1289693 call!230660)))

(declare-fun d!869386 () Bool)

(declare-fun res!1289695 () Bool)

(assert (=> d!869386 (=> res!1289695 e!1976754)))

(assert (=> d!869386 (= res!1289695 ((_ is ElementMatch!9805) (_1!20574 lt!1067043)))))

(assert (=> d!869386 (= (validRegex!4508 (_1!20574 lt!1067043)) e!1976754)))

(declare-fun bm!230656 () Bool)

(assert (=> bm!230656 (= call!230661 (validRegex!4508 (ite c!533438 (regTwo!20123 (_1!20574 lt!1067043)) (regTwo!20122 (_1!20574 lt!1067043)))))))

(assert (= (and d!869386 (not res!1289695)) b!3173752))

(assert (= (and b!3173752 c!533437) b!3173754))

(assert (= (and b!3173752 (not c!533437)) b!3173756))

(assert (= (and b!3173754 res!1289696) b!3173751))

(assert (= (and b!3173756 c!533438) b!3173755))

(assert (= (and b!3173756 (not c!533438)) b!3173753))

(assert (= (and b!3173755 res!1289692) b!3173750))

(assert (= (and b!3173753 (not res!1289694)) b!3173757))

(assert (= (and b!3173757 res!1289693) b!3173749))

(assert (= (or b!3173750 b!3173749) bm!230656))

(assert (= (or b!3173755 b!3173757) bm!230657))

(assert (= (or b!3173751 bm!230657) bm!230655))

(declare-fun m!3431325 () Bool)

(assert (=> bm!230655 m!3431325))

(declare-fun m!3431327 () Bool)

(assert (=> b!3173754 m!3431327))

(declare-fun m!3431329 () Bool)

(assert (=> bm!230656 m!3431329))

(assert (=> b!3173680 d!869386))

(declare-fun bs!539645 () Bool)

(declare-fun b!3173770 () Bool)

(assert (= bs!539645 (and b!3173770 b!3173715)))

(declare-fun lambda!116128 () Int)

(assert (=> bs!539645 (= lambda!116128 lambda!116118)))

(declare-fun e!1976769 () Bool)

(declare-fun b!3173771 () Bool)

(declare-fun lt!1067173 () Regex!9805)

(declare-datatypes ((Option!6935 0))(
  ( (None!6934) (Some!6934 (v!35308 Regex!9805)) )
))
(declare-fun get!11305 (Option!6935) Regex!9805)

(declare-fun getValueByKey!192 (List!35654 tuple2!34884) Option!6935)

(assert (=> b!3173771 (= e!1976769 (= lt!1067173 (get!11305 (getValueByKey!192 (toList!2100 (map!7978 (cache!4278 thiss!28445))) lt!1067043))))))

(declare-fun b!3173772 () Bool)

(declare-fun e!1976768 () Regex!9805)

(declare-fun dynLambda!14371 (Int tuple2!34884) Regex!9805)

(assert (=> b!3173772 (= e!1976768 (dynLambda!14371 (defaultValue!4303 (cache!4278 thiss!28445)) lt!1067043))))

(declare-fun b!3173773 () Bool)

(assert (=> b!3173773 false))

(declare-fun lt!1067188 () Unit!50007)

(declare-fun lt!1067194 () Unit!50007)

(assert (=> b!3173773 (= lt!1067188 lt!1067194)))

(declare-fun lt!1067183 () List!35655)

(declare-fun lt!1067176 () (_ BitVec 64))

(declare-fun lt!1067170 () List!35654)

(assert (=> b!3173773 (contains!6242 lt!1067183 (tuple2!34889 lt!1067176 lt!1067170))))

(assert (=> b!3173773 (= lt!1067194 (lemmaGetValueByKeyImpliesContainsTuple!109 lt!1067183 lt!1067176 lt!1067170))))

(assert (=> b!3173773 (= lt!1067170 (apply!7983 (v!35305 (underlying!8682 (cache!4278 thiss!28445))) lt!1067176))))

(assert (=> b!3173773 (= lt!1067183 (toList!2099 (map!7977 (v!35305 (underlying!8682 (cache!4278 thiss!28445))))))))

(declare-fun lt!1067167 () Unit!50007)

(declare-fun lt!1067191 () Unit!50007)

(assert (=> b!3173773 (= lt!1067167 lt!1067191)))

(declare-fun lt!1067174 () List!35655)

(assert (=> b!3173773 (isDefined!5442 (getValueByKey!191 lt!1067174 lt!1067176))))

(assert (=> b!3173773 (= lt!1067191 (lemmaContainsKeyImpliesGetValueByKeyDefined!137 lt!1067174 lt!1067176))))

(assert (=> b!3173773 (= lt!1067174 (toList!2099 (map!7977 (v!35305 (underlying!8682 (cache!4278 thiss!28445))))))))

(declare-fun e!1976767 () Unit!50007)

(declare-fun Unit!50014 () Unit!50007)

(assert (=> b!3173773 (= e!1976767 Unit!50014)))

(declare-fun b!3173774 () Bool)

(assert (=> b!3173774 (= e!1976769 (= lt!1067173 (dynLambda!14371 (defaultValue!4303 (cache!4278 thiss!28445)) lt!1067043)))))

(declare-fun b!3173775 () Bool)

(declare-fun Unit!50015 () Unit!50007)

(assert (=> b!3173775 (= e!1976767 Unit!50015)))

(declare-fun d!869388 () Bool)

(assert (=> d!869388 e!1976769))

(declare-fun c!533445 () Bool)

(assert (=> d!869388 (= c!533445 (contains!6239 (cache!4278 thiss!28445) lt!1067043))))

(assert (=> d!869388 (= lt!1067173 e!1976768)))

(declare-fun c!533446 () Bool)

(assert (=> d!869388 (= c!533446 (not (contains!6239 (cache!4278 thiss!28445) lt!1067043)))))

(assert (=> d!869388 (valid!3287 (cache!4278 thiss!28445))))

(assert (=> d!869388 (= (apply!7982 (cache!4278 thiss!28445) lt!1067043) lt!1067173)))

(declare-fun get!11306 (Option!6933) tuple2!34886)

(assert (=> b!3173770 (= e!1976768 (_2!20575 (get!11306 (getPair!103 (apply!7983 (v!35305 (underlying!8682 (cache!4278 thiss!28445))) lt!1067176) lt!1067043))))))

(assert (=> b!3173770 (= lt!1067176 (hash!816 (hashF!6174 (cache!4278 thiss!28445)) lt!1067043))))

(declare-fun c!533447 () Bool)

(assert (=> b!3173770 (= c!533447 (not (contains!6242 (toList!2099 (map!7977 (v!35305 (underlying!8682 (cache!4278 thiss!28445))))) (tuple2!34889 lt!1067176 (apply!7983 (v!35305 (underlying!8682 (cache!4278 thiss!28445))) lt!1067176)))))))

(declare-fun lt!1067178 () Unit!50007)

(assert (=> b!3173770 (= lt!1067178 e!1976767)))

(declare-fun lt!1067187 () Unit!50007)

(assert (=> b!3173770 (= lt!1067187 (forallContained!1081 (toList!2099 (map!7977 (v!35305 (underlying!8682 (cache!4278 thiss!28445))))) lambda!116128 (tuple2!34889 lt!1067176 (apply!7983 (v!35305 (underlying!8682 (cache!4278 thiss!28445))) lt!1067176))))))

(declare-fun lt!1067182 () ListLongMap!753)

(assert (=> b!3173770 (= lt!1067182 (map!7977 (v!35305 (underlying!8682 (cache!4278 thiss!28445)))))))

(declare-fun lt!1067168 () Unit!50007)

(declare-fun lemmaGetPairGetSameValueAsMap!39 (ListLongMap!753 tuple2!34884 Regex!9805 Hashable!4142) Unit!50007)

(assert (=> b!3173770 (= lt!1067168 (lemmaGetPairGetSameValueAsMap!39 lt!1067182 lt!1067043 (_2!20575 (get!11306 (getPair!103 (apply!7983 (v!35305 (underlying!8682 (cache!4278 thiss!28445))) lt!1067176) lt!1067043))) (hashF!6174 (cache!4278 thiss!28445))))))

(declare-fun lt!1067172 () Unit!50007)

(declare-fun lemmaInGenMapThenLongMapContainsHash!45 (ListLongMap!753 tuple2!34884 Hashable!4142) Unit!50007)

(assert (=> b!3173770 (= lt!1067172 (lemmaInGenMapThenLongMapContainsHash!45 lt!1067182 lt!1067043 (hashF!6174 (cache!4278 thiss!28445))))))

(assert (=> b!3173770 (contains!6240 lt!1067182 (hash!816 (hashF!6174 (cache!4278 thiss!28445)) lt!1067043))))

(declare-fun lt!1067181 () Unit!50007)

(assert (=> b!3173770 (= lt!1067181 lt!1067172)))

(declare-fun lt!1067177 () (_ BitVec 64))

(assert (=> b!3173770 (= lt!1067177 (hash!816 (hashF!6174 (cache!4278 thiss!28445)) lt!1067043))))

(declare-fun lt!1067169 () List!35654)

(assert (=> b!3173770 (= lt!1067169 (apply!7984 lt!1067182 (hash!816 (hashF!6174 (cache!4278 thiss!28445)) lt!1067043)))))

(declare-fun lt!1067193 () Unit!50007)

(declare-fun lemmaGetValueImpliesTupleContained!40 (ListLongMap!753 (_ BitVec 64) List!35654) Unit!50007)

(assert (=> b!3173770 (= lt!1067193 (lemmaGetValueImpliesTupleContained!40 lt!1067182 lt!1067177 lt!1067169))))

(assert (=> b!3173770 (contains!6242 (toList!2099 lt!1067182) (tuple2!34889 lt!1067177 lt!1067169))))

(declare-fun lt!1067189 () Unit!50007)

(assert (=> b!3173770 (= lt!1067189 lt!1067193)))

(declare-fun lt!1067192 () Unit!50007)

(assert (=> b!3173770 (= lt!1067192 (forallContained!1081 (toList!2099 lt!1067182) lambda!116128 (tuple2!34889 (hash!816 (hashF!6174 (cache!4278 thiss!28445)) lt!1067043) (apply!7984 lt!1067182 (hash!816 (hashF!6174 (cache!4278 thiss!28445)) lt!1067043)))))))

(declare-fun lt!1067166 () Unit!50007)

(declare-fun lemmaInGenMapThenGetPairDefined!39 (ListLongMap!753 tuple2!34884 Hashable!4142) Unit!50007)

(assert (=> b!3173770 (= lt!1067166 (lemmaInGenMapThenGetPairDefined!39 lt!1067182 lt!1067043 (hashF!6174 (cache!4278 thiss!28445))))))

(declare-fun lt!1067185 () Unit!50007)

(assert (=> b!3173770 (= lt!1067185 (lemmaInGenMapThenLongMapContainsHash!45 lt!1067182 lt!1067043 (hashF!6174 (cache!4278 thiss!28445))))))

(declare-fun lt!1067180 () Unit!50007)

(assert (=> b!3173770 (= lt!1067180 lt!1067185)))

(declare-fun lt!1067179 () (_ BitVec 64))

(assert (=> b!3173770 (= lt!1067179 (hash!816 (hashF!6174 (cache!4278 thiss!28445)) lt!1067043))))

(declare-fun lt!1067190 () List!35654)

(assert (=> b!3173770 (= lt!1067190 (apply!7984 lt!1067182 (hash!816 (hashF!6174 (cache!4278 thiss!28445)) lt!1067043)))))

(declare-fun lt!1067171 () Unit!50007)

(assert (=> b!3173770 (= lt!1067171 (lemmaGetValueImpliesTupleContained!40 lt!1067182 lt!1067179 lt!1067190))))

(assert (=> b!3173770 (contains!6242 (toList!2099 lt!1067182) (tuple2!34889 lt!1067179 lt!1067190))))

(declare-fun lt!1067184 () Unit!50007)

(assert (=> b!3173770 (= lt!1067184 lt!1067171)))

(declare-fun lt!1067195 () Unit!50007)

(assert (=> b!3173770 (= lt!1067195 (forallContained!1081 (toList!2099 lt!1067182) lambda!116128 (tuple2!34889 (hash!816 (hashF!6174 (cache!4278 thiss!28445)) lt!1067043) (apply!7984 lt!1067182 (hash!816 (hashF!6174 (cache!4278 thiss!28445)) lt!1067043)))))))

(assert (=> b!3173770 (isDefined!5441 (getPair!103 (apply!7984 lt!1067182 (hash!816 (hashF!6174 (cache!4278 thiss!28445)) lt!1067043)) lt!1067043))))

(declare-fun lt!1067175 () Unit!50007)

(assert (=> b!3173770 (= lt!1067175 lt!1067166)))

(assert (=> b!3173770 (= (_2!20575 (get!11306 (getPair!103 (apply!7984 lt!1067182 (hash!816 (hashF!6174 (cache!4278 thiss!28445)) lt!1067043)) lt!1067043))) (get!11305 (getValueByKey!192 (toList!2100 (extractMap!246 (toList!2099 lt!1067182))) lt!1067043)))))

(declare-fun lt!1067186 () Unit!50007)

(assert (=> b!3173770 (= lt!1067186 lt!1067168)))

(assert (= (and d!869388 c!533446) b!3173772))

(assert (= (and d!869388 (not c!533446)) b!3173770))

(assert (= (and b!3173770 c!533447) b!3173773))

(assert (= (and b!3173770 (not c!533447)) b!3173775))

(assert (= (and d!869388 c!533445) b!3173771))

(assert (= (and d!869388 (not c!533445)) b!3173774))

(declare-fun b_lambda!86487 () Bool)

(assert (=> (not b_lambda!86487) (not b!3173772)))

(declare-fun t!234743 () Bool)

(declare-fun tb!155111 () Bool)

(assert (=> (and b!3173675 (= (defaultValue!4303 (cache!4278 thiss!28445)) (defaultValue!4303 (cache!4278 thiss!28445))) t!234743) tb!155111))

(assert (=> b!3173772 t!234743))

(declare-fun result!197002 () Bool)

(declare-fun b_and!209675 () Bool)

(assert (= b_and!209673 (and (=> t!234743 result!197002) b_and!209675)))

(declare-fun b_lambda!86489 () Bool)

(assert (=> (not b_lambda!86489) (not b!3173774)))

(assert (=> b!3173774 t!234743))

(declare-fun b_and!209677 () Bool)

(assert (= b_and!209675 (and (=> t!234743 result!197002) b_and!209677)))

(declare-fun m!3431331 () Bool)

(assert (=> b!3173774 m!3431331))

(declare-fun m!3431333 () Bool)

(assert (=> b!3173773 m!3431333))

(assert (=> b!3173773 m!3431276))

(declare-fun m!3431335 () Bool)

(assert (=> b!3173773 m!3431335))

(declare-fun m!3431337 () Bool)

(assert (=> b!3173773 m!3431337))

(declare-fun m!3431339 () Bool)

(assert (=> b!3173773 m!3431339))

(assert (=> b!3173773 m!3431337))

(declare-fun m!3431341 () Bool)

(assert (=> b!3173773 m!3431341))

(declare-fun m!3431343 () Bool)

(assert (=> b!3173773 m!3431343))

(assert (=> b!3173772 m!3431331))

(assert (=> b!3173771 m!3431302))

(declare-fun m!3431345 () Bool)

(assert (=> b!3173771 m!3431345))

(assert (=> b!3173771 m!3431345))

(declare-fun m!3431347 () Bool)

(assert (=> b!3173771 m!3431347))

(assert (=> d!869388 m!3431262))

(assert (=> d!869388 m!3431296))

(declare-fun m!3431349 () Bool)

(assert (=> b!3173770 m!3431349))

(declare-fun m!3431351 () Bool)

(assert (=> b!3173770 m!3431351))

(assert (=> b!3173770 m!3431276))

(declare-fun m!3431353 () Bool)

(assert (=> b!3173770 m!3431353))

(assert (=> b!3173770 m!3431278))

(declare-fun m!3431355 () Bool)

(assert (=> b!3173770 m!3431355))

(declare-fun m!3431357 () Bool)

(assert (=> b!3173770 m!3431357))

(declare-fun m!3431359 () Bool)

(assert (=> b!3173770 m!3431359))

(declare-fun m!3431361 () Bool)

(assert (=> b!3173770 m!3431361))

(declare-fun m!3431363 () Bool)

(assert (=> b!3173770 m!3431363))

(declare-fun m!3431365 () Bool)

(assert (=> b!3173770 m!3431365))

(assert (=> b!3173770 m!3431339))

(declare-fun m!3431367 () Bool)

(assert (=> b!3173770 m!3431367))

(assert (=> b!3173770 m!3431361))

(assert (=> b!3173770 m!3431278))

(declare-fun m!3431369 () Bool)

(assert (=> b!3173770 m!3431369))

(assert (=> b!3173770 m!3431359))

(declare-fun m!3431371 () Bool)

(assert (=> b!3173770 m!3431371))

(declare-fun m!3431373 () Bool)

(assert (=> b!3173770 m!3431373))

(assert (=> b!3173770 m!3431339))

(declare-fun m!3431375 () Bool)

(assert (=> b!3173770 m!3431375))

(declare-fun m!3431377 () Bool)

(assert (=> b!3173770 m!3431377))

(assert (=> b!3173770 m!3431349))

(declare-fun m!3431379 () Bool)

(assert (=> b!3173770 m!3431379))

(assert (=> b!3173770 m!3431369))

(assert (=> b!3173770 m!3431349))

(declare-fun m!3431381 () Bool)

(assert (=> b!3173770 m!3431381))

(assert (=> b!3173770 m!3431375))

(declare-fun m!3431383 () Bool)

(assert (=> b!3173770 m!3431383))

(declare-fun m!3431385 () Bool)

(assert (=> b!3173770 m!3431385))

(assert (=> b!3173770 m!3431278))

(declare-fun m!3431387 () Bool)

(assert (=> b!3173770 m!3431387))

(assert (=> b!3173680 d!869388))

(declare-fun d!869390 () Bool)

(declare-fun dynLambda!14372 (Int tuple2!34886) Bool)

(assert (=> d!869390 (dynLambda!14372 lambda!116115 (tuple2!34887 lt!1067043 (apply!7982 (cache!4278 thiss!28445) lt!1067043)))))

(declare-fun lt!1067198 () Unit!50007)

(declare-fun choose!18520 (MutableMap!4132 tuple2!34884 Int) Unit!50007)

(assert (=> d!869390 (= lt!1067198 (choose!18520 (cache!4278 thiss!28445) lt!1067043 lambda!116115))))

(assert (=> d!869390 (valid!3287 (cache!4278 thiss!28445))))

(assert (=> d!869390 (= (lemmaForallPairsThenForLookup!55 (cache!4278 thiss!28445) lt!1067043 lambda!116115) lt!1067198)))

(declare-fun b_lambda!86491 () Bool)

(assert (=> (not b_lambda!86491) (not d!869390)))

(declare-fun bs!539646 () Bool)

(assert (= bs!539646 d!869390))

(assert (=> bs!539646 m!3431246))

(declare-fun m!3431389 () Bool)

(assert (=> bs!539646 m!3431389))

(declare-fun m!3431391 () Bool)

(assert (=> bs!539646 m!3431391))

(assert (=> bs!539646 m!3431296))

(assert (=> b!3173680 d!869390))

(declare-fun d!869392 () Bool)

(assert (=> d!869392 (= (array_inv!4836 (_keys!4526 (v!35304 (underlying!8681 (v!35305 (underlying!8682 (cache!4278 thiss!28445))))))) (bvsge (size!26828 (_keys!4526 (v!35304 (underlying!8681 (v!35305 (underlying!8682 (cache!4278 thiss!28445))))))) #b00000000000000000000000000000000))))

(assert (=> b!3173682 d!869392))

(declare-fun d!869394 () Bool)

(assert (=> d!869394 (= (array_inv!4837 (_values!4507 (v!35304 (underlying!8681 (v!35305 (underlying!8682 (cache!4278 thiss!28445))))))) (bvsge (size!26829 (_values!4507 (v!35304 (underlying!8681 (v!35305 (underlying!8682 (cache!4278 thiss!28445))))))) #b00000000000000000000000000000000))))

(assert (=> b!3173682 d!869394))

(declare-fun b!3173776 () Bool)

(declare-fun e!1976773 () Bool)

(declare-fun call!230664 () Bool)

(assert (=> b!3173776 (= e!1976773 call!230664)))

(declare-fun b!3173777 () Bool)

(declare-fun e!1976774 () Bool)

(assert (=> b!3173777 (= e!1976774 call!230664)))

(declare-fun c!533449 () Bool)

(declare-fun call!230665 () Bool)

(declare-fun c!533448 () Bool)

(declare-fun bm!230658 () Bool)

(assert (=> bm!230658 (= call!230665 (validRegex!4508 (ite c!533448 (reg!10134 r!4705) (ite c!533449 (regOne!20123 r!4705) (regOne!20122 r!4705)))))))

(declare-fun b!3173778 () Bool)

(declare-fun e!1976775 () Bool)

(assert (=> b!3173778 (= e!1976775 call!230665)))

(declare-fun b!3173779 () Bool)

(declare-fun e!1976770 () Bool)

(declare-fun e!1976771 () Bool)

(assert (=> b!3173779 (= e!1976770 e!1976771)))

(assert (=> b!3173779 (= c!533448 ((_ is Star!9805) r!4705))))

(declare-fun b!3173780 () Bool)

(declare-fun res!1289699 () Bool)

(declare-fun e!1976772 () Bool)

(assert (=> b!3173780 (=> res!1289699 e!1976772)))

(assert (=> b!3173780 (= res!1289699 (not ((_ is Concat!15126) r!4705)))))

(declare-fun e!1976776 () Bool)

(assert (=> b!3173780 (= e!1976776 e!1976772)))

(declare-fun b!3173781 () Bool)

(assert (=> b!3173781 (= e!1976771 e!1976775)))

(declare-fun res!1289701 () Bool)

(assert (=> b!3173781 (= res!1289701 (not (nullable!3368 (reg!10134 r!4705))))))

(assert (=> b!3173781 (=> (not res!1289701) (not e!1976775))))

(declare-fun b!3173782 () Bool)

(declare-fun res!1289697 () Bool)

(assert (=> b!3173782 (=> (not res!1289697) (not e!1976774))))

(declare-fun call!230663 () Bool)

(assert (=> b!3173782 (= res!1289697 call!230663)))

(assert (=> b!3173782 (= e!1976776 e!1976774)))

(declare-fun bm!230660 () Bool)

(assert (=> bm!230660 (= call!230663 call!230665)))

(declare-fun b!3173783 () Bool)

(assert (=> b!3173783 (= e!1976771 e!1976776)))

(assert (=> b!3173783 (= c!533449 ((_ is Union!9805) r!4705))))

(declare-fun b!3173784 () Bool)

(assert (=> b!3173784 (= e!1976772 e!1976773)))

(declare-fun res!1289698 () Bool)

(assert (=> b!3173784 (=> (not res!1289698) (not e!1976773))))

(assert (=> b!3173784 (= res!1289698 call!230663)))

(declare-fun d!869396 () Bool)

(declare-fun res!1289700 () Bool)

(assert (=> d!869396 (=> res!1289700 e!1976770)))

(assert (=> d!869396 (= res!1289700 ((_ is ElementMatch!9805) r!4705))))

(assert (=> d!869396 (= (validRegex!4508 r!4705) e!1976770)))

(declare-fun bm!230659 () Bool)

(assert (=> bm!230659 (= call!230664 (validRegex!4508 (ite c!533449 (regTwo!20123 r!4705) (regTwo!20122 r!4705))))))

(assert (= (and d!869396 (not res!1289700)) b!3173779))

(assert (= (and b!3173779 c!533448) b!3173781))

(assert (= (and b!3173779 (not c!533448)) b!3173783))

(assert (= (and b!3173781 res!1289701) b!3173778))

(assert (= (and b!3173783 c!533449) b!3173782))

(assert (= (and b!3173783 (not c!533449)) b!3173780))

(assert (= (and b!3173782 res!1289697) b!3173777))

(assert (= (and b!3173780 (not res!1289699)) b!3173784))

(assert (= (and b!3173784 res!1289698) b!3173776))

(assert (= (or b!3173777 b!3173776) bm!230659))

(assert (= (or b!3173782 b!3173784) bm!230660))

(assert (= (or b!3173778 bm!230660) bm!230658))

(declare-fun m!3431393 () Bool)

(assert (=> bm!230658 m!3431393))

(declare-fun m!3431395 () Bool)

(assert (=> b!3173781 m!3431395))

(declare-fun m!3431397 () Bool)

(assert (=> bm!230659 m!3431397))

(assert (=> b!3173677 d!869396))

(assert (=> b!3173681 d!869388))

(declare-fun bm!230669 () Bool)

(declare-fun call!230675 () Regex!9805)

(declare-fun call!230677 () Regex!9805)

(assert (=> bm!230669 (= call!230675 call!230677)))

(declare-fun b!3173805 () Bool)

(declare-fun c!533461 () Bool)

(assert (=> b!3173805 (= c!533461 ((_ is Union!9805) (_1!20574 lt!1067043)))))

(declare-fun e!1976787 () Regex!9805)

(declare-fun e!1976791 () Regex!9805)

(assert (=> b!3173805 (= e!1976787 e!1976791)))

(declare-fun b!3173807 () Bool)

(assert (=> b!3173807 (= e!1976787 (ite (= (_2!20574 lt!1067043) (c!533420 (_1!20574 lt!1067043))) EmptyExpr!9805 EmptyLang!9805))))

(declare-fun call!230676 () Regex!9805)

(declare-fun e!1976789 () Regex!9805)

(declare-fun b!3173808 () Bool)

(assert (=> b!3173808 (= e!1976789 (Union!9805 (Concat!15126 call!230675 (regTwo!20122 (_1!20574 lt!1067043))) call!230676))))

(declare-fun b!3173809 () Bool)

(declare-fun e!1976788 () Regex!9805)

(assert (=> b!3173809 (= e!1976788 (Concat!15126 call!230675 (_1!20574 lt!1067043)))))

(declare-fun b!3173810 () Bool)

(declare-fun c!533464 () Bool)

(assert (=> b!3173810 (= c!533464 (nullable!3368 (regOne!20122 (_1!20574 lt!1067043))))))

(assert (=> b!3173810 (= e!1976788 e!1976789)))

(declare-fun b!3173811 () Bool)

(assert (=> b!3173811 (= e!1976791 e!1976788)))

(declare-fun c!533463 () Bool)

(assert (=> b!3173811 (= c!533463 ((_ is Star!9805) (_1!20574 lt!1067043)))))

(declare-fun bm!230670 () Bool)

(assert (=> bm!230670 (= call!230677 (derivativeStep!2920 (ite c!533461 (regTwo!20123 (_1!20574 lt!1067043)) (ite c!533463 (reg!10134 (_1!20574 lt!1067043)) (regOne!20122 (_1!20574 lt!1067043)))) (_2!20574 lt!1067043)))))

(declare-fun bm!230671 () Bool)

(declare-fun call!230674 () Regex!9805)

(assert (=> bm!230671 (= call!230674 (derivativeStep!2920 (ite c!533461 (regOne!20123 (_1!20574 lt!1067043)) (ite c!533464 (regTwo!20122 (_1!20574 lt!1067043)) (regOne!20122 (_1!20574 lt!1067043)))) (_2!20574 lt!1067043)))))

(declare-fun bm!230672 () Bool)

(assert (=> bm!230672 (= call!230676 call!230674)))

(declare-fun b!3173812 () Bool)

(declare-fun e!1976790 () Regex!9805)

(assert (=> b!3173812 (= e!1976790 EmptyLang!9805)))

(declare-fun d!869398 () Bool)

(declare-fun lt!1067201 () Regex!9805)

(assert (=> d!869398 (validRegex!4508 lt!1067201)))

(assert (=> d!869398 (= lt!1067201 e!1976790)))

(declare-fun c!533460 () Bool)

(assert (=> d!869398 (= c!533460 (or ((_ is EmptyExpr!9805) (_1!20574 lt!1067043)) ((_ is EmptyLang!9805) (_1!20574 lt!1067043))))))

(assert (=> d!869398 (validRegex!4508 (_1!20574 lt!1067043))))

(assert (=> d!869398 (= (derivativeStep!2920 (_1!20574 lt!1067043) (_2!20574 lt!1067043)) lt!1067201)))

(declare-fun b!3173806 () Bool)

(assert (=> b!3173806 (= e!1976790 e!1976787)))

(declare-fun c!533462 () Bool)

(assert (=> b!3173806 (= c!533462 ((_ is ElementMatch!9805) (_1!20574 lt!1067043)))))

(declare-fun b!3173813 () Bool)

(assert (=> b!3173813 (= e!1976789 (Union!9805 (Concat!15126 call!230676 (regTwo!20122 (_1!20574 lt!1067043))) EmptyLang!9805))))

(declare-fun b!3173814 () Bool)

(assert (=> b!3173814 (= e!1976791 (Union!9805 call!230674 call!230677))))

(assert (= (and d!869398 c!533460) b!3173812))

(assert (= (and d!869398 (not c!533460)) b!3173806))

(assert (= (and b!3173806 c!533462) b!3173807))

(assert (= (and b!3173806 (not c!533462)) b!3173805))

(assert (= (and b!3173805 c!533461) b!3173814))

(assert (= (and b!3173805 (not c!533461)) b!3173811))

(assert (= (and b!3173811 c!533463) b!3173809))

(assert (= (and b!3173811 (not c!533463)) b!3173810))

(assert (= (and b!3173810 c!533464) b!3173808))

(assert (= (and b!3173810 (not c!533464)) b!3173813))

(assert (= (or b!3173808 b!3173813) bm!230672))

(assert (= (or b!3173809 b!3173808) bm!230669))

(assert (= (or b!3173814 bm!230669) bm!230670))

(assert (= (or b!3173814 bm!230672) bm!230671))

(declare-fun m!3431399 () Bool)

(assert (=> b!3173810 m!3431399))

(declare-fun m!3431401 () Bool)

(assert (=> bm!230670 m!3431401))

(declare-fun m!3431403 () Bool)

(assert (=> bm!230671 m!3431403))

(declare-fun m!3431405 () Bool)

(assert (=> d!869398 m!3431405))

(assert (=> d!869398 m!3431244))

(assert (=> b!3173681 d!869398))

(declare-fun b!3173825 () Bool)

(declare-fun e!1976794 () Bool)

(assert (=> b!3173825 (= e!1976794 tp_is_empty!17173)))

(declare-fun b!3173826 () Bool)

(declare-fun tp!1003000 () Bool)

(declare-fun tp!1002998 () Bool)

(assert (=> b!3173826 (= e!1976794 (and tp!1003000 tp!1002998))))

(declare-fun b!3173827 () Bool)

(declare-fun tp!1003001 () Bool)

(assert (=> b!3173827 (= e!1976794 tp!1003001)))

(declare-fun b!3173828 () Bool)

(declare-fun tp!1002999 () Bool)

(declare-fun tp!1002997 () Bool)

(assert (=> b!3173828 (= e!1976794 (and tp!1002999 tp!1002997))))

(assert (=> b!3173684 (= tp!1002975 e!1976794)))

(assert (= (and b!3173684 ((_ is ElementMatch!9805) (regOne!20123 r!4705))) b!3173825))

(assert (= (and b!3173684 ((_ is Concat!15126) (regOne!20123 r!4705))) b!3173826))

(assert (= (and b!3173684 ((_ is Star!9805) (regOne!20123 r!4705))) b!3173827))

(assert (= (and b!3173684 ((_ is Union!9805) (regOne!20123 r!4705))) b!3173828))

(declare-fun b!3173829 () Bool)

(declare-fun e!1976795 () Bool)

(assert (=> b!3173829 (= e!1976795 tp_is_empty!17173)))

(declare-fun b!3173830 () Bool)

(declare-fun tp!1003005 () Bool)

(declare-fun tp!1003003 () Bool)

(assert (=> b!3173830 (= e!1976795 (and tp!1003005 tp!1003003))))

(declare-fun b!3173831 () Bool)

(declare-fun tp!1003006 () Bool)

(assert (=> b!3173831 (= e!1976795 tp!1003006)))

(declare-fun b!3173832 () Bool)

(declare-fun tp!1003004 () Bool)

(declare-fun tp!1003002 () Bool)

(assert (=> b!3173832 (= e!1976795 (and tp!1003004 tp!1003002))))

(assert (=> b!3173684 (= tp!1002986 e!1976795)))

(assert (= (and b!3173684 ((_ is ElementMatch!9805) (regTwo!20123 r!4705))) b!3173829))

(assert (= (and b!3173684 ((_ is Concat!15126) (regTwo!20123 r!4705))) b!3173830))

(assert (= (and b!3173684 ((_ is Star!9805) (regTwo!20123 r!4705))) b!3173831))

(assert (= (and b!3173684 ((_ is Union!9805) (regTwo!20123 r!4705))) b!3173832))

(declare-fun b!3173833 () Bool)

(declare-fun e!1976796 () Bool)

(assert (=> b!3173833 (= e!1976796 tp_is_empty!17173)))

(declare-fun b!3173834 () Bool)

(declare-fun tp!1003010 () Bool)

(declare-fun tp!1003008 () Bool)

(assert (=> b!3173834 (= e!1976796 (and tp!1003010 tp!1003008))))

(declare-fun b!3173835 () Bool)

(declare-fun tp!1003011 () Bool)

(assert (=> b!3173835 (= e!1976796 tp!1003011)))

(declare-fun b!3173836 () Bool)

(declare-fun tp!1003009 () Bool)

(declare-fun tp!1003007 () Bool)

(assert (=> b!3173836 (= e!1976796 (and tp!1003009 tp!1003007))))

(assert (=> b!3173686 (= tp!1002976 e!1976796)))

(assert (= (and b!3173686 ((_ is ElementMatch!9805) (regOne!20122 r!4705))) b!3173833))

(assert (= (and b!3173686 ((_ is Concat!15126) (regOne!20122 r!4705))) b!3173834))

(assert (= (and b!3173686 ((_ is Star!9805) (regOne!20122 r!4705))) b!3173835))

(assert (= (and b!3173686 ((_ is Union!9805) (regOne!20122 r!4705))) b!3173836))

(declare-fun b!3173837 () Bool)

(declare-fun e!1976797 () Bool)

(assert (=> b!3173837 (= e!1976797 tp_is_empty!17173)))

(declare-fun b!3173838 () Bool)

(declare-fun tp!1003015 () Bool)

(declare-fun tp!1003013 () Bool)

(assert (=> b!3173838 (= e!1976797 (and tp!1003015 tp!1003013))))

(declare-fun b!3173839 () Bool)

(declare-fun tp!1003016 () Bool)

(assert (=> b!3173839 (= e!1976797 tp!1003016)))

(declare-fun b!3173840 () Bool)

(declare-fun tp!1003014 () Bool)

(declare-fun tp!1003012 () Bool)

(assert (=> b!3173840 (= e!1976797 (and tp!1003014 tp!1003012))))

(assert (=> b!3173686 (= tp!1002978 e!1976797)))

(assert (= (and b!3173686 ((_ is ElementMatch!9805) (regTwo!20122 r!4705))) b!3173837))

(assert (= (and b!3173686 ((_ is Concat!15126) (regTwo!20122 r!4705))) b!3173838))

(assert (= (and b!3173686 ((_ is Star!9805) (regTwo!20122 r!4705))) b!3173839))

(assert (= (and b!3173686 ((_ is Union!9805) (regTwo!20122 r!4705))) b!3173840))

(declare-fun e!1976800 () Bool)

(declare-fun b!3173845 () Bool)

(declare-fun tp!1003024 () Bool)

(declare-fun tp!1003025 () Bool)

(declare-fun tp!1003023 () Bool)

(assert (=> b!3173845 (= e!1976800 (and tp!1003023 tp_is_empty!17173 tp!1003024 tp!1003025))))

(assert (=> b!3173682 (= tp!1002983 e!1976800)))

(assert (= (and b!3173682 ((_ is Cons!35530) (zeroValue!4485 (v!35304 (underlying!8681 (v!35305 (underlying!8682 (cache!4278 thiss!28445)))))))) b!3173845))

(declare-fun tp!1003027 () Bool)

(declare-fun tp!1003026 () Bool)

(declare-fun b!3173846 () Bool)

(declare-fun e!1976801 () Bool)

(declare-fun tp!1003028 () Bool)

(assert (=> b!3173846 (= e!1976801 (and tp!1003026 tp_is_empty!17173 tp!1003027 tp!1003028))))

(assert (=> b!3173682 (= tp!1002979 e!1976801)))

(assert (= (and b!3173682 ((_ is Cons!35530) (minValue!4485 (v!35304 (underlying!8681 (v!35305 (underlying!8682 (cache!4278 thiss!28445)))))))) b!3173846))

(declare-fun condMapEmpty!19139 () Bool)

(declare-fun mapDefault!19139 () List!35654)

(assert (=> mapNonEmpty!19136 (= condMapEmpty!19139 (= mapRest!19136 ((as const (Array (_ BitVec 32) List!35654)) mapDefault!19139)))))

(declare-fun e!1976806 () Bool)

(declare-fun mapRes!19139 () Bool)

(assert (=> mapNonEmpty!19136 (= tp!1002980 (and e!1976806 mapRes!19139))))

(declare-fun e!1976807 () Bool)

(declare-fun tp!1003047 () Bool)

(declare-fun tp!1003049 () Bool)

(declare-fun b!3173853 () Bool)

(declare-fun tp!1003043 () Bool)

(assert (=> b!3173853 (= e!1976807 (and tp!1003047 tp_is_empty!17173 tp!1003043 tp!1003049))))

(declare-fun mapIsEmpty!19139 () Bool)

(assert (=> mapIsEmpty!19139 mapRes!19139))

(declare-fun mapNonEmpty!19139 () Bool)

(declare-fun tp!1003046 () Bool)

(assert (=> mapNonEmpty!19139 (= mapRes!19139 (and tp!1003046 e!1976807))))

(declare-fun mapRest!19139 () (Array (_ BitVec 32) List!35654))

(declare-fun mapValue!19139 () List!35654)

(declare-fun mapKey!19139 () (_ BitVec 32))

(assert (=> mapNonEmpty!19139 (= mapRest!19136 (store mapRest!19139 mapKey!19139 mapValue!19139))))

(declare-fun b!3173854 () Bool)

(declare-fun tp!1003044 () Bool)

(declare-fun tp!1003045 () Bool)

(declare-fun tp!1003048 () Bool)

(assert (=> b!3173854 (= e!1976806 (and tp!1003045 tp_is_empty!17173 tp!1003048 tp!1003044))))

(assert (= (and mapNonEmpty!19136 condMapEmpty!19139) mapIsEmpty!19139))

(assert (= (and mapNonEmpty!19136 (not condMapEmpty!19139)) mapNonEmpty!19139))

(assert (= (and mapNonEmpty!19139 ((_ is Cons!35530) mapValue!19139)) b!3173853))

(assert (= (and mapNonEmpty!19136 ((_ is Cons!35530) mapDefault!19139)) b!3173854))

(declare-fun m!3431407 () Bool)

(assert (=> mapNonEmpty!19139 m!3431407))

(declare-fun tp!1003050 () Bool)

(declare-fun tp!1003051 () Bool)

(declare-fun e!1976808 () Bool)

(declare-fun tp!1003052 () Bool)

(declare-fun b!3173855 () Bool)

(assert (=> b!3173855 (= e!1976808 (and tp!1003050 tp_is_empty!17173 tp!1003051 tp!1003052))))

(assert (=> mapNonEmpty!19136 (= tp!1002977 e!1976808)))

(assert (= (and mapNonEmpty!19136 ((_ is Cons!35530) mapValue!19136)) b!3173855))

(declare-fun b!3173856 () Bool)

(declare-fun e!1976809 () Bool)

(assert (=> b!3173856 (= e!1976809 tp_is_empty!17173)))

(declare-fun b!3173857 () Bool)

(declare-fun tp!1003056 () Bool)

(declare-fun tp!1003054 () Bool)

(assert (=> b!3173857 (= e!1976809 (and tp!1003056 tp!1003054))))

(declare-fun b!3173858 () Bool)

(declare-fun tp!1003057 () Bool)

(assert (=> b!3173858 (= e!1976809 tp!1003057)))

(declare-fun b!3173859 () Bool)

(declare-fun tp!1003055 () Bool)

(declare-fun tp!1003053 () Bool)

(assert (=> b!3173859 (= e!1976809 (and tp!1003055 tp!1003053))))

(assert (=> b!3173683 (= tp!1002985 e!1976809)))

(assert (= (and b!3173683 ((_ is ElementMatch!9805) (reg!10134 r!4705))) b!3173856))

(assert (= (and b!3173683 ((_ is Concat!15126) (reg!10134 r!4705))) b!3173857))

(assert (= (and b!3173683 ((_ is Star!9805) (reg!10134 r!4705))) b!3173858))

(assert (= (and b!3173683 ((_ is Union!9805) (reg!10134 r!4705))) b!3173859))

(declare-fun e!1976810 () Bool)

(declare-fun b!3173860 () Bool)

(declare-fun tp!1003059 () Bool)

(declare-fun tp!1003058 () Bool)

(declare-fun tp!1003060 () Bool)

(assert (=> b!3173860 (= e!1976810 (and tp!1003058 tp_is_empty!17173 tp!1003059 tp!1003060))))

(assert (=> b!3173678 (= tp!1002981 e!1976810)))

(assert (= (and b!3173678 ((_ is Cons!35530) mapDefault!19136)) b!3173860))

(declare-fun b_lambda!86493 () Bool)

(assert (= b_lambda!86487 (or (and b!3173675 b_free!83387) b_lambda!86493)))

(declare-fun b_lambda!86495 () Bool)

(assert (= b_lambda!86491 (or b!3173680 b_lambda!86495)))

(declare-fun bs!539647 () Bool)

(declare-fun d!869400 () Bool)

(assert (= bs!539647 (and d!869400 b!3173680)))

(declare-fun res!1289702 () Bool)

(declare-fun e!1976811 () Bool)

(assert (=> bs!539647 (=> (not res!1289702) (not e!1976811))))

(assert (=> bs!539647 (= res!1289702 (validRegex!4508 (_1!20574 (_1!20575 (tuple2!34887 lt!1067043 (apply!7982 (cache!4278 thiss!28445) lt!1067043))))))))

(assert (=> bs!539647 (= (dynLambda!14372 lambda!116115 (tuple2!34887 lt!1067043 (apply!7982 (cache!4278 thiss!28445) lt!1067043))) e!1976811)))

(declare-fun b!3173861 () Bool)

(assert (=> b!3173861 (= e!1976811 (= (_2!20575 (tuple2!34887 lt!1067043 (apply!7982 (cache!4278 thiss!28445) lt!1067043))) (derivativeStep!2920 (_1!20574 (_1!20575 (tuple2!34887 lt!1067043 (apply!7982 (cache!4278 thiss!28445) lt!1067043)))) (_2!20574 (_1!20575 (tuple2!34887 lt!1067043 (apply!7982 (cache!4278 thiss!28445) lt!1067043)))))))))

(assert (= (and bs!539647 res!1289702) b!3173861))

(declare-fun m!3431409 () Bool)

(assert (=> bs!539647 m!3431409))

(declare-fun m!3431411 () Bool)

(assert (=> b!3173861 m!3431411))

(assert (=> d!869390 d!869400))

(declare-fun b_lambda!86497 () Bool)

(assert (= b_lambda!86489 (or (and b!3173675 b_free!83387) b_lambda!86497)))

(check-sat (not b!3173845) (not bm!230647) (not b!3173839) (not bs!539647) (not tb!155111) (not b_lambda!86497) (not bm!230659) (not b!3173832) (not b!3173860) (not b!3173827) (not bm!230655) (not b!3173730) (not b!3173828) (not b!3173859) (not b!3173838) (not b!3173770) (not bm!230656) (not b!3173810) (not b!3173754) (not b!3173857) (not d!869398) (not b!3173719) (not d!869382) (not bm!230644) (not b!3173726) (not b!3173840) (not bm!230645) (not b!3173773) (not b_lambda!86495) (not b!3173854) (not b_lambda!86493) (not b_next!84091) (not b!3173714) (not b!3173717) (not b!3173835) (not bm!230643) (not b_next!84089) (not b!3173710) (not b!3173858) (not bm!230646) (not b!3173781) (not bm!230648) (not d!869388) (not b!3173855) (not b!3173861) b_and!209677 (not bm!230671) (not b!3173846) (not mapNonEmpty!19139) (not b!3173831) (not b!3173853) (not b!3173771) (not d!869390) tp_is_empty!17173 (not b!3173715) (not d!869380) (not b!3173727) b_and!209671 (not b!3173826) (not bm!230670) (not b!3173836) (not b!3173830) (not b!3173834) (not bm!230658))
(check-sat b_and!209671 b_and!209677 (not b_next!84089) (not b_next!84091))

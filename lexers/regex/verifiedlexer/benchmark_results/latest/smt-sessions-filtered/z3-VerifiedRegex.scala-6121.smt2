; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!297142 () Bool)

(assert start!297142)

(declare-fun b!3172750 () Bool)

(declare-fun b_free!83337 () Bool)

(declare-fun b_next!84041 () Bool)

(assert (=> b!3172750 (= b_free!83337 (not b_next!84041))))

(declare-fun tp!1002264 () Bool)

(declare-fun b_and!209619 () Bool)

(assert (=> b!3172750 (= tp!1002264 b_and!209619)))

(declare-fun b!3172752 () Bool)

(declare-fun b_free!83339 () Bool)

(declare-fun b_next!84043 () Bool)

(assert (=> b!3172752 (= b_free!83339 (not b_next!84043))))

(declare-fun tp!1002268 () Bool)

(declare-fun b_and!209621 () Bool)

(assert (=> b!3172752 (= tp!1002268 b_and!209621)))

(declare-fun res!1289426 () Bool)

(declare-fun e!1976092 () Bool)

(assert (=> start!297142 (=> (not res!1289426) (not e!1976092))))

(declare-datatypes ((C!19772 0))(
  ( (C!19773 (val!11922 Int)) )
))
(declare-datatypes ((Regex!9793 0))(
  ( (ElementMatch!9793 (c!533350 C!19772)) (Concat!15114 (regOne!20098 Regex!9793) (regTwo!20098 Regex!9793)) (EmptyExpr!9793) (Star!9793 (reg!10122 Regex!9793)) (EmptyLang!9793) (Union!9793 (regOne!20099 Regex!9793) (regTwo!20099 Regex!9793)) )
))
(declare-fun r!4721 () Regex!9793)

(declare-fun validRegex!4499 (Regex!9793) Bool)

(assert (=> start!297142 (= res!1289426 (validRegex!4499 r!4721))))

(assert (=> start!297142 e!1976092))

(declare-fun e!1976100 () Bool)

(assert (=> start!297142 e!1976100))

(declare-datatypes ((tuple2!34832 0))(
  ( (tuple2!34833 (_1!20548 Regex!9793) (_2!20548 C!19772)) )
))
(declare-datatypes ((tuple2!34834 0))(
  ( (tuple2!34835 (_1!20549 tuple2!34832) (_2!20549 Regex!9793)) )
))
(declare-datatypes ((List!35640 0))(
  ( (Nil!35516) (Cons!35516 (h!40936 tuple2!34834) (t!234725 List!35640)) )
))
(declare-datatypes ((array!15100 0))(
  ( (array!15101 (arr!6718 (Array (_ BitVec 32) (_ BitVec 64))) (size!26804 (_ BitVec 32))) )
))
(declare-datatypes ((array!15102 0))(
  ( (array!15103 (arr!6719 (Array (_ BitVec 32) List!35640)) (size!26805 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8428 0))(
  ( (LongMapFixedSize!8429 (defaultEntry!4599 Int) (mask!10904 (_ BitVec 32)) (extraKeys!4463 (_ BitVec 32)) (zeroValue!4473 List!35640) (minValue!4473 List!35640) (_size!8471 (_ BitVec 32)) (_keys!4514 array!15100) (_values!4495 array!15102) (_vacant!4275 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!16665 0))(
  ( (Cell!16666 (v!35275 LongMapFixedSize!8428)) )
))
(declare-datatypes ((MutLongMap!4214 0))(
  ( (LongMap!4214 (underlying!8657 Cell!16665)) (MutLongMapExt!4213 (__x!22748 Int)) )
))
(declare-datatypes ((Cell!16667 0))(
  ( (Cell!16668 (v!35276 MutLongMap!4214)) )
))
(declare-datatypes ((Hashable!4130 0))(
  ( (HashableExt!4129 (__x!22749 Int)) )
))
(declare-datatypes ((MutableMap!4120 0))(
  ( (MutableMapExt!4119 (__x!22750 Int)) (HashMap!4120 (underlying!8658 Cell!16667) (hashF!6162 Hashable!4130) (_size!8472 (_ BitVec 32)) (defaultValue!4291 Int)) )
))
(declare-datatypes ((Cache!510 0))(
  ( (Cache!511 (cache!4266 MutableMap!4120)) )
))
(declare-fun thiss!28499 () Cache!510)

(declare-fun e!1976101 () Bool)

(declare-fun inv!48238 (Cache!510) Bool)

(assert (=> start!297142 (and (inv!48238 thiss!28499) e!1976101)))

(declare-fun tp_is_empty!17149 () Bool)

(assert (=> start!297142 tp_is_empty!17149))

(declare-fun b!3172741 () Bool)

(assert (=> b!3172741 (= e!1976100 tp_is_empty!17149)))

(declare-fun b!3172742 () Bool)

(declare-fun e!1976099 () Bool)

(assert (=> b!3172742 (= e!1976092 e!1976099)))

(declare-fun res!1289424 () Bool)

(assert (=> b!3172742 (=> (not res!1289424) (not e!1976099))))

(declare-fun lt!1066783 () tuple2!34832)

(declare-fun contains!6229 (MutableMap!4120 tuple2!34832) Bool)

(assert (=> b!3172742 (= res!1289424 (contains!6229 (cache!4266 thiss!28499) lt!1066783))))

(declare-fun c!6988 () C!19772)

(assert (=> b!3172742 (= lt!1066783 (tuple2!34833 r!4721 c!6988))))

(declare-fun b!3172743 () Bool)

(declare-fun e!1976094 () Bool)

(assert (=> b!3172743 (= e!1976099 e!1976094)))

(declare-fun res!1289425 () Bool)

(assert (=> b!3172743 (=> (not res!1289425) (not e!1976094))))

(declare-datatypes ((Option!6928 0))(
  ( (None!6927) (Some!6927 (v!35277 Regex!9793)) )
))
(declare-fun lt!1066781 () Option!6928)

(declare-fun isEmpty!19769 (Option!6928) Bool)

(assert (=> b!3172743 (= res!1289425 (not (isEmpty!19769 lt!1066781)))))

(declare-fun apply!7979 (MutableMap!4120 tuple2!34832) Regex!9793)

(assert (=> b!3172743 (= lt!1066781 (Some!6927 (apply!7979 (cache!4266 thiss!28499) lt!1066783)))))

(declare-datatypes ((Unit!49997 0))(
  ( (Unit!49998) )
))
(declare-fun lt!1066782 () Unit!49997)

(declare-fun lemmaIfInCacheThenValid!68 (Cache!510 Regex!9793 C!19772) Unit!49997)

(assert (=> b!3172743 (= lt!1066782 (lemmaIfInCacheThenValid!68 thiss!28499 r!4721 c!6988))))

(declare-fun b!3172744 () Bool)

(declare-fun get!11295 (Option!6928) Regex!9793)

(declare-fun derivativeStep!2917 (Regex!9793 C!19772) Regex!9793)

(assert (=> b!3172744 (= e!1976094 (not (= (get!11295 lt!1066781) (derivativeStep!2917 r!4721 c!6988))))))

(declare-fun b!3172745 () Bool)

(declare-fun tp!1002269 () Bool)

(declare-fun tp!1002270 () Bool)

(assert (=> b!3172745 (= e!1976100 (and tp!1002269 tp!1002270))))

(declare-fun mapNonEmpty!19091 () Bool)

(declare-fun mapRes!19091 () Bool)

(declare-fun tp!1002261 () Bool)

(declare-fun tp!1002265 () Bool)

(assert (=> mapNonEmpty!19091 (= mapRes!19091 (and tp!1002261 tp!1002265))))

(declare-fun mapKey!19091 () (_ BitVec 32))

(declare-fun mapValue!19091 () List!35640)

(declare-fun mapRest!19091 () (Array (_ BitVec 32) List!35640))

(assert (=> mapNonEmpty!19091 (= (arr!6719 (_values!4495 (v!35275 (underlying!8657 (v!35276 (underlying!8658 (cache!4266 thiss!28499))))))) (store mapRest!19091 mapKey!19091 mapValue!19091))))

(declare-fun b!3172746 () Bool)

(declare-fun e!1976097 () Bool)

(declare-fun tp!1002272 () Bool)

(assert (=> b!3172746 (= e!1976097 (and tp!1002272 mapRes!19091))))

(declare-fun condMapEmpty!19091 () Bool)

(declare-fun mapDefault!19091 () List!35640)

(assert (=> b!3172746 (= condMapEmpty!19091 (= (arr!6719 (_values!4495 (v!35275 (underlying!8657 (v!35276 (underlying!8658 (cache!4266 thiss!28499))))))) ((as const (Array (_ BitVec 32) List!35640)) mapDefault!19091)))))

(declare-fun b!3172747 () Bool)

(declare-fun res!1289423 () Bool)

(assert (=> b!3172747 (=> (not res!1289423) (not e!1976092))))

(declare-fun validCacheMap!97 (MutableMap!4120) Bool)

(assert (=> b!3172747 (= res!1289423 (validCacheMap!97 (cache!4266 thiss!28499)))))

(declare-fun b!3172748 () Bool)

(declare-fun tp!1002266 () Bool)

(declare-fun tp!1002267 () Bool)

(assert (=> b!3172748 (= e!1976100 (and tp!1002266 tp!1002267))))

(declare-fun b!3172749 () Bool)

(declare-fun e!1976102 () Bool)

(declare-fun e!1976103 () Bool)

(assert (=> b!3172749 (= e!1976102 e!1976103)))

(declare-fun tp!1002263 () Bool)

(declare-fun e!1976093 () Bool)

(declare-fun tp!1002262 () Bool)

(declare-fun array_inv!4820 (array!15100) Bool)

(declare-fun array_inv!4821 (array!15102) Bool)

(assert (=> b!3172750 (= e!1976093 (and tp!1002264 tp!1002262 tp!1002263 (array_inv!4820 (_keys!4514 (v!35275 (underlying!8657 (v!35276 (underlying!8658 (cache!4266 thiss!28499))))))) (array_inv!4821 (_values!4495 (v!35275 (underlying!8657 (v!35276 (underlying!8658 (cache!4266 thiss!28499))))))) e!1976097))))

(declare-fun b!3172751 () Bool)

(assert (=> b!3172751 (= e!1976103 e!1976093)))

(declare-fun mapIsEmpty!19091 () Bool)

(assert (=> mapIsEmpty!19091 mapRes!19091))

(declare-fun e!1976095 () Bool)

(declare-fun e!1976098 () Bool)

(assert (=> b!3172752 (= e!1976095 (and e!1976098 tp!1002268))))

(declare-fun b!3172753 () Bool)

(declare-fun lt!1066784 () MutLongMap!4214)

(get-info :version)

(assert (=> b!3172753 (= e!1976098 (and e!1976102 ((_ is LongMap!4214) lt!1066784)))))

(assert (=> b!3172753 (= lt!1066784 (v!35276 (underlying!8658 (cache!4266 thiss!28499))))))

(declare-fun b!3172754 () Bool)

(assert (=> b!3172754 (= e!1976101 e!1976095)))

(declare-fun b!3172755 () Bool)

(declare-fun tp!1002271 () Bool)

(assert (=> b!3172755 (= e!1976100 tp!1002271)))

(assert (= (and start!297142 res!1289426) b!3172747))

(assert (= (and b!3172747 res!1289423) b!3172742))

(assert (= (and b!3172742 res!1289424) b!3172743))

(assert (= (and b!3172743 res!1289425) b!3172744))

(assert (= (and start!297142 ((_ is ElementMatch!9793) r!4721)) b!3172741))

(assert (= (and start!297142 ((_ is Concat!15114) r!4721)) b!3172748))

(assert (= (and start!297142 ((_ is Star!9793) r!4721)) b!3172755))

(assert (= (and start!297142 ((_ is Union!9793) r!4721)) b!3172745))

(assert (= (and b!3172746 condMapEmpty!19091) mapIsEmpty!19091))

(assert (= (and b!3172746 (not condMapEmpty!19091)) mapNonEmpty!19091))

(assert (= b!3172750 b!3172746))

(assert (= b!3172751 b!3172750))

(assert (= b!3172749 b!3172751))

(assert (= (and b!3172753 ((_ is LongMap!4214) (v!35276 (underlying!8658 (cache!4266 thiss!28499))))) b!3172749))

(assert (= b!3172752 b!3172753))

(assert (= (and b!3172754 ((_ is HashMap!4120) (cache!4266 thiss!28499))) b!3172752))

(assert (= start!297142 b!3172754))

(declare-fun m!3430853 () Bool)

(assert (=> b!3172747 m!3430853))

(declare-fun m!3430855 () Bool)

(assert (=> b!3172744 m!3430855))

(declare-fun m!3430857 () Bool)

(assert (=> b!3172744 m!3430857))

(declare-fun m!3430859 () Bool)

(assert (=> start!297142 m!3430859))

(declare-fun m!3430861 () Bool)

(assert (=> start!297142 m!3430861))

(declare-fun m!3430863 () Bool)

(assert (=> b!3172742 m!3430863))

(declare-fun m!3430865 () Bool)

(assert (=> b!3172743 m!3430865))

(declare-fun m!3430867 () Bool)

(assert (=> b!3172743 m!3430867))

(declare-fun m!3430869 () Bool)

(assert (=> b!3172743 m!3430869))

(declare-fun m!3430871 () Bool)

(assert (=> b!3172750 m!3430871))

(declare-fun m!3430873 () Bool)

(assert (=> b!3172750 m!3430873))

(declare-fun m!3430875 () Bool)

(assert (=> mapNonEmpty!19091 m!3430875))

(check-sat (not b!3172750) b_and!209619 tp_is_empty!17149 (not b!3172742) b_and!209621 (not b!3172755) (not b!3172745) (not mapNonEmpty!19091) (not b!3172747) (not b!3172746) (not start!297142) (not b!3172748) (not b!3172744) (not b!3172743) (not b_next!84043) (not b_next!84041))
(check-sat b_and!209621 b_and!209619 (not b_next!84041) (not b_next!84043))
(get-model)

(declare-fun d!869330 () Bool)

(assert (=> d!869330 (= (isEmpty!19769 lt!1066781) (not ((_ is Some!6927) lt!1066781)))))

(assert (=> b!3172743 d!869330))

(declare-fun b!3172768 () Bool)

(declare-fun e!1976111 () Regex!9793)

(declare-fun dynLambda!14370 (Int tuple2!34832) Regex!9793)

(assert (=> b!3172768 (= e!1976111 (dynLambda!14370 (defaultValue!4291 (cache!4266 thiss!28499)) lt!1066783))))

(declare-fun lt!1066851 () Regex!9793)

(declare-fun b!3172769 () Bool)

(declare-fun e!1976110 () Bool)

(declare-fun getValueByKey!189 (List!35640 tuple2!34832) Option!6928)

(declare-datatypes ((ListMap!1349 0))(
  ( (ListMap!1350 (toList!2093 List!35640)) )
))
(declare-fun map!7965 (MutableMap!4120) ListMap!1349)

(assert (=> b!3172769 (= e!1976110 (= lt!1066851 (get!11295 (getValueByKey!189 (toList!2093 (map!7965 (cache!4266 thiss!28499))) lt!1066783))))))

(declare-fun b!3172770 () Bool)

(assert (=> b!3172770 false))

(declare-fun lt!1066846 () Unit!49997)

(declare-fun lt!1066863 () Unit!49997)

(assert (=> b!3172770 (= lt!1066846 lt!1066863)))

(declare-datatypes ((tuple2!34836 0))(
  ( (tuple2!34837 (_1!20550 (_ BitVec 64)) (_2!20550 List!35640)) )
))
(declare-datatypes ((List!35641 0))(
  ( (Nil!35517) (Cons!35517 (h!40937 tuple2!34836) (t!234728 List!35641)) )
))
(declare-fun lt!1066858 () List!35641)

(declare-fun lt!1066874 () (_ BitVec 64))

(declare-fun lt!1066847 () List!35640)

(declare-fun contains!6230 (List!35641 tuple2!34836) Bool)

(assert (=> b!3172770 (contains!6230 lt!1066858 (tuple2!34837 lt!1066874 lt!1066847))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!108 (List!35641 (_ BitVec 64) List!35640) Unit!49997)

(assert (=> b!3172770 (= lt!1066863 (lemmaGetValueByKeyImpliesContainsTuple!108 lt!1066858 lt!1066874 lt!1066847))))

(declare-fun apply!7980 (MutLongMap!4214 (_ BitVec 64)) List!35640)

(assert (=> b!3172770 (= lt!1066847 (apply!7980 (v!35276 (underlying!8658 (cache!4266 thiss!28499))) lt!1066874))))

(declare-datatypes ((ListLongMap!749 0))(
  ( (ListLongMap!750 (toList!2094 List!35641)) )
))
(declare-fun map!7966 (MutLongMap!4214) ListLongMap!749)

(assert (=> b!3172770 (= lt!1066858 (toList!2094 (map!7966 (v!35276 (underlying!8658 (cache!4266 thiss!28499))))))))

(declare-fun lt!1066855 () Unit!49997)

(declare-fun lt!1066868 () Unit!49997)

(assert (=> b!3172770 (= lt!1066855 lt!1066868)))

(declare-fun lt!1066859 () List!35641)

(declare-datatypes ((Option!6929 0))(
  ( (None!6928) (Some!6928 (v!35278 List!35640)) )
))
(declare-fun isDefined!5439 (Option!6929) Bool)

(declare-fun getValueByKey!190 (List!35641 (_ BitVec 64)) Option!6929)

(assert (=> b!3172770 (isDefined!5439 (getValueByKey!190 lt!1066859 lt!1066874))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!136 (List!35641 (_ BitVec 64)) Unit!49997)

(assert (=> b!3172770 (= lt!1066868 (lemmaContainsKeyImpliesGetValueByKeyDefined!136 lt!1066859 lt!1066874))))

(assert (=> b!3172770 (= lt!1066859 (toList!2094 (map!7966 (v!35276 (underlying!8658 (cache!4266 thiss!28499))))))))

(declare-fun e!1976112 () Unit!49997)

(declare-fun Unit!49999 () Unit!49997)

(assert (=> b!3172770 (= e!1976112 Unit!49999)))

(declare-fun b!3172771 () Bool)

(declare-fun Unit!50000 () Unit!49997)

(assert (=> b!3172771 (= e!1976112 Unit!50000)))

(declare-fun d!869332 () Bool)

(assert (=> d!869332 e!1976110))

(declare-fun c!533359 () Bool)

(assert (=> d!869332 (= c!533359 (contains!6229 (cache!4266 thiss!28499) lt!1066783))))

(assert (=> d!869332 (= lt!1066851 e!1976111)))

(declare-fun c!533358 () Bool)

(assert (=> d!869332 (= c!533358 (not (contains!6229 (cache!4266 thiss!28499) lt!1066783)))))

(declare-fun valid!3282 (MutableMap!4120) Bool)

(assert (=> d!869332 (valid!3282 (cache!4266 thiss!28499))))

(assert (=> d!869332 (= (apply!7979 (cache!4266 thiss!28499) lt!1066783) lt!1066851)))

(declare-fun b!3172772 () Bool)

(assert (=> b!3172772 (= e!1976110 (= lt!1066851 (dynLambda!14370 (defaultValue!4291 (cache!4266 thiss!28499)) lt!1066783)))))

(declare-fun b!3172773 () Bool)

(declare-datatypes ((Option!6930 0))(
  ( (None!6929) (Some!6929 (v!35279 tuple2!34834)) )
))
(declare-fun get!11296 (Option!6930) tuple2!34834)

(declare-fun getPair!102 (List!35640 tuple2!34832) Option!6930)

(assert (=> b!3172773 (= e!1976111 (_2!20549 (get!11296 (getPair!102 (apply!7980 (v!35276 (underlying!8658 (cache!4266 thiss!28499))) lt!1066874) lt!1066783))))))

(declare-fun hash!815 (Hashable!4130 tuple2!34832) (_ BitVec 64))

(assert (=> b!3172773 (= lt!1066874 (hash!815 (hashF!6162 (cache!4266 thiss!28499)) lt!1066783))))

(declare-fun c!533357 () Bool)

(assert (=> b!3172773 (= c!533357 (not (contains!6230 (toList!2094 (map!7966 (v!35276 (underlying!8658 (cache!4266 thiss!28499))))) (tuple2!34837 lt!1066874 (apply!7980 (v!35276 (underlying!8658 (cache!4266 thiss!28499))) lt!1066874)))))))

(declare-fun lt!1066849 () Unit!49997)

(assert (=> b!3172773 (= lt!1066849 e!1976112)))

(declare-fun lt!1066871 () Unit!49997)

(declare-fun lambda!116085 () Int)

(declare-fun forallContained!1080 (List!35641 Int tuple2!34836) Unit!49997)

(assert (=> b!3172773 (= lt!1066871 (forallContained!1080 (toList!2094 (map!7966 (v!35276 (underlying!8658 (cache!4266 thiss!28499))))) lambda!116085 (tuple2!34837 lt!1066874 (apply!7980 (v!35276 (underlying!8658 (cache!4266 thiss!28499))) lt!1066874))))))

(declare-fun lt!1066870 () ListLongMap!749)

(assert (=> b!3172773 (= lt!1066870 (map!7966 (v!35276 (underlying!8658 (cache!4266 thiss!28499)))))))

(declare-fun lt!1066845 () Unit!49997)

(declare-fun lemmaGetPairGetSameValueAsMap!38 (ListLongMap!749 tuple2!34832 Regex!9793 Hashable!4130) Unit!49997)

(assert (=> b!3172773 (= lt!1066845 (lemmaGetPairGetSameValueAsMap!38 lt!1066870 lt!1066783 (_2!20549 (get!11296 (getPair!102 (apply!7980 (v!35276 (underlying!8658 (cache!4266 thiss!28499))) lt!1066874) lt!1066783))) (hashF!6162 (cache!4266 thiss!28499))))))

(declare-fun lt!1066850 () Unit!49997)

(declare-fun lemmaInGenMapThenLongMapContainsHash!44 (ListLongMap!749 tuple2!34832 Hashable!4130) Unit!49997)

(assert (=> b!3172773 (= lt!1066850 (lemmaInGenMapThenLongMapContainsHash!44 lt!1066870 lt!1066783 (hashF!6162 (cache!4266 thiss!28499))))))

(declare-fun contains!6231 (ListLongMap!749 (_ BitVec 64)) Bool)

(assert (=> b!3172773 (contains!6231 lt!1066870 (hash!815 (hashF!6162 (cache!4266 thiss!28499)) lt!1066783))))

(declare-fun lt!1066867 () Unit!49997)

(assert (=> b!3172773 (= lt!1066867 lt!1066850)))

(declare-fun lt!1066848 () (_ BitVec 64))

(assert (=> b!3172773 (= lt!1066848 (hash!815 (hashF!6162 (cache!4266 thiss!28499)) lt!1066783))))

(declare-fun lt!1066860 () List!35640)

(declare-fun apply!7981 (ListLongMap!749 (_ BitVec 64)) List!35640)

(assert (=> b!3172773 (= lt!1066860 (apply!7981 lt!1066870 (hash!815 (hashF!6162 (cache!4266 thiss!28499)) lt!1066783)))))

(declare-fun lt!1066852 () Unit!49997)

(declare-fun lemmaGetValueImpliesTupleContained!39 (ListLongMap!749 (_ BitVec 64) List!35640) Unit!49997)

(assert (=> b!3172773 (= lt!1066852 (lemmaGetValueImpliesTupleContained!39 lt!1066870 lt!1066848 lt!1066860))))

(assert (=> b!3172773 (contains!6230 (toList!2094 lt!1066870) (tuple2!34837 lt!1066848 lt!1066860))))

(declare-fun lt!1066869 () Unit!49997)

(assert (=> b!3172773 (= lt!1066869 lt!1066852)))

(declare-fun lt!1066873 () Unit!49997)

(assert (=> b!3172773 (= lt!1066873 (forallContained!1080 (toList!2094 lt!1066870) lambda!116085 (tuple2!34837 (hash!815 (hashF!6162 (cache!4266 thiss!28499)) lt!1066783) (apply!7981 lt!1066870 (hash!815 (hashF!6162 (cache!4266 thiss!28499)) lt!1066783)))))))

(declare-fun lt!1066872 () Unit!49997)

(declare-fun lemmaInGenMapThenGetPairDefined!38 (ListLongMap!749 tuple2!34832 Hashable!4130) Unit!49997)

(assert (=> b!3172773 (= lt!1066872 (lemmaInGenMapThenGetPairDefined!38 lt!1066870 lt!1066783 (hashF!6162 (cache!4266 thiss!28499))))))

(declare-fun lt!1066866 () Unit!49997)

(assert (=> b!3172773 (= lt!1066866 (lemmaInGenMapThenLongMapContainsHash!44 lt!1066870 lt!1066783 (hashF!6162 (cache!4266 thiss!28499))))))

(declare-fun lt!1066864 () Unit!49997)

(assert (=> b!3172773 (= lt!1066864 lt!1066866)))

(declare-fun lt!1066853 () (_ BitVec 64))

(assert (=> b!3172773 (= lt!1066853 (hash!815 (hashF!6162 (cache!4266 thiss!28499)) lt!1066783))))

(declare-fun lt!1066857 () List!35640)

(assert (=> b!3172773 (= lt!1066857 (apply!7981 lt!1066870 (hash!815 (hashF!6162 (cache!4266 thiss!28499)) lt!1066783)))))

(declare-fun lt!1066861 () Unit!49997)

(assert (=> b!3172773 (= lt!1066861 (lemmaGetValueImpliesTupleContained!39 lt!1066870 lt!1066853 lt!1066857))))

(assert (=> b!3172773 (contains!6230 (toList!2094 lt!1066870) (tuple2!34837 lt!1066853 lt!1066857))))

(declare-fun lt!1066854 () Unit!49997)

(assert (=> b!3172773 (= lt!1066854 lt!1066861)))

(declare-fun lt!1066862 () Unit!49997)

(assert (=> b!3172773 (= lt!1066862 (forallContained!1080 (toList!2094 lt!1066870) lambda!116085 (tuple2!34837 (hash!815 (hashF!6162 (cache!4266 thiss!28499)) lt!1066783) (apply!7981 lt!1066870 (hash!815 (hashF!6162 (cache!4266 thiss!28499)) lt!1066783)))))))

(declare-fun isDefined!5440 (Option!6930) Bool)

(assert (=> b!3172773 (isDefined!5440 (getPair!102 (apply!7981 lt!1066870 (hash!815 (hashF!6162 (cache!4266 thiss!28499)) lt!1066783)) lt!1066783))))

(declare-fun lt!1066856 () Unit!49997)

(assert (=> b!3172773 (= lt!1066856 lt!1066872)))

(declare-fun extractMap!245 (List!35641) ListMap!1349)

(assert (=> b!3172773 (= (_2!20549 (get!11296 (getPair!102 (apply!7981 lt!1066870 (hash!815 (hashF!6162 (cache!4266 thiss!28499)) lt!1066783)) lt!1066783))) (get!11295 (getValueByKey!189 (toList!2093 (extractMap!245 (toList!2094 lt!1066870))) lt!1066783)))))

(declare-fun lt!1066865 () Unit!49997)

(assert (=> b!3172773 (= lt!1066865 lt!1066845)))

(assert (= (and d!869332 c!533358) b!3172768))

(assert (= (and d!869332 (not c!533358)) b!3172773))

(assert (= (and b!3172773 c!533357) b!3172770))

(assert (= (and b!3172773 (not c!533357)) b!3172771))

(assert (= (and d!869332 c!533359) b!3172769))

(assert (= (and d!869332 (not c!533359)) b!3172772))

(declare-fun b_lambda!86479 () Bool)

(assert (=> (not b_lambda!86479) (not b!3172768)))

(declare-fun t!234727 () Bool)

(declare-fun tb!155109 () Bool)

(assert (=> (and b!3172752 (= (defaultValue!4291 (cache!4266 thiss!28499)) (defaultValue!4291 (cache!4266 thiss!28499))) t!234727) tb!155109))

(assert (=> b!3172768 t!234727))

(declare-fun result!196982 () Bool)

(declare-fun b_and!209623 () Bool)

(assert (= b_and!209621 (and (=> t!234727 result!196982) b_and!209623)))

(declare-fun b_lambda!86481 () Bool)

(assert (=> (not b_lambda!86481) (not b!3172772)))

(assert (=> b!3172772 t!234727))

(declare-fun b_and!209625 () Bool)

(assert (= b_and!209623 (and (=> t!234727 result!196982) b_and!209625)))

(declare-fun m!3430877 () Bool)

(assert (=> b!3172769 m!3430877))

(declare-fun m!3430879 () Bool)

(assert (=> b!3172769 m!3430879))

(assert (=> b!3172769 m!3430879))

(declare-fun m!3430881 () Bool)

(assert (=> b!3172769 m!3430881))

(declare-fun m!3430883 () Bool)

(assert (=> b!3172773 m!3430883))

(declare-fun m!3430885 () Bool)

(assert (=> b!3172773 m!3430885))

(declare-fun m!3430887 () Bool)

(assert (=> b!3172773 m!3430887))

(declare-fun m!3430889 () Bool)

(assert (=> b!3172773 m!3430889))

(declare-fun m!3430891 () Bool)

(assert (=> b!3172773 m!3430891))

(declare-fun m!3430893 () Bool)

(assert (=> b!3172773 m!3430893))

(declare-fun m!3430895 () Bool)

(assert (=> b!3172773 m!3430895))

(declare-fun m!3430897 () Bool)

(assert (=> b!3172773 m!3430897))

(declare-fun m!3430899 () Bool)

(assert (=> b!3172773 m!3430899))

(declare-fun m!3430901 () Bool)

(assert (=> b!3172773 m!3430901))

(declare-fun m!3430903 () Bool)

(assert (=> b!3172773 m!3430903))

(declare-fun m!3430905 () Bool)

(assert (=> b!3172773 m!3430905))

(declare-fun m!3430907 () Bool)

(assert (=> b!3172773 m!3430907))

(assert (=> b!3172773 m!3430907))

(declare-fun m!3430909 () Bool)

(assert (=> b!3172773 m!3430909))

(assert (=> b!3172773 m!3430903))

(declare-fun m!3430911 () Bool)

(assert (=> b!3172773 m!3430911))

(assert (=> b!3172773 m!3430889))

(declare-fun m!3430913 () Bool)

(assert (=> b!3172773 m!3430913))

(declare-fun m!3430915 () Bool)

(assert (=> b!3172773 m!3430915))

(assert (=> b!3172773 m!3430909))

(declare-fun m!3430917 () Bool)

(assert (=> b!3172773 m!3430917))

(declare-fun m!3430919 () Bool)

(assert (=> b!3172773 m!3430919))

(assert (=> b!3172773 m!3430903))

(declare-fun m!3430921 () Bool)

(assert (=> b!3172773 m!3430921))

(declare-fun m!3430923 () Bool)

(assert (=> b!3172773 m!3430923))

(declare-fun m!3430925 () Bool)

(assert (=> b!3172773 m!3430925))

(assert (=> b!3172773 m!3430885))

(declare-fun m!3430927 () Bool)

(assert (=> b!3172773 m!3430927))

(assert (=> b!3172773 m!3430885))

(assert (=> b!3172773 m!3430901))

(assert (=> b!3172773 m!3430925))

(declare-fun m!3430929 () Bool)

(assert (=> b!3172768 m!3430929))

(declare-fun m!3430931 () Bool)

(assert (=> b!3172770 m!3430931))

(assert (=> b!3172770 m!3430931))

(declare-fun m!3430933 () Bool)

(assert (=> b!3172770 m!3430933))

(declare-fun m!3430935 () Bool)

(assert (=> b!3172770 m!3430935))

(assert (=> b!3172770 m!3430899))

(assert (=> b!3172770 m!3430907))

(declare-fun m!3430937 () Bool)

(assert (=> b!3172770 m!3430937))

(declare-fun m!3430939 () Bool)

(assert (=> b!3172770 m!3430939))

(assert (=> b!3172772 m!3430929))

(assert (=> d!869332 m!3430863))

(declare-fun m!3430941 () Bool)

(assert (=> d!869332 m!3430941))

(assert (=> b!3172743 d!869332))

(declare-fun b!3172785 () Bool)

(declare-fun e!1976127 () Unit!49997)

(declare-fun Unit!50001 () Unit!49997)

(assert (=> b!3172785 (= e!1976127 Unit!50001)))

(declare-fun b!3172784 () Bool)

(declare-fun lt!1066895 () Unit!49997)

(assert (=> b!3172784 (= e!1976127 lt!1066895)))

(declare-fun lt!1066893 () tuple2!34832)

(assert (=> b!3172784 (= lt!1066893 (tuple2!34833 r!4721 c!6988))))

(declare-fun lambda!116088 () Int)

(declare-fun lemmaForallPairsThenForLookup!54 (MutableMap!4120 tuple2!34832 Int) Unit!49997)

(assert (=> b!3172784 (= lt!1066895 (lemmaForallPairsThenForLookup!54 (cache!4266 thiss!28499) lt!1066893 lambda!116088))))

(declare-fun lt!1066896 () tuple2!34834)

(assert (=> b!3172784 (= lt!1066896 (tuple2!34835 lt!1066893 (apply!7979 (cache!4266 thiss!28499) lt!1066893)))))

(declare-fun lt!1066897 () Regex!9793)

(assert (=> b!3172784 (= lt!1066897 (apply!7979 (cache!4266 thiss!28499) lt!1066893))))

(declare-fun res!1289433 () Bool)

(assert (=> b!3172784 (= res!1289433 (validRegex!4499 (_1!20548 lt!1066893)))))

(declare-fun e!1976125 () Bool)

(assert (=> b!3172784 (=> (not res!1289433) (not e!1976125))))

(assert (=> b!3172784 e!1976125))

(declare-fun e!1976126 () Bool)

(declare-fun b!3172787 () Bool)

(assert (=> b!3172787 (= e!1976126 (= (derivativeStep!2917 r!4721 c!6988) (apply!7979 (cache!4266 thiss!28499) (tuple2!34833 r!4721 c!6988))))))

(declare-fun b!3172786 () Bool)

(declare-fun lt!1066892 () tuple2!34832)

(assert (=> b!3172786 (= lt!1066892 lt!1066893)))

(declare-fun lt!1066894 () Regex!9793)

(assert (=> b!3172786 (= lt!1066894 (apply!7979 (cache!4266 thiss!28499) lt!1066893))))

(declare-fun lt!1066898 () Regex!9793)

(assert (=> b!3172786 (= lt!1066898 (apply!7979 (cache!4266 thiss!28499) lt!1066893))))

(assert (=> b!3172786 (= e!1976125 (= (apply!7979 (cache!4266 thiss!28499) lt!1066893) (derivativeStep!2917 (_1!20548 lt!1066893) (_2!20548 lt!1066893))))))

(declare-fun d!869334 () Bool)

(assert (=> d!869334 e!1976126))

(declare-fun res!1289434 () Bool)

(assert (=> d!869334 (=> res!1289434 e!1976126)))

(assert (=> d!869334 (= res!1289434 (not (contains!6229 (cache!4266 thiss!28499) (tuple2!34833 r!4721 c!6988))))))

(declare-fun lt!1066891 () Unit!49997)

(assert (=> d!869334 (= lt!1066891 e!1976127)))

(declare-fun c!533363 () Bool)

(assert (=> d!869334 (= c!533363 (contains!6229 (cache!4266 thiss!28499) (tuple2!34833 r!4721 c!6988)))))

(assert (=> d!869334 (validCacheMap!97 (cache!4266 thiss!28499))))

(assert (=> d!869334 (= (lemmaIfInCacheThenValid!68 thiss!28499 r!4721 c!6988) lt!1066891)))

(assert (= (and d!869334 c!533363) b!3172784))

(assert (= (and d!869334 (not c!533363)) b!3172785))

(assert (= (and b!3172784 res!1289433) b!3172786))

(assert (= (and d!869334 (not res!1289434)) b!3172787))

(declare-fun m!3430943 () Bool)

(assert (=> b!3172784 m!3430943))

(declare-fun m!3430945 () Bool)

(assert (=> b!3172784 m!3430945))

(declare-fun m!3430947 () Bool)

(assert (=> b!3172784 m!3430947))

(assert (=> b!3172787 m!3430857))

(declare-fun m!3430949 () Bool)

(assert (=> b!3172787 m!3430949))

(assert (=> b!3172786 m!3430945))

(declare-fun m!3430951 () Bool)

(assert (=> b!3172786 m!3430951))

(declare-fun m!3430953 () Bool)

(assert (=> d!869334 m!3430953))

(assert (=> d!869334 m!3430853))

(assert (=> b!3172743 d!869334))

(declare-fun d!869336 () Bool)

(assert (=> d!869336 (= (get!11295 lt!1066781) (v!35277 lt!1066781))))

(assert (=> b!3172744 d!869336))

(declare-fun d!869338 () Bool)

(declare-fun lt!1066901 () Regex!9793)

(assert (=> d!869338 (validRegex!4499 lt!1066901)))

(declare-fun e!1976142 () Regex!9793)

(assert (=> d!869338 (= lt!1066901 e!1976142)))

(declare-fun c!533377 () Bool)

(assert (=> d!869338 (= c!533377 (or ((_ is EmptyExpr!9793) r!4721) ((_ is EmptyLang!9793) r!4721)))))

(assert (=> d!869338 (validRegex!4499 r!4721)))

(assert (=> d!869338 (= (derivativeStep!2917 r!4721 c!6988) lt!1066901)))

(declare-fun bm!230582 () Bool)

(declare-fun call!230590 () Regex!9793)

(declare-fun call!230588 () Regex!9793)

(assert (=> bm!230582 (= call!230590 call!230588)))

(declare-fun bm!230583 () Bool)

(declare-fun c!533376 () Bool)

(declare-fun call!230587 () Regex!9793)

(assert (=> bm!230583 (= call!230587 (derivativeStep!2917 (ite c!533376 (regTwo!20099 r!4721) (regOne!20098 r!4721)) c!6988))))

(declare-fun c!533375 () Bool)

(declare-fun bm!230584 () Bool)

(declare-fun c!533378 () Bool)

(assert (=> bm!230584 (= call!230588 (derivativeStep!2917 (ite c!533376 (regOne!20099 r!4721) (ite c!533375 (reg!10122 r!4721) (ite c!533378 (regTwo!20098 r!4721) (regOne!20098 r!4721)))) c!6988))))

(declare-fun b!3172808 () Bool)

(declare-fun e!1976141 () Regex!9793)

(declare-fun call!230589 () Regex!9793)

(assert (=> b!3172808 (= e!1976141 (Union!9793 (Concat!15114 call!230587 (regTwo!20098 r!4721)) call!230589))))

(declare-fun bm!230585 () Bool)

(assert (=> bm!230585 (= call!230589 call!230590)))

(declare-fun b!3172809 () Bool)

(assert (=> b!3172809 (= c!533376 ((_ is Union!9793) r!4721))))

(declare-fun e!1976138 () Regex!9793)

(declare-fun e!1976139 () Regex!9793)

(assert (=> b!3172809 (= e!1976138 e!1976139)))

(declare-fun b!3172810 () Bool)

(declare-fun e!1976140 () Regex!9793)

(assert (=> b!3172810 (= e!1976140 (Concat!15114 call!230590 r!4721))))

(declare-fun b!3172811 () Bool)

(assert (=> b!3172811 (= e!1976142 EmptyLang!9793)))

(declare-fun b!3172812 () Bool)

(declare-fun nullable!3365 (Regex!9793) Bool)

(assert (=> b!3172812 (= c!533378 (nullable!3365 (regOne!20098 r!4721)))))

(assert (=> b!3172812 (= e!1976140 e!1976141)))

(declare-fun b!3172813 () Bool)

(assert (=> b!3172813 (= e!1976142 e!1976138)))

(declare-fun c!533374 () Bool)

(assert (=> b!3172813 (= c!533374 ((_ is ElementMatch!9793) r!4721))))

(declare-fun b!3172814 () Bool)

(assert (=> b!3172814 (= e!1976139 e!1976140)))

(assert (=> b!3172814 (= c!533375 ((_ is Star!9793) r!4721))))

(declare-fun b!3172815 () Bool)

(assert (=> b!3172815 (= e!1976138 (ite (= c!6988 (c!533350 r!4721)) EmptyExpr!9793 EmptyLang!9793))))

(declare-fun b!3172816 () Bool)

(assert (=> b!3172816 (= e!1976139 (Union!9793 call!230588 call!230587))))

(declare-fun b!3172817 () Bool)

(assert (=> b!3172817 (= e!1976141 (Union!9793 (Concat!15114 call!230589 (regTwo!20098 r!4721)) EmptyLang!9793))))

(assert (= (and d!869338 c!533377) b!3172811))

(assert (= (and d!869338 (not c!533377)) b!3172813))

(assert (= (and b!3172813 c!533374) b!3172815))

(assert (= (and b!3172813 (not c!533374)) b!3172809))

(assert (= (and b!3172809 c!533376) b!3172816))

(assert (= (and b!3172809 (not c!533376)) b!3172814))

(assert (= (and b!3172814 c!533375) b!3172810))

(assert (= (and b!3172814 (not c!533375)) b!3172812))

(assert (= (and b!3172812 c!533378) b!3172808))

(assert (= (and b!3172812 (not c!533378)) b!3172817))

(assert (= (or b!3172808 b!3172817) bm!230585))

(assert (= (or b!3172810 bm!230585) bm!230582))

(assert (= (or b!3172816 b!3172808) bm!230583))

(assert (= (or b!3172816 bm!230582) bm!230584))

(declare-fun m!3430955 () Bool)

(assert (=> d!869338 m!3430955))

(assert (=> d!869338 m!3430859))

(declare-fun m!3430957 () Bool)

(assert (=> bm!230583 m!3430957))

(declare-fun m!3430959 () Bool)

(assert (=> bm!230584 m!3430959))

(declare-fun m!3430961 () Bool)

(assert (=> b!3172812 m!3430961))

(assert (=> b!3172744 d!869338))

(declare-fun b!3172836 () Bool)

(declare-fun e!1976159 () Bool)

(declare-fun e!1976160 () Bool)

(assert (=> b!3172836 (= e!1976159 e!1976160)))

(declare-fun res!1289448 () Bool)

(assert (=> b!3172836 (= res!1289448 (not (nullable!3365 (reg!10122 r!4721))))))

(assert (=> b!3172836 (=> (not res!1289448) (not e!1976160))))

(declare-fun b!3172837 () Bool)

(declare-fun e!1976157 () Bool)

(declare-fun e!1976158 () Bool)

(assert (=> b!3172837 (= e!1976157 e!1976158)))

(declare-fun res!1289446 () Bool)

(assert (=> b!3172837 (=> (not res!1289446) (not e!1976158))))

(declare-fun call!230598 () Bool)

(assert (=> b!3172837 (= res!1289446 call!230598)))

(declare-fun c!533384 () Bool)

(declare-fun c!533383 () Bool)

(declare-fun bm!230592 () Bool)

(declare-fun call!230599 () Bool)

(assert (=> bm!230592 (= call!230599 (validRegex!4499 (ite c!533384 (reg!10122 r!4721) (ite c!533383 (regTwo!20099 r!4721) (regTwo!20098 r!4721)))))))

(declare-fun b!3172838 () Bool)

(declare-fun call!230597 () Bool)

(assert (=> b!3172838 (= e!1976158 call!230597)))

(declare-fun b!3172839 () Bool)

(assert (=> b!3172839 (= e!1976160 call!230599)))

(declare-fun b!3172840 () Bool)

(declare-fun e!1976162 () Bool)

(assert (=> b!3172840 (= e!1976162 call!230597)))

(declare-fun d!869340 () Bool)

(declare-fun res!1289445 () Bool)

(declare-fun e!1976163 () Bool)

(assert (=> d!869340 (=> res!1289445 e!1976163)))

(assert (=> d!869340 (= res!1289445 ((_ is ElementMatch!9793) r!4721))))

(assert (=> d!869340 (= (validRegex!4499 r!4721) e!1976163)))

(declare-fun b!3172841 () Bool)

(declare-fun e!1976161 () Bool)

(assert (=> b!3172841 (= e!1976159 e!1976161)))

(assert (=> b!3172841 (= c!533383 ((_ is Union!9793) r!4721))))

(declare-fun b!3172842 () Bool)

(declare-fun res!1289447 () Bool)

(assert (=> b!3172842 (=> (not res!1289447) (not e!1976162))))

(assert (=> b!3172842 (= res!1289447 call!230598)))

(assert (=> b!3172842 (= e!1976161 e!1976162)))

(declare-fun b!3172843 () Bool)

(declare-fun res!1289449 () Bool)

(assert (=> b!3172843 (=> res!1289449 e!1976157)))

(assert (=> b!3172843 (= res!1289449 (not ((_ is Concat!15114) r!4721)))))

(assert (=> b!3172843 (= e!1976161 e!1976157)))

(declare-fun bm!230593 () Bool)

(assert (=> bm!230593 (= call!230597 call!230599)))

(declare-fun bm!230594 () Bool)

(assert (=> bm!230594 (= call!230598 (validRegex!4499 (ite c!533383 (regOne!20099 r!4721) (regOne!20098 r!4721))))))

(declare-fun b!3172844 () Bool)

(assert (=> b!3172844 (= e!1976163 e!1976159)))

(assert (=> b!3172844 (= c!533384 ((_ is Star!9793) r!4721))))

(assert (= (and d!869340 (not res!1289445)) b!3172844))

(assert (= (and b!3172844 c!533384) b!3172836))

(assert (= (and b!3172844 (not c!533384)) b!3172841))

(assert (= (and b!3172836 res!1289448) b!3172839))

(assert (= (and b!3172841 c!533383) b!3172842))

(assert (= (and b!3172841 (not c!533383)) b!3172843))

(assert (= (and b!3172842 res!1289447) b!3172840))

(assert (= (and b!3172843 (not res!1289449)) b!3172837))

(assert (= (and b!3172837 res!1289446) b!3172838))

(assert (= (or b!3172842 b!3172837) bm!230594))

(assert (= (or b!3172840 b!3172838) bm!230593))

(assert (= (or b!3172839 bm!230593) bm!230592))

(declare-fun m!3430963 () Bool)

(assert (=> b!3172836 m!3430963))

(declare-fun m!3430965 () Bool)

(assert (=> bm!230592 m!3430965))

(declare-fun m!3430967 () Bool)

(assert (=> bm!230594 m!3430967))

(assert (=> start!297142 d!869340))

(declare-fun d!869342 () Bool)

(declare-fun res!1289452 () Bool)

(declare-fun e!1976166 () Bool)

(assert (=> d!869342 (=> (not res!1289452) (not e!1976166))))

(assert (=> d!869342 (= res!1289452 ((_ is HashMap!4120) (cache!4266 thiss!28499)))))

(assert (=> d!869342 (= (inv!48238 thiss!28499) e!1976166)))

(declare-fun b!3172847 () Bool)

(assert (=> b!3172847 (= e!1976166 (validCacheMap!97 (cache!4266 thiss!28499)))))

(assert (= (and d!869342 res!1289452) b!3172847))

(assert (=> b!3172847 m!3430853))

(assert (=> start!297142 d!869342))

(declare-fun d!869344 () Bool)

(assert (=> d!869344 (= (array_inv!4820 (_keys!4514 (v!35275 (underlying!8657 (v!35276 (underlying!8658 (cache!4266 thiss!28499))))))) (bvsge (size!26804 (_keys!4514 (v!35275 (underlying!8657 (v!35276 (underlying!8658 (cache!4266 thiss!28499))))))) #b00000000000000000000000000000000))))

(assert (=> b!3172750 d!869344))

(declare-fun d!869346 () Bool)

(assert (=> d!869346 (= (array_inv!4821 (_values!4495 (v!35275 (underlying!8657 (v!35276 (underlying!8658 (cache!4266 thiss!28499))))))) (bvsge (size!26805 (_values!4495 (v!35275 (underlying!8657 (v!35276 (underlying!8658 (cache!4266 thiss!28499))))))) #b00000000000000000000000000000000))))

(assert (=> b!3172750 d!869346))

(declare-fun bs!539630 () Bool)

(declare-fun b!3172880 () Bool)

(assert (= bs!539630 (and b!3172880 b!3172773)))

(declare-fun lambda!116091 () Int)

(assert (=> bs!539630 (= lambda!116091 lambda!116085)))

(declare-fun bm!230607 () Bool)

(declare-fun call!230617 () (_ BitVec 64))

(assert (=> bm!230607 (= call!230617 (hash!815 (hashF!6162 (cache!4266 thiss!28499)) lt!1066783))))

(declare-fun b!3172870 () Bool)

(declare-fun e!1976182 () Unit!49997)

(declare-fun Unit!50002 () Unit!49997)

(assert (=> b!3172870 (= e!1976182 Unit!50002)))

(declare-fun lt!1066943 () (_ BitVec 64))

(declare-fun b!3172871 () Bool)

(declare-fun e!1976186 () Bool)

(assert (=> b!3172871 (= e!1976186 (isDefined!5440 (getPair!102 (apply!7980 (v!35276 (underlying!8658 (cache!4266 thiss!28499))) lt!1066943) lt!1066783)))))

(declare-fun b!3172872 () Bool)

(declare-fun e!1976183 () Bool)

(declare-fun call!230613 () Bool)

(assert (=> b!3172872 (= e!1976183 call!230613)))

(declare-fun d!869348 () Bool)

(declare-fun lt!1066944 () Bool)

(declare-fun contains!6232 (ListMap!1349 tuple2!34832) Bool)

(assert (=> d!869348 (= lt!1066944 (contains!6232 (map!7965 (cache!4266 thiss!28499)) lt!1066783))))

(assert (=> d!869348 (= lt!1066944 e!1976186)))

(declare-fun res!1289460 () Bool)

(assert (=> d!869348 (=> (not res!1289460) (not e!1976186))))

(declare-fun contains!6233 (MutLongMap!4214 (_ BitVec 64)) Bool)

(assert (=> d!869348 (= res!1289460 (contains!6233 (v!35276 (underlying!8658 (cache!4266 thiss!28499))) lt!1066943))))

(declare-fun lt!1066958 () Unit!49997)

(declare-fun e!1976181 () Unit!49997)

(assert (=> d!869348 (= lt!1066958 e!1976181)))

(declare-fun c!533394 () Bool)

(assert (=> d!869348 (= c!533394 (contains!6232 (extractMap!245 (toList!2094 (map!7966 (v!35276 (underlying!8658 (cache!4266 thiss!28499)))))) lt!1066783))))

(declare-fun lt!1066942 () Unit!49997)

(declare-fun e!1976187 () Unit!49997)

(assert (=> d!869348 (= lt!1066942 e!1976187)))

(declare-fun c!533396 () Bool)

(assert (=> d!869348 (= c!533396 (contains!6233 (v!35276 (underlying!8658 (cache!4266 thiss!28499))) lt!1066943))))

(assert (=> d!869348 (= lt!1066943 (hash!815 (hashF!6162 (cache!4266 thiss!28499)) lt!1066783))))

(assert (=> d!869348 (valid!3282 (cache!4266 thiss!28499))))

(assert (=> d!869348 (= (contains!6229 (cache!4266 thiss!28499) lt!1066783) lt!1066944)))

(declare-fun b!3172873 () Bool)

(declare-fun lt!1066948 () Unit!49997)

(assert (=> b!3172873 (= e!1976181 lt!1066948)))

(declare-fun lt!1066945 () ListLongMap!749)

(declare-fun call!230614 () ListLongMap!749)

(assert (=> b!3172873 (= lt!1066945 call!230614)))

(declare-fun lemmaInGenericMapThenInLongMap!102 (ListLongMap!749 tuple2!34832 Hashable!4130) Unit!49997)

(assert (=> b!3172873 (= lt!1066948 (lemmaInGenericMapThenInLongMap!102 lt!1066945 lt!1066783 (hashF!6162 (cache!4266 thiss!28499))))))

(declare-fun res!1289461 () Bool)

(declare-fun call!230612 () Bool)

(assert (=> b!3172873 (= res!1289461 call!230612)))

(declare-fun e!1976184 () Bool)

(assert (=> b!3172873 (=> (not res!1289461) (not e!1976184))))

(assert (=> b!3172873 e!1976184))

(declare-fun bm!230608 () Bool)

(declare-fun call!230616 () Option!6930)

(declare-fun call!230615 () List!35640)

(assert (=> bm!230608 (= call!230616 (getPair!102 call!230615 lt!1066783))))

(declare-fun b!3172874 () Bool)

(assert (=> b!3172874 false))

(declare-fun lt!1066950 () Unit!49997)

(declare-fun lt!1066960 () Unit!49997)

(assert (=> b!3172874 (= lt!1066950 lt!1066960)))

(declare-fun lt!1066959 () List!35641)

(declare-fun lt!1066955 () List!35640)

(assert (=> b!3172874 (contains!6230 lt!1066959 (tuple2!34837 lt!1066943 lt!1066955))))

(assert (=> b!3172874 (= lt!1066960 (lemmaGetValueByKeyImpliesContainsTuple!108 lt!1066959 lt!1066943 lt!1066955))))

(assert (=> b!3172874 (= lt!1066955 (apply!7980 (v!35276 (underlying!8658 (cache!4266 thiss!28499))) lt!1066943))))

(assert (=> b!3172874 (= lt!1066959 (toList!2094 (map!7966 (v!35276 (underlying!8658 (cache!4266 thiss!28499))))))))

(declare-fun lt!1066952 () Unit!49997)

(declare-fun lt!1066949 () Unit!49997)

(assert (=> b!3172874 (= lt!1066952 lt!1066949)))

(declare-fun lt!1066953 () List!35641)

(assert (=> b!3172874 (isDefined!5439 (getValueByKey!190 lt!1066953 lt!1066943))))

(assert (=> b!3172874 (= lt!1066949 (lemmaContainsKeyImpliesGetValueByKeyDefined!136 lt!1066953 lt!1066943))))

(assert (=> b!3172874 (= lt!1066953 (toList!2094 (map!7966 (v!35276 (underlying!8658 (cache!4266 thiss!28499))))))))

(declare-fun lt!1066956 () Unit!49997)

(declare-fun lt!1066957 () Unit!49997)

(assert (=> b!3172874 (= lt!1066956 lt!1066957)))

(declare-fun lt!1066961 () List!35641)

(declare-fun containsKey!204 (List!35641 (_ BitVec 64)) Bool)

(assert (=> b!3172874 (containsKey!204 lt!1066961 lt!1066943)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!103 (List!35641 (_ BitVec 64)) Unit!49997)

(assert (=> b!3172874 (= lt!1066957 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!103 lt!1066961 lt!1066943))))

(assert (=> b!3172874 (= lt!1066961 (toList!2094 (map!7966 (v!35276 (underlying!8658 (cache!4266 thiss!28499))))))))

(declare-fun e!1976185 () Unit!49997)

(declare-fun Unit!50003 () Unit!49997)

(assert (=> b!3172874 (= e!1976185 Unit!50003)))

(declare-fun bm!230609 () Bool)

(assert (=> bm!230609 (= call!230614 (map!7966 (v!35276 (underlying!8658 (cache!4266 thiss!28499)))))))

(declare-fun b!3172875 () Bool)

(assert (=> b!3172875 false))

(declare-fun lt!1066946 () Unit!49997)

(declare-fun lt!1066947 () Unit!49997)

(assert (=> b!3172875 (= lt!1066946 lt!1066947)))

(declare-fun lt!1066951 () ListLongMap!749)

(assert (=> b!3172875 (contains!6232 (extractMap!245 (toList!2094 lt!1066951)) lt!1066783)))

(declare-fun lemmaInLongMapThenInGenericMap!102 (ListLongMap!749 tuple2!34832 Hashable!4130) Unit!49997)

(assert (=> b!3172875 (= lt!1066947 (lemmaInLongMapThenInGenericMap!102 lt!1066951 lt!1066783 (hashF!6162 (cache!4266 thiss!28499))))))

(assert (=> b!3172875 (= lt!1066951 call!230614)))

(declare-fun Unit!50004 () Unit!49997)

(assert (=> b!3172875 (= e!1976182 Unit!50004)))

(declare-fun b!3172876 () Bool)

(declare-fun Unit!50005 () Unit!49997)

(assert (=> b!3172876 (= e!1976187 Unit!50005)))

(declare-fun bm!230610 () Bool)

(assert (=> bm!230610 (= call!230612 (contains!6231 (ite c!533394 lt!1066945 call!230614) call!230617))))

(declare-fun b!3172877 () Bool)

(declare-fun Unit!50006 () Unit!49997)

(assert (=> b!3172877 (= e!1976185 Unit!50006)))

(declare-fun b!3172878 () Bool)

(assert (=> b!3172878 (= e!1976184 call!230613)))

(declare-fun b!3172879 () Bool)

(assert (=> b!3172879 (= e!1976181 e!1976182)))

(declare-fun res!1289459 () Bool)

(assert (=> b!3172879 (= res!1289459 call!230612)))

(assert (=> b!3172879 (=> (not res!1289459) (not e!1976183))))

(declare-fun c!533393 () Bool)

(assert (=> b!3172879 (= c!533393 e!1976183)))

(declare-fun bm!230611 () Bool)

(assert (=> bm!230611 (= call!230613 (isDefined!5440 call!230616))))

(assert (=> b!3172880 (= e!1976187 (forallContained!1080 (toList!2094 (map!7966 (v!35276 (underlying!8658 (cache!4266 thiss!28499))))) lambda!116091 (tuple2!34837 lt!1066943 (apply!7980 (v!35276 (underlying!8658 (cache!4266 thiss!28499))) lt!1066943))))))

(declare-fun c!533395 () Bool)

(assert (=> b!3172880 (= c!533395 (not (contains!6230 (toList!2094 (map!7966 (v!35276 (underlying!8658 (cache!4266 thiss!28499))))) (tuple2!34837 lt!1066943 (apply!7980 (v!35276 (underlying!8658 (cache!4266 thiss!28499))) lt!1066943)))))))

(declare-fun lt!1066954 () Unit!49997)

(assert (=> b!3172880 (= lt!1066954 e!1976185)))

(declare-fun bm!230612 () Bool)

(assert (=> bm!230612 (= call!230615 (apply!7981 (ite c!533394 lt!1066945 call!230614) call!230617))))

(assert (= (and d!869348 c!533396) b!3172880))

(assert (= (and d!869348 (not c!533396)) b!3172876))

(assert (= (and b!3172880 c!533395) b!3172874))

(assert (= (and b!3172880 (not c!533395)) b!3172877))

(assert (= (and d!869348 c!533394) b!3172873))

(assert (= (and d!869348 (not c!533394)) b!3172879))

(assert (= (and b!3172873 res!1289461) b!3172878))

(assert (= (and b!3172879 res!1289459) b!3172872))

(assert (= (and b!3172879 c!533393) b!3172875))

(assert (= (and b!3172879 (not c!533393)) b!3172870))

(assert (= (or b!3172873 b!3172879 b!3172872 b!3172875) bm!230609))

(assert (= (or b!3172873 b!3172878 b!3172879 b!3172872) bm!230607))

(assert (= (or b!3172878 b!3172872) bm!230612))

(assert (= (or b!3172873 b!3172879) bm!230610))

(assert (= (or b!3172878 b!3172872) bm!230608))

(assert (= (or b!3172878 b!3172872) bm!230611))

(assert (= (and d!869348 res!1289460) b!3172871))

(declare-fun m!3430969 () Bool)

(assert (=> bm!230608 m!3430969))

(declare-fun m!3430971 () Bool)

(assert (=> b!3172874 m!3430971))

(assert (=> b!3172874 m!3430899))

(declare-fun m!3430973 () Bool)

(assert (=> b!3172874 m!3430973))

(declare-fun m!3430975 () Bool)

(assert (=> b!3172874 m!3430975))

(declare-fun m!3430977 () Bool)

(assert (=> b!3172874 m!3430977))

(declare-fun m!3430979 () Bool)

(assert (=> b!3172874 m!3430979))

(assert (=> b!3172874 m!3430975))

(declare-fun m!3430981 () Bool)

(assert (=> b!3172874 m!3430981))

(declare-fun m!3430983 () Bool)

(assert (=> b!3172874 m!3430983))

(declare-fun m!3430985 () Bool)

(assert (=> b!3172874 m!3430985))

(assert (=> d!869348 m!3430885))

(declare-fun m!3430987 () Bool)

(assert (=> d!869348 m!3430987))

(assert (=> d!869348 m!3430899))

(assert (=> d!869348 m!3430877))

(assert (=> d!869348 m!3430987))

(declare-fun m!3430989 () Bool)

(assert (=> d!869348 m!3430989))

(assert (=> d!869348 m!3430941))

(declare-fun m!3430991 () Bool)

(assert (=> d!869348 m!3430991))

(assert (=> d!869348 m!3430877))

(declare-fun m!3430993 () Bool)

(assert (=> d!869348 m!3430993))

(declare-fun m!3430995 () Bool)

(assert (=> b!3172873 m!3430995))

(assert (=> bm!230607 m!3430885))

(assert (=> b!3172880 m!3430899))

(assert (=> b!3172880 m!3430979))

(declare-fun m!3430997 () Bool)

(assert (=> b!3172880 m!3430997))

(declare-fun m!3430999 () Bool)

(assert (=> b!3172880 m!3430999))

(assert (=> b!3172871 m!3430979))

(assert (=> b!3172871 m!3430979))

(declare-fun m!3431001 () Bool)

(assert (=> b!3172871 m!3431001))

(assert (=> b!3172871 m!3431001))

(declare-fun m!3431003 () Bool)

(assert (=> b!3172871 m!3431003))

(declare-fun m!3431005 () Bool)

(assert (=> bm!230612 m!3431005))

(declare-fun m!3431007 () Bool)

(assert (=> bm!230610 m!3431007))

(declare-fun m!3431009 () Bool)

(assert (=> b!3172875 m!3431009))

(assert (=> b!3172875 m!3431009))

(declare-fun m!3431011 () Bool)

(assert (=> b!3172875 m!3431011))

(declare-fun m!3431013 () Bool)

(assert (=> b!3172875 m!3431013))

(assert (=> bm!230609 m!3430899))

(declare-fun m!3431015 () Bool)

(assert (=> bm!230611 m!3431015))

(assert (=> b!3172742 d!869348))

(declare-fun bs!539631 () Bool)

(declare-fun b!3172888 () Bool)

(assert (= bs!539631 (and b!3172888 b!3172784)))

(declare-fun lambda!116094 () Int)

(assert (=> bs!539631 (= lambda!116094 lambda!116088)))

(declare-fun d!869350 () Bool)

(declare-fun res!1289468 () Bool)

(declare-fun e!1976192 () Bool)

(assert (=> d!869350 (=> (not res!1289468) (not e!1976192))))

(assert (=> d!869350 (= res!1289468 (valid!3282 (cache!4266 thiss!28499)))))

(assert (=> d!869350 (= (validCacheMap!97 (cache!4266 thiss!28499)) e!1976192)))

(declare-fun b!3172887 () Bool)

(declare-fun res!1289469 () Bool)

(assert (=> b!3172887 (=> (not res!1289469) (not e!1976192))))

(declare-fun invariantList!497 (List!35640) Bool)

(assert (=> b!3172887 (= res!1289469 (invariantList!497 (toList!2093 (map!7965 (cache!4266 thiss!28499)))))))

(declare-fun forall!7178 (List!35640 Int) Bool)

(assert (=> b!3172888 (= e!1976192 (forall!7178 (toList!2093 (map!7965 (cache!4266 thiss!28499))) lambda!116094))))

(assert (= (and d!869350 res!1289468) b!3172887))

(assert (= (and b!3172887 res!1289469) b!3172888))

(assert (=> d!869350 m!3430941))

(assert (=> b!3172887 m!3430877))

(declare-fun m!3431018 () Bool)

(assert (=> b!3172887 m!3431018))

(assert (=> b!3172888 m!3430877))

(declare-fun m!3431020 () Bool)

(assert (=> b!3172888 m!3431020))

(assert (=> b!3172747 d!869350))

(declare-fun e!1976195 () Bool)

(assert (=> b!3172748 (= tp!1002266 e!1976195)))

(declare-fun b!3172899 () Bool)

(assert (=> b!3172899 (= e!1976195 tp_is_empty!17149)))

(declare-fun b!3172900 () Bool)

(declare-fun tp!1002285 () Bool)

(declare-fun tp!1002283 () Bool)

(assert (=> b!3172900 (= e!1976195 (and tp!1002285 tp!1002283))))

(declare-fun b!3172901 () Bool)

(declare-fun tp!1002287 () Bool)

(assert (=> b!3172901 (= e!1976195 tp!1002287)))

(declare-fun b!3172902 () Bool)

(declare-fun tp!1002284 () Bool)

(declare-fun tp!1002286 () Bool)

(assert (=> b!3172902 (= e!1976195 (and tp!1002284 tp!1002286))))

(assert (= (and b!3172748 ((_ is ElementMatch!9793) (regOne!20098 r!4721))) b!3172899))

(assert (= (and b!3172748 ((_ is Concat!15114) (regOne!20098 r!4721))) b!3172900))

(assert (= (and b!3172748 ((_ is Star!9793) (regOne!20098 r!4721))) b!3172901))

(assert (= (and b!3172748 ((_ is Union!9793) (regOne!20098 r!4721))) b!3172902))

(declare-fun e!1976196 () Bool)

(assert (=> b!3172748 (= tp!1002267 e!1976196)))

(declare-fun b!3172903 () Bool)

(assert (=> b!3172903 (= e!1976196 tp_is_empty!17149)))

(declare-fun b!3172904 () Bool)

(declare-fun tp!1002290 () Bool)

(declare-fun tp!1002288 () Bool)

(assert (=> b!3172904 (= e!1976196 (and tp!1002290 tp!1002288))))

(declare-fun b!3172905 () Bool)

(declare-fun tp!1002292 () Bool)

(assert (=> b!3172905 (= e!1976196 tp!1002292)))

(declare-fun b!3172906 () Bool)

(declare-fun tp!1002289 () Bool)

(declare-fun tp!1002291 () Bool)

(assert (=> b!3172906 (= e!1976196 (and tp!1002289 tp!1002291))))

(assert (= (and b!3172748 ((_ is ElementMatch!9793) (regTwo!20098 r!4721))) b!3172903))

(assert (= (and b!3172748 ((_ is Concat!15114) (regTwo!20098 r!4721))) b!3172904))

(assert (= (and b!3172748 ((_ is Star!9793) (regTwo!20098 r!4721))) b!3172905))

(assert (= (and b!3172748 ((_ is Union!9793) (regTwo!20098 r!4721))) b!3172906))

(declare-fun e!1976197 () Bool)

(assert (=> b!3172745 (= tp!1002269 e!1976197)))

(declare-fun b!3172907 () Bool)

(assert (=> b!3172907 (= e!1976197 tp_is_empty!17149)))

(declare-fun b!3172908 () Bool)

(declare-fun tp!1002295 () Bool)

(declare-fun tp!1002293 () Bool)

(assert (=> b!3172908 (= e!1976197 (and tp!1002295 tp!1002293))))

(declare-fun b!3172909 () Bool)

(declare-fun tp!1002297 () Bool)

(assert (=> b!3172909 (= e!1976197 tp!1002297)))

(declare-fun b!3172910 () Bool)

(declare-fun tp!1002294 () Bool)

(declare-fun tp!1002296 () Bool)

(assert (=> b!3172910 (= e!1976197 (and tp!1002294 tp!1002296))))

(assert (= (and b!3172745 ((_ is ElementMatch!9793) (regOne!20099 r!4721))) b!3172907))

(assert (= (and b!3172745 ((_ is Concat!15114) (regOne!20099 r!4721))) b!3172908))

(assert (= (and b!3172745 ((_ is Star!9793) (regOne!20099 r!4721))) b!3172909))

(assert (= (and b!3172745 ((_ is Union!9793) (regOne!20099 r!4721))) b!3172910))

(declare-fun e!1976198 () Bool)

(assert (=> b!3172745 (= tp!1002270 e!1976198)))

(declare-fun b!3172911 () Bool)

(assert (=> b!3172911 (= e!1976198 tp_is_empty!17149)))

(declare-fun b!3172912 () Bool)

(declare-fun tp!1002300 () Bool)

(declare-fun tp!1002298 () Bool)

(assert (=> b!3172912 (= e!1976198 (and tp!1002300 tp!1002298))))

(declare-fun b!3172913 () Bool)

(declare-fun tp!1002302 () Bool)

(assert (=> b!3172913 (= e!1976198 tp!1002302)))

(declare-fun b!3172914 () Bool)

(declare-fun tp!1002299 () Bool)

(declare-fun tp!1002301 () Bool)

(assert (=> b!3172914 (= e!1976198 (and tp!1002299 tp!1002301))))

(assert (= (and b!3172745 ((_ is ElementMatch!9793) (regTwo!20099 r!4721))) b!3172911))

(assert (= (and b!3172745 ((_ is Concat!15114) (regTwo!20099 r!4721))) b!3172912))

(assert (= (and b!3172745 ((_ is Star!9793) (regTwo!20099 r!4721))) b!3172913))

(assert (= (and b!3172745 ((_ is Union!9793) (regTwo!20099 r!4721))) b!3172914))

(declare-fun tp!1002311 () Bool)

(declare-fun e!1976201 () Bool)

(declare-fun tp!1002309 () Bool)

(declare-fun b!3172919 () Bool)

(declare-fun tp!1002310 () Bool)

(assert (=> b!3172919 (= e!1976201 (and tp!1002309 tp_is_empty!17149 tp!1002310 tp!1002311))))

(assert (=> b!3172750 (= tp!1002262 e!1976201)))

(assert (= (and b!3172750 ((_ is Cons!35516) (zeroValue!4473 (v!35275 (underlying!8657 (v!35276 (underlying!8658 (cache!4266 thiss!28499)))))))) b!3172919))

(declare-fun tp!1002314 () Bool)

(declare-fun tp!1002312 () Bool)

(declare-fun e!1976202 () Bool)

(declare-fun tp!1002313 () Bool)

(declare-fun b!3172920 () Bool)

(assert (=> b!3172920 (= e!1976202 (and tp!1002312 tp_is_empty!17149 tp!1002313 tp!1002314))))

(assert (=> b!3172750 (= tp!1002263 e!1976202)))

(assert (= (and b!3172750 ((_ is Cons!35516) (minValue!4473 (v!35275 (underlying!8657 (v!35276 (underlying!8658 (cache!4266 thiss!28499)))))))) b!3172920))

(declare-fun b!3172927 () Bool)

(declare-fun tp!1002332 () Bool)

(declare-fun tp!1002329 () Bool)

(declare-fun e!1976208 () Bool)

(declare-fun tp!1002334 () Bool)

(assert (=> b!3172927 (= e!1976208 (and tp!1002332 tp_is_empty!17149 tp!1002334 tp!1002329))))

(declare-fun e!1976207 () Bool)

(declare-fun tp!1002333 () Bool)

(declare-fun b!3172928 () Bool)

(declare-fun tp!1002331 () Bool)

(declare-fun tp!1002330 () Bool)

(assert (=> b!3172928 (= e!1976207 (and tp!1002330 tp_is_empty!17149 tp!1002333 tp!1002331))))

(declare-fun mapIsEmpty!19094 () Bool)

(declare-fun mapRes!19094 () Bool)

(assert (=> mapIsEmpty!19094 mapRes!19094))

(declare-fun condMapEmpty!19094 () Bool)

(declare-fun mapDefault!19094 () List!35640)

(assert (=> mapNonEmpty!19091 (= condMapEmpty!19094 (= mapRest!19091 ((as const (Array (_ BitVec 32) List!35640)) mapDefault!19094)))))

(assert (=> mapNonEmpty!19091 (= tp!1002261 (and e!1976207 mapRes!19094))))

(declare-fun mapNonEmpty!19094 () Bool)

(declare-fun tp!1002335 () Bool)

(assert (=> mapNonEmpty!19094 (= mapRes!19094 (and tp!1002335 e!1976208))))

(declare-fun mapValue!19094 () List!35640)

(declare-fun mapRest!19094 () (Array (_ BitVec 32) List!35640))

(declare-fun mapKey!19094 () (_ BitVec 32))

(assert (=> mapNonEmpty!19094 (= mapRest!19091 (store mapRest!19094 mapKey!19094 mapValue!19094))))

(assert (= (and mapNonEmpty!19091 condMapEmpty!19094) mapIsEmpty!19094))

(assert (= (and mapNonEmpty!19091 (not condMapEmpty!19094)) mapNonEmpty!19094))

(assert (= (and mapNonEmpty!19094 ((_ is Cons!35516) mapValue!19094)) b!3172927))

(assert (= (and mapNonEmpty!19091 ((_ is Cons!35516) mapDefault!19094)) b!3172928))

(declare-fun m!3431022 () Bool)

(assert (=> mapNonEmpty!19094 m!3431022))

(declare-fun tp!1002336 () Bool)

(declare-fun tp!1002337 () Bool)

(declare-fun tp!1002338 () Bool)

(declare-fun e!1976209 () Bool)

(declare-fun b!3172929 () Bool)

(assert (=> b!3172929 (= e!1976209 (and tp!1002336 tp_is_empty!17149 tp!1002337 tp!1002338))))

(assert (=> mapNonEmpty!19091 (= tp!1002265 e!1976209)))

(assert (= (and mapNonEmpty!19091 ((_ is Cons!35516) mapValue!19091)) b!3172929))

(declare-fun e!1976210 () Bool)

(assert (=> b!3172755 (= tp!1002271 e!1976210)))

(declare-fun b!3172930 () Bool)

(assert (=> b!3172930 (= e!1976210 tp_is_empty!17149)))

(declare-fun b!3172931 () Bool)

(declare-fun tp!1002341 () Bool)

(declare-fun tp!1002339 () Bool)

(assert (=> b!3172931 (= e!1976210 (and tp!1002341 tp!1002339))))

(declare-fun b!3172932 () Bool)

(declare-fun tp!1002343 () Bool)

(assert (=> b!3172932 (= e!1976210 tp!1002343)))

(declare-fun b!3172933 () Bool)

(declare-fun tp!1002340 () Bool)

(declare-fun tp!1002342 () Bool)

(assert (=> b!3172933 (= e!1976210 (and tp!1002340 tp!1002342))))

(assert (= (and b!3172755 ((_ is ElementMatch!9793) (reg!10122 r!4721))) b!3172930))

(assert (= (and b!3172755 ((_ is Concat!15114) (reg!10122 r!4721))) b!3172931))

(assert (= (and b!3172755 ((_ is Star!9793) (reg!10122 r!4721))) b!3172932))

(assert (= (and b!3172755 ((_ is Union!9793) (reg!10122 r!4721))) b!3172933))

(declare-fun tp!1002344 () Bool)

(declare-fun tp!1002345 () Bool)

(declare-fun tp!1002346 () Bool)

(declare-fun e!1976211 () Bool)

(declare-fun b!3172934 () Bool)

(assert (=> b!3172934 (= e!1976211 (and tp!1002344 tp_is_empty!17149 tp!1002345 tp!1002346))))

(assert (=> b!3172746 (= tp!1002272 e!1976211)))

(assert (= (and b!3172746 ((_ is Cons!35516) mapDefault!19091)) b!3172934))

(declare-fun b_lambda!86483 () Bool)

(assert (= b_lambda!86481 (or (and b!3172752 b_free!83339) b_lambda!86483)))

(declare-fun b_lambda!86485 () Bool)

(assert (= b_lambda!86479 (or (and b!3172752 b_free!83339) b_lambda!86485)))

(check-sat (not b!3172910) (not bm!230592) (not b!3172927) tp_is_empty!17149 (not b!3172934) (not b_lambda!86485) (not bm!230609) (not b!3172919) (not d!869332) (not b!3172871) (not b!3172908) (not bm!230584) (not b!3172913) (not b!3172920) (not b!3172912) b_and!209619 (not b!3172901) (not b!3172931) (not b!3172787) (not b!3172929) b_and!209625 (not mapNonEmpty!19094) (not b_lambda!86483) (not b!3172873) (not b!3172836) (not b!3172770) (not b!3172875) (not b!3172888) (not b!3172928) (not b!3172773) (not b!3172902) (not b!3172933) (not tb!155109) (not b!3172769) (not b!3172847) (not bm!230610) (not d!869338) (not b!3172887) (not b!3172880) (not b!3172812) (not b!3172905) (not d!869350) (not b!3172786) (not d!869348) (not b!3172874) (not bm!230583) (not b!3172914) (not b!3172904) (not b!3172909) (not b_next!84043) (not b_next!84041) (not bm!230612) (not bm!230608) (not bm!230607) (not b!3172906) (not bm!230594) (not b!3172784) (not bm!230611) (not d!869334) (not b!3172932) (not b!3172900))
(check-sat b_and!209625 b_and!209619 (not b_next!84041) (not b_next!84043))

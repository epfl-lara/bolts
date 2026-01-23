; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!297002 () Bool)

(assert start!297002)

(declare-fun b!3171045 () Bool)

(declare-fun b_free!83257 () Bool)

(declare-fun b_next!83961 () Bool)

(assert (=> b!3171045 (= b_free!83257 (not b_next!83961))))

(declare-fun tp!1001001 () Bool)

(declare-fun b_and!209535 () Bool)

(assert (=> b!3171045 (= tp!1001001 b_and!209535)))

(declare-fun b!3171051 () Bool)

(declare-fun b_free!83259 () Bool)

(declare-fun b_next!83963 () Bool)

(assert (=> b!3171051 (= b_free!83259 (not b_next!83963))))

(declare-fun tp!1001006 () Bool)

(declare-fun b_and!209537 () Bool)

(assert (=> b!3171051 (= tp!1001006 b_and!209537)))

(declare-fun b!3171034 () Bool)

(declare-fun e!1974944 () Bool)

(declare-fun e!1974942 () Bool)

(declare-datatypes ((C!19732 0))(
  ( (C!19733 (val!11902 Int)) )
))
(declare-datatypes ((Regex!9773 0))(
  ( (ElementMatch!9773 (c!533195 C!19732)) (Concat!15094 (regOne!20058 Regex!9773) (regTwo!20058 Regex!9773)) (EmptyExpr!9773) (Star!9773 (reg!10102 Regex!9773)) (EmptyLang!9773) (Union!9773 (regOne!20059 Regex!9773) (regTwo!20059 Regex!9773)) )
))
(declare-datatypes ((tuple2!34736 0))(
  ( (tuple2!34737 (_1!20500 Regex!9773) (_2!20500 C!19732)) )
))
(declare-datatypes ((tuple2!34738 0))(
  ( (tuple2!34739 (_1!20501 tuple2!34736) (_2!20501 Regex!9773)) )
))
(declare-datatypes ((List!35615 0))(
  ( (Nil!35491) (Cons!35491 (h!40911 tuple2!34738) (t!234698 List!35615)) )
))
(declare-datatypes ((array!15006 0))(
  ( (array!15007 (arr!6678 (Array (_ BitVec 32) List!35615)) (size!26764 (_ BitVec 32))) )
))
(declare-datatypes ((array!15008 0))(
  ( (array!15009 (arr!6679 (Array (_ BitVec 32) (_ BitVec 64))) (size!26765 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8388 0))(
  ( (LongMapFixedSize!8389 (defaultEntry!4579 Int) (mask!10874 (_ BitVec 32)) (extraKeys!4443 (_ BitVec 32)) (zeroValue!4453 List!35615) (minValue!4453 List!35615) (_size!8431 (_ BitVec 32)) (_keys!4494 array!15008) (_values!4475 array!15006) (_vacant!4255 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!16585 0))(
  ( (Cell!16586 (v!35225 LongMapFixedSize!8388)) )
))
(declare-datatypes ((MutLongMap!4194 0))(
  ( (LongMap!4194 (underlying!8617 Cell!16585)) (MutLongMapExt!4193 (__x!22688 Int)) )
))
(declare-fun lt!1066120 () MutLongMap!4194)

(get-info :version)

(assert (=> b!3171034 (= e!1974944 (and e!1974942 ((_ is LongMap!4194) lt!1066120)))))

(declare-datatypes ((Cell!16587 0))(
  ( (Cell!16588 (v!35226 MutLongMap!4194)) )
))
(declare-datatypes ((Hashable!4110 0))(
  ( (HashableExt!4109 (__x!22689 Int)) )
))
(declare-datatypes ((MutableMap!4100 0))(
  ( (MutableMapExt!4099 (__x!22690 Int)) (HashMap!4100 (underlying!8618 Cell!16587) (hashF!6142 Hashable!4110) (_size!8432 (_ BitVec 32)) (defaultValue!4271 Int)) )
))
(declare-datatypes ((Cache!470 0))(
  ( (Cache!471 (cache!4246 MutableMap!4100)) )
))
(declare-fun thiss!28524 () Cache!470)

(assert (=> b!3171034 (= lt!1066120 (v!35226 (underlying!8618 (cache!4246 thiss!28524))))))

(declare-fun b!3171036 () Bool)

(declare-fun res!1288986 () Bool)

(declare-fun e!1974943 () Bool)

(assert (=> b!3171036 (=> (not res!1288986) (not e!1974943))))

(declare-fun r!4733 () Regex!9773)

(declare-fun validRegex!4485 (Regex!9773) Bool)

(assert (=> b!3171036 (= res!1288986 (validRegex!4485 r!4733))))

(declare-fun b!3171037 () Bool)

(declare-fun e!1974948 () Bool)

(declare-fun tp!1001003 () Bool)

(declare-fun tp!1001008 () Bool)

(assert (=> b!3171037 (= e!1974948 (and tp!1001003 tp!1001008))))

(declare-fun mapIsEmpty!19010 () Bool)

(declare-fun mapRes!19010 () Bool)

(assert (=> mapIsEmpty!19010 mapRes!19010))

(declare-fun b!3171038 () Bool)

(declare-fun e!1974939 () Bool)

(assert (=> b!3171038 (= e!1974942 e!1974939)))

(declare-fun b!3171039 () Bool)

(declare-fun tp!1001007 () Bool)

(declare-fun tp!1001004 () Bool)

(assert (=> b!3171039 (= e!1974948 (and tp!1001007 tp!1001004))))

(declare-fun b!3171040 () Bool)

(declare-fun e!1974940 () Bool)

(declare-fun tp_is_empty!17109 () Bool)

(assert (=> b!3171040 (= e!1974940 tp_is_empty!17109)))

(declare-fun b!3171041 () Bool)

(declare-fun e!1974946 () Bool)

(declare-fun tp!1000994 () Bool)

(assert (=> b!3171041 (= e!1974946 (and tp!1000994 mapRes!19010))))

(declare-fun condMapEmpty!19010 () Bool)

(declare-fun mapDefault!19010 () List!35615)

(assert (=> b!3171041 (= condMapEmpty!19010 (= (arr!6678 (_values!4475 (v!35225 (underlying!8617 (v!35226 (underlying!8618 (cache!4246 thiss!28524))))))) ((as const (Array (_ BitVec 32) List!35615)) mapDefault!19010)))))

(declare-fun res!1288987 () Bool)

(assert (=> start!297002 (=> (not res!1288987) (not e!1974943))))

(declare-fun validCacheMap!80 (MutableMap!4100) Bool)

(assert (=> start!297002 (= res!1288987 (validCacheMap!80 (cache!4246 thiss!28524)))))

(assert (=> start!297002 e!1974943))

(declare-fun e!1974945 () Bool)

(declare-fun inv!48194 (Cache!470) Bool)

(assert (=> start!297002 (and (inv!48194 thiss!28524) e!1974945)))

(assert (=> start!297002 e!1974940))

(assert (=> start!297002 e!1974948))

(assert (=> start!297002 tp_is_empty!17109))

(declare-fun b!3171035 () Bool)

(declare-fun e!1974949 () Bool)

(assert (=> b!3171035 (= e!1974945 e!1974949)))

(declare-fun b!3171042 () Bool)

(declare-datatypes ((tuple2!34740 0))(
  ( (tuple2!34741 (_1!20502 Bool) (_2!20502 MutableMap!4100)) )
))
(declare-fun lt!1066119 () tuple2!34740)

(assert (=> b!3171042 (= e!1974943 (not (validCacheMap!80 (_2!20502 lt!1066119))))))

(declare-fun lambda!116018 () Int)

(declare-fun forall!7169 (List!35615 Int) Bool)

(declare-datatypes ((ListMap!1337 0))(
  ( (ListMap!1338 (toList!2082 List!35615)) )
))
(declare-fun map!7944 (MutableMap!4100) ListMap!1337)

(assert (=> b!3171042 (forall!7169 (toList!2082 (map!7944 (_2!20502 lt!1066119))) lambda!116018)))

(declare-fun lt!1066118 () tuple2!34736)

(declare-fun res!14113 () Regex!9773)

(declare-fun update!282 (MutableMap!4100 tuple2!34736 Regex!9773) tuple2!34740)

(assert (=> b!3171042 (= lt!1066119 (update!282 (cache!4246 thiss!28524) lt!1066118 res!14113))))

(declare-datatypes ((Unit!49941 0))(
  ( (Unit!49942) )
))
(declare-fun lt!1066121 () Unit!49941)

(declare-fun lemmaUpdatePreservesForallPairs!37 (MutableMap!4100 tuple2!34736 Regex!9773 Int) Unit!49941)

(assert (=> b!3171042 (= lt!1066121 (lemmaUpdatePreservesForallPairs!37 (cache!4246 thiss!28524) lt!1066118 res!14113 lambda!116018))))

(declare-fun c!6996 () C!19732)

(assert (=> b!3171042 (= lt!1066118 (tuple2!34737 r!4733 c!6996))))

(declare-fun b!3171043 () Bool)

(declare-fun tp!1000996 () Bool)

(assert (=> b!3171043 (= e!1974948 tp!1000996)))

(declare-fun b!3171044 () Bool)

(declare-fun tp!1000993 () Bool)

(declare-fun tp!1000995 () Bool)

(assert (=> b!3171044 (= e!1974940 (and tp!1000993 tp!1000995))))

(declare-fun mapNonEmpty!19010 () Bool)

(declare-fun tp!1000999 () Bool)

(declare-fun tp!1001000 () Bool)

(assert (=> mapNonEmpty!19010 (= mapRes!19010 (and tp!1000999 tp!1001000))))

(declare-fun mapRest!19010 () (Array (_ BitVec 32) List!35615))

(declare-fun mapKey!19010 () (_ BitVec 32))

(declare-fun mapValue!19010 () List!35615)

(assert (=> mapNonEmpty!19010 (= (arr!6678 (_values!4475 (v!35225 (underlying!8617 (v!35226 (underlying!8618 (cache!4246 thiss!28524))))))) (store mapRest!19010 mapKey!19010 mapValue!19010))))

(declare-fun tp!1000998 () Bool)

(declare-fun e!1974941 () Bool)

(declare-fun tp!1001002 () Bool)

(declare-fun array_inv!4790 (array!15008) Bool)

(declare-fun array_inv!4791 (array!15006) Bool)

(assert (=> b!3171045 (= e!1974941 (and tp!1001001 tp!1000998 tp!1001002 (array_inv!4790 (_keys!4494 (v!35225 (underlying!8617 (v!35226 (underlying!8618 (cache!4246 thiss!28524))))))) (array_inv!4791 (_values!4475 (v!35225 (underlying!8617 (v!35226 (underlying!8618 (cache!4246 thiss!28524))))))) e!1974946))))

(declare-fun b!3171046 () Bool)

(assert (=> b!3171046 (= e!1974939 e!1974941)))

(declare-fun b!3171047 () Bool)

(assert (=> b!3171047 (= e!1974948 tp_is_empty!17109)))

(declare-fun b!3171048 () Bool)

(declare-fun tp!1001005 () Bool)

(declare-fun tp!1000997 () Bool)

(assert (=> b!3171048 (= e!1974940 (and tp!1001005 tp!1000997))))

(declare-fun b!3171049 () Bool)

(declare-fun res!1288988 () Bool)

(assert (=> b!3171049 (=> (not res!1288988) (not e!1974943))))

(declare-fun derivativeStep!2912 (Regex!9773 C!19732) Regex!9773)

(assert (=> b!3171049 (= res!1288988 (= res!14113 (derivativeStep!2912 r!4733 c!6996)))))

(declare-fun b!3171050 () Bool)

(declare-fun tp!1001009 () Bool)

(assert (=> b!3171050 (= e!1974940 tp!1001009)))

(assert (=> b!3171051 (= e!1974949 (and e!1974944 tp!1001006))))

(assert (= (and start!297002 res!1288987) b!3171036))

(assert (= (and b!3171036 res!1288986) b!3171049))

(assert (= (and b!3171049 res!1288988) b!3171042))

(assert (= (and b!3171041 condMapEmpty!19010) mapIsEmpty!19010))

(assert (= (and b!3171041 (not condMapEmpty!19010)) mapNonEmpty!19010))

(assert (= b!3171045 b!3171041))

(assert (= b!3171046 b!3171045))

(assert (= b!3171038 b!3171046))

(assert (= (and b!3171034 ((_ is LongMap!4194) (v!35226 (underlying!8618 (cache!4246 thiss!28524))))) b!3171038))

(assert (= b!3171051 b!3171034))

(assert (= (and b!3171035 ((_ is HashMap!4100) (cache!4246 thiss!28524))) b!3171051))

(assert (= start!297002 b!3171035))

(assert (= (and start!297002 ((_ is ElementMatch!9773) r!4733)) b!3171040))

(assert (= (and start!297002 ((_ is Concat!15094) r!4733)) b!3171044))

(assert (= (and start!297002 ((_ is Star!9773) r!4733)) b!3171050))

(assert (= (and start!297002 ((_ is Union!9773) r!4733)) b!3171048))

(assert (= (and start!297002 ((_ is ElementMatch!9773) res!14113)) b!3171047))

(assert (= (and start!297002 ((_ is Concat!15094) res!14113)) b!3171037))

(assert (= (and start!297002 ((_ is Star!9773) res!14113)) b!3171043))

(assert (= (and start!297002 ((_ is Union!9773) res!14113)) b!3171039))

(declare-fun m!3430035 () Bool)

(assert (=> b!3171045 m!3430035))

(declare-fun m!3430037 () Bool)

(assert (=> b!3171045 m!3430037))

(declare-fun m!3430039 () Bool)

(assert (=> start!297002 m!3430039))

(declare-fun m!3430041 () Bool)

(assert (=> start!297002 m!3430041))

(declare-fun m!3430043 () Bool)

(assert (=> b!3171049 m!3430043))

(declare-fun m!3430045 () Bool)

(assert (=> b!3171042 m!3430045))

(declare-fun m!3430047 () Bool)

(assert (=> b!3171042 m!3430047))

(declare-fun m!3430049 () Bool)

(assert (=> b!3171042 m!3430049))

(declare-fun m!3430051 () Bool)

(assert (=> b!3171042 m!3430051))

(declare-fun m!3430053 () Bool)

(assert (=> b!3171042 m!3430053))

(declare-fun m!3430055 () Bool)

(assert (=> b!3171036 m!3430055))

(declare-fun m!3430057 () Bool)

(assert (=> mapNonEmpty!19010 m!3430057))

(check-sat (not b!3171036) (not b!3171044) (not b!3171041) (not b!3171043) (not b_next!83963) (not b!3171039) (not b!3171045) (not b!3171049) (not b!3171050) tp_is_empty!17109 (not b_next!83961) (not mapNonEmpty!19010) b_and!209537 (not start!297002) (not b!3171037) (not b!3171042) (not b!3171048) b_and!209535)
(check-sat b_and!209537 b_and!209535 (not b_next!83961) (not b_next!83963))
(get-model)

(declare-fun b!3171072 () Bool)

(declare-fun c!533209 () Bool)

(declare-fun nullable!3358 (Regex!9773) Bool)

(assert (=> b!3171072 (= c!533209 (nullable!3358 (regOne!20058 r!4733)))))

(declare-fun e!1974960 () Regex!9773)

(declare-fun e!1974961 () Regex!9773)

(assert (=> b!3171072 (= e!1974960 e!1974961)))

(declare-fun b!3171073 () Bool)

(declare-fun call!230366 () Regex!9773)

(assert (=> b!3171073 (= e!1974960 (Concat!15094 call!230366 r!4733))))

(declare-fun b!3171074 () Bool)

(declare-fun call!230365 () Regex!9773)

(assert (=> b!3171074 (= e!1974961 (Union!9773 (Concat!15094 call!230365 (regTwo!20058 r!4733)) EmptyLang!9773))))

(declare-fun b!3171076 () Bool)

(declare-fun e!1974963 () Regex!9773)

(assert (=> b!3171076 (= e!1974963 EmptyLang!9773)))

(declare-fun b!3171077 () Bool)

(declare-fun e!1974964 () Regex!9773)

(assert (=> b!3171077 (= e!1974964 e!1974960)))

(declare-fun c!533210 () Bool)

(assert (=> b!3171077 (= c!533210 ((_ is Star!9773) r!4733))))

(declare-fun call!230368 () Regex!9773)

(declare-fun b!3171078 () Bool)

(assert (=> b!3171078 (= e!1974961 (Union!9773 (Concat!15094 call!230365 (regTwo!20058 r!4733)) call!230368))))

(declare-fun c!533208 () Bool)

(declare-fun bm!230360 () Bool)

(assert (=> bm!230360 (= call!230368 (derivativeStep!2912 (ite c!533208 (regOne!20059 r!4733) (regTwo!20058 r!4733)) c!6996))))

(declare-fun b!3171079 () Bool)

(assert (=> b!3171079 (= c!533208 ((_ is Union!9773) r!4733))))

(declare-fun e!1974962 () Regex!9773)

(assert (=> b!3171079 (= e!1974962 e!1974964)))

(declare-fun b!3171080 () Bool)

(assert (=> b!3171080 (= e!1974963 e!1974962)))

(declare-fun c!533206 () Bool)

(assert (=> b!3171080 (= c!533206 ((_ is ElementMatch!9773) r!4733))))

(declare-fun bm!230361 () Bool)

(declare-fun call!230367 () Regex!9773)

(assert (=> bm!230361 (= call!230366 call!230367)))

(declare-fun b!3171081 () Bool)

(assert (=> b!3171081 (= e!1974962 (ite (= c!6996 (c!533195 r!4733)) EmptyExpr!9773 EmptyLang!9773))))

(declare-fun b!3171075 () Bool)

(assert (=> b!3171075 (= e!1974964 (Union!9773 call!230368 call!230367))))

(declare-fun d!869216 () Bool)

(declare-fun lt!1066124 () Regex!9773)

(assert (=> d!869216 (validRegex!4485 lt!1066124)))

(assert (=> d!869216 (= lt!1066124 e!1974963)))

(declare-fun c!533207 () Bool)

(assert (=> d!869216 (= c!533207 (or ((_ is EmptyExpr!9773) r!4733) ((_ is EmptyLang!9773) r!4733)))))

(assert (=> d!869216 (validRegex!4485 r!4733)))

(assert (=> d!869216 (= (derivativeStep!2912 r!4733 c!6996) lt!1066124)))

(declare-fun bm!230362 () Bool)

(assert (=> bm!230362 (= call!230365 call!230366)))

(declare-fun bm!230363 () Bool)

(assert (=> bm!230363 (= call!230367 (derivativeStep!2912 (ite c!533208 (regTwo!20059 r!4733) (ite c!533210 (reg!10102 r!4733) (regOne!20058 r!4733))) c!6996))))

(assert (= (and d!869216 c!533207) b!3171076))

(assert (= (and d!869216 (not c!533207)) b!3171080))

(assert (= (and b!3171080 c!533206) b!3171081))

(assert (= (and b!3171080 (not c!533206)) b!3171079))

(assert (= (and b!3171079 c!533208) b!3171075))

(assert (= (and b!3171079 (not c!533208)) b!3171077))

(assert (= (and b!3171077 c!533210) b!3171073))

(assert (= (and b!3171077 (not c!533210)) b!3171072))

(assert (= (and b!3171072 c!533209) b!3171078))

(assert (= (and b!3171072 (not c!533209)) b!3171074))

(assert (= (or b!3171078 b!3171074) bm!230362))

(assert (= (or b!3171073 bm!230362) bm!230361))

(assert (= (or b!3171075 bm!230361) bm!230363))

(assert (= (or b!3171075 b!3171078) bm!230360))

(declare-fun m!3430059 () Bool)

(assert (=> b!3171072 m!3430059))

(declare-fun m!3430061 () Bool)

(assert (=> bm!230360 m!3430061))

(declare-fun m!3430063 () Bool)

(assert (=> d!869216 m!3430063))

(assert (=> d!869216 m!3430055))

(declare-fun m!3430065 () Bool)

(assert (=> bm!230363 m!3430065))

(assert (=> b!3171049 d!869216))

(declare-fun b!3171100 () Bool)

(declare-fun e!1974979 () Bool)

(declare-fun call!230376 () Bool)

(assert (=> b!3171100 (= e!1974979 call!230376)))

(declare-fun c!533216 () Bool)

(declare-fun bm!230370 () Bool)

(declare-fun c!533215 () Bool)

(assert (=> bm!230370 (= call!230376 (validRegex!4485 (ite c!533216 (reg!10102 r!4733) (ite c!533215 (regOne!20059 r!4733) (regTwo!20058 r!4733)))))))

(declare-fun b!3171101 () Bool)

(declare-fun e!1974980 () Bool)

(assert (=> b!3171101 (= e!1974980 e!1974979)))

(declare-fun res!1289003 () Bool)

(assert (=> b!3171101 (= res!1289003 (not (nullable!3358 (reg!10102 r!4733))))))

(assert (=> b!3171101 (=> (not res!1289003) (not e!1974979))))

(declare-fun bm!230371 () Bool)

(declare-fun call!230377 () Bool)

(assert (=> bm!230371 (= call!230377 (validRegex!4485 (ite c!533215 (regTwo!20059 r!4733) (regOne!20058 r!4733))))))

(declare-fun b!3171102 () Bool)

(declare-fun e!1974981 () Bool)

(declare-fun call!230375 () Bool)

(assert (=> b!3171102 (= e!1974981 call!230375)))

(declare-fun d!869218 () Bool)

(declare-fun res!1288999 () Bool)

(declare-fun e!1974985 () Bool)

(assert (=> d!869218 (=> res!1288999 e!1974985)))

(assert (=> d!869218 (= res!1288999 ((_ is ElementMatch!9773) r!4733))))

(assert (=> d!869218 (= (validRegex!4485 r!4733) e!1974985)))

(declare-fun b!3171103 () Bool)

(declare-fun res!1289001 () Bool)

(declare-fun e!1974984 () Bool)

(assert (=> b!3171103 (=> res!1289001 e!1974984)))

(assert (=> b!3171103 (= res!1289001 (not ((_ is Concat!15094) r!4733)))))

(declare-fun e!1974983 () Bool)

(assert (=> b!3171103 (= e!1974983 e!1974984)))

(declare-fun b!3171104 () Bool)

(declare-fun res!1289002 () Bool)

(declare-fun e!1974982 () Bool)

(assert (=> b!3171104 (=> (not res!1289002) (not e!1974982))))

(assert (=> b!3171104 (= res!1289002 call!230375)))

(assert (=> b!3171104 (= e!1974983 e!1974982)))

(declare-fun b!3171105 () Bool)

(assert (=> b!3171105 (= e!1974984 e!1974981)))

(declare-fun res!1289000 () Bool)

(assert (=> b!3171105 (=> (not res!1289000) (not e!1974981))))

(assert (=> b!3171105 (= res!1289000 call!230377)))

(declare-fun b!3171106 () Bool)

(assert (=> b!3171106 (= e!1974980 e!1974983)))

(assert (=> b!3171106 (= c!533215 ((_ is Union!9773) r!4733))))

(declare-fun b!3171107 () Bool)

(assert (=> b!3171107 (= e!1974985 e!1974980)))

(assert (=> b!3171107 (= c!533216 ((_ is Star!9773) r!4733))))

(declare-fun b!3171108 () Bool)

(assert (=> b!3171108 (= e!1974982 call!230377)))

(declare-fun bm!230372 () Bool)

(assert (=> bm!230372 (= call!230375 call!230376)))

(assert (= (and d!869218 (not res!1288999)) b!3171107))

(assert (= (and b!3171107 c!533216) b!3171101))

(assert (= (and b!3171107 (not c!533216)) b!3171106))

(assert (= (and b!3171101 res!1289003) b!3171100))

(assert (= (and b!3171106 c!533215) b!3171104))

(assert (= (and b!3171106 (not c!533215)) b!3171103))

(assert (= (and b!3171104 res!1289002) b!3171108))

(assert (= (and b!3171103 (not res!1289001)) b!3171105))

(assert (= (and b!3171105 res!1289000) b!3171102))

(assert (= (or b!3171104 b!3171102) bm!230372))

(assert (= (or b!3171108 b!3171105) bm!230371))

(assert (= (or b!3171100 bm!230372) bm!230370))

(declare-fun m!3430067 () Bool)

(assert (=> bm!230370 m!3430067))

(declare-fun m!3430069 () Bool)

(assert (=> b!3171101 m!3430069))

(declare-fun m!3430071 () Bool)

(assert (=> bm!230371 m!3430071))

(assert (=> b!3171036 d!869218))

(declare-fun d!869220 () Bool)

(assert (=> d!869220 (= (array_inv!4790 (_keys!4494 (v!35225 (underlying!8617 (v!35226 (underlying!8618 (cache!4246 thiss!28524))))))) (bvsge (size!26765 (_keys!4494 (v!35225 (underlying!8617 (v!35226 (underlying!8618 (cache!4246 thiss!28524))))))) #b00000000000000000000000000000000))))

(assert (=> b!3171045 d!869220))

(declare-fun d!869222 () Bool)

(assert (=> d!869222 (= (array_inv!4791 (_values!4475 (v!35225 (underlying!8617 (v!35226 (underlying!8618 (cache!4246 thiss!28524))))))) (bvsge (size!26764 (_values!4475 (v!35225 (underlying!8617 (v!35226 (underlying!8618 (cache!4246 thiss!28524))))))) #b00000000000000000000000000000000))))

(assert (=> b!3171045 d!869222))

(declare-fun bs!539598 () Bool)

(declare-fun b!3171116 () Bool)

(assert (= bs!539598 (and b!3171116 b!3171042)))

(declare-fun lambda!116021 () Int)

(assert (=> bs!539598 (= lambda!116021 lambda!116018)))

(declare-fun d!869224 () Bool)

(declare-fun res!1289010 () Bool)

(declare-fun e!1974990 () Bool)

(assert (=> d!869224 (=> (not res!1289010) (not e!1974990))))

(declare-fun valid!3273 (MutableMap!4100) Bool)

(assert (=> d!869224 (= res!1289010 (valid!3273 (cache!4246 thiss!28524)))))

(assert (=> d!869224 (= (validCacheMap!80 (cache!4246 thiss!28524)) e!1974990)))

(declare-fun b!3171115 () Bool)

(declare-fun res!1289011 () Bool)

(assert (=> b!3171115 (=> (not res!1289011) (not e!1974990))))

(declare-fun invariantList!491 (List!35615) Bool)

(assert (=> b!3171115 (= res!1289011 (invariantList!491 (toList!2082 (map!7944 (cache!4246 thiss!28524)))))))

(assert (=> b!3171116 (= e!1974990 (forall!7169 (toList!2082 (map!7944 (cache!4246 thiss!28524))) lambda!116021))))

(assert (= (and d!869224 res!1289010) b!3171115))

(assert (= (and b!3171115 res!1289011) b!3171116))

(declare-fun m!3430074 () Bool)

(assert (=> d!869224 m!3430074))

(declare-fun m!3430076 () Bool)

(assert (=> b!3171115 m!3430076))

(declare-fun m!3430078 () Bool)

(assert (=> b!3171115 m!3430078))

(assert (=> b!3171116 m!3430076))

(declare-fun m!3430080 () Bool)

(assert (=> b!3171116 m!3430080))

(assert (=> start!297002 d!869224))

(declare-fun d!869226 () Bool)

(declare-fun res!1289014 () Bool)

(declare-fun e!1974993 () Bool)

(assert (=> d!869226 (=> (not res!1289014) (not e!1974993))))

(assert (=> d!869226 (= res!1289014 ((_ is HashMap!4100) (cache!4246 thiss!28524)))))

(assert (=> d!869226 (= (inv!48194 thiss!28524) e!1974993)))

(declare-fun b!3171119 () Bool)

(assert (=> b!3171119 (= e!1974993 (validCacheMap!80 (cache!4246 thiss!28524)))))

(assert (= (and d!869226 res!1289014) b!3171119))

(assert (=> b!3171119 m!3430039))

(assert (=> start!297002 d!869226))

(declare-fun d!869228 () Bool)

(declare-fun res!1289019 () Bool)

(declare-fun e!1974998 () Bool)

(assert (=> d!869228 (=> res!1289019 e!1974998)))

(assert (=> d!869228 (= res!1289019 ((_ is Nil!35491) (toList!2082 (map!7944 (_2!20502 lt!1066119)))))))

(assert (=> d!869228 (= (forall!7169 (toList!2082 (map!7944 (_2!20502 lt!1066119))) lambda!116018) e!1974998)))

(declare-fun b!3171124 () Bool)

(declare-fun e!1974999 () Bool)

(assert (=> b!3171124 (= e!1974998 e!1974999)))

(declare-fun res!1289020 () Bool)

(assert (=> b!3171124 (=> (not res!1289020) (not e!1974999))))

(declare-fun dynLambda!14368 (Int tuple2!34738) Bool)

(assert (=> b!3171124 (= res!1289020 (dynLambda!14368 lambda!116018 (h!40911 (toList!2082 (map!7944 (_2!20502 lt!1066119))))))))

(declare-fun b!3171125 () Bool)

(assert (=> b!3171125 (= e!1974999 (forall!7169 (t!234698 (toList!2082 (map!7944 (_2!20502 lt!1066119)))) lambda!116018))))

(assert (= (and d!869228 (not res!1289019)) b!3171124))

(assert (= (and b!3171124 res!1289020) b!3171125))

(declare-fun b_lambda!86467 () Bool)

(assert (=> (not b_lambda!86467) (not b!3171124)))

(declare-fun m!3430082 () Bool)

(assert (=> b!3171124 m!3430082))

(declare-fun m!3430084 () Bool)

(assert (=> b!3171125 m!3430084))

(assert (=> b!3171042 d!869228))

(declare-fun d!869230 () Bool)

(declare-fun lt!1066127 () ListMap!1337)

(assert (=> d!869230 (invariantList!491 (toList!2082 lt!1066127))))

(declare-datatypes ((tuple2!34742 0))(
  ( (tuple2!34743 (_1!20503 (_ BitVec 64)) (_2!20503 List!35615)) )
))
(declare-datatypes ((List!35616 0))(
  ( (Nil!35492) (Cons!35492 (h!40912 tuple2!34742) (t!234699 List!35616)) )
))
(declare-fun extractMap!241 (List!35616) ListMap!1337)

(declare-datatypes ((ListLongMap!739 0))(
  ( (ListLongMap!740 (toList!2083 List!35616)) )
))
(declare-fun map!7945 (MutLongMap!4194) ListLongMap!739)

(assert (=> d!869230 (= lt!1066127 (extractMap!241 (toList!2083 (map!7945 (v!35226 (underlying!8618 (_2!20502 lt!1066119)))))))))

(assert (=> d!869230 (valid!3273 (_2!20502 lt!1066119))))

(assert (=> d!869230 (= (map!7944 (_2!20502 lt!1066119)) lt!1066127)))

(declare-fun bs!539599 () Bool)

(assert (= bs!539599 d!869230))

(declare-fun m!3430086 () Bool)

(assert (=> bs!539599 m!3430086))

(declare-fun m!3430088 () Bool)

(assert (=> bs!539599 m!3430088))

(declare-fun m!3430090 () Bool)

(assert (=> bs!539599 m!3430090))

(declare-fun m!3430092 () Bool)

(assert (=> bs!539599 m!3430092))

(assert (=> b!3171042 d!869230))

(declare-fun bs!539600 () Bool)

(declare-fun b!3171127 () Bool)

(assert (= bs!539600 (and b!3171127 b!3171042)))

(declare-fun lambda!116022 () Int)

(assert (=> bs!539600 (= lambda!116022 lambda!116018)))

(declare-fun bs!539601 () Bool)

(assert (= bs!539601 (and b!3171127 b!3171116)))

(assert (=> bs!539601 (= lambda!116022 lambda!116021)))

(declare-fun d!869232 () Bool)

(declare-fun res!1289021 () Bool)

(declare-fun e!1975000 () Bool)

(assert (=> d!869232 (=> (not res!1289021) (not e!1975000))))

(assert (=> d!869232 (= res!1289021 (valid!3273 (_2!20502 lt!1066119)))))

(assert (=> d!869232 (= (validCacheMap!80 (_2!20502 lt!1066119)) e!1975000)))

(declare-fun b!3171126 () Bool)

(declare-fun res!1289022 () Bool)

(assert (=> b!3171126 (=> (not res!1289022) (not e!1975000))))

(assert (=> b!3171126 (= res!1289022 (invariantList!491 (toList!2082 (map!7944 (_2!20502 lt!1066119)))))))

(assert (=> b!3171127 (= e!1975000 (forall!7169 (toList!2082 (map!7944 (_2!20502 lt!1066119))) lambda!116022))))

(assert (= (and d!869232 res!1289021) b!3171126))

(assert (= (and b!3171126 res!1289022) b!3171127))

(assert (=> d!869232 m!3430092))

(assert (=> b!3171126 m!3430049))

(declare-fun m!3430094 () Bool)

(assert (=> b!3171126 m!3430094))

(assert (=> b!3171127 m!3430049))

(declare-fun m!3430096 () Bool)

(assert (=> b!3171127 m!3430096))

(assert (=> b!3171042 d!869232))

(declare-fun d!869234 () Bool)

(declare-fun e!1975003 () Bool)

(assert (=> d!869234 e!1975003))

(declare-fun res!1289025 () Bool)

(assert (=> d!869234 (=> (not res!1289025) (not e!1975003))))

(assert (=> d!869234 (= res!1289025 (and (or (not ((_ is HashMap!4100) (cache!4246 thiss!28524))) ((_ is HashMap!4100) (cache!4246 thiss!28524))) ((_ is HashMap!4100) (cache!4246 thiss!28524))))))

(declare-fun lt!1066145 () Unit!49941)

(declare-fun choose!18519 (MutableMap!4100 tuple2!34736 Regex!9773 Int) Unit!49941)

(assert (=> d!869234 (= lt!1066145 (choose!18519 (cache!4246 thiss!28524) lt!1066118 res!14113 lambda!116018))))

(assert (=> d!869234 (valid!3273 (cache!4246 thiss!28524))))

(assert (=> d!869234 (= (lemmaUpdatePreservesForallPairs!37 (cache!4246 thiss!28524) lt!1066118 res!14113 lambda!116018) lt!1066145)))

(declare-fun b!3171130 () Bool)

(declare-fun lt!1066142 () MutableMap!4100)

(assert (=> b!3171130 (= e!1975003 (forall!7169 (toList!2082 (map!7944 lt!1066142)) lambda!116018))))

(assert (=> b!3171130 ((_ is HashMap!4100) lt!1066142)))

(declare-fun lt!1066144 () MutableMap!4100)

(assert (=> b!3171130 (= lt!1066142 lt!1066144)))

(assert (=> b!3171130 ((_ is HashMap!4100) lt!1066144)))

(declare-fun lt!1066141 () MutableMap!4100)

(assert (=> b!3171130 (= lt!1066144 lt!1066141)))

(assert (=> b!3171130 ((_ is HashMap!4100) lt!1066141)))

(declare-fun lt!1066143 () tuple2!34740)

(assert (=> b!3171130 (= lt!1066141 (_2!20502 lt!1066143))))

(assert (=> b!3171130 ((_ is HashMap!4100) (_2!20502 lt!1066143))))

(declare-fun lt!1066140 () tuple2!34740)

(assert (=> b!3171130 (= lt!1066143 lt!1066140)))

(assert (=> b!3171130 ((_ is HashMap!4100) (_2!20502 lt!1066140))))

(assert (=> b!3171130 (= lt!1066140 (update!282 (cache!4246 thiss!28524) lt!1066118 res!14113))))

(assert (= (and d!869234 res!1289025) b!3171130))

(declare-fun m!3430098 () Bool)

(assert (=> d!869234 m!3430098))

(assert (=> d!869234 m!3430074))

(declare-fun m!3430100 () Bool)

(assert (=> b!3171130 m!3430100))

(declare-fun m!3430102 () Bool)

(assert (=> b!3171130 m!3430102))

(assert (=> b!3171130 m!3430045))

(assert (=> b!3171042 d!869234))

(declare-fun bs!539602 () Bool)

(declare-fun b!3171170 () Bool)

(declare-fun b!3171181 () Bool)

(assert (= bs!539602 (and b!3171170 b!3171181)))

(declare-fun lambda!116032 () Int)

(declare-fun lambda!116031 () Int)

(assert (=> bs!539602 (= lambda!116032 lambda!116031)))

(declare-fun bm!230435 () Bool)

(declare-fun call!230462 () Bool)

(declare-fun call!230451 () ListLongMap!739)

(declare-fun allKeysSameHashInMap!244 (ListLongMap!739 Hashable!4110) Bool)

(assert (=> bm!230435 (= call!230462 (allKeysSameHashInMap!244 call!230451 (hashF!6142 (cache!4246 thiss!28524))))))

(declare-fun call!230448 () Bool)

(declare-fun bm!230436 () Bool)

(declare-fun c!533236 () Bool)

(declare-fun lt!1066310 () ListMap!1337)

(declare-fun call!230445 () ListMap!1337)

(declare-fun contains!6203 (ListMap!1337 tuple2!34736) Bool)

(assert (=> bm!230436 (= call!230448 (contains!6203 (ite c!533236 lt!1066310 call!230445) lt!1066118))))

(declare-fun b!3171169 () Bool)

(declare-fun call!230442 () ListMap!1337)

(declare-fun lt!1066267 () ListMap!1337)

(assert (=> b!3171169 (= call!230442 lt!1066267)))

(declare-fun lt!1066261 () Unit!49941)

(declare-fun Unit!49943 () Unit!49941)

(assert (=> b!3171169 (= lt!1066261 Unit!49943)))

(declare-fun call!230454 () Bool)

(assert (=> b!3171169 call!230454))

(declare-fun e!1975034 () Unit!49941)

(declare-fun Unit!49944 () Unit!49941)

(assert (=> b!3171169 (= e!1975034 Unit!49944)))

(declare-fun lt!1066292 () (_ BitVec 64))

(declare-fun lt!1066263 () (_ BitVec 64))

(declare-fun lt!1066276 () List!35615)

(declare-fun lt!1066303 () List!35615)

(declare-datatypes ((tuple2!34744 0))(
  ( (tuple2!34745 (_1!20504 Bool) (_2!20504 MutLongMap!4194)) )
))
(declare-fun call!230464 () tuple2!34744)

(declare-fun bm!230437 () Bool)

(declare-fun update!283 (MutLongMap!4194 (_ BitVec 64) List!35615) tuple2!34744)

(assert (=> bm!230437 (= call!230464 (update!283 (v!35226 (underlying!8618 (cache!4246 thiss!28524))) (ite c!533236 lt!1066292 lt!1066263) (ite c!533236 lt!1066276 lt!1066303)))))

(declare-fun bm!230438 () Bool)

(declare-fun call!230444 () ListMap!1337)

(assert (=> bm!230438 (= call!230444 (map!7944 (cache!4246 thiss!28524)))))

(assert (=> b!3171170 call!230448))

(declare-fun lt!1066288 () Unit!49941)

(declare-fun Unit!49945 () Unit!49941)

(assert (=> b!3171170 (= lt!1066288 Unit!49945)))

(declare-fun call!230457 () ListMap!1337)

(assert (=> b!3171170 (contains!6203 call!230457 lt!1066118)))

(declare-fun lt!1066271 () Unit!49941)

(declare-fun lt!1066304 () Unit!49941)

(assert (=> b!3171170 (= lt!1066271 lt!1066304)))

(declare-fun lt!1066278 () ListMap!1337)

(declare-fun call!230469 () Bool)

(assert (=> b!3171170 (= (contains!6203 lt!1066278 lt!1066118) call!230469)))

(declare-fun call!230468 () Unit!49941)

(assert (=> b!3171170 (= lt!1066304 call!230468)))

(declare-fun lt!1066300 () ListMap!1337)

(assert (=> b!3171170 (= lt!1066300 call!230457)))

(assert (=> b!3171170 (= lt!1066278 call!230445)))

(declare-fun lt!1066265 () Unit!49941)

(declare-fun Unit!49946 () Unit!49941)

(assert (=> b!3171170 (= lt!1066265 Unit!49946)))

(declare-fun call!230443 () Bool)

(assert (=> b!3171170 call!230443))

(declare-fun lt!1066269 () Unit!49941)

(declare-fun Unit!49947 () Unit!49941)

(assert (=> b!3171170 (= lt!1066269 Unit!49947)))

(assert (=> b!3171170 call!230462))

(declare-fun lt!1066285 () Unit!49941)

(declare-fun Unit!49948 () Unit!49941)

(assert (=> b!3171170 (= lt!1066285 Unit!49948)))

(declare-fun call!230459 () Bool)

(assert (=> b!3171170 call!230459))

(declare-fun lt!1066301 () Unit!49941)

(declare-fun lt!1066256 () Unit!49941)

(assert (=> b!3171170 (= lt!1066301 lt!1066256)))

(declare-fun call!230458 () Bool)

(assert (=> b!3171170 call!230458))

(declare-fun lt!1066291 () ListLongMap!739)

(declare-fun lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!18 (ListLongMap!739 (_ BitVec 64) List!35615 tuple2!34736 Regex!9773 Hashable!4110) Unit!49941)

(assert (=> b!3171170 (= lt!1066256 (lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!18 lt!1066291 lt!1066263 lt!1066303 lt!1066118 res!14113 (hashF!6142 (cache!4246 thiss!28524))))))

(declare-fun lt!1066294 () Unit!49941)

(declare-fun lt!1066272 () Unit!49941)

(assert (=> b!3171170 (= lt!1066294 lt!1066272)))

(declare-fun e!1975033 () Bool)

(assert (=> b!3171170 e!1975033))

(declare-fun res!1289040 () Bool)

(assert (=> b!3171170 (=> (not res!1289040) (not e!1975033))))

(declare-fun call!230470 () Bool)

(assert (=> b!3171170 (= res!1289040 call!230470)))

(declare-fun lt!1066268 () ListLongMap!739)

(declare-fun call!230460 () ListLongMap!739)

(assert (=> b!3171170 (= lt!1066268 call!230460)))

(declare-fun call!230452 () Unit!49941)

(assert (=> b!3171170 (= lt!1066272 call!230452)))

(declare-fun lt!1066306 () Unit!49941)

(declare-fun e!1975028 () Unit!49941)

(assert (=> b!3171170 (= lt!1066306 e!1975028)))

(declare-fun c!533235 () Bool)

(declare-fun lt!1066280 () List!35615)

(declare-fun isEmpty!19766 (List!35615) Bool)

(assert (=> b!3171170 (= c!533235 (not (isEmpty!19766 lt!1066280)))))

(declare-fun e!1975036 () Unit!49941)

(declare-fun Unit!49949 () Unit!49941)

(assert (=> b!3171170 (= e!1975036 Unit!49949)))

(declare-fun e!1975029 () tuple2!34740)

(declare-fun b!3171171 () Bool)

(declare-fun lt!1066275 () MutableMap!4100)

(declare-fun lt!1066264 () tuple2!34744)

(declare-datatypes ((tuple2!34746 0))(
  ( (tuple2!34747 (_1!20505 Unit!49941) (_2!20505 MutableMap!4100)) )
))
(declare-fun Unit!49950 () Unit!49941)

(declare-fun Unit!49951 () Unit!49941)

(assert (=> b!3171171 (= e!1975029 (tuple2!34741 (_1!20504 lt!1066264) (_2!20505 (ite false (tuple2!34747 Unit!49950 (HashMap!4100 (Cell!16588 (_2!20504 lt!1066264)) (hashF!6142 (cache!4246 thiss!28524)) (bvadd (_size!8432 (cache!4246 thiss!28524)) #b00000000000000000000000000000001) (defaultValue!4271 (cache!4246 thiss!28524)))) (tuple2!34747 Unit!49951 lt!1066275)))))))

(declare-fun call!230446 () (_ BitVec 64))

(assert (=> b!3171171 (= lt!1066292 call!230446)))

(declare-fun lt!1066266 () List!35615)

(declare-fun call!230465 () List!35615)

(assert (=> b!3171171 (= lt!1066266 call!230465)))

(declare-fun call!230450 () List!35615)

(assert (=> b!3171171 (= lt!1066276 (Cons!35491 (tuple2!34739 lt!1066118 res!14113) call!230450))))

(assert (=> b!3171171 (= lt!1066264 call!230464)))

(assert (=> b!3171171 (= lt!1066275 (HashMap!4100 (Cell!16588 (_2!20504 lt!1066264)) (hashF!6142 (cache!4246 thiss!28524)) (_size!8432 (cache!4246 thiss!28524)) (defaultValue!4271 (cache!4246 thiss!28524))))))

(declare-fun c!533233 () Bool)

(assert (=> b!3171171 (= c!533233 (_1!20504 lt!1066264))))

(declare-fun lt!1066262 () Unit!49941)

(assert (=> b!3171171 (= lt!1066262 e!1975034)))

(declare-fun d!869236 () Bool)

(declare-fun e!1975027 () Bool)

(assert (=> d!869236 e!1975027))

(declare-fun res!1289037 () Bool)

(assert (=> d!869236 (=> (not res!1289037) (not e!1975027))))

(declare-fun lt!1066283 () tuple2!34740)

(assert (=> d!869236 (= res!1289037 ((_ is HashMap!4100) (_2!20502 lt!1066283)))))

(declare-fun lt!1066286 () tuple2!34740)

(assert (=> d!869236 (= lt!1066283 (tuple2!34741 (_1!20502 lt!1066286) (_2!20502 lt!1066286)))))

(assert (=> d!869236 (= lt!1066286 e!1975029)))

(declare-fun contains!6204 (MutableMap!4100 tuple2!34736) Bool)

(assert (=> d!869236 (= c!533236 (contains!6204 (cache!4246 thiss!28524) lt!1066118))))

(assert (=> d!869236 (= lt!1066291 (map!7945 (v!35226 (underlying!8618 (cache!4246 thiss!28524)))))))

(assert (=> d!869236 (= lt!1066267 (map!7944 (cache!4246 thiss!28524)))))

(assert (=> d!869236 (valid!3273 (cache!4246 thiss!28524))))

(assert (=> d!869236 (= (update!282 (cache!4246 thiss!28524) lt!1066118 res!14113) lt!1066283)))

(declare-fun b!3171172 () Bool)

(declare-fun e!1975026 () ListMap!1337)

(assert (=> b!3171172 (= e!1975026 call!230444)))

(declare-fun bm!230439 () Bool)

(declare-fun lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!84 (ListLongMap!739 (_ BitVec 64) List!35615 Hashable!4110) Unit!49941)

(assert (=> bm!230439 (= call!230452 (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!84 lt!1066291 (ite c!533236 lt!1066292 lt!1066263) (ite c!533236 lt!1066276 lt!1066303) (hashF!6142 (cache!4246 thiss!28524))))))

(declare-fun bm!230440 () Bool)

(declare-fun forall!7170 (List!35616 Int) Bool)

(assert (=> bm!230440 (= call!230459 (forall!7170 (toList!2083 call!230451) (ite c!533236 lambda!116031 lambda!116032)))))

(declare-fun b!3171173 () Bool)

(declare-fun e!1975032 () Bool)

(declare-fun call!230453 () Bool)

(assert (=> b!3171173 (= e!1975032 call!230453)))

(declare-fun bm!230441 () Bool)

(declare-fun call!230461 () Bool)

(declare-fun allKeysSameHash!106 (List!35615 (_ BitVec 64) Hashable!4110) Bool)

(assert (=> bm!230441 (= call!230461 (allKeysSameHash!106 (ite c!533236 lt!1066266 lt!1066280) (ite c!533236 lt!1066292 lt!1066263) (hashF!6142 (cache!4246 thiss!28524))))))

(declare-fun bm!230442 () Bool)

(declare-fun call!230463 () ListMap!1337)

(assert (=> bm!230442 (= call!230442 call!230463)))

(declare-fun bm!230443 () Bool)

(declare-fun lt!1066279 () ListMap!1337)

(declare-fun lemmaEquivalentThenSameContains!18 (ListMap!1337 ListMap!1337 tuple2!34736) Unit!49941)

(assert (=> bm!230443 (= call!230468 (lemmaEquivalentThenSameContains!18 (ite c!533236 lt!1066279 lt!1066278) (ite c!533236 lt!1066310 lt!1066300) lt!1066118))))

(declare-fun bm!230444 () Bool)

(declare-fun call!230447 () Bool)

(declare-fun call!230456 () ListMap!1337)

(declare-fun eq!79 (ListMap!1337 ListMap!1337) Bool)

(assert (=> bm!230444 (= call!230447 (eq!79 call!230456 e!1975026))))

(declare-fun c!533237 () Bool)

(declare-fun c!533231 () Bool)

(assert (=> bm!230444 (= c!533237 c!533231)))

(declare-fun bm!230445 () Bool)

(declare-fun apply!7966 (MutLongMap!4194 (_ BitVec 64)) List!35615)

(assert (=> bm!230445 (= call!230465 (apply!7966 (v!35226 (underlying!8618 (cache!4246 thiss!28524))) (ite c!533236 lt!1066292 lt!1066263)))))

(declare-fun b!3171174 () Bool)

(declare-fun +!127 (ListMap!1337 tuple2!34738) ListMap!1337)

(assert (=> b!3171174 (= e!1975026 (+!127 call!230444 (tuple2!34739 lt!1066118 res!14113)))))

(declare-fun b!3171175 () Bool)

(declare-fun e!1975031 () Bool)

(assert (=> b!3171175 (= e!1975031 call!230447)))

(declare-fun bm!230446 () Bool)

(declare-fun lt!1066302 () ListLongMap!739)

(assert (=> bm!230446 (= call!230470 (forall!7170 (ite c!533236 (toList!2083 lt!1066302) (toList!2083 lt!1066268)) (ite c!533236 lambda!116031 lambda!116032)))))

(declare-fun bm!230447 () Bool)

(assert (=> bm!230447 (= call!230469 (contains!6203 (ite c!533236 lt!1066279 lt!1066300) lt!1066118))))

(declare-fun call!230455 () Bool)

(declare-fun bm!230448 () Bool)

(assert (=> bm!230448 (= call!230455 (allKeysSameHash!106 call!230450 (ite c!533236 lt!1066292 lt!1066263) (hashF!6142 (cache!4246 thiss!28524))))))

(declare-fun bm!230449 () Bool)

(assert (=> bm!230449 (= call!230457 (+!127 lt!1066267 (tuple2!34739 lt!1066118 res!14113)))))

(declare-fun b!3171176 () Bool)

(declare-fun e!1975030 () Bool)

(assert (=> b!3171176 (= e!1975030 call!230447)))

(declare-fun bm!230450 () Bool)

(declare-fun hash!811 (Hashable!4110 tuple2!34736) (_ BitVec 64))

(assert (=> bm!230450 (= call!230446 (hash!811 (hashF!6142 (cache!4246 thiss!28524)) lt!1066118))))

(declare-fun bm!230451 () Bool)

(declare-fun call!230440 () ListMap!1337)

(assert (=> bm!230451 (= call!230440 (extractMap!241 (toList!2083 call!230460)))))

(declare-fun b!3171177 () Bool)

(declare-fun e!1975035 () List!35615)

(assert (=> b!3171177 (= e!1975035 Nil!35491)))

(declare-fun bm!230452 () Bool)

(declare-fun call!230441 () ListMap!1337)

(assert (=> bm!230452 (= call!230441 (extractMap!241 (toList!2083 lt!1066291)))))

(declare-fun bm!230453 () Bool)

(assert (=> bm!230453 (= call!230445 call!230463)))

(declare-fun b!3171178 () Bool)

(assert (=> b!3171178 (= e!1975033 call!230453)))

(declare-fun bm!230454 () Bool)

(declare-fun +!128 (ListLongMap!739 tuple2!34742) ListLongMap!739)

(assert (=> bm!230454 (= call!230460 (+!128 lt!1066291 (ite c!533236 (tuple2!34743 lt!1066292 lt!1066276) (tuple2!34743 lt!1066263 lt!1066303))))))

(declare-fun call!230449 () ListMap!1337)

(declare-fun bm!230455 () Bool)

(assert (=> bm!230455 (= call!230449 (+!127 call!230441 (tuple2!34739 lt!1066118 res!14113)))))

(declare-fun bm!230456 () Bool)

(assert (=> bm!230456 (= call!230453 (allKeysSameHashInMap!244 (ite c!533236 lt!1066302 lt!1066268) (hashF!6142 (cache!4246 thiss!28524))))))

(declare-fun bm!230457 () Bool)

(assert (=> bm!230457 (= call!230458 (eq!79 call!230440 call!230449))))

(declare-fun b!3171179 () Bool)

(assert (=> b!3171179 (= e!1975035 call!230465)))

(declare-fun b!3171180 () Bool)

(declare-fun res!1289036 () Bool)

(assert (=> b!3171180 (=> (not res!1289036) (not e!1975027))))

(assert (=> b!3171180 (= res!1289036 (valid!3273 (_2!20502 lt!1066283)))))

(declare-fun bm!230458 () Bool)

(declare-fun call!230467 () Unit!49941)

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!97 (List!35616 (_ BitVec 64) List!35615 Hashable!4110) Unit!49941)

(assert (=> bm!230458 (= call!230467 (lemmaInLongMapAllKeySameHashThenForTuple!97 (toList!2083 lt!1066291) (ite c!533236 lt!1066292 lt!1066263) (ite c!533236 lt!1066266 lt!1066280) (hashF!6142 (cache!4246 thiss!28524))))))

(assert (=> b!3171181 call!230443))

(declare-fun lt!1066257 () Unit!49941)

(declare-fun Unit!49952 () Unit!49941)

(assert (=> b!3171181 (= lt!1066257 Unit!49952)))

(assert (=> b!3171181 call!230462))

(declare-fun lt!1066282 () Unit!49941)

(declare-fun Unit!49953 () Unit!49941)

(assert (=> b!3171181 (= lt!1066282 Unit!49953)))

(assert (=> b!3171181 call!230459))

(declare-fun lt!1066258 () Unit!49941)

(declare-fun lt!1066277 () Unit!49941)

(assert (=> b!3171181 (= lt!1066258 lt!1066277)))

(assert (=> b!3171181 (= call!230469 call!230448)))

(assert (=> b!3171181 (= lt!1066277 call!230468)))

(assert (=> b!3171181 (= lt!1066310 call!230457)))

(assert (=> b!3171181 (= lt!1066279 call!230442)))

(declare-fun lt!1066293 () Unit!49941)

(declare-fun lt!1066281 () Unit!49941)

(assert (=> b!3171181 (= lt!1066293 lt!1066281)))

(assert (=> b!3171181 call!230458))

(declare-fun lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!18 (ListLongMap!739 (_ BitVec 64) List!35615 tuple2!34736 Regex!9773 Hashable!4110) Unit!49941)

(assert (=> b!3171181 (= lt!1066281 (lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!18 lt!1066291 lt!1066292 lt!1066276 lt!1066118 res!14113 (hashF!6142 (cache!4246 thiss!28524))))))

(declare-fun lt!1066289 () Unit!49941)

(declare-fun lt!1066295 () Unit!49941)

(assert (=> b!3171181 (= lt!1066289 lt!1066295)))

(assert (=> b!3171181 e!1975032))

(declare-fun res!1289038 () Bool)

(assert (=> b!3171181 (=> (not res!1289038) (not e!1975032))))

(assert (=> b!3171181 (= res!1289038 call!230470)))

(assert (=> b!3171181 (= lt!1066302 call!230460)))

(assert (=> b!3171181 (= lt!1066295 call!230452)))

(declare-fun lt!1066305 () Unit!49941)

(declare-fun Unit!49954 () Unit!49941)

(assert (=> b!3171181 (= lt!1066305 Unit!49954)))

(declare-fun noDuplicateKeys!134 (List!35615) Bool)

(assert (=> b!3171181 (noDuplicateKeys!134 lt!1066276)))

(declare-fun lt!1066270 () Unit!49941)

(declare-fun Unit!49955 () Unit!49941)

(assert (=> b!3171181 (= lt!1066270 Unit!49955)))

(declare-fun containsKey!200 (List!35615 tuple2!34736) Bool)

(assert (=> b!3171181 (not (containsKey!200 call!230450 lt!1066118))))

(declare-fun lt!1066307 () Unit!49941)

(declare-fun Unit!49956 () Unit!49941)

(assert (=> b!3171181 (= lt!1066307 Unit!49956)))

(declare-fun lt!1066287 () Unit!49941)

(declare-fun lt!1066284 () Unit!49941)

(assert (=> b!3171181 (= lt!1066287 lt!1066284)))

(assert (=> b!3171181 (noDuplicateKeys!134 call!230450)))

(declare-fun lemmaRemovePairForKeyPreservesNoDuplicateKeys!111 (List!35615 tuple2!34736) Unit!49941)

(assert (=> b!3171181 (= lt!1066284 (lemmaRemovePairForKeyPreservesNoDuplicateKeys!111 lt!1066266 lt!1066118))))

(declare-fun lt!1066273 () Unit!49941)

(declare-fun lt!1066308 () Unit!49941)

(assert (=> b!3171181 (= lt!1066273 lt!1066308)))

(assert (=> b!3171181 call!230455))

(declare-fun call!230466 () Unit!49941)

(assert (=> b!3171181 (= lt!1066308 call!230466)))

(declare-fun lt!1066296 () Unit!49941)

(declare-fun lt!1066274 () Unit!49941)

(assert (=> b!3171181 (= lt!1066296 lt!1066274)))

(assert (=> b!3171181 call!230461))

(assert (=> b!3171181 (= lt!1066274 call!230467)))

(declare-fun Unit!49957 () Unit!49941)

(assert (=> b!3171181 (= e!1975034 Unit!49957)))

(declare-fun bm!230459 () Bool)

(declare-fun lemmaRemovePairForKeyPreservesHash!93 (List!35615 tuple2!34736 (_ BitVec 64) Hashable!4110) Unit!49941)

(assert (=> bm!230459 (= call!230466 (lemmaRemovePairForKeyPreservesHash!93 (ite c!533236 lt!1066266 lt!1066280) lt!1066118 (ite c!533236 lt!1066292 lt!1066263) (hashF!6142 (cache!4246 thiss!28524))))))

(declare-fun bm!230460 () Bool)

(assert (=> bm!230460 (= call!230456 (map!7944 (_2!20502 lt!1066283)))))

(declare-fun b!3171182 () Bool)

(declare-fun lt!1066299 () Unit!49941)

(assert (=> b!3171182 (= e!1975028 lt!1066299)))

(declare-fun lt!1066297 () Unit!49941)

(assert (=> b!3171182 (= lt!1066297 call!230467)))

(assert (=> b!3171182 call!230461))

(declare-fun lt!1066309 () Unit!49941)

(assert (=> b!3171182 (= lt!1066309 lt!1066297)))

(assert (=> b!3171182 (= lt!1066299 call!230466)))

(assert (=> b!3171182 call!230455))

(declare-fun lt!1066260 () tuple2!34744)

(declare-fun bm!230461 () Bool)

(assert (=> bm!230461 (= call!230451 (map!7945 (ite c!533236 (_2!20504 lt!1066264) (_2!20504 lt!1066260))))))

(declare-fun lt!1066259 () MutableMap!4100)

(declare-fun b!3171183 () Bool)

(declare-fun Unit!49958 () Unit!49941)

(declare-fun Unit!49959 () Unit!49941)

(assert (=> b!3171183 (= e!1975029 (tuple2!34741 (_1!20504 lt!1066260) (_2!20505 (ite (_1!20504 lt!1066260) (tuple2!34747 Unit!49958 (HashMap!4100 (Cell!16588 (_2!20504 lt!1066260)) (hashF!6142 (cache!4246 thiss!28524)) (bvadd (_size!8432 (cache!4246 thiss!28524)) #b00000000000000000000000000000001) (defaultValue!4271 (cache!4246 thiss!28524)))) (tuple2!34747 Unit!49959 lt!1066259)))))))

(assert (=> b!3171183 (= lt!1066263 call!230446)))

(declare-fun c!533232 () Bool)

(declare-fun contains!6205 (MutLongMap!4194 (_ BitVec 64)) Bool)

(assert (=> b!3171183 (= c!533232 (contains!6205 (v!35226 (underlying!8618 (cache!4246 thiss!28524))) lt!1066263))))

(assert (=> b!3171183 (= lt!1066280 e!1975035)))

(assert (=> b!3171183 (= lt!1066303 (Cons!35491 (tuple2!34739 lt!1066118 res!14113) lt!1066280))))

(assert (=> b!3171183 (= lt!1066260 call!230464)))

(assert (=> b!3171183 (= lt!1066259 (HashMap!4100 (Cell!16588 (_2!20504 lt!1066260)) (hashF!6142 (cache!4246 thiss!28524)) (_size!8432 (cache!4246 thiss!28524)) (defaultValue!4271 (cache!4246 thiss!28524))))))

(declare-fun c!533234 () Bool)

(assert (=> b!3171183 (= c!533234 (_1!20504 lt!1066260))))

(declare-fun lt!1066290 () Unit!49941)

(assert (=> b!3171183 (= lt!1066290 e!1975036)))

(declare-fun bm!230462 () Bool)

(assert (=> bm!230462 (= call!230463 (map!7944 (ite c!533236 lt!1066275 lt!1066259)))))

(declare-fun bm!230463 () Bool)

(assert (=> bm!230463 (= call!230443 (eq!79 (ite c!533236 call!230442 call!230445) call!230457))))

(declare-fun b!3171184 () Bool)

(assert (=> b!3171184 (= e!1975030 e!1975031)))

(declare-fun res!1289039 () Bool)

(assert (=> b!3171184 (= res!1289039 (contains!6203 call!230456 lt!1066118))))

(assert (=> b!3171184 (=> (not res!1289039) (not e!1975031))))

(declare-fun b!3171185 () Bool)

(assert (=> b!3171185 (= call!230445 lt!1066267)))

(declare-fun lt!1066298 () Unit!49941)

(declare-fun Unit!49960 () Unit!49941)

(assert (=> b!3171185 (= lt!1066298 Unit!49960)))

(assert (=> b!3171185 call!230454))

(declare-fun Unit!49961 () Unit!49941)

(assert (=> b!3171185 (= e!1975036 Unit!49961)))

(declare-fun bm!230464 () Bool)

(declare-fun removePairForKey!123 (List!35615 tuple2!34736) List!35615)

(assert (=> bm!230464 (= call!230450 (removePairForKey!123 (ite c!533236 lt!1066266 lt!1066280) lt!1066118))))

(declare-fun b!3171186 () Bool)

(declare-fun Unit!49962 () Unit!49941)

(assert (=> b!3171186 (= e!1975028 Unit!49962)))

(declare-fun b!3171187 () Bool)

(assert (=> b!3171187 (= e!1975027 e!1975030)))

(assert (=> b!3171187 (= c!533231 (_1!20502 lt!1066283))))

(declare-fun bm!230465 () Bool)

(assert (=> bm!230465 (= call!230454 (valid!3273 (ite c!533236 lt!1066275 lt!1066259)))))

(assert (= (and d!869236 c!533236) b!3171171))

(assert (= (and d!869236 (not c!533236)) b!3171183))

(assert (= (and b!3171171 c!533233) b!3171181))

(assert (= (and b!3171171 (not c!533233)) b!3171169))

(assert (= (and b!3171181 res!1289038) b!3171173))

(assert (= (or b!3171181 b!3171169) bm!230442))

(assert (= (and b!3171183 c!533232) b!3171179))

(assert (= (and b!3171183 (not c!533232)) b!3171177))

(assert (= (and b!3171183 c!533234) b!3171170))

(assert (= (and b!3171183 (not c!533234)) b!3171185))

(assert (= (and b!3171170 c!533235) b!3171182))

(assert (= (and b!3171170 (not c!533235)) b!3171186))

(assert (= (and b!3171170 res!1289040) b!3171178))

(assert (= (or b!3171170 b!3171185) bm!230453))

(assert (= (or b!3171181 b!3171170) bm!230439))

(assert (= (or b!3171171 b!3171183) bm!230437))

(assert (= (or b!3171171 b!3171179) bm!230445))

(assert (= (or b!3171181 b!3171170) bm!230449))

(assert (= (or b!3171181 b!3171170) bm!230436))

(assert (= (or b!3171169 b!3171185) bm!230465))

(assert (= (or b!3171181 b!3171182) bm!230441))

(assert (= (or b!3171181 b!3171182) bm!230458))

(assert (= (or b!3171181 b!3171171 b!3171182) bm!230464))

(assert (= (or b!3171181 b!3171170) bm!230446))

(assert (= (or b!3171181 b!3171182) bm!230459))

(assert (= (or b!3171171 b!3171183) bm!230450))

(assert (= (or b!3171181 b!3171170) bm!230443))

(assert (= (or bm!230442 bm!230453) bm!230462))

(assert (= (or b!3171181 b!3171170) bm!230454))

(assert (= (or b!3171181 b!3171170) bm!230452))

(assert (= (or b!3171173 b!3171178) bm!230456))

(assert (= (or b!3171181 b!3171170) bm!230461))

(assert (= (or b!3171181 b!3171170) bm!230447))

(assert (= (or b!3171181 b!3171170) bm!230455))

(assert (= (or b!3171181 b!3171170) bm!230463))

(assert (= (or b!3171181 b!3171170) bm!230440))

(assert (= (or b!3171181 b!3171170) bm!230451))

(assert (= (or b!3171181 b!3171182) bm!230448))

(assert (= (or b!3171181 b!3171170) bm!230435))

(assert (= (or b!3171181 b!3171170) bm!230457))

(assert (= (and d!869236 res!1289037) b!3171180))

(assert (= (and b!3171180 res!1289036) b!3171187))

(assert (= (and b!3171187 c!533231) b!3171184))

(assert (= (and b!3171187 (not c!533231)) b!3171176))

(assert (= (and b!3171184 res!1289039) b!3171175))

(assert (= (or b!3171184 b!3171175 b!3171176) bm!230460))

(assert (= (or b!3171175 b!3171176) bm!230438))

(assert (= (or b!3171175 b!3171176) bm!230444))

(assert (= (and bm!230444 c!533237) b!3171174))

(assert (= (and bm!230444 (not c!533237)) b!3171172))

(declare-fun m!3430104 () Bool)

(assert (=> bm!230451 m!3430104))

(declare-fun m!3430106 () Bool)

(assert (=> bm!230444 m!3430106))

(declare-fun m!3430108 () Bool)

(assert (=> bm!230436 m!3430108))

(declare-fun m!3430110 () Bool)

(assert (=> bm!230459 m!3430110))

(declare-fun m!3430112 () Bool)

(assert (=> b!3171184 m!3430112))

(declare-fun m!3430114 () Bool)

(assert (=> bm!230462 m!3430114))

(declare-fun m!3430116 () Bool)

(assert (=> bm!230445 m!3430116))

(declare-fun m!3430118 () Bool)

(assert (=> bm!230458 m!3430118))

(declare-fun m!3430120 () Bool)

(assert (=> bm!230447 m!3430120))

(declare-fun m!3430122 () Bool)

(assert (=> bm!230441 m!3430122))

(assert (=> bm!230438 m!3430076))

(declare-fun m!3430124 () Bool)

(assert (=> bm!230448 m!3430124))

(declare-fun m!3430126 () Bool)

(assert (=> b!3171183 m!3430126))

(declare-fun m!3430128 () Bool)

(assert (=> bm!230457 m!3430128))

(declare-fun m!3430130 () Bool)

(assert (=> bm!230454 m!3430130))

(declare-fun m!3430132 () Bool)

(assert (=> bm!230455 m!3430132))

(declare-fun m!3430134 () Bool)

(assert (=> bm!230450 m!3430134))

(declare-fun m!3430136 () Bool)

(assert (=> bm!230446 m!3430136))

(declare-fun m!3430138 () Bool)

(assert (=> b!3171181 m!3430138))

(declare-fun m!3430140 () Bool)

(assert (=> b!3171181 m!3430140))

(declare-fun m!3430142 () Bool)

(assert (=> b!3171181 m!3430142))

(declare-fun m!3430144 () Bool)

(assert (=> b!3171181 m!3430144))

(declare-fun m!3430146 () Bool)

(assert (=> b!3171181 m!3430146))

(declare-fun m!3430148 () Bool)

(assert (=> b!3171180 m!3430148))

(declare-fun m!3430150 () Bool)

(assert (=> bm!230449 m!3430150))

(declare-fun m!3430152 () Bool)

(assert (=> bm!230460 m!3430152))

(declare-fun m!3430154 () Bool)

(assert (=> bm!230435 m!3430154))

(declare-fun m!3430156 () Bool)

(assert (=> bm!230439 m!3430156))

(declare-fun m!3430158 () Bool)

(assert (=> b!3171174 m!3430158))

(declare-fun m!3430160 () Bool)

(assert (=> bm!230440 m!3430160))

(declare-fun m!3430162 () Bool)

(assert (=> bm!230452 m!3430162))

(declare-fun m!3430164 () Bool)

(assert (=> b!3171170 m!3430164))

(declare-fun m!3430166 () Bool)

(assert (=> b!3171170 m!3430166))

(declare-fun m!3430168 () Bool)

(assert (=> b!3171170 m!3430168))

(declare-fun m!3430170 () Bool)

(assert (=> b!3171170 m!3430170))

(declare-fun m!3430172 () Bool)

(assert (=> bm!230456 m!3430172))

(declare-fun m!3430174 () Bool)

(assert (=> bm!230463 m!3430174))

(declare-fun m!3430176 () Bool)

(assert (=> bm!230443 m!3430176))

(declare-fun m!3430178 () Bool)

(assert (=> d!869236 m!3430178))

(declare-fun m!3430180 () Bool)

(assert (=> d!869236 m!3430180))

(assert (=> d!869236 m!3430076))

(assert (=> d!869236 m!3430074))

(declare-fun m!3430182 () Bool)

(assert (=> bm!230465 m!3430182))

(declare-fun m!3430184 () Bool)

(assert (=> bm!230437 m!3430184))

(declare-fun m!3430186 () Bool)

(assert (=> bm!230461 m!3430186))

(declare-fun m!3430188 () Bool)

(assert (=> bm!230464 m!3430188))

(assert (=> b!3171042 d!869236))

(declare-fun b!3171200 () Bool)

(declare-fun e!1975039 () Bool)

(declare-fun tp!1001024 () Bool)

(assert (=> b!3171200 (= e!1975039 tp!1001024)))

(assert (=> b!3171043 (= tp!1000996 e!1975039)))

(declare-fun b!3171201 () Bool)

(declare-fun tp!1001020 () Bool)

(declare-fun tp!1001022 () Bool)

(assert (=> b!3171201 (= e!1975039 (and tp!1001020 tp!1001022))))

(declare-fun b!3171198 () Bool)

(assert (=> b!3171198 (= e!1975039 tp_is_empty!17109)))

(declare-fun b!3171199 () Bool)

(declare-fun tp!1001021 () Bool)

(declare-fun tp!1001023 () Bool)

(assert (=> b!3171199 (= e!1975039 (and tp!1001021 tp!1001023))))

(assert (= (and b!3171043 ((_ is ElementMatch!9773) (reg!10102 res!14113))) b!3171198))

(assert (= (and b!3171043 ((_ is Concat!15094) (reg!10102 res!14113))) b!3171199))

(assert (= (and b!3171043 ((_ is Star!9773) (reg!10102 res!14113))) b!3171200))

(assert (= (and b!3171043 ((_ is Union!9773) (reg!10102 res!14113))) b!3171201))

(declare-fun b!3171204 () Bool)

(declare-fun e!1975040 () Bool)

(declare-fun tp!1001029 () Bool)

(assert (=> b!3171204 (= e!1975040 tp!1001029)))

(assert (=> b!3171039 (= tp!1001007 e!1975040)))

(declare-fun b!3171205 () Bool)

(declare-fun tp!1001025 () Bool)

(declare-fun tp!1001027 () Bool)

(assert (=> b!3171205 (= e!1975040 (and tp!1001025 tp!1001027))))

(declare-fun b!3171202 () Bool)

(assert (=> b!3171202 (= e!1975040 tp_is_empty!17109)))

(declare-fun b!3171203 () Bool)

(declare-fun tp!1001026 () Bool)

(declare-fun tp!1001028 () Bool)

(assert (=> b!3171203 (= e!1975040 (and tp!1001026 tp!1001028))))

(assert (= (and b!3171039 ((_ is ElementMatch!9773) (regOne!20059 res!14113))) b!3171202))

(assert (= (and b!3171039 ((_ is Concat!15094) (regOne!20059 res!14113))) b!3171203))

(assert (= (and b!3171039 ((_ is Star!9773) (regOne!20059 res!14113))) b!3171204))

(assert (= (and b!3171039 ((_ is Union!9773) (regOne!20059 res!14113))) b!3171205))

(declare-fun b!3171208 () Bool)

(declare-fun e!1975041 () Bool)

(declare-fun tp!1001034 () Bool)

(assert (=> b!3171208 (= e!1975041 tp!1001034)))

(assert (=> b!3171039 (= tp!1001004 e!1975041)))

(declare-fun b!3171209 () Bool)

(declare-fun tp!1001030 () Bool)

(declare-fun tp!1001032 () Bool)

(assert (=> b!3171209 (= e!1975041 (and tp!1001030 tp!1001032))))

(declare-fun b!3171206 () Bool)

(assert (=> b!3171206 (= e!1975041 tp_is_empty!17109)))

(declare-fun b!3171207 () Bool)

(declare-fun tp!1001031 () Bool)

(declare-fun tp!1001033 () Bool)

(assert (=> b!3171207 (= e!1975041 (and tp!1001031 tp!1001033))))

(assert (= (and b!3171039 ((_ is ElementMatch!9773) (regTwo!20059 res!14113))) b!3171206))

(assert (= (and b!3171039 ((_ is Concat!15094) (regTwo!20059 res!14113))) b!3171207))

(assert (= (and b!3171039 ((_ is Star!9773) (regTwo!20059 res!14113))) b!3171208))

(assert (= (and b!3171039 ((_ is Union!9773) (regTwo!20059 res!14113))) b!3171209))

(declare-fun b!3171212 () Bool)

(declare-fun e!1975042 () Bool)

(declare-fun tp!1001039 () Bool)

(assert (=> b!3171212 (= e!1975042 tp!1001039)))

(assert (=> b!3171048 (= tp!1001005 e!1975042)))

(declare-fun b!3171213 () Bool)

(declare-fun tp!1001035 () Bool)

(declare-fun tp!1001037 () Bool)

(assert (=> b!3171213 (= e!1975042 (and tp!1001035 tp!1001037))))

(declare-fun b!3171210 () Bool)

(assert (=> b!3171210 (= e!1975042 tp_is_empty!17109)))

(declare-fun b!3171211 () Bool)

(declare-fun tp!1001036 () Bool)

(declare-fun tp!1001038 () Bool)

(assert (=> b!3171211 (= e!1975042 (and tp!1001036 tp!1001038))))

(assert (= (and b!3171048 ((_ is ElementMatch!9773) (regOne!20059 r!4733))) b!3171210))

(assert (= (and b!3171048 ((_ is Concat!15094) (regOne!20059 r!4733))) b!3171211))

(assert (= (and b!3171048 ((_ is Star!9773) (regOne!20059 r!4733))) b!3171212))

(assert (= (and b!3171048 ((_ is Union!9773) (regOne!20059 r!4733))) b!3171213))

(declare-fun b!3171216 () Bool)

(declare-fun e!1975043 () Bool)

(declare-fun tp!1001044 () Bool)

(assert (=> b!3171216 (= e!1975043 tp!1001044)))

(assert (=> b!3171048 (= tp!1000997 e!1975043)))

(declare-fun b!3171217 () Bool)

(declare-fun tp!1001040 () Bool)

(declare-fun tp!1001042 () Bool)

(assert (=> b!3171217 (= e!1975043 (and tp!1001040 tp!1001042))))

(declare-fun b!3171214 () Bool)

(assert (=> b!3171214 (= e!1975043 tp_is_empty!17109)))

(declare-fun b!3171215 () Bool)

(declare-fun tp!1001041 () Bool)

(declare-fun tp!1001043 () Bool)

(assert (=> b!3171215 (= e!1975043 (and tp!1001041 tp!1001043))))

(assert (= (and b!3171048 ((_ is ElementMatch!9773) (regTwo!20059 r!4733))) b!3171214))

(assert (= (and b!3171048 ((_ is Concat!15094) (regTwo!20059 r!4733))) b!3171215))

(assert (= (and b!3171048 ((_ is Star!9773) (regTwo!20059 r!4733))) b!3171216))

(assert (= (and b!3171048 ((_ is Union!9773) (regTwo!20059 r!4733))) b!3171217))

(declare-fun b!3171220 () Bool)

(declare-fun e!1975044 () Bool)

(declare-fun tp!1001049 () Bool)

(assert (=> b!3171220 (= e!1975044 tp!1001049)))

(assert (=> b!3171044 (= tp!1000993 e!1975044)))

(declare-fun b!3171221 () Bool)

(declare-fun tp!1001045 () Bool)

(declare-fun tp!1001047 () Bool)

(assert (=> b!3171221 (= e!1975044 (and tp!1001045 tp!1001047))))

(declare-fun b!3171218 () Bool)

(assert (=> b!3171218 (= e!1975044 tp_is_empty!17109)))

(declare-fun b!3171219 () Bool)

(declare-fun tp!1001046 () Bool)

(declare-fun tp!1001048 () Bool)

(assert (=> b!3171219 (= e!1975044 (and tp!1001046 tp!1001048))))

(assert (= (and b!3171044 ((_ is ElementMatch!9773) (regOne!20058 r!4733))) b!3171218))

(assert (= (and b!3171044 ((_ is Concat!15094) (regOne!20058 r!4733))) b!3171219))

(assert (= (and b!3171044 ((_ is Star!9773) (regOne!20058 r!4733))) b!3171220))

(assert (= (and b!3171044 ((_ is Union!9773) (regOne!20058 r!4733))) b!3171221))

(declare-fun b!3171224 () Bool)

(declare-fun e!1975045 () Bool)

(declare-fun tp!1001054 () Bool)

(assert (=> b!3171224 (= e!1975045 tp!1001054)))

(assert (=> b!3171044 (= tp!1000995 e!1975045)))

(declare-fun b!3171225 () Bool)

(declare-fun tp!1001050 () Bool)

(declare-fun tp!1001052 () Bool)

(assert (=> b!3171225 (= e!1975045 (and tp!1001050 tp!1001052))))

(declare-fun b!3171222 () Bool)

(assert (=> b!3171222 (= e!1975045 tp_is_empty!17109)))

(declare-fun b!3171223 () Bool)

(declare-fun tp!1001051 () Bool)

(declare-fun tp!1001053 () Bool)

(assert (=> b!3171223 (= e!1975045 (and tp!1001051 tp!1001053))))

(assert (= (and b!3171044 ((_ is ElementMatch!9773) (regTwo!20058 r!4733))) b!3171222))

(assert (= (and b!3171044 ((_ is Concat!15094) (regTwo!20058 r!4733))) b!3171223))

(assert (= (and b!3171044 ((_ is Star!9773) (regTwo!20058 r!4733))) b!3171224))

(assert (= (and b!3171044 ((_ is Union!9773) (regTwo!20058 r!4733))) b!3171225))

(declare-fun b!3171228 () Bool)

(declare-fun e!1975046 () Bool)

(declare-fun tp!1001059 () Bool)

(assert (=> b!3171228 (= e!1975046 tp!1001059)))

(assert (=> b!3171050 (= tp!1001009 e!1975046)))

(declare-fun b!3171229 () Bool)

(declare-fun tp!1001055 () Bool)

(declare-fun tp!1001057 () Bool)

(assert (=> b!3171229 (= e!1975046 (and tp!1001055 tp!1001057))))

(declare-fun b!3171226 () Bool)

(assert (=> b!3171226 (= e!1975046 tp_is_empty!17109)))

(declare-fun b!3171227 () Bool)

(declare-fun tp!1001056 () Bool)

(declare-fun tp!1001058 () Bool)

(assert (=> b!3171227 (= e!1975046 (and tp!1001056 tp!1001058))))

(assert (= (and b!3171050 ((_ is ElementMatch!9773) (reg!10102 r!4733))) b!3171226))

(assert (= (and b!3171050 ((_ is Concat!15094) (reg!10102 r!4733))) b!3171227))

(assert (= (and b!3171050 ((_ is Star!9773) (reg!10102 r!4733))) b!3171228))

(assert (= (and b!3171050 ((_ is Union!9773) (reg!10102 r!4733))) b!3171229))

(declare-fun tp!1001067 () Bool)

(declare-fun tp!1001066 () Bool)

(declare-fun e!1975049 () Bool)

(declare-fun tp!1001068 () Bool)

(declare-fun b!3171234 () Bool)

(assert (=> b!3171234 (= e!1975049 (and tp!1001066 tp_is_empty!17109 tp!1001067 tp!1001068))))

(assert (=> b!3171045 (= tp!1000998 e!1975049)))

(assert (= (and b!3171045 ((_ is Cons!35491) (zeroValue!4453 (v!35225 (underlying!8617 (v!35226 (underlying!8618 (cache!4246 thiss!28524)))))))) b!3171234))

(declare-fun tp!1001070 () Bool)

(declare-fun tp!1001071 () Bool)

(declare-fun b!3171235 () Bool)

(declare-fun e!1975050 () Bool)

(declare-fun tp!1001069 () Bool)

(assert (=> b!3171235 (= e!1975050 (and tp!1001069 tp_is_empty!17109 tp!1001070 tp!1001071))))

(assert (=> b!3171045 (= tp!1001002 e!1975050)))

(assert (= (and b!3171045 ((_ is Cons!35491) (minValue!4453 (v!35225 (underlying!8617 (v!35226 (underlying!8618 (cache!4246 thiss!28524)))))))) b!3171235))

(declare-fun e!1975055 () Bool)

(declare-fun tp!1001087 () Bool)

(declare-fun tp!1001088 () Bool)

(declare-fun tp!1001092 () Bool)

(declare-fun b!3171242 () Bool)

(assert (=> b!3171242 (= e!1975055 (and tp!1001087 tp_is_empty!17109 tp!1001088 tp!1001092))))

(declare-fun mapNonEmpty!19013 () Bool)

(declare-fun mapRes!19013 () Bool)

(declare-fun tp!1001089 () Bool)

(assert (=> mapNonEmpty!19013 (= mapRes!19013 (and tp!1001089 e!1975055))))

(declare-fun mapKey!19013 () (_ BitVec 32))

(declare-fun mapValue!19013 () List!35615)

(declare-fun mapRest!19013 () (Array (_ BitVec 32) List!35615))

(assert (=> mapNonEmpty!19013 (= mapRest!19010 (store mapRest!19013 mapKey!19013 mapValue!19013))))

(declare-fun tp!1001090 () Bool)

(declare-fun b!3171243 () Bool)

(declare-fun e!1975056 () Bool)

(declare-fun tp!1001091 () Bool)

(declare-fun tp!1001086 () Bool)

(assert (=> b!3171243 (= e!1975056 (and tp!1001091 tp_is_empty!17109 tp!1001086 tp!1001090))))

(declare-fun condMapEmpty!19013 () Bool)

(declare-fun mapDefault!19013 () List!35615)

(assert (=> mapNonEmpty!19010 (= condMapEmpty!19013 (= mapRest!19010 ((as const (Array (_ BitVec 32) List!35615)) mapDefault!19013)))))

(assert (=> mapNonEmpty!19010 (= tp!1000999 (and e!1975056 mapRes!19013))))

(declare-fun mapIsEmpty!19013 () Bool)

(assert (=> mapIsEmpty!19013 mapRes!19013))

(assert (= (and mapNonEmpty!19010 condMapEmpty!19013) mapIsEmpty!19013))

(assert (= (and mapNonEmpty!19010 (not condMapEmpty!19013)) mapNonEmpty!19013))

(assert (= (and mapNonEmpty!19013 ((_ is Cons!35491) mapValue!19013)) b!3171242))

(assert (= (and mapNonEmpty!19010 ((_ is Cons!35491) mapDefault!19013)) b!3171243))

(declare-fun m!3430190 () Bool)

(assert (=> mapNonEmpty!19013 m!3430190))

(declare-fun tp!1001094 () Bool)

(declare-fun tp!1001093 () Bool)

(declare-fun e!1975057 () Bool)

(declare-fun tp!1001095 () Bool)

(declare-fun b!3171244 () Bool)

(assert (=> b!3171244 (= e!1975057 (and tp!1001093 tp_is_empty!17109 tp!1001094 tp!1001095))))

(assert (=> mapNonEmpty!19010 (= tp!1001000 e!1975057)))

(assert (= (and mapNonEmpty!19010 ((_ is Cons!35491) mapValue!19010)) b!3171244))

(declare-fun tp!1001096 () Bool)

(declare-fun e!1975058 () Bool)

(declare-fun tp!1001097 () Bool)

(declare-fun tp!1001098 () Bool)

(declare-fun b!3171245 () Bool)

(assert (=> b!3171245 (= e!1975058 (and tp!1001096 tp_is_empty!17109 tp!1001097 tp!1001098))))

(assert (=> b!3171041 (= tp!1000994 e!1975058)))

(assert (= (and b!3171041 ((_ is Cons!35491) mapDefault!19010)) b!3171245))

(declare-fun b!3171248 () Bool)

(declare-fun e!1975059 () Bool)

(declare-fun tp!1001103 () Bool)

(assert (=> b!3171248 (= e!1975059 tp!1001103)))

(assert (=> b!3171037 (= tp!1001003 e!1975059)))

(declare-fun b!3171249 () Bool)

(declare-fun tp!1001099 () Bool)

(declare-fun tp!1001101 () Bool)

(assert (=> b!3171249 (= e!1975059 (and tp!1001099 tp!1001101))))

(declare-fun b!3171246 () Bool)

(assert (=> b!3171246 (= e!1975059 tp_is_empty!17109)))

(declare-fun b!3171247 () Bool)

(declare-fun tp!1001100 () Bool)

(declare-fun tp!1001102 () Bool)

(assert (=> b!3171247 (= e!1975059 (and tp!1001100 tp!1001102))))

(assert (= (and b!3171037 ((_ is ElementMatch!9773) (regOne!20058 res!14113))) b!3171246))

(assert (= (and b!3171037 ((_ is Concat!15094) (regOne!20058 res!14113))) b!3171247))

(assert (= (and b!3171037 ((_ is Star!9773) (regOne!20058 res!14113))) b!3171248))

(assert (= (and b!3171037 ((_ is Union!9773) (regOne!20058 res!14113))) b!3171249))

(declare-fun b!3171252 () Bool)

(declare-fun e!1975060 () Bool)

(declare-fun tp!1001108 () Bool)

(assert (=> b!3171252 (= e!1975060 tp!1001108)))

(assert (=> b!3171037 (= tp!1001008 e!1975060)))

(declare-fun b!3171253 () Bool)

(declare-fun tp!1001104 () Bool)

(declare-fun tp!1001106 () Bool)

(assert (=> b!3171253 (= e!1975060 (and tp!1001104 tp!1001106))))

(declare-fun b!3171250 () Bool)

(assert (=> b!3171250 (= e!1975060 tp_is_empty!17109)))

(declare-fun b!3171251 () Bool)

(declare-fun tp!1001105 () Bool)

(declare-fun tp!1001107 () Bool)

(assert (=> b!3171251 (= e!1975060 (and tp!1001105 tp!1001107))))

(assert (= (and b!3171037 ((_ is ElementMatch!9773) (regTwo!20058 res!14113))) b!3171250))

(assert (= (and b!3171037 ((_ is Concat!15094) (regTwo!20058 res!14113))) b!3171251))

(assert (= (and b!3171037 ((_ is Star!9773) (regTwo!20058 res!14113))) b!3171252))

(assert (= (and b!3171037 ((_ is Union!9773) (regTwo!20058 res!14113))) b!3171253))

(declare-fun b_lambda!86469 () Bool)

(assert (= b_lambda!86467 (or b!3171042 b_lambda!86469)))

(declare-fun bs!539603 () Bool)

(declare-fun d!869238 () Bool)

(assert (= bs!539603 (and d!869238 b!3171042)))

(declare-fun res!1289041 () Bool)

(declare-fun e!1975061 () Bool)

(assert (=> bs!539603 (=> (not res!1289041) (not e!1975061))))

(assert (=> bs!539603 (= res!1289041 (validRegex!4485 (_1!20500 (_1!20501 (h!40911 (toList!2082 (map!7944 (_2!20502 lt!1066119))))))))))

(assert (=> bs!539603 (= (dynLambda!14368 lambda!116018 (h!40911 (toList!2082 (map!7944 (_2!20502 lt!1066119))))) e!1975061)))

(declare-fun b!3171254 () Bool)

(assert (=> b!3171254 (= e!1975061 (= (_2!20501 (h!40911 (toList!2082 (map!7944 (_2!20502 lt!1066119))))) (derivativeStep!2912 (_1!20500 (_1!20501 (h!40911 (toList!2082 (map!7944 (_2!20502 lt!1066119)))))) (_2!20500 (_1!20501 (h!40911 (toList!2082 (map!7944 (_2!20502 lt!1066119)))))))))))

(assert (= (and bs!539603 res!1289041) b!3171254))

(declare-fun m!3430192 () Bool)

(assert (=> bs!539603 m!3430192))

(declare-fun m!3430194 () Bool)

(assert (=> b!3171254 m!3430194))

(assert (=> b!3171124 d!869238))

(check-sat (not bm!230448) (not bm!230461) (not bm!230370) (not b!3171115) (not bm!230462) (not bm!230445) (not bm!230458) (not bm!230436) (not b!3171201) (not b!3171243) (not bm!230439) (not bm!230454) (not b!3171203) (not b!3171219) (not b!3171116) (not b!3171245) (not bm!230450) (not bm!230363) (not b!3171184) (not b!3171215) (not bm!230437) (not b!3171212) (not b!3171183) (not bm!230464) (not bm!230455) (not bm!230443) (not b!3171216) (not b!3171127) (not b!3171254) (not bs!539603) (not b!3171252) (not b!3171242) (not bm!230441) (not b!3171181) (not d!869230) (not b!3171125) (not b!3171174) (not bm!230465) tp_is_empty!17109 (not b_next!83961) (not b!3171248) (not d!869234) (not b!3171072) (not b!3171235) (not bm!230435) (not b_lambda!86469) (not bm!230451) (not bm!230460) (not b!3171211) (not bm!230452) (not bm!230459) (not b!3171130) (not b!3171205) (not bm!230456) (not b!3171180) (not bm!230371) (not b!3171208) (not b!3171251) (not bm!230463) (not d!869232) (not b!3171126) (not d!869216) b_and!209537 (not b!3171217) (not b!3171199) (not b!3171170) (not b!3171207) (not b!3171204) (not b!3171200) (not b!3171244) (not b!3171249) (not b!3171220) (not b!3171228) (not b!3171224) (not bm!230457) (not b!3171247) (not b!3171225) (not b_next!83963) (not bm!230438) (not mapNonEmpty!19013) (not bm!230360) (not b!3171101) (not b!3171221) (not d!869236) (not b!3171119) (not b!3171234) (not bm!230447) (not b!3171209) (not b!3171253) (not b!3171227) (not bm!230440) (not bm!230446) (not b!3171229) (not bm!230449) (not b!3171213) (not b!3171223) (not d!869224) (not bm!230444) b_and!209535)
(check-sat b_and!209537 b_and!209535 (not b_next!83961) (not b_next!83963))

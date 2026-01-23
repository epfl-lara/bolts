; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!218154 () Bool)

(assert start!218154)

(declare-fun b!2239047 () Bool)

(declare-fun b_free!64977 () Bool)

(declare-fun b_next!65681 () Bool)

(assert (=> b!2239047 (= b_free!64977 (not b_next!65681))))

(declare-fun tp!704926 () Bool)

(declare-fun b_and!174989 () Bool)

(assert (=> b!2239047 (= tp!704926 b_and!174989)))

(declare-fun b!2239043 () Bool)

(declare-fun b_free!64979 () Bool)

(declare-fun b_next!65683 () Bool)

(assert (=> b!2239043 (= b_free!64979 (not b_next!65683))))

(declare-fun tp!704929 () Bool)

(declare-fun b_and!174991 () Bool)

(assert (=> b!2239043 (= tp!704929 b_and!174991)))

(declare-fun b!2239042 () Bool)

(declare-fun e!1431397 () Bool)

(declare-fun tp!704928 () Bool)

(declare-fun mapRes!14681 () Bool)

(assert (=> b!2239042 (= e!1431397 (and tp!704928 mapRes!14681))))

(declare-fun condMapEmpty!14681 () Bool)

(declare-datatypes ((C!13128 0))(
  ( (C!13129 (val!7612 Int)) )
))
(declare-datatypes ((Regex!6491 0))(
  ( (ElementMatch!6491 (c!356676 C!13128)) (Concat!10829 (regOne!13494 Regex!6491) (regTwo!13494 Regex!6491)) (EmptyExpr!6491) (Star!6491 (reg!6820 Regex!6491)) (EmptyLang!6491) (Union!6491 (regOne!13495 Regex!6491) (regTwo!13495 Regex!6491)) )
))
(declare-datatypes ((List!26469 0))(
  ( (Nil!26375) (Cons!26375 (h!31776 Regex!6491) (t!199901 List!26469)) )
))
(declare-datatypes ((Context!4078 0))(
  ( (Context!4079 (exprs!2539 List!26469)) )
))
(declare-datatypes ((tuple3!4054 0))(
  ( (tuple3!4055 (_1!15386 Regex!6491) (_2!15386 Context!4078) (_3!2497 C!13128)) )
))
(declare-datatypes ((Hashable!3039 0))(
  ( (HashableExt!3038 (__x!17613 Int)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!25778 0))(
  ( (tuple2!25779 (_1!15387 tuple3!4054) (_2!15387 (InoxSet Context!4078))) )
))
(declare-datatypes ((List!26470 0))(
  ( (Nil!26376) (Cons!26376 (h!31777 tuple2!25778) (t!199902 List!26470)) )
))
(declare-datatypes ((array!10912 0))(
  ( (array!10913 (arr!4845 (Array (_ BitVec 32) List!26470)) (size!20626 (_ BitVec 32))) )
))
(declare-datatypes ((array!10914 0))(
  ( (array!10915 (arr!4846 (Array (_ BitVec 32) (_ BitVec 64))) (size!20627 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6258 0))(
  ( (LongMapFixedSize!6259 (defaultEntry!3494 Int) (mask!7728 (_ BitVec 32)) (extraKeys!3377 (_ BitVec 32)) (zeroValue!3387 List!26470) (minValue!3387 List!26470) (_size!6305 (_ BitVec 32)) (_keys!3426 array!10914) (_values!3409 array!10912) (_vacant!3190 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!12333 0))(
  ( (Cell!12334 (v!29995 LongMapFixedSize!6258)) )
))
(declare-datatypes ((MutLongMap!3129 0))(
  ( (LongMap!3129 (underlying!6459 Cell!12333)) (MutLongMapExt!3128 (__x!17614 Int)) )
))
(declare-datatypes ((Cell!12335 0))(
  ( (Cell!12336 (v!29996 MutLongMap!3129)) )
))
(declare-datatypes ((MutableMap!3039 0))(
  ( (MutableMapExt!3038 (__x!17615 Int)) (HashMap!3039 (underlying!6460 Cell!12335) (hashF!4962 Hashable!3039) (_size!6306 (_ BitVec 32)) (defaultValue!3201 Int)) )
))
(declare-datatypes ((CacheDown!2124 0))(
  ( (CacheDown!2125 (cache!3420 MutableMap!3039)) )
))
(declare-fun thiss!28743 () CacheDown!2124)

(declare-fun mapDefault!14681 () List!26470)

(assert (=> b!2239042 (= condMapEmpty!14681 (= (arr!4845 (_values!3409 (v!29995 (underlying!6459 (v!29996 (underlying!6460 (cache!3420 thiss!28743))))))) ((as const (Array (_ BitVec 32) List!26470)) mapDefault!14681)))))

(declare-fun tp!704930 () Bool)

(declare-fun tp!704923 () Bool)

(declare-fun e!1431389 () Bool)

(declare-fun array_inv!3481 (array!10914) Bool)

(declare-fun array_inv!3482 (array!10912) Bool)

(assert (=> b!2239043 (= e!1431389 (and tp!704929 tp!704923 tp!704930 (array_inv!3481 (_keys!3426 (v!29995 (underlying!6459 (v!29996 (underlying!6460 (cache!3420 thiss!28743))))))) (array_inv!3482 (_values!3409 (v!29995 (underlying!6459 (v!29996 (underlying!6460 (cache!3420 thiss!28743))))))) e!1431397))))

(declare-fun b!2239044 () Bool)

(declare-fun e!1431390 () Bool)

(declare-fun tp!704919 () Bool)

(assert (=> b!2239044 (= e!1431390 tp!704919)))

(declare-fun b!2239045 () Bool)

(declare-fun e!1431393 () Bool)

(declare-fun e!1431398 () Bool)

(assert (=> b!2239045 (= e!1431393 e!1431398)))

(declare-fun b!2239046 () Bool)

(declare-fun e!1431392 () Bool)

(declare-fun tp!704922 () Bool)

(declare-fun tp!704924 () Bool)

(assert (=> b!2239046 (= e!1431392 (and tp!704922 tp!704924))))

(declare-fun e!1431395 () Bool)

(assert (=> b!2239047 (= e!1431398 (and e!1431395 tp!704926))))

(declare-fun b!2239048 () Bool)

(declare-fun tp_is_empty!10203 () Bool)

(assert (=> b!2239048 (= e!1431392 tp_is_empty!10203)))

(declare-fun mapIsEmpty!14681 () Bool)

(assert (=> mapIsEmpty!14681 mapRes!14681))

(declare-fun b!2239049 () Bool)

(declare-fun e!1431399 () Bool)

(assert (=> b!2239049 (= e!1431399 e!1431389)))

(declare-fun b!2239050 () Bool)

(declare-fun res!957424 () Bool)

(declare-fun e!1431391 () Bool)

(assert (=> b!2239050 (=> (not res!957424) (not e!1431391))))

(declare-fun ctx!48 () Context!4078)

(declare-fun r!4750 () Regex!6491)

(declare-fun a!970 () C!13128)

(declare-fun contains!4436 (MutableMap!3039 tuple3!4054) Bool)

(assert (=> b!2239050 (= res!957424 (not (contains!4436 (cache!3420 thiss!28743) (tuple3!4055 r!4750 ctx!48 a!970))))))

(declare-fun b!2239051 () Bool)

(declare-fun e!1431396 () Bool)

(declare-fun lt!833166 () MutLongMap!3129)

(get-info :version)

(assert (=> b!2239051 (= e!1431395 (and e!1431396 ((_ is LongMap!3129) lt!833166)))))

(assert (=> b!2239051 (= lt!833166 (v!29996 (underlying!6460 (cache!3420 thiss!28743))))))

(declare-fun b!2239053 () Bool)

(assert (=> b!2239053 (= e!1431391 (not ((_ is HashMap!3039) (cache!3420 thiss!28743))))))

(declare-fun mapNonEmpty!14681 () Bool)

(declare-fun tp!704927 () Bool)

(declare-fun tp!704918 () Bool)

(assert (=> mapNonEmpty!14681 (= mapRes!14681 (and tp!704927 tp!704918))))

(declare-fun mapValue!14681 () List!26470)

(declare-fun mapRest!14681 () (Array (_ BitVec 32) List!26470))

(declare-fun mapKey!14681 () (_ BitVec 32))

(assert (=> mapNonEmpty!14681 (= (arr!4845 (_values!3409 (v!29995 (underlying!6459 (v!29996 (underlying!6460 (cache!3420 thiss!28743))))))) (store mapRest!14681 mapKey!14681 mapValue!14681))))

(declare-fun b!2239054 () Bool)

(assert (=> b!2239054 (= e!1431396 e!1431399)))

(declare-fun b!2239055 () Bool)

(declare-fun tp!704925 () Bool)

(declare-fun tp!704921 () Bool)

(assert (=> b!2239055 (= e!1431392 (and tp!704925 tp!704921))))

(declare-fun res!957423 () Bool)

(assert (=> start!218154 (=> (not res!957423) (not e!1431391))))

(declare-fun validCacheMapDown!335 (MutableMap!3039) Bool)

(assert (=> start!218154 (= res!957423 (validCacheMapDown!335 (cache!3420 thiss!28743)))))

(assert (=> start!218154 e!1431391))

(declare-fun inv!35826 (CacheDown!2124) Bool)

(assert (=> start!218154 (and (inv!35826 thiss!28743) e!1431393)))

(assert (=> start!218154 e!1431392))

(declare-fun inv!35827 (Context!4078) Bool)

(assert (=> start!218154 (and (inv!35827 ctx!48) e!1431390)))

(assert (=> start!218154 tp_is_empty!10203))

(declare-fun b!2239052 () Bool)

(declare-fun tp!704920 () Bool)

(assert (=> b!2239052 (= e!1431392 tp!704920)))

(assert (= (and start!218154 res!957423) b!2239050))

(assert (= (and b!2239050 res!957424) b!2239053))

(assert (= (and b!2239042 condMapEmpty!14681) mapIsEmpty!14681))

(assert (= (and b!2239042 (not condMapEmpty!14681)) mapNonEmpty!14681))

(assert (= b!2239043 b!2239042))

(assert (= b!2239049 b!2239043))

(assert (= b!2239054 b!2239049))

(assert (= (and b!2239051 ((_ is LongMap!3129) (v!29996 (underlying!6460 (cache!3420 thiss!28743))))) b!2239054))

(assert (= b!2239047 b!2239051))

(assert (= (and b!2239045 ((_ is HashMap!3039) (cache!3420 thiss!28743))) b!2239047))

(assert (= start!218154 b!2239045))

(assert (= (and start!218154 ((_ is ElementMatch!6491) r!4750)) b!2239048))

(assert (= (and start!218154 ((_ is Concat!10829) r!4750)) b!2239055))

(assert (= (and start!218154 ((_ is Star!6491) r!4750)) b!2239052))

(assert (= (and start!218154 ((_ is Union!6491) r!4750)) b!2239046))

(assert (= start!218154 b!2239044))

(declare-fun m!2671959 () Bool)

(assert (=> b!2239043 m!2671959))

(declare-fun m!2671961 () Bool)

(assert (=> b!2239043 m!2671961))

(declare-fun m!2671963 () Bool)

(assert (=> b!2239050 m!2671963))

(declare-fun m!2671965 () Bool)

(assert (=> mapNonEmpty!14681 m!2671965))

(declare-fun m!2671967 () Bool)

(assert (=> start!218154 m!2671967))

(declare-fun m!2671969 () Bool)

(assert (=> start!218154 m!2671969))

(declare-fun m!2671971 () Bool)

(assert (=> start!218154 m!2671971))

(check-sat (not b!2239043) b_and!174989 (not b_next!65681) (not mapNonEmpty!14681) (not start!218154) (not b!2239050) (not b_next!65683) (not b!2239046) tp_is_empty!10203 (not b!2239055) (not b!2239052) (not b!2239044) (not b!2239042) b_and!174991)
(check-sat b_and!174991 b_and!174989 (not b_next!65681) (not b_next!65683))
(get-model)

(declare-fun d!665641 () Bool)

(declare-fun res!957431 () Bool)

(declare-fun e!1431404 () Bool)

(assert (=> d!665641 (=> (not res!957431) (not e!1431404))))

(declare-fun valid!2358 (MutableMap!3039) Bool)

(assert (=> d!665641 (= res!957431 (valid!2358 (cache!3420 thiss!28743)))))

(assert (=> d!665641 (= (validCacheMapDown!335 (cache!3420 thiss!28743)) e!1431404)))

(declare-fun b!2239062 () Bool)

(declare-fun res!957432 () Bool)

(assert (=> b!2239062 (=> (not res!957432) (not e!1431404))))

(declare-fun invariantList!381 (List!26470) Bool)

(declare-datatypes ((ListMap!857 0))(
  ( (ListMap!858 (toList!1372 List!26470)) )
))
(declare-fun map!5439 (MutableMap!3039) ListMap!857)

(assert (=> b!2239062 (= res!957432 (invariantList!381 (toList!1372 (map!5439 (cache!3420 thiss!28743)))))))

(declare-fun b!2239063 () Bool)

(declare-fun lambda!84662 () Int)

(declare-fun forall!5422 (List!26470 Int) Bool)

(assert (=> b!2239063 (= e!1431404 (forall!5422 (toList!1372 (map!5439 (cache!3420 thiss!28743))) lambda!84662))))

(assert (= (and d!665641 res!957431) b!2239062))

(assert (= (and b!2239062 res!957432) b!2239063))

(declare-fun m!2671974 () Bool)

(assert (=> d!665641 m!2671974))

(declare-fun m!2671976 () Bool)

(assert (=> b!2239062 m!2671976))

(declare-fun m!2671978 () Bool)

(assert (=> b!2239062 m!2671978))

(assert (=> b!2239063 m!2671976))

(declare-fun m!2671980 () Bool)

(assert (=> b!2239063 m!2671980))

(assert (=> start!218154 d!665641))

(declare-fun d!665643 () Bool)

(declare-fun res!957435 () Bool)

(declare-fun e!1431407 () Bool)

(assert (=> d!665643 (=> (not res!957435) (not e!1431407))))

(assert (=> d!665643 (= res!957435 ((_ is HashMap!3039) (cache!3420 thiss!28743)))))

(assert (=> d!665643 (= (inv!35826 thiss!28743) e!1431407)))

(declare-fun b!2239066 () Bool)

(assert (=> b!2239066 (= e!1431407 (validCacheMapDown!335 (cache!3420 thiss!28743)))))

(assert (= (and d!665643 res!957435) b!2239066))

(assert (=> b!2239066 m!2671967))

(assert (=> start!218154 d!665643))

(declare-fun d!665645 () Bool)

(declare-fun lambda!84665 () Int)

(declare-fun forall!5423 (List!26469 Int) Bool)

(assert (=> d!665645 (= (inv!35827 ctx!48) (forall!5423 (exprs!2539 ctx!48) lambda!84665))))

(declare-fun bs!454272 () Bool)

(assert (= bs!454272 d!665645))

(declare-fun m!2671982 () Bool)

(assert (=> bs!454272 m!2671982))

(assert (=> start!218154 d!665645))

(declare-fun d!665647 () Bool)

(assert (=> d!665647 (= (array_inv!3481 (_keys!3426 (v!29995 (underlying!6459 (v!29996 (underlying!6460 (cache!3420 thiss!28743))))))) (bvsge (size!20627 (_keys!3426 (v!29995 (underlying!6459 (v!29996 (underlying!6460 (cache!3420 thiss!28743))))))) #b00000000000000000000000000000000))))

(assert (=> b!2239043 d!665647))

(declare-fun d!665649 () Bool)

(assert (=> d!665649 (= (array_inv!3482 (_values!3409 (v!29995 (underlying!6459 (v!29996 (underlying!6460 (cache!3420 thiss!28743))))))) (bvsge (size!20626 (_values!3409 (v!29995 (underlying!6459 (v!29996 (underlying!6460 (cache!3420 thiss!28743))))))) #b00000000000000000000000000000000))))

(assert (=> b!2239043 d!665649))

(declare-fun b!2239089 () Bool)

(declare-fun e!1431426 () Bool)

(declare-fun call!135102 () Bool)

(assert (=> b!2239089 (= e!1431426 call!135102)))

(declare-fun b!2239090 () Bool)

(declare-fun lt!833222 () (_ BitVec 64))

(declare-datatypes ((Unit!39342 0))(
  ( (Unit!39343) )
))
(declare-fun e!1431427 () Unit!39342)

(declare-fun lambda!84668 () Int)

(declare-datatypes ((tuple2!25780 0))(
  ( (tuple2!25781 (_1!15388 (_ BitVec 64)) (_2!15388 List!26470)) )
))
(declare-datatypes ((List!26471 0))(
  ( (Nil!26377) (Cons!26377 (h!31778 tuple2!25780) (t!199903 List!26471)) )
))
(declare-fun forallContained!782 (List!26471 Int tuple2!25780) Unit!39342)

(declare-datatypes ((ListLongMap!341 0))(
  ( (ListLongMap!342 (toList!1373 List!26471)) )
))
(declare-fun map!5440 (MutLongMap!3129) ListLongMap!341)

(declare-fun apply!6501 (MutLongMap!3129 (_ BitVec 64)) List!26470)

(assert (=> b!2239090 (= e!1431427 (forallContained!782 (toList!1373 (map!5440 (v!29996 (underlying!6460 (cache!3420 thiss!28743))))) lambda!84668 (tuple2!25781 lt!833222 (apply!6501 (v!29996 (underlying!6460 (cache!3420 thiss!28743))) lt!833222))))))

(declare-fun c!356685 () Bool)

(declare-fun contains!4437 (List!26471 tuple2!25780) Bool)

(assert (=> b!2239090 (= c!356685 (not (contains!4437 (toList!1373 (map!5440 (v!29996 (underlying!6460 (cache!3420 thiss!28743))))) (tuple2!25781 lt!833222 (apply!6501 (v!29996 (underlying!6460 (cache!3420 thiss!28743))) lt!833222)))))))

(declare-fun lt!833225 () Unit!39342)

(declare-fun e!1431424 () Unit!39342)

(assert (=> b!2239090 (= lt!833225 e!1431424)))

(declare-fun b!2239092 () Bool)

(assert (=> b!2239092 false))

(declare-fun lt!833210 () Unit!39342)

(declare-fun lt!833220 () Unit!39342)

(assert (=> b!2239092 (= lt!833210 lt!833220)))

(declare-fun lt!833226 () List!26471)

(declare-fun lt!833211 () List!26470)

(assert (=> b!2239092 (contains!4437 lt!833226 (tuple2!25781 lt!833222 lt!833211))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!36 (List!26471 (_ BitVec 64) List!26470) Unit!39342)

(assert (=> b!2239092 (= lt!833220 (lemmaGetValueByKeyImpliesContainsTuple!36 lt!833226 lt!833222 lt!833211))))

(assert (=> b!2239092 (= lt!833211 (apply!6501 (v!29996 (underlying!6460 (cache!3420 thiss!28743))) lt!833222))))

(assert (=> b!2239092 (= lt!833226 (toList!1373 (map!5440 (v!29996 (underlying!6460 (cache!3420 thiss!28743))))))))

(declare-fun lt!833207 () Unit!39342)

(declare-fun lt!833208 () Unit!39342)

(assert (=> b!2239092 (= lt!833207 lt!833208)))

(declare-fun lt!833223 () List!26471)

(declare-datatypes ((Option!5140 0))(
  ( (None!5139) (Some!5139 (v!29997 List!26470)) )
))
(declare-fun isDefined!4148 (Option!5140) Bool)

(declare-fun getValueByKey!85 (List!26471 (_ BitVec 64)) Option!5140)

(assert (=> b!2239092 (isDefined!4148 (getValueByKey!85 lt!833223 lt!833222))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!53 (List!26471 (_ BitVec 64)) Unit!39342)

(assert (=> b!2239092 (= lt!833208 (lemmaContainsKeyImpliesGetValueByKeyDefined!53 lt!833223 lt!833222))))

(assert (=> b!2239092 (= lt!833223 (toList!1373 (map!5440 (v!29996 (underlying!6460 (cache!3420 thiss!28743))))))))

(declare-fun lt!833209 () Unit!39342)

(declare-fun lt!833214 () Unit!39342)

(assert (=> b!2239092 (= lt!833209 lt!833214)))

(declare-fun lt!833217 () List!26471)

(declare-fun containsKey!84 (List!26471 (_ BitVec 64)) Bool)

(assert (=> b!2239092 (containsKey!84 lt!833217 lt!833222)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!36 (List!26471 (_ BitVec 64)) Unit!39342)

(assert (=> b!2239092 (= lt!833214 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!36 lt!833217 lt!833222))))

(assert (=> b!2239092 (= lt!833217 (toList!1373 (map!5440 (v!29996 (underlying!6460 (cache!3420 thiss!28743))))))))

(declare-fun Unit!39344 () Unit!39342)

(assert (=> b!2239092 (= e!1431424 Unit!39344)))

(declare-fun call!135103 () List!26470)

(declare-fun lt!833216 () ListLongMap!341)

(declare-fun c!356686 () Bool)

(declare-fun bm!135095 () Bool)

(declare-fun call!135101 () (_ BitVec 64))

(declare-fun call!135105 () ListLongMap!341)

(declare-fun apply!6502 (ListLongMap!341 (_ BitVec 64)) List!26470)

(assert (=> bm!135095 (= call!135103 (apply!6502 (ite c!356686 lt!833216 call!135105) call!135101))))

(declare-fun b!2239093 () Bool)

(declare-fun e!1431422 () Bool)

(assert (=> b!2239093 (= e!1431422 call!135102)))

(declare-fun bm!135096 () Bool)

(declare-fun hash!582 (Hashable!3039 tuple3!4054) (_ BitVec 64))

(assert (=> bm!135096 (= call!135101 (hash!582 (hashF!4962 (cache!3420 thiss!28743)) (tuple3!4055 r!4750 ctx!48 a!970)))))

(declare-fun b!2239094 () Bool)

(declare-fun e!1431425 () Unit!39342)

(declare-fun Unit!39345 () Unit!39342)

(assert (=> b!2239094 (= e!1431425 Unit!39345)))

(declare-datatypes ((Option!5141 0))(
  ( (None!5140) (Some!5140 (v!29998 tuple2!25778)) )
))
(declare-fun call!135100 () Option!5141)

(declare-fun bm!135097 () Bool)

(declare-fun getPair!35 (List!26470 tuple3!4054) Option!5141)

(assert (=> bm!135097 (= call!135100 (getPair!35 call!135103 (tuple3!4055 r!4750 ctx!48 a!970)))))

(declare-fun bm!135098 () Bool)

(declare-fun isDefined!4149 (Option!5141) Bool)

(assert (=> bm!135098 (= call!135102 (isDefined!4149 call!135100))))

(declare-fun b!2239091 () Bool)

(declare-fun Unit!39346 () Unit!39342)

(assert (=> b!2239091 (= e!1431427 Unit!39346)))

(declare-fun lt!833219 () Bool)

(declare-fun d!665651 () Bool)

(declare-fun contains!4438 (ListMap!857 tuple3!4054) Bool)

(assert (=> d!665651 (= lt!833219 (contains!4438 (map!5439 (cache!3420 thiss!28743)) (tuple3!4055 r!4750 ctx!48 a!970)))))

(declare-fun e!1431428 () Bool)

(assert (=> d!665651 (= lt!833219 e!1431428)))

(declare-fun res!957444 () Bool)

(assert (=> d!665651 (=> (not res!957444) (not e!1431428))))

(declare-fun contains!4439 (MutLongMap!3129 (_ BitVec 64)) Bool)

(assert (=> d!665651 (= res!957444 (contains!4439 (v!29996 (underlying!6460 (cache!3420 thiss!28743))) lt!833222))))

(declare-fun lt!833212 () Unit!39342)

(declare-fun e!1431423 () Unit!39342)

(assert (=> d!665651 (= lt!833212 e!1431423)))

(declare-fun extractMap!115 (List!26471) ListMap!857)

(assert (=> d!665651 (= c!356686 (contains!4438 (extractMap!115 (toList!1373 (map!5440 (v!29996 (underlying!6460 (cache!3420 thiss!28743)))))) (tuple3!4055 r!4750 ctx!48 a!970)))))

(declare-fun lt!833218 () Unit!39342)

(assert (=> d!665651 (= lt!833218 e!1431427)))

(declare-fun c!356687 () Bool)

(assert (=> d!665651 (= c!356687 (contains!4439 (v!29996 (underlying!6460 (cache!3420 thiss!28743))) lt!833222))))

(assert (=> d!665651 (= lt!833222 (hash!582 (hashF!4962 (cache!3420 thiss!28743)) (tuple3!4055 r!4750 ctx!48 a!970)))))

(assert (=> d!665651 (valid!2358 (cache!3420 thiss!28743))))

(assert (=> d!665651 (= (contains!4436 (cache!3420 thiss!28743) (tuple3!4055 r!4750 ctx!48 a!970)) lt!833219)))

(declare-fun b!2239095 () Bool)

(assert (=> b!2239095 false))

(declare-fun lt!833213 () Unit!39342)

(declare-fun lt!833221 () Unit!39342)

(assert (=> b!2239095 (= lt!833213 lt!833221)))

(declare-fun lt!833215 () ListLongMap!341)

(assert (=> b!2239095 (contains!4438 (extractMap!115 (toList!1373 lt!833215)) (tuple3!4055 r!4750 ctx!48 a!970))))

(declare-fun lemmaInLongMapThenInGenericMap!35 (ListLongMap!341 tuple3!4054 Hashable!3039) Unit!39342)

(assert (=> b!2239095 (= lt!833221 (lemmaInLongMapThenInGenericMap!35 lt!833215 (tuple3!4055 r!4750 ctx!48 a!970) (hashF!4962 (cache!3420 thiss!28743))))))

(assert (=> b!2239095 (= lt!833215 call!135105)))

(declare-fun Unit!39347 () Unit!39342)

(assert (=> b!2239095 (= e!1431425 Unit!39347)))

(declare-fun b!2239096 () Bool)

(assert (=> b!2239096 (= e!1431423 e!1431425)))

(declare-fun res!957442 () Bool)

(declare-fun call!135104 () Bool)

(assert (=> b!2239096 (= res!957442 call!135104)))

(assert (=> b!2239096 (=> (not res!957442) (not e!1431422))))

(declare-fun c!356688 () Bool)

(assert (=> b!2239096 (= c!356688 e!1431422)))

(declare-fun b!2239097 () Bool)

(declare-fun Unit!39348 () Unit!39342)

(assert (=> b!2239097 (= e!1431424 Unit!39348)))

(declare-fun b!2239098 () Bool)

(declare-fun lt!833224 () Unit!39342)

(assert (=> b!2239098 (= e!1431423 lt!833224)))

(assert (=> b!2239098 (= lt!833216 call!135105)))

(declare-fun lemmaInGenericMapThenInLongMap!35 (ListLongMap!341 tuple3!4054 Hashable!3039) Unit!39342)

(assert (=> b!2239098 (= lt!833224 (lemmaInGenericMapThenInLongMap!35 lt!833216 (tuple3!4055 r!4750 ctx!48 a!970) (hashF!4962 (cache!3420 thiss!28743))))))

(declare-fun res!957443 () Bool)

(assert (=> b!2239098 (= res!957443 call!135104)))

(assert (=> b!2239098 (=> (not res!957443) (not e!1431426))))

(assert (=> b!2239098 e!1431426))

(declare-fun b!2239099 () Bool)

(assert (=> b!2239099 (= e!1431428 (isDefined!4149 (getPair!35 (apply!6501 (v!29996 (underlying!6460 (cache!3420 thiss!28743))) lt!833222) (tuple3!4055 r!4750 ctx!48 a!970))))))

(declare-fun bm!135099 () Bool)

(declare-fun contains!4440 (ListLongMap!341 (_ BitVec 64)) Bool)

(assert (=> bm!135099 (= call!135104 (contains!4440 (ite c!356686 lt!833216 call!135105) call!135101))))

(declare-fun bm!135100 () Bool)

(assert (=> bm!135100 (= call!135105 (map!5440 (v!29996 (underlying!6460 (cache!3420 thiss!28743)))))))

(assert (= (and d!665651 c!356687) b!2239090))

(assert (= (and d!665651 (not c!356687)) b!2239091))

(assert (= (and b!2239090 c!356685) b!2239092))

(assert (= (and b!2239090 (not c!356685)) b!2239097))

(assert (= (and d!665651 c!356686) b!2239098))

(assert (= (and d!665651 (not c!356686)) b!2239096))

(assert (= (and b!2239098 res!957443) b!2239089))

(assert (= (and b!2239096 res!957442) b!2239093))

(assert (= (and b!2239096 c!356688) b!2239095))

(assert (= (and b!2239096 (not c!356688)) b!2239094))

(assert (= (or b!2239098 b!2239096 b!2239093 b!2239095) bm!135100))

(assert (= (or b!2239098 b!2239089 b!2239096 b!2239093) bm!135096))

(assert (= (or b!2239098 b!2239096) bm!135099))

(assert (= (or b!2239089 b!2239093) bm!135095))

(assert (= (or b!2239089 b!2239093) bm!135097))

(assert (= (or b!2239089 b!2239093) bm!135098))

(assert (= (and d!665651 res!957444) b!2239099))

(declare-fun m!2671984 () Bool)

(assert (=> d!665651 m!2671984))

(declare-fun m!2671986 () Bool)

(assert (=> d!665651 m!2671986))

(declare-fun m!2671988 () Bool)

(assert (=> d!665651 m!2671988))

(declare-fun m!2671990 () Bool)

(assert (=> d!665651 m!2671990))

(assert (=> d!665651 m!2671976))

(declare-fun m!2671992 () Bool)

(assert (=> d!665651 m!2671992))

(assert (=> d!665651 m!2671976))

(declare-fun m!2671994 () Bool)

(assert (=> d!665651 m!2671994))

(assert (=> d!665651 m!2671974))

(assert (=> d!665651 m!2671986))

(declare-fun m!2671996 () Bool)

(assert (=> b!2239095 m!2671996))

(assert (=> b!2239095 m!2671996))

(declare-fun m!2671998 () Bool)

(assert (=> b!2239095 m!2671998))

(declare-fun m!2672000 () Bool)

(assert (=> b!2239095 m!2672000))

(declare-fun m!2672002 () Bool)

(assert (=> b!2239098 m!2672002))

(assert (=> bm!135096 m!2671984))

(assert (=> b!2239090 m!2671990))

(declare-fun m!2672004 () Bool)

(assert (=> b!2239090 m!2672004))

(declare-fun m!2672006 () Bool)

(assert (=> b!2239090 m!2672006))

(declare-fun m!2672008 () Bool)

(assert (=> b!2239090 m!2672008))

(assert (=> bm!135100 m!2671990))

(assert (=> b!2239092 m!2672004))

(declare-fun m!2672010 () Bool)

(assert (=> b!2239092 m!2672010))

(declare-fun m!2672012 () Bool)

(assert (=> b!2239092 m!2672012))

(declare-fun m!2672014 () Bool)

(assert (=> b!2239092 m!2672014))

(declare-fun m!2672016 () Bool)

(assert (=> b!2239092 m!2672016))

(declare-fun m!2672018 () Bool)

(assert (=> b!2239092 m!2672018))

(assert (=> b!2239092 m!2672018))

(declare-fun m!2672020 () Bool)

(assert (=> b!2239092 m!2672020))

(declare-fun m!2672022 () Bool)

(assert (=> b!2239092 m!2672022))

(assert (=> b!2239092 m!2671990))

(declare-fun m!2672024 () Bool)

(assert (=> bm!135095 m!2672024))

(declare-fun m!2672026 () Bool)

(assert (=> bm!135099 m!2672026))

(declare-fun m!2672028 () Bool)

(assert (=> bm!135097 m!2672028))

(assert (=> b!2239099 m!2672004))

(assert (=> b!2239099 m!2672004))

(declare-fun m!2672030 () Bool)

(assert (=> b!2239099 m!2672030))

(assert (=> b!2239099 m!2672030))

(declare-fun m!2672032 () Bool)

(assert (=> b!2239099 m!2672032))

(declare-fun m!2672034 () Bool)

(assert (=> bm!135098 m!2672034))

(assert (=> b!2239050 d!665651))

(declare-fun b!2239108 () Bool)

(declare-fun e!1431437 () Bool)

(declare-fun tp!704941 () Bool)

(assert (=> b!2239108 (= e!1431437 tp!704941)))

(declare-fun setRes!20494 () Bool)

(declare-fun setNonEmpty!20494 () Bool)

(declare-fun setElem!20494 () Context!4078)

(declare-fun tp!704942 () Bool)

(declare-fun e!1431436 () Bool)

(assert (=> setNonEmpty!20494 (= setRes!20494 (and tp!704942 (inv!35827 setElem!20494) e!1431436))))

(declare-fun setRest!20494 () (InoxSet Context!4078))

(assert (=> setNonEmpty!20494 (= (_2!15387 (h!31777 mapDefault!14681)) ((_ map or) (store ((as const (Array Context!4078 Bool)) false) setElem!20494 true) setRest!20494))))

(declare-fun b!2239109 () Bool)

(declare-fun tp!704945 () Bool)

(assert (=> b!2239109 (= e!1431436 tp!704945)))

(declare-fun b!2239110 () Bool)

(declare-fun tp!704944 () Bool)

(declare-fun e!1431435 () Bool)

(declare-fun tp!704943 () Bool)

(assert (=> b!2239110 (= e!1431435 (and tp!704944 (inv!35827 (_2!15386 (_1!15387 (h!31777 mapDefault!14681)))) e!1431437 tp_is_empty!10203 setRes!20494 tp!704943))))

(declare-fun condSetEmpty!20494 () Bool)

(assert (=> b!2239110 (= condSetEmpty!20494 (= (_2!15387 (h!31777 mapDefault!14681)) ((as const (Array Context!4078 Bool)) false)))))

(declare-fun setIsEmpty!20494 () Bool)

(assert (=> setIsEmpty!20494 setRes!20494))

(assert (=> b!2239042 (= tp!704928 e!1431435)))

(assert (= b!2239110 b!2239108))

(assert (= (and b!2239110 condSetEmpty!20494) setIsEmpty!20494))

(assert (= (and b!2239110 (not condSetEmpty!20494)) setNonEmpty!20494))

(assert (= setNonEmpty!20494 b!2239109))

(assert (= (and b!2239042 ((_ is Cons!26376) mapDefault!14681)) b!2239110))

(declare-fun m!2672036 () Bool)

(assert (=> setNonEmpty!20494 m!2672036))

(declare-fun m!2672038 () Bool)

(assert (=> b!2239110 m!2672038))

(declare-fun e!1431440 () Bool)

(assert (=> b!2239055 (= tp!704925 e!1431440)))

(declare-fun b!2239123 () Bool)

(declare-fun tp!704959 () Bool)

(assert (=> b!2239123 (= e!1431440 tp!704959)))

(declare-fun b!2239122 () Bool)

(declare-fun tp!704958 () Bool)

(declare-fun tp!704957 () Bool)

(assert (=> b!2239122 (= e!1431440 (and tp!704958 tp!704957))))

(declare-fun b!2239121 () Bool)

(assert (=> b!2239121 (= e!1431440 tp_is_empty!10203)))

(declare-fun b!2239124 () Bool)

(declare-fun tp!704960 () Bool)

(declare-fun tp!704956 () Bool)

(assert (=> b!2239124 (= e!1431440 (and tp!704960 tp!704956))))

(assert (= (and b!2239055 ((_ is ElementMatch!6491) (regOne!13494 r!4750))) b!2239121))

(assert (= (and b!2239055 ((_ is Concat!10829) (regOne!13494 r!4750))) b!2239122))

(assert (= (and b!2239055 ((_ is Star!6491) (regOne!13494 r!4750))) b!2239123))

(assert (= (and b!2239055 ((_ is Union!6491) (regOne!13494 r!4750))) b!2239124))

(declare-fun e!1431441 () Bool)

(assert (=> b!2239055 (= tp!704921 e!1431441)))

(declare-fun b!2239127 () Bool)

(declare-fun tp!704964 () Bool)

(assert (=> b!2239127 (= e!1431441 tp!704964)))

(declare-fun b!2239126 () Bool)

(declare-fun tp!704963 () Bool)

(declare-fun tp!704962 () Bool)

(assert (=> b!2239126 (= e!1431441 (and tp!704963 tp!704962))))

(declare-fun b!2239125 () Bool)

(assert (=> b!2239125 (= e!1431441 tp_is_empty!10203)))

(declare-fun b!2239128 () Bool)

(declare-fun tp!704965 () Bool)

(declare-fun tp!704961 () Bool)

(assert (=> b!2239128 (= e!1431441 (and tp!704965 tp!704961))))

(assert (= (and b!2239055 ((_ is ElementMatch!6491) (regTwo!13494 r!4750))) b!2239125))

(assert (= (and b!2239055 ((_ is Concat!10829) (regTwo!13494 r!4750))) b!2239126))

(assert (= (and b!2239055 ((_ is Star!6491) (regTwo!13494 r!4750))) b!2239127))

(assert (= (and b!2239055 ((_ is Union!6491) (regTwo!13494 r!4750))) b!2239128))

(declare-fun b!2239129 () Bool)

(declare-fun e!1431444 () Bool)

(declare-fun tp!704966 () Bool)

(assert (=> b!2239129 (= e!1431444 tp!704966)))

(declare-fun setNonEmpty!20495 () Bool)

(declare-fun setRes!20495 () Bool)

(declare-fun setElem!20495 () Context!4078)

(declare-fun e!1431443 () Bool)

(declare-fun tp!704967 () Bool)

(assert (=> setNonEmpty!20495 (= setRes!20495 (and tp!704967 (inv!35827 setElem!20495) e!1431443))))

(declare-fun setRest!20495 () (InoxSet Context!4078))

(assert (=> setNonEmpty!20495 (= (_2!15387 (h!31777 (zeroValue!3387 (v!29995 (underlying!6459 (v!29996 (underlying!6460 (cache!3420 thiss!28743)))))))) ((_ map or) (store ((as const (Array Context!4078 Bool)) false) setElem!20495 true) setRest!20495))))

(declare-fun b!2239130 () Bool)

(declare-fun tp!704970 () Bool)

(assert (=> b!2239130 (= e!1431443 tp!704970)))

(declare-fun tp!704969 () Bool)

(declare-fun e!1431442 () Bool)

(declare-fun tp!704968 () Bool)

(declare-fun b!2239131 () Bool)

(assert (=> b!2239131 (= e!1431442 (and tp!704969 (inv!35827 (_2!15386 (_1!15387 (h!31777 (zeroValue!3387 (v!29995 (underlying!6459 (v!29996 (underlying!6460 (cache!3420 thiss!28743)))))))))) e!1431444 tp_is_empty!10203 setRes!20495 tp!704968))))

(declare-fun condSetEmpty!20495 () Bool)

(assert (=> b!2239131 (= condSetEmpty!20495 (= (_2!15387 (h!31777 (zeroValue!3387 (v!29995 (underlying!6459 (v!29996 (underlying!6460 (cache!3420 thiss!28743)))))))) ((as const (Array Context!4078 Bool)) false)))))

(declare-fun setIsEmpty!20495 () Bool)

(assert (=> setIsEmpty!20495 setRes!20495))

(assert (=> b!2239043 (= tp!704923 e!1431442)))

(assert (= b!2239131 b!2239129))

(assert (= (and b!2239131 condSetEmpty!20495) setIsEmpty!20495))

(assert (= (and b!2239131 (not condSetEmpty!20495)) setNonEmpty!20495))

(assert (= setNonEmpty!20495 b!2239130))

(assert (= (and b!2239043 ((_ is Cons!26376) (zeroValue!3387 (v!29995 (underlying!6459 (v!29996 (underlying!6460 (cache!3420 thiss!28743)))))))) b!2239131))

(declare-fun m!2672040 () Bool)

(assert (=> setNonEmpty!20495 m!2672040))

(declare-fun m!2672042 () Bool)

(assert (=> b!2239131 m!2672042))

(declare-fun b!2239132 () Bool)

(declare-fun e!1431447 () Bool)

(declare-fun tp!704971 () Bool)

(assert (=> b!2239132 (= e!1431447 tp!704971)))

(declare-fun setRes!20496 () Bool)

(declare-fun setNonEmpty!20496 () Bool)

(declare-fun tp!704972 () Bool)

(declare-fun e!1431446 () Bool)

(declare-fun setElem!20496 () Context!4078)

(assert (=> setNonEmpty!20496 (= setRes!20496 (and tp!704972 (inv!35827 setElem!20496) e!1431446))))

(declare-fun setRest!20496 () (InoxSet Context!4078))

(assert (=> setNonEmpty!20496 (= (_2!15387 (h!31777 (minValue!3387 (v!29995 (underlying!6459 (v!29996 (underlying!6460 (cache!3420 thiss!28743)))))))) ((_ map or) (store ((as const (Array Context!4078 Bool)) false) setElem!20496 true) setRest!20496))))

(declare-fun b!2239133 () Bool)

(declare-fun tp!704975 () Bool)

(assert (=> b!2239133 (= e!1431446 tp!704975)))

(declare-fun tp!704973 () Bool)

(declare-fun e!1431445 () Bool)

(declare-fun tp!704974 () Bool)

(declare-fun b!2239134 () Bool)

(assert (=> b!2239134 (= e!1431445 (and tp!704974 (inv!35827 (_2!15386 (_1!15387 (h!31777 (minValue!3387 (v!29995 (underlying!6459 (v!29996 (underlying!6460 (cache!3420 thiss!28743)))))))))) e!1431447 tp_is_empty!10203 setRes!20496 tp!704973))))

(declare-fun condSetEmpty!20496 () Bool)

(assert (=> b!2239134 (= condSetEmpty!20496 (= (_2!15387 (h!31777 (minValue!3387 (v!29995 (underlying!6459 (v!29996 (underlying!6460 (cache!3420 thiss!28743)))))))) ((as const (Array Context!4078 Bool)) false)))))

(declare-fun setIsEmpty!20496 () Bool)

(assert (=> setIsEmpty!20496 setRes!20496))

(assert (=> b!2239043 (= tp!704930 e!1431445)))

(assert (= b!2239134 b!2239132))

(assert (= (and b!2239134 condSetEmpty!20496) setIsEmpty!20496))

(assert (= (and b!2239134 (not condSetEmpty!20496)) setNonEmpty!20496))

(assert (= setNonEmpty!20496 b!2239133))

(assert (= (and b!2239043 ((_ is Cons!26376) (minValue!3387 (v!29995 (underlying!6459 (v!29996 (underlying!6460 (cache!3420 thiss!28743)))))))) b!2239134))

(declare-fun m!2672044 () Bool)

(assert (=> setNonEmpty!20496 m!2672044))

(declare-fun m!2672046 () Bool)

(assert (=> b!2239134 m!2672046))

(declare-fun e!1431448 () Bool)

(assert (=> b!2239052 (= tp!704920 e!1431448)))

(declare-fun b!2239137 () Bool)

(declare-fun tp!704979 () Bool)

(assert (=> b!2239137 (= e!1431448 tp!704979)))

(declare-fun b!2239136 () Bool)

(declare-fun tp!704978 () Bool)

(declare-fun tp!704977 () Bool)

(assert (=> b!2239136 (= e!1431448 (and tp!704978 tp!704977))))

(declare-fun b!2239135 () Bool)

(assert (=> b!2239135 (= e!1431448 tp_is_empty!10203)))

(declare-fun b!2239138 () Bool)

(declare-fun tp!704980 () Bool)

(declare-fun tp!704976 () Bool)

(assert (=> b!2239138 (= e!1431448 (and tp!704980 tp!704976))))

(assert (= (and b!2239052 ((_ is ElementMatch!6491) (reg!6820 r!4750))) b!2239135))

(assert (= (and b!2239052 ((_ is Concat!10829) (reg!6820 r!4750))) b!2239136))

(assert (= (and b!2239052 ((_ is Star!6491) (reg!6820 r!4750))) b!2239137))

(assert (= (and b!2239052 ((_ is Union!6491) (reg!6820 r!4750))) b!2239138))

(declare-fun setIsEmpty!20501 () Bool)

(declare-fun setRes!20501 () Bool)

(assert (=> setIsEmpty!20501 setRes!20501))

(declare-fun e!1431463 () Bool)

(declare-fun e!1431465 () Bool)

(declare-fun tp!705011 () Bool)

(declare-fun b!2239153 () Bool)

(declare-fun tp!705003 () Bool)

(declare-fun mapValue!14684 () List!26470)

(assert (=> b!2239153 (= e!1431465 (and tp!705011 (inv!35827 (_2!15386 (_1!15387 (h!31777 mapValue!14684)))) e!1431463 tp_is_empty!10203 setRes!20501 tp!705003))))

(declare-fun condSetEmpty!20501 () Bool)

(assert (=> b!2239153 (= condSetEmpty!20501 (= (_2!15387 (h!31777 mapValue!14684)) ((as const (Array Context!4078 Bool)) false)))))

(declare-fun b!2239154 () Bool)

(declare-fun e!1431464 () Bool)

(declare-fun tp!705004 () Bool)

(assert (=> b!2239154 (= e!1431464 tp!705004)))

(declare-fun mapIsEmpty!14684 () Bool)

(declare-fun mapRes!14684 () Bool)

(assert (=> mapIsEmpty!14684 mapRes!14684))

(declare-fun e!1431461 () Bool)

(declare-fun tp!705010 () Bool)

(declare-fun setRes!20502 () Bool)

(declare-fun mapDefault!14684 () List!26470)

(declare-fun b!2239155 () Bool)

(declare-fun tp!705009 () Bool)

(declare-fun e!1431466 () Bool)

(assert (=> b!2239155 (= e!1431466 (and tp!705009 (inv!35827 (_2!15386 (_1!15387 (h!31777 mapDefault!14684)))) e!1431461 tp_is_empty!10203 setRes!20502 tp!705010))))

(declare-fun condSetEmpty!20502 () Bool)

(assert (=> b!2239155 (= condSetEmpty!20502 (= (_2!15387 (h!31777 mapDefault!14684)) ((as const (Array Context!4078 Bool)) false)))))

(declare-fun b!2239156 () Bool)

(declare-fun e!1431462 () Bool)

(declare-fun tp!705007 () Bool)

(assert (=> b!2239156 (= e!1431462 tp!705007)))

(declare-fun condMapEmpty!14684 () Bool)

(assert (=> mapNonEmpty!14681 (= condMapEmpty!14684 (= mapRest!14681 ((as const (Array (_ BitVec 32) List!26470)) mapDefault!14684)))))

(assert (=> mapNonEmpty!14681 (= tp!704927 (and e!1431466 mapRes!14684))))

(declare-fun setIsEmpty!20502 () Bool)

(assert (=> setIsEmpty!20502 setRes!20502))

(declare-fun mapNonEmpty!14684 () Bool)

(declare-fun tp!705013 () Bool)

(assert (=> mapNonEmpty!14684 (= mapRes!14684 (and tp!705013 e!1431465))))

(declare-fun mapRest!14684 () (Array (_ BitVec 32) List!26470))

(declare-fun mapKey!14684 () (_ BitVec 32))

(assert (=> mapNonEmpty!14684 (= mapRest!14681 (store mapRest!14684 mapKey!14684 mapValue!14684))))

(declare-fun setElem!20502 () Context!4078)

(declare-fun tp!705005 () Bool)

(declare-fun setNonEmpty!20501 () Bool)

(assert (=> setNonEmpty!20501 (= setRes!20502 (and tp!705005 (inv!35827 setElem!20502) e!1431462))))

(declare-fun setRest!20502 () (InoxSet Context!4078))

(assert (=> setNonEmpty!20501 (= (_2!15387 (h!31777 mapDefault!14684)) ((_ map or) (store ((as const (Array Context!4078 Bool)) false) setElem!20502 true) setRest!20502))))

(declare-fun b!2239157 () Bool)

(declare-fun tp!705006 () Bool)

(assert (=> b!2239157 (= e!1431463 tp!705006)))

(declare-fun b!2239158 () Bool)

(declare-fun tp!705008 () Bool)

(assert (=> b!2239158 (= e!1431461 tp!705008)))

(declare-fun setNonEmpty!20502 () Bool)

(declare-fun tp!705012 () Bool)

(declare-fun setElem!20501 () Context!4078)

(assert (=> setNonEmpty!20502 (= setRes!20501 (and tp!705012 (inv!35827 setElem!20501) e!1431464))))

(declare-fun setRest!20501 () (InoxSet Context!4078))

(assert (=> setNonEmpty!20502 (= (_2!15387 (h!31777 mapValue!14684)) ((_ map or) (store ((as const (Array Context!4078 Bool)) false) setElem!20501 true) setRest!20501))))

(assert (= (and mapNonEmpty!14681 condMapEmpty!14684) mapIsEmpty!14684))

(assert (= (and mapNonEmpty!14681 (not condMapEmpty!14684)) mapNonEmpty!14684))

(assert (= b!2239153 b!2239157))

(assert (= (and b!2239153 condSetEmpty!20501) setIsEmpty!20501))

(assert (= (and b!2239153 (not condSetEmpty!20501)) setNonEmpty!20502))

(assert (= setNonEmpty!20502 b!2239154))

(assert (= (and mapNonEmpty!14684 ((_ is Cons!26376) mapValue!14684)) b!2239153))

(assert (= b!2239155 b!2239158))

(assert (= (and b!2239155 condSetEmpty!20502) setIsEmpty!20502))

(assert (= (and b!2239155 (not condSetEmpty!20502)) setNonEmpty!20501))

(assert (= setNonEmpty!20501 b!2239156))

(assert (= (and mapNonEmpty!14681 ((_ is Cons!26376) mapDefault!14684)) b!2239155))

(declare-fun m!2672048 () Bool)

(assert (=> setNonEmpty!20501 m!2672048))

(declare-fun m!2672050 () Bool)

(assert (=> b!2239153 m!2672050))

(declare-fun m!2672052 () Bool)

(assert (=> setNonEmpty!20502 m!2672052))

(declare-fun m!2672054 () Bool)

(assert (=> mapNonEmpty!14684 m!2672054))

(declare-fun m!2672056 () Bool)

(assert (=> b!2239155 m!2672056))

(declare-fun b!2239159 () Bool)

(declare-fun e!1431469 () Bool)

(declare-fun tp!705014 () Bool)

(assert (=> b!2239159 (= e!1431469 tp!705014)))

(declare-fun setElem!20503 () Context!4078)

(declare-fun setRes!20503 () Bool)

(declare-fun setNonEmpty!20503 () Bool)

(declare-fun e!1431468 () Bool)

(declare-fun tp!705015 () Bool)

(assert (=> setNonEmpty!20503 (= setRes!20503 (and tp!705015 (inv!35827 setElem!20503) e!1431468))))

(declare-fun setRest!20503 () (InoxSet Context!4078))

(assert (=> setNonEmpty!20503 (= (_2!15387 (h!31777 mapValue!14681)) ((_ map or) (store ((as const (Array Context!4078 Bool)) false) setElem!20503 true) setRest!20503))))

(declare-fun b!2239160 () Bool)

(declare-fun tp!705018 () Bool)

(assert (=> b!2239160 (= e!1431468 tp!705018)))

(declare-fun e!1431467 () Bool)

(declare-fun tp!705016 () Bool)

(declare-fun b!2239161 () Bool)

(declare-fun tp!705017 () Bool)

(assert (=> b!2239161 (= e!1431467 (and tp!705017 (inv!35827 (_2!15386 (_1!15387 (h!31777 mapValue!14681)))) e!1431469 tp_is_empty!10203 setRes!20503 tp!705016))))

(declare-fun condSetEmpty!20503 () Bool)

(assert (=> b!2239161 (= condSetEmpty!20503 (= (_2!15387 (h!31777 mapValue!14681)) ((as const (Array Context!4078 Bool)) false)))))

(declare-fun setIsEmpty!20503 () Bool)

(assert (=> setIsEmpty!20503 setRes!20503))

(assert (=> mapNonEmpty!14681 (= tp!704918 e!1431467)))

(assert (= b!2239161 b!2239159))

(assert (= (and b!2239161 condSetEmpty!20503) setIsEmpty!20503))

(assert (= (and b!2239161 (not condSetEmpty!20503)) setNonEmpty!20503))

(assert (= setNonEmpty!20503 b!2239160))

(assert (= (and mapNonEmpty!14681 ((_ is Cons!26376) mapValue!14681)) b!2239161))

(declare-fun m!2672058 () Bool)

(assert (=> setNonEmpty!20503 m!2672058))

(declare-fun m!2672060 () Bool)

(assert (=> b!2239161 m!2672060))

(declare-fun b!2239166 () Bool)

(declare-fun e!1431472 () Bool)

(declare-fun tp!705023 () Bool)

(declare-fun tp!705024 () Bool)

(assert (=> b!2239166 (= e!1431472 (and tp!705023 tp!705024))))

(assert (=> b!2239044 (= tp!704919 e!1431472)))

(assert (= (and b!2239044 ((_ is Cons!26375) (exprs!2539 ctx!48))) b!2239166))

(declare-fun e!1431473 () Bool)

(assert (=> b!2239046 (= tp!704922 e!1431473)))

(declare-fun b!2239169 () Bool)

(declare-fun tp!705028 () Bool)

(assert (=> b!2239169 (= e!1431473 tp!705028)))

(declare-fun b!2239168 () Bool)

(declare-fun tp!705027 () Bool)

(declare-fun tp!705026 () Bool)

(assert (=> b!2239168 (= e!1431473 (and tp!705027 tp!705026))))

(declare-fun b!2239167 () Bool)

(assert (=> b!2239167 (= e!1431473 tp_is_empty!10203)))

(declare-fun b!2239170 () Bool)

(declare-fun tp!705029 () Bool)

(declare-fun tp!705025 () Bool)

(assert (=> b!2239170 (= e!1431473 (and tp!705029 tp!705025))))

(assert (= (and b!2239046 ((_ is ElementMatch!6491) (regOne!13495 r!4750))) b!2239167))

(assert (= (and b!2239046 ((_ is Concat!10829) (regOne!13495 r!4750))) b!2239168))

(assert (= (and b!2239046 ((_ is Star!6491) (regOne!13495 r!4750))) b!2239169))

(assert (= (and b!2239046 ((_ is Union!6491) (regOne!13495 r!4750))) b!2239170))

(declare-fun e!1431474 () Bool)

(assert (=> b!2239046 (= tp!704924 e!1431474)))

(declare-fun b!2239173 () Bool)

(declare-fun tp!705033 () Bool)

(assert (=> b!2239173 (= e!1431474 tp!705033)))

(declare-fun b!2239172 () Bool)

(declare-fun tp!705032 () Bool)

(declare-fun tp!705031 () Bool)

(assert (=> b!2239172 (= e!1431474 (and tp!705032 tp!705031))))

(declare-fun b!2239171 () Bool)

(assert (=> b!2239171 (= e!1431474 tp_is_empty!10203)))

(declare-fun b!2239174 () Bool)

(declare-fun tp!705034 () Bool)

(declare-fun tp!705030 () Bool)

(assert (=> b!2239174 (= e!1431474 (and tp!705034 tp!705030))))

(assert (= (and b!2239046 ((_ is ElementMatch!6491) (regTwo!13495 r!4750))) b!2239171))

(assert (= (and b!2239046 ((_ is Concat!10829) (regTwo!13495 r!4750))) b!2239172))

(assert (= (and b!2239046 ((_ is Star!6491) (regTwo!13495 r!4750))) b!2239173))

(assert (= (and b!2239046 ((_ is Union!6491) (regTwo!13495 r!4750))) b!2239174))

(check-sat (not b!2239157) (not b!2239155) (not d!665645) (not b!2239166) (not b!2239153) (not b!2239098) (not b!2239168) (not b!2239132) (not b!2239138) (not b!2239161) (not bm!135098) (not b!2239126) (not d!665651) (not b!2239170) (not bm!135100) b_and!174989 (not b_next!65681) (not setNonEmpty!20495) (not b!2239110) (not setNonEmpty!20501) (not b!2239092) (not b!2239066) (not bm!135099) (not b!2239174) (not b!2239129) (not b!2239134) (not b!2239062) (not b!2239154) (not setNonEmpty!20502) (not b!2239160) (not b!2239122) (not b!2239108) (not b!2239158) (not b_next!65683) (not b!2239130) (not d!665641) (not setNonEmpty!20496) (not bm!135097) (not b!2239133) (not bm!135095) (not b!2239127) (not b!2239159) (not b!2239123) (not b!2239063) (not b!2239137) (not b!2239095) (not b!2239099) (not b!2239124) (not b!2239090) (not b!2239169) (not b!2239109) (not setNonEmpty!20494) b_and!174991 (not b!2239173) (not mapNonEmpty!14684) (not setNonEmpty!20503) (not b!2239131) (not b!2239156) (not b!2239128) (not b!2239136) tp_is_empty!10203 (not bm!135096) (not b!2239172))
(check-sat b_and!174991 b_and!174989 (not b_next!65681) (not b_next!65683))

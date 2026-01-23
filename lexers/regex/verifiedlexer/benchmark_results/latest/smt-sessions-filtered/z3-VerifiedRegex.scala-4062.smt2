; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!218322 () Bool)

(assert start!218322)

(declare-fun b!2240894 () Bool)

(declare-fun b_free!65073 () Bool)

(declare-fun b_next!65777 () Bool)

(assert (=> b!2240894 (= b_free!65073 (not b_next!65777))))

(declare-fun tp!706373 () Bool)

(declare-fun b_and!175089 () Bool)

(assert (=> b!2240894 (= tp!706373 b_and!175089)))

(declare-fun b!2240898 () Bool)

(declare-fun b_free!65075 () Bool)

(declare-fun b_next!65779 () Bool)

(assert (=> b!2240898 (= b_free!65075 (not b_next!65779))))

(declare-fun tp!706376 () Bool)

(declare-fun b_and!175091 () Bool)

(assert (=> b!2240898 (= tp!706376 b_and!175091)))

(declare-fun b!2240891 () Bool)

(declare-fun e!1432838 () Bool)

(declare-fun e!1432828 () Bool)

(declare-datatypes ((C!13176 0))(
  ( (C!13177 (val!7636 Int)) )
))
(declare-datatypes ((Regex!6515 0))(
  ( (ElementMatch!6515 (c!356814 C!13176)) (Concat!10853 (regOne!13542 Regex!6515) (regTwo!13542 Regex!6515)) (EmptyExpr!6515) (Star!6515 (reg!6844 Regex!6515)) (EmptyLang!6515) (Union!6515 (regOne!13543 Regex!6515) (regTwo!13543 Regex!6515)) )
))
(declare-datatypes ((List!26525 0))(
  ( (Nil!26431) (Cons!26431 (h!31832 Regex!6515) (t!199959 List!26525)) )
))
(declare-datatypes ((Context!4126 0))(
  ( (Context!4127 (exprs!2563 List!26525)) )
))
(declare-datatypes ((tuple2!25864 0))(
  ( (tuple2!25865 (_1!15442 Context!4126) (_2!15442 C!13176)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!25866 0))(
  ( (tuple2!25867 (_1!15443 tuple2!25864) (_2!15443 (InoxSet Context!4126))) )
))
(declare-datatypes ((List!26526 0))(
  ( (Nil!26432) (Cons!26432 (h!31833 tuple2!25866) (t!199960 List!26526)) )
))
(declare-datatypes ((array!11024 0))(
  ( (array!11025 (arr!4893 (Array (_ BitVec 32) (_ BitVec 64))) (size!20674 (_ BitVec 32))) )
))
(declare-datatypes ((array!11026 0))(
  ( (array!11027 (arr!4894 (Array (_ BitVec 32) List!26526)) (size!20675 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6306 0))(
  ( (LongMapFixedSize!6307 (defaultEntry!3518 Int) (mask!7764 (_ BitVec 32)) (extraKeys!3401 (_ BitVec 32)) (zeroValue!3411 List!26526) (minValue!3411 List!26526) (_size!6353 (_ BitVec 32)) (_keys!3450 array!11024) (_values!3433 array!11026) (_vacant!3214 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!12429 0))(
  ( (Cell!12430 (v!30061 LongMapFixedSize!6306)) )
))
(declare-datatypes ((MutLongMap!3153 0))(
  ( (LongMap!3153 (underlying!6507 Cell!12429)) (MutLongMapExt!3152 (__x!17685 Int)) )
))
(declare-fun lt!833949 () MutLongMap!3153)

(get-info :version)

(assert (=> b!2240891 (= e!1432838 (and e!1432828 ((_ is LongMap!3153) lt!833949)))))

(declare-datatypes ((Hashable!3063 0))(
  ( (HashableExt!3062 (__x!17686 Int)) )
))
(declare-datatypes ((Cell!12431 0))(
  ( (Cell!12432 (v!30062 MutLongMap!3153)) )
))
(declare-datatypes ((MutableMap!3063 0))(
  ( (MutableMapExt!3062 (__x!17687 Int)) (HashMap!3063 (underlying!6508 Cell!12431) (hashF!4986 Hashable!3063) (_size!6354 (_ BitVec 32)) (defaultValue!3225 Int)) )
))
(declare-datatypes ((CacheUp!1996 0))(
  ( (CacheUp!1997 (cache!3444 MutableMap!3063)) )
))
(declare-fun thiss!28657 () CacheUp!1996)

(assert (=> b!2240891 (= lt!833949 (v!30062 (underlying!6508 (cache!3444 thiss!28657))))))

(declare-fun e!1432839 () Bool)

(declare-fun a!949 () C!13176)

(declare-fun b!2240892 () Bool)

(declare-fun ctx!40 () Context!4126)

(declare-datatypes ((Option!5158 0))(
  ( (None!5157) (Some!5157 (v!30063 (InoxSet Context!4126))) )
))
(declare-fun lt!833952 () Option!5158)

(declare-fun get!7997 (Option!5158) (InoxSet Context!4126))

(declare-fun derivationStepZipperUp!43 (Context!4126 C!13176) (InoxSet Context!4126))

(assert (=> b!2240892 (= e!1432839 (not (= (get!7997 lt!833952) (derivationStepZipperUp!43 ctx!40 a!949))))))

(declare-fun res!957812 () Bool)

(declare-fun e!1432830 () Bool)

(assert (=> start!218322 (=> (not res!957812) (not e!1432830))))

(declare-fun validCacheMapUp!298 (MutableMap!3063) Bool)

(assert (=> start!218322 (= res!957812 (validCacheMapUp!298 (cache!3444 thiss!28657)))))

(assert (=> start!218322 e!1432830))

(declare-fun e!1432833 () Bool)

(declare-fun inv!35898 (CacheUp!1996) Bool)

(assert (=> start!218322 (and (inv!35898 thiss!28657) e!1432833)))

(declare-fun e!1432836 () Bool)

(declare-fun inv!35899 (Context!4126) Bool)

(assert (=> start!218322 (and (inv!35899 ctx!40) e!1432836)))

(declare-fun tp_is_empty!10251 () Bool)

(assert (=> start!218322 tp_is_empty!10251))

(declare-fun b!2240893 () Bool)

(declare-fun tp!706377 () Bool)

(assert (=> b!2240893 (= e!1432836 tp!706377)))

(declare-fun e!1432829 () Bool)

(assert (=> b!2240894 (= e!1432829 (and e!1432838 tp!706373))))

(declare-fun b!2240895 () Bool)

(declare-fun e!1432834 () Bool)

(assert (=> b!2240895 (= e!1432834 e!1432839)))

(declare-fun res!957811 () Bool)

(assert (=> b!2240895 (=> (not res!957811) (not e!1432839))))

(declare-fun isEmpty!14912 (Option!5158) Bool)

(assert (=> b!2240895 (= res!957811 (not (isEmpty!14912 lt!833952)))))

(declare-fun lt!833951 () tuple2!25864)

(declare-fun apply!6522 (MutableMap!3063 tuple2!25864) (InoxSet Context!4126))

(assert (=> b!2240895 (= lt!833952 (Some!5157 (apply!6522 (cache!3444 thiss!28657) lt!833951)))))

(declare-datatypes ((Unit!39409 0))(
  ( (Unit!39410) )
))
(declare-fun lt!833950 () Unit!39409)

(declare-fun lemmaIfInCacheThenValid!41 (CacheUp!1996 Context!4126 C!13176) Unit!39409)

(assert (=> b!2240895 (= lt!833950 (lemmaIfInCacheThenValid!41 thiss!28657 ctx!40 a!949))))

(declare-fun mapNonEmpty!14777 () Bool)

(declare-fun mapRes!14777 () Bool)

(declare-fun tp!706371 () Bool)

(declare-fun tp!706375 () Bool)

(assert (=> mapNonEmpty!14777 (= mapRes!14777 (and tp!706371 tp!706375))))

(declare-fun mapValue!14777 () List!26526)

(declare-fun mapKey!14777 () (_ BitVec 32))

(declare-fun mapRest!14777 () (Array (_ BitVec 32) List!26526))

(assert (=> mapNonEmpty!14777 (= (arr!4894 (_values!3433 (v!30061 (underlying!6507 (v!30062 (underlying!6508 (cache!3444 thiss!28657))))))) (store mapRest!14777 mapKey!14777 mapValue!14777))))

(declare-fun b!2240896 () Bool)

(declare-fun e!1432835 () Bool)

(assert (=> b!2240896 (= e!1432828 e!1432835)))

(declare-fun b!2240897 () Bool)

(declare-fun e!1432837 () Bool)

(declare-fun tp!706370 () Bool)

(assert (=> b!2240897 (= e!1432837 (and tp!706370 mapRes!14777))))

(declare-fun condMapEmpty!14777 () Bool)

(declare-fun mapDefault!14777 () List!26526)

(assert (=> b!2240897 (= condMapEmpty!14777 (= (arr!4894 (_values!3433 (v!30061 (underlying!6507 (v!30062 (underlying!6508 (cache!3444 thiss!28657))))))) ((as const (Array (_ BitVec 32) List!26526)) mapDefault!14777)))))

(declare-fun tp!706372 () Bool)

(declare-fun e!1432831 () Bool)

(declare-fun tp!706374 () Bool)

(declare-fun array_inv!3511 (array!11024) Bool)

(declare-fun array_inv!3512 (array!11026) Bool)

(assert (=> b!2240898 (= e!1432831 (and tp!706376 tp!706372 tp!706374 (array_inv!3511 (_keys!3450 (v!30061 (underlying!6507 (v!30062 (underlying!6508 (cache!3444 thiss!28657))))))) (array_inv!3512 (_values!3433 (v!30061 (underlying!6507 (v!30062 (underlying!6508 (cache!3444 thiss!28657))))))) e!1432837))))

(declare-fun b!2240899 () Bool)

(assert (=> b!2240899 (= e!1432830 e!1432834)))

(declare-fun res!957810 () Bool)

(assert (=> b!2240899 (=> (not res!957810) (not e!1432834))))

(declare-fun contains!4486 (MutableMap!3063 tuple2!25864) Bool)

(assert (=> b!2240899 (= res!957810 (contains!4486 (cache!3444 thiss!28657) lt!833951))))

(assert (=> b!2240899 (= lt!833951 (tuple2!25865 ctx!40 a!949))))

(declare-fun b!2240900 () Bool)

(assert (=> b!2240900 (= e!1432835 e!1432831)))

(declare-fun mapIsEmpty!14777 () Bool)

(assert (=> mapIsEmpty!14777 mapRes!14777))

(declare-fun b!2240901 () Bool)

(assert (=> b!2240901 (= e!1432833 e!1432829)))

(assert (= (and start!218322 res!957812) b!2240899))

(assert (= (and b!2240899 res!957810) b!2240895))

(assert (= (and b!2240895 res!957811) b!2240892))

(assert (= (and b!2240897 condMapEmpty!14777) mapIsEmpty!14777))

(assert (= (and b!2240897 (not condMapEmpty!14777)) mapNonEmpty!14777))

(assert (= b!2240898 b!2240897))

(assert (= b!2240900 b!2240898))

(assert (= b!2240896 b!2240900))

(assert (= (and b!2240891 ((_ is LongMap!3153) (v!30062 (underlying!6508 (cache!3444 thiss!28657))))) b!2240896))

(assert (= b!2240894 b!2240891))

(assert (= (and b!2240901 ((_ is HashMap!3063) (cache!3444 thiss!28657))) b!2240894))

(assert (= start!218322 b!2240901))

(assert (= start!218322 b!2240893))

(declare-fun m!2673203 () Bool)

(assert (=> b!2240898 m!2673203))

(declare-fun m!2673205 () Bool)

(assert (=> b!2240898 m!2673205))

(declare-fun m!2673207 () Bool)

(assert (=> mapNonEmpty!14777 m!2673207))

(declare-fun m!2673209 () Bool)

(assert (=> b!2240899 m!2673209))

(declare-fun m!2673211 () Bool)

(assert (=> start!218322 m!2673211))

(declare-fun m!2673213 () Bool)

(assert (=> start!218322 m!2673213))

(declare-fun m!2673215 () Bool)

(assert (=> start!218322 m!2673215))

(declare-fun m!2673217 () Bool)

(assert (=> b!2240895 m!2673217))

(declare-fun m!2673219 () Bool)

(assert (=> b!2240895 m!2673219))

(declare-fun m!2673221 () Bool)

(assert (=> b!2240895 m!2673221))

(declare-fun m!2673223 () Bool)

(assert (=> b!2240892 m!2673223))

(declare-fun m!2673225 () Bool)

(assert (=> b!2240892 m!2673225))

(check-sat (not b!2240899) (not start!218322) b_and!175089 (not mapNonEmpty!14777) (not b!2240897) b_and!175091 (not b_next!65777) (not b!2240898) (not b!2240893) (not b_next!65779) tp_is_empty!10251 (not b!2240895) (not b!2240892))
(check-sat b_and!175091 b_and!175089 (not b_next!65777) (not b_next!65779))
(get-model)

(declare-fun d!665775 () Bool)

(assert (=> d!665775 (= (array_inv!3511 (_keys!3450 (v!30061 (underlying!6507 (v!30062 (underlying!6508 (cache!3444 thiss!28657))))))) (bvsge (size!20674 (_keys!3450 (v!30061 (underlying!6507 (v!30062 (underlying!6508 (cache!3444 thiss!28657))))))) #b00000000000000000000000000000000))))

(assert (=> b!2240898 d!665775))

(declare-fun d!665777 () Bool)

(assert (=> d!665777 (= (array_inv!3512 (_values!3433 (v!30061 (underlying!6507 (v!30062 (underlying!6508 (cache!3444 thiss!28657))))))) (bvsge (size!20675 (_values!3433 (v!30061 (underlying!6507 (v!30062 (underlying!6508 (cache!3444 thiss!28657))))))) #b00000000000000000000000000000000))))

(assert (=> b!2240898 d!665777))

(declare-fun d!665779 () Bool)

(assert (=> d!665779 (= (get!7997 lt!833952) (v!30063 lt!833952))))

(assert (=> b!2240892 d!665779))

(declare-fun e!1432847 () (InoxSet Context!4126))

(declare-fun b!2240912 () Bool)

(declare-fun call!135234 () (InoxSet Context!4126))

(assert (=> b!2240912 (= e!1432847 ((_ map or) call!135234 (derivationStepZipperUp!43 (Context!4127 (t!199959 (exprs!2563 ctx!40))) a!949)))))

(declare-fun d!665781 () Bool)

(declare-fun c!356819 () Bool)

(declare-fun e!1432848 () Bool)

(assert (=> d!665781 (= c!356819 e!1432848)))

(declare-fun res!957815 () Bool)

(assert (=> d!665781 (=> (not res!957815) (not e!1432848))))

(assert (=> d!665781 (= res!957815 ((_ is Cons!26431) (exprs!2563 ctx!40)))))

(assert (=> d!665781 (= (derivationStepZipperUp!43 ctx!40 a!949) e!1432847)))

(declare-fun b!2240913 () Bool)

(declare-fun nullable!1790 (Regex!6515) Bool)

(assert (=> b!2240913 (= e!1432848 (nullable!1790 (h!31832 (exprs!2563 ctx!40))))))

(declare-fun b!2240914 () Bool)

(declare-fun e!1432846 () (InoxSet Context!4126))

(assert (=> b!2240914 (= e!1432846 call!135234)))

(declare-fun b!2240915 () Bool)

(assert (=> b!2240915 (= e!1432846 ((as const (Array Context!4126 Bool)) false))))

(declare-fun bm!135229 () Bool)

(declare-fun derivationStepZipperDown!83 (Regex!6515 Context!4126 C!13176) (InoxSet Context!4126))

(assert (=> bm!135229 (= call!135234 (derivationStepZipperDown!83 (h!31832 (exprs!2563 ctx!40)) (Context!4127 (t!199959 (exprs!2563 ctx!40))) a!949))))

(declare-fun b!2240916 () Bool)

(assert (=> b!2240916 (= e!1432847 e!1432846)))

(declare-fun c!356820 () Bool)

(assert (=> b!2240916 (= c!356820 ((_ is Cons!26431) (exprs!2563 ctx!40)))))

(assert (= (and d!665781 res!957815) b!2240913))

(assert (= (and d!665781 c!356819) b!2240912))

(assert (= (and d!665781 (not c!356819)) b!2240916))

(assert (= (and b!2240916 c!356820) b!2240914))

(assert (= (and b!2240916 (not c!356820)) b!2240915))

(assert (= (or b!2240912 b!2240914) bm!135229))

(declare-fun m!2673227 () Bool)

(assert (=> b!2240912 m!2673227))

(declare-fun m!2673229 () Bool)

(assert (=> b!2240913 m!2673229))

(declare-fun m!2673231 () Bool)

(assert (=> bm!135229 m!2673231))

(assert (=> b!2240892 d!665781))

(declare-fun d!665783 () Bool)

(declare-fun res!957820 () Bool)

(declare-fun e!1432851 () Bool)

(assert (=> d!665783 (=> (not res!957820) (not e!1432851))))

(declare-fun valid!2371 (MutableMap!3063) Bool)

(assert (=> d!665783 (= res!957820 (valid!2371 (cache!3444 thiss!28657)))))

(assert (=> d!665783 (= (validCacheMapUp!298 (cache!3444 thiss!28657)) e!1432851)))

(declare-fun b!2240921 () Bool)

(declare-fun res!957821 () Bool)

(assert (=> b!2240921 (=> (not res!957821) (not e!1432851))))

(declare-fun invariantList!389 (List!26526) Bool)

(declare-datatypes ((ListMap!873 0))(
  ( (ListMap!874 (toList!1388 List!26526)) )
))
(declare-fun map!5467 (MutableMap!3063) ListMap!873)

(assert (=> b!2240921 (= res!957821 (invariantList!389 (toList!1388 (map!5467 (cache!3444 thiss!28657)))))))

(declare-fun b!2240922 () Bool)

(declare-fun lambda!84774 () Int)

(declare-fun forall!5442 (List!26526 Int) Bool)

(assert (=> b!2240922 (= e!1432851 (forall!5442 (toList!1388 (map!5467 (cache!3444 thiss!28657))) lambda!84774))))

(assert (= (and d!665783 res!957820) b!2240921))

(assert (= (and b!2240921 res!957821) b!2240922))

(declare-fun m!2673234 () Bool)

(assert (=> d!665783 m!2673234))

(declare-fun m!2673236 () Bool)

(assert (=> b!2240921 m!2673236))

(declare-fun m!2673238 () Bool)

(assert (=> b!2240921 m!2673238))

(assert (=> b!2240922 m!2673236))

(declare-fun m!2673240 () Bool)

(assert (=> b!2240922 m!2673240))

(assert (=> start!218322 d!665783))

(declare-fun d!665785 () Bool)

(declare-fun res!957824 () Bool)

(declare-fun e!1432854 () Bool)

(assert (=> d!665785 (=> (not res!957824) (not e!1432854))))

(assert (=> d!665785 (= res!957824 ((_ is HashMap!3063) (cache!3444 thiss!28657)))))

(assert (=> d!665785 (= (inv!35898 thiss!28657) e!1432854)))

(declare-fun b!2240925 () Bool)

(assert (=> b!2240925 (= e!1432854 (validCacheMapUp!298 (cache!3444 thiss!28657)))))

(assert (= (and d!665785 res!957824) b!2240925))

(assert (=> b!2240925 m!2673211))

(assert (=> start!218322 d!665785))

(declare-fun d!665787 () Bool)

(declare-fun lambda!84777 () Int)

(declare-fun forall!5443 (List!26525 Int) Bool)

(assert (=> d!665787 (= (inv!35899 ctx!40) (forall!5443 (exprs!2563 ctx!40) lambda!84777))))

(declare-fun bs!454316 () Bool)

(assert (= bs!454316 d!665787))

(declare-fun m!2673242 () Bool)

(assert (=> bs!454316 m!2673242))

(assert (=> start!218322 d!665787))

(declare-fun d!665789 () Bool)

(assert (=> d!665789 (= (isEmpty!14912 lt!833952) (not ((_ is Some!5157) lt!833952)))))

(assert (=> b!2240895 d!665789))

(declare-fun lt!834038 () (_ BitVec 64))

(declare-fun b!2240938 () Bool)

(declare-fun e!1432863 () (InoxSet Context!4126))

(declare-datatypes ((Option!5159 0))(
  ( (None!5158) (Some!5158 (v!30064 tuple2!25866)) )
))
(declare-fun get!7998 (Option!5159) tuple2!25866)

(declare-fun getPair!43 (List!26526 tuple2!25864) Option!5159)

(declare-fun apply!6523 (MutLongMap!3153 (_ BitVec 64)) List!26526)

(assert (=> b!2240938 (= e!1432863 (_2!15443 (get!7998 (getPair!43 (apply!6523 (v!30062 (underlying!6508 (cache!3444 thiss!28657))) lt!834038) lt!833951))))))

(declare-fun hash!590 (Hashable!3063 tuple2!25864) (_ BitVec 64))

(assert (=> b!2240938 (= lt!834038 (hash!590 (hashF!4986 (cache!3444 thiss!28657)) lt!833951))))

(declare-fun c!356827 () Bool)

(declare-datatypes ((tuple2!25868 0))(
  ( (tuple2!25869 (_1!15444 (_ BitVec 64)) (_2!15444 List!26526)) )
))
(declare-datatypes ((List!26527 0))(
  ( (Nil!26433) (Cons!26433 (h!31834 tuple2!25868) (t!199963 List!26527)) )
))
(declare-fun contains!4487 (List!26527 tuple2!25868) Bool)

(declare-datatypes ((ListLongMap!357 0))(
  ( (ListLongMap!358 (toList!1389 List!26527)) )
))
(declare-fun map!5468 (MutLongMap!3153) ListLongMap!357)

(assert (=> b!2240938 (= c!356827 (not (contains!4487 (toList!1389 (map!5468 (v!30062 (underlying!6508 (cache!3444 thiss!28657))))) (tuple2!25869 lt!834038 (apply!6523 (v!30062 (underlying!6508 (cache!3444 thiss!28657))) lt!834038)))))))

(declare-fun lt!834014 () Unit!39409)

(declare-fun e!1432862 () Unit!39409)

(assert (=> b!2240938 (= lt!834014 e!1432862)))

(declare-fun lt!834041 () Unit!39409)

(declare-fun lambda!84784 () Int)

(declare-fun forallContained!790 (List!26527 Int tuple2!25868) Unit!39409)

(assert (=> b!2240938 (= lt!834041 (forallContained!790 (toList!1389 (map!5468 (v!30062 (underlying!6508 (cache!3444 thiss!28657))))) lambda!84784 (tuple2!25869 lt!834038 (apply!6523 (v!30062 (underlying!6508 (cache!3444 thiss!28657))) lt!834038))))))

(declare-fun lt!834028 () ListLongMap!357)

(assert (=> b!2240938 (= lt!834028 (map!5468 (v!30062 (underlying!6508 (cache!3444 thiss!28657)))))))

(declare-fun lt!834029 () Unit!39409)

(declare-fun lemmaGetPairGetSameValueAsMap!24 (ListLongMap!357 tuple2!25864 (InoxSet Context!4126) Hashable!3063) Unit!39409)

(assert (=> b!2240938 (= lt!834029 (lemmaGetPairGetSameValueAsMap!24 lt!834028 lt!833951 (_2!15443 (get!7998 (getPair!43 (apply!6523 (v!30062 (underlying!6508 (cache!3444 thiss!28657))) lt!834038) lt!833951))) (hashF!4986 (cache!3444 thiss!28657))))))

(declare-fun lt!834034 () Unit!39409)

(declare-fun lemmaInGenMapThenLongMapContainsHash!24 (ListLongMap!357 tuple2!25864 Hashable!3063) Unit!39409)

(assert (=> b!2240938 (= lt!834034 (lemmaInGenMapThenLongMapContainsHash!24 lt!834028 lt!833951 (hashF!4986 (cache!3444 thiss!28657))))))

(declare-fun contains!4488 (ListLongMap!357 (_ BitVec 64)) Bool)

(assert (=> b!2240938 (contains!4488 lt!834028 (hash!590 (hashF!4986 (cache!3444 thiss!28657)) lt!833951))))

(declare-fun lt!834024 () Unit!39409)

(assert (=> b!2240938 (= lt!834024 lt!834034)))

(declare-fun lt!834021 () (_ BitVec 64))

(assert (=> b!2240938 (= lt!834021 (hash!590 (hashF!4986 (cache!3444 thiss!28657)) lt!833951))))

(declare-fun lt!834013 () List!26526)

(declare-fun apply!6524 (ListLongMap!357 (_ BitVec 64)) List!26526)

(assert (=> b!2240938 (= lt!834013 (apply!6524 lt!834028 (hash!590 (hashF!4986 (cache!3444 thiss!28657)) lt!833951)))))

(declare-fun lt!834039 () Unit!39409)

(declare-fun lemmaGetValueImpliesTupleContained!25 (ListLongMap!357 (_ BitVec 64) List!26526) Unit!39409)

(assert (=> b!2240938 (= lt!834039 (lemmaGetValueImpliesTupleContained!25 lt!834028 lt!834021 lt!834013))))

(assert (=> b!2240938 (contains!4487 (toList!1389 lt!834028) (tuple2!25869 lt!834021 lt!834013))))

(declare-fun lt!834025 () Unit!39409)

(assert (=> b!2240938 (= lt!834025 lt!834039)))

(declare-fun lt!834027 () Unit!39409)

(assert (=> b!2240938 (= lt!834027 (forallContained!790 (toList!1389 lt!834028) lambda!84784 (tuple2!25869 (hash!590 (hashF!4986 (cache!3444 thiss!28657)) lt!833951) (apply!6524 lt!834028 (hash!590 (hashF!4986 (cache!3444 thiss!28657)) lt!833951)))))))

(declare-fun lt!834031 () Unit!39409)

(declare-fun lemmaInGenMapThenGetPairDefined!24 (ListLongMap!357 tuple2!25864 Hashable!3063) Unit!39409)

(assert (=> b!2240938 (= lt!834031 (lemmaInGenMapThenGetPairDefined!24 lt!834028 lt!833951 (hashF!4986 (cache!3444 thiss!28657))))))

(declare-fun lt!834016 () Unit!39409)

(assert (=> b!2240938 (= lt!834016 (lemmaInGenMapThenLongMapContainsHash!24 lt!834028 lt!833951 (hashF!4986 (cache!3444 thiss!28657))))))

(declare-fun lt!834032 () Unit!39409)

(assert (=> b!2240938 (= lt!834032 lt!834016)))

(declare-fun lt!834017 () (_ BitVec 64))

(assert (=> b!2240938 (= lt!834017 (hash!590 (hashF!4986 (cache!3444 thiss!28657)) lt!833951))))

(declare-fun lt!834026 () List!26526)

(assert (=> b!2240938 (= lt!834026 (apply!6524 lt!834028 (hash!590 (hashF!4986 (cache!3444 thiss!28657)) lt!833951)))))

(declare-fun lt!834015 () Unit!39409)

(assert (=> b!2240938 (= lt!834015 (lemmaGetValueImpliesTupleContained!25 lt!834028 lt!834017 lt!834026))))

(assert (=> b!2240938 (contains!4487 (toList!1389 lt!834028) (tuple2!25869 lt!834017 lt!834026))))

(declare-fun lt!834036 () Unit!39409)

(assert (=> b!2240938 (= lt!834036 lt!834015)))

(declare-fun lt!834037 () Unit!39409)

(assert (=> b!2240938 (= lt!834037 (forallContained!790 (toList!1389 lt!834028) lambda!84784 (tuple2!25869 (hash!590 (hashF!4986 (cache!3444 thiss!28657)) lt!833951) (apply!6524 lt!834028 (hash!590 (hashF!4986 (cache!3444 thiss!28657)) lt!833951)))))))

(declare-fun isDefined!4165 (Option!5159) Bool)

(assert (=> b!2240938 (isDefined!4165 (getPair!43 (apply!6524 lt!834028 (hash!590 (hashF!4986 (cache!3444 thiss!28657)) lt!833951)) lt!833951))))

(declare-fun lt!834030 () Unit!39409)

(assert (=> b!2240938 (= lt!834030 lt!834031)))

(declare-fun getValueByKey!94 (List!26526 tuple2!25864) Option!5158)

(declare-fun extractMap!123 (List!26527) ListMap!873)

(assert (=> b!2240938 (= (_2!15443 (get!7998 (getPair!43 (apply!6524 lt!834028 (hash!590 (hashF!4986 (cache!3444 thiss!28657)) lt!833951)) lt!833951))) (get!7997 (getValueByKey!94 (toList!1388 (extractMap!123 (toList!1389 lt!834028))) lt!833951)))))

(declare-fun lt!834042 () Unit!39409)

(assert (=> b!2240938 (= lt!834042 lt!834029)))

(declare-fun b!2240939 () Bool)

(declare-fun Unit!39411 () Unit!39409)

(assert (=> b!2240939 (= e!1432862 Unit!39411)))

(declare-fun lt!834018 () (InoxSet Context!4126))

(declare-fun b!2240940 () Bool)

(declare-fun e!1432861 () Bool)

(assert (=> b!2240940 (= e!1432861 (= lt!834018 (get!7997 (getValueByKey!94 (toList!1388 (map!5467 (cache!3444 thiss!28657))) lt!833951))))))

(declare-fun b!2240941 () Bool)

(declare-fun dynLambda!11542 (Int tuple2!25864) (InoxSet Context!4126))

(assert (=> b!2240941 (= e!1432861 (= lt!834018 (dynLambda!11542 (defaultValue!3225 (cache!3444 thiss!28657)) lt!833951)))))

(declare-fun b!2240942 () Bool)

(assert (=> b!2240942 (= e!1432863 (dynLambda!11542 (defaultValue!3225 (cache!3444 thiss!28657)) lt!833951))))

(declare-fun b!2240943 () Bool)

(assert (=> b!2240943 false))

(declare-fun lt!834033 () Unit!39409)

(declare-fun lt!834020 () Unit!39409)

(assert (=> b!2240943 (= lt!834033 lt!834020)))

(declare-fun lt!834035 () List!26527)

(declare-fun lt!834040 () List!26526)

(assert (=> b!2240943 (contains!4487 lt!834035 (tuple2!25869 lt!834038 lt!834040))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!44 (List!26527 (_ BitVec 64) List!26526) Unit!39409)

(assert (=> b!2240943 (= lt!834020 (lemmaGetValueByKeyImpliesContainsTuple!44 lt!834035 lt!834038 lt!834040))))

(assert (=> b!2240943 (= lt!834040 (apply!6523 (v!30062 (underlying!6508 (cache!3444 thiss!28657))) lt!834038))))

(assert (=> b!2240943 (= lt!834035 (toList!1389 (map!5468 (v!30062 (underlying!6508 (cache!3444 thiss!28657))))))))

(declare-fun lt!834023 () Unit!39409)

(declare-fun lt!834022 () Unit!39409)

(assert (=> b!2240943 (= lt!834023 lt!834022)))

(declare-fun lt!834019 () List!26527)

(declare-datatypes ((Option!5160 0))(
  ( (None!5159) (Some!5159 (v!30065 List!26526)) )
))
(declare-fun isDefined!4166 (Option!5160) Bool)

(declare-fun getValueByKey!95 (List!26527 (_ BitVec 64)) Option!5160)

(assert (=> b!2240943 (isDefined!4166 (getValueByKey!95 lt!834019 lt!834038))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!61 (List!26527 (_ BitVec 64)) Unit!39409)

(assert (=> b!2240943 (= lt!834022 (lemmaContainsKeyImpliesGetValueByKeyDefined!61 lt!834019 lt!834038))))

(assert (=> b!2240943 (= lt!834019 (toList!1389 (map!5468 (v!30062 (underlying!6508 (cache!3444 thiss!28657))))))))

(declare-fun Unit!39412 () Unit!39409)

(assert (=> b!2240943 (= e!1432862 Unit!39412)))

(declare-fun d!665791 () Bool)

(assert (=> d!665791 e!1432861))

(declare-fun c!356829 () Bool)

(assert (=> d!665791 (= c!356829 (contains!4486 (cache!3444 thiss!28657) lt!833951))))

(assert (=> d!665791 (= lt!834018 e!1432863)))

(declare-fun c!356828 () Bool)

(assert (=> d!665791 (= c!356828 (not (contains!4486 (cache!3444 thiss!28657) lt!833951)))))

(assert (=> d!665791 (valid!2371 (cache!3444 thiss!28657))))

(assert (=> d!665791 (= (apply!6522 (cache!3444 thiss!28657) lt!833951) lt!834018)))

(assert (= (and d!665791 c!356828) b!2240942))

(assert (= (and d!665791 (not c!356828)) b!2240938))

(assert (= (and b!2240938 c!356827) b!2240943))

(assert (= (and b!2240938 (not c!356827)) b!2240939))

(assert (= (and d!665791 c!356829) b!2240940))

(assert (= (and d!665791 (not c!356829)) b!2240941))

(declare-fun b_lambda!71765 () Bool)

(assert (=> (not b_lambda!71765) (not b!2240941)))

(declare-fun t!199962 () Bool)

(declare-fun tb!132865 () Bool)

(assert (=> (and b!2240894 (= (defaultValue!3225 (cache!3444 thiss!28657)) (defaultValue!3225 (cache!3444 thiss!28657))) t!199962) tb!132865))

(assert (=> b!2240941 t!199962))

(declare-fun result!161848 () Bool)

(declare-fun b_and!175093 () Bool)

(assert (= b_and!175089 (and (=> t!199962 result!161848) b_and!175093)))

(declare-fun b_lambda!71767 () Bool)

(assert (=> (not b_lambda!71767) (not b!2240942)))

(assert (=> b!2240942 t!199962))

(declare-fun b_and!175095 () Bool)

(assert (= b_and!175093 (and (=> t!199962 result!161848) b_and!175095)))

(declare-fun m!2673244 () Bool)

(assert (=> b!2240943 m!2673244))

(assert (=> b!2240943 m!2673244))

(declare-fun m!2673246 () Bool)

(assert (=> b!2240943 m!2673246))

(declare-fun m!2673248 () Bool)

(assert (=> b!2240943 m!2673248))

(declare-fun m!2673250 () Bool)

(assert (=> b!2240943 m!2673250))

(declare-fun m!2673252 () Bool)

(assert (=> b!2240943 m!2673252))

(declare-fun m!2673254 () Bool)

(assert (=> b!2240943 m!2673254))

(declare-fun m!2673256 () Bool)

(assert (=> b!2240943 m!2673256))

(assert (=> b!2240940 m!2673236))

(declare-fun m!2673258 () Bool)

(assert (=> b!2240940 m!2673258))

(assert (=> b!2240940 m!2673258))

(declare-fun m!2673260 () Bool)

(assert (=> b!2240940 m!2673260))

(declare-fun m!2673262 () Bool)

(assert (=> b!2240941 m!2673262))

(assert (=> d!665791 m!2673209))

(assert (=> d!665791 m!2673234))

(assert (=> b!2240938 m!2673254))

(declare-fun m!2673264 () Bool)

(assert (=> b!2240938 m!2673264))

(declare-fun m!2673266 () Bool)

(assert (=> b!2240938 m!2673266))

(declare-fun m!2673268 () Bool)

(assert (=> b!2240938 m!2673268))

(declare-fun m!2673270 () Bool)

(assert (=> b!2240938 m!2673270))

(declare-fun m!2673272 () Bool)

(assert (=> b!2240938 m!2673272))

(assert (=> b!2240938 m!2673272))

(declare-fun m!2673274 () Bool)

(assert (=> b!2240938 m!2673274))

(declare-fun m!2673276 () Bool)

(assert (=> b!2240938 m!2673276))

(assert (=> b!2240938 m!2673270))

(declare-fun m!2673278 () Bool)

(assert (=> b!2240938 m!2673278))

(declare-fun m!2673280 () Bool)

(assert (=> b!2240938 m!2673280))

(declare-fun m!2673282 () Bool)

(assert (=> b!2240938 m!2673282))

(declare-fun m!2673284 () Bool)

(assert (=> b!2240938 m!2673284))

(assert (=> b!2240938 m!2673250))

(declare-fun m!2673286 () Bool)

(assert (=> b!2240938 m!2673286))

(declare-fun m!2673288 () Bool)

(assert (=> b!2240938 m!2673288))

(assert (=> b!2240938 m!2673280))

(assert (=> b!2240938 m!2673276))

(declare-fun m!2673290 () Bool)

(assert (=> b!2240938 m!2673290))

(declare-fun m!2673292 () Bool)

(assert (=> b!2240938 m!2673292))

(assert (=> b!2240938 m!2673290))

(declare-fun m!2673294 () Bool)

(assert (=> b!2240938 m!2673294))

(declare-fun m!2673296 () Bool)

(assert (=> b!2240938 m!2673296))

(assert (=> b!2240938 m!2673276))

(declare-fun m!2673298 () Bool)

(assert (=> b!2240938 m!2673298))

(assert (=> b!2240938 m!2673272))

(declare-fun m!2673300 () Bool)

(assert (=> b!2240938 m!2673300))

(assert (=> b!2240938 m!2673264))

(declare-fun m!2673302 () Bool)

(assert (=> b!2240938 m!2673302))

(assert (=> b!2240938 m!2673254))

(declare-fun m!2673304 () Bool)

(assert (=> b!2240938 m!2673304))

(assert (=> b!2240942 m!2673262))

(assert (=> b!2240895 d!665791))

(declare-fun bs!454317 () Bool)

(declare-fun b!2240950 () Bool)

(assert (= bs!454317 (and b!2240950 b!2240922)))

(declare-fun lambda!84787 () Int)

(assert (=> bs!454317 (= lambda!84787 lambda!84774)))

(declare-fun d!665793 () Bool)

(declare-fun e!1432872 () Bool)

(assert (=> d!665793 e!1432872))

(declare-fun res!957827 () Bool)

(assert (=> d!665793 (=> res!957827 e!1432872)))

(assert (=> d!665793 (= res!957827 (not (contains!4486 (cache!3444 thiss!28657) (tuple2!25865 ctx!40 a!949))))))

(declare-fun lt!834062 () Unit!39409)

(declare-fun e!1432871 () Unit!39409)

(assert (=> d!665793 (= lt!834062 e!1432871)))

(declare-fun c!356832 () Bool)

(assert (=> d!665793 (= c!356832 (contains!4486 (cache!3444 thiss!28657) (tuple2!25865 ctx!40 a!949)))))

(assert (=> d!665793 (validCacheMapUp!298 (cache!3444 thiss!28657))))

(assert (=> d!665793 (= (lemmaIfInCacheThenValid!41 thiss!28657 ctx!40 a!949) lt!834062)))

(declare-fun lt!834060 () Unit!39409)

(assert (=> b!2240950 (= e!1432871 lt!834060)))

(declare-fun lt!834058 () tuple2!25864)

(assert (=> b!2240950 (= lt!834058 (tuple2!25865 ctx!40 a!949))))

(declare-fun lemmaForallPairsThenForLookup!36 (MutableMap!3063 tuple2!25864 Int) Unit!39409)

(assert (=> b!2240950 (= lt!834060 (lemmaForallPairsThenForLookup!36 (cache!3444 thiss!28657) lt!834058 lambda!84787))))

(declare-fun lt!834057 () tuple2!25866)

(assert (=> b!2240950 (= lt!834057 (tuple2!25867 lt!834058 (apply!6522 (cache!3444 thiss!28657) lt!834058)))))

(declare-fun lt!834063 () tuple2!25864)

(assert (=> b!2240950 (= lt!834063 lt!834058)))

(declare-fun lt!834059 () (InoxSet Context!4126))

(assert (=> b!2240950 (= lt!834059 (apply!6522 (cache!3444 thiss!28657) lt!834058))))

(declare-fun lt!834061 () (InoxSet Context!4126))

(assert (=> b!2240950 (= lt!834061 (apply!6522 (cache!3444 thiss!28657) lt!834058))))

(assert (=> b!2240950 (= (apply!6522 (cache!3444 thiss!28657) lt!834058) (derivationStepZipperUp!43 (_1!15442 lt!834058) (_2!15442 lt!834058)))))

(declare-fun b!2240951 () Bool)

(declare-fun Unit!39413 () Unit!39409)

(assert (=> b!2240951 (= e!1432871 Unit!39413)))

(declare-fun b!2240952 () Bool)

(assert (=> b!2240952 (= e!1432872 (= (derivationStepZipperUp!43 ctx!40 a!949) (apply!6522 (cache!3444 thiss!28657) (tuple2!25865 ctx!40 a!949))))))

(assert (= (and d!665793 c!356832) b!2240950))

(assert (= (and d!665793 (not c!356832)) b!2240951))

(assert (= (and d!665793 (not res!957827)) b!2240952))

(declare-fun m!2673306 () Bool)

(assert (=> d!665793 m!2673306))

(assert (=> d!665793 m!2673211))

(declare-fun m!2673308 () Bool)

(assert (=> b!2240950 m!2673308))

(declare-fun m!2673310 () Bool)

(assert (=> b!2240950 m!2673310))

(declare-fun m!2673312 () Bool)

(assert (=> b!2240950 m!2673312))

(assert (=> b!2240952 m!2673225))

(declare-fun m!2673314 () Bool)

(assert (=> b!2240952 m!2673314))

(assert (=> b!2240895 d!665793))

(declare-fun bs!454318 () Bool)

(declare-fun b!2240976 () Bool)

(assert (= bs!454318 (and b!2240976 b!2240938)))

(declare-fun lambda!84790 () Int)

(assert (=> bs!454318 (= lambda!84790 lambda!84784)))

(declare-fun bm!135242 () Bool)

(declare-fun call!135250 () Bool)

(declare-fun call!135252 () Option!5159)

(assert (=> bm!135242 (= call!135250 (isDefined!4165 call!135252))))

(declare-fun c!356842 () Bool)

(declare-fun call!135247 () ListLongMap!357)

(declare-fun call!135248 () (_ BitVec 64))

(declare-fun lt!834122 () ListLongMap!357)

(declare-fun call!135249 () List!26526)

(declare-fun bm!135243 () Bool)

(assert (=> bm!135243 (= call!135249 (apply!6524 (ite c!356842 lt!834122 call!135247) call!135248))))

(declare-fun d!665795 () Bool)

(declare-fun lt!834108 () Bool)

(declare-fun contains!4489 (ListMap!873 tuple2!25864) Bool)

(assert (=> d!665795 (= lt!834108 (contains!4489 (map!5467 (cache!3444 thiss!28657)) lt!833951))))

(declare-fun e!1432892 () Bool)

(assert (=> d!665795 (= lt!834108 e!1432892)))

(declare-fun res!957834 () Bool)

(assert (=> d!665795 (=> (not res!957834) (not e!1432892))))

(declare-fun lt!834117 () (_ BitVec 64))

(declare-fun contains!4490 (MutLongMap!3153 (_ BitVec 64)) Bool)

(assert (=> d!665795 (= res!957834 (contains!4490 (v!30062 (underlying!6508 (cache!3444 thiss!28657))) lt!834117))))

(declare-fun lt!834106 () Unit!39409)

(declare-fun e!1432890 () Unit!39409)

(assert (=> d!665795 (= lt!834106 e!1432890)))

(assert (=> d!665795 (= c!356842 (contains!4489 (extractMap!123 (toList!1389 (map!5468 (v!30062 (underlying!6508 (cache!3444 thiss!28657)))))) lt!833951))))

(declare-fun lt!834111 () Unit!39409)

(declare-fun e!1432889 () Unit!39409)

(assert (=> d!665795 (= lt!834111 e!1432889)))

(declare-fun c!356844 () Bool)

(assert (=> d!665795 (= c!356844 (contains!4490 (v!30062 (underlying!6508 (cache!3444 thiss!28657))) lt!834117))))

(assert (=> d!665795 (= lt!834117 (hash!590 (hashF!4986 (cache!3444 thiss!28657)) lt!833951))))

(assert (=> d!665795 (valid!2371 (cache!3444 thiss!28657))))

(assert (=> d!665795 (= (contains!4486 (cache!3444 thiss!28657) lt!833951) lt!834108)))

(declare-fun b!2240975 () Bool)

(declare-fun e!1432893 () Bool)

(assert (=> b!2240975 (= e!1432893 call!135250)))

(assert (=> b!2240976 (= e!1432889 (forallContained!790 (toList!1389 (map!5468 (v!30062 (underlying!6508 (cache!3444 thiss!28657))))) lambda!84790 (tuple2!25869 lt!834117 (apply!6523 (v!30062 (underlying!6508 (cache!3444 thiss!28657))) lt!834117))))))

(declare-fun c!356841 () Bool)

(assert (=> b!2240976 (= c!356841 (not (contains!4487 (toList!1389 (map!5468 (v!30062 (underlying!6508 (cache!3444 thiss!28657))))) (tuple2!25869 lt!834117 (apply!6523 (v!30062 (underlying!6508 (cache!3444 thiss!28657))) lt!834117)))))))

(declare-fun lt!834109 () Unit!39409)

(declare-fun e!1432887 () Unit!39409)

(assert (=> b!2240976 (= lt!834109 e!1432887)))

(declare-fun b!2240977 () Bool)

(assert (=> b!2240977 false))

(declare-fun lt!834110 () Unit!39409)

(declare-fun lt!834116 () Unit!39409)

(assert (=> b!2240977 (= lt!834110 lt!834116)))

(declare-fun lt!834121 () List!26527)

(declare-fun lt!834105 () List!26526)

(assert (=> b!2240977 (contains!4487 lt!834121 (tuple2!25869 lt!834117 lt!834105))))

(assert (=> b!2240977 (= lt!834116 (lemmaGetValueByKeyImpliesContainsTuple!44 lt!834121 lt!834117 lt!834105))))

(assert (=> b!2240977 (= lt!834105 (apply!6523 (v!30062 (underlying!6508 (cache!3444 thiss!28657))) lt!834117))))

(assert (=> b!2240977 (= lt!834121 (toList!1389 (map!5468 (v!30062 (underlying!6508 (cache!3444 thiss!28657))))))))

(declare-fun lt!834115 () Unit!39409)

(declare-fun lt!834112 () Unit!39409)

(assert (=> b!2240977 (= lt!834115 lt!834112)))

(declare-fun lt!834119 () List!26527)

(assert (=> b!2240977 (isDefined!4166 (getValueByKey!95 lt!834119 lt!834117))))

(assert (=> b!2240977 (= lt!834112 (lemmaContainsKeyImpliesGetValueByKeyDefined!61 lt!834119 lt!834117))))

(assert (=> b!2240977 (= lt!834119 (toList!1389 (map!5468 (v!30062 (underlying!6508 (cache!3444 thiss!28657))))))))

(declare-fun lt!834107 () Unit!39409)

(declare-fun lt!834120 () Unit!39409)

(assert (=> b!2240977 (= lt!834107 lt!834120)))

(declare-fun lt!834118 () List!26527)

(declare-fun containsKey!92 (List!26527 (_ BitVec 64)) Bool)

(assert (=> b!2240977 (containsKey!92 lt!834118 lt!834117)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!44 (List!26527 (_ BitVec 64)) Unit!39409)

(assert (=> b!2240977 (= lt!834120 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!44 lt!834118 lt!834117))))

(assert (=> b!2240977 (= lt!834118 (toList!1389 (map!5468 (v!30062 (underlying!6508 (cache!3444 thiss!28657))))))))

(declare-fun Unit!39414 () Unit!39409)

(assert (=> b!2240977 (= e!1432887 Unit!39414)))

(declare-fun bm!135244 () Bool)

(declare-fun call!135251 () Bool)

(assert (=> bm!135244 (= call!135251 (contains!4488 (ite c!356842 lt!834122 call!135247) call!135248))))

(declare-fun b!2240978 () Bool)

(declare-fun e!1432888 () Bool)

(assert (=> b!2240978 (= e!1432888 call!135250)))

(declare-fun b!2240979 () Bool)

(declare-fun e!1432891 () Unit!39409)

(assert (=> b!2240979 (= e!1432890 e!1432891)))

(declare-fun res!957836 () Bool)

(assert (=> b!2240979 (= res!957836 call!135251)))

(assert (=> b!2240979 (=> (not res!957836) (not e!1432893))))

(declare-fun c!356843 () Bool)

(assert (=> b!2240979 (= c!356843 e!1432893)))

(declare-fun bm!135245 () Bool)

(assert (=> bm!135245 (= call!135248 (hash!590 (hashF!4986 (cache!3444 thiss!28657)) lt!833951))))

(declare-fun b!2240980 () Bool)

(declare-fun Unit!39415 () Unit!39409)

(assert (=> b!2240980 (= e!1432887 Unit!39415)))

(declare-fun b!2240981 () Bool)

(declare-fun Unit!39416 () Unit!39409)

(assert (=> b!2240981 (= e!1432889 Unit!39416)))

(declare-fun bm!135246 () Bool)

(assert (=> bm!135246 (= call!135247 (map!5468 (v!30062 (underlying!6508 (cache!3444 thiss!28657)))))))

(declare-fun b!2240982 () Bool)

(assert (=> b!2240982 (= e!1432892 (isDefined!4165 (getPair!43 (apply!6523 (v!30062 (underlying!6508 (cache!3444 thiss!28657))) lt!834117) lt!833951)))))

(declare-fun b!2240983 () Bool)

(declare-fun lt!834113 () Unit!39409)

(assert (=> b!2240983 (= e!1432890 lt!834113)))

(assert (=> b!2240983 (= lt!834122 call!135247)))

(declare-fun lemmaInGenericMapThenInLongMap!43 (ListLongMap!357 tuple2!25864 Hashable!3063) Unit!39409)

(assert (=> b!2240983 (= lt!834113 (lemmaInGenericMapThenInLongMap!43 lt!834122 lt!833951 (hashF!4986 (cache!3444 thiss!28657))))))

(declare-fun res!957835 () Bool)

(assert (=> b!2240983 (= res!957835 call!135251)))

(assert (=> b!2240983 (=> (not res!957835) (not e!1432888))))

(assert (=> b!2240983 e!1432888))

(declare-fun bm!135247 () Bool)

(assert (=> bm!135247 (= call!135252 (getPair!43 call!135249 lt!833951))))

(declare-fun b!2240984 () Bool)

(assert (=> b!2240984 false))

(declare-fun lt!834104 () Unit!39409)

(declare-fun lt!834123 () Unit!39409)

(assert (=> b!2240984 (= lt!834104 lt!834123)))

(declare-fun lt!834114 () ListLongMap!357)

(assert (=> b!2240984 (contains!4489 (extractMap!123 (toList!1389 lt!834114)) lt!833951)))

(declare-fun lemmaInLongMapThenInGenericMap!43 (ListLongMap!357 tuple2!25864 Hashable!3063) Unit!39409)

(assert (=> b!2240984 (= lt!834123 (lemmaInLongMapThenInGenericMap!43 lt!834114 lt!833951 (hashF!4986 (cache!3444 thiss!28657))))))

(assert (=> b!2240984 (= lt!834114 call!135247)))

(declare-fun Unit!39417 () Unit!39409)

(assert (=> b!2240984 (= e!1432891 Unit!39417)))

(declare-fun b!2240985 () Bool)

(declare-fun Unit!39418 () Unit!39409)

(assert (=> b!2240985 (= e!1432891 Unit!39418)))

(assert (= (and d!665795 c!356844) b!2240976))

(assert (= (and d!665795 (not c!356844)) b!2240981))

(assert (= (and b!2240976 c!356841) b!2240977))

(assert (= (and b!2240976 (not c!356841)) b!2240980))

(assert (= (and d!665795 c!356842) b!2240983))

(assert (= (and d!665795 (not c!356842)) b!2240979))

(assert (= (and b!2240983 res!957835) b!2240978))

(assert (= (and b!2240979 res!957836) b!2240975))

(assert (= (and b!2240979 c!356843) b!2240984))

(assert (= (and b!2240979 (not c!356843)) b!2240985))

(assert (= (or b!2240983 b!2240978 b!2240979 b!2240975) bm!135245))

(assert (= (or b!2240983 b!2240979 b!2240975 b!2240984) bm!135246))

(assert (= (or b!2240983 b!2240979) bm!135244))

(assert (= (or b!2240978 b!2240975) bm!135243))

(assert (= (or b!2240978 b!2240975) bm!135247))

(assert (= (or b!2240978 b!2240975) bm!135242))

(assert (= (and d!665795 res!957834) b!2240982))

(declare-fun m!2673316 () Bool)

(assert (=> bm!135243 m!2673316))

(assert (=> bm!135245 m!2673276))

(declare-fun m!2673318 () Bool)

(assert (=> b!2240977 m!2673318))

(declare-fun m!2673320 () Bool)

(assert (=> b!2240977 m!2673320))

(declare-fun m!2673322 () Bool)

(assert (=> b!2240977 m!2673322))

(declare-fun m!2673324 () Bool)

(assert (=> b!2240977 m!2673324))

(declare-fun m!2673326 () Bool)

(assert (=> b!2240977 m!2673326))

(declare-fun m!2673328 () Bool)

(assert (=> b!2240977 m!2673328))

(declare-fun m!2673330 () Bool)

(assert (=> b!2240977 m!2673330))

(declare-fun m!2673332 () Bool)

(assert (=> b!2240977 m!2673332))

(assert (=> b!2240977 m!2673328))

(assert (=> b!2240977 m!2673250))

(assert (=> d!665795 m!2673236))

(declare-fun m!2673334 () Bool)

(assert (=> d!665795 m!2673334))

(declare-fun m!2673336 () Bool)

(assert (=> d!665795 m!2673336))

(assert (=> d!665795 m!2673276))

(assert (=> d!665795 m!2673234))

(assert (=> d!665795 m!2673334))

(declare-fun m!2673338 () Bool)

(assert (=> d!665795 m!2673338))

(assert (=> d!665795 m!2673250))

(assert (=> d!665795 m!2673236))

(declare-fun m!2673340 () Bool)

(assert (=> d!665795 m!2673340))

(declare-fun m!2673342 () Bool)

(assert (=> bm!135247 m!2673342))

(declare-fun m!2673344 () Bool)

(assert (=> b!2240983 m!2673344))

(assert (=> b!2240982 m!2673326))

(assert (=> b!2240982 m!2673326))

(declare-fun m!2673346 () Bool)

(assert (=> b!2240982 m!2673346))

(assert (=> b!2240982 m!2673346))

(declare-fun m!2673348 () Bool)

(assert (=> b!2240982 m!2673348))

(declare-fun m!2673350 () Bool)

(assert (=> b!2240984 m!2673350))

(assert (=> b!2240984 m!2673350))

(declare-fun m!2673352 () Bool)

(assert (=> b!2240984 m!2673352))

(declare-fun m!2673354 () Bool)

(assert (=> b!2240984 m!2673354))

(declare-fun m!2673356 () Bool)

(assert (=> bm!135244 m!2673356))

(assert (=> bm!135246 m!2673250))

(assert (=> b!2240976 m!2673250))

(assert (=> b!2240976 m!2673326))

(declare-fun m!2673358 () Bool)

(assert (=> b!2240976 m!2673358))

(declare-fun m!2673360 () Bool)

(assert (=> b!2240976 m!2673360))

(declare-fun m!2673362 () Bool)

(assert (=> bm!135242 m!2673362))

(assert (=> b!2240899 d!665795))

(declare-fun tp!706388 () Bool)

(declare-fun b!2240994 () Bool)

(declare-fun e!1432901 () Bool)

(declare-fun setRes!20590 () Bool)

(declare-fun e!1432902 () Bool)

(assert (=> b!2240994 (= e!1432901 (and (inv!35899 (_1!15442 (_1!15443 (h!31833 (zeroValue!3411 (v!30061 (underlying!6507 (v!30062 (underlying!6508 (cache!3444 thiss!28657)))))))))) e!1432902 tp_is_empty!10251 setRes!20590 tp!706388))))

(declare-fun condSetEmpty!20590 () Bool)

(assert (=> b!2240994 (= condSetEmpty!20590 (= (_2!15443 (h!31833 (zeroValue!3411 (v!30061 (underlying!6507 (v!30062 (underlying!6508 (cache!3444 thiss!28657)))))))) ((as const (Array Context!4126 Bool)) false)))))

(declare-fun e!1432900 () Bool)

(declare-fun setElem!20590 () Context!4126)

(declare-fun setNonEmpty!20590 () Bool)

(declare-fun tp!706389 () Bool)

(assert (=> setNonEmpty!20590 (= setRes!20590 (and tp!706389 (inv!35899 setElem!20590) e!1432900))))

(declare-fun setRest!20590 () (InoxSet Context!4126))

(assert (=> setNonEmpty!20590 (= (_2!15443 (h!31833 (zeroValue!3411 (v!30061 (underlying!6507 (v!30062 (underlying!6508 (cache!3444 thiss!28657)))))))) ((_ map or) (store ((as const (Array Context!4126 Bool)) false) setElem!20590 true) setRest!20590))))

(assert (=> b!2240898 (= tp!706372 e!1432901)))

(declare-fun setIsEmpty!20590 () Bool)

(assert (=> setIsEmpty!20590 setRes!20590))

(declare-fun b!2240995 () Bool)

(declare-fun tp!706387 () Bool)

(assert (=> b!2240995 (= e!1432902 tp!706387)))

(declare-fun b!2240996 () Bool)

(declare-fun tp!706386 () Bool)

(assert (=> b!2240996 (= e!1432900 tp!706386)))

(assert (= b!2240994 b!2240995))

(assert (= (and b!2240994 condSetEmpty!20590) setIsEmpty!20590))

(assert (= (and b!2240994 (not condSetEmpty!20590)) setNonEmpty!20590))

(assert (= setNonEmpty!20590 b!2240996))

(assert (= (and b!2240898 ((_ is Cons!26432) (zeroValue!3411 (v!30061 (underlying!6507 (v!30062 (underlying!6508 (cache!3444 thiss!28657)))))))) b!2240994))

(declare-fun m!2673364 () Bool)

(assert (=> b!2240994 m!2673364))

(declare-fun m!2673366 () Bool)

(assert (=> setNonEmpty!20590 m!2673366))

(declare-fun tp!706392 () Bool)

(declare-fun e!1432904 () Bool)

(declare-fun e!1432905 () Bool)

(declare-fun setRes!20591 () Bool)

(declare-fun b!2240997 () Bool)

(assert (=> b!2240997 (= e!1432904 (and (inv!35899 (_1!15442 (_1!15443 (h!31833 (minValue!3411 (v!30061 (underlying!6507 (v!30062 (underlying!6508 (cache!3444 thiss!28657)))))))))) e!1432905 tp_is_empty!10251 setRes!20591 tp!706392))))

(declare-fun condSetEmpty!20591 () Bool)

(assert (=> b!2240997 (= condSetEmpty!20591 (= (_2!15443 (h!31833 (minValue!3411 (v!30061 (underlying!6507 (v!30062 (underlying!6508 (cache!3444 thiss!28657)))))))) ((as const (Array Context!4126 Bool)) false)))))

(declare-fun setNonEmpty!20591 () Bool)

(declare-fun tp!706393 () Bool)

(declare-fun setElem!20591 () Context!4126)

(declare-fun e!1432903 () Bool)

(assert (=> setNonEmpty!20591 (= setRes!20591 (and tp!706393 (inv!35899 setElem!20591) e!1432903))))

(declare-fun setRest!20591 () (InoxSet Context!4126))

(assert (=> setNonEmpty!20591 (= (_2!15443 (h!31833 (minValue!3411 (v!30061 (underlying!6507 (v!30062 (underlying!6508 (cache!3444 thiss!28657)))))))) ((_ map or) (store ((as const (Array Context!4126 Bool)) false) setElem!20591 true) setRest!20591))))

(assert (=> b!2240898 (= tp!706374 e!1432904)))

(declare-fun setIsEmpty!20591 () Bool)

(assert (=> setIsEmpty!20591 setRes!20591))

(declare-fun b!2240998 () Bool)

(declare-fun tp!706391 () Bool)

(assert (=> b!2240998 (= e!1432905 tp!706391)))

(declare-fun b!2240999 () Bool)

(declare-fun tp!706390 () Bool)

(assert (=> b!2240999 (= e!1432903 tp!706390)))

(assert (= b!2240997 b!2240998))

(assert (= (and b!2240997 condSetEmpty!20591) setIsEmpty!20591))

(assert (= (and b!2240997 (not condSetEmpty!20591)) setNonEmpty!20591))

(assert (= setNonEmpty!20591 b!2240999))

(assert (= (and b!2240898 ((_ is Cons!26432) (minValue!3411 (v!30061 (underlying!6507 (v!30062 (underlying!6508 (cache!3444 thiss!28657)))))))) b!2240997))

(declare-fun m!2673368 () Bool)

(assert (=> b!2240997 m!2673368))

(declare-fun m!2673370 () Bool)

(assert (=> setNonEmpty!20591 m!2673370))

(declare-fun b!2241004 () Bool)

(declare-fun e!1432908 () Bool)

(declare-fun tp!706398 () Bool)

(declare-fun tp!706399 () Bool)

(assert (=> b!2241004 (= e!1432908 (and tp!706398 tp!706399))))

(assert (=> b!2240893 (= tp!706377 e!1432908)))

(assert (= (and b!2240893 ((_ is Cons!26431) (exprs!2563 ctx!40))) b!2241004))

(declare-fun setRes!20592 () Bool)

(declare-fun b!2241005 () Bool)

(declare-fun e!1432910 () Bool)

(declare-fun e!1432911 () Bool)

(declare-fun tp!706402 () Bool)

(assert (=> b!2241005 (= e!1432910 (and (inv!35899 (_1!15442 (_1!15443 (h!31833 mapDefault!14777)))) e!1432911 tp_is_empty!10251 setRes!20592 tp!706402))))

(declare-fun condSetEmpty!20592 () Bool)

(assert (=> b!2241005 (= condSetEmpty!20592 (= (_2!15443 (h!31833 mapDefault!14777)) ((as const (Array Context!4126 Bool)) false)))))

(declare-fun tp!706403 () Bool)

(declare-fun e!1432909 () Bool)

(declare-fun setNonEmpty!20592 () Bool)

(declare-fun setElem!20592 () Context!4126)

(assert (=> setNonEmpty!20592 (= setRes!20592 (and tp!706403 (inv!35899 setElem!20592) e!1432909))))

(declare-fun setRest!20592 () (InoxSet Context!4126))

(assert (=> setNonEmpty!20592 (= (_2!15443 (h!31833 mapDefault!14777)) ((_ map or) (store ((as const (Array Context!4126 Bool)) false) setElem!20592 true) setRest!20592))))

(assert (=> b!2240897 (= tp!706370 e!1432910)))

(declare-fun setIsEmpty!20592 () Bool)

(assert (=> setIsEmpty!20592 setRes!20592))

(declare-fun b!2241006 () Bool)

(declare-fun tp!706401 () Bool)

(assert (=> b!2241006 (= e!1432911 tp!706401)))

(declare-fun b!2241007 () Bool)

(declare-fun tp!706400 () Bool)

(assert (=> b!2241007 (= e!1432909 tp!706400)))

(assert (= b!2241005 b!2241006))

(assert (= (and b!2241005 condSetEmpty!20592) setIsEmpty!20592))

(assert (= (and b!2241005 (not condSetEmpty!20592)) setNonEmpty!20592))

(assert (= setNonEmpty!20592 b!2241007))

(assert (= (and b!2240897 ((_ is Cons!26432) mapDefault!14777)) b!2241005))

(declare-fun m!2673372 () Bool)

(assert (=> b!2241005 m!2673372))

(declare-fun m!2673374 () Bool)

(assert (=> setNonEmpty!20592 m!2673374))

(declare-fun setElem!20597 () Context!4126)

(declare-fun setRes!20597 () Bool)

(declare-fun setNonEmpty!20597 () Bool)

(declare-fun tp!706423 () Bool)

(declare-fun e!1432924 () Bool)

(assert (=> setNonEmpty!20597 (= setRes!20597 (and tp!706423 (inv!35899 setElem!20597) e!1432924))))

(declare-fun mapValue!14780 () List!26526)

(declare-fun setRest!20598 () (InoxSet Context!4126))

(assert (=> setNonEmpty!20597 (= (_2!15443 (h!31833 mapValue!14780)) ((_ map or) (store ((as const (Array Context!4126 Bool)) false) setElem!20597 true) setRest!20598))))

(declare-fun condMapEmpty!14780 () Bool)

(declare-fun mapDefault!14780 () List!26526)

(assert (=> mapNonEmpty!14777 (= condMapEmpty!14780 (= mapRest!14777 ((as const (Array (_ BitVec 32) List!26526)) mapDefault!14780)))))

(declare-fun e!1432929 () Bool)

(declare-fun mapRes!14780 () Bool)

(assert (=> mapNonEmpty!14777 (= tp!706371 (and e!1432929 mapRes!14780))))

(declare-fun mapNonEmpty!14780 () Bool)

(declare-fun tp!706428 () Bool)

(declare-fun e!1432925 () Bool)

(assert (=> mapNonEmpty!14780 (= mapRes!14780 (and tp!706428 e!1432925))))

(declare-fun mapKey!14780 () (_ BitVec 32))

(declare-fun mapRest!14780 () (Array (_ BitVec 32) List!26526))

(assert (=> mapNonEmpty!14780 (= mapRest!14777 (store mapRest!14780 mapKey!14780 mapValue!14780))))

(declare-fun b!2241022 () Bool)

(declare-fun setRes!20598 () Bool)

(declare-fun e!1432927 () Bool)

(declare-fun tp!706424 () Bool)

(assert (=> b!2241022 (= e!1432929 (and (inv!35899 (_1!15442 (_1!15443 (h!31833 mapDefault!14780)))) e!1432927 tp_is_empty!10251 setRes!20598 tp!706424))))

(declare-fun condSetEmpty!20598 () Bool)

(assert (=> b!2241022 (= condSetEmpty!20598 (= (_2!15443 (h!31833 mapDefault!14780)) ((as const (Array Context!4126 Bool)) false)))))

(declare-fun mapIsEmpty!14780 () Bool)

(assert (=> mapIsEmpty!14780 mapRes!14780))

(declare-fun setElem!20598 () Context!4126)

(declare-fun setNonEmpty!20598 () Bool)

(declare-fun tp!706425 () Bool)

(declare-fun e!1432926 () Bool)

(assert (=> setNonEmpty!20598 (= setRes!20598 (and tp!706425 (inv!35899 setElem!20598) e!1432926))))

(declare-fun setRest!20597 () (InoxSet Context!4126))

(assert (=> setNonEmpty!20598 (= (_2!15443 (h!31833 mapDefault!14780)) ((_ map or) (store ((as const (Array Context!4126 Bool)) false) setElem!20598 true) setRest!20597))))

(declare-fun b!2241023 () Bool)

(declare-fun e!1432928 () Bool)

(declare-fun tp!706429 () Bool)

(assert (=> b!2241023 (= e!1432925 (and (inv!35899 (_1!15442 (_1!15443 (h!31833 mapValue!14780)))) e!1432928 tp_is_empty!10251 setRes!20597 tp!706429))))

(declare-fun condSetEmpty!20597 () Bool)

(assert (=> b!2241023 (= condSetEmpty!20597 (= (_2!15443 (h!31833 mapValue!14780)) ((as const (Array Context!4126 Bool)) false)))))

(declare-fun b!2241024 () Bool)

(declare-fun tp!706427 () Bool)

(assert (=> b!2241024 (= e!1432927 tp!706427)))

(declare-fun b!2241025 () Bool)

(declare-fun tp!706430 () Bool)

(assert (=> b!2241025 (= e!1432924 tp!706430)))

(declare-fun b!2241026 () Bool)

(declare-fun tp!706422 () Bool)

(assert (=> b!2241026 (= e!1432926 tp!706422)))

(declare-fun b!2241027 () Bool)

(declare-fun tp!706426 () Bool)

(assert (=> b!2241027 (= e!1432928 tp!706426)))

(declare-fun setIsEmpty!20597 () Bool)

(assert (=> setIsEmpty!20597 setRes!20598))

(declare-fun setIsEmpty!20598 () Bool)

(assert (=> setIsEmpty!20598 setRes!20597))

(assert (= (and mapNonEmpty!14777 condMapEmpty!14780) mapIsEmpty!14780))

(assert (= (and mapNonEmpty!14777 (not condMapEmpty!14780)) mapNonEmpty!14780))

(assert (= b!2241023 b!2241027))

(assert (= (and b!2241023 condSetEmpty!20597) setIsEmpty!20598))

(assert (= (and b!2241023 (not condSetEmpty!20597)) setNonEmpty!20597))

(assert (= setNonEmpty!20597 b!2241025))

(assert (= (and mapNonEmpty!14780 ((_ is Cons!26432) mapValue!14780)) b!2241023))

(assert (= b!2241022 b!2241024))

(assert (= (and b!2241022 condSetEmpty!20598) setIsEmpty!20597))

(assert (= (and b!2241022 (not condSetEmpty!20598)) setNonEmpty!20598))

(assert (= setNonEmpty!20598 b!2241026))

(assert (= (and mapNonEmpty!14777 ((_ is Cons!26432) mapDefault!14780)) b!2241022))

(declare-fun m!2673376 () Bool)

(assert (=> setNonEmpty!20597 m!2673376))

(declare-fun m!2673378 () Bool)

(assert (=> mapNonEmpty!14780 m!2673378))

(declare-fun m!2673380 () Bool)

(assert (=> b!2241022 m!2673380))

(declare-fun m!2673382 () Bool)

(assert (=> setNonEmpty!20598 m!2673382))

(declare-fun m!2673384 () Bool)

(assert (=> b!2241023 m!2673384))

(declare-fun e!1432932 () Bool)

(declare-fun e!1432931 () Bool)

(declare-fun tp!706433 () Bool)

(declare-fun b!2241028 () Bool)

(declare-fun setRes!20599 () Bool)

(assert (=> b!2241028 (= e!1432931 (and (inv!35899 (_1!15442 (_1!15443 (h!31833 mapValue!14777)))) e!1432932 tp_is_empty!10251 setRes!20599 tp!706433))))

(declare-fun condSetEmpty!20599 () Bool)

(assert (=> b!2241028 (= condSetEmpty!20599 (= (_2!15443 (h!31833 mapValue!14777)) ((as const (Array Context!4126 Bool)) false)))))

(declare-fun e!1432930 () Bool)

(declare-fun setNonEmpty!20599 () Bool)

(declare-fun setElem!20599 () Context!4126)

(declare-fun tp!706434 () Bool)

(assert (=> setNonEmpty!20599 (= setRes!20599 (and tp!706434 (inv!35899 setElem!20599) e!1432930))))

(declare-fun setRest!20599 () (InoxSet Context!4126))

(assert (=> setNonEmpty!20599 (= (_2!15443 (h!31833 mapValue!14777)) ((_ map or) (store ((as const (Array Context!4126 Bool)) false) setElem!20599 true) setRest!20599))))

(assert (=> mapNonEmpty!14777 (= tp!706375 e!1432931)))

(declare-fun setIsEmpty!20599 () Bool)

(assert (=> setIsEmpty!20599 setRes!20599))

(declare-fun b!2241029 () Bool)

(declare-fun tp!706432 () Bool)

(assert (=> b!2241029 (= e!1432932 tp!706432)))

(declare-fun b!2241030 () Bool)

(declare-fun tp!706431 () Bool)

(assert (=> b!2241030 (= e!1432930 tp!706431)))

(assert (= b!2241028 b!2241029))

(assert (= (and b!2241028 condSetEmpty!20599) setIsEmpty!20599))

(assert (= (and b!2241028 (not condSetEmpty!20599)) setNonEmpty!20599))

(assert (= setNonEmpty!20599 b!2241030))

(assert (= (and mapNonEmpty!14777 ((_ is Cons!26432) mapValue!14777)) b!2241028))

(declare-fun m!2673386 () Bool)

(assert (=> b!2241028 m!2673386))

(declare-fun m!2673388 () Bool)

(assert (=> setNonEmpty!20599 m!2673388))

(declare-fun b_lambda!71769 () Bool)

(assert (= b_lambda!71767 (or (and b!2240894 b_free!65073) b_lambda!71769)))

(declare-fun b_lambda!71771 () Bool)

(assert (= b_lambda!71765 (or (and b!2240894 b_free!65073) b_lambda!71771)))

(check-sat (not b!2241028) (not setNonEmpty!20597) (not d!665787) (not setNonEmpty!20598) (not b!2240940) (not b!2240952) (not b!2240995) (not bm!135242) (not b!2240921) (not mapNonEmpty!14780) (not b!2241023) (not b!2241029) (not b!2240950) (not b!2241007) (not b!2240999) (not b!2240997) (not b!2240912) (not b_next!65779) tp_is_empty!10251 (not b!2240994) (not b!2240922) (not setNonEmpty!20599) (not b!2241024) (not b!2241022) (not d!665793) (not bm!135244) (not bm!135243) (not b!2240982) (not b!2240925) (not b!2240983) (not b!2241030) b_and!175091 (not b!2240996) (not b!2241006) (not b!2240943) (not setNonEmpty!20590) (not b!2240938) b_and!175095 (not d!665791) (not b!2241026) (not b_next!65777) (not b!2240977) (not tb!132865) (not b!2240976) (not bm!135247) (not b!2240998) (not b_lambda!71769) (not b!2241027) (not b!2240913) (not b_lambda!71771) (not b!2240984) (not b!2241004) (not setNonEmpty!20592) (not d!665795) (not d!665783) (not bm!135245) (not bm!135229) (not setNonEmpty!20591) (not b!2241025) (not b!2241005) (not bm!135246))
(check-sat b_and!175091 b_and!175095 (not b_next!65777) (not b_next!65779))

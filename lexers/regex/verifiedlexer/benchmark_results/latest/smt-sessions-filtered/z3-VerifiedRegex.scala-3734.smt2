; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!209302 () Bool)

(assert start!209302)

(declare-fun b!2157400 () Bool)

(declare-fun b_free!63733 () Bool)

(declare-fun b_next!64437 () Bool)

(assert (=> b!2157400 (= b_free!63733 (not b_next!64437))))

(declare-fun tp!672148 () Bool)

(declare-fun b_and!173349 () Bool)

(assert (=> b!2157400 (= tp!672148 b_and!173349)))

(declare-fun b!2157402 () Bool)

(declare-fun b_free!63735 () Bool)

(declare-fun b_next!64439 () Bool)

(assert (=> b!2157402 (= b_free!63735 (not b_next!64439))))

(declare-fun tp!672146 () Bool)

(declare-fun b_and!173351 () Bool)

(assert (=> b!2157402 (= tp!672146 b_and!173351)))

(declare-fun b!2157396 () Bool)

(declare-fun e!1380161 () Bool)

(declare-datatypes ((C!12016 0))(
  ( (C!12017 (val!6994 Int)) )
))
(declare-datatypes ((List!25011 0))(
  ( (Nil!24927) (Cons!24927 (h!30328 C!12016) (t!197559 List!25011)) )
))
(declare-datatypes ((IArray!16147 0))(
  ( (IArray!16148 (innerList!8131 List!25011)) )
))
(declare-datatypes ((Conc!8071 0))(
  ( (Node!8071 (left!19185 Conc!8071) (right!19515 Conc!8071) (csize!16372 Int) (cheight!8282 Int)) (Leaf!11806 (xs!11013 IArray!16147) (csize!16373 Int)) (Empty!8071) )
))
(declare-datatypes ((BalanceConc!15904 0))(
  ( (BalanceConc!15905 (c!341619 Conc!8071)) )
))
(declare-fun localTotalInput!17 () BalanceConc!15904)

(declare-fun tp!672147 () Bool)

(declare-fun inv!32975 (Conc!8071) Bool)

(assert (=> b!2157396 (= e!1380161 (and (inv!32975 (c!341619 localTotalInput!17)) tp!672147))))

(declare-fun b!2157397 () Bool)

(declare-fun e!1380156 () Bool)

(declare-fun e!1380162 () Bool)

(declare-datatypes ((Regex!5935 0))(
  ( (ElementMatch!5935 (c!341620 C!12016)) (Concat!10237 (regOne!12382 Regex!5935) (regTwo!12382 Regex!5935)) (EmptyExpr!5935) (Star!5935 (reg!6264 Regex!5935)) (EmptyLang!5935) (Union!5935 (regOne!12383 Regex!5935) (regTwo!12383 Regex!5935)) )
))
(declare-datatypes ((List!25012 0))(
  ( (Nil!24928) (Cons!24928 (h!30329 Regex!5935) (t!197560 List!25012)) )
))
(declare-datatypes ((Context!3010 0))(
  ( (Context!3011 (exprs!2005 List!25012)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple3!3754 0))(
  ( (tuple3!3755 (_1!14657 (InoxSet Context!3010)) (_2!14657 Int) (_3!2347 Int)) )
))
(declare-datatypes ((array!10019 0))(
  ( (array!10020 (arr!4468 (Array (_ BitVec 32) (_ BitVec 64))) (size!19477 (_ BitVec 32))) )
))
(declare-datatypes ((tuple2!24620 0))(
  ( (tuple2!24621 (_1!14658 tuple3!3754) (_2!14658 Int)) )
))
(declare-datatypes ((List!25013 0))(
  ( (Nil!24929) (Cons!24929 (h!30330 tuple2!24620) (t!197561 List!25013)) )
))
(declare-datatypes ((array!10021 0))(
  ( (array!10022 (arr!4469 (Array (_ BitVec 32) List!25013)) (size!19478 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5872 0))(
  ( (LongMapFixedSize!5873 (defaultEntry!3301 Int) (mask!7219 (_ BitVec 32)) (extraKeys!3184 (_ BitVec 32)) (zeroValue!3194 List!25013) (minValue!3194 List!25013) (_size!5923 (_ BitVec 32)) (_keys!3233 array!10019) (_values!3216 array!10021) (_vacant!2997 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!11569 0))(
  ( (Cell!11570 (v!29335 LongMapFixedSize!5872)) )
))
(declare-datatypes ((MutLongMap!2936 0))(
  ( (LongMap!2936 (underlying!6067 Cell!11569)) (MutLongMapExt!2935 (__x!16984 Int)) )
))
(declare-fun lt!801698 () MutLongMap!2936)

(get-info :version)

(assert (=> b!2157397 (= e!1380156 (and e!1380162 ((_ is LongMap!2936) lt!801698)))))

(declare-datatypes ((Cell!11571 0))(
  ( (Cell!11572 (v!29336 MutLongMap!2936)) )
))
(declare-datatypes ((Hashable!2850 0))(
  ( (HashableExt!2849 (__x!16985 Int)) )
))
(declare-datatypes ((MutableMap!2850 0))(
  ( (MutableMapExt!2849 (__x!16986 Int)) (HashMap!2850 (underlying!6068 Cell!11571) (hashF!4773 Hashable!2850) (_size!5924 (_ BitVec 32)) (defaultValue!3012 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!1058 0))(
  ( (CacheFurthestNullable!1059 (cache!3231 MutableMap!2850) (totalInput!3381 BalanceConc!15904)) )
))
(declare-fun thiss!29220 () CacheFurthestNullable!1058)

(assert (=> b!2157397 (= lt!801698 (v!29336 (underlying!6068 (cache!3231 thiss!29220))))))

(declare-fun b!2157398 () Bool)

(declare-fun e!1380164 () Bool)

(declare-fun tp!672142 () Bool)

(declare-fun mapRes!13868 () Bool)

(assert (=> b!2157398 (= e!1380164 (and tp!672142 mapRes!13868))))

(declare-fun condMapEmpty!13868 () Bool)

(declare-fun mapDefault!13868 () List!25013)

(assert (=> b!2157398 (= condMapEmpty!13868 (= (arr!4469 (_values!3216 (v!29335 (underlying!6067 (v!29336 (underlying!6068 (cache!3231 thiss!29220))))))) ((as const (Array (_ BitVec 32) List!25013)) mapDefault!13868)))))

(declare-fun mapNonEmpty!13868 () Bool)

(declare-fun tp!672143 () Bool)

(declare-fun tp!672149 () Bool)

(assert (=> mapNonEmpty!13868 (= mapRes!13868 (and tp!672143 tp!672149))))

(declare-fun mapKey!13868 () (_ BitVec 32))

(declare-fun mapRest!13868 () (Array (_ BitVec 32) List!25013))

(declare-fun mapValue!13868 () List!25013)

(assert (=> mapNonEmpty!13868 (= (arr!4469 (_values!3216 (v!29335 (underlying!6067 (v!29336 (underlying!6068 (cache!3231 thiss!29220))))))) (store mapRest!13868 mapKey!13868 mapValue!13868))))

(declare-fun b!2157399 () Bool)

(declare-fun e!1380155 () Bool)

(declare-fun tp!672145 () Bool)

(assert (=> b!2157399 (= e!1380155 (and (inv!32975 (c!341619 (totalInput!3381 thiss!29220))) tp!672145))))

(declare-fun e!1380163 () Bool)

(declare-fun tp!672144 () Bool)

(declare-fun tp!672141 () Bool)

(declare-fun array_inv!3204 (array!10019) Bool)

(declare-fun array_inv!3205 (array!10021) Bool)

(assert (=> b!2157400 (= e!1380163 (and tp!672148 tp!672141 tp!672144 (array_inv!3204 (_keys!3233 (v!29335 (underlying!6067 (v!29336 (underlying!6068 (cache!3231 thiss!29220))))))) (array_inv!3205 (_values!3216 (v!29335 (underlying!6067 (v!29336 (underlying!6068 (cache!3231 thiss!29220))))))) e!1380164))))

(assert (=> start!209302 (and (= localTotalInput!17 (totalInput!3381 thiss!29220)) (not ((_ is HashMap!2850) (cache!3231 thiss!29220))))))

(declare-fun inv!32976 (BalanceConc!15904) Bool)

(assert (=> start!209302 (and (inv!32976 localTotalInput!17) e!1380161)))

(declare-fun e!1380157 () Bool)

(declare-fun inv!32977 (CacheFurthestNullable!1058) Bool)

(assert (=> start!209302 (and (inv!32977 thiss!29220) e!1380157)))

(declare-fun b!2157401 () Bool)

(declare-fun e!1380158 () Bool)

(assert (=> b!2157401 (= e!1380162 e!1380158)))

(declare-fun mapIsEmpty!13868 () Bool)

(assert (=> mapIsEmpty!13868 mapRes!13868))

(declare-fun e!1380159 () Bool)

(assert (=> b!2157402 (= e!1380159 (and e!1380156 tp!672146))))

(declare-fun b!2157403 () Bool)

(assert (=> b!2157403 (= e!1380157 (and e!1380159 (inv!32976 (totalInput!3381 thiss!29220)) e!1380155))))

(declare-fun b!2157404 () Bool)

(assert (=> b!2157404 (= e!1380158 e!1380163)))

(assert (= start!209302 b!2157396))

(assert (= (and b!2157398 condMapEmpty!13868) mapIsEmpty!13868))

(assert (= (and b!2157398 (not condMapEmpty!13868)) mapNonEmpty!13868))

(assert (= b!2157400 b!2157398))

(assert (= b!2157404 b!2157400))

(assert (= b!2157401 b!2157404))

(assert (= (and b!2157397 ((_ is LongMap!2936) (v!29336 (underlying!6068 (cache!3231 thiss!29220))))) b!2157401))

(assert (= b!2157402 b!2157397))

(assert (= (and b!2157403 ((_ is HashMap!2850) (cache!3231 thiss!29220))) b!2157402))

(assert (= b!2157403 b!2157399))

(assert (= start!209302 b!2157403))

(declare-fun m!2597669 () Bool)

(assert (=> start!209302 m!2597669))

(declare-fun m!2597671 () Bool)

(assert (=> start!209302 m!2597671))

(declare-fun m!2597673 () Bool)

(assert (=> b!2157396 m!2597673))

(declare-fun m!2597675 () Bool)

(assert (=> mapNonEmpty!13868 m!2597675))

(declare-fun m!2597677 () Bool)

(assert (=> b!2157403 m!2597677))

(declare-fun m!2597679 () Bool)

(assert (=> b!2157399 m!2597679))

(declare-fun m!2597681 () Bool)

(assert (=> b!2157400 m!2597681))

(declare-fun m!2597683 () Bool)

(assert (=> b!2157400 m!2597683))

(check-sat (not b!2157399) (not b!2157396) (not b!2157403) (not start!209302) (not mapNonEmpty!13868) (not b!2157398) b_and!173349 (not b_next!64437) (not b!2157400) b_and!173351 (not b_next!64439))
(check-sat b_and!173349 b_and!173351 (not b_next!64437) (not b_next!64439))
(get-model)

(declare-fun d!646563 () Bool)

(declare-fun isBalanced!2506 (Conc!8071) Bool)

(assert (=> d!646563 (= (inv!32976 localTotalInput!17) (isBalanced!2506 (c!341619 localTotalInput!17)))))

(declare-fun bs!445925 () Bool)

(assert (= bs!445925 d!646563))

(declare-fun m!2597685 () Bool)

(assert (=> bs!445925 m!2597685))

(assert (=> start!209302 d!646563))

(declare-fun d!646565 () Bool)

(declare-fun res!929804 () Bool)

(declare-fun e!1380167 () Bool)

(assert (=> d!646565 (=> (not res!929804) (not e!1380167))))

(assert (=> d!646565 (= res!929804 ((_ is HashMap!2850) (cache!3231 thiss!29220)))))

(assert (=> d!646565 (= (inv!32977 thiss!29220) e!1380167)))

(declare-fun b!2157407 () Bool)

(declare-fun validCacheMapFurthestNullable!177 (MutableMap!2850 BalanceConc!15904) Bool)

(assert (=> b!2157407 (= e!1380167 (validCacheMapFurthestNullable!177 (cache!3231 thiss!29220) (totalInput!3381 thiss!29220)))))

(assert (= (and d!646565 res!929804) b!2157407))

(declare-fun m!2597687 () Bool)

(assert (=> b!2157407 m!2597687))

(assert (=> start!209302 d!646565))

(declare-fun d!646567 () Bool)

(declare-fun c!341623 () Bool)

(assert (=> d!646567 (= c!341623 ((_ is Node!8071) (c!341619 (totalInput!3381 thiss!29220))))))

(declare-fun e!1380172 () Bool)

(assert (=> d!646567 (= (inv!32975 (c!341619 (totalInput!3381 thiss!29220))) e!1380172)))

(declare-fun b!2157414 () Bool)

(declare-fun inv!32978 (Conc!8071) Bool)

(assert (=> b!2157414 (= e!1380172 (inv!32978 (c!341619 (totalInput!3381 thiss!29220))))))

(declare-fun b!2157415 () Bool)

(declare-fun e!1380173 () Bool)

(assert (=> b!2157415 (= e!1380172 e!1380173)))

(declare-fun res!929807 () Bool)

(assert (=> b!2157415 (= res!929807 (not ((_ is Leaf!11806) (c!341619 (totalInput!3381 thiss!29220)))))))

(assert (=> b!2157415 (=> res!929807 e!1380173)))

(declare-fun b!2157416 () Bool)

(declare-fun inv!32979 (Conc!8071) Bool)

(assert (=> b!2157416 (= e!1380173 (inv!32979 (c!341619 (totalInput!3381 thiss!29220))))))

(assert (= (and d!646567 c!341623) b!2157414))

(assert (= (and d!646567 (not c!341623)) b!2157415))

(assert (= (and b!2157415 (not res!929807)) b!2157416))

(declare-fun m!2597689 () Bool)

(assert (=> b!2157414 m!2597689))

(declare-fun m!2597691 () Bool)

(assert (=> b!2157416 m!2597691))

(assert (=> b!2157399 d!646567))

(declare-fun d!646569 () Bool)

(assert (=> d!646569 (= (inv!32976 (totalInput!3381 thiss!29220)) (isBalanced!2506 (c!341619 (totalInput!3381 thiss!29220))))))

(declare-fun bs!445926 () Bool)

(assert (= bs!445926 d!646569))

(declare-fun m!2597693 () Bool)

(assert (=> bs!445926 m!2597693))

(assert (=> b!2157403 d!646569))

(declare-fun d!646571 () Bool)

(declare-fun c!341624 () Bool)

(assert (=> d!646571 (= c!341624 ((_ is Node!8071) (c!341619 localTotalInput!17)))))

(declare-fun e!1380174 () Bool)

(assert (=> d!646571 (= (inv!32975 (c!341619 localTotalInput!17)) e!1380174)))

(declare-fun b!2157417 () Bool)

(assert (=> b!2157417 (= e!1380174 (inv!32978 (c!341619 localTotalInput!17)))))

(declare-fun b!2157418 () Bool)

(declare-fun e!1380175 () Bool)

(assert (=> b!2157418 (= e!1380174 e!1380175)))

(declare-fun res!929808 () Bool)

(assert (=> b!2157418 (= res!929808 (not ((_ is Leaf!11806) (c!341619 localTotalInput!17))))))

(assert (=> b!2157418 (=> res!929808 e!1380175)))

(declare-fun b!2157419 () Bool)

(assert (=> b!2157419 (= e!1380175 (inv!32979 (c!341619 localTotalInput!17)))))

(assert (= (and d!646571 c!341624) b!2157417))

(assert (= (and d!646571 (not c!341624)) b!2157418))

(assert (= (and b!2157418 (not res!929808)) b!2157419))

(declare-fun m!2597695 () Bool)

(assert (=> b!2157417 m!2597695))

(declare-fun m!2597697 () Bool)

(assert (=> b!2157419 m!2597697))

(assert (=> b!2157396 d!646571))

(declare-fun d!646573 () Bool)

(assert (=> d!646573 (= (array_inv!3204 (_keys!3233 (v!29335 (underlying!6067 (v!29336 (underlying!6068 (cache!3231 thiss!29220))))))) (bvsge (size!19477 (_keys!3233 (v!29335 (underlying!6067 (v!29336 (underlying!6068 (cache!3231 thiss!29220))))))) #b00000000000000000000000000000000))))

(assert (=> b!2157400 d!646573))

(declare-fun d!646575 () Bool)

(assert (=> d!646575 (= (array_inv!3205 (_values!3216 (v!29335 (underlying!6067 (v!29336 (underlying!6068 (cache!3231 thiss!29220))))))) (bvsge (size!19478 (_values!3216 (v!29335 (underlying!6067 (v!29336 (underlying!6068 (cache!3231 thiss!29220))))))) #b00000000000000000000000000000000))))

(assert (=> b!2157400 d!646575))

(declare-fun tp!672156 () Bool)

(declare-fun e!1380180 () Bool)

(declare-fun b!2157428 () Bool)

(declare-fun tp!672157 () Bool)

(assert (=> b!2157428 (= e!1380180 (and (inv!32975 (left!19185 (c!341619 (totalInput!3381 thiss!29220)))) tp!672156 (inv!32975 (right!19515 (c!341619 (totalInput!3381 thiss!29220)))) tp!672157))))

(declare-fun b!2157430 () Bool)

(declare-fun e!1380181 () Bool)

(declare-fun tp!672158 () Bool)

(assert (=> b!2157430 (= e!1380181 tp!672158)))

(declare-fun b!2157429 () Bool)

(declare-fun inv!32980 (IArray!16147) Bool)

(assert (=> b!2157429 (= e!1380180 (and (inv!32980 (xs!11013 (c!341619 (totalInput!3381 thiss!29220)))) e!1380181))))

(assert (=> b!2157399 (= tp!672145 (and (inv!32975 (c!341619 (totalInput!3381 thiss!29220))) e!1380180))))

(assert (= (and b!2157399 ((_ is Node!8071) (c!341619 (totalInput!3381 thiss!29220)))) b!2157428))

(assert (= b!2157429 b!2157430))

(assert (= (and b!2157399 ((_ is Leaf!11806) (c!341619 (totalInput!3381 thiss!29220)))) b!2157429))

(declare-fun m!2597699 () Bool)

(assert (=> b!2157428 m!2597699))

(declare-fun m!2597701 () Bool)

(assert (=> b!2157428 m!2597701))

(declare-fun m!2597703 () Bool)

(assert (=> b!2157429 m!2597703))

(assert (=> b!2157399 m!2597679))

(declare-fun setNonEmpty!17781 () Bool)

(declare-fun setElem!17781 () Context!3010)

(declare-fun tp!672176 () Bool)

(declare-fun setRes!17781 () Bool)

(declare-fun e!1380190 () Bool)

(declare-fun inv!32981 (Context!3010) Bool)

(assert (=> setNonEmpty!17781 (= setRes!17781 (and tp!672176 (inv!32981 setElem!17781) e!1380190))))

(declare-fun mapDefault!13871 () List!25013)

(declare-fun setRest!17781 () (InoxSet Context!3010))

(assert (=> setNonEmpty!17781 (= (_1!14657 (_1!14658 (h!30330 mapDefault!13871))) ((_ map or) (store ((as const (Array Context!3010 Bool)) false) setElem!17781 true) setRest!17781))))

(declare-fun mapNonEmpty!13871 () Bool)

(declare-fun mapRes!13871 () Bool)

(declare-fun tp!672178 () Bool)

(declare-fun e!1380193 () Bool)

(assert (=> mapNonEmpty!13871 (= mapRes!13871 (and tp!672178 e!1380193))))

(declare-fun mapKey!13871 () (_ BitVec 32))

(declare-fun mapRest!13871 () (Array (_ BitVec 32) List!25013))

(declare-fun mapValue!13871 () List!25013)

(assert (=> mapNonEmpty!13871 (= mapRest!13868 (store mapRest!13871 mapKey!13871 mapValue!13871))))

(declare-fun setIsEmpty!17781 () Bool)

(declare-fun setRes!17782 () Bool)

(assert (=> setIsEmpty!17781 setRes!17782))

(declare-fun tp!672173 () Bool)

(declare-fun setElem!17782 () Context!3010)

(declare-fun setNonEmpty!17782 () Bool)

(declare-fun e!1380192 () Bool)

(assert (=> setNonEmpty!17782 (= setRes!17782 (and tp!672173 (inv!32981 setElem!17782) e!1380192))))

(declare-fun setRest!17782 () (InoxSet Context!3010))

(assert (=> setNonEmpty!17782 (= (_1!14657 (_1!14658 (h!30330 mapValue!13871))) ((_ map or) (store ((as const (Array Context!3010 Bool)) false) setElem!17782 true) setRest!17782))))

(declare-fun b!2157441 () Bool)

(declare-fun tp!672175 () Bool)

(assert (=> b!2157441 (= e!1380190 tp!672175)))

(declare-fun b!2157442 () Bool)

(declare-fun e!1380191 () Bool)

(declare-fun tp!672179 () Bool)

(assert (=> b!2157442 (= e!1380191 (and setRes!17781 tp!672179))))

(declare-fun condSetEmpty!17781 () Bool)

(assert (=> b!2157442 (= condSetEmpty!17781 (= (_1!14657 (_1!14658 (h!30330 mapDefault!13871))) ((as const (Array Context!3010 Bool)) false)))))

(declare-fun condMapEmpty!13871 () Bool)

(assert (=> mapNonEmpty!13868 (= condMapEmpty!13871 (= mapRest!13868 ((as const (Array (_ BitVec 32) List!25013)) mapDefault!13871)))))

(assert (=> mapNonEmpty!13868 (= tp!672143 (and e!1380191 mapRes!13871))))

(declare-fun b!2157443 () Bool)

(declare-fun tp!672177 () Bool)

(assert (=> b!2157443 (= e!1380193 (and setRes!17782 tp!672177))))

(declare-fun condSetEmpty!17782 () Bool)

(assert (=> b!2157443 (= condSetEmpty!17782 (= (_1!14657 (_1!14658 (h!30330 mapValue!13871))) ((as const (Array Context!3010 Bool)) false)))))

(declare-fun setIsEmpty!17782 () Bool)

(assert (=> setIsEmpty!17782 setRes!17781))

(declare-fun b!2157444 () Bool)

(declare-fun tp!672174 () Bool)

(assert (=> b!2157444 (= e!1380192 tp!672174)))

(declare-fun mapIsEmpty!13871 () Bool)

(assert (=> mapIsEmpty!13871 mapRes!13871))

(assert (= (and mapNonEmpty!13868 condMapEmpty!13871) mapIsEmpty!13871))

(assert (= (and mapNonEmpty!13868 (not condMapEmpty!13871)) mapNonEmpty!13871))

(assert (= (and b!2157443 condSetEmpty!17782) setIsEmpty!17781))

(assert (= (and b!2157443 (not condSetEmpty!17782)) setNonEmpty!17782))

(assert (= setNonEmpty!17782 b!2157444))

(assert (= (and mapNonEmpty!13871 ((_ is Cons!24929) mapValue!13871)) b!2157443))

(assert (= (and b!2157442 condSetEmpty!17781) setIsEmpty!17782))

(assert (= (and b!2157442 (not condSetEmpty!17781)) setNonEmpty!17781))

(assert (= setNonEmpty!17781 b!2157441))

(assert (= (and mapNonEmpty!13868 ((_ is Cons!24929) mapDefault!13871)) b!2157442))

(declare-fun m!2597705 () Bool)

(assert (=> setNonEmpty!17781 m!2597705))

(declare-fun m!2597707 () Bool)

(assert (=> mapNonEmpty!13871 m!2597707))

(declare-fun m!2597709 () Bool)

(assert (=> setNonEmpty!17782 m!2597709))

(declare-fun b!2157451 () Bool)

(declare-fun e!1380198 () Bool)

(declare-fun setRes!17785 () Bool)

(declare-fun tp!672186 () Bool)

(assert (=> b!2157451 (= e!1380198 (and setRes!17785 tp!672186))))

(declare-fun condSetEmpty!17785 () Bool)

(assert (=> b!2157451 (= condSetEmpty!17785 (= (_1!14657 (_1!14658 (h!30330 mapValue!13868))) ((as const (Array Context!3010 Bool)) false)))))

(assert (=> mapNonEmpty!13868 (= tp!672149 e!1380198)))

(declare-fun setIsEmpty!17785 () Bool)

(assert (=> setIsEmpty!17785 setRes!17785))

(declare-fun b!2157452 () Bool)

(declare-fun e!1380199 () Bool)

(declare-fun tp!672187 () Bool)

(assert (=> b!2157452 (= e!1380199 tp!672187)))

(declare-fun tp!672188 () Bool)

(declare-fun setElem!17785 () Context!3010)

(declare-fun setNonEmpty!17785 () Bool)

(assert (=> setNonEmpty!17785 (= setRes!17785 (and tp!672188 (inv!32981 setElem!17785) e!1380199))))

(declare-fun setRest!17785 () (InoxSet Context!3010))

(assert (=> setNonEmpty!17785 (= (_1!14657 (_1!14658 (h!30330 mapValue!13868))) ((_ map or) (store ((as const (Array Context!3010 Bool)) false) setElem!17785 true) setRest!17785))))

(assert (= (and b!2157451 condSetEmpty!17785) setIsEmpty!17785))

(assert (= (and b!2157451 (not condSetEmpty!17785)) setNonEmpty!17785))

(assert (= setNonEmpty!17785 b!2157452))

(assert (= (and mapNonEmpty!13868 ((_ is Cons!24929) mapValue!13868)) b!2157451))

(declare-fun m!2597711 () Bool)

(assert (=> setNonEmpty!17785 m!2597711))

(declare-fun b!2157453 () Bool)

(declare-fun e!1380200 () Bool)

(declare-fun setRes!17786 () Bool)

(declare-fun tp!672189 () Bool)

(assert (=> b!2157453 (= e!1380200 (and setRes!17786 tp!672189))))

(declare-fun condSetEmpty!17786 () Bool)

(assert (=> b!2157453 (= condSetEmpty!17786 (= (_1!14657 (_1!14658 (h!30330 mapDefault!13868))) ((as const (Array Context!3010 Bool)) false)))))

(assert (=> b!2157398 (= tp!672142 e!1380200)))

(declare-fun setIsEmpty!17786 () Bool)

(assert (=> setIsEmpty!17786 setRes!17786))

(declare-fun b!2157454 () Bool)

(declare-fun e!1380201 () Bool)

(declare-fun tp!672190 () Bool)

(assert (=> b!2157454 (= e!1380201 tp!672190)))

(declare-fun setNonEmpty!17786 () Bool)

(declare-fun tp!672191 () Bool)

(declare-fun setElem!17786 () Context!3010)

(assert (=> setNonEmpty!17786 (= setRes!17786 (and tp!672191 (inv!32981 setElem!17786) e!1380201))))

(declare-fun setRest!17786 () (InoxSet Context!3010))

(assert (=> setNonEmpty!17786 (= (_1!14657 (_1!14658 (h!30330 mapDefault!13868))) ((_ map or) (store ((as const (Array Context!3010 Bool)) false) setElem!17786 true) setRest!17786))))

(assert (= (and b!2157453 condSetEmpty!17786) setIsEmpty!17786))

(assert (= (and b!2157453 (not condSetEmpty!17786)) setNonEmpty!17786))

(assert (= setNonEmpty!17786 b!2157454))

(assert (= (and b!2157398 ((_ is Cons!24929) mapDefault!13868)) b!2157453))

(declare-fun m!2597713 () Bool)

(assert (=> setNonEmpty!17786 m!2597713))

(declare-fun tp!672192 () Bool)

(declare-fun tp!672193 () Bool)

(declare-fun b!2157455 () Bool)

(declare-fun e!1380202 () Bool)

(assert (=> b!2157455 (= e!1380202 (and (inv!32975 (left!19185 (c!341619 localTotalInput!17))) tp!672192 (inv!32975 (right!19515 (c!341619 localTotalInput!17))) tp!672193))))

(declare-fun b!2157457 () Bool)

(declare-fun e!1380203 () Bool)

(declare-fun tp!672194 () Bool)

(assert (=> b!2157457 (= e!1380203 tp!672194)))

(declare-fun b!2157456 () Bool)

(assert (=> b!2157456 (= e!1380202 (and (inv!32980 (xs!11013 (c!341619 localTotalInput!17))) e!1380203))))

(assert (=> b!2157396 (= tp!672147 (and (inv!32975 (c!341619 localTotalInput!17)) e!1380202))))

(assert (= (and b!2157396 ((_ is Node!8071) (c!341619 localTotalInput!17))) b!2157455))

(assert (= b!2157456 b!2157457))

(assert (= (and b!2157396 ((_ is Leaf!11806) (c!341619 localTotalInput!17))) b!2157456))

(declare-fun m!2597715 () Bool)

(assert (=> b!2157455 m!2597715))

(declare-fun m!2597717 () Bool)

(assert (=> b!2157455 m!2597717))

(declare-fun m!2597719 () Bool)

(assert (=> b!2157456 m!2597719))

(assert (=> b!2157396 m!2597673))

(declare-fun b!2157458 () Bool)

(declare-fun e!1380204 () Bool)

(declare-fun setRes!17787 () Bool)

(declare-fun tp!672195 () Bool)

(assert (=> b!2157458 (= e!1380204 (and setRes!17787 tp!672195))))

(declare-fun condSetEmpty!17787 () Bool)

(assert (=> b!2157458 (= condSetEmpty!17787 (= (_1!14657 (_1!14658 (h!30330 (zeroValue!3194 (v!29335 (underlying!6067 (v!29336 (underlying!6068 (cache!3231 thiss!29220))))))))) ((as const (Array Context!3010 Bool)) false)))))

(assert (=> b!2157400 (= tp!672141 e!1380204)))

(declare-fun setIsEmpty!17787 () Bool)

(assert (=> setIsEmpty!17787 setRes!17787))

(declare-fun b!2157459 () Bool)

(declare-fun e!1380205 () Bool)

(declare-fun tp!672196 () Bool)

(assert (=> b!2157459 (= e!1380205 tp!672196)))

(declare-fun tp!672197 () Bool)

(declare-fun setNonEmpty!17787 () Bool)

(declare-fun setElem!17787 () Context!3010)

(assert (=> setNonEmpty!17787 (= setRes!17787 (and tp!672197 (inv!32981 setElem!17787) e!1380205))))

(declare-fun setRest!17787 () (InoxSet Context!3010))

(assert (=> setNonEmpty!17787 (= (_1!14657 (_1!14658 (h!30330 (zeroValue!3194 (v!29335 (underlying!6067 (v!29336 (underlying!6068 (cache!3231 thiss!29220))))))))) ((_ map or) (store ((as const (Array Context!3010 Bool)) false) setElem!17787 true) setRest!17787))))

(assert (= (and b!2157458 condSetEmpty!17787) setIsEmpty!17787))

(assert (= (and b!2157458 (not condSetEmpty!17787)) setNonEmpty!17787))

(assert (= setNonEmpty!17787 b!2157459))

(assert (= (and b!2157400 ((_ is Cons!24929) (zeroValue!3194 (v!29335 (underlying!6067 (v!29336 (underlying!6068 (cache!3231 thiss!29220)))))))) b!2157458))

(declare-fun m!2597721 () Bool)

(assert (=> setNonEmpty!17787 m!2597721))

(declare-fun b!2157460 () Bool)

(declare-fun e!1380206 () Bool)

(declare-fun setRes!17788 () Bool)

(declare-fun tp!672198 () Bool)

(assert (=> b!2157460 (= e!1380206 (and setRes!17788 tp!672198))))

(declare-fun condSetEmpty!17788 () Bool)

(assert (=> b!2157460 (= condSetEmpty!17788 (= (_1!14657 (_1!14658 (h!30330 (minValue!3194 (v!29335 (underlying!6067 (v!29336 (underlying!6068 (cache!3231 thiss!29220))))))))) ((as const (Array Context!3010 Bool)) false)))))

(assert (=> b!2157400 (= tp!672144 e!1380206)))

(declare-fun setIsEmpty!17788 () Bool)

(assert (=> setIsEmpty!17788 setRes!17788))

(declare-fun b!2157461 () Bool)

(declare-fun e!1380207 () Bool)

(declare-fun tp!672199 () Bool)

(assert (=> b!2157461 (= e!1380207 tp!672199)))

(declare-fun setElem!17788 () Context!3010)

(declare-fun setNonEmpty!17788 () Bool)

(declare-fun tp!672200 () Bool)

(assert (=> setNonEmpty!17788 (= setRes!17788 (and tp!672200 (inv!32981 setElem!17788) e!1380207))))

(declare-fun setRest!17788 () (InoxSet Context!3010))

(assert (=> setNonEmpty!17788 (= (_1!14657 (_1!14658 (h!30330 (minValue!3194 (v!29335 (underlying!6067 (v!29336 (underlying!6068 (cache!3231 thiss!29220))))))))) ((_ map or) (store ((as const (Array Context!3010 Bool)) false) setElem!17788 true) setRest!17788))))

(assert (= (and b!2157460 condSetEmpty!17788) setIsEmpty!17788))

(assert (= (and b!2157460 (not condSetEmpty!17788)) setNonEmpty!17788))

(assert (= setNonEmpty!17788 b!2157461))

(assert (= (and b!2157400 ((_ is Cons!24929) (minValue!3194 (v!29335 (underlying!6067 (v!29336 (underlying!6068 (cache!3231 thiss!29220)))))))) b!2157460))

(declare-fun m!2597723 () Bool)

(assert (=> setNonEmpty!17788 m!2597723))

(check-sat (not setNonEmpty!17781) (not b!2157452) (not b!2157453) (not setNonEmpty!17787) (not b!2157417) (not b!2157443) (not setNonEmpty!17782) (not b!2157461) (not b!2157444) (not b!2157430) (not setNonEmpty!17788) (not b!2157451) (not d!646563) (not b!2157442) (not b!2157399) (not b!2157458) (not b!2157396) (not d!646569) (not b!2157459) (not b!2157454) (not b!2157441) (not b!2157429) (not b_next!64437) (not b!2157456) b_and!173351 (not b_next!64439) (not b!2157428) (not b!2157416) (not b!2157419) (not mapNonEmpty!13871) (not b!2157457) (not b!2157407) (not setNonEmpty!17785) (not b!2157455) b_and!173349 (not b!2157414) (not b!2157460) (not setNonEmpty!17786))
(check-sat b_and!173349 b_and!173351 (not b_next!64437) (not b_next!64439))

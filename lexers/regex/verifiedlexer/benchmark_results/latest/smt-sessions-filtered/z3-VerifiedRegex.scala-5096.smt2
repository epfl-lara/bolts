; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!261082 () Bool)

(assert start!261082)

(declare-fun b!2679930 () Bool)

(declare-fun b_free!75601 () Bool)

(declare-fun b_next!76305 () Bool)

(assert (=> b!2679930 (= b_free!75601 (not b_next!76305))))

(declare-fun tp!847247 () Bool)

(declare-fun b_and!198397 () Bool)

(assert (=> b!2679930 (= tp!847247 b_and!198397)))

(declare-fun b!2679924 () Bool)

(declare-fun b_free!75603 () Bool)

(declare-fun b_next!76307 () Bool)

(assert (=> b!2679924 (= b_free!75603 (not b_next!76307))))

(declare-fun tp!847254 () Bool)

(declare-fun b_and!198399 () Bool)

(assert (=> b!2679924 (= tp!847254 b_and!198399)))

(declare-fun tp!847252 () Bool)

(declare-fun e!1689262 () Bool)

(declare-fun e!1689265 () Bool)

(declare-datatypes ((C!15872 0))(
  ( (C!15873 (val!9870 Int)) )
))
(declare-datatypes ((Regex!7857 0))(
  ( (ElementMatch!7857 (c!431785 C!15872)) (Concat!12791 (regOne!16226 Regex!7857) (regTwo!16226 Regex!7857)) (EmptyExpr!7857) (Star!7857 (reg!8186 Regex!7857)) (EmptyLang!7857) (Union!7857 (regOne!16227 Regex!7857) (regTwo!16227 Regex!7857)) )
))
(declare-datatypes ((Hashable!3368 0))(
  ( (HashableExt!3367 (__x!19704 Int)) )
))
(declare-datatypes ((List!30934 0))(
  ( (Nil!30834) (Cons!30834 (h!36254 Regex!7857) (t!224435 List!30934)) )
))
(declare-datatypes ((Context!4262 0))(
  ( (Context!4263 (exprs!2631 List!30934)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple3!4146 0))(
  ( (tuple3!4147 (_1!17692 (InoxSet Context!4262)) (_2!17692 Int) (_3!2543 Int)) )
))
(declare-datatypes ((tuple2!30298 0))(
  ( (tuple2!30299 (_1!17693 tuple3!4146) (_2!17693 Int)) )
))
(declare-datatypes ((List!30935 0))(
  ( (Nil!30835) (Cons!30835 (h!36255 tuple2!30298) (t!224436 List!30935)) )
))
(declare-datatypes ((array!12311 0))(
  ( (array!12312 (arr!5498 (Array (_ BitVec 32) List!30935)) (size!23836 (_ BitVec 32))) )
))
(declare-datatypes ((array!12313 0))(
  ( (array!12314 (arr!5499 (Array (_ BitVec 32) (_ BitVec 64))) (size!23837 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6904 0))(
  ( (LongMapFixedSize!6905 (defaultEntry!3837 Int) (mask!9117 (_ BitVec 32)) (extraKeys!3701 (_ BitVec 32)) (zeroValue!3711 List!30935) (minValue!3711 List!30935) (_size!6947 (_ BitVec 32)) (_keys!3752 array!12313) (_values!3733 array!12311) (_vacant!3513 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!13617 0))(
  ( (Cell!13618 (v!32685 LongMapFixedSize!6904)) )
))
(declare-datatypes ((MutLongMap!3452 0))(
  ( (LongMap!3452 (underlying!7107 Cell!13617)) (MutLongMapExt!3451 (__x!19705 Int)) )
))
(declare-datatypes ((Cell!13619 0))(
  ( (Cell!13620 (v!32686 MutLongMap!3452)) )
))
(declare-datatypes ((MutableMap!3358 0))(
  ( (MutableMapExt!3357 (__x!19706 Int)) (HashMap!3358 (underlying!7108 Cell!13619) (hashF!5400 Hashable!3368) (_size!6948 (_ BitVec 32)) (defaultValue!3529 Int)) )
))
(declare-datatypes ((List!30936 0))(
  ( (Nil!30836) (Cons!30836 (h!36256 C!15872) (t!224437 List!30936)) )
))
(declare-datatypes ((IArray!19311 0))(
  ( (IArray!19312 (innerList!9713 List!30936)) )
))
(declare-datatypes ((Conc!9653 0))(
  ( (Node!9653 (left!23869 Conc!9653) (right!24199 Conc!9653) (csize!19536 Int) (cheight!9864 Int)) (Leaf!14750 (xs!12683 IArray!19311) (csize!19537 Int)) (Empty!9653) )
))
(declare-datatypes ((BalanceConc!18920 0))(
  ( (BalanceConc!18921 (c!431786 Conc!9653)) )
))
(declare-datatypes ((CacheFurthestNullable!1106 0))(
  ( (CacheFurthestNullable!1107 (cache!3505 MutableMap!3358) (totalInput!3756 BalanceConc!18920)) )
))
(declare-fun thiss!29108 () CacheFurthestNullable!1106)

(declare-fun tp!847249 () Bool)

(declare-fun array_inv!3923 (array!12313) Bool)

(declare-fun array_inv!3924 (array!12311) Bool)

(assert (=> b!2679924 (= e!1689265 (and tp!847254 tp!847252 tp!847249 (array_inv!3923 (_keys!3752 (v!32685 (underlying!7107 (v!32686 (underlying!7108 (cache!3505 thiss!29108))))))) (array_inv!3924 (_values!3733 (v!32685 (underlying!7107 (v!32686 (underlying!7108 (cache!3505 thiss!29108))))))) e!1689262))))

(declare-fun b!2679925 () Bool)

(declare-fun e!1689267 () Bool)

(declare-fun e!1689264 () Bool)

(declare-fun lt!944036 () MutLongMap!3452)

(get-info :version)

(assert (=> b!2679925 (= e!1689267 (and e!1689264 ((_ is LongMap!3452) lt!944036)))))

(assert (=> b!2679925 (= lt!944036 (v!32686 (underlying!7108 (cache!3505 thiss!29108))))))

(assert (=> start!261082 (not ((_ is HashMap!3358) (cache!3505 thiss!29108)))))

(declare-fun e!1689263 () Bool)

(declare-fun inv!41865 (CacheFurthestNullable!1106) Bool)

(assert (=> start!261082 (and (inv!41865 thiss!29108) e!1689263)))

(declare-fun b!2679926 () Bool)

(declare-fun tp!847253 () Bool)

(declare-fun mapRes!15831 () Bool)

(assert (=> b!2679926 (= e!1689262 (and tp!847253 mapRes!15831))))

(declare-fun condMapEmpty!15831 () Bool)

(declare-fun mapDefault!15831 () List!30935)

(assert (=> b!2679926 (= condMapEmpty!15831 (= (arr!5498 (_values!3733 (v!32685 (underlying!7107 (v!32686 (underlying!7108 (cache!3505 thiss!29108))))))) ((as const (Array (_ BitVec 32) List!30935)) mapDefault!15831)))))

(declare-fun mapIsEmpty!15831 () Bool)

(assert (=> mapIsEmpty!15831 mapRes!15831))

(declare-fun b!2679927 () Bool)

(declare-fun e!1689261 () Bool)

(assert (=> b!2679927 (= e!1689264 e!1689261)))

(declare-fun e!1689268 () Bool)

(declare-fun e!1689266 () Bool)

(declare-fun b!2679928 () Bool)

(declare-fun inv!41866 (BalanceConc!18920) Bool)

(assert (=> b!2679928 (= e!1689263 (and e!1689266 (inv!41866 (totalInput!3756 thiss!29108)) e!1689268))))

(declare-fun b!2679929 () Bool)

(declare-fun tp!847250 () Bool)

(declare-fun inv!41867 (Conc!9653) Bool)

(assert (=> b!2679929 (= e!1689268 (and (inv!41867 (c!431786 (totalInput!3756 thiss!29108))) tp!847250))))

(assert (=> b!2679930 (= e!1689266 (and e!1689267 tp!847247))))

(declare-fun b!2679931 () Bool)

(assert (=> b!2679931 (= e!1689261 e!1689265)))

(declare-fun mapNonEmpty!15831 () Bool)

(declare-fun tp!847248 () Bool)

(declare-fun tp!847251 () Bool)

(assert (=> mapNonEmpty!15831 (= mapRes!15831 (and tp!847248 tp!847251))))

(declare-fun mapKey!15831 () (_ BitVec 32))

(declare-fun mapRest!15831 () (Array (_ BitVec 32) List!30935))

(declare-fun mapValue!15831 () List!30935)

(assert (=> mapNonEmpty!15831 (= (arr!5498 (_values!3733 (v!32685 (underlying!7107 (v!32686 (underlying!7108 (cache!3505 thiss!29108))))))) (store mapRest!15831 mapKey!15831 mapValue!15831))))

(assert (= (and b!2679926 condMapEmpty!15831) mapIsEmpty!15831))

(assert (= (and b!2679926 (not condMapEmpty!15831)) mapNonEmpty!15831))

(assert (= b!2679924 b!2679926))

(assert (= b!2679931 b!2679924))

(assert (= b!2679927 b!2679931))

(assert (= (and b!2679925 ((_ is LongMap!3452) (v!32686 (underlying!7108 (cache!3505 thiss!29108))))) b!2679927))

(assert (= b!2679930 b!2679925))

(assert (= (and b!2679928 ((_ is HashMap!3358) (cache!3505 thiss!29108))) b!2679930))

(assert (= b!2679928 b!2679929))

(assert (= start!261082 b!2679928))

(declare-fun m!3048339 () Bool)

(assert (=> mapNonEmpty!15831 m!3048339))

(declare-fun m!3048341 () Bool)

(assert (=> b!2679928 m!3048341))

(declare-fun m!3048343 () Bool)

(assert (=> b!2679929 m!3048343))

(declare-fun m!3048345 () Bool)

(assert (=> start!261082 m!3048345))

(declare-fun m!3048347 () Bool)

(assert (=> b!2679924 m!3048347))

(declare-fun m!3048349 () Bool)

(assert (=> b!2679924 m!3048349))

(check-sat (not b!2679924) b_and!198399 (not b_next!76305) (not start!261082) (not b!2679929) b_and!198397 (not mapNonEmpty!15831) (not b_next!76307) (not b!2679928) (not b!2679926))
(check-sat b_and!198397 b_and!198399 (not b_next!76305) (not b_next!76307))
(get-model)

(declare-fun d!766569 () Bool)

(declare-fun c!431789 () Bool)

(assert (=> d!766569 (= c!431789 ((_ is Node!9653) (c!431786 (totalInput!3756 thiss!29108))))))

(declare-fun e!1689273 () Bool)

(assert (=> d!766569 (= (inv!41867 (c!431786 (totalInput!3756 thiss!29108))) e!1689273)))

(declare-fun b!2679938 () Bool)

(declare-fun inv!41868 (Conc!9653) Bool)

(assert (=> b!2679938 (= e!1689273 (inv!41868 (c!431786 (totalInput!3756 thiss!29108))))))

(declare-fun b!2679939 () Bool)

(declare-fun e!1689274 () Bool)

(assert (=> b!2679939 (= e!1689273 e!1689274)))

(declare-fun res!1126666 () Bool)

(assert (=> b!2679939 (= res!1126666 (not ((_ is Leaf!14750) (c!431786 (totalInput!3756 thiss!29108)))))))

(assert (=> b!2679939 (=> res!1126666 e!1689274)))

(declare-fun b!2679940 () Bool)

(declare-fun inv!41869 (Conc!9653) Bool)

(assert (=> b!2679940 (= e!1689274 (inv!41869 (c!431786 (totalInput!3756 thiss!29108))))))

(assert (= (and d!766569 c!431789) b!2679938))

(assert (= (and d!766569 (not c!431789)) b!2679939))

(assert (= (and b!2679939 (not res!1126666)) b!2679940))

(declare-fun m!3048351 () Bool)

(assert (=> b!2679938 m!3048351))

(declare-fun m!3048353 () Bool)

(assert (=> b!2679940 m!3048353))

(assert (=> b!2679929 d!766569))

(declare-fun d!766571 () Bool)

(assert (=> d!766571 (= (array_inv!3923 (_keys!3752 (v!32685 (underlying!7107 (v!32686 (underlying!7108 (cache!3505 thiss!29108))))))) (bvsge (size!23837 (_keys!3752 (v!32685 (underlying!7107 (v!32686 (underlying!7108 (cache!3505 thiss!29108))))))) #b00000000000000000000000000000000))))

(assert (=> b!2679924 d!766571))

(declare-fun d!766573 () Bool)

(assert (=> d!766573 (= (array_inv!3924 (_values!3733 (v!32685 (underlying!7107 (v!32686 (underlying!7108 (cache!3505 thiss!29108))))))) (bvsge (size!23836 (_values!3733 (v!32685 (underlying!7107 (v!32686 (underlying!7108 (cache!3505 thiss!29108))))))) #b00000000000000000000000000000000))))

(assert (=> b!2679924 d!766573))

(declare-fun d!766575 () Bool)

(declare-fun isBalanced!2928 (Conc!9653) Bool)

(assert (=> d!766575 (= (inv!41866 (totalInput!3756 thiss!29108)) (isBalanced!2928 (c!431786 (totalInput!3756 thiss!29108))))))

(declare-fun bs!480153 () Bool)

(assert (= bs!480153 d!766575))

(declare-fun m!3048355 () Bool)

(assert (=> bs!480153 m!3048355))

(assert (=> b!2679928 d!766575))

(declare-fun d!766577 () Bool)

(declare-fun res!1126669 () Bool)

(declare-fun e!1689277 () Bool)

(assert (=> d!766577 (=> (not res!1126669) (not e!1689277))))

(assert (=> d!766577 (= res!1126669 ((_ is HashMap!3358) (cache!3505 thiss!29108)))))

(assert (=> d!766577 (= (inv!41865 thiss!29108) e!1689277)))

(declare-fun b!2679943 () Bool)

(declare-fun validCacheMapFurthestNullable!195 (MutableMap!3358 BalanceConc!18920) Bool)

(assert (=> b!2679943 (= e!1689277 (validCacheMapFurthestNullable!195 (cache!3505 thiss!29108) (totalInput!3756 thiss!29108)))))

(assert (= (and d!766577 res!1126669) b!2679943))

(declare-fun m!3048357 () Bool)

(assert (=> b!2679943 m!3048357))

(assert (=> start!261082 d!766577))

(declare-fun tp!847262 () Bool)

(declare-fun b!2679952 () Bool)

(declare-fun tp!847263 () Bool)

(declare-fun e!1689282 () Bool)

(assert (=> b!2679952 (= e!1689282 (and (inv!41867 (left!23869 (c!431786 (totalInput!3756 thiss!29108)))) tp!847263 (inv!41867 (right!24199 (c!431786 (totalInput!3756 thiss!29108)))) tp!847262))))

(declare-fun b!2679954 () Bool)

(declare-fun e!1689283 () Bool)

(declare-fun tp!847261 () Bool)

(assert (=> b!2679954 (= e!1689283 tp!847261)))

(declare-fun b!2679953 () Bool)

(declare-fun inv!41870 (IArray!19311) Bool)

(assert (=> b!2679953 (= e!1689282 (and (inv!41870 (xs!12683 (c!431786 (totalInput!3756 thiss!29108)))) e!1689283))))

(assert (=> b!2679929 (= tp!847250 (and (inv!41867 (c!431786 (totalInput!3756 thiss!29108))) e!1689282))))

(assert (= (and b!2679929 ((_ is Node!9653) (c!431786 (totalInput!3756 thiss!29108)))) b!2679952))

(assert (= b!2679953 b!2679954))

(assert (= (and b!2679929 ((_ is Leaf!14750) (c!431786 (totalInput!3756 thiss!29108)))) b!2679953))

(declare-fun m!3048359 () Bool)

(assert (=> b!2679952 m!3048359))

(declare-fun m!3048361 () Bool)

(assert (=> b!2679952 m!3048361))

(declare-fun m!3048363 () Bool)

(assert (=> b!2679953 m!3048363))

(assert (=> b!2679929 m!3048343))

(declare-fun e!1689288 () Bool)

(assert (=> b!2679924 (= tp!847252 e!1689288)))

(declare-fun b!2679961 () Bool)

(declare-fun setRes!20937 () Bool)

(declare-fun tp!847271 () Bool)

(assert (=> b!2679961 (= e!1689288 (and setRes!20937 tp!847271))))

(declare-fun condSetEmpty!20937 () Bool)

(assert (=> b!2679961 (= condSetEmpty!20937 (= (_1!17692 (_1!17693 (h!36255 (zeroValue!3711 (v!32685 (underlying!7107 (v!32686 (underlying!7108 (cache!3505 thiss!29108))))))))) ((as const (Array Context!4262 Bool)) false)))))

(declare-fun setIsEmpty!20937 () Bool)

(assert (=> setIsEmpty!20937 setRes!20937))

(declare-fun e!1689289 () Bool)

(declare-fun setNonEmpty!20937 () Bool)

(declare-fun tp!847270 () Bool)

(declare-fun setElem!20937 () Context!4262)

(declare-fun inv!41871 (Context!4262) Bool)

(assert (=> setNonEmpty!20937 (= setRes!20937 (and tp!847270 (inv!41871 setElem!20937) e!1689289))))

(declare-fun setRest!20937 () (InoxSet Context!4262))

(assert (=> setNonEmpty!20937 (= (_1!17692 (_1!17693 (h!36255 (zeroValue!3711 (v!32685 (underlying!7107 (v!32686 (underlying!7108 (cache!3505 thiss!29108))))))))) ((_ map or) (store ((as const (Array Context!4262 Bool)) false) setElem!20937 true) setRest!20937))))

(declare-fun b!2679962 () Bool)

(declare-fun tp!847272 () Bool)

(assert (=> b!2679962 (= e!1689289 tp!847272)))

(assert (= (and b!2679961 condSetEmpty!20937) setIsEmpty!20937))

(assert (= (and b!2679961 (not condSetEmpty!20937)) setNonEmpty!20937))

(assert (= setNonEmpty!20937 b!2679962))

(assert (= (and b!2679924 ((_ is Cons!30835) (zeroValue!3711 (v!32685 (underlying!7107 (v!32686 (underlying!7108 (cache!3505 thiss!29108)))))))) b!2679961))

(declare-fun m!3048365 () Bool)

(assert (=> setNonEmpty!20937 m!3048365))

(declare-fun e!1689290 () Bool)

(assert (=> b!2679924 (= tp!847249 e!1689290)))

(declare-fun b!2679963 () Bool)

(declare-fun setRes!20938 () Bool)

(declare-fun tp!847274 () Bool)

(assert (=> b!2679963 (= e!1689290 (and setRes!20938 tp!847274))))

(declare-fun condSetEmpty!20938 () Bool)

(assert (=> b!2679963 (= condSetEmpty!20938 (= (_1!17692 (_1!17693 (h!36255 (minValue!3711 (v!32685 (underlying!7107 (v!32686 (underlying!7108 (cache!3505 thiss!29108))))))))) ((as const (Array Context!4262 Bool)) false)))))

(declare-fun setIsEmpty!20938 () Bool)

(assert (=> setIsEmpty!20938 setRes!20938))

(declare-fun e!1689291 () Bool)

(declare-fun setNonEmpty!20938 () Bool)

(declare-fun setElem!20938 () Context!4262)

(declare-fun tp!847273 () Bool)

(assert (=> setNonEmpty!20938 (= setRes!20938 (and tp!847273 (inv!41871 setElem!20938) e!1689291))))

(declare-fun setRest!20938 () (InoxSet Context!4262))

(assert (=> setNonEmpty!20938 (= (_1!17692 (_1!17693 (h!36255 (minValue!3711 (v!32685 (underlying!7107 (v!32686 (underlying!7108 (cache!3505 thiss!29108))))))))) ((_ map or) (store ((as const (Array Context!4262 Bool)) false) setElem!20938 true) setRest!20938))))

(declare-fun b!2679964 () Bool)

(declare-fun tp!847275 () Bool)

(assert (=> b!2679964 (= e!1689291 tp!847275)))

(assert (= (and b!2679963 condSetEmpty!20938) setIsEmpty!20938))

(assert (= (and b!2679963 (not condSetEmpty!20938)) setNonEmpty!20938))

(assert (= setNonEmpty!20938 b!2679964))

(assert (= (and b!2679924 ((_ is Cons!30835) (minValue!3711 (v!32685 (underlying!7107 (v!32686 (underlying!7108 (cache!3505 thiss!29108)))))))) b!2679963))

(declare-fun m!3048367 () Bool)

(assert (=> setNonEmpty!20938 m!3048367))

(declare-fun mapNonEmpty!15834 () Bool)

(declare-fun mapRes!15834 () Bool)

(declare-fun tp!847291 () Bool)

(declare-fun e!1689303 () Bool)

(assert (=> mapNonEmpty!15834 (= mapRes!15834 (and tp!847291 e!1689303))))

(declare-fun mapKey!15834 () (_ BitVec 32))

(declare-fun mapValue!15834 () List!30935)

(declare-fun mapRest!15834 () (Array (_ BitVec 32) List!30935))

(assert (=> mapNonEmpty!15834 (= mapRest!15831 (store mapRest!15834 mapKey!15834 mapValue!15834))))

(declare-fun b!2679975 () Bool)

(declare-fun e!1689300 () Bool)

(declare-fun setRes!20943 () Bool)

(declare-fun tp!847296 () Bool)

(assert (=> b!2679975 (= e!1689300 (and setRes!20943 tp!847296))))

(declare-fun condSetEmpty!20944 () Bool)

(declare-fun mapDefault!15834 () List!30935)

(assert (=> b!2679975 (= condSetEmpty!20944 (= (_1!17692 (_1!17693 (h!36255 mapDefault!15834))) ((as const (Array Context!4262 Bool)) false)))))

(declare-fun setIsEmpty!20943 () Bool)

(declare-fun setRes!20944 () Bool)

(assert (=> setIsEmpty!20943 setRes!20944))

(declare-fun setElem!20944 () Context!4262)

(declare-fun setNonEmpty!20943 () Bool)

(declare-fun e!1689301 () Bool)

(declare-fun tp!847294 () Bool)

(assert (=> setNonEmpty!20943 (= setRes!20943 (and tp!847294 (inv!41871 setElem!20944) e!1689301))))

(declare-fun setRest!20943 () (InoxSet Context!4262))

(assert (=> setNonEmpty!20943 (= (_1!17692 (_1!17693 (h!36255 mapDefault!15834))) ((_ map or) (store ((as const (Array Context!4262 Bool)) false) setElem!20944 true) setRest!20943))))

(declare-fun b!2679976 () Bool)

(declare-fun tp!847293 () Bool)

(assert (=> b!2679976 (= e!1689303 (and setRes!20944 tp!847293))))

(declare-fun condSetEmpty!20943 () Bool)

(assert (=> b!2679976 (= condSetEmpty!20943 (= (_1!17692 (_1!17693 (h!36255 mapValue!15834))) ((as const (Array Context!4262 Bool)) false)))))

(declare-fun setIsEmpty!20944 () Bool)

(assert (=> setIsEmpty!20944 setRes!20943))

(declare-fun mapIsEmpty!15834 () Bool)

(assert (=> mapIsEmpty!15834 mapRes!15834))

(declare-fun condMapEmpty!15834 () Bool)

(assert (=> mapNonEmpty!15831 (= condMapEmpty!15834 (= mapRest!15831 ((as const (Array (_ BitVec 32) List!30935)) mapDefault!15834)))))

(assert (=> mapNonEmpty!15831 (= tp!847248 (and e!1689300 mapRes!15834))))

(declare-fun setNonEmpty!20944 () Bool)

(declare-fun tp!847295 () Bool)

(declare-fun setElem!20943 () Context!4262)

(declare-fun e!1689302 () Bool)

(assert (=> setNonEmpty!20944 (= setRes!20944 (and tp!847295 (inv!41871 setElem!20943) e!1689302))))

(declare-fun setRest!20944 () (InoxSet Context!4262))

(assert (=> setNonEmpty!20944 (= (_1!17692 (_1!17693 (h!36255 mapValue!15834))) ((_ map or) (store ((as const (Array Context!4262 Bool)) false) setElem!20943 true) setRest!20944))))

(declare-fun b!2679977 () Bool)

(declare-fun tp!847290 () Bool)

(assert (=> b!2679977 (= e!1689301 tp!847290)))

(declare-fun b!2679978 () Bool)

(declare-fun tp!847292 () Bool)

(assert (=> b!2679978 (= e!1689302 tp!847292)))

(assert (= (and mapNonEmpty!15831 condMapEmpty!15834) mapIsEmpty!15834))

(assert (= (and mapNonEmpty!15831 (not condMapEmpty!15834)) mapNonEmpty!15834))

(assert (= (and b!2679976 condSetEmpty!20943) setIsEmpty!20943))

(assert (= (and b!2679976 (not condSetEmpty!20943)) setNonEmpty!20944))

(assert (= setNonEmpty!20944 b!2679978))

(assert (= (and mapNonEmpty!15834 ((_ is Cons!30835) mapValue!15834)) b!2679976))

(assert (= (and b!2679975 condSetEmpty!20944) setIsEmpty!20944))

(assert (= (and b!2679975 (not condSetEmpty!20944)) setNonEmpty!20943))

(assert (= setNonEmpty!20943 b!2679977))

(assert (= (and mapNonEmpty!15831 ((_ is Cons!30835) mapDefault!15834)) b!2679975))

(declare-fun m!3048369 () Bool)

(assert (=> mapNonEmpty!15834 m!3048369))

(declare-fun m!3048371 () Bool)

(assert (=> setNonEmpty!20943 m!3048371))

(declare-fun m!3048373 () Bool)

(assert (=> setNonEmpty!20944 m!3048373))

(declare-fun e!1689304 () Bool)

(assert (=> mapNonEmpty!15831 (= tp!847251 e!1689304)))

(declare-fun b!2679979 () Bool)

(declare-fun setRes!20945 () Bool)

(declare-fun tp!847298 () Bool)

(assert (=> b!2679979 (= e!1689304 (and setRes!20945 tp!847298))))

(declare-fun condSetEmpty!20945 () Bool)

(assert (=> b!2679979 (= condSetEmpty!20945 (= (_1!17692 (_1!17693 (h!36255 mapValue!15831))) ((as const (Array Context!4262 Bool)) false)))))

(declare-fun setIsEmpty!20945 () Bool)

(assert (=> setIsEmpty!20945 setRes!20945))

(declare-fun tp!847297 () Bool)

(declare-fun e!1689305 () Bool)

(declare-fun setNonEmpty!20945 () Bool)

(declare-fun setElem!20945 () Context!4262)

(assert (=> setNonEmpty!20945 (= setRes!20945 (and tp!847297 (inv!41871 setElem!20945) e!1689305))))

(declare-fun setRest!20945 () (InoxSet Context!4262))

(assert (=> setNonEmpty!20945 (= (_1!17692 (_1!17693 (h!36255 mapValue!15831))) ((_ map or) (store ((as const (Array Context!4262 Bool)) false) setElem!20945 true) setRest!20945))))

(declare-fun b!2679980 () Bool)

(declare-fun tp!847299 () Bool)

(assert (=> b!2679980 (= e!1689305 tp!847299)))

(assert (= (and b!2679979 condSetEmpty!20945) setIsEmpty!20945))

(assert (= (and b!2679979 (not condSetEmpty!20945)) setNonEmpty!20945))

(assert (= setNonEmpty!20945 b!2679980))

(assert (= (and mapNonEmpty!15831 ((_ is Cons!30835) mapValue!15831)) b!2679979))

(declare-fun m!3048375 () Bool)

(assert (=> setNonEmpty!20945 m!3048375))

(declare-fun e!1689306 () Bool)

(assert (=> b!2679926 (= tp!847253 e!1689306)))

(declare-fun b!2679981 () Bool)

(declare-fun setRes!20946 () Bool)

(declare-fun tp!847301 () Bool)

(assert (=> b!2679981 (= e!1689306 (and setRes!20946 tp!847301))))

(declare-fun condSetEmpty!20946 () Bool)

(assert (=> b!2679981 (= condSetEmpty!20946 (= (_1!17692 (_1!17693 (h!36255 mapDefault!15831))) ((as const (Array Context!4262 Bool)) false)))))

(declare-fun setIsEmpty!20946 () Bool)

(assert (=> setIsEmpty!20946 setRes!20946))

(declare-fun setElem!20946 () Context!4262)

(declare-fun setNonEmpty!20946 () Bool)

(declare-fun e!1689307 () Bool)

(declare-fun tp!847300 () Bool)

(assert (=> setNonEmpty!20946 (= setRes!20946 (and tp!847300 (inv!41871 setElem!20946) e!1689307))))

(declare-fun setRest!20946 () (InoxSet Context!4262))

(assert (=> setNonEmpty!20946 (= (_1!17692 (_1!17693 (h!36255 mapDefault!15831))) ((_ map or) (store ((as const (Array Context!4262 Bool)) false) setElem!20946 true) setRest!20946))))

(declare-fun b!2679982 () Bool)

(declare-fun tp!847302 () Bool)

(assert (=> b!2679982 (= e!1689307 tp!847302)))

(assert (= (and b!2679981 condSetEmpty!20946) setIsEmpty!20946))

(assert (= (and b!2679981 (not condSetEmpty!20946)) setNonEmpty!20946))

(assert (= setNonEmpty!20946 b!2679982))

(assert (= (and b!2679926 ((_ is Cons!30835) mapDefault!15831)) b!2679981))

(declare-fun m!3048377 () Bool)

(assert (=> setNonEmpty!20946 m!3048377))

(check-sat (not setNonEmpty!20945) (not b!2679943) (not mapNonEmpty!15834) (not b_next!76305) (not b!2679954) (not setNonEmpty!20938) (not b!2679979) (not setNonEmpty!20943) (not b!2679938) (not b!2679981) (not b!2679963) (not b!2679940) (not setNonEmpty!20944) (not b!2679975) b_and!198399 (not setNonEmpty!20946) (not b!2679929) (not b!2679980) (not b!2679961) (not b!2679978) (not b!2679952) (not b!2679962) b_and!198397 (not setNonEmpty!20937) (not b!2679976) (not b!2679982) (not b!2679977) (not b_next!76307) (not b!2679964) (not d!766575) (not b!2679953))
(check-sat b_and!198397 b_and!198399 (not b_next!76305) (not b_next!76307))

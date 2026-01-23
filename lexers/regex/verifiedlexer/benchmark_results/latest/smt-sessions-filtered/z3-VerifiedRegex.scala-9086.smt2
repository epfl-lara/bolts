; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!486608 () Bool)

(assert start!486608)

(declare-fun b!4758382 () Bool)

(declare-fun b_free!129239 () Bool)

(declare-fun b_next!129943 () Bool)

(assert (=> b!4758382 (= b_free!129239 (not b_next!129943))))

(declare-fun tp!1352052 () Bool)

(declare-fun b_and!340847 () Bool)

(assert (=> b!4758382 (= tp!1352052 b_and!340847)))

(declare-fun b!4758390 () Bool)

(declare-fun b_free!129241 () Bool)

(declare-fun b_next!129945 () Bool)

(assert (=> b!4758390 (= b_free!129241 (not b_next!129945))))

(declare-fun tp!1352054 () Bool)

(declare-fun b_and!340849 () Bool)

(assert (=> b!4758390 (= tp!1352054 b_and!340849)))

(declare-fun e!2968912 () Bool)

(declare-fun e!2968905 () Bool)

(assert (=> b!4758382 (= e!2968912 (and e!2968905 tp!1352052))))

(declare-fun b!4758383 () Bool)

(declare-fun e!2968908 () Bool)

(declare-datatypes ((C!26256 0))(
  ( (C!26257 (val!20116 Int)) )
))
(declare-datatypes ((Regex!13029 0))(
  ( (ElementMatch!13029 (c!811923 C!26256)) (Concat!21348 (regOne!26570 Regex!13029) (regTwo!26570 Regex!13029)) (EmptyExpr!13029) (Star!13029 (reg!13358 Regex!13029)) (EmptyLang!13029) (Union!13029 (regOne!26571 Regex!13029) (regTwo!26571 Regex!13029)) )
))
(declare-datatypes ((List!53394 0))(
  ( (Nil!53270) (Cons!53270 (h!59681 Regex!13029) (t!360746 List!53394)) )
))
(declare-datatypes ((Context!5838 0))(
  ( (Context!5839 (exprs!3419 List!53394)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!55174 0))(
  ( (tuple2!55175 (_1!30881 (InoxSet Context!5838)) (_2!30881 Int)) )
))
(declare-datatypes ((tuple2!55176 0))(
  ( (tuple2!55177 (_1!30882 tuple2!55174) (_2!30882 Int)) )
))
(declare-datatypes ((List!53395 0))(
  ( (Nil!53271) (Cons!53271 (h!59682 tuple2!55176) (t!360747 List!53395)) )
))
(declare-datatypes ((List!53396 0))(
  ( (Nil!53272) (Cons!53272 (h!59683 C!26256) (t!360748 List!53396)) )
))
(declare-datatypes ((IArray!29001 0))(
  ( (IArray!29002 (innerList!14558 List!53396)) )
))
(declare-datatypes ((Conc!14470 0))(
  ( (Node!14470 (left!39060 Conc!14470) (right!39390 Conc!14470) (csize!29170 Int) (cheight!14681 Int)) (Leaf!23557 (xs!17776 IArray!29001) (csize!29171 Int)) (Empty!14470) )
))
(declare-datatypes ((Hashable!6492 0))(
  ( (HashableExt!6491 (__x!32241 Int)) )
))
(declare-datatypes ((array!17586 0))(
  ( (array!17587 (arr!7847 (Array (_ BitVec 32) (_ BitVec 64))) (size!36058 (_ BitVec 32))) )
))
(declare-datatypes ((array!17588 0))(
  ( (array!17589 (arr!7848 (Array (_ BitVec 32) List!53395)) (size!36059 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9662 0))(
  ( (LongMapFixedSize!9663 (defaultEntry!5245 Int) (mask!14532 (_ BitVec 32)) (extraKeys!5101 (_ BitVec 32)) (zeroValue!5114 List!53395) (minValue!5114 List!53395) (_size!9687 (_ BitVec 32)) (_keys!5166 array!17586) (_values!5139 array!17588) (_vacant!4896 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!19089 0))(
  ( (Cell!19090 (v!47336 LongMapFixedSize!9662)) )
))
(declare-datatypes ((MutLongMap!4831 0))(
  ( (LongMap!4831 (underlying!9869 Cell!19089)) (MutLongMapExt!4830 (__x!32242 Int)) )
))
(declare-datatypes ((Cell!19091 0))(
  ( (Cell!19092 (v!47337 MutLongMap!4831)) )
))
(declare-datatypes ((MutableMap!4715 0))(
  ( (MutableMapExt!4714 (__x!32243 Int)) (HashMap!4715 (underlying!9870 Cell!19091) (hashF!12302 Hashable!6492) (_size!9688 (_ BitVec 32)) (defaultValue!4886 Int)) )
))
(declare-datatypes ((BalanceConc!28430 0))(
  ( (BalanceConc!28431 (c!811924 Conc!14470)) )
))
(declare-datatypes ((CacheFindLongestMatch!628 0))(
  ( (CacheFindLongestMatch!629 (cache!4557 MutableMap!4715) (totalInput!4467 BalanceConc!28430)) )
))
(declare-fun thiss!28909 () CacheFindLongestMatch!628)

(declare-fun tp!1352046 () Bool)

(declare-fun inv!68726 (Conc!14470) Bool)

(assert (=> b!4758383 (= e!2968908 (and (inv!68726 (c!811924 (totalInput!4467 thiss!28909))) tp!1352046))))

(declare-fun e!2968906 () Bool)

(declare-fun b!4758384 () Bool)

(declare-fun inv!68727 (BalanceConc!28430) Bool)

(assert (=> b!4758384 (= e!2968906 (and e!2968912 (inv!68727 (totalInput!4467 thiss!28909)) e!2968908))))

(declare-fun b!4758385 () Bool)

(declare-fun e!2968909 () Bool)

(declare-fun e!2968910 () Bool)

(assert (=> b!4758385 (= e!2968909 e!2968910)))

(declare-fun mapNonEmpty!21488 () Bool)

(declare-fun mapRes!21488 () Bool)

(declare-fun tp!1352048 () Bool)

(declare-fun tp!1352047 () Bool)

(assert (=> mapNonEmpty!21488 (= mapRes!21488 (and tp!1352048 tp!1352047))))

(declare-fun mapValue!21488 () List!53395)

(declare-fun mapKey!21488 () (_ BitVec 32))

(declare-fun mapRest!21488 () (Array (_ BitVec 32) List!53395))

(assert (=> mapNonEmpty!21488 (= (arr!7848 (_values!5139 (v!47336 (underlying!9869 (v!47337 (underlying!9870 (cache!4557 thiss!28909))))))) (store mapRest!21488 mapKey!21488 mapValue!21488))))

(declare-fun b!4758386 () Bool)

(declare-fun e!2968915 () Bool)

(assert (=> b!4758386 (= e!2968915 e!2968909)))

(declare-fun b!4758387 () Bool)

(declare-fun lt!1923926 () MutLongMap!4831)

(get-info :version)

(assert (=> b!4758387 (= e!2968905 (and e!2968915 ((_ is LongMap!4831) lt!1923926)))))

(assert (=> b!4758387 (= lt!1923926 (v!47337 (underlying!9870 (cache!4557 thiss!28909))))))

(declare-fun b!4758388 () Bool)

(declare-fun res!2018575 () Bool)

(declare-fun e!2968913 () Bool)

(assert (=> b!4758388 (=> (not res!2018575) (not e!2968913))))

(declare-fun validCacheMapFindLongestMatch!115 (MutableMap!4715 BalanceConc!28430) Bool)

(assert (=> b!4758388 (= res!2018575 (validCacheMapFindLongestMatch!115 (cache!4557 thiss!28909) (totalInput!4467 thiss!28909)))))

(declare-fun res!2018574 () Bool)

(assert (=> start!486608 (=> (not res!2018574) (not e!2968913))))

(declare-fun localTotalInput!8 () BalanceConc!28430)

(assert (=> start!486608 (= res!2018574 (= localTotalInput!8 (totalInput!4467 thiss!28909)))))

(assert (=> start!486608 e!2968913))

(declare-fun e!2968911 () Bool)

(assert (=> start!486608 (and (inv!68727 localTotalInput!8) e!2968911)))

(declare-fun inv!68728 (CacheFindLongestMatch!628) Bool)

(assert (=> start!486608 (and (inv!68728 thiss!28909) e!2968906)))

(declare-fun b!4758389 () Bool)

(assert (=> b!4758389 (= e!2968913 (not ((_ is HashMap!4715) (cache!4557 thiss!28909))))))

(declare-fun tp!1352051 () Bool)

(declare-fun e!2968907 () Bool)

(declare-fun tp!1352050 () Bool)

(declare-fun array_inv!5647 (array!17586) Bool)

(declare-fun array_inv!5648 (array!17588) Bool)

(assert (=> b!4758390 (= e!2968910 (and tp!1352054 tp!1352051 tp!1352050 (array_inv!5647 (_keys!5166 (v!47336 (underlying!9869 (v!47337 (underlying!9870 (cache!4557 thiss!28909))))))) (array_inv!5648 (_values!5139 (v!47336 (underlying!9869 (v!47337 (underlying!9870 (cache!4557 thiss!28909))))))) e!2968907))))

(declare-fun b!4758391 () Bool)

(declare-fun tp!1352049 () Bool)

(assert (=> b!4758391 (= e!2968911 (and (inv!68726 (c!811924 localTotalInput!8)) tp!1352049))))

(declare-fun mapIsEmpty!21488 () Bool)

(assert (=> mapIsEmpty!21488 mapRes!21488))

(declare-fun b!4758392 () Bool)

(declare-fun tp!1352053 () Bool)

(assert (=> b!4758392 (= e!2968907 (and tp!1352053 mapRes!21488))))

(declare-fun condMapEmpty!21488 () Bool)

(declare-fun mapDefault!21488 () List!53395)

(assert (=> b!4758392 (= condMapEmpty!21488 (= (arr!7848 (_values!5139 (v!47336 (underlying!9869 (v!47337 (underlying!9870 (cache!4557 thiss!28909))))))) ((as const (Array (_ BitVec 32) List!53395)) mapDefault!21488)))))

(assert (= (and start!486608 res!2018574) b!4758388))

(assert (= (and b!4758388 res!2018575) b!4758389))

(assert (= start!486608 b!4758391))

(assert (= (and b!4758392 condMapEmpty!21488) mapIsEmpty!21488))

(assert (= (and b!4758392 (not condMapEmpty!21488)) mapNonEmpty!21488))

(assert (= b!4758390 b!4758392))

(assert (= b!4758385 b!4758390))

(assert (= b!4758386 b!4758385))

(assert (= (and b!4758387 ((_ is LongMap!4831) (v!47337 (underlying!9870 (cache!4557 thiss!28909))))) b!4758386))

(assert (= b!4758382 b!4758387))

(assert (= (and b!4758384 ((_ is HashMap!4715) (cache!4557 thiss!28909))) b!4758382))

(assert (= b!4758384 b!4758383))

(assert (= start!486608 b!4758384))

(declare-fun m!5727917 () Bool)

(assert (=> b!4758383 m!5727917))

(declare-fun m!5727919 () Bool)

(assert (=> b!4758384 m!5727919))

(declare-fun m!5727921 () Bool)

(assert (=> b!4758388 m!5727921))

(declare-fun m!5727923 () Bool)

(assert (=> mapNonEmpty!21488 m!5727923))

(declare-fun m!5727925 () Bool)

(assert (=> b!4758390 m!5727925))

(declare-fun m!5727927 () Bool)

(assert (=> b!4758390 m!5727927))

(declare-fun m!5727929 () Bool)

(assert (=> b!4758391 m!5727929))

(declare-fun m!5727931 () Bool)

(assert (=> start!486608 m!5727931))

(declare-fun m!5727933 () Bool)

(assert (=> start!486608 m!5727933))

(check-sat (not b!4758384) (not b!4758391) (not b!4758392) (not b!4758390) (not b_next!129945) (not b_next!129943) (not b!4758383) b_and!340847 (not start!486608) (not mapNonEmpty!21488) (not b!4758388) b_and!340849)
(check-sat b_and!340847 b_and!340849 (not b_next!129945) (not b_next!129943))
(get-model)

(declare-fun d!1521111 () Bool)

(declare-fun c!811927 () Bool)

(assert (=> d!1521111 (= c!811927 ((_ is Node!14470) (c!811924 (totalInput!4467 thiss!28909))))))

(declare-fun e!2968920 () Bool)

(assert (=> d!1521111 (= (inv!68726 (c!811924 (totalInput!4467 thiss!28909))) e!2968920)))

(declare-fun b!4758399 () Bool)

(declare-fun inv!68729 (Conc!14470) Bool)

(assert (=> b!4758399 (= e!2968920 (inv!68729 (c!811924 (totalInput!4467 thiss!28909))))))

(declare-fun b!4758400 () Bool)

(declare-fun e!2968921 () Bool)

(assert (=> b!4758400 (= e!2968920 e!2968921)))

(declare-fun res!2018578 () Bool)

(assert (=> b!4758400 (= res!2018578 (not ((_ is Leaf!23557) (c!811924 (totalInput!4467 thiss!28909)))))))

(assert (=> b!4758400 (=> res!2018578 e!2968921)))

(declare-fun b!4758401 () Bool)

(declare-fun inv!68730 (Conc!14470) Bool)

(assert (=> b!4758401 (= e!2968921 (inv!68730 (c!811924 (totalInput!4467 thiss!28909))))))

(assert (= (and d!1521111 c!811927) b!4758399))

(assert (= (and d!1521111 (not c!811927)) b!4758400))

(assert (= (and b!4758400 (not res!2018578)) b!4758401))

(declare-fun m!5727935 () Bool)

(assert (=> b!4758399 m!5727935))

(declare-fun m!5727937 () Bool)

(assert (=> b!4758401 m!5727937))

(assert (=> b!4758383 d!1521111))

(declare-fun b!4758407 () Bool)

(assert (=> b!4758407 true))

(declare-fun d!1521113 () Bool)

(declare-fun res!2018583 () Bool)

(declare-fun e!2968924 () Bool)

(assert (=> d!1521113 (=> (not res!2018583) (not e!2968924))))

(declare-fun valid!3836 (MutableMap!4715) Bool)

(assert (=> d!1521113 (= res!2018583 (valid!3836 (cache!4557 thiss!28909)))))

(assert (=> d!1521113 (= (validCacheMapFindLongestMatch!115 (cache!4557 thiss!28909) (totalInput!4467 thiss!28909)) e!2968924)))

(declare-fun b!4758406 () Bool)

(declare-fun res!2018584 () Bool)

(assert (=> b!4758406 (=> (not res!2018584) (not e!2968924))))

(declare-fun invariantList!1638 (List!53395) Bool)

(declare-datatypes ((ListMap!5695 0))(
  ( (ListMap!5696 (toList!6197 List!53395)) )
))
(declare-fun map!11842 (MutableMap!4715) ListMap!5695)

(assert (=> b!4758406 (= res!2018584 (invariantList!1638 (toList!6197 (map!11842 (cache!4557 thiss!28909)))))))

(declare-fun lambda!223607 () Int)

(declare-fun forall!11814 (List!53395 Int) Bool)

(assert (=> b!4758407 (= e!2968924 (forall!11814 (toList!6197 (map!11842 (cache!4557 thiss!28909))) lambda!223607))))

(assert (= (and d!1521113 res!2018583) b!4758406))

(assert (= (and b!4758406 res!2018584) b!4758407))

(declare-fun m!5727940 () Bool)

(assert (=> d!1521113 m!5727940))

(declare-fun m!5727942 () Bool)

(assert (=> b!4758406 m!5727942))

(declare-fun m!5727944 () Bool)

(assert (=> b!4758406 m!5727944))

(assert (=> b!4758407 m!5727942))

(declare-fun m!5727946 () Bool)

(assert (=> b!4758407 m!5727946))

(assert (=> b!4758388 d!1521113))

(declare-fun d!1521115 () Bool)

(declare-fun isBalanced!3901 (Conc!14470) Bool)

(assert (=> d!1521115 (= (inv!68727 (totalInput!4467 thiss!28909)) (isBalanced!3901 (c!811924 (totalInput!4467 thiss!28909))))))

(declare-fun bs!1146995 () Bool)

(assert (= bs!1146995 d!1521115))

(declare-fun m!5727948 () Bool)

(assert (=> bs!1146995 m!5727948))

(assert (=> b!4758384 d!1521115))

(declare-fun d!1521117 () Bool)

(assert (=> d!1521117 (= (inv!68727 localTotalInput!8) (isBalanced!3901 (c!811924 localTotalInput!8)))))

(declare-fun bs!1146996 () Bool)

(assert (= bs!1146996 d!1521117))

(declare-fun m!5727950 () Bool)

(assert (=> bs!1146996 m!5727950))

(assert (=> start!486608 d!1521117))

(declare-fun d!1521119 () Bool)

(declare-fun res!2018587 () Bool)

(declare-fun e!2968927 () Bool)

(assert (=> d!1521119 (=> (not res!2018587) (not e!2968927))))

(assert (=> d!1521119 (= res!2018587 ((_ is HashMap!4715) (cache!4557 thiss!28909)))))

(assert (=> d!1521119 (= (inv!68728 thiss!28909) e!2968927)))

(declare-fun b!4758412 () Bool)

(assert (=> b!4758412 (= e!2968927 (validCacheMapFindLongestMatch!115 (cache!4557 thiss!28909) (totalInput!4467 thiss!28909)))))

(assert (= (and d!1521119 res!2018587) b!4758412))

(assert (=> b!4758412 m!5727921))

(assert (=> start!486608 d!1521119))

(declare-fun d!1521121 () Bool)

(assert (=> d!1521121 (= (array_inv!5647 (_keys!5166 (v!47336 (underlying!9869 (v!47337 (underlying!9870 (cache!4557 thiss!28909))))))) (bvsge (size!36058 (_keys!5166 (v!47336 (underlying!9869 (v!47337 (underlying!9870 (cache!4557 thiss!28909))))))) #b00000000000000000000000000000000))))

(assert (=> b!4758390 d!1521121))

(declare-fun d!1521123 () Bool)

(assert (=> d!1521123 (= (array_inv!5648 (_values!5139 (v!47336 (underlying!9869 (v!47337 (underlying!9870 (cache!4557 thiss!28909))))))) (bvsge (size!36059 (_values!5139 (v!47336 (underlying!9869 (v!47337 (underlying!9870 (cache!4557 thiss!28909))))))) #b00000000000000000000000000000000))))

(assert (=> b!4758390 d!1521123))

(declare-fun d!1521125 () Bool)

(declare-fun c!811928 () Bool)

(assert (=> d!1521125 (= c!811928 ((_ is Node!14470) (c!811924 localTotalInput!8)))))

(declare-fun e!2968928 () Bool)

(assert (=> d!1521125 (= (inv!68726 (c!811924 localTotalInput!8)) e!2968928)))

(declare-fun b!4758413 () Bool)

(assert (=> b!4758413 (= e!2968928 (inv!68729 (c!811924 localTotalInput!8)))))

(declare-fun b!4758414 () Bool)

(declare-fun e!2968929 () Bool)

(assert (=> b!4758414 (= e!2968928 e!2968929)))

(declare-fun res!2018588 () Bool)

(assert (=> b!4758414 (= res!2018588 (not ((_ is Leaf!23557) (c!811924 localTotalInput!8))))))

(assert (=> b!4758414 (=> res!2018588 e!2968929)))

(declare-fun b!4758415 () Bool)

(assert (=> b!4758415 (= e!2968929 (inv!68730 (c!811924 localTotalInput!8)))))

(assert (= (and d!1521125 c!811928) b!4758413))

(assert (= (and d!1521125 (not c!811928)) b!4758414))

(assert (= (and b!4758414 (not res!2018588)) b!4758415))

(declare-fun m!5727952 () Bool)

(assert (=> b!4758413 m!5727952))

(declare-fun m!5727954 () Bool)

(assert (=> b!4758415 m!5727954))

(assert (=> b!4758391 d!1521125))

(declare-fun tp!1352061 () Bool)

(declare-fun e!2968934 () Bool)

(declare-fun b!4758424 () Bool)

(declare-fun tp!1352063 () Bool)

(assert (=> b!4758424 (= e!2968934 (and (inv!68726 (left!39060 (c!811924 (totalInput!4467 thiss!28909)))) tp!1352063 (inv!68726 (right!39390 (c!811924 (totalInput!4467 thiss!28909)))) tp!1352061))))

(declare-fun b!4758426 () Bool)

(declare-fun e!2968935 () Bool)

(declare-fun tp!1352062 () Bool)

(assert (=> b!4758426 (= e!2968935 tp!1352062)))

(declare-fun b!4758425 () Bool)

(declare-fun inv!68731 (IArray!29001) Bool)

(assert (=> b!4758425 (= e!2968934 (and (inv!68731 (xs!17776 (c!811924 (totalInput!4467 thiss!28909)))) e!2968935))))

(assert (=> b!4758383 (= tp!1352046 (and (inv!68726 (c!811924 (totalInput!4467 thiss!28909))) e!2968934))))

(assert (= (and b!4758383 ((_ is Node!14470) (c!811924 (totalInput!4467 thiss!28909)))) b!4758424))

(assert (= b!4758425 b!4758426))

(assert (= (and b!4758383 ((_ is Leaf!23557) (c!811924 (totalInput!4467 thiss!28909)))) b!4758425))

(declare-fun m!5727956 () Bool)

(assert (=> b!4758424 m!5727956))

(declare-fun m!5727958 () Bool)

(assert (=> b!4758424 m!5727958))

(declare-fun m!5727960 () Bool)

(assert (=> b!4758425 m!5727960))

(assert (=> b!4758383 m!5727917))

(declare-fun tp!1352071 () Bool)

(declare-fun setRes!27004 () Bool)

(declare-fun setElem!27004 () Context!5838)

(declare-fun setNonEmpty!27004 () Bool)

(declare-fun e!2968940 () Bool)

(declare-fun inv!68732 (Context!5838) Bool)

(assert (=> setNonEmpty!27004 (= setRes!27004 (and tp!1352071 (inv!68732 setElem!27004) e!2968940))))

(declare-fun setRest!27004 () (InoxSet Context!5838))

(assert (=> setNonEmpty!27004 (= (_1!30881 (_1!30882 (h!59682 mapDefault!21488))) ((_ map or) (store ((as const (Array Context!5838 Bool)) false) setElem!27004 true) setRest!27004))))

(declare-fun b!4758434 () Bool)

(declare-fun tp!1352070 () Bool)

(assert (=> b!4758434 (= e!2968940 tp!1352070)))

(declare-fun b!4758433 () Bool)

(declare-fun e!2968941 () Bool)

(declare-fun tp!1352072 () Bool)

(assert (=> b!4758433 (= e!2968941 (and setRes!27004 tp!1352072))))

(declare-fun condSetEmpty!27004 () Bool)

(assert (=> b!4758433 (= condSetEmpty!27004 (= (_1!30881 (_1!30882 (h!59682 mapDefault!21488))) ((as const (Array Context!5838 Bool)) false)))))

(assert (=> b!4758392 (= tp!1352053 e!2968941)))

(declare-fun setIsEmpty!27004 () Bool)

(assert (=> setIsEmpty!27004 setRes!27004))

(assert (= (and b!4758433 condSetEmpty!27004) setIsEmpty!27004))

(assert (= (and b!4758433 (not condSetEmpty!27004)) setNonEmpty!27004))

(assert (= setNonEmpty!27004 b!4758434))

(assert (= (and b!4758392 ((_ is Cons!53271) mapDefault!21488)) b!4758433))

(declare-fun m!5727962 () Bool)

(assert (=> setNonEmpty!27004 m!5727962))

(declare-fun setElem!27005 () Context!5838)

(declare-fun e!2968942 () Bool)

(declare-fun tp!1352074 () Bool)

(declare-fun setRes!27005 () Bool)

(declare-fun setNonEmpty!27005 () Bool)

(assert (=> setNonEmpty!27005 (= setRes!27005 (and tp!1352074 (inv!68732 setElem!27005) e!2968942))))

(declare-fun setRest!27005 () (InoxSet Context!5838))

(assert (=> setNonEmpty!27005 (= (_1!30881 (_1!30882 (h!59682 (zeroValue!5114 (v!47336 (underlying!9869 (v!47337 (underlying!9870 (cache!4557 thiss!28909))))))))) ((_ map or) (store ((as const (Array Context!5838 Bool)) false) setElem!27005 true) setRest!27005))))

(declare-fun b!4758436 () Bool)

(declare-fun tp!1352073 () Bool)

(assert (=> b!4758436 (= e!2968942 tp!1352073)))

(declare-fun b!4758435 () Bool)

(declare-fun e!2968943 () Bool)

(declare-fun tp!1352075 () Bool)

(assert (=> b!4758435 (= e!2968943 (and setRes!27005 tp!1352075))))

(declare-fun condSetEmpty!27005 () Bool)

(assert (=> b!4758435 (= condSetEmpty!27005 (= (_1!30881 (_1!30882 (h!59682 (zeroValue!5114 (v!47336 (underlying!9869 (v!47337 (underlying!9870 (cache!4557 thiss!28909))))))))) ((as const (Array Context!5838 Bool)) false)))))

(assert (=> b!4758390 (= tp!1352051 e!2968943)))

(declare-fun setIsEmpty!27005 () Bool)

(assert (=> setIsEmpty!27005 setRes!27005))

(assert (= (and b!4758435 condSetEmpty!27005) setIsEmpty!27005))

(assert (= (and b!4758435 (not condSetEmpty!27005)) setNonEmpty!27005))

(assert (= setNonEmpty!27005 b!4758436))

(assert (= (and b!4758390 ((_ is Cons!53271) (zeroValue!5114 (v!47336 (underlying!9869 (v!47337 (underlying!9870 (cache!4557 thiss!28909)))))))) b!4758435))

(declare-fun m!5727964 () Bool)

(assert (=> setNonEmpty!27005 m!5727964))

(declare-fun setRes!27006 () Bool)

(declare-fun setNonEmpty!27006 () Bool)

(declare-fun setElem!27006 () Context!5838)

(declare-fun e!2968944 () Bool)

(declare-fun tp!1352077 () Bool)

(assert (=> setNonEmpty!27006 (= setRes!27006 (and tp!1352077 (inv!68732 setElem!27006) e!2968944))))

(declare-fun setRest!27006 () (InoxSet Context!5838))

(assert (=> setNonEmpty!27006 (= (_1!30881 (_1!30882 (h!59682 (minValue!5114 (v!47336 (underlying!9869 (v!47337 (underlying!9870 (cache!4557 thiss!28909))))))))) ((_ map or) (store ((as const (Array Context!5838 Bool)) false) setElem!27006 true) setRest!27006))))

(declare-fun b!4758438 () Bool)

(declare-fun tp!1352076 () Bool)

(assert (=> b!4758438 (= e!2968944 tp!1352076)))

(declare-fun b!4758437 () Bool)

(declare-fun e!2968945 () Bool)

(declare-fun tp!1352078 () Bool)

(assert (=> b!4758437 (= e!2968945 (and setRes!27006 tp!1352078))))

(declare-fun condSetEmpty!27006 () Bool)

(assert (=> b!4758437 (= condSetEmpty!27006 (= (_1!30881 (_1!30882 (h!59682 (minValue!5114 (v!47336 (underlying!9869 (v!47337 (underlying!9870 (cache!4557 thiss!28909))))))))) ((as const (Array Context!5838 Bool)) false)))))

(assert (=> b!4758390 (= tp!1352050 e!2968945)))

(declare-fun setIsEmpty!27006 () Bool)

(assert (=> setIsEmpty!27006 setRes!27006))

(assert (= (and b!4758437 condSetEmpty!27006) setIsEmpty!27006))

(assert (= (and b!4758437 (not condSetEmpty!27006)) setNonEmpty!27006))

(assert (= setNonEmpty!27006 b!4758438))

(assert (= (and b!4758390 ((_ is Cons!53271) (minValue!5114 (v!47336 (underlying!9869 (v!47337 (underlying!9870 (cache!4557 thiss!28909)))))))) b!4758437))

(declare-fun m!5727966 () Bool)

(assert (=> setNonEmpty!27006 m!5727966))

(declare-fun e!2968955 () Bool)

(declare-fun setRes!27012 () Bool)

(declare-fun setNonEmpty!27011 () Bool)

(declare-fun tp!1352099 () Bool)

(declare-fun setElem!27012 () Context!5838)

(assert (=> setNonEmpty!27011 (= setRes!27012 (and tp!1352099 (inv!68732 setElem!27012) e!2968955))))

(declare-fun mapDefault!21491 () List!53395)

(declare-fun setRest!27011 () (InoxSet Context!5838))

(assert (=> setNonEmpty!27011 (= (_1!30881 (_1!30882 (h!59682 mapDefault!21491))) ((_ map or) (store ((as const (Array Context!5838 Bool)) false) setElem!27012 true) setRest!27011))))

(declare-fun b!4758449 () Bool)

(declare-fun tp!1352093 () Bool)

(assert (=> b!4758449 (= e!2968955 tp!1352093)))

(declare-fun setElem!27011 () Context!5838)

(declare-fun e!2968956 () Bool)

(declare-fun setNonEmpty!27012 () Bool)

(declare-fun setRes!27011 () Bool)

(declare-fun tp!1352097 () Bool)

(assert (=> setNonEmpty!27012 (= setRes!27011 (and tp!1352097 (inv!68732 setElem!27011) e!2968956))))

(declare-fun mapValue!21491 () List!53395)

(declare-fun setRest!27012 () (InoxSet Context!5838))

(assert (=> setNonEmpty!27012 (= (_1!30881 (_1!30882 (h!59682 mapValue!21491))) ((_ map or) (store ((as const (Array Context!5838 Bool)) false) setElem!27011 true) setRest!27012))))

(declare-fun mapIsEmpty!21491 () Bool)

(declare-fun mapRes!21491 () Bool)

(assert (=> mapIsEmpty!21491 mapRes!21491))

(declare-fun b!4758450 () Bool)

(declare-fun tp!1352096 () Bool)

(assert (=> b!4758450 (= e!2968956 tp!1352096)))

(declare-fun mapNonEmpty!21491 () Bool)

(declare-fun tp!1352098 () Bool)

(declare-fun e!2968957 () Bool)

(assert (=> mapNonEmpty!21491 (= mapRes!21491 (and tp!1352098 e!2968957))))

(declare-fun mapKey!21491 () (_ BitVec 32))

(declare-fun mapRest!21491 () (Array (_ BitVec 32) List!53395))

(assert (=> mapNonEmpty!21491 (= mapRest!21488 (store mapRest!21491 mapKey!21491 mapValue!21491))))

(declare-fun b!4758451 () Bool)

(declare-fun e!2968954 () Bool)

(declare-fun tp!1352094 () Bool)

(assert (=> b!4758451 (= e!2968954 (and setRes!27012 tp!1352094))))

(declare-fun condSetEmpty!27012 () Bool)

(assert (=> b!4758451 (= condSetEmpty!27012 (= (_1!30881 (_1!30882 (h!59682 mapDefault!21491))) ((as const (Array Context!5838 Bool)) false)))))

(declare-fun b!4758452 () Bool)

(declare-fun tp!1352095 () Bool)

(assert (=> b!4758452 (= e!2968957 (and setRes!27011 tp!1352095))))

(declare-fun condSetEmpty!27011 () Bool)

(assert (=> b!4758452 (= condSetEmpty!27011 (= (_1!30881 (_1!30882 (h!59682 mapValue!21491))) ((as const (Array Context!5838 Bool)) false)))))

(declare-fun condMapEmpty!21491 () Bool)

(assert (=> mapNonEmpty!21488 (= condMapEmpty!21491 (= mapRest!21488 ((as const (Array (_ BitVec 32) List!53395)) mapDefault!21491)))))

(assert (=> mapNonEmpty!21488 (= tp!1352048 (and e!2968954 mapRes!21491))))

(declare-fun setIsEmpty!27011 () Bool)

(assert (=> setIsEmpty!27011 setRes!27012))

(declare-fun setIsEmpty!27012 () Bool)

(assert (=> setIsEmpty!27012 setRes!27011))

(assert (= (and mapNonEmpty!21488 condMapEmpty!21491) mapIsEmpty!21491))

(assert (= (and mapNonEmpty!21488 (not condMapEmpty!21491)) mapNonEmpty!21491))

(assert (= (and b!4758452 condSetEmpty!27011) setIsEmpty!27012))

(assert (= (and b!4758452 (not condSetEmpty!27011)) setNonEmpty!27012))

(assert (= setNonEmpty!27012 b!4758450))

(assert (= (and mapNonEmpty!21491 ((_ is Cons!53271) mapValue!21491)) b!4758452))

(assert (= (and b!4758451 condSetEmpty!27012) setIsEmpty!27011))

(assert (= (and b!4758451 (not condSetEmpty!27012)) setNonEmpty!27011))

(assert (= setNonEmpty!27011 b!4758449))

(assert (= (and mapNonEmpty!21488 ((_ is Cons!53271) mapDefault!21491)) b!4758451))

(declare-fun m!5727968 () Bool)

(assert (=> setNonEmpty!27011 m!5727968))

(declare-fun m!5727970 () Bool)

(assert (=> setNonEmpty!27012 m!5727970))

(declare-fun m!5727972 () Bool)

(assert (=> mapNonEmpty!21491 m!5727972))

(declare-fun setNonEmpty!27013 () Bool)

(declare-fun setElem!27013 () Context!5838)

(declare-fun tp!1352101 () Bool)

(declare-fun e!2968958 () Bool)

(declare-fun setRes!27013 () Bool)

(assert (=> setNonEmpty!27013 (= setRes!27013 (and tp!1352101 (inv!68732 setElem!27013) e!2968958))))

(declare-fun setRest!27013 () (InoxSet Context!5838))

(assert (=> setNonEmpty!27013 (= (_1!30881 (_1!30882 (h!59682 mapValue!21488))) ((_ map or) (store ((as const (Array Context!5838 Bool)) false) setElem!27013 true) setRest!27013))))

(declare-fun b!4758454 () Bool)

(declare-fun tp!1352100 () Bool)

(assert (=> b!4758454 (= e!2968958 tp!1352100)))

(declare-fun b!4758453 () Bool)

(declare-fun e!2968959 () Bool)

(declare-fun tp!1352102 () Bool)

(assert (=> b!4758453 (= e!2968959 (and setRes!27013 tp!1352102))))

(declare-fun condSetEmpty!27013 () Bool)

(assert (=> b!4758453 (= condSetEmpty!27013 (= (_1!30881 (_1!30882 (h!59682 mapValue!21488))) ((as const (Array Context!5838 Bool)) false)))))

(assert (=> mapNonEmpty!21488 (= tp!1352047 e!2968959)))

(declare-fun setIsEmpty!27013 () Bool)

(assert (=> setIsEmpty!27013 setRes!27013))

(assert (= (and b!4758453 condSetEmpty!27013) setIsEmpty!27013))

(assert (= (and b!4758453 (not condSetEmpty!27013)) setNonEmpty!27013))

(assert (= setNonEmpty!27013 b!4758454))

(assert (= (and mapNonEmpty!21488 ((_ is Cons!53271) mapValue!21488)) b!4758453))

(declare-fun m!5727974 () Bool)

(assert (=> setNonEmpty!27013 m!5727974))

(declare-fun tp!1352105 () Bool)

(declare-fun b!4758455 () Bool)

(declare-fun tp!1352103 () Bool)

(declare-fun e!2968960 () Bool)

(assert (=> b!4758455 (= e!2968960 (and (inv!68726 (left!39060 (c!811924 localTotalInput!8))) tp!1352105 (inv!68726 (right!39390 (c!811924 localTotalInput!8))) tp!1352103))))

(declare-fun b!4758457 () Bool)

(declare-fun e!2968961 () Bool)

(declare-fun tp!1352104 () Bool)

(assert (=> b!4758457 (= e!2968961 tp!1352104)))

(declare-fun b!4758456 () Bool)

(assert (=> b!4758456 (= e!2968960 (and (inv!68731 (xs!17776 (c!811924 localTotalInput!8))) e!2968961))))

(assert (=> b!4758391 (= tp!1352049 (and (inv!68726 (c!811924 localTotalInput!8)) e!2968960))))

(assert (= (and b!4758391 ((_ is Node!14470) (c!811924 localTotalInput!8))) b!4758455))

(assert (= b!4758456 b!4758457))

(assert (= (and b!4758391 ((_ is Leaf!23557) (c!811924 localTotalInput!8))) b!4758456))

(declare-fun m!5727976 () Bool)

(assert (=> b!4758455 m!5727976))

(declare-fun m!5727978 () Bool)

(assert (=> b!4758455 m!5727978))

(declare-fun m!5727980 () Bool)

(assert (=> b!4758456 m!5727980))

(assert (=> b!4758391 m!5727929))

(check-sat (not b!4758399) (not d!1521113) (not b!4758438) (not b!4758437) (not b!4758452) (not setNonEmpty!27006) (not b!4758415) (not setNonEmpty!27013) (not b_next!129943) (not setNonEmpty!27004) (not mapNonEmpty!21491) (not setNonEmpty!27005) (not b!4758407) (not d!1521117) (not b!4758401) (not setNonEmpty!27012) (not b!4758453) (not b!4758383) (not b!4758406) b_and!340847 (not b!4758456) (not b!4758449) (not b!4758434) (not d!1521115) (not b!4758425) (not b!4758391) (not b!4758435) (not b!4758436) (not b!4758455) (not b!4758413) (not b!4758426) (not b_next!129945) (not b!4758433) (not setNonEmpty!27011) (not b!4758451) (not b!4758424) b_and!340849 (not b!4758450) (not b!4758454) (not b!4758412) (not b!4758457))
(check-sat b_and!340847 b_and!340849 (not b_next!129945) (not b_next!129943))

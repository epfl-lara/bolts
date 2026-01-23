; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!266580 () Bool)

(assert start!266580)

(declare-fun b!2749785 () Bool)

(declare-fun b_free!77701 () Bool)

(declare-fun b_next!78405 () Bool)

(assert (=> b!2749785 (= b_free!77701 (not b_next!78405))))

(declare-fun tp!867929 () Bool)

(declare-fun b_and!202439 () Bool)

(assert (=> b!2749785 (= tp!867929 b_and!202439)))

(declare-fun b!2749790 () Bool)

(declare-fun b_free!77703 () Bool)

(declare-fun b_next!78407 () Bool)

(assert (=> b!2749790 (= b_free!77703 (not b_next!78407))))

(declare-fun tp!867931 () Bool)

(declare-fun b_and!202441 () Bool)

(assert (=> b!2749790 (= tp!867931 b_and!202441)))

(declare-fun b!2749787 () Bool)

(declare-fun b_free!77705 () Bool)

(declare-fun b_next!78409 () Bool)

(assert (=> b!2749787 (= b_free!77705 (not b_next!78409))))

(declare-fun tp!867933 () Bool)

(declare-fun b_and!202443 () Bool)

(assert (=> b!2749787 (= tp!867933 b_and!202443)))

(declare-fun b!2749780 () Bool)

(declare-fun b_free!77707 () Bool)

(declare-fun b_next!78411 () Bool)

(assert (=> b!2749780 (= b_free!77707 (not b_next!78411))))

(declare-fun tp!867941 () Bool)

(declare-fun b_and!202445 () Bool)

(assert (=> b!2749780 (= tp!867941 b_and!202445)))

(declare-fun b!2749771 () Bool)

(declare-fun res!1153213 () Bool)

(declare-fun e!1733233 () Bool)

(assert (=> b!2749771 (=> (not res!1153213) (not e!1733233))))

(declare-datatypes ((C!16216 0))(
  ( (C!16217 (val!10042 Int)) )
))
(declare-datatypes ((Regex!8029 0))(
  ( (ElementMatch!8029 (c!445050 C!16216)) (Concat!13117 (regOne!16570 Regex!8029) (regTwo!16570 Regex!8029)) (EmptyExpr!8029) (Star!8029 (reg!8358 Regex!8029)) (EmptyLang!8029) (Union!8029 (regOne!16571 Regex!8029) (regTwo!16571 Regex!8029)) )
))
(declare-datatypes ((List!31864 0))(
  ( (Nil!31764) (Cons!31764 (h!37184 Regex!8029) (t!227968 List!31864)) )
))
(declare-datatypes ((Context!4494 0))(
  ( (Context!4495 (exprs!2747 List!31864)) )
))
(declare-datatypes ((tuple2!31674 0))(
  ( (tuple2!31675 (_1!18564 Context!4494) (_2!18564 C!16216)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!31676 0))(
  ( (tuple2!31677 (_1!18565 tuple2!31674) (_2!18565 (InoxSet Context!4494))) )
))
(declare-datatypes ((List!31865 0))(
  ( (Nil!31765) (Cons!31765 (h!37185 tuple2!31676) (t!227969 List!31865)) )
))
(declare-datatypes ((array!13067 0))(
  ( (array!13068 (arr!5830 (Array (_ BitVec 32) (_ BitVec 64))) (size!24525 (_ BitVec 32))) )
))
(declare-datatypes ((array!13069 0))(
  ( (array!13070 (arr!5831 (Array (_ BitVec 32) List!31865)) (size!24526 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7336 0))(
  ( (LongMapFixedSize!7337 (defaultEntry!4053 Int) (mask!9419 (_ BitVec 32)) (extraKeys!3917 (_ BitVec 32)) (zeroValue!3927 List!31865) (minValue!3927 List!31865) (_size!7379 (_ BitVec 32)) (_keys!3968 array!13067) (_values!3949 array!13069) (_vacant!3729 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!14481 0))(
  ( (Cell!14482 (v!33375 LongMapFixedSize!7336)) )
))
(declare-datatypes ((MutLongMap!3668 0))(
  ( (LongMap!3668 (underlying!7539 Cell!14481)) (MutLongMapExt!3667 (__x!20654 Int)) )
))
(declare-datatypes ((Cell!14483 0))(
  ( (Cell!14484 (v!33376 MutLongMap!3668)) )
))
(declare-datatypes ((Hashable!3584 0))(
  ( (HashableExt!3583 (__x!20655 Int)) )
))
(declare-datatypes ((MutableMap!3574 0))(
  ( (MutableMapExt!3573 (__x!20656 Int)) (HashMap!3574 (underlying!7540 Cell!14483) (hashF!5616 Hashable!3584) (_size!7380 (_ BitVec 32)) (defaultValue!3745 Int)) )
))
(declare-datatypes ((CacheUp!2280 0))(
  ( (CacheUp!2281 (cache!3717 MutableMap!3574)) )
))
(declare-fun cacheUp!1023 () CacheUp!2280)

(declare-fun valid!2843 (CacheUp!2280) Bool)

(assert (=> b!2749771 (= res!1153213 (valid!2843 cacheUp!1023))))

(declare-fun b!2749772 () Bool)

(declare-fun e!1733244 () Bool)

(declare-fun tp!867940 () Bool)

(declare-fun tp!867939 () Bool)

(assert (=> b!2749772 (= e!1733244 (and tp!867940 tp!867939))))

(declare-fun b!2749773 () Bool)

(declare-fun tp!867934 () Bool)

(assert (=> b!2749773 (= e!1733244 tp!867934)))

(declare-fun b!2749774 () Bool)

(declare-fun e!1733246 () Bool)

(declare-fun e!1733243 () Bool)

(assert (=> b!2749774 (= e!1733246 e!1733243)))

(declare-fun b!2749775 () Bool)

(declare-fun e!1733239 () Bool)

(assert (=> b!2749775 (= e!1733243 e!1733239)))

(declare-fun b!2749776 () Bool)

(declare-fun tp_is_empty!13961 () Bool)

(assert (=> b!2749776 (= e!1733244 tp_is_empty!13961)))

(declare-fun mapIsEmpty!16723 () Bool)

(declare-fun mapRes!16724 () Bool)

(assert (=> mapIsEmpty!16723 mapRes!16724))

(declare-fun b!2749777 () Bool)

(declare-fun res!1153212 () Bool)

(assert (=> b!2749777 (=> (not res!1153212) (not e!1733233))))

(declare-datatypes ((tuple3!4514 0))(
  ( (tuple3!4515 (_1!18566 Regex!8029) (_2!18566 Context!4494) (_3!2727 C!16216)) )
))
(declare-datatypes ((tuple2!31678 0))(
  ( (tuple2!31679 (_1!18567 tuple3!4514) (_2!18567 (InoxSet Context!4494))) )
))
(declare-datatypes ((List!31866 0))(
  ( (Nil!31766) (Cons!31766 (h!37186 tuple2!31678) (t!227970 List!31866)) )
))
(declare-datatypes ((array!13071 0))(
  ( (array!13072 (arr!5832 (Array (_ BitVec 32) List!31866)) (size!24527 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7338 0))(
  ( (LongMapFixedSize!7339 (defaultEntry!4054 Int) (mask!9420 (_ BitVec 32)) (extraKeys!3918 (_ BitVec 32)) (zeroValue!3928 List!31866) (minValue!3928 List!31866) (_size!7381 (_ BitVec 32)) (_keys!3969 array!13067) (_values!3950 array!13071) (_vacant!3730 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!14485 0))(
  ( (Cell!14486 (v!33377 LongMapFixedSize!7338)) )
))
(declare-datatypes ((MutLongMap!3669 0))(
  ( (LongMap!3669 (underlying!7541 Cell!14485)) (MutLongMapExt!3668 (__x!20657 Int)) )
))
(declare-datatypes ((Cell!14487 0))(
  ( (Cell!14488 (v!33378 MutLongMap!3669)) )
))
(declare-datatypes ((Hashable!3585 0))(
  ( (HashableExt!3584 (__x!20658 Int)) )
))
(declare-datatypes ((MutableMap!3575 0))(
  ( (MutableMapExt!3574 (__x!20659 Int)) (HashMap!3575 (underlying!7542 Cell!14487) (hashF!5617 Hashable!3585) (_size!7382 (_ BitVec 32)) (defaultValue!3746 Int)) )
))
(declare-datatypes ((CacheDown!2400 0))(
  ( (CacheDown!2401 (cache!3718 MutableMap!3575)) )
))
(declare-fun cacheDown!1142 () CacheDown!2400)

(declare-fun valid!2844 (CacheDown!2400) Bool)

(assert (=> b!2749777 (= res!1153212 (valid!2844 cacheDown!1142))))

(declare-fun b!2749778 () Bool)

(declare-fun tp!867937 () Bool)

(declare-fun tp!867943 () Bool)

(assert (=> b!2749778 (= e!1733244 (and tp!867937 tp!867943))))

(declare-fun b!2749779 () Bool)

(declare-fun e!1733242 () Bool)

(declare-fun tp!867938 () Bool)

(assert (=> b!2749779 (= e!1733242 (and tp!867938 mapRes!16724))))

(declare-fun condMapEmpty!16723 () Bool)

(declare-fun mapDefault!16723 () List!31865)

(assert (=> b!2749779 (= condMapEmpty!16723 (= (arr!5831 (_values!3949 (v!33375 (underlying!7539 (v!33376 (underlying!7540 (cache!3717 cacheUp!1023))))))) ((as const (Array (_ BitVec 32) List!31865)) mapDefault!16723)))))

(declare-fun mapIsEmpty!16724 () Bool)

(declare-fun mapRes!16723 () Bool)

(assert (=> mapIsEmpty!16724 mapRes!16723))

(declare-fun e!1733231 () Bool)

(declare-fun e!1733237 () Bool)

(assert (=> b!2749780 (= e!1733231 (and e!1733237 tp!867941))))

(declare-fun b!2749781 () Bool)

(declare-fun e!1733234 () Bool)

(declare-fun e!1733249 () Bool)

(assert (=> b!2749781 (= e!1733234 e!1733249)))

(declare-fun b!2749782 () Bool)

(declare-fun lt!972436 () MutLongMap!3669)

(get-info :version)

(assert (=> b!2749782 (= e!1733237 (and e!1733246 ((_ is LongMap!3669) lt!972436)))))

(assert (=> b!2749782 (= lt!972436 (v!33378 (underlying!7542 (cache!3718 cacheDown!1142))))))

(declare-fun b!2749783 () Bool)

(declare-fun e!1733240 () Bool)

(declare-fun e!1733232 () Bool)

(assert (=> b!2749783 (= e!1733240 e!1733232)))

(declare-fun b!2749784 () Bool)

(declare-fun e!1733245 () Bool)

(assert (=> b!2749784 (= e!1733245 e!1733231)))

(declare-fun e!1733236 () Bool)

(declare-fun tp!867945 () Bool)

(declare-fun tp!867927 () Bool)

(declare-fun array_inv!4167 (array!13067) Bool)

(declare-fun array_inv!4168 (array!13071) Bool)

(assert (=> b!2749785 (= e!1733239 (and tp!867929 tp!867927 tp!867945 (array_inv!4167 (_keys!3969 (v!33377 (underlying!7541 (v!33378 (underlying!7542 (cache!3718 cacheDown!1142))))))) (array_inv!4168 (_values!3950 (v!33377 (underlying!7541 (v!33378 (underlying!7542 (cache!3718 cacheDown!1142))))))) e!1733236))))

(declare-fun b!2749786 () Bool)

(declare-fun e!1733238 () Bool)

(assert (=> b!2749786 (= e!1733238 e!1733234)))

(declare-fun e!1733241 () Bool)

(assert (=> b!2749787 (= e!1733232 (and e!1733241 tp!867933))))

(declare-fun b!2749788 () Bool)

(assert (=> b!2749788 (= e!1733233 (not true))))

(declare-datatypes ((List!31867 0))(
  ( (Nil!31767) (Cons!31767 (h!37187 C!16216) (t!227971 List!31867)) )
))
(declare-fun lt!972438 () List!31867)

(declare-fun sizeTr!145 (List!31867 Int) Int)

(declare-fun size!24528 (List!31867) Int)

(assert (=> b!2749788 (= (sizeTr!145 lt!972438 0) (size!24528 lt!972438))))

(declare-datatypes ((Unit!45572 0))(
  ( (Unit!45573) )
))
(declare-fun lt!972435 () Unit!45572)

(declare-fun lemmaSizeTrEqualsSize!144 (List!31867 Int) Unit!45572)

(assert (=> b!2749788 (= lt!972435 (lemmaSizeTrEqualsSize!144 lt!972438 0))))

(declare-fun lt!972433 () (InoxSet Context!4494))

(declare-fun r!15227 () Regex!8029)

(declare-datatypes ((tuple2!31680 0))(
  ( (tuple2!31681 (_1!18568 List!31867) (_2!18568 List!31867)) )
))
(declare-fun findLongestMatchZipper!2 ((InoxSet Context!4494) List!31867) tuple2!31680)

(declare-fun findLongestMatch!718 (Regex!8029 List!31867) tuple2!31680)

(assert (=> b!2749788 (= (findLongestMatchZipper!2 lt!972433 lt!972438) (findLongestMatch!718 r!15227 lt!972438))))

(declare-fun lt!972434 () Unit!45572)

(declare-fun longestMatchSameAsRegex!2 (Regex!8029 (InoxSet Context!4494) List!31867) Unit!45572)

(assert (=> b!2749788 (= lt!972434 (longestMatchSameAsRegex!2 r!15227 lt!972433 lt!972438))))

(declare-datatypes ((IArray!19833 0))(
  ( (IArray!19834 (innerList!9974 List!31867)) )
))
(declare-datatypes ((Conc!9914 0))(
  ( (Node!9914 (left!24290 Conc!9914) (right!24620 Conc!9914) (csize!20058 Int) (cheight!10125 Int)) (Leaf!15097 (xs!13021 IArray!19833) (csize!20059 Int)) (Empty!9914) )
))
(declare-datatypes ((BalanceConc!19442 0))(
  ( (BalanceConc!19443 (c!445051 Conc!9914)) )
))
(declare-fun input!6491 () BalanceConc!19442)

(declare-fun list!12017 (BalanceConc!19442) List!31867)

(assert (=> b!2749788 (= lt!972438 (list!12017 input!6491))))

(declare-fun focus!286 (Regex!8029) (InoxSet Context!4494))

(assert (=> b!2749788 (= lt!972433 (focus!286 r!15227))))

(declare-fun b!2749789 () Bool)

(declare-fun lt!972437 () MutLongMap!3668)

(assert (=> b!2749789 (= e!1733241 (and e!1733238 ((_ is LongMap!3668) lt!972437)))))

(assert (=> b!2749789 (= lt!972437 (v!33376 (underlying!7540 (cache!3717 cacheUp!1023))))))

(declare-fun tp!867942 () Bool)

(declare-fun tp!867944 () Bool)

(declare-fun array_inv!4169 (array!13069) Bool)

(assert (=> b!2749790 (= e!1733249 (and tp!867931 tp!867944 tp!867942 (array_inv!4167 (_keys!3968 (v!33375 (underlying!7539 (v!33376 (underlying!7540 (cache!3717 cacheUp!1023))))))) (array_inv!4169 (_values!3949 (v!33375 (underlying!7539 (v!33376 (underlying!7540 (cache!3717 cacheUp!1023))))))) e!1733242))))

(declare-fun res!1153214 () Bool)

(assert (=> start!266580 (=> (not res!1153214) (not e!1733233))))

(declare-fun validRegex!3327 (Regex!8029) Bool)

(assert (=> start!266580 (= res!1153214 (validRegex!3327 r!15227))))

(assert (=> start!266580 e!1733233))

(assert (=> start!266580 e!1733244))

(declare-fun inv!43145 (CacheUp!2280) Bool)

(assert (=> start!266580 (and (inv!43145 cacheUp!1023) e!1733240)))

(declare-fun inv!43146 (CacheDown!2400) Bool)

(assert (=> start!266580 (and (inv!43146 cacheDown!1142) e!1733245)))

(declare-fun e!1733235 () Bool)

(declare-fun inv!43147 (BalanceConc!19442) Bool)

(assert (=> start!266580 (and (inv!43147 input!6491) e!1733235)))

(declare-fun mapNonEmpty!16723 () Bool)

(declare-fun tp!867932 () Bool)

(declare-fun tp!867928 () Bool)

(assert (=> mapNonEmpty!16723 (= mapRes!16724 (and tp!867932 tp!867928))))

(declare-fun mapRest!16724 () (Array (_ BitVec 32) List!31865))

(declare-fun mapKey!16724 () (_ BitVec 32))

(declare-fun mapValue!16724 () List!31865)

(assert (=> mapNonEmpty!16723 (= (arr!5831 (_values!3949 (v!33375 (underlying!7539 (v!33376 (underlying!7540 (cache!3717 cacheUp!1023))))))) (store mapRest!16724 mapKey!16724 mapValue!16724))))

(declare-fun b!2749791 () Bool)

(declare-fun tp!867946 () Bool)

(assert (=> b!2749791 (= e!1733236 (and tp!867946 mapRes!16723))))

(declare-fun condMapEmpty!16724 () Bool)

(declare-fun mapDefault!16724 () List!31866)

(assert (=> b!2749791 (= condMapEmpty!16724 (= (arr!5832 (_values!3950 (v!33377 (underlying!7541 (v!33378 (underlying!7542 (cache!3718 cacheDown!1142))))))) ((as const (Array (_ BitVec 32) List!31866)) mapDefault!16724)))))

(declare-fun b!2749792 () Bool)

(declare-fun tp!867935 () Bool)

(declare-fun inv!43148 (Conc!9914) Bool)

(assert (=> b!2749792 (= e!1733235 (and (inv!43148 (c!445051 input!6491)) tp!867935))))

(declare-fun mapNonEmpty!16724 () Bool)

(declare-fun tp!867936 () Bool)

(declare-fun tp!867930 () Bool)

(assert (=> mapNonEmpty!16724 (= mapRes!16723 (and tp!867936 tp!867930))))

(declare-fun mapRest!16723 () (Array (_ BitVec 32) List!31866))

(declare-fun mapValue!16723 () List!31866)

(declare-fun mapKey!16723 () (_ BitVec 32))

(assert (=> mapNonEmpty!16724 (= (arr!5832 (_values!3950 (v!33377 (underlying!7541 (v!33378 (underlying!7542 (cache!3718 cacheDown!1142))))))) (store mapRest!16723 mapKey!16723 mapValue!16723))))

(assert (= (and start!266580 res!1153214) b!2749771))

(assert (= (and b!2749771 res!1153213) b!2749777))

(assert (= (and b!2749777 res!1153212) b!2749788))

(assert (= (and start!266580 ((_ is ElementMatch!8029) r!15227)) b!2749776))

(assert (= (and start!266580 ((_ is Concat!13117) r!15227)) b!2749772))

(assert (= (and start!266580 ((_ is Star!8029) r!15227)) b!2749773))

(assert (= (and start!266580 ((_ is Union!8029) r!15227)) b!2749778))

(assert (= (and b!2749779 condMapEmpty!16723) mapIsEmpty!16723))

(assert (= (and b!2749779 (not condMapEmpty!16723)) mapNonEmpty!16723))

(assert (= b!2749790 b!2749779))

(assert (= b!2749781 b!2749790))

(assert (= b!2749786 b!2749781))

(assert (= (and b!2749789 ((_ is LongMap!3668) (v!33376 (underlying!7540 (cache!3717 cacheUp!1023))))) b!2749786))

(assert (= b!2749787 b!2749789))

(assert (= (and b!2749783 ((_ is HashMap!3574) (cache!3717 cacheUp!1023))) b!2749787))

(assert (= start!266580 b!2749783))

(assert (= (and b!2749791 condMapEmpty!16724) mapIsEmpty!16724))

(assert (= (and b!2749791 (not condMapEmpty!16724)) mapNonEmpty!16724))

(assert (= b!2749785 b!2749791))

(assert (= b!2749775 b!2749785))

(assert (= b!2749774 b!2749775))

(assert (= (and b!2749782 ((_ is LongMap!3669) (v!33378 (underlying!7542 (cache!3718 cacheDown!1142))))) b!2749774))

(assert (= b!2749780 b!2749782))

(assert (= (and b!2749784 ((_ is HashMap!3575) (cache!3718 cacheDown!1142))) b!2749780))

(assert (= start!266580 b!2749784))

(assert (= start!266580 b!2749792))

(declare-fun m!3165057 () Bool)

(assert (=> b!2749777 m!3165057))

(declare-fun m!3165059 () Bool)

(assert (=> mapNonEmpty!16723 m!3165059))

(declare-fun m!3165061 () Bool)

(assert (=> b!2749792 m!3165061))

(declare-fun m!3165063 () Bool)

(assert (=> start!266580 m!3165063))

(declare-fun m!3165065 () Bool)

(assert (=> start!266580 m!3165065))

(declare-fun m!3165067 () Bool)

(assert (=> start!266580 m!3165067))

(declare-fun m!3165069 () Bool)

(assert (=> start!266580 m!3165069))

(declare-fun m!3165071 () Bool)

(assert (=> b!2749771 m!3165071))

(declare-fun m!3165073 () Bool)

(assert (=> b!2749788 m!3165073))

(declare-fun m!3165075 () Bool)

(assert (=> b!2749788 m!3165075))

(declare-fun m!3165077 () Bool)

(assert (=> b!2749788 m!3165077))

(declare-fun m!3165079 () Bool)

(assert (=> b!2749788 m!3165079))

(declare-fun m!3165081 () Bool)

(assert (=> b!2749788 m!3165081))

(declare-fun m!3165083 () Bool)

(assert (=> b!2749788 m!3165083))

(declare-fun m!3165085 () Bool)

(assert (=> b!2749788 m!3165085))

(declare-fun m!3165087 () Bool)

(assert (=> b!2749788 m!3165087))

(declare-fun m!3165089 () Bool)

(assert (=> b!2749790 m!3165089))

(declare-fun m!3165091 () Bool)

(assert (=> b!2749790 m!3165091))

(declare-fun m!3165093 () Bool)

(assert (=> b!2749785 m!3165093))

(declare-fun m!3165095 () Bool)

(assert (=> b!2749785 m!3165095))

(declare-fun m!3165097 () Bool)

(assert (=> mapNonEmpty!16724 m!3165097))

(check-sat b_and!202445 b_and!202443 (not mapNonEmpty!16724) (not b!2749785) (not b_next!78405) (not b!2749777) (not b!2749791) (not start!266580) (not mapNonEmpty!16723) b_and!202441 (not b!2749771) (not b!2749779) tp_is_empty!13961 (not b!2749790) (not b!2749792) (not b!2749773) (not b_next!78409) (not b_next!78407) (not b!2749788) b_and!202439 (not b_next!78411) (not b!2749772) (not b!2749778))
(check-sat b_and!202445 b_and!202443 (not b_next!78405) (not b_next!78409) (not b_next!78407) b_and!202441 b_and!202439 (not b_next!78411))

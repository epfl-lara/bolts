; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!266596 () Bool)

(assert start!266596)

(declare-fun b!2750338 () Bool)

(declare-fun b_free!77765 () Bool)

(declare-fun b_next!78469 () Bool)

(assert (=> b!2750338 (= b_free!77765 (not b_next!78469))))

(declare-fun tp!868418 () Bool)

(declare-fun b_and!202503 () Bool)

(assert (=> b!2750338 (= tp!868418 b_and!202503)))

(declare-fun b!2750320 () Bool)

(declare-fun b_free!77767 () Bool)

(declare-fun b_next!78471 () Bool)

(assert (=> b!2750320 (= b_free!77767 (not b_next!78471))))

(declare-fun tp!868412 () Bool)

(declare-fun b_and!202505 () Bool)

(assert (=> b!2750320 (= tp!868412 b_and!202505)))

(declare-fun b!2750336 () Bool)

(declare-fun b_free!77769 () Bool)

(declare-fun b_next!78473 () Bool)

(assert (=> b!2750336 (= b_free!77769 (not b_next!78473))))

(declare-fun tp!868407 () Bool)

(declare-fun b_and!202507 () Bool)

(assert (=> b!2750336 (= tp!868407 b_and!202507)))

(declare-fun b!2750327 () Bool)

(declare-fun b_free!77771 () Bool)

(declare-fun b_next!78475 () Bool)

(assert (=> b!2750327 (= b_free!77771 (not b_next!78475))))

(declare-fun tp!868410 () Bool)

(declare-fun b_and!202509 () Bool)

(assert (=> b!2750327 (= tp!868410 b_and!202509)))

(declare-fun b!2750317 () Bool)

(declare-fun e!1733705 () Bool)

(declare-fun e!1733706 () Bool)

(declare-datatypes ((C!16232 0))(
  ( (C!16233 (val!10050 Int)) )
))
(declare-datatypes ((Regex!8037 0))(
  ( (ElementMatch!8037 (c!445064 C!16232)) (Concat!13125 (regOne!16586 Regex!8037) (regTwo!16586 Regex!8037)) (EmptyExpr!8037) (Star!8037 (reg!8366 Regex!8037)) (EmptyLang!8037) (Union!8037 (regOne!16587 Regex!8037) (regTwo!16587 Regex!8037)) )
))
(declare-datatypes ((List!31892 0))(
  ( (Nil!31792) (Cons!31792 (h!37212 Regex!8037) (t!227996 List!31892)) )
))
(declare-datatypes ((Context!4510 0))(
  ( (Context!4511 (exprs!2755 List!31892)) )
))
(declare-datatypes ((tuple3!4532 0))(
  ( (tuple3!4533 (_1!18601 Regex!8037) (_2!18601 Context!4510) (_3!2736 C!16232)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!31730 0))(
  ( (tuple2!31731 (_1!18602 tuple3!4532) (_2!18602 (InoxSet Context!4510))) )
))
(declare-datatypes ((List!31893 0))(
  ( (Nil!31793) (Cons!31793 (h!37213 tuple2!31730) (t!227997 List!31893)) )
))
(declare-datatypes ((array!13111 0))(
  ( (array!13112 (arr!5852 (Array (_ BitVec 32) List!31893)) (size!24551 (_ BitVec 32))) )
))
(declare-datatypes ((array!13113 0))(
  ( (array!13114 (arr!5853 (Array (_ BitVec 32) (_ BitVec 64))) (size!24552 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7364 0))(
  ( (LongMapFixedSize!7365 (defaultEntry!4067 Int) (mask!9437 (_ BitVec 32)) (extraKeys!3931 (_ BitVec 32)) (zeroValue!3941 List!31893) (minValue!3941 List!31893) (_size!7407 (_ BitVec 32)) (_keys!3982 array!13113) (_values!3963 array!13111) (_vacant!3743 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!14537 0))(
  ( (Cell!14538 (v!33403 LongMapFixedSize!7364)) )
))
(declare-datatypes ((MutLongMap!3682 0))(
  ( (LongMap!3682 (underlying!7567 Cell!14537)) (MutLongMapExt!3681 (__x!20696 Int)) )
))
(declare-fun lt!972574 () MutLongMap!3682)

(get-info :version)

(assert (=> b!2750317 (= e!1733705 (and e!1733706 ((_ is LongMap!3682) lt!972574)))))

(declare-datatypes ((Cell!14539 0))(
  ( (Cell!14540 (v!33404 MutLongMap!3682)) )
))
(declare-datatypes ((Hashable!3598 0))(
  ( (HashableExt!3597 (__x!20697 Int)) )
))
(declare-datatypes ((MutableMap!3588 0))(
  ( (MutableMapExt!3587 (__x!20698 Int)) (HashMap!3588 (underlying!7568 Cell!14539) (hashF!5630 Hashable!3598) (_size!7408 (_ BitVec 32)) (defaultValue!3759 Int)) )
))
(declare-datatypes ((CacheDown!2414 0))(
  ( (CacheDown!2415 (cache!3731 MutableMap!3588)) )
))
(declare-fun cacheDown!1142 () CacheDown!2414)

(assert (=> b!2750317 (= lt!972574 (v!33404 (underlying!7568 (cache!3731 cacheDown!1142))))))

(declare-fun b!2750318 () Bool)

(declare-fun e!1733709 () Bool)

(assert (=> b!2750318 (= e!1733706 e!1733709)))

(declare-fun b!2750319 () Bool)

(declare-fun e!1733707 () Bool)

(declare-fun tp!868422 () Bool)

(declare-fun tp!868411 () Bool)

(assert (=> b!2750319 (= e!1733707 (and tp!868422 tp!868411))))

(declare-fun e!1733708 () Bool)

(assert (=> b!2750320 (= e!1733708 (and e!1733705 tp!868412))))

(declare-fun b!2750321 () Bool)

(declare-fun e!1733713 () Bool)

(declare-fun e!1733700 () Bool)

(assert (=> b!2750321 (= e!1733713 e!1733700)))

(declare-fun b!2750322 () Bool)

(declare-fun e!1733710 () Bool)

(declare-fun lt!972573 () (InoxSet Context!4510))

(declare-fun r!15227 () Regex!8037)

(declare-datatypes ((List!31894 0))(
  ( (Nil!31794) (Cons!31794 (h!37214 Context!4510) (t!227998 List!31894)) )
))
(declare-fun unfocusZipper!171 (List!31894) Regex!8037)

(declare-fun toList!1814 ((InoxSet Context!4510)) List!31894)

(assert (=> b!2750322 (= e!1733710 (not (= (unfocusZipper!171 (toList!1814 lt!972573)) r!15227)))))

(declare-datatypes ((List!31895 0))(
  ( (Nil!31795) (Cons!31795 (h!37215 C!16232) (t!227999 List!31895)) )
))
(declare-fun lt!972576 () List!31895)

(declare-datatypes ((IArray!19845 0))(
  ( (IArray!19846 (innerList!9980 List!31895)) )
))
(declare-datatypes ((Conc!9920 0))(
  ( (Node!9920 (left!24300 Conc!9920) (right!24630 Conc!9920) (csize!20070 Int) (cheight!10131 Int)) (Leaf!15107 (xs!13027 IArray!19845) (csize!20071 Int)) (Empty!9920) )
))
(declare-datatypes ((BalanceConc!19454 0))(
  ( (BalanceConc!19455 (c!445065 Conc!9920)) )
))
(declare-fun input!6491 () BalanceConc!19454)

(declare-fun list!12022 (BalanceConc!19454) List!31895)

(assert (=> b!2750322 (= lt!972576 (list!12022 input!6491))))

(declare-fun focus!291 (Regex!8037) (InoxSet Context!4510))

(assert (=> b!2750322 (= lt!972573 (focus!291 r!15227))))

(declare-fun mapIsEmpty!16771 () Bool)

(declare-fun mapRes!16771 () Bool)

(assert (=> mapIsEmpty!16771 mapRes!16771))

(declare-fun b!2750323 () Bool)

(declare-fun e!1733703 () Bool)

(declare-fun tp!868421 () Bool)

(assert (=> b!2750323 (= e!1733703 (and tp!868421 mapRes!16771))))

(declare-fun condMapEmpty!16771 () Bool)

(declare-datatypes ((tuple2!31732 0))(
  ( (tuple2!31733 (_1!18603 Context!4510) (_2!18603 C!16232)) )
))
(declare-datatypes ((tuple2!31734 0))(
  ( (tuple2!31735 (_1!18604 tuple2!31732) (_2!18604 (InoxSet Context!4510))) )
))
(declare-datatypes ((List!31896 0))(
  ( (Nil!31796) (Cons!31796 (h!37216 tuple2!31734) (t!228000 List!31896)) )
))
(declare-datatypes ((array!13115 0))(
  ( (array!13116 (arr!5854 (Array (_ BitVec 32) List!31896)) (size!24553 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7366 0))(
  ( (LongMapFixedSize!7367 (defaultEntry!4068 Int) (mask!9438 (_ BitVec 32)) (extraKeys!3932 (_ BitVec 32)) (zeroValue!3942 List!31896) (minValue!3942 List!31896) (_size!7409 (_ BitVec 32)) (_keys!3983 array!13113) (_values!3964 array!13115) (_vacant!3744 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!14541 0))(
  ( (Cell!14542 (v!33405 LongMapFixedSize!7366)) )
))
(declare-datatypes ((MutLongMap!3683 0))(
  ( (LongMap!3683 (underlying!7569 Cell!14541)) (MutLongMapExt!3682 (__x!20699 Int)) )
))
(declare-datatypes ((Cell!14543 0))(
  ( (Cell!14544 (v!33406 MutLongMap!3683)) )
))
(declare-datatypes ((Hashable!3599 0))(
  ( (HashableExt!3598 (__x!20700 Int)) )
))
(declare-datatypes ((MutableMap!3589 0))(
  ( (MutableMapExt!3588 (__x!20701 Int)) (HashMap!3589 (underlying!7570 Cell!14543) (hashF!5631 Hashable!3599) (_size!7410 (_ BitVec 32)) (defaultValue!3760 Int)) )
))
(declare-datatypes ((CacheUp!2294 0))(
  ( (CacheUp!2295 (cache!3732 MutableMap!3589)) )
))
(declare-fun cacheUp!1023 () CacheUp!2294)

(declare-fun mapDefault!16772 () List!31896)

(assert (=> b!2750323 (= condMapEmpty!16771 (= (arr!5854 (_values!3964 (v!33405 (underlying!7569 (v!33406 (underlying!7570 (cache!3732 cacheUp!1023))))))) ((as const (Array (_ BitVec 32) List!31896)) mapDefault!16772)))))

(declare-fun b!2750324 () Bool)

(declare-fun e!1733716 () Bool)

(assert (=> b!2750324 (= e!1733716 e!1733713)))

(declare-fun b!2750326 () Bool)

(declare-fun res!1153302 () Bool)

(assert (=> b!2750326 (=> (not res!1153302) (not e!1733710))))

(declare-fun valid!2855 (CacheUp!2294) Bool)

(assert (=> b!2750326 (= res!1153302 (valid!2855 cacheUp!1023))))

(declare-fun mapIsEmpty!16772 () Bool)

(declare-fun mapRes!16772 () Bool)

(assert (=> mapIsEmpty!16772 mapRes!16772))

(declare-fun e!1733711 () Bool)

(declare-fun e!1733699 () Bool)

(assert (=> b!2750327 (= e!1733711 (and e!1733699 tp!868410))))

(declare-fun b!2750328 () Bool)

(declare-fun tp_is_empty!13977 () Bool)

(assert (=> b!2750328 (= e!1733707 tp_is_empty!13977)))

(declare-fun b!2750329 () Bool)

(declare-fun e!1733704 () Bool)

(assert (=> b!2750329 (= e!1733709 e!1733704)))

(declare-fun b!2750330 () Bool)

(declare-fun res!1153303 () Bool)

(assert (=> b!2750330 (=> (not res!1153303) (not e!1733710))))

(declare-fun valid!2856 (CacheDown!2414) Bool)

(assert (=> b!2750330 (= res!1153303 (valid!2856 cacheDown!1142))))

(declare-fun b!2750331 () Bool)

(declare-fun e!1733701 () Bool)

(assert (=> b!2750331 (= e!1733701 e!1733708)))

(declare-fun mapNonEmpty!16771 () Bool)

(declare-fun tp!868413 () Bool)

(declare-fun tp!868416 () Bool)

(assert (=> mapNonEmpty!16771 (= mapRes!16772 (and tp!868413 tp!868416))))

(declare-fun mapKey!16771 () (_ BitVec 32))

(declare-fun mapValue!16772 () List!31893)

(declare-fun mapRest!16771 () (Array (_ BitVec 32) List!31893))

(assert (=> mapNonEmpty!16771 (= (arr!5852 (_values!3963 (v!33403 (underlying!7567 (v!33404 (underlying!7568 (cache!3731 cacheDown!1142))))))) (store mapRest!16771 mapKey!16771 mapValue!16772))))

(declare-fun b!2750332 () Bool)

(declare-fun e!1733714 () Bool)

(assert (=> b!2750332 (= e!1733714 e!1733711)))

(declare-fun b!2750333 () Bool)

(declare-fun tp!868424 () Bool)

(declare-fun tp!868414 () Bool)

(assert (=> b!2750333 (= e!1733707 (and tp!868424 tp!868414))))

(declare-fun mapNonEmpty!16772 () Bool)

(declare-fun tp!868415 () Bool)

(declare-fun tp!868425 () Bool)

(assert (=> mapNonEmpty!16772 (= mapRes!16771 (and tp!868415 tp!868425))))

(declare-fun mapValue!16771 () List!31896)

(declare-fun mapKey!16772 () (_ BitVec 32))

(declare-fun mapRest!16772 () (Array (_ BitVec 32) List!31896))

(assert (=> mapNonEmpty!16772 (= (arr!5854 (_values!3964 (v!33405 (underlying!7569 (v!33406 (underlying!7570 (cache!3732 cacheUp!1023))))))) (store mapRest!16772 mapKey!16772 mapValue!16771))))

(declare-fun b!2750334 () Bool)

(declare-fun lt!972575 () MutLongMap!3683)

(assert (=> b!2750334 (= e!1733699 (and e!1733716 ((_ is LongMap!3683) lt!972575)))))

(assert (=> b!2750334 (= lt!972575 (v!33406 (underlying!7570 (cache!3732 cacheUp!1023))))))

(declare-fun b!2750335 () Bool)

(declare-fun tp!868420 () Bool)

(assert (=> b!2750335 (= e!1733707 tp!868420)))

(declare-fun tp!868423 () Bool)

(declare-fun e!1733702 () Bool)

(declare-fun tp!868419 () Bool)

(declare-fun array_inv!4183 (array!13113) Bool)

(declare-fun array_inv!4184 (array!13111) Bool)

(assert (=> b!2750336 (= e!1733704 (and tp!868407 tp!868423 tp!868419 (array_inv!4183 (_keys!3982 (v!33403 (underlying!7567 (v!33404 (underlying!7568 (cache!3731 cacheDown!1142))))))) (array_inv!4184 (_values!3963 (v!33403 (underlying!7567 (v!33404 (underlying!7568 (cache!3731 cacheDown!1142))))))) e!1733702))))

(declare-fun b!2750337 () Bool)

(declare-fun tp!868408 () Bool)

(assert (=> b!2750337 (= e!1733702 (and tp!868408 mapRes!16772))))

(declare-fun condMapEmpty!16772 () Bool)

(declare-fun mapDefault!16771 () List!31893)

(assert (=> b!2750337 (= condMapEmpty!16772 (= (arr!5852 (_values!3963 (v!33403 (underlying!7567 (v!33404 (underlying!7568 (cache!3731 cacheDown!1142))))))) ((as const (Array (_ BitVec 32) List!31893)) mapDefault!16771)))))

(declare-fun tp!868409 () Bool)

(declare-fun tp!868426 () Bool)

(declare-fun array_inv!4185 (array!13115) Bool)

(assert (=> b!2750338 (= e!1733700 (and tp!868418 tp!868409 tp!868426 (array_inv!4183 (_keys!3983 (v!33405 (underlying!7569 (v!33406 (underlying!7570 (cache!3732 cacheUp!1023))))))) (array_inv!4185 (_values!3964 (v!33405 (underlying!7569 (v!33406 (underlying!7570 (cache!3732 cacheUp!1023))))))) e!1733703))))

(declare-fun res!1153304 () Bool)

(assert (=> start!266596 (=> (not res!1153304) (not e!1733710))))

(declare-fun validRegex!3332 (Regex!8037) Bool)

(assert (=> start!266596 (= res!1153304 (validRegex!3332 r!15227))))

(assert (=> start!266596 e!1733710))

(assert (=> start!266596 e!1733707))

(declare-fun inv!43176 (CacheUp!2294) Bool)

(assert (=> start!266596 (and (inv!43176 cacheUp!1023) e!1733714)))

(declare-fun inv!43177 (CacheDown!2414) Bool)

(assert (=> start!266596 (and (inv!43177 cacheDown!1142) e!1733701)))

(declare-fun e!1733715 () Bool)

(declare-fun inv!43178 (BalanceConc!19454) Bool)

(assert (=> start!266596 (and (inv!43178 input!6491) e!1733715)))

(declare-fun b!2750325 () Bool)

(declare-fun tp!868417 () Bool)

(declare-fun inv!43179 (Conc!9920) Bool)

(assert (=> b!2750325 (= e!1733715 (and (inv!43179 (c!445065 input!6491)) tp!868417))))

(assert (= (and start!266596 res!1153304) b!2750326))

(assert (= (and b!2750326 res!1153302) b!2750330))

(assert (= (and b!2750330 res!1153303) b!2750322))

(assert (= (and start!266596 ((_ is ElementMatch!8037) r!15227)) b!2750328))

(assert (= (and start!266596 ((_ is Concat!13125) r!15227)) b!2750333))

(assert (= (and start!266596 ((_ is Star!8037) r!15227)) b!2750335))

(assert (= (and start!266596 ((_ is Union!8037) r!15227)) b!2750319))

(assert (= (and b!2750323 condMapEmpty!16771) mapIsEmpty!16771))

(assert (= (and b!2750323 (not condMapEmpty!16771)) mapNonEmpty!16772))

(assert (= b!2750338 b!2750323))

(assert (= b!2750321 b!2750338))

(assert (= b!2750324 b!2750321))

(assert (= (and b!2750334 ((_ is LongMap!3683) (v!33406 (underlying!7570 (cache!3732 cacheUp!1023))))) b!2750324))

(assert (= b!2750327 b!2750334))

(assert (= (and b!2750332 ((_ is HashMap!3589) (cache!3732 cacheUp!1023))) b!2750327))

(assert (= start!266596 b!2750332))

(assert (= (and b!2750337 condMapEmpty!16772) mapIsEmpty!16772))

(assert (= (and b!2750337 (not condMapEmpty!16772)) mapNonEmpty!16771))

(assert (= b!2750336 b!2750337))

(assert (= b!2750329 b!2750336))

(assert (= b!2750318 b!2750329))

(assert (= (and b!2750317 ((_ is LongMap!3682) (v!33404 (underlying!7568 (cache!3731 cacheDown!1142))))) b!2750318))

(assert (= b!2750320 b!2750317))

(assert (= (and b!2750331 ((_ is HashMap!3588) (cache!3731 cacheDown!1142))) b!2750320))

(assert (= start!266596 b!2750331))

(assert (= start!266596 b!2750325))

(declare-fun m!3165389 () Bool)

(assert (=> b!2750322 m!3165389))

(assert (=> b!2750322 m!3165389))

(declare-fun m!3165391 () Bool)

(assert (=> b!2750322 m!3165391))

(declare-fun m!3165393 () Bool)

(assert (=> b!2750322 m!3165393))

(declare-fun m!3165395 () Bool)

(assert (=> b!2750322 m!3165395))

(declare-fun m!3165397 () Bool)

(assert (=> b!2750336 m!3165397))

(declare-fun m!3165399 () Bool)

(assert (=> b!2750336 m!3165399))

(declare-fun m!3165401 () Bool)

(assert (=> start!266596 m!3165401))

(declare-fun m!3165403 () Bool)

(assert (=> start!266596 m!3165403))

(declare-fun m!3165405 () Bool)

(assert (=> start!266596 m!3165405))

(declare-fun m!3165407 () Bool)

(assert (=> start!266596 m!3165407))

(declare-fun m!3165409 () Bool)

(assert (=> b!2750330 m!3165409))

(declare-fun m!3165411 () Bool)

(assert (=> b!2750326 m!3165411))

(declare-fun m!3165413 () Bool)

(assert (=> mapNonEmpty!16772 m!3165413))

(declare-fun m!3165415 () Bool)

(assert (=> b!2750325 m!3165415))

(declare-fun m!3165417 () Bool)

(assert (=> mapNonEmpty!16771 m!3165417))

(declare-fun m!3165419 () Bool)

(assert (=> b!2750338 m!3165419))

(declare-fun m!3165421 () Bool)

(assert (=> b!2750338 m!3165421))

(check-sat b_and!202509 (not b!2750325) (not b!2750335) b_and!202505 (not mapNonEmpty!16771) (not b!2750323) (not b!2750336) (not b!2750322) tp_is_empty!13977 b_and!202507 (not start!266596) (not b_next!78473) (not b!2750330) (not b!2750337) (not mapNonEmpty!16772) (not b!2750333) b_and!202503 (not b!2750319) (not b_next!78469) (not b_next!78475) (not b!2750326) (not b_next!78471) (not b!2750338))
(check-sat b_and!202509 (not b_next!78473) b_and!202505 b_and!202503 (not b_next!78469) (not b_next!78475) (not b_next!78471) b_and!202507)
(get-model)

(declare-fun d!796423 () Bool)

(assert (=> d!796423 (= (array_inv!4183 (_keys!3983 (v!33405 (underlying!7569 (v!33406 (underlying!7570 (cache!3732 cacheUp!1023))))))) (bvsge (size!24552 (_keys!3983 (v!33405 (underlying!7569 (v!33406 (underlying!7570 (cache!3732 cacheUp!1023))))))) #b00000000000000000000000000000000))))

(assert (=> b!2750338 d!796423))

(declare-fun d!796425 () Bool)

(assert (=> d!796425 (= (array_inv!4185 (_values!3964 (v!33405 (underlying!7569 (v!33406 (underlying!7570 (cache!3732 cacheUp!1023))))))) (bvsge (size!24553 (_values!3964 (v!33405 (underlying!7569 (v!33406 (underlying!7570 (cache!3732 cacheUp!1023))))))) #b00000000000000000000000000000000))))

(assert (=> b!2750338 d!796425))

(declare-fun d!796427 () Bool)

(declare-fun c!445068 () Bool)

(assert (=> d!796427 (= c!445068 ((_ is Node!9920) (c!445065 input!6491)))))

(declare-fun e!1733722 () Bool)

(assert (=> d!796427 (= (inv!43179 (c!445065 input!6491)) e!1733722)))

(declare-fun b!2750345 () Bool)

(declare-fun inv!43180 (Conc!9920) Bool)

(assert (=> b!2750345 (= e!1733722 (inv!43180 (c!445065 input!6491)))))

(declare-fun b!2750346 () Bool)

(declare-fun e!1733723 () Bool)

(assert (=> b!2750346 (= e!1733722 e!1733723)))

(declare-fun res!1153307 () Bool)

(assert (=> b!2750346 (= res!1153307 (not ((_ is Leaf!15107) (c!445065 input!6491))))))

(assert (=> b!2750346 (=> res!1153307 e!1733723)))

(declare-fun b!2750347 () Bool)

(declare-fun inv!43181 (Conc!9920) Bool)

(assert (=> b!2750347 (= e!1733723 (inv!43181 (c!445065 input!6491)))))

(assert (= (and d!796427 c!445068) b!2750345))

(assert (= (and d!796427 (not c!445068)) b!2750346))

(assert (= (and b!2750346 (not res!1153307)) b!2750347))

(declare-fun m!3165423 () Bool)

(assert (=> b!2750345 m!3165423))

(declare-fun m!3165425 () Bool)

(assert (=> b!2750347 m!3165425))

(assert (=> b!2750325 d!796427))

(declare-fun d!796429 () Bool)

(assert (=> d!796429 (= (array_inv!4183 (_keys!3982 (v!33403 (underlying!7567 (v!33404 (underlying!7568 (cache!3731 cacheDown!1142))))))) (bvsge (size!24552 (_keys!3982 (v!33403 (underlying!7567 (v!33404 (underlying!7568 (cache!3731 cacheDown!1142))))))) #b00000000000000000000000000000000))))

(assert (=> b!2750336 d!796429))

(declare-fun d!796431 () Bool)

(assert (=> d!796431 (= (array_inv!4184 (_values!3963 (v!33403 (underlying!7567 (v!33404 (underlying!7568 (cache!3731 cacheDown!1142))))))) (bvsge (size!24551 (_values!3963 (v!33403 (underlying!7567 (v!33404 (underlying!7568 (cache!3731 cacheDown!1142))))))) #b00000000000000000000000000000000))))

(assert (=> b!2750336 d!796431))

(declare-fun b!2750367 () Bool)

(declare-fun res!1153318 () Bool)

(declare-fun e!1733744 () Bool)

(assert (=> b!2750367 (=> res!1153318 e!1733744)))

(assert (=> b!2750367 (= res!1153318 (not ((_ is Concat!13125) r!15227)))))

(declare-fun e!1733742 () Bool)

(assert (=> b!2750367 (= e!1733742 e!1733744)))

(declare-fun b!2750368 () Bool)

(declare-fun res!1153320 () Bool)

(declare-fun e!1733739 () Bool)

(assert (=> b!2750368 (=> (not res!1153320) (not e!1733739))))

(declare-fun call!177514 () Bool)

(assert (=> b!2750368 (= res!1153320 call!177514)))

(assert (=> b!2750368 (= e!1733742 e!1733739)))

(declare-fun b!2750369 () Bool)

(declare-fun e!1733738 () Bool)

(assert (=> b!2750369 (= e!1733738 call!177514)))

(declare-fun bm!177507 () Bool)

(declare-fun c!445074 () Bool)

(assert (=> bm!177507 (= call!177514 (validRegex!3332 (ite c!445074 (regOne!16587 r!15227) (regTwo!16586 r!15227))))))

(declare-fun c!445073 () Bool)

(declare-fun bm!177508 () Bool)

(declare-fun call!177512 () Bool)

(assert (=> bm!177508 (= call!177512 (validRegex!3332 (ite c!445073 (reg!8366 r!15227) (ite c!445074 (regTwo!16587 r!15227) (regOne!16586 r!15227)))))))

(declare-fun b!2750370 () Bool)

(declare-fun e!1733743 () Bool)

(assert (=> b!2750370 (= e!1733743 e!1733742)))

(assert (=> b!2750370 (= c!445074 ((_ is Union!8037) r!15227))))

(declare-fun b!2750371 () Bool)

(declare-fun call!177513 () Bool)

(assert (=> b!2750371 (= e!1733739 call!177513)))

(declare-fun d!796433 () Bool)

(declare-fun res!1153321 () Bool)

(declare-fun e!1733741 () Bool)

(assert (=> d!796433 (=> res!1153321 e!1733741)))

(assert (=> d!796433 (= res!1153321 ((_ is ElementMatch!8037) r!15227))))

(assert (=> d!796433 (= (validRegex!3332 r!15227) e!1733741)))

(declare-fun b!2750366 () Bool)

(declare-fun e!1733740 () Bool)

(assert (=> b!2750366 (= e!1733740 call!177512)))

(declare-fun b!2750372 () Bool)

(assert (=> b!2750372 (= e!1733744 e!1733738)))

(declare-fun res!1153322 () Bool)

(assert (=> b!2750372 (=> (not res!1153322) (not e!1733738))))

(assert (=> b!2750372 (= res!1153322 call!177513)))

(declare-fun bm!177509 () Bool)

(assert (=> bm!177509 (= call!177513 call!177512)))

(declare-fun b!2750373 () Bool)

(assert (=> b!2750373 (= e!1733743 e!1733740)))

(declare-fun res!1153319 () Bool)

(declare-fun nullable!2614 (Regex!8037) Bool)

(assert (=> b!2750373 (= res!1153319 (not (nullable!2614 (reg!8366 r!15227))))))

(assert (=> b!2750373 (=> (not res!1153319) (not e!1733740))))

(declare-fun b!2750374 () Bool)

(assert (=> b!2750374 (= e!1733741 e!1733743)))

(assert (=> b!2750374 (= c!445073 ((_ is Star!8037) r!15227))))

(assert (= (and d!796433 (not res!1153321)) b!2750374))

(assert (= (and b!2750374 c!445073) b!2750373))

(assert (= (and b!2750374 (not c!445073)) b!2750370))

(assert (= (and b!2750373 res!1153319) b!2750366))

(assert (= (and b!2750370 c!445074) b!2750368))

(assert (= (and b!2750370 (not c!445074)) b!2750367))

(assert (= (and b!2750368 res!1153320) b!2750371))

(assert (= (and b!2750367 (not res!1153318)) b!2750372))

(assert (= (and b!2750372 res!1153322) b!2750369))

(assert (= (or b!2750368 b!2750369) bm!177507))

(assert (= (or b!2750371 b!2750372) bm!177509))

(assert (= (or b!2750366 bm!177509) bm!177508))

(declare-fun m!3165427 () Bool)

(assert (=> bm!177507 m!3165427))

(declare-fun m!3165429 () Bool)

(assert (=> bm!177508 m!3165429))

(declare-fun m!3165431 () Bool)

(assert (=> b!2750373 m!3165431))

(assert (=> start!266596 d!796433))

(declare-fun d!796435 () Bool)

(declare-fun res!1153325 () Bool)

(declare-fun e!1733747 () Bool)

(assert (=> d!796435 (=> (not res!1153325) (not e!1733747))))

(assert (=> d!796435 (= res!1153325 ((_ is HashMap!3589) (cache!3732 cacheUp!1023)))))

(assert (=> d!796435 (= (inv!43176 cacheUp!1023) e!1733747)))

(declare-fun b!2750377 () Bool)

(declare-fun validCacheMapUp!348 (MutableMap!3589) Bool)

(assert (=> b!2750377 (= e!1733747 (validCacheMapUp!348 (cache!3732 cacheUp!1023)))))

(assert (= (and d!796435 res!1153325) b!2750377))

(declare-fun m!3165433 () Bool)

(assert (=> b!2750377 m!3165433))

(assert (=> start!266596 d!796435))

(declare-fun d!796437 () Bool)

(declare-fun res!1153328 () Bool)

(declare-fun e!1733750 () Bool)

(assert (=> d!796437 (=> (not res!1153328) (not e!1733750))))

(assert (=> d!796437 (= res!1153328 ((_ is HashMap!3588) (cache!3731 cacheDown!1142)))))

(assert (=> d!796437 (= (inv!43177 cacheDown!1142) e!1733750)))

(declare-fun b!2750380 () Bool)

(declare-fun validCacheMapDown!379 (MutableMap!3588) Bool)

(assert (=> b!2750380 (= e!1733750 (validCacheMapDown!379 (cache!3731 cacheDown!1142)))))

(assert (= (and d!796437 res!1153328) b!2750380))

(declare-fun m!3165435 () Bool)

(assert (=> b!2750380 m!3165435))

(assert (=> start!266596 d!796437))

(declare-fun d!796439 () Bool)

(declare-fun isBalanced!3021 (Conc!9920) Bool)

(assert (=> d!796439 (= (inv!43178 input!6491) (isBalanced!3021 (c!445065 input!6491)))))

(declare-fun bs!490371 () Bool)

(assert (= bs!490371 d!796439))

(declare-fun m!3165437 () Bool)

(assert (=> bs!490371 m!3165437))

(assert (=> start!266596 d!796439))

(declare-fun d!796441 () Bool)

(assert (=> d!796441 (= (valid!2856 cacheDown!1142) (validCacheMapDown!379 (cache!3731 cacheDown!1142)))))

(declare-fun bs!490372 () Bool)

(assert (= bs!490372 d!796441))

(assert (=> bs!490372 m!3165435))

(assert (=> b!2750330 d!796441))

(declare-fun d!796443 () Bool)

(assert (=> d!796443 (= (valid!2855 cacheUp!1023) (validCacheMapUp!348 (cache!3732 cacheUp!1023)))))

(declare-fun bs!490373 () Bool)

(assert (= bs!490373 d!796443))

(assert (=> bs!490373 m!3165433))

(assert (=> b!2750326 d!796443))

(declare-fun d!796445 () Bool)

(declare-fun lt!972579 () Regex!8037)

(assert (=> d!796445 (validRegex!3332 lt!972579)))

(declare-fun generalisedUnion!536 (List!31892) Regex!8037)

(declare-fun unfocusZipperList!56 (List!31894) List!31892)

(assert (=> d!796445 (= lt!972579 (generalisedUnion!536 (unfocusZipperList!56 (toList!1814 lt!972573))))))

(assert (=> d!796445 (= (unfocusZipper!171 (toList!1814 lt!972573)) lt!972579)))

(declare-fun bs!490374 () Bool)

(assert (= bs!490374 d!796445))

(declare-fun m!3165439 () Bool)

(assert (=> bs!490374 m!3165439))

(assert (=> bs!490374 m!3165389))

(declare-fun m!3165441 () Bool)

(assert (=> bs!490374 m!3165441))

(assert (=> bs!490374 m!3165441))

(declare-fun m!3165443 () Bool)

(assert (=> bs!490374 m!3165443))

(assert (=> b!2750322 d!796445))

(declare-fun d!796447 () Bool)

(declare-fun e!1733753 () Bool)

(assert (=> d!796447 e!1733753))

(declare-fun res!1153331 () Bool)

(assert (=> d!796447 (=> (not res!1153331) (not e!1733753))))

(declare-fun lt!972582 () List!31894)

(declare-fun noDuplicate!540 (List!31894) Bool)

(assert (=> d!796447 (= res!1153331 (noDuplicate!540 lt!972582))))

(declare-fun choose!16082 ((InoxSet Context!4510)) List!31894)

(assert (=> d!796447 (= lt!972582 (choose!16082 lt!972573))))

(assert (=> d!796447 (= (toList!1814 lt!972573) lt!972582)))

(declare-fun b!2750383 () Bool)

(declare-fun content!4484 (List!31894) (InoxSet Context!4510))

(assert (=> b!2750383 (= e!1733753 (= (content!4484 lt!972582) lt!972573))))

(assert (= (and d!796447 res!1153331) b!2750383))

(declare-fun m!3165445 () Bool)

(assert (=> d!796447 m!3165445))

(declare-fun m!3165447 () Bool)

(assert (=> d!796447 m!3165447))

(declare-fun m!3165449 () Bool)

(assert (=> b!2750383 m!3165449))

(assert (=> b!2750322 d!796447))

(declare-fun d!796449 () Bool)

(declare-fun list!12023 (Conc!9920) List!31895)

(assert (=> d!796449 (= (list!12022 input!6491) (list!12023 (c!445065 input!6491)))))

(declare-fun bs!490375 () Bool)

(assert (= bs!490375 d!796449))

(declare-fun m!3165451 () Bool)

(assert (=> bs!490375 m!3165451))

(assert (=> b!2750322 d!796449))

(declare-fun d!796451 () Bool)

(declare-fun e!1733756 () Bool)

(assert (=> d!796451 e!1733756))

(declare-fun res!1153335 () Bool)

(assert (=> d!796451 (=> (not res!1153335) (not e!1733756))))

(assert (=> d!796451 (= res!1153335 (validRegex!3332 r!15227))))

(assert (=> d!796451 (= (focus!291 r!15227) (store ((as const (Array Context!4510 Bool)) false) (Context!4511 (Cons!31792 r!15227 Nil!31792)) true))))

(declare-fun b!2750386 () Bool)

(assert (=> b!2750386 (= e!1733756 (= (unfocusZipper!171 (toList!1814 (store ((as const (Array Context!4510 Bool)) false) (Context!4511 (Cons!31792 r!15227 Nil!31792)) true))) r!15227))))

(assert (= (and d!796451 res!1153335) b!2750386))

(assert (=> d!796451 m!3165401))

(declare-fun m!3165453 () Bool)

(assert (=> d!796451 m!3165453))

(assert (=> b!2750386 m!3165453))

(assert (=> b!2750386 m!3165453))

(declare-fun m!3165455 () Bool)

(assert (=> b!2750386 m!3165455))

(assert (=> b!2750386 m!3165455))

(declare-fun m!3165457 () Bool)

(assert (=> b!2750386 m!3165457))

(assert (=> b!2750322 d!796451))

(declare-fun b!2750398 () Bool)

(declare-fun e!1733759 () Bool)

(declare-fun tp!868438 () Bool)

(declare-fun tp!868439 () Bool)

(assert (=> b!2750398 (= e!1733759 (and tp!868438 tp!868439))))

(declare-fun b!2750400 () Bool)

(declare-fun tp!868437 () Bool)

(declare-fun tp!868441 () Bool)

(assert (=> b!2750400 (= e!1733759 (and tp!868437 tp!868441))))

(declare-fun b!2750397 () Bool)

(assert (=> b!2750397 (= e!1733759 tp_is_empty!13977)))

(declare-fun b!2750399 () Bool)

(declare-fun tp!868440 () Bool)

(assert (=> b!2750399 (= e!1733759 tp!868440)))

(assert (=> b!2750333 (= tp!868424 e!1733759)))

(assert (= (and b!2750333 ((_ is ElementMatch!8037) (regOne!16586 r!15227))) b!2750397))

(assert (= (and b!2750333 ((_ is Concat!13125) (regOne!16586 r!15227))) b!2750398))

(assert (= (and b!2750333 ((_ is Star!8037) (regOne!16586 r!15227))) b!2750399))

(assert (= (and b!2750333 ((_ is Union!8037) (regOne!16586 r!15227))) b!2750400))

(declare-fun b!2750402 () Bool)

(declare-fun e!1733760 () Bool)

(declare-fun tp!868443 () Bool)

(declare-fun tp!868444 () Bool)

(assert (=> b!2750402 (= e!1733760 (and tp!868443 tp!868444))))

(declare-fun b!2750404 () Bool)

(declare-fun tp!868442 () Bool)

(declare-fun tp!868446 () Bool)

(assert (=> b!2750404 (= e!1733760 (and tp!868442 tp!868446))))

(declare-fun b!2750401 () Bool)

(assert (=> b!2750401 (= e!1733760 tp_is_empty!13977)))

(declare-fun b!2750403 () Bool)

(declare-fun tp!868445 () Bool)

(assert (=> b!2750403 (= e!1733760 tp!868445)))

(assert (=> b!2750333 (= tp!868414 e!1733760)))

(assert (= (and b!2750333 ((_ is ElementMatch!8037) (regTwo!16586 r!15227))) b!2750401))

(assert (= (and b!2750333 ((_ is Concat!13125) (regTwo!16586 r!15227))) b!2750402))

(assert (= (and b!2750333 ((_ is Star!8037) (regTwo!16586 r!15227))) b!2750403))

(assert (= (and b!2750333 ((_ is Union!8037) (regTwo!16586 r!15227))) b!2750404))

(declare-fun e!1733769 () Bool)

(assert (=> b!2750338 (= tp!868409 e!1733769)))

(declare-fun e!1733767 () Bool)

(declare-fun setNonEmpty!21897 () Bool)

(declare-fun setRes!21897 () Bool)

(declare-fun tp!868456 () Bool)

(declare-fun setElem!21897 () Context!4510)

(declare-fun inv!43182 (Context!4510) Bool)

(assert (=> setNonEmpty!21897 (= setRes!21897 (and tp!868456 (inv!43182 setElem!21897) e!1733767))))

(declare-fun setRest!21897 () (InoxSet Context!4510))

(assert (=> setNonEmpty!21897 (= (_2!18604 (h!37216 (zeroValue!3942 (v!33405 (underlying!7569 (v!33406 (underlying!7570 (cache!3732 cacheUp!1023)))))))) ((_ map or) (store ((as const (Array Context!4510 Bool)) false) setElem!21897 true) setRest!21897))))

(declare-fun b!2750413 () Bool)

(declare-fun tp!868457 () Bool)

(declare-fun e!1733768 () Bool)

(assert (=> b!2750413 (= e!1733769 (and (inv!43182 (_1!18603 (_1!18604 (h!37216 (zeroValue!3942 (v!33405 (underlying!7569 (v!33406 (underlying!7570 (cache!3732 cacheUp!1023)))))))))) e!1733768 tp_is_empty!13977 setRes!21897 tp!868457))))

(declare-fun condSetEmpty!21897 () Bool)

(assert (=> b!2750413 (= condSetEmpty!21897 (= (_2!18604 (h!37216 (zeroValue!3942 (v!33405 (underlying!7569 (v!33406 (underlying!7570 (cache!3732 cacheUp!1023)))))))) ((as const (Array Context!4510 Bool)) false)))))

(declare-fun b!2750414 () Bool)

(declare-fun tp!868455 () Bool)

(assert (=> b!2750414 (= e!1733768 tp!868455)))

(declare-fun setIsEmpty!21897 () Bool)

(assert (=> setIsEmpty!21897 setRes!21897))

(declare-fun b!2750415 () Bool)

(declare-fun tp!868458 () Bool)

(assert (=> b!2750415 (= e!1733767 tp!868458)))

(assert (= b!2750413 b!2750414))

(assert (= (and b!2750413 condSetEmpty!21897) setIsEmpty!21897))

(assert (= (and b!2750413 (not condSetEmpty!21897)) setNonEmpty!21897))

(assert (= setNonEmpty!21897 b!2750415))

(assert (= (and b!2750338 ((_ is Cons!31796) (zeroValue!3942 (v!33405 (underlying!7569 (v!33406 (underlying!7570 (cache!3732 cacheUp!1023)))))))) b!2750413))

(declare-fun m!3165459 () Bool)

(assert (=> setNonEmpty!21897 m!3165459))

(declare-fun m!3165461 () Bool)

(assert (=> b!2750413 m!3165461))

(declare-fun e!1733772 () Bool)

(assert (=> b!2750338 (= tp!868426 e!1733772)))

(declare-fun e!1733770 () Bool)

(declare-fun setElem!21898 () Context!4510)

(declare-fun tp!868460 () Bool)

(declare-fun setRes!21898 () Bool)

(declare-fun setNonEmpty!21898 () Bool)

(assert (=> setNonEmpty!21898 (= setRes!21898 (and tp!868460 (inv!43182 setElem!21898) e!1733770))))

(declare-fun setRest!21898 () (InoxSet Context!4510))

(assert (=> setNonEmpty!21898 (= (_2!18604 (h!37216 (minValue!3942 (v!33405 (underlying!7569 (v!33406 (underlying!7570 (cache!3732 cacheUp!1023)))))))) ((_ map or) (store ((as const (Array Context!4510 Bool)) false) setElem!21898 true) setRest!21898))))

(declare-fun e!1733771 () Bool)

(declare-fun tp!868461 () Bool)

(declare-fun b!2750416 () Bool)

(assert (=> b!2750416 (= e!1733772 (and (inv!43182 (_1!18603 (_1!18604 (h!37216 (minValue!3942 (v!33405 (underlying!7569 (v!33406 (underlying!7570 (cache!3732 cacheUp!1023)))))))))) e!1733771 tp_is_empty!13977 setRes!21898 tp!868461))))

(declare-fun condSetEmpty!21898 () Bool)

(assert (=> b!2750416 (= condSetEmpty!21898 (= (_2!18604 (h!37216 (minValue!3942 (v!33405 (underlying!7569 (v!33406 (underlying!7570 (cache!3732 cacheUp!1023)))))))) ((as const (Array Context!4510 Bool)) false)))))

(declare-fun b!2750417 () Bool)

(declare-fun tp!868459 () Bool)

(assert (=> b!2750417 (= e!1733771 tp!868459)))

(declare-fun setIsEmpty!21898 () Bool)

(assert (=> setIsEmpty!21898 setRes!21898))

(declare-fun b!2750418 () Bool)

(declare-fun tp!868462 () Bool)

(assert (=> b!2750418 (= e!1733770 tp!868462)))

(assert (= b!2750416 b!2750417))

(assert (= (and b!2750416 condSetEmpty!21898) setIsEmpty!21898))

(assert (= (and b!2750416 (not condSetEmpty!21898)) setNonEmpty!21898))

(assert (= setNonEmpty!21898 b!2750418))

(assert (= (and b!2750338 ((_ is Cons!31796) (minValue!3942 (v!33405 (underlying!7569 (v!33406 (underlying!7570 (cache!3732 cacheUp!1023)))))))) b!2750416))

(declare-fun m!3165463 () Bool)

(assert (=> setNonEmpty!21898 m!3165463))

(declare-fun m!3165465 () Bool)

(assert (=> b!2750416 m!3165465))

(declare-fun tp!868471 () Bool)

(declare-fun e!1733777 () Bool)

(declare-fun tp!868470 () Bool)

(declare-fun b!2750427 () Bool)

(assert (=> b!2750427 (= e!1733777 (and (inv!43179 (left!24300 (c!445065 input!6491))) tp!868471 (inv!43179 (right!24630 (c!445065 input!6491))) tp!868470))))

(declare-fun b!2750429 () Bool)

(declare-fun e!1733778 () Bool)

(declare-fun tp!868469 () Bool)

(assert (=> b!2750429 (= e!1733778 tp!868469)))

(declare-fun b!2750428 () Bool)

(declare-fun inv!43183 (IArray!19845) Bool)

(assert (=> b!2750428 (= e!1733777 (and (inv!43183 (xs!13027 (c!445065 input!6491))) e!1733778))))

(assert (=> b!2750325 (= tp!868417 (and (inv!43179 (c!445065 input!6491)) e!1733777))))

(assert (= (and b!2750325 ((_ is Node!9920) (c!445065 input!6491))) b!2750427))

(assert (= b!2750428 b!2750429))

(assert (= (and b!2750325 ((_ is Leaf!15107) (c!445065 input!6491))) b!2750428))

(declare-fun m!3165467 () Bool)

(assert (=> b!2750427 m!3165467))

(declare-fun m!3165469 () Bool)

(assert (=> b!2750427 m!3165469))

(declare-fun m!3165471 () Bool)

(assert (=> b!2750428 m!3165471))

(assert (=> b!2750325 m!3165415))

(declare-fun b!2750444 () Bool)

(declare-fun e!1733791 () Bool)

(declare-fun tp!868492 () Bool)

(assert (=> b!2750444 (= e!1733791 tp!868492)))

(declare-fun setRes!21903 () Bool)

(declare-fun tp!868490 () Bool)

(declare-fun setNonEmpty!21903 () Bool)

(declare-fun setElem!21903 () Context!4510)

(assert (=> setNonEmpty!21903 (= setRes!21903 (and tp!868490 (inv!43182 setElem!21903) e!1733791))))

(declare-fun mapValue!16775 () List!31896)

(declare-fun setRest!21903 () (InoxSet Context!4510))

(assert (=> setNonEmpty!21903 (= (_2!18604 (h!37216 mapValue!16775)) ((_ map or) (store ((as const (Array Context!4510 Bool)) false) setElem!21903 true) setRest!21903))))

(declare-fun setElem!21904 () Context!4510)

(declare-fun e!1733794 () Bool)

(declare-fun tp!868491 () Bool)

(declare-fun setNonEmpty!21904 () Bool)

(declare-fun setRes!21904 () Bool)

(assert (=> setNonEmpty!21904 (= setRes!21904 (and tp!868491 (inv!43182 setElem!21904) e!1733794))))

(declare-fun mapDefault!16775 () List!31896)

(declare-fun setRest!21904 () (InoxSet Context!4510))

(assert (=> setNonEmpty!21904 (= (_2!18604 (h!37216 mapDefault!16775)) ((_ map or) (store ((as const (Array Context!4510 Bool)) false) setElem!21904 true) setRest!21904))))

(declare-fun setIsEmpty!21904 () Bool)

(assert (=> setIsEmpty!21904 setRes!21904))

(declare-fun b!2750445 () Bool)

(declare-fun tp!868493 () Bool)

(assert (=> b!2750445 (= e!1733794 tp!868493)))

(declare-fun tp!868496 () Bool)

(declare-fun b!2750446 () Bool)

(declare-fun e!1733792 () Bool)

(declare-fun e!1733796 () Bool)

(assert (=> b!2750446 (= e!1733792 (and (inv!43182 (_1!18603 (_1!18604 (h!37216 mapDefault!16775)))) e!1733796 tp_is_empty!13977 setRes!21904 tp!868496))))

(declare-fun condSetEmpty!21903 () Bool)

(assert (=> b!2750446 (= condSetEmpty!21903 (= (_2!18604 (h!37216 mapDefault!16775)) ((as const (Array Context!4510 Bool)) false)))))

(declare-fun e!1733795 () Bool)

(declare-fun e!1733793 () Bool)

(declare-fun tp!868495 () Bool)

(declare-fun b!2750447 () Bool)

(assert (=> b!2750447 (= e!1733795 (and (inv!43182 (_1!18603 (_1!18604 (h!37216 mapValue!16775)))) e!1733793 tp_is_empty!13977 setRes!21903 tp!868495))))

(declare-fun condSetEmpty!21904 () Bool)

(assert (=> b!2750447 (= condSetEmpty!21904 (= (_2!18604 (h!37216 mapValue!16775)) ((as const (Array Context!4510 Bool)) false)))))

(declare-fun mapNonEmpty!16775 () Bool)

(declare-fun mapRes!16775 () Bool)

(declare-fun tp!868494 () Bool)

(assert (=> mapNonEmpty!16775 (= mapRes!16775 (and tp!868494 e!1733795))))

(declare-fun mapRest!16775 () (Array (_ BitVec 32) List!31896))

(declare-fun mapKey!16775 () (_ BitVec 32))

(assert (=> mapNonEmpty!16775 (= mapRest!16772 (store mapRest!16775 mapKey!16775 mapValue!16775))))

(declare-fun b!2750448 () Bool)

(declare-fun tp!868498 () Bool)

(assert (=> b!2750448 (= e!1733793 tp!868498)))

(declare-fun condMapEmpty!16775 () Bool)

(assert (=> mapNonEmpty!16772 (= condMapEmpty!16775 (= mapRest!16772 ((as const (Array (_ BitVec 32) List!31896)) mapDefault!16775)))))

(assert (=> mapNonEmpty!16772 (= tp!868415 (and e!1733792 mapRes!16775))))

(declare-fun setIsEmpty!21903 () Bool)

(assert (=> setIsEmpty!21903 setRes!21903))

(declare-fun mapIsEmpty!16775 () Bool)

(assert (=> mapIsEmpty!16775 mapRes!16775))

(declare-fun b!2750449 () Bool)

(declare-fun tp!868497 () Bool)

(assert (=> b!2750449 (= e!1733796 tp!868497)))

(assert (= (and mapNonEmpty!16772 condMapEmpty!16775) mapIsEmpty!16775))

(assert (= (and mapNonEmpty!16772 (not condMapEmpty!16775)) mapNonEmpty!16775))

(assert (= b!2750447 b!2750448))

(assert (= (and b!2750447 condSetEmpty!21904) setIsEmpty!21903))

(assert (= (and b!2750447 (not condSetEmpty!21904)) setNonEmpty!21903))

(assert (= setNonEmpty!21903 b!2750444))

(assert (= (and mapNonEmpty!16775 ((_ is Cons!31796) mapValue!16775)) b!2750447))

(assert (= b!2750446 b!2750449))

(assert (= (and b!2750446 condSetEmpty!21903) setIsEmpty!21904))

(assert (= (and b!2750446 (not condSetEmpty!21903)) setNonEmpty!21904))

(assert (= setNonEmpty!21904 b!2750445))

(assert (= (and mapNonEmpty!16772 ((_ is Cons!31796) mapDefault!16775)) b!2750446))

(declare-fun m!3165473 () Bool)

(assert (=> mapNonEmpty!16775 m!3165473))

(declare-fun m!3165475 () Bool)

(assert (=> b!2750447 m!3165475))

(declare-fun m!3165477 () Bool)

(assert (=> setNonEmpty!21904 m!3165477))

(declare-fun m!3165479 () Bool)

(assert (=> b!2750446 m!3165479))

(declare-fun m!3165481 () Bool)

(assert (=> setNonEmpty!21903 m!3165481))

(declare-fun e!1733799 () Bool)

(assert (=> mapNonEmpty!16772 (= tp!868425 e!1733799)))

(declare-fun setRes!21905 () Bool)

(declare-fun e!1733797 () Bool)

(declare-fun tp!868500 () Bool)

(declare-fun setNonEmpty!21905 () Bool)

(declare-fun setElem!21905 () Context!4510)

(assert (=> setNonEmpty!21905 (= setRes!21905 (and tp!868500 (inv!43182 setElem!21905) e!1733797))))

(declare-fun setRest!21905 () (InoxSet Context!4510))

(assert (=> setNonEmpty!21905 (= (_2!18604 (h!37216 mapValue!16771)) ((_ map or) (store ((as const (Array Context!4510 Bool)) false) setElem!21905 true) setRest!21905))))

(declare-fun tp!868501 () Bool)

(declare-fun e!1733798 () Bool)

(declare-fun b!2750450 () Bool)

(assert (=> b!2750450 (= e!1733799 (and (inv!43182 (_1!18603 (_1!18604 (h!37216 mapValue!16771)))) e!1733798 tp_is_empty!13977 setRes!21905 tp!868501))))

(declare-fun condSetEmpty!21905 () Bool)

(assert (=> b!2750450 (= condSetEmpty!21905 (= (_2!18604 (h!37216 mapValue!16771)) ((as const (Array Context!4510 Bool)) false)))))

(declare-fun b!2750451 () Bool)

(declare-fun tp!868499 () Bool)

(assert (=> b!2750451 (= e!1733798 tp!868499)))

(declare-fun setIsEmpty!21905 () Bool)

(assert (=> setIsEmpty!21905 setRes!21905))

(declare-fun b!2750452 () Bool)

(declare-fun tp!868502 () Bool)

(assert (=> b!2750452 (= e!1733797 tp!868502)))

(assert (= b!2750450 b!2750451))

(assert (= (and b!2750450 condSetEmpty!21905) setIsEmpty!21905))

(assert (= (and b!2750450 (not condSetEmpty!21905)) setNonEmpty!21905))

(assert (= setNonEmpty!21905 b!2750452))

(assert (= (and mapNonEmpty!16772 ((_ is Cons!31796) mapValue!16771)) b!2750450))

(declare-fun m!3165483 () Bool)

(assert (=> setNonEmpty!21905 m!3165483))

(declare-fun m!3165485 () Bool)

(assert (=> b!2750450 m!3165485))

(declare-fun b!2750461 () Bool)

(declare-fun e!1733807 () Bool)

(declare-fun tp!868514 () Bool)

(assert (=> b!2750461 (= e!1733807 tp!868514)))

(declare-fun e!1733808 () Bool)

(declare-fun setRes!21908 () Bool)

(declare-fun tp!868517 () Bool)

(declare-fun setElem!21908 () Context!4510)

(declare-fun setNonEmpty!21908 () Bool)

(assert (=> setNonEmpty!21908 (= setRes!21908 (and tp!868517 (inv!43182 setElem!21908) e!1733808))))

(declare-fun setRest!21908 () (InoxSet Context!4510))

(assert (=> setNonEmpty!21908 (= (_2!18602 (h!37213 (zeroValue!3941 (v!33403 (underlying!7567 (v!33404 (underlying!7568 (cache!3731 cacheDown!1142)))))))) ((_ map or) (store ((as const (Array Context!4510 Bool)) false) setElem!21908 true) setRest!21908))))

(declare-fun setIsEmpty!21908 () Bool)

(assert (=> setIsEmpty!21908 setRes!21908))

(declare-fun b!2750463 () Bool)

(declare-fun tp!868516 () Bool)

(assert (=> b!2750463 (= e!1733808 tp!868516)))

(declare-fun e!1733806 () Bool)

(assert (=> b!2750336 (= tp!868423 e!1733806)))

(declare-fun tp!868513 () Bool)

(declare-fun b!2750462 () Bool)

(declare-fun tp!868515 () Bool)

(assert (=> b!2750462 (= e!1733806 (and tp!868515 (inv!43182 (_2!18601 (_1!18602 (h!37213 (zeroValue!3941 (v!33403 (underlying!7567 (v!33404 (underlying!7568 (cache!3731 cacheDown!1142)))))))))) e!1733807 tp_is_empty!13977 setRes!21908 tp!868513))))

(declare-fun condSetEmpty!21908 () Bool)

(assert (=> b!2750462 (= condSetEmpty!21908 (= (_2!18602 (h!37213 (zeroValue!3941 (v!33403 (underlying!7567 (v!33404 (underlying!7568 (cache!3731 cacheDown!1142)))))))) ((as const (Array Context!4510 Bool)) false)))))

(assert (= b!2750462 b!2750461))

(assert (= (and b!2750462 condSetEmpty!21908) setIsEmpty!21908))

(assert (= (and b!2750462 (not condSetEmpty!21908)) setNonEmpty!21908))

(assert (= setNonEmpty!21908 b!2750463))

(assert (= (and b!2750336 ((_ is Cons!31793) (zeroValue!3941 (v!33403 (underlying!7567 (v!33404 (underlying!7568 (cache!3731 cacheDown!1142)))))))) b!2750462))

(declare-fun m!3165487 () Bool)

(assert (=> setNonEmpty!21908 m!3165487))

(declare-fun m!3165489 () Bool)

(assert (=> b!2750462 m!3165489))

(declare-fun b!2750464 () Bool)

(declare-fun e!1733810 () Bool)

(declare-fun tp!868519 () Bool)

(assert (=> b!2750464 (= e!1733810 tp!868519)))

(declare-fun setNonEmpty!21909 () Bool)

(declare-fun setElem!21909 () Context!4510)

(declare-fun tp!868522 () Bool)

(declare-fun setRes!21909 () Bool)

(declare-fun e!1733811 () Bool)

(assert (=> setNonEmpty!21909 (= setRes!21909 (and tp!868522 (inv!43182 setElem!21909) e!1733811))))

(declare-fun setRest!21909 () (InoxSet Context!4510))

(assert (=> setNonEmpty!21909 (= (_2!18602 (h!37213 (minValue!3941 (v!33403 (underlying!7567 (v!33404 (underlying!7568 (cache!3731 cacheDown!1142)))))))) ((_ map or) (store ((as const (Array Context!4510 Bool)) false) setElem!21909 true) setRest!21909))))

(declare-fun setIsEmpty!21909 () Bool)

(assert (=> setIsEmpty!21909 setRes!21909))

(declare-fun b!2750466 () Bool)

(declare-fun tp!868521 () Bool)

(assert (=> b!2750466 (= e!1733811 tp!868521)))

(declare-fun e!1733809 () Bool)

(assert (=> b!2750336 (= tp!868419 e!1733809)))

(declare-fun tp!868520 () Bool)

(declare-fun tp!868518 () Bool)

(declare-fun b!2750465 () Bool)

(assert (=> b!2750465 (= e!1733809 (and tp!868520 (inv!43182 (_2!18601 (_1!18602 (h!37213 (minValue!3941 (v!33403 (underlying!7567 (v!33404 (underlying!7568 (cache!3731 cacheDown!1142)))))))))) e!1733810 tp_is_empty!13977 setRes!21909 tp!868518))))

(declare-fun condSetEmpty!21909 () Bool)

(assert (=> b!2750465 (= condSetEmpty!21909 (= (_2!18602 (h!37213 (minValue!3941 (v!33403 (underlying!7567 (v!33404 (underlying!7568 (cache!3731 cacheDown!1142)))))))) ((as const (Array Context!4510 Bool)) false)))))

(assert (= b!2750465 b!2750464))

(assert (= (and b!2750465 condSetEmpty!21909) setIsEmpty!21909))

(assert (= (and b!2750465 (not condSetEmpty!21909)) setNonEmpty!21909))

(assert (= setNonEmpty!21909 b!2750466))

(assert (= (and b!2750336 ((_ is Cons!31793) (minValue!3941 (v!33403 (underlying!7567 (v!33404 (underlying!7568 (cache!3731 cacheDown!1142)))))))) b!2750465))

(declare-fun m!3165491 () Bool)

(assert (=> setNonEmpty!21909 m!3165491))

(declare-fun m!3165493 () Bool)

(assert (=> b!2750465 m!3165493))

(declare-fun e!1733814 () Bool)

(assert (=> b!2750323 (= tp!868421 e!1733814)))

(declare-fun setElem!21910 () Context!4510)

(declare-fun e!1733812 () Bool)

(declare-fun tp!868524 () Bool)

(declare-fun setNonEmpty!21910 () Bool)

(declare-fun setRes!21910 () Bool)

(assert (=> setNonEmpty!21910 (= setRes!21910 (and tp!868524 (inv!43182 setElem!21910) e!1733812))))

(declare-fun setRest!21910 () (InoxSet Context!4510))

(assert (=> setNonEmpty!21910 (= (_2!18604 (h!37216 mapDefault!16772)) ((_ map or) (store ((as const (Array Context!4510 Bool)) false) setElem!21910 true) setRest!21910))))

(declare-fun e!1733813 () Bool)

(declare-fun b!2750467 () Bool)

(declare-fun tp!868525 () Bool)

(assert (=> b!2750467 (= e!1733814 (and (inv!43182 (_1!18603 (_1!18604 (h!37216 mapDefault!16772)))) e!1733813 tp_is_empty!13977 setRes!21910 tp!868525))))

(declare-fun condSetEmpty!21910 () Bool)

(assert (=> b!2750467 (= condSetEmpty!21910 (= (_2!18604 (h!37216 mapDefault!16772)) ((as const (Array Context!4510 Bool)) false)))))

(declare-fun b!2750468 () Bool)

(declare-fun tp!868523 () Bool)

(assert (=> b!2750468 (= e!1733813 tp!868523)))

(declare-fun setIsEmpty!21910 () Bool)

(assert (=> setIsEmpty!21910 setRes!21910))

(declare-fun b!2750469 () Bool)

(declare-fun tp!868526 () Bool)

(assert (=> b!2750469 (= e!1733812 tp!868526)))

(assert (= b!2750467 b!2750468))

(assert (= (and b!2750467 condSetEmpty!21910) setIsEmpty!21910))

(assert (= (and b!2750467 (not condSetEmpty!21910)) setNonEmpty!21910))

(assert (= setNonEmpty!21910 b!2750469))

(assert (= (and b!2750323 ((_ is Cons!31796) mapDefault!16772)) b!2750467))

(declare-fun m!3165495 () Bool)

(assert (=> setNonEmpty!21910 m!3165495))

(declare-fun m!3165497 () Bool)

(assert (=> b!2750467 m!3165497))

(declare-fun b!2750471 () Bool)

(declare-fun e!1733815 () Bool)

(declare-fun tp!868528 () Bool)

(declare-fun tp!868529 () Bool)

(assert (=> b!2750471 (= e!1733815 (and tp!868528 tp!868529))))

(declare-fun b!2750473 () Bool)

(declare-fun tp!868527 () Bool)

(declare-fun tp!868531 () Bool)

(assert (=> b!2750473 (= e!1733815 (and tp!868527 tp!868531))))

(declare-fun b!2750470 () Bool)

(assert (=> b!2750470 (= e!1733815 tp_is_empty!13977)))

(declare-fun b!2750472 () Bool)

(declare-fun tp!868530 () Bool)

(assert (=> b!2750472 (= e!1733815 tp!868530)))

(assert (=> b!2750319 (= tp!868422 e!1733815)))

(assert (= (and b!2750319 ((_ is ElementMatch!8037) (regOne!16587 r!15227))) b!2750470))

(assert (= (and b!2750319 ((_ is Concat!13125) (regOne!16587 r!15227))) b!2750471))

(assert (= (and b!2750319 ((_ is Star!8037) (regOne!16587 r!15227))) b!2750472))

(assert (= (and b!2750319 ((_ is Union!8037) (regOne!16587 r!15227))) b!2750473))

(declare-fun b!2750475 () Bool)

(declare-fun e!1733816 () Bool)

(declare-fun tp!868533 () Bool)

(declare-fun tp!868534 () Bool)

(assert (=> b!2750475 (= e!1733816 (and tp!868533 tp!868534))))

(declare-fun b!2750477 () Bool)

(declare-fun tp!868532 () Bool)

(declare-fun tp!868536 () Bool)

(assert (=> b!2750477 (= e!1733816 (and tp!868532 tp!868536))))

(declare-fun b!2750474 () Bool)

(assert (=> b!2750474 (= e!1733816 tp_is_empty!13977)))

(declare-fun b!2750476 () Bool)

(declare-fun tp!868535 () Bool)

(assert (=> b!2750476 (= e!1733816 tp!868535)))

(assert (=> b!2750319 (= tp!868411 e!1733816)))

(assert (= (and b!2750319 ((_ is ElementMatch!8037) (regTwo!16587 r!15227))) b!2750474))

(assert (= (and b!2750319 ((_ is Concat!13125) (regTwo!16587 r!15227))) b!2750475))

(assert (= (and b!2750319 ((_ is Star!8037) (regTwo!16587 r!15227))) b!2750476))

(assert (= (and b!2750319 ((_ is Union!8037) (regTwo!16587 r!15227))) b!2750477))

(declare-fun b!2750478 () Bool)

(declare-fun e!1733818 () Bool)

(declare-fun tp!868538 () Bool)

(assert (=> b!2750478 (= e!1733818 tp!868538)))

(declare-fun setElem!21911 () Context!4510)

(declare-fun setNonEmpty!21911 () Bool)

(declare-fun e!1733819 () Bool)

(declare-fun setRes!21911 () Bool)

(declare-fun tp!868541 () Bool)

(assert (=> setNonEmpty!21911 (= setRes!21911 (and tp!868541 (inv!43182 setElem!21911) e!1733819))))

(declare-fun setRest!21911 () (InoxSet Context!4510))

(assert (=> setNonEmpty!21911 (= (_2!18602 (h!37213 mapDefault!16771)) ((_ map or) (store ((as const (Array Context!4510 Bool)) false) setElem!21911 true) setRest!21911))))

(declare-fun setIsEmpty!21911 () Bool)

(assert (=> setIsEmpty!21911 setRes!21911))

(declare-fun b!2750480 () Bool)

(declare-fun tp!868540 () Bool)

(assert (=> b!2750480 (= e!1733819 tp!868540)))

(declare-fun e!1733817 () Bool)

(assert (=> b!2750337 (= tp!868408 e!1733817)))

(declare-fun b!2750479 () Bool)

(declare-fun tp!868539 () Bool)

(declare-fun tp!868537 () Bool)

(assert (=> b!2750479 (= e!1733817 (and tp!868539 (inv!43182 (_2!18601 (_1!18602 (h!37213 mapDefault!16771)))) e!1733818 tp_is_empty!13977 setRes!21911 tp!868537))))

(declare-fun condSetEmpty!21911 () Bool)

(assert (=> b!2750479 (= condSetEmpty!21911 (= (_2!18602 (h!37213 mapDefault!16771)) ((as const (Array Context!4510 Bool)) false)))))

(assert (= b!2750479 b!2750478))

(assert (= (and b!2750479 condSetEmpty!21911) setIsEmpty!21911))

(assert (= (and b!2750479 (not condSetEmpty!21911)) setNonEmpty!21911))

(assert (= setNonEmpty!21911 b!2750480))

(assert (= (and b!2750337 ((_ is Cons!31793) mapDefault!16771)) b!2750479))

(declare-fun m!3165499 () Bool)

(assert (=> setNonEmpty!21911 m!3165499))

(declare-fun m!3165501 () Bool)

(assert (=> b!2750479 m!3165501))

(declare-fun b!2750482 () Bool)

(declare-fun e!1733820 () Bool)

(declare-fun tp!868543 () Bool)

(declare-fun tp!868544 () Bool)

(assert (=> b!2750482 (= e!1733820 (and tp!868543 tp!868544))))

(declare-fun b!2750484 () Bool)

(declare-fun tp!868542 () Bool)

(declare-fun tp!868546 () Bool)

(assert (=> b!2750484 (= e!1733820 (and tp!868542 tp!868546))))

(declare-fun b!2750481 () Bool)

(assert (=> b!2750481 (= e!1733820 tp_is_empty!13977)))

(declare-fun b!2750483 () Bool)

(declare-fun tp!868545 () Bool)

(assert (=> b!2750483 (= e!1733820 tp!868545)))

(assert (=> b!2750335 (= tp!868420 e!1733820)))

(assert (= (and b!2750335 ((_ is ElementMatch!8037) (reg!8366 r!15227))) b!2750481))

(assert (= (and b!2750335 ((_ is Concat!13125) (reg!8366 r!15227))) b!2750482))

(assert (= (and b!2750335 ((_ is Star!8037) (reg!8366 r!15227))) b!2750483))

(assert (= (and b!2750335 ((_ is Union!8037) (reg!8366 r!15227))) b!2750484))

(declare-fun b!2750499 () Bool)

(declare-fun e!1733834 () Bool)

(declare-fun tp!868577 () Bool)

(assert (=> b!2750499 (= e!1733834 tp!868577)))

(declare-fun b!2750500 () Bool)

(declare-fun tp!868571 () Bool)

(declare-fun setRes!21916 () Bool)

(declare-fun tp!868575 () Bool)

(declare-fun mapValue!16778 () List!31893)

(declare-fun e!1733833 () Bool)

(declare-fun e!1733837 () Bool)

(assert (=> b!2750500 (= e!1733833 (and tp!868571 (inv!43182 (_2!18601 (_1!18602 (h!37213 mapValue!16778)))) e!1733837 tp_is_empty!13977 setRes!21916 tp!868575))))

(declare-fun condSetEmpty!21917 () Bool)

(assert (=> b!2750500 (= condSetEmpty!21917 (= (_2!18602 (h!37213 mapValue!16778)) ((as const (Array Context!4510 Bool)) false)))))

(declare-fun condMapEmpty!16778 () Bool)

(declare-fun mapDefault!16778 () List!31893)

(assert (=> mapNonEmpty!16771 (= condMapEmpty!16778 (= mapRest!16771 ((as const (Array (_ BitVec 32) List!31893)) mapDefault!16778)))))

(declare-fun e!1733836 () Bool)

(declare-fun mapRes!16778 () Bool)

(assert (=> mapNonEmpty!16771 (= tp!868413 (and e!1733836 mapRes!16778))))

(declare-fun setIsEmpty!21916 () Bool)

(declare-fun setRes!21917 () Bool)

(assert (=> setIsEmpty!21916 setRes!21917))

(declare-fun tp!868578 () Bool)

(declare-fun b!2750501 () Bool)

(declare-fun e!1733835 () Bool)

(declare-fun tp!868576 () Bool)

(assert (=> b!2750501 (= e!1733836 (and tp!868576 (inv!43182 (_2!18601 (_1!18602 (h!37213 mapDefault!16778)))) e!1733835 tp_is_empty!13977 setRes!21917 tp!868578))))

(declare-fun condSetEmpty!21916 () Bool)

(assert (=> b!2750501 (= condSetEmpty!21916 (= (_2!18602 (h!37213 mapDefault!16778)) ((as const (Array Context!4510 Bool)) false)))))

(declare-fun b!2750502 () Bool)

(declare-fun e!1733838 () Bool)

(declare-fun tp!868574 () Bool)

(assert (=> b!2750502 (= e!1733838 tp!868574)))

(declare-fun tp!868579 () Bool)

(declare-fun setNonEmpty!21916 () Bool)

(declare-fun setElem!21917 () Context!4510)

(assert (=> setNonEmpty!21916 (= setRes!21917 (and tp!868579 (inv!43182 setElem!21917) e!1733834))))

(declare-fun setRest!21916 () (InoxSet Context!4510))

(assert (=> setNonEmpty!21916 (= (_2!18602 (h!37213 mapDefault!16778)) ((_ map or) (store ((as const (Array Context!4510 Bool)) false) setElem!21917 true) setRest!21916))))

(declare-fun mapIsEmpty!16778 () Bool)

(assert (=> mapIsEmpty!16778 mapRes!16778))

(declare-fun b!2750503 () Bool)

(declare-fun tp!868572 () Bool)

(assert (=> b!2750503 (= e!1733837 tp!868572)))

(declare-fun b!2750504 () Bool)

(declare-fun tp!868570 () Bool)

(assert (=> b!2750504 (= e!1733835 tp!868570)))

(declare-fun setIsEmpty!21917 () Bool)

(assert (=> setIsEmpty!21917 setRes!21916))

(declare-fun mapNonEmpty!16778 () Bool)

(declare-fun tp!868569 () Bool)

(assert (=> mapNonEmpty!16778 (= mapRes!16778 (and tp!868569 e!1733833))))

(declare-fun mapRest!16778 () (Array (_ BitVec 32) List!31893))

(declare-fun mapKey!16778 () (_ BitVec 32))

(assert (=> mapNonEmpty!16778 (= mapRest!16771 (store mapRest!16778 mapKey!16778 mapValue!16778))))

(declare-fun setNonEmpty!21917 () Bool)

(declare-fun tp!868573 () Bool)

(declare-fun setElem!21916 () Context!4510)

(assert (=> setNonEmpty!21917 (= setRes!21916 (and tp!868573 (inv!43182 setElem!21916) e!1733838))))

(declare-fun setRest!21917 () (InoxSet Context!4510))

(assert (=> setNonEmpty!21917 (= (_2!18602 (h!37213 mapValue!16778)) ((_ map or) (store ((as const (Array Context!4510 Bool)) false) setElem!21916 true) setRest!21917))))

(assert (= (and mapNonEmpty!16771 condMapEmpty!16778) mapIsEmpty!16778))

(assert (= (and mapNonEmpty!16771 (not condMapEmpty!16778)) mapNonEmpty!16778))

(assert (= b!2750500 b!2750503))

(assert (= (and b!2750500 condSetEmpty!21917) setIsEmpty!21917))

(assert (= (and b!2750500 (not condSetEmpty!21917)) setNonEmpty!21917))

(assert (= setNonEmpty!21917 b!2750502))

(assert (= (and mapNonEmpty!16778 ((_ is Cons!31793) mapValue!16778)) b!2750500))

(assert (= b!2750501 b!2750504))

(assert (= (and b!2750501 condSetEmpty!21916) setIsEmpty!21916))

(assert (= (and b!2750501 (not condSetEmpty!21916)) setNonEmpty!21916))

(assert (= setNonEmpty!21916 b!2750499))

(assert (= (and mapNonEmpty!16771 ((_ is Cons!31793) mapDefault!16778)) b!2750501))

(declare-fun m!3165503 () Bool)

(assert (=> mapNonEmpty!16778 m!3165503))

(declare-fun m!3165505 () Bool)

(assert (=> setNonEmpty!21917 m!3165505))

(declare-fun m!3165507 () Bool)

(assert (=> b!2750501 m!3165507))

(declare-fun m!3165509 () Bool)

(assert (=> setNonEmpty!21916 m!3165509))

(declare-fun m!3165511 () Bool)

(assert (=> b!2750500 m!3165511))

(declare-fun b!2750505 () Bool)

(declare-fun e!1733840 () Bool)

(declare-fun tp!868581 () Bool)

(assert (=> b!2750505 (= e!1733840 tp!868581)))

(declare-fun e!1733841 () Bool)

(declare-fun setElem!21918 () Context!4510)

(declare-fun setNonEmpty!21918 () Bool)

(declare-fun tp!868584 () Bool)

(declare-fun setRes!21918 () Bool)

(assert (=> setNonEmpty!21918 (= setRes!21918 (and tp!868584 (inv!43182 setElem!21918) e!1733841))))

(declare-fun setRest!21918 () (InoxSet Context!4510))

(assert (=> setNonEmpty!21918 (= (_2!18602 (h!37213 mapValue!16772)) ((_ map or) (store ((as const (Array Context!4510 Bool)) false) setElem!21918 true) setRest!21918))))

(declare-fun setIsEmpty!21918 () Bool)

(assert (=> setIsEmpty!21918 setRes!21918))

(declare-fun b!2750507 () Bool)

(declare-fun tp!868583 () Bool)

(assert (=> b!2750507 (= e!1733841 tp!868583)))

(declare-fun e!1733839 () Bool)

(assert (=> mapNonEmpty!16771 (= tp!868416 e!1733839)))

(declare-fun tp!868582 () Bool)

(declare-fun b!2750506 () Bool)

(declare-fun tp!868580 () Bool)

(assert (=> b!2750506 (= e!1733839 (and tp!868582 (inv!43182 (_2!18601 (_1!18602 (h!37213 mapValue!16772)))) e!1733840 tp_is_empty!13977 setRes!21918 tp!868580))))

(declare-fun condSetEmpty!21918 () Bool)

(assert (=> b!2750506 (= condSetEmpty!21918 (= (_2!18602 (h!37213 mapValue!16772)) ((as const (Array Context!4510 Bool)) false)))))

(assert (= b!2750506 b!2750505))

(assert (= (and b!2750506 condSetEmpty!21918) setIsEmpty!21918))

(assert (= (and b!2750506 (not condSetEmpty!21918)) setNonEmpty!21918))

(assert (= setNonEmpty!21918 b!2750507))

(assert (= (and mapNonEmpty!16771 ((_ is Cons!31793) mapValue!16772)) b!2750506))

(declare-fun m!3165513 () Bool)

(assert (=> setNonEmpty!21918 m!3165513))

(declare-fun m!3165515 () Bool)

(assert (=> b!2750506 m!3165515))

(check-sat (not setNonEmpty!21910) (not b!2750449) (not d!796445) b_and!202503 (not b!2750483) (not b!2750345) (not b!2750386) (not b!2750415) (not b!2750476) b_and!202509 (not b!2750500) (not b!2750377) (not b!2750452) (not b_next!78473) (not b!2750504) (not b!2750469) (not b!2750463) (not b!2750427) (not setNonEmpty!21904) (not b!2750418) (not b!2750325) (not b!2750467) (not bm!177508) (not b!2750417) (not setNonEmpty!21911) (not b!2750501) (not b!2750502) (not b!2750484) (not bm!177507) (not d!796447) (not b!2750447) b_and!202505 (not b!2750380) (not b!2750480) (not b!2750403) (not b!2750471) (not setNonEmpty!21905) (not b!2750400) (not b!2750473) (not b!2750472) (not d!796439) (not b!2750465) (not mapNonEmpty!16775) (not b!2750404) (not b!2750399) (not b!2750499) (not b!2750450) (not setNonEmpty!21903) (not d!796449) (not b!2750446) (not setNonEmpty!21916) (not d!796443) (not b!2750444) (not setNonEmpty!21898) (not b!2750448) (not b!2750466) (not b!2750505) (not b!2750451) (not b!2750402) (not b!2750462) (not b!2750413) (not b_next!78469) (not b!2750429) (not d!796441) (not b!2750507) (not b!2750475) (not b!2750464) (not b!2750373) (not b!2750506) (not b!2750461) (not b!2750445) (not b!2750398) (not b!2750477) (not setNonEmpty!21909) (not b!2750468) (not mapNonEmpty!16778) tp_is_empty!13977 (not b!2750478) (not setNonEmpty!21908) (not b!2750347) (not b_next!78475) (not b!2750383) (not b_next!78471) (not b!2750428) (not b!2750416) (not b!2750479) (not d!796451) b_and!202507 (not b!2750414) (not setNonEmpty!21897) (not setNonEmpty!21918) (not setNonEmpty!21917) (not b!2750503) (not b!2750482))
(check-sat b_and!202509 (not b_next!78473) b_and!202505 b_and!202503 (not b_next!78469) (not b_next!78475) (not b_next!78471) b_and!202507)

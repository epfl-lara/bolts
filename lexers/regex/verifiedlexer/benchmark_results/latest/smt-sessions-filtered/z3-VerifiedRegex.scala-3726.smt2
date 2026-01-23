; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!209114 () Bool)

(assert start!209114)

(declare-fun b!2155667 () Bool)

(declare-fun b_free!63669 () Bool)

(declare-fun b_next!64373 () Bool)

(assert (=> b!2155667 (= b_free!63669 (not b_next!64373))))

(declare-fun tp!670998 () Bool)

(declare-fun b_and!173285 () Bool)

(assert (=> b!2155667 (= tp!670998 b_and!173285)))

(declare-fun b!2155665 () Bool)

(declare-fun b_free!63671 () Bool)

(declare-fun b_next!64375 () Bool)

(assert (=> b!2155665 (= b_free!63671 (not b_next!64375))))

(declare-fun tp!670991 () Bool)

(declare-fun b_and!173287 () Bool)

(assert (=> b!2155665 (= tp!670991 b_and!173287)))

(declare-fun b!2155655 () Bool)

(assert (=> b!2155655 true))

(declare-fun bs!445835 () Bool)

(declare-fun b!2155652 () Bool)

(assert (= bs!445835 (and b!2155652 b!2155655)))

(declare-fun lambda!81329 () Int)

(declare-fun lambda!81328 () Int)

(assert (=> bs!445835 (not (= lambda!81329 lambda!81328))))

(assert (=> b!2155652 true))

(declare-fun b!2155648 () Bool)

(declare-fun e!1378828 () Bool)

(declare-fun e!1378826 () Bool)

(assert (=> b!2155648 (= e!1378828 e!1378826)))

(declare-fun res!929313 () Bool)

(assert (=> b!2155648 (=> (not res!929313) (not e!1378826))))

(declare-datatypes ((C!11984 0))(
  ( (C!11985 (val!6978 Int)) )
))
(declare-datatypes ((Regex!5919 0))(
  ( (ElementMatch!5919 (c!341521 C!11984)) (Concat!10221 (regOne!12350 Regex!5919) (regTwo!12350 Regex!5919)) (EmptyExpr!5919) (Star!5919 (reg!6248 Regex!5919)) (EmptyLang!5919) (Union!5919 (regOne!12351 Regex!5919) (regTwo!12351 Regex!5919)) )
))
(declare-datatypes ((List!24950 0))(
  ( (Nil!24866) (Cons!24866 (h!30267 Regex!5919) (t!197498 List!24950)) )
))
(declare-datatypes ((Context!2978 0))(
  ( (Context!2979 (exprs!1989 List!24950)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple3!3722 0))(
  ( (tuple3!3723 (_1!14620 (InoxSet Context!2978)) (_2!14620 Int) (_3!2331 Int)) )
))
(declare-datatypes ((tuple2!24578 0))(
  ( (tuple2!24579 (_1!14621 tuple3!3722) (_2!14621 Int)) )
))
(declare-datatypes ((List!24951 0))(
  ( (Nil!24867) (Cons!24867 (h!30268 tuple2!24578) (t!197499 List!24951)) )
))
(declare-datatypes ((array!9941 0))(
  ( (array!9942 (arr!4436 (Array (_ BitVec 32) (_ BitVec 64))) (size!19430 (_ BitVec 32))) )
))
(declare-datatypes ((array!9943 0))(
  ( (array!9944 (arr!4437 (Array (_ BitVec 32) List!24951)) (size!19431 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5840 0))(
  ( (LongMapFixedSize!5841 (defaultEntry!3285 Int) (mask!7195 (_ BitVec 32)) (extraKeys!3168 (_ BitVec 32)) (zeroValue!3178 List!24951) (minValue!3178 List!24951) (_size!5891 (_ BitVec 32)) (_keys!3217 array!9941) (_values!3200 array!9943) (_vacant!2981 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!11505 0))(
  ( (Cell!11506 (v!29303 LongMapFixedSize!5840)) )
))
(declare-datatypes ((Hashable!2834 0))(
  ( (HashableExt!2833 (__x!16936 Int)) )
))
(declare-datatypes ((MutLongMap!2920 0))(
  ( (LongMap!2920 (underlying!6035 Cell!11505)) (MutLongMapExt!2919 (__x!16937 Int)) )
))
(declare-datatypes ((Cell!11507 0))(
  ( (Cell!11508 (v!29304 MutLongMap!2920)) )
))
(declare-datatypes ((MutableMap!2834 0))(
  ( (MutableMapExt!2833 (__x!16938 Int)) (HashMap!2834 (underlying!6036 Cell!11507) (hashF!4757 Hashable!2834) (_size!5892 (_ BitVec 32)) (defaultValue!2996 Int)) )
))
(declare-datatypes ((List!24952 0))(
  ( (Nil!24868) (Cons!24868 (h!30269 C!11984) (t!197500 List!24952)) )
))
(declare-datatypes ((IArray!16115 0))(
  ( (IArray!16116 (innerList!8115 List!24952)) )
))
(declare-datatypes ((Conc!8055 0))(
  ( (Node!8055 (left!19137 Conc!8055) (right!19467 Conc!8055) (csize!16340 Int) (cheight!8266 Int)) (Leaf!11782 (xs!10997 IArray!16115) (csize!16341 Int)) (Empty!8055) )
))
(declare-datatypes ((BalanceConc!15872 0))(
  ( (BalanceConc!15873 (c!341522 Conc!8055)) )
))
(declare-datatypes ((CacheFurthestNullable!1026 0))(
  ( (CacheFurthestNullable!1027 (cache!3215 MutableMap!2834) (totalInput!3350 BalanceConc!15872)) )
))
(declare-datatypes ((Unit!37953 0))(
  ( (Unit!37954) )
))
(declare-datatypes ((tuple2!24580 0))(
  ( (tuple2!24581 (_1!14622 Unit!37953) (_2!14622 CacheFurthestNullable!1026)) )
))
(declare-fun lt!801562 () tuple2!24580)

(declare-fun valid!2255 (CacheFurthestNullable!1026) Bool)

(assert (=> b!2155648 (= res!929313 (valid!2255 (_2!14622 lt!801562)))))

(declare-fun e!1378831 () tuple2!24580)

(assert (=> b!2155648 (= lt!801562 e!1378831)))

(declare-fun c!341520 () Bool)

(declare-fun totalInputSize!324 () Int)

(declare-fun counter!1 () Int)

(assert (=> b!2155648 (= c!341520 (and (> totalInputSize!324 1048576) (not (= (- counter!1 (* 10 (ite (>= counter!1 0) (div counter!1 10) (- (div (- counter!1) 10))))) 0))))))

(declare-fun mapNonEmpty!13799 () Bool)

(declare-fun mapRes!13799 () Bool)

(declare-fun tp!671000 () Bool)

(declare-fun tp!670999 () Bool)

(assert (=> mapNonEmpty!13799 (= mapRes!13799 (and tp!671000 tp!670999))))

(declare-fun cacheFurthestNullable!118 () CacheFurthestNullable!1026)

(declare-fun mapKey!13799 () (_ BitVec 32))

(declare-fun mapRest!13799 () (Array (_ BitVec 32) List!24951))

(declare-fun mapValue!13799 () List!24951)

(assert (=> mapNonEmpty!13799 (= (arr!4437 (_values!3200 (v!29303 (underlying!6035 (v!29304 (underlying!6036 (cache!3215 cacheFurthestNullable!118))))))) (store mapRest!13799 mapKey!13799 mapValue!13799))))

(declare-fun b!2155649 () Bool)

(declare-fun e!1378839 () Bool)

(declare-fun tp!670995 () Bool)

(assert (=> b!2155649 (= e!1378839 (and tp!670995 mapRes!13799))))

(declare-fun condMapEmpty!13799 () Bool)

(declare-fun mapDefault!13799 () List!24951)

(assert (=> b!2155649 (= condMapEmpty!13799 (= (arr!4437 (_values!3200 (v!29303 (underlying!6035 (v!29304 (underlying!6036 (cache!3215 cacheFurthestNullable!118))))))) ((as const (Array (_ BitVec 32) List!24951)) mapDefault!13799)))))

(declare-fun e!1378827 () Bool)

(declare-fun b!2155650 () Bool)

(declare-fun setRes!17608 () Bool)

(declare-datatypes ((StackFrame!370 0))(
  ( (StackFrame!371 (z!5995 (InoxSet Context!2978)) (from!2836 Int) (lastNullablePos!523 Int) (res!929318 Int) (totalInput!3351 BalanceConc!15872)) )
))
(declare-datatypes ((List!24953 0))(
  ( (Nil!24869) (Cons!24869 (h!30270 StackFrame!370) (t!197501 List!24953)) )
))
(declare-fun stack!12 () List!24953)

(declare-fun e!1378829 () Bool)

(declare-fun inv!32871 (BalanceConc!15872) Bool)

(assert (=> b!2155650 (= e!1378829 (and setRes!17608 (inv!32871 (totalInput!3351 (h!30270 stack!12))) e!1378827))))

(declare-fun condSetEmpty!17608 () Bool)

(assert (=> b!2155650 (= condSetEmpty!17608 (= (z!5995 (h!30270 stack!12)) ((as const (Array Context!2978 Bool)) false)))))

(declare-fun totalInput!880 () BalanceConc!15872)

(declare-fun b!2155651 () Bool)

(declare-fun res!17610 () Int)

(declare-fun update!95 (CacheFurthestNullable!1026 (InoxSet Context!2978) Int Int Int BalanceConc!15872) tuple2!24580)

(assert (=> b!2155651 (= e!1378831 (update!95 cacheFurthestNullable!118 (z!5995 (h!30270 stack!12)) (from!2836 (h!30270 stack!12)) (lastNullablePos!523 (h!30270 stack!12)) res!17610 totalInput!880))))

(declare-fun lt!801560 () Unit!37953)

(declare-fun lemmaInvariant!402 (CacheFurthestNullable!1026) Unit!37953)

(assert (=> b!2155651 (= lt!801560 (lemmaInvariant!402 cacheFurthestNullable!118))))

(declare-fun res!929315 () Bool)

(assert (=> b!2155652 (=> (not res!929315) (not e!1378828))))

(declare-fun forall!5106 (List!24953 Int) Bool)

(assert (=> b!2155652 (= res!929315 (forall!5106 stack!12 lambda!81329))))

(declare-fun b!2155653 () Bool)

(declare-fun res!929311 () Bool)

(assert (=> b!2155653 (=> (not res!929311) (not e!1378828))))

(get-info :version)

(assert (=> b!2155653 (= res!929311 (not ((_ is Nil!24869) stack!12)))))

(declare-fun b!2155654 () Bool)

(declare-fun res!929317 () Bool)

(assert (=> b!2155654 (=> (not res!929317) (not e!1378826))))

(assert (=> b!2155654 (= res!929317 (= (totalInput!3350 (_2!14622 lt!801562)) totalInput!880))))

(declare-fun mapIsEmpty!13799 () Bool)

(assert (=> mapIsEmpty!13799 mapRes!13799))

(declare-fun res!929314 () Bool)

(assert (=> b!2155655 (=> (not res!929314) (not e!1378828))))

(assert (=> b!2155655 (= res!929314 (forall!5106 stack!12 lambda!81328))))

(declare-fun b!2155656 () Bool)

(declare-fun res!929312 () Bool)

(assert (=> b!2155656 (=> (not res!929312) (not e!1378826))))

(assert (=> b!2155656 (= res!929312 (forall!5106 (t!197501 stack!12) lambda!81328))))

(declare-fun e!1378840 () Bool)

(declare-fun b!2155657 () Bool)

(declare-fun e!1378830 () Bool)

(declare-fun e!1378832 () Bool)

(assert (=> b!2155657 (= e!1378830 (and e!1378832 (inv!32871 (totalInput!3350 cacheFurthestNullable!118)) e!1378840))))

(declare-fun b!2155658 () Bool)

(declare-fun e!1378836 () Bool)

(declare-fun e!1378834 () Bool)

(assert (=> b!2155658 (= e!1378836 e!1378834)))

(declare-fun b!2155659 () Bool)

(declare-fun res!929316 () Bool)

(assert (=> b!2155659 (=> (not res!929316) (not e!1378828))))

(assert (=> b!2155659 (= res!929316 (= (totalInput!3350 cacheFurthestNullable!118) totalInput!880))))

(declare-fun setIsEmpty!17608 () Bool)

(assert (=> setIsEmpty!17608 setRes!17608))

(declare-fun res!929310 () Bool)

(assert (=> start!209114 (=> (not res!929310) (not e!1378828))))

(assert (=> start!209114 (= res!929310 (valid!2255 cacheFurthestNullable!118))))

(assert (=> start!209114 e!1378828))

(declare-fun inv!32872 (CacheFurthestNullable!1026) Bool)

(assert (=> start!209114 (and (inv!32872 cacheFurthestNullable!118) e!1378830)))

(assert (=> start!209114 true))

(declare-fun e!1378837 () Bool)

(assert (=> start!209114 (and (inv!32871 totalInput!880) e!1378837)))

(declare-fun e!1378825 () Bool)

(assert (=> start!209114 e!1378825))

(declare-fun tp!670996 () Bool)

(declare-fun setElem!17608 () Context!2978)

(declare-fun setNonEmpty!17608 () Bool)

(declare-fun e!1378833 () Bool)

(declare-fun inv!32873 (Context!2978) Bool)

(assert (=> setNonEmpty!17608 (= setRes!17608 (and tp!670996 (inv!32873 setElem!17608) e!1378833))))

(declare-fun setRest!17608 () (InoxSet Context!2978))

(assert (=> setNonEmpty!17608 (= (z!5995 (h!30270 stack!12)) ((_ map or) (store ((as const (Array Context!2978 Bool)) false) setElem!17608 true) setRest!17608))))

(declare-fun b!2155660 () Bool)

(declare-fun e!1378835 () Bool)

(assert (=> b!2155660 (= e!1378834 e!1378835)))

(declare-fun b!2155661 () Bool)

(declare-fun tp!670992 () Bool)

(declare-fun inv!32874 (Conc!8055) Bool)

(assert (=> b!2155661 (= e!1378837 (and (inv!32874 (c!341522 totalInput!880)) tp!670992))))

(declare-fun b!2155662 () Bool)

(declare-fun tp!671003 () Bool)

(assert (=> b!2155662 (= e!1378840 (and (inv!32874 (c!341522 (totalInput!3350 cacheFurthestNullable!118))) tp!671003))))

(declare-fun b!2155663 () Bool)

(assert (=> b!2155663 (= e!1378826 (not (forall!5106 (t!197501 stack!12) lambda!81329)))))

(declare-fun tp!670993 () Bool)

(declare-fun b!2155664 () Bool)

(declare-fun inv!32875 (StackFrame!370) Bool)

(assert (=> b!2155664 (= e!1378825 (and (inv!32875 (h!30270 stack!12)) e!1378829 tp!670993))))

(declare-fun tp!670994 () Bool)

(declare-fun tp!671002 () Bool)

(declare-fun array_inv!3184 (array!9941) Bool)

(declare-fun array_inv!3185 (array!9943) Bool)

(assert (=> b!2155665 (= e!1378835 (and tp!670991 tp!671002 tp!670994 (array_inv!3184 (_keys!3217 (v!29303 (underlying!6035 (v!29304 (underlying!6036 (cache!3215 cacheFurthestNullable!118))))))) (array_inv!3185 (_values!3200 (v!29303 (underlying!6035 (v!29304 (underlying!6036 (cache!3215 cacheFurthestNullable!118))))))) e!1378839))))

(declare-fun b!2155666 () Bool)

(declare-fun tp!670997 () Bool)

(assert (=> b!2155666 (= e!1378827 (and (inv!32874 (c!341522 (totalInput!3351 (h!30270 stack!12)))) tp!670997))))

(declare-fun e!1378841 () Bool)

(assert (=> b!2155667 (= e!1378832 (and e!1378841 tp!670998))))

(declare-fun b!2155668 () Bool)

(declare-fun Unit!37955 () Unit!37953)

(assert (=> b!2155668 (= e!1378831 (tuple2!24581 Unit!37955 cacheFurthestNullable!118))))

(declare-fun b!2155669 () Bool)

(declare-fun tp!671001 () Bool)

(assert (=> b!2155669 (= e!1378833 tp!671001)))

(declare-fun b!2155670 () Bool)

(declare-fun lt!801561 () MutLongMap!2920)

(assert (=> b!2155670 (= e!1378841 (and e!1378836 ((_ is LongMap!2920) lt!801561)))))

(assert (=> b!2155670 (= lt!801561 (v!29304 (underlying!6036 (cache!3215 cacheFurthestNullable!118))))))

(assert (= (and start!209114 res!929310) b!2155659))

(assert (= (and b!2155659 res!929316) b!2155655))

(assert (= (and b!2155655 res!929314) b!2155652))

(assert (= (and b!2155652 res!929315) b!2155653))

(assert (= (and b!2155653 res!929311) b!2155648))

(assert (= (and b!2155648 c!341520) b!2155668))

(assert (= (and b!2155648 (not c!341520)) b!2155651))

(assert (= (and b!2155648 res!929313) b!2155654))

(assert (= (and b!2155654 res!929317) b!2155656))

(assert (= (and b!2155656 res!929312) b!2155663))

(assert (= (and b!2155649 condMapEmpty!13799) mapIsEmpty!13799))

(assert (= (and b!2155649 (not condMapEmpty!13799)) mapNonEmpty!13799))

(assert (= b!2155665 b!2155649))

(assert (= b!2155660 b!2155665))

(assert (= b!2155658 b!2155660))

(assert (= (and b!2155670 ((_ is LongMap!2920) (v!29304 (underlying!6036 (cache!3215 cacheFurthestNullable!118))))) b!2155658))

(assert (= b!2155667 b!2155670))

(assert (= (and b!2155657 ((_ is HashMap!2834) (cache!3215 cacheFurthestNullable!118))) b!2155667))

(assert (= b!2155657 b!2155662))

(assert (= start!209114 b!2155657))

(assert (= start!209114 b!2155661))

(assert (= (and b!2155650 condSetEmpty!17608) setIsEmpty!17608))

(assert (= (and b!2155650 (not condSetEmpty!17608)) setNonEmpty!17608))

(assert (= setNonEmpty!17608 b!2155669))

(assert (= b!2155650 b!2155666))

(assert (= b!2155664 b!2155650))

(assert (= (and start!209114 ((_ is Cons!24869) stack!12)) b!2155664))

(declare-fun m!2596539 () Bool)

(assert (=> b!2155656 m!2596539))

(declare-fun m!2596541 () Bool)

(assert (=> b!2155657 m!2596541))

(declare-fun m!2596543 () Bool)

(assert (=> b!2155664 m!2596543))

(declare-fun m!2596545 () Bool)

(assert (=> b!2155652 m!2596545))

(declare-fun m!2596547 () Bool)

(assert (=> b!2155665 m!2596547))

(declare-fun m!2596549 () Bool)

(assert (=> b!2155665 m!2596549))

(declare-fun m!2596551 () Bool)

(assert (=> b!2155655 m!2596551))

(declare-fun m!2596553 () Bool)

(assert (=> b!2155666 m!2596553))

(declare-fun m!2596555 () Bool)

(assert (=> b!2155650 m!2596555))

(declare-fun m!2596557 () Bool)

(assert (=> b!2155648 m!2596557))

(declare-fun m!2596559 () Bool)

(assert (=> start!209114 m!2596559))

(declare-fun m!2596561 () Bool)

(assert (=> start!209114 m!2596561))

(declare-fun m!2596563 () Bool)

(assert (=> start!209114 m!2596563))

(declare-fun m!2596565 () Bool)

(assert (=> b!2155651 m!2596565))

(declare-fun m!2596567 () Bool)

(assert (=> b!2155651 m!2596567))

(declare-fun m!2596569 () Bool)

(assert (=> b!2155661 m!2596569))

(declare-fun m!2596571 () Bool)

(assert (=> setNonEmpty!17608 m!2596571))

(declare-fun m!2596573 () Bool)

(assert (=> b!2155663 m!2596573))

(declare-fun m!2596575 () Bool)

(assert (=> b!2155662 m!2596575))

(declare-fun m!2596577 () Bool)

(assert (=> mapNonEmpty!13799 m!2596577))

(check-sat b_and!173287 (not b_next!64373) (not b!2155669) b_and!173285 (not b!2155650) (not b!2155666) (not b!2155661) (not b_next!64375) (not b!2155663) (not b!2155665) (not b!2155657) (not b!2155656) (not b!2155652) (not b!2155664) (not b!2155648) (not start!209114) (not b!2155651) (not setNonEmpty!17608) (not mapNonEmpty!13799) (not b!2155655) (not b!2155662) (not b!2155649))
(check-sat b_and!173285 b_and!173287 (not b_next!64373) (not b_next!64375))
(get-model)

(declare-fun d!646287 () Bool)

(declare-fun e!1378844 () Bool)

(assert (=> d!646287 e!1378844))

(declare-fun res!929322 () Bool)

(assert (=> d!646287 (=> (not res!929322) (not e!1378844))))

(declare-fun lt!801565 () tuple2!24580)

(declare-fun validCacheMapFurthestNullable!170 (MutableMap!2834 BalanceConc!15872) Bool)

(assert (=> d!646287 (= res!929322 (validCacheMapFurthestNullable!170 (cache!3215 (_2!14622 lt!801565)) (totalInput!3350 (_2!14622 lt!801565))))))

(declare-fun choose!12711 (CacheFurthestNullable!1026 (InoxSet Context!2978) Int Int Int BalanceConc!15872) tuple2!24580)

(assert (=> d!646287 (= lt!801565 (choose!12711 cacheFurthestNullable!118 (z!5995 (h!30270 stack!12)) (from!2836 (h!30270 stack!12)) (lastNullablePos!523 (h!30270 stack!12)) res!17610 totalInput!880))))

(assert (=> d!646287 (= totalInput!880 (totalInput!3350 cacheFurthestNullable!118))))

(assert (=> d!646287 (= (update!95 cacheFurthestNullable!118 (z!5995 (h!30270 stack!12)) (from!2836 (h!30270 stack!12)) (lastNullablePos!523 (h!30270 stack!12)) res!17610 totalInput!880) lt!801565)))

(declare-fun b!2155677 () Bool)

(assert (=> b!2155677 (= e!1378844 (= (totalInput!3350 (_2!14622 lt!801565)) totalInput!880))))

(assert (= (and d!646287 res!929322) b!2155677))

(declare-fun m!2596579 () Bool)

(assert (=> d!646287 m!2596579))

(declare-fun m!2596581 () Bool)

(assert (=> d!646287 m!2596581))

(assert (=> b!2155651 d!646287))

(declare-fun d!646289 () Bool)

(assert (=> d!646289 (valid!2255 cacheFurthestNullable!118)))

(declare-fun Unit!37956 () Unit!37953)

(assert (=> d!646289 (= (lemmaInvariant!402 cacheFurthestNullable!118) Unit!37956)))

(declare-fun bs!445836 () Bool)

(assert (= bs!445836 d!646289))

(assert (=> bs!445836 m!2596559))

(assert (=> b!2155651 d!646289))

(declare-fun d!646291 () Bool)

(declare-fun res!929327 () Bool)

(declare-fun e!1378849 () Bool)

(assert (=> d!646291 (=> res!929327 e!1378849)))

(assert (=> d!646291 (= res!929327 ((_ is Nil!24869) stack!12))))

(assert (=> d!646291 (= (forall!5106 stack!12 lambda!81329) e!1378849)))

(declare-fun b!2155682 () Bool)

(declare-fun e!1378850 () Bool)

(assert (=> b!2155682 (= e!1378849 e!1378850)))

(declare-fun res!929328 () Bool)

(assert (=> b!2155682 (=> (not res!929328) (not e!1378850))))

(declare-fun dynLambda!11413 (Int StackFrame!370) Bool)

(assert (=> b!2155682 (= res!929328 (dynLambda!11413 lambda!81329 (h!30270 stack!12)))))

(declare-fun b!2155683 () Bool)

(assert (=> b!2155683 (= e!1378850 (forall!5106 (t!197501 stack!12) lambda!81329))))

(assert (= (and d!646291 (not res!929327)) b!2155682))

(assert (= (and b!2155682 res!929328) b!2155683))

(declare-fun b_lambda!70957 () Bool)

(assert (=> (not b_lambda!70957) (not b!2155682)))

(declare-fun m!2596583 () Bool)

(assert (=> b!2155682 m!2596583))

(assert (=> b!2155683 m!2596573))

(assert (=> b!2155652 d!646291))

(declare-fun d!646293 () Bool)

(declare-fun c!341525 () Bool)

(assert (=> d!646293 (= c!341525 ((_ is Node!8055) (c!341522 totalInput!880)))))

(declare-fun e!1378855 () Bool)

(assert (=> d!646293 (= (inv!32874 (c!341522 totalInput!880)) e!1378855)))

(declare-fun b!2155690 () Bool)

(declare-fun inv!32876 (Conc!8055) Bool)

(assert (=> b!2155690 (= e!1378855 (inv!32876 (c!341522 totalInput!880)))))

(declare-fun b!2155691 () Bool)

(declare-fun e!1378856 () Bool)

(assert (=> b!2155691 (= e!1378855 e!1378856)))

(declare-fun res!929331 () Bool)

(assert (=> b!2155691 (= res!929331 (not ((_ is Leaf!11782) (c!341522 totalInput!880))))))

(assert (=> b!2155691 (=> res!929331 e!1378856)))

(declare-fun b!2155692 () Bool)

(declare-fun inv!32877 (Conc!8055) Bool)

(assert (=> b!2155692 (= e!1378856 (inv!32877 (c!341522 totalInput!880)))))

(assert (= (and d!646293 c!341525) b!2155690))

(assert (= (and d!646293 (not c!341525)) b!2155691))

(assert (= (and b!2155691 (not res!929331)) b!2155692))

(declare-fun m!2596585 () Bool)

(assert (=> b!2155690 m!2596585))

(declare-fun m!2596587 () Bool)

(assert (=> b!2155692 m!2596587))

(assert (=> b!2155661 d!646293))

(declare-fun d!646295 () Bool)

(declare-fun res!929332 () Bool)

(declare-fun e!1378857 () Bool)

(assert (=> d!646295 (=> res!929332 e!1378857)))

(assert (=> d!646295 (= res!929332 ((_ is Nil!24869) (t!197501 stack!12)))))

(assert (=> d!646295 (= (forall!5106 (t!197501 stack!12) lambda!81329) e!1378857)))

(declare-fun b!2155693 () Bool)

(declare-fun e!1378858 () Bool)

(assert (=> b!2155693 (= e!1378857 e!1378858)))

(declare-fun res!929333 () Bool)

(assert (=> b!2155693 (=> (not res!929333) (not e!1378858))))

(assert (=> b!2155693 (= res!929333 (dynLambda!11413 lambda!81329 (h!30270 (t!197501 stack!12))))))

(declare-fun b!2155694 () Bool)

(assert (=> b!2155694 (= e!1378858 (forall!5106 (t!197501 (t!197501 stack!12)) lambda!81329))))

(assert (= (and d!646295 (not res!929332)) b!2155693))

(assert (= (and b!2155693 res!929333) b!2155694))

(declare-fun b_lambda!70959 () Bool)

(assert (=> (not b_lambda!70959) (not b!2155693)))

(declare-fun m!2596589 () Bool)

(assert (=> b!2155693 m!2596589))

(declare-fun m!2596591 () Bool)

(assert (=> b!2155694 m!2596591))

(assert (=> b!2155663 d!646295))

(declare-fun d!646297 () Bool)

(declare-fun c!341526 () Bool)

(assert (=> d!646297 (= c!341526 ((_ is Node!8055) (c!341522 (totalInput!3350 cacheFurthestNullable!118))))))

(declare-fun e!1378859 () Bool)

(assert (=> d!646297 (= (inv!32874 (c!341522 (totalInput!3350 cacheFurthestNullable!118))) e!1378859)))

(declare-fun b!2155695 () Bool)

(assert (=> b!2155695 (= e!1378859 (inv!32876 (c!341522 (totalInput!3350 cacheFurthestNullable!118))))))

(declare-fun b!2155696 () Bool)

(declare-fun e!1378860 () Bool)

(assert (=> b!2155696 (= e!1378859 e!1378860)))

(declare-fun res!929334 () Bool)

(assert (=> b!2155696 (= res!929334 (not ((_ is Leaf!11782) (c!341522 (totalInput!3350 cacheFurthestNullable!118)))))))

(assert (=> b!2155696 (=> res!929334 e!1378860)))

(declare-fun b!2155697 () Bool)

(assert (=> b!2155697 (= e!1378860 (inv!32877 (c!341522 (totalInput!3350 cacheFurthestNullable!118))))))

(assert (= (and d!646297 c!341526) b!2155695))

(assert (= (and d!646297 (not c!341526)) b!2155696))

(assert (= (and b!2155696 (not res!929334)) b!2155697))

(declare-fun m!2596593 () Bool)

(assert (=> b!2155695 m!2596593))

(declare-fun m!2596595 () Bool)

(assert (=> b!2155697 m!2596595))

(assert (=> b!2155662 d!646297))

(declare-fun b!2155710 () Bool)

(declare-fun res!929348 () Bool)

(declare-fun e!1378865 () Bool)

(assert (=> b!2155710 (=> (not res!929348) (not e!1378865))))

(declare-fun size!19432 (BalanceConc!15872) Int)

(assert (=> b!2155710 (= res!929348 (<= (from!2836 (h!30270 stack!12)) (size!19432 (totalInput!3351 (h!30270 stack!12)))))))

(declare-fun d!646299 () Bool)

(declare-fun res!929352 () Bool)

(assert (=> d!646299 (=> (not res!929352) (not e!1378865))))

(assert (=> d!646299 (= res!929352 (>= (from!2836 (h!30270 stack!12)) 0))))

(assert (=> d!646299 (= (inv!32875 (h!30270 stack!12)) e!1378865)))

(declare-fun b!2155711 () Bool)

(declare-fun e!1378866 () Bool)

(assert (=> b!2155711 (= e!1378866 (= (lastNullablePos!523 (h!30270 stack!12)) (- (from!2836 (h!30270 stack!12)) 1)))))

(declare-fun b!2155712 () Bool)

(declare-fun res!929351 () Bool)

(assert (=> b!2155712 (=> (not res!929351) (not e!1378865))))

(assert (=> b!2155712 (= res!929351 (and (>= (lastNullablePos!523 (h!30270 stack!12)) (- 1)) (< (lastNullablePos!523 (h!30270 stack!12)) (from!2836 (h!30270 stack!12)))))))

(declare-fun b!2155713 () Bool)

(declare-fun res!929349 () Bool)

(assert (=> b!2155713 (=> (not res!929349) (not e!1378865))))

(assert (=> b!2155713 (= res!929349 e!1378866)))

(declare-fun res!929347 () Bool)

(assert (=> b!2155713 (=> res!929347 e!1378866)))

(declare-fun nullableZipper!221 ((InoxSet Context!2978)) Bool)

(assert (=> b!2155713 (= res!929347 (not (nullableZipper!221 (z!5995 (h!30270 stack!12)))))))

(declare-fun b!2155714 () Bool)

(declare-fun res!929350 () Bool)

(assert (=> b!2155714 (=> (not res!929350) (not e!1378865))))

(assert (=> b!2155714 (= res!929350 (= (size!19432 (totalInput!3351 (h!30270 stack!12))) (size!19432 (totalInput!3351 (h!30270 stack!12)))))))

(declare-fun b!2155715 () Bool)

(declare-fun furthestNullablePosition!133 ((InoxSet Context!2978) Int BalanceConc!15872 Int Int) Int)

(assert (=> b!2155715 (= e!1378865 (= (res!929318 (h!30270 stack!12)) (furthestNullablePosition!133 (z!5995 (h!30270 stack!12)) (from!2836 (h!30270 stack!12)) (totalInput!3351 (h!30270 stack!12)) (size!19432 (totalInput!3351 (h!30270 stack!12))) (lastNullablePos!523 (h!30270 stack!12)))))))

(assert (= (and d!646299 res!929352) b!2155710))

(assert (= (and b!2155710 res!929348) b!2155714))

(assert (= (and b!2155714 res!929350) b!2155712))

(assert (= (and b!2155712 res!929351) b!2155713))

(assert (= (and b!2155713 (not res!929347)) b!2155711))

(assert (= (and b!2155713 res!929349) b!2155715))

(declare-fun m!2596597 () Bool)

(assert (=> b!2155710 m!2596597))

(declare-fun m!2596599 () Bool)

(assert (=> b!2155713 m!2596599))

(assert (=> b!2155714 m!2596597))

(assert (=> b!2155715 m!2596597))

(assert (=> b!2155715 m!2596597))

(declare-fun m!2596601 () Bool)

(assert (=> b!2155715 m!2596601))

(assert (=> b!2155664 d!646299))

(declare-fun d!646301 () Bool)

(assert (=> d!646301 (= (valid!2255 (_2!14622 lt!801562)) (validCacheMapFurthestNullable!170 (cache!3215 (_2!14622 lt!801562)) (totalInput!3350 (_2!14622 lt!801562))))))

(declare-fun bs!445837 () Bool)

(assert (= bs!445837 d!646301))

(declare-fun m!2596603 () Bool)

(assert (=> bs!445837 m!2596603))

(assert (=> b!2155648 d!646301))

(declare-fun d!646303 () Bool)

(declare-fun res!929353 () Bool)

(declare-fun e!1378867 () Bool)

(assert (=> d!646303 (=> res!929353 e!1378867)))

(assert (=> d!646303 (= res!929353 ((_ is Nil!24869) (t!197501 stack!12)))))

(assert (=> d!646303 (= (forall!5106 (t!197501 stack!12) lambda!81328) e!1378867)))

(declare-fun b!2155716 () Bool)

(declare-fun e!1378868 () Bool)

(assert (=> b!2155716 (= e!1378867 e!1378868)))

(declare-fun res!929354 () Bool)

(assert (=> b!2155716 (=> (not res!929354) (not e!1378868))))

(assert (=> b!2155716 (= res!929354 (dynLambda!11413 lambda!81328 (h!30270 (t!197501 stack!12))))))

(declare-fun b!2155717 () Bool)

(assert (=> b!2155717 (= e!1378868 (forall!5106 (t!197501 (t!197501 stack!12)) lambda!81328))))

(assert (= (and d!646303 (not res!929353)) b!2155716))

(assert (= (and b!2155716 res!929354) b!2155717))

(declare-fun b_lambda!70961 () Bool)

(assert (=> (not b_lambda!70961) (not b!2155716)))

(declare-fun m!2596605 () Bool)

(assert (=> b!2155716 m!2596605))

(declare-fun m!2596607 () Bool)

(assert (=> b!2155717 m!2596607))

(assert (=> b!2155656 d!646303))

(declare-fun d!646305 () Bool)

(assert (=> d!646305 (= (valid!2255 cacheFurthestNullable!118) (validCacheMapFurthestNullable!170 (cache!3215 cacheFurthestNullable!118) (totalInput!3350 cacheFurthestNullable!118)))))

(declare-fun bs!445838 () Bool)

(assert (= bs!445838 d!646305))

(declare-fun m!2596609 () Bool)

(assert (=> bs!445838 m!2596609))

(assert (=> start!209114 d!646305))

(declare-fun d!646307 () Bool)

(declare-fun res!929357 () Bool)

(declare-fun e!1378871 () Bool)

(assert (=> d!646307 (=> (not res!929357) (not e!1378871))))

(assert (=> d!646307 (= res!929357 ((_ is HashMap!2834) (cache!3215 cacheFurthestNullable!118)))))

(assert (=> d!646307 (= (inv!32872 cacheFurthestNullable!118) e!1378871)))

(declare-fun b!2155720 () Bool)

(assert (=> b!2155720 (= e!1378871 (validCacheMapFurthestNullable!170 (cache!3215 cacheFurthestNullable!118) (totalInput!3350 cacheFurthestNullable!118)))))

(assert (= (and d!646307 res!929357) b!2155720))

(assert (=> b!2155720 m!2596609))

(assert (=> start!209114 d!646307))

(declare-fun d!646309 () Bool)

(declare-fun isBalanced!2499 (Conc!8055) Bool)

(assert (=> d!646309 (= (inv!32871 totalInput!880) (isBalanced!2499 (c!341522 totalInput!880)))))

(declare-fun bs!445839 () Bool)

(assert (= bs!445839 d!646309))

(declare-fun m!2596611 () Bool)

(assert (=> bs!445839 m!2596611))

(assert (=> start!209114 d!646309))

(declare-fun d!646311 () Bool)

(declare-fun res!929358 () Bool)

(declare-fun e!1378872 () Bool)

(assert (=> d!646311 (=> res!929358 e!1378872)))

(assert (=> d!646311 (= res!929358 ((_ is Nil!24869) stack!12))))

(assert (=> d!646311 (= (forall!5106 stack!12 lambda!81328) e!1378872)))

(declare-fun b!2155721 () Bool)

(declare-fun e!1378873 () Bool)

(assert (=> b!2155721 (= e!1378872 e!1378873)))

(declare-fun res!929359 () Bool)

(assert (=> b!2155721 (=> (not res!929359) (not e!1378873))))

(assert (=> b!2155721 (= res!929359 (dynLambda!11413 lambda!81328 (h!30270 stack!12)))))

(declare-fun b!2155722 () Bool)

(assert (=> b!2155722 (= e!1378873 (forall!5106 (t!197501 stack!12) lambda!81328))))

(assert (= (and d!646311 (not res!929358)) b!2155721))

(assert (= (and b!2155721 res!929359) b!2155722))

(declare-fun b_lambda!70963 () Bool)

(assert (=> (not b_lambda!70963) (not b!2155721)))

(declare-fun m!2596613 () Bool)

(assert (=> b!2155721 m!2596613))

(assert (=> b!2155722 m!2596539))

(assert (=> b!2155655 d!646311))

(declare-fun d!646313 () Bool)

(assert (=> d!646313 (= (array_inv!3184 (_keys!3217 (v!29303 (underlying!6035 (v!29304 (underlying!6036 (cache!3215 cacheFurthestNullable!118))))))) (bvsge (size!19430 (_keys!3217 (v!29303 (underlying!6035 (v!29304 (underlying!6036 (cache!3215 cacheFurthestNullable!118))))))) #b00000000000000000000000000000000))))

(assert (=> b!2155665 d!646313))

(declare-fun d!646315 () Bool)

(assert (=> d!646315 (= (array_inv!3185 (_values!3200 (v!29303 (underlying!6035 (v!29304 (underlying!6036 (cache!3215 cacheFurthestNullable!118))))))) (bvsge (size!19431 (_values!3200 (v!29303 (underlying!6035 (v!29304 (underlying!6036 (cache!3215 cacheFurthestNullable!118))))))) #b00000000000000000000000000000000))))

(assert (=> b!2155665 d!646315))

(declare-fun d!646317 () Bool)

(assert (=> d!646317 (= (inv!32871 (totalInput!3350 cacheFurthestNullable!118)) (isBalanced!2499 (c!341522 (totalInput!3350 cacheFurthestNullable!118))))))

(declare-fun bs!445840 () Bool)

(assert (= bs!445840 d!646317))

(declare-fun m!2596615 () Bool)

(assert (=> bs!445840 m!2596615))

(assert (=> b!2155657 d!646317))

(declare-fun d!646319 () Bool)

(declare-fun c!341527 () Bool)

(assert (=> d!646319 (= c!341527 ((_ is Node!8055) (c!341522 (totalInput!3351 (h!30270 stack!12)))))))

(declare-fun e!1378874 () Bool)

(assert (=> d!646319 (= (inv!32874 (c!341522 (totalInput!3351 (h!30270 stack!12)))) e!1378874)))

(declare-fun b!2155723 () Bool)

(assert (=> b!2155723 (= e!1378874 (inv!32876 (c!341522 (totalInput!3351 (h!30270 stack!12)))))))

(declare-fun b!2155724 () Bool)

(declare-fun e!1378875 () Bool)

(assert (=> b!2155724 (= e!1378874 e!1378875)))

(declare-fun res!929360 () Bool)

(assert (=> b!2155724 (= res!929360 (not ((_ is Leaf!11782) (c!341522 (totalInput!3351 (h!30270 stack!12))))))))

(assert (=> b!2155724 (=> res!929360 e!1378875)))

(declare-fun b!2155725 () Bool)

(assert (=> b!2155725 (= e!1378875 (inv!32877 (c!341522 (totalInput!3351 (h!30270 stack!12)))))))

(assert (= (and d!646319 c!341527) b!2155723))

(assert (= (and d!646319 (not c!341527)) b!2155724))

(assert (= (and b!2155724 (not res!929360)) b!2155725))

(declare-fun m!2596617 () Bool)

(assert (=> b!2155723 m!2596617))

(declare-fun m!2596619 () Bool)

(assert (=> b!2155725 m!2596619))

(assert (=> b!2155666 d!646319))

(declare-fun d!646321 () Bool)

(assert (=> d!646321 (= (inv!32871 (totalInput!3351 (h!30270 stack!12))) (isBalanced!2499 (c!341522 (totalInput!3351 (h!30270 stack!12)))))))

(declare-fun bs!445841 () Bool)

(assert (= bs!445841 d!646321))

(declare-fun m!2596621 () Bool)

(assert (=> bs!445841 m!2596621))

(assert (=> b!2155650 d!646321))

(declare-fun d!646323 () Bool)

(declare-fun lambda!81332 () Int)

(declare-fun forall!5107 (List!24950 Int) Bool)

(assert (=> d!646323 (= (inv!32873 setElem!17608) (forall!5107 (exprs!1989 setElem!17608) lambda!81332))))

(declare-fun bs!445842 () Bool)

(assert (= bs!445842 d!646323))

(declare-fun m!2596623 () Bool)

(assert (=> bs!445842 m!2596623))

(assert (=> setNonEmpty!17608 d!646323))

(declare-fun e!1378880 () Bool)

(assert (=> b!2155665 (= tp!671002 e!1378880)))

(declare-fun setIsEmpty!17611 () Bool)

(declare-fun setRes!17611 () Bool)

(assert (=> setIsEmpty!17611 setRes!17611))

(declare-fun b!2155733 () Bool)

(declare-fun e!1378881 () Bool)

(declare-fun tp!671011 () Bool)

(assert (=> b!2155733 (= e!1378881 tp!671011)))

(declare-fun b!2155732 () Bool)

(declare-fun tp!671010 () Bool)

(assert (=> b!2155732 (= e!1378880 (and setRes!17611 tp!671010))))

(declare-fun condSetEmpty!17611 () Bool)

(assert (=> b!2155732 (= condSetEmpty!17611 (= (_1!14620 (_1!14621 (h!30268 (zeroValue!3178 (v!29303 (underlying!6035 (v!29304 (underlying!6036 (cache!3215 cacheFurthestNullable!118))))))))) ((as const (Array Context!2978 Bool)) false)))))

(declare-fun setNonEmpty!17611 () Bool)

(declare-fun tp!671012 () Bool)

(declare-fun setElem!17611 () Context!2978)

(assert (=> setNonEmpty!17611 (= setRes!17611 (and tp!671012 (inv!32873 setElem!17611) e!1378881))))

(declare-fun setRest!17611 () (InoxSet Context!2978))

(assert (=> setNonEmpty!17611 (= (_1!14620 (_1!14621 (h!30268 (zeroValue!3178 (v!29303 (underlying!6035 (v!29304 (underlying!6036 (cache!3215 cacheFurthestNullable!118))))))))) ((_ map or) (store ((as const (Array Context!2978 Bool)) false) setElem!17611 true) setRest!17611))))

(assert (= (and b!2155732 condSetEmpty!17611) setIsEmpty!17611))

(assert (= (and b!2155732 (not condSetEmpty!17611)) setNonEmpty!17611))

(assert (= setNonEmpty!17611 b!2155733))

(assert (= (and b!2155665 ((_ is Cons!24867) (zeroValue!3178 (v!29303 (underlying!6035 (v!29304 (underlying!6036 (cache!3215 cacheFurthestNullable!118)))))))) b!2155732))

(declare-fun m!2596625 () Bool)

(assert (=> setNonEmpty!17611 m!2596625))

(declare-fun e!1378882 () Bool)

(assert (=> b!2155665 (= tp!670994 e!1378882)))

(declare-fun setIsEmpty!17612 () Bool)

(declare-fun setRes!17612 () Bool)

(assert (=> setIsEmpty!17612 setRes!17612))

(declare-fun b!2155735 () Bool)

(declare-fun e!1378883 () Bool)

(declare-fun tp!671014 () Bool)

(assert (=> b!2155735 (= e!1378883 tp!671014)))

(declare-fun b!2155734 () Bool)

(declare-fun tp!671013 () Bool)

(assert (=> b!2155734 (= e!1378882 (and setRes!17612 tp!671013))))

(declare-fun condSetEmpty!17612 () Bool)

(assert (=> b!2155734 (= condSetEmpty!17612 (= (_1!14620 (_1!14621 (h!30268 (minValue!3178 (v!29303 (underlying!6035 (v!29304 (underlying!6036 (cache!3215 cacheFurthestNullable!118))))))))) ((as const (Array Context!2978 Bool)) false)))))

(declare-fun setNonEmpty!17612 () Bool)

(declare-fun setElem!17612 () Context!2978)

(declare-fun tp!671015 () Bool)

(assert (=> setNonEmpty!17612 (= setRes!17612 (and tp!671015 (inv!32873 setElem!17612) e!1378883))))

(declare-fun setRest!17612 () (InoxSet Context!2978))

(assert (=> setNonEmpty!17612 (= (_1!14620 (_1!14621 (h!30268 (minValue!3178 (v!29303 (underlying!6035 (v!29304 (underlying!6036 (cache!3215 cacheFurthestNullable!118))))))))) ((_ map or) (store ((as const (Array Context!2978 Bool)) false) setElem!17612 true) setRest!17612))))

(assert (= (and b!2155734 condSetEmpty!17612) setIsEmpty!17612))

(assert (= (and b!2155734 (not condSetEmpty!17612)) setNonEmpty!17612))

(assert (= setNonEmpty!17612 b!2155735))

(assert (= (and b!2155665 ((_ is Cons!24867) (minValue!3178 (v!29303 (underlying!6035 (v!29304 (underlying!6036 (cache!3215 cacheFurthestNullable!118)))))))) b!2155734))

(declare-fun m!2596627 () Bool)

(assert (=> setNonEmpty!17612 m!2596627))

(declare-fun tp!671023 () Bool)

(declare-fun tp!671024 () Bool)

(declare-fun b!2155744 () Bool)

(declare-fun e!1378889 () Bool)

(assert (=> b!2155744 (= e!1378889 (and (inv!32874 (left!19137 (c!341522 (totalInput!3351 (h!30270 stack!12))))) tp!671024 (inv!32874 (right!19467 (c!341522 (totalInput!3351 (h!30270 stack!12))))) tp!671023))))

(declare-fun b!2155746 () Bool)

(declare-fun e!1378888 () Bool)

(declare-fun tp!671022 () Bool)

(assert (=> b!2155746 (= e!1378888 tp!671022)))

(declare-fun b!2155745 () Bool)

(declare-fun inv!32878 (IArray!16115) Bool)

(assert (=> b!2155745 (= e!1378889 (and (inv!32878 (xs!10997 (c!341522 (totalInput!3351 (h!30270 stack!12))))) e!1378888))))

(assert (=> b!2155666 (= tp!670997 (and (inv!32874 (c!341522 (totalInput!3351 (h!30270 stack!12)))) e!1378889))))

(assert (= (and b!2155666 ((_ is Node!8055) (c!341522 (totalInput!3351 (h!30270 stack!12))))) b!2155744))

(assert (= b!2155745 b!2155746))

(assert (= (and b!2155666 ((_ is Leaf!11782) (c!341522 (totalInput!3351 (h!30270 stack!12))))) b!2155745))

(declare-fun m!2596629 () Bool)

(assert (=> b!2155744 m!2596629))

(declare-fun m!2596631 () Bool)

(assert (=> b!2155744 m!2596631))

(declare-fun m!2596633 () Bool)

(assert (=> b!2155745 m!2596633))

(assert (=> b!2155666 m!2596553))

(declare-fun b!2155747 () Bool)

(declare-fun tp!671027 () Bool)

(declare-fun e!1378891 () Bool)

(declare-fun tp!671026 () Bool)

(assert (=> b!2155747 (= e!1378891 (and (inv!32874 (left!19137 (c!341522 totalInput!880))) tp!671027 (inv!32874 (right!19467 (c!341522 totalInput!880))) tp!671026))))

(declare-fun b!2155749 () Bool)

(declare-fun e!1378890 () Bool)

(declare-fun tp!671025 () Bool)

(assert (=> b!2155749 (= e!1378890 tp!671025)))

(declare-fun b!2155748 () Bool)

(assert (=> b!2155748 (= e!1378891 (and (inv!32878 (xs!10997 (c!341522 totalInput!880))) e!1378890))))

(assert (=> b!2155661 (= tp!670992 (and (inv!32874 (c!341522 totalInput!880)) e!1378891))))

(assert (= (and b!2155661 ((_ is Node!8055) (c!341522 totalInput!880))) b!2155747))

(assert (= b!2155748 b!2155749))

(assert (= (and b!2155661 ((_ is Leaf!11782) (c!341522 totalInput!880))) b!2155748))

(declare-fun m!2596635 () Bool)

(assert (=> b!2155747 m!2596635))

(declare-fun m!2596637 () Bool)

(assert (=> b!2155747 m!2596637))

(declare-fun m!2596639 () Bool)

(assert (=> b!2155748 m!2596639))

(assert (=> b!2155661 m!2596569))

(declare-fun condMapEmpty!13802 () Bool)

(declare-fun mapDefault!13802 () List!24951)

(assert (=> mapNonEmpty!13799 (= condMapEmpty!13802 (= mapRest!13799 ((as const (Array (_ BitVec 32) List!24951)) mapDefault!13802)))))

(declare-fun e!1378901 () Bool)

(declare-fun mapRes!13802 () Bool)

(assert (=> mapNonEmpty!13799 (= tp!671000 (and e!1378901 mapRes!13802))))

(declare-fun setIsEmpty!17617 () Bool)

(declare-fun setRes!17618 () Bool)

(assert (=> setIsEmpty!17617 setRes!17618))

(declare-fun setRes!17617 () Bool)

(declare-fun tp!671044 () Bool)

(declare-fun setElem!17618 () Context!2978)

(declare-fun e!1378902 () Bool)

(declare-fun setNonEmpty!17617 () Bool)

(assert (=> setNonEmpty!17617 (= setRes!17617 (and tp!671044 (inv!32873 setElem!17618) e!1378902))))

(declare-fun mapValue!13802 () List!24951)

(declare-fun setRest!17618 () (InoxSet Context!2978))

(assert (=> setNonEmpty!17617 (= (_1!14620 (_1!14621 (h!30268 mapValue!13802))) ((_ map or) (store ((as const (Array Context!2978 Bool)) false) setElem!17618 true) setRest!17618))))

(declare-fun b!2155760 () Bool)

(declare-fun tp!671043 () Bool)

(assert (=> b!2155760 (= e!1378902 tp!671043)))

(declare-fun b!2155761 () Bool)

(declare-fun e!1378903 () Bool)

(declare-fun tp!671045 () Bool)

(assert (=> b!2155761 (= e!1378903 (and setRes!17617 tp!671045))))

(declare-fun condSetEmpty!17618 () Bool)

(assert (=> b!2155761 (= condSetEmpty!17618 (= (_1!14620 (_1!14621 (h!30268 mapValue!13802))) ((as const (Array Context!2978 Bool)) false)))))

(declare-fun b!2155762 () Bool)

(declare-fun tp!671042 () Bool)

(assert (=> b!2155762 (= e!1378901 (and setRes!17618 tp!671042))))

(declare-fun condSetEmpty!17617 () Bool)

(assert (=> b!2155762 (= condSetEmpty!17617 (= (_1!14620 (_1!14621 (h!30268 mapDefault!13802))) ((as const (Array Context!2978 Bool)) false)))))

(declare-fun setIsEmpty!17618 () Bool)

(assert (=> setIsEmpty!17618 setRes!17617))

(declare-fun mapNonEmpty!13802 () Bool)

(declare-fun tp!671046 () Bool)

(assert (=> mapNonEmpty!13802 (= mapRes!13802 (and tp!671046 e!1378903))))

(declare-fun mapRest!13802 () (Array (_ BitVec 32) List!24951))

(declare-fun mapKey!13802 () (_ BitVec 32))

(assert (=> mapNonEmpty!13802 (= mapRest!13799 (store mapRest!13802 mapKey!13802 mapValue!13802))))

(declare-fun e!1378900 () Bool)

(declare-fun tp!671047 () Bool)

(declare-fun setElem!17617 () Context!2978)

(declare-fun setNonEmpty!17618 () Bool)

(assert (=> setNonEmpty!17618 (= setRes!17618 (and tp!671047 (inv!32873 setElem!17617) e!1378900))))

(declare-fun setRest!17617 () (InoxSet Context!2978))

(assert (=> setNonEmpty!17618 (= (_1!14620 (_1!14621 (h!30268 mapDefault!13802))) ((_ map or) (store ((as const (Array Context!2978 Bool)) false) setElem!17617 true) setRest!17617))))

(declare-fun mapIsEmpty!13802 () Bool)

(assert (=> mapIsEmpty!13802 mapRes!13802))

(declare-fun b!2155763 () Bool)

(declare-fun tp!671048 () Bool)

(assert (=> b!2155763 (= e!1378900 tp!671048)))

(assert (= (and mapNonEmpty!13799 condMapEmpty!13802) mapIsEmpty!13802))

(assert (= (and mapNonEmpty!13799 (not condMapEmpty!13802)) mapNonEmpty!13802))

(assert (= (and b!2155761 condSetEmpty!17618) setIsEmpty!17618))

(assert (= (and b!2155761 (not condSetEmpty!17618)) setNonEmpty!17617))

(assert (= setNonEmpty!17617 b!2155760))

(assert (= (and mapNonEmpty!13802 ((_ is Cons!24867) mapValue!13802)) b!2155761))

(assert (= (and b!2155762 condSetEmpty!17617) setIsEmpty!17617))

(assert (= (and b!2155762 (not condSetEmpty!17617)) setNonEmpty!17618))

(assert (= setNonEmpty!17618 b!2155763))

(assert (= (and mapNonEmpty!13799 ((_ is Cons!24867) mapDefault!13802)) b!2155762))

(declare-fun m!2596641 () Bool)

(assert (=> setNonEmpty!17617 m!2596641))

(declare-fun m!2596643 () Bool)

(assert (=> mapNonEmpty!13802 m!2596643))

(declare-fun m!2596645 () Bool)

(assert (=> setNonEmpty!17618 m!2596645))

(declare-fun e!1378904 () Bool)

(assert (=> mapNonEmpty!13799 (= tp!670999 e!1378904)))

(declare-fun setIsEmpty!17619 () Bool)

(declare-fun setRes!17619 () Bool)

(assert (=> setIsEmpty!17619 setRes!17619))

(declare-fun b!2155765 () Bool)

(declare-fun e!1378905 () Bool)

(declare-fun tp!671050 () Bool)

(assert (=> b!2155765 (= e!1378905 tp!671050)))

(declare-fun b!2155764 () Bool)

(declare-fun tp!671049 () Bool)

(assert (=> b!2155764 (= e!1378904 (and setRes!17619 tp!671049))))

(declare-fun condSetEmpty!17619 () Bool)

(assert (=> b!2155764 (= condSetEmpty!17619 (= (_1!14620 (_1!14621 (h!30268 mapValue!13799))) ((as const (Array Context!2978 Bool)) false)))))

(declare-fun tp!671051 () Bool)

(declare-fun setNonEmpty!17619 () Bool)

(declare-fun setElem!17619 () Context!2978)

(assert (=> setNonEmpty!17619 (= setRes!17619 (and tp!671051 (inv!32873 setElem!17619) e!1378905))))

(declare-fun setRest!17619 () (InoxSet Context!2978))

(assert (=> setNonEmpty!17619 (= (_1!14620 (_1!14621 (h!30268 mapValue!13799))) ((_ map or) (store ((as const (Array Context!2978 Bool)) false) setElem!17619 true) setRest!17619))))

(assert (= (and b!2155764 condSetEmpty!17619) setIsEmpty!17619))

(assert (= (and b!2155764 (not condSetEmpty!17619)) setNonEmpty!17619))

(assert (= setNonEmpty!17619 b!2155765))

(assert (= (and mapNonEmpty!13799 ((_ is Cons!24867) mapValue!13799)) b!2155764))

(declare-fun m!2596647 () Bool)

(assert (=> setNonEmpty!17619 m!2596647))

(declare-fun tp!671054 () Bool)

(declare-fun b!2155766 () Bool)

(declare-fun e!1378907 () Bool)

(declare-fun tp!671053 () Bool)

(assert (=> b!2155766 (= e!1378907 (and (inv!32874 (left!19137 (c!341522 (totalInput!3350 cacheFurthestNullable!118)))) tp!671054 (inv!32874 (right!19467 (c!341522 (totalInput!3350 cacheFurthestNullable!118)))) tp!671053))))

(declare-fun b!2155768 () Bool)

(declare-fun e!1378906 () Bool)

(declare-fun tp!671052 () Bool)

(assert (=> b!2155768 (= e!1378906 tp!671052)))

(declare-fun b!2155767 () Bool)

(assert (=> b!2155767 (= e!1378907 (and (inv!32878 (xs!10997 (c!341522 (totalInput!3350 cacheFurthestNullable!118)))) e!1378906))))

(assert (=> b!2155662 (= tp!671003 (and (inv!32874 (c!341522 (totalInput!3350 cacheFurthestNullable!118))) e!1378907))))

(assert (= (and b!2155662 ((_ is Node!8055) (c!341522 (totalInput!3350 cacheFurthestNullable!118)))) b!2155766))

(assert (= b!2155767 b!2155768))

(assert (= (and b!2155662 ((_ is Leaf!11782) (c!341522 (totalInput!3350 cacheFurthestNullable!118)))) b!2155767))

(declare-fun m!2596649 () Bool)

(assert (=> b!2155766 m!2596649))

(declare-fun m!2596651 () Bool)

(assert (=> b!2155766 m!2596651))

(declare-fun m!2596653 () Bool)

(assert (=> b!2155767 m!2596653))

(assert (=> b!2155662 m!2596575))

(declare-fun e!1378908 () Bool)

(assert (=> b!2155649 (= tp!670995 e!1378908)))

(declare-fun setIsEmpty!17620 () Bool)

(declare-fun setRes!17620 () Bool)

(assert (=> setIsEmpty!17620 setRes!17620))

(declare-fun b!2155770 () Bool)

(declare-fun e!1378909 () Bool)

(declare-fun tp!671056 () Bool)

(assert (=> b!2155770 (= e!1378909 tp!671056)))

(declare-fun b!2155769 () Bool)

(declare-fun tp!671055 () Bool)

(assert (=> b!2155769 (= e!1378908 (and setRes!17620 tp!671055))))

(declare-fun condSetEmpty!17620 () Bool)

(assert (=> b!2155769 (= condSetEmpty!17620 (= (_1!14620 (_1!14621 (h!30268 mapDefault!13799))) ((as const (Array Context!2978 Bool)) false)))))

(declare-fun tp!671057 () Bool)

(declare-fun setNonEmpty!17620 () Bool)

(declare-fun setElem!17620 () Context!2978)

(assert (=> setNonEmpty!17620 (= setRes!17620 (and tp!671057 (inv!32873 setElem!17620) e!1378909))))

(declare-fun setRest!17620 () (InoxSet Context!2978))

(assert (=> setNonEmpty!17620 (= (_1!14620 (_1!14621 (h!30268 mapDefault!13799))) ((_ map or) (store ((as const (Array Context!2978 Bool)) false) setElem!17620 true) setRest!17620))))

(assert (= (and b!2155769 condSetEmpty!17620) setIsEmpty!17620))

(assert (= (and b!2155769 (not condSetEmpty!17620)) setNonEmpty!17620))

(assert (= setNonEmpty!17620 b!2155770))

(assert (= (and b!2155649 ((_ is Cons!24867) mapDefault!13799)) b!2155769))

(declare-fun m!2596655 () Bool)

(assert (=> setNonEmpty!17620 m!2596655))

(declare-fun setIsEmpty!17623 () Bool)

(declare-fun setRes!17623 () Bool)

(assert (=> setIsEmpty!17623 setRes!17623))

(declare-fun b!2155781 () Bool)

(declare-fun e!1378921 () Bool)

(declare-fun e!1378920 () Bool)

(assert (=> b!2155781 (= e!1378920 (and setRes!17623 (inv!32871 (totalInput!3351 (h!30270 (t!197501 stack!12)))) e!1378921))))

(declare-fun condSetEmpty!17623 () Bool)

(assert (=> b!2155781 (= condSetEmpty!17623 (= (z!5995 (h!30270 (t!197501 stack!12))) ((as const (Array Context!2978 Bool)) false)))))

(declare-fun setNonEmpty!17623 () Bool)

(declare-fun e!1378918 () Bool)

(declare-fun setElem!17623 () Context!2978)

(declare-fun tp!671066 () Bool)

(assert (=> setNonEmpty!17623 (= setRes!17623 (and tp!671066 (inv!32873 setElem!17623) e!1378918))))

(declare-fun setRest!17623 () (InoxSet Context!2978))

(assert (=> setNonEmpty!17623 (= (z!5995 (h!30270 (t!197501 stack!12))) ((_ map or) (store ((as const (Array Context!2978 Bool)) false) setElem!17623 true) setRest!17623))))

(declare-fun b!2155782 () Bool)

(declare-fun tp!671067 () Bool)

(assert (=> b!2155782 (= e!1378918 tp!671067)))

(declare-fun e!1378919 () Bool)

(declare-fun tp!671069 () Bool)

(declare-fun b!2155783 () Bool)

(assert (=> b!2155783 (= e!1378919 (and (inv!32875 (h!30270 (t!197501 stack!12))) e!1378920 tp!671069))))

(declare-fun b!2155784 () Bool)

(declare-fun tp!671068 () Bool)

(assert (=> b!2155784 (= e!1378921 (and (inv!32874 (c!341522 (totalInput!3351 (h!30270 (t!197501 stack!12))))) tp!671068))))

(assert (=> b!2155664 (= tp!670993 e!1378919)))

(assert (= (and b!2155781 condSetEmpty!17623) setIsEmpty!17623))

(assert (= (and b!2155781 (not condSetEmpty!17623)) setNonEmpty!17623))

(assert (= setNonEmpty!17623 b!2155782))

(assert (= b!2155781 b!2155784))

(assert (= b!2155783 b!2155781))

(assert (= (and b!2155664 ((_ is Cons!24869) (t!197501 stack!12))) b!2155783))

(declare-fun m!2596657 () Bool)

(assert (=> b!2155781 m!2596657))

(declare-fun m!2596659 () Bool)

(assert (=> setNonEmpty!17623 m!2596659))

(declare-fun m!2596661 () Bool)

(assert (=> b!2155783 m!2596661))

(declare-fun m!2596663 () Bool)

(assert (=> b!2155784 m!2596663))

(declare-fun condSetEmpty!17626 () Bool)

(assert (=> setNonEmpty!17608 (= condSetEmpty!17626 (= setRest!17608 ((as const (Array Context!2978 Bool)) false)))))

(declare-fun setRes!17626 () Bool)

(assert (=> setNonEmpty!17608 (= tp!670996 setRes!17626)))

(declare-fun setIsEmpty!17626 () Bool)

(assert (=> setIsEmpty!17626 setRes!17626))

(declare-fun setElem!17626 () Context!2978)

(declare-fun setNonEmpty!17626 () Bool)

(declare-fun tp!671074 () Bool)

(declare-fun e!1378924 () Bool)

(assert (=> setNonEmpty!17626 (= setRes!17626 (and tp!671074 (inv!32873 setElem!17626) e!1378924))))

(declare-fun setRest!17626 () (InoxSet Context!2978))

(assert (=> setNonEmpty!17626 (= setRest!17608 ((_ map or) (store ((as const (Array Context!2978 Bool)) false) setElem!17626 true) setRest!17626))))

(declare-fun b!2155789 () Bool)

(declare-fun tp!671075 () Bool)

(assert (=> b!2155789 (= e!1378924 tp!671075)))

(assert (= (and setNonEmpty!17608 condSetEmpty!17626) setIsEmpty!17626))

(assert (= (and setNonEmpty!17608 (not condSetEmpty!17626)) setNonEmpty!17626))

(assert (= setNonEmpty!17626 b!2155789))

(declare-fun m!2596665 () Bool)

(assert (=> setNonEmpty!17626 m!2596665))

(declare-fun b!2155794 () Bool)

(declare-fun e!1378927 () Bool)

(declare-fun tp!671080 () Bool)

(declare-fun tp!671081 () Bool)

(assert (=> b!2155794 (= e!1378927 (and tp!671080 tp!671081))))

(assert (=> b!2155669 (= tp!671001 e!1378927)))

(assert (= (and b!2155669 ((_ is Cons!24866) (exprs!1989 setElem!17608))) b!2155794))

(declare-fun b_lambda!70965 () Bool)

(assert (= b_lambda!70957 (or b!2155652 b_lambda!70965)))

(declare-fun bs!445843 () Bool)

(declare-fun d!646325 () Bool)

(assert (= bs!445843 (and d!646325 b!2155652)))

(assert (=> bs!445843 (= (dynLambda!11413 lambda!81329 (h!30270 stack!12)) (= (res!929318 (h!30270 stack!12)) res!17610))))

(assert (=> b!2155682 d!646325))

(declare-fun b_lambda!70967 () Bool)

(assert (= b_lambda!70963 (or b!2155655 b_lambda!70967)))

(declare-fun bs!445844 () Bool)

(declare-fun d!646327 () Bool)

(assert (= bs!445844 (and d!646327 b!2155655)))

(assert (=> bs!445844 (= (dynLambda!11413 lambda!81328 (h!30270 stack!12)) (= (totalInput!3351 (h!30270 stack!12)) totalInput!880))))

(assert (=> b!2155721 d!646327))

(declare-fun b_lambda!70969 () Bool)

(assert (= b_lambda!70959 (or b!2155652 b_lambda!70969)))

(declare-fun bs!445845 () Bool)

(declare-fun d!646329 () Bool)

(assert (= bs!445845 (and d!646329 b!2155652)))

(assert (=> bs!445845 (= (dynLambda!11413 lambda!81329 (h!30270 (t!197501 stack!12))) (= (res!929318 (h!30270 (t!197501 stack!12))) res!17610))))

(assert (=> b!2155693 d!646329))

(declare-fun b_lambda!70971 () Bool)

(assert (= b_lambda!70961 (or b!2155655 b_lambda!70971)))

(declare-fun bs!445846 () Bool)

(declare-fun d!646331 () Bool)

(assert (= bs!445846 (and d!646331 b!2155655)))

(assert (=> bs!445846 (= (dynLambda!11413 lambda!81328 (h!30270 (t!197501 stack!12))) (= (totalInput!3351 (h!30270 (t!197501 stack!12))) totalInput!880))))

(assert (=> b!2155716 d!646331))

(check-sat (not mapNonEmpty!13802) b_and!173287 (not b!2155760) (not b!2155695) (not b!2155765) (not b!2155768) (not b!2155723) (not b_lambda!70969) (not b!2155769) (not b!2155762) (not setNonEmpty!17612) (not b!2155794) (not b!2155781) (not b!2155744) (not b!2155770) (not b!2155690) (not b!2155747) (not b!2155713) (not b!2155715) (not b_next!64375) (not b!2155767) (not b!2155749) (not d!646323) (not b!2155733) (not setNonEmpty!17611) (not d!646321) (not b_next!64373) (not b!2155692) (not b!2155782) (not b!2155764) b_and!173285 (not setNonEmpty!17617) (not d!646287) (not d!646289) (not b!2155748) (not b!2155789) (not b!2155666) (not b_lambda!70971) (not d!646317) (not b!2155694) (not b!2155710) (not b!2155766) (not d!646305) (not setNonEmpty!17626) (not b_lambda!70967) (not b!2155720) (not b!2155784) (not b_lambda!70965) (not b!2155761) (not b!2155725) (not b!2155746) (not setNonEmpty!17618) (not b!2155714) (not setNonEmpty!17619) (not b!2155683) (not b!2155732) (not b!2155763) (not d!646301) (not b!2155661) (not setNonEmpty!17620) (not b!2155735) (not setNonEmpty!17623) (not d!646309) (not b!2155745) (not b!2155783) (not b!2155662) (not b!2155717) (not b!2155734) (not b!2155722) (not b!2155697))
(check-sat b_and!173285 b_and!173287 (not b_next!64373) (not b_next!64375))

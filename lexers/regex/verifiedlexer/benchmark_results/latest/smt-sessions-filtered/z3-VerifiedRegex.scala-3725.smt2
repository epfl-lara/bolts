; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!209088 () Bool)

(assert start!209088)

(declare-fun b!2155391 () Bool)

(declare-fun b_free!63661 () Bool)

(declare-fun b_next!64365 () Bool)

(assert (=> b!2155391 (= b_free!63661 (not b_next!64365))))

(declare-fun tp!670839 () Bool)

(declare-fun b_and!173277 () Bool)

(assert (=> b!2155391 (= tp!670839 b_and!173277)))

(declare-fun b!2155402 () Bool)

(declare-fun b_free!63663 () Bool)

(declare-fun b_next!64367 () Bool)

(assert (=> b!2155402 (= b_free!63663 (not b_next!64367))))

(declare-fun tp!670845 () Bool)

(declare-fun b_and!173279 () Bool)

(assert (=> b!2155402 (= tp!670845 b_and!173279)))

(declare-fun b!2155390 () Bool)

(assert (=> b!2155390 true))

(declare-fun bs!445821 () Bool)

(declare-fun b!2155398 () Bool)

(assert (= bs!445821 (and b!2155398 b!2155390)))

(declare-fun lambda!81306 () Int)

(declare-fun lambda!81305 () Int)

(assert (=> bs!445821 (not (= lambda!81306 lambda!81305))))

(assert (=> b!2155398 true))

(declare-datatypes ((C!11980 0))(
  ( (C!11981 (val!6976 Int)) )
))
(declare-datatypes ((Regex!5917 0))(
  ( (ElementMatch!5917 (c!341506 C!11980)) (Concat!10219 (regOne!12346 Regex!5917) (regTwo!12346 Regex!5917)) (EmptyExpr!5917) (Star!5917 (reg!6246 Regex!5917)) (EmptyLang!5917) (Union!5917 (regOne!12347 Regex!5917) (regTwo!12347 Regex!5917)) )
))
(declare-datatypes ((List!24942 0))(
  ( (Nil!24858) (Cons!24858 (h!30259 Regex!5917) (t!197490 List!24942)) )
))
(declare-datatypes ((Context!2974 0))(
  ( (Context!2975 (exprs!1987 List!24942)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple3!3718 0))(
  ( (tuple3!3719 (_1!14614 (InoxSet Context!2974)) (_2!14614 Int) (_3!2329 Int)) )
))
(declare-datatypes ((tuple2!24570 0))(
  ( (tuple2!24571 (_1!14615 tuple3!3718) (_2!14615 Int)) )
))
(declare-datatypes ((List!24943 0))(
  ( (Nil!24859) (Cons!24859 (h!30260 tuple2!24570) (t!197491 List!24943)) )
))
(declare-datatypes ((array!9931 0))(
  ( (array!9932 (arr!4432 (Array (_ BitVec 32) (_ BitVec 64))) (size!19425 (_ BitVec 32))) )
))
(declare-datatypes ((array!9933 0))(
  ( (array!9934 (arr!4433 (Array (_ BitVec 32) List!24943)) (size!19426 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5836 0))(
  ( (LongMapFixedSize!5837 (defaultEntry!3283 Int) (mask!7192 (_ BitVec 32)) (extraKeys!3166 (_ BitVec 32)) (zeroValue!3176 List!24943) (minValue!3176 List!24943) (_size!5887 (_ BitVec 32)) (_keys!3215 array!9931) (_values!3198 array!9933) (_vacant!2979 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!11497 0))(
  ( (Cell!11498 (v!29299 LongMapFixedSize!5836)) )
))
(declare-datatypes ((Hashable!2832 0))(
  ( (HashableExt!2831 (__x!16930 Int)) )
))
(declare-datatypes ((MutLongMap!2918 0))(
  ( (LongMap!2918 (underlying!6031 Cell!11497)) (MutLongMapExt!2917 (__x!16931 Int)) )
))
(declare-datatypes ((Cell!11499 0))(
  ( (Cell!11500 (v!29300 MutLongMap!2918)) )
))
(declare-datatypes ((MutableMap!2832 0))(
  ( (MutableMapExt!2831 (__x!16932 Int)) (HashMap!2832 (underlying!6032 Cell!11499) (hashF!4755 Hashable!2832) (_size!5888 (_ BitVec 32)) (defaultValue!2994 Int)) )
))
(declare-datatypes ((List!24944 0))(
  ( (Nil!24860) (Cons!24860 (h!30261 C!11980) (t!197492 List!24944)) )
))
(declare-datatypes ((IArray!16111 0))(
  ( (IArray!16112 (innerList!8113 List!24944)) )
))
(declare-datatypes ((Conc!8053 0))(
  ( (Node!8053 (left!19130 Conc!8053) (right!19460 Conc!8053) (csize!16336 Int) (cheight!8264 Int)) (Leaf!11779 (xs!10995 IArray!16111) (csize!16337 Int)) (Empty!8053) )
))
(declare-datatypes ((BalanceConc!15868 0))(
  ( (BalanceConc!15869 (c!341507 Conc!8053)) )
))
(declare-datatypes ((CacheFurthestNullable!1022 0))(
  ( (CacheFurthestNullable!1023 (cache!3213 MutableMap!2832) (totalInput!3346 BalanceConc!15868)) )
))
(declare-fun cacheFurthestNullable!118 () CacheFurthestNullable!1022)

(declare-fun totalInput!880 () BalanceConc!15868)

(declare-fun res!17610 () Int)

(declare-fun b!2155385 () Bool)

(declare-datatypes ((StackFrame!366 0))(
  ( (StackFrame!367 (z!5992 (InoxSet Context!2974)) (from!2833 Int) (lastNullablePos!520 Int) (res!929228 Int) (totalInput!3347 BalanceConc!15868)) )
))
(declare-datatypes ((List!24945 0))(
  ( (Nil!24861) (Cons!24861 (h!30262 StackFrame!366) (t!197493 List!24945)) )
))
(declare-fun stack!12 () List!24945)

(declare-datatypes ((Unit!37946 0))(
  ( (Unit!37947) )
))
(declare-datatypes ((tuple2!24572 0))(
  ( (tuple2!24573 (_1!14616 Unit!37946) (_2!14616 CacheFurthestNullable!1022)) )
))
(declare-fun e!1378650 () tuple2!24572)

(declare-fun update!93 (CacheFurthestNullable!1022 (InoxSet Context!2974) Int Int Int BalanceConc!15868) tuple2!24572)

(assert (=> b!2155385 (= e!1378650 (update!93 cacheFurthestNullable!118 (z!5992 (h!30262 stack!12)) (from!2833 (h!30262 stack!12)) (lastNullablePos!520 (h!30262 stack!12)) res!17610 totalInput!880))))

(declare-fun lt!801540 () Unit!37946)

(declare-fun lemmaInvariant!400 (CacheFurthestNullable!1022) Unit!37946)

(assert (=> b!2155385 (= lt!801540 (lemmaInvariant!400 cacheFurthestNullable!118))))

(declare-fun b!2155386 () Bool)

(declare-fun res!929224 () Bool)

(declare-fun e!1378640 () Bool)

(assert (=> b!2155386 (=> (not res!929224) (not e!1378640))))

(get-info :version)

(assert (=> b!2155386 (= res!929224 (not ((_ is Nil!24861) stack!12)))))

(declare-fun b!2155387 () Bool)

(declare-fun e!1378642 () Bool)

(declare-fun tp!670836 () Bool)

(assert (=> b!2155387 (= e!1378642 tp!670836)))

(declare-fun e!1378645 () Bool)

(declare-fun tp!670835 () Bool)

(declare-fun e!1378639 () Bool)

(declare-fun b!2155388 () Bool)

(declare-fun inv!32856 (StackFrame!366) Bool)

(assert (=> b!2155388 (= e!1378639 (and (inv!32856 (h!30262 stack!12)) e!1378645 tp!670835))))

(declare-fun b!2155389 () Bool)

(declare-fun e!1378649 () Bool)

(declare-fun tp!670838 () Bool)

(declare-fun inv!32857 (Conc!8053) Bool)

(assert (=> b!2155389 (= e!1378649 (and (inv!32857 (c!341507 (totalInput!3346 cacheFurthestNullable!118))) tp!670838))))

(declare-fun res!929222 () Bool)

(assert (=> b!2155390 (=> (not res!929222) (not e!1378640))))

(declare-fun forall!5103 (List!24945 Int) Bool)

(assert (=> b!2155390 (= res!929222 (forall!5103 stack!12 lambda!81305))))

(declare-fun e!1378655 () Bool)

(declare-fun e!1378644 () Bool)

(assert (=> b!2155391 (= e!1378655 (and e!1378644 tp!670839))))

(declare-fun mapNonEmpty!13790 () Bool)

(declare-fun mapRes!13790 () Bool)

(declare-fun tp!670846 () Bool)

(declare-fun tp!670847 () Bool)

(assert (=> mapNonEmpty!13790 (= mapRes!13790 (and tp!670846 tp!670847))))

(declare-fun mapRest!13790 () (Array (_ BitVec 32) List!24943))

(declare-fun mapKey!13790 () (_ BitVec 32))

(declare-fun mapValue!13790 () List!24943)

(assert (=> mapNonEmpty!13790 (= (arr!4433 (_values!3198 (v!29299 (underlying!6031 (v!29300 (underlying!6032 (cache!3213 cacheFurthestNullable!118))))))) (store mapRest!13790 mapKey!13790 mapValue!13790))))

(declare-fun b!2155392 () Bool)

(declare-fun e!1378641 () Bool)

(declare-fun e!1378652 () Bool)

(assert (=> b!2155392 (= e!1378641 e!1378652)))

(declare-fun b!2155393 () Bool)

(declare-fun e!1378646 () Bool)

(assert (=> b!2155393 (= e!1378646 (not (forall!5103 (t!197493 stack!12) lambda!81305)))))

(declare-fun e!1378651 () Bool)

(declare-fun b!2155394 () Bool)

(declare-fun inv!32858 (BalanceConc!15868) Bool)

(assert (=> b!2155394 (= e!1378651 (and e!1378655 (inv!32858 (totalInput!3346 cacheFurthestNullable!118)) e!1378649))))

(declare-fun b!2155395 () Bool)

(declare-fun e!1378654 () Bool)

(declare-fun tp!670844 () Bool)

(assert (=> b!2155395 (= e!1378654 (and (inv!32857 (c!341507 (totalInput!3347 (h!30262 stack!12)))) tp!670844))))

(declare-fun b!2155396 () Bool)

(declare-fun e!1378643 () Bool)

(declare-fun lt!801539 () MutLongMap!2918)

(assert (=> b!2155396 (= e!1378644 (and e!1378643 ((_ is LongMap!2918) lt!801539)))))

(assert (=> b!2155396 (= lt!801539 (v!29300 (underlying!6032 (cache!3213 cacheFurthestNullable!118))))))

(declare-fun b!2155397 () Bool)

(declare-fun Unit!37948 () Unit!37946)

(assert (=> b!2155397 (= e!1378650 (tuple2!24573 Unit!37948 cacheFurthestNullable!118))))

(declare-fun res!929227 () Bool)

(assert (=> b!2155398 (=> (not res!929227) (not e!1378640))))

(assert (=> b!2155398 (= res!929227 (forall!5103 stack!12 lambda!81306))))

(declare-fun setIsEmpty!17584 () Bool)

(declare-fun setRes!17584 () Bool)

(assert (=> setIsEmpty!17584 setRes!17584))

(declare-fun b!2155399 () Bool)

(assert (=> b!2155399 (= e!1378645 (and setRes!17584 (inv!32858 (totalInput!3347 (h!30262 stack!12))) e!1378654))))

(declare-fun condSetEmpty!17584 () Bool)

(assert (=> b!2155399 (= condSetEmpty!17584 (= (z!5992 (h!30262 stack!12)) ((as const (Array Context!2974 Bool)) false)))))

(declare-fun b!2155400 () Bool)

(declare-fun res!929223 () Bool)

(assert (=> b!2155400 (=> (not res!929223) (not e!1378640))))

(assert (=> b!2155400 (= res!929223 (= (totalInput!3346 cacheFurthestNullable!118) totalInput!880))))

(declare-fun setElem!17584 () Context!2974)

(declare-fun setNonEmpty!17584 () Bool)

(declare-fun tp!670843 () Bool)

(declare-fun inv!32859 (Context!2974) Bool)

(assert (=> setNonEmpty!17584 (= setRes!17584 (and tp!670843 (inv!32859 setElem!17584) e!1378642))))

(declare-fun setRest!17584 () (InoxSet Context!2974))

(assert (=> setNonEmpty!17584 (= (z!5992 (h!30262 stack!12)) ((_ map or) (store ((as const (Array Context!2974 Bool)) false) setElem!17584 true) setRest!17584))))

(declare-fun b!2155401 () Bool)

(declare-fun e!1378653 () Bool)

(declare-fun tp!670842 () Bool)

(assert (=> b!2155401 (= e!1378653 (and (inv!32857 (c!341507 totalInput!880)) tp!670842))))

(declare-fun e!1378647 () Bool)

(declare-fun tp!670837 () Bool)

(declare-fun tp!670840 () Bool)

(declare-fun array_inv!3182 (array!9931) Bool)

(declare-fun array_inv!3183 (array!9933) Bool)

(assert (=> b!2155402 (= e!1378652 (and tp!670845 tp!670837 tp!670840 (array_inv!3182 (_keys!3215 (v!29299 (underlying!6031 (v!29300 (underlying!6032 (cache!3213 cacheFurthestNullable!118))))))) (array_inv!3183 (_values!3198 (v!29299 (underlying!6031 (v!29300 (underlying!6032 (cache!3213 cacheFurthestNullable!118))))))) e!1378647))))

(declare-fun b!2155403 () Bool)

(assert (=> b!2155403 (= e!1378640 e!1378646)))

(declare-fun res!929221 () Bool)

(assert (=> b!2155403 (=> (not res!929221) (not e!1378646))))

(declare-fun lt!801541 () tuple2!24572)

(declare-fun valid!2253 (CacheFurthestNullable!1022) Bool)

(assert (=> b!2155403 (= res!929221 (valid!2253 (_2!14616 lt!801541)))))

(assert (=> b!2155403 (= lt!801541 e!1378650)))

(declare-fun c!341505 () Bool)

(declare-fun totalInputSize!324 () Int)

(declare-fun counter!1 () Int)

(assert (=> b!2155403 (= c!341505 (and (> totalInputSize!324 1048576) (not (= (- counter!1 (* 10 (ite (>= counter!1 0) (div counter!1 10) (- (div (- counter!1) 10))))) 0))))))

(declare-fun b!2155404 () Bool)

(assert (=> b!2155404 (= e!1378643 e!1378641)))

(declare-fun b!2155405 () Bool)

(declare-fun res!929226 () Bool)

(assert (=> b!2155405 (=> (not res!929226) (not e!1378646))))

(assert (=> b!2155405 (= res!929226 (= (totalInput!3346 (_2!14616 lt!801541)) totalInput!880))))

(declare-fun mapIsEmpty!13790 () Bool)

(assert (=> mapIsEmpty!13790 mapRes!13790))

(declare-fun res!929225 () Bool)

(assert (=> start!209088 (=> (not res!929225) (not e!1378640))))

(assert (=> start!209088 (= res!929225 (valid!2253 cacheFurthestNullable!118))))

(assert (=> start!209088 e!1378640))

(declare-fun inv!32860 (CacheFurthestNullable!1022) Bool)

(assert (=> start!209088 (and (inv!32860 cacheFurthestNullable!118) e!1378651)))

(assert (=> start!209088 true))

(assert (=> start!209088 (and (inv!32858 totalInput!880) e!1378653)))

(assert (=> start!209088 e!1378639))

(declare-fun b!2155406 () Bool)

(declare-fun tp!670841 () Bool)

(assert (=> b!2155406 (= e!1378647 (and tp!670841 mapRes!13790))))

(declare-fun condMapEmpty!13790 () Bool)

(declare-fun mapDefault!13790 () List!24943)

(assert (=> b!2155406 (= condMapEmpty!13790 (= (arr!4433 (_values!3198 (v!29299 (underlying!6031 (v!29300 (underlying!6032 (cache!3213 cacheFurthestNullable!118))))))) ((as const (Array (_ BitVec 32) List!24943)) mapDefault!13790)))))

(assert (= (and start!209088 res!929225) b!2155400))

(assert (= (and b!2155400 res!929223) b!2155390))

(assert (= (and b!2155390 res!929222) b!2155398))

(assert (= (and b!2155398 res!929227) b!2155386))

(assert (= (and b!2155386 res!929224) b!2155403))

(assert (= (and b!2155403 c!341505) b!2155397))

(assert (= (and b!2155403 (not c!341505)) b!2155385))

(assert (= (and b!2155403 res!929221) b!2155405))

(assert (= (and b!2155405 res!929226) b!2155393))

(assert (= (and b!2155406 condMapEmpty!13790) mapIsEmpty!13790))

(assert (= (and b!2155406 (not condMapEmpty!13790)) mapNonEmpty!13790))

(assert (= b!2155402 b!2155406))

(assert (= b!2155392 b!2155402))

(assert (= b!2155404 b!2155392))

(assert (= (and b!2155396 ((_ is LongMap!2918) (v!29300 (underlying!6032 (cache!3213 cacheFurthestNullable!118))))) b!2155404))

(assert (= b!2155391 b!2155396))

(assert (= (and b!2155394 ((_ is HashMap!2832) (cache!3213 cacheFurthestNullable!118))) b!2155391))

(assert (= b!2155394 b!2155389))

(assert (= start!209088 b!2155394))

(assert (= start!209088 b!2155401))

(assert (= (and b!2155399 condSetEmpty!17584) setIsEmpty!17584))

(assert (= (and b!2155399 (not condSetEmpty!17584)) setNonEmpty!17584))

(assert (= setNonEmpty!17584 b!2155387))

(assert (= b!2155399 b!2155395))

(assert (= b!2155388 b!2155399))

(assert (= (and start!209088 ((_ is Cons!24861) stack!12)) b!2155388))

(declare-fun m!2596375 () Bool)

(assert (=> b!2155388 m!2596375))

(declare-fun m!2596377 () Bool)

(assert (=> b!2155402 m!2596377))

(declare-fun m!2596379 () Bool)

(assert (=> b!2155402 m!2596379))

(declare-fun m!2596381 () Bool)

(assert (=> b!2155393 m!2596381))

(declare-fun m!2596383 () Bool)

(assert (=> b!2155395 m!2596383))

(declare-fun m!2596385 () Bool)

(assert (=> b!2155403 m!2596385))

(declare-fun m!2596387 () Bool)

(assert (=> b!2155389 m!2596387))

(declare-fun m!2596389 () Bool)

(assert (=> b!2155401 m!2596389))

(declare-fun m!2596391 () Bool)

(assert (=> b!2155385 m!2596391))

(declare-fun m!2596393 () Bool)

(assert (=> b!2155385 m!2596393))

(declare-fun m!2596395 () Bool)

(assert (=> b!2155394 m!2596395))

(declare-fun m!2596397 () Bool)

(assert (=> b!2155398 m!2596397))

(declare-fun m!2596399 () Bool)

(assert (=> b!2155390 m!2596399))

(declare-fun m!2596401 () Bool)

(assert (=> b!2155399 m!2596401))

(declare-fun m!2596403 () Bool)

(assert (=> start!209088 m!2596403))

(declare-fun m!2596405 () Bool)

(assert (=> start!209088 m!2596405))

(declare-fun m!2596407 () Bool)

(assert (=> start!209088 m!2596407))

(declare-fun m!2596409 () Bool)

(assert (=> mapNonEmpty!13790 m!2596409))

(declare-fun m!2596411 () Bool)

(assert (=> setNonEmpty!17584 m!2596411))

(check-sat b_and!173277 (not b!2155403) (not b!2155385) (not b_next!64365) (not b!2155387) (not b!2155390) (not b!2155395) (not b!2155398) (not b!2155406) (not b!2155388) (not mapNonEmpty!13790) (not b_next!64367) (not b!2155394) (not b!2155402) (not b!2155399) b_and!173279 (not b!2155401) (not b!2155393) (not setNonEmpty!17584) (not b!2155389) (not start!209088))
(check-sat b_and!173277 b_and!173279 (not b_next!64365) (not b_next!64367))
(get-model)

(declare-fun d!646244 () Bool)

(declare-fun c!341510 () Bool)

(assert (=> d!646244 (= c!341510 ((_ is Node!8053) (c!341507 (totalInput!3346 cacheFurthestNullable!118))))))

(declare-fun e!1378660 () Bool)

(assert (=> d!646244 (= (inv!32857 (c!341507 (totalInput!3346 cacheFurthestNullable!118))) e!1378660)))

(declare-fun b!2155417 () Bool)

(declare-fun inv!32861 (Conc!8053) Bool)

(assert (=> b!2155417 (= e!1378660 (inv!32861 (c!341507 (totalInput!3346 cacheFurthestNullable!118))))))

(declare-fun b!2155418 () Bool)

(declare-fun e!1378661 () Bool)

(assert (=> b!2155418 (= e!1378660 e!1378661)))

(declare-fun res!929231 () Bool)

(assert (=> b!2155418 (= res!929231 (not ((_ is Leaf!11779) (c!341507 (totalInput!3346 cacheFurthestNullable!118)))))))

(assert (=> b!2155418 (=> res!929231 e!1378661)))

(declare-fun b!2155419 () Bool)

(declare-fun inv!32862 (Conc!8053) Bool)

(assert (=> b!2155419 (= e!1378661 (inv!32862 (c!341507 (totalInput!3346 cacheFurthestNullable!118))))))

(assert (= (and d!646244 c!341510) b!2155417))

(assert (= (and d!646244 (not c!341510)) b!2155418))

(assert (= (and b!2155418 (not res!929231)) b!2155419))

(declare-fun m!2596413 () Bool)

(assert (=> b!2155417 m!2596413))

(declare-fun m!2596415 () Bool)

(assert (=> b!2155419 m!2596415))

(assert (=> b!2155389 d!646244))

(declare-fun d!646246 () Bool)

(declare-fun res!929236 () Bool)

(declare-fun e!1378666 () Bool)

(assert (=> d!646246 (=> res!929236 e!1378666)))

(assert (=> d!646246 (= res!929236 ((_ is Nil!24861) stack!12))))

(assert (=> d!646246 (= (forall!5103 stack!12 lambda!81305) e!1378666)))

(declare-fun b!2155424 () Bool)

(declare-fun e!1378667 () Bool)

(assert (=> b!2155424 (= e!1378666 e!1378667)))

(declare-fun res!929237 () Bool)

(assert (=> b!2155424 (=> (not res!929237) (not e!1378667))))

(declare-fun dynLambda!11412 (Int StackFrame!366) Bool)

(assert (=> b!2155424 (= res!929237 (dynLambda!11412 lambda!81305 (h!30262 stack!12)))))

(declare-fun b!2155425 () Bool)

(assert (=> b!2155425 (= e!1378667 (forall!5103 (t!197493 stack!12) lambda!81305))))

(assert (= (and d!646246 (not res!929236)) b!2155424))

(assert (= (and b!2155424 res!929237) b!2155425))

(declare-fun b_lambda!70945 () Bool)

(assert (=> (not b_lambda!70945) (not b!2155424)))

(declare-fun m!2596417 () Bool)

(assert (=> b!2155424 m!2596417))

(assert (=> b!2155425 m!2596381))

(assert (=> b!2155390 d!646246))

(declare-fun b!2155438 () Bool)

(declare-fun res!929250 () Bool)

(declare-fun e!1378673 () Bool)

(assert (=> b!2155438 (=> (not res!929250) (not e!1378673))))

(declare-fun e!1378672 () Bool)

(assert (=> b!2155438 (= res!929250 e!1378672)))

(declare-fun res!929251 () Bool)

(assert (=> b!2155438 (=> res!929251 e!1378672)))

(declare-fun nullableZipper!220 ((InoxSet Context!2974)) Bool)

(assert (=> b!2155438 (= res!929251 (not (nullableZipper!220 (z!5992 (h!30262 stack!12)))))))

(declare-fun b!2155439 () Bool)

(declare-fun res!929255 () Bool)

(assert (=> b!2155439 (=> (not res!929255) (not e!1378673))))

(assert (=> b!2155439 (= res!929255 (and (>= (lastNullablePos!520 (h!30262 stack!12)) (- 1)) (< (lastNullablePos!520 (h!30262 stack!12)) (from!2833 (h!30262 stack!12)))))))

(declare-fun b!2155441 () Bool)

(declare-fun res!929252 () Bool)

(assert (=> b!2155441 (=> (not res!929252) (not e!1378673))))

(declare-fun size!19427 (BalanceConc!15868) Int)

(assert (=> b!2155441 (= res!929252 (<= (from!2833 (h!30262 stack!12)) (size!19427 (totalInput!3347 (h!30262 stack!12)))))))

(declare-fun b!2155442 () Bool)

(assert (=> b!2155442 (= e!1378672 (= (lastNullablePos!520 (h!30262 stack!12)) (- (from!2833 (h!30262 stack!12)) 1)))))

(declare-fun b!2155443 () Bool)

(declare-fun furthestNullablePosition!132 ((InoxSet Context!2974) Int BalanceConc!15868 Int Int) Int)

(assert (=> b!2155443 (= e!1378673 (= (res!929228 (h!30262 stack!12)) (furthestNullablePosition!132 (z!5992 (h!30262 stack!12)) (from!2833 (h!30262 stack!12)) (totalInput!3347 (h!30262 stack!12)) (size!19427 (totalInput!3347 (h!30262 stack!12))) (lastNullablePos!520 (h!30262 stack!12)))))))

(declare-fun d!646248 () Bool)

(declare-fun res!929253 () Bool)

(assert (=> d!646248 (=> (not res!929253) (not e!1378673))))

(assert (=> d!646248 (= res!929253 (>= (from!2833 (h!30262 stack!12)) 0))))

(assert (=> d!646248 (= (inv!32856 (h!30262 stack!12)) e!1378673)))

(declare-fun b!2155440 () Bool)

(declare-fun res!929254 () Bool)

(assert (=> b!2155440 (=> (not res!929254) (not e!1378673))))

(assert (=> b!2155440 (= res!929254 (= (size!19427 (totalInput!3347 (h!30262 stack!12))) (size!19427 (totalInput!3347 (h!30262 stack!12)))))))

(assert (= (and d!646248 res!929253) b!2155441))

(assert (= (and b!2155441 res!929252) b!2155440))

(assert (= (and b!2155440 res!929254) b!2155439))

(assert (= (and b!2155439 res!929255) b!2155438))

(assert (= (and b!2155438 (not res!929251)) b!2155442))

(assert (= (and b!2155438 res!929250) b!2155443))

(declare-fun m!2596419 () Bool)

(assert (=> b!2155438 m!2596419))

(declare-fun m!2596421 () Bool)

(assert (=> b!2155441 m!2596421))

(assert (=> b!2155443 m!2596421))

(assert (=> b!2155443 m!2596421))

(declare-fun m!2596423 () Bool)

(assert (=> b!2155443 m!2596423))

(assert (=> b!2155440 m!2596421))

(assert (=> b!2155388 d!646248))

(declare-fun d!646250 () Bool)

(declare-fun res!929256 () Bool)

(declare-fun e!1378674 () Bool)

(assert (=> d!646250 (=> res!929256 e!1378674)))

(assert (=> d!646250 (= res!929256 ((_ is Nil!24861) stack!12))))

(assert (=> d!646250 (= (forall!5103 stack!12 lambda!81306) e!1378674)))

(declare-fun b!2155444 () Bool)

(declare-fun e!1378675 () Bool)

(assert (=> b!2155444 (= e!1378674 e!1378675)))

(declare-fun res!929257 () Bool)

(assert (=> b!2155444 (=> (not res!929257) (not e!1378675))))

(assert (=> b!2155444 (= res!929257 (dynLambda!11412 lambda!81306 (h!30262 stack!12)))))

(declare-fun b!2155445 () Bool)

(assert (=> b!2155445 (= e!1378675 (forall!5103 (t!197493 stack!12) lambda!81306))))

(assert (= (and d!646250 (not res!929256)) b!2155444))

(assert (= (and b!2155444 res!929257) b!2155445))

(declare-fun b_lambda!70947 () Bool)

(assert (=> (not b_lambda!70947) (not b!2155444)))

(declare-fun m!2596425 () Bool)

(assert (=> b!2155444 m!2596425))

(declare-fun m!2596427 () Bool)

(assert (=> b!2155445 m!2596427))

(assert (=> b!2155398 d!646250))

(declare-fun d!646252 () Bool)

(declare-fun lambda!81309 () Int)

(declare-fun forall!5104 (List!24942 Int) Bool)

(assert (=> d!646252 (= (inv!32859 setElem!17584) (forall!5104 (exprs!1987 setElem!17584) lambda!81309))))

(declare-fun bs!445822 () Bool)

(assert (= bs!445822 d!646252))

(declare-fun m!2596429 () Bool)

(assert (=> bs!445822 m!2596429))

(assert (=> setNonEmpty!17584 d!646252))

(declare-fun d!646254 () Bool)

(declare-fun isBalanced!2498 (Conc!8053) Bool)

(assert (=> d!646254 (= (inv!32858 (totalInput!3347 (h!30262 stack!12))) (isBalanced!2498 (c!341507 (totalInput!3347 (h!30262 stack!12)))))))

(declare-fun bs!445823 () Bool)

(assert (= bs!445823 d!646254))

(declare-fun m!2596431 () Bool)

(assert (=> bs!445823 m!2596431))

(assert (=> b!2155399 d!646254))

(declare-fun d!646256 () Bool)

(assert (=> d!646256 (= (array_inv!3182 (_keys!3215 (v!29299 (underlying!6031 (v!29300 (underlying!6032 (cache!3213 cacheFurthestNullable!118))))))) (bvsge (size!19425 (_keys!3215 (v!29299 (underlying!6031 (v!29300 (underlying!6032 (cache!3213 cacheFurthestNullable!118))))))) #b00000000000000000000000000000000))))

(assert (=> b!2155402 d!646256))

(declare-fun d!646258 () Bool)

(assert (=> d!646258 (= (array_inv!3183 (_values!3198 (v!29299 (underlying!6031 (v!29300 (underlying!6032 (cache!3213 cacheFurthestNullable!118))))))) (bvsge (size!19426 (_values!3198 (v!29299 (underlying!6031 (v!29300 (underlying!6032 (cache!3213 cacheFurthestNullable!118))))))) #b00000000000000000000000000000000))))

(assert (=> b!2155402 d!646258))

(declare-fun d!646260 () Bool)

(declare-fun validCacheMapFurthestNullable!169 (MutableMap!2832 BalanceConc!15868) Bool)

(assert (=> d!646260 (= (valid!2253 cacheFurthestNullable!118) (validCacheMapFurthestNullable!169 (cache!3213 cacheFurthestNullable!118) (totalInput!3346 cacheFurthestNullable!118)))))

(declare-fun bs!445824 () Bool)

(assert (= bs!445824 d!646260))

(declare-fun m!2596433 () Bool)

(assert (=> bs!445824 m!2596433))

(assert (=> start!209088 d!646260))

(declare-fun d!646262 () Bool)

(declare-fun res!929260 () Bool)

(declare-fun e!1378678 () Bool)

(assert (=> d!646262 (=> (not res!929260) (not e!1378678))))

(assert (=> d!646262 (= res!929260 ((_ is HashMap!2832) (cache!3213 cacheFurthestNullable!118)))))

(assert (=> d!646262 (= (inv!32860 cacheFurthestNullable!118) e!1378678)))

(declare-fun b!2155448 () Bool)

(assert (=> b!2155448 (= e!1378678 (validCacheMapFurthestNullable!169 (cache!3213 cacheFurthestNullable!118) (totalInput!3346 cacheFurthestNullable!118)))))

(assert (= (and d!646262 res!929260) b!2155448))

(assert (=> b!2155448 m!2596433))

(assert (=> start!209088 d!646262))

(declare-fun d!646264 () Bool)

(assert (=> d!646264 (= (inv!32858 totalInput!880) (isBalanced!2498 (c!341507 totalInput!880)))))

(declare-fun bs!445825 () Bool)

(assert (= bs!445825 d!646264))

(declare-fun m!2596435 () Bool)

(assert (=> bs!445825 m!2596435))

(assert (=> start!209088 d!646264))

(declare-fun d!646266 () Bool)

(assert (=> d!646266 (= (inv!32858 (totalInput!3346 cacheFurthestNullable!118)) (isBalanced!2498 (c!341507 (totalInput!3346 cacheFurthestNullable!118))))))

(declare-fun bs!445826 () Bool)

(assert (= bs!445826 d!646266))

(declare-fun m!2596437 () Bool)

(assert (=> bs!445826 m!2596437))

(assert (=> b!2155394 d!646266))

(declare-fun d!646268 () Bool)

(assert (=> d!646268 (= (valid!2253 (_2!14616 lt!801541)) (validCacheMapFurthestNullable!169 (cache!3213 (_2!14616 lt!801541)) (totalInput!3346 (_2!14616 lt!801541))))))

(declare-fun bs!445827 () Bool)

(assert (= bs!445827 d!646268))

(declare-fun m!2596439 () Bool)

(assert (=> bs!445827 m!2596439))

(assert (=> b!2155403 d!646268))

(declare-fun d!646270 () Bool)

(declare-fun c!341511 () Bool)

(assert (=> d!646270 (= c!341511 ((_ is Node!8053) (c!341507 totalInput!880)))))

(declare-fun e!1378679 () Bool)

(assert (=> d!646270 (= (inv!32857 (c!341507 totalInput!880)) e!1378679)))

(declare-fun b!2155449 () Bool)

(assert (=> b!2155449 (= e!1378679 (inv!32861 (c!341507 totalInput!880)))))

(declare-fun b!2155450 () Bool)

(declare-fun e!1378680 () Bool)

(assert (=> b!2155450 (= e!1378679 e!1378680)))

(declare-fun res!929261 () Bool)

(assert (=> b!2155450 (= res!929261 (not ((_ is Leaf!11779) (c!341507 totalInput!880))))))

(assert (=> b!2155450 (=> res!929261 e!1378680)))

(declare-fun b!2155451 () Bool)

(assert (=> b!2155451 (= e!1378680 (inv!32862 (c!341507 totalInput!880)))))

(assert (= (and d!646270 c!341511) b!2155449))

(assert (= (and d!646270 (not c!341511)) b!2155450))

(assert (= (and b!2155450 (not res!929261)) b!2155451))

(declare-fun m!2596441 () Bool)

(assert (=> b!2155449 m!2596441))

(declare-fun m!2596443 () Bool)

(assert (=> b!2155451 m!2596443))

(assert (=> b!2155401 d!646270))

(declare-fun d!646272 () Bool)

(declare-fun res!929262 () Bool)

(declare-fun e!1378681 () Bool)

(assert (=> d!646272 (=> res!929262 e!1378681)))

(assert (=> d!646272 (= res!929262 ((_ is Nil!24861) (t!197493 stack!12)))))

(assert (=> d!646272 (= (forall!5103 (t!197493 stack!12) lambda!81305) e!1378681)))

(declare-fun b!2155452 () Bool)

(declare-fun e!1378682 () Bool)

(assert (=> b!2155452 (= e!1378681 e!1378682)))

(declare-fun res!929263 () Bool)

(assert (=> b!2155452 (=> (not res!929263) (not e!1378682))))

(assert (=> b!2155452 (= res!929263 (dynLambda!11412 lambda!81305 (h!30262 (t!197493 stack!12))))))

(declare-fun b!2155453 () Bool)

(assert (=> b!2155453 (= e!1378682 (forall!5103 (t!197493 (t!197493 stack!12)) lambda!81305))))

(assert (= (and d!646272 (not res!929262)) b!2155452))

(assert (= (and b!2155452 res!929263) b!2155453))

(declare-fun b_lambda!70949 () Bool)

(assert (=> (not b_lambda!70949) (not b!2155452)))

(declare-fun m!2596445 () Bool)

(assert (=> b!2155452 m!2596445))

(declare-fun m!2596447 () Bool)

(assert (=> b!2155453 m!2596447))

(assert (=> b!2155393 d!646272))

(declare-fun d!646274 () Bool)

(declare-fun e!1378685 () Bool)

(assert (=> d!646274 e!1378685))

(declare-fun res!929267 () Bool)

(assert (=> d!646274 (=> (not res!929267) (not e!1378685))))

(declare-fun lt!801544 () tuple2!24572)

(assert (=> d!646274 (= res!929267 (validCacheMapFurthestNullable!169 (cache!3213 (_2!14616 lt!801544)) (totalInput!3346 (_2!14616 lt!801544))))))

(declare-fun choose!12710 (CacheFurthestNullable!1022 (InoxSet Context!2974) Int Int Int BalanceConc!15868) tuple2!24572)

(assert (=> d!646274 (= lt!801544 (choose!12710 cacheFurthestNullable!118 (z!5992 (h!30262 stack!12)) (from!2833 (h!30262 stack!12)) (lastNullablePos!520 (h!30262 stack!12)) res!17610 totalInput!880))))

(assert (=> d!646274 (= totalInput!880 (totalInput!3346 cacheFurthestNullable!118))))

(assert (=> d!646274 (= (update!93 cacheFurthestNullable!118 (z!5992 (h!30262 stack!12)) (from!2833 (h!30262 stack!12)) (lastNullablePos!520 (h!30262 stack!12)) res!17610 totalInput!880) lt!801544)))

(declare-fun b!2155456 () Bool)

(assert (=> b!2155456 (= e!1378685 (= (totalInput!3346 (_2!14616 lt!801544)) totalInput!880))))

(assert (= (and d!646274 res!929267) b!2155456))

(declare-fun m!2596449 () Bool)

(assert (=> d!646274 m!2596449))

(declare-fun m!2596451 () Bool)

(assert (=> d!646274 m!2596451))

(assert (=> b!2155385 d!646274))

(declare-fun d!646276 () Bool)

(assert (=> d!646276 (valid!2253 cacheFurthestNullable!118)))

(declare-fun Unit!37949 () Unit!37946)

(assert (=> d!646276 (= (lemmaInvariant!400 cacheFurthestNullable!118) Unit!37949)))

(declare-fun bs!445828 () Bool)

(assert (= bs!445828 d!646276))

(assert (=> bs!445828 m!2596403))

(assert (=> b!2155385 d!646276))

(declare-fun d!646278 () Bool)

(declare-fun c!341512 () Bool)

(assert (=> d!646278 (= c!341512 ((_ is Node!8053) (c!341507 (totalInput!3347 (h!30262 stack!12)))))))

(declare-fun e!1378686 () Bool)

(assert (=> d!646278 (= (inv!32857 (c!341507 (totalInput!3347 (h!30262 stack!12)))) e!1378686)))

(declare-fun b!2155457 () Bool)

(assert (=> b!2155457 (= e!1378686 (inv!32861 (c!341507 (totalInput!3347 (h!30262 stack!12)))))))

(declare-fun b!2155458 () Bool)

(declare-fun e!1378687 () Bool)

(assert (=> b!2155458 (= e!1378686 e!1378687)))

(declare-fun res!929268 () Bool)

(assert (=> b!2155458 (= res!929268 (not ((_ is Leaf!11779) (c!341507 (totalInput!3347 (h!30262 stack!12))))))))

(assert (=> b!2155458 (=> res!929268 e!1378687)))

(declare-fun b!2155459 () Bool)

(assert (=> b!2155459 (= e!1378687 (inv!32862 (c!341507 (totalInput!3347 (h!30262 stack!12)))))))

(assert (= (and d!646278 c!341512) b!2155457))

(assert (= (and d!646278 (not c!341512)) b!2155458))

(assert (= (and b!2155458 (not res!929268)) b!2155459))

(declare-fun m!2596453 () Bool)

(assert (=> b!2155457 m!2596453))

(declare-fun m!2596455 () Bool)

(assert (=> b!2155459 m!2596455))

(assert (=> b!2155395 d!646278))

(declare-fun e!1378693 () Bool)

(assert (=> b!2155402 (= tp!670837 e!1378693)))

(declare-fun b!2155466 () Bool)

(declare-fun setRes!17587 () Bool)

(declare-fun tp!670854 () Bool)

(assert (=> b!2155466 (= e!1378693 (and setRes!17587 tp!670854))))

(declare-fun condSetEmpty!17587 () Bool)

(assert (=> b!2155466 (= condSetEmpty!17587 (= (_1!14614 (_1!14615 (h!30260 (zeroValue!3176 (v!29299 (underlying!6031 (v!29300 (underlying!6032 (cache!3213 cacheFurthestNullable!118))))))))) ((as const (Array Context!2974 Bool)) false)))))

(declare-fun b!2155467 () Bool)

(declare-fun e!1378692 () Bool)

(declare-fun tp!670856 () Bool)

(assert (=> b!2155467 (= e!1378692 tp!670856)))

(declare-fun setIsEmpty!17587 () Bool)

(assert (=> setIsEmpty!17587 setRes!17587))

(declare-fun setElem!17587 () Context!2974)

(declare-fun tp!670855 () Bool)

(declare-fun setNonEmpty!17587 () Bool)

(assert (=> setNonEmpty!17587 (= setRes!17587 (and tp!670855 (inv!32859 setElem!17587) e!1378692))))

(declare-fun setRest!17587 () (InoxSet Context!2974))

(assert (=> setNonEmpty!17587 (= (_1!14614 (_1!14615 (h!30260 (zeroValue!3176 (v!29299 (underlying!6031 (v!29300 (underlying!6032 (cache!3213 cacheFurthestNullable!118))))))))) ((_ map or) (store ((as const (Array Context!2974 Bool)) false) setElem!17587 true) setRest!17587))))

(assert (= (and b!2155466 condSetEmpty!17587) setIsEmpty!17587))

(assert (= (and b!2155466 (not condSetEmpty!17587)) setNonEmpty!17587))

(assert (= setNonEmpty!17587 b!2155467))

(assert (= (and b!2155402 ((_ is Cons!24859) (zeroValue!3176 (v!29299 (underlying!6031 (v!29300 (underlying!6032 (cache!3213 cacheFurthestNullable!118)))))))) b!2155466))

(declare-fun m!2596457 () Bool)

(assert (=> setNonEmpty!17587 m!2596457))

(declare-fun e!1378695 () Bool)

(assert (=> b!2155402 (= tp!670840 e!1378695)))

(declare-fun b!2155468 () Bool)

(declare-fun setRes!17588 () Bool)

(declare-fun tp!670857 () Bool)

(assert (=> b!2155468 (= e!1378695 (and setRes!17588 tp!670857))))

(declare-fun condSetEmpty!17588 () Bool)

(assert (=> b!2155468 (= condSetEmpty!17588 (= (_1!14614 (_1!14615 (h!30260 (minValue!3176 (v!29299 (underlying!6031 (v!29300 (underlying!6032 (cache!3213 cacheFurthestNullable!118))))))))) ((as const (Array Context!2974 Bool)) false)))))

(declare-fun b!2155469 () Bool)

(declare-fun e!1378694 () Bool)

(declare-fun tp!670859 () Bool)

(assert (=> b!2155469 (= e!1378694 tp!670859)))

(declare-fun setIsEmpty!17588 () Bool)

(assert (=> setIsEmpty!17588 setRes!17588))

(declare-fun setNonEmpty!17588 () Bool)

(declare-fun setElem!17588 () Context!2974)

(declare-fun tp!670858 () Bool)

(assert (=> setNonEmpty!17588 (= setRes!17588 (and tp!670858 (inv!32859 setElem!17588) e!1378694))))

(declare-fun setRest!17588 () (InoxSet Context!2974))

(assert (=> setNonEmpty!17588 (= (_1!14614 (_1!14615 (h!30260 (minValue!3176 (v!29299 (underlying!6031 (v!29300 (underlying!6032 (cache!3213 cacheFurthestNullable!118))))))))) ((_ map or) (store ((as const (Array Context!2974 Bool)) false) setElem!17588 true) setRest!17588))))

(assert (= (and b!2155468 condSetEmpty!17588) setIsEmpty!17588))

(assert (= (and b!2155468 (not condSetEmpty!17588)) setNonEmpty!17588))

(assert (= setNonEmpty!17588 b!2155469))

(assert (= (and b!2155402 ((_ is Cons!24859) (minValue!3176 (v!29299 (underlying!6031 (v!29300 (underlying!6032 (cache!3213 cacheFurthestNullable!118)))))))) b!2155468))

(declare-fun m!2596459 () Bool)

(assert (=> setNonEmpty!17588 m!2596459))

(declare-fun e!1378701 () Bool)

(declare-fun tp!670868 () Bool)

(declare-fun b!2155478 () Bool)

(declare-fun tp!670866 () Bool)

(assert (=> b!2155478 (= e!1378701 (and (inv!32857 (left!19130 (c!341507 (totalInput!3346 cacheFurthestNullable!118)))) tp!670866 (inv!32857 (right!19460 (c!341507 (totalInput!3346 cacheFurthestNullable!118)))) tp!670868))))

(declare-fun b!2155480 () Bool)

(declare-fun e!1378700 () Bool)

(declare-fun tp!670867 () Bool)

(assert (=> b!2155480 (= e!1378700 tp!670867)))

(declare-fun b!2155479 () Bool)

(declare-fun inv!32863 (IArray!16111) Bool)

(assert (=> b!2155479 (= e!1378701 (and (inv!32863 (xs!10995 (c!341507 (totalInput!3346 cacheFurthestNullable!118)))) e!1378700))))

(assert (=> b!2155389 (= tp!670838 (and (inv!32857 (c!341507 (totalInput!3346 cacheFurthestNullable!118))) e!1378701))))

(assert (= (and b!2155389 ((_ is Node!8053) (c!341507 (totalInput!3346 cacheFurthestNullable!118)))) b!2155478))

(assert (= b!2155479 b!2155480))

(assert (= (and b!2155389 ((_ is Leaf!11779) (c!341507 (totalInput!3346 cacheFurthestNullable!118)))) b!2155479))

(declare-fun m!2596461 () Bool)

(assert (=> b!2155478 m!2596461))

(declare-fun m!2596463 () Bool)

(assert (=> b!2155478 m!2596463))

(declare-fun m!2596465 () Bool)

(assert (=> b!2155479 m!2596465))

(assert (=> b!2155389 m!2596387))

(declare-fun b!2155481 () Bool)

(declare-fun tp!670871 () Bool)

(declare-fun tp!670869 () Bool)

(declare-fun e!1378703 () Bool)

(assert (=> b!2155481 (= e!1378703 (and (inv!32857 (left!19130 (c!341507 totalInput!880))) tp!670869 (inv!32857 (right!19460 (c!341507 totalInput!880))) tp!670871))))

(declare-fun b!2155483 () Bool)

(declare-fun e!1378702 () Bool)

(declare-fun tp!670870 () Bool)

(assert (=> b!2155483 (= e!1378702 tp!670870)))

(declare-fun b!2155482 () Bool)

(assert (=> b!2155482 (= e!1378703 (and (inv!32863 (xs!10995 (c!341507 totalInput!880))) e!1378702))))

(assert (=> b!2155401 (= tp!670842 (and (inv!32857 (c!341507 totalInput!880)) e!1378703))))

(assert (= (and b!2155401 ((_ is Node!8053) (c!341507 totalInput!880))) b!2155481))

(assert (= b!2155482 b!2155483))

(assert (= (and b!2155401 ((_ is Leaf!11779) (c!341507 totalInput!880))) b!2155482))

(declare-fun m!2596467 () Bool)

(assert (=> b!2155481 m!2596467))

(declare-fun m!2596469 () Bool)

(assert (=> b!2155481 m!2596469))

(declare-fun m!2596471 () Bool)

(assert (=> b!2155482 m!2596471))

(assert (=> b!2155401 m!2596389))

(declare-fun e!1378712 () Bool)

(assert (=> b!2155388 (= tp!670835 e!1378712)))

(declare-fun b!2155494 () Bool)

(declare-fun e!1378714 () Bool)

(declare-fun tp!670881 () Bool)

(assert (=> b!2155494 (= e!1378714 tp!670881)))

(declare-fun setRes!17591 () Bool)

(declare-fun e!1378713 () Bool)

(declare-fun e!1378715 () Bool)

(declare-fun b!2155495 () Bool)

(assert (=> b!2155495 (= e!1378715 (and setRes!17591 (inv!32858 (totalInput!3347 (h!30262 (t!197493 stack!12)))) e!1378713))))

(declare-fun condSetEmpty!17591 () Bool)

(assert (=> b!2155495 (= condSetEmpty!17591 (= (z!5992 (h!30262 (t!197493 stack!12))) ((as const (Array Context!2974 Bool)) false)))))

(declare-fun b!2155496 () Bool)

(declare-fun tp!670880 () Bool)

(assert (=> b!2155496 (= e!1378713 (and (inv!32857 (c!341507 (totalInput!3347 (h!30262 (t!197493 stack!12))))) tp!670880))))

(declare-fun setIsEmpty!17591 () Bool)

(assert (=> setIsEmpty!17591 setRes!17591))

(declare-fun tp!670883 () Bool)

(declare-fun setNonEmpty!17591 () Bool)

(declare-fun setElem!17591 () Context!2974)

(assert (=> setNonEmpty!17591 (= setRes!17591 (and tp!670883 (inv!32859 setElem!17591) e!1378714))))

(declare-fun setRest!17591 () (InoxSet Context!2974))

(assert (=> setNonEmpty!17591 (= (z!5992 (h!30262 (t!197493 stack!12))) ((_ map or) (store ((as const (Array Context!2974 Bool)) false) setElem!17591 true) setRest!17591))))

(declare-fun tp!670882 () Bool)

(declare-fun b!2155497 () Bool)

(assert (=> b!2155497 (= e!1378712 (and (inv!32856 (h!30262 (t!197493 stack!12))) e!1378715 tp!670882))))

(assert (= (and b!2155495 condSetEmpty!17591) setIsEmpty!17591))

(assert (= (and b!2155495 (not condSetEmpty!17591)) setNonEmpty!17591))

(assert (= setNonEmpty!17591 b!2155494))

(assert (= b!2155495 b!2155496))

(assert (= b!2155497 b!2155495))

(assert (= (and b!2155388 ((_ is Cons!24861) (t!197493 stack!12))) b!2155497))

(declare-fun m!2596473 () Bool)

(assert (=> b!2155495 m!2596473))

(declare-fun m!2596475 () Bool)

(assert (=> b!2155496 m!2596475))

(declare-fun m!2596477 () Bool)

(assert (=> setNonEmpty!17591 m!2596477))

(declare-fun m!2596479 () Bool)

(assert (=> b!2155497 m!2596479))

(declare-fun e!1378717 () Bool)

(assert (=> b!2155406 (= tp!670841 e!1378717)))

(declare-fun b!2155498 () Bool)

(declare-fun setRes!17592 () Bool)

(declare-fun tp!670884 () Bool)

(assert (=> b!2155498 (= e!1378717 (and setRes!17592 tp!670884))))

(declare-fun condSetEmpty!17592 () Bool)

(assert (=> b!2155498 (= condSetEmpty!17592 (= (_1!14614 (_1!14615 (h!30260 mapDefault!13790))) ((as const (Array Context!2974 Bool)) false)))))

(declare-fun b!2155499 () Bool)

(declare-fun e!1378716 () Bool)

(declare-fun tp!670886 () Bool)

(assert (=> b!2155499 (= e!1378716 tp!670886)))

(declare-fun setIsEmpty!17592 () Bool)

(assert (=> setIsEmpty!17592 setRes!17592))

(declare-fun setElem!17592 () Context!2974)

(declare-fun setNonEmpty!17592 () Bool)

(declare-fun tp!670885 () Bool)

(assert (=> setNonEmpty!17592 (= setRes!17592 (and tp!670885 (inv!32859 setElem!17592) e!1378716))))

(declare-fun setRest!17592 () (InoxSet Context!2974))

(assert (=> setNonEmpty!17592 (= (_1!14614 (_1!14615 (h!30260 mapDefault!13790))) ((_ map or) (store ((as const (Array Context!2974 Bool)) false) setElem!17592 true) setRest!17592))))

(assert (= (and b!2155498 condSetEmpty!17592) setIsEmpty!17592))

(assert (= (and b!2155498 (not condSetEmpty!17592)) setNonEmpty!17592))

(assert (= setNonEmpty!17592 b!2155499))

(assert (= (and b!2155406 ((_ is Cons!24859) mapDefault!13790)) b!2155498))

(declare-fun m!2596481 () Bool)

(assert (=> setNonEmpty!17592 m!2596481))

(declare-fun tp!670906 () Bool)

(declare-fun setRes!17598 () Bool)

(declare-fun setNonEmpty!17597 () Bool)

(declare-fun e!1378726 () Bool)

(declare-fun setElem!17597 () Context!2974)

(assert (=> setNonEmpty!17597 (= setRes!17598 (and tp!670906 (inv!32859 setElem!17597) e!1378726))))

(declare-fun mapDefault!13793 () List!24943)

(declare-fun setRest!17597 () (InoxSet Context!2974))

(assert (=> setNonEmpty!17597 (= (_1!14614 (_1!14615 (h!30260 mapDefault!13793))) ((_ map or) (store ((as const (Array Context!2974 Bool)) false) setElem!17597 true) setRest!17597))))

(declare-fun b!2155510 () Bool)

(declare-fun e!1378727 () Bool)

(declare-fun setRes!17597 () Bool)

(declare-fun tp!670902 () Bool)

(assert (=> b!2155510 (= e!1378727 (and setRes!17597 tp!670902))))

(declare-fun condSetEmpty!17597 () Bool)

(declare-fun mapValue!13793 () List!24943)

(assert (=> b!2155510 (= condSetEmpty!17597 (= (_1!14614 (_1!14615 (h!30260 mapValue!13793))) ((as const (Array Context!2974 Bool)) false)))))

(declare-fun mapNonEmpty!13793 () Bool)

(declare-fun mapRes!13793 () Bool)

(declare-fun tp!670901 () Bool)

(assert (=> mapNonEmpty!13793 (= mapRes!13793 (and tp!670901 e!1378727))))

(declare-fun mapKey!13793 () (_ BitVec 32))

(declare-fun mapRest!13793 () (Array (_ BitVec 32) List!24943))

(assert (=> mapNonEmpty!13793 (= mapRest!13790 (store mapRest!13793 mapKey!13793 mapValue!13793))))

(declare-fun setIsEmpty!17597 () Bool)

(assert (=> setIsEmpty!17597 setRes!17597))

(declare-fun b!2155511 () Bool)

(declare-fun e!1378728 () Bool)

(declare-fun tp!670907 () Bool)

(assert (=> b!2155511 (= e!1378728 (and setRes!17598 tp!670907))))

(declare-fun condSetEmpty!17598 () Bool)

(assert (=> b!2155511 (= condSetEmpty!17598 (= (_1!14614 (_1!14615 (h!30260 mapDefault!13793))) ((as const (Array Context!2974 Bool)) false)))))

(declare-fun condMapEmpty!13793 () Bool)

(assert (=> mapNonEmpty!13790 (= condMapEmpty!13793 (= mapRest!13790 ((as const (Array (_ BitVec 32) List!24943)) mapDefault!13793)))))

(assert (=> mapNonEmpty!13790 (= tp!670846 (and e!1378728 mapRes!13793))))

(declare-fun b!2155512 () Bool)

(declare-fun e!1378729 () Bool)

(declare-fun tp!670905 () Bool)

(assert (=> b!2155512 (= e!1378729 tp!670905)))

(declare-fun setElem!17598 () Context!2974)

(declare-fun setNonEmpty!17598 () Bool)

(declare-fun tp!670903 () Bool)

(assert (=> setNonEmpty!17598 (= setRes!17597 (and tp!670903 (inv!32859 setElem!17598) e!1378729))))

(declare-fun setRest!17598 () (InoxSet Context!2974))

(assert (=> setNonEmpty!17598 (= (_1!14614 (_1!14615 (h!30260 mapValue!13793))) ((_ map or) (store ((as const (Array Context!2974 Bool)) false) setElem!17598 true) setRest!17598))))

(declare-fun setIsEmpty!17598 () Bool)

(assert (=> setIsEmpty!17598 setRes!17598))

(declare-fun mapIsEmpty!13793 () Bool)

(assert (=> mapIsEmpty!13793 mapRes!13793))

(declare-fun b!2155513 () Bool)

(declare-fun tp!670904 () Bool)

(assert (=> b!2155513 (= e!1378726 tp!670904)))

(assert (= (and mapNonEmpty!13790 condMapEmpty!13793) mapIsEmpty!13793))

(assert (= (and mapNonEmpty!13790 (not condMapEmpty!13793)) mapNonEmpty!13793))

(assert (= (and b!2155510 condSetEmpty!17597) setIsEmpty!17597))

(assert (= (and b!2155510 (not condSetEmpty!17597)) setNonEmpty!17598))

(assert (= setNonEmpty!17598 b!2155512))

(assert (= (and mapNonEmpty!13793 ((_ is Cons!24859) mapValue!13793)) b!2155510))

(assert (= (and b!2155511 condSetEmpty!17598) setIsEmpty!17598))

(assert (= (and b!2155511 (not condSetEmpty!17598)) setNonEmpty!17597))

(assert (= setNonEmpty!17597 b!2155513))

(assert (= (and mapNonEmpty!13790 ((_ is Cons!24859) mapDefault!13793)) b!2155511))

(declare-fun m!2596483 () Bool)

(assert (=> setNonEmpty!17597 m!2596483))

(declare-fun m!2596485 () Bool)

(assert (=> mapNonEmpty!13793 m!2596485))

(declare-fun m!2596487 () Bool)

(assert (=> setNonEmpty!17598 m!2596487))

(declare-fun e!1378731 () Bool)

(assert (=> mapNonEmpty!13790 (= tp!670847 e!1378731)))

(declare-fun b!2155514 () Bool)

(declare-fun setRes!17599 () Bool)

(declare-fun tp!670908 () Bool)

(assert (=> b!2155514 (= e!1378731 (and setRes!17599 tp!670908))))

(declare-fun condSetEmpty!17599 () Bool)

(assert (=> b!2155514 (= condSetEmpty!17599 (= (_1!14614 (_1!14615 (h!30260 mapValue!13790))) ((as const (Array Context!2974 Bool)) false)))))

(declare-fun b!2155515 () Bool)

(declare-fun e!1378730 () Bool)

(declare-fun tp!670910 () Bool)

(assert (=> b!2155515 (= e!1378730 tp!670910)))

(declare-fun setIsEmpty!17599 () Bool)

(assert (=> setIsEmpty!17599 setRes!17599))

(declare-fun tp!670909 () Bool)

(declare-fun setElem!17599 () Context!2974)

(declare-fun setNonEmpty!17599 () Bool)

(assert (=> setNonEmpty!17599 (= setRes!17599 (and tp!670909 (inv!32859 setElem!17599) e!1378730))))

(declare-fun setRest!17599 () (InoxSet Context!2974))

(assert (=> setNonEmpty!17599 (= (_1!14614 (_1!14615 (h!30260 mapValue!13790))) ((_ map or) (store ((as const (Array Context!2974 Bool)) false) setElem!17599 true) setRest!17599))))

(assert (= (and b!2155514 condSetEmpty!17599) setIsEmpty!17599))

(assert (= (and b!2155514 (not condSetEmpty!17599)) setNonEmpty!17599))

(assert (= setNonEmpty!17599 b!2155515))

(assert (= (and mapNonEmpty!13790 ((_ is Cons!24859) mapValue!13790)) b!2155514))

(declare-fun m!2596489 () Bool)

(assert (=> setNonEmpty!17599 m!2596489))

(declare-fun condSetEmpty!17602 () Bool)

(assert (=> setNonEmpty!17584 (= condSetEmpty!17602 (= setRest!17584 ((as const (Array Context!2974 Bool)) false)))))

(declare-fun setRes!17602 () Bool)

(assert (=> setNonEmpty!17584 (= tp!670843 setRes!17602)))

(declare-fun setIsEmpty!17602 () Bool)

(assert (=> setIsEmpty!17602 setRes!17602))

(declare-fun e!1378734 () Bool)

(declare-fun setNonEmpty!17602 () Bool)

(declare-fun setElem!17602 () Context!2974)

(declare-fun tp!670916 () Bool)

(assert (=> setNonEmpty!17602 (= setRes!17602 (and tp!670916 (inv!32859 setElem!17602) e!1378734))))

(declare-fun setRest!17602 () (InoxSet Context!2974))

(assert (=> setNonEmpty!17602 (= setRest!17584 ((_ map or) (store ((as const (Array Context!2974 Bool)) false) setElem!17602 true) setRest!17602))))

(declare-fun b!2155520 () Bool)

(declare-fun tp!670915 () Bool)

(assert (=> b!2155520 (= e!1378734 tp!670915)))

(assert (= (and setNonEmpty!17584 condSetEmpty!17602) setIsEmpty!17602))

(assert (= (and setNonEmpty!17584 (not condSetEmpty!17602)) setNonEmpty!17602))

(assert (= setNonEmpty!17602 b!2155520))

(declare-fun m!2596491 () Bool)

(assert (=> setNonEmpty!17602 m!2596491))

(declare-fun b!2155525 () Bool)

(declare-fun e!1378737 () Bool)

(declare-fun tp!670921 () Bool)

(declare-fun tp!670922 () Bool)

(assert (=> b!2155525 (= e!1378737 (and tp!670921 tp!670922))))

(assert (=> b!2155387 (= tp!670836 e!1378737)))

(assert (= (and b!2155387 ((_ is Cons!24858) (exprs!1987 setElem!17584))) b!2155525))

(declare-fun b!2155526 () Bool)

(declare-fun e!1378739 () Bool)

(declare-fun tp!670923 () Bool)

(declare-fun tp!670925 () Bool)

(assert (=> b!2155526 (= e!1378739 (and (inv!32857 (left!19130 (c!341507 (totalInput!3347 (h!30262 stack!12))))) tp!670923 (inv!32857 (right!19460 (c!341507 (totalInput!3347 (h!30262 stack!12))))) tp!670925))))

(declare-fun b!2155528 () Bool)

(declare-fun e!1378738 () Bool)

(declare-fun tp!670924 () Bool)

(assert (=> b!2155528 (= e!1378738 tp!670924)))

(declare-fun b!2155527 () Bool)

(assert (=> b!2155527 (= e!1378739 (and (inv!32863 (xs!10995 (c!341507 (totalInput!3347 (h!30262 stack!12))))) e!1378738))))

(assert (=> b!2155395 (= tp!670844 (and (inv!32857 (c!341507 (totalInput!3347 (h!30262 stack!12)))) e!1378739))))

(assert (= (and b!2155395 ((_ is Node!8053) (c!341507 (totalInput!3347 (h!30262 stack!12))))) b!2155526))

(assert (= b!2155527 b!2155528))

(assert (= (and b!2155395 ((_ is Leaf!11779) (c!341507 (totalInput!3347 (h!30262 stack!12))))) b!2155527))

(declare-fun m!2596493 () Bool)

(assert (=> b!2155526 m!2596493))

(declare-fun m!2596495 () Bool)

(assert (=> b!2155526 m!2596495))

(declare-fun m!2596497 () Bool)

(assert (=> b!2155527 m!2596497))

(assert (=> b!2155395 m!2596383))

(declare-fun b_lambda!70951 () Bool)

(assert (= b_lambda!70949 (or b!2155390 b_lambda!70951)))

(declare-fun bs!445829 () Bool)

(declare-fun d!646280 () Bool)

(assert (= bs!445829 (and d!646280 b!2155390)))

(assert (=> bs!445829 (= (dynLambda!11412 lambda!81305 (h!30262 (t!197493 stack!12))) (= (totalInput!3347 (h!30262 (t!197493 stack!12))) totalInput!880))))

(assert (=> b!2155452 d!646280))

(declare-fun b_lambda!70953 () Bool)

(assert (= b_lambda!70947 (or b!2155398 b_lambda!70953)))

(declare-fun bs!445830 () Bool)

(declare-fun d!646282 () Bool)

(assert (= bs!445830 (and d!646282 b!2155398)))

(assert (=> bs!445830 (= (dynLambda!11412 lambda!81306 (h!30262 stack!12)) (= (res!929228 (h!30262 stack!12)) res!17610))))

(assert (=> b!2155444 d!646282))

(declare-fun b_lambda!70955 () Bool)

(assert (= b_lambda!70945 (or b!2155390 b_lambda!70955)))

(declare-fun bs!445831 () Bool)

(declare-fun d!646284 () Bool)

(assert (= bs!445831 (and d!646284 b!2155390)))

(assert (=> bs!445831 (= (dynLambda!11412 lambda!81305 (h!30262 stack!12)) (= (totalInput!3347 (h!30262 stack!12)) totalInput!880))))

(assert (=> b!2155424 d!646284))

(check-sat (not setNonEmpty!17587) (not b_next!64367) (not b!2155478) (not b!2155468) (not b!2155417) (not b!2155511) (not b!2155498) (not b!2155527) (not b!2155395) (not b!2155482) b_and!173277 (not setNonEmpty!17599) (not d!646276) (not b!2155469) (not b!2155451) (not b!2155528) (not b_lambda!70955) (not b!2155438) (not setNonEmpty!17597) (not setNonEmpty!17591) (not b!2155419) (not b!2155441) (not b!2155457) (not b!2155448) (not b!2155483) (not b!2155496) (not b!2155499) (not b!2155520) (not b_next!64365) (not d!646254) (not b!2155510) (not setNonEmpty!17588) (not b!2155481) (not b!2155513) (not d!646260) (not b!2155494) (not d!646266) (not b!2155453) (not b!2155495) (not setNonEmpty!17602) (not b!2155479) (not b!2155467) b_and!173279 (not b_lambda!70953) (not b!2155401) (not setNonEmpty!17598) (not b!2155445) (not b!2155449) (not b_lambda!70951) (not d!646264) (not d!646274) (not d!646252) (not b!2155497) (not b!2155425) (not b!2155443) (not b!2155514) (not b!2155440) (not b!2155480) (not b!2155466) (not b!2155459) (not d!646268) (not b!2155525) (not setNonEmpty!17592) (not b!2155526) (not b!2155389) (not mapNonEmpty!13793) (not b!2155512) (not b!2155515))
(check-sat b_and!173277 b_and!173279 (not b_next!64365) (not b_next!64367))

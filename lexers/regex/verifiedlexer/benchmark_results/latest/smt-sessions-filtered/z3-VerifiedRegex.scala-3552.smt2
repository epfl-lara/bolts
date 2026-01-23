; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!205916 () Bool)

(assert start!205916)

(declare-fun b!2106184 () Bool)

(declare-fun b_free!60541 () Bool)

(declare-fun b_next!61245 () Bool)

(assert (=> b!2106184 (= b_free!60541 (not b_next!61245))))

(declare-fun tp!638735 () Bool)

(declare-fun b_and!170103 () Bool)

(assert (=> b!2106184 (= tp!638735 b_and!170103)))

(declare-fun b!2106171 () Bool)

(declare-fun b_free!60543 () Bool)

(declare-fun b_next!61247 () Bool)

(assert (=> b!2106171 (= b_free!60543 (not b_next!61247))))

(declare-fun tp!638733 () Bool)

(declare-fun b_and!170105 () Bool)

(assert (=> b!2106171 (= tp!638733 b_and!170105)))

(declare-fun b!2106186 () Bool)

(declare-fun b_free!60545 () Bool)

(declare-fun b_next!61249 () Bool)

(assert (=> b!2106186 (= b_free!60545 (not b_next!61249))))

(declare-fun tp!638745 () Bool)

(declare-fun b_and!170107 () Bool)

(assert (=> b!2106186 (= tp!638745 b_and!170107)))

(declare-fun b!2106193 () Bool)

(declare-fun b_free!60547 () Bool)

(declare-fun b_next!61251 () Bool)

(assert (=> b!2106193 (= b_free!60547 (not b_next!61251))))

(declare-fun tp!638732 () Bool)

(declare-fun b_and!170109 () Bool)

(assert (=> b!2106193 (= tp!638732 b_and!170109)))

(declare-fun b!2106195 () Bool)

(declare-fun b_free!60549 () Bool)

(declare-fun b_next!61253 () Bool)

(assert (=> b!2106195 (= b_free!60549 (not b_next!61253))))

(declare-fun tp!638729 () Bool)

(declare-fun b_and!170111 () Bool)

(assert (=> b!2106195 (= tp!638729 b_and!170111)))

(declare-fun b_free!60551 () Bool)

(declare-fun b_next!61255 () Bool)

(assert (=> b!2106195 (= b_free!60551 (not b_next!61255))))

(declare-fun tp!638737 () Bool)

(declare-fun b_and!170113 () Bool)

(assert (=> b!2106195 (= tp!638737 b_and!170113)))

(declare-fun e!1338570 () Bool)

(declare-fun tp!638739 () Bool)

(declare-datatypes ((C!11288 0))(
  ( (C!11289 (val!6630 Int)) )
))
(declare-datatypes ((Regex!5571 0))(
  ( (ElementMatch!5571 (c!338891 C!11288)) (Concat!9847 (regOne!11654 Regex!5571) (regTwo!11654 Regex!5571)) (EmptyExpr!5571) (Star!5571 (reg!5900 Regex!5571)) (EmptyLang!5571) (Union!5571 (regOne!11655 Regex!5571) (regTwo!11655 Regex!5571)) )
))
(declare-datatypes ((List!23343 0))(
  ( (Nil!23259) (Cons!23259 (h!28660 Regex!5571) (t!195836 List!23343)) )
))
(declare-datatypes ((Context!2282 0))(
  ( (Context!2283 (exprs!1641 List!23343)) )
))
(declare-datatypes ((tuple3!2580 0))(
  ( (tuple3!2581 (_1!13019 Regex!5571) (_2!13019 Context!2282) (_3!1754 C!11288)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!22530 0))(
  ( (tuple2!22531 (_1!13020 tuple3!2580) (_2!13020 (InoxSet Context!2282))) )
))
(declare-datatypes ((List!23344 0))(
  ( (Nil!23260) (Cons!23260 (h!28661 tuple2!22530) (t!195837 List!23344)) )
))
(declare-datatypes ((array!7760 0))(
  ( (array!7761 (arr!3441 (Array (_ BitVec 32) (_ BitVec 64))) (size!18152 (_ BitVec 32))) )
))
(declare-datatypes ((array!7762 0))(
  ( (array!7763 (arr!3442 (Array (_ BitVec 32) List!23344)) (size!18153 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4498 0))(
  ( (LongMapFixedSize!4499 (defaultEntry!2614 Int) (mask!6350 (_ BitVec 32)) (extraKeys!2497 (_ BitVec 32)) (zeroValue!2507 List!23344) (minValue!2507 List!23344) (_size!4549 (_ BitVec 32)) (_keys!2546 array!7760) (_values!2529 array!7762) (_vacant!2310 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!8821 0))(
  ( (Cell!8822 (v!27814 LongMapFixedSize!4498)) )
))
(declare-datatypes ((MutLongMap!2249 0))(
  ( (LongMap!2249 (underlying!4693 Cell!8821)) (MutLongMapExt!2248 (__x!14872 Int)) )
))
(declare-datatypes ((Cell!8823 0))(
  ( (Cell!8824 (v!27815 MutLongMap!2249)) )
))
(declare-datatypes ((Hashable!2163 0))(
  ( (HashableExt!2162 (__x!14873 Int)) )
))
(declare-datatypes ((MutableMap!2163 0))(
  ( (MutableMapExt!2162 (__x!14874 Int)) (HashMap!2163 (underlying!4694 Cell!8823) (hashF!4086 Hashable!2163) (_size!4550 (_ BitVec 32)) (defaultValue!2325 Int)) )
))
(declare-datatypes ((CacheDown!1464 0))(
  ( (CacheDown!1465 (cache!2544 MutableMap!2163)) )
))
(declare-fun cacheDown!688 () CacheDown!1464)

(declare-fun e!1338553 () Bool)

(declare-fun tp!638748 () Bool)

(declare-fun array_inv!2474 (array!7760) Bool)

(declare-fun array_inv!2475 (array!7762) Bool)

(assert (=> b!2106171 (= e!1338553 (and tp!638733 tp!638739 tp!638748 (array_inv!2474 (_keys!2546 (v!27814 (underlying!4693 (v!27815 (underlying!4694 (cache!2544 cacheDown!688))))))) (array_inv!2475 (_values!2529 (v!27814 (underlying!4693 (v!27815 (underlying!4694 (cache!2544 cacheDown!688))))))) e!1338570))))

(declare-fun b!2106172 () Bool)

(declare-fun e!1338551 () Bool)

(declare-datatypes ((List!23345 0))(
  ( (Nil!23261) (Cons!23261 (h!28662 C!11288) (t!195838 List!23345)) )
))
(declare-datatypes ((IArray!15445 0))(
  ( (IArray!15446 (innerList!7780 List!23345)) )
))
(declare-datatypes ((Conc!7720 0))(
  ( (Node!7720 (left!18144 Conc!7720) (right!18474 Conc!7720) (csize!15670 Int) (cheight!7931 Int)) (Leaf!11273 (xs!10662 IArray!15445) (csize!15671 Int)) (Empty!7720) )
))
(declare-datatypes ((BalanceConc!15202 0))(
  ( (BalanceConc!15203 (c!338892 Conc!7720)) )
))
(declare-fun input!1444 () BalanceConc!15202)

(declare-fun tp!638747 () Bool)

(declare-fun inv!30785 (Conc!7720) Bool)

(assert (=> b!2106172 (= e!1338551 (and (inv!30785 (c!338892 input!1444)) tp!638747))))

(declare-fun b!2106173 () Bool)

(declare-fun e!1338569 () Bool)

(declare-datatypes ((List!23346 0))(
  ( (Nil!23262) (Cons!23262 (h!28663 (_ BitVec 16)) (t!195839 List!23346)) )
))
(declare-datatypes ((TokenValue!4276 0))(
  ( (FloatLiteralValue!8552 (text!30377 List!23346)) (TokenValueExt!4275 (__x!14875 Int)) (Broken!21380 (value!129606 List!23346)) (Object!4359) (End!4276) (Def!4276) (Underscore!4276) (Match!4276) (Else!4276) (Error!4276) (Case!4276) (If!4276) (Extends!4276) (Abstract!4276) (Class!4276) (Val!4276) (DelimiterValue!8552 (del!4336 List!23346)) (KeywordValue!4282 (value!129607 List!23346)) (CommentValue!8552 (value!129608 List!23346)) (WhitespaceValue!8552 (value!129609 List!23346)) (IndentationValue!4276 (value!129610 List!23346)) (String!26577) (Int32!4276) (Broken!21381 (value!129611 List!23346)) (Boolean!4277) (Unit!37468) (OperatorValue!4279 (op!4336 List!23346)) (IdentifierValue!8552 (value!129612 List!23346)) (IdentifierValue!8553 (value!129613 List!23346)) (WhitespaceValue!8553 (value!129614 List!23346)) (True!8552) (False!8552) (Broken!21382 (value!129615 List!23346)) (Broken!21383 (value!129616 List!23346)) (True!8553) (RightBrace!4276) (RightBracket!4276) (Colon!4276) (Null!4276) (Comma!4276) (LeftBracket!4276) (False!8553) (LeftBrace!4276) (ImaginaryLiteralValue!4276 (text!30378 List!23346)) (StringLiteralValue!12828 (value!129617 List!23346)) (EOFValue!4276 (value!129618 List!23346)) (IdentValue!4276 (value!129619 List!23346)) (DelimiterValue!8553 (value!129620 List!23346)) (DedentValue!4276 (value!129621 List!23346)) (NewLineValue!4276 (value!129622 List!23346)) (IntegerValue!12828 (value!129623 (_ BitVec 32)) (text!30379 List!23346)) (IntegerValue!12829 (value!129624 Int) (text!30380 List!23346)) (Times!4276) (Or!4276) (Equal!4276) (Minus!4276) (Broken!21384 (value!129625 List!23346)) (And!4276) (Div!4276) (LessEqual!4276) (Mod!4276) (Concat!9848) (Not!4276) (Plus!4276) (SpaceValue!4276 (value!129626 List!23346)) (IntegerValue!12830 (value!129627 Int) (text!30381 List!23346)) (StringLiteralValue!12829 (text!30382 List!23346)) (FloatLiteralValue!8553 (text!30383 List!23346)) (BytesLiteralValue!4276 (value!129628 List!23346)) (CommentValue!8553 (value!129629 List!23346)) (StringLiteralValue!12830 (value!129630 List!23346)) (ErrorTokenValue!4276 (msg!4337 List!23346)) )
))
(declare-datatypes ((String!26578 0))(
  ( (String!26579 (value!129631 String)) )
))
(declare-datatypes ((TokenValueInjection!8136 0))(
  ( (TokenValueInjection!8137 (toValue!5851 Int) (toChars!5710 Int)) )
))
(declare-datatypes ((Rule!8080 0))(
  ( (Rule!8081 (regex!4140 Regex!5571) (tag!4630 String!26578) (isSeparator!4140 Bool) (transformation!4140 TokenValueInjection!8136)) )
))
(declare-datatypes ((List!23347 0))(
  ( (Nil!23263) (Cons!23263 (h!28664 Rule!8080) (t!195840 List!23347)) )
))
(declare-fun rulesArg!349 () List!23347)

(declare-fun size!18154 (List!23347) Int)

(assert (=> b!2106173 (= e!1338569 (< (size!18154 rulesArg!349) 0))))

(declare-fun b!2106174 () Bool)

(declare-fun e!1338555 () Bool)

(assert (=> b!2106174 (= e!1338555 e!1338553)))

(declare-fun b!2106175 () Bool)

(declare-fun e!1338571 () Bool)

(declare-fun e!1338561 () Bool)

(declare-fun tp!638744 () Bool)

(assert (=> b!2106175 (= e!1338571 (and e!1338561 tp!638744))))

(declare-fun b!2106176 () Bool)

(declare-fun res!915641 () Bool)

(assert (=> b!2106176 (=> (not res!915641) (not e!1338569))))

(declare-datatypes ((tuple2!22532 0))(
  ( (tuple2!22533 (_1!13021 Context!2282) (_2!13021 C!11288)) )
))
(declare-datatypes ((tuple2!22534 0))(
  ( (tuple2!22535 (_1!13022 tuple2!22532) (_2!13022 (InoxSet Context!2282))) )
))
(declare-datatypes ((List!23348 0))(
  ( (Nil!23264) (Cons!23264 (h!28665 tuple2!22534) (t!195841 List!23348)) )
))
(declare-datatypes ((array!7764 0))(
  ( (array!7765 (arr!3443 (Array (_ BitVec 32) List!23348)) (size!18155 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4500 0))(
  ( (LongMapFixedSize!4501 (defaultEntry!2615 Int) (mask!6351 (_ BitVec 32)) (extraKeys!2498 (_ BitVec 32)) (zeroValue!2508 List!23348) (minValue!2508 List!23348) (_size!4551 (_ BitVec 32)) (_keys!2547 array!7760) (_values!2530 array!7764) (_vacant!2311 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!2164 0))(
  ( (HashableExt!2163 (__x!14876 Int)) )
))
(declare-datatypes ((Cell!8825 0))(
  ( (Cell!8826 (v!27816 LongMapFixedSize!4500)) )
))
(declare-datatypes ((MutLongMap!2250 0))(
  ( (LongMap!2250 (underlying!4695 Cell!8825)) (MutLongMapExt!2249 (__x!14877 Int)) )
))
(declare-datatypes ((Cell!8827 0))(
  ( (Cell!8828 (v!27817 MutLongMap!2250)) )
))
(declare-datatypes ((MutableMap!2164 0))(
  ( (MutableMapExt!2163 (__x!14878 Int)) (HashMap!2164 (underlying!4696 Cell!8827) (hashF!4087 Hashable!2164) (_size!4552 (_ BitVec 32)) (defaultValue!2326 Int)) )
))
(declare-datatypes ((CacheUp!1456 0))(
  ( (CacheUp!1457 (cache!2545 MutableMap!2164)) )
))
(declare-fun cacheUp!675 () CacheUp!1456)

(declare-fun valid!1784 (CacheUp!1456) Bool)

(assert (=> b!2106176 (= res!915641 (valid!1784 cacheUp!675))))

(declare-fun b!2106177 () Bool)

(declare-fun e!1338568 () Bool)

(declare-fun tp!638742 () Bool)

(declare-fun mapRes!10861 () Bool)

(assert (=> b!2106177 (= e!1338568 (and tp!638742 mapRes!10861))))

(declare-fun condMapEmpty!10861 () Bool)

(declare-fun mapDefault!10860 () List!23348)

(assert (=> b!2106177 (= condMapEmpty!10861 (= (arr!3443 (_values!2530 (v!27816 (underlying!4695 (v!27817 (underlying!4696 (cache!2545 cacheUp!675))))))) ((as const (Array (_ BitVec 32) List!23348)) mapDefault!10860)))))

(declare-fun b!2106178 () Bool)

(declare-fun res!915639 () Bool)

(assert (=> b!2106178 (=> (not res!915639) (not e!1338569))))

(declare-datatypes ((LexerInterface!3738 0))(
  ( (LexerInterfaceExt!3735 (__x!14879 Int)) (Lexer!3736) )
))
(declare-fun thiss!15689 () LexerInterface!3738)

(declare-fun rulesValidInductive!1455 (LexerInterface!3738 List!23347) Bool)

(assert (=> b!2106178 (= res!915639 (rulesValidInductive!1455 thiss!15689 rulesArg!349))))

(declare-fun b!2106179 () Bool)

(declare-fun e!1338566 () Bool)

(declare-fun e!1338557 () Bool)

(assert (=> b!2106179 (= e!1338566 e!1338557)))

(declare-fun mapNonEmpty!10860 () Bool)

(declare-fun mapRes!10860 () Bool)

(declare-fun tp!638738 () Bool)

(declare-fun tp!638731 () Bool)

(assert (=> mapNonEmpty!10860 (= mapRes!10860 (and tp!638738 tp!638731))))

(declare-fun mapValue!10860 () List!23344)

(declare-fun mapKey!10860 () (_ BitVec 32))

(declare-fun mapRest!10861 () (Array (_ BitVec 32) List!23344))

(assert (=> mapNonEmpty!10860 (= (arr!3442 (_values!2529 (v!27814 (underlying!4693 (v!27815 (underlying!4694 (cache!2544 cacheDown!688))))))) (store mapRest!10861 mapKey!10860 mapValue!10860))))

(declare-fun b!2106180 () Bool)

(declare-fun e!1338567 () Bool)

(declare-fun e!1338552 () Bool)

(assert (=> b!2106180 (= e!1338567 e!1338552)))

(declare-fun b!2106181 () Bool)

(declare-fun e!1338554 () Bool)

(declare-fun lt!791414 () MutLongMap!2250)

(get-info :version)

(assert (=> b!2106181 (= e!1338554 (and e!1338567 ((_ is LongMap!2250) lt!791414)))))

(assert (=> b!2106181 (= lt!791414 (v!27817 (underlying!4696 (cache!2545 cacheUp!675))))))

(declare-fun mapNonEmpty!10861 () Bool)

(declare-fun tp!638743 () Bool)

(declare-fun tp!638736 () Bool)

(assert (=> mapNonEmpty!10861 (= mapRes!10861 (and tp!638743 tp!638736))))

(declare-fun mapKey!10861 () (_ BitVec 32))

(declare-fun mapRest!10860 () (Array (_ BitVec 32) List!23348))

(declare-fun mapValue!10861 () List!23348)

(assert (=> mapNonEmpty!10861 (= (arr!3443 (_values!2530 (v!27816 (underlying!4695 (v!27817 (underlying!4696 (cache!2545 cacheUp!675))))))) (store mapRest!10860 mapKey!10861 mapValue!10861))))

(declare-fun b!2106182 () Bool)

(declare-fun e!1338560 () Bool)

(declare-fun e!1338573 () Bool)

(assert (=> b!2106182 (= e!1338560 e!1338573)))

(declare-fun res!915637 () Bool)

(assert (=> start!205916 (=> (not res!915637) (not e!1338569))))

(assert (=> start!205916 (= res!915637 ((_ is Lexer!3736) thiss!15689))))

(assert (=> start!205916 e!1338569))

(assert (=> start!205916 e!1338571))

(declare-fun totalInput!482 () BalanceConc!15202)

(declare-fun e!1338564 () Bool)

(declare-fun inv!30786 (BalanceConc!15202) Bool)

(assert (=> start!205916 (and (inv!30786 totalInput!482) e!1338564)))

(assert (=> start!205916 true))

(assert (=> start!205916 (and (inv!30786 input!1444) e!1338551)))

(declare-fun inv!30787 (CacheUp!1456) Bool)

(assert (=> start!205916 (and (inv!30787 cacheUp!675) e!1338560)))

(declare-fun inv!30788 (CacheDown!1464) Bool)

(assert (=> start!205916 (and (inv!30788 cacheDown!688) e!1338566)))

(declare-fun b!2106183 () Bool)

(declare-fun res!915640 () Bool)

(assert (=> b!2106183 (=> (not res!915640) (not e!1338569))))

(declare-fun isEmpty!14278 (List!23347) Bool)

(assert (=> b!2106183 (= res!915640 (not (isEmpty!14278 rulesArg!349)))))

(declare-fun e!1338556 () Bool)

(declare-fun tp!638746 () Bool)

(declare-fun tp!638730 () Bool)

(declare-fun array_inv!2476 (array!7764) Bool)

(assert (=> b!2106184 (= e!1338556 (and tp!638735 tp!638746 tp!638730 (array_inv!2474 (_keys!2547 (v!27816 (underlying!4695 (v!27817 (underlying!4696 (cache!2545 cacheUp!675))))))) (array_inv!2476 (_values!2530 (v!27816 (underlying!4695 (v!27817 (underlying!4696 (cache!2545 cacheUp!675))))))) e!1338568))))

(declare-fun b!2106185 () Bool)

(declare-fun e!1338563 () Bool)

(declare-fun e!1338558 () Bool)

(declare-fun lt!791413 () MutLongMap!2249)

(assert (=> b!2106185 (= e!1338563 (and e!1338558 ((_ is LongMap!2249) lt!791413)))))

(assert (=> b!2106185 (= lt!791413 (v!27815 (underlying!4694 (cache!2544 cacheDown!688))))))

(declare-fun mapIsEmpty!10860 () Bool)

(assert (=> mapIsEmpty!10860 mapRes!10860))

(declare-fun mapIsEmpty!10861 () Bool)

(assert (=> mapIsEmpty!10861 mapRes!10861))

(assert (=> b!2106186 (= e!1338557 (and e!1338563 tp!638745))))

(declare-fun b!2106187 () Bool)

(declare-fun tp!638741 () Bool)

(assert (=> b!2106187 (= e!1338564 (and (inv!30785 (c!338892 totalInput!482)) tp!638741))))

(declare-fun b!2106188 () Bool)

(declare-fun tp!638734 () Bool)

(assert (=> b!2106188 (= e!1338570 (and tp!638734 mapRes!10860))))

(declare-fun condMapEmpty!10860 () Bool)

(declare-fun mapDefault!10861 () List!23344)

(assert (=> b!2106188 (= condMapEmpty!10860 (= (arr!3442 (_values!2529 (v!27814 (underlying!4693 (v!27815 (underlying!4694 (cache!2544 cacheDown!688))))))) ((as const (Array (_ BitVec 32) List!23344)) mapDefault!10861)))))

(declare-fun b!2106189 () Bool)

(declare-fun res!915638 () Bool)

(assert (=> b!2106189 (=> (not res!915638) (not e!1338569))))

(declare-fun isSuffix!558 (List!23345 List!23345) Bool)

(declare-fun list!9443 (BalanceConc!15202) List!23345)

(assert (=> b!2106189 (= res!915638 (isSuffix!558 (list!9443 input!1444) (list!9443 totalInput!482)))))

(declare-fun b!2106190 () Bool)

(declare-fun res!915636 () Bool)

(assert (=> b!2106190 (=> (not res!915636) (not e!1338569))))

(declare-fun valid!1785 (CacheDown!1464) Bool)

(assert (=> b!2106190 (= res!915636 (valid!1785 cacheDown!688))))

(declare-fun b!2106191 () Bool)

(assert (=> b!2106191 (= e!1338558 e!1338555)))

(declare-fun b!2106192 () Bool)

(assert (=> b!2106192 (= e!1338552 e!1338556)))

(assert (=> b!2106193 (= e!1338573 (and e!1338554 tp!638732))))

(declare-fun b!2106194 () Bool)

(declare-fun tp!638740 () Bool)

(declare-fun e!1338559 () Bool)

(declare-fun inv!30783 (String!26578) Bool)

(declare-fun inv!30789 (TokenValueInjection!8136) Bool)

(assert (=> b!2106194 (= e!1338561 (and tp!638740 (inv!30783 (tag!4630 (h!28664 rulesArg!349))) (inv!30789 (transformation!4140 (h!28664 rulesArg!349))) e!1338559))))

(assert (=> b!2106195 (= e!1338559 (and tp!638729 tp!638737))))

(assert (= (and start!205916 res!915637) b!2106178))

(assert (= (and b!2106178 res!915639) b!2106183))

(assert (= (and b!2106183 res!915640) b!2106189))

(assert (= (and b!2106189 res!915638) b!2106176))

(assert (= (and b!2106176 res!915641) b!2106190))

(assert (= (and b!2106190 res!915636) b!2106173))

(assert (= b!2106194 b!2106195))

(assert (= b!2106175 b!2106194))

(assert (= (and start!205916 ((_ is Cons!23263) rulesArg!349)) b!2106175))

(assert (= start!205916 b!2106187))

(assert (= start!205916 b!2106172))

(assert (= (and b!2106177 condMapEmpty!10861) mapIsEmpty!10861))

(assert (= (and b!2106177 (not condMapEmpty!10861)) mapNonEmpty!10861))

(assert (= b!2106184 b!2106177))

(assert (= b!2106192 b!2106184))

(assert (= b!2106180 b!2106192))

(assert (= (and b!2106181 ((_ is LongMap!2250) (v!27817 (underlying!4696 (cache!2545 cacheUp!675))))) b!2106180))

(assert (= b!2106193 b!2106181))

(assert (= (and b!2106182 ((_ is HashMap!2164) (cache!2545 cacheUp!675))) b!2106193))

(assert (= start!205916 b!2106182))

(assert (= (and b!2106188 condMapEmpty!10860) mapIsEmpty!10860))

(assert (= (and b!2106188 (not condMapEmpty!10860)) mapNonEmpty!10860))

(assert (= b!2106171 b!2106188))

(assert (= b!2106174 b!2106171))

(assert (= b!2106191 b!2106174))

(assert (= (and b!2106185 ((_ is LongMap!2249) (v!27815 (underlying!4694 (cache!2544 cacheDown!688))))) b!2106191))

(assert (= b!2106186 b!2106185))

(assert (= (and b!2106179 ((_ is HashMap!2163) (cache!2544 cacheDown!688))) b!2106186))

(assert (= start!205916 b!2106179))

(declare-fun m!2564507 () Bool)

(assert (=> b!2106171 m!2564507))

(declare-fun m!2564509 () Bool)

(assert (=> b!2106171 m!2564509))

(declare-fun m!2564511 () Bool)

(assert (=> b!2106172 m!2564511))

(declare-fun m!2564513 () Bool)

(assert (=> b!2106178 m!2564513))

(declare-fun m!2564515 () Bool)

(assert (=> mapNonEmpty!10861 m!2564515))

(declare-fun m!2564517 () Bool)

(assert (=> start!205916 m!2564517))

(declare-fun m!2564519 () Bool)

(assert (=> start!205916 m!2564519))

(declare-fun m!2564521 () Bool)

(assert (=> start!205916 m!2564521))

(declare-fun m!2564523 () Bool)

(assert (=> start!205916 m!2564523))

(declare-fun m!2564525 () Bool)

(assert (=> mapNonEmpty!10860 m!2564525))

(declare-fun m!2564527 () Bool)

(assert (=> b!2106173 m!2564527))

(declare-fun m!2564529 () Bool)

(assert (=> b!2106189 m!2564529))

(declare-fun m!2564531 () Bool)

(assert (=> b!2106189 m!2564531))

(assert (=> b!2106189 m!2564529))

(assert (=> b!2106189 m!2564531))

(declare-fun m!2564533 () Bool)

(assert (=> b!2106189 m!2564533))

(declare-fun m!2564535 () Bool)

(assert (=> b!2106187 m!2564535))

(declare-fun m!2564537 () Bool)

(assert (=> b!2106184 m!2564537))

(declare-fun m!2564539 () Bool)

(assert (=> b!2106184 m!2564539))

(declare-fun m!2564541 () Bool)

(assert (=> b!2106194 m!2564541))

(declare-fun m!2564543 () Bool)

(assert (=> b!2106194 m!2564543))

(declare-fun m!2564545 () Bool)

(assert (=> b!2106176 m!2564545))

(declare-fun m!2564547 () Bool)

(assert (=> b!2106183 m!2564547))

(declare-fun m!2564549 () Bool)

(assert (=> b!2106190 m!2564549))

(check-sat (not b!2106176) (not b!2106178) (not b!2106188) (not b!2106189) (not b_next!61247) (not b!2106184) (not mapNonEmpty!10860) b_and!170103 (not b!2106173) (not b_next!61253) b_and!170105 (not b!2106194) (not start!205916) b_and!170107 (not b!2106175) (not mapNonEmpty!10861) (not b!2106177) (not b!2106183) b_and!170111 b_and!170109 (not b_next!61255) (not b_next!61251) (not b!2106171) (not b_next!61249) b_and!170113 (not b!2106187) (not b!2106190) (not b!2106172) (not b_next!61245))
(check-sat (not b_next!61247) (not b_next!61251) (not b_next!61245) b_and!170103 (not b_next!61253) b_and!170105 b_and!170107 b_and!170111 b_and!170109 (not b_next!61255) (not b_next!61249) b_and!170113)
(get-model)

(declare-fun d!641745 () Bool)

(assert (=> d!641745 (= (isEmpty!14278 rulesArg!349) ((_ is Nil!23263) rulesArg!349))))

(assert (=> b!2106183 d!641745))

(declare-fun d!641747 () Bool)

(assert (=> d!641747 (= (array_inv!2474 (_keys!2547 (v!27816 (underlying!4695 (v!27817 (underlying!4696 (cache!2545 cacheUp!675))))))) (bvsge (size!18152 (_keys!2547 (v!27816 (underlying!4695 (v!27817 (underlying!4696 (cache!2545 cacheUp!675))))))) #b00000000000000000000000000000000))))

(assert (=> b!2106184 d!641747))

(declare-fun d!641749 () Bool)

(assert (=> d!641749 (= (array_inv!2476 (_values!2530 (v!27816 (underlying!4695 (v!27817 (underlying!4696 (cache!2545 cacheUp!675))))))) (bvsge (size!18155 (_values!2530 (v!27816 (underlying!4695 (v!27817 (underlying!4696 (cache!2545 cacheUp!675))))))) #b00000000000000000000000000000000))))

(assert (=> b!2106184 d!641749))

(declare-fun d!641751 () Bool)

(declare-fun validCacheMapUp!223 (MutableMap!2164) Bool)

(assert (=> d!641751 (= (valid!1784 cacheUp!675) (validCacheMapUp!223 (cache!2545 cacheUp!675)))))

(declare-fun bs!440944 () Bool)

(assert (= bs!440944 d!641751))

(declare-fun m!2564551 () Bool)

(assert (=> bs!440944 m!2564551))

(assert (=> b!2106176 d!641751))

(declare-fun d!641753 () Bool)

(assert (=> d!641753 (= (array_inv!2474 (_keys!2546 (v!27814 (underlying!4693 (v!27815 (underlying!4694 (cache!2544 cacheDown!688))))))) (bvsge (size!18152 (_keys!2546 (v!27814 (underlying!4693 (v!27815 (underlying!4694 (cache!2544 cacheDown!688))))))) #b00000000000000000000000000000000))))

(assert (=> b!2106171 d!641753))

(declare-fun d!641755 () Bool)

(assert (=> d!641755 (= (array_inv!2475 (_values!2529 (v!27814 (underlying!4693 (v!27815 (underlying!4694 (cache!2544 cacheDown!688))))))) (bvsge (size!18153 (_values!2529 (v!27814 (underlying!4693 (v!27815 (underlying!4694 (cache!2544 cacheDown!688))))))) #b00000000000000000000000000000000))))

(assert (=> b!2106171 d!641755))

(declare-fun d!641757 () Bool)

(declare-fun e!1338576 () Bool)

(assert (=> d!641757 e!1338576))

(declare-fun res!915644 () Bool)

(assert (=> d!641757 (=> res!915644 e!1338576)))

(declare-fun lt!791417 () Bool)

(assert (=> d!641757 (= res!915644 (not lt!791417))))

(declare-fun drop!1162 (List!23345 Int) List!23345)

(declare-fun size!18156 (List!23345) Int)

(assert (=> d!641757 (= lt!791417 (= (list!9443 input!1444) (drop!1162 (list!9443 totalInput!482) (- (size!18156 (list!9443 totalInput!482)) (size!18156 (list!9443 input!1444))))))))

(assert (=> d!641757 (= (isSuffix!558 (list!9443 input!1444) (list!9443 totalInput!482)) lt!791417)))

(declare-fun b!2106198 () Bool)

(assert (=> b!2106198 (= e!1338576 (>= (size!18156 (list!9443 totalInput!482)) (size!18156 (list!9443 input!1444))))))

(assert (= (and d!641757 (not res!915644)) b!2106198))

(assert (=> d!641757 m!2564531))

(declare-fun m!2564553 () Bool)

(assert (=> d!641757 m!2564553))

(assert (=> d!641757 m!2564529))

(declare-fun m!2564555 () Bool)

(assert (=> d!641757 m!2564555))

(assert (=> d!641757 m!2564531))

(declare-fun m!2564557 () Bool)

(assert (=> d!641757 m!2564557))

(assert (=> b!2106198 m!2564531))

(assert (=> b!2106198 m!2564553))

(assert (=> b!2106198 m!2564529))

(assert (=> b!2106198 m!2564555))

(assert (=> b!2106189 d!641757))

(declare-fun d!641759 () Bool)

(declare-fun list!9444 (Conc!7720) List!23345)

(assert (=> d!641759 (= (list!9443 input!1444) (list!9444 (c!338892 input!1444)))))

(declare-fun bs!440945 () Bool)

(assert (= bs!440945 d!641759))

(declare-fun m!2564559 () Bool)

(assert (=> bs!440945 m!2564559))

(assert (=> b!2106189 d!641759))

(declare-fun d!641761 () Bool)

(assert (=> d!641761 (= (list!9443 totalInput!482) (list!9444 (c!338892 totalInput!482)))))

(declare-fun bs!440946 () Bool)

(assert (= bs!440946 d!641761))

(declare-fun m!2564561 () Bool)

(assert (=> bs!440946 m!2564561))

(assert (=> b!2106189 d!641761))

(declare-fun d!641763 () Bool)

(declare-fun c!338895 () Bool)

(assert (=> d!641763 (= c!338895 ((_ is Node!7720) (c!338892 input!1444)))))

(declare-fun e!1338581 () Bool)

(assert (=> d!641763 (= (inv!30785 (c!338892 input!1444)) e!1338581)))

(declare-fun b!2106205 () Bool)

(declare-fun inv!30790 (Conc!7720) Bool)

(assert (=> b!2106205 (= e!1338581 (inv!30790 (c!338892 input!1444)))))

(declare-fun b!2106206 () Bool)

(declare-fun e!1338582 () Bool)

(assert (=> b!2106206 (= e!1338581 e!1338582)))

(declare-fun res!915647 () Bool)

(assert (=> b!2106206 (= res!915647 (not ((_ is Leaf!11273) (c!338892 input!1444))))))

(assert (=> b!2106206 (=> res!915647 e!1338582)))

(declare-fun b!2106207 () Bool)

(declare-fun inv!30791 (Conc!7720) Bool)

(assert (=> b!2106207 (= e!1338582 (inv!30791 (c!338892 input!1444)))))

(assert (= (and d!641763 c!338895) b!2106205))

(assert (= (and d!641763 (not c!338895)) b!2106206))

(assert (= (and b!2106206 (not res!915647)) b!2106207))

(declare-fun m!2564563 () Bool)

(assert (=> b!2106205 m!2564563))

(declare-fun m!2564565 () Bool)

(assert (=> b!2106207 m!2564565))

(assert (=> b!2106172 d!641763))

(declare-fun d!641765 () Bool)

(declare-fun validCacheMapDown!221 (MutableMap!2163) Bool)

(assert (=> d!641765 (= (valid!1785 cacheDown!688) (validCacheMapDown!221 (cache!2544 cacheDown!688)))))

(declare-fun bs!440947 () Bool)

(assert (= bs!440947 d!641765))

(declare-fun m!2564567 () Bool)

(assert (=> bs!440947 m!2564567))

(assert (=> b!2106190 d!641765))

(declare-fun d!641767 () Bool)

(declare-fun lt!791420 () Int)

(assert (=> d!641767 (>= lt!791420 0)))

(declare-fun e!1338585 () Int)

(assert (=> d!641767 (= lt!791420 e!1338585)))

(declare-fun c!338898 () Bool)

(assert (=> d!641767 (= c!338898 ((_ is Nil!23263) rulesArg!349))))

(assert (=> d!641767 (= (size!18154 rulesArg!349) lt!791420)))

(declare-fun b!2106212 () Bool)

(assert (=> b!2106212 (= e!1338585 0)))

(declare-fun b!2106213 () Bool)

(assert (=> b!2106213 (= e!1338585 (+ 1 (size!18154 (t!195840 rulesArg!349))))))

(assert (= (and d!641767 c!338898) b!2106212))

(assert (= (and d!641767 (not c!338898)) b!2106213))

(declare-fun m!2564569 () Bool)

(assert (=> b!2106213 m!2564569))

(assert (=> b!2106173 d!641767))

(declare-fun d!641769 () Bool)

(declare-fun isBalanced!2427 (Conc!7720) Bool)

(assert (=> d!641769 (= (inv!30786 totalInput!482) (isBalanced!2427 (c!338892 totalInput!482)))))

(declare-fun bs!440948 () Bool)

(assert (= bs!440948 d!641769))

(declare-fun m!2564571 () Bool)

(assert (=> bs!440948 m!2564571))

(assert (=> start!205916 d!641769))

(declare-fun d!641771 () Bool)

(assert (=> d!641771 (= (inv!30786 input!1444) (isBalanced!2427 (c!338892 input!1444)))))

(declare-fun bs!440949 () Bool)

(assert (= bs!440949 d!641771))

(declare-fun m!2564573 () Bool)

(assert (=> bs!440949 m!2564573))

(assert (=> start!205916 d!641771))

(declare-fun d!641773 () Bool)

(declare-fun res!915650 () Bool)

(declare-fun e!1338588 () Bool)

(assert (=> d!641773 (=> (not res!915650) (not e!1338588))))

(assert (=> d!641773 (= res!915650 ((_ is HashMap!2164) (cache!2545 cacheUp!675)))))

(assert (=> d!641773 (= (inv!30787 cacheUp!675) e!1338588)))

(declare-fun b!2106216 () Bool)

(assert (=> b!2106216 (= e!1338588 (validCacheMapUp!223 (cache!2545 cacheUp!675)))))

(assert (= (and d!641773 res!915650) b!2106216))

(assert (=> b!2106216 m!2564551))

(assert (=> start!205916 d!641773))

(declare-fun d!641775 () Bool)

(declare-fun res!915653 () Bool)

(declare-fun e!1338591 () Bool)

(assert (=> d!641775 (=> (not res!915653) (not e!1338591))))

(assert (=> d!641775 (= res!915653 ((_ is HashMap!2163) (cache!2544 cacheDown!688)))))

(assert (=> d!641775 (= (inv!30788 cacheDown!688) e!1338591)))

(declare-fun b!2106219 () Bool)

(assert (=> b!2106219 (= e!1338591 (validCacheMapDown!221 (cache!2544 cacheDown!688)))))

(assert (= (and d!641775 res!915653) b!2106219))

(assert (=> b!2106219 m!2564567))

(assert (=> start!205916 d!641775))

(declare-fun d!641777 () Bool)

(declare-fun c!338899 () Bool)

(assert (=> d!641777 (= c!338899 ((_ is Node!7720) (c!338892 totalInput!482)))))

(declare-fun e!1338592 () Bool)

(assert (=> d!641777 (= (inv!30785 (c!338892 totalInput!482)) e!1338592)))

(declare-fun b!2106220 () Bool)

(assert (=> b!2106220 (= e!1338592 (inv!30790 (c!338892 totalInput!482)))))

(declare-fun b!2106221 () Bool)

(declare-fun e!1338593 () Bool)

(assert (=> b!2106221 (= e!1338592 e!1338593)))

(declare-fun res!915654 () Bool)

(assert (=> b!2106221 (= res!915654 (not ((_ is Leaf!11273) (c!338892 totalInput!482))))))

(assert (=> b!2106221 (=> res!915654 e!1338593)))

(declare-fun b!2106222 () Bool)

(assert (=> b!2106222 (= e!1338593 (inv!30791 (c!338892 totalInput!482)))))

(assert (= (and d!641777 c!338899) b!2106220))

(assert (= (and d!641777 (not c!338899)) b!2106221))

(assert (= (and b!2106221 (not res!915654)) b!2106222))

(declare-fun m!2564575 () Bool)

(assert (=> b!2106220 m!2564575))

(declare-fun m!2564577 () Bool)

(assert (=> b!2106222 m!2564577))

(assert (=> b!2106187 d!641777))

(declare-fun d!641779 () Bool)

(assert (=> d!641779 (= (inv!30783 (tag!4630 (h!28664 rulesArg!349))) (= (mod (str.len (value!129631 (tag!4630 (h!28664 rulesArg!349)))) 2) 0))))

(assert (=> b!2106194 d!641779))

(declare-fun d!641781 () Bool)

(declare-fun res!915657 () Bool)

(declare-fun e!1338596 () Bool)

(assert (=> d!641781 (=> (not res!915657) (not e!1338596))))

(declare-fun semiInverseModEq!1653 (Int Int) Bool)

(assert (=> d!641781 (= res!915657 (semiInverseModEq!1653 (toChars!5710 (transformation!4140 (h!28664 rulesArg!349))) (toValue!5851 (transformation!4140 (h!28664 rulesArg!349)))))))

(assert (=> d!641781 (= (inv!30789 (transformation!4140 (h!28664 rulesArg!349))) e!1338596)))

(declare-fun b!2106225 () Bool)

(declare-fun equivClasses!1580 (Int Int) Bool)

(assert (=> b!2106225 (= e!1338596 (equivClasses!1580 (toChars!5710 (transformation!4140 (h!28664 rulesArg!349))) (toValue!5851 (transformation!4140 (h!28664 rulesArg!349)))))))

(assert (= (and d!641781 res!915657) b!2106225))

(declare-fun m!2564579 () Bool)

(assert (=> d!641781 m!2564579))

(declare-fun m!2564581 () Bool)

(assert (=> b!2106225 m!2564581))

(assert (=> b!2106194 d!641781))

(declare-fun d!641783 () Bool)

(assert (=> d!641783 true))

(declare-fun lt!791423 () Bool)

(declare-fun lambda!78151 () Int)

(declare-fun forall!4835 (List!23347 Int) Bool)

(assert (=> d!641783 (= lt!791423 (forall!4835 rulesArg!349 lambda!78151))))

(declare-fun e!1338602 () Bool)

(assert (=> d!641783 (= lt!791423 e!1338602)))

(declare-fun res!915662 () Bool)

(assert (=> d!641783 (=> res!915662 e!1338602)))

(assert (=> d!641783 (= res!915662 (not ((_ is Cons!23263) rulesArg!349)))))

(assert (=> d!641783 (= (rulesValidInductive!1455 thiss!15689 rulesArg!349) lt!791423)))

(declare-fun b!2106230 () Bool)

(declare-fun e!1338601 () Bool)

(assert (=> b!2106230 (= e!1338602 e!1338601)))

(declare-fun res!915663 () Bool)

(assert (=> b!2106230 (=> (not res!915663) (not e!1338601))))

(declare-fun ruleValid!1266 (LexerInterface!3738 Rule!8080) Bool)

(assert (=> b!2106230 (= res!915663 (ruleValid!1266 thiss!15689 (h!28664 rulesArg!349)))))

(declare-fun b!2106231 () Bool)

(assert (=> b!2106231 (= e!1338601 (rulesValidInductive!1455 thiss!15689 (t!195840 rulesArg!349)))))

(assert (= (and d!641783 (not res!915662)) b!2106230))

(assert (= (and b!2106230 res!915663) b!2106231))

(declare-fun m!2564583 () Bool)

(assert (=> d!641783 m!2564583))

(declare-fun m!2564585 () Bool)

(assert (=> b!2106230 m!2564585))

(declare-fun m!2564587 () Bool)

(assert (=> b!2106231 m!2564587))

(assert (=> b!2106178 d!641783))

(declare-fun b!2106248 () Bool)

(declare-fun e!1338620 () Bool)

(declare-fun tp!638772 () Bool)

(assert (=> b!2106248 (= e!1338620 tp!638772)))

(declare-fun setElem!13811 () Context!2282)

(declare-fun e!1338616 () Bool)

(declare-fun setNonEmpty!13810 () Bool)

(declare-fun setRes!13810 () Bool)

(declare-fun tp!638774 () Bool)

(declare-fun inv!30792 (Context!2282) Bool)

(assert (=> setNonEmpty!13810 (= setRes!13810 (and tp!638774 (inv!30792 setElem!13811) e!1338616))))

(declare-fun mapValue!10864 () List!23344)

(declare-fun setRest!13811 () (InoxSet Context!2282))

(assert (=> setNonEmpty!13810 (= (_2!13020 (h!28661 mapValue!10864)) ((_ map or) (store ((as const (Array Context!2282 Bool)) false) setElem!13811 true) setRest!13811))))

(declare-fun setIsEmpty!13810 () Bool)

(assert (=> setIsEmpty!13810 setRes!13810))

(declare-fun e!1338619 () Bool)

(declare-fun b!2106249 () Bool)

(declare-fun tp_is_empty!9369 () Bool)

(declare-fun tp!638771 () Bool)

(declare-fun tp!638780 () Bool)

(declare-fun e!1338615 () Bool)

(assert (=> b!2106249 (= e!1338615 (and tp!638771 (inv!30792 (_2!13019 (_1!13020 (h!28661 mapValue!10864)))) e!1338619 tp_is_empty!9369 setRes!13810 tp!638780))))

(declare-fun condSetEmpty!13811 () Bool)

(assert (=> b!2106249 (= condSetEmpty!13811 (= (_2!13020 (h!28661 mapValue!10864)) ((as const (Array Context!2282 Bool)) false)))))

(declare-fun mapIsEmpty!10864 () Bool)

(declare-fun mapRes!10864 () Bool)

(assert (=> mapIsEmpty!10864 mapRes!10864))

(declare-fun b!2106250 () Bool)

(declare-fun tp!638776 () Bool)

(assert (=> b!2106250 (= e!1338619 tp!638776)))

(declare-fun b!2106251 () Bool)

(declare-fun e!1338618 () Bool)

(declare-fun tp!638781 () Bool)

(assert (=> b!2106251 (= e!1338618 tp!638781)))

(declare-fun condMapEmpty!10864 () Bool)

(declare-fun mapDefault!10864 () List!23344)

(assert (=> mapNonEmpty!10860 (= condMapEmpty!10864 (= mapRest!10861 ((as const (Array (_ BitVec 32) List!23344)) mapDefault!10864)))))

(declare-fun e!1338617 () Bool)

(assert (=> mapNonEmpty!10860 (= tp!638738 (and e!1338617 mapRes!10864))))

(declare-fun b!2106252 () Bool)

(declare-fun tp!638779 () Bool)

(assert (=> b!2106252 (= e!1338616 tp!638779)))

(declare-fun mapNonEmpty!10864 () Bool)

(declare-fun tp!638777 () Bool)

(assert (=> mapNonEmpty!10864 (= mapRes!10864 (and tp!638777 e!1338615))))

(declare-fun mapRest!10864 () (Array (_ BitVec 32) List!23344))

(declare-fun mapKey!10864 () (_ BitVec 32))

(assert (=> mapNonEmpty!10864 (= mapRest!10861 (store mapRest!10864 mapKey!10864 mapValue!10864))))

(declare-fun setIsEmpty!13811 () Bool)

(declare-fun setRes!13811 () Bool)

(assert (=> setIsEmpty!13811 setRes!13811))

(declare-fun tp!638773 () Bool)

(declare-fun setNonEmpty!13811 () Bool)

(declare-fun setElem!13810 () Context!2282)

(assert (=> setNonEmpty!13811 (= setRes!13811 (and tp!638773 (inv!30792 setElem!13810) e!1338620))))

(declare-fun setRest!13810 () (InoxSet Context!2282))

(assert (=> setNonEmpty!13811 (= (_2!13020 (h!28661 mapDefault!10864)) ((_ map or) (store ((as const (Array Context!2282 Bool)) false) setElem!13810 true) setRest!13810))))

(declare-fun tp!638778 () Bool)

(declare-fun b!2106253 () Bool)

(declare-fun tp!638775 () Bool)

(assert (=> b!2106253 (= e!1338617 (and tp!638775 (inv!30792 (_2!13019 (_1!13020 (h!28661 mapDefault!10864)))) e!1338618 tp_is_empty!9369 setRes!13811 tp!638778))))

(declare-fun condSetEmpty!13810 () Bool)

(assert (=> b!2106253 (= condSetEmpty!13810 (= (_2!13020 (h!28661 mapDefault!10864)) ((as const (Array Context!2282 Bool)) false)))))

(assert (= (and mapNonEmpty!10860 condMapEmpty!10864) mapIsEmpty!10864))

(assert (= (and mapNonEmpty!10860 (not condMapEmpty!10864)) mapNonEmpty!10864))

(assert (= b!2106249 b!2106250))

(assert (= (and b!2106249 condSetEmpty!13811) setIsEmpty!13810))

(assert (= (and b!2106249 (not condSetEmpty!13811)) setNonEmpty!13810))

(assert (= setNonEmpty!13810 b!2106252))

(assert (= (and mapNonEmpty!10864 ((_ is Cons!23260) mapValue!10864)) b!2106249))

(assert (= b!2106253 b!2106251))

(assert (= (and b!2106253 condSetEmpty!13810) setIsEmpty!13811))

(assert (= (and b!2106253 (not condSetEmpty!13810)) setNonEmpty!13811))

(assert (= setNonEmpty!13811 b!2106248))

(assert (= (and mapNonEmpty!10860 ((_ is Cons!23260) mapDefault!10864)) b!2106253))

(declare-fun m!2564589 () Bool)

(assert (=> setNonEmpty!13810 m!2564589))

(declare-fun m!2564591 () Bool)

(assert (=> mapNonEmpty!10864 m!2564591))

(declare-fun m!2564593 () Bool)

(assert (=> b!2106253 m!2564593))

(declare-fun m!2564595 () Bool)

(assert (=> b!2106249 m!2564595))

(declare-fun m!2564597 () Bool)

(assert (=> setNonEmpty!13811 m!2564597))

(declare-fun b!2106262 () Bool)

(declare-fun e!1338627 () Bool)

(declare-fun tp!638796 () Bool)

(assert (=> b!2106262 (= e!1338627 tp!638796)))

(declare-fun e!1338628 () Bool)

(declare-fun tp!638795 () Bool)

(declare-fun tp!638793 () Bool)

(declare-fun b!2106263 () Bool)

(declare-fun setRes!13814 () Bool)

(assert (=> b!2106263 (= e!1338628 (and tp!638793 (inv!30792 (_2!13019 (_1!13020 (h!28661 mapValue!10860)))) e!1338627 tp_is_empty!9369 setRes!13814 tp!638795))))

(declare-fun condSetEmpty!13814 () Bool)

(assert (=> b!2106263 (= condSetEmpty!13814 (= (_2!13020 (h!28661 mapValue!10860)) ((as const (Array Context!2282 Bool)) false)))))

(declare-fun setNonEmpty!13814 () Bool)

(declare-fun setElem!13814 () Context!2282)

(declare-fun e!1338629 () Bool)

(declare-fun tp!638792 () Bool)

(assert (=> setNonEmpty!13814 (= setRes!13814 (and tp!638792 (inv!30792 setElem!13814) e!1338629))))

(declare-fun setRest!13814 () (InoxSet Context!2282))

(assert (=> setNonEmpty!13814 (= (_2!13020 (h!28661 mapValue!10860)) ((_ map or) (store ((as const (Array Context!2282 Bool)) false) setElem!13814 true) setRest!13814))))

(declare-fun b!2106264 () Bool)

(declare-fun tp!638794 () Bool)

(assert (=> b!2106264 (= e!1338629 tp!638794)))

(declare-fun setIsEmpty!13814 () Bool)

(assert (=> setIsEmpty!13814 setRes!13814))

(assert (=> mapNonEmpty!10860 (= tp!638731 e!1338628)))

(assert (= b!2106263 b!2106262))

(assert (= (and b!2106263 condSetEmpty!13814) setIsEmpty!13814))

(assert (= (and b!2106263 (not condSetEmpty!13814)) setNonEmpty!13814))

(assert (= setNonEmpty!13814 b!2106264))

(assert (= (and mapNonEmpty!10860 ((_ is Cons!23260) mapValue!10860)) b!2106263))

(declare-fun m!2564599 () Bool)

(assert (=> b!2106263 m!2564599))

(declare-fun m!2564601 () Bool)

(assert (=> setNonEmpty!13814 m!2564601))

(declare-fun b!2106273 () Bool)

(declare-fun tp!638805 () Bool)

(declare-fun tp!638804 () Bool)

(declare-fun e!1338635 () Bool)

(assert (=> b!2106273 (= e!1338635 (and (inv!30785 (left!18144 (c!338892 totalInput!482))) tp!638804 (inv!30785 (right!18474 (c!338892 totalInput!482))) tp!638805))))

(declare-fun b!2106275 () Bool)

(declare-fun e!1338634 () Bool)

(declare-fun tp!638803 () Bool)

(assert (=> b!2106275 (= e!1338634 tp!638803)))

(declare-fun b!2106274 () Bool)

(declare-fun inv!30793 (IArray!15445) Bool)

(assert (=> b!2106274 (= e!1338635 (and (inv!30793 (xs!10662 (c!338892 totalInput!482))) e!1338634))))

(assert (=> b!2106187 (= tp!638741 (and (inv!30785 (c!338892 totalInput!482)) e!1338635))))

(assert (= (and b!2106187 ((_ is Node!7720) (c!338892 totalInput!482))) b!2106273))

(assert (= b!2106274 b!2106275))

(assert (= (and b!2106187 ((_ is Leaf!11273) (c!338892 totalInput!482))) b!2106274))

(declare-fun m!2564603 () Bool)

(assert (=> b!2106273 m!2564603))

(declare-fun m!2564605 () Bool)

(assert (=> b!2106273 m!2564605))

(declare-fun m!2564607 () Bool)

(assert (=> b!2106274 m!2564607))

(assert (=> b!2106187 m!2564535))

(declare-fun b!2106286 () Bool)

(declare-fun b_free!60553 () Bool)

(declare-fun b_next!61257 () Bool)

(assert (=> b!2106286 (= b_free!60553 (not b_next!61257))))

(declare-fun tp!638815 () Bool)

(declare-fun b_and!170115 () Bool)

(assert (=> b!2106286 (= tp!638815 b_and!170115)))

(declare-fun b_free!60555 () Bool)

(declare-fun b_next!61259 () Bool)

(assert (=> b!2106286 (= b_free!60555 (not b_next!61259))))

(declare-fun tp!638816 () Bool)

(declare-fun b_and!170117 () Bool)

(assert (=> b!2106286 (= tp!638816 b_and!170117)))

(declare-fun e!1338647 () Bool)

(assert (=> b!2106286 (= e!1338647 (and tp!638815 tp!638816))))

(declare-fun e!1338645 () Bool)

(declare-fun b!2106285 () Bool)

(declare-fun tp!638817 () Bool)

(assert (=> b!2106285 (= e!1338645 (and tp!638817 (inv!30783 (tag!4630 (h!28664 (t!195840 rulesArg!349)))) (inv!30789 (transformation!4140 (h!28664 (t!195840 rulesArg!349)))) e!1338647))))

(declare-fun b!2106284 () Bool)

(declare-fun e!1338646 () Bool)

(declare-fun tp!638814 () Bool)

(assert (=> b!2106284 (= e!1338646 (and e!1338645 tp!638814))))

(assert (=> b!2106175 (= tp!638744 e!1338646)))

(assert (= b!2106285 b!2106286))

(assert (= b!2106284 b!2106285))

(assert (= (and b!2106175 ((_ is Cons!23263) (t!195840 rulesArg!349))) b!2106284))

(declare-fun m!2564609 () Bool)

(assert (=> b!2106285 m!2564609))

(declare-fun m!2564611 () Bool)

(assert (=> b!2106285 m!2564611))

(declare-fun setNonEmpty!13817 () Bool)

(declare-fun setRes!13817 () Bool)

(declare-fun e!1338656 () Bool)

(declare-fun setElem!13817 () Context!2282)

(declare-fun tp!638829 () Bool)

(assert (=> setNonEmpty!13817 (= setRes!13817 (and tp!638829 (inv!30792 setElem!13817) e!1338656))))

(declare-fun setRest!13817 () (InoxSet Context!2282))

(assert (=> setNonEmpty!13817 (= (_2!13022 (h!28665 (zeroValue!2508 (v!27816 (underlying!4695 (v!27817 (underlying!4696 (cache!2545 cacheUp!675)))))))) ((_ map or) (store ((as const (Array Context!2282 Bool)) false) setElem!13817 true) setRest!13817))))

(declare-fun e!1338654 () Bool)

(assert (=> b!2106184 (= tp!638746 e!1338654)))

(declare-fun b!2106295 () Bool)

(declare-fun e!1338655 () Bool)

(declare-fun tp!638827 () Bool)

(assert (=> b!2106295 (= e!1338655 tp!638827)))

(declare-fun setIsEmpty!13817 () Bool)

(assert (=> setIsEmpty!13817 setRes!13817))

(declare-fun b!2106296 () Bool)

(declare-fun tp!638828 () Bool)

(assert (=> b!2106296 (= e!1338656 tp!638828)))

(declare-fun tp!638826 () Bool)

(declare-fun b!2106297 () Bool)

(assert (=> b!2106297 (= e!1338654 (and (inv!30792 (_1!13021 (_1!13022 (h!28665 (zeroValue!2508 (v!27816 (underlying!4695 (v!27817 (underlying!4696 (cache!2545 cacheUp!675)))))))))) e!1338655 tp_is_empty!9369 setRes!13817 tp!638826))))

(declare-fun condSetEmpty!13817 () Bool)

(assert (=> b!2106297 (= condSetEmpty!13817 (= (_2!13022 (h!28665 (zeroValue!2508 (v!27816 (underlying!4695 (v!27817 (underlying!4696 (cache!2545 cacheUp!675)))))))) ((as const (Array Context!2282 Bool)) false)))))

(assert (= b!2106297 b!2106295))

(assert (= (and b!2106297 condSetEmpty!13817) setIsEmpty!13817))

(assert (= (and b!2106297 (not condSetEmpty!13817)) setNonEmpty!13817))

(assert (= setNonEmpty!13817 b!2106296))

(assert (= (and b!2106184 ((_ is Cons!23264) (zeroValue!2508 (v!27816 (underlying!4695 (v!27817 (underlying!4696 (cache!2545 cacheUp!675)))))))) b!2106297))

(declare-fun m!2564613 () Bool)

(assert (=> setNonEmpty!13817 m!2564613))

(declare-fun m!2564615 () Bool)

(assert (=> b!2106297 m!2564615))

(declare-fun setNonEmpty!13818 () Bool)

(declare-fun setRes!13818 () Bool)

(declare-fun setElem!13818 () Context!2282)

(declare-fun e!1338659 () Bool)

(declare-fun tp!638833 () Bool)

(assert (=> setNonEmpty!13818 (= setRes!13818 (and tp!638833 (inv!30792 setElem!13818) e!1338659))))

(declare-fun setRest!13818 () (InoxSet Context!2282))

(assert (=> setNonEmpty!13818 (= (_2!13022 (h!28665 (minValue!2508 (v!27816 (underlying!4695 (v!27817 (underlying!4696 (cache!2545 cacheUp!675)))))))) ((_ map or) (store ((as const (Array Context!2282 Bool)) false) setElem!13818 true) setRest!13818))))

(declare-fun e!1338657 () Bool)

(assert (=> b!2106184 (= tp!638730 e!1338657)))

(declare-fun b!2106298 () Bool)

(declare-fun e!1338658 () Bool)

(declare-fun tp!638831 () Bool)

(assert (=> b!2106298 (= e!1338658 tp!638831)))

(declare-fun setIsEmpty!13818 () Bool)

(assert (=> setIsEmpty!13818 setRes!13818))

(declare-fun b!2106299 () Bool)

(declare-fun tp!638832 () Bool)

(assert (=> b!2106299 (= e!1338659 tp!638832)))

(declare-fun b!2106300 () Bool)

(declare-fun tp!638830 () Bool)

(assert (=> b!2106300 (= e!1338657 (and (inv!30792 (_1!13021 (_1!13022 (h!28665 (minValue!2508 (v!27816 (underlying!4695 (v!27817 (underlying!4696 (cache!2545 cacheUp!675)))))))))) e!1338658 tp_is_empty!9369 setRes!13818 tp!638830))))

(declare-fun condSetEmpty!13818 () Bool)

(assert (=> b!2106300 (= condSetEmpty!13818 (= (_2!13022 (h!28665 (minValue!2508 (v!27816 (underlying!4695 (v!27817 (underlying!4696 (cache!2545 cacheUp!675)))))))) ((as const (Array Context!2282 Bool)) false)))))

(assert (= b!2106300 b!2106298))

(assert (= (and b!2106300 condSetEmpty!13818) setIsEmpty!13818))

(assert (= (and b!2106300 (not condSetEmpty!13818)) setNonEmpty!13818))

(assert (= setNonEmpty!13818 b!2106299))

(assert (= (and b!2106184 ((_ is Cons!23264) (minValue!2508 (v!27816 (underlying!4695 (v!27817 (underlying!4696 (cache!2545 cacheUp!675)))))))) b!2106300))

(declare-fun m!2564617 () Bool)

(assert (=> setNonEmpty!13818 m!2564617))

(declare-fun m!2564619 () Bool)

(assert (=> b!2106300 m!2564619))

(declare-fun b!2106301 () Bool)

(declare-fun e!1338660 () Bool)

(declare-fun tp!638838 () Bool)

(assert (=> b!2106301 (= e!1338660 tp!638838)))

(declare-fun b!2106302 () Bool)

(declare-fun tp!638837 () Bool)

(declare-fun e!1338661 () Bool)

(declare-fun setRes!13819 () Bool)

(declare-fun tp!638835 () Bool)

(assert (=> b!2106302 (= e!1338661 (and tp!638835 (inv!30792 (_2!13019 (_1!13020 (h!28661 mapDefault!10861)))) e!1338660 tp_is_empty!9369 setRes!13819 tp!638837))))

(declare-fun condSetEmpty!13819 () Bool)

(assert (=> b!2106302 (= condSetEmpty!13819 (= (_2!13020 (h!28661 mapDefault!10861)) ((as const (Array Context!2282 Bool)) false)))))

(declare-fun setNonEmpty!13819 () Bool)

(declare-fun setElem!13819 () Context!2282)

(declare-fun e!1338662 () Bool)

(declare-fun tp!638834 () Bool)

(assert (=> setNonEmpty!13819 (= setRes!13819 (and tp!638834 (inv!30792 setElem!13819) e!1338662))))

(declare-fun setRest!13819 () (InoxSet Context!2282))

(assert (=> setNonEmpty!13819 (= (_2!13020 (h!28661 mapDefault!10861)) ((_ map or) (store ((as const (Array Context!2282 Bool)) false) setElem!13819 true) setRest!13819))))

(declare-fun b!2106303 () Bool)

(declare-fun tp!638836 () Bool)

(assert (=> b!2106303 (= e!1338662 tp!638836)))

(declare-fun setIsEmpty!13819 () Bool)

(assert (=> setIsEmpty!13819 setRes!13819))

(assert (=> b!2106188 (= tp!638734 e!1338661)))

(assert (= b!2106302 b!2106301))

(assert (= (and b!2106302 condSetEmpty!13819) setIsEmpty!13819))

(assert (= (and b!2106302 (not condSetEmpty!13819)) setNonEmpty!13819))

(assert (= setNonEmpty!13819 b!2106303))

(assert (= (and b!2106188 ((_ is Cons!23260) mapDefault!10861)) b!2106302))

(declare-fun m!2564621 () Bool)

(assert (=> b!2106302 m!2564621))

(declare-fun m!2564623 () Bool)

(assert (=> setNonEmpty!13819 m!2564623))

(declare-fun b!2106304 () Bool)

(declare-fun e!1338663 () Bool)

(declare-fun tp!638843 () Bool)

(assert (=> b!2106304 (= e!1338663 tp!638843)))

(declare-fun e!1338664 () Bool)

(declare-fun b!2106305 () Bool)

(declare-fun tp!638840 () Bool)

(declare-fun setRes!13820 () Bool)

(declare-fun tp!638842 () Bool)

(assert (=> b!2106305 (= e!1338664 (and tp!638840 (inv!30792 (_2!13019 (_1!13020 (h!28661 (zeroValue!2507 (v!27814 (underlying!4693 (v!27815 (underlying!4694 (cache!2544 cacheDown!688)))))))))) e!1338663 tp_is_empty!9369 setRes!13820 tp!638842))))

(declare-fun condSetEmpty!13820 () Bool)

(assert (=> b!2106305 (= condSetEmpty!13820 (= (_2!13020 (h!28661 (zeroValue!2507 (v!27814 (underlying!4693 (v!27815 (underlying!4694 (cache!2544 cacheDown!688)))))))) ((as const (Array Context!2282 Bool)) false)))))

(declare-fun setElem!13820 () Context!2282)

(declare-fun e!1338665 () Bool)

(declare-fun tp!638839 () Bool)

(declare-fun setNonEmpty!13820 () Bool)

(assert (=> setNonEmpty!13820 (= setRes!13820 (and tp!638839 (inv!30792 setElem!13820) e!1338665))))

(declare-fun setRest!13820 () (InoxSet Context!2282))

(assert (=> setNonEmpty!13820 (= (_2!13020 (h!28661 (zeroValue!2507 (v!27814 (underlying!4693 (v!27815 (underlying!4694 (cache!2544 cacheDown!688)))))))) ((_ map or) (store ((as const (Array Context!2282 Bool)) false) setElem!13820 true) setRest!13820))))

(declare-fun b!2106306 () Bool)

(declare-fun tp!638841 () Bool)

(assert (=> b!2106306 (= e!1338665 tp!638841)))

(declare-fun setIsEmpty!13820 () Bool)

(assert (=> setIsEmpty!13820 setRes!13820))

(assert (=> b!2106171 (= tp!638739 e!1338664)))

(assert (= b!2106305 b!2106304))

(assert (= (and b!2106305 condSetEmpty!13820) setIsEmpty!13820))

(assert (= (and b!2106305 (not condSetEmpty!13820)) setNonEmpty!13820))

(assert (= setNonEmpty!13820 b!2106306))

(assert (= (and b!2106171 ((_ is Cons!23260) (zeroValue!2507 (v!27814 (underlying!4693 (v!27815 (underlying!4694 (cache!2544 cacheDown!688)))))))) b!2106305))

(declare-fun m!2564625 () Bool)

(assert (=> b!2106305 m!2564625))

(declare-fun m!2564627 () Bool)

(assert (=> setNonEmpty!13820 m!2564627))

(declare-fun b!2106307 () Bool)

(declare-fun e!1338666 () Bool)

(declare-fun tp!638848 () Bool)

(assert (=> b!2106307 (= e!1338666 tp!638848)))

(declare-fun e!1338667 () Bool)

(declare-fun setRes!13821 () Bool)

(declare-fun tp!638847 () Bool)

(declare-fun b!2106308 () Bool)

(declare-fun tp!638845 () Bool)

(assert (=> b!2106308 (= e!1338667 (and tp!638845 (inv!30792 (_2!13019 (_1!13020 (h!28661 (minValue!2507 (v!27814 (underlying!4693 (v!27815 (underlying!4694 (cache!2544 cacheDown!688)))))))))) e!1338666 tp_is_empty!9369 setRes!13821 tp!638847))))

(declare-fun condSetEmpty!13821 () Bool)

(assert (=> b!2106308 (= condSetEmpty!13821 (= (_2!13020 (h!28661 (minValue!2507 (v!27814 (underlying!4693 (v!27815 (underlying!4694 (cache!2544 cacheDown!688)))))))) ((as const (Array Context!2282 Bool)) false)))))

(declare-fun setElem!13821 () Context!2282)

(declare-fun e!1338668 () Bool)

(declare-fun setNonEmpty!13821 () Bool)

(declare-fun tp!638844 () Bool)

(assert (=> setNonEmpty!13821 (= setRes!13821 (and tp!638844 (inv!30792 setElem!13821) e!1338668))))

(declare-fun setRest!13821 () (InoxSet Context!2282))

(assert (=> setNonEmpty!13821 (= (_2!13020 (h!28661 (minValue!2507 (v!27814 (underlying!4693 (v!27815 (underlying!4694 (cache!2544 cacheDown!688)))))))) ((_ map or) (store ((as const (Array Context!2282 Bool)) false) setElem!13821 true) setRest!13821))))

(declare-fun b!2106309 () Bool)

(declare-fun tp!638846 () Bool)

(assert (=> b!2106309 (= e!1338668 tp!638846)))

(declare-fun setIsEmpty!13821 () Bool)

(assert (=> setIsEmpty!13821 setRes!13821))

(assert (=> b!2106171 (= tp!638748 e!1338667)))

(assert (= b!2106308 b!2106307))

(assert (= (and b!2106308 condSetEmpty!13821) setIsEmpty!13821))

(assert (= (and b!2106308 (not condSetEmpty!13821)) setNonEmpty!13821))

(assert (= setNonEmpty!13821 b!2106309))

(assert (= (and b!2106171 ((_ is Cons!23260) (minValue!2507 (v!27814 (underlying!4693 (v!27815 (underlying!4694 (cache!2544 cacheDown!688)))))))) b!2106308))

(declare-fun m!2564629 () Bool)

(assert (=> b!2106308 m!2564629))

(declare-fun m!2564631 () Bool)

(assert (=> setNonEmpty!13821 m!2564631))

(declare-fun b!2106321 () Bool)

(declare-fun e!1338671 () Bool)

(declare-fun tp!638861 () Bool)

(declare-fun tp!638859 () Bool)

(assert (=> b!2106321 (= e!1338671 (and tp!638861 tp!638859))))

(assert (=> b!2106194 (= tp!638740 e!1338671)))

(declare-fun b!2106323 () Bool)

(declare-fun tp!638860 () Bool)

(declare-fun tp!638862 () Bool)

(assert (=> b!2106323 (= e!1338671 (and tp!638860 tp!638862))))

(declare-fun b!2106320 () Bool)

(assert (=> b!2106320 (= e!1338671 tp_is_empty!9369)))

(declare-fun b!2106322 () Bool)

(declare-fun tp!638863 () Bool)

(assert (=> b!2106322 (= e!1338671 tp!638863)))

(assert (= (and b!2106194 ((_ is ElementMatch!5571) (regex!4140 (h!28664 rulesArg!349)))) b!2106320))

(assert (= (and b!2106194 ((_ is Concat!9847) (regex!4140 (h!28664 rulesArg!349)))) b!2106321))

(assert (= (and b!2106194 ((_ is Star!5571) (regex!4140 (h!28664 rulesArg!349)))) b!2106322))

(assert (= (and b!2106194 ((_ is Union!5571) (regex!4140 (h!28664 rulesArg!349)))) b!2106323))

(declare-fun setNonEmpty!13822 () Bool)

(declare-fun e!1338674 () Bool)

(declare-fun tp!638867 () Bool)

(declare-fun setRes!13822 () Bool)

(declare-fun setElem!13822 () Context!2282)

(assert (=> setNonEmpty!13822 (= setRes!13822 (and tp!638867 (inv!30792 setElem!13822) e!1338674))))

(declare-fun setRest!13822 () (InoxSet Context!2282))

(assert (=> setNonEmpty!13822 (= (_2!13022 (h!28665 mapDefault!10860)) ((_ map or) (store ((as const (Array Context!2282 Bool)) false) setElem!13822 true) setRest!13822))))

(declare-fun e!1338672 () Bool)

(assert (=> b!2106177 (= tp!638742 e!1338672)))

(declare-fun b!2106324 () Bool)

(declare-fun e!1338673 () Bool)

(declare-fun tp!638865 () Bool)

(assert (=> b!2106324 (= e!1338673 tp!638865)))

(declare-fun setIsEmpty!13822 () Bool)

(assert (=> setIsEmpty!13822 setRes!13822))

(declare-fun b!2106325 () Bool)

(declare-fun tp!638866 () Bool)

(assert (=> b!2106325 (= e!1338674 tp!638866)))

(declare-fun b!2106326 () Bool)

(declare-fun tp!638864 () Bool)

(assert (=> b!2106326 (= e!1338672 (and (inv!30792 (_1!13021 (_1!13022 (h!28665 mapDefault!10860)))) e!1338673 tp_is_empty!9369 setRes!13822 tp!638864))))

(declare-fun condSetEmpty!13822 () Bool)

(assert (=> b!2106326 (= condSetEmpty!13822 (= (_2!13022 (h!28665 mapDefault!10860)) ((as const (Array Context!2282 Bool)) false)))))

(assert (= b!2106326 b!2106324))

(assert (= (and b!2106326 condSetEmpty!13822) setIsEmpty!13822))

(assert (= (and b!2106326 (not condSetEmpty!13822)) setNonEmpty!13822))

(assert (= setNonEmpty!13822 b!2106325))

(assert (= (and b!2106177 ((_ is Cons!23264) mapDefault!10860)) b!2106326))

(declare-fun m!2564633 () Bool)

(assert (=> setNonEmpty!13822 m!2564633))

(declare-fun m!2564635 () Bool)

(assert (=> b!2106326 m!2564635))

(declare-fun tp!638869 () Bool)

(declare-fun tp!638870 () Bool)

(declare-fun e!1338676 () Bool)

(declare-fun b!2106327 () Bool)

(assert (=> b!2106327 (= e!1338676 (and (inv!30785 (left!18144 (c!338892 input!1444))) tp!638869 (inv!30785 (right!18474 (c!338892 input!1444))) tp!638870))))

(declare-fun b!2106329 () Bool)

(declare-fun e!1338675 () Bool)

(declare-fun tp!638868 () Bool)

(assert (=> b!2106329 (= e!1338675 tp!638868)))

(declare-fun b!2106328 () Bool)

(assert (=> b!2106328 (= e!1338676 (and (inv!30793 (xs!10662 (c!338892 input!1444))) e!1338675))))

(assert (=> b!2106172 (= tp!638747 (and (inv!30785 (c!338892 input!1444)) e!1338676))))

(assert (= (and b!2106172 ((_ is Node!7720) (c!338892 input!1444))) b!2106327))

(assert (= b!2106328 b!2106329))

(assert (= (and b!2106172 ((_ is Leaf!11273) (c!338892 input!1444))) b!2106328))

(declare-fun m!2564637 () Bool)

(assert (=> b!2106327 m!2564637))

(declare-fun m!2564639 () Bool)

(assert (=> b!2106327 m!2564639))

(declare-fun m!2564641 () Bool)

(assert (=> b!2106328 m!2564641))

(assert (=> b!2106172 m!2564511))

(declare-fun b!2106344 () Bool)

(declare-fun e!1338692 () Bool)

(declare-fun tp!638891 () Bool)

(assert (=> b!2106344 (= e!1338692 tp!638891)))

(declare-fun mapIsEmpty!10867 () Bool)

(declare-fun mapRes!10867 () Bool)

(assert (=> mapIsEmpty!10867 mapRes!10867))

(declare-fun condMapEmpty!10867 () Bool)

(declare-fun mapDefault!10867 () List!23348)

(assert (=> mapNonEmpty!10861 (= condMapEmpty!10867 (= mapRest!10860 ((as const (Array (_ BitVec 32) List!23348)) mapDefault!10867)))))

(declare-fun e!1338694 () Bool)

(assert (=> mapNonEmpty!10861 (= tp!638743 (and e!1338694 mapRes!10867))))

(declare-fun b!2106345 () Bool)

(declare-fun e!1338693 () Bool)

(declare-fun tp!638897 () Bool)

(assert (=> b!2106345 (= e!1338693 tp!638897)))

(declare-fun mapValue!10867 () List!23348)

(declare-fun e!1338691 () Bool)

(declare-fun e!1338690 () Bool)

(declare-fun setRes!13828 () Bool)

(declare-fun tp!638889 () Bool)

(declare-fun b!2106346 () Bool)

(assert (=> b!2106346 (= e!1338691 (and (inv!30792 (_1!13021 (_1!13022 (h!28665 mapValue!10867)))) e!1338690 tp_is_empty!9369 setRes!13828 tp!638889))))

(declare-fun condSetEmpty!13827 () Bool)

(assert (=> b!2106346 (= condSetEmpty!13827 (= (_2!13022 (h!28665 mapValue!10867)) ((as const (Array Context!2282 Bool)) false)))))

(declare-fun tp!638895 () Bool)

(declare-fun b!2106347 () Bool)

(declare-fun setRes!13827 () Bool)

(assert (=> b!2106347 (= e!1338694 (and (inv!30792 (_1!13021 (_1!13022 (h!28665 mapDefault!10867)))) e!1338692 tp_is_empty!9369 setRes!13827 tp!638895))))

(declare-fun condSetEmpty!13828 () Bool)

(assert (=> b!2106347 (= condSetEmpty!13828 (= (_2!13022 (h!28665 mapDefault!10867)) ((as const (Array Context!2282 Bool)) false)))))

(declare-fun b!2106348 () Bool)

(declare-fun tp!638896 () Bool)

(assert (=> b!2106348 (= e!1338690 tp!638896)))

(declare-fun mapNonEmpty!10867 () Bool)

(declare-fun tp!638892 () Bool)

(assert (=> mapNonEmpty!10867 (= mapRes!10867 (and tp!638892 e!1338691))))

(declare-fun mapKey!10867 () (_ BitVec 32))

(declare-fun mapRest!10867 () (Array (_ BitVec 32) List!23348))

(assert (=> mapNonEmpty!10867 (= mapRest!10860 (store mapRest!10867 mapKey!10867 mapValue!10867))))

(declare-fun b!2106349 () Bool)

(declare-fun e!1338689 () Bool)

(declare-fun tp!638890 () Bool)

(assert (=> b!2106349 (= e!1338689 tp!638890)))

(declare-fun setElem!13827 () Context!2282)

(declare-fun setNonEmpty!13827 () Bool)

(declare-fun tp!638893 () Bool)

(assert (=> setNonEmpty!13827 (= setRes!13827 (and tp!638893 (inv!30792 setElem!13827) e!1338693))))

(declare-fun setRest!13828 () (InoxSet Context!2282))

(assert (=> setNonEmpty!13827 (= (_2!13022 (h!28665 mapDefault!10867)) ((_ map or) (store ((as const (Array Context!2282 Bool)) false) setElem!13827 true) setRest!13828))))

(declare-fun setIsEmpty!13827 () Bool)

(assert (=> setIsEmpty!13827 setRes!13827))

(declare-fun setIsEmpty!13828 () Bool)

(assert (=> setIsEmpty!13828 setRes!13828))

(declare-fun tp!638894 () Bool)

(declare-fun setNonEmpty!13828 () Bool)

(declare-fun setElem!13828 () Context!2282)

(assert (=> setNonEmpty!13828 (= setRes!13828 (and tp!638894 (inv!30792 setElem!13828) e!1338689))))

(declare-fun setRest!13827 () (InoxSet Context!2282))

(assert (=> setNonEmpty!13828 (= (_2!13022 (h!28665 mapValue!10867)) ((_ map or) (store ((as const (Array Context!2282 Bool)) false) setElem!13828 true) setRest!13827))))

(assert (= (and mapNonEmpty!10861 condMapEmpty!10867) mapIsEmpty!10867))

(assert (= (and mapNonEmpty!10861 (not condMapEmpty!10867)) mapNonEmpty!10867))

(assert (= b!2106346 b!2106348))

(assert (= (and b!2106346 condSetEmpty!13827) setIsEmpty!13828))

(assert (= (and b!2106346 (not condSetEmpty!13827)) setNonEmpty!13828))

(assert (= setNonEmpty!13828 b!2106349))

(assert (= (and mapNonEmpty!10867 ((_ is Cons!23264) mapValue!10867)) b!2106346))

(assert (= b!2106347 b!2106344))

(assert (= (and b!2106347 condSetEmpty!13828) setIsEmpty!13827))

(assert (= (and b!2106347 (not condSetEmpty!13828)) setNonEmpty!13827))

(assert (= setNonEmpty!13827 b!2106345))

(assert (= (and mapNonEmpty!10861 ((_ is Cons!23264) mapDefault!10867)) b!2106347))

(declare-fun m!2564643 () Bool)

(assert (=> b!2106347 m!2564643))

(declare-fun m!2564645 () Bool)

(assert (=> setNonEmpty!13828 m!2564645))

(declare-fun m!2564647 () Bool)

(assert (=> mapNonEmpty!10867 m!2564647))

(declare-fun m!2564649 () Bool)

(assert (=> b!2106346 m!2564649))

(declare-fun m!2564651 () Bool)

(assert (=> setNonEmpty!13827 m!2564651))

(declare-fun setElem!13829 () Context!2282)

(declare-fun e!1338697 () Bool)

(declare-fun setNonEmpty!13829 () Bool)

(declare-fun setRes!13829 () Bool)

(declare-fun tp!638901 () Bool)

(assert (=> setNonEmpty!13829 (= setRes!13829 (and tp!638901 (inv!30792 setElem!13829) e!1338697))))

(declare-fun setRest!13829 () (InoxSet Context!2282))

(assert (=> setNonEmpty!13829 (= (_2!13022 (h!28665 mapValue!10861)) ((_ map or) (store ((as const (Array Context!2282 Bool)) false) setElem!13829 true) setRest!13829))))

(declare-fun e!1338695 () Bool)

(assert (=> mapNonEmpty!10861 (= tp!638736 e!1338695)))

(declare-fun b!2106350 () Bool)

(declare-fun e!1338696 () Bool)

(declare-fun tp!638899 () Bool)

(assert (=> b!2106350 (= e!1338696 tp!638899)))

(declare-fun setIsEmpty!13829 () Bool)

(assert (=> setIsEmpty!13829 setRes!13829))

(declare-fun b!2106351 () Bool)

(declare-fun tp!638900 () Bool)

(assert (=> b!2106351 (= e!1338697 tp!638900)))

(declare-fun tp!638898 () Bool)

(declare-fun b!2106352 () Bool)

(assert (=> b!2106352 (= e!1338695 (and (inv!30792 (_1!13021 (_1!13022 (h!28665 mapValue!10861)))) e!1338696 tp_is_empty!9369 setRes!13829 tp!638898))))

(declare-fun condSetEmpty!13829 () Bool)

(assert (=> b!2106352 (= condSetEmpty!13829 (= (_2!13022 (h!28665 mapValue!10861)) ((as const (Array Context!2282 Bool)) false)))))

(assert (= b!2106352 b!2106350))

(assert (= (and b!2106352 condSetEmpty!13829) setIsEmpty!13829))

(assert (= (and b!2106352 (not condSetEmpty!13829)) setNonEmpty!13829))

(assert (= setNonEmpty!13829 b!2106351))

(assert (= (and mapNonEmpty!10861 ((_ is Cons!23264) mapValue!10861)) b!2106352))

(declare-fun m!2564653 () Bool)

(assert (=> setNonEmpty!13829 m!2564653))

(declare-fun m!2564655 () Bool)

(assert (=> b!2106352 m!2564655))

(check-sat (not b!2106326) (not b!2106322) (not b!2106274) (not b!2106321) (not d!641781) (not b!2106347) (not b!2106303) (not b!2106307) (not b!2106301) b_and!170115 (not b!2106302) (not setNonEmpty!13822) (not b!2106344) (not mapNonEmpty!10867) (not b!2106249) (not b!2106328) (not b!2106346) (not b!2106219) (not d!641783) tp_is_empty!9369 (not setNonEmpty!13829) (not setNonEmpty!13811) (not d!641751) (not setNonEmpty!13828) (not d!641759) (not b!2106298) (not d!641771) (not b!2106297) (not b!2106213) (not b!2106222) b_and!170111 (not b!2106299) b_and!170109 (not setNonEmpty!13821) (not b_next!61255) (not d!641765) (not b_next!61259) (not b!2106351) (not b!2106327) (not d!641769) (not b_next!61247) (not b!2106284) (not b!2106349) (not b!2106352) (not b!2106263) (not b!2106207) (not b_next!61251) (not b!2106231) (not setNonEmpty!13827) (not b!2106253) (not b_next!61249) (not b!2106325) b_and!170113 (not b!2106187) (not b!2106275) (not b_next!61257) (not b!2106273) (not mapNonEmpty!10864) (not setNonEmpty!13820) (not b!2106172) (not b_next!61245) (not b!2106250) (not b!2106323) (not setNonEmpty!13819) (not setNonEmpty!13814) (not setNonEmpty!13810) (not b!2106324) (not b!2106285) (not b!2106205) (not d!641761) (not b!2106216) b_and!170103 (not b!2106264) (not b!2106348) (not b!2106350) (not b!2106262) (not b!2106225) (not b!2106329) (not setNonEmpty!13817) (not b!2106309) (not b!2106304) (not b!2106252) b_and!170117 (not b_next!61253) (not b!2106198) b_and!170105 (not b!2106296) (not b!2106308) (not b!2106295) (not b!2106251) (not b!2106248) (not b!2106345) b_and!170107 (not b!2106300) (not d!641757) (not b!2106230) (not b!2106305) (not setNonEmpty!13818) (not b!2106220) (not b!2106306))
(check-sat b_and!170115 (not b_next!61251) (not b_next!61257) (not b_next!61245) b_and!170103 b_and!170105 b_and!170107 b_and!170111 b_and!170109 (not b_next!61255) (not b_next!61259) (not b_next!61247) (not b_next!61249) b_and!170113 b_and!170117 (not b_next!61253))

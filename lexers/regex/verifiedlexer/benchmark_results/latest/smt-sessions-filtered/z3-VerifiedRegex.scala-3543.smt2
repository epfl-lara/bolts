; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!205736 () Bool)

(assert start!205736)

(declare-fun b!2104063 () Bool)

(declare-fun b_free!60309 () Bool)

(declare-fun b_next!61013 () Bool)

(assert (=> b!2104063 (= b_free!60309 (not b_next!61013))))

(declare-fun tp!637041 () Bool)

(declare-fun b_and!169871 () Bool)

(assert (=> b!2104063 (= tp!637041 b_and!169871)))

(declare-fun b!2104050 () Bool)

(declare-fun b_free!60311 () Bool)

(declare-fun b_next!61015 () Bool)

(assert (=> b!2104050 (= b_free!60311 (not b_next!61015))))

(declare-fun tp!637053 () Bool)

(declare-fun b_and!169873 () Bool)

(assert (=> b!2104050 (= tp!637053 b_and!169873)))

(declare-fun b!2104057 () Bool)

(declare-fun b_free!60313 () Bool)

(declare-fun b_next!61017 () Bool)

(assert (=> b!2104057 (= b_free!60313 (not b_next!61017))))

(declare-fun tp!637049 () Bool)

(declare-fun b_and!169875 () Bool)

(assert (=> b!2104057 (= tp!637049 b_and!169875)))

(declare-fun b!2104061 () Bool)

(declare-fun b_free!60315 () Bool)

(declare-fun b_next!61019 () Bool)

(assert (=> b!2104061 (= b_free!60315 (not b_next!61019))))

(declare-fun tp!637039 () Bool)

(declare-fun b_and!169877 () Bool)

(assert (=> b!2104061 (= tp!637039 b_and!169877)))

(declare-fun b_free!60317 () Bool)

(declare-fun b_next!61021 () Bool)

(assert (=> b!2104061 (= b_free!60317 (not b_next!61021))))

(declare-fun tp!637040 () Bool)

(declare-fun b_and!169879 () Bool)

(assert (=> b!2104061 (= tp!637040 b_and!169879)))

(declare-fun b!2104044 () Bool)

(declare-fun b_free!60319 () Bool)

(declare-fun b_next!61023 () Bool)

(assert (=> b!2104044 (= b_free!60319 (not b_next!61023))))

(declare-fun tp!637043 () Bool)

(declare-fun b_and!169881 () Bool)

(assert (=> b!2104044 (= tp!637043 b_and!169881)))

(declare-fun res!915049 () Bool)

(declare-fun e!1336654 () Bool)

(assert (=> start!205736 (=> (not res!915049) (not e!1336654))))

(declare-datatypes ((LexerInterface!3725 0))(
  ( (LexerInterfaceExt!3722 (__x!14748 Int)) (Lexer!3723) )
))
(declare-fun thiss!15689 () LexerInterface!3725)

(get-info :version)

(assert (=> start!205736 (= res!915049 ((_ is Lexer!3723) thiss!15689))))

(assert (=> start!205736 e!1336654))

(declare-fun e!1336637 () Bool)

(assert (=> start!205736 e!1336637))

(declare-datatypes ((C!11252 0))(
  ( (C!11253 (val!6612 Int)) )
))
(declare-datatypes ((List!23248 0))(
  ( (Nil!23164) (Cons!23164 (h!28565 C!11252) (t!195741 List!23248)) )
))
(declare-datatypes ((IArray!15415 0))(
  ( (IArray!15416 (innerList!7765 List!23248)) )
))
(declare-datatypes ((Conc!7705 0))(
  ( (Node!7705 (left!18112 Conc!7705) (right!18442 Conc!7705) (csize!15640 Int) (cheight!7916 Int)) (Leaf!11249 (xs!10647 IArray!15415) (csize!15641 Int)) (Empty!7705) )
))
(declare-datatypes ((BalanceConc!15172 0))(
  ( (BalanceConc!15173 (c!338833 Conc!7705)) )
))
(declare-fun totalInput!482 () BalanceConc!15172)

(declare-fun e!1336658 () Bool)

(declare-fun inv!30691 (BalanceConc!15172) Bool)

(assert (=> start!205736 (and (inv!30691 totalInput!482) e!1336658)))

(assert (=> start!205736 true))

(declare-fun input!1444 () BalanceConc!15172)

(declare-fun e!1336653 () Bool)

(assert (=> start!205736 (and (inv!30691 input!1444) e!1336653)))

(declare-datatypes ((Regex!5553 0))(
  ( (ElementMatch!5553 (c!338834 C!11252)) (Concat!9814 (regOne!11618 Regex!5553) (regTwo!11618 Regex!5553)) (EmptyExpr!5553) (Star!5553 (reg!5882 Regex!5553)) (EmptyLang!5553) (Union!5553 (regOne!11619 Regex!5553) (regTwo!11619 Regex!5553)) )
))
(declare-datatypes ((List!23249 0))(
  ( (Nil!23165) (Cons!23165 (h!28566 Regex!5553) (t!195742 List!23249)) )
))
(declare-datatypes ((Context!2246 0))(
  ( (Context!2247 (exprs!1623 List!23249)) )
))
(declare-datatypes ((tuple2!22408 0))(
  ( (tuple2!22409 (_1!12930 Context!2246) (_2!12930 C!11252)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!22410 0))(
  ( (tuple2!22411 (_1!12931 tuple2!22408) (_2!12931 (InoxSet Context!2246))) )
))
(declare-datatypes ((List!23250 0))(
  ( (Nil!23166) (Cons!23166 (h!28567 tuple2!22410) (t!195743 List!23250)) )
))
(declare-datatypes ((array!7648 0))(
  ( (array!7649 (arr!3391 (Array (_ BitVec 32) (_ BitVec 64))) (size!18087 (_ BitVec 32))) )
))
(declare-datatypes ((array!7650 0))(
  ( (array!7651 (arr!3392 (Array (_ BitVec 32) List!23250)) (size!18088 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4434 0))(
  ( (LongMapFixedSize!4435 (defaultEntry!2582 Int) (mask!6309 (_ BitVec 32)) (extraKeys!2465 (_ BitVec 32)) (zeroValue!2475 List!23250) (minValue!2475 List!23250) (_size!4485 (_ BitVec 32)) (_keys!2514 array!7648) (_values!2497 array!7650) (_vacant!2278 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!2131 0))(
  ( (HashableExt!2130 (__x!14749 Int)) )
))
(declare-datatypes ((Cell!8693 0))(
  ( (Cell!8694 (v!27742 LongMapFixedSize!4434)) )
))
(declare-datatypes ((MutLongMap!2217 0))(
  ( (LongMap!2217 (underlying!4629 Cell!8693)) (MutLongMapExt!2216 (__x!14750 Int)) )
))
(declare-datatypes ((Cell!8695 0))(
  ( (Cell!8696 (v!27743 MutLongMap!2217)) )
))
(declare-datatypes ((MutableMap!2131 0))(
  ( (MutableMapExt!2130 (__x!14751 Int)) (HashMap!2131 (underlying!4630 Cell!8695) (hashF!4054 Hashable!2131) (_size!4486 (_ BitVec 32)) (defaultValue!2293 Int)) )
))
(declare-datatypes ((CacheUp!1426 0))(
  ( (CacheUp!1427 (cache!2512 MutableMap!2131)) )
))
(declare-fun cacheUp!675 () CacheUp!1426)

(declare-fun e!1336645 () Bool)

(declare-fun inv!30692 (CacheUp!1426) Bool)

(assert (=> start!205736 (and (inv!30692 cacheUp!675) e!1336645)))

(declare-datatypes ((tuple3!2524 0))(
  ( (tuple3!2525 (_1!12932 Regex!5553) (_2!12932 Context!2246) (_3!1726 C!11252)) )
))
(declare-datatypes ((tuple2!22412 0))(
  ( (tuple2!22413 (_1!12933 tuple3!2524) (_2!12933 (InoxSet Context!2246))) )
))
(declare-datatypes ((List!23251 0))(
  ( (Nil!23167) (Cons!23167 (h!28568 tuple2!22412) (t!195744 List!23251)) )
))
(declare-datatypes ((array!7652 0))(
  ( (array!7653 (arr!3393 (Array (_ BitVec 32) List!23251)) (size!18089 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4436 0))(
  ( (LongMapFixedSize!4437 (defaultEntry!2583 Int) (mask!6310 (_ BitVec 32)) (extraKeys!2466 (_ BitVec 32)) (zeroValue!2476 List!23251) (minValue!2476 List!23251) (_size!4487 (_ BitVec 32)) (_keys!2515 array!7648) (_values!2498 array!7652) (_vacant!2279 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!8697 0))(
  ( (Cell!8698 (v!27744 LongMapFixedSize!4436)) )
))
(declare-datatypes ((MutLongMap!2218 0))(
  ( (LongMap!2218 (underlying!4631 Cell!8697)) (MutLongMapExt!2217 (__x!14752 Int)) )
))
(declare-datatypes ((Cell!8699 0))(
  ( (Cell!8700 (v!27745 MutLongMap!2218)) )
))
(declare-datatypes ((Hashable!2132 0))(
  ( (HashableExt!2131 (__x!14753 Int)) )
))
(declare-datatypes ((MutableMap!2132 0))(
  ( (MutableMapExt!2131 (__x!14754 Int)) (HashMap!2132 (underlying!4632 Cell!8699) (hashF!4055 Hashable!2132) (_size!4488 (_ BitVec 32)) (defaultValue!2294 Int)) )
))
(declare-datatypes ((CacheDown!1430 0))(
  ( (CacheDown!1431 (cache!2513 MutableMap!2132)) )
))
(declare-fun cacheDown!688 () CacheDown!1430)

(declare-fun e!1336641 () Bool)

(declare-fun inv!30693 (CacheDown!1430) Bool)

(assert (=> start!205736 (and (inv!30693 cacheDown!688) e!1336641)))

(declare-fun b!2104039 () Bool)

(declare-fun e!1336639 () Bool)

(assert (=> b!2104039 (= e!1336641 e!1336639)))

(declare-fun b!2104040 () Bool)

(declare-fun e!1336652 () Bool)

(declare-fun e!1336648 () Bool)

(assert (=> b!2104040 (= e!1336652 e!1336648)))

(declare-datatypes ((List!23252 0))(
  ( (Nil!23168) (Cons!23168 (h!28569 (_ BitVec 16)) (t!195745 List!23252)) )
))
(declare-datatypes ((TokenValue!4261 0))(
  ( (FloatLiteralValue!8522 (text!30272 List!23252)) (TokenValueExt!4260 (__x!14755 Int)) (Broken!21305 (value!129181 List!23252)) (Object!4344) (End!4261) (Def!4261) (Underscore!4261) (Match!4261) (Else!4261) (Error!4261) (Case!4261) (If!4261) (Extends!4261) (Abstract!4261) (Class!4261) (Val!4261) (DelimiterValue!8522 (del!4321 List!23252)) (KeywordValue!4267 (value!129182 List!23252)) (CommentValue!8522 (value!129183 List!23252)) (WhitespaceValue!8522 (value!129184 List!23252)) (IndentationValue!4261 (value!129185 List!23252)) (String!26496) (Int32!4261) (Broken!21306 (value!129186 List!23252)) (Boolean!4262) (Unit!37427) (OperatorValue!4264 (op!4321 List!23252)) (IdentifierValue!8522 (value!129187 List!23252)) (IdentifierValue!8523 (value!129188 List!23252)) (WhitespaceValue!8523 (value!129189 List!23252)) (True!8522) (False!8522) (Broken!21307 (value!129190 List!23252)) (Broken!21308 (value!129191 List!23252)) (True!8523) (RightBrace!4261) (RightBracket!4261) (Colon!4261) (Null!4261) (Comma!4261) (LeftBracket!4261) (False!8523) (LeftBrace!4261) (ImaginaryLiteralValue!4261 (text!30273 List!23252)) (StringLiteralValue!12783 (value!129192 List!23252)) (EOFValue!4261 (value!129193 List!23252)) (IdentValue!4261 (value!129194 List!23252)) (DelimiterValue!8523 (value!129195 List!23252)) (DedentValue!4261 (value!129196 List!23252)) (NewLineValue!4261 (value!129197 List!23252)) (IntegerValue!12783 (value!129198 (_ BitVec 32)) (text!30274 List!23252)) (IntegerValue!12784 (value!129199 Int) (text!30275 List!23252)) (Times!4261) (Or!4261) (Equal!4261) (Minus!4261) (Broken!21309 (value!129200 List!23252)) (And!4261) (Div!4261) (LessEqual!4261) (Mod!4261) (Concat!9815) (Not!4261) (Plus!4261) (SpaceValue!4261 (value!129201 List!23252)) (IntegerValue!12785 (value!129202 Int) (text!30276 List!23252)) (StringLiteralValue!12784 (text!30277 List!23252)) (FloatLiteralValue!8523 (text!30278 List!23252)) (BytesLiteralValue!4261 (value!129203 List!23252)) (CommentValue!8523 (value!129204 List!23252)) (StringLiteralValue!12785 (value!129205 List!23252)) (ErrorTokenValue!4261 (msg!4322 List!23252)) )
))
(declare-datatypes ((String!26497 0))(
  ( (String!26498 (value!129206 String)) )
))
(declare-datatypes ((TokenValueInjection!8106 0))(
  ( (TokenValueInjection!8107 (toValue!5836 Int) (toChars!5695 Int)) )
))
(declare-datatypes ((Rule!8050 0))(
  ( (Rule!8051 (regex!4125 Regex!5553) (tag!4615 String!26497) (isSeparator!4125 Bool) (transformation!4125 TokenValueInjection!8106)) )
))
(declare-datatypes ((List!23253 0))(
  ( (Nil!23169) (Cons!23169 (h!28570 Rule!8050) (t!195746 List!23253)) )
))
(declare-fun rulesArg!349 () List!23253)

(declare-fun b!2104041 () Bool)

(declare-fun e!1336656 () Bool)

(declare-fun e!1336661 () Bool)

(declare-fun tp!637050 () Bool)

(declare-fun inv!30689 (String!26497) Bool)

(declare-fun inv!30694 (TokenValueInjection!8106) Bool)

(assert (=> b!2104041 (= e!1336661 (and tp!637050 (inv!30689 (tag!4615 (h!28570 rulesArg!349))) (inv!30694 (transformation!4125 (h!28570 rulesArg!349))) e!1336656))))

(declare-fun b!2104042 () Bool)

(declare-fun e!1336650 () Bool)

(declare-fun tp!637047 () Bool)

(declare-fun mapRes!10729 () Bool)

(assert (=> b!2104042 (= e!1336650 (and tp!637047 mapRes!10729))))

(declare-fun condMapEmpty!10728 () Bool)

(declare-fun mapDefault!10729 () List!23251)

(assert (=> b!2104042 (= condMapEmpty!10728 (= (arr!3393 (_values!2498 (v!27744 (underlying!4631 (v!27745 (underlying!4632 (cache!2513 cacheDown!688))))))) ((as const (Array (_ BitVec 32) List!23251)) mapDefault!10729)))))

(declare-fun b!2104043 () Bool)

(declare-fun e!1336646 () Bool)

(declare-fun e!1336640 () Bool)

(assert (=> b!2104043 (= e!1336646 (not e!1336640))))

(declare-fun res!915048 () Bool)

(assert (=> b!2104043 (=> res!915048 e!1336640)))

(assert (=> b!2104043 (= res!915048 (or (not ((_ is Cons!23169) rulesArg!349)) (not ((_ is Nil!23169) (t!195746 rulesArg!349)))))))

(declare-fun lt!791051 () List!23248)

(declare-fun isPrefix!2061 (List!23248 List!23248) Bool)

(assert (=> b!2104043 (isPrefix!2061 lt!791051 lt!791051)))

(declare-datatypes ((Unit!37428 0))(
  ( (Unit!37429) )
))
(declare-fun lt!791048 () Unit!37428)

(declare-fun lemmaIsPrefixRefl!1379 (List!23248 List!23248) Unit!37428)

(assert (=> b!2104043 (= lt!791048 (lemmaIsPrefixRefl!1379 lt!791051 lt!791051))))

(declare-fun e!1336655 () Bool)

(assert (=> b!2104044 (= e!1336639 (and e!1336655 tp!637043))))

(declare-fun b!2104045 () Bool)

(declare-fun res!915051 () Bool)

(assert (=> b!2104045 (=> (not res!915051) (not e!1336646))))

(declare-fun valid!1761 (CacheUp!1426) Bool)

(assert (=> b!2104045 (= res!915051 (valid!1761 cacheUp!675))))

(declare-fun b!2104046 () Bool)

(declare-fun tp!637055 () Bool)

(declare-fun inv!30695 (Conc!7705) Bool)

(assert (=> b!2104046 (= e!1336658 (and (inv!30695 (c!338833 totalInput!482)) tp!637055))))

(declare-fun mapNonEmpty!10728 () Bool)

(declare-fun mapRes!10728 () Bool)

(declare-fun tp!637051 () Bool)

(declare-fun tp!637044 () Bool)

(assert (=> mapNonEmpty!10728 (= mapRes!10728 (and tp!637051 tp!637044))))

(declare-fun mapKey!10729 () (_ BitVec 32))

(declare-fun mapRest!10729 () (Array (_ BitVec 32) List!23250))

(declare-fun mapValue!10729 () List!23250)

(assert (=> mapNonEmpty!10728 (= (arr!3392 (_values!2497 (v!27742 (underlying!4629 (v!27743 (underlying!4630 (cache!2512 cacheUp!675))))))) (store mapRest!10729 mapKey!10729 mapValue!10729))))

(declare-fun b!2104047 () Bool)

(declare-fun res!915052 () Bool)

(assert (=> b!2104047 (=> (not res!915052) (not e!1336646))))

(declare-fun valid!1762 (CacheDown!1430) Bool)

(assert (=> b!2104047 (= res!915052 (valid!1762 cacheDown!688))))

(declare-fun b!2104048 () Bool)

(declare-fun e!1336660 () Bool)

(declare-fun e!1336651 () Bool)

(assert (=> b!2104048 (= e!1336660 e!1336651)))

(declare-fun b!2104049 () Bool)

(declare-fun e!1336638 () Bool)

(assert (=> b!2104049 (= e!1336645 e!1336638)))

(declare-fun tp!637042 () Bool)

(declare-fun e!1336659 () Bool)

(declare-fun e!1336642 () Bool)

(declare-fun tp!637054 () Bool)

(declare-fun array_inv!2441 (array!7648) Bool)

(declare-fun array_inv!2442 (array!7650) Bool)

(assert (=> b!2104050 (= e!1336642 (and tp!637053 tp!637054 tp!637042 (array_inv!2441 (_keys!2514 (v!27742 (underlying!4629 (v!27743 (underlying!4630 (cache!2512 cacheUp!675))))))) (array_inv!2442 (_values!2497 (v!27742 (underlying!4629 (v!27743 (underlying!4630 (cache!2512 cacheUp!675))))))) e!1336659))))

(declare-fun b!2104051 () Bool)

(assert (=> b!2104051 (= e!1336654 e!1336646)))

(declare-fun res!915054 () Bool)

(assert (=> b!2104051 (=> (not res!915054) (not e!1336646))))

(declare-fun isSuffix!548 (List!23248 List!23248) Bool)

(declare-fun list!9429 (BalanceConc!15172) List!23248)

(assert (=> b!2104051 (= res!915054 (isSuffix!548 lt!791051 (list!9429 totalInput!482)))))

(assert (=> b!2104051 (= lt!791051 (list!9429 input!1444))))

(declare-fun b!2104052 () Bool)

(declare-fun lt!791050 () MutLongMap!2218)

(assert (=> b!2104052 (= e!1336655 (and e!1336660 ((_ is LongMap!2218) lt!791050)))))

(assert (=> b!2104052 (= lt!791050 (v!27745 (underlying!4632 (cache!2513 cacheDown!688))))))

(declare-fun mapIsEmpty!10728 () Bool)

(assert (=> mapIsEmpty!10728 mapRes!10729))

(declare-fun b!2104053 () Bool)

(assert (=> b!2104053 (= e!1336640 true)))

(declare-datatypes ((Token!7782 0))(
  ( (Token!7783 (value!129207 TokenValue!4261) (rule!6443 Rule!8050) (size!18090 Int) (originalCharacters!4922 List!23248)) )
))
(declare-datatypes ((tuple2!22414 0))(
  ( (tuple2!22415 (_1!12934 Token!7782) (_2!12934 BalanceConc!15172)) )
))
(declare-datatypes ((Option!4844 0))(
  ( (None!4843) (Some!4843 (v!27746 tuple2!22414)) )
))
(declare-datatypes ((tuple3!2526 0))(
  ( (tuple3!2527 (_1!12935 Option!4844) (_2!12935 CacheUp!1426) (_3!1727 CacheDown!1430)) )
))
(declare-fun lt!791047 () tuple3!2526)

(declare-fun maxPrefixOneRuleZipperSequenceV2MemOnlyDeriv!61 (LexerInterface!3725 Rule!8050 BalanceConc!15172 BalanceConc!15172 CacheUp!1426 CacheDown!1430) tuple3!2526)

(assert (=> b!2104053 (= lt!791047 (maxPrefixOneRuleZipperSequenceV2MemOnlyDeriv!61 thiss!15689 (h!28570 rulesArg!349) input!1444 totalInput!482 cacheUp!675 cacheDown!688))))

(declare-fun b!2104054 () Bool)

(declare-fun tp!637046 () Bool)

(assert (=> b!2104054 (= e!1336637 (and e!1336661 tp!637046))))

(declare-fun b!2104055 () Bool)

(declare-fun e!1336644 () Bool)

(declare-fun lt!791049 () MutLongMap!2217)

(assert (=> b!2104055 (= e!1336644 (and e!1336652 ((_ is LongMap!2217) lt!791049)))))

(assert (=> b!2104055 (= lt!791049 (v!27743 (underlying!4630 (cache!2512 cacheUp!675))))))

(declare-fun b!2104056 () Bool)

(declare-fun e!1336643 () Bool)

(assert (=> b!2104056 (= e!1336651 e!1336643)))

(declare-fun tp!637056 () Bool)

(declare-fun tp!637038 () Bool)

(declare-fun array_inv!2443 (array!7652) Bool)

(assert (=> b!2104057 (= e!1336643 (and tp!637049 tp!637056 tp!637038 (array_inv!2441 (_keys!2515 (v!27744 (underlying!4631 (v!27745 (underlying!4632 (cache!2513 cacheDown!688))))))) (array_inv!2443 (_values!2498 (v!27744 (underlying!4631 (v!27745 (underlying!4632 (cache!2513 cacheDown!688))))))) e!1336650))))

(declare-fun b!2104058 () Bool)

(declare-fun tp!637037 () Bool)

(assert (=> b!2104058 (= e!1336659 (and tp!637037 mapRes!10728))))

(declare-fun condMapEmpty!10729 () Bool)

(declare-fun mapDefault!10728 () List!23250)

(assert (=> b!2104058 (= condMapEmpty!10729 (= (arr!3392 (_values!2497 (v!27742 (underlying!4629 (v!27743 (underlying!4630 (cache!2512 cacheUp!675))))))) ((as const (Array (_ BitVec 32) List!23250)) mapDefault!10728)))))

(declare-fun b!2104059 () Bool)

(declare-fun res!915053 () Bool)

(assert (=> b!2104059 (=> (not res!915053) (not e!1336654))))

(declare-fun isEmpty!14260 (List!23253) Bool)

(assert (=> b!2104059 (= res!915053 (not (isEmpty!14260 rulesArg!349)))))

(declare-fun b!2104060 () Bool)

(declare-fun res!915050 () Bool)

(assert (=> b!2104060 (=> (not res!915050) (not e!1336654))))

(declare-fun rulesValidInductive!1444 (LexerInterface!3725 List!23253) Bool)

(assert (=> b!2104060 (= res!915050 (rulesValidInductive!1444 thiss!15689 rulesArg!349))))

(assert (=> b!2104061 (= e!1336656 (and tp!637039 tp!637040))))

(declare-fun b!2104062 () Bool)

(assert (=> b!2104062 (= e!1336648 e!1336642)))

(declare-fun mapNonEmpty!10729 () Bool)

(declare-fun tp!637045 () Bool)

(declare-fun tp!637052 () Bool)

(assert (=> mapNonEmpty!10729 (= mapRes!10729 (and tp!637045 tp!637052))))

(declare-fun mapValue!10728 () List!23251)

(declare-fun mapRest!10728 () (Array (_ BitVec 32) List!23251))

(declare-fun mapKey!10728 () (_ BitVec 32))

(assert (=> mapNonEmpty!10729 (= (arr!3393 (_values!2498 (v!27744 (underlying!4631 (v!27745 (underlying!4632 (cache!2513 cacheDown!688))))))) (store mapRest!10728 mapKey!10728 mapValue!10728))))

(assert (=> b!2104063 (= e!1336638 (and e!1336644 tp!637041))))

(declare-fun b!2104064 () Bool)

(declare-fun tp!637048 () Bool)

(assert (=> b!2104064 (= e!1336653 (and (inv!30695 (c!338833 input!1444)) tp!637048))))

(declare-fun mapIsEmpty!10729 () Bool)

(assert (=> mapIsEmpty!10729 mapRes!10728))

(assert (= (and start!205736 res!915049) b!2104060))

(assert (= (and b!2104060 res!915050) b!2104059))

(assert (= (and b!2104059 res!915053) b!2104051))

(assert (= (and b!2104051 res!915054) b!2104045))

(assert (= (and b!2104045 res!915051) b!2104047))

(assert (= (and b!2104047 res!915052) b!2104043))

(assert (= (and b!2104043 (not res!915048)) b!2104053))

(assert (= b!2104041 b!2104061))

(assert (= b!2104054 b!2104041))

(assert (= (and start!205736 ((_ is Cons!23169) rulesArg!349)) b!2104054))

(assert (= start!205736 b!2104046))

(assert (= start!205736 b!2104064))

(assert (= (and b!2104058 condMapEmpty!10729) mapIsEmpty!10729))

(assert (= (and b!2104058 (not condMapEmpty!10729)) mapNonEmpty!10728))

(assert (= b!2104050 b!2104058))

(assert (= b!2104062 b!2104050))

(assert (= b!2104040 b!2104062))

(assert (= (and b!2104055 ((_ is LongMap!2217) (v!27743 (underlying!4630 (cache!2512 cacheUp!675))))) b!2104040))

(assert (= b!2104063 b!2104055))

(assert (= (and b!2104049 ((_ is HashMap!2131) (cache!2512 cacheUp!675))) b!2104063))

(assert (= start!205736 b!2104049))

(assert (= (and b!2104042 condMapEmpty!10728) mapIsEmpty!10728))

(assert (= (and b!2104042 (not condMapEmpty!10728)) mapNonEmpty!10729))

(assert (= b!2104057 b!2104042))

(assert (= b!2104056 b!2104057))

(assert (= b!2104048 b!2104056))

(assert (= (and b!2104052 ((_ is LongMap!2218) (v!27745 (underlying!4632 (cache!2513 cacheDown!688))))) b!2104048))

(assert (= b!2104044 b!2104052))

(assert (= (and b!2104039 ((_ is HashMap!2132) (cache!2513 cacheDown!688))) b!2104044))

(assert (= start!205736 b!2104039))

(declare-fun m!2563055 () Bool)

(assert (=> b!2104053 m!2563055))

(declare-fun m!2563057 () Bool)

(assert (=> b!2104046 m!2563057))

(declare-fun m!2563059 () Bool)

(assert (=> b!2104041 m!2563059))

(declare-fun m!2563061 () Bool)

(assert (=> b!2104041 m!2563061))

(declare-fun m!2563063 () Bool)

(assert (=> b!2104060 m!2563063))

(declare-fun m!2563065 () Bool)

(assert (=> b!2104064 m!2563065))

(declare-fun m!2563067 () Bool)

(assert (=> b!2104045 m!2563067))

(declare-fun m!2563069 () Bool)

(assert (=> start!205736 m!2563069))

(declare-fun m!2563071 () Bool)

(assert (=> start!205736 m!2563071))

(declare-fun m!2563073 () Bool)

(assert (=> start!205736 m!2563073))

(declare-fun m!2563075 () Bool)

(assert (=> start!205736 m!2563075))

(declare-fun m!2563077 () Bool)

(assert (=> b!2104047 m!2563077))

(declare-fun m!2563079 () Bool)

(assert (=> b!2104043 m!2563079))

(declare-fun m!2563081 () Bool)

(assert (=> b!2104043 m!2563081))

(declare-fun m!2563083 () Bool)

(assert (=> mapNonEmpty!10728 m!2563083))

(declare-fun m!2563085 () Bool)

(assert (=> b!2104059 m!2563085))

(declare-fun m!2563087 () Bool)

(assert (=> b!2104051 m!2563087))

(assert (=> b!2104051 m!2563087))

(declare-fun m!2563089 () Bool)

(assert (=> b!2104051 m!2563089))

(declare-fun m!2563091 () Bool)

(assert (=> b!2104051 m!2563091))

(declare-fun m!2563093 () Bool)

(assert (=> mapNonEmpty!10729 m!2563093))

(declare-fun m!2563095 () Bool)

(assert (=> b!2104057 m!2563095))

(declare-fun m!2563097 () Bool)

(assert (=> b!2104057 m!2563097))

(declare-fun m!2563099 () Bool)

(assert (=> b!2104050 m!2563099))

(declare-fun m!2563101 () Bool)

(assert (=> b!2104050 m!2563101))

(check-sat (not b_next!61023) (not b_next!61017) (not b!2104053) (not b!2104051) (not b!2104064) (not start!205736) (not b!2104041) (not b!2104059) (not b_next!61015) (not b!2104046) b_and!169875 (not b!2104042) b_and!169881 (not b!2104047) (not b_next!61021) (not b!2104058) (not b!2104050) b_and!169873 (not b_next!61019) (not mapNonEmpty!10728) (not b_next!61013) (not mapNonEmpty!10729) (not b!2104057) b_and!169877 (not b!2104060) (not b!2104045) (not b!2104054) (not b!2104043) b_and!169879 b_and!169871)
(check-sat (not b_next!61023) (not b_next!61017) b_and!169875 b_and!169881 (not b_next!61021) (not b_next!61013) b_and!169877 (not b_next!61015) b_and!169873 (not b_next!61019) b_and!169879 b_and!169871)

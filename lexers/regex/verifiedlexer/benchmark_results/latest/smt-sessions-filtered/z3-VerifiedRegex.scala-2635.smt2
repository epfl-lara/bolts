; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!142734 () Bool)

(assert start!142734)

(declare-fun b!1535234 () Bool)

(declare-fun b_free!39743 () Bool)

(declare-fun b_next!40447 () Bool)

(assert (=> b!1535234 (= b_free!39743 (not b_next!40447))))

(declare-fun tp!442283 () Bool)

(declare-fun b_and!106621 () Bool)

(assert (=> b!1535234 (= tp!442283 b_and!106621)))

(declare-fun b!1535262 () Bool)

(declare-fun b_free!39745 () Bool)

(declare-fun b_next!40449 () Bool)

(assert (=> b!1535262 (= b_free!39745 (not b_next!40449))))

(declare-fun tp!442263 () Bool)

(declare-fun b_and!106623 () Bool)

(assert (=> b!1535262 (= tp!442263 b_and!106623)))

(declare-fun b!1535246 () Bool)

(declare-fun b_free!39747 () Bool)

(declare-fun b_next!40451 () Bool)

(assert (=> b!1535246 (= b_free!39747 (not b_next!40451))))

(declare-fun tp!442288 () Bool)

(declare-fun b_and!106625 () Bool)

(assert (=> b!1535246 (= tp!442288 b_and!106625)))

(declare-fun b!1535242 () Bool)

(declare-fun b_free!39749 () Bool)

(declare-fun b_next!40453 () Bool)

(assert (=> b!1535242 (= b_free!39749 (not b_next!40453))))

(declare-fun tp!442267 () Bool)

(declare-fun b_and!106627 () Bool)

(assert (=> b!1535242 (= tp!442267 b_and!106627)))

(declare-fun b_free!39751 () Bool)

(declare-fun b_next!40455 () Bool)

(assert (=> b!1535242 (= b_free!39751 (not b_next!40455))))

(declare-fun tp!442269 () Bool)

(declare-fun b_and!106629 () Bool)

(assert (=> b!1535242 (= tp!442269 b_and!106629)))

(declare-fun b!1535244 () Bool)

(declare-fun b_free!39753 () Bool)

(declare-fun b_next!40457 () Bool)

(assert (=> b!1535244 (= b_free!39753 (not b_next!40457))))

(declare-fun tp!442275 () Bool)

(declare-fun b_and!106631 () Bool)

(assert (=> b!1535244 (= tp!442275 b_and!106631)))

(declare-fun b!1535258 () Bool)

(declare-fun b_free!39755 () Bool)

(declare-fun b_next!40459 () Bool)

(assert (=> b!1535258 (= b_free!39755 (not b_next!40459))))

(declare-fun tp!442276 () Bool)

(declare-fun b_and!106633 () Bool)

(assert (=> b!1535258 (= tp!442276 b_and!106633)))

(declare-fun b!1535257 () Bool)

(declare-fun b_free!39757 () Bool)

(declare-fun b_next!40461 () Bool)

(assert (=> b!1535257 (= b_free!39757 (not b_next!40461))))

(declare-fun tp!442264 () Bool)

(declare-fun b_and!106635 () Bool)

(assert (=> b!1535257 (= tp!442264 b_and!106635)))

(declare-fun mapNonEmpty!7302 () Bool)

(declare-fun mapRes!7302 () Bool)

(declare-fun tp!442273 () Bool)

(declare-fun tp!442268 () Bool)

(assert (=> mapNonEmpty!7302 (= mapRes!7302 (and tp!442273 tp!442268))))

(declare-fun mapKey!7304 () (_ BitVec 32))

(declare-datatypes ((C!8540 0))(
  ( (C!8541 (val!4842 Int)) )
))
(declare-datatypes ((Regex!4181 0))(
  ( (ElementMatch!4181 (c!251535 C!8540)) (Concat!7132 (regOne!8874 Regex!4181) (regTwo!8874 Regex!4181)) (EmptyExpr!4181) (Star!4181 (reg!4510 Regex!4181)) (EmptyLang!4181) (Union!4181 (regOne!8875 Regex!4181) (regTwo!8875 Regex!4181)) )
))
(declare-datatypes ((List!16309 0))(
  ( (Nil!16241) (Cons!16241 (h!21642 Regex!4181) (t!140515 List!16309)) )
))
(declare-datatypes ((Context!1398 0))(
  ( (Context!1399 (exprs!1199 List!16309)) )
))
(declare-datatypes ((array!5380 0))(
  ( (array!5381 (arr!2393 (Array (_ BitVec 32) (_ BitVec 64))) (size!13136 (_ BitVec 32))) )
))
(declare-datatypes ((tuple3!1440 0))(
  ( (tuple3!1441 (_1!8698 Regex!4181) (_2!8698 Context!1398) (_3!1084 C!8540)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!15228 0))(
  ( (tuple2!15229 (_1!8699 tuple3!1440) (_2!8699 (InoxSet Context!1398))) )
))
(declare-datatypes ((List!16310 0))(
  ( (Nil!16242) (Cons!16242 (h!21643 tuple2!15228) (t!140516 List!16310)) )
))
(declare-datatypes ((array!5382 0))(
  ( (array!5383 (arr!2394 (Array (_ BitVec 32) List!16310)) (size!13137 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3074 0))(
  ( (LongMapFixedSize!3075 (defaultEntry!1897 Int) (mask!4716 (_ BitVec 32)) (extraKeys!1784 (_ BitVec 32)) (zeroValue!1794 List!16310) (minValue!1794 List!16310) (_size!3155 (_ BitVec 32)) (_keys!1831 array!5380) (_values!1816 array!5382) (_vacant!1598 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!6033 0))(
  ( (Cell!6034 (v!23054 LongMapFixedSize!3074)) )
))
(declare-datatypes ((MutLongMap!1537 0))(
  ( (LongMap!1537 (underlying!3283 Cell!6033)) (MutLongMapExt!1536 (__x!10246 Int)) )
))
(declare-datatypes ((Cell!6035 0))(
  ( (Cell!6036 (v!23055 MutLongMap!1537)) )
))
(declare-datatypes ((Hashable!1481 0))(
  ( (HashableExt!1480 (__x!10247 Int)) )
))
(declare-datatypes ((MutableMap!1481 0))(
  ( (MutableMapExt!1480 (__x!10248 Int)) (HashMap!1481 (underlying!3284 Cell!6035) (hashF!3400 Hashable!1481) (_size!3156 (_ BitVec 32)) (defaultValue!1641 Int)) )
))
(declare-datatypes ((CacheDown!892 0))(
  ( (CacheDown!893 (cache!1862 MutableMap!1481)) )
))
(declare-fun cacheDown!708 () CacheDown!892)

(declare-fun mapRest!7302 () (Array (_ BitVec 32) List!16310))

(declare-fun mapValue!7303 () List!16310)

(assert (=> mapNonEmpty!7302 (= (arr!2394 (_values!1816 (v!23054 (underlying!3283 (v!23055 (underlying!3284 (cache!1862 cacheDown!708))))))) (store mapRest!7302 mapKey!7304 mapValue!7303))))

(declare-fun b!1535231 () Bool)

(declare-fun res!688544 () Bool)

(declare-fun e!981589 () Bool)

(assert (=> b!1535231 (=> (not res!688544) (not e!981589))))

(declare-datatypes ((LexerInterface!2513 0))(
  ( (LexerInterfaceExt!2510 (__x!10249 Int)) (Lexer!2511) )
))
(declare-fun thiss!15733 () LexerInterface!2513)

(declare-datatypes ((List!16311 0))(
  ( (Nil!16243) (Cons!16243 (h!21644 (_ BitVec 16)) (t!140517 List!16311)) )
))
(declare-datatypes ((TokenValue!2951 0))(
  ( (FloatLiteralValue!5902 (text!21102 List!16311)) (TokenValueExt!2950 (__x!10250 Int)) (Broken!14755 (value!91177 List!16311)) (Object!3018) (End!2951) (Def!2951) (Underscore!2951) (Match!2951) (Else!2951) (Error!2951) (Case!2951) (If!2951) (Extends!2951) (Abstract!2951) (Class!2951) (Val!2951) (DelimiterValue!5902 (del!3011 List!16311)) (KeywordValue!2957 (value!91178 List!16311)) (CommentValue!5902 (value!91179 List!16311)) (WhitespaceValue!5902 (value!91180 List!16311)) (IndentationValue!2951 (value!91181 List!16311)) (String!19026) (Int32!2951) (Broken!14756 (value!91182 List!16311)) (Boolean!2952) (Unit!25817) (OperatorValue!2954 (op!3011 List!16311)) (IdentifierValue!5902 (value!91183 List!16311)) (IdentifierValue!5903 (value!91184 List!16311)) (WhitespaceValue!5903 (value!91185 List!16311)) (True!5902) (False!5902) (Broken!14757 (value!91186 List!16311)) (Broken!14758 (value!91187 List!16311)) (True!5903) (RightBrace!2951) (RightBracket!2951) (Colon!2951) (Null!2951) (Comma!2951) (LeftBracket!2951) (False!5903) (LeftBrace!2951) (ImaginaryLiteralValue!2951 (text!21103 List!16311)) (StringLiteralValue!8853 (value!91188 List!16311)) (EOFValue!2951 (value!91189 List!16311)) (IdentValue!2951 (value!91190 List!16311)) (DelimiterValue!5903 (value!91191 List!16311)) (DedentValue!2951 (value!91192 List!16311)) (NewLineValue!2951 (value!91193 List!16311)) (IntegerValue!8853 (value!91194 (_ BitVec 32)) (text!21104 List!16311)) (IntegerValue!8854 (value!91195 Int) (text!21105 List!16311)) (Times!2951) (Or!2951) (Equal!2951) (Minus!2951) (Broken!14759 (value!91196 List!16311)) (And!2951) (Div!2951) (LessEqual!2951) (Mod!2951) (Concat!7133) (Not!2951) (Plus!2951) (SpaceValue!2951 (value!91197 List!16311)) (IntegerValue!8855 (value!91198 Int) (text!21106 List!16311)) (StringLiteralValue!8854 (text!21107 List!16311)) (FloatLiteralValue!5903 (text!21108 List!16311)) (BytesLiteralValue!2951 (value!91199 List!16311)) (CommentValue!5903 (value!91200 List!16311)) (StringLiteralValue!8855 (value!91201 List!16311)) (ErrorTokenValue!2951 (msg!3012 List!16311)) )
))
(declare-datatypes ((List!16312 0))(
  ( (Nil!16244) (Cons!16244 (h!21645 C!8540) (t!140518 List!16312)) )
))
(declare-datatypes ((IArray!10953 0))(
  ( (IArray!10954 (innerList!5534 List!16312)) )
))
(declare-datatypes ((Conc!5474 0))(
  ( (Node!5474 (left!13421 Conc!5474) (right!13751 Conc!5474) (csize!11178 Int) (cheight!5685 Int)) (Leaf!8110 (xs!8274 IArray!10953) (csize!11179 Int)) (Empty!5474) )
))
(declare-datatypes ((BalanceConc!10890 0))(
  ( (BalanceConc!10891 (c!251536 Conc!5474)) )
))
(declare-datatypes ((String!19027 0))(
  ( (String!19028 (value!91202 String)) )
))
(declare-datatypes ((TokenValueInjection!5562 0))(
  ( (TokenValueInjection!5563 (toValue!4222 Int) (toChars!4081 Int)) )
))
(declare-datatypes ((Rule!5522 0))(
  ( (Rule!5523 (regex!2861 Regex!4181) (tag!3125 String!19027) (isSeparator!2861 Bool) (transformation!2861 TokenValueInjection!5562)) )
))
(declare-datatypes ((List!16313 0))(
  ( (Nil!16245) (Cons!16245 (h!21646 Rule!5522) (t!140519 List!16313)) )
))
(declare-fun rulesArg!359 () List!16313)

(declare-fun rulesValidInductive!868 (LexerInterface!2513 List!16313) Bool)

(assert (=> b!1535231 (= res!688544 (rulesValidInductive!868 thiss!15733 rulesArg!359))))

(declare-fun b!1535232 () Bool)

(declare-fun e!981565 () Bool)

(declare-fun e!981560 () Bool)

(assert (=> b!1535232 (= e!981565 e!981560)))

(declare-fun b!1535233 () Bool)

(declare-fun e!981564 () Bool)

(declare-fun e!981574 () Bool)

(assert (=> b!1535233 (= e!981564 e!981574)))

(declare-fun tp!442287 () Bool)

(declare-fun e!981577 () Bool)

(declare-fun tp!442279 () Bool)

(declare-datatypes ((tuple3!1442 0))(
  ( (tuple3!1443 (_1!8700 (InoxSet Context!1398)) (_2!8700 Int) (_3!1085 Int)) )
))
(declare-datatypes ((tuple2!15230 0))(
  ( (tuple2!15231 (_1!8701 tuple3!1442) (_2!8701 Int)) )
))
(declare-datatypes ((List!16314 0))(
  ( (Nil!16246) (Cons!16246 (h!21647 tuple2!15230) (t!140520 List!16314)) )
))
(declare-datatypes ((array!5384 0))(
  ( (array!5385 (arr!2395 (Array (_ BitVec 32) List!16314)) (size!13138 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3076 0))(
  ( (LongMapFixedSize!3077 (defaultEntry!1898 Int) (mask!4717 (_ BitVec 32)) (extraKeys!1785 (_ BitVec 32)) (zeroValue!1795 List!16314) (minValue!1795 List!16314) (_size!3157 (_ BitVec 32)) (_keys!1832 array!5380) (_values!1817 array!5384) (_vacant!1599 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!1482 0))(
  ( (HashableExt!1481 (__x!10251 Int)) )
))
(declare-datatypes ((Cell!6037 0))(
  ( (Cell!6038 (v!23056 LongMapFixedSize!3076)) )
))
(declare-datatypes ((MutLongMap!1538 0))(
  ( (LongMap!1538 (underlying!3285 Cell!6037)) (MutLongMapExt!1537 (__x!10252 Int)) )
))
(declare-datatypes ((Cell!6039 0))(
  ( (Cell!6040 (v!23057 MutLongMap!1538)) )
))
(declare-datatypes ((MutableMap!1482 0))(
  ( (MutableMapExt!1481 (__x!10253 Int)) (HashMap!1482 (underlying!3286 Cell!6039) (hashF!3401 Hashable!1482) (_size!3158 (_ BitVec 32)) (defaultValue!1642 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!312 0))(
  ( (CacheFurthestNullable!313 (cache!1863 MutableMap!1482) (totalInput!2344 BalanceConc!10890)) )
))
(declare-fun cacheFurthestNullable!81 () CacheFurthestNullable!312)

(declare-fun e!981582 () Bool)

(declare-fun array_inv!1724 (array!5380) Bool)

(declare-fun array_inv!1725 (array!5384) Bool)

(assert (=> b!1535234 (= e!981577 (and tp!442283 tp!442279 tp!442287 (array_inv!1724 (_keys!1832 (v!23056 (underlying!3285 (v!23057 (underlying!3286 (cache!1863 cacheFurthestNullable!81))))))) (array_inv!1725 (_values!1817 (v!23056 (underlying!3285 (v!23057 (underlying!3286 (cache!1863 cacheFurthestNullable!81))))))) e!981582))))

(declare-fun b!1535235 () Bool)

(declare-fun e!981586 () Bool)

(declare-fun lt!533161 () MutLongMap!1537)

(get-info :version)

(assert (=> b!1535235 (= e!981586 (and e!981564 ((_ is LongMap!1537) lt!533161)))))

(assert (=> b!1535235 (= lt!533161 (v!23055 (underlying!3284 (cache!1862 cacheDown!708))))))

(declare-fun b!1535236 () Bool)

(declare-fun tp!442270 () Bool)

(declare-fun mapRes!7304 () Bool)

(assert (=> b!1535236 (= e!981582 (and tp!442270 mapRes!7304))))

(declare-fun condMapEmpty!7302 () Bool)

(declare-fun mapDefault!7303 () List!16314)

(assert (=> b!1535236 (= condMapEmpty!7302 (= (arr!2395 (_values!1817 (v!23056 (underlying!3285 (v!23057 (underlying!3286 (cache!1863 cacheFurthestNullable!81))))))) ((as const (Array (_ BitVec 32) List!16314)) mapDefault!7303)))))

(declare-fun b!1535237 () Bool)

(declare-fun res!688545 () Bool)

(assert (=> b!1535237 (=> (not res!688545) (not e!981589))))

(declare-fun isEmpty!9996 (List!16313) Bool)

(assert (=> b!1535237 (= res!688545 (not (isEmpty!9996 rulesArg!359)))))

(declare-fun b!1535239 () Bool)

(declare-fun e!981583 () Bool)

(declare-fun e!981588 () Bool)

(declare-datatypes ((tuple2!15232 0))(
  ( (tuple2!15233 (_1!8702 Context!1398) (_2!8702 C!8540)) )
))
(declare-datatypes ((tuple2!15234 0))(
  ( (tuple2!15235 (_1!8703 tuple2!15232) (_2!8703 (InoxSet Context!1398))) )
))
(declare-datatypes ((List!16315 0))(
  ( (Nil!16247) (Cons!16247 (h!21648 tuple2!15234) (t!140521 List!16315)) )
))
(declare-datatypes ((array!5386 0))(
  ( (array!5387 (arr!2396 (Array (_ BitVec 32) List!16315)) (size!13139 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3078 0))(
  ( (LongMapFixedSize!3079 (defaultEntry!1899 Int) (mask!4718 (_ BitVec 32)) (extraKeys!1786 (_ BitVec 32)) (zeroValue!1796 List!16315) (minValue!1796 List!16315) (_size!3159 (_ BitVec 32)) (_keys!1833 array!5380) (_values!1818 array!5386) (_vacant!1600 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!6041 0))(
  ( (Cell!6042 (v!23058 LongMapFixedSize!3078)) )
))
(declare-datatypes ((MutLongMap!1539 0))(
  ( (LongMap!1539 (underlying!3287 Cell!6041)) (MutLongMapExt!1538 (__x!10254 Int)) )
))
(declare-fun lt!533160 () MutLongMap!1539)

(assert (=> b!1535239 (= e!981583 (and e!981588 ((_ is LongMap!1539) lt!533160)))))

(declare-datatypes ((Cell!6043 0))(
  ( (Cell!6044 (v!23059 MutLongMap!1539)) )
))
(declare-datatypes ((Hashable!1483 0))(
  ( (HashableExt!1482 (__x!10255 Int)) )
))
(declare-datatypes ((MutableMap!1483 0))(
  ( (MutableMapExt!1482 (__x!10256 Int)) (HashMap!1483 (underlying!3288 Cell!6043) (hashF!3402 Hashable!1483) (_size!3160 (_ BitVec 32)) (defaultValue!1643 Int)) )
))
(declare-datatypes ((CacheUp!886 0))(
  ( (CacheUp!887 (cache!1864 MutableMap!1483)) )
))
(declare-fun cacheUp!695 () CacheUp!886)

(assert (=> b!1535239 (= lt!533160 (v!23059 (underlying!3288 (cache!1864 cacheUp!695))))))

(declare-fun b!1535240 () Bool)

(declare-fun res!688546 () Bool)

(declare-fun e!981568 () Bool)

(assert (=> b!1535240 (=> (not res!688546) (not e!981568))))

(declare-fun valid!1257 (CacheUp!886) Bool)

(assert (=> b!1535240 (= res!688546 (valid!1257 cacheUp!695))))

(declare-fun b!1535241 () Bool)

(assert (=> b!1535241 (= e!981588 e!981565)))

(declare-fun e!981562 () Bool)

(assert (=> b!1535242 (= e!981562 (and tp!442267 tp!442269))))

(declare-fun b!1535243 () Bool)

(declare-fun e!981559 () Bool)

(declare-fun tp!442286 () Bool)

(declare-fun mapRes!7303 () Bool)

(assert (=> b!1535243 (= e!981559 (and tp!442286 mapRes!7303))))

(declare-fun condMapEmpty!7304 () Bool)

(declare-fun mapDefault!7302 () List!16315)

(assert (=> b!1535243 (= condMapEmpty!7304 (= (arr!2396 (_values!1818 (v!23058 (underlying!3287 (v!23059 (underlying!3288 (cache!1864 cacheUp!695))))))) ((as const (Array (_ BitVec 32) List!16315)) mapDefault!7302)))))

(declare-fun e!981570 () Bool)

(declare-fun e!981578 () Bool)

(assert (=> b!1535244 (= e!981570 (and e!981578 tp!442275))))

(declare-fun b!1535245 () Bool)

(declare-fun e!981575 () Bool)

(declare-fun lt!533162 () MutLongMap!1538)

(assert (=> b!1535245 (= e!981578 (and e!981575 ((_ is LongMap!1538) lt!533162)))))

(assert (=> b!1535245 (= lt!533162 (v!23057 (underlying!3286 (cache!1863 cacheFurthestNullable!81))))))

(declare-fun tp!442265 () Bool)

(declare-fun e!981579 () Bool)

(declare-fun e!981581 () Bool)

(declare-fun tp!442271 () Bool)

(declare-fun array_inv!1726 (array!5382) Bool)

(assert (=> b!1535246 (= e!981581 (and tp!442288 tp!442271 tp!442265 (array_inv!1724 (_keys!1831 (v!23054 (underlying!3283 (v!23055 (underlying!3284 (cache!1862 cacheDown!708))))))) (array_inv!1726 (_values!1816 (v!23054 (underlying!3283 (v!23055 (underlying!3284 (cache!1862 cacheDown!708))))))) e!981579))))

(declare-fun mapIsEmpty!7302 () Bool)

(assert (=> mapIsEmpty!7302 mapRes!7302))

(declare-fun b!1535247 () Bool)

(declare-fun e!981572 () Bool)

(declare-fun totalInput!496 () BalanceConc!10890)

(declare-fun tp!442281 () Bool)

(declare-fun inv!21506 (Conc!5474) Bool)

(assert (=> b!1535247 (= e!981572 (and (inv!21506 (c!251536 totalInput!496)) tp!442281))))

(declare-fun b!1535248 () Bool)

(declare-fun e!981558 () Bool)

(declare-fun ruleValid!641 (LexerInterface!2513 Rule!5522) Bool)

(assert (=> b!1535248 (= e!981558 (ruleValid!641 thiss!15733 (h!21646 rulesArg!359)))))

(declare-fun b!1535249 () Bool)

(assert (=> b!1535249 (= e!981568 (not e!981558))))

(declare-fun res!688552 () Bool)

(assert (=> b!1535249 (=> res!688552 e!981558)))

(assert (=> b!1535249 (= res!688552 (or (not ((_ is Cons!16245) rulesArg!359)) (not ((_ is Nil!16245) (t!140519 rulesArg!359)))))))

(declare-fun lt!533159 () List!16312)

(declare-fun isPrefix!1228 (List!16312 List!16312) Bool)

(assert (=> b!1535249 (isPrefix!1228 lt!533159 lt!533159)))

(declare-datatypes ((Unit!25818 0))(
  ( (Unit!25819) )
))
(declare-fun lt!533158 () Unit!25818)

(declare-fun lemmaIsPrefixRefl!858 (List!16312 List!16312) Unit!25818)

(assert (=> b!1535249 (= lt!533158 (lemmaIsPrefixRefl!858 lt!533159 lt!533159))))

(declare-fun mapNonEmpty!7303 () Bool)

(declare-fun tp!442272 () Bool)

(declare-fun tp!442277 () Bool)

(assert (=> mapNonEmpty!7303 (= mapRes!7303 (and tp!442272 tp!442277))))

(declare-fun mapValue!7302 () List!16315)

(declare-fun mapKey!7303 () (_ BitVec 32))

(declare-fun mapRest!7304 () (Array (_ BitVec 32) List!16315))

(assert (=> mapNonEmpty!7303 (= (arr!2396 (_values!1818 (v!23058 (underlying!3287 (v!23059 (underlying!3288 (cache!1864 cacheUp!695))))))) (store mapRest!7304 mapKey!7303 mapValue!7302))))

(declare-fun b!1535250 () Bool)

(declare-fun tp!442285 () Bool)

(assert (=> b!1535250 (= e!981579 (and tp!442285 mapRes!7302))))

(declare-fun condMapEmpty!7303 () Bool)

(declare-fun mapDefault!7304 () List!16310)

(assert (=> b!1535250 (= condMapEmpty!7303 (= (arr!2394 (_values!1816 (v!23054 (underlying!3283 (v!23055 (underlying!3284 (cache!1862 cacheDown!708))))))) ((as const (Array (_ BitVec 32) List!16310)) mapDefault!7304)))))

(declare-fun b!1535251 () Bool)

(declare-fun e!981557 () Bool)

(declare-fun e!981569 () Bool)

(declare-fun inv!21507 (BalanceConc!10890) Bool)

(assert (=> b!1535251 (= e!981569 (and e!981570 (inv!21507 (totalInput!2344 cacheFurthestNullable!81)) e!981557))))

(declare-fun b!1535238 () Bool)

(declare-fun tp!442280 () Bool)

(assert (=> b!1535238 (= e!981557 (and (inv!21506 (c!251536 (totalInput!2344 cacheFurthestNullable!81))) tp!442280))))

(declare-fun res!688550 () Bool)

(assert (=> start!142734 (=> (not res!688550) (not e!981589))))

(assert (=> start!142734 (= res!688550 ((_ is Lexer!2511) thiss!15733))))

(assert (=> start!142734 e!981589))

(declare-fun e!981576 () Bool)

(declare-fun inv!21508 (CacheUp!886) Bool)

(assert (=> start!142734 (and (inv!21508 cacheUp!695) e!981576)))

(declare-fun input!1460 () BalanceConc!10890)

(declare-fun e!981563 () Bool)

(assert (=> start!142734 (and (inv!21507 input!1460) e!981563)))

(declare-fun e!981584 () Bool)

(declare-fun inv!21509 (CacheDown!892) Bool)

(assert (=> start!142734 (and (inv!21509 cacheDown!708) e!981584)))

(assert (=> start!142734 true))

(assert (=> start!142734 (and (inv!21507 totalInput!496) e!981572)))

(declare-fun e!981566 () Bool)

(assert (=> start!142734 e!981566))

(declare-fun inv!21510 (CacheFurthestNullable!312) Bool)

(assert (=> start!142734 (and (inv!21510 cacheFurthestNullable!81) e!981569)))

(declare-fun b!1535252 () Bool)

(declare-fun res!688548 () Bool)

(assert (=> b!1535252 (=> (not res!688548) (not e!981568))))

(declare-fun valid!1258 (CacheDown!892) Bool)

(assert (=> b!1535252 (= res!688548 (valid!1258 cacheDown!708))))

(declare-fun mapIsEmpty!7303 () Bool)

(assert (=> mapIsEmpty!7303 mapRes!7303))

(declare-fun mapNonEmpty!7304 () Bool)

(declare-fun tp!442289 () Bool)

(declare-fun tp!442282 () Bool)

(assert (=> mapNonEmpty!7304 (= mapRes!7304 (and tp!442289 tp!442282))))

(declare-fun mapRest!7303 () (Array (_ BitVec 32) List!16314))

(declare-fun mapValue!7304 () List!16314)

(declare-fun mapKey!7302 () (_ BitVec 32))

(assert (=> mapNonEmpty!7304 (= (arr!2395 (_values!1817 (v!23056 (underlying!3285 (v!23057 (underlying!3286 (cache!1863 cacheFurthestNullable!81))))))) (store mapRest!7303 mapKey!7302 mapValue!7304))))

(declare-fun b!1535253 () Bool)

(declare-fun e!981580 () Bool)

(assert (=> b!1535253 (= e!981575 e!981580)))

(declare-fun b!1535254 () Bool)

(declare-fun e!981585 () Bool)

(assert (=> b!1535254 (= e!981584 e!981585)))

(declare-fun b!1535255 () Bool)

(declare-fun e!981556 () Bool)

(assert (=> b!1535255 (= e!981576 e!981556)))

(declare-fun b!1535256 () Bool)

(assert (=> b!1535256 (= e!981580 e!981577)))

(declare-fun tp!442284 () Bool)

(declare-fun tp!442262 () Bool)

(declare-fun array_inv!1727 (array!5386) Bool)

(assert (=> b!1535257 (= e!981560 (and tp!442264 tp!442284 tp!442262 (array_inv!1724 (_keys!1833 (v!23058 (underlying!3287 (v!23059 (underlying!3288 (cache!1864 cacheUp!695))))))) (array_inv!1727 (_values!1818 (v!23058 (underlying!3287 (v!23059 (underlying!3288 (cache!1864 cacheUp!695))))))) e!981559))))

(assert (=> b!1535258 (= e!981556 (and e!981583 tp!442276))))

(declare-fun b!1535259 () Bool)

(declare-fun tp!442274 () Bool)

(assert (=> b!1535259 (= e!981563 (and (inv!21506 (c!251536 input!1460)) tp!442274))))

(declare-fun b!1535260 () Bool)

(assert (=> b!1535260 (= e!981574 e!981581)))

(declare-fun b!1535261 () Bool)

(declare-fun res!688549 () Bool)

(assert (=> b!1535261 (=> (not res!688549) (not e!981568))))

(assert (=> b!1535261 (= res!688549 (= (totalInput!2344 cacheFurthestNullable!81) totalInput!496))))

(assert (=> b!1535262 (= e!981585 (and e!981586 tp!442263))))

(declare-fun mapIsEmpty!7304 () Bool)

(assert (=> mapIsEmpty!7304 mapRes!7304))

(declare-fun tp!442278 () Bool)

(declare-fun b!1535263 () Bool)

(declare-fun e!981587 () Bool)

(declare-fun inv!21505 (String!19027) Bool)

(declare-fun inv!21511 (TokenValueInjection!5562) Bool)

(assert (=> b!1535263 (= e!981587 (and tp!442278 (inv!21505 (tag!3125 (h!21646 rulesArg!359))) (inv!21511 (transformation!2861 (h!21646 rulesArg!359))) e!981562))))

(declare-fun b!1535264 () Bool)

(assert (=> b!1535264 (= e!981589 e!981568)))

(declare-fun res!688551 () Bool)

(assert (=> b!1535264 (=> (not res!688551) (not e!981568))))

(declare-fun isSuffix!315 (List!16312 List!16312) Bool)

(declare-fun list!6405 (BalanceConc!10890) List!16312)

(assert (=> b!1535264 (= res!688551 (isSuffix!315 lt!533159 (list!6405 totalInput!496)))))

(assert (=> b!1535264 (= lt!533159 (list!6405 input!1460))))

(declare-fun b!1535265 () Bool)

(declare-fun res!688547 () Bool)

(assert (=> b!1535265 (=> (not res!688547) (not e!981568))))

(declare-fun valid!1259 (CacheFurthestNullable!312) Bool)

(assert (=> b!1535265 (= res!688547 (valid!1259 cacheFurthestNullable!81))))

(declare-fun b!1535266 () Bool)

(declare-fun tp!442266 () Bool)

(assert (=> b!1535266 (= e!981566 (and e!981587 tp!442266))))

(assert (= (and start!142734 res!688550) b!1535231))

(assert (= (and b!1535231 res!688544) b!1535237))

(assert (= (and b!1535237 res!688545) b!1535264))

(assert (= (and b!1535264 res!688551) b!1535240))

(assert (= (and b!1535240 res!688546) b!1535252))

(assert (= (and b!1535252 res!688548) b!1535265))

(assert (= (and b!1535265 res!688547) b!1535261))

(assert (= (and b!1535261 res!688549) b!1535249))

(assert (= (and b!1535249 (not res!688552)) b!1535248))

(assert (= (and b!1535243 condMapEmpty!7304) mapIsEmpty!7303))

(assert (= (and b!1535243 (not condMapEmpty!7304)) mapNonEmpty!7303))

(assert (= b!1535257 b!1535243))

(assert (= b!1535232 b!1535257))

(assert (= b!1535241 b!1535232))

(assert (= (and b!1535239 ((_ is LongMap!1539) (v!23059 (underlying!3288 (cache!1864 cacheUp!695))))) b!1535241))

(assert (= b!1535258 b!1535239))

(assert (= (and b!1535255 ((_ is HashMap!1483) (cache!1864 cacheUp!695))) b!1535258))

(assert (= start!142734 b!1535255))

(assert (= start!142734 b!1535259))

(assert (= (and b!1535250 condMapEmpty!7303) mapIsEmpty!7302))

(assert (= (and b!1535250 (not condMapEmpty!7303)) mapNonEmpty!7302))

(assert (= b!1535246 b!1535250))

(assert (= b!1535260 b!1535246))

(assert (= b!1535233 b!1535260))

(assert (= (and b!1535235 ((_ is LongMap!1537) (v!23055 (underlying!3284 (cache!1862 cacheDown!708))))) b!1535233))

(assert (= b!1535262 b!1535235))

(assert (= (and b!1535254 ((_ is HashMap!1481) (cache!1862 cacheDown!708))) b!1535262))

(assert (= start!142734 b!1535254))

(assert (= start!142734 b!1535247))

(assert (= b!1535263 b!1535242))

(assert (= b!1535266 b!1535263))

(assert (= (and start!142734 ((_ is Cons!16245) rulesArg!359)) b!1535266))

(assert (= (and b!1535236 condMapEmpty!7302) mapIsEmpty!7304))

(assert (= (and b!1535236 (not condMapEmpty!7302)) mapNonEmpty!7304))

(assert (= b!1535234 b!1535236))

(assert (= b!1535256 b!1535234))

(assert (= b!1535253 b!1535256))

(assert (= (and b!1535245 ((_ is LongMap!1538) (v!23057 (underlying!3286 (cache!1863 cacheFurthestNullable!81))))) b!1535253))

(assert (= b!1535244 b!1535245))

(assert (= (and b!1535251 ((_ is HashMap!1482) (cache!1863 cacheFurthestNullable!81))) b!1535244))

(assert (= b!1535251 b!1535238))

(assert (= start!142734 b!1535251))

(declare-fun m!1810952 () Bool)

(assert (=> b!1535263 m!1810952))

(declare-fun m!1810954 () Bool)

(assert (=> b!1535263 m!1810954))

(declare-fun m!1810956 () Bool)

(assert (=> b!1535237 m!1810956))

(declare-fun m!1810958 () Bool)

(assert (=> mapNonEmpty!7304 m!1810958))

(declare-fun m!1810960 () Bool)

(assert (=> mapNonEmpty!7302 m!1810960))

(declare-fun m!1810962 () Bool)

(assert (=> b!1535247 m!1810962))

(declare-fun m!1810964 () Bool)

(assert (=> b!1535252 m!1810964))

(declare-fun m!1810966 () Bool)

(assert (=> b!1535248 m!1810966))

(declare-fun m!1810968 () Bool)

(assert (=> b!1535238 m!1810968))

(declare-fun m!1810970 () Bool)

(assert (=> b!1535231 m!1810970))

(declare-fun m!1810972 () Bool)

(assert (=> b!1535240 m!1810972))

(declare-fun m!1810974 () Bool)

(assert (=> mapNonEmpty!7303 m!1810974))

(declare-fun m!1810976 () Bool)

(assert (=> b!1535259 m!1810976))

(declare-fun m!1810978 () Bool)

(assert (=> b!1535234 m!1810978))

(declare-fun m!1810980 () Bool)

(assert (=> b!1535234 m!1810980))

(declare-fun m!1810982 () Bool)

(assert (=> start!142734 m!1810982))

(declare-fun m!1810984 () Bool)

(assert (=> start!142734 m!1810984))

(declare-fun m!1810986 () Bool)

(assert (=> start!142734 m!1810986))

(declare-fun m!1810988 () Bool)

(assert (=> start!142734 m!1810988))

(declare-fun m!1810990 () Bool)

(assert (=> start!142734 m!1810990))

(declare-fun m!1810992 () Bool)

(assert (=> b!1535257 m!1810992))

(declare-fun m!1810994 () Bool)

(assert (=> b!1535257 m!1810994))

(declare-fun m!1810996 () Bool)

(assert (=> b!1535249 m!1810996))

(declare-fun m!1810998 () Bool)

(assert (=> b!1535249 m!1810998))

(declare-fun m!1811000 () Bool)

(assert (=> b!1535265 m!1811000))

(declare-fun m!1811002 () Bool)

(assert (=> b!1535246 m!1811002))

(declare-fun m!1811004 () Bool)

(assert (=> b!1535246 m!1811004))

(declare-fun m!1811006 () Bool)

(assert (=> b!1535251 m!1811006))

(declare-fun m!1811008 () Bool)

(assert (=> b!1535264 m!1811008))

(assert (=> b!1535264 m!1811008))

(declare-fun m!1811010 () Bool)

(assert (=> b!1535264 m!1811010))

(declare-fun m!1811012 () Bool)

(assert (=> b!1535264 m!1811012))

(check-sat (not b!1535247) (not b_next!40457) (not b!1535231) (not start!142734) (not b!1535251) b_and!106627 (not b!1535246) (not b!1535265) (not b!1535263) b_and!106631 (not b!1535248) (not b!1535264) b_and!106625 b_and!106623 (not b!1535249) b_and!106633 (not b!1535252) (not b_next!40453) (not b!1535266) (not b!1535234) b_and!106621 (not b!1535237) (not b!1535238) (not mapNonEmpty!7304) (not b_next!40459) (not b_next!40461) b_and!106635 (not b!1535236) (not b!1535243) (not mapNonEmpty!7303) (not b_next!40447) (not b!1535250) (not b!1535259) (not b_next!40451) (not mapNonEmpty!7302) (not b_next!40449) (not b!1535257) b_and!106629 (not b!1535240) (not b_next!40455))
(check-sat (not b_next!40457) b_and!106623 b_and!106627 b_and!106633 b_and!106635 b_and!106631 (not b_next!40455) b_and!106625 (not b_next!40453) b_and!106621 (not b_next!40459) (not b_next!40461) (not b_next!40447) (not b_next!40451) (not b_next!40449) b_and!106629)
(get-model)

(declare-fun d!458114 () Bool)

(assert (=> d!458114 (= (array_inv!1724 (_keys!1832 (v!23056 (underlying!3285 (v!23057 (underlying!3286 (cache!1863 cacheFurthestNullable!81))))))) (bvsge (size!13136 (_keys!1832 (v!23056 (underlying!3285 (v!23057 (underlying!3286 (cache!1863 cacheFurthestNullable!81))))))) #b00000000000000000000000000000000))))

(assert (=> b!1535234 d!458114))

(declare-fun d!458116 () Bool)

(assert (=> d!458116 (= (array_inv!1725 (_values!1817 (v!23056 (underlying!3285 (v!23057 (underlying!3286 (cache!1863 cacheFurthestNullable!81))))))) (bvsge (size!13138 (_values!1817 (v!23056 (underlying!3285 (v!23057 (underlying!3286 (cache!1863 cacheFurthestNullable!81))))))) #b00000000000000000000000000000000))))

(assert (=> b!1535234 d!458116))

(declare-fun d!458118 () Bool)

(declare-fun isBalanced!1625 (Conc!5474) Bool)

(assert (=> d!458118 (= (inv!21507 (totalInput!2344 cacheFurthestNullable!81)) (isBalanced!1625 (c!251536 (totalInput!2344 cacheFurthestNullable!81))))))

(declare-fun bs!382710 () Bool)

(assert (= bs!382710 d!458118))

(declare-fun m!1811014 () Bool)

(assert (=> bs!382710 m!1811014))

(assert (=> b!1535251 d!458118))

(declare-fun d!458120 () Bool)

(declare-fun validCacheMapDown!143 (MutableMap!1481) Bool)

(assert (=> d!458120 (= (valid!1258 cacheDown!708) (validCacheMapDown!143 (cache!1862 cacheDown!708)))))

(declare-fun bs!382711 () Bool)

(assert (= bs!382711 d!458120))

(declare-fun m!1811016 () Bool)

(assert (=> bs!382711 m!1811016))

(assert (=> b!1535252 d!458120))

(declare-fun d!458122 () Bool)

(assert (=> d!458122 true))

(declare-fun lt!533165 () Bool)

(declare-fun lambda!65221 () Int)

(declare-fun forall!3898 (List!16313 Int) Bool)

(assert (=> d!458122 (= lt!533165 (forall!3898 rulesArg!359 lambda!65221))))

(declare-fun e!981594 () Bool)

(assert (=> d!458122 (= lt!533165 e!981594)))

(declare-fun res!688560 () Bool)

(assert (=> d!458122 (=> res!688560 e!981594)))

(assert (=> d!458122 (= res!688560 (not ((_ is Cons!16245) rulesArg!359)))))

(assert (=> d!458122 (= (rulesValidInductive!868 thiss!15733 rulesArg!359) lt!533165)))

(declare-fun b!1535271 () Bool)

(declare-fun e!981595 () Bool)

(assert (=> b!1535271 (= e!981594 e!981595)))

(declare-fun res!688559 () Bool)

(assert (=> b!1535271 (=> (not res!688559) (not e!981595))))

(assert (=> b!1535271 (= res!688559 (ruleValid!641 thiss!15733 (h!21646 rulesArg!359)))))

(declare-fun b!1535272 () Bool)

(assert (=> b!1535272 (= e!981595 (rulesValidInductive!868 thiss!15733 (t!140519 rulesArg!359)))))

(assert (= (and d!458122 (not res!688560)) b!1535271))

(assert (= (and b!1535271 res!688559) b!1535272))

(declare-fun m!1811018 () Bool)

(assert (=> d!458122 m!1811018))

(assert (=> b!1535271 m!1810966))

(declare-fun m!1811020 () Bool)

(assert (=> b!1535272 m!1811020))

(assert (=> b!1535231 d!458122))

(declare-fun d!458124 () Bool)

(declare-fun c!251539 () Bool)

(assert (=> d!458124 (= c!251539 ((_ is Node!5474) (c!251536 input!1460)))))

(declare-fun e!981600 () Bool)

(assert (=> d!458124 (= (inv!21506 (c!251536 input!1460)) e!981600)))

(declare-fun b!1535281 () Bool)

(declare-fun inv!21512 (Conc!5474) Bool)

(assert (=> b!1535281 (= e!981600 (inv!21512 (c!251536 input!1460)))))

(declare-fun b!1535282 () Bool)

(declare-fun e!981601 () Bool)

(assert (=> b!1535282 (= e!981600 e!981601)))

(declare-fun res!688563 () Bool)

(assert (=> b!1535282 (= res!688563 (not ((_ is Leaf!8110) (c!251536 input!1460))))))

(assert (=> b!1535282 (=> res!688563 e!981601)))

(declare-fun b!1535283 () Bool)

(declare-fun inv!21513 (Conc!5474) Bool)

(assert (=> b!1535283 (= e!981601 (inv!21513 (c!251536 input!1460)))))

(assert (= (and d!458124 c!251539) b!1535281))

(assert (= (and d!458124 (not c!251539)) b!1535282))

(assert (= (and b!1535282 (not res!688563)) b!1535283))

(declare-fun m!1811022 () Bool)

(assert (=> b!1535281 m!1811022))

(declare-fun m!1811024 () Bool)

(assert (=> b!1535283 m!1811024))

(assert (=> b!1535259 d!458124))

(declare-fun d!458126 () Bool)

(declare-fun validCacheMapUp!143 (MutableMap!1483) Bool)

(assert (=> d!458126 (= (valid!1257 cacheUp!695) (validCacheMapUp!143 (cache!1864 cacheUp!695)))))

(declare-fun bs!382712 () Bool)

(assert (= bs!382712 d!458126))

(declare-fun m!1811026 () Bool)

(assert (=> bs!382712 m!1811026))

(assert (=> b!1535240 d!458126))

(declare-fun d!458128 () Bool)

(assert (=> d!458128 (= (array_inv!1724 (_keys!1833 (v!23058 (underlying!3287 (v!23059 (underlying!3288 (cache!1864 cacheUp!695))))))) (bvsge (size!13136 (_keys!1833 (v!23058 (underlying!3287 (v!23059 (underlying!3288 (cache!1864 cacheUp!695))))))) #b00000000000000000000000000000000))))

(assert (=> b!1535257 d!458128))

(declare-fun d!458130 () Bool)

(assert (=> d!458130 (= (array_inv!1727 (_values!1818 (v!23058 (underlying!3287 (v!23059 (underlying!3288 (cache!1864 cacheUp!695))))))) (bvsge (size!13139 (_values!1818 (v!23058 (underlying!3287 (v!23059 (underlying!3288 (cache!1864 cacheUp!695))))))) #b00000000000000000000000000000000))))

(assert (=> b!1535257 d!458130))

(declare-fun d!458132 () Bool)

(declare-fun res!688568 () Bool)

(declare-fun e!981604 () Bool)

(assert (=> d!458132 (=> (not res!688568) (not e!981604))))

(declare-fun validRegex!1701 (Regex!4181) Bool)

(assert (=> d!458132 (= res!688568 (validRegex!1701 (regex!2861 (h!21646 rulesArg!359))))))

(assert (=> d!458132 (= (ruleValid!641 thiss!15733 (h!21646 rulesArg!359)) e!981604)))

(declare-fun b!1535288 () Bool)

(declare-fun res!688569 () Bool)

(assert (=> b!1535288 (=> (not res!688569) (not e!981604))))

(declare-fun nullable!1261 (Regex!4181) Bool)

(assert (=> b!1535288 (= res!688569 (not (nullable!1261 (regex!2861 (h!21646 rulesArg!359)))))))

(declare-fun b!1535289 () Bool)

(assert (=> b!1535289 (= e!981604 (not (= (tag!3125 (h!21646 rulesArg!359)) (String!19028 ""))))))

(assert (= (and d!458132 res!688568) b!1535288))

(assert (= (and b!1535288 res!688569) b!1535289))

(declare-fun m!1811028 () Bool)

(assert (=> d!458132 m!1811028))

(declare-fun m!1811030 () Bool)

(assert (=> b!1535288 m!1811030))

(assert (=> b!1535248 d!458132))

(declare-fun b!1535301 () Bool)

(declare-fun e!981611 () Bool)

(declare-fun size!13140 (List!16312) Int)

(assert (=> b!1535301 (= e!981611 (>= (size!13140 lt!533159) (size!13140 lt!533159)))))

(declare-fun d!458134 () Bool)

(assert (=> d!458134 e!981611))

(declare-fun res!688578 () Bool)

(assert (=> d!458134 (=> res!688578 e!981611)))

(declare-fun lt!533168 () Bool)

(assert (=> d!458134 (= res!688578 (not lt!533168))))

(declare-fun e!981612 () Bool)

(assert (=> d!458134 (= lt!533168 e!981612)))

(declare-fun res!688580 () Bool)

(assert (=> d!458134 (=> res!688580 e!981612)))

(assert (=> d!458134 (= res!688580 ((_ is Nil!16244) lt!533159))))

(assert (=> d!458134 (= (isPrefix!1228 lt!533159 lt!533159) lt!533168)))

(declare-fun b!1535300 () Bool)

(declare-fun e!981613 () Bool)

(declare-fun tail!2192 (List!16312) List!16312)

(assert (=> b!1535300 (= e!981613 (isPrefix!1228 (tail!2192 lt!533159) (tail!2192 lt!533159)))))

(declare-fun b!1535299 () Bool)

(declare-fun res!688581 () Bool)

(assert (=> b!1535299 (=> (not res!688581) (not e!981613))))

(declare-fun head!3097 (List!16312) C!8540)

(assert (=> b!1535299 (= res!688581 (= (head!3097 lt!533159) (head!3097 lt!533159)))))

(declare-fun b!1535298 () Bool)

(assert (=> b!1535298 (= e!981612 e!981613)))

(declare-fun res!688579 () Bool)

(assert (=> b!1535298 (=> (not res!688579) (not e!981613))))

(assert (=> b!1535298 (= res!688579 (not ((_ is Nil!16244) lt!533159)))))

(assert (= (and d!458134 (not res!688580)) b!1535298))

(assert (= (and b!1535298 res!688579) b!1535299))

(assert (= (and b!1535299 res!688581) b!1535300))

(assert (= (and d!458134 (not res!688578)) b!1535301))

(declare-fun m!1811032 () Bool)

(assert (=> b!1535301 m!1811032))

(assert (=> b!1535301 m!1811032))

(declare-fun m!1811034 () Bool)

(assert (=> b!1535300 m!1811034))

(assert (=> b!1535300 m!1811034))

(assert (=> b!1535300 m!1811034))

(assert (=> b!1535300 m!1811034))

(declare-fun m!1811036 () Bool)

(assert (=> b!1535300 m!1811036))

(declare-fun m!1811038 () Bool)

(assert (=> b!1535299 m!1811038))

(assert (=> b!1535299 m!1811038))

(assert (=> b!1535249 d!458134))

(declare-fun d!458136 () Bool)

(assert (=> d!458136 (isPrefix!1228 lt!533159 lt!533159)))

(declare-fun lt!533171 () Unit!25818)

(declare-fun choose!9220 (List!16312 List!16312) Unit!25818)

(assert (=> d!458136 (= lt!533171 (choose!9220 lt!533159 lt!533159))))

(assert (=> d!458136 (= (lemmaIsPrefixRefl!858 lt!533159 lt!533159) lt!533171)))

(declare-fun bs!382713 () Bool)

(assert (= bs!382713 d!458136))

(assert (=> bs!382713 m!1810996))

(declare-fun m!1811040 () Bool)

(assert (=> bs!382713 m!1811040))

(assert (=> b!1535249 d!458136))

(declare-fun d!458138 () Bool)

(declare-fun c!251540 () Bool)

(assert (=> d!458138 (= c!251540 ((_ is Node!5474) (c!251536 totalInput!496)))))

(declare-fun e!981614 () Bool)

(assert (=> d!458138 (= (inv!21506 (c!251536 totalInput!496)) e!981614)))

(declare-fun b!1535302 () Bool)

(assert (=> b!1535302 (= e!981614 (inv!21512 (c!251536 totalInput!496)))))

(declare-fun b!1535303 () Bool)

(declare-fun e!981615 () Bool)

(assert (=> b!1535303 (= e!981614 e!981615)))

(declare-fun res!688582 () Bool)

(assert (=> b!1535303 (= res!688582 (not ((_ is Leaf!8110) (c!251536 totalInput!496))))))

(assert (=> b!1535303 (=> res!688582 e!981615)))

(declare-fun b!1535304 () Bool)

(assert (=> b!1535304 (= e!981615 (inv!21513 (c!251536 totalInput!496)))))

(assert (= (and d!458138 c!251540) b!1535302))

(assert (= (and d!458138 (not c!251540)) b!1535303))

(assert (= (and b!1535303 (not res!688582)) b!1535304))

(declare-fun m!1811042 () Bool)

(assert (=> b!1535302 m!1811042))

(declare-fun m!1811044 () Bool)

(assert (=> b!1535304 m!1811044))

(assert (=> b!1535247 d!458138))

(declare-fun d!458140 () Bool)

(assert (=> d!458140 (= (isEmpty!9996 rulesArg!359) ((_ is Nil!16245) rulesArg!359))))

(assert (=> b!1535237 d!458140))

(declare-fun d!458142 () Bool)

(declare-fun e!981618 () Bool)

(assert (=> d!458142 e!981618))

(declare-fun res!688585 () Bool)

(assert (=> d!458142 (=> res!688585 e!981618)))

(declare-fun lt!533174 () Bool)

(assert (=> d!458142 (= res!688585 (not lt!533174))))

(declare-fun drop!767 (List!16312 Int) List!16312)

(assert (=> d!458142 (= lt!533174 (= lt!533159 (drop!767 (list!6405 totalInput!496) (- (size!13140 (list!6405 totalInput!496)) (size!13140 lt!533159)))))))

(assert (=> d!458142 (= (isSuffix!315 lt!533159 (list!6405 totalInput!496)) lt!533174)))

(declare-fun b!1535307 () Bool)

(assert (=> b!1535307 (= e!981618 (>= (size!13140 (list!6405 totalInput!496)) (size!13140 lt!533159)))))

(assert (= (and d!458142 (not res!688585)) b!1535307))

(assert (=> d!458142 m!1811008))

(declare-fun m!1811046 () Bool)

(assert (=> d!458142 m!1811046))

(assert (=> d!458142 m!1811032))

(assert (=> d!458142 m!1811008))

(declare-fun m!1811048 () Bool)

(assert (=> d!458142 m!1811048))

(assert (=> b!1535307 m!1811008))

(assert (=> b!1535307 m!1811046))

(assert (=> b!1535307 m!1811032))

(assert (=> b!1535264 d!458142))

(declare-fun d!458144 () Bool)

(declare-fun list!6406 (Conc!5474) List!16312)

(assert (=> d!458144 (= (list!6405 totalInput!496) (list!6406 (c!251536 totalInput!496)))))

(declare-fun bs!382714 () Bool)

(assert (= bs!382714 d!458144))

(declare-fun m!1811050 () Bool)

(assert (=> bs!382714 m!1811050))

(assert (=> b!1535264 d!458144))

(declare-fun d!458146 () Bool)

(assert (=> d!458146 (= (list!6405 input!1460) (list!6406 (c!251536 input!1460)))))

(declare-fun bs!382715 () Bool)

(assert (= bs!382715 d!458146))

(declare-fun m!1811052 () Bool)

(assert (=> bs!382715 m!1811052))

(assert (=> b!1535264 d!458146))

(declare-fun d!458148 () Bool)

(declare-fun c!251541 () Bool)

(assert (=> d!458148 (= c!251541 ((_ is Node!5474) (c!251536 (totalInput!2344 cacheFurthestNullable!81))))))

(declare-fun e!981619 () Bool)

(assert (=> d!458148 (= (inv!21506 (c!251536 (totalInput!2344 cacheFurthestNullable!81))) e!981619)))

(declare-fun b!1535308 () Bool)

(assert (=> b!1535308 (= e!981619 (inv!21512 (c!251536 (totalInput!2344 cacheFurthestNullable!81))))))

(declare-fun b!1535309 () Bool)

(declare-fun e!981620 () Bool)

(assert (=> b!1535309 (= e!981619 e!981620)))

(declare-fun res!688586 () Bool)

(assert (=> b!1535309 (= res!688586 (not ((_ is Leaf!8110) (c!251536 (totalInput!2344 cacheFurthestNullable!81)))))))

(assert (=> b!1535309 (=> res!688586 e!981620)))

(declare-fun b!1535310 () Bool)

(assert (=> b!1535310 (= e!981620 (inv!21513 (c!251536 (totalInput!2344 cacheFurthestNullable!81))))))

(assert (= (and d!458148 c!251541) b!1535308))

(assert (= (and d!458148 (not c!251541)) b!1535309))

(assert (= (and b!1535309 (not res!688586)) b!1535310))

(declare-fun m!1811054 () Bool)

(assert (=> b!1535308 m!1811054))

(declare-fun m!1811056 () Bool)

(assert (=> b!1535310 m!1811056))

(assert (=> b!1535238 d!458148))

(declare-fun d!458150 () Bool)

(declare-fun validCacheMapFurthestNullable!56 (MutableMap!1482 BalanceConc!10890) Bool)

(assert (=> d!458150 (= (valid!1259 cacheFurthestNullable!81) (validCacheMapFurthestNullable!56 (cache!1863 cacheFurthestNullable!81) (totalInput!2344 cacheFurthestNullable!81)))))

(declare-fun bs!382716 () Bool)

(assert (= bs!382716 d!458150))

(declare-fun m!1811058 () Bool)

(assert (=> bs!382716 m!1811058))

(assert (=> b!1535265 d!458150))

(declare-fun d!458152 () Bool)

(assert (=> d!458152 (= (inv!21505 (tag!3125 (h!21646 rulesArg!359))) (= (mod (str.len (value!91202 (tag!3125 (h!21646 rulesArg!359)))) 2) 0))))

(assert (=> b!1535263 d!458152))

(declare-fun d!458154 () Bool)

(declare-fun res!688589 () Bool)

(declare-fun e!981623 () Bool)

(assert (=> d!458154 (=> (not res!688589) (not e!981623))))

(declare-fun semiInverseModEq!1079 (Int Int) Bool)

(assert (=> d!458154 (= res!688589 (semiInverseModEq!1079 (toChars!4081 (transformation!2861 (h!21646 rulesArg!359))) (toValue!4222 (transformation!2861 (h!21646 rulesArg!359)))))))

(assert (=> d!458154 (= (inv!21511 (transformation!2861 (h!21646 rulesArg!359))) e!981623)))

(declare-fun b!1535313 () Bool)

(declare-fun equivClasses!1038 (Int Int) Bool)

(assert (=> b!1535313 (= e!981623 (equivClasses!1038 (toChars!4081 (transformation!2861 (h!21646 rulesArg!359))) (toValue!4222 (transformation!2861 (h!21646 rulesArg!359)))))))

(assert (= (and d!458154 res!688589) b!1535313))

(declare-fun m!1811060 () Bool)

(assert (=> d!458154 m!1811060))

(declare-fun m!1811062 () Bool)

(assert (=> b!1535313 m!1811062))

(assert (=> b!1535263 d!458154))

(declare-fun d!458156 () Bool)

(declare-fun res!688592 () Bool)

(declare-fun e!981626 () Bool)

(assert (=> d!458156 (=> (not res!688592) (not e!981626))))

(assert (=> d!458156 (= res!688592 ((_ is HashMap!1481) (cache!1862 cacheDown!708)))))

(assert (=> d!458156 (= (inv!21509 cacheDown!708) e!981626)))

(declare-fun b!1535316 () Bool)

(assert (=> b!1535316 (= e!981626 (validCacheMapDown!143 (cache!1862 cacheDown!708)))))

(assert (= (and d!458156 res!688592) b!1535316))

(assert (=> b!1535316 m!1811016))

(assert (=> start!142734 d!458156))

(declare-fun d!458158 () Bool)

(assert (=> d!458158 (= (inv!21507 input!1460) (isBalanced!1625 (c!251536 input!1460)))))

(declare-fun bs!382717 () Bool)

(assert (= bs!382717 d!458158))

(declare-fun m!1811064 () Bool)

(assert (=> bs!382717 m!1811064))

(assert (=> start!142734 d!458158))

(declare-fun d!458160 () Bool)

(declare-fun res!688595 () Bool)

(declare-fun e!981629 () Bool)

(assert (=> d!458160 (=> (not res!688595) (not e!981629))))

(assert (=> d!458160 (= res!688595 ((_ is HashMap!1483) (cache!1864 cacheUp!695)))))

(assert (=> d!458160 (= (inv!21508 cacheUp!695) e!981629)))

(declare-fun b!1535319 () Bool)

(assert (=> b!1535319 (= e!981629 (validCacheMapUp!143 (cache!1864 cacheUp!695)))))

(assert (= (and d!458160 res!688595) b!1535319))

(assert (=> b!1535319 m!1811026))

(assert (=> start!142734 d!458160))

(declare-fun d!458162 () Bool)

(assert (=> d!458162 (= (inv!21507 totalInput!496) (isBalanced!1625 (c!251536 totalInput!496)))))

(declare-fun bs!382718 () Bool)

(assert (= bs!382718 d!458162))

(declare-fun m!1811066 () Bool)

(assert (=> bs!382718 m!1811066))

(assert (=> start!142734 d!458162))

(declare-fun d!458164 () Bool)

(declare-fun res!688598 () Bool)

(declare-fun e!981632 () Bool)

(assert (=> d!458164 (=> (not res!688598) (not e!981632))))

(assert (=> d!458164 (= res!688598 ((_ is HashMap!1482) (cache!1863 cacheFurthestNullable!81)))))

(assert (=> d!458164 (= (inv!21510 cacheFurthestNullable!81) e!981632)))

(declare-fun b!1535322 () Bool)

(assert (=> b!1535322 (= e!981632 (validCacheMapFurthestNullable!56 (cache!1863 cacheFurthestNullable!81) (totalInput!2344 cacheFurthestNullable!81)))))

(assert (= (and d!458164 res!688598) b!1535322))

(assert (=> b!1535322 m!1811058))

(assert (=> start!142734 d!458164))

(declare-fun d!458166 () Bool)

(assert (=> d!458166 (= (array_inv!1724 (_keys!1831 (v!23054 (underlying!3283 (v!23055 (underlying!3284 (cache!1862 cacheDown!708))))))) (bvsge (size!13136 (_keys!1831 (v!23054 (underlying!3283 (v!23055 (underlying!3284 (cache!1862 cacheDown!708))))))) #b00000000000000000000000000000000))))

(assert (=> b!1535246 d!458166))

(declare-fun d!458168 () Bool)

(assert (=> d!458168 (= (array_inv!1726 (_values!1816 (v!23054 (underlying!3283 (v!23055 (underlying!3284 (cache!1862 cacheDown!708))))))) (bvsge (size!13137 (_values!1816 (v!23054 (underlying!3283 (v!23055 (underlying!3284 (cache!1862 cacheDown!708))))))) #b00000000000000000000000000000000))))

(assert (=> b!1535246 d!458168))

(declare-fun setIsEmpty!9948 () Bool)

(declare-fun setRes!9948 () Bool)

(assert (=> setIsEmpty!9948 setRes!9948))

(declare-fun e!981638 () Bool)

(assert (=> b!1535234 (= tp!442279 e!981638)))

(declare-fun b!1535329 () Bool)

(declare-fun tp!442296 () Bool)

(assert (=> b!1535329 (= e!981638 (and setRes!9948 tp!442296))))

(declare-fun condSetEmpty!9948 () Bool)

(assert (=> b!1535329 (= condSetEmpty!9948 (= (_1!8700 (_1!8701 (h!21647 (zeroValue!1795 (v!23056 (underlying!3285 (v!23057 (underlying!3286 (cache!1863 cacheFurthestNullable!81))))))))) ((as const (Array Context!1398 Bool)) false)))))

(declare-fun setNonEmpty!9948 () Bool)

(declare-fun tp!442297 () Bool)

(declare-fun e!981637 () Bool)

(declare-fun setElem!9948 () Context!1398)

(declare-fun inv!21514 (Context!1398) Bool)

(assert (=> setNonEmpty!9948 (= setRes!9948 (and tp!442297 (inv!21514 setElem!9948) e!981637))))

(declare-fun setRest!9948 () (InoxSet Context!1398))

(assert (=> setNonEmpty!9948 (= (_1!8700 (_1!8701 (h!21647 (zeroValue!1795 (v!23056 (underlying!3285 (v!23057 (underlying!3286 (cache!1863 cacheFurthestNullable!81))))))))) ((_ map or) (store ((as const (Array Context!1398 Bool)) false) setElem!9948 true) setRest!9948))))

(declare-fun b!1535330 () Bool)

(declare-fun tp!442298 () Bool)

(assert (=> b!1535330 (= e!981637 tp!442298)))

(assert (= (and b!1535329 condSetEmpty!9948) setIsEmpty!9948))

(assert (= (and b!1535329 (not condSetEmpty!9948)) setNonEmpty!9948))

(assert (= setNonEmpty!9948 b!1535330))

(assert (= (and b!1535234 ((_ is Cons!16246) (zeroValue!1795 (v!23056 (underlying!3285 (v!23057 (underlying!3286 (cache!1863 cacheFurthestNullable!81)))))))) b!1535329))

(declare-fun m!1811068 () Bool)

(assert (=> setNonEmpty!9948 m!1811068))

(declare-fun setIsEmpty!9949 () Bool)

(declare-fun setRes!9949 () Bool)

(assert (=> setIsEmpty!9949 setRes!9949))

(declare-fun e!981640 () Bool)

(assert (=> b!1535234 (= tp!442287 e!981640)))

(declare-fun b!1535331 () Bool)

(declare-fun tp!442299 () Bool)

(assert (=> b!1535331 (= e!981640 (and setRes!9949 tp!442299))))

(declare-fun condSetEmpty!9949 () Bool)

(assert (=> b!1535331 (= condSetEmpty!9949 (= (_1!8700 (_1!8701 (h!21647 (minValue!1795 (v!23056 (underlying!3285 (v!23057 (underlying!3286 (cache!1863 cacheFurthestNullable!81))))))))) ((as const (Array Context!1398 Bool)) false)))))

(declare-fun tp!442300 () Bool)

(declare-fun e!981639 () Bool)

(declare-fun setElem!9949 () Context!1398)

(declare-fun setNonEmpty!9949 () Bool)

(assert (=> setNonEmpty!9949 (= setRes!9949 (and tp!442300 (inv!21514 setElem!9949) e!981639))))

(declare-fun setRest!9949 () (InoxSet Context!1398))

(assert (=> setNonEmpty!9949 (= (_1!8700 (_1!8701 (h!21647 (minValue!1795 (v!23056 (underlying!3285 (v!23057 (underlying!3286 (cache!1863 cacheFurthestNullable!81))))))))) ((_ map or) (store ((as const (Array Context!1398 Bool)) false) setElem!9949 true) setRest!9949))))

(declare-fun b!1535332 () Bool)

(declare-fun tp!442301 () Bool)

(assert (=> b!1535332 (= e!981639 tp!442301)))

(assert (= (and b!1535331 condSetEmpty!9949) setIsEmpty!9949))

(assert (= (and b!1535331 (not condSetEmpty!9949)) setNonEmpty!9949))

(assert (= setNonEmpty!9949 b!1535332))

(assert (= (and b!1535234 ((_ is Cons!16246) (minValue!1795 (v!23056 (underlying!3285 (v!23057 (underlying!3286 (cache!1863 cacheFurthestNullable!81)))))))) b!1535331))

(declare-fun m!1811070 () Bool)

(assert (=> setNonEmpty!9949 m!1811070))

(declare-fun setIsEmpty!9952 () Bool)

(declare-fun setRes!9952 () Bool)

(assert (=> setIsEmpty!9952 setRes!9952))

(declare-fun b!1535341 () Bool)

(declare-fun e!981647 () Bool)

(declare-fun tp!442313 () Bool)

(assert (=> b!1535341 (= e!981647 tp!442313)))

(declare-fun tp!442311 () Bool)

(declare-fun setElem!9952 () Context!1398)

(declare-fun setNonEmpty!9952 () Bool)

(declare-fun e!981648 () Bool)

(assert (=> setNonEmpty!9952 (= setRes!9952 (and tp!442311 (inv!21514 setElem!9952) e!981648))))

(declare-fun setRest!9952 () (InoxSet Context!1398))

(assert (=> setNonEmpty!9952 (= (_2!8703 (h!21648 mapDefault!7302)) ((_ map or) (store ((as const (Array Context!1398 Bool)) false) setElem!9952 true) setRest!9952))))

(declare-fun b!1535342 () Bool)

(declare-fun tp!442310 () Bool)

(assert (=> b!1535342 (= e!981648 tp!442310)))

(declare-fun tp_is_empty!7031 () Bool)

(declare-fun e!981649 () Bool)

(declare-fun b!1535343 () Bool)

(declare-fun tp!442312 () Bool)

(assert (=> b!1535343 (= e!981649 (and (inv!21514 (_1!8702 (_1!8703 (h!21648 mapDefault!7302)))) e!981647 tp_is_empty!7031 setRes!9952 tp!442312))))

(declare-fun condSetEmpty!9952 () Bool)

(assert (=> b!1535343 (= condSetEmpty!9952 (= (_2!8703 (h!21648 mapDefault!7302)) ((as const (Array Context!1398 Bool)) false)))))

(assert (=> b!1535243 (= tp!442286 e!981649)))

(assert (= b!1535343 b!1535341))

(assert (= (and b!1535343 condSetEmpty!9952) setIsEmpty!9952))

(assert (= (and b!1535343 (not condSetEmpty!9952)) setNonEmpty!9952))

(assert (= setNonEmpty!9952 b!1535342))

(assert (= (and b!1535243 ((_ is Cons!16247) mapDefault!7302)) b!1535343))

(declare-fun m!1811072 () Bool)

(assert (=> setNonEmpty!9952 m!1811072))

(declare-fun m!1811074 () Bool)

(assert (=> b!1535343 m!1811074))

(declare-fun b!1535352 () Bool)

(declare-fun e!981656 () Bool)

(declare-fun tp!442324 () Bool)

(assert (=> b!1535352 (= e!981656 tp!442324)))

(declare-fun b!1535353 () Bool)

(declare-fun e!981657 () Bool)

(declare-fun tp!442325 () Bool)

(assert (=> b!1535353 (= e!981657 tp!442325)))

(declare-fun tp!442327 () Bool)

(declare-fun e!981658 () Bool)

(declare-fun tp!442328 () Bool)

(declare-fun b!1535354 () Bool)

(declare-fun setRes!9955 () Bool)

(assert (=> b!1535354 (= e!981658 (and tp!442328 (inv!21514 (_2!8698 (_1!8699 (h!21643 mapDefault!7304)))) e!981657 tp_is_empty!7031 setRes!9955 tp!442327))))

(declare-fun condSetEmpty!9955 () Bool)

(assert (=> b!1535354 (= condSetEmpty!9955 (= (_2!8699 (h!21643 mapDefault!7304)) ((as const (Array Context!1398 Bool)) false)))))

(declare-fun setIsEmpty!9955 () Bool)

(assert (=> setIsEmpty!9955 setRes!9955))

(assert (=> b!1535250 (= tp!442285 e!981658)))

(declare-fun setElem!9955 () Context!1398)

(declare-fun tp!442326 () Bool)

(declare-fun setNonEmpty!9955 () Bool)

(assert (=> setNonEmpty!9955 (= setRes!9955 (and tp!442326 (inv!21514 setElem!9955) e!981656))))

(declare-fun setRest!9955 () (InoxSet Context!1398))

(assert (=> setNonEmpty!9955 (= (_2!8699 (h!21643 mapDefault!7304)) ((_ map or) (store ((as const (Array Context!1398 Bool)) false) setElem!9955 true) setRest!9955))))

(assert (= b!1535354 b!1535353))

(assert (= (and b!1535354 condSetEmpty!9955) setIsEmpty!9955))

(assert (= (and b!1535354 (not condSetEmpty!9955)) setNonEmpty!9955))

(assert (= setNonEmpty!9955 b!1535352))

(assert (= (and b!1535250 ((_ is Cons!16242) mapDefault!7304)) b!1535354))

(declare-fun m!1811076 () Bool)

(assert (=> b!1535354 m!1811076))

(declare-fun m!1811078 () Bool)

(assert (=> setNonEmpty!9955 m!1811078))

(declare-fun e!981663 () Bool)

(declare-fun tp!442336 () Bool)

(declare-fun tp!442335 () Bool)

(declare-fun b!1535363 () Bool)

(assert (=> b!1535363 (= e!981663 (and (inv!21506 (left!13421 (c!251536 input!1460))) tp!442335 (inv!21506 (right!13751 (c!251536 input!1460))) tp!442336))))

(declare-fun b!1535365 () Bool)

(declare-fun e!981664 () Bool)

(declare-fun tp!442337 () Bool)

(assert (=> b!1535365 (= e!981664 tp!442337)))

(declare-fun b!1535364 () Bool)

(declare-fun inv!21515 (IArray!10953) Bool)

(assert (=> b!1535364 (= e!981663 (and (inv!21515 (xs!8274 (c!251536 input!1460))) e!981664))))

(assert (=> b!1535259 (= tp!442274 (and (inv!21506 (c!251536 input!1460)) e!981663))))

(assert (= (and b!1535259 ((_ is Node!5474) (c!251536 input!1460))) b!1535363))

(assert (= b!1535364 b!1535365))

(assert (= (and b!1535259 ((_ is Leaf!8110) (c!251536 input!1460))) b!1535364))

(declare-fun m!1811080 () Bool)

(assert (=> b!1535363 m!1811080))

(declare-fun m!1811082 () Bool)

(assert (=> b!1535363 m!1811082))

(declare-fun m!1811084 () Bool)

(assert (=> b!1535364 m!1811084))

(assert (=> b!1535259 m!1810976))

(declare-fun setIsEmpty!9956 () Bool)

(declare-fun setRes!9956 () Bool)

(assert (=> setIsEmpty!9956 setRes!9956))

(declare-fun b!1535366 () Bool)

(declare-fun e!981665 () Bool)

(declare-fun tp!442341 () Bool)

(assert (=> b!1535366 (= e!981665 tp!442341)))

(declare-fun e!981666 () Bool)

(declare-fun setElem!9956 () Context!1398)

(declare-fun tp!442339 () Bool)

(declare-fun setNonEmpty!9956 () Bool)

(assert (=> setNonEmpty!9956 (= setRes!9956 (and tp!442339 (inv!21514 setElem!9956) e!981666))))

(declare-fun setRest!9956 () (InoxSet Context!1398))

(assert (=> setNonEmpty!9956 (= (_2!8703 (h!21648 (zeroValue!1796 (v!23058 (underlying!3287 (v!23059 (underlying!3288 (cache!1864 cacheUp!695)))))))) ((_ map or) (store ((as const (Array Context!1398 Bool)) false) setElem!9956 true) setRest!9956))))

(declare-fun b!1535367 () Bool)

(declare-fun tp!442338 () Bool)

(assert (=> b!1535367 (= e!981666 tp!442338)))

(declare-fun tp!442340 () Bool)

(declare-fun b!1535368 () Bool)

(declare-fun e!981667 () Bool)

(assert (=> b!1535368 (= e!981667 (and (inv!21514 (_1!8702 (_1!8703 (h!21648 (zeroValue!1796 (v!23058 (underlying!3287 (v!23059 (underlying!3288 (cache!1864 cacheUp!695)))))))))) e!981665 tp_is_empty!7031 setRes!9956 tp!442340))))

(declare-fun condSetEmpty!9956 () Bool)

(assert (=> b!1535368 (= condSetEmpty!9956 (= (_2!8703 (h!21648 (zeroValue!1796 (v!23058 (underlying!3287 (v!23059 (underlying!3288 (cache!1864 cacheUp!695)))))))) ((as const (Array Context!1398 Bool)) false)))))

(assert (=> b!1535257 (= tp!442284 e!981667)))

(assert (= b!1535368 b!1535366))

(assert (= (and b!1535368 condSetEmpty!9956) setIsEmpty!9956))

(assert (= (and b!1535368 (not condSetEmpty!9956)) setNonEmpty!9956))

(assert (= setNonEmpty!9956 b!1535367))

(assert (= (and b!1535257 ((_ is Cons!16247) (zeroValue!1796 (v!23058 (underlying!3287 (v!23059 (underlying!3288 (cache!1864 cacheUp!695)))))))) b!1535368))

(declare-fun m!1811086 () Bool)

(assert (=> setNonEmpty!9956 m!1811086))

(declare-fun m!1811088 () Bool)

(assert (=> b!1535368 m!1811088))

(declare-fun setIsEmpty!9957 () Bool)

(declare-fun setRes!9957 () Bool)

(assert (=> setIsEmpty!9957 setRes!9957))

(declare-fun b!1535369 () Bool)

(declare-fun e!981668 () Bool)

(declare-fun tp!442345 () Bool)

(assert (=> b!1535369 (= e!981668 tp!442345)))

(declare-fun e!981669 () Bool)

(declare-fun setElem!9957 () Context!1398)

(declare-fun setNonEmpty!9957 () Bool)

(declare-fun tp!442343 () Bool)

(assert (=> setNonEmpty!9957 (= setRes!9957 (and tp!442343 (inv!21514 setElem!9957) e!981669))))

(declare-fun setRest!9957 () (InoxSet Context!1398))

(assert (=> setNonEmpty!9957 (= (_2!8703 (h!21648 (minValue!1796 (v!23058 (underlying!3287 (v!23059 (underlying!3288 (cache!1864 cacheUp!695)))))))) ((_ map or) (store ((as const (Array Context!1398 Bool)) false) setElem!9957 true) setRest!9957))))

(declare-fun b!1535370 () Bool)

(declare-fun tp!442342 () Bool)

(assert (=> b!1535370 (= e!981669 tp!442342)))

(declare-fun b!1535371 () Bool)

(declare-fun e!981670 () Bool)

(declare-fun tp!442344 () Bool)

(assert (=> b!1535371 (= e!981670 (and (inv!21514 (_1!8702 (_1!8703 (h!21648 (minValue!1796 (v!23058 (underlying!3287 (v!23059 (underlying!3288 (cache!1864 cacheUp!695)))))))))) e!981668 tp_is_empty!7031 setRes!9957 tp!442344))))

(declare-fun condSetEmpty!9957 () Bool)

(assert (=> b!1535371 (= condSetEmpty!9957 (= (_2!8703 (h!21648 (minValue!1796 (v!23058 (underlying!3287 (v!23059 (underlying!3288 (cache!1864 cacheUp!695)))))))) ((as const (Array Context!1398 Bool)) false)))))

(assert (=> b!1535257 (= tp!442262 e!981670)))

(assert (= b!1535371 b!1535369))

(assert (= (and b!1535371 condSetEmpty!9957) setIsEmpty!9957))

(assert (= (and b!1535371 (not condSetEmpty!9957)) setNonEmpty!9957))

(assert (= setNonEmpty!9957 b!1535370))

(assert (= (and b!1535257 ((_ is Cons!16247) (minValue!1796 (v!23058 (underlying!3287 (v!23059 (underlying!3288 (cache!1864 cacheUp!695)))))))) b!1535371))

(declare-fun m!1811090 () Bool)

(assert (=> setNonEmpty!9957 m!1811090))

(declare-fun m!1811092 () Bool)

(assert (=> b!1535371 m!1811092))

(declare-fun b!1535386 () Bool)

(declare-fun e!981685 () Bool)

(declare-fun tp!442373 () Bool)

(assert (=> b!1535386 (= e!981685 tp!442373)))

(declare-fun setIsEmpty!9962 () Bool)

(declare-fun setRes!9962 () Bool)

(assert (=> setIsEmpty!9962 setRes!9962))

(declare-fun b!1535387 () Bool)

(declare-fun e!981683 () Bool)

(declare-fun tp!442371 () Bool)

(assert (=> b!1535387 (= e!981683 tp!442371)))

(declare-fun tp!442375 () Bool)

(declare-fun setElem!9963 () Context!1398)

(declare-fun setNonEmpty!9962 () Bool)

(declare-fun setRes!9963 () Bool)

(declare-fun e!981684 () Bool)

(assert (=> setNonEmpty!9962 (= setRes!9963 (and tp!442375 (inv!21514 setElem!9963) e!981684))))

(declare-fun mapDefault!7307 () List!16310)

(declare-fun setRest!9963 () (InoxSet Context!1398))

(assert (=> setNonEmpty!9962 (= (_2!8699 (h!21643 mapDefault!7307)) ((_ map or) (store ((as const (Array Context!1398 Bool)) false) setElem!9963 true) setRest!9963))))

(declare-fun b!1535388 () Bool)

(declare-fun tp!442376 () Bool)

(assert (=> b!1535388 (= e!981684 tp!442376)))

(declare-fun condMapEmpty!7307 () Bool)

(assert (=> mapNonEmpty!7302 (= condMapEmpty!7307 (= mapRest!7302 ((as const (Array (_ BitVec 32) List!16310)) mapDefault!7307)))))

(declare-fun e!981686 () Bool)

(declare-fun mapRes!7307 () Bool)

(assert (=> mapNonEmpty!7302 (= tp!442273 (and e!981686 mapRes!7307))))

(declare-fun mapNonEmpty!7307 () Bool)

(declare-fun tp!442378 () Bool)

(declare-fun e!981688 () Bool)

(assert (=> mapNonEmpty!7307 (= mapRes!7307 (and tp!442378 e!981688))))

(declare-fun mapKey!7307 () (_ BitVec 32))

(declare-fun mapValue!7307 () List!16310)

(declare-fun mapRest!7307 () (Array (_ BitVec 32) List!16310))

(assert (=> mapNonEmpty!7307 (= mapRest!7302 (store mapRest!7307 mapKey!7307 mapValue!7307))))

(declare-fun e!981687 () Bool)

(declare-fun setNonEmpty!9963 () Bool)

(declare-fun setElem!9962 () Context!1398)

(declare-fun tp!442370 () Bool)

(assert (=> setNonEmpty!9963 (= setRes!9962 (and tp!442370 (inv!21514 setElem!9962) e!981687))))

(declare-fun setRest!9962 () (InoxSet Context!1398))

(assert (=> setNonEmpty!9963 (= (_2!8699 (h!21643 mapValue!7307)) ((_ map or) (store ((as const (Array Context!1398 Bool)) false) setElem!9962 true) setRest!9962))))

(declare-fun tp!442368 () Bool)

(declare-fun b!1535389 () Bool)

(declare-fun tp!442369 () Bool)

(assert (=> b!1535389 (= e!981686 (and tp!442369 (inv!21514 (_2!8698 (_1!8699 (h!21643 mapDefault!7307)))) e!981683 tp_is_empty!7031 setRes!9963 tp!442368))))

(declare-fun condSetEmpty!9963 () Bool)

(assert (=> b!1535389 (= condSetEmpty!9963 (= (_2!8699 (h!21643 mapDefault!7307)) ((as const (Array Context!1398 Bool)) false)))))

(declare-fun b!1535390 () Bool)

(declare-fun tp!442372 () Bool)

(assert (=> b!1535390 (= e!981687 tp!442372)))

(declare-fun mapIsEmpty!7307 () Bool)

(assert (=> mapIsEmpty!7307 mapRes!7307))

(declare-fun setIsEmpty!9963 () Bool)

(assert (=> setIsEmpty!9963 setRes!9963))

(declare-fun tp!442377 () Bool)

(declare-fun b!1535391 () Bool)

(declare-fun tp!442374 () Bool)

(assert (=> b!1535391 (= e!981688 (and tp!442377 (inv!21514 (_2!8698 (_1!8699 (h!21643 mapValue!7307)))) e!981685 tp_is_empty!7031 setRes!9962 tp!442374))))

(declare-fun condSetEmpty!9962 () Bool)

(assert (=> b!1535391 (= condSetEmpty!9962 (= (_2!8699 (h!21643 mapValue!7307)) ((as const (Array Context!1398 Bool)) false)))))

(assert (= (and mapNonEmpty!7302 condMapEmpty!7307) mapIsEmpty!7307))

(assert (= (and mapNonEmpty!7302 (not condMapEmpty!7307)) mapNonEmpty!7307))

(assert (= b!1535391 b!1535386))

(assert (= (and b!1535391 condSetEmpty!9962) setIsEmpty!9962))

(assert (= (and b!1535391 (not condSetEmpty!9962)) setNonEmpty!9963))

(assert (= setNonEmpty!9963 b!1535390))

(assert (= (and mapNonEmpty!7307 ((_ is Cons!16242) mapValue!7307)) b!1535391))

(assert (= b!1535389 b!1535387))

(assert (= (and b!1535389 condSetEmpty!9963) setIsEmpty!9963))

(assert (= (and b!1535389 (not condSetEmpty!9963)) setNonEmpty!9962))

(assert (= setNonEmpty!9962 b!1535388))

(assert (= (and mapNonEmpty!7302 ((_ is Cons!16242) mapDefault!7307)) b!1535389))

(declare-fun m!1811094 () Bool)

(assert (=> setNonEmpty!9962 m!1811094))

(declare-fun m!1811096 () Bool)

(assert (=> mapNonEmpty!7307 m!1811096))

(declare-fun m!1811098 () Bool)

(assert (=> b!1535389 m!1811098))

(declare-fun m!1811100 () Bool)

(assert (=> b!1535391 m!1811100))

(declare-fun m!1811102 () Bool)

(assert (=> setNonEmpty!9963 m!1811102))

(declare-fun b!1535392 () Bool)

(declare-fun e!981689 () Bool)

(declare-fun tp!442379 () Bool)

(assert (=> b!1535392 (= e!981689 tp!442379)))

(declare-fun b!1535393 () Bool)

(declare-fun e!981690 () Bool)

(declare-fun tp!442380 () Bool)

(assert (=> b!1535393 (= e!981690 tp!442380)))

(declare-fun b!1535394 () Bool)

(declare-fun setRes!9964 () Bool)

(declare-fun e!981691 () Bool)

(declare-fun tp!442383 () Bool)

(declare-fun tp!442382 () Bool)

(assert (=> b!1535394 (= e!981691 (and tp!442383 (inv!21514 (_2!8698 (_1!8699 (h!21643 mapValue!7303)))) e!981690 tp_is_empty!7031 setRes!9964 tp!442382))))

(declare-fun condSetEmpty!9964 () Bool)

(assert (=> b!1535394 (= condSetEmpty!9964 (= (_2!8699 (h!21643 mapValue!7303)) ((as const (Array Context!1398 Bool)) false)))))

(declare-fun setIsEmpty!9964 () Bool)

(assert (=> setIsEmpty!9964 setRes!9964))

(assert (=> mapNonEmpty!7302 (= tp!442268 e!981691)))

(declare-fun tp!442381 () Bool)

(declare-fun setNonEmpty!9964 () Bool)

(declare-fun setElem!9964 () Context!1398)

(assert (=> setNonEmpty!9964 (= setRes!9964 (and tp!442381 (inv!21514 setElem!9964) e!981689))))

(declare-fun setRest!9964 () (InoxSet Context!1398))

(assert (=> setNonEmpty!9964 (= (_2!8699 (h!21643 mapValue!7303)) ((_ map or) (store ((as const (Array Context!1398 Bool)) false) setElem!9964 true) setRest!9964))))

(assert (= b!1535394 b!1535393))

(assert (= (and b!1535394 condSetEmpty!9964) setIsEmpty!9964))

(assert (= (and b!1535394 (not condSetEmpty!9964)) setNonEmpty!9964))

(assert (= setNonEmpty!9964 b!1535392))

(assert (= (and mapNonEmpty!7302 ((_ is Cons!16242) mapValue!7303)) b!1535394))

(declare-fun m!1811104 () Bool)

(assert (=> b!1535394 m!1811104))

(declare-fun m!1811106 () Bool)

(assert (=> setNonEmpty!9964 m!1811106))

(declare-fun b!1535409 () Bool)

(declare-fun e!981704 () Bool)

(declare-fun tp!442407 () Bool)

(assert (=> b!1535409 (= e!981704 tp!442407)))

(declare-fun e!981706 () Bool)

(declare-fun b!1535410 () Bool)

(declare-fun mapDefault!7310 () List!16315)

(declare-fun setRes!9970 () Bool)

(declare-fun tp!442405 () Bool)

(declare-fun e!981708 () Bool)

(assert (=> b!1535410 (= e!981706 (and (inv!21514 (_1!8702 (_1!8703 (h!21648 mapDefault!7310)))) e!981708 tp_is_empty!7031 setRes!9970 tp!442405))))

(declare-fun condSetEmpty!9969 () Bool)

(assert (=> b!1535410 (= condSetEmpty!9969 (= (_2!8703 (h!21648 mapDefault!7310)) ((as const (Array Context!1398 Bool)) false)))))

(declare-fun b!1535411 () Bool)

(declare-fun tp!442410 () Bool)

(assert (=> b!1535411 (= e!981708 tp!442410)))

(declare-fun tp!442409 () Bool)

(declare-fun setElem!9969 () Context!1398)

(declare-fun setNonEmpty!9969 () Bool)

(assert (=> setNonEmpty!9969 (= setRes!9970 (and tp!442409 (inv!21514 setElem!9969) e!981704))))

(declare-fun setRest!9970 () (InoxSet Context!1398))

(assert (=> setNonEmpty!9969 (= (_2!8703 (h!21648 mapDefault!7310)) ((_ map or) (store ((as const (Array Context!1398 Bool)) false) setElem!9969 true) setRest!9970))))

(declare-fun setIsEmpty!9969 () Bool)

(assert (=> setIsEmpty!9969 setRes!9970))

(declare-fun tp!442403 () Bool)

(declare-fun setRes!9969 () Bool)

(declare-fun setElem!9970 () Context!1398)

(declare-fun e!981707 () Bool)

(declare-fun setNonEmpty!9970 () Bool)

(assert (=> setNonEmpty!9970 (= setRes!9969 (and tp!442403 (inv!21514 setElem!9970) e!981707))))

(declare-fun mapValue!7310 () List!16315)

(declare-fun setRest!9969 () (InoxSet Context!1398))

(assert (=> setNonEmpty!9970 (= (_2!8703 (h!21648 mapValue!7310)) ((_ map or) (store ((as const (Array Context!1398 Bool)) false) setElem!9970 true) setRest!9969))))

(declare-fun tp!442408 () Bool)

(declare-fun e!981709 () Bool)

(declare-fun b!1535412 () Bool)

(declare-fun e!981705 () Bool)

(assert (=> b!1535412 (= e!981705 (and (inv!21514 (_1!8702 (_1!8703 (h!21648 mapValue!7310)))) e!981709 tp_is_empty!7031 setRes!9969 tp!442408))))

(declare-fun condSetEmpty!9970 () Bool)

(assert (=> b!1535412 (= condSetEmpty!9970 (= (_2!8703 (h!21648 mapValue!7310)) ((as const (Array Context!1398 Bool)) false)))))

(declare-fun mapIsEmpty!7310 () Bool)

(declare-fun mapRes!7310 () Bool)

(assert (=> mapIsEmpty!7310 mapRes!7310))

(declare-fun setIsEmpty!9970 () Bool)

(assert (=> setIsEmpty!9970 setRes!9969))

(declare-fun b!1535413 () Bool)

(declare-fun tp!442404 () Bool)

(assert (=> b!1535413 (= e!981709 tp!442404)))

(declare-fun b!1535414 () Bool)

(declare-fun tp!442406 () Bool)

(assert (=> b!1535414 (= e!981707 tp!442406)))

(declare-fun condMapEmpty!7310 () Bool)

(assert (=> mapNonEmpty!7303 (= condMapEmpty!7310 (= mapRest!7304 ((as const (Array (_ BitVec 32) List!16315)) mapDefault!7310)))))

(assert (=> mapNonEmpty!7303 (= tp!442272 (and e!981706 mapRes!7310))))

(declare-fun mapNonEmpty!7310 () Bool)

(declare-fun tp!442402 () Bool)

(assert (=> mapNonEmpty!7310 (= mapRes!7310 (and tp!442402 e!981705))))

(declare-fun mapKey!7310 () (_ BitVec 32))

(declare-fun mapRest!7310 () (Array (_ BitVec 32) List!16315))

(assert (=> mapNonEmpty!7310 (= mapRest!7304 (store mapRest!7310 mapKey!7310 mapValue!7310))))

(assert (= (and mapNonEmpty!7303 condMapEmpty!7310) mapIsEmpty!7310))

(assert (= (and mapNonEmpty!7303 (not condMapEmpty!7310)) mapNonEmpty!7310))

(assert (= b!1535412 b!1535413))

(assert (= (and b!1535412 condSetEmpty!9970) setIsEmpty!9970))

(assert (= (and b!1535412 (not condSetEmpty!9970)) setNonEmpty!9970))

(assert (= setNonEmpty!9970 b!1535414))

(assert (= (and mapNonEmpty!7310 ((_ is Cons!16247) mapValue!7310)) b!1535412))

(assert (= b!1535410 b!1535411))

(assert (= (and b!1535410 condSetEmpty!9969) setIsEmpty!9969))

(assert (= (and b!1535410 (not condSetEmpty!9969)) setNonEmpty!9969))

(assert (= setNonEmpty!9969 b!1535409))

(assert (= (and mapNonEmpty!7303 ((_ is Cons!16247) mapDefault!7310)) b!1535410))

(declare-fun m!1811108 () Bool)

(assert (=> setNonEmpty!9969 m!1811108))

(declare-fun m!1811110 () Bool)

(assert (=> b!1535410 m!1811110))

(declare-fun m!1811112 () Bool)

(assert (=> mapNonEmpty!7310 m!1811112))

(declare-fun m!1811114 () Bool)

(assert (=> b!1535412 m!1811114))

(declare-fun m!1811116 () Bool)

(assert (=> setNonEmpty!9970 m!1811116))

(declare-fun setIsEmpty!9971 () Bool)

(declare-fun setRes!9971 () Bool)

(assert (=> setIsEmpty!9971 setRes!9971))

(declare-fun b!1535415 () Bool)

(declare-fun e!981710 () Bool)

(declare-fun tp!442414 () Bool)

(assert (=> b!1535415 (= e!981710 tp!442414)))

(declare-fun setElem!9971 () Context!1398)

(declare-fun tp!442412 () Bool)

(declare-fun e!981711 () Bool)

(declare-fun setNonEmpty!9971 () Bool)

(assert (=> setNonEmpty!9971 (= setRes!9971 (and tp!442412 (inv!21514 setElem!9971) e!981711))))

(declare-fun setRest!9971 () (InoxSet Context!1398))

(assert (=> setNonEmpty!9971 (= (_2!8703 (h!21648 mapValue!7302)) ((_ map or) (store ((as const (Array Context!1398 Bool)) false) setElem!9971 true) setRest!9971))))

(declare-fun b!1535416 () Bool)

(declare-fun tp!442411 () Bool)

(assert (=> b!1535416 (= e!981711 tp!442411)))

(declare-fun e!981712 () Bool)

(declare-fun b!1535417 () Bool)

(declare-fun tp!442413 () Bool)

(assert (=> b!1535417 (= e!981712 (and (inv!21514 (_1!8702 (_1!8703 (h!21648 mapValue!7302)))) e!981710 tp_is_empty!7031 setRes!9971 tp!442413))))

(declare-fun condSetEmpty!9971 () Bool)

(assert (=> b!1535417 (= condSetEmpty!9971 (= (_2!8703 (h!21648 mapValue!7302)) ((as const (Array Context!1398 Bool)) false)))))

(assert (=> mapNonEmpty!7303 (= tp!442277 e!981712)))

(assert (= b!1535417 b!1535415))

(assert (= (and b!1535417 condSetEmpty!9971) setIsEmpty!9971))

(assert (= (and b!1535417 (not condSetEmpty!9971)) setNonEmpty!9971))

(assert (= setNonEmpty!9971 b!1535416))

(assert (= (and mapNonEmpty!7303 ((_ is Cons!16247) mapValue!7302)) b!1535417))

(declare-fun m!1811118 () Bool)

(assert (=> setNonEmpty!9971 m!1811118))

(declare-fun m!1811120 () Bool)

(assert (=> b!1535417 m!1811120))

(declare-fun b!1535428 () Bool)

(declare-fun b_free!39759 () Bool)

(declare-fun b_next!40463 () Bool)

(assert (=> b!1535428 (= b_free!39759 (not b_next!40463))))

(declare-fun tp!442426 () Bool)

(declare-fun b_and!106637 () Bool)

(assert (=> b!1535428 (= tp!442426 b_and!106637)))

(declare-fun b_free!39761 () Bool)

(declare-fun b_next!40465 () Bool)

(assert (=> b!1535428 (= b_free!39761 (not b_next!40465))))

(declare-fun tp!442423 () Bool)

(declare-fun b_and!106639 () Bool)

(assert (=> b!1535428 (= tp!442423 b_and!106639)))

(declare-fun e!981723 () Bool)

(assert (=> b!1535428 (= e!981723 (and tp!442426 tp!442423))))

(declare-fun e!981724 () Bool)

(declare-fun tp!442424 () Bool)

(declare-fun b!1535427 () Bool)

(assert (=> b!1535427 (= e!981724 (and tp!442424 (inv!21505 (tag!3125 (h!21646 (t!140519 rulesArg!359)))) (inv!21511 (transformation!2861 (h!21646 (t!140519 rulesArg!359)))) e!981723))))

(declare-fun b!1535426 () Bool)

(declare-fun e!981721 () Bool)

(declare-fun tp!442425 () Bool)

(assert (=> b!1535426 (= e!981721 (and e!981724 tp!442425))))

(assert (=> b!1535266 (= tp!442266 e!981721)))

(assert (= b!1535427 b!1535428))

(assert (= b!1535426 b!1535427))

(assert (= (and b!1535266 ((_ is Cons!16245) (t!140519 rulesArg!359))) b!1535426))

(declare-fun m!1811122 () Bool)

(assert (=> b!1535427 m!1811122))

(declare-fun m!1811124 () Bool)

(assert (=> b!1535427 m!1811124))

(declare-fun tp!442427 () Bool)

(declare-fun e!981725 () Bool)

(declare-fun tp!442428 () Bool)

(declare-fun b!1535429 () Bool)

(assert (=> b!1535429 (= e!981725 (and (inv!21506 (left!13421 (c!251536 totalInput!496))) tp!442427 (inv!21506 (right!13751 (c!251536 totalInput!496))) tp!442428))))

(declare-fun b!1535431 () Bool)

(declare-fun e!981726 () Bool)

(declare-fun tp!442429 () Bool)

(assert (=> b!1535431 (= e!981726 tp!442429)))

(declare-fun b!1535430 () Bool)

(assert (=> b!1535430 (= e!981725 (and (inv!21515 (xs!8274 (c!251536 totalInput!496))) e!981726))))

(assert (=> b!1535247 (= tp!442281 (and (inv!21506 (c!251536 totalInput!496)) e!981725))))

(assert (= (and b!1535247 ((_ is Node!5474) (c!251536 totalInput!496))) b!1535429))

(assert (= b!1535430 b!1535431))

(assert (= (and b!1535247 ((_ is Leaf!8110) (c!251536 totalInput!496))) b!1535430))

(declare-fun m!1811126 () Bool)

(assert (=> b!1535429 m!1811126))

(declare-fun m!1811128 () Bool)

(assert (=> b!1535429 m!1811128))

(declare-fun m!1811130 () Bool)

(assert (=> b!1535430 m!1811130))

(assert (=> b!1535247 m!1810962))

(declare-fun b!1535432 () Bool)

(declare-fun tp!442430 () Bool)

(declare-fun tp!442431 () Bool)

(declare-fun e!981727 () Bool)

(assert (=> b!1535432 (= e!981727 (and (inv!21506 (left!13421 (c!251536 (totalInput!2344 cacheFurthestNullable!81)))) tp!442430 (inv!21506 (right!13751 (c!251536 (totalInput!2344 cacheFurthestNullable!81)))) tp!442431))))

(declare-fun b!1535434 () Bool)

(declare-fun e!981728 () Bool)

(declare-fun tp!442432 () Bool)

(assert (=> b!1535434 (= e!981728 tp!442432)))

(declare-fun b!1535433 () Bool)

(assert (=> b!1535433 (= e!981727 (and (inv!21515 (xs!8274 (c!251536 (totalInput!2344 cacheFurthestNullable!81)))) e!981728))))

(assert (=> b!1535238 (= tp!442280 (and (inv!21506 (c!251536 (totalInput!2344 cacheFurthestNullable!81))) e!981727))))

(assert (= (and b!1535238 ((_ is Node!5474) (c!251536 (totalInput!2344 cacheFurthestNullable!81)))) b!1535432))

(assert (= b!1535433 b!1535434))

(assert (= (and b!1535238 ((_ is Leaf!8110) (c!251536 (totalInput!2344 cacheFurthestNullable!81)))) b!1535433))

(declare-fun m!1811132 () Bool)

(assert (=> b!1535432 m!1811132))

(declare-fun m!1811134 () Bool)

(assert (=> b!1535432 m!1811134))

(declare-fun m!1811136 () Bool)

(assert (=> b!1535433 m!1811136))

(assert (=> b!1535238 m!1810968))

(declare-fun setIsEmpty!9972 () Bool)

(declare-fun setRes!9972 () Bool)

(assert (=> setIsEmpty!9972 setRes!9972))

(declare-fun e!981730 () Bool)

(assert (=> b!1535236 (= tp!442270 e!981730)))

(declare-fun b!1535435 () Bool)

(declare-fun tp!442433 () Bool)

(assert (=> b!1535435 (= e!981730 (and setRes!9972 tp!442433))))

(declare-fun condSetEmpty!9972 () Bool)

(assert (=> b!1535435 (= condSetEmpty!9972 (= (_1!8700 (_1!8701 (h!21647 mapDefault!7303))) ((as const (Array Context!1398 Bool)) false)))))

(declare-fun setNonEmpty!9972 () Bool)

(declare-fun setElem!9972 () Context!1398)

(declare-fun tp!442434 () Bool)

(declare-fun e!981729 () Bool)

(assert (=> setNonEmpty!9972 (= setRes!9972 (and tp!442434 (inv!21514 setElem!9972) e!981729))))

(declare-fun setRest!9972 () (InoxSet Context!1398))

(assert (=> setNonEmpty!9972 (= (_1!8700 (_1!8701 (h!21647 mapDefault!7303))) ((_ map or) (store ((as const (Array Context!1398 Bool)) false) setElem!9972 true) setRest!9972))))

(declare-fun b!1535436 () Bool)

(declare-fun tp!442435 () Bool)

(assert (=> b!1535436 (= e!981729 tp!442435)))

(assert (= (and b!1535435 condSetEmpty!9972) setIsEmpty!9972))

(assert (= (and b!1535435 (not condSetEmpty!9972)) setNonEmpty!9972))

(assert (= setNonEmpty!9972 b!1535436))

(assert (= (and b!1535236 ((_ is Cons!16246) mapDefault!7303)) b!1535435))

(declare-fun m!1811138 () Bool)

(assert (=> setNonEmpty!9972 m!1811138))

(declare-fun b!1535448 () Bool)

(declare-fun e!981733 () Bool)

(declare-fun tp!442446 () Bool)

(declare-fun tp!442447 () Bool)

(assert (=> b!1535448 (= e!981733 (and tp!442446 tp!442447))))

(declare-fun b!1535449 () Bool)

(declare-fun tp!442448 () Bool)

(assert (=> b!1535449 (= e!981733 tp!442448)))

(declare-fun b!1535447 () Bool)

(assert (=> b!1535447 (= e!981733 tp_is_empty!7031)))

(declare-fun b!1535450 () Bool)

(declare-fun tp!442449 () Bool)

(declare-fun tp!442450 () Bool)

(assert (=> b!1535450 (= e!981733 (and tp!442449 tp!442450))))

(assert (=> b!1535263 (= tp!442278 e!981733)))

(assert (= (and b!1535263 ((_ is ElementMatch!4181) (regex!2861 (h!21646 rulesArg!359)))) b!1535447))

(assert (= (and b!1535263 ((_ is Concat!7132) (regex!2861 (h!21646 rulesArg!359)))) b!1535448))

(assert (= (and b!1535263 ((_ is Star!4181) (regex!2861 (h!21646 rulesArg!359)))) b!1535449))

(assert (= (and b!1535263 ((_ is Union!4181) (regex!2861 (h!21646 rulesArg!359)))) b!1535450))

(declare-fun setIsEmpty!9977 () Bool)

(declare-fun setRes!9977 () Bool)

(assert (=> setIsEmpty!9977 setRes!9977))

(declare-fun condMapEmpty!7313 () Bool)

(declare-fun mapDefault!7313 () List!16314)

(assert (=> mapNonEmpty!7304 (= condMapEmpty!7313 (= mapRest!7303 ((as const (Array (_ BitVec 32) List!16314)) mapDefault!7313)))))

(declare-fun e!981745 () Bool)

(declare-fun mapRes!7313 () Bool)

(assert (=> mapNonEmpty!7304 (= tp!442289 (and e!981745 mapRes!7313))))

(declare-fun b!1535461 () Bool)

(declare-fun e!981744 () Bool)

(declare-fun tp!442465 () Bool)

(assert (=> b!1535461 (= e!981744 tp!442465)))

(declare-fun mapNonEmpty!7313 () Bool)

(declare-fun tp!442469 () Bool)

(declare-fun e!981742 () Bool)

(assert (=> mapNonEmpty!7313 (= mapRes!7313 (and tp!442469 e!981742))))

(declare-fun mapValue!7313 () List!16314)

(declare-fun mapKey!7313 () (_ BitVec 32))

(declare-fun mapRest!7313 () (Array (_ BitVec 32) List!16314))

(assert (=> mapNonEmpty!7313 (= mapRest!7303 (store mapRest!7313 mapKey!7313 mapValue!7313))))

(declare-fun b!1535462 () Bool)

(declare-fun e!981743 () Bool)

(declare-fun tp!442470 () Bool)

(assert (=> b!1535462 (= e!981743 tp!442470)))

(declare-fun setIsEmpty!9978 () Bool)

(declare-fun setRes!9978 () Bool)

(assert (=> setIsEmpty!9978 setRes!9978))

(declare-fun mapIsEmpty!7313 () Bool)

(assert (=> mapIsEmpty!7313 mapRes!7313))

(declare-fun b!1535463 () Bool)

(declare-fun tp!442467 () Bool)

(assert (=> b!1535463 (= e!981745 (and setRes!9977 tp!442467))))

(declare-fun condSetEmpty!9978 () Bool)

(assert (=> b!1535463 (= condSetEmpty!9978 (= (_1!8700 (_1!8701 (h!21647 mapDefault!7313))) ((as const (Array Context!1398 Bool)) false)))))

(declare-fun tp!442468 () Bool)

(declare-fun setNonEmpty!9977 () Bool)

(declare-fun setElem!9977 () Context!1398)

(assert (=> setNonEmpty!9977 (= setRes!9978 (and tp!442468 (inv!21514 setElem!9977) e!981744))))

(declare-fun setRest!9977 () (InoxSet Context!1398))

(assert (=> setNonEmpty!9977 (= (_1!8700 (_1!8701 (h!21647 mapValue!7313))) ((_ map or) (store ((as const (Array Context!1398 Bool)) false) setElem!9977 true) setRest!9977))))

(declare-fun setNonEmpty!9978 () Bool)

(declare-fun tp!442471 () Bool)

(declare-fun setElem!9978 () Context!1398)

(assert (=> setNonEmpty!9978 (= setRes!9977 (and tp!442471 (inv!21514 setElem!9978) e!981743))))

(declare-fun setRest!9978 () (InoxSet Context!1398))

(assert (=> setNonEmpty!9978 (= (_1!8700 (_1!8701 (h!21647 mapDefault!7313))) ((_ map or) (store ((as const (Array Context!1398 Bool)) false) setElem!9978 true) setRest!9978))))

(declare-fun b!1535464 () Bool)

(declare-fun tp!442466 () Bool)

(assert (=> b!1535464 (= e!981742 (and setRes!9978 tp!442466))))

(declare-fun condSetEmpty!9977 () Bool)

(assert (=> b!1535464 (= condSetEmpty!9977 (= (_1!8700 (_1!8701 (h!21647 mapValue!7313))) ((as const (Array Context!1398 Bool)) false)))))

(assert (= (and mapNonEmpty!7304 condMapEmpty!7313) mapIsEmpty!7313))

(assert (= (and mapNonEmpty!7304 (not condMapEmpty!7313)) mapNonEmpty!7313))

(assert (= (and b!1535464 condSetEmpty!9977) setIsEmpty!9978))

(assert (= (and b!1535464 (not condSetEmpty!9977)) setNonEmpty!9977))

(assert (= setNonEmpty!9977 b!1535461))

(assert (= (and mapNonEmpty!7313 ((_ is Cons!16246) mapValue!7313)) b!1535464))

(assert (= (and b!1535463 condSetEmpty!9978) setIsEmpty!9977))

(assert (= (and b!1535463 (not condSetEmpty!9978)) setNonEmpty!9978))

(assert (= setNonEmpty!9978 b!1535462))

(assert (= (and mapNonEmpty!7304 ((_ is Cons!16246) mapDefault!7313)) b!1535463))

(declare-fun m!1811140 () Bool)

(assert (=> mapNonEmpty!7313 m!1811140))

(declare-fun m!1811142 () Bool)

(assert (=> setNonEmpty!9977 m!1811142))

(declare-fun m!1811144 () Bool)

(assert (=> setNonEmpty!9978 m!1811144))

(declare-fun setIsEmpty!9979 () Bool)

(declare-fun setRes!9979 () Bool)

(assert (=> setIsEmpty!9979 setRes!9979))

(declare-fun e!981747 () Bool)

(assert (=> mapNonEmpty!7304 (= tp!442282 e!981747)))

(declare-fun b!1535465 () Bool)

(declare-fun tp!442472 () Bool)

(assert (=> b!1535465 (= e!981747 (and setRes!9979 tp!442472))))

(declare-fun condSetEmpty!9979 () Bool)

(assert (=> b!1535465 (= condSetEmpty!9979 (= (_1!8700 (_1!8701 (h!21647 mapValue!7304))) ((as const (Array Context!1398 Bool)) false)))))

(declare-fun setElem!9979 () Context!1398)

(declare-fun tp!442473 () Bool)

(declare-fun setNonEmpty!9979 () Bool)

(declare-fun e!981746 () Bool)

(assert (=> setNonEmpty!9979 (= setRes!9979 (and tp!442473 (inv!21514 setElem!9979) e!981746))))

(declare-fun setRest!9979 () (InoxSet Context!1398))

(assert (=> setNonEmpty!9979 (= (_1!8700 (_1!8701 (h!21647 mapValue!7304))) ((_ map or) (store ((as const (Array Context!1398 Bool)) false) setElem!9979 true) setRest!9979))))

(declare-fun b!1535466 () Bool)

(declare-fun tp!442474 () Bool)

(assert (=> b!1535466 (= e!981746 tp!442474)))

(assert (= (and b!1535465 condSetEmpty!9979) setIsEmpty!9979))

(assert (= (and b!1535465 (not condSetEmpty!9979)) setNonEmpty!9979))

(assert (= setNonEmpty!9979 b!1535466))

(assert (= (and mapNonEmpty!7304 ((_ is Cons!16246) mapValue!7304)) b!1535465))

(declare-fun m!1811146 () Bool)

(assert (=> setNonEmpty!9979 m!1811146))

(declare-fun b!1535467 () Bool)

(declare-fun e!981748 () Bool)

(declare-fun tp!442475 () Bool)

(assert (=> b!1535467 (= e!981748 tp!442475)))

(declare-fun b!1535468 () Bool)

(declare-fun e!981749 () Bool)

(declare-fun tp!442476 () Bool)

(assert (=> b!1535468 (= e!981749 tp!442476)))

(declare-fun setRes!9980 () Bool)

(declare-fun tp!442479 () Bool)

(declare-fun b!1535469 () Bool)

(declare-fun tp!442478 () Bool)

(declare-fun e!981750 () Bool)

(assert (=> b!1535469 (= e!981750 (and tp!442479 (inv!21514 (_2!8698 (_1!8699 (h!21643 (zeroValue!1794 (v!23054 (underlying!3283 (v!23055 (underlying!3284 (cache!1862 cacheDown!708)))))))))) e!981749 tp_is_empty!7031 setRes!9980 tp!442478))))

(declare-fun condSetEmpty!9980 () Bool)

(assert (=> b!1535469 (= condSetEmpty!9980 (= (_2!8699 (h!21643 (zeroValue!1794 (v!23054 (underlying!3283 (v!23055 (underlying!3284 (cache!1862 cacheDown!708)))))))) ((as const (Array Context!1398 Bool)) false)))))

(declare-fun setIsEmpty!9980 () Bool)

(assert (=> setIsEmpty!9980 setRes!9980))

(assert (=> b!1535246 (= tp!442271 e!981750)))

(declare-fun setElem!9980 () Context!1398)

(declare-fun tp!442477 () Bool)

(declare-fun setNonEmpty!9980 () Bool)

(assert (=> setNonEmpty!9980 (= setRes!9980 (and tp!442477 (inv!21514 setElem!9980) e!981748))))

(declare-fun setRest!9980 () (InoxSet Context!1398))

(assert (=> setNonEmpty!9980 (= (_2!8699 (h!21643 (zeroValue!1794 (v!23054 (underlying!3283 (v!23055 (underlying!3284 (cache!1862 cacheDown!708)))))))) ((_ map or) (store ((as const (Array Context!1398 Bool)) false) setElem!9980 true) setRest!9980))))

(assert (= b!1535469 b!1535468))

(assert (= (and b!1535469 condSetEmpty!9980) setIsEmpty!9980))

(assert (= (and b!1535469 (not condSetEmpty!9980)) setNonEmpty!9980))

(assert (= setNonEmpty!9980 b!1535467))

(assert (= (and b!1535246 ((_ is Cons!16242) (zeroValue!1794 (v!23054 (underlying!3283 (v!23055 (underlying!3284 (cache!1862 cacheDown!708)))))))) b!1535469))

(declare-fun m!1811148 () Bool)

(assert (=> b!1535469 m!1811148))

(declare-fun m!1811150 () Bool)

(assert (=> setNonEmpty!9980 m!1811150))

(declare-fun b!1535470 () Bool)

(declare-fun e!981751 () Bool)

(declare-fun tp!442480 () Bool)

(assert (=> b!1535470 (= e!981751 tp!442480)))

(declare-fun b!1535471 () Bool)

(declare-fun e!981752 () Bool)

(declare-fun tp!442481 () Bool)

(assert (=> b!1535471 (= e!981752 tp!442481)))

(declare-fun b!1535472 () Bool)

(declare-fun setRes!9981 () Bool)

(declare-fun tp!442483 () Bool)

(declare-fun tp!442484 () Bool)

(declare-fun e!981753 () Bool)

(assert (=> b!1535472 (= e!981753 (and tp!442484 (inv!21514 (_2!8698 (_1!8699 (h!21643 (minValue!1794 (v!23054 (underlying!3283 (v!23055 (underlying!3284 (cache!1862 cacheDown!708)))))))))) e!981752 tp_is_empty!7031 setRes!9981 tp!442483))))

(declare-fun condSetEmpty!9981 () Bool)

(assert (=> b!1535472 (= condSetEmpty!9981 (= (_2!8699 (h!21643 (minValue!1794 (v!23054 (underlying!3283 (v!23055 (underlying!3284 (cache!1862 cacheDown!708)))))))) ((as const (Array Context!1398 Bool)) false)))))

(declare-fun setIsEmpty!9981 () Bool)

(assert (=> setIsEmpty!9981 setRes!9981))

(assert (=> b!1535246 (= tp!442265 e!981753)))

(declare-fun setNonEmpty!9981 () Bool)

(declare-fun tp!442482 () Bool)

(declare-fun setElem!9981 () Context!1398)

(assert (=> setNonEmpty!9981 (= setRes!9981 (and tp!442482 (inv!21514 setElem!9981) e!981751))))

(declare-fun setRest!9981 () (InoxSet Context!1398))

(assert (=> setNonEmpty!9981 (= (_2!8699 (h!21643 (minValue!1794 (v!23054 (underlying!3283 (v!23055 (underlying!3284 (cache!1862 cacheDown!708)))))))) ((_ map or) (store ((as const (Array Context!1398 Bool)) false) setElem!9981 true) setRest!9981))))

(assert (= b!1535472 b!1535471))

(assert (= (and b!1535472 condSetEmpty!9981) setIsEmpty!9981))

(assert (= (and b!1535472 (not condSetEmpty!9981)) setNonEmpty!9981))

(assert (= setNonEmpty!9981 b!1535470))

(assert (= (and b!1535246 ((_ is Cons!16242) (minValue!1794 (v!23054 (underlying!3283 (v!23055 (underlying!3284 (cache!1862 cacheDown!708)))))))) b!1535472))

(declare-fun m!1811152 () Bool)

(assert (=> b!1535472 m!1811152))

(declare-fun m!1811154 () Bool)

(assert (=> setNonEmpty!9981 m!1811154))

(check-sat (not b_next!40465) (not d!458150) (not b!1535387) (not b!1535352) (not d!458122) (not b!1535247) (not b!1535300) (not b!1535319) (not d!458144) (not b!1535283) (not d!458146) (not b!1535429) (not setNonEmpty!9978) (not b!1535461) tp_is_empty!7031 (not setNonEmpty!9949) (not b_next!40457) (not b!1535433) (not b!1535417) (not b!1535450) (not b!1535430) (not b!1535392) (not b!1535322) (not b!1535371) (not b!1535463) (not b!1535434) (not b!1535307) b_and!106623 (not b!1535413) (not setNonEmpty!9964) (not d!458136) (not b!1535393) (not b!1535329) b_and!106637 (not b!1535316) (not b!1535471) (not setNonEmpty!9971) (not b!1535465) (not b!1535363) (not b!1535313) b_and!106627 (not b!1535472) (not b!1535343) (not b!1535301) (not b!1535386) (not b!1535354) (not setNonEmpty!9955) (not b!1535467) (not b!1535431) (not b!1535308) (not b!1535468) (not mapNonEmpty!7307) (not b!1535435) (not b!1535412) (not setNonEmpty!9980) (not b!1535448) (not b!1535341) (not d!458142) (not b!1535394) (not b!1535302) (not b!1535414) (not b!1535427) (not b_next!40463) (not b!1535332) b_and!106639 (not b!1535288) b_and!106633 (not b!1535436) (not setNonEmpty!9957) (not setNonEmpty!9969) (not setNonEmpty!9970) b_and!106621 (not b!1535331) (not b_next!40453) (not d!458158) (not b!1535388) (not b!1535353) (not setNonEmpty!9981) (not b!1535238) (not b!1535272) (not b!1535449) (not b!1535367) (not b!1535462) (not b!1535368) (not b_next!40459) (not b!1535411) (not b_next!40461) (not b!1535389) (not b!1535470) (not b!1535365) (not d!458132) b_and!106635 (not b!1535416) (not setNonEmpty!9952) (not d!458118) (not setNonEmpty!9962) (not b_next!40447) (not b!1535259) (not b!1535415) (not b_next!40451) (not b!1535426) (not b!1535330) (not b!1535310) (not b!1535469) (not b!1535391) (not d!458126) (not b!1535271) (not mapNonEmpty!7313) (not b!1535299) b_and!106631 (not setNonEmpty!9948) (not setNonEmpty!9977) (not b!1535464) (not mapNonEmpty!7310) (not b!1535390) (not b!1535369) (not b!1535366) (not d!458120) (not b!1535432) (not b!1535342) (not setNonEmpty!9979) (not d!458154) (not b!1535466) (not b!1535304) (not b!1535281) (not b_next!40449) (not b!1535410) (not d!458162) b_and!106629 (not setNonEmpty!9972) (not b!1535409) (not b!1535370) (not setNonEmpty!9963) (not b_next!40455) (not b!1535364) b_and!106625 (not setNonEmpty!9956))
(check-sat (not b_next!40465) (not b_next!40457) b_and!106623 b_and!106637 b_and!106627 (not b_next!40463) b_and!106639 b_and!106633 b_and!106635 b_and!106631 (not b_next!40455) b_and!106625 (not b_next!40453) b_and!106621 (not b_next!40459) (not b_next!40461) (not b_next!40447) (not b_next!40451) (not b_next!40449) b_and!106629)

; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!71628 () Bool)

(assert start!71628)

(declare-fun b!772977 () Bool)

(declare-fun b_free!24537 () Bool)

(declare-fun b_next!24601 () Bool)

(assert (=> b!772977 (= b_free!24537 (not b_next!24601))))

(declare-fun tp!253999 () Bool)

(declare-fun b_and!72017 () Bool)

(assert (=> b!772977 (= tp!253999 b_and!72017)))

(declare-fun b_free!24539 () Bool)

(declare-fun b_next!24603 () Bool)

(assert (=> b!772977 (= b_free!24539 (not b_next!24603))))

(declare-fun tp!253984 () Bool)

(declare-fun b_and!72019 () Bool)

(assert (=> b!772977 (= tp!253984 b_and!72019)))

(declare-fun b!772990 () Bool)

(declare-fun b_free!24541 () Bool)

(declare-fun b_next!24605 () Bool)

(assert (=> b!772990 (= b_free!24541 (not b_next!24605))))

(declare-fun tp!253981 () Bool)

(declare-fun b_and!72021 () Bool)

(assert (=> b!772990 (= tp!253981 b_and!72021)))

(declare-fun b!772995 () Bool)

(declare-fun b_free!24543 () Bool)

(declare-fun b_next!24607 () Bool)

(assert (=> b!772995 (= b_free!24543 (not b_next!24607))))

(declare-fun tp!253985 () Bool)

(declare-fun b_and!72023 () Bool)

(assert (=> b!772995 (= tp!253985 b_and!72023)))

(declare-fun b!772999 () Bool)

(declare-fun b_free!24545 () Bool)

(declare-fun b_next!24609 () Bool)

(assert (=> b!772999 (= b_free!24545 (not b_next!24609))))

(declare-fun tp!253991 () Bool)

(declare-fun b_and!72025 () Bool)

(assert (=> b!772999 (= tp!253991 b_and!72025)))

(declare-fun b!773007 () Bool)

(declare-fun b_free!24547 () Bool)

(declare-fun b_next!24611 () Bool)

(assert (=> b!773007 (= b_free!24547 (not b_next!24611))))

(declare-fun tp!253972 () Bool)

(declare-fun b_and!72027 () Bool)

(assert (=> b!773007 (= tp!253972 b_and!72027)))

(declare-fun b!772983 () Bool)

(declare-fun b_free!24549 () Bool)

(declare-fun b_next!24613 () Bool)

(assert (=> b!772983 (= b_free!24549 (not b_next!24613))))

(declare-fun tp!253992 () Bool)

(declare-fun b_and!72029 () Bool)

(assert (=> b!772983 (= tp!253992 b_and!72029)))

(declare-fun b!772978 () Bool)

(declare-fun b_free!24551 () Bool)

(declare-fun b_next!24615 () Bool)

(assert (=> b!772978 (= b_free!24551 (not b_next!24615))))

(declare-fun tp!253982 () Bool)

(declare-fun b_and!72031 () Bool)

(assert (=> b!772978 (= tp!253982 b_and!72031)))

(declare-fun e!498414 () Bool)

(assert (=> b!772977 (= e!498414 (and tp!253999 tp!253984))))

(declare-fun e!498415 () Bool)

(declare-datatypes ((C!4596 0))(
  ( (C!4597 (val!2528 Int)) )
))
(declare-datatypes ((Regex!1997 0))(
  ( (ElementMatch!1997 (c!130319 C!4596)) (Concat!3685 (regOne!4506 Regex!1997) (regTwo!4506 Regex!1997)) (EmptyExpr!1997) (Star!1997 (reg!2326 Regex!1997)) (EmptyLang!1997) (Union!1997 (regOne!4507 Regex!1997) (regTwo!4507 Regex!1997)) )
))
(declare-datatypes ((List!8658 0))(
  ( (Nil!8644) (Cons!8644 (h!14045 Regex!1997) (t!91940 List!8658)) )
))
(declare-datatypes ((Context!798 0))(
  ( (Context!799 (exprs!899 List!8658)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!10124 0))(
  ( (tuple2!10125 (_1!5847 (InoxSet Context!798)) (_2!5847 Int)) )
))
(declare-datatypes ((tuple2!10126 0))(
  ( (tuple2!10127 (_1!5848 tuple2!10124) (_2!5848 Int)) )
))
(declare-datatypes ((List!8659 0))(
  ( (Nil!8645) (Cons!8645 (h!14046 tuple2!10126) (t!91941 List!8659)) )
))
(declare-datatypes ((array!4251 0))(
  ( (array!4252 (arr!1895 (Array (_ BitVec 32) List!8659)) (size!7027 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!1180 0))(
  ( (HashableExt!1179 (__x!6985 Int)) )
))
(declare-datatypes ((List!8660 0))(
  ( (Nil!8646) (Cons!8646 (h!14047 C!4596) (t!91942 List!8660)) )
))
(declare-datatypes ((IArray!5789 0))(
  ( (IArray!5790 (innerList!2952 List!8660)) )
))
(declare-datatypes ((Conc!2894 0))(
  ( (Node!2894 (left!6413 Conc!2894) (right!6743 Conc!2894) (csize!6018 Int) (cheight!3105 Int)) (Leaf!4246 (xs!5581 IArray!5789) (csize!6019 Int)) (Empty!2894) )
))
(declare-datatypes ((array!4253 0))(
  ( (array!4254 (arr!1896 (Array (_ BitVec 32) (_ BitVec 64))) (size!7028 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2416 0))(
  ( (LongMapFixedSize!2417 (defaultEntry!1564 Int) (mask!3091 (_ BitVec 32)) (extraKeys!1455 (_ BitVec 32)) (zeroValue!1465 List!8659) (minValue!1465 List!8659) (_size!2525 (_ BitVec 32)) (_keys!1502 array!4253) (_values!1487 array!4251) (_vacant!1269 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!4773 0))(
  ( (Cell!4774 (v!18774 LongMapFixedSize!2416)) )
))
(declare-datatypes ((MutLongMap!1208 0))(
  ( (LongMap!1208 (underlying!2599 Cell!4773)) (MutLongMapExt!1207 (__x!6986 Int)) )
))
(declare-datatypes ((Cell!4775 0))(
  ( (Cell!4776 (v!18775 MutLongMap!1208)) )
))
(declare-datatypes ((MutableMap!1180 0))(
  ( (MutableMapExt!1179 (__x!6987 Int)) (HashMap!1180 (underlying!2600 Cell!4775) (hashF!3088 Hashable!1180) (_size!2526 (_ BitVec 32)) (defaultValue!1331 Int)) )
))
(declare-datatypes ((BalanceConc!5800 0))(
  ( (BalanceConc!5801 (c!130320 Conc!2894)) )
))
(declare-datatypes ((CacheFindLongestMatch!340 0))(
  ( (CacheFindLongestMatch!341 (cache!1567 MutableMap!1180) (totalInput!2133 BalanceConc!5800)) )
))
(declare-fun cacheFindLongestMatch!134 () CacheFindLongestMatch!340)

(declare-fun e!498403 () Bool)

(declare-fun tp!253979 () Bool)

(declare-fun tp!253989 () Bool)

(declare-fun array_inv!1376 (array!4253) Bool)

(declare-fun array_inv!1377 (array!4251) Bool)

(assert (=> b!772978 (= e!498403 (and tp!253982 tp!253979 tp!253989 (array_inv!1376 (_keys!1502 (v!18774 (underlying!2599 (v!18775 (underlying!2600 (cache!1567 cacheFindLongestMatch!134))))))) (array_inv!1377 (_values!1487 (v!18774 (underlying!2599 (v!18775 (underlying!2600 (cache!1567 cacheFindLongestMatch!134))))))) e!498415))))

(declare-fun b!772979 () Bool)

(declare-fun tp!253983 () Bool)

(declare-fun mapRes!5898 () Bool)

(assert (=> b!772979 (= e!498415 (and tp!253983 mapRes!5898))))

(declare-fun condMapEmpty!5899 () Bool)

(declare-fun mapDefault!5897 () List!8659)

(assert (=> b!772979 (= condMapEmpty!5899 (= (arr!1895 (_values!1487 (v!18774 (underlying!2599 (v!18775 (underlying!2600 (cache!1567 cacheFindLongestMatch!134))))))) ((as const (Array (_ BitVec 32) List!8659)) mapDefault!5897)))))

(declare-fun b!772980 () Bool)

(declare-fun res!338523 () Bool)

(declare-fun e!498424 () Bool)

(assert (=> b!772980 (=> (not res!338523) (not e!498424))))

(declare-fun valid!976 (CacheFindLongestMatch!340) Bool)

(assert (=> b!772980 (= res!338523 (valid!976 cacheFindLongestMatch!134))))

(declare-fun e!498412 () Bool)

(declare-fun e!498431 () Bool)

(declare-fun e!498417 () Bool)

(declare-fun b!772981 () Bool)

(declare-fun inv!10977 (BalanceConc!5800) Bool)

(assert (=> b!772981 (= e!498431 (and e!498412 (inv!10977 (totalInput!2133 cacheFindLongestMatch!134)) e!498417))))

(declare-fun b!772982 () Bool)

(declare-fun tp!253993 () Bool)

(declare-fun inv!10978 (Conc!2894) Bool)

(assert (=> b!772982 (= e!498417 (and (inv!10978 (c!130320 (totalInput!2133 cacheFindLongestMatch!134))) tp!253993))))

(declare-fun e!498406 () Bool)

(declare-fun e!498428 () Bool)

(assert (=> b!772983 (= e!498406 (and e!498428 tp!253992))))

(declare-fun b!772984 () Bool)

(declare-fun e!498426 () Bool)

(assert (=> b!772984 (= e!498424 (not e!498426))))

(declare-fun res!338527 () Bool)

(assert (=> b!772984 (=> res!338527 e!498426)))

(declare-datatypes ((List!8661 0))(
  ( (Nil!8647) (Cons!8647 (h!14048 (_ BitVec 16)) (t!91943 List!8661)) )
))
(declare-datatypes ((TokenValue!1688 0))(
  ( (FloatLiteralValue!3376 (text!12261 List!8661)) (TokenValueExt!1687 (__x!6988 Int)) (Broken!8440 (value!52499 List!8661)) (Object!1701) (End!1688) (Def!1688) (Underscore!1688) (Match!1688) (Else!1688) (Error!1688) (Case!1688) (If!1688) (Extends!1688) (Abstract!1688) (Class!1688) (Val!1688) (DelimiterValue!3376 (del!1748 List!8661)) (KeywordValue!1694 (value!52500 List!8661)) (CommentValue!3376 (value!52501 List!8661)) (WhitespaceValue!3376 (value!52502 List!8661)) (IndentationValue!1688 (value!52503 List!8661)) (String!10193) (Int32!1688) (Broken!8441 (value!52504 List!8661)) (Boolean!1689) (Unit!13132) (OperatorValue!1691 (op!1748 List!8661)) (IdentifierValue!3376 (value!52505 List!8661)) (IdentifierValue!3377 (value!52506 List!8661)) (WhitespaceValue!3377 (value!52507 List!8661)) (True!3376) (False!3376) (Broken!8442 (value!52508 List!8661)) (Broken!8443 (value!52509 List!8661)) (True!3377) (RightBrace!1688) (RightBracket!1688) (Colon!1688) (Null!1688) (Comma!1688) (LeftBracket!1688) (False!3377) (LeftBrace!1688) (ImaginaryLiteralValue!1688 (text!12262 List!8661)) (StringLiteralValue!5064 (value!52510 List!8661)) (EOFValue!1688 (value!52511 List!8661)) (IdentValue!1688 (value!52512 List!8661)) (DelimiterValue!3377 (value!52513 List!8661)) (DedentValue!1688 (value!52514 List!8661)) (NewLineValue!1688 (value!52515 List!8661)) (IntegerValue!5064 (value!52516 (_ BitVec 32)) (text!12263 List!8661)) (IntegerValue!5065 (value!52517 Int) (text!12264 List!8661)) (Times!1688) (Or!1688) (Equal!1688) (Minus!1688) (Broken!8444 (value!52518 List!8661)) (And!1688) (Div!1688) (LessEqual!1688) (Mod!1688) (Concat!3686) (Not!1688) (Plus!1688) (SpaceValue!1688 (value!52519 List!8661)) (IntegerValue!5066 (value!52520 Int) (text!12265 List!8661)) (StringLiteralValue!5065 (text!12266 List!8661)) (FloatLiteralValue!3377 (text!12267 List!8661)) (BytesLiteralValue!1688 (value!52521 List!8661)) (CommentValue!3377 (value!52522 List!8661)) (StringLiteralValue!5066 (value!52523 List!8661)) (ErrorTokenValue!1688 (msg!1749 List!8661)) )
))
(declare-datatypes ((TokenValueInjection!3112 0))(
  ( (TokenValueInjection!3113 (toValue!2636 Int) (toChars!2495 Int)) )
))
(declare-datatypes ((String!10194 0))(
  ( (String!10195 (value!52524 String)) )
))
(declare-datatypes ((Rule!3088 0))(
  ( (Rule!3089 (regex!1644 Regex!1997) (tag!1906 String!10194) (isSeparator!1644 Bool) (transformation!1644 TokenValueInjection!3112)) )
))
(declare-datatypes ((List!8662 0))(
  ( (Nil!8648) (Cons!8648 (h!14049 Rule!3088) (t!91944 List!8662)) )
))
(declare-fun rulesArg!343 () List!8662)

(get-info :version)

(assert (=> b!772984 (= res!338527 (or (and ((_ is Cons!8648) rulesArg!343) ((_ is Nil!8648) (t!91944 rulesArg!343))) (not ((_ is Cons!8648) rulesArg!343))))))

(declare-fun lt!313988 () List!8660)

(declare-fun isPrefix!997 (List!8660 List!8660) Bool)

(assert (=> b!772984 (isPrefix!997 lt!313988 lt!313988)))

(declare-datatypes ((Unit!13133 0))(
  ( (Unit!13134) )
))
(declare-fun lt!313985 () Unit!13133)

(declare-fun lemmaIsPrefixRefl!708 (List!8660 List!8660) Unit!13133)

(assert (=> b!772984 (= lt!313985 (lemmaIsPrefixRefl!708 lt!313988 lt!313988))))

(declare-fun b!772985 () Bool)

(declare-fun res!338529 () Bool)

(assert (=> b!772985 (=> (not res!338529) (not e!498424))))

(declare-fun totalInput!472 () BalanceConc!5800)

(assert (=> b!772985 (= res!338529 (= (totalInput!2133 cacheFindLongestMatch!134) totalInput!472))))

(declare-fun res!338528 () Bool)

(declare-fun e!498429 () Bool)

(assert (=> start!71628 (=> (not res!338528) (not e!498429))))

(declare-datatypes ((LexerInterface!1446 0))(
  ( (LexerInterfaceExt!1443 (__x!6989 Int)) (Lexer!1444) )
))
(declare-fun thiss!15653 () LexerInterface!1446)

(assert (=> start!71628 (= res!338528 ((_ is Lexer!1444) thiss!15653))))

(assert (=> start!71628 e!498429))

(declare-fun e!498427 () Bool)

(assert (=> start!71628 e!498427))

(declare-fun input!1432 () BalanceConc!5800)

(declare-fun e!498410 () Bool)

(assert (=> start!71628 (and (inv!10977 input!1432) e!498410)))

(declare-fun inv!10979 (CacheFindLongestMatch!340) Bool)

(assert (=> start!71628 (and (inv!10979 cacheFindLongestMatch!134) e!498431)))

(assert (=> start!71628 true))

(declare-datatypes ((tuple2!10128 0))(
  ( (tuple2!10129 (_1!5849 Context!798) (_2!5849 C!4596)) )
))
(declare-datatypes ((tuple2!10130 0))(
  ( (tuple2!10131 (_1!5850 tuple2!10128) (_2!5850 (InoxSet Context!798))) )
))
(declare-datatypes ((List!8663 0))(
  ( (Nil!8649) (Cons!8649 (h!14050 tuple2!10130) (t!91945 List!8663)) )
))
(declare-datatypes ((array!4255 0))(
  ( (array!4256 (arr!1897 (Array (_ BitVec 32) List!8663)) (size!7029 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2418 0))(
  ( (LongMapFixedSize!2419 (defaultEntry!1565 Int) (mask!3092 (_ BitVec 32)) (extraKeys!1456 (_ BitVec 32)) (zeroValue!1466 List!8663) (minValue!1466 List!8663) (_size!2527 (_ BitVec 32)) (_keys!1503 array!4253) (_values!1488 array!4255) (_vacant!1270 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!4777 0))(
  ( (Cell!4778 (v!18776 LongMapFixedSize!2418)) )
))
(declare-datatypes ((MutLongMap!1209 0))(
  ( (LongMap!1209 (underlying!2601 Cell!4777)) (MutLongMapExt!1208 (__x!6990 Int)) )
))
(declare-datatypes ((Cell!4779 0))(
  ( (Cell!4780 (v!18777 MutLongMap!1209)) )
))
(declare-datatypes ((Hashable!1181 0))(
  ( (HashableExt!1180 (__x!6991 Int)) )
))
(declare-datatypes ((MutableMap!1181 0))(
  ( (MutableMapExt!1180 (__x!6992 Int)) (HashMap!1181 (underlying!2602 Cell!4779) (hashF!3089 Hashable!1181) (_size!2528 (_ BitVec 32)) (defaultValue!1332 Int)) )
))
(declare-datatypes ((CacheUp!670 0))(
  ( (CacheUp!671 (cache!1568 MutableMap!1181)) )
))
(declare-fun cacheUp!653 () CacheUp!670)

(declare-fun e!498409 () Bool)

(declare-fun inv!10980 (CacheUp!670) Bool)

(assert (=> start!71628 (and (inv!10980 cacheUp!653) e!498409)))

(declare-fun e!498425 () Bool)

(assert (=> start!71628 (and (inv!10977 totalInput!472) e!498425)))

(declare-datatypes ((tuple3!1004 0))(
  ( (tuple3!1005 (_1!5851 Regex!1997) (_2!5851 Context!798) (_3!785 C!4596)) )
))
(declare-datatypes ((tuple2!10132 0))(
  ( (tuple2!10133 (_1!5852 tuple3!1004) (_2!5852 (InoxSet Context!798))) )
))
(declare-datatypes ((List!8664 0))(
  ( (Nil!8650) (Cons!8650 (h!14051 tuple2!10132) (t!91946 List!8664)) )
))
(declare-datatypes ((array!4257 0))(
  ( (array!4258 (arr!1898 (Array (_ BitVec 32) List!8664)) (size!7030 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2420 0))(
  ( (LongMapFixedSize!2421 (defaultEntry!1566 Int) (mask!3093 (_ BitVec 32)) (extraKeys!1457 (_ BitVec 32)) (zeroValue!1467 List!8664) (minValue!1467 List!8664) (_size!2529 (_ BitVec 32)) (_keys!1504 array!4253) (_values!1489 array!4257) (_vacant!1271 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!4781 0))(
  ( (Cell!4782 (v!18778 LongMapFixedSize!2420)) )
))
(declare-datatypes ((MutLongMap!1210 0))(
  ( (LongMap!1210 (underlying!2603 Cell!4781)) (MutLongMapExt!1209 (__x!6993 Int)) )
))
(declare-datatypes ((Cell!4783 0))(
  ( (Cell!4784 (v!18779 MutLongMap!1210)) )
))
(declare-datatypes ((Hashable!1182 0))(
  ( (HashableExt!1181 (__x!6994 Int)) )
))
(declare-datatypes ((MutableMap!1182 0))(
  ( (MutableMapExt!1181 (__x!6995 Int)) (HashMap!1182 (underlying!2604 Cell!4783) (hashF!3090 Hashable!1182) (_size!2530 (_ BitVec 32)) (defaultValue!1333 Int)) )
))
(declare-datatypes ((CacheDown!676 0))(
  ( (CacheDown!677 (cache!1569 MutableMap!1182)) )
))
(declare-fun cacheDown!666 () CacheDown!676)

(declare-fun e!498420 () Bool)

(declare-fun inv!10981 (CacheDown!676) Bool)

(assert (=> start!71628 (and (inv!10981 cacheDown!666) e!498420)))

(declare-fun b!772986 () Bool)

(declare-fun res!338524 () Bool)

(assert (=> b!772986 (=> (not res!338524) (not e!498424))))

(declare-fun valid!977 (CacheDown!676) Bool)

(assert (=> b!772986 (= res!338524 (valid!977 cacheDown!666))))

(declare-fun b!772987 () Bool)

(assert (=> b!772987 (= e!498409 e!498406)))

(declare-fun mapIsEmpty!5897 () Bool)

(declare-fun mapRes!5899 () Bool)

(assert (=> mapIsEmpty!5897 mapRes!5899))

(declare-fun b!772988 () Bool)

(declare-fun e!498432 () Bool)

(declare-fun e!498423 () Bool)

(declare-fun lt!313989 () MutLongMap!1210)

(assert (=> b!772988 (= e!498432 (and e!498423 ((_ is LongMap!1210) lt!313989)))))

(assert (=> b!772988 (= lt!313989 (v!18779 (underlying!2604 (cache!1569 cacheDown!666))))))

(declare-fun b!772989 () Bool)

(declare-fun e!498416 () Bool)

(assert (=> b!772989 (= e!498420 e!498416)))

(declare-fun mapIsEmpty!5898 () Bool)

(declare-fun mapRes!5897 () Bool)

(assert (=> mapIsEmpty!5898 mapRes!5897))

(declare-fun tp!253990 () Bool)

(declare-fun e!498433 () Bool)

(declare-fun tp!253997 () Bool)

(declare-fun e!498418 () Bool)

(declare-fun array_inv!1378 (array!4255) Bool)

(assert (=> b!772990 (= e!498418 (and tp!253981 tp!253990 tp!253997 (array_inv!1376 (_keys!1503 (v!18776 (underlying!2601 (v!18777 (underlying!2602 (cache!1568 cacheUp!653))))))) (array_inv!1378 (_values!1488 (v!18776 (underlying!2601 (v!18777 (underlying!2602 (cache!1568 cacheUp!653))))))) e!498433))))

(declare-fun b!772991 () Bool)

(declare-fun res!338530 () Bool)

(assert (=> b!772991 (=> (not res!338530) (not e!498429))))

(declare-fun isEmpty!5226 (List!8662) Bool)

(assert (=> b!772991 (= res!338530 (not (isEmpty!5226 rulesArg!343)))))

(declare-fun b!772992 () Bool)

(assert (=> b!772992 (= e!498429 e!498424)))

(declare-fun res!338525 () Bool)

(assert (=> b!772992 (=> (not res!338525) (not e!498424))))

(declare-fun isSuffix!223 (List!8660 List!8660) Bool)

(declare-fun list!3446 (BalanceConc!5800) List!8660)

(assert (=> b!772992 (= res!338525 (isSuffix!223 lt!313988 (list!3446 totalInput!472)))))

(assert (=> b!772992 (= lt!313988 (list!3446 input!1432))))

(declare-fun b!772993 () Bool)

(declare-fun e!498405 () Bool)

(declare-fun e!498422 () Bool)

(assert (=> b!772993 (= e!498405 e!498422)))

(declare-fun mapIsEmpty!5899 () Bool)

(assert (=> mapIsEmpty!5899 mapRes!5898))

(declare-fun b!772994 () Bool)

(declare-fun e!498411 () Bool)

(declare-fun tp!253987 () Bool)

(assert (=> b!772994 (= e!498411 (and tp!253987 mapRes!5897))))

(declare-fun condMapEmpty!5898 () Bool)

(declare-fun mapDefault!5898 () List!8664)

(assert (=> b!772994 (= condMapEmpty!5898 (= (arr!1898 (_values!1489 (v!18778 (underlying!2603 (v!18779 (underlying!2604 (cache!1569 cacheDown!666))))))) ((as const (Array (_ BitVec 32) List!8664)) mapDefault!5898)))))

(assert (=> b!772995 (= e!498416 (and e!498432 tp!253985))))

(declare-fun b!772996 () Bool)

(declare-fun res!338531 () Bool)

(assert (=> b!772996 (=> (not res!338531) (not e!498429))))

(declare-fun rulesValidInductive!588 (LexerInterface!1446 List!8662) Bool)

(assert (=> b!772996 (= res!338531 (rulesValidInductive!588 thiss!15653 rulesArg!343))))

(declare-fun mapNonEmpty!5897 () Bool)

(declare-fun tp!253988 () Bool)

(declare-fun tp!253976 () Bool)

(assert (=> mapNonEmpty!5897 (= mapRes!5899 (and tp!253988 tp!253976))))

(declare-fun mapValue!5899 () List!8663)

(declare-fun mapKey!5899 () (_ BitVec 32))

(declare-fun mapRest!5898 () (Array (_ BitVec 32) List!8663))

(assert (=> mapNonEmpty!5897 (= (arr!1897 (_values!1488 (v!18776 (underlying!2601 (v!18777 (underlying!2602 (cache!1568 cacheUp!653))))))) (store mapRest!5898 mapKey!5899 mapValue!5899))))

(declare-fun b!772997 () Bool)

(declare-fun tp!253995 () Bool)

(assert (=> b!772997 (= e!498410 (and (inv!10978 (c!130320 input!1432)) tp!253995))))

(declare-fun e!498421 () Bool)

(declare-fun b!772998 () Bool)

(declare-fun tp!253996 () Bool)

(declare-fun inv!10976 (String!10194) Bool)

(declare-fun inv!10982 (TokenValueInjection!3112) Bool)

(assert (=> b!772998 (= e!498421 (and tp!253996 (inv!10976 (tag!1906 (h!14049 rulesArg!343))) (inv!10982 (transformation!1644 (h!14049 rulesArg!343))) e!498414))))

(declare-fun mapNonEmpty!5898 () Bool)

(declare-fun tp!253975 () Bool)

(declare-fun tp!253973 () Bool)

(assert (=> mapNonEmpty!5898 (= mapRes!5898 (and tp!253975 tp!253973))))

(declare-fun mapKey!5898 () (_ BitVec 32))

(declare-fun mapRest!5899 () (Array (_ BitVec 32) List!8659))

(declare-fun mapValue!5897 () List!8659)

(assert (=> mapNonEmpty!5898 (= (arr!1895 (_values!1487 (v!18774 (underlying!2599 (v!18775 (underlying!2600 (cache!1567 cacheFindLongestMatch!134))))))) (store mapRest!5899 mapKey!5898 mapValue!5897))))

(declare-fun tp!253986 () Bool)

(declare-fun e!498430 () Bool)

(declare-fun tp!253978 () Bool)

(declare-fun array_inv!1379 (array!4257) Bool)

(assert (=> b!772999 (= e!498430 (and tp!253991 tp!253978 tp!253986 (array_inv!1376 (_keys!1504 (v!18778 (underlying!2603 (v!18779 (underlying!2604 (cache!1569 cacheDown!666))))))) (array_inv!1379 (_values!1489 (v!18778 (underlying!2603 (v!18779 (underlying!2604 (cache!1569 cacheDown!666))))))) e!498411))))

(declare-fun b!773000 () Bool)

(declare-fun tp!253974 () Bool)

(assert (=> b!773000 (= e!498425 (and (inv!10978 (c!130320 totalInput!472)) tp!253974))))

(declare-fun b!773001 () Bool)

(declare-fun tp!253980 () Bool)

(assert (=> b!773001 (= e!498433 (and tp!253980 mapRes!5899))))

(declare-fun condMapEmpty!5897 () Bool)

(declare-fun mapDefault!5899 () List!8663)

(assert (=> b!773001 (= condMapEmpty!5897 (= (arr!1897 (_values!1488 (v!18776 (underlying!2601 (v!18777 (underlying!2602 (cache!1568 cacheUp!653))))))) ((as const (Array (_ BitVec 32) List!8663)) mapDefault!5899)))))

(declare-fun b!773002 () Bool)

(declare-fun e!498407 () Bool)

(assert (=> b!773002 (= e!498407 e!498430)))

(declare-fun b!773003 () Bool)

(assert (=> b!773003 (= e!498423 e!498407)))

(declare-fun b!773004 () Bool)

(declare-fun e!498402 () Bool)

(declare-fun e!498408 () Bool)

(declare-fun lt!313987 () MutLongMap!1208)

(assert (=> b!773004 (= e!498402 (and e!498408 ((_ is LongMap!1208) lt!313987)))))

(assert (=> b!773004 (= lt!313987 (v!18775 (underlying!2600 (cache!1567 cacheFindLongestMatch!134))))))

(declare-fun b!773005 () Bool)

(declare-fun e!498400 () Bool)

(assert (=> b!773005 (= e!498408 e!498400)))

(declare-fun b!773006 () Bool)

(declare-fun lt!313984 () MutLongMap!1209)

(assert (=> b!773006 (= e!498428 (and e!498405 ((_ is LongMap!1209) lt!313984)))))

(assert (=> b!773006 (= lt!313984 (v!18777 (underlying!2602 (cache!1568 cacheUp!653))))))

(assert (=> b!773007 (= e!498412 (and e!498402 tp!253972))))

(declare-fun b!773008 () Bool)

(declare-fun res!338526 () Bool)

(assert (=> b!773008 (=> (not res!338526) (not e!498424))))

(declare-fun valid!978 (CacheUp!670) Bool)

(assert (=> b!773008 (= res!338526 (valid!978 cacheUp!653))))

(declare-fun b!773009 () Bool)

(assert (=> b!773009 (= e!498400 e!498403)))

(declare-fun b!773010 () Bool)

(declare-fun tp!253977 () Bool)

(assert (=> b!773010 (= e!498427 (and e!498421 tp!253977))))

(declare-fun b!773011 () Bool)

(declare-fun size!7031 (List!8662) Int)

(assert (=> b!773011 (= e!498426 (< (size!7031 (t!91944 rulesArg!343)) (size!7031 rulesArg!343)))))

(declare-datatypes ((Token!2958 0))(
  ( (Token!2959 (value!52525 TokenValue!1688) (rule!2769 Rule!3088) (size!7032 Int) (originalCharacters!1904 List!8660)) )
))
(declare-datatypes ((tuple2!10134 0))(
  ( (tuple2!10135 (_1!5853 Token!2958) (_2!5853 BalanceConc!5800)) )
))
(declare-datatypes ((Option!1878 0))(
  ( (None!1877) (Some!1877 (v!18780 tuple2!10134)) )
))
(declare-datatypes ((tuple4!566 0))(
  ( (tuple4!567 (_1!5854 Option!1878) (_2!5854 CacheUp!670) (_3!786 CacheDown!676) (_4!283 CacheFindLongestMatch!340)) )
))
(declare-fun lt!313986 () tuple4!566)

(declare-fun maxPrefixOneRuleZipperSequenceV2Mem!69 (LexerInterface!1446 Rule!3088 BalanceConc!5800 BalanceConc!5800 CacheUp!670 CacheDown!676 CacheFindLongestMatch!340) tuple4!566)

(assert (=> b!773011 (= lt!313986 (maxPrefixOneRuleZipperSequenceV2Mem!69 thiss!15653 (h!14049 rulesArg!343) input!1432 totalInput!472 cacheUp!653 cacheDown!666 cacheFindLongestMatch!134))))

(declare-fun mapNonEmpty!5899 () Bool)

(declare-fun tp!253998 () Bool)

(declare-fun tp!253994 () Bool)

(assert (=> mapNonEmpty!5899 (= mapRes!5897 (and tp!253998 tp!253994))))

(declare-fun mapKey!5897 () (_ BitVec 32))

(declare-fun mapRest!5897 () (Array (_ BitVec 32) List!8664))

(declare-fun mapValue!5898 () List!8664)

(assert (=> mapNonEmpty!5899 (= (arr!1898 (_values!1489 (v!18778 (underlying!2603 (v!18779 (underlying!2604 (cache!1569 cacheDown!666))))))) (store mapRest!5897 mapKey!5897 mapValue!5898))))

(declare-fun b!773012 () Bool)

(assert (=> b!773012 (= e!498422 e!498418)))

(assert (= (and start!71628 res!338528) b!772996))

(assert (= (and b!772996 res!338531) b!772991))

(assert (= (and b!772991 res!338530) b!772992))

(assert (= (and b!772992 res!338525) b!773008))

(assert (= (and b!773008 res!338526) b!772986))

(assert (= (and b!772986 res!338524) b!772980))

(assert (= (and b!772980 res!338523) b!772985))

(assert (= (and b!772985 res!338529) b!772984))

(assert (= (and b!772984 (not res!338527)) b!773011))

(assert (= b!772998 b!772977))

(assert (= b!773010 b!772998))

(assert (= (and start!71628 ((_ is Cons!8648) rulesArg!343)) b!773010))

(assert (= start!71628 b!772997))

(assert (= (and b!772979 condMapEmpty!5899) mapIsEmpty!5899))

(assert (= (and b!772979 (not condMapEmpty!5899)) mapNonEmpty!5898))

(assert (= b!772978 b!772979))

(assert (= b!773009 b!772978))

(assert (= b!773005 b!773009))

(assert (= (and b!773004 ((_ is LongMap!1208) (v!18775 (underlying!2600 (cache!1567 cacheFindLongestMatch!134))))) b!773005))

(assert (= b!773007 b!773004))

(assert (= (and b!772981 ((_ is HashMap!1180) (cache!1567 cacheFindLongestMatch!134))) b!773007))

(assert (= b!772981 b!772982))

(assert (= start!71628 b!772981))

(assert (= (and b!773001 condMapEmpty!5897) mapIsEmpty!5897))

(assert (= (and b!773001 (not condMapEmpty!5897)) mapNonEmpty!5897))

(assert (= b!772990 b!773001))

(assert (= b!773012 b!772990))

(assert (= b!772993 b!773012))

(assert (= (and b!773006 ((_ is LongMap!1209) (v!18777 (underlying!2602 (cache!1568 cacheUp!653))))) b!772993))

(assert (= b!772983 b!773006))

(assert (= (and b!772987 ((_ is HashMap!1181) (cache!1568 cacheUp!653))) b!772983))

(assert (= start!71628 b!772987))

(assert (= start!71628 b!773000))

(assert (= (and b!772994 condMapEmpty!5898) mapIsEmpty!5898))

(assert (= (and b!772994 (not condMapEmpty!5898)) mapNonEmpty!5899))

(assert (= b!772999 b!772994))

(assert (= b!773002 b!772999))

(assert (= b!773003 b!773002))

(assert (= (and b!772988 ((_ is LongMap!1210) (v!18779 (underlying!2604 (cache!1569 cacheDown!666))))) b!773003))

(assert (= b!772995 b!772988))

(assert (= (and b!772989 ((_ is HashMap!1182) (cache!1569 cacheDown!666))) b!772995))

(assert (= start!71628 b!772989))

(declare-fun m!1040999 () Bool)

(assert (=> b!772991 m!1040999))

(declare-fun m!1041001 () Bool)

(assert (=> b!773008 m!1041001))

(declare-fun m!1041003 () Bool)

(assert (=> b!772984 m!1041003))

(declare-fun m!1041005 () Bool)

(assert (=> b!772984 m!1041005))

(declare-fun m!1041007 () Bool)

(assert (=> mapNonEmpty!5899 m!1041007))

(declare-fun m!1041009 () Bool)

(assert (=> b!772982 m!1041009))

(declare-fun m!1041011 () Bool)

(assert (=> b!772996 m!1041011))

(declare-fun m!1041013 () Bool)

(assert (=> b!772986 m!1041013))

(declare-fun m!1041015 () Bool)

(assert (=> b!773000 m!1041015))

(declare-fun m!1041017 () Bool)

(assert (=> b!772980 m!1041017))

(declare-fun m!1041019 () Bool)

(assert (=> b!772978 m!1041019))

(declare-fun m!1041021 () Bool)

(assert (=> b!772978 m!1041021))

(declare-fun m!1041023 () Bool)

(assert (=> mapNonEmpty!5897 m!1041023))

(declare-fun m!1041025 () Bool)

(assert (=> mapNonEmpty!5898 m!1041025))

(declare-fun m!1041027 () Bool)

(assert (=> b!772998 m!1041027))

(declare-fun m!1041029 () Bool)

(assert (=> b!772998 m!1041029))

(declare-fun m!1041031 () Bool)

(assert (=> b!772999 m!1041031))

(declare-fun m!1041033 () Bool)

(assert (=> b!772999 m!1041033))

(declare-fun m!1041035 () Bool)

(assert (=> b!772981 m!1041035))

(declare-fun m!1041037 () Bool)

(assert (=> b!773011 m!1041037))

(declare-fun m!1041039 () Bool)

(assert (=> b!773011 m!1041039))

(declare-fun m!1041041 () Bool)

(assert (=> b!773011 m!1041041))

(declare-fun m!1041043 () Bool)

(assert (=> b!772992 m!1041043))

(assert (=> b!772992 m!1041043))

(declare-fun m!1041045 () Bool)

(assert (=> b!772992 m!1041045))

(declare-fun m!1041047 () Bool)

(assert (=> b!772992 m!1041047))

(declare-fun m!1041049 () Bool)

(assert (=> start!71628 m!1041049))

(declare-fun m!1041051 () Bool)

(assert (=> start!71628 m!1041051))

(declare-fun m!1041053 () Bool)

(assert (=> start!71628 m!1041053))

(declare-fun m!1041055 () Bool)

(assert (=> start!71628 m!1041055))

(declare-fun m!1041057 () Bool)

(assert (=> start!71628 m!1041057))

(declare-fun m!1041059 () Bool)

(assert (=> b!772990 m!1041059))

(declare-fun m!1041061 () Bool)

(assert (=> b!772990 m!1041061))

(declare-fun m!1041063 () Bool)

(assert (=> b!772997 m!1041063))

(check-sat (not mapNonEmpty!5897) (not b_next!24607) (not b!772981) b_and!72031 (not b_next!24613) (not b!773008) (not b!773011) (not b!772980) (not b_next!24605) (not b!773010) (not start!71628) (not b_next!24603) (not b!772979) b_and!72025 b_and!72019 b_and!72029 (not b_next!24609) (not b!772997) (not b!772982) (not b!772990) (not b_next!24611) (not b!772996) (not b!772991) b_and!72021 (not b!773001) (not mapNonEmpty!5899) (not b_next!24601) (not b!772992) (not b!772994) (not mapNonEmpty!5898) b_and!72017 (not b!773000) (not b_next!24615) (not b!772984) (not b!772999) b_and!72023 (not b!772998) b_and!72027 (not b!772986) (not b!772978))
(check-sat (not b_next!24603) (not b_next!24607) b_and!72031 (not b_next!24613) (not b_next!24611) b_and!72021 (not b_next!24601) (not b_next!24605) b_and!72017 (not b_next!24615) b_and!72023 b_and!72027 b_and!72025 b_and!72019 b_and!72029 (not b_next!24609))
(get-model)

(declare-fun d!251834 () Bool)

(declare-fun lt!313992 () Int)

(assert (=> d!251834 (>= lt!313992 0)))

(declare-fun e!498436 () Int)

(assert (=> d!251834 (= lt!313992 e!498436)))

(declare-fun c!130323 () Bool)

(assert (=> d!251834 (= c!130323 ((_ is Nil!8648) (t!91944 rulesArg!343)))))

(assert (=> d!251834 (= (size!7031 (t!91944 rulesArg!343)) lt!313992)))

(declare-fun b!773017 () Bool)

(assert (=> b!773017 (= e!498436 0)))

(declare-fun b!773018 () Bool)

(assert (=> b!773018 (= e!498436 (+ 1 (size!7031 (t!91944 (t!91944 rulesArg!343)))))))

(assert (= (and d!251834 c!130323) b!773017))

(assert (= (and d!251834 (not c!130323)) b!773018))

(declare-fun m!1041065 () Bool)

(assert (=> b!773018 m!1041065))

(assert (=> b!773011 d!251834))

(declare-fun d!251836 () Bool)

(declare-fun lt!313993 () Int)

(assert (=> d!251836 (>= lt!313993 0)))

(declare-fun e!498437 () Int)

(assert (=> d!251836 (= lt!313993 e!498437)))

(declare-fun c!130324 () Bool)

(assert (=> d!251836 (= c!130324 ((_ is Nil!8648) rulesArg!343))))

(assert (=> d!251836 (= (size!7031 rulesArg!343) lt!313993)))

(declare-fun b!773019 () Bool)

(assert (=> b!773019 (= e!498437 0)))

(declare-fun b!773020 () Bool)

(assert (=> b!773020 (= e!498437 (+ 1 (size!7031 (t!91944 rulesArg!343))))))

(assert (= (and d!251836 c!130324) b!773019))

(assert (= (and d!251836 (not c!130324)) b!773020))

(assert (=> b!773020 m!1041037))

(assert (=> b!773011 d!251836))

(declare-fun b!773035 () Bool)

(declare-fun res!338550 () Bool)

(declare-fun e!498445 () Bool)

(assert (=> b!773035 (=> (not res!338550) (not e!498445))))

(declare-fun lt!314011 () tuple4!566)

(assert (=> b!773035 (= res!338550 (valid!977 (_3!786 lt!314011)))))

(declare-fun b!773037 () Bool)

(declare-fun res!338546 () Bool)

(assert (=> b!773037 (=> (not res!338546) (not e!498445))))

(assert (=> b!773037 (= res!338546 (valid!978 (_2!5854 lt!314011)))))

(declare-fun b!773038 () Bool)

(declare-fun res!338548 () Bool)

(assert (=> b!773038 (=> (not res!338548) (not e!498445))))

(assert (=> b!773038 (= res!338548 (valid!976 (_4!283 lt!314011)))))

(declare-fun b!773039 () Bool)

(assert (=> b!773039 (= e!498445 (= (totalInput!2133 (_4!283 lt!314011)) totalInput!472))))

(declare-fun b!773040 () Bool)

(declare-fun e!498444 () Bool)

(declare-fun lt!314006 () List!8660)

(declare-fun matchR!734 (Regex!1997 List!8660) Bool)

(declare-datatypes ((tuple2!10136 0))(
  ( (tuple2!10137 (_1!5855 List!8660) (_2!5855 List!8660)) )
))
(declare-fun findLongestMatchInner!255 (Regex!1997 List!8660 Int List!8660 List!8660 Int) tuple2!10136)

(declare-fun size!7033 (List!8660) Int)

(assert (=> b!773040 (= e!498444 (matchR!734 (regex!1644 (h!14049 rulesArg!343)) (_1!5855 (findLongestMatchInner!255 (regex!1644 (h!14049 rulesArg!343)) Nil!8646 (size!7033 Nil!8646) lt!314006 lt!314006 (size!7033 lt!314006)))))))

(declare-fun b!773041 () Bool)

(declare-fun e!498446 () Option!1878)

(declare-datatypes ((tuple2!10138 0))(
  ( (tuple2!10139 (_1!5856 BalanceConc!5800) (_2!5856 BalanceConc!5800)) )
))
(declare-datatypes ((tuple4!568 0))(
  ( (tuple4!569 (_1!5857 tuple2!10138) (_2!5857 CacheUp!670) (_3!787 CacheDown!676) (_4!284 CacheFindLongestMatch!340)) )
))
(declare-fun lt!314008 () tuple4!568)

(declare-fun apply!1782 (TokenValueInjection!3112 BalanceConc!5800) TokenValue!1688)

(declare-fun size!7034 (BalanceConc!5800) Int)

(assert (=> b!773041 (= e!498446 (Some!1877 (tuple2!10135 (Token!2959 (apply!1782 (transformation!1644 (h!14049 rulesArg!343)) (_1!5856 (_1!5857 lt!314008))) (h!14049 rulesArg!343) (size!7034 (_1!5856 (_1!5857 lt!314008))) (list!3446 (_1!5856 (_1!5857 lt!314008)))) (_2!5856 (_1!5857 lt!314008)))))))

(assert (=> b!773041 (= lt!314006 (list!3446 input!1432))))

(declare-fun lt!314010 () Unit!13133)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!239 (Regex!1997 List!8660) Unit!13133)

(assert (=> b!773041 (= lt!314010 (longestMatchIsAcceptedByMatchOrIsEmpty!239 (regex!1644 (h!14049 rulesArg!343)) lt!314006))))

(declare-fun res!338549 () Bool)

(declare-fun isEmpty!5227 (List!8660) Bool)

(assert (=> b!773041 (= res!338549 (isEmpty!5227 (_1!5855 (findLongestMatchInner!255 (regex!1644 (h!14049 rulesArg!343)) Nil!8646 (size!7033 Nil!8646) lt!314006 lt!314006 (size!7033 lt!314006)))))))

(assert (=> b!773041 (=> res!338549 e!498444)))

(assert (=> b!773041 e!498444))

(declare-fun lt!314007 () Unit!13133)

(assert (=> b!773041 (= lt!314007 lt!314010)))

(declare-fun lt!314009 () Unit!13133)

(declare-fun lemmaSemiInverse!309 (TokenValueInjection!3112 BalanceConc!5800) Unit!13133)

(assert (=> b!773041 (= lt!314009 (lemmaSemiInverse!309 (transformation!1644 (h!14049 rulesArg!343)) (_1!5856 (_1!5857 lt!314008))))))

(declare-fun b!773036 () Bool)

(assert (=> b!773036 (= e!498446 None!1877)))

(declare-fun d!251838 () Bool)

(assert (=> d!251838 e!498445))

(declare-fun res!338547 () Bool)

(assert (=> d!251838 (=> (not res!338547) (not e!498445))))

(declare-fun maxPrefixOneRuleZipperSequenceV2!82 (LexerInterface!1446 Rule!3088 BalanceConc!5800 BalanceConc!5800) Option!1878)

(assert (=> d!251838 (= res!338547 (= (_1!5854 lt!314011) (maxPrefixOneRuleZipperSequenceV2!82 thiss!15653 (h!14049 rulesArg!343) input!1432 totalInput!472)))))

(assert (=> d!251838 (= lt!314011 (tuple4!567 e!498446 (_2!5857 lt!314008) (_3!787 lt!314008) (_4!284 lt!314008)))))

(declare-fun c!130327 () Bool)

(declare-fun isEmpty!5228 (BalanceConc!5800) Bool)

(assert (=> d!251838 (= c!130327 (isEmpty!5228 (_1!5856 (_1!5857 lt!314008))))))

(declare-fun findLongestMatchWithZipperSequenceV2Mem!34 (Regex!1997 BalanceConc!5800 BalanceConc!5800 CacheUp!670 CacheDown!676 CacheFindLongestMatch!340) tuple4!568)

(assert (=> d!251838 (= lt!314008 (findLongestMatchWithZipperSequenceV2Mem!34 (regex!1644 (h!14049 rulesArg!343)) input!1432 totalInput!472 cacheUp!653 cacheDown!666 cacheFindLongestMatch!134))))

(declare-fun ruleValid!507 (LexerInterface!1446 Rule!3088) Bool)

(assert (=> d!251838 (ruleValid!507 thiss!15653 (h!14049 rulesArg!343))))

(assert (=> d!251838 (= (maxPrefixOneRuleZipperSequenceV2Mem!69 thiss!15653 (h!14049 rulesArg!343) input!1432 totalInput!472 cacheUp!653 cacheDown!666 cacheFindLongestMatch!134) lt!314011)))

(assert (= (and d!251838 c!130327) b!773036))

(assert (= (and d!251838 (not c!130327)) b!773041))

(assert (= (and b!773041 (not res!338549)) b!773040))

(assert (= (and d!251838 res!338547) b!773037))

(assert (= (and b!773037 res!338546) b!773035))

(assert (= (and b!773035 res!338550) b!773038))

(assert (= (and b!773038 res!338548) b!773039))

(declare-fun m!1041067 () Bool)

(assert (=> b!773041 m!1041067))

(declare-fun m!1041069 () Bool)

(assert (=> b!773041 m!1041069))

(declare-fun m!1041071 () Bool)

(assert (=> b!773041 m!1041071))

(declare-fun m!1041073 () Bool)

(assert (=> b!773041 m!1041073))

(declare-fun m!1041075 () Bool)

(assert (=> b!773041 m!1041075))

(assert (=> b!773041 m!1041073))

(assert (=> b!773041 m!1041069))

(declare-fun m!1041077 () Bool)

(assert (=> b!773041 m!1041077))

(assert (=> b!773041 m!1041047))

(declare-fun m!1041079 () Bool)

(assert (=> b!773041 m!1041079))

(declare-fun m!1041081 () Bool)

(assert (=> b!773041 m!1041081))

(declare-fun m!1041083 () Bool)

(assert (=> b!773041 m!1041083))

(declare-fun m!1041085 () Bool)

(assert (=> d!251838 m!1041085))

(declare-fun m!1041087 () Bool)

(assert (=> d!251838 m!1041087))

(declare-fun m!1041089 () Bool)

(assert (=> d!251838 m!1041089))

(declare-fun m!1041091 () Bool)

(assert (=> d!251838 m!1041091))

(assert (=> b!773040 m!1041073))

(assert (=> b!773040 m!1041069))

(assert (=> b!773040 m!1041073))

(assert (=> b!773040 m!1041069))

(assert (=> b!773040 m!1041077))

(declare-fun m!1041093 () Bool)

(assert (=> b!773040 m!1041093))

(declare-fun m!1041095 () Bool)

(assert (=> b!773035 m!1041095))

(declare-fun m!1041097 () Bool)

(assert (=> b!773037 m!1041097))

(declare-fun m!1041099 () Bool)

(assert (=> b!773038 m!1041099))

(assert (=> b!773011 d!251838))

(declare-fun b!773051 () Bool)

(declare-fun res!338561 () Bool)

(declare-fun e!498454 () Bool)

(assert (=> b!773051 (=> (not res!338561) (not e!498454))))

(declare-fun head!1422 (List!8660) C!4596)

(assert (=> b!773051 (= res!338561 (= (head!1422 lt!313988) (head!1422 lt!313988)))))

(declare-fun d!251840 () Bool)

(declare-fun e!498455 () Bool)

(assert (=> d!251840 e!498455))

(declare-fun res!338562 () Bool)

(assert (=> d!251840 (=> res!338562 e!498455)))

(declare-fun lt!314014 () Bool)

(assert (=> d!251840 (= res!338562 (not lt!314014))))

(declare-fun e!498453 () Bool)

(assert (=> d!251840 (= lt!314014 e!498453)))

(declare-fun res!338559 () Bool)

(assert (=> d!251840 (=> res!338559 e!498453)))

(assert (=> d!251840 (= res!338559 ((_ is Nil!8646) lt!313988))))

(assert (=> d!251840 (= (isPrefix!997 lt!313988 lt!313988) lt!314014)))

(declare-fun b!773050 () Bool)

(assert (=> b!773050 (= e!498453 e!498454)))

(declare-fun res!338560 () Bool)

(assert (=> b!773050 (=> (not res!338560) (not e!498454))))

(assert (=> b!773050 (= res!338560 (not ((_ is Nil!8646) lt!313988)))))

(declare-fun b!773052 () Bool)

(declare-fun tail!980 (List!8660) List!8660)

(assert (=> b!773052 (= e!498454 (isPrefix!997 (tail!980 lt!313988) (tail!980 lt!313988)))))

(declare-fun b!773053 () Bool)

(assert (=> b!773053 (= e!498455 (>= (size!7033 lt!313988) (size!7033 lt!313988)))))

(assert (= (and d!251840 (not res!338559)) b!773050))

(assert (= (and b!773050 res!338560) b!773051))

(assert (= (and b!773051 res!338561) b!773052))

(assert (= (and d!251840 (not res!338562)) b!773053))

(declare-fun m!1041101 () Bool)

(assert (=> b!773051 m!1041101))

(assert (=> b!773051 m!1041101))

(declare-fun m!1041103 () Bool)

(assert (=> b!773052 m!1041103))

(assert (=> b!773052 m!1041103))

(assert (=> b!773052 m!1041103))

(assert (=> b!773052 m!1041103))

(declare-fun m!1041105 () Bool)

(assert (=> b!773052 m!1041105))

(declare-fun m!1041107 () Bool)

(assert (=> b!773053 m!1041107))

(assert (=> b!773053 m!1041107))

(assert (=> b!772984 d!251840))

(declare-fun d!251842 () Bool)

(assert (=> d!251842 (isPrefix!997 lt!313988 lt!313988)))

(declare-fun lt!314017 () Unit!13133)

(declare-fun choose!4879 (List!8660 List!8660) Unit!13133)

(assert (=> d!251842 (= lt!314017 (choose!4879 lt!313988 lt!313988))))

(assert (=> d!251842 (= (lemmaIsPrefixRefl!708 lt!313988 lt!313988) lt!314017)))

(declare-fun bs!166005 () Bool)

(assert (= bs!166005 d!251842))

(assert (=> bs!166005 m!1041003))

(declare-fun m!1041109 () Bool)

(assert (=> bs!166005 m!1041109))

(assert (=> b!772984 d!251842))

(declare-fun d!251844 () Bool)

(declare-fun c!130330 () Bool)

(assert (=> d!251844 (= c!130330 ((_ is Node!2894) (c!130320 totalInput!472)))))

(declare-fun e!498460 () Bool)

(assert (=> d!251844 (= (inv!10978 (c!130320 totalInput!472)) e!498460)))

(declare-fun b!773060 () Bool)

(declare-fun inv!10983 (Conc!2894) Bool)

(assert (=> b!773060 (= e!498460 (inv!10983 (c!130320 totalInput!472)))))

(declare-fun b!773061 () Bool)

(declare-fun e!498461 () Bool)

(assert (=> b!773061 (= e!498460 e!498461)))

(declare-fun res!338565 () Bool)

(assert (=> b!773061 (= res!338565 (not ((_ is Leaf!4246) (c!130320 totalInput!472))))))

(assert (=> b!773061 (=> res!338565 e!498461)))

(declare-fun b!773062 () Bool)

(declare-fun inv!10984 (Conc!2894) Bool)

(assert (=> b!773062 (= e!498461 (inv!10984 (c!130320 totalInput!472)))))

(assert (= (and d!251844 c!130330) b!773060))

(assert (= (and d!251844 (not c!130330)) b!773061))

(assert (= (and b!773061 (not res!338565)) b!773062))

(declare-fun m!1041111 () Bool)

(assert (=> b!773060 m!1041111))

(declare-fun m!1041113 () Bool)

(assert (=> b!773062 m!1041113))

(assert (=> b!773000 d!251844))

(declare-fun d!251846 () Bool)

(declare-fun e!498464 () Bool)

(assert (=> d!251846 e!498464))

(declare-fun res!338568 () Bool)

(assert (=> d!251846 (=> res!338568 e!498464)))

(declare-fun lt!314020 () Bool)

(assert (=> d!251846 (= res!338568 (not lt!314020))))

(declare-fun drop!399 (List!8660 Int) List!8660)

(assert (=> d!251846 (= lt!314020 (= lt!313988 (drop!399 (list!3446 totalInput!472) (- (size!7033 (list!3446 totalInput!472)) (size!7033 lt!313988)))))))

(assert (=> d!251846 (= (isSuffix!223 lt!313988 (list!3446 totalInput!472)) lt!314020)))

(declare-fun b!773065 () Bool)

(assert (=> b!773065 (= e!498464 (>= (size!7033 (list!3446 totalInput!472)) (size!7033 lt!313988)))))

(assert (= (and d!251846 (not res!338568)) b!773065))

(assert (=> d!251846 m!1041043))

(declare-fun m!1041115 () Bool)

(assert (=> d!251846 m!1041115))

(assert (=> d!251846 m!1041107))

(assert (=> d!251846 m!1041043))

(declare-fun m!1041117 () Bool)

(assert (=> d!251846 m!1041117))

(assert (=> b!773065 m!1041043))

(assert (=> b!773065 m!1041115))

(assert (=> b!773065 m!1041107))

(assert (=> b!772992 d!251846))

(declare-fun d!251848 () Bool)

(declare-fun list!3447 (Conc!2894) List!8660)

(assert (=> d!251848 (= (list!3446 totalInput!472) (list!3447 (c!130320 totalInput!472)))))

(declare-fun bs!166006 () Bool)

(assert (= bs!166006 d!251848))

(declare-fun m!1041119 () Bool)

(assert (=> bs!166006 m!1041119))

(assert (=> b!772992 d!251848))

(declare-fun d!251850 () Bool)

(assert (=> d!251850 (= (list!3446 input!1432) (list!3447 (c!130320 input!1432)))))

(declare-fun bs!166007 () Bool)

(assert (= bs!166007 d!251850))

(declare-fun m!1041121 () Bool)

(assert (=> bs!166007 m!1041121))

(assert (=> b!772992 d!251850))

(declare-fun d!251852 () Bool)

(assert (=> d!251852 (= (array_inv!1376 (_keys!1504 (v!18778 (underlying!2603 (v!18779 (underlying!2604 (cache!1569 cacheDown!666))))))) (bvsge (size!7028 (_keys!1504 (v!18778 (underlying!2603 (v!18779 (underlying!2604 (cache!1569 cacheDown!666))))))) #b00000000000000000000000000000000))))

(assert (=> b!772999 d!251852))

(declare-fun d!251854 () Bool)

(assert (=> d!251854 (= (array_inv!1379 (_values!1489 (v!18778 (underlying!2603 (v!18779 (underlying!2604 (cache!1569 cacheDown!666))))))) (bvsge (size!7030 (_values!1489 (v!18778 (underlying!2603 (v!18779 (underlying!2604 (cache!1569 cacheDown!666))))))) #b00000000000000000000000000000000))))

(assert (=> b!772999 d!251854))

(declare-fun d!251856 () Bool)

(assert (=> d!251856 (= (isEmpty!5226 rulesArg!343) ((_ is Nil!8648) rulesArg!343))))

(assert (=> b!772991 d!251856))

(declare-fun d!251858 () Bool)

(declare-fun c!130331 () Bool)

(assert (=> d!251858 (= c!130331 ((_ is Node!2894) (c!130320 (totalInput!2133 cacheFindLongestMatch!134))))))

(declare-fun e!498465 () Bool)

(assert (=> d!251858 (= (inv!10978 (c!130320 (totalInput!2133 cacheFindLongestMatch!134))) e!498465)))

(declare-fun b!773066 () Bool)

(assert (=> b!773066 (= e!498465 (inv!10983 (c!130320 (totalInput!2133 cacheFindLongestMatch!134))))))

(declare-fun b!773067 () Bool)

(declare-fun e!498466 () Bool)

(assert (=> b!773067 (= e!498465 e!498466)))

(declare-fun res!338569 () Bool)

(assert (=> b!773067 (= res!338569 (not ((_ is Leaf!4246) (c!130320 (totalInput!2133 cacheFindLongestMatch!134)))))))

(assert (=> b!773067 (=> res!338569 e!498466)))

(declare-fun b!773068 () Bool)

(assert (=> b!773068 (= e!498466 (inv!10984 (c!130320 (totalInput!2133 cacheFindLongestMatch!134))))))

(assert (= (and d!251858 c!130331) b!773066))

(assert (= (and d!251858 (not c!130331)) b!773067))

(assert (= (and b!773067 (not res!338569)) b!773068))

(declare-fun m!1041123 () Bool)

(assert (=> b!773066 m!1041123))

(declare-fun m!1041125 () Bool)

(assert (=> b!773068 m!1041125))

(assert (=> b!772982 d!251858))

(declare-fun d!251860 () Bool)

(assert (=> d!251860 (= (array_inv!1376 (_keys!1503 (v!18776 (underlying!2601 (v!18777 (underlying!2602 (cache!1568 cacheUp!653))))))) (bvsge (size!7028 (_keys!1503 (v!18776 (underlying!2601 (v!18777 (underlying!2602 (cache!1568 cacheUp!653))))))) #b00000000000000000000000000000000))))

(assert (=> b!772990 d!251860))

(declare-fun d!251862 () Bool)

(assert (=> d!251862 (= (array_inv!1378 (_values!1488 (v!18776 (underlying!2601 (v!18777 (underlying!2602 (cache!1568 cacheUp!653))))))) (bvsge (size!7029 (_values!1488 (v!18776 (underlying!2601 (v!18777 (underlying!2602 (cache!1568 cacheUp!653))))))) #b00000000000000000000000000000000))))

(assert (=> b!772990 d!251862))

(declare-fun d!251864 () Bool)

(declare-fun validCacheMapUp!106 (MutableMap!1181) Bool)

(assert (=> d!251864 (= (valid!978 cacheUp!653) (validCacheMapUp!106 (cache!1568 cacheUp!653)))))

(declare-fun bs!166008 () Bool)

(assert (= bs!166008 d!251864))

(declare-fun m!1041127 () Bool)

(assert (=> bs!166008 m!1041127))

(assert (=> b!773008 d!251864))

(declare-fun d!251866 () Bool)

(declare-fun isBalanced!779 (Conc!2894) Bool)

(assert (=> d!251866 (= (inv!10977 (totalInput!2133 cacheFindLongestMatch!134)) (isBalanced!779 (c!130320 (totalInput!2133 cacheFindLongestMatch!134))))))

(declare-fun bs!166009 () Bool)

(assert (= bs!166009 d!251866))

(declare-fun m!1041129 () Bool)

(assert (=> bs!166009 m!1041129))

(assert (=> b!772981 d!251866))

(declare-fun d!251868 () Bool)

(assert (=> d!251868 (= (inv!10976 (tag!1906 (h!14049 rulesArg!343))) (= (mod (str.len (value!52524 (tag!1906 (h!14049 rulesArg!343)))) 2) 0))))

(assert (=> b!772998 d!251868))

(declare-fun d!251870 () Bool)

(declare-fun res!338572 () Bool)

(declare-fun e!498469 () Bool)

(assert (=> d!251870 (=> (not res!338572) (not e!498469))))

(declare-fun semiInverseModEq!616 (Int Int) Bool)

(assert (=> d!251870 (= res!338572 (semiInverseModEq!616 (toChars!2495 (transformation!1644 (h!14049 rulesArg!343))) (toValue!2636 (transformation!1644 (h!14049 rulesArg!343)))))))

(assert (=> d!251870 (= (inv!10982 (transformation!1644 (h!14049 rulesArg!343))) e!498469)))

(declare-fun b!773071 () Bool)

(declare-fun equivClasses!591 (Int Int) Bool)

(assert (=> b!773071 (= e!498469 (equivClasses!591 (toChars!2495 (transformation!1644 (h!14049 rulesArg!343))) (toValue!2636 (transformation!1644 (h!14049 rulesArg!343)))))))

(assert (= (and d!251870 res!338572) b!773071))

(declare-fun m!1041131 () Bool)

(assert (=> d!251870 m!1041131))

(declare-fun m!1041133 () Bool)

(assert (=> b!773071 m!1041133))

(assert (=> b!772998 d!251870))

(declare-fun d!251872 () Bool)

(declare-fun validCacheMapFindLongestMatch!52 (MutableMap!1180 BalanceConc!5800) Bool)

(assert (=> d!251872 (= (valid!976 cacheFindLongestMatch!134) (validCacheMapFindLongestMatch!52 (cache!1567 cacheFindLongestMatch!134) (totalInput!2133 cacheFindLongestMatch!134)))))

(declare-fun bs!166010 () Bool)

(assert (= bs!166010 d!251872))

(declare-fun m!1041135 () Bool)

(assert (=> bs!166010 m!1041135))

(assert (=> b!772980 d!251872))

(declare-fun d!251874 () Bool)

(declare-fun c!130332 () Bool)

(assert (=> d!251874 (= c!130332 ((_ is Node!2894) (c!130320 input!1432)))))

(declare-fun e!498470 () Bool)

(assert (=> d!251874 (= (inv!10978 (c!130320 input!1432)) e!498470)))

(declare-fun b!773072 () Bool)

(assert (=> b!773072 (= e!498470 (inv!10983 (c!130320 input!1432)))))

(declare-fun b!773073 () Bool)

(declare-fun e!498471 () Bool)

(assert (=> b!773073 (= e!498470 e!498471)))

(declare-fun res!338573 () Bool)

(assert (=> b!773073 (= res!338573 (not ((_ is Leaf!4246) (c!130320 input!1432))))))

(assert (=> b!773073 (=> res!338573 e!498471)))

(declare-fun b!773074 () Bool)

(assert (=> b!773074 (= e!498471 (inv!10984 (c!130320 input!1432)))))

(assert (= (and d!251874 c!130332) b!773072))

(assert (= (and d!251874 (not c!130332)) b!773073))

(assert (= (and b!773073 (not res!338573)) b!773074))

(declare-fun m!1041137 () Bool)

(assert (=> b!773072 m!1041137))

(declare-fun m!1041139 () Bool)

(assert (=> b!773074 m!1041139))

(assert (=> b!772997 d!251874))

(declare-fun d!251876 () Bool)

(declare-fun res!338576 () Bool)

(declare-fun e!498474 () Bool)

(assert (=> d!251876 (=> (not res!338576) (not e!498474))))

(assert (=> d!251876 (= res!338576 ((_ is HashMap!1182) (cache!1569 cacheDown!666)))))

(assert (=> d!251876 (= (inv!10981 cacheDown!666) e!498474)))

(declare-fun b!773077 () Bool)

(declare-fun validCacheMapDown!106 (MutableMap!1182) Bool)

(assert (=> b!773077 (= e!498474 (validCacheMapDown!106 (cache!1569 cacheDown!666)))))

(assert (= (and d!251876 res!338576) b!773077))

(declare-fun m!1041141 () Bool)

(assert (=> b!773077 m!1041141))

(assert (=> start!71628 d!251876))

(declare-fun d!251878 () Bool)

(assert (=> d!251878 (= (inv!10977 totalInput!472) (isBalanced!779 (c!130320 totalInput!472)))))

(declare-fun bs!166011 () Bool)

(assert (= bs!166011 d!251878))

(declare-fun m!1041143 () Bool)

(assert (=> bs!166011 m!1041143))

(assert (=> start!71628 d!251878))

(declare-fun d!251880 () Bool)

(assert (=> d!251880 (= (inv!10977 input!1432) (isBalanced!779 (c!130320 input!1432)))))

(declare-fun bs!166012 () Bool)

(assert (= bs!166012 d!251880))

(declare-fun m!1041145 () Bool)

(assert (=> bs!166012 m!1041145))

(assert (=> start!71628 d!251880))

(declare-fun d!251882 () Bool)

(declare-fun res!338579 () Bool)

(declare-fun e!498477 () Bool)

(assert (=> d!251882 (=> (not res!338579) (not e!498477))))

(assert (=> d!251882 (= res!338579 ((_ is HashMap!1181) (cache!1568 cacheUp!653)))))

(assert (=> d!251882 (= (inv!10980 cacheUp!653) e!498477)))

(declare-fun b!773080 () Bool)

(assert (=> b!773080 (= e!498477 (validCacheMapUp!106 (cache!1568 cacheUp!653)))))

(assert (= (and d!251882 res!338579) b!773080))

(assert (=> b!773080 m!1041127))

(assert (=> start!71628 d!251882))

(declare-fun d!251884 () Bool)

(declare-fun res!338582 () Bool)

(declare-fun e!498480 () Bool)

(assert (=> d!251884 (=> (not res!338582) (not e!498480))))

(assert (=> d!251884 (= res!338582 ((_ is HashMap!1180) (cache!1567 cacheFindLongestMatch!134)))))

(assert (=> d!251884 (= (inv!10979 cacheFindLongestMatch!134) e!498480)))

(declare-fun b!773083 () Bool)

(assert (=> b!773083 (= e!498480 (validCacheMapFindLongestMatch!52 (cache!1567 cacheFindLongestMatch!134) (totalInput!2133 cacheFindLongestMatch!134)))))

(assert (= (and d!251884 res!338582) b!773083))

(assert (=> b!773083 m!1041135))

(assert (=> start!71628 d!251884))

(declare-fun d!251886 () Bool)

(assert (=> d!251886 (= (array_inv!1376 (_keys!1502 (v!18774 (underlying!2599 (v!18775 (underlying!2600 (cache!1567 cacheFindLongestMatch!134))))))) (bvsge (size!7028 (_keys!1502 (v!18774 (underlying!2599 (v!18775 (underlying!2600 (cache!1567 cacheFindLongestMatch!134))))))) #b00000000000000000000000000000000))))

(assert (=> b!772978 d!251886))

(declare-fun d!251888 () Bool)

(assert (=> d!251888 (= (array_inv!1377 (_values!1487 (v!18774 (underlying!2599 (v!18775 (underlying!2600 (cache!1567 cacheFindLongestMatch!134))))))) (bvsge (size!7027 (_values!1487 (v!18774 (underlying!2599 (v!18775 (underlying!2600 (cache!1567 cacheFindLongestMatch!134))))))) #b00000000000000000000000000000000))))

(assert (=> b!772978 d!251888))

(declare-fun d!251890 () Bool)

(assert (=> d!251890 true))

(declare-fun lt!314023 () Bool)

(declare-fun lambda!23304 () Int)

(declare-fun forall!2049 (List!8662 Int) Bool)

(assert (=> d!251890 (= lt!314023 (forall!2049 rulesArg!343 lambda!23304))))

(declare-fun e!498486 () Bool)

(assert (=> d!251890 (= lt!314023 e!498486)))

(declare-fun res!338587 () Bool)

(assert (=> d!251890 (=> res!338587 e!498486)))

(assert (=> d!251890 (= res!338587 (not ((_ is Cons!8648) rulesArg!343)))))

(assert (=> d!251890 (= (rulesValidInductive!588 thiss!15653 rulesArg!343) lt!314023)))

(declare-fun b!773088 () Bool)

(declare-fun e!498485 () Bool)

(assert (=> b!773088 (= e!498486 e!498485)))

(declare-fun res!338588 () Bool)

(assert (=> b!773088 (=> (not res!338588) (not e!498485))))

(assert (=> b!773088 (= res!338588 (ruleValid!507 thiss!15653 (h!14049 rulesArg!343)))))

(declare-fun b!773089 () Bool)

(assert (=> b!773089 (= e!498485 (rulesValidInductive!588 thiss!15653 (t!91944 rulesArg!343)))))

(assert (= (and d!251890 (not res!338587)) b!773088))

(assert (= (and b!773088 res!338588) b!773089))

(declare-fun m!1041147 () Bool)

(assert (=> d!251890 m!1041147))

(assert (=> b!773088 m!1041091))

(declare-fun m!1041149 () Bool)

(assert (=> b!773089 m!1041149))

(assert (=> b!772996 d!251890))

(declare-fun d!251892 () Bool)

(assert (=> d!251892 (= (valid!977 cacheDown!666) (validCacheMapDown!106 (cache!1569 cacheDown!666)))))

(declare-fun bs!166013 () Bool)

(assert (= bs!166013 d!251892))

(assert (=> bs!166013 m!1041141))

(assert (=> b!772986 d!251892))

(declare-fun b!773100 () Bool)

(declare-fun e!498493 () Bool)

(declare-fun tp!254009 () Bool)

(assert (=> b!773100 (= e!498493 tp!254009)))

(declare-fun e!498494 () Bool)

(assert (=> b!773001 (= tp!253980 e!498494)))

(declare-fun b!773101 () Bool)

(declare-fun e!498495 () Bool)

(declare-fun tp!254011 () Bool)

(assert (=> b!773101 (= e!498495 tp!254011)))

(declare-fun setIsEmpty!7155 () Bool)

(declare-fun setRes!7155 () Bool)

(assert (=> setIsEmpty!7155 setRes!7155))

(declare-fun b!773102 () Bool)

(declare-fun tp_is_empty!3737 () Bool)

(declare-fun tp!254008 () Bool)

(declare-fun inv!10985 (Context!798) Bool)

(assert (=> b!773102 (= e!498494 (and (inv!10985 (_1!5849 (_1!5850 (h!14050 mapDefault!5899)))) e!498493 tp_is_empty!3737 setRes!7155 tp!254008))))

(declare-fun condSetEmpty!7155 () Bool)

(assert (=> b!773102 (= condSetEmpty!7155 (= (_2!5850 (h!14050 mapDefault!5899)) ((as const (Array Context!798 Bool)) false)))))

(declare-fun setNonEmpty!7155 () Bool)

(declare-fun tp!254010 () Bool)

(declare-fun setElem!7155 () Context!798)

(assert (=> setNonEmpty!7155 (= setRes!7155 (and tp!254010 (inv!10985 setElem!7155) e!498495))))

(declare-fun setRest!7155 () (InoxSet Context!798))

(assert (=> setNonEmpty!7155 (= (_2!5850 (h!14050 mapDefault!5899)) ((_ map or) (store ((as const (Array Context!798 Bool)) false) setElem!7155 true) setRest!7155))))

(assert (= b!773102 b!773100))

(assert (= (and b!773102 condSetEmpty!7155) setIsEmpty!7155))

(assert (= (and b!773102 (not condSetEmpty!7155)) setNonEmpty!7155))

(assert (= setNonEmpty!7155 b!773101))

(assert (= (and b!773001 ((_ is Cons!8649) mapDefault!5899)) b!773102))

(declare-fun m!1041151 () Bool)

(assert (=> b!773102 m!1041151))

(declare-fun m!1041153 () Bool)

(assert (=> setNonEmpty!7155 m!1041153))

(declare-fun b!773111 () Bool)

(declare-fun e!498500 () Bool)

(declare-fun tp!254018 () Bool)

(declare-fun tp!254020 () Bool)

(assert (=> b!773111 (= e!498500 (and (inv!10978 (left!6413 (c!130320 totalInput!472))) tp!254018 (inv!10978 (right!6743 (c!130320 totalInput!472))) tp!254020))))

(declare-fun b!773113 () Bool)

(declare-fun e!498501 () Bool)

(declare-fun tp!254019 () Bool)

(assert (=> b!773113 (= e!498501 tp!254019)))

(declare-fun b!773112 () Bool)

(declare-fun inv!10986 (IArray!5789) Bool)

(assert (=> b!773112 (= e!498500 (and (inv!10986 (xs!5581 (c!130320 totalInput!472))) e!498501))))

(assert (=> b!773000 (= tp!253974 (and (inv!10978 (c!130320 totalInput!472)) e!498500))))

(assert (= (and b!773000 ((_ is Node!2894) (c!130320 totalInput!472))) b!773111))

(assert (= b!773112 b!773113))

(assert (= (and b!773000 ((_ is Leaf!4246) (c!130320 totalInput!472))) b!773112))

(declare-fun m!1041155 () Bool)

(assert (=> b!773111 m!1041155))

(declare-fun m!1041157 () Bool)

(assert (=> b!773111 m!1041157))

(declare-fun m!1041159 () Bool)

(assert (=> b!773112 m!1041159))

(assert (=> b!773000 m!1041015))

(declare-fun b!773124 () Bool)

(declare-fun b_free!24553 () Bool)

(declare-fun b_next!24617 () Bool)

(assert (=> b!773124 (= b_free!24553 (not b_next!24617))))

(declare-fun tp!254029 () Bool)

(declare-fun b_and!72033 () Bool)

(assert (=> b!773124 (= tp!254029 b_and!72033)))

(declare-fun b_free!24555 () Bool)

(declare-fun b_next!24619 () Bool)

(assert (=> b!773124 (= b_free!24555 (not b_next!24619))))

(declare-fun tp!254032 () Bool)

(declare-fun b_and!72035 () Bool)

(assert (=> b!773124 (= tp!254032 b_and!72035)))

(declare-fun e!498512 () Bool)

(assert (=> b!773124 (= e!498512 (and tp!254029 tp!254032))))

(declare-fun b!773123 () Bool)

(declare-fun tp!254030 () Bool)

(declare-fun e!498511 () Bool)

(assert (=> b!773123 (= e!498511 (and tp!254030 (inv!10976 (tag!1906 (h!14049 (t!91944 rulesArg!343)))) (inv!10982 (transformation!1644 (h!14049 (t!91944 rulesArg!343)))) e!498512))))

(declare-fun b!773122 () Bool)

(declare-fun e!498510 () Bool)

(declare-fun tp!254031 () Bool)

(assert (=> b!773122 (= e!498510 (and e!498511 tp!254031))))

(assert (=> b!773010 (= tp!253977 e!498510)))

(assert (= b!773123 b!773124))

(assert (= b!773122 b!773123))

(assert (= (and b!773010 ((_ is Cons!8648) (t!91944 rulesArg!343))) b!773122))

(declare-fun m!1041161 () Bool)

(assert (=> b!773123 m!1041161))

(declare-fun m!1041163 () Bool)

(assert (=> b!773123 m!1041163))

(declare-fun setIsEmpty!7158 () Bool)

(declare-fun setRes!7158 () Bool)

(assert (=> setIsEmpty!7158 setRes!7158))

(declare-fun b!773133 () Bool)

(declare-fun e!498521 () Bool)

(declare-fun tp!254046 () Bool)

(assert (=> b!773133 (= e!498521 tp!254046)))

(declare-fun setElem!7158 () Context!798)

(declare-fun setNonEmpty!7158 () Bool)

(declare-fun tp!254044 () Bool)

(assert (=> setNonEmpty!7158 (= setRes!7158 (and tp!254044 (inv!10985 setElem!7158) e!498521))))

(declare-fun setRest!7158 () (InoxSet Context!798))

(assert (=> setNonEmpty!7158 (= (_2!5852 (h!14051 (zeroValue!1467 (v!18778 (underlying!2603 (v!18779 (underlying!2604 (cache!1569 cacheDown!666)))))))) ((_ map or) (store ((as const (Array Context!798 Bool)) false) setElem!7158 true) setRest!7158))))

(declare-fun b!773134 () Bool)

(declare-fun e!498520 () Bool)

(declare-fun tp!254045 () Bool)

(assert (=> b!773134 (= e!498520 tp!254045)))

(declare-fun e!498522 () Bool)

(assert (=> b!772999 (= tp!253978 e!498522)))

(declare-fun tp!254043 () Bool)

(declare-fun b!773135 () Bool)

(declare-fun tp!254047 () Bool)

(assert (=> b!773135 (= e!498522 (and tp!254047 (inv!10985 (_2!5851 (_1!5852 (h!14051 (zeroValue!1467 (v!18778 (underlying!2603 (v!18779 (underlying!2604 (cache!1569 cacheDown!666)))))))))) e!498520 tp_is_empty!3737 setRes!7158 tp!254043))))

(declare-fun condSetEmpty!7158 () Bool)

(assert (=> b!773135 (= condSetEmpty!7158 (= (_2!5852 (h!14051 (zeroValue!1467 (v!18778 (underlying!2603 (v!18779 (underlying!2604 (cache!1569 cacheDown!666)))))))) ((as const (Array Context!798 Bool)) false)))))

(assert (= b!773135 b!773134))

(assert (= (and b!773135 condSetEmpty!7158) setIsEmpty!7158))

(assert (= (and b!773135 (not condSetEmpty!7158)) setNonEmpty!7158))

(assert (= setNonEmpty!7158 b!773133))

(assert (= (and b!772999 ((_ is Cons!8650) (zeroValue!1467 (v!18778 (underlying!2603 (v!18779 (underlying!2604 (cache!1569 cacheDown!666)))))))) b!773135))

(declare-fun m!1041165 () Bool)

(assert (=> setNonEmpty!7158 m!1041165))

(declare-fun m!1041167 () Bool)

(assert (=> b!773135 m!1041167))

(declare-fun setIsEmpty!7159 () Bool)

(declare-fun setRes!7159 () Bool)

(assert (=> setIsEmpty!7159 setRes!7159))

(declare-fun b!773136 () Bool)

(declare-fun e!498524 () Bool)

(declare-fun tp!254051 () Bool)

(assert (=> b!773136 (= e!498524 tp!254051)))

(declare-fun setNonEmpty!7159 () Bool)

(declare-fun tp!254049 () Bool)

(declare-fun setElem!7159 () Context!798)

(assert (=> setNonEmpty!7159 (= setRes!7159 (and tp!254049 (inv!10985 setElem!7159) e!498524))))

(declare-fun setRest!7159 () (InoxSet Context!798))

(assert (=> setNonEmpty!7159 (= (_2!5852 (h!14051 (minValue!1467 (v!18778 (underlying!2603 (v!18779 (underlying!2604 (cache!1569 cacheDown!666)))))))) ((_ map or) (store ((as const (Array Context!798 Bool)) false) setElem!7159 true) setRest!7159))))

(declare-fun b!773137 () Bool)

(declare-fun e!498523 () Bool)

(declare-fun tp!254050 () Bool)

(assert (=> b!773137 (= e!498523 tp!254050)))

(declare-fun e!498525 () Bool)

(assert (=> b!772999 (= tp!253986 e!498525)))

(declare-fun tp!254052 () Bool)

(declare-fun tp!254048 () Bool)

(declare-fun b!773138 () Bool)

(assert (=> b!773138 (= e!498525 (and tp!254052 (inv!10985 (_2!5851 (_1!5852 (h!14051 (minValue!1467 (v!18778 (underlying!2603 (v!18779 (underlying!2604 (cache!1569 cacheDown!666)))))))))) e!498523 tp_is_empty!3737 setRes!7159 tp!254048))))

(declare-fun condSetEmpty!7159 () Bool)

(assert (=> b!773138 (= condSetEmpty!7159 (= (_2!5852 (h!14051 (minValue!1467 (v!18778 (underlying!2603 (v!18779 (underlying!2604 (cache!1569 cacheDown!666)))))))) ((as const (Array Context!798 Bool)) false)))))

(assert (= b!773138 b!773137))

(assert (= (and b!773138 condSetEmpty!7159) setIsEmpty!7159))

(assert (= (and b!773138 (not condSetEmpty!7159)) setNonEmpty!7159))

(assert (= setNonEmpty!7159 b!773136))

(assert (= (and b!772999 ((_ is Cons!8650) (minValue!1467 (v!18778 (underlying!2603 (v!18779 (underlying!2604 (cache!1569 cacheDown!666)))))))) b!773138))

(declare-fun m!1041169 () Bool)

(assert (=> setNonEmpty!7159 m!1041169))

(declare-fun m!1041171 () Bool)

(assert (=> b!773138 m!1041171))

(declare-fun tp!254053 () Bool)

(declare-fun tp!254055 () Bool)

(declare-fun b!773139 () Bool)

(declare-fun e!498526 () Bool)

(assert (=> b!773139 (= e!498526 (and (inv!10978 (left!6413 (c!130320 (totalInput!2133 cacheFindLongestMatch!134)))) tp!254053 (inv!10978 (right!6743 (c!130320 (totalInput!2133 cacheFindLongestMatch!134)))) tp!254055))))

(declare-fun b!773141 () Bool)

(declare-fun e!498527 () Bool)

(declare-fun tp!254054 () Bool)

(assert (=> b!773141 (= e!498527 tp!254054)))

(declare-fun b!773140 () Bool)

(assert (=> b!773140 (= e!498526 (and (inv!10986 (xs!5581 (c!130320 (totalInput!2133 cacheFindLongestMatch!134)))) e!498527))))

(assert (=> b!772982 (= tp!253993 (and (inv!10978 (c!130320 (totalInput!2133 cacheFindLongestMatch!134))) e!498526))))

(assert (= (and b!772982 ((_ is Node!2894) (c!130320 (totalInput!2133 cacheFindLongestMatch!134)))) b!773139))

(assert (= b!773140 b!773141))

(assert (= (and b!772982 ((_ is Leaf!4246) (c!130320 (totalInput!2133 cacheFindLongestMatch!134)))) b!773140))

(declare-fun m!1041173 () Bool)

(assert (=> b!773139 m!1041173))

(declare-fun m!1041175 () Bool)

(assert (=> b!773139 m!1041175))

(declare-fun m!1041177 () Bool)

(assert (=> b!773140 m!1041177))

(assert (=> b!772982 m!1041009))

(declare-fun b!773152 () Bool)

(declare-fun e!498536 () Bool)

(declare-fun tp!254076 () Bool)

(assert (=> b!773152 (= e!498536 tp!254076)))

(declare-fun b!773153 () Bool)

(declare-fun e!498539 () Bool)

(declare-fun setRes!7164 () Bool)

(declare-fun tp!254075 () Bool)

(assert (=> b!773153 (= e!498539 (and setRes!7164 tp!254075))))

(declare-fun condSetEmpty!7165 () Bool)

(declare-fun mapValue!5902 () List!8659)

(assert (=> b!773153 (= condSetEmpty!7165 (= (_1!5847 (_1!5848 (h!14046 mapValue!5902))) ((as const (Array Context!798 Bool)) false)))))

(declare-fun setIsEmpty!7164 () Bool)

(declare-fun setRes!7165 () Bool)

(assert (=> setIsEmpty!7164 setRes!7165))

(declare-fun e!498537 () Bool)

(declare-fun setNonEmpty!7164 () Bool)

(declare-fun tp!254073 () Bool)

(declare-fun setElem!7165 () Context!798)

(assert (=> setNonEmpty!7164 (= setRes!7165 (and tp!254073 (inv!10985 setElem!7165) e!498537))))

(declare-fun mapDefault!5902 () List!8659)

(declare-fun setRest!7165 () (InoxSet Context!798))

(assert (=> setNonEmpty!7164 (= (_1!5847 (_1!5848 (h!14046 mapDefault!5902))) ((_ map or) (store ((as const (Array Context!798 Bool)) false) setElem!7165 true) setRest!7165))))

(declare-fun setNonEmpty!7165 () Bool)

(declare-fun tp!254071 () Bool)

(declare-fun setElem!7164 () Context!798)

(assert (=> setNonEmpty!7165 (= setRes!7164 (and tp!254071 (inv!10985 setElem!7164) e!498536))))

(declare-fun setRest!7164 () (InoxSet Context!798))

(assert (=> setNonEmpty!7165 (= (_1!5847 (_1!5848 (h!14046 mapValue!5902))) ((_ map or) (store ((as const (Array Context!798 Bool)) false) setElem!7164 true) setRest!7164))))

(declare-fun b!773154 () Bool)

(declare-fun tp!254074 () Bool)

(assert (=> b!773154 (= e!498537 tp!254074)))

(declare-fun mapIsEmpty!5902 () Bool)

(declare-fun mapRes!5902 () Bool)

(assert (=> mapIsEmpty!5902 mapRes!5902))

(declare-fun condMapEmpty!5902 () Bool)

(assert (=> mapNonEmpty!5898 (= condMapEmpty!5902 (= mapRest!5899 ((as const (Array (_ BitVec 32) List!8659)) mapDefault!5902)))))

(declare-fun e!498538 () Bool)

(assert (=> mapNonEmpty!5898 (= tp!253975 (and e!498538 mapRes!5902))))

(declare-fun setIsEmpty!7165 () Bool)

(assert (=> setIsEmpty!7165 setRes!7164))

(declare-fun mapNonEmpty!5902 () Bool)

(declare-fun tp!254072 () Bool)

(assert (=> mapNonEmpty!5902 (= mapRes!5902 (and tp!254072 e!498539))))

(declare-fun mapRest!5902 () (Array (_ BitVec 32) List!8659))

(declare-fun mapKey!5902 () (_ BitVec 32))

(assert (=> mapNonEmpty!5902 (= mapRest!5899 (store mapRest!5902 mapKey!5902 mapValue!5902))))

(declare-fun b!773155 () Bool)

(declare-fun tp!254070 () Bool)

(assert (=> b!773155 (= e!498538 (and setRes!7165 tp!254070))))

(declare-fun condSetEmpty!7164 () Bool)

(assert (=> b!773155 (= condSetEmpty!7164 (= (_1!5847 (_1!5848 (h!14046 mapDefault!5902))) ((as const (Array Context!798 Bool)) false)))))

(assert (= (and mapNonEmpty!5898 condMapEmpty!5902) mapIsEmpty!5902))

(assert (= (and mapNonEmpty!5898 (not condMapEmpty!5902)) mapNonEmpty!5902))

(assert (= (and b!773153 condSetEmpty!7165) setIsEmpty!7165))

(assert (= (and b!773153 (not condSetEmpty!7165)) setNonEmpty!7165))

(assert (= setNonEmpty!7165 b!773152))

(assert (= (and mapNonEmpty!5902 ((_ is Cons!8645) mapValue!5902)) b!773153))

(assert (= (and b!773155 condSetEmpty!7164) setIsEmpty!7164))

(assert (= (and b!773155 (not condSetEmpty!7164)) setNonEmpty!7164))

(assert (= setNonEmpty!7164 b!773154))

(assert (= (and mapNonEmpty!5898 ((_ is Cons!8645) mapDefault!5902)) b!773155))

(declare-fun m!1041179 () Bool)

(assert (=> setNonEmpty!7164 m!1041179))

(declare-fun m!1041181 () Bool)

(assert (=> setNonEmpty!7165 m!1041181))

(declare-fun m!1041183 () Bool)

(assert (=> mapNonEmpty!5902 m!1041183))

(declare-fun setIsEmpty!7168 () Bool)

(declare-fun setRes!7168 () Bool)

(assert (=> setIsEmpty!7168 setRes!7168))

(declare-fun b!773163 () Bool)

(declare-fun e!498544 () Bool)

(declare-fun tp!254084 () Bool)

(assert (=> b!773163 (= e!498544 tp!254084)))

(declare-fun tp!254083 () Bool)

(declare-fun setElem!7168 () Context!798)

(declare-fun setNonEmpty!7168 () Bool)

(assert (=> setNonEmpty!7168 (= setRes!7168 (and tp!254083 (inv!10985 setElem!7168) e!498544))))

(declare-fun setRest!7168 () (InoxSet Context!798))

(assert (=> setNonEmpty!7168 (= (_1!5847 (_1!5848 (h!14046 mapValue!5897))) ((_ map or) (store ((as const (Array Context!798 Bool)) false) setElem!7168 true) setRest!7168))))

(declare-fun b!773162 () Bool)

(declare-fun e!498545 () Bool)

(declare-fun tp!254085 () Bool)

(assert (=> b!773162 (= e!498545 (and setRes!7168 tp!254085))))

(declare-fun condSetEmpty!7168 () Bool)

(assert (=> b!773162 (= condSetEmpty!7168 (= (_1!5847 (_1!5848 (h!14046 mapValue!5897))) ((as const (Array Context!798 Bool)) false)))))

(assert (=> mapNonEmpty!5898 (= tp!253973 e!498545)))

(assert (= (and b!773162 condSetEmpty!7168) setIsEmpty!7168))

(assert (= (and b!773162 (not condSetEmpty!7168)) setNonEmpty!7168))

(assert (= setNonEmpty!7168 b!773163))

(assert (= (and mapNonEmpty!5898 ((_ is Cons!8645) mapValue!5897)) b!773162))

(declare-fun m!1041185 () Bool)

(assert (=> setNonEmpty!7168 m!1041185))

(declare-fun b!773164 () Bool)

(declare-fun e!498546 () Bool)

(declare-fun tp!254087 () Bool)

(assert (=> b!773164 (= e!498546 tp!254087)))

(declare-fun e!498547 () Bool)

(assert (=> b!772990 (= tp!253990 e!498547)))

(declare-fun b!773165 () Bool)

(declare-fun e!498548 () Bool)

(declare-fun tp!254089 () Bool)

(assert (=> b!773165 (= e!498548 tp!254089)))

(declare-fun setIsEmpty!7169 () Bool)

(declare-fun setRes!7169 () Bool)

(assert (=> setIsEmpty!7169 setRes!7169))

(declare-fun b!773166 () Bool)

(declare-fun tp!254086 () Bool)

(assert (=> b!773166 (= e!498547 (and (inv!10985 (_1!5849 (_1!5850 (h!14050 (zeroValue!1466 (v!18776 (underlying!2601 (v!18777 (underlying!2602 (cache!1568 cacheUp!653)))))))))) e!498546 tp_is_empty!3737 setRes!7169 tp!254086))))

(declare-fun condSetEmpty!7169 () Bool)

(assert (=> b!773166 (= condSetEmpty!7169 (= (_2!5850 (h!14050 (zeroValue!1466 (v!18776 (underlying!2601 (v!18777 (underlying!2602 (cache!1568 cacheUp!653)))))))) ((as const (Array Context!798 Bool)) false)))))

(declare-fun tp!254088 () Bool)

(declare-fun setNonEmpty!7169 () Bool)

(declare-fun setElem!7169 () Context!798)

(assert (=> setNonEmpty!7169 (= setRes!7169 (and tp!254088 (inv!10985 setElem!7169) e!498548))))

(declare-fun setRest!7169 () (InoxSet Context!798))

(assert (=> setNonEmpty!7169 (= (_2!5850 (h!14050 (zeroValue!1466 (v!18776 (underlying!2601 (v!18777 (underlying!2602 (cache!1568 cacheUp!653)))))))) ((_ map or) (store ((as const (Array Context!798 Bool)) false) setElem!7169 true) setRest!7169))))

(assert (= b!773166 b!773164))

(assert (= (and b!773166 condSetEmpty!7169) setIsEmpty!7169))

(assert (= (and b!773166 (not condSetEmpty!7169)) setNonEmpty!7169))

(assert (= setNonEmpty!7169 b!773165))

(assert (= (and b!772990 ((_ is Cons!8649) (zeroValue!1466 (v!18776 (underlying!2601 (v!18777 (underlying!2602 (cache!1568 cacheUp!653)))))))) b!773166))

(declare-fun m!1041187 () Bool)

(assert (=> b!773166 m!1041187))

(declare-fun m!1041189 () Bool)

(assert (=> setNonEmpty!7169 m!1041189))

(declare-fun b!773167 () Bool)

(declare-fun e!498549 () Bool)

(declare-fun tp!254091 () Bool)

(assert (=> b!773167 (= e!498549 tp!254091)))

(declare-fun e!498550 () Bool)

(assert (=> b!772990 (= tp!253997 e!498550)))

(declare-fun b!773168 () Bool)

(declare-fun e!498551 () Bool)

(declare-fun tp!254093 () Bool)

(assert (=> b!773168 (= e!498551 tp!254093)))

(declare-fun setIsEmpty!7170 () Bool)

(declare-fun setRes!7170 () Bool)

(assert (=> setIsEmpty!7170 setRes!7170))

(declare-fun b!773169 () Bool)

(declare-fun tp!254090 () Bool)

(assert (=> b!773169 (= e!498550 (and (inv!10985 (_1!5849 (_1!5850 (h!14050 (minValue!1466 (v!18776 (underlying!2601 (v!18777 (underlying!2602 (cache!1568 cacheUp!653)))))))))) e!498549 tp_is_empty!3737 setRes!7170 tp!254090))))

(declare-fun condSetEmpty!7170 () Bool)

(assert (=> b!773169 (= condSetEmpty!7170 (= (_2!5850 (h!14050 (minValue!1466 (v!18776 (underlying!2601 (v!18777 (underlying!2602 (cache!1568 cacheUp!653)))))))) ((as const (Array Context!798 Bool)) false)))))

(declare-fun tp!254092 () Bool)

(declare-fun setNonEmpty!7170 () Bool)

(declare-fun setElem!7170 () Context!798)

(assert (=> setNonEmpty!7170 (= setRes!7170 (and tp!254092 (inv!10985 setElem!7170) e!498551))))

(declare-fun setRest!7170 () (InoxSet Context!798))

(assert (=> setNonEmpty!7170 (= (_2!5850 (h!14050 (minValue!1466 (v!18776 (underlying!2601 (v!18777 (underlying!2602 (cache!1568 cacheUp!653)))))))) ((_ map or) (store ((as const (Array Context!798 Bool)) false) setElem!7170 true) setRest!7170))))

(assert (= b!773169 b!773167))

(assert (= (and b!773169 condSetEmpty!7170) setIsEmpty!7170))

(assert (= (and b!773169 (not condSetEmpty!7170)) setNonEmpty!7170))

(assert (= setNonEmpty!7170 b!773168))

(assert (= (and b!772990 ((_ is Cons!8649) (minValue!1466 (v!18776 (underlying!2601 (v!18777 (underlying!2602 (cache!1568 cacheUp!653)))))))) b!773169))

(declare-fun m!1041191 () Bool)

(assert (=> b!773169 m!1041191))

(declare-fun m!1041193 () Bool)

(assert (=> setNonEmpty!7170 m!1041193))

(declare-fun b!773183 () Bool)

(declare-fun e!498554 () Bool)

(declare-fun tp!254108 () Bool)

(declare-fun tp!254105 () Bool)

(assert (=> b!773183 (= e!498554 (and tp!254108 tp!254105))))

(assert (=> b!772998 (= tp!253996 e!498554)))

(declare-fun b!773180 () Bool)

(assert (=> b!773180 (= e!498554 tp_is_empty!3737)))

(declare-fun b!773182 () Bool)

(declare-fun tp!254107 () Bool)

(assert (=> b!773182 (= e!498554 tp!254107)))

(declare-fun b!773181 () Bool)

(declare-fun tp!254106 () Bool)

(declare-fun tp!254104 () Bool)

(assert (=> b!773181 (= e!498554 (and tp!254106 tp!254104))))

(assert (= (and b!772998 ((_ is ElementMatch!1997) (regex!1644 (h!14049 rulesArg!343)))) b!773180))

(assert (= (and b!772998 ((_ is Concat!3685) (regex!1644 (h!14049 rulesArg!343)))) b!773181))

(assert (= (and b!772998 ((_ is Star!1997) (regex!1644 (h!14049 rulesArg!343)))) b!773182))

(assert (= (and b!772998 ((_ is Union!1997) (regex!1644 (h!14049 rulesArg!343)))) b!773183))

(declare-fun e!498555 () Bool)

(declare-fun tp!254111 () Bool)

(declare-fun tp!254109 () Bool)

(declare-fun b!773184 () Bool)

(assert (=> b!773184 (= e!498555 (and (inv!10978 (left!6413 (c!130320 input!1432))) tp!254109 (inv!10978 (right!6743 (c!130320 input!1432))) tp!254111))))

(declare-fun b!773186 () Bool)

(declare-fun e!498556 () Bool)

(declare-fun tp!254110 () Bool)

(assert (=> b!773186 (= e!498556 tp!254110)))

(declare-fun b!773185 () Bool)

(assert (=> b!773185 (= e!498555 (and (inv!10986 (xs!5581 (c!130320 input!1432))) e!498556))))

(assert (=> b!772997 (= tp!253995 (and (inv!10978 (c!130320 input!1432)) e!498555))))

(assert (= (and b!772997 ((_ is Node!2894) (c!130320 input!1432))) b!773184))

(assert (= b!773185 b!773186))

(assert (= (and b!772997 ((_ is Leaf!4246) (c!130320 input!1432))) b!773185))

(declare-fun m!1041195 () Bool)

(assert (=> b!773184 m!1041195))

(declare-fun m!1041197 () Bool)

(assert (=> b!773184 m!1041197))

(declare-fun m!1041199 () Bool)

(assert (=> b!773185 m!1041199))

(assert (=> b!772997 m!1041063))

(declare-fun setIsEmpty!7171 () Bool)

(declare-fun setRes!7171 () Bool)

(assert (=> setIsEmpty!7171 setRes!7171))

(declare-fun b!773188 () Bool)

(declare-fun e!498557 () Bool)

(declare-fun tp!254113 () Bool)

(assert (=> b!773188 (= e!498557 tp!254113)))

(declare-fun setNonEmpty!7171 () Bool)

(declare-fun tp!254112 () Bool)

(declare-fun setElem!7171 () Context!798)

(assert (=> setNonEmpty!7171 (= setRes!7171 (and tp!254112 (inv!10985 setElem!7171) e!498557))))

(declare-fun setRest!7171 () (InoxSet Context!798))

(assert (=> setNonEmpty!7171 (= (_1!5847 (_1!5848 (h!14046 mapDefault!5897))) ((_ map or) (store ((as const (Array Context!798 Bool)) false) setElem!7171 true) setRest!7171))))

(declare-fun b!773187 () Bool)

(declare-fun e!498558 () Bool)

(declare-fun tp!254114 () Bool)

(assert (=> b!773187 (= e!498558 (and setRes!7171 tp!254114))))

(declare-fun condSetEmpty!7171 () Bool)

(assert (=> b!773187 (= condSetEmpty!7171 (= (_1!5847 (_1!5848 (h!14046 mapDefault!5897))) ((as const (Array Context!798 Bool)) false)))))

(assert (=> b!772979 (= tp!253983 e!498558)))

(assert (= (and b!773187 condSetEmpty!7171) setIsEmpty!7171))

(assert (= (and b!773187 (not condSetEmpty!7171)) setNonEmpty!7171))

(assert (= setNonEmpty!7171 b!773188))

(assert (= (and b!772979 ((_ is Cons!8645) mapDefault!5897)) b!773187))

(declare-fun m!1041201 () Bool)

(assert (=> setNonEmpty!7171 m!1041201))

(declare-fun b!773203 () Bool)

(declare-fun e!498574 () Bool)

(declare-fun tp!254134 () Bool)

(assert (=> b!773203 (= e!498574 tp!254134)))

(declare-fun b!773204 () Bool)

(declare-fun e!498572 () Bool)

(declare-fun tp!254138 () Bool)

(assert (=> b!773204 (= e!498572 tp!254138)))

(declare-fun b!773205 () Bool)

(declare-fun e!498571 () Bool)

(declare-fun tp!254136 () Bool)

(assert (=> b!773205 (= e!498571 tp!254136)))

(declare-fun mapDefault!5905 () List!8663)

(declare-fun setRes!7176 () Bool)

(declare-fun e!498575 () Bool)

(declare-fun tp!254137 () Bool)

(declare-fun b!773206 () Bool)

(assert (=> b!773206 (= e!498575 (and (inv!10985 (_1!5849 (_1!5850 (h!14050 mapDefault!5905)))) e!498574 tp_is_empty!3737 setRes!7176 tp!254137))))

(declare-fun condSetEmpty!7176 () Bool)

(assert (=> b!773206 (= condSetEmpty!7176 (= (_2!5850 (h!14050 mapDefault!5905)) ((as const (Array Context!798 Bool)) false)))))

(declare-fun b!773207 () Bool)

(declare-fun setRes!7177 () Bool)

(declare-fun mapValue!5905 () List!8663)

(declare-fun e!498576 () Bool)

(declare-fun tp!254133 () Bool)

(assert (=> b!773207 (= e!498576 (and (inv!10985 (_1!5849 (_1!5850 (h!14050 mapValue!5905)))) e!498571 tp_is_empty!3737 setRes!7177 tp!254133))))

(declare-fun condSetEmpty!7177 () Bool)

(assert (=> b!773207 (= condSetEmpty!7177 (= (_2!5850 (h!14050 mapValue!5905)) ((as const (Array Context!798 Bool)) false)))))

(declare-fun mapNonEmpty!5905 () Bool)

(declare-fun mapRes!5905 () Bool)

(declare-fun tp!254139 () Bool)

(assert (=> mapNonEmpty!5905 (= mapRes!5905 (and tp!254139 e!498576))))

(declare-fun mapKey!5905 () (_ BitVec 32))

(declare-fun mapRest!5905 () (Array (_ BitVec 32) List!8663))

(assert (=> mapNonEmpty!5905 (= mapRest!5898 (store mapRest!5905 mapKey!5905 mapValue!5905))))

(declare-fun setIsEmpty!7176 () Bool)

(assert (=> setIsEmpty!7176 setRes!7177))

(declare-fun tp!254140 () Bool)

(declare-fun setNonEmpty!7176 () Bool)

(declare-fun setElem!7177 () Context!798)

(assert (=> setNonEmpty!7176 (= setRes!7176 (and tp!254140 (inv!10985 setElem!7177) e!498572))))

(declare-fun setRest!7177 () (InoxSet Context!798))

(assert (=> setNonEmpty!7176 (= (_2!5850 (h!14050 mapDefault!5905)) ((_ map or) (store ((as const (Array Context!798 Bool)) false) setElem!7177 true) setRest!7177))))

(declare-fun setNonEmpty!7177 () Bool)

(declare-fun setElem!7176 () Context!798)

(declare-fun e!498573 () Bool)

(declare-fun tp!254135 () Bool)

(assert (=> setNonEmpty!7177 (= setRes!7177 (and tp!254135 (inv!10985 setElem!7176) e!498573))))

(declare-fun setRest!7176 () (InoxSet Context!798))

(assert (=> setNonEmpty!7177 (= (_2!5850 (h!14050 mapValue!5905)) ((_ map or) (store ((as const (Array Context!798 Bool)) false) setElem!7176 true) setRest!7176))))

(declare-fun setIsEmpty!7177 () Bool)

(assert (=> setIsEmpty!7177 setRes!7176))

(declare-fun b!773208 () Bool)

(declare-fun tp!254141 () Bool)

(assert (=> b!773208 (= e!498573 tp!254141)))

(declare-fun mapIsEmpty!5905 () Bool)

(assert (=> mapIsEmpty!5905 mapRes!5905))

(declare-fun condMapEmpty!5905 () Bool)

(assert (=> mapNonEmpty!5897 (= condMapEmpty!5905 (= mapRest!5898 ((as const (Array (_ BitVec 32) List!8663)) mapDefault!5905)))))

(assert (=> mapNonEmpty!5897 (= tp!253988 (and e!498575 mapRes!5905))))

(assert (= (and mapNonEmpty!5897 condMapEmpty!5905) mapIsEmpty!5905))

(assert (= (and mapNonEmpty!5897 (not condMapEmpty!5905)) mapNonEmpty!5905))

(assert (= b!773207 b!773205))

(assert (= (and b!773207 condSetEmpty!7177) setIsEmpty!7176))

(assert (= (and b!773207 (not condSetEmpty!7177)) setNonEmpty!7177))

(assert (= setNonEmpty!7177 b!773208))

(assert (= (and mapNonEmpty!5905 ((_ is Cons!8649) mapValue!5905)) b!773207))

(assert (= b!773206 b!773203))

(assert (= (and b!773206 condSetEmpty!7176) setIsEmpty!7177))

(assert (= (and b!773206 (not condSetEmpty!7176)) setNonEmpty!7176))

(assert (= setNonEmpty!7176 b!773204))

(assert (= (and mapNonEmpty!5897 ((_ is Cons!8649) mapDefault!5905)) b!773206))

(declare-fun m!1041203 () Bool)

(assert (=> setNonEmpty!7177 m!1041203))

(declare-fun m!1041205 () Bool)

(assert (=> mapNonEmpty!5905 m!1041205))

(declare-fun m!1041207 () Bool)

(assert (=> b!773207 m!1041207))

(declare-fun m!1041209 () Bool)

(assert (=> b!773206 m!1041209))

(declare-fun m!1041211 () Bool)

(assert (=> setNonEmpty!7176 m!1041211))

(declare-fun b!773209 () Bool)

(declare-fun e!498577 () Bool)

(declare-fun tp!254143 () Bool)

(assert (=> b!773209 (= e!498577 tp!254143)))

(declare-fun e!498578 () Bool)

(assert (=> mapNonEmpty!5897 (= tp!253976 e!498578)))

(declare-fun b!773210 () Bool)

(declare-fun e!498579 () Bool)

(declare-fun tp!254145 () Bool)

(assert (=> b!773210 (= e!498579 tp!254145)))

(declare-fun setIsEmpty!7178 () Bool)

(declare-fun setRes!7178 () Bool)

(assert (=> setIsEmpty!7178 setRes!7178))

(declare-fun tp!254142 () Bool)

(declare-fun b!773211 () Bool)

(assert (=> b!773211 (= e!498578 (and (inv!10985 (_1!5849 (_1!5850 (h!14050 mapValue!5899)))) e!498577 tp_is_empty!3737 setRes!7178 tp!254142))))

(declare-fun condSetEmpty!7178 () Bool)

(assert (=> b!773211 (= condSetEmpty!7178 (= (_2!5850 (h!14050 mapValue!5899)) ((as const (Array Context!798 Bool)) false)))))

(declare-fun tp!254144 () Bool)

(declare-fun setNonEmpty!7178 () Bool)

(declare-fun setElem!7178 () Context!798)

(assert (=> setNonEmpty!7178 (= setRes!7178 (and tp!254144 (inv!10985 setElem!7178) e!498579))))

(declare-fun setRest!7178 () (InoxSet Context!798))

(assert (=> setNonEmpty!7178 (= (_2!5850 (h!14050 mapValue!5899)) ((_ map or) (store ((as const (Array Context!798 Bool)) false) setElem!7178 true) setRest!7178))))

(assert (= b!773211 b!773209))

(assert (= (and b!773211 condSetEmpty!7178) setIsEmpty!7178))

(assert (= (and b!773211 (not condSetEmpty!7178)) setNonEmpty!7178))

(assert (= setNonEmpty!7178 b!773210))

(assert (= (and mapNonEmpty!5897 ((_ is Cons!8649) mapValue!5899)) b!773211))

(declare-fun m!1041213 () Bool)

(assert (=> b!773211 m!1041213))

(declare-fun m!1041215 () Bool)

(assert (=> setNonEmpty!7178 m!1041215))

(declare-fun setIsEmpty!7179 () Bool)

(declare-fun setRes!7179 () Bool)

(assert (=> setIsEmpty!7179 setRes!7179))

(declare-fun b!773213 () Bool)

(declare-fun e!498580 () Bool)

(declare-fun tp!254147 () Bool)

(assert (=> b!773213 (= e!498580 tp!254147)))

(declare-fun setElem!7179 () Context!798)

(declare-fun setNonEmpty!7179 () Bool)

(declare-fun tp!254146 () Bool)

(assert (=> setNonEmpty!7179 (= setRes!7179 (and tp!254146 (inv!10985 setElem!7179) e!498580))))

(declare-fun setRest!7179 () (InoxSet Context!798))

(assert (=> setNonEmpty!7179 (= (_1!5847 (_1!5848 (h!14046 (zeroValue!1465 (v!18774 (underlying!2599 (v!18775 (underlying!2600 (cache!1567 cacheFindLongestMatch!134))))))))) ((_ map or) (store ((as const (Array Context!798 Bool)) false) setElem!7179 true) setRest!7179))))

(declare-fun b!773212 () Bool)

(declare-fun e!498581 () Bool)

(declare-fun tp!254148 () Bool)

(assert (=> b!773212 (= e!498581 (and setRes!7179 tp!254148))))

(declare-fun condSetEmpty!7179 () Bool)

(assert (=> b!773212 (= condSetEmpty!7179 (= (_1!5847 (_1!5848 (h!14046 (zeroValue!1465 (v!18774 (underlying!2599 (v!18775 (underlying!2600 (cache!1567 cacheFindLongestMatch!134))))))))) ((as const (Array Context!798 Bool)) false)))))

(assert (=> b!772978 (= tp!253979 e!498581)))

(assert (= (and b!773212 condSetEmpty!7179) setIsEmpty!7179))

(assert (= (and b!773212 (not condSetEmpty!7179)) setNonEmpty!7179))

(assert (= setNonEmpty!7179 b!773213))

(assert (= (and b!772978 ((_ is Cons!8645) (zeroValue!1465 (v!18774 (underlying!2599 (v!18775 (underlying!2600 (cache!1567 cacheFindLongestMatch!134)))))))) b!773212))

(declare-fun m!1041217 () Bool)

(assert (=> setNonEmpty!7179 m!1041217))

(declare-fun setIsEmpty!7180 () Bool)

(declare-fun setRes!7180 () Bool)

(assert (=> setIsEmpty!7180 setRes!7180))

(declare-fun b!773215 () Bool)

(declare-fun e!498582 () Bool)

(declare-fun tp!254150 () Bool)

(assert (=> b!773215 (= e!498582 tp!254150)))

(declare-fun tp!254149 () Bool)

(declare-fun setElem!7180 () Context!798)

(declare-fun setNonEmpty!7180 () Bool)

(assert (=> setNonEmpty!7180 (= setRes!7180 (and tp!254149 (inv!10985 setElem!7180) e!498582))))

(declare-fun setRest!7180 () (InoxSet Context!798))

(assert (=> setNonEmpty!7180 (= (_1!5847 (_1!5848 (h!14046 (minValue!1465 (v!18774 (underlying!2599 (v!18775 (underlying!2600 (cache!1567 cacheFindLongestMatch!134))))))))) ((_ map or) (store ((as const (Array Context!798 Bool)) false) setElem!7180 true) setRest!7180))))

(declare-fun b!773214 () Bool)

(declare-fun e!498583 () Bool)

(declare-fun tp!254151 () Bool)

(assert (=> b!773214 (= e!498583 (and setRes!7180 tp!254151))))

(declare-fun condSetEmpty!7180 () Bool)

(assert (=> b!773214 (= condSetEmpty!7180 (= (_1!5847 (_1!5848 (h!14046 (minValue!1465 (v!18774 (underlying!2599 (v!18775 (underlying!2600 (cache!1567 cacheFindLongestMatch!134))))))))) ((as const (Array Context!798 Bool)) false)))))

(assert (=> b!772978 (= tp!253989 e!498583)))

(assert (= (and b!773214 condSetEmpty!7180) setIsEmpty!7180))

(assert (= (and b!773214 (not condSetEmpty!7180)) setNonEmpty!7180))

(assert (= setNonEmpty!7180 b!773215))

(assert (= (and b!772978 ((_ is Cons!8645) (minValue!1465 (v!18774 (underlying!2599 (v!18775 (underlying!2600 (cache!1567 cacheFindLongestMatch!134)))))))) b!773214))

(declare-fun m!1041219 () Bool)

(assert (=> setNonEmpty!7180 m!1041219))

(declare-fun setIsEmpty!7181 () Bool)

(declare-fun setRes!7181 () Bool)

(assert (=> setIsEmpty!7181 setRes!7181))

(declare-fun b!773216 () Bool)

(declare-fun e!498585 () Bool)

(declare-fun tp!254155 () Bool)

(assert (=> b!773216 (= e!498585 tp!254155)))

(declare-fun setNonEmpty!7181 () Bool)

(declare-fun tp!254153 () Bool)

(declare-fun setElem!7181 () Context!798)

(assert (=> setNonEmpty!7181 (= setRes!7181 (and tp!254153 (inv!10985 setElem!7181) e!498585))))

(declare-fun setRest!7181 () (InoxSet Context!798))

(assert (=> setNonEmpty!7181 (= (_2!5852 (h!14051 mapDefault!5898)) ((_ map or) (store ((as const (Array Context!798 Bool)) false) setElem!7181 true) setRest!7181))))

(declare-fun b!773217 () Bool)

(declare-fun e!498584 () Bool)

(declare-fun tp!254154 () Bool)

(assert (=> b!773217 (= e!498584 tp!254154)))

(declare-fun e!498586 () Bool)

(assert (=> b!772994 (= tp!253987 e!498586)))

(declare-fun tp!254156 () Bool)

(declare-fun tp!254152 () Bool)

(declare-fun b!773218 () Bool)

(assert (=> b!773218 (= e!498586 (and tp!254156 (inv!10985 (_2!5851 (_1!5852 (h!14051 mapDefault!5898)))) e!498584 tp_is_empty!3737 setRes!7181 tp!254152))))

(declare-fun condSetEmpty!7181 () Bool)

(assert (=> b!773218 (= condSetEmpty!7181 (= (_2!5852 (h!14051 mapDefault!5898)) ((as const (Array Context!798 Bool)) false)))))

(assert (= b!773218 b!773217))

(assert (= (and b!773218 condSetEmpty!7181) setIsEmpty!7181))

(assert (= (and b!773218 (not condSetEmpty!7181)) setNonEmpty!7181))

(assert (= setNonEmpty!7181 b!773216))

(assert (= (and b!772994 ((_ is Cons!8650) mapDefault!5898)) b!773218))

(declare-fun m!1041221 () Bool)

(assert (=> setNonEmpty!7181 m!1041221))

(declare-fun m!1041223 () Bool)

(assert (=> b!773218 m!1041223))

(declare-fun mapNonEmpty!5908 () Bool)

(declare-fun mapRes!5908 () Bool)

(declare-fun tp!254181 () Bool)

(declare-fun e!498601 () Bool)

(assert (=> mapNonEmpty!5908 (= mapRes!5908 (and tp!254181 e!498601))))

(declare-fun mapRest!5908 () (Array (_ BitVec 32) List!8664))

(declare-fun mapKey!5908 () (_ BitVec 32))

(declare-fun mapValue!5908 () List!8664)

(assert (=> mapNonEmpty!5908 (= mapRest!5897 (store mapRest!5908 mapKey!5908 mapValue!5908))))

(declare-fun e!498604 () Bool)

(declare-fun setRes!7187 () Bool)

(declare-fun tp!254187 () Bool)

(declare-fun setElem!7186 () Context!798)

(declare-fun setNonEmpty!7186 () Bool)

(assert (=> setNonEmpty!7186 (= setRes!7187 (and tp!254187 (inv!10985 setElem!7186) e!498604))))

(declare-fun mapDefault!5908 () List!8664)

(declare-fun setRest!7186 () (InoxSet Context!798))

(assert (=> setNonEmpty!7186 (= (_2!5852 (h!14051 mapDefault!5908)) ((_ map or) (store ((as const (Array Context!798 Bool)) false) setElem!7186 true) setRest!7186))))

(declare-fun b!773233 () Bool)

(declare-fun e!498602 () Bool)

(declare-fun tp!254185 () Bool)

(assert (=> b!773233 (= e!498602 tp!254185)))

(declare-fun setRes!7186 () Bool)

(declare-fun b!773234 () Bool)

(declare-fun tp!254189 () Bool)

(declare-fun tp!254183 () Bool)

(assert (=> b!773234 (= e!498601 (and tp!254189 (inv!10985 (_2!5851 (_1!5852 (h!14051 mapValue!5908)))) e!498602 tp_is_empty!3737 setRes!7186 tp!254183))))

(declare-fun condSetEmpty!7186 () Bool)

(assert (=> b!773234 (= condSetEmpty!7186 (= (_2!5852 (h!14051 mapValue!5908)) ((as const (Array Context!798 Bool)) false)))))

(declare-fun mapIsEmpty!5908 () Bool)

(assert (=> mapIsEmpty!5908 mapRes!5908))

(declare-fun setElem!7187 () Context!798)

(declare-fun tp!254182 () Bool)

(declare-fun setNonEmpty!7187 () Bool)

(declare-fun e!498599 () Bool)

(assert (=> setNonEmpty!7187 (= setRes!7186 (and tp!254182 (inv!10985 setElem!7187) e!498599))))

(declare-fun setRest!7187 () (InoxSet Context!798))

(assert (=> setNonEmpty!7187 (= (_2!5852 (h!14051 mapValue!5908)) ((_ map or) (store ((as const (Array Context!798 Bool)) false) setElem!7187 true) setRest!7187))))

(declare-fun setIsEmpty!7186 () Bool)

(assert (=> setIsEmpty!7186 setRes!7186))

(declare-fun b!773235 () Bool)

(declare-fun e!498603 () Bool)

(declare-fun tp!254179 () Bool)

(assert (=> b!773235 (= e!498603 tp!254179)))

(declare-fun e!498600 () Bool)

(declare-fun tp!254180 () Bool)

(declare-fun b!773236 () Bool)

(declare-fun tp!254188 () Bool)

(assert (=> b!773236 (= e!498600 (and tp!254180 (inv!10985 (_2!5851 (_1!5852 (h!14051 mapDefault!5908)))) e!498603 tp_is_empty!3737 setRes!7187 tp!254188))))

(declare-fun condSetEmpty!7187 () Bool)

(assert (=> b!773236 (= condSetEmpty!7187 (= (_2!5852 (h!14051 mapDefault!5908)) ((as const (Array Context!798 Bool)) false)))))

(declare-fun condMapEmpty!5908 () Bool)

(assert (=> mapNonEmpty!5899 (= condMapEmpty!5908 (= mapRest!5897 ((as const (Array (_ BitVec 32) List!8664)) mapDefault!5908)))))

(assert (=> mapNonEmpty!5899 (= tp!253998 (and e!498600 mapRes!5908))))

(declare-fun b!773237 () Bool)

(declare-fun tp!254184 () Bool)

(assert (=> b!773237 (= e!498604 tp!254184)))

(declare-fun b!773238 () Bool)

(declare-fun tp!254186 () Bool)

(assert (=> b!773238 (= e!498599 tp!254186)))

(declare-fun setIsEmpty!7187 () Bool)

(assert (=> setIsEmpty!7187 setRes!7187))

(assert (= (and mapNonEmpty!5899 condMapEmpty!5908) mapIsEmpty!5908))

(assert (= (and mapNonEmpty!5899 (not condMapEmpty!5908)) mapNonEmpty!5908))

(assert (= b!773234 b!773233))

(assert (= (and b!773234 condSetEmpty!7186) setIsEmpty!7186))

(assert (= (and b!773234 (not condSetEmpty!7186)) setNonEmpty!7187))

(assert (= setNonEmpty!7187 b!773238))

(assert (= (and mapNonEmpty!5908 ((_ is Cons!8650) mapValue!5908)) b!773234))

(assert (= b!773236 b!773235))

(assert (= (and b!773236 condSetEmpty!7187) setIsEmpty!7187))

(assert (= (and b!773236 (not condSetEmpty!7187)) setNonEmpty!7186))

(assert (= setNonEmpty!7186 b!773237))

(assert (= (and mapNonEmpty!5899 ((_ is Cons!8650) mapDefault!5908)) b!773236))

(declare-fun m!1041225 () Bool)

(assert (=> b!773236 m!1041225))

(declare-fun m!1041227 () Bool)

(assert (=> setNonEmpty!7186 m!1041227))

(declare-fun m!1041229 () Bool)

(assert (=> b!773234 m!1041229))

(declare-fun m!1041231 () Bool)

(assert (=> setNonEmpty!7187 m!1041231))

(declare-fun m!1041233 () Bool)

(assert (=> mapNonEmpty!5908 m!1041233))

(declare-fun setIsEmpty!7188 () Bool)

(declare-fun setRes!7188 () Bool)

(assert (=> setIsEmpty!7188 setRes!7188))

(declare-fun b!773239 () Bool)

(declare-fun e!498606 () Bool)

(declare-fun tp!254193 () Bool)

(assert (=> b!773239 (= e!498606 tp!254193)))

(declare-fun tp!254191 () Bool)

(declare-fun setElem!7188 () Context!798)

(declare-fun setNonEmpty!7188 () Bool)

(assert (=> setNonEmpty!7188 (= setRes!7188 (and tp!254191 (inv!10985 setElem!7188) e!498606))))

(declare-fun setRest!7188 () (InoxSet Context!798))

(assert (=> setNonEmpty!7188 (= (_2!5852 (h!14051 mapValue!5898)) ((_ map or) (store ((as const (Array Context!798 Bool)) false) setElem!7188 true) setRest!7188))))

(declare-fun b!773240 () Bool)

(declare-fun e!498605 () Bool)

(declare-fun tp!254192 () Bool)

(assert (=> b!773240 (= e!498605 tp!254192)))

(declare-fun e!498607 () Bool)

(assert (=> mapNonEmpty!5899 (= tp!253994 e!498607)))

(declare-fun tp!254190 () Bool)

(declare-fun tp!254194 () Bool)

(declare-fun b!773241 () Bool)

(assert (=> b!773241 (= e!498607 (and tp!254194 (inv!10985 (_2!5851 (_1!5852 (h!14051 mapValue!5898)))) e!498605 tp_is_empty!3737 setRes!7188 tp!254190))))

(declare-fun condSetEmpty!7188 () Bool)

(assert (=> b!773241 (= condSetEmpty!7188 (= (_2!5852 (h!14051 mapValue!5898)) ((as const (Array Context!798 Bool)) false)))))

(assert (= b!773241 b!773240))

(assert (= (and b!773241 condSetEmpty!7188) setIsEmpty!7188))

(assert (= (and b!773241 (not condSetEmpty!7188)) setNonEmpty!7188))

(assert (= setNonEmpty!7188 b!773239))

(assert (= (and mapNonEmpty!5899 ((_ is Cons!8650) mapValue!5898)) b!773241))

(declare-fun m!1041235 () Bool)

(assert (=> setNonEmpty!7188 m!1041235))

(declare-fun m!1041237 () Bool)

(assert (=> b!773241 m!1041237))

(check-sat (not b!773041) (not d!251838) (not b_next!24603) (not b!773154) (not b!773133) (not d!251870) (not b!773062) (not b!773211) (not setNonEmpty!7169) (not b!773166) (not b!773204) (not b!773074) (not b!773111) (not b!773053) (not b!773186) (not b!773209) (not d!251864) b_and!72033 (not b!773181) (not b_next!24607) b_and!72025 (not d!251872) (not setNonEmpty!7164) (not b!773141) b_and!72019 (not b!773077) (not setNonEmpty!7187) (not b!773187) (not setNonEmpty!7158) (not b_next!24609) (not b!773035) b_and!72029 (not b!773153) (not setNonEmpty!7159) (not b!773185) (not b!773137) (not d!251848) (not b!773212) b_and!72031 (not b!773206) (not b!773060) (not b_next!24613) (not b!773203) (not b!773051) (not b!773240) (not b!773183) (not d!251880) (not setNonEmpty!7178) (not d!251890) (not d!251846) (not b_next!24617) (not b!773163) (not b!773071) (not setNonEmpty!7188) (not b!772997) (not setNonEmpty!7155) (not b!773167) (not mapNonEmpty!5908) (not mapNonEmpty!5902) (not b!773135) (not b!772982) (not b!773217) (not b!773102) (not b!773239) (not b!773037) (not setNonEmpty!7171) (not b!773101) (not b!773066) (not setNonEmpty!7179) (not b!773165) (not b!773184) (not b_next!24611) tp_is_empty!3737 (not b!773216) (not b!773205) (not setNonEmpty!7177) (not b!773065) (not b!773138) (not setNonEmpty!7181) (not b!773235) b_and!72021 (not setNonEmpty!7168) (not b!773162) (not b!773052) (not b!773237) (not b!773083) (not b!773152) (not b_next!24601) (not b!773210) (not b!773169) (not b!773241) (not b!773233) (not b_next!24605) (not d!251866) (not b!773134) (not b!773040) (not b!773213) (not setNonEmpty!7186) (not b!773218) (not d!251842) (not b!773038) (not b!773155) (not b!773234) (not b!773164) (not b!773188) (not mapNonEmpty!5905) (not b!773112) (not b!773136) (not b!773122) (not setNonEmpty!7180) (not b!773182) (not b!773215) (not setNonEmpty!7170) (not b!773208) (not b!773088) (not d!251878) (not b!773238) b_and!72017 (not b!773072) (not b!773000) (not b_next!24615) (not setNonEmpty!7165) (not b_next!24619) (not b!773236) (not b!773207) b_and!72023 (not b!773018) (not setNonEmpty!7176) (not b!773068) b_and!72035 (not b!773123) (not b!773020) (not d!251850) (not b!773113) (not b!773214) (not b!773140) (not b!773100) (not d!251892) (not b!773080) (not b!773168) (not b!773089) b_and!72027 (not b!773139))
(check-sat (not b_next!24603) b_and!72031 (not b_next!24613) (not b_next!24617) (not b_next!24611) b_and!72021 (not b_next!24601) (not b_next!24605) b_and!72017 b_and!72027 b_and!72033 (not b_next!24607) b_and!72025 b_and!72019 b_and!72029 (not b_next!24609) (not b_next!24615) (not b_next!24619) b_and!72023 b_and!72035)

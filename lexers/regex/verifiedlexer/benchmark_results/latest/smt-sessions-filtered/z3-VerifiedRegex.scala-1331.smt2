; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!70430 () Bool)

(assert start!70430)

(declare-fun b!757485 () Bool)

(declare-fun b_free!23629 () Bool)

(declare-fun b_next!23693 () Bool)

(assert (=> b!757485 (= b_free!23629 (not b_next!23693))))

(declare-fun tp!244972 () Bool)

(declare-fun b_and!70537 () Bool)

(assert (=> b!757485 (= tp!244972 b_and!70537)))

(declare-fun b!757464 () Bool)

(declare-fun b_free!23631 () Bool)

(declare-fun b_next!23695 () Bool)

(assert (=> b!757464 (= b_free!23631 (not b_next!23695))))

(declare-fun tp!244965 () Bool)

(declare-fun b_and!70539 () Bool)

(assert (=> b!757464 (= tp!244965 b_and!70539)))

(declare-fun b!757474 () Bool)

(declare-fun b_free!23633 () Bool)

(declare-fun b_next!23697 () Bool)

(assert (=> b!757474 (= b_free!23633 (not b_next!23697))))

(declare-fun tp!244960 () Bool)

(declare-fun b_and!70541 () Bool)

(assert (=> b!757474 (= tp!244960 b_and!70541)))

(declare-fun b_free!23635 () Bool)

(declare-fun b_next!23699 () Bool)

(assert (=> b!757474 (= b_free!23635 (not b_next!23699))))

(declare-fun tp!244983 () Bool)

(declare-fun b_and!70543 () Bool)

(assert (=> b!757474 (= tp!244983 b_and!70543)))

(declare-fun b!757490 () Bool)

(declare-fun b_free!23637 () Bool)

(declare-fun b_next!23701 () Bool)

(assert (=> b!757490 (= b_free!23637 (not b_next!23701))))

(declare-fun tp!244979 () Bool)

(declare-fun b_and!70545 () Bool)

(assert (=> b!757490 (= tp!244979 b_and!70545)))

(declare-fun b!757477 () Bool)

(declare-fun b_free!23639 () Bool)

(declare-fun b_next!23703 () Bool)

(assert (=> b!757477 (= b_free!23639 (not b_next!23703))))

(declare-fun tp!244964 () Bool)

(declare-fun b_and!70547 () Bool)

(assert (=> b!757477 (= tp!244964 b_and!70547)))

(declare-fun b!757483 () Bool)

(declare-fun b_free!23641 () Bool)

(declare-fun b_next!23705 () Bool)

(assert (=> b!757483 (= b_free!23641 (not b_next!23705))))

(declare-fun tp!244959 () Bool)

(declare-fun b_and!70549 () Bool)

(assert (=> b!757483 (= tp!244959 b_and!70549)))

(declare-fun b!757491 () Bool)

(declare-fun b_free!23643 () Bool)

(declare-fun b_next!23707 () Bool)

(assert (=> b!757491 (= b_free!23643 (not b_next!23707))))

(declare-fun tp!244958 () Bool)

(declare-fun b_and!70551 () Bool)

(assert (=> b!757491 (= tp!244958 b_and!70551)))

(declare-fun b!757462 () Bool)

(declare-fun e!486516 () Bool)

(declare-fun tp!244969 () Bool)

(declare-fun mapRes!5321 () Bool)

(assert (=> b!757462 (= e!486516 (and tp!244969 mapRes!5321))))

(declare-fun condMapEmpty!5322 () Bool)

(declare-datatypes ((C!4516 0))(
  ( (C!4517 (val!2488 Int)) )
))
(declare-datatypes ((Regex!1957 0))(
  ( (ElementMatch!1957 (c!128734 C!4516)) (Concat!3611 (regOne!4426 Regex!1957) (regTwo!4426 Regex!1957)) (EmptyExpr!1957) (Star!1957 (reg!2286 Regex!1957)) (EmptyLang!1957) (Union!1957 (regOne!4427 Regex!1957) (regTwo!4427 Regex!1957)) )
))
(declare-datatypes ((array!3897 0))(
  ( (array!3898 (arr!1744 (Array (_ BitVec 32) (_ BitVec 64))) (size!6815 (_ BitVec 32))) )
))
(declare-datatypes ((List!8384 0))(
  ( (Nil!8370) (Cons!8370 (h!13771 Regex!1957) (t!91114 List!8384)) )
))
(declare-datatypes ((Context!718 0))(
  ( (Context!719 (exprs!859 List!8384)) )
))
(declare-datatypes ((tuple3!932 0))(
  ( (tuple3!933 (_1!5525 Regex!1957) (_2!5525 Context!718) (_3!713 C!4516)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!9624 0))(
  ( (tuple2!9625 (_1!5526 tuple3!932) (_2!5526 (InoxSet Context!718))) )
))
(declare-datatypes ((List!8385 0))(
  ( (Nil!8371) (Cons!8371 (h!13772 tuple2!9624) (t!91115 List!8385)) )
))
(declare-datatypes ((array!3899 0))(
  ( (array!3900 (arr!1745 (Array (_ BitVec 32) List!8385)) (size!6816 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2194 0))(
  ( (LongMapFixedSize!2195 (defaultEntry!1453 Int) (mask!2960 (_ BitVec 32)) (extraKeys!1344 (_ BitVec 32)) (zeroValue!1354 List!8385) (minValue!1354 List!8385) (_size!2303 (_ BitVec 32)) (_keys!1391 array!3897) (_values!1376 array!3899) (_vacant!1158 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!4329 0))(
  ( (Cell!4330 (v!18509 LongMapFixedSize!2194)) )
))
(declare-datatypes ((MutLongMap!1097 0))(
  ( (LongMap!1097 (underlying!2377 Cell!4329)) (MutLongMapExt!1096 (__x!6584 Int)) )
))
(declare-datatypes ((Cell!4331 0))(
  ( (Cell!4332 (v!18510 MutLongMap!1097)) )
))
(declare-datatypes ((Hashable!1069 0))(
  ( (HashableExt!1068 (__x!6585 Int)) )
))
(declare-datatypes ((MutableMap!1069 0))(
  ( (MutableMapExt!1068 (__x!6586 Int)) (HashMap!1069 (underlying!2378 Cell!4331) (hashF!2977 Hashable!1069) (_size!2304 (_ BitVec 32)) (defaultValue!1220 Int)) )
))
(declare-datatypes ((CacheDown!604 0))(
  ( (CacheDown!605 (cache!1456 MutableMap!1069)) )
))
(declare-fun cacheDown!515 () CacheDown!604)

(declare-fun mapDefault!5321 () List!8385)

(assert (=> b!757462 (= condMapEmpty!5322 (= (arr!1745 (_values!1376 (v!18509 (underlying!2377 (v!18510 (underlying!2378 (cache!1456 cacheDown!515))))))) ((as const (Array (_ BitVec 32) List!8385)) mapDefault!5321)))))

(declare-fun b!757463 () Bool)

(declare-fun e!486542 () Bool)

(declare-fun e!486513 () Bool)

(assert (=> b!757463 (= e!486542 e!486513)))

(declare-fun tp!244978 () Bool)

(declare-fun e!486514 () Bool)

(declare-fun e!486522 () Bool)

(declare-datatypes ((tuple2!9626 0))(
  ( (tuple2!9627 (_1!5527 Context!718) (_2!5527 C!4516)) )
))
(declare-datatypes ((tuple2!9628 0))(
  ( (tuple2!9629 (_1!5528 tuple2!9626) (_2!5528 (InoxSet Context!718))) )
))
(declare-datatypes ((List!8386 0))(
  ( (Nil!8372) (Cons!8372 (h!13773 tuple2!9628) (t!91116 List!8386)) )
))
(declare-datatypes ((array!3901 0))(
  ( (array!3902 (arr!1746 (Array (_ BitVec 32) List!8386)) (size!6817 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2196 0))(
  ( (LongMapFixedSize!2197 (defaultEntry!1454 Int) (mask!2961 (_ BitVec 32)) (extraKeys!1345 (_ BitVec 32)) (zeroValue!1355 List!8386) (minValue!1355 List!8386) (_size!2305 (_ BitVec 32)) (_keys!1392 array!3897) (_values!1377 array!3901) (_vacant!1159 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!4333 0))(
  ( (Cell!4334 (v!18511 LongMapFixedSize!2196)) )
))
(declare-datatypes ((MutLongMap!1098 0))(
  ( (LongMap!1098 (underlying!2379 Cell!4333)) (MutLongMapExt!1097 (__x!6587 Int)) )
))
(declare-datatypes ((Hashable!1070 0))(
  ( (HashableExt!1069 (__x!6588 Int)) )
))
(declare-datatypes ((Cell!4335 0))(
  ( (Cell!4336 (v!18512 MutLongMap!1098)) )
))
(declare-datatypes ((MutableMap!1070 0))(
  ( (MutableMapExt!1069 (__x!6589 Int)) (HashMap!1070 (underlying!2380 Cell!4335) (hashF!2978 Hashable!1070) (_size!2306 (_ BitVec 32)) (defaultValue!1221 Int)) )
))
(declare-datatypes ((CacheUp!596 0))(
  ( (CacheUp!597 (cache!1457 MutableMap!1070)) )
))
(declare-fun cacheUp!502 () CacheUp!596)

(declare-fun tp!244955 () Bool)

(declare-fun array_inv!1267 (array!3897) Bool)

(declare-fun array_inv!1268 (array!3901) Bool)

(assert (=> b!757464 (= e!486522 (and tp!244965 tp!244955 tp!244978 (array_inv!1267 (_keys!1392 (v!18511 (underlying!2379 (v!18512 (underlying!2380 (cache!1457 cacheUp!502))))))) (array_inv!1268 (_values!1377 (v!18511 (underlying!2379 (v!18512 (underlying!2380 (cache!1457 cacheUp!502))))))) e!486514))))

(declare-fun b!757465 () Bool)

(declare-fun e!486518 () Bool)

(declare-fun e!486543 () Bool)

(assert (=> b!757465 (= e!486518 e!486543)))

(declare-fun b!757466 () Bool)

(declare-fun e!486511 () Bool)

(declare-fun e!486524 () Bool)

(assert (=> b!757466 (= e!486511 e!486524)))

(declare-fun res!333741 () Bool)

(assert (=> b!757466 (=> (not res!333741) (not e!486524))))

(declare-datatypes ((List!8387 0))(
  ( (Nil!8373) (Cons!8373 (h!13774 (_ BitVec 16)) (t!91117 List!8387)) )
))
(declare-datatypes ((TokenValue!1654 0))(
  ( (FloatLiteralValue!3308 (text!12023 List!8387)) (TokenValueExt!1653 (__x!6590 Int)) (Broken!8270 (value!51535 List!8387)) (Object!1667) (End!1654) (Def!1654) (Underscore!1654) (Match!1654) (Else!1654) (Error!1654) (Case!1654) (If!1654) (Extends!1654) (Abstract!1654) (Class!1654) (Val!1654) (DelimiterValue!3308 (del!1714 List!8387)) (KeywordValue!1660 (value!51536 List!8387)) (CommentValue!3308 (value!51537 List!8387)) (WhitespaceValue!3308 (value!51538 List!8387)) (IndentationValue!1654 (value!51539 List!8387)) (String!10011) (Int32!1654) (Broken!8271 (value!51540 List!8387)) (Boolean!1655) (Unit!13021) (OperatorValue!1657 (op!1714 List!8387)) (IdentifierValue!3308 (value!51541 List!8387)) (IdentifierValue!3309 (value!51542 List!8387)) (WhitespaceValue!3309 (value!51543 List!8387)) (True!3308) (False!3308) (Broken!8272 (value!51544 List!8387)) (Broken!8273 (value!51545 List!8387)) (True!3309) (RightBrace!1654) (RightBracket!1654) (Colon!1654) (Null!1654) (Comma!1654) (LeftBracket!1654) (False!3309) (LeftBrace!1654) (ImaginaryLiteralValue!1654 (text!12024 List!8387)) (StringLiteralValue!4962 (value!51546 List!8387)) (EOFValue!1654 (value!51547 List!8387)) (IdentValue!1654 (value!51548 List!8387)) (DelimiterValue!3309 (value!51549 List!8387)) (DedentValue!1654 (value!51550 List!8387)) (NewLineValue!1654 (value!51551 List!8387)) (IntegerValue!4962 (value!51552 (_ BitVec 32)) (text!12025 List!8387)) (IntegerValue!4963 (value!51553 Int) (text!12026 List!8387)) (Times!1654) (Or!1654) (Equal!1654) (Minus!1654) (Broken!8274 (value!51554 List!8387)) (And!1654) (Div!1654) (LessEqual!1654) (Mod!1654) (Concat!3612) (Not!1654) (Plus!1654) (SpaceValue!1654 (value!51555 List!8387)) (IntegerValue!4964 (value!51556 Int) (text!12027 List!8387)) (StringLiteralValue!4963 (text!12028 List!8387)) (FloatLiteralValue!3309 (text!12029 List!8387)) (BytesLiteralValue!1654 (value!51557 List!8387)) (CommentValue!3309 (value!51558 List!8387)) (StringLiteralValue!4964 (value!51559 List!8387)) (ErrorTokenValue!1654 (msg!1715 List!8387)) )
))
(declare-datatypes ((List!8388 0))(
  ( (Nil!8374) (Cons!8374 (h!13775 C!4516) (t!91118 List!8388)) )
))
(declare-datatypes ((IArray!5691 0))(
  ( (IArray!5692 (innerList!2903 List!8388)) )
))
(declare-datatypes ((Conc!2845 0))(
  ( (Node!2845 (left!6320 Conc!2845) (right!6650 Conc!2845) (csize!5920 Int) (cheight!3056 Int)) (Leaf!4177 (xs!5524 IArray!5691) (csize!5921 Int)) (Empty!2845) )
))
(declare-datatypes ((BalanceConc!5702 0))(
  ( (BalanceConc!5703 (c!128735 Conc!2845)) )
))
(declare-datatypes ((String!10012 0))(
  ( (String!10013 (value!51560 String)) )
))
(declare-datatypes ((TokenValueInjection!3044 0))(
  ( (TokenValueInjection!3045 (toValue!2596 Int) (toChars!2455 Int)) )
))
(declare-datatypes ((Rule!3020 0))(
  ( (Rule!3021 (regex!1610 Regex!1957) (tag!1872 String!10012) (isSeparator!1610 Bool) (transformation!1610 TokenValueInjection!3044)) )
))
(declare-datatypes ((Token!2918 0))(
  ( (Token!2919 (value!51561 TokenValue!1654) (rule!2731 Rule!3020) (size!6818 Int) (originalCharacters!1884 List!8388)) )
))
(declare-datatypes ((List!8389 0))(
  ( (Nil!8375) (Cons!8375 (h!13776 Token!2918) (t!91119 List!8389)) )
))
(declare-datatypes ((IArray!5693 0))(
  ( (IArray!5694 (innerList!2904 List!8389)) )
))
(declare-datatypes ((Conc!2846 0))(
  ( (Node!2846 (left!6321 Conc!2846) (right!6651 Conc!2846) (csize!5922 Int) (cheight!3057 Int)) (Leaf!4178 (xs!5525 IArray!5693) (csize!5923 Int)) (Empty!2846) )
))
(declare-datatypes ((BalanceConc!5704 0))(
  ( (BalanceConc!5705 (c!128736 Conc!2846)) )
))
(declare-datatypes ((tuple2!9630 0))(
  ( (tuple2!9631 (_1!5529 BalanceConc!5704) (_2!5529 BalanceConc!5702)) )
))
(declare-fun lt!308963 () tuple2!9630)

(declare-fun acc!372 () BalanceConc!5704)

(declare-fun lt!308965 () tuple2!9630)

(declare-fun list!3386 (BalanceConc!5704) List!8389)

(declare-fun ++!2195 (BalanceConc!5704 BalanceConc!5704) BalanceConc!5704)

(assert (=> b!757466 (= res!333741 (= (list!3386 (_1!5529 lt!308965)) (list!3386 (++!2195 acc!372 (_1!5529 lt!308963)))))))

(declare-fun input!870 () BalanceConc!5702)

(declare-datatypes ((List!8390 0))(
  ( (Nil!8376) (Cons!8376 (h!13777 Rule!3020) (t!91120 List!8390)) )
))
(declare-fun rules!1486 () List!8390)

(declare-datatypes ((LexerInterface!1412 0))(
  ( (LexerInterfaceExt!1409 (__x!6591 Int)) (Lexer!1410) )
))
(declare-fun thiss!12529 () LexerInterface!1412)

(declare-fun lexRec!241 (LexerInterface!1412 List!8390 BalanceConc!5702) tuple2!9630)

(assert (=> b!757466 (= lt!308963 (lexRec!241 thiss!12529 rules!1486 input!870))))

(declare-fun totalInput!378 () BalanceConc!5702)

(assert (=> b!757466 (= lt!308965 (lexRec!241 thiss!12529 rules!1486 totalInput!378))))

(declare-fun b!757467 () Bool)

(declare-fun e!486539 () Bool)

(declare-fun tp!244963 () Bool)

(declare-fun inv!10644 (Conc!2845) Bool)

(assert (=> b!757467 (= e!486539 (and (inv!10644 (c!128735 input!870)) tp!244963))))

(declare-fun b!757468 () Bool)

(declare-fun tp!244966 () Bool)

(declare-fun mapRes!5322 () Bool)

(assert (=> b!757468 (= e!486514 (and tp!244966 mapRes!5322))))

(declare-fun condMapEmpty!5323 () Bool)

(declare-fun mapDefault!5322 () List!8386)

(assert (=> b!757468 (= condMapEmpty!5323 (= (arr!1746 (_values!1377 (v!18511 (underlying!2379 (v!18512 (underlying!2380 (cache!1457 cacheUp!502))))))) ((as const (Array (_ BitVec 32) List!8386)) mapDefault!5322)))))

(declare-fun tp!244970 () Bool)

(declare-fun e!486512 () Bool)

(declare-fun e!486541 () Bool)

(declare-fun b!757469 () Bool)

(declare-fun inv!10643 (String!10012) Bool)

(declare-fun inv!10645 (TokenValueInjection!3044) Bool)

(assert (=> b!757469 (= e!486512 (and tp!244970 (inv!10643 (tag!1872 (h!13777 rules!1486))) (inv!10645 (transformation!1610 (h!13777 rules!1486))) e!486541))))

(declare-fun b!757470 () Bool)

(declare-fun res!333747 () Bool)

(assert (=> b!757470 (=> (not res!333747) (not e!486524))))

(declare-fun valid!890 (CacheUp!596) Bool)

(assert (=> b!757470 (= res!333747 (valid!890 cacheUp!502))))

(declare-fun b!757471 () Bool)

(declare-fun res!333746 () Bool)

(assert (=> b!757471 (=> (not res!333746) (not e!486511))))

(declare-fun lt!308961 () tuple2!9630)

(declare-fun isEmpty!5155 (List!8388) Bool)

(declare-fun list!3387 (BalanceConc!5702) List!8388)

(assert (=> b!757471 (= res!333746 (isEmpty!5155 (list!3387 (_2!5529 lt!308961))))))

(declare-fun b!757473 () Bool)

(declare-fun e!486529 () Bool)

(declare-fun tp!244975 () Bool)

(assert (=> b!757473 (= e!486529 (and e!486512 tp!244975))))

(assert (=> b!757474 (= e!486541 (and tp!244960 tp!244983))))

(declare-fun b!757475 () Bool)

(declare-fun e!486540 () Bool)

(assert (=> b!757475 (= e!486540 e!486511)))

(declare-fun res!333738 () Bool)

(assert (=> b!757475 (=> (not res!333738) (not e!486511))))

(assert (=> b!757475 (= res!333738 (= (list!3386 (_1!5529 lt!308961)) (list!3386 acc!372)))))

(declare-fun treated!50 () BalanceConc!5702)

(assert (=> b!757475 (= lt!308961 (lexRec!241 thiss!12529 rules!1486 treated!50))))

(declare-fun mapIsEmpty!5321 () Bool)

(assert (=> mapIsEmpty!5321 mapRes!5322))

(declare-fun b!757476 () Bool)

(declare-fun e!486533 () Bool)

(declare-fun e!486509 () Bool)

(assert (=> b!757476 (= e!486533 e!486509)))

(declare-fun e!486535 () Bool)

(declare-fun e!486536 () Bool)

(assert (=> b!757477 (= e!486535 (and e!486536 tp!244964))))

(declare-fun b!757478 () Bool)

(assert (=> b!757478 (= e!486509 e!486522)))

(declare-fun b!757479 () Bool)

(declare-fun res!333739 () Bool)

(assert (=> b!757479 (=> (not res!333739) (not e!486524))))

(declare-datatypes ((Hashable!1071 0))(
  ( (HashableExt!1070 (__x!6592 Int)) )
))
(declare-datatypes ((tuple2!9632 0))(
  ( (tuple2!9633 (_1!5530 (InoxSet Context!718)) (_2!5530 Int)) )
))
(declare-datatypes ((tuple2!9634 0))(
  ( (tuple2!9635 (_1!5531 tuple2!9632) (_2!5531 Int)) )
))
(declare-datatypes ((List!8391 0))(
  ( (Nil!8377) (Cons!8377 (h!13778 tuple2!9634) (t!91121 List!8391)) )
))
(declare-datatypes ((array!3903 0))(
  ( (array!3904 (arr!1747 (Array (_ BitVec 32) List!8391)) (size!6819 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2198 0))(
  ( (LongMapFixedSize!2199 (defaultEntry!1455 Int) (mask!2962 (_ BitVec 32)) (extraKeys!1346 (_ BitVec 32)) (zeroValue!1356 List!8391) (minValue!1356 List!8391) (_size!2307 (_ BitVec 32)) (_keys!1393 array!3897) (_values!1378 array!3903) (_vacant!1160 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!4337 0))(
  ( (Cell!4338 (v!18513 LongMapFixedSize!2198)) )
))
(declare-datatypes ((MutLongMap!1099 0))(
  ( (LongMap!1099 (underlying!2381 Cell!4337)) (MutLongMapExt!1098 (__x!6593 Int)) )
))
(declare-datatypes ((Cell!4339 0))(
  ( (Cell!4340 (v!18514 MutLongMap!1099)) )
))
(declare-datatypes ((MutableMap!1071 0))(
  ( (MutableMapExt!1070 (__x!6594 Int)) (HashMap!1071 (underlying!2382 Cell!4339) (hashF!2979 Hashable!1071) (_size!2308 (_ BitVec 32)) (defaultValue!1222 Int)) )
))
(declare-datatypes ((CacheFindLongestMatch!264 0))(
  ( (CacheFindLongestMatch!265 (cache!1458 MutableMap!1071) (totalInput!2062 BalanceConc!5702)) )
))
(declare-fun cacheFindLongestMatch!74 () CacheFindLongestMatch!264)

(assert (=> b!757479 (= res!333739 (= (totalInput!2062 cacheFindLongestMatch!74) totalInput!378))))

(declare-fun b!757480 () Bool)

(declare-fun e!486537 () Bool)

(declare-fun tp!244982 () Bool)

(assert (=> b!757480 (= e!486537 (and (inv!10644 (c!128735 totalInput!378)) tp!244982))))

(declare-fun b!757481 () Bool)

(declare-fun e!486519 () Bool)

(declare-fun tp!244956 () Bool)

(assert (=> b!757481 (= e!486519 (and (inv!10644 (c!128735 treated!50)) tp!244956))))

(declare-fun mapNonEmpty!5321 () Bool)

(declare-fun mapRes!5323 () Bool)

(declare-fun tp!244973 () Bool)

(declare-fun tp!244980 () Bool)

(assert (=> mapNonEmpty!5321 (= mapRes!5323 (and tp!244973 tp!244980))))

(declare-fun mapValue!5321 () List!8391)

(declare-fun mapRest!5323 () (Array (_ BitVec 32) List!8391))

(declare-fun mapKey!5322 () (_ BitVec 32))

(assert (=> mapNonEmpty!5321 (= (arr!1747 (_values!1378 (v!18513 (underlying!2381 (v!18514 (underlying!2382 (cache!1458 cacheFindLongestMatch!74))))))) (store mapRest!5323 mapKey!5322 mapValue!5321))))

(declare-fun b!757482 () Bool)

(declare-fun e!486534 () Bool)

(declare-fun tp!244957 () Bool)

(assert (=> b!757482 (= e!486534 (and (inv!10644 (c!128735 (totalInput!2062 cacheFindLongestMatch!74))) tp!244957))))

(declare-fun e!486538 () Bool)

(declare-fun e!486527 () Bool)

(assert (=> b!757483 (= e!486538 (and e!486527 tp!244959))))

(declare-fun b!757484 () Bool)

(declare-fun e!486530 () Bool)

(declare-fun inv!10646 (BalanceConc!5702) Bool)

(assert (=> b!757484 (= e!486530 (and e!486535 (inv!10646 (totalInput!2062 cacheFindLongestMatch!74)) e!486534))))

(declare-fun tp!244977 () Bool)

(declare-fun tp!244961 () Bool)

(declare-fun array_inv!1269 (array!3899) Bool)

(assert (=> b!757485 (= e!486543 (and tp!244972 tp!244961 tp!244977 (array_inv!1267 (_keys!1391 (v!18509 (underlying!2377 (v!18510 (underlying!2378 (cache!1456 cacheDown!515))))))) (array_inv!1269 (_values!1376 (v!18509 (underlying!2377 (v!18510 (underlying!2378 (cache!1456 cacheDown!515))))))) e!486516))))

(declare-fun b!757486 () Bool)

(declare-fun res!333744 () Bool)

(assert (=> b!757486 (=> (not res!333744) (not e!486524))))

(declare-fun valid!891 (CacheFindLongestMatch!264) Bool)

(assert (=> b!757486 (= res!333744 (valid!891 cacheFindLongestMatch!74))))

(declare-fun b!757487 () Bool)

(declare-fun res!333742 () Bool)

(assert (=> b!757487 (=> (not res!333742) (not e!486540))))

(declare-fun ++!2196 (List!8388 List!8388) List!8388)

(assert (=> b!757487 (= res!333742 (= (list!3387 totalInput!378) (++!2196 (list!3387 treated!50) (list!3387 input!870))))))

(declare-fun b!757488 () Bool)

(declare-fun size!6820 (BalanceConc!5702) Int)

(assert (=> b!757488 (= e!486524 (< (size!6820 input!870) 0))))

(declare-fun b!757489 () Bool)

(declare-fun e!486531 () Bool)

(declare-fun tp!244971 () Bool)

(assert (=> b!757489 (= e!486531 (and tp!244971 mapRes!5323))))

(declare-fun condMapEmpty!5321 () Bool)

(declare-fun mapDefault!5323 () List!8391)

(assert (=> b!757489 (= condMapEmpty!5321 (= (arr!1747 (_values!1378 (v!18513 (underlying!2381 (v!18514 (underlying!2382 (cache!1458 cacheFindLongestMatch!74))))))) ((as const (Array (_ BitVec 32) List!8391)) mapDefault!5323)))))

(declare-fun tp!244967 () Bool)

(declare-fun e!486525 () Bool)

(declare-fun tp!244968 () Bool)

(declare-fun array_inv!1270 (array!3903) Bool)

(assert (=> b!757490 (= e!486525 (and tp!244979 tp!244967 tp!244968 (array_inv!1267 (_keys!1393 (v!18513 (underlying!2381 (v!18514 (underlying!2382 (cache!1458 cacheFindLongestMatch!74))))))) (array_inv!1270 (_values!1378 (v!18513 (underlying!2381 (v!18514 (underlying!2382 (cache!1458 cacheFindLongestMatch!74))))))) e!486531))))

(declare-fun mapIsEmpty!5322 () Bool)

(assert (=> mapIsEmpty!5322 mapRes!5323))

(declare-fun e!486517 () Bool)

(assert (=> b!757491 (= e!486513 (and e!486517 tp!244958))))

(declare-fun mapNonEmpty!5322 () Bool)

(declare-fun tp!244974 () Bool)

(declare-fun tp!244962 () Bool)

(assert (=> mapNonEmpty!5322 (= mapRes!5322 (and tp!244974 tp!244962))))

(declare-fun mapKey!5321 () (_ BitVec 32))

(declare-fun mapRest!5321 () (Array (_ BitVec 32) List!8386))

(declare-fun mapValue!5323 () List!8386)

(assert (=> mapNonEmpty!5322 (= (arr!1746 (_values!1377 (v!18511 (underlying!2379 (v!18512 (underlying!2380 (cache!1457 cacheUp!502))))))) (store mapRest!5321 mapKey!5321 mapValue!5323))))

(declare-fun b!757492 () Bool)

(declare-fun lt!308964 () MutLongMap!1098)

(get-info :version)

(assert (=> b!757492 (= e!486527 (and e!486533 ((_ is LongMap!1098) lt!308964)))))

(assert (=> b!757492 (= lt!308964 (v!18512 (underlying!2380 (cache!1457 cacheUp!502))))))

(declare-fun mapIsEmpty!5323 () Bool)

(assert (=> mapIsEmpty!5323 mapRes!5321))

(declare-fun b!757493 () Bool)

(declare-fun res!333748 () Bool)

(assert (=> b!757493 (=> (not res!333748) (not e!486540))))

(declare-fun isEmpty!5156 (List!8390) Bool)

(assert (=> b!757493 (= res!333748 (not (isEmpty!5156 rules!1486)))))

(declare-fun mapNonEmpty!5323 () Bool)

(declare-fun tp!244984 () Bool)

(declare-fun tp!244976 () Bool)

(assert (=> mapNonEmpty!5323 (= mapRes!5321 (and tp!244984 tp!244976))))

(declare-fun mapValue!5322 () List!8385)

(declare-fun mapKey!5323 () (_ BitVec 32))

(declare-fun mapRest!5322 () (Array (_ BitVec 32) List!8385))

(assert (=> mapNonEmpty!5323 (= (arr!1745 (_values!1376 (v!18509 (underlying!2377 (v!18510 (underlying!2378 (cache!1456 cacheDown!515))))))) (store mapRest!5322 mapKey!5323 mapValue!5322))))

(declare-fun b!757494 () Bool)

(declare-fun res!333749 () Bool)

(assert (=> b!757494 (=> (not res!333749) (not e!486540))))

(declare-fun rulesInvariant!1319 (LexerInterface!1412 List!8390) Bool)

(assert (=> b!757494 (= res!333749 (rulesInvariant!1319 thiss!12529 rules!1486))))

(declare-fun b!757495 () Bool)

(declare-fun e!486532 () Bool)

(assert (=> b!757495 (= e!486532 e!486518)))

(declare-fun b!757496 () Bool)

(declare-fun e!486526 () Bool)

(assert (=> b!757496 (= e!486526 e!486538)))

(declare-fun b!757497 () Bool)

(declare-fun res!333743 () Bool)

(assert (=> b!757497 (=> (not res!333743) (not e!486524))))

(assert (=> b!757497 (= res!333743 (= (list!3387 (_2!5529 lt!308965)) (list!3387 (_2!5529 lt!308963))))))

(declare-fun b!757498 () Bool)

(declare-fun res!333745 () Bool)

(assert (=> b!757498 (=> (not res!333745) (not e!486524))))

(declare-fun valid!892 (CacheDown!604) Bool)

(assert (=> b!757498 (= res!333745 (valid!892 cacheDown!515))))

(declare-fun b!757499 () Bool)

(declare-fun e!486515 () Bool)

(declare-fun e!486523 () Bool)

(assert (=> b!757499 (= e!486515 e!486523)))

(declare-fun b!757500 () Bool)

(declare-fun lt!308966 () MutLongMap!1097)

(assert (=> b!757500 (= e!486517 (and e!486532 ((_ is LongMap!1097) lt!308966)))))

(assert (=> b!757500 (= lt!308966 (v!18510 (underlying!2378 (cache!1456 cacheDown!515))))))

(declare-fun b!757501 () Bool)

(declare-fun lt!308962 () MutLongMap!1099)

(assert (=> b!757501 (= e!486536 (and e!486515 ((_ is LongMap!1099) lt!308962)))))

(assert (=> b!757501 (= lt!308962 (v!18514 (underlying!2382 (cache!1458 cacheFindLongestMatch!74))))))

(declare-fun b!757502 () Bool)

(declare-fun e!486528 () Bool)

(declare-fun tp!244981 () Bool)

(declare-fun inv!10647 (Conc!2846) Bool)

(assert (=> b!757502 (= e!486528 (and (inv!10647 (c!128736 acc!372)) tp!244981))))

(declare-fun b!757472 () Bool)

(assert (=> b!757472 (= e!486523 e!486525)))

(declare-fun res!333740 () Bool)

(assert (=> start!70430 (=> (not res!333740) (not e!486540))))

(assert (=> start!70430 (= res!333740 ((_ is Lexer!1410) thiss!12529))))

(assert (=> start!70430 e!486540))

(declare-fun inv!10648 (BalanceConc!5704) Bool)

(assert (=> start!70430 (and (inv!10648 acc!372) e!486528)))

(assert (=> start!70430 (and (inv!10646 treated!50) e!486519)))

(assert (=> start!70430 (and (inv!10646 totalInput!378) e!486537)))

(assert (=> start!70430 (and (inv!10646 input!870) e!486539)))

(assert (=> start!70430 e!486529))

(assert (=> start!70430 true))

(declare-fun inv!10649 (CacheUp!596) Bool)

(assert (=> start!70430 (and (inv!10649 cacheUp!502) e!486526)))

(declare-fun inv!10650 (CacheDown!604) Bool)

(assert (=> start!70430 (and (inv!10650 cacheDown!515) e!486542)))

(declare-fun inv!10651 (CacheFindLongestMatch!264) Bool)

(assert (=> start!70430 (and (inv!10651 cacheFindLongestMatch!74) e!486530)))

(assert (= (and start!70430 res!333740) b!757493))

(assert (= (and b!757493 res!333748) b!757494))

(assert (= (and b!757494 res!333749) b!757487))

(assert (= (and b!757487 res!333742) b!757475))

(assert (= (and b!757475 res!333738) b!757471))

(assert (= (and b!757471 res!333746) b!757466))

(assert (= (and b!757466 res!333741) b!757497))

(assert (= (and b!757497 res!333743) b!757470))

(assert (= (and b!757470 res!333747) b!757498))

(assert (= (and b!757498 res!333745) b!757486))

(assert (= (and b!757486 res!333744) b!757479))

(assert (= (and b!757479 res!333739) b!757488))

(assert (= start!70430 b!757502))

(assert (= start!70430 b!757481))

(assert (= start!70430 b!757480))

(assert (= start!70430 b!757467))

(assert (= b!757469 b!757474))

(assert (= b!757473 b!757469))

(assert (= (and start!70430 ((_ is Cons!8376) rules!1486)) b!757473))

(assert (= (and b!757468 condMapEmpty!5323) mapIsEmpty!5321))

(assert (= (and b!757468 (not condMapEmpty!5323)) mapNonEmpty!5322))

(assert (= b!757464 b!757468))

(assert (= b!757478 b!757464))

(assert (= b!757476 b!757478))

(assert (= (and b!757492 ((_ is LongMap!1098) (v!18512 (underlying!2380 (cache!1457 cacheUp!502))))) b!757476))

(assert (= b!757483 b!757492))

(assert (= (and b!757496 ((_ is HashMap!1070) (cache!1457 cacheUp!502))) b!757483))

(assert (= start!70430 b!757496))

(assert (= (and b!757462 condMapEmpty!5322) mapIsEmpty!5323))

(assert (= (and b!757462 (not condMapEmpty!5322)) mapNonEmpty!5323))

(assert (= b!757485 b!757462))

(assert (= b!757465 b!757485))

(assert (= b!757495 b!757465))

(assert (= (and b!757500 ((_ is LongMap!1097) (v!18510 (underlying!2378 (cache!1456 cacheDown!515))))) b!757495))

(assert (= b!757491 b!757500))

(assert (= (and b!757463 ((_ is HashMap!1069) (cache!1456 cacheDown!515))) b!757491))

(assert (= start!70430 b!757463))

(assert (= (and b!757489 condMapEmpty!5321) mapIsEmpty!5322))

(assert (= (and b!757489 (not condMapEmpty!5321)) mapNonEmpty!5321))

(assert (= b!757490 b!757489))

(assert (= b!757472 b!757490))

(assert (= b!757499 b!757472))

(assert (= (and b!757501 ((_ is LongMap!1099) (v!18514 (underlying!2382 (cache!1458 cacheFindLongestMatch!74))))) b!757499))

(assert (= b!757477 b!757501))

(assert (= (and b!757484 ((_ is HashMap!1071) (cache!1458 cacheFindLongestMatch!74))) b!757477))

(assert (= b!757484 b!757482))

(assert (= start!70430 b!757484))

(declare-fun m!1023696 () Bool)

(assert (=> b!757486 m!1023696))

(declare-fun m!1023698 () Bool)

(assert (=> b!757497 m!1023698))

(declare-fun m!1023700 () Bool)

(assert (=> b!757497 m!1023700))

(declare-fun m!1023702 () Bool)

(assert (=> b!757471 m!1023702))

(assert (=> b!757471 m!1023702))

(declare-fun m!1023704 () Bool)

(assert (=> b!757471 m!1023704))

(declare-fun m!1023706 () Bool)

(assert (=> b!757466 m!1023706))

(declare-fun m!1023708 () Bool)

(assert (=> b!757466 m!1023708))

(declare-fun m!1023710 () Bool)

(assert (=> b!757466 m!1023710))

(declare-fun m!1023712 () Bool)

(assert (=> b!757466 m!1023712))

(assert (=> b!757466 m!1023706))

(declare-fun m!1023714 () Bool)

(assert (=> b!757466 m!1023714))

(declare-fun m!1023716 () Bool)

(assert (=> mapNonEmpty!5323 m!1023716))

(declare-fun m!1023718 () Bool)

(assert (=> b!757488 m!1023718))

(declare-fun m!1023720 () Bool)

(assert (=> b!757484 m!1023720))

(declare-fun m!1023722 () Bool)

(assert (=> b!757490 m!1023722))

(declare-fun m!1023724 () Bool)

(assert (=> b!757490 m!1023724))

(declare-fun m!1023726 () Bool)

(assert (=> b!757469 m!1023726))

(declare-fun m!1023728 () Bool)

(assert (=> b!757469 m!1023728))

(declare-fun m!1023730 () Bool)

(assert (=> b!757493 m!1023730))

(declare-fun m!1023732 () Bool)

(assert (=> b!757464 m!1023732))

(declare-fun m!1023734 () Bool)

(assert (=> b!757464 m!1023734))

(declare-fun m!1023736 () Bool)

(assert (=> b!757502 m!1023736))

(declare-fun m!1023738 () Bool)

(assert (=> b!757494 m!1023738))

(declare-fun m!1023740 () Bool)

(assert (=> b!757482 m!1023740))

(declare-fun m!1023742 () Bool)

(assert (=> b!757498 m!1023742))

(declare-fun m!1023744 () Bool)

(assert (=> b!757467 m!1023744))

(declare-fun m!1023746 () Bool)

(assert (=> b!757470 m!1023746))

(declare-fun m!1023748 () Bool)

(assert (=> b!757480 m!1023748))

(declare-fun m!1023750 () Bool)

(assert (=> mapNonEmpty!5322 m!1023750))

(declare-fun m!1023752 () Bool)

(assert (=> b!757487 m!1023752))

(declare-fun m!1023754 () Bool)

(assert (=> b!757487 m!1023754))

(declare-fun m!1023756 () Bool)

(assert (=> b!757487 m!1023756))

(assert (=> b!757487 m!1023754))

(assert (=> b!757487 m!1023756))

(declare-fun m!1023758 () Bool)

(assert (=> b!757487 m!1023758))

(declare-fun m!1023760 () Bool)

(assert (=> b!757485 m!1023760))

(declare-fun m!1023762 () Bool)

(assert (=> b!757485 m!1023762))

(declare-fun m!1023764 () Bool)

(assert (=> b!757481 m!1023764))

(declare-fun m!1023766 () Bool)

(assert (=> b!757475 m!1023766))

(declare-fun m!1023768 () Bool)

(assert (=> b!757475 m!1023768))

(declare-fun m!1023770 () Bool)

(assert (=> b!757475 m!1023770))

(declare-fun m!1023772 () Bool)

(assert (=> start!70430 m!1023772))

(declare-fun m!1023774 () Bool)

(assert (=> start!70430 m!1023774))

(declare-fun m!1023776 () Bool)

(assert (=> start!70430 m!1023776))

(declare-fun m!1023778 () Bool)

(assert (=> start!70430 m!1023778))

(declare-fun m!1023780 () Bool)

(assert (=> start!70430 m!1023780))

(declare-fun m!1023782 () Bool)

(assert (=> start!70430 m!1023782))

(declare-fun m!1023784 () Bool)

(assert (=> start!70430 m!1023784))

(declare-fun m!1023786 () Bool)

(assert (=> mapNonEmpty!5321 m!1023786))

(check-sat (not b!757494) (not mapNonEmpty!5321) b_and!70537 (not b!757470) (not start!70430) (not b_next!23697) (not b!757490) (not b_next!23705) (not b!757502) (not b!757498) (not b!757486) b_and!70551 (not b_next!23707) b_and!70543 (not b!757471) (not mapNonEmpty!5322) (not b!757464) (not b!757480) (not b!757466) (not b!757484) (not b_next!23701) (not b!757473) (not b!757493) b_and!70541 (not b!757462) (not b!757485) b_and!70547 (not b!757481) (not b_next!23699) (not mapNonEmpty!5323) (not b!757487) (not b!757469) b_and!70549 (not b!757489) (not b_next!23703) (not b!757497) (not b_next!23695) (not b!757488) (not b!757482) (not b!757467) b_and!70545 b_and!70539 (not b_next!23693) (not b!757475) (not b!757468))
(check-sat (not b_next!23705) b_and!70537 (not b_next!23701) (not b_next!23697) b_and!70541 b_and!70547 (not b_next!23699) (not b_next!23695) b_and!70545 b_and!70551 (not b_next!23707) b_and!70543 b_and!70549 (not b_next!23703) b_and!70539 (not b_next!23693))
(get-model)

(declare-fun d!248016 () Bool)

(declare-fun c!128739 () Bool)

(assert (=> d!248016 (= c!128739 ((_ is Node!2846) (c!128736 acc!372)))))

(declare-fun e!486548 () Bool)

(assert (=> d!248016 (= (inv!10647 (c!128736 acc!372)) e!486548)))

(declare-fun b!757509 () Bool)

(declare-fun inv!10652 (Conc!2846) Bool)

(assert (=> b!757509 (= e!486548 (inv!10652 (c!128736 acc!372)))))

(declare-fun b!757510 () Bool)

(declare-fun e!486549 () Bool)

(assert (=> b!757510 (= e!486548 e!486549)))

(declare-fun res!333752 () Bool)

(assert (=> b!757510 (= res!333752 (not ((_ is Leaf!4178) (c!128736 acc!372))))))

(assert (=> b!757510 (=> res!333752 e!486549)))

(declare-fun b!757511 () Bool)

(declare-fun inv!10653 (Conc!2846) Bool)

(assert (=> b!757511 (= e!486549 (inv!10653 (c!128736 acc!372)))))

(assert (= (and d!248016 c!128739) b!757509))

(assert (= (and d!248016 (not c!128739)) b!757510))

(assert (= (and b!757510 (not res!333752)) b!757511))

(declare-fun m!1023788 () Bool)

(assert (=> b!757509 m!1023788))

(declare-fun m!1023790 () Bool)

(assert (=> b!757511 m!1023790))

(assert (=> b!757502 d!248016))

(declare-fun d!248018 () Bool)

(assert (=> d!248018 (= (isEmpty!5156 rules!1486) ((_ is Nil!8376) rules!1486))))

(assert (=> b!757493 d!248018))

(declare-fun b!757526 () Bool)

(declare-fun e!486559 () Bool)

(declare-fun lt!308975 () tuple2!9630)

(assert (=> b!757526 (= e!486559 (= (list!3387 (_2!5529 lt!308975)) (list!3387 input!870)))))

(declare-fun b!757527 () Bool)

(declare-fun e!486558 () tuple2!9630)

(assert (=> b!757527 (= e!486558 (tuple2!9631 (BalanceConc!5705 Empty!2846) input!870))))

(declare-fun b!757528 () Bool)

(declare-fun e!486560 () Bool)

(assert (=> b!757528 (= e!486559 e!486560)))

(declare-fun res!333760 () Bool)

(assert (=> b!757528 (= res!333760 (< (size!6820 (_2!5529 lt!308975)) (size!6820 input!870)))))

(assert (=> b!757528 (=> (not res!333760) (not e!486560))))

(declare-fun b!757530 () Bool)

(declare-fun isEmpty!5157 (BalanceConc!5704) Bool)

(assert (=> b!757530 (= e!486560 (not (isEmpty!5157 (_1!5529 lt!308975))))))

(declare-fun b!757531 () Bool)

(declare-fun lt!308973 () tuple2!9630)

(declare-datatypes ((tuple2!9636 0))(
  ( (tuple2!9637 (_1!5532 Token!2918) (_2!5532 BalanceConc!5702)) )
))
(declare-datatypes ((Option!1850 0))(
  ( (None!1849) (Some!1849 (v!18515 tuple2!9636)) )
))
(declare-fun lt!308974 () Option!1850)

(declare-fun prepend!319 (BalanceConc!5704 Token!2918) BalanceConc!5704)

(assert (=> b!757531 (= e!486558 (tuple2!9631 (prepend!319 (_1!5529 lt!308973) (_1!5532 (v!18515 lt!308974))) (_2!5529 lt!308973)))))

(assert (=> b!757531 (= lt!308973 (lexRec!241 thiss!12529 rules!1486 (_2!5532 (v!18515 lt!308974))))))

(declare-fun e!486561 () Bool)

(declare-fun b!757532 () Bool)

(declare-datatypes ((tuple2!9638 0))(
  ( (tuple2!9639 (_1!5533 List!8389) (_2!5533 List!8388)) )
))
(declare-fun lexList!368 (LexerInterface!1412 List!8390 List!8388) tuple2!9638)

(assert (=> b!757532 (= e!486561 (= (list!3387 (_2!5529 lt!308975)) (_2!5533 (lexList!368 thiss!12529 rules!1486 (list!3387 input!870)))))))

(declare-fun b!757529 () Bool)

(declare-fun res!333759 () Bool)

(assert (=> b!757529 (=> (not res!333759) (not e!486561))))

(assert (=> b!757529 (= res!333759 (= (list!3386 (_1!5529 lt!308975)) (_1!5533 (lexList!368 thiss!12529 rules!1486 (list!3387 input!870)))))))

(declare-fun d!248020 () Bool)

(assert (=> d!248020 e!486561))

(declare-fun res!333761 () Bool)

(assert (=> d!248020 (=> (not res!333761) (not e!486561))))

(assert (=> d!248020 (= res!333761 e!486559)))

(declare-fun c!128745 () Bool)

(declare-fun size!6821 (BalanceConc!5704) Int)

(assert (=> d!248020 (= c!128745 (> (size!6821 (_1!5529 lt!308975)) 0))))

(assert (=> d!248020 (= lt!308975 e!486558)))

(declare-fun c!128746 () Bool)

(assert (=> d!248020 (= c!128746 ((_ is Some!1849) lt!308974))))

(declare-fun maxPrefixZipperSequence!515 (LexerInterface!1412 List!8390 BalanceConc!5702) Option!1850)

(assert (=> d!248020 (= lt!308974 (maxPrefixZipperSequence!515 thiss!12529 rules!1486 input!870))))

(assert (=> d!248020 (= (lexRec!241 thiss!12529 rules!1486 input!870) lt!308975)))

(assert (= (and d!248020 c!128746) b!757531))

(assert (= (and d!248020 (not c!128746)) b!757527))

(assert (= (and d!248020 c!128745) b!757528))

(assert (= (and d!248020 (not c!128745)) b!757526))

(assert (= (and b!757528 res!333760) b!757530))

(assert (= (and d!248020 res!333761) b!757529))

(assert (= (and b!757529 res!333759) b!757532))

(declare-fun m!1023792 () Bool)

(assert (=> b!757529 m!1023792))

(assert (=> b!757529 m!1023756))

(assert (=> b!757529 m!1023756))

(declare-fun m!1023794 () Bool)

(assert (=> b!757529 m!1023794))

(declare-fun m!1023796 () Bool)

(assert (=> b!757531 m!1023796))

(declare-fun m!1023798 () Bool)

(assert (=> b!757531 m!1023798))

(declare-fun m!1023800 () Bool)

(assert (=> b!757528 m!1023800))

(assert (=> b!757528 m!1023718))

(declare-fun m!1023802 () Bool)

(assert (=> b!757530 m!1023802))

(declare-fun m!1023804 () Bool)

(assert (=> b!757532 m!1023804))

(assert (=> b!757532 m!1023756))

(assert (=> b!757532 m!1023756))

(assert (=> b!757532 m!1023794))

(assert (=> b!757526 m!1023804))

(assert (=> b!757526 m!1023756))

(declare-fun m!1023806 () Bool)

(assert (=> d!248020 m!1023806))

(declare-fun m!1023808 () Bool)

(assert (=> d!248020 m!1023808))

(assert (=> b!757466 d!248020))

(declare-fun d!248022 () Bool)

(declare-fun list!3388 (Conc!2846) List!8389)

(assert (=> d!248022 (= (list!3386 (_1!5529 lt!308965)) (list!3388 (c!128736 (_1!5529 lt!308965))))))

(declare-fun bs!161139 () Bool)

(assert (= bs!161139 d!248022))

(declare-fun m!1023810 () Bool)

(assert (=> bs!161139 m!1023810))

(assert (=> b!757466 d!248022))

(declare-fun d!248024 () Bool)

(assert (=> d!248024 (= (list!3386 (++!2195 acc!372 (_1!5529 lt!308963))) (list!3388 (c!128736 (++!2195 acc!372 (_1!5529 lt!308963)))))))

(declare-fun bs!161140 () Bool)

(assert (= bs!161140 d!248024))

(declare-fun m!1023812 () Bool)

(assert (=> bs!161140 m!1023812))

(assert (=> b!757466 d!248024))

(declare-fun b!757533 () Bool)

(declare-fun e!486563 () Bool)

(declare-fun lt!308978 () tuple2!9630)

(assert (=> b!757533 (= e!486563 (= (list!3387 (_2!5529 lt!308978)) (list!3387 totalInput!378)))))

(declare-fun b!757534 () Bool)

(declare-fun e!486562 () tuple2!9630)

(assert (=> b!757534 (= e!486562 (tuple2!9631 (BalanceConc!5705 Empty!2846) totalInput!378))))

(declare-fun b!757535 () Bool)

(declare-fun e!486564 () Bool)

(assert (=> b!757535 (= e!486563 e!486564)))

(declare-fun res!333763 () Bool)

(assert (=> b!757535 (= res!333763 (< (size!6820 (_2!5529 lt!308978)) (size!6820 totalInput!378)))))

(assert (=> b!757535 (=> (not res!333763) (not e!486564))))

(declare-fun b!757537 () Bool)

(assert (=> b!757537 (= e!486564 (not (isEmpty!5157 (_1!5529 lt!308978))))))

(declare-fun b!757538 () Bool)

(declare-fun lt!308976 () tuple2!9630)

(declare-fun lt!308977 () Option!1850)

(assert (=> b!757538 (= e!486562 (tuple2!9631 (prepend!319 (_1!5529 lt!308976) (_1!5532 (v!18515 lt!308977))) (_2!5529 lt!308976)))))

(assert (=> b!757538 (= lt!308976 (lexRec!241 thiss!12529 rules!1486 (_2!5532 (v!18515 lt!308977))))))

(declare-fun e!486565 () Bool)

(declare-fun b!757539 () Bool)

(assert (=> b!757539 (= e!486565 (= (list!3387 (_2!5529 lt!308978)) (_2!5533 (lexList!368 thiss!12529 rules!1486 (list!3387 totalInput!378)))))))

(declare-fun b!757536 () Bool)

(declare-fun res!333762 () Bool)

(assert (=> b!757536 (=> (not res!333762) (not e!486565))))

(assert (=> b!757536 (= res!333762 (= (list!3386 (_1!5529 lt!308978)) (_1!5533 (lexList!368 thiss!12529 rules!1486 (list!3387 totalInput!378)))))))

(declare-fun d!248026 () Bool)

(assert (=> d!248026 e!486565))

(declare-fun res!333764 () Bool)

(assert (=> d!248026 (=> (not res!333764) (not e!486565))))

(assert (=> d!248026 (= res!333764 e!486563)))

(declare-fun c!128747 () Bool)

(assert (=> d!248026 (= c!128747 (> (size!6821 (_1!5529 lt!308978)) 0))))

(assert (=> d!248026 (= lt!308978 e!486562)))

(declare-fun c!128748 () Bool)

(assert (=> d!248026 (= c!128748 ((_ is Some!1849) lt!308977))))

(assert (=> d!248026 (= lt!308977 (maxPrefixZipperSequence!515 thiss!12529 rules!1486 totalInput!378))))

(assert (=> d!248026 (= (lexRec!241 thiss!12529 rules!1486 totalInput!378) lt!308978)))

(assert (= (and d!248026 c!128748) b!757538))

(assert (= (and d!248026 (not c!128748)) b!757534))

(assert (= (and d!248026 c!128747) b!757535))

(assert (= (and d!248026 (not c!128747)) b!757533))

(assert (= (and b!757535 res!333763) b!757537))

(assert (= (and d!248026 res!333764) b!757536))

(assert (= (and b!757536 res!333762) b!757539))

(declare-fun m!1023814 () Bool)

(assert (=> b!757536 m!1023814))

(assert (=> b!757536 m!1023752))

(assert (=> b!757536 m!1023752))

(declare-fun m!1023816 () Bool)

(assert (=> b!757536 m!1023816))

(declare-fun m!1023818 () Bool)

(assert (=> b!757538 m!1023818))

(declare-fun m!1023820 () Bool)

(assert (=> b!757538 m!1023820))

(declare-fun m!1023822 () Bool)

(assert (=> b!757535 m!1023822))

(declare-fun m!1023824 () Bool)

(assert (=> b!757535 m!1023824))

(declare-fun m!1023826 () Bool)

(assert (=> b!757537 m!1023826))

(declare-fun m!1023828 () Bool)

(assert (=> b!757539 m!1023828))

(assert (=> b!757539 m!1023752))

(assert (=> b!757539 m!1023752))

(assert (=> b!757539 m!1023816))

(assert (=> b!757533 m!1023828))

(assert (=> b!757533 m!1023752))

(declare-fun m!1023830 () Bool)

(assert (=> d!248026 m!1023830))

(declare-fun m!1023832 () Bool)

(assert (=> d!248026 m!1023832))

(assert (=> b!757466 d!248026))

(declare-fun b!757550 () Bool)

(declare-fun res!333774 () Bool)

(declare-fun e!486568 () Bool)

(assert (=> b!757550 (=> (not res!333774) (not e!486568))))

(declare-fun height!370 (Conc!2846) Int)

(declare-fun ++!2197 (Conc!2846 Conc!2846) Conc!2846)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!757550 (= res!333774 (>= (height!370 (++!2197 (c!128736 acc!372) (c!128736 (_1!5529 lt!308963)))) (max!0 (height!370 (c!128736 acc!372)) (height!370 (c!128736 (_1!5529 lt!308963))))))))

(declare-fun b!757551 () Bool)

(declare-fun lt!308981 () BalanceConc!5704)

(declare-fun ++!2198 (List!8389 List!8389) List!8389)

(assert (=> b!757551 (= e!486568 (= (list!3386 lt!308981) (++!2198 (list!3386 acc!372) (list!3386 (_1!5529 lt!308963)))))))

(declare-fun d!248028 () Bool)

(assert (=> d!248028 e!486568))

(declare-fun res!333776 () Bool)

(assert (=> d!248028 (=> (not res!333776) (not e!486568))))

(declare-fun appendAssocInst!175 (Conc!2846 Conc!2846) Bool)

(assert (=> d!248028 (= res!333776 (appendAssocInst!175 (c!128736 acc!372) (c!128736 (_1!5529 lt!308963))))))

(assert (=> d!248028 (= lt!308981 (BalanceConc!5705 (++!2197 (c!128736 acc!372) (c!128736 (_1!5529 lt!308963)))))))

(assert (=> d!248028 (= (++!2195 acc!372 (_1!5529 lt!308963)) lt!308981)))

(declare-fun b!757549 () Bool)

(declare-fun res!333773 () Bool)

(assert (=> b!757549 (=> (not res!333773) (not e!486568))))

(assert (=> b!757549 (= res!333773 (<= (height!370 (++!2197 (c!128736 acc!372) (c!128736 (_1!5529 lt!308963)))) (+ (max!0 (height!370 (c!128736 acc!372)) (height!370 (c!128736 (_1!5529 lt!308963)))) 1)))))

(declare-fun b!757548 () Bool)

(declare-fun res!333775 () Bool)

(assert (=> b!757548 (=> (not res!333775) (not e!486568))))

(declare-fun isBalanced!760 (Conc!2846) Bool)

(assert (=> b!757548 (= res!333775 (isBalanced!760 (++!2197 (c!128736 acc!372) (c!128736 (_1!5529 lt!308963)))))))

(assert (= (and d!248028 res!333776) b!757548))

(assert (= (and b!757548 res!333775) b!757549))

(assert (= (and b!757549 res!333773) b!757550))

(assert (= (and b!757550 res!333774) b!757551))

(declare-fun m!1023834 () Bool)

(assert (=> b!757551 m!1023834))

(assert (=> b!757551 m!1023768))

(declare-fun m!1023836 () Bool)

(assert (=> b!757551 m!1023836))

(assert (=> b!757551 m!1023768))

(assert (=> b!757551 m!1023836))

(declare-fun m!1023838 () Bool)

(assert (=> b!757551 m!1023838))

(declare-fun m!1023840 () Bool)

(assert (=> d!248028 m!1023840))

(declare-fun m!1023842 () Bool)

(assert (=> d!248028 m!1023842))

(assert (=> b!757550 m!1023842))

(declare-fun m!1023844 () Bool)

(assert (=> b!757550 m!1023844))

(declare-fun m!1023846 () Bool)

(assert (=> b!757550 m!1023846))

(assert (=> b!757550 m!1023842))

(declare-fun m!1023848 () Bool)

(assert (=> b!757550 m!1023848))

(assert (=> b!757550 m!1023846))

(assert (=> b!757550 m!1023844))

(declare-fun m!1023850 () Bool)

(assert (=> b!757550 m!1023850))

(assert (=> b!757548 m!1023842))

(assert (=> b!757548 m!1023842))

(declare-fun m!1023852 () Bool)

(assert (=> b!757548 m!1023852))

(assert (=> b!757549 m!1023842))

(assert (=> b!757549 m!1023844))

(assert (=> b!757549 m!1023846))

(assert (=> b!757549 m!1023842))

(assert (=> b!757549 m!1023848))

(assert (=> b!757549 m!1023846))

(assert (=> b!757549 m!1023844))

(assert (=> b!757549 m!1023850))

(assert (=> b!757466 d!248028))

(declare-fun d!248030 () Bool)

(assert (=> d!248030 (= (array_inv!1267 (_keys!1391 (v!18509 (underlying!2377 (v!18510 (underlying!2378 (cache!1456 cacheDown!515))))))) (bvsge (size!6815 (_keys!1391 (v!18509 (underlying!2377 (v!18510 (underlying!2378 (cache!1456 cacheDown!515))))))) #b00000000000000000000000000000000))))

(assert (=> b!757485 d!248030))

(declare-fun d!248032 () Bool)

(assert (=> d!248032 (= (array_inv!1269 (_values!1376 (v!18509 (underlying!2377 (v!18510 (underlying!2378 (cache!1456 cacheDown!515))))))) (bvsge (size!6816 (_values!1376 (v!18509 (underlying!2377 (v!18510 (underlying!2378 (cache!1456 cacheDown!515))))))) #b00000000000000000000000000000000))))

(assert (=> b!757485 d!248032))

(declare-fun d!248034 () Bool)

(declare-fun validCacheMapFindLongestMatch!39 (MutableMap!1071 BalanceConc!5702) Bool)

(assert (=> d!248034 (= (valid!891 cacheFindLongestMatch!74) (validCacheMapFindLongestMatch!39 (cache!1458 cacheFindLongestMatch!74) (totalInput!2062 cacheFindLongestMatch!74)))))

(declare-fun bs!161141 () Bool)

(assert (= bs!161141 d!248034))

(declare-fun m!1023854 () Bool)

(assert (=> bs!161141 m!1023854))

(assert (=> b!757486 d!248034))

(declare-fun d!248036 () Bool)

(declare-fun res!333779 () Bool)

(declare-fun e!486571 () Bool)

(assert (=> d!248036 (=> (not res!333779) (not e!486571))))

(assert (=> d!248036 (= res!333779 ((_ is HashMap!1071) (cache!1458 cacheFindLongestMatch!74)))))

(assert (=> d!248036 (= (inv!10651 cacheFindLongestMatch!74) e!486571)))

(declare-fun b!757554 () Bool)

(assert (=> b!757554 (= e!486571 (validCacheMapFindLongestMatch!39 (cache!1458 cacheFindLongestMatch!74) (totalInput!2062 cacheFindLongestMatch!74)))))

(assert (= (and d!248036 res!333779) b!757554))

(assert (=> b!757554 m!1023854))

(assert (=> start!70430 d!248036))

(declare-fun d!248038 () Bool)

(assert (=> d!248038 (= (inv!10648 acc!372) (isBalanced!760 (c!128736 acc!372)))))

(declare-fun bs!161142 () Bool)

(assert (= bs!161142 d!248038))

(declare-fun m!1023856 () Bool)

(assert (=> bs!161142 m!1023856))

(assert (=> start!70430 d!248038))

(declare-fun d!248040 () Bool)

(declare-fun isBalanced!761 (Conc!2845) Bool)

(assert (=> d!248040 (= (inv!10646 input!870) (isBalanced!761 (c!128735 input!870)))))

(declare-fun bs!161143 () Bool)

(assert (= bs!161143 d!248040))

(declare-fun m!1023858 () Bool)

(assert (=> bs!161143 m!1023858))

(assert (=> start!70430 d!248040))

(declare-fun d!248042 () Bool)

(declare-fun res!333782 () Bool)

(declare-fun e!486574 () Bool)

(assert (=> d!248042 (=> (not res!333782) (not e!486574))))

(assert (=> d!248042 (= res!333782 ((_ is HashMap!1069) (cache!1456 cacheDown!515)))))

(assert (=> d!248042 (= (inv!10650 cacheDown!515) e!486574)))

(declare-fun b!757557 () Bool)

(declare-fun validCacheMapDown!93 (MutableMap!1069) Bool)

(assert (=> b!757557 (= e!486574 (validCacheMapDown!93 (cache!1456 cacheDown!515)))))

(assert (= (and d!248042 res!333782) b!757557))

(declare-fun m!1023860 () Bool)

(assert (=> b!757557 m!1023860))

(assert (=> start!70430 d!248042))

(declare-fun d!248044 () Bool)

(assert (=> d!248044 (= (inv!10646 treated!50) (isBalanced!761 (c!128735 treated!50)))))

(declare-fun bs!161144 () Bool)

(assert (= bs!161144 d!248044))

(declare-fun m!1023862 () Bool)

(assert (=> bs!161144 m!1023862))

(assert (=> start!70430 d!248044))

(declare-fun d!248046 () Bool)

(declare-fun res!333785 () Bool)

(declare-fun e!486577 () Bool)

(assert (=> d!248046 (=> (not res!333785) (not e!486577))))

(assert (=> d!248046 (= res!333785 ((_ is HashMap!1070) (cache!1457 cacheUp!502)))))

(assert (=> d!248046 (= (inv!10649 cacheUp!502) e!486577)))

(declare-fun b!757560 () Bool)

(declare-fun validCacheMapUp!93 (MutableMap!1070) Bool)

(assert (=> b!757560 (= e!486577 (validCacheMapUp!93 (cache!1457 cacheUp!502)))))

(assert (= (and d!248046 res!333785) b!757560))

(declare-fun m!1023864 () Bool)

(assert (=> b!757560 m!1023864))

(assert (=> start!70430 d!248046))

(declare-fun d!248048 () Bool)

(assert (=> d!248048 (= (inv!10646 totalInput!378) (isBalanced!761 (c!128735 totalInput!378)))))

(declare-fun bs!161145 () Bool)

(assert (= bs!161145 d!248048))

(declare-fun m!1023866 () Bool)

(assert (=> bs!161145 m!1023866))

(assert (=> start!70430 d!248048))

(declare-fun d!248050 () Bool)

(declare-fun c!128754 () Bool)

(assert (=> d!248050 (= c!128754 ((_ is Node!2845) (c!128735 input!870)))))

(declare-fun e!486582 () Bool)

(assert (=> d!248050 (= (inv!10644 (c!128735 input!870)) e!486582)))

(declare-fun b!757567 () Bool)

(declare-fun inv!10654 (Conc!2845) Bool)

(assert (=> b!757567 (= e!486582 (inv!10654 (c!128735 input!870)))))

(declare-fun b!757568 () Bool)

(declare-fun e!486583 () Bool)

(assert (=> b!757568 (= e!486582 e!486583)))

(declare-fun res!333788 () Bool)

(assert (=> b!757568 (= res!333788 (not ((_ is Leaf!4177) (c!128735 input!870))))))

(assert (=> b!757568 (=> res!333788 e!486583)))

(declare-fun b!757569 () Bool)

(declare-fun inv!10655 (Conc!2845) Bool)

(assert (=> b!757569 (= e!486583 (inv!10655 (c!128735 input!870)))))

(assert (= (and d!248050 c!128754) b!757567))

(assert (= (and d!248050 (not c!128754)) b!757568))

(assert (= (and b!757568 (not res!333788)) b!757569))

(declare-fun m!1023868 () Bool)

(assert (=> b!757567 m!1023868))

(declare-fun m!1023870 () Bool)

(assert (=> b!757569 m!1023870))

(assert (=> b!757467 d!248050))

(declare-fun d!248052 () Bool)

(declare-fun c!128755 () Bool)

(assert (=> d!248052 (= c!128755 ((_ is Node!2845) (c!128735 (totalInput!2062 cacheFindLongestMatch!74))))))

(declare-fun e!486584 () Bool)

(assert (=> d!248052 (= (inv!10644 (c!128735 (totalInput!2062 cacheFindLongestMatch!74))) e!486584)))

(declare-fun b!757570 () Bool)

(assert (=> b!757570 (= e!486584 (inv!10654 (c!128735 (totalInput!2062 cacheFindLongestMatch!74))))))

(declare-fun b!757571 () Bool)

(declare-fun e!486585 () Bool)

(assert (=> b!757571 (= e!486584 e!486585)))

(declare-fun res!333789 () Bool)

(assert (=> b!757571 (= res!333789 (not ((_ is Leaf!4177) (c!128735 (totalInput!2062 cacheFindLongestMatch!74)))))))

(assert (=> b!757571 (=> res!333789 e!486585)))

(declare-fun b!757572 () Bool)

(assert (=> b!757572 (= e!486585 (inv!10655 (c!128735 (totalInput!2062 cacheFindLongestMatch!74))))))

(assert (= (and d!248052 c!128755) b!757570))

(assert (= (and d!248052 (not c!128755)) b!757571))

(assert (= (and b!757571 (not res!333789)) b!757572))

(declare-fun m!1023872 () Bool)

(assert (=> b!757570 m!1023872))

(declare-fun m!1023874 () Bool)

(assert (=> b!757572 m!1023874))

(assert (=> b!757482 d!248052))

(declare-fun d!248054 () Bool)

(assert (=> d!248054 (= (array_inv!1267 (_keys!1392 (v!18511 (underlying!2379 (v!18512 (underlying!2380 (cache!1457 cacheUp!502))))))) (bvsge (size!6815 (_keys!1392 (v!18511 (underlying!2379 (v!18512 (underlying!2380 (cache!1457 cacheUp!502))))))) #b00000000000000000000000000000000))))

(assert (=> b!757464 d!248054))

(declare-fun d!248056 () Bool)

(assert (=> d!248056 (= (array_inv!1268 (_values!1377 (v!18511 (underlying!2379 (v!18512 (underlying!2380 (cache!1457 cacheUp!502))))))) (bvsge (size!6817 (_values!1377 (v!18511 (underlying!2379 (v!18512 (underlying!2380 (cache!1457 cacheUp!502))))))) #b00000000000000000000000000000000))))

(assert (=> b!757464 d!248056))

(declare-fun d!248058 () Bool)

(assert (=> d!248058 (= (inv!10646 (totalInput!2062 cacheFindLongestMatch!74)) (isBalanced!761 (c!128735 (totalInput!2062 cacheFindLongestMatch!74))))))

(declare-fun bs!161146 () Bool)

(assert (= bs!161146 d!248058))

(declare-fun m!1023876 () Bool)

(assert (=> bs!161146 m!1023876))

(assert (=> b!757484 d!248058))

(declare-fun d!248060 () Bool)

(assert (=> d!248060 (= (list!3386 (_1!5529 lt!308961)) (list!3388 (c!128736 (_1!5529 lt!308961))))))

(declare-fun bs!161147 () Bool)

(assert (= bs!161147 d!248060))

(declare-fun m!1023878 () Bool)

(assert (=> bs!161147 m!1023878))

(assert (=> b!757475 d!248060))

(declare-fun d!248062 () Bool)

(assert (=> d!248062 (= (list!3386 acc!372) (list!3388 (c!128736 acc!372)))))

(declare-fun bs!161148 () Bool)

(assert (= bs!161148 d!248062))

(declare-fun m!1023880 () Bool)

(assert (=> bs!161148 m!1023880))

(assert (=> b!757475 d!248062))

(declare-fun b!757573 () Bool)

(declare-fun e!486587 () Bool)

(declare-fun lt!308984 () tuple2!9630)

(assert (=> b!757573 (= e!486587 (= (list!3387 (_2!5529 lt!308984)) (list!3387 treated!50)))))

(declare-fun b!757574 () Bool)

(declare-fun e!486586 () tuple2!9630)

(assert (=> b!757574 (= e!486586 (tuple2!9631 (BalanceConc!5705 Empty!2846) treated!50))))

(declare-fun b!757575 () Bool)

(declare-fun e!486588 () Bool)

(assert (=> b!757575 (= e!486587 e!486588)))

(declare-fun res!333791 () Bool)

(assert (=> b!757575 (= res!333791 (< (size!6820 (_2!5529 lt!308984)) (size!6820 treated!50)))))

(assert (=> b!757575 (=> (not res!333791) (not e!486588))))

(declare-fun b!757577 () Bool)

(assert (=> b!757577 (= e!486588 (not (isEmpty!5157 (_1!5529 lt!308984))))))

(declare-fun b!757578 () Bool)

(declare-fun lt!308982 () tuple2!9630)

(declare-fun lt!308983 () Option!1850)

(assert (=> b!757578 (= e!486586 (tuple2!9631 (prepend!319 (_1!5529 lt!308982) (_1!5532 (v!18515 lt!308983))) (_2!5529 lt!308982)))))

(assert (=> b!757578 (= lt!308982 (lexRec!241 thiss!12529 rules!1486 (_2!5532 (v!18515 lt!308983))))))

(declare-fun e!486589 () Bool)

(declare-fun b!757579 () Bool)

(assert (=> b!757579 (= e!486589 (= (list!3387 (_2!5529 lt!308984)) (_2!5533 (lexList!368 thiss!12529 rules!1486 (list!3387 treated!50)))))))

(declare-fun b!757576 () Bool)

(declare-fun res!333790 () Bool)

(assert (=> b!757576 (=> (not res!333790) (not e!486589))))

(assert (=> b!757576 (= res!333790 (= (list!3386 (_1!5529 lt!308984)) (_1!5533 (lexList!368 thiss!12529 rules!1486 (list!3387 treated!50)))))))

(declare-fun d!248064 () Bool)

(assert (=> d!248064 e!486589))

(declare-fun res!333792 () Bool)

(assert (=> d!248064 (=> (not res!333792) (not e!486589))))

(assert (=> d!248064 (= res!333792 e!486587)))

(declare-fun c!128756 () Bool)

(assert (=> d!248064 (= c!128756 (> (size!6821 (_1!5529 lt!308984)) 0))))

(assert (=> d!248064 (= lt!308984 e!486586)))

(declare-fun c!128757 () Bool)

(assert (=> d!248064 (= c!128757 ((_ is Some!1849) lt!308983))))

(assert (=> d!248064 (= lt!308983 (maxPrefixZipperSequence!515 thiss!12529 rules!1486 treated!50))))

(assert (=> d!248064 (= (lexRec!241 thiss!12529 rules!1486 treated!50) lt!308984)))

(assert (= (and d!248064 c!128757) b!757578))

(assert (= (and d!248064 (not c!128757)) b!757574))

(assert (= (and d!248064 c!128756) b!757575))

(assert (= (and d!248064 (not c!128756)) b!757573))

(assert (= (and b!757575 res!333791) b!757577))

(assert (= (and d!248064 res!333792) b!757576))

(assert (= (and b!757576 res!333790) b!757579))

(declare-fun m!1023882 () Bool)

(assert (=> b!757576 m!1023882))

(assert (=> b!757576 m!1023754))

(assert (=> b!757576 m!1023754))

(declare-fun m!1023884 () Bool)

(assert (=> b!757576 m!1023884))

(declare-fun m!1023886 () Bool)

(assert (=> b!757578 m!1023886))

(declare-fun m!1023888 () Bool)

(assert (=> b!757578 m!1023888))

(declare-fun m!1023890 () Bool)

(assert (=> b!757575 m!1023890))

(declare-fun m!1023892 () Bool)

(assert (=> b!757575 m!1023892))

(declare-fun m!1023894 () Bool)

(assert (=> b!757577 m!1023894))

(declare-fun m!1023896 () Bool)

(assert (=> b!757579 m!1023896))

(assert (=> b!757579 m!1023754))

(assert (=> b!757579 m!1023754))

(assert (=> b!757579 m!1023884))

(assert (=> b!757573 m!1023896))

(assert (=> b!757573 m!1023754))

(declare-fun m!1023898 () Bool)

(assert (=> d!248064 m!1023898))

(declare-fun m!1023900 () Bool)

(assert (=> d!248064 m!1023900))

(assert (=> b!757475 d!248064))

(declare-fun d!248066 () Bool)

(assert (=> d!248066 (= (array_inv!1267 (_keys!1393 (v!18513 (underlying!2381 (v!18514 (underlying!2382 (cache!1458 cacheFindLongestMatch!74))))))) (bvsge (size!6815 (_keys!1393 (v!18513 (underlying!2381 (v!18514 (underlying!2382 (cache!1458 cacheFindLongestMatch!74))))))) #b00000000000000000000000000000000))))

(assert (=> b!757490 d!248066))

(declare-fun d!248068 () Bool)

(assert (=> d!248068 (= (array_inv!1270 (_values!1378 (v!18513 (underlying!2381 (v!18514 (underlying!2382 (cache!1458 cacheFindLongestMatch!74))))))) (bvsge (size!6819 (_values!1378 (v!18513 (underlying!2381 (v!18514 (underlying!2382 (cache!1458 cacheFindLongestMatch!74))))))) #b00000000000000000000000000000000))))

(assert (=> b!757490 d!248068))

(declare-fun d!248070 () Bool)

(declare-fun c!128758 () Bool)

(assert (=> d!248070 (= c!128758 ((_ is Node!2845) (c!128735 totalInput!378)))))

(declare-fun e!486590 () Bool)

(assert (=> d!248070 (= (inv!10644 (c!128735 totalInput!378)) e!486590)))

(declare-fun b!757580 () Bool)

(assert (=> b!757580 (= e!486590 (inv!10654 (c!128735 totalInput!378)))))

(declare-fun b!757581 () Bool)

(declare-fun e!486591 () Bool)

(assert (=> b!757581 (= e!486590 e!486591)))

(declare-fun res!333793 () Bool)

(assert (=> b!757581 (= res!333793 (not ((_ is Leaf!4177) (c!128735 totalInput!378))))))

(assert (=> b!757581 (=> res!333793 e!486591)))

(declare-fun b!757582 () Bool)

(assert (=> b!757582 (= e!486591 (inv!10655 (c!128735 totalInput!378)))))

(assert (= (and d!248070 c!128758) b!757580))

(assert (= (and d!248070 (not c!128758)) b!757581))

(assert (= (and b!757581 (not res!333793)) b!757582))

(declare-fun m!1023902 () Bool)

(assert (=> b!757580 m!1023902))

(declare-fun m!1023904 () Bool)

(assert (=> b!757582 m!1023904))

(assert (=> b!757480 d!248070))

(declare-fun d!248072 () Bool)

(declare-fun c!128759 () Bool)

(assert (=> d!248072 (= c!128759 ((_ is Node!2845) (c!128735 treated!50)))))

(declare-fun e!486592 () Bool)

(assert (=> d!248072 (= (inv!10644 (c!128735 treated!50)) e!486592)))

(declare-fun b!757583 () Bool)

(assert (=> b!757583 (= e!486592 (inv!10654 (c!128735 treated!50)))))

(declare-fun b!757584 () Bool)

(declare-fun e!486593 () Bool)

(assert (=> b!757584 (= e!486592 e!486593)))

(declare-fun res!333794 () Bool)

(assert (=> b!757584 (= res!333794 (not ((_ is Leaf!4177) (c!128735 treated!50))))))

(assert (=> b!757584 (=> res!333794 e!486593)))

(declare-fun b!757585 () Bool)

(assert (=> b!757585 (= e!486593 (inv!10655 (c!128735 treated!50)))))

(assert (= (and d!248072 c!128759) b!757583))

(assert (= (and d!248072 (not c!128759)) b!757584))

(assert (= (and b!757584 (not res!333794)) b!757585))

(declare-fun m!1023906 () Bool)

(assert (=> b!757583 m!1023906))

(declare-fun m!1023908 () Bool)

(assert (=> b!757585 m!1023908))

(assert (=> b!757481 d!248072))

(declare-fun d!248074 () Bool)

(declare-fun list!3389 (Conc!2845) List!8388)

(assert (=> d!248074 (= (list!3387 (_2!5529 lt!308965)) (list!3389 (c!128735 (_2!5529 lt!308965))))))

(declare-fun bs!161149 () Bool)

(assert (= bs!161149 d!248074))

(declare-fun m!1023910 () Bool)

(assert (=> bs!161149 m!1023910))

(assert (=> b!757497 d!248074))

(declare-fun d!248076 () Bool)

(assert (=> d!248076 (= (list!3387 (_2!5529 lt!308963)) (list!3389 (c!128735 (_2!5529 lt!308963))))))

(declare-fun bs!161150 () Bool)

(assert (= bs!161150 d!248076))

(declare-fun m!1023912 () Bool)

(assert (=> bs!161150 m!1023912))

(assert (=> b!757497 d!248076))

(declare-fun d!248078 () Bool)

(assert (=> d!248078 (= (isEmpty!5155 (list!3387 (_2!5529 lt!308961))) ((_ is Nil!8374) (list!3387 (_2!5529 lt!308961))))))

(assert (=> b!757471 d!248078))

(declare-fun d!248080 () Bool)

(assert (=> d!248080 (= (list!3387 (_2!5529 lt!308961)) (list!3389 (c!128735 (_2!5529 lt!308961))))))

(declare-fun bs!161151 () Bool)

(assert (= bs!161151 d!248080))

(declare-fun m!1023914 () Bool)

(assert (=> bs!161151 m!1023914))

(assert (=> b!757471 d!248080))

(declare-fun d!248082 () Bool)

(assert (=> d!248082 (= (valid!892 cacheDown!515) (validCacheMapDown!93 (cache!1456 cacheDown!515)))))

(declare-fun bs!161152 () Bool)

(assert (= bs!161152 d!248082))

(assert (=> bs!161152 m!1023860))

(assert (=> b!757498 d!248082))

(declare-fun d!248084 () Bool)

(declare-fun res!333797 () Bool)

(declare-fun e!486596 () Bool)

(assert (=> d!248084 (=> (not res!333797) (not e!486596))))

(declare-fun rulesValid!560 (LexerInterface!1412 List!8390) Bool)

(assert (=> d!248084 (= res!333797 (rulesValid!560 thiss!12529 rules!1486))))

(assert (=> d!248084 (= (rulesInvariant!1319 thiss!12529 rules!1486) e!486596)))

(declare-fun b!757588 () Bool)

(declare-datatypes ((List!8392 0))(
  ( (Nil!8378) (Cons!8378 (h!13779 String!10012) (t!91122 List!8392)) )
))
(declare-fun noDuplicateTag!560 (LexerInterface!1412 List!8390 List!8392) Bool)

(assert (=> b!757588 (= e!486596 (noDuplicateTag!560 thiss!12529 rules!1486 Nil!8378))))

(assert (= (and d!248084 res!333797) b!757588))

(declare-fun m!1023916 () Bool)

(assert (=> d!248084 m!1023916))

(declare-fun m!1023918 () Bool)

(assert (=> b!757588 m!1023918))

(assert (=> b!757494 d!248084))

(declare-fun d!248086 () Bool)

(assert (=> d!248086 (= (list!3387 totalInput!378) (list!3389 (c!128735 totalInput!378)))))

(declare-fun bs!161153 () Bool)

(assert (= bs!161153 d!248086))

(declare-fun m!1023920 () Bool)

(assert (=> bs!161153 m!1023920))

(assert (=> b!757487 d!248086))

(declare-fun b!757597 () Bool)

(declare-fun e!486602 () List!8388)

(assert (=> b!757597 (= e!486602 (list!3387 input!870))))

(declare-fun e!486601 () Bool)

(declare-fun lt!308987 () List!8388)

(declare-fun b!757600 () Bool)

(assert (=> b!757600 (= e!486601 (or (not (= (list!3387 input!870) Nil!8374)) (= lt!308987 (list!3387 treated!50))))))

(declare-fun b!757599 () Bool)

(declare-fun res!333803 () Bool)

(assert (=> b!757599 (=> (not res!333803) (not e!486601))))

(declare-fun size!6822 (List!8388) Int)

(assert (=> b!757599 (= res!333803 (= (size!6822 lt!308987) (+ (size!6822 (list!3387 treated!50)) (size!6822 (list!3387 input!870)))))))

(declare-fun d!248088 () Bool)

(assert (=> d!248088 e!486601))

(declare-fun res!333802 () Bool)

(assert (=> d!248088 (=> (not res!333802) (not e!486601))))

(declare-fun content!1250 (List!8388) (InoxSet C!4516))

(assert (=> d!248088 (= res!333802 (= (content!1250 lt!308987) ((_ map or) (content!1250 (list!3387 treated!50)) (content!1250 (list!3387 input!870)))))))

(assert (=> d!248088 (= lt!308987 e!486602)))

(declare-fun c!128762 () Bool)

(assert (=> d!248088 (= c!128762 ((_ is Nil!8374) (list!3387 treated!50)))))

(assert (=> d!248088 (= (++!2196 (list!3387 treated!50) (list!3387 input!870)) lt!308987)))

(declare-fun b!757598 () Bool)

(assert (=> b!757598 (= e!486602 (Cons!8374 (h!13775 (list!3387 treated!50)) (++!2196 (t!91118 (list!3387 treated!50)) (list!3387 input!870))))))

(assert (= (and d!248088 c!128762) b!757597))

(assert (= (and d!248088 (not c!128762)) b!757598))

(assert (= (and d!248088 res!333802) b!757599))

(assert (= (and b!757599 res!333803) b!757600))

(declare-fun m!1023922 () Bool)

(assert (=> b!757599 m!1023922))

(assert (=> b!757599 m!1023754))

(declare-fun m!1023924 () Bool)

(assert (=> b!757599 m!1023924))

(assert (=> b!757599 m!1023756))

(declare-fun m!1023926 () Bool)

(assert (=> b!757599 m!1023926))

(declare-fun m!1023928 () Bool)

(assert (=> d!248088 m!1023928))

(assert (=> d!248088 m!1023754))

(declare-fun m!1023930 () Bool)

(assert (=> d!248088 m!1023930))

(assert (=> d!248088 m!1023756))

(declare-fun m!1023932 () Bool)

(assert (=> d!248088 m!1023932))

(assert (=> b!757598 m!1023756))

(declare-fun m!1023934 () Bool)

(assert (=> b!757598 m!1023934))

(assert (=> b!757487 d!248088))

(declare-fun d!248090 () Bool)

(assert (=> d!248090 (= (list!3387 treated!50) (list!3389 (c!128735 treated!50)))))

(declare-fun bs!161154 () Bool)

(assert (= bs!161154 d!248090))

(declare-fun m!1023936 () Bool)

(assert (=> bs!161154 m!1023936))

(assert (=> b!757487 d!248090))

(declare-fun d!248092 () Bool)

(assert (=> d!248092 (= (list!3387 input!870) (list!3389 (c!128735 input!870)))))

(declare-fun bs!161155 () Bool)

(assert (= bs!161155 d!248092))

(declare-fun m!1023938 () Bool)

(assert (=> bs!161155 m!1023938))

(assert (=> b!757487 d!248092))

(declare-fun d!248094 () Bool)

(declare-fun lt!308990 () Int)

(assert (=> d!248094 (= lt!308990 (size!6822 (list!3387 input!870)))))

(declare-fun size!6823 (Conc!2845) Int)

(assert (=> d!248094 (= lt!308990 (size!6823 (c!128735 input!870)))))

(assert (=> d!248094 (= (size!6820 input!870) lt!308990)))

(declare-fun bs!161156 () Bool)

(assert (= bs!161156 d!248094))

(assert (=> bs!161156 m!1023756))

(assert (=> bs!161156 m!1023756))

(assert (=> bs!161156 m!1023926))

(declare-fun m!1023940 () Bool)

(assert (=> bs!161156 m!1023940))

(assert (=> b!757488 d!248094))

(declare-fun d!248096 () Bool)

(assert (=> d!248096 (= (inv!10643 (tag!1872 (h!13777 rules!1486))) (= (mod (str.len (value!51560 (tag!1872 (h!13777 rules!1486)))) 2) 0))))

(assert (=> b!757469 d!248096))

(declare-fun d!248098 () Bool)

(declare-fun res!333806 () Bool)

(declare-fun e!486605 () Bool)

(assert (=> d!248098 (=> (not res!333806) (not e!486605))))

(declare-fun semiInverseModEq!603 (Int Int) Bool)

(assert (=> d!248098 (= res!333806 (semiInverseModEq!603 (toChars!2455 (transformation!1610 (h!13777 rules!1486))) (toValue!2596 (transformation!1610 (h!13777 rules!1486)))))))

(assert (=> d!248098 (= (inv!10645 (transformation!1610 (h!13777 rules!1486))) e!486605)))

(declare-fun b!757603 () Bool)

(declare-fun equivClasses!578 (Int Int) Bool)

(assert (=> b!757603 (= e!486605 (equivClasses!578 (toChars!2455 (transformation!1610 (h!13777 rules!1486))) (toValue!2596 (transformation!1610 (h!13777 rules!1486)))))))

(assert (= (and d!248098 res!333806) b!757603))

(declare-fun m!1023942 () Bool)

(assert (=> d!248098 m!1023942))

(declare-fun m!1023944 () Bool)

(assert (=> b!757603 m!1023944))

(assert (=> b!757469 d!248098))

(declare-fun d!248100 () Bool)

(assert (=> d!248100 (= (valid!890 cacheUp!502) (validCacheMapUp!93 (cache!1457 cacheUp!502)))))

(declare-fun bs!161157 () Bool)

(assert (= bs!161157 d!248100))

(assert (=> bs!161157 m!1023864))

(assert (=> b!757470 d!248100))

(declare-fun tp!244992 () Bool)

(declare-fun b!757612 () Bool)

(declare-fun e!486611 () Bool)

(declare-fun tp!244991 () Bool)

(assert (=> b!757612 (= e!486611 (and (inv!10647 (left!6321 (c!128736 acc!372))) tp!244992 (inv!10647 (right!6651 (c!128736 acc!372))) tp!244991))))

(declare-fun b!757614 () Bool)

(declare-fun e!486610 () Bool)

(declare-fun tp!244993 () Bool)

(assert (=> b!757614 (= e!486610 tp!244993)))

(declare-fun b!757613 () Bool)

(declare-fun inv!10656 (IArray!5693) Bool)

(assert (=> b!757613 (= e!486611 (and (inv!10656 (xs!5525 (c!128736 acc!372))) e!486610))))

(assert (=> b!757502 (= tp!244981 (and (inv!10647 (c!128736 acc!372)) e!486611))))

(assert (= (and b!757502 ((_ is Node!2846) (c!128736 acc!372))) b!757612))

(assert (= b!757613 b!757614))

(assert (= (and b!757502 ((_ is Leaf!4178) (c!128736 acc!372))) b!757613))

(declare-fun m!1023946 () Bool)

(assert (=> b!757612 m!1023946))

(declare-fun m!1023948 () Bool)

(assert (=> b!757612 m!1023948))

(declare-fun m!1023950 () Bool)

(assert (=> b!757613 m!1023950))

(assert (=> b!757502 m!1023736))

(declare-fun setIsEmpty!6399 () Bool)

(declare-fun setRes!6399 () Bool)

(assert (=> setIsEmpty!6399 setRes!6399))

(declare-fun b!757624 () Bool)

(declare-fun e!486619 () Bool)

(declare-fun tp!245008 () Bool)

(assert (=> b!757624 (= e!486619 tp!245008)))

(declare-fun b!757625 () Bool)

(declare-fun e!486618 () Bool)

(declare-fun tp!245006 () Bool)

(assert (=> b!757625 (= e!486618 tp!245006)))

(declare-fun setNonEmpty!6399 () Bool)

(declare-fun setElem!6399 () Context!718)

(declare-fun tp!245005 () Bool)

(declare-fun inv!10657 (Context!718) Bool)

(assert (=> setNonEmpty!6399 (= setRes!6399 (and tp!245005 (inv!10657 setElem!6399) e!486618))))

(declare-fun setRest!6399 () (InoxSet Context!718))

(assert (=> setNonEmpty!6399 (= (_2!5526 (h!13772 (zeroValue!1354 (v!18509 (underlying!2377 (v!18510 (underlying!2378 (cache!1456 cacheDown!515)))))))) ((_ map or) (store ((as const (Array Context!718 Bool)) false) setElem!6399 true) setRest!6399))))

(declare-fun b!757623 () Bool)

(declare-fun tp_is_empty!3711 () Bool)

(declare-fun tp!245004 () Bool)

(declare-fun tp!245007 () Bool)

(declare-fun e!486620 () Bool)

(assert (=> b!757623 (= e!486620 (and tp!245007 (inv!10657 (_2!5525 (_1!5526 (h!13772 (zeroValue!1354 (v!18509 (underlying!2377 (v!18510 (underlying!2378 (cache!1456 cacheDown!515)))))))))) e!486619 tp_is_empty!3711 setRes!6399 tp!245004))))

(declare-fun condSetEmpty!6399 () Bool)

(assert (=> b!757623 (= condSetEmpty!6399 (= (_2!5526 (h!13772 (zeroValue!1354 (v!18509 (underlying!2377 (v!18510 (underlying!2378 (cache!1456 cacheDown!515)))))))) ((as const (Array Context!718 Bool)) false)))))

(assert (=> b!757485 (= tp!244961 e!486620)))

(assert (= b!757623 b!757624))

(assert (= (and b!757623 condSetEmpty!6399) setIsEmpty!6399))

(assert (= (and b!757623 (not condSetEmpty!6399)) setNonEmpty!6399))

(assert (= setNonEmpty!6399 b!757625))

(assert (= (and b!757485 ((_ is Cons!8371) (zeroValue!1354 (v!18509 (underlying!2377 (v!18510 (underlying!2378 (cache!1456 cacheDown!515)))))))) b!757623))

(declare-fun m!1023952 () Bool)

(assert (=> setNonEmpty!6399 m!1023952))

(declare-fun m!1023954 () Bool)

(assert (=> b!757623 m!1023954))

(declare-fun setIsEmpty!6400 () Bool)

(declare-fun setRes!6400 () Bool)

(assert (=> setIsEmpty!6400 setRes!6400))

(declare-fun b!757627 () Bool)

(declare-fun e!486622 () Bool)

(declare-fun tp!245013 () Bool)

(assert (=> b!757627 (= e!486622 tp!245013)))

(declare-fun b!757628 () Bool)

(declare-fun e!486621 () Bool)

(declare-fun tp!245011 () Bool)

(assert (=> b!757628 (= e!486621 tp!245011)))

(declare-fun setElem!6400 () Context!718)

(declare-fun tp!245010 () Bool)

(declare-fun setNonEmpty!6400 () Bool)

(assert (=> setNonEmpty!6400 (= setRes!6400 (and tp!245010 (inv!10657 setElem!6400) e!486621))))

(declare-fun setRest!6400 () (InoxSet Context!718))

(assert (=> setNonEmpty!6400 (= (_2!5526 (h!13772 (minValue!1354 (v!18509 (underlying!2377 (v!18510 (underlying!2378 (cache!1456 cacheDown!515)))))))) ((_ map or) (store ((as const (Array Context!718 Bool)) false) setElem!6400 true) setRest!6400))))

(declare-fun tp!245009 () Bool)

(declare-fun e!486623 () Bool)

(declare-fun b!757626 () Bool)

(declare-fun tp!245012 () Bool)

(assert (=> b!757626 (= e!486623 (and tp!245012 (inv!10657 (_2!5525 (_1!5526 (h!13772 (minValue!1354 (v!18509 (underlying!2377 (v!18510 (underlying!2378 (cache!1456 cacheDown!515)))))))))) e!486622 tp_is_empty!3711 setRes!6400 tp!245009))))

(declare-fun condSetEmpty!6400 () Bool)

(assert (=> b!757626 (= condSetEmpty!6400 (= (_2!5526 (h!13772 (minValue!1354 (v!18509 (underlying!2377 (v!18510 (underlying!2378 (cache!1456 cacheDown!515)))))))) ((as const (Array Context!718 Bool)) false)))))

(assert (=> b!757485 (= tp!244977 e!486623)))

(assert (= b!757626 b!757627))

(assert (= (and b!757626 condSetEmpty!6400) setIsEmpty!6400))

(assert (= (and b!757626 (not condSetEmpty!6400)) setNonEmpty!6400))

(assert (= setNonEmpty!6400 b!757628))

(assert (= (and b!757485 ((_ is Cons!8371) (minValue!1354 (v!18509 (underlying!2377 (v!18510 (underlying!2378 (cache!1456 cacheDown!515)))))))) b!757626))

(declare-fun m!1023956 () Bool)

(assert (=> setNonEmpty!6400 m!1023956))

(declare-fun m!1023958 () Bool)

(assert (=> b!757626 m!1023958))

(declare-fun setIsEmpty!6405 () Bool)

(declare-fun setRes!6405 () Bool)

(assert (=> setIsEmpty!6405 setRes!6405))

(declare-fun mapIsEmpty!5326 () Bool)

(declare-fun mapRes!5326 () Bool)

(assert (=> mapIsEmpty!5326 mapRes!5326))

(declare-fun b!757643 () Bool)

(declare-fun e!486639 () Bool)

(declare-fun tp!245043 () Bool)

(assert (=> b!757643 (= e!486639 tp!245043)))

(declare-fun b!757644 () Bool)

(declare-fun e!486640 () Bool)

(declare-fun tp!245040 () Bool)

(assert (=> b!757644 (= e!486640 tp!245040)))

(declare-fun setIsEmpty!6406 () Bool)

(declare-fun setRes!6406 () Bool)

(assert (=> setIsEmpty!6406 setRes!6406))

(declare-fun tp!245046 () Bool)

(declare-fun e!486641 () Bool)

(declare-fun tp!245037 () Bool)

(declare-fun mapValue!5326 () List!8385)

(declare-fun e!486638 () Bool)

(declare-fun b!757645 () Bool)

(assert (=> b!757645 (= e!486638 (and tp!245046 (inv!10657 (_2!5525 (_1!5526 (h!13772 mapValue!5326)))) e!486641 tp_is_empty!3711 setRes!6406 tp!245037))))

(declare-fun condSetEmpty!6405 () Bool)

(assert (=> b!757645 (= condSetEmpty!6405 (= (_2!5526 (h!13772 mapValue!5326)) ((as const (Array Context!718 Bool)) false)))))

(declare-fun b!757646 () Bool)

(declare-fun tp!245045 () Bool)

(assert (=> b!757646 (= e!486641 tp!245045)))

(declare-fun setNonEmpty!6405 () Bool)

(declare-fun tp!245038 () Bool)

(declare-fun setElem!6406 () Context!718)

(assert (=> setNonEmpty!6405 (= setRes!6405 (and tp!245038 (inv!10657 setElem!6406) e!486639))))

(declare-fun mapDefault!5326 () List!8385)

(declare-fun setRest!6406 () (InoxSet Context!718))

(assert (=> setNonEmpty!6405 (= (_2!5526 (h!13772 mapDefault!5326)) ((_ map or) (store ((as const (Array Context!718 Bool)) false) setElem!6406 true) setRest!6406))))

(declare-fun b!757648 () Bool)

(declare-fun e!486637 () Bool)

(declare-fun tp!245036 () Bool)

(assert (=> b!757648 (= e!486637 tp!245036)))

(declare-fun mapNonEmpty!5326 () Bool)

(declare-fun tp!245041 () Bool)

(assert (=> mapNonEmpty!5326 (= mapRes!5326 (and tp!245041 e!486638))))

(declare-fun mapKey!5326 () (_ BitVec 32))

(declare-fun mapRest!5326 () (Array (_ BitVec 32) List!8385))

(assert (=> mapNonEmpty!5326 (= mapRest!5322 (store mapRest!5326 mapKey!5326 mapValue!5326))))

(declare-fun tp!245042 () Bool)

(declare-fun setNonEmpty!6406 () Bool)

(declare-fun setElem!6405 () Context!718)

(assert (=> setNonEmpty!6406 (= setRes!6406 (and tp!245042 (inv!10657 setElem!6405) e!486637))))

(declare-fun setRest!6405 () (InoxSet Context!718))

(assert (=> setNonEmpty!6406 (= (_2!5526 (h!13772 mapValue!5326)) ((_ map or) (store ((as const (Array Context!718 Bool)) false) setElem!6405 true) setRest!6405))))

(declare-fun tp!245039 () Bool)

(declare-fun tp!245044 () Bool)

(declare-fun b!757647 () Bool)

(declare-fun e!486636 () Bool)

(assert (=> b!757647 (= e!486636 (and tp!245044 (inv!10657 (_2!5525 (_1!5526 (h!13772 mapDefault!5326)))) e!486640 tp_is_empty!3711 setRes!6405 tp!245039))))

(declare-fun condSetEmpty!6406 () Bool)

(assert (=> b!757647 (= condSetEmpty!6406 (= (_2!5526 (h!13772 mapDefault!5326)) ((as const (Array Context!718 Bool)) false)))))

(declare-fun condMapEmpty!5326 () Bool)

(assert (=> mapNonEmpty!5323 (= condMapEmpty!5326 (= mapRest!5322 ((as const (Array (_ BitVec 32) List!8385)) mapDefault!5326)))))

(assert (=> mapNonEmpty!5323 (= tp!244984 (and e!486636 mapRes!5326))))

(assert (= (and mapNonEmpty!5323 condMapEmpty!5326) mapIsEmpty!5326))

(assert (= (and mapNonEmpty!5323 (not condMapEmpty!5326)) mapNonEmpty!5326))

(assert (= b!757645 b!757646))

(assert (= (and b!757645 condSetEmpty!6405) setIsEmpty!6406))

(assert (= (and b!757645 (not condSetEmpty!6405)) setNonEmpty!6406))

(assert (= setNonEmpty!6406 b!757648))

(assert (= (and mapNonEmpty!5326 ((_ is Cons!8371) mapValue!5326)) b!757645))

(assert (= b!757647 b!757644))

(assert (= (and b!757647 condSetEmpty!6406) setIsEmpty!6405))

(assert (= (and b!757647 (not condSetEmpty!6406)) setNonEmpty!6405))

(assert (= setNonEmpty!6405 b!757643))

(assert (= (and mapNonEmpty!5323 ((_ is Cons!8371) mapDefault!5326)) b!757647))

(declare-fun m!1023960 () Bool)

(assert (=> setNonEmpty!6405 m!1023960))

(declare-fun m!1023962 () Bool)

(assert (=> b!757645 m!1023962))

(declare-fun m!1023964 () Bool)

(assert (=> setNonEmpty!6406 m!1023964))

(declare-fun m!1023966 () Bool)

(assert (=> mapNonEmpty!5326 m!1023966))

(declare-fun m!1023968 () Bool)

(assert (=> b!757647 m!1023968))

(declare-fun setIsEmpty!6407 () Bool)

(declare-fun setRes!6407 () Bool)

(assert (=> setIsEmpty!6407 setRes!6407))

(declare-fun b!757650 () Bool)

(declare-fun e!486643 () Bool)

(declare-fun tp!245051 () Bool)

(assert (=> b!757650 (= e!486643 tp!245051)))

(declare-fun b!757651 () Bool)

(declare-fun e!486642 () Bool)

(declare-fun tp!245049 () Bool)

(assert (=> b!757651 (= e!486642 tp!245049)))

(declare-fun setElem!6407 () Context!718)

(declare-fun tp!245048 () Bool)

(declare-fun setNonEmpty!6407 () Bool)

(assert (=> setNonEmpty!6407 (= setRes!6407 (and tp!245048 (inv!10657 setElem!6407) e!486642))))

(declare-fun setRest!6407 () (InoxSet Context!718))

(assert (=> setNonEmpty!6407 (= (_2!5526 (h!13772 mapValue!5322)) ((_ map or) (store ((as const (Array Context!718 Bool)) false) setElem!6407 true) setRest!6407))))

(declare-fun tp!245050 () Bool)

(declare-fun b!757649 () Bool)

(declare-fun e!486644 () Bool)

(declare-fun tp!245047 () Bool)

(assert (=> b!757649 (= e!486644 (and tp!245050 (inv!10657 (_2!5525 (_1!5526 (h!13772 mapValue!5322)))) e!486643 tp_is_empty!3711 setRes!6407 tp!245047))))

(declare-fun condSetEmpty!6407 () Bool)

(assert (=> b!757649 (= condSetEmpty!6407 (= (_2!5526 (h!13772 mapValue!5322)) ((as const (Array Context!718 Bool)) false)))))

(assert (=> mapNonEmpty!5323 (= tp!244976 e!486644)))

(assert (= b!757649 b!757650))

(assert (= (and b!757649 condSetEmpty!6407) setIsEmpty!6407))

(assert (= (and b!757649 (not condSetEmpty!6407)) setNonEmpty!6407))

(assert (= setNonEmpty!6407 b!757651))

(assert (= (and mapNonEmpty!5323 ((_ is Cons!8371) mapValue!5322)) b!757649))

(declare-fun m!1023970 () Bool)

(assert (=> setNonEmpty!6407 m!1023970))

(declare-fun m!1023972 () Bool)

(assert (=> b!757649 m!1023972))

(declare-fun tp!245060 () Bool)

(declare-fun e!486649 () Bool)

(declare-fun b!757660 () Bool)

(declare-fun tp!245059 () Bool)

(assert (=> b!757660 (= e!486649 (and (inv!10644 (left!6320 (c!128735 input!870))) tp!245060 (inv!10644 (right!6650 (c!128735 input!870))) tp!245059))))

(declare-fun b!757662 () Bool)

(declare-fun e!486650 () Bool)

(declare-fun tp!245058 () Bool)

(assert (=> b!757662 (= e!486650 tp!245058)))

(declare-fun b!757661 () Bool)

(declare-fun inv!10658 (IArray!5691) Bool)

(assert (=> b!757661 (= e!486649 (and (inv!10658 (xs!5524 (c!128735 input!870))) e!486650))))

(assert (=> b!757467 (= tp!244963 (and (inv!10644 (c!128735 input!870)) e!486649))))

(assert (= (and b!757467 ((_ is Node!2845) (c!128735 input!870))) b!757660))

(assert (= b!757661 b!757662))

(assert (= (and b!757467 ((_ is Leaf!4177) (c!128735 input!870))) b!757661))

(declare-fun m!1023974 () Bool)

(assert (=> b!757660 m!1023974))

(declare-fun m!1023976 () Bool)

(assert (=> b!757660 m!1023976))

(declare-fun m!1023978 () Bool)

(assert (=> b!757661 m!1023978))

(assert (=> b!757467 m!1023744))

(declare-fun tp!245062 () Bool)

(declare-fun b!757663 () Bool)

(declare-fun e!486651 () Bool)

(declare-fun tp!245063 () Bool)

(assert (=> b!757663 (= e!486651 (and (inv!10644 (left!6320 (c!128735 (totalInput!2062 cacheFindLongestMatch!74)))) tp!245063 (inv!10644 (right!6650 (c!128735 (totalInput!2062 cacheFindLongestMatch!74)))) tp!245062))))

(declare-fun b!757665 () Bool)

(declare-fun e!486652 () Bool)

(declare-fun tp!245061 () Bool)

(assert (=> b!757665 (= e!486652 tp!245061)))

(declare-fun b!757664 () Bool)

(assert (=> b!757664 (= e!486651 (and (inv!10658 (xs!5524 (c!128735 (totalInput!2062 cacheFindLongestMatch!74)))) e!486652))))

(assert (=> b!757482 (= tp!244957 (and (inv!10644 (c!128735 (totalInput!2062 cacheFindLongestMatch!74))) e!486651))))

(assert (= (and b!757482 ((_ is Node!2845) (c!128735 (totalInput!2062 cacheFindLongestMatch!74)))) b!757663))

(assert (= b!757664 b!757665))

(assert (= (and b!757482 ((_ is Leaf!4177) (c!128735 (totalInput!2062 cacheFindLongestMatch!74)))) b!757664))

(declare-fun m!1023980 () Bool)

(assert (=> b!757663 m!1023980))

(declare-fun m!1023982 () Bool)

(assert (=> b!757663 m!1023982))

(declare-fun m!1023984 () Bool)

(assert (=> b!757664 m!1023984))

(assert (=> b!757482 m!1023740))

(declare-fun b!757676 () Bool)

(declare-fun b_free!23645 () Bool)

(declare-fun b_next!23709 () Bool)

(assert (=> b!757676 (= b_free!23645 (not b_next!23709))))

(declare-fun tp!245074 () Bool)

(declare-fun b_and!70553 () Bool)

(assert (=> b!757676 (= tp!245074 b_and!70553)))

(declare-fun b_free!23647 () Bool)

(declare-fun b_next!23711 () Bool)

(assert (=> b!757676 (= b_free!23647 (not b_next!23711))))

(declare-fun tp!245072 () Bool)

(declare-fun b_and!70555 () Bool)

(assert (=> b!757676 (= tp!245072 b_and!70555)))

(declare-fun e!486663 () Bool)

(assert (=> b!757676 (= e!486663 (and tp!245074 tp!245072))))

(declare-fun tp!245075 () Bool)

(declare-fun e!486661 () Bool)

(declare-fun b!757675 () Bool)

(assert (=> b!757675 (= e!486661 (and tp!245075 (inv!10643 (tag!1872 (h!13777 (t!91120 rules!1486)))) (inv!10645 (transformation!1610 (h!13777 (t!91120 rules!1486)))) e!486663))))

(declare-fun b!757674 () Bool)

(declare-fun e!486664 () Bool)

(declare-fun tp!245073 () Bool)

(assert (=> b!757674 (= e!486664 (and e!486661 tp!245073))))

(assert (=> b!757473 (= tp!244975 e!486664)))

(assert (= b!757675 b!757676))

(assert (= b!757674 b!757675))

(assert (= (and b!757473 ((_ is Cons!8376) (t!91120 rules!1486))) b!757674))

(declare-fun m!1023986 () Bool)

(assert (=> b!757675 m!1023986))

(declare-fun m!1023988 () Bool)

(assert (=> b!757675 m!1023988))

(declare-fun setIsEmpty!6412 () Bool)

(declare-fun setRes!6412 () Bool)

(assert (=> setIsEmpty!6412 setRes!6412))

(declare-fun setIsEmpty!6413 () Bool)

(declare-fun setRes!6413 () Bool)

(assert (=> setIsEmpty!6413 setRes!6413))

(declare-fun b!757691 () Bool)

(declare-fun e!486682 () Bool)

(declare-fun tp!245101 () Bool)

(assert (=> b!757691 (= e!486682 tp!245101)))

(declare-fun mapDefault!5329 () List!8386)

(declare-fun b!757692 () Bool)

(declare-fun e!486677 () Bool)

(declare-fun e!486680 () Bool)

(declare-fun tp!245094 () Bool)

(assert (=> b!757692 (= e!486680 (and (inv!10657 (_1!5527 (_1!5528 (h!13773 mapDefault!5329)))) e!486677 tp_is_empty!3711 setRes!6413 tp!245094))))

(declare-fun condSetEmpty!6412 () Bool)

(assert (=> b!757692 (= condSetEmpty!6412 (= (_2!5528 (h!13773 mapDefault!5329)) ((as const (Array Context!718 Bool)) false)))))

(declare-fun tp!245100 () Bool)

(declare-fun e!486678 () Bool)

(declare-fun b!757693 () Bool)

(declare-fun mapValue!5329 () List!8386)

(declare-fun e!486681 () Bool)

(assert (=> b!757693 (= e!486678 (and (inv!10657 (_1!5527 (_1!5528 (h!13773 mapValue!5329)))) e!486681 tp_is_empty!3711 setRes!6412 tp!245100))))

(declare-fun condSetEmpty!6413 () Bool)

(assert (=> b!757693 (= condSetEmpty!6413 (= (_2!5528 (h!13773 mapValue!5329)) ((as const (Array Context!718 Bool)) false)))))

(declare-fun mapIsEmpty!5329 () Bool)

(declare-fun mapRes!5329 () Bool)

(assert (=> mapIsEmpty!5329 mapRes!5329))

(declare-fun b!757694 () Bool)

(declare-fun tp!245095 () Bool)

(assert (=> b!757694 (= e!486677 tp!245095)))

(declare-fun b!757695 () Bool)

(declare-fun tp!245096 () Bool)

(assert (=> b!757695 (= e!486681 tp!245096)))

(declare-fun condMapEmpty!5329 () Bool)

(assert (=> mapNonEmpty!5322 (= condMapEmpty!5329 (= mapRest!5321 ((as const (Array (_ BitVec 32) List!8386)) mapDefault!5329)))))

(assert (=> mapNonEmpty!5322 (= tp!244974 (and e!486680 mapRes!5329))))

(declare-fun setNonEmpty!6412 () Bool)

(declare-fun tp!245099 () Bool)

(declare-fun setElem!6413 () Context!718)

(declare-fun e!486679 () Bool)

(assert (=> setNonEmpty!6412 (= setRes!6413 (and tp!245099 (inv!10657 setElem!6413) e!486679))))

(declare-fun setRest!6412 () (InoxSet Context!718))

(assert (=> setNonEmpty!6412 (= (_2!5528 (h!13773 mapDefault!5329)) ((_ map or) (store ((as const (Array Context!718 Bool)) false) setElem!6413 true) setRest!6412))))

(declare-fun mapNonEmpty!5329 () Bool)

(declare-fun tp!245097 () Bool)

(assert (=> mapNonEmpty!5329 (= mapRes!5329 (and tp!245097 e!486678))))

(declare-fun mapKey!5329 () (_ BitVec 32))

(declare-fun mapRest!5329 () (Array (_ BitVec 32) List!8386))

(assert (=> mapNonEmpty!5329 (= mapRest!5321 (store mapRest!5329 mapKey!5329 mapValue!5329))))

(declare-fun setElem!6412 () Context!718)

(declare-fun tp!245102 () Bool)

(declare-fun setNonEmpty!6413 () Bool)

(assert (=> setNonEmpty!6413 (= setRes!6412 (and tp!245102 (inv!10657 setElem!6412) e!486682))))

(declare-fun setRest!6413 () (InoxSet Context!718))

(assert (=> setNonEmpty!6413 (= (_2!5528 (h!13773 mapValue!5329)) ((_ map or) (store ((as const (Array Context!718 Bool)) false) setElem!6412 true) setRest!6413))))

(declare-fun b!757696 () Bool)

(declare-fun tp!245098 () Bool)

(assert (=> b!757696 (= e!486679 tp!245098)))

(assert (= (and mapNonEmpty!5322 condMapEmpty!5329) mapIsEmpty!5329))

(assert (= (and mapNonEmpty!5322 (not condMapEmpty!5329)) mapNonEmpty!5329))

(assert (= b!757693 b!757695))

(assert (= (and b!757693 condSetEmpty!6413) setIsEmpty!6412))

(assert (= (and b!757693 (not condSetEmpty!6413)) setNonEmpty!6413))

(assert (= setNonEmpty!6413 b!757691))

(assert (= (and mapNonEmpty!5329 ((_ is Cons!8372) mapValue!5329)) b!757693))

(assert (= b!757692 b!757694))

(assert (= (and b!757692 condSetEmpty!6412) setIsEmpty!6413))

(assert (= (and b!757692 (not condSetEmpty!6412)) setNonEmpty!6412))

(assert (= setNonEmpty!6412 b!757696))

(assert (= (and mapNonEmpty!5322 ((_ is Cons!8372) mapDefault!5329)) b!757692))

(declare-fun m!1023990 () Bool)

(assert (=> b!757692 m!1023990))

(declare-fun m!1023992 () Bool)

(assert (=> b!757693 m!1023992))

(declare-fun m!1023994 () Bool)

(assert (=> setNonEmpty!6413 m!1023994))

(declare-fun m!1023996 () Bool)

(assert (=> mapNonEmpty!5329 m!1023996))

(declare-fun m!1023998 () Bool)

(assert (=> setNonEmpty!6412 m!1023998))

(declare-fun e!486690 () Bool)

(assert (=> mapNonEmpty!5322 (= tp!244962 e!486690)))

(declare-fun setElem!6416 () Context!718)

(declare-fun setRes!6416 () Bool)

(declare-fun e!486691 () Bool)

(declare-fun setNonEmpty!6416 () Bool)

(declare-fun tp!245112 () Bool)

(assert (=> setNonEmpty!6416 (= setRes!6416 (and tp!245112 (inv!10657 setElem!6416) e!486691))))

(declare-fun setRest!6416 () (InoxSet Context!718))

(assert (=> setNonEmpty!6416 (= (_2!5528 (h!13773 mapValue!5323)) ((_ map or) (store ((as const (Array Context!718 Bool)) false) setElem!6416 true) setRest!6416))))

(declare-fun setIsEmpty!6416 () Bool)

(assert (=> setIsEmpty!6416 setRes!6416))

(declare-fun b!757705 () Bool)

(declare-fun e!486689 () Bool)

(declare-fun tp!245113 () Bool)

(assert (=> b!757705 (= e!486689 tp!245113)))

(declare-fun b!757706 () Bool)

(declare-fun tp!245114 () Bool)

(assert (=> b!757706 (= e!486690 (and (inv!10657 (_1!5527 (_1!5528 (h!13773 mapValue!5323)))) e!486689 tp_is_empty!3711 setRes!6416 tp!245114))))

(declare-fun condSetEmpty!6416 () Bool)

(assert (=> b!757706 (= condSetEmpty!6416 (= (_2!5528 (h!13773 mapValue!5323)) ((as const (Array Context!718 Bool)) false)))))

(declare-fun b!757707 () Bool)

(declare-fun tp!245111 () Bool)

(assert (=> b!757707 (= e!486691 tp!245111)))

(assert (= b!757706 b!757705))

(assert (= (and b!757706 condSetEmpty!6416) setIsEmpty!6416))

(assert (= (and b!757706 (not condSetEmpty!6416)) setNonEmpty!6416))

(assert (= setNonEmpty!6416 b!757707))

(assert (= (and mapNonEmpty!5322 ((_ is Cons!8372) mapValue!5323)) b!757706))

(declare-fun m!1024000 () Bool)

(assert (=> setNonEmpty!6416 m!1024000))

(declare-fun m!1024002 () Bool)

(assert (=> b!757706 m!1024002))

(declare-fun e!486693 () Bool)

(assert (=> b!757464 (= tp!244955 e!486693)))

(declare-fun tp!245116 () Bool)

(declare-fun setNonEmpty!6417 () Bool)

(declare-fun setElem!6417 () Context!718)

(declare-fun e!486694 () Bool)

(declare-fun setRes!6417 () Bool)

(assert (=> setNonEmpty!6417 (= setRes!6417 (and tp!245116 (inv!10657 setElem!6417) e!486694))))

(declare-fun setRest!6417 () (InoxSet Context!718))

(assert (=> setNonEmpty!6417 (= (_2!5528 (h!13773 (zeroValue!1355 (v!18511 (underlying!2379 (v!18512 (underlying!2380 (cache!1457 cacheUp!502)))))))) ((_ map or) (store ((as const (Array Context!718 Bool)) false) setElem!6417 true) setRest!6417))))

(declare-fun setIsEmpty!6417 () Bool)

(assert (=> setIsEmpty!6417 setRes!6417))

(declare-fun b!757708 () Bool)

(declare-fun e!486692 () Bool)

(declare-fun tp!245117 () Bool)

(assert (=> b!757708 (= e!486692 tp!245117)))

(declare-fun tp!245118 () Bool)

(declare-fun b!757709 () Bool)

(assert (=> b!757709 (= e!486693 (and (inv!10657 (_1!5527 (_1!5528 (h!13773 (zeroValue!1355 (v!18511 (underlying!2379 (v!18512 (underlying!2380 (cache!1457 cacheUp!502)))))))))) e!486692 tp_is_empty!3711 setRes!6417 tp!245118))))

(declare-fun condSetEmpty!6417 () Bool)

(assert (=> b!757709 (= condSetEmpty!6417 (= (_2!5528 (h!13773 (zeroValue!1355 (v!18511 (underlying!2379 (v!18512 (underlying!2380 (cache!1457 cacheUp!502)))))))) ((as const (Array Context!718 Bool)) false)))))

(declare-fun b!757710 () Bool)

(declare-fun tp!245115 () Bool)

(assert (=> b!757710 (= e!486694 tp!245115)))

(assert (= b!757709 b!757708))

(assert (= (and b!757709 condSetEmpty!6417) setIsEmpty!6417))

(assert (= (and b!757709 (not condSetEmpty!6417)) setNonEmpty!6417))

(assert (= setNonEmpty!6417 b!757710))

(assert (= (and b!757464 ((_ is Cons!8372) (zeroValue!1355 (v!18511 (underlying!2379 (v!18512 (underlying!2380 (cache!1457 cacheUp!502)))))))) b!757709))

(declare-fun m!1024004 () Bool)

(assert (=> setNonEmpty!6417 m!1024004))

(declare-fun m!1024006 () Bool)

(assert (=> b!757709 m!1024006))

(declare-fun e!486696 () Bool)

(assert (=> b!757464 (= tp!244978 e!486696)))

(declare-fun setRes!6418 () Bool)

(declare-fun tp!245120 () Bool)

(declare-fun setNonEmpty!6418 () Bool)

(declare-fun setElem!6418 () Context!718)

(declare-fun e!486697 () Bool)

(assert (=> setNonEmpty!6418 (= setRes!6418 (and tp!245120 (inv!10657 setElem!6418) e!486697))))

(declare-fun setRest!6418 () (InoxSet Context!718))

(assert (=> setNonEmpty!6418 (= (_2!5528 (h!13773 (minValue!1355 (v!18511 (underlying!2379 (v!18512 (underlying!2380 (cache!1457 cacheUp!502)))))))) ((_ map or) (store ((as const (Array Context!718 Bool)) false) setElem!6418 true) setRest!6418))))

(declare-fun setIsEmpty!6418 () Bool)

(assert (=> setIsEmpty!6418 setRes!6418))

(declare-fun b!757711 () Bool)

(declare-fun e!486695 () Bool)

(declare-fun tp!245121 () Bool)

(assert (=> b!757711 (= e!486695 tp!245121)))

(declare-fun tp!245122 () Bool)

(declare-fun b!757712 () Bool)

(assert (=> b!757712 (= e!486696 (and (inv!10657 (_1!5527 (_1!5528 (h!13773 (minValue!1355 (v!18511 (underlying!2379 (v!18512 (underlying!2380 (cache!1457 cacheUp!502)))))))))) e!486695 tp_is_empty!3711 setRes!6418 tp!245122))))

(declare-fun condSetEmpty!6418 () Bool)

(assert (=> b!757712 (= condSetEmpty!6418 (= (_2!5528 (h!13773 (minValue!1355 (v!18511 (underlying!2379 (v!18512 (underlying!2380 (cache!1457 cacheUp!502)))))))) ((as const (Array Context!718 Bool)) false)))))

(declare-fun b!757713 () Bool)

(declare-fun tp!245119 () Bool)

(assert (=> b!757713 (= e!486697 tp!245119)))

(assert (= b!757712 b!757711))

(assert (= (and b!757712 condSetEmpty!6418) setIsEmpty!6418))

(assert (= (and b!757712 (not condSetEmpty!6418)) setNonEmpty!6418))

(assert (= setNonEmpty!6418 b!757713))

(assert (= (and b!757464 ((_ is Cons!8372) (minValue!1355 (v!18511 (underlying!2379 (v!18512 (underlying!2380 (cache!1457 cacheUp!502)))))))) b!757712))

(declare-fun m!1024008 () Bool)

(assert (=> setNonEmpty!6418 m!1024008))

(declare-fun m!1024010 () Bool)

(assert (=> b!757712 m!1024010))

(declare-fun setIsEmpty!6421 () Bool)

(declare-fun setRes!6421 () Bool)

(assert (=> setIsEmpty!6421 setRes!6421))

(declare-fun e!486703 () Bool)

(assert (=> b!757490 (= tp!244967 e!486703)))

(declare-fun b!757720 () Bool)

(declare-fun tp!245130 () Bool)

(assert (=> b!757720 (= e!486703 (and setRes!6421 tp!245130))))

(declare-fun condSetEmpty!6421 () Bool)

(assert (=> b!757720 (= condSetEmpty!6421 (= (_1!5530 (_1!5531 (h!13778 (zeroValue!1356 (v!18513 (underlying!2381 (v!18514 (underlying!2382 (cache!1458 cacheFindLongestMatch!74))))))))) ((as const (Array Context!718 Bool)) false)))))

(declare-fun tp!245131 () Bool)

(declare-fun e!486702 () Bool)

(declare-fun setNonEmpty!6421 () Bool)

(declare-fun setElem!6421 () Context!718)

(assert (=> setNonEmpty!6421 (= setRes!6421 (and tp!245131 (inv!10657 setElem!6421) e!486702))))

(declare-fun setRest!6421 () (InoxSet Context!718))

(assert (=> setNonEmpty!6421 (= (_1!5530 (_1!5531 (h!13778 (zeroValue!1356 (v!18513 (underlying!2381 (v!18514 (underlying!2382 (cache!1458 cacheFindLongestMatch!74))))))))) ((_ map or) (store ((as const (Array Context!718 Bool)) false) setElem!6421 true) setRest!6421))))

(declare-fun b!757721 () Bool)

(declare-fun tp!245129 () Bool)

(assert (=> b!757721 (= e!486702 tp!245129)))

(assert (= (and b!757720 condSetEmpty!6421) setIsEmpty!6421))

(assert (= (and b!757720 (not condSetEmpty!6421)) setNonEmpty!6421))

(assert (= setNonEmpty!6421 b!757721))

(assert (= (and b!757490 ((_ is Cons!8377) (zeroValue!1356 (v!18513 (underlying!2381 (v!18514 (underlying!2382 (cache!1458 cacheFindLongestMatch!74)))))))) b!757720))

(declare-fun m!1024012 () Bool)

(assert (=> setNonEmpty!6421 m!1024012))

(declare-fun setIsEmpty!6422 () Bool)

(declare-fun setRes!6422 () Bool)

(assert (=> setIsEmpty!6422 setRes!6422))

(declare-fun e!486705 () Bool)

(assert (=> b!757490 (= tp!244968 e!486705)))

(declare-fun b!757722 () Bool)

(declare-fun tp!245133 () Bool)

(assert (=> b!757722 (= e!486705 (and setRes!6422 tp!245133))))

(declare-fun condSetEmpty!6422 () Bool)

(assert (=> b!757722 (= condSetEmpty!6422 (= (_1!5530 (_1!5531 (h!13778 (minValue!1356 (v!18513 (underlying!2381 (v!18514 (underlying!2382 (cache!1458 cacheFindLongestMatch!74))))))))) ((as const (Array Context!718 Bool)) false)))))

(declare-fun setElem!6422 () Context!718)

(declare-fun e!486704 () Bool)

(declare-fun setNonEmpty!6422 () Bool)

(declare-fun tp!245134 () Bool)

(assert (=> setNonEmpty!6422 (= setRes!6422 (and tp!245134 (inv!10657 setElem!6422) e!486704))))

(declare-fun setRest!6422 () (InoxSet Context!718))

(assert (=> setNonEmpty!6422 (= (_1!5530 (_1!5531 (h!13778 (minValue!1356 (v!18513 (underlying!2381 (v!18514 (underlying!2382 (cache!1458 cacheFindLongestMatch!74))))))))) ((_ map or) (store ((as const (Array Context!718 Bool)) false) setElem!6422 true) setRest!6422))))

(declare-fun b!757723 () Bool)

(declare-fun tp!245132 () Bool)

(assert (=> b!757723 (= e!486704 tp!245132)))

(assert (= (and b!757722 condSetEmpty!6422) setIsEmpty!6422))

(assert (= (and b!757722 (not condSetEmpty!6422)) setNonEmpty!6422))

(assert (= setNonEmpty!6422 b!757723))

(assert (= (and b!757490 ((_ is Cons!8377) (minValue!1356 (v!18513 (underlying!2381 (v!18514 (underlying!2382 (cache!1458 cacheFindLongestMatch!74)))))))) b!757722))

(declare-fun m!1024014 () Bool)

(assert (=> setNonEmpty!6422 m!1024014))

(declare-fun tp!245136 () Bool)

(declare-fun b!757724 () Bool)

(declare-fun tp!245137 () Bool)

(declare-fun e!486706 () Bool)

(assert (=> b!757724 (= e!486706 (and (inv!10644 (left!6320 (c!128735 totalInput!378))) tp!245137 (inv!10644 (right!6650 (c!128735 totalInput!378))) tp!245136))))

(declare-fun b!757726 () Bool)

(declare-fun e!486707 () Bool)

(declare-fun tp!245135 () Bool)

(assert (=> b!757726 (= e!486707 tp!245135)))

(declare-fun b!757725 () Bool)

(assert (=> b!757725 (= e!486706 (and (inv!10658 (xs!5524 (c!128735 totalInput!378))) e!486707))))

(assert (=> b!757480 (= tp!244982 (and (inv!10644 (c!128735 totalInput!378)) e!486706))))

(assert (= (and b!757480 ((_ is Node!2845) (c!128735 totalInput!378))) b!757724))

(assert (= b!757725 b!757726))

(assert (= (and b!757480 ((_ is Leaf!4177) (c!128735 totalInput!378))) b!757725))

(declare-fun m!1024016 () Bool)

(assert (=> b!757724 m!1024016))

(declare-fun m!1024018 () Bool)

(assert (=> b!757724 m!1024018))

(declare-fun m!1024020 () Bool)

(assert (=> b!757725 m!1024020))

(assert (=> b!757480 m!1023748))

(declare-fun e!486708 () Bool)

(declare-fun tp!245140 () Bool)

(declare-fun b!757727 () Bool)

(declare-fun tp!245139 () Bool)

(assert (=> b!757727 (= e!486708 (and (inv!10644 (left!6320 (c!128735 treated!50))) tp!245140 (inv!10644 (right!6650 (c!128735 treated!50))) tp!245139))))

(declare-fun b!757729 () Bool)

(declare-fun e!486709 () Bool)

(declare-fun tp!245138 () Bool)

(assert (=> b!757729 (= e!486709 tp!245138)))

(declare-fun b!757728 () Bool)

(assert (=> b!757728 (= e!486708 (and (inv!10658 (xs!5524 (c!128735 treated!50))) e!486709))))

(assert (=> b!757481 (= tp!244956 (and (inv!10644 (c!128735 treated!50)) e!486708))))

(assert (= (and b!757481 ((_ is Node!2845) (c!128735 treated!50))) b!757727))

(assert (= b!757728 b!757729))

(assert (= (and b!757481 ((_ is Leaf!4177) (c!128735 treated!50))) b!757728))

(declare-fun m!1024022 () Bool)

(assert (=> b!757727 m!1024022))

(declare-fun m!1024024 () Bool)

(assert (=> b!757727 m!1024024))

(declare-fun m!1024026 () Bool)

(assert (=> b!757728 m!1024026))

(assert (=> b!757481 m!1023764))

(declare-fun setIsEmpty!6423 () Bool)

(declare-fun setRes!6423 () Bool)

(assert (=> setIsEmpty!6423 setRes!6423))

(declare-fun b!757731 () Bool)

(declare-fun e!486711 () Bool)

(declare-fun tp!245145 () Bool)

(assert (=> b!757731 (= e!486711 tp!245145)))

(declare-fun b!757732 () Bool)

(declare-fun e!486710 () Bool)

(declare-fun tp!245143 () Bool)

(assert (=> b!757732 (= e!486710 tp!245143)))

(declare-fun setNonEmpty!6423 () Bool)

(declare-fun setElem!6423 () Context!718)

(declare-fun tp!245142 () Bool)

(assert (=> setNonEmpty!6423 (= setRes!6423 (and tp!245142 (inv!10657 setElem!6423) e!486710))))

(declare-fun setRest!6423 () (InoxSet Context!718))

(assert (=> setNonEmpty!6423 (= (_2!5526 (h!13772 mapDefault!5321)) ((_ map or) (store ((as const (Array Context!718 Bool)) false) setElem!6423 true) setRest!6423))))

(declare-fun tp!245144 () Bool)

(declare-fun tp!245141 () Bool)

(declare-fun b!757730 () Bool)

(declare-fun e!486712 () Bool)

(assert (=> b!757730 (= e!486712 (and tp!245144 (inv!10657 (_2!5525 (_1!5526 (h!13772 mapDefault!5321)))) e!486711 tp_is_empty!3711 setRes!6423 tp!245141))))

(declare-fun condSetEmpty!6423 () Bool)

(assert (=> b!757730 (= condSetEmpty!6423 (= (_2!5526 (h!13772 mapDefault!5321)) ((as const (Array Context!718 Bool)) false)))))

(assert (=> b!757462 (= tp!244969 e!486712)))

(assert (= b!757730 b!757731))

(assert (= (and b!757730 condSetEmpty!6423) setIsEmpty!6423))

(assert (= (and b!757730 (not condSetEmpty!6423)) setNonEmpty!6423))

(assert (= setNonEmpty!6423 b!757732))

(assert (= (and b!757462 ((_ is Cons!8371) mapDefault!5321)) b!757730))

(declare-fun m!1024028 () Bool)

(assert (=> setNonEmpty!6423 m!1024028))

(declare-fun m!1024030 () Bool)

(assert (=> b!757730 m!1024030))

(declare-fun setIsEmpty!6428 () Bool)

(declare-fun setRes!6429 () Bool)

(assert (=> setIsEmpty!6428 setRes!6429))

(declare-fun mapIsEmpty!5332 () Bool)

(declare-fun mapRes!5332 () Bool)

(assert (=> mapIsEmpty!5332 mapRes!5332))

(declare-fun setIsEmpty!6429 () Bool)

(declare-fun setRes!6428 () Bool)

(assert (=> setIsEmpty!6429 setRes!6428))

(declare-fun setNonEmpty!6428 () Bool)

(declare-fun setElem!6428 () Context!718)

(declare-fun e!486724 () Bool)

(declare-fun tp!245163 () Bool)

(assert (=> setNonEmpty!6428 (= setRes!6429 (and tp!245163 (inv!10657 setElem!6428) e!486724))))

(declare-fun mapValue!5332 () List!8391)

(declare-fun setRest!6429 () (InoxSet Context!718))

(assert (=> setNonEmpty!6428 (= (_1!5530 (_1!5531 (h!13778 mapValue!5332))) ((_ map or) (store ((as const (Array Context!718 Bool)) false) setElem!6428 true) setRest!6429))))

(declare-fun b!757743 () Bool)

(declare-fun tp!245165 () Bool)

(assert (=> b!757743 (= e!486724 tp!245165)))

(declare-fun condMapEmpty!5332 () Bool)

(declare-fun mapDefault!5332 () List!8391)

(assert (=> mapNonEmpty!5321 (= condMapEmpty!5332 (= mapRest!5323 ((as const (Array (_ BitVec 32) List!8391)) mapDefault!5332)))))

(declare-fun e!486723 () Bool)

(assert (=> mapNonEmpty!5321 (= tp!244973 (and e!486723 mapRes!5332))))

(declare-fun b!757744 () Bool)

(declare-fun tp!245164 () Bool)

(assert (=> b!757744 (= e!486723 (and setRes!6428 tp!245164))))

(declare-fun condSetEmpty!6429 () Bool)

(assert (=> b!757744 (= condSetEmpty!6429 (= (_1!5530 (_1!5531 (h!13778 mapDefault!5332))) ((as const (Array Context!718 Bool)) false)))))

(declare-fun mapNonEmpty!5332 () Bool)

(declare-fun tp!245166 () Bool)

(declare-fun e!486721 () Bool)

(assert (=> mapNonEmpty!5332 (= mapRes!5332 (and tp!245166 e!486721))))

(declare-fun mapRest!5332 () (Array (_ BitVec 32) List!8391))

(declare-fun mapKey!5332 () (_ BitVec 32))

(assert (=> mapNonEmpty!5332 (= mapRest!5323 (store mapRest!5332 mapKey!5332 mapValue!5332))))

(declare-fun b!757745 () Bool)

(declare-fun e!486722 () Bool)

(declare-fun tp!245161 () Bool)

(assert (=> b!757745 (= e!486722 tp!245161)))

(declare-fun setNonEmpty!6429 () Bool)

(declare-fun setElem!6429 () Context!718)

(declare-fun tp!245160 () Bool)

(assert (=> setNonEmpty!6429 (= setRes!6428 (and tp!245160 (inv!10657 setElem!6429) e!486722))))

(declare-fun setRest!6428 () (InoxSet Context!718))

(assert (=> setNonEmpty!6429 (= (_1!5530 (_1!5531 (h!13778 mapDefault!5332))) ((_ map or) (store ((as const (Array Context!718 Bool)) false) setElem!6429 true) setRest!6428))))

(declare-fun b!757746 () Bool)

(declare-fun tp!245162 () Bool)

(assert (=> b!757746 (= e!486721 (and setRes!6429 tp!245162))))

(declare-fun condSetEmpty!6428 () Bool)

(assert (=> b!757746 (= condSetEmpty!6428 (= (_1!5530 (_1!5531 (h!13778 mapValue!5332))) ((as const (Array Context!718 Bool)) false)))))

(assert (= (and mapNonEmpty!5321 condMapEmpty!5332) mapIsEmpty!5332))

(assert (= (and mapNonEmpty!5321 (not condMapEmpty!5332)) mapNonEmpty!5332))

(assert (= (and b!757746 condSetEmpty!6428) setIsEmpty!6428))

(assert (= (and b!757746 (not condSetEmpty!6428)) setNonEmpty!6428))

(assert (= setNonEmpty!6428 b!757743))

(assert (= (and mapNonEmpty!5332 ((_ is Cons!8377) mapValue!5332)) b!757746))

(assert (= (and b!757744 condSetEmpty!6429) setIsEmpty!6429))

(assert (= (and b!757744 (not condSetEmpty!6429)) setNonEmpty!6429))

(assert (= setNonEmpty!6429 b!757745))

(assert (= (and mapNonEmpty!5321 ((_ is Cons!8377) mapDefault!5332)) b!757744))

(declare-fun m!1024032 () Bool)

(assert (=> setNonEmpty!6428 m!1024032))

(declare-fun m!1024034 () Bool)

(assert (=> mapNonEmpty!5332 m!1024034))

(declare-fun m!1024036 () Bool)

(assert (=> setNonEmpty!6429 m!1024036))

(declare-fun setIsEmpty!6430 () Bool)

(declare-fun setRes!6430 () Bool)

(assert (=> setIsEmpty!6430 setRes!6430))

(declare-fun e!486726 () Bool)

(assert (=> mapNonEmpty!5321 (= tp!244980 e!486726)))

(declare-fun b!757747 () Bool)

(declare-fun tp!245168 () Bool)

(assert (=> b!757747 (= e!486726 (and setRes!6430 tp!245168))))

(declare-fun condSetEmpty!6430 () Bool)

(assert (=> b!757747 (= condSetEmpty!6430 (= (_1!5530 (_1!5531 (h!13778 mapValue!5321))) ((as const (Array Context!718 Bool)) false)))))

(declare-fun setElem!6430 () Context!718)

(declare-fun e!486725 () Bool)

(declare-fun setNonEmpty!6430 () Bool)

(declare-fun tp!245169 () Bool)

(assert (=> setNonEmpty!6430 (= setRes!6430 (and tp!245169 (inv!10657 setElem!6430) e!486725))))

(declare-fun setRest!6430 () (InoxSet Context!718))

(assert (=> setNonEmpty!6430 (= (_1!5530 (_1!5531 (h!13778 mapValue!5321))) ((_ map or) (store ((as const (Array Context!718 Bool)) false) setElem!6430 true) setRest!6430))))

(declare-fun b!757748 () Bool)

(declare-fun tp!245167 () Bool)

(assert (=> b!757748 (= e!486725 tp!245167)))

(assert (= (and b!757747 condSetEmpty!6430) setIsEmpty!6430))

(assert (= (and b!757747 (not condSetEmpty!6430)) setNonEmpty!6430))

(assert (= setNonEmpty!6430 b!757748))

(assert (= (and mapNonEmpty!5321 ((_ is Cons!8377) mapValue!5321)) b!757747))

(declare-fun m!1024038 () Bool)

(assert (=> setNonEmpty!6430 m!1024038))

(declare-fun e!486728 () Bool)

(assert (=> b!757468 (= tp!244966 e!486728)))

(declare-fun setElem!6431 () Context!718)

(declare-fun e!486729 () Bool)

(declare-fun tp!245171 () Bool)

(declare-fun setNonEmpty!6431 () Bool)

(declare-fun setRes!6431 () Bool)

(assert (=> setNonEmpty!6431 (= setRes!6431 (and tp!245171 (inv!10657 setElem!6431) e!486729))))

(declare-fun setRest!6431 () (InoxSet Context!718))

(assert (=> setNonEmpty!6431 (= (_2!5528 (h!13773 mapDefault!5322)) ((_ map or) (store ((as const (Array Context!718 Bool)) false) setElem!6431 true) setRest!6431))))

(declare-fun setIsEmpty!6431 () Bool)

(assert (=> setIsEmpty!6431 setRes!6431))

(declare-fun b!757749 () Bool)

(declare-fun e!486727 () Bool)

(declare-fun tp!245172 () Bool)

(assert (=> b!757749 (= e!486727 tp!245172)))

(declare-fun tp!245173 () Bool)

(declare-fun b!757750 () Bool)

(assert (=> b!757750 (= e!486728 (and (inv!10657 (_1!5527 (_1!5528 (h!13773 mapDefault!5322)))) e!486727 tp_is_empty!3711 setRes!6431 tp!245173))))

(declare-fun condSetEmpty!6431 () Bool)

(assert (=> b!757750 (= condSetEmpty!6431 (= (_2!5528 (h!13773 mapDefault!5322)) ((as const (Array Context!718 Bool)) false)))))

(declare-fun b!757751 () Bool)

(declare-fun tp!245170 () Bool)

(assert (=> b!757751 (= e!486729 tp!245170)))

(assert (= b!757750 b!757749))

(assert (= (and b!757750 condSetEmpty!6431) setIsEmpty!6431))

(assert (= (and b!757750 (not condSetEmpty!6431)) setNonEmpty!6431))

(assert (= setNonEmpty!6431 b!757751))

(assert (= (and b!757468 ((_ is Cons!8372) mapDefault!5322)) b!757750))

(declare-fun m!1024040 () Bool)

(assert (=> setNonEmpty!6431 m!1024040))

(declare-fun m!1024042 () Bool)

(assert (=> b!757750 m!1024042))

(declare-fun b!757763 () Bool)

(declare-fun e!486732 () Bool)

(declare-fun tp!245184 () Bool)

(declare-fun tp!245185 () Bool)

(assert (=> b!757763 (= e!486732 (and tp!245184 tp!245185))))

(declare-fun b!757764 () Bool)

(declare-fun tp!245187 () Bool)

(assert (=> b!757764 (= e!486732 tp!245187)))

(assert (=> b!757469 (= tp!244970 e!486732)))

(declare-fun b!757765 () Bool)

(declare-fun tp!245186 () Bool)

(declare-fun tp!245188 () Bool)

(assert (=> b!757765 (= e!486732 (and tp!245186 tp!245188))))

(declare-fun b!757762 () Bool)

(assert (=> b!757762 (= e!486732 tp_is_empty!3711)))

(assert (= (and b!757469 ((_ is ElementMatch!1957) (regex!1610 (h!13777 rules!1486)))) b!757762))

(assert (= (and b!757469 ((_ is Concat!3611) (regex!1610 (h!13777 rules!1486)))) b!757763))

(assert (= (and b!757469 ((_ is Star!1957) (regex!1610 (h!13777 rules!1486)))) b!757764))

(assert (= (and b!757469 ((_ is Union!1957) (regex!1610 (h!13777 rules!1486)))) b!757765))

(declare-fun setIsEmpty!6432 () Bool)

(declare-fun setRes!6432 () Bool)

(assert (=> setIsEmpty!6432 setRes!6432))

(declare-fun e!486734 () Bool)

(assert (=> b!757489 (= tp!244971 e!486734)))

(declare-fun b!757766 () Bool)

(declare-fun tp!245190 () Bool)

(assert (=> b!757766 (= e!486734 (and setRes!6432 tp!245190))))

(declare-fun condSetEmpty!6432 () Bool)

(assert (=> b!757766 (= condSetEmpty!6432 (= (_1!5530 (_1!5531 (h!13778 mapDefault!5323))) ((as const (Array Context!718 Bool)) false)))))

(declare-fun setNonEmpty!6432 () Bool)

(declare-fun tp!245191 () Bool)

(declare-fun e!486733 () Bool)

(declare-fun setElem!6432 () Context!718)

(assert (=> setNonEmpty!6432 (= setRes!6432 (and tp!245191 (inv!10657 setElem!6432) e!486733))))

(declare-fun setRest!6432 () (InoxSet Context!718))

(assert (=> setNonEmpty!6432 (= (_1!5530 (_1!5531 (h!13778 mapDefault!5323))) ((_ map or) (store ((as const (Array Context!718 Bool)) false) setElem!6432 true) setRest!6432))))

(declare-fun b!757767 () Bool)

(declare-fun tp!245189 () Bool)

(assert (=> b!757767 (= e!486733 tp!245189)))

(assert (= (and b!757766 condSetEmpty!6432) setIsEmpty!6432))

(assert (= (and b!757766 (not condSetEmpty!6432)) setNonEmpty!6432))

(assert (= setNonEmpty!6432 b!757767))

(assert (= (and b!757489 ((_ is Cons!8377) mapDefault!5323)) b!757766))

(declare-fun m!1024044 () Bool)

(assert (=> setNonEmpty!6432 m!1024044))

(check-sat (not b!757580) (not b!757732) (not d!248094) (not d!248076) (not b!757624) (not b!757539) (not setNonEmpty!6399) b_and!70555 (not setNonEmpty!6406) (not b!757572) (not d!248022) (not b!757727) (not d!248084) (not d!248062) (not b!757612) (not b_next!23705) (not d!248024) (not b!757551) (not b!757675) (not b!757502) (not setNonEmpty!6405) (not setNonEmpty!6407) (not b!757645) (not b!757660) (not b!757626) (not setNonEmpty!6421) (not mapNonEmpty!5326) (not b!757706) tp_is_empty!3711 (not b!757694) (not setNonEmpty!6418) (not b!757526) (not b!757583) (not b!757692) b_and!70551 (not b!757577) (not b!757665) (not setNonEmpty!6430) (not b!757693) (not b_next!23707) b_and!70543 (not d!248044) (not setNonEmpty!6429) (not d!248074) (not d!248086) (not b!757744) b_and!70537 (not d!248082) (not b!757528) (not b!757750) (not b!757726) (not b!757550) (not b!757674) (not b!757751) (not b!757721) (not b!757582) (not b!757765) (not b_next!23711) (not b!757650) (not setNonEmpty!6428) (not b!757538) (not setNonEmpty!6412) (not b!757662) (not setNonEmpty!6431) (not b!757705) (not d!248048) (not setNonEmpty!6417) (not b!757749) (not b!757725) (not b!757480) (not b!757648) (not b_next!23701) (not b!757708) (not b!757533) (not b!757531) (not b!757723) (not d!248026) (not b_next!23697) (not d!248060) (not b!757603) (not setNonEmpty!6422) (not b!757628) (not b!757730) (not b!757569) (not b!757576) (not mapNonEmpty!5332) (not b!757535) (not mapNonEmpty!5329) (not b!757748) (not b!757536) (not b!757625) (not b!757766) (not b!757663) (not b!757729) b_and!70541 (not b!757747) (not b!757557) (not b!757661) (not b!757530) (not b!757567) (not b!757710) (not b!757745) b_and!70547 (not b!757481) (not b!757548) (not d!248028) (not b!757707) (not d!248088) (not b!757573) (not b!757643) (not b!757713) (not b!757664) (not b_next!23699) (not d!248064) (not d!248040) (not b!757623) (not b!757529) b_and!70553 (not b!757644) (not b!757613) (not b!757764) (not b!757578) (not b!757709) (not b!757691) (not b!757649) (not setNonEmpty!6432) (not setNonEmpty!6400) (not d!248080) (not b_next!23709) b_and!70549 (not b!757651) (not b!757588) (not setNonEmpty!6413) (not b_next!23703) (not b!757511) (not b!757731) (not b!757554) (not b!757585) (not d!248034) (not d!248038) (not b!757614) (not b_next!23695) (not b!757482) (not b!757467) (not b!757537) b_and!70545 (not b!757509) (not b!757560) (not setNonEmpty!6423) (not b!757696) (not d!248058) (not b!757724) (not b!757695) (not d!248100) (not b!757767) (not b!757728) (not d!248092) (not b!757763) (not b!757549) (not setNonEmpty!6416) (not b!757711) (not b!757743) (not d!248098) (not b!757579) (not b!757646) (not d!248020) (not b!757570) (not b!757712) (not b!757532) b_and!70539 (not b_next!23693) (not b!757720) (not b!757575) (not b!757627) (not b!757746) (not b!757647) (not b!757599) (not d!248090) (not b!757722) (not b!757598))
(check-sat b_and!70555 (not b_next!23705) b_and!70537 (not b_next!23711) (not b_next!23701) (not b_next!23697) b_and!70541 b_and!70547 (not b_next!23699) b_and!70553 (not b_next!23695) b_and!70545 b_and!70551 (not b_next!23707) b_and!70543 (not b_next!23709) b_and!70549 (not b_next!23703) b_and!70539 (not b_next!23693))
(get-model)

(declare-fun d!248102 () Bool)

(declare-fun lambda!22984 () Int)

(declare-fun forall!2027 (List!8384 Int) Bool)

(assert (=> d!248102 (= (inv!10657 (_2!5525 (_1!5526 (h!13772 (minValue!1354 (v!18509 (underlying!2377 (v!18510 (underlying!2378 (cache!1456 cacheDown!515)))))))))) (forall!2027 (exprs!859 (_2!5525 (_1!5526 (h!13772 (minValue!1354 (v!18509 (underlying!2377 (v!18510 (underlying!2378 (cache!1456 cacheDown!515)))))))))) lambda!22984))))

(declare-fun bs!161158 () Bool)

(assert (= bs!161158 d!248102))

(declare-fun m!1024046 () Bool)

(assert (=> bs!161158 m!1024046))

(assert (=> b!757626 d!248102))

(declare-fun b!757779 () Bool)

(declare-fun e!486740 () List!8388)

(assert (=> b!757779 (= e!486740 (++!2196 (list!3389 (left!6320 (c!128735 (_2!5529 lt!308963)))) (list!3389 (right!6650 (c!128735 (_2!5529 lt!308963))))))))

(declare-fun b!757778 () Bool)

(declare-fun list!3390 (IArray!5691) List!8388)

(assert (=> b!757778 (= e!486740 (list!3390 (xs!5524 (c!128735 (_2!5529 lt!308963)))))))

(declare-fun d!248104 () Bool)

(declare-fun c!128767 () Bool)

(assert (=> d!248104 (= c!128767 ((_ is Empty!2845) (c!128735 (_2!5529 lt!308963))))))

(declare-fun e!486739 () List!8388)

(assert (=> d!248104 (= (list!3389 (c!128735 (_2!5529 lt!308963))) e!486739)))

(declare-fun b!757776 () Bool)

(assert (=> b!757776 (= e!486739 Nil!8374)))

(declare-fun b!757777 () Bool)

(assert (=> b!757777 (= e!486739 e!486740)))

(declare-fun c!128768 () Bool)

(assert (=> b!757777 (= c!128768 ((_ is Leaf!4177) (c!128735 (_2!5529 lt!308963))))))

(assert (= (and d!248104 c!128767) b!757776))

(assert (= (and d!248104 (not c!128767)) b!757777))

(assert (= (and b!757777 c!128768) b!757778))

(assert (= (and b!757777 (not c!128768)) b!757779))

(declare-fun m!1024048 () Bool)

(assert (=> b!757779 m!1024048))

(declare-fun m!1024050 () Bool)

(assert (=> b!757779 m!1024050))

(assert (=> b!757779 m!1024048))

(assert (=> b!757779 m!1024050))

(declare-fun m!1024052 () Bool)

(assert (=> b!757779 m!1024052))

(declare-fun m!1024054 () Bool)

(assert (=> b!757778 m!1024054))

(assert (=> d!248076 d!248104))

(declare-fun bs!161159 () Bool)

(declare-fun d!248106 () Bool)

(assert (= bs!161159 (and d!248106 d!248102)))

(declare-fun lambda!22985 () Int)

(assert (=> bs!161159 (= lambda!22985 lambda!22984)))

(assert (=> d!248106 (= (inv!10657 (_2!5525 (_1!5526 (h!13772 (zeroValue!1354 (v!18509 (underlying!2377 (v!18510 (underlying!2378 (cache!1456 cacheDown!515)))))))))) (forall!2027 (exprs!859 (_2!5525 (_1!5526 (h!13772 (zeroValue!1354 (v!18509 (underlying!2377 (v!18510 (underlying!2378 (cache!1456 cacheDown!515)))))))))) lambda!22985))))

(declare-fun bs!161160 () Bool)

(assert (= bs!161160 d!248106))

(declare-fun m!1024056 () Bool)

(assert (=> bs!161160 m!1024056))

(assert (=> b!757623 d!248106))

(declare-fun d!248108 () Bool)

(assert (=> d!248108 (= (list!3387 (_2!5529 lt!308984)) (list!3389 (c!128735 (_2!5529 lt!308984))))))

(declare-fun bs!161161 () Bool)

(assert (= bs!161161 d!248108))

(declare-fun m!1024058 () Bool)

(assert (=> bs!161161 m!1024058))

(assert (=> b!757579 d!248108))

(declare-fun b!757790 () Bool)

(declare-fun e!486749 () tuple2!9638)

(declare-datatypes ((tuple2!9640 0))(
  ( (tuple2!9641 (_1!5534 Token!2918) (_2!5534 List!8388)) )
))
(declare-datatypes ((Option!1851 0))(
  ( (None!1850) (Some!1850 (v!18517 tuple2!9640)) )
))
(declare-fun lt!308997 () Option!1851)

(declare-fun lt!308998 () tuple2!9638)

(assert (=> b!757790 (= e!486749 (tuple2!9639 (Cons!8375 (_1!5534 (v!18517 lt!308997)) (_1!5533 lt!308998)) (_2!5533 lt!308998)))))

(assert (=> b!757790 (= lt!308998 (lexList!368 thiss!12529 rules!1486 (_2!5534 (v!18517 lt!308997))))))

(declare-fun b!757791 () Bool)

(declare-fun e!486747 () Bool)

(declare-fun lt!308999 () tuple2!9638)

(declare-fun isEmpty!5158 (List!8389) Bool)

(assert (=> b!757791 (= e!486747 (not (isEmpty!5158 (_1!5533 lt!308999))))))

(declare-fun d!248110 () Bool)

(declare-fun e!486748 () Bool)

(assert (=> d!248110 e!486748))

(declare-fun c!128773 () Bool)

(declare-fun size!6824 (List!8389) Int)

(assert (=> d!248110 (= c!128773 (> (size!6824 (_1!5533 lt!308999)) 0))))

(assert (=> d!248110 (= lt!308999 e!486749)))

(declare-fun c!128774 () Bool)

(assert (=> d!248110 (= c!128774 ((_ is Some!1850) lt!308997))))

(declare-fun maxPrefix!910 (LexerInterface!1412 List!8390 List!8388) Option!1851)

(assert (=> d!248110 (= lt!308997 (maxPrefix!910 thiss!12529 rules!1486 (list!3387 treated!50)))))

(assert (=> d!248110 (= (lexList!368 thiss!12529 rules!1486 (list!3387 treated!50)) lt!308999)))

(declare-fun b!757792 () Bool)

(assert (=> b!757792 (= e!486748 e!486747)))

(declare-fun res!333815 () Bool)

(assert (=> b!757792 (= res!333815 (< (size!6822 (_2!5533 lt!308999)) (size!6822 (list!3387 treated!50))))))

(assert (=> b!757792 (=> (not res!333815) (not e!486747))))

(declare-fun b!757793 () Bool)

(assert (=> b!757793 (= e!486749 (tuple2!9639 Nil!8375 (list!3387 treated!50)))))

(declare-fun b!757794 () Bool)

(assert (=> b!757794 (= e!486748 (= (_2!5533 lt!308999) (list!3387 treated!50)))))

(assert (= (and d!248110 c!128774) b!757790))

(assert (= (and d!248110 (not c!128774)) b!757793))

(assert (= (and d!248110 c!128773) b!757792))

(assert (= (and d!248110 (not c!128773)) b!757794))

(assert (= (and b!757792 res!333815) b!757791))

(declare-fun m!1024060 () Bool)

(assert (=> b!757790 m!1024060))

(declare-fun m!1024062 () Bool)

(assert (=> b!757791 m!1024062))

(declare-fun m!1024064 () Bool)

(assert (=> d!248110 m!1024064))

(assert (=> d!248110 m!1023754))

(declare-fun m!1024066 () Bool)

(assert (=> d!248110 m!1024066))

(declare-fun m!1024068 () Bool)

(assert (=> b!757792 m!1024068))

(assert (=> b!757792 m!1023754))

(assert (=> b!757792 m!1023924))

(assert (=> b!757579 d!248110))

(assert (=> b!757579 d!248090))

(declare-fun d!248112 () Bool)

(declare-fun e!486752 () Bool)

(assert (=> d!248112 e!486752))

(declare-fun res!333818 () Bool)

(assert (=> d!248112 (=> (not res!333818) (not e!486752))))

(declare-fun prepend!320 (Conc!2846 Token!2918) Conc!2846)

(assert (=> d!248112 (= res!333818 (isBalanced!760 (prepend!320 (c!128736 (_1!5529 lt!308976)) (_1!5532 (v!18515 lt!308977)))))))

(declare-fun lt!309002 () BalanceConc!5704)

(assert (=> d!248112 (= lt!309002 (BalanceConc!5705 (prepend!320 (c!128736 (_1!5529 lt!308976)) (_1!5532 (v!18515 lt!308977)))))))

(assert (=> d!248112 (= (prepend!319 (_1!5529 lt!308976) (_1!5532 (v!18515 lt!308977))) lt!309002)))

(declare-fun b!757797 () Bool)

(assert (=> b!757797 (= e!486752 (= (list!3386 lt!309002) (Cons!8375 (_1!5532 (v!18515 lt!308977)) (list!3386 (_1!5529 lt!308976)))))))

(assert (= (and d!248112 res!333818) b!757797))

(declare-fun m!1024070 () Bool)

(assert (=> d!248112 m!1024070))

(assert (=> d!248112 m!1024070))

(declare-fun m!1024072 () Bool)

(assert (=> d!248112 m!1024072))

(declare-fun m!1024074 () Bool)

(assert (=> b!757797 m!1024074))

(declare-fun m!1024076 () Bool)

(assert (=> b!757797 m!1024076))

(assert (=> b!757538 d!248112))

(declare-fun b!757798 () Bool)

(declare-fun e!486754 () Bool)

(declare-fun lt!309005 () tuple2!9630)

(assert (=> b!757798 (= e!486754 (= (list!3387 (_2!5529 lt!309005)) (list!3387 (_2!5532 (v!18515 lt!308977)))))))

(declare-fun b!757799 () Bool)

(declare-fun e!486753 () tuple2!9630)

(assert (=> b!757799 (= e!486753 (tuple2!9631 (BalanceConc!5705 Empty!2846) (_2!5532 (v!18515 lt!308977))))))

(declare-fun b!757800 () Bool)

(declare-fun e!486755 () Bool)

(assert (=> b!757800 (= e!486754 e!486755)))

(declare-fun res!333820 () Bool)

(assert (=> b!757800 (= res!333820 (< (size!6820 (_2!5529 lt!309005)) (size!6820 (_2!5532 (v!18515 lt!308977)))))))

(assert (=> b!757800 (=> (not res!333820) (not e!486755))))

(declare-fun b!757802 () Bool)

(assert (=> b!757802 (= e!486755 (not (isEmpty!5157 (_1!5529 lt!309005))))))

(declare-fun b!757803 () Bool)

(declare-fun lt!309003 () tuple2!9630)

(declare-fun lt!309004 () Option!1850)

(assert (=> b!757803 (= e!486753 (tuple2!9631 (prepend!319 (_1!5529 lt!309003) (_1!5532 (v!18515 lt!309004))) (_2!5529 lt!309003)))))

(assert (=> b!757803 (= lt!309003 (lexRec!241 thiss!12529 rules!1486 (_2!5532 (v!18515 lt!309004))))))

(declare-fun b!757804 () Bool)

(declare-fun e!486756 () Bool)

(assert (=> b!757804 (= e!486756 (= (list!3387 (_2!5529 lt!309005)) (_2!5533 (lexList!368 thiss!12529 rules!1486 (list!3387 (_2!5532 (v!18515 lt!308977)))))))))

(declare-fun b!757801 () Bool)

(declare-fun res!333819 () Bool)

(assert (=> b!757801 (=> (not res!333819) (not e!486756))))

(assert (=> b!757801 (= res!333819 (= (list!3386 (_1!5529 lt!309005)) (_1!5533 (lexList!368 thiss!12529 rules!1486 (list!3387 (_2!5532 (v!18515 lt!308977)))))))))

(declare-fun d!248114 () Bool)

(assert (=> d!248114 e!486756))

(declare-fun res!333821 () Bool)

(assert (=> d!248114 (=> (not res!333821) (not e!486756))))

(assert (=> d!248114 (= res!333821 e!486754)))

(declare-fun c!128776 () Bool)

(assert (=> d!248114 (= c!128776 (> (size!6821 (_1!5529 lt!309005)) 0))))

(assert (=> d!248114 (= lt!309005 e!486753)))

(declare-fun c!128777 () Bool)

(assert (=> d!248114 (= c!128777 ((_ is Some!1849) lt!309004))))

(assert (=> d!248114 (= lt!309004 (maxPrefixZipperSequence!515 thiss!12529 rules!1486 (_2!5532 (v!18515 lt!308977))))))

(assert (=> d!248114 (= (lexRec!241 thiss!12529 rules!1486 (_2!5532 (v!18515 lt!308977))) lt!309005)))

(assert (= (and d!248114 c!128777) b!757803))

(assert (= (and d!248114 (not c!128777)) b!757799))

(assert (= (and d!248114 c!128776) b!757800))

(assert (= (and d!248114 (not c!128776)) b!757798))

(assert (= (and b!757800 res!333820) b!757802))

(assert (= (and d!248114 res!333821) b!757801))

(assert (= (and b!757801 res!333819) b!757804))

(declare-fun m!1024078 () Bool)

(assert (=> b!757801 m!1024078))

(declare-fun m!1024080 () Bool)

(assert (=> b!757801 m!1024080))

(assert (=> b!757801 m!1024080))

(declare-fun m!1024082 () Bool)

(assert (=> b!757801 m!1024082))

(declare-fun m!1024084 () Bool)

(assert (=> b!757803 m!1024084))

(declare-fun m!1024086 () Bool)

(assert (=> b!757803 m!1024086))

(declare-fun m!1024088 () Bool)

(assert (=> b!757800 m!1024088))

(declare-fun m!1024090 () Bool)

(assert (=> b!757800 m!1024090))

(declare-fun m!1024092 () Bool)

(assert (=> b!757802 m!1024092))

(declare-fun m!1024094 () Bool)

(assert (=> b!757804 m!1024094))

(assert (=> b!757804 m!1024080))

(assert (=> b!757804 m!1024080))

(assert (=> b!757804 m!1024082))

(assert (=> b!757798 m!1024094))

(assert (=> b!757798 m!1024080))

(declare-fun m!1024096 () Bool)

(assert (=> d!248114 m!1024096))

(declare-fun m!1024098 () Bool)

(assert (=> d!248114 m!1024098))

(assert (=> b!757538 d!248114))

(declare-fun d!248116 () Bool)

(assert (=> d!248116 (= (inv!10656 (xs!5525 (c!128736 acc!372))) (<= (size!6824 (innerList!2904 (xs!5525 (c!128736 acc!372)))) 2147483647))))

(declare-fun bs!161162 () Bool)

(assert (= bs!161162 d!248116))

(declare-fun m!1024100 () Bool)

(assert (=> bs!161162 m!1024100))

(assert (=> b!757613 d!248116))

(declare-fun d!248118 () Bool)

(declare-fun lt!309008 () Int)

(assert (=> d!248118 (>= lt!309008 0)))

(declare-fun e!486759 () Int)

(assert (=> d!248118 (= lt!309008 e!486759)))

(declare-fun c!128780 () Bool)

(assert (=> d!248118 (= c!128780 ((_ is Nil!8374) (list!3387 input!870)))))

(assert (=> d!248118 (= (size!6822 (list!3387 input!870)) lt!309008)))

(declare-fun b!757809 () Bool)

(assert (=> b!757809 (= e!486759 0)))

(declare-fun b!757810 () Bool)

(assert (=> b!757810 (= e!486759 (+ 1 (size!6822 (t!91118 (list!3387 input!870)))))))

(assert (= (and d!248118 c!128780) b!757809))

(assert (= (and d!248118 (not c!128780)) b!757810))

(declare-fun m!1024102 () Bool)

(assert (=> b!757810 m!1024102))

(assert (=> d!248094 d!248118))

(assert (=> d!248094 d!248092))

(declare-fun d!248120 () Bool)

(declare-fun lt!309011 () Int)

(assert (=> d!248120 (= lt!309011 (size!6822 (list!3389 (c!128735 input!870))))))

(assert (=> d!248120 (= lt!309011 (ite ((_ is Empty!2845) (c!128735 input!870)) 0 (ite ((_ is Leaf!4177) (c!128735 input!870)) (csize!5921 (c!128735 input!870)) (csize!5920 (c!128735 input!870)))))))

(assert (=> d!248120 (= (size!6823 (c!128735 input!870)) lt!309011)))

(declare-fun bs!161163 () Bool)

(assert (= bs!161163 d!248120))

(assert (=> bs!161163 m!1023938))

(assert (=> bs!161163 m!1023938))

(declare-fun m!1024104 () Bool)

(assert (=> bs!161163 m!1024104))

(assert (=> d!248094 d!248120))

(declare-fun bs!161164 () Bool)

(declare-fun d!248122 () Bool)

(assert (= bs!161164 (and d!248122 d!248102)))

(declare-fun lambda!22986 () Int)

(assert (=> bs!161164 (= lambda!22986 lambda!22984)))

(declare-fun bs!161165 () Bool)

(assert (= bs!161165 (and d!248122 d!248106)))

(assert (=> bs!161165 (= lambda!22986 lambda!22985)))

(assert (=> d!248122 (= (inv!10657 (_1!5527 (_1!5528 (h!13773 mapValue!5323)))) (forall!2027 (exprs!859 (_1!5527 (_1!5528 (h!13773 mapValue!5323)))) lambda!22986))))

(declare-fun bs!161166 () Bool)

(assert (= bs!161166 d!248122))

(declare-fun m!1024106 () Bool)

(assert (=> bs!161166 m!1024106))

(assert (=> b!757706 d!248122))

(declare-fun d!248124 () Bool)

(assert (=> d!248124 true))

(declare-fun lt!309014 () Bool)

(declare-fun rulesValidInductive!564 (LexerInterface!1412 List!8390) Bool)

(assert (=> d!248124 (= lt!309014 (rulesValidInductive!564 thiss!12529 rules!1486))))

(declare-fun lambda!22989 () Int)

(declare-fun forall!2028 (List!8390 Int) Bool)

(assert (=> d!248124 (= lt!309014 (forall!2028 rules!1486 lambda!22989))))

(assert (=> d!248124 (= (rulesValid!560 thiss!12529 rules!1486) lt!309014)))

(declare-fun bs!161167 () Bool)

(assert (= bs!161167 d!248124))

(declare-fun m!1024108 () Bool)

(assert (=> bs!161167 m!1024108))

(declare-fun m!1024110 () Bool)

(assert (=> bs!161167 m!1024110))

(assert (=> d!248084 d!248124))

(declare-fun b!757825 () Bool)

(declare-fun e!486765 () Bool)

(declare-fun isEmpty!5159 (Conc!2845) Bool)

(assert (=> b!757825 (= e!486765 (not (isEmpty!5159 (right!6650 (c!128735 input!870)))))))

(declare-fun b!757826 () Bool)

(declare-fun res!333834 () Bool)

(assert (=> b!757826 (=> (not res!333834) (not e!486765))))

(assert (=> b!757826 (= res!333834 (isBalanced!761 (right!6650 (c!128735 input!870))))))

(declare-fun b!757827 () Bool)

(declare-fun res!333838 () Bool)

(assert (=> b!757827 (=> (not res!333838) (not e!486765))))

(declare-fun height!371 (Conc!2845) Int)

(assert (=> b!757827 (= res!333838 (<= (- (height!371 (left!6320 (c!128735 input!870))) (height!371 (right!6650 (c!128735 input!870)))) 1))))

(declare-fun d!248126 () Bool)

(declare-fun res!333835 () Bool)

(declare-fun e!486764 () Bool)

(assert (=> d!248126 (=> res!333835 e!486764)))

(assert (=> d!248126 (= res!333835 (not ((_ is Node!2845) (c!128735 input!870))))))

(assert (=> d!248126 (= (isBalanced!761 (c!128735 input!870)) e!486764)))

(declare-fun b!757828 () Bool)

(declare-fun res!333839 () Bool)

(assert (=> b!757828 (=> (not res!333839) (not e!486765))))

(assert (=> b!757828 (= res!333839 (isBalanced!761 (left!6320 (c!128735 input!870))))))

(declare-fun b!757829 () Bool)

(assert (=> b!757829 (= e!486764 e!486765)))

(declare-fun res!333837 () Bool)

(assert (=> b!757829 (=> (not res!333837) (not e!486765))))

(assert (=> b!757829 (= res!333837 (<= (- 1) (- (height!371 (left!6320 (c!128735 input!870))) (height!371 (right!6650 (c!128735 input!870))))))))

(declare-fun b!757830 () Bool)

(declare-fun res!333836 () Bool)

(assert (=> b!757830 (=> (not res!333836) (not e!486765))))

(assert (=> b!757830 (= res!333836 (not (isEmpty!5159 (left!6320 (c!128735 input!870)))))))

(assert (= (and d!248126 (not res!333835)) b!757829))

(assert (= (and b!757829 res!333837) b!757827))

(assert (= (and b!757827 res!333838) b!757828))

(assert (= (and b!757828 res!333839) b!757826))

(assert (= (and b!757826 res!333834) b!757830))

(assert (= (and b!757830 res!333836) b!757825))

(declare-fun m!1024112 () Bool)

(assert (=> b!757825 m!1024112))

(declare-fun m!1024114 () Bool)

(assert (=> b!757827 m!1024114))

(declare-fun m!1024116 () Bool)

(assert (=> b!757827 m!1024116))

(assert (=> b!757829 m!1024114))

(assert (=> b!757829 m!1024116))

(declare-fun m!1024118 () Bool)

(assert (=> b!757828 m!1024118))

(declare-fun m!1024120 () Bool)

(assert (=> b!757826 m!1024120))

(declare-fun m!1024122 () Bool)

(assert (=> b!757830 m!1024122))

(assert (=> d!248040 d!248126))

(declare-fun bs!161168 () Bool)

(declare-fun d!248128 () Bool)

(assert (= bs!161168 (and d!248128 d!248102)))

(declare-fun lambda!22990 () Int)

(assert (=> bs!161168 (= lambda!22990 lambda!22984)))

(declare-fun bs!161169 () Bool)

(assert (= bs!161169 (and d!248128 d!248106)))

(assert (=> bs!161169 (= lambda!22990 lambda!22985)))

(declare-fun bs!161170 () Bool)

(assert (= bs!161170 (and d!248128 d!248122)))

(assert (=> bs!161170 (= lambda!22990 lambda!22986)))

(assert (=> d!248128 (= (inv!10657 (_1!5527 (_1!5528 (h!13773 mapDefault!5329)))) (forall!2027 (exprs!859 (_1!5527 (_1!5528 (h!13773 mapDefault!5329)))) lambda!22990))))

(declare-fun bs!161171 () Bool)

(assert (= bs!161171 d!248128))

(declare-fun m!1024124 () Bool)

(assert (=> bs!161171 m!1024124))

(assert (=> b!757692 d!248128))

(declare-fun d!248130 () Bool)

(assert (=> d!248130 (= (height!370 (c!128736 acc!372)) (ite ((_ is Empty!2846) (c!128736 acc!372)) 0 (ite ((_ is Leaf!4178) (c!128736 acc!372)) 1 (cheight!3057 (c!128736 acc!372)))))))

(assert (=> b!757550 d!248130))

(declare-fun d!248132 () Bool)

(assert (=> d!248132 (= (max!0 (height!370 (c!128736 acc!372)) (height!370 (c!128736 (_1!5529 lt!308963)))) (ite (< (height!370 (c!128736 acc!372)) (height!370 (c!128736 (_1!5529 lt!308963)))) (height!370 (c!128736 (_1!5529 lt!308963))) (height!370 (c!128736 acc!372))))))

(assert (=> b!757550 d!248132))

(declare-fun d!248134 () Bool)

(assert (=> d!248134 (= (height!370 (++!2197 (c!128736 acc!372) (c!128736 (_1!5529 lt!308963)))) (ite ((_ is Empty!2846) (++!2197 (c!128736 acc!372) (c!128736 (_1!5529 lt!308963)))) 0 (ite ((_ is Leaf!4178) (++!2197 (c!128736 acc!372) (c!128736 (_1!5529 lt!308963)))) 1 (cheight!3057 (++!2197 (c!128736 acc!372) (c!128736 (_1!5529 lt!308963)))))))))

(assert (=> b!757550 d!248134))

(declare-fun lt!309024 () Conc!2846)

(declare-fun call!46316 () Conc!2846)

(declare-fun lt!309025 () Conc!2846)

(declare-fun c!128804 () Bool)

(declare-fun call!46306 () Conc!2846)

(declare-fun c!128803 () Bool)

(declare-fun c!128801 () Bool)

(declare-fun c!128797 () Bool)

(declare-fun bm!46299 () Bool)

(declare-fun c!128799 () Bool)

(declare-fun <>!58 (Conc!2846 Conc!2846) Conc!2846)

(assert (=> bm!46299 (= call!46306 (<>!58 (ite c!128799 (c!128736 acc!372) (ite c!128797 (ite c!128803 (left!6321 (c!128736 acc!372)) (ite c!128804 (left!6321 (right!6651 (c!128736 acc!372))) (left!6321 (c!128736 acc!372)))) (ite c!128801 lt!309024 (right!6651 (left!6321 (c!128736 (_1!5529 lt!308963))))))) (ite c!128799 (c!128736 (_1!5529 lt!308963)) (ite c!128797 (ite c!128803 call!46316 (ite c!128804 lt!309025 (left!6321 (right!6651 (c!128736 acc!372))))) (ite c!128801 (right!6651 (left!6321 (c!128736 (_1!5529 lt!308963)))) (right!6651 (c!128736 (_1!5529 lt!308963))))))))))

(declare-fun b!757873 () Bool)

(declare-fun e!486792 () Conc!2846)

(assert (=> b!757873 (= e!486792 (c!128736 acc!372))))

(declare-fun b!757874 () Bool)

(declare-fun e!486788 () Conc!2846)

(declare-fun call!46314 () Conc!2846)

(assert (=> b!757874 (= e!486788 call!46314)))

(declare-fun bm!46300 () Bool)

(declare-fun call!46308 () Conc!2846)

(declare-fun call!46315 () Conc!2846)

(assert (=> bm!46300 (= call!46308 call!46315)))

(declare-fun b!757875 () Bool)

(declare-fun e!486794 () Conc!2846)

(assert (=> b!757875 (= e!486794 call!46306)))

(declare-fun bm!46301 () Bool)

(declare-fun call!46307 () Conc!2846)

(assert (=> bm!46301 (= call!46315 call!46307)))

(declare-fun b!757876 () Bool)

(declare-fun e!486790 () Bool)

(assert (=> b!757876 (= e!486790 (isBalanced!760 (c!128736 (_1!5529 lt!308963))))))

(declare-fun b!757878 () Bool)

(declare-fun c!128798 () Bool)

(declare-fun call!46305 () Int)

(declare-fun call!46317 () Int)

(assert (=> b!757878 (= c!128798 (>= call!46305 call!46317))))

(declare-fun e!486795 () Conc!2846)

(declare-fun e!486791 () Conc!2846)

(assert (=> b!757878 (= e!486795 e!486791)))

(declare-fun bm!46302 () Bool)

(declare-fun call!46310 () Conc!2846)

(declare-fun call!46319 () Conc!2846)

(assert (=> bm!46302 (= call!46310 call!46319)))

(declare-fun b!757879 () Bool)

(assert (=> b!757879 (= e!486794 e!486795)))

(declare-fun lt!309023 () Int)

(assert (=> b!757879 (= c!128797 (< lt!309023 (- 1)))))

(declare-fun call!46309 () Int)

(declare-fun bm!46303 () Bool)

(assert (=> bm!46303 (= call!46309 (height!370 (ite c!128797 lt!309025 (c!128736 (_1!5529 lt!308963)))))))

(declare-fun bm!46304 () Bool)

(assert (=> bm!46304 (= call!46314 call!46307)))

(declare-fun b!757880 () Bool)

(declare-fun res!333854 () Bool)

(declare-fun e!486787 () Bool)

(assert (=> b!757880 (=> (not res!333854) (not e!486787))))

(declare-fun lt!309026 () Conc!2846)

(assert (=> b!757880 (= res!333854 (<= (height!370 lt!309026) (+ (max!0 (height!370 (c!128736 acc!372)) (height!370 (c!128736 (_1!5529 lt!308963)))) 1)))))

(declare-fun bm!46305 () Bool)

(declare-fun call!46304 () Conc!2846)

(declare-fun call!46311 () Conc!2846)

(assert (=> bm!46305 (= call!46304 call!46311)))

(declare-fun bm!46306 () Bool)

(assert (=> bm!46306 (= call!46316 call!46311)))

(declare-fun d!248136 () Bool)

(assert (=> d!248136 e!486787))

(declare-fun res!333850 () Bool)

(assert (=> d!248136 (=> (not res!333850) (not e!486787))))

(assert (=> d!248136 (= res!333850 (appendAssocInst!175 (c!128736 acc!372) (c!128736 (_1!5529 lt!308963))))))

(declare-fun e!486793 () Conc!2846)

(assert (=> d!248136 (= lt!309026 e!486793)))

(declare-fun c!128802 () Bool)

(assert (=> d!248136 (= c!128802 (= (c!128736 acc!372) Empty!2846))))

(assert (=> d!248136 e!486790))

(declare-fun res!333852 () Bool)

(assert (=> d!248136 (=> (not res!333852) (not e!486790))))

(assert (=> d!248136 (= res!333852 (isBalanced!760 (c!128736 acc!372)))))

(assert (=> d!248136 (= (++!2197 (c!128736 acc!372) (c!128736 (_1!5529 lt!308963))) lt!309026)))

(declare-fun b!757877 () Bool)

(declare-fun e!486786 () Conc!2846)

(assert (=> b!757877 (= e!486786 e!486788)))

(assert (=> b!757877 (= lt!309025 call!46316)))

(assert (=> b!757877 (= c!128804 (= call!46309 (- call!46305 3)))))

(declare-fun bm!46307 () Bool)

(declare-fun call!46318 () Conc!2846)

(assert (=> bm!46307 (= call!46318 call!46319)))

(declare-fun b!757881 () Bool)

(declare-fun res!333853 () Bool)

(assert (=> b!757881 (=> (not res!333853) (not e!486787))))

(assert (=> b!757881 (= res!333853 (isBalanced!760 lt!309026))))

(declare-fun bm!46308 () Bool)

(assert (=> bm!46308 (= call!46319 call!46306)))

(declare-fun bm!46309 () Bool)

(declare-fun call!46312 () Conc!2846)

(assert (=> bm!46309 (= call!46307 (<>!58 (ite c!128797 (ite c!128804 (left!6321 (c!128736 acc!372)) call!46312) (ite c!128798 call!46304 (ite c!128801 call!46318 lt!309024))) (ite c!128797 (ite c!128804 call!46312 lt!309025) (ite (or c!128798 c!128801) (right!6651 (c!128736 (_1!5529 lt!308963))) call!46318))))))

(declare-fun bm!46310 () Bool)

(declare-fun call!46313 () Int)

(assert (=> bm!46310 (= call!46313 (height!370 (ite c!128797 (left!6321 (c!128736 acc!372)) lt!309024)))))

(declare-fun b!757882 () Bool)

(declare-fun e!486789 () Conc!2846)

(assert (=> b!757882 (= e!486789 call!46308)))

(declare-fun b!757883 () Bool)

(assert (=> b!757883 (= e!486793 e!486792)))

(declare-fun c!128800 () Bool)

(assert (=> b!757883 (= c!128800 (= (c!128736 (_1!5529 lt!308963)) Empty!2846))))

(declare-fun b!757884 () Bool)

(assert (=> b!757884 (= c!128803 (>= call!46313 call!46317))))

(assert (=> b!757884 (= e!486795 e!486786)))

(declare-fun b!757885 () Bool)

(assert (=> b!757885 (= e!486793 (c!128736 (_1!5529 lt!308963)))))

(declare-fun b!757886 () Bool)

(assert (=> b!757886 (= e!486786 call!46310)))

(declare-fun bm!46311 () Bool)

(assert (=> bm!46311 (= call!46317 (height!370 (ite c!128797 (right!6651 (c!128736 acc!372)) (left!6321 (c!128736 (_1!5529 lt!308963))))))))

(declare-fun b!757887 () Bool)

(assert (=> b!757887 (= e!486787 (= (list!3388 lt!309026) (++!2198 (list!3388 (c!128736 acc!372)) (list!3388 (c!128736 (_1!5529 lt!308963))))))))

(declare-fun b!757888 () Bool)

(assert (=> b!757888 (= c!128799 (and (<= (- 1) lt!309023) (<= lt!309023 1)))))

(assert (=> b!757888 (= lt!309023 (- (height!370 (c!128736 (_1!5529 lt!308963))) (height!370 (c!128736 acc!372))))))

(assert (=> b!757888 (= e!486792 e!486794)))

(declare-fun b!757889 () Bool)

(assert (=> b!757889 (= e!486791 call!46315)))

(declare-fun b!757890 () Bool)

(assert (=> b!757890 (= e!486791 e!486789)))

(assert (=> b!757890 (= lt!309024 call!46304)))

(assert (=> b!757890 (= c!128801 (= call!46313 (- call!46309 3)))))

(declare-fun b!757891 () Bool)

(declare-fun res!333851 () Bool)

(assert (=> b!757891 (=> (not res!333851) (not e!486787))))

(assert (=> b!757891 (= res!333851 (>= (height!370 lt!309026) (max!0 (height!370 (c!128736 acc!372)) (height!370 (c!128736 (_1!5529 lt!308963))))))))

(declare-fun bm!46312 () Bool)

(assert (=> bm!46312 (= call!46305 (height!370 (ite c!128797 (c!128736 acc!372) (right!6651 (c!128736 (_1!5529 lt!308963))))))))

(declare-fun b!757892 () Bool)

(assert (=> b!757892 (= e!486789 call!46308)))

(declare-fun bm!46313 () Bool)

(assert (=> bm!46313 (= call!46311 (++!2197 (ite c!128797 (ite c!128803 (right!6651 (c!128736 acc!372)) (right!6651 (right!6651 (c!128736 acc!372)))) (c!128736 acc!372)) (ite c!128797 (c!128736 (_1!5529 lt!308963)) (ite c!128798 (left!6321 (c!128736 (_1!5529 lt!308963))) (left!6321 (left!6321 (c!128736 (_1!5529 lt!308963))))))))))

(declare-fun b!757893 () Bool)

(assert (=> b!757893 (= e!486788 call!46314)))

(declare-fun bm!46314 () Bool)

(assert (=> bm!46314 (= call!46312 call!46310)))

(assert (= (and d!248136 res!333852) b!757876))

(assert (= (and d!248136 c!128802) b!757885))

(assert (= (and d!248136 (not c!128802)) b!757883))

(assert (= (and b!757883 c!128800) b!757873))

(assert (= (and b!757883 (not c!128800)) b!757888))

(assert (= (and b!757888 c!128799) b!757875))

(assert (= (and b!757888 (not c!128799)) b!757879))

(assert (= (and b!757879 c!128797) b!757884))

(assert (= (and b!757879 (not c!128797)) b!757878))

(assert (= (and b!757884 c!128803) b!757886))

(assert (= (and b!757884 (not c!128803)) b!757877))

(assert (= (and b!757877 c!128804) b!757893))

(assert (= (and b!757877 (not c!128804)) b!757874))

(assert (= (or b!757893 b!757874) bm!46314))

(assert (= (or b!757893 b!757874) bm!46304))

(assert (= (or b!757886 b!757877) bm!46306))

(assert (= (or b!757886 bm!46314) bm!46302))

(assert (= (and b!757878 c!128798) b!757889))

(assert (= (and b!757878 (not c!128798)) b!757890))

(assert (= (and b!757890 c!128801) b!757882))

(assert (= (and b!757890 (not c!128801)) b!757892))

(assert (= (or b!757882 b!757892) bm!46307))

(assert (= (or b!757882 b!757892) bm!46300))

(assert (= (or b!757889 b!757890) bm!46305))

(assert (= (or b!757889 bm!46300) bm!46301))

(assert (= (or bm!46304 bm!46301) bm!46309))

(assert (= (or b!757877 b!757890) bm!46303))

(assert (= (or b!757877 b!757878) bm!46312))

(assert (= (or b!757884 b!757878) bm!46311))

(assert (= (or bm!46306 bm!46305) bm!46313))

(assert (= (or b!757884 b!757890) bm!46310))

(assert (= (or bm!46302 bm!46307) bm!46308))

(assert (= (or b!757875 bm!46308) bm!46299))

(assert (= (and d!248136 res!333850) b!757881))

(assert (= (and b!757881 res!333853) b!757880))

(assert (= (and b!757880 res!333854) b!757891))

(assert (= (and b!757891 res!333851) b!757887))

(declare-fun m!1024126 () Bool)

(assert (=> bm!46313 m!1024126))

(declare-fun m!1024128 () Bool)

(assert (=> bm!46311 m!1024128))

(declare-fun m!1024130 () Bool)

(assert (=> bm!46299 m!1024130))

(declare-fun m!1024132 () Bool)

(assert (=> b!757880 m!1024132))

(assert (=> b!757880 m!1023846))

(assert (=> b!757880 m!1023844))

(assert (=> b!757880 m!1023846))

(assert (=> b!757880 m!1023844))

(assert (=> b!757880 m!1023850))

(declare-fun m!1024134 () Bool)

(assert (=> bm!46312 m!1024134))

(assert (=> b!757891 m!1024132))

(assert (=> b!757891 m!1023846))

(assert (=> b!757891 m!1023844))

(assert (=> b!757891 m!1023846))

(assert (=> b!757891 m!1023844))

(assert (=> b!757891 m!1023850))

(declare-fun m!1024136 () Bool)

(assert (=> b!757887 m!1024136))

(assert (=> b!757887 m!1023880))

(declare-fun m!1024138 () Bool)

(assert (=> b!757887 m!1024138))

(assert (=> b!757887 m!1023880))

(assert (=> b!757887 m!1024138))

(declare-fun m!1024140 () Bool)

(assert (=> b!757887 m!1024140))

(assert (=> b!757888 m!1023844))

(assert (=> b!757888 m!1023846))

(declare-fun m!1024142 () Bool)

(assert (=> b!757876 m!1024142))

(declare-fun m!1024144 () Bool)

(assert (=> b!757881 m!1024144))

(declare-fun m!1024146 () Bool)

(assert (=> bm!46309 m!1024146))

(declare-fun m!1024148 () Bool)

(assert (=> bm!46310 m!1024148))

(assert (=> d!248136 m!1023840))

(assert (=> d!248136 m!1023856))

(declare-fun m!1024150 () Bool)

(assert (=> bm!46303 m!1024150))

(assert (=> b!757550 d!248136))

(declare-fun d!248138 () Bool)

(assert (=> d!248138 (= (height!370 (c!128736 (_1!5529 lt!308963))) (ite ((_ is Empty!2846) (c!128736 (_1!5529 lt!308963))) 0 (ite ((_ is Leaf!4178) (c!128736 (_1!5529 lt!308963))) 1 (cheight!3057 (c!128736 (_1!5529 lt!308963))))))))

(assert (=> b!757550 d!248138))

(declare-fun d!248140 () Bool)

(declare-fun lt!309027 () Int)

(assert (=> d!248140 (= lt!309027 (size!6822 (list!3387 (_2!5529 lt!308984))))))

(assert (=> d!248140 (= lt!309027 (size!6823 (c!128735 (_2!5529 lt!308984))))))

(assert (=> d!248140 (= (size!6820 (_2!5529 lt!308984)) lt!309027)))

(declare-fun bs!161172 () Bool)

(assert (= bs!161172 d!248140))

(assert (=> bs!161172 m!1023896))

(assert (=> bs!161172 m!1023896))

(declare-fun m!1024152 () Bool)

(assert (=> bs!161172 m!1024152))

(declare-fun m!1024154 () Bool)

(assert (=> bs!161172 m!1024154))

(assert (=> b!757575 d!248140))

(declare-fun d!248142 () Bool)

(declare-fun lt!309028 () Int)

(assert (=> d!248142 (= lt!309028 (size!6822 (list!3387 treated!50)))))

(assert (=> d!248142 (= lt!309028 (size!6823 (c!128735 treated!50)))))

(assert (=> d!248142 (= (size!6820 treated!50) lt!309028)))

(declare-fun bs!161173 () Bool)

(assert (= bs!161173 d!248142))

(assert (=> bs!161173 m!1023754))

(assert (=> bs!161173 m!1023754))

(assert (=> bs!161173 m!1023924))

(declare-fun m!1024156 () Bool)

(assert (=> bs!161173 m!1024156))

(assert (=> b!757575 d!248142))

(declare-fun b!757897 () Bool)

(declare-fun e!486797 () List!8388)

(assert (=> b!757897 (= e!486797 (++!2196 (list!3389 (left!6320 (c!128735 (_2!5529 lt!308965)))) (list!3389 (right!6650 (c!128735 (_2!5529 lt!308965))))))))

(declare-fun b!757896 () Bool)

(assert (=> b!757896 (= e!486797 (list!3390 (xs!5524 (c!128735 (_2!5529 lt!308965)))))))

(declare-fun d!248144 () Bool)

(declare-fun c!128805 () Bool)

(assert (=> d!248144 (= c!128805 ((_ is Empty!2845) (c!128735 (_2!5529 lt!308965))))))

(declare-fun e!486796 () List!8388)

(assert (=> d!248144 (= (list!3389 (c!128735 (_2!5529 lt!308965))) e!486796)))

(declare-fun b!757894 () Bool)

(assert (=> b!757894 (= e!486796 Nil!8374)))

(declare-fun b!757895 () Bool)

(assert (=> b!757895 (= e!486796 e!486797)))

(declare-fun c!128806 () Bool)

(assert (=> b!757895 (= c!128806 ((_ is Leaf!4177) (c!128735 (_2!5529 lt!308965))))))

(assert (= (and d!248144 c!128805) b!757894))

(assert (= (and d!248144 (not c!128805)) b!757895))

(assert (= (and b!757895 c!128806) b!757896))

(assert (= (and b!757895 (not c!128806)) b!757897))

(declare-fun m!1024158 () Bool)

(assert (=> b!757897 m!1024158))

(declare-fun m!1024160 () Bool)

(assert (=> b!757897 m!1024160))

(assert (=> b!757897 m!1024158))

(assert (=> b!757897 m!1024160))

(declare-fun m!1024162 () Bool)

(assert (=> b!757897 m!1024162))

(declare-fun m!1024164 () Bool)

(assert (=> b!757896 m!1024164))

(assert (=> d!248074 d!248144))

(declare-fun d!248146 () Bool)

(declare-fun res!333861 () Bool)

(declare-fun e!486800 () Bool)

(assert (=> d!248146 (=> (not res!333861) (not e!486800))))

(assert (=> d!248146 (= res!333861 (= (csize!5920 (c!128735 totalInput!378)) (+ (size!6823 (left!6320 (c!128735 totalInput!378))) (size!6823 (right!6650 (c!128735 totalInput!378))))))))

(assert (=> d!248146 (= (inv!10654 (c!128735 totalInput!378)) e!486800)))

(declare-fun b!757904 () Bool)

(declare-fun res!333862 () Bool)

(assert (=> b!757904 (=> (not res!333862) (not e!486800))))

(assert (=> b!757904 (= res!333862 (and (not (= (left!6320 (c!128735 totalInput!378)) Empty!2845)) (not (= (right!6650 (c!128735 totalInput!378)) Empty!2845))))))

(declare-fun b!757905 () Bool)

(declare-fun res!333863 () Bool)

(assert (=> b!757905 (=> (not res!333863) (not e!486800))))

(assert (=> b!757905 (= res!333863 (= (cheight!3056 (c!128735 totalInput!378)) (+ (max!0 (height!371 (left!6320 (c!128735 totalInput!378))) (height!371 (right!6650 (c!128735 totalInput!378)))) 1)))))

(declare-fun b!757906 () Bool)

(assert (=> b!757906 (= e!486800 (<= 0 (cheight!3056 (c!128735 totalInput!378))))))

(assert (= (and d!248146 res!333861) b!757904))

(assert (= (and b!757904 res!333862) b!757905))

(assert (= (and b!757905 res!333863) b!757906))

(declare-fun m!1024166 () Bool)

(assert (=> d!248146 m!1024166))

(declare-fun m!1024168 () Bool)

(assert (=> d!248146 m!1024168))

(declare-fun m!1024170 () Bool)

(assert (=> b!757905 m!1024170))

(declare-fun m!1024172 () Bool)

(assert (=> b!757905 m!1024172))

(assert (=> b!757905 m!1024170))

(assert (=> b!757905 m!1024172))

(declare-fun m!1024174 () Bool)

(assert (=> b!757905 m!1024174))

(assert (=> b!757580 d!248146))

(declare-fun bs!161174 () Bool)

(declare-fun d!248148 () Bool)

(assert (= bs!161174 (and d!248148 d!248102)))

(declare-fun lambda!22991 () Int)

(assert (=> bs!161174 (= lambda!22991 lambda!22984)))

(declare-fun bs!161175 () Bool)

(assert (= bs!161175 (and d!248148 d!248106)))

(assert (=> bs!161175 (= lambda!22991 lambda!22985)))

(declare-fun bs!161176 () Bool)

(assert (= bs!161176 (and d!248148 d!248122)))

(assert (=> bs!161176 (= lambda!22991 lambda!22986)))

(declare-fun bs!161177 () Bool)

(assert (= bs!161177 (and d!248148 d!248128)))

(assert (=> bs!161177 (= lambda!22991 lambda!22990)))

(assert (=> d!248148 (= (inv!10657 setElem!6417) (forall!2027 (exprs!859 setElem!6417) lambda!22991))))

(declare-fun bs!161178 () Bool)

(assert (= bs!161178 d!248148))

(declare-fun m!1024176 () Bool)

(assert (=> bs!161178 m!1024176))

(assert (=> setNonEmpty!6417 d!248148))

(declare-fun b!757916 () Bool)

(declare-fun e!486805 () List!8389)

(declare-fun e!486806 () List!8389)

(assert (=> b!757916 (= e!486805 e!486806)))

(declare-fun c!128812 () Bool)

(assert (=> b!757916 (= c!128812 ((_ is Leaf!4178) (c!128736 (_1!5529 lt!308961))))))

(declare-fun b!757917 () Bool)

(declare-fun list!3391 (IArray!5693) List!8389)

(assert (=> b!757917 (= e!486806 (list!3391 (xs!5525 (c!128736 (_1!5529 lt!308961)))))))

(declare-fun d!248150 () Bool)

(declare-fun c!128811 () Bool)

(assert (=> d!248150 (= c!128811 ((_ is Empty!2846) (c!128736 (_1!5529 lt!308961))))))

(assert (=> d!248150 (= (list!3388 (c!128736 (_1!5529 lt!308961))) e!486805)))

(declare-fun b!757918 () Bool)

(assert (=> b!757918 (= e!486806 (++!2198 (list!3388 (left!6321 (c!128736 (_1!5529 lt!308961)))) (list!3388 (right!6651 (c!128736 (_1!5529 lt!308961))))))))

(declare-fun b!757915 () Bool)

(assert (=> b!757915 (= e!486805 Nil!8375)))

(assert (= (and d!248150 c!128811) b!757915))

(assert (= (and d!248150 (not c!128811)) b!757916))

(assert (= (and b!757916 c!128812) b!757917))

(assert (= (and b!757916 (not c!128812)) b!757918))

(declare-fun m!1024178 () Bool)

(assert (=> b!757917 m!1024178))

(declare-fun m!1024180 () Bool)

(assert (=> b!757918 m!1024180))

(declare-fun m!1024182 () Bool)

(assert (=> b!757918 m!1024182))

(assert (=> b!757918 m!1024180))

(assert (=> b!757918 m!1024182))

(declare-fun m!1024184 () Bool)

(assert (=> b!757918 m!1024184))

(assert (=> d!248060 d!248150))

(declare-fun d!248152 () Bool)

(declare-fun res!333868 () Bool)

(declare-fun e!486809 () Bool)

(assert (=> d!248152 (=> (not res!333868) (not e!486809))))

(declare-fun valid!893 (MutableMap!1070) Bool)

(assert (=> d!248152 (= res!333868 (valid!893 (cache!1457 cacheUp!502)))))

(assert (=> d!248152 (= (validCacheMapUp!93 (cache!1457 cacheUp!502)) e!486809)))

(declare-fun b!757923 () Bool)

(declare-fun res!333869 () Bool)

(assert (=> b!757923 (=> (not res!333869) (not e!486809))))

(declare-fun invariantList!174 (List!8386) Bool)

(declare-datatypes ((ListMap!397 0))(
  ( (ListMap!398 (toList!539 List!8386)) )
))
(declare-fun map!1751 (MutableMap!1070) ListMap!397)

(assert (=> b!757923 (= res!333869 (invariantList!174 (toList!539 (map!1751 (cache!1457 cacheUp!502)))))))

(declare-fun b!757924 () Bool)

(declare-fun lambda!22994 () Int)

(declare-fun forall!2029 (List!8386 Int) Bool)

(assert (=> b!757924 (= e!486809 (forall!2029 (toList!539 (map!1751 (cache!1457 cacheUp!502))) lambda!22994))))

(assert (= (and d!248152 res!333868) b!757923))

(assert (= (and b!757923 res!333869) b!757924))

(declare-fun m!1024187 () Bool)

(assert (=> d!248152 m!1024187))

(declare-fun m!1024189 () Bool)

(assert (=> b!757923 m!1024189))

(declare-fun m!1024191 () Bool)

(assert (=> b!757923 m!1024191))

(assert (=> b!757924 m!1024189))

(declare-fun m!1024193 () Bool)

(assert (=> b!757924 m!1024193))

(assert (=> d!248100 d!248152))

(declare-fun d!248154 () Bool)

(assert (=> d!248154 (= (list!3386 (_1!5529 lt!308975)) (list!3388 (c!128736 (_1!5529 lt!308975))))))

(declare-fun bs!161179 () Bool)

(assert (= bs!161179 d!248154))

(declare-fun m!1024195 () Bool)

(assert (=> bs!161179 m!1024195))

(assert (=> b!757529 d!248154))

(declare-fun b!757925 () Bool)

(declare-fun e!486812 () tuple2!9638)

(declare-fun lt!309029 () Option!1851)

(declare-fun lt!309030 () tuple2!9638)

(assert (=> b!757925 (= e!486812 (tuple2!9639 (Cons!8375 (_1!5534 (v!18517 lt!309029)) (_1!5533 lt!309030)) (_2!5533 lt!309030)))))

(assert (=> b!757925 (= lt!309030 (lexList!368 thiss!12529 rules!1486 (_2!5534 (v!18517 lt!309029))))))

(declare-fun b!757926 () Bool)

(declare-fun e!486810 () Bool)

(declare-fun lt!309031 () tuple2!9638)

(assert (=> b!757926 (= e!486810 (not (isEmpty!5158 (_1!5533 lt!309031))))))

(declare-fun d!248156 () Bool)

(declare-fun e!486811 () Bool)

(assert (=> d!248156 e!486811))

(declare-fun c!128813 () Bool)

(assert (=> d!248156 (= c!128813 (> (size!6824 (_1!5533 lt!309031)) 0))))

(assert (=> d!248156 (= lt!309031 e!486812)))

(declare-fun c!128814 () Bool)

(assert (=> d!248156 (= c!128814 ((_ is Some!1850) lt!309029))))

(assert (=> d!248156 (= lt!309029 (maxPrefix!910 thiss!12529 rules!1486 (list!3387 input!870)))))

(assert (=> d!248156 (= (lexList!368 thiss!12529 rules!1486 (list!3387 input!870)) lt!309031)))

(declare-fun b!757927 () Bool)

(assert (=> b!757927 (= e!486811 e!486810)))

(declare-fun res!333870 () Bool)

(assert (=> b!757927 (= res!333870 (< (size!6822 (_2!5533 lt!309031)) (size!6822 (list!3387 input!870))))))

(assert (=> b!757927 (=> (not res!333870) (not e!486810))))

(declare-fun b!757928 () Bool)

(assert (=> b!757928 (= e!486812 (tuple2!9639 Nil!8375 (list!3387 input!870)))))

(declare-fun b!757929 () Bool)

(assert (=> b!757929 (= e!486811 (= (_2!5533 lt!309031) (list!3387 input!870)))))

(assert (= (and d!248156 c!128814) b!757925))

(assert (= (and d!248156 (not c!128814)) b!757928))

(assert (= (and d!248156 c!128813) b!757927))

(assert (= (and d!248156 (not c!128813)) b!757929))

(assert (= (and b!757927 res!333870) b!757926))

(declare-fun m!1024197 () Bool)

(assert (=> b!757925 m!1024197))

(declare-fun m!1024199 () Bool)

(assert (=> b!757926 m!1024199))

(declare-fun m!1024201 () Bool)

(assert (=> d!248156 m!1024201))

(assert (=> d!248156 m!1023756))

(declare-fun m!1024203 () Bool)

(assert (=> d!248156 m!1024203))

(declare-fun m!1024205 () Bool)

(assert (=> b!757927 m!1024205))

(assert (=> b!757927 m!1023756))

(assert (=> b!757927 m!1023926))

(assert (=> b!757529 d!248156))

(assert (=> b!757529 d!248092))

(declare-fun d!248158 () Bool)

(assert (=> d!248158 (= (inv!10658 (xs!5524 (c!128735 input!870))) (<= (size!6822 (innerList!2903 (xs!5524 (c!128735 input!870)))) 2147483647))))

(declare-fun bs!161180 () Bool)

(assert (= bs!161180 d!248158))

(declare-fun m!1024207 () Bool)

(assert (=> bs!161180 m!1024207))

(assert (=> b!757661 d!248158))

(declare-fun d!248160 () Bool)

(declare-fun res!333875 () Bool)

(declare-fun e!486817 () Bool)

(assert (=> d!248160 (=> res!333875 e!486817)))

(assert (=> d!248160 (= res!333875 ((_ is Nil!8376) rules!1486))))

(assert (=> d!248160 (= (noDuplicateTag!560 thiss!12529 rules!1486 Nil!8378) e!486817)))

(declare-fun b!757934 () Bool)

(declare-fun e!486818 () Bool)

(assert (=> b!757934 (= e!486817 e!486818)))

(declare-fun res!333876 () Bool)

(assert (=> b!757934 (=> (not res!333876) (not e!486818))))

(declare-fun contains!1600 (List!8392 String!10012) Bool)

(assert (=> b!757934 (= res!333876 (not (contains!1600 Nil!8378 (tag!1872 (h!13777 rules!1486)))))))

(declare-fun b!757935 () Bool)

(assert (=> b!757935 (= e!486818 (noDuplicateTag!560 thiss!12529 (t!91120 rules!1486) (Cons!8378 (tag!1872 (h!13777 rules!1486)) Nil!8378)))))

(assert (= (and d!248160 (not res!333875)) b!757934))

(assert (= (and b!757934 res!333876) b!757935))

(declare-fun m!1024209 () Bool)

(assert (=> b!757934 m!1024209))

(declare-fun m!1024211 () Bool)

(assert (=> b!757935 m!1024211))

(assert (=> b!757588 d!248160))

(declare-fun d!248162 () Bool)

(assert (=> d!248162 (= (inv!10658 (xs!5524 (c!128735 totalInput!378))) (<= (size!6822 (innerList!2903 (xs!5524 (c!128735 totalInput!378)))) 2147483647))))

(declare-fun bs!161181 () Bool)

(assert (= bs!161181 d!248162))

(declare-fun m!1024213 () Bool)

(assert (=> bs!161181 m!1024213))

(assert (=> b!757725 d!248162))

(declare-fun b!757948 () Bool)

(declare-fun e!486823 () Bool)

(declare-fun e!486824 () Bool)

(assert (=> b!757948 (= e!486823 e!486824)))

(declare-fun res!333889 () Bool)

(assert (=> b!757948 (=> (not res!333889) (not e!486824))))

(assert (=> b!757948 (= res!333889 (<= (- 1) (- (height!370 (left!6321 (c!128736 acc!372))) (height!370 (right!6651 (c!128736 acc!372))))))))

(declare-fun d!248164 () Bool)

(declare-fun res!333891 () Bool)

(assert (=> d!248164 (=> res!333891 e!486823)))

(assert (=> d!248164 (= res!333891 (not ((_ is Node!2846) (c!128736 acc!372))))))

(assert (=> d!248164 (= (isBalanced!760 (c!128736 acc!372)) e!486823)))

(declare-fun b!757949 () Bool)

(declare-fun res!333894 () Bool)

(assert (=> b!757949 (=> (not res!333894) (not e!486824))))

(declare-fun isEmpty!5160 (Conc!2846) Bool)

(assert (=> b!757949 (= res!333894 (not (isEmpty!5160 (left!6321 (c!128736 acc!372)))))))

(declare-fun b!757950 () Bool)

(declare-fun res!333892 () Bool)

(assert (=> b!757950 (=> (not res!333892) (not e!486824))))

(assert (=> b!757950 (= res!333892 (isBalanced!760 (left!6321 (c!128736 acc!372))))))

(declare-fun b!757951 () Bool)

(declare-fun res!333890 () Bool)

(assert (=> b!757951 (=> (not res!333890) (not e!486824))))

(assert (=> b!757951 (= res!333890 (<= (- (height!370 (left!6321 (c!128736 acc!372))) (height!370 (right!6651 (c!128736 acc!372)))) 1))))

(declare-fun b!757952 () Bool)

(declare-fun res!333893 () Bool)

(assert (=> b!757952 (=> (not res!333893) (not e!486824))))

(assert (=> b!757952 (= res!333893 (isBalanced!760 (right!6651 (c!128736 acc!372))))))

(declare-fun b!757953 () Bool)

(assert (=> b!757953 (= e!486824 (not (isEmpty!5160 (right!6651 (c!128736 acc!372)))))))

(assert (= (and d!248164 (not res!333891)) b!757948))

(assert (= (and b!757948 res!333889) b!757951))

(assert (= (and b!757951 res!333890) b!757950))

(assert (= (and b!757950 res!333892) b!757952))

(assert (= (and b!757952 res!333893) b!757949))

(assert (= (and b!757949 res!333894) b!757953))

(declare-fun m!1024215 () Bool)

(assert (=> b!757948 m!1024215))

(declare-fun m!1024217 () Bool)

(assert (=> b!757948 m!1024217))

(declare-fun m!1024219 () Bool)

(assert (=> b!757952 m!1024219))

(declare-fun m!1024221 () Bool)

(assert (=> b!757953 m!1024221))

(declare-fun m!1024223 () Bool)

(assert (=> b!757950 m!1024223))

(declare-fun m!1024225 () Bool)

(assert (=> b!757949 m!1024225))

(assert (=> b!757951 m!1024215))

(assert (=> b!757951 m!1024217))

(assert (=> d!248038 d!248164))

(declare-fun bs!161182 () Bool)

(declare-fun d!248166 () Bool)

(assert (= bs!161182 (and d!248166 d!248122)))

(declare-fun lambda!22995 () Int)

(assert (=> bs!161182 (= lambda!22995 lambda!22986)))

(declare-fun bs!161183 () Bool)

(assert (= bs!161183 (and d!248166 d!248102)))

(assert (=> bs!161183 (= lambda!22995 lambda!22984)))

(declare-fun bs!161184 () Bool)

(assert (= bs!161184 (and d!248166 d!248128)))

(assert (=> bs!161184 (= lambda!22995 lambda!22990)))

(declare-fun bs!161185 () Bool)

(assert (= bs!161185 (and d!248166 d!248148)))

(assert (=> bs!161185 (= lambda!22995 lambda!22991)))

(declare-fun bs!161186 () Bool)

(assert (= bs!161186 (and d!248166 d!248106)))

(assert (=> bs!161186 (= lambda!22995 lambda!22985)))

(assert (=> d!248166 (= (inv!10657 (_2!5525 (_1!5526 (h!13772 mapDefault!5326)))) (forall!2027 (exprs!859 (_2!5525 (_1!5526 (h!13772 mapDefault!5326)))) lambda!22995))))

(declare-fun bs!161187 () Bool)

(assert (= bs!161187 d!248166))

(declare-fun m!1024227 () Bool)

(assert (=> bs!161187 m!1024227))

(assert (=> b!757647 d!248166))

(declare-fun d!248168 () Bool)

(declare-fun res!333895 () Bool)

(declare-fun e!486825 () Bool)

(assert (=> d!248168 (=> (not res!333895) (not e!486825))))

(assert (=> d!248168 (= res!333895 (= (csize!5920 (c!128735 treated!50)) (+ (size!6823 (left!6320 (c!128735 treated!50))) (size!6823 (right!6650 (c!128735 treated!50))))))))

(assert (=> d!248168 (= (inv!10654 (c!128735 treated!50)) e!486825)))

(declare-fun b!757954 () Bool)

(declare-fun res!333896 () Bool)

(assert (=> b!757954 (=> (not res!333896) (not e!486825))))

(assert (=> b!757954 (= res!333896 (and (not (= (left!6320 (c!128735 treated!50)) Empty!2845)) (not (= (right!6650 (c!128735 treated!50)) Empty!2845))))))

(declare-fun b!757955 () Bool)

(declare-fun res!333897 () Bool)

(assert (=> b!757955 (=> (not res!333897) (not e!486825))))

(assert (=> b!757955 (= res!333897 (= (cheight!3056 (c!128735 treated!50)) (+ (max!0 (height!371 (left!6320 (c!128735 treated!50))) (height!371 (right!6650 (c!128735 treated!50)))) 1)))))

(declare-fun b!757956 () Bool)

(assert (=> b!757956 (= e!486825 (<= 0 (cheight!3056 (c!128735 treated!50))))))

(assert (= (and d!248168 res!333895) b!757954))

(assert (= (and b!757954 res!333896) b!757955))

(assert (= (and b!757955 res!333897) b!757956))

(declare-fun m!1024229 () Bool)

(assert (=> d!248168 m!1024229))

(declare-fun m!1024231 () Bool)

(assert (=> d!248168 m!1024231))

(declare-fun m!1024233 () Bool)

(assert (=> b!757955 m!1024233))

(declare-fun m!1024235 () Bool)

(assert (=> b!757955 m!1024235))

(assert (=> b!757955 m!1024233))

(assert (=> b!757955 m!1024235))

(declare-fun m!1024237 () Bool)

(assert (=> b!757955 m!1024237))

(assert (=> b!757583 d!248168))

(declare-fun bs!161188 () Bool)

(declare-fun d!248170 () Bool)

(assert (= bs!161188 (and d!248170 d!248122)))

(declare-fun lambda!22996 () Int)

(assert (=> bs!161188 (= lambda!22996 lambda!22986)))

(declare-fun bs!161189 () Bool)

(assert (= bs!161189 (and d!248170 d!248166)))

(assert (=> bs!161189 (= lambda!22996 lambda!22995)))

(declare-fun bs!161190 () Bool)

(assert (= bs!161190 (and d!248170 d!248102)))

(assert (=> bs!161190 (= lambda!22996 lambda!22984)))

(declare-fun bs!161191 () Bool)

(assert (= bs!161191 (and d!248170 d!248128)))

(assert (=> bs!161191 (= lambda!22996 lambda!22990)))

(declare-fun bs!161192 () Bool)

(assert (= bs!161192 (and d!248170 d!248148)))

(assert (=> bs!161192 (= lambda!22996 lambda!22991)))

(declare-fun bs!161193 () Bool)

(assert (= bs!161193 (and d!248170 d!248106)))

(assert (=> bs!161193 (= lambda!22996 lambda!22985)))

(assert (=> d!248170 (= (inv!10657 (_1!5527 (_1!5528 (h!13773 mapDefault!5322)))) (forall!2027 (exprs!859 (_1!5527 (_1!5528 (h!13773 mapDefault!5322)))) lambda!22996))))

(declare-fun bs!161194 () Bool)

(assert (= bs!161194 d!248170))

(declare-fun m!1024239 () Bool)

(assert (=> bs!161194 m!1024239))

(assert (=> b!757750 d!248170))

(declare-fun d!248172 () Bool)

(assert (=> d!248172 (= (inv!10643 (tag!1872 (h!13777 (t!91120 rules!1486)))) (= (mod (str.len (value!51560 (tag!1872 (h!13777 (t!91120 rules!1486))))) 2) 0))))

(assert (=> b!757675 d!248172))

(declare-fun d!248174 () Bool)

(declare-fun res!333898 () Bool)

(declare-fun e!486826 () Bool)

(assert (=> d!248174 (=> (not res!333898) (not e!486826))))

(assert (=> d!248174 (= res!333898 (semiInverseModEq!603 (toChars!2455 (transformation!1610 (h!13777 (t!91120 rules!1486)))) (toValue!2596 (transformation!1610 (h!13777 (t!91120 rules!1486))))))))

(assert (=> d!248174 (= (inv!10645 (transformation!1610 (h!13777 (t!91120 rules!1486)))) e!486826)))

(declare-fun b!757957 () Bool)

(assert (=> b!757957 (= e!486826 (equivClasses!578 (toChars!2455 (transformation!1610 (h!13777 (t!91120 rules!1486)))) (toValue!2596 (transformation!1610 (h!13777 (t!91120 rules!1486))))))))

(assert (= (and d!248174 res!333898) b!757957))

(declare-fun m!1024241 () Bool)

(assert (=> d!248174 m!1024241))

(declare-fun m!1024243 () Bool)

(assert (=> b!757957 m!1024243))

(assert (=> b!757675 d!248174))

(assert (=> b!757480 d!248070))

(declare-fun bs!161195 () Bool)

(declare-fun d!248176 () Bool)

(assert (= bs!161195 (and d!248176 d!248122)))

(declare-fun lambda!22997 () Int)

(assert (=> bs!161195 (= lambda!22997 lambda!22986)))

(declare-fun bs!161196 () Bool)

(assert (= bs!161196 (and d!248176 d!248166)))

(assert (=> bs!161196 (= lambda!22997 lambda!22995)))

(declare-fun bs!161197 () Bool)

(assert (= bs!161197 (and d!248176 d!248102)))

(assert (=> bs!161197 (= lambda!22997 lambda!22984)))

(declare-fun bs!161198 () Bool)

(assert (= bs!161198 (and d!248176 d!248148)))

(assert (=> bs!161198 (= lambda!22997 lambda!22991)))

(declare-fun bs!161199 () Bool)

(assert (= bs!161199 (and d!248176 d!248106)))

(assert (=> bs!161199 (= lambda!22997 lambda!22985)))

(declare-fun bs!161200 () Bool)

(assert (= bs!161200 (and d!248176 d!248170)))

(assert (=> bs!161200 (= lambda!22997 lambda!22996)))

(declare-fun bs!161201 () Bool)

(assert (= bs!161201 (and d!248176 d!248128)))

(assert (=> bs!161201 (= lambda!22997 lambda!22990)))

(assert (=> d!248176 (= (inv!10657 setElem!6421) (forall!2027 (exprs!859 setElem!6421) lambda!22997))))

(declare-fun bs!161202 () Bool)

(assert (= bs!161202 d!248176))

(declare-fun m!1024245 () Bool)

(assert (=> bs!161202 m!1024245))

(assert (=> setNonEmpty!6421 d!248176))

(declare-fun bs!161203 () Bool)

(declare-fun d!248178 () Bool)

(assert (= bs!161203 (and d!248178 d!248176)))

(declare-fun lambda!22998 () Int)

(assert (=> bs!161203 (= lambda!22998 lambda!22997)))

(declare-fun bs!161204 () Bool)

(assert (= bs!161204 (and d!248178 d!248122)))

(assert (=> bs!161204 (= lambda!22998 lambda!22986)))

(declare-fun bs!161205 () Bool)

(assert (= bs!161205 (and d!248178 d!248166)))

(assert (=> bs!161205 (= lambda!22998 lambda!22995)))

(declare-fun bs!161206 () Bool)

(assert (= bs!161206 (and d!248178 d!248102)))

(assert (=> bs!161206 (= lambda!22998 lambda!22984)))

(declare-fun bs!161207 () Bool)

(assert (= bs!161207 (and d!248178 d!248148)))

(assert (=> bs!161207 (= lambda!22998 lambda!22991)))

(declare-fun bs!161208 () Bool)

(assert (= bs!161208 (and d!248178 d!248106)))

(assert (=> bs!161208 (= lambda!22998 lambda!22985)))

(declare-fun bs!161209 () Bool)

(assert (= bs!161209 (and d!248178 d!248170)))

(assert (=> bs!161209 (= lambda!22998 lambda!22996)))

(declare-fun bs!161210 () Bool)

(assert (= bs!161210 (and d!248178 d!248128)))

(assert (=> bs!161210 (= lambda!22998 lambda!22990)))

(assert (=> d!248178 (= (inv!10657 setElem!6423) (forall!2027 (exprs!859 setElem!6423) lambda!22998))))

(declare-fun bs!161211 () Bool)

(assert (= bs!161211 d!248178))

(declare-fun m!1024247 () Bool)

(assert (=> bs!161211 m!1024247))

(assert (=> setNonEmpty!6423 d!248178))

(declare-fun d!248180 () Bool)

(declare-fun res!333899 () Bool)

(declare-fun e!486827 () Bool)

(assert (=> d!248180 (=> (not res!333899) (not e!486827))))

(assert (=> d!248180 (= res!333899 (= (csize!5920 (c!128735 input!870)) (+ (size!6823 (left!6320 (c!128735 input!870))) (size!6823 (right!6650 (c!128735 input!870))))))))

(assert (=> d!248180 (= (inv!10654 (c!128735 input!870)) e!486827)))

(declare-fun b!757958 () Bool)

(declare-fun res!333900 () Bool)

(assert (=> b!757958 (=> (not res!333900) (not e!486827))))

(assert (=> b!757958 (= res!333900 (and (not (= (left!6320 (c!128735 input!870)) Empty!2845)) (not (= (right!6650 (c!128735 input!870)) Empty!2845))))))

(declare-fun b!757959 () Bool)

(declare-fun res!333901 () Bool)

(assert (=> b!757959 (=> (not res!333901) (not e!486827))))

(assert (=> b!757959 (= res!333901 (= (cheight!3056 (c!128735 input!870)) (+ (max!0 (height!371 (left!6320 (c!128735 input!870))) (height!371 (right!6650 (c!128735 input!870)))) 1)))))

(declare-fun b!757960 () Bool)

(assert (=> b!757960 (= e!486827 (<= 0 (cheight!3056 (c!128735 input!870))))))

(assert (= (and d!248180 res!333899) b!757958))

(assert (= (and b!757958 res!333900) b!757959))

(assert (= (and b!757959 res!333901) b!757960))

(declare-fun m!1024249 () Bool)

(assert (=> d!248180 m!1024249))

(declare-fun m!1024251 () Bool)

(assert (=> d!248180 m!1024251))

(assert (=> b!757959 m!1024114))

(assert (=> b!757959 m!1024116))

(assert (=> b!757959 m!1024114))

(assert (=> b!757959 m!1024116))

(declare-fun m!1024253 () Bool)

(assert (=> b!757959 m!1024253))

(assert (=> b!757567 d!248180))

(declare-fun bs!161212 () Bool)

(declare-fun d!248182 () Bool)

(assert (= bs!161212 (and d!248182 d!248176)))

(declare-fun lambda!22999 () Int)

(assert (=> bs!161212 (= lambda!22999 lambda!22997)))

(declare-fun bs!161213 () Bool)

(assert (= bs!161213 (and d!248182 d!248122)))

(assert (=> bs!161213 (= lambda!22999 lambda!22986)))

(declare-fun bs!161214 () Bool)

(assert (= bs!161214 (and d!248182 d!248166)))

(assert (=> bs!161214 (= lambda!22999 lambda!22995)))

(declare-fun bs!161215 () Bool)

(assert (= bs!161215 (and d!248182 d!248102)))

(assert (=> bs!161215 (= lambda!22999 lambda!22984)))

(declare-fun bs!161216 () Bool)

(assert (= bs!161216 (and d!248182 d!248178)))

(assert (=> bs!161216 (= lambda!22999 lambda!22998)))

(declare-fun bs!161217 () Bool)

(assert (= bs!161217 (and d!248182 d!248148)))

(assert (=> bs!161217 (= lambda!22999 lambda!22991)))

(declare-fun bs!161218 () Bool)

(assert (= bs!161218 (and d!248182 d!248106)))

(assert (=> bs!161218 (= lambda!22999 lambda!22985)))

(declare-fun bs!161219 () Bool)

(assert (= bs!161219 (and d!248182 d!248170)))

(assert (=> bs!161219 (= lambda!22999 lambda!22996)))

(declare-fun bs!161220 () Bool)

(assert (= bs!161220 (and d!248182 d!248128)))

(assert (=> bs!161220 (= lambda!22999 lambda!22990)))

(assert (=> d!248182 (= (inv!10657 setElem!6428) (forall!2027 (exprs!859 setElem!6428) lambda!22999))))

(declare-fun bs!161221 () Bool)

(assert (= bs!161221 d!248182))

(declare-fun m!1024255 () Bool)

(assert (=> bs!161221 m!1024255))

(assert (=> setNonEmpty!6428 d!248182))

(declare-fun d!248184 () Bool)

(declare-fun res!333908 () Bool)

(declare-fun e!486830 () Bool)

(assert (=> d!248184 (=> (not res!333908) (not e!486830))))

(declare-fun size!6825 (Conc!2846) Int)

(assert (=> d!248184 (= res!333908 (= (csize!5922 (c!128736 acc!372)) (+ (size!6825 (left!6321 (c!128736 acc!372))) (size!6825 (right!6651 (c!128736 acc!372))))))))

(assert (=> d!248184 (= (inv!10652 (c!128736 acc!372)) e!486830)))

(declare-fun b!757967 () Bool)

(declare-fun res!333909 () Bool)

(assert (=> b!757967 (=> (not res!333909) (not e!486830))))

(assert (=> b!757967 (= res!333909 (and (not (= (left!6321 (c!128736 acc!372)) Empty!2846)) (not (= (right!6651 (c!128736 acc!372)) Empty!2846))))))

(declare-fun b!757968 () Bool)

(declare-fun res!333910 () Bool)

(assert (=> b!757968 (=> (not res!333910) (not e!486830))))

(assert (=> b!757968 (= res!333910 (= (cheight!3057 (c!128736 acc!372)) (+ (max!0 (height!370 (left!6321 (c!128736 acc!372))) (height!370 (right!6651 (c!128736 acc!372)))) 1)))))

(declare-fun b!757969 () Bool)

(assert (=> b!757969 (= e!486830 (<= 0 (cheight!3057 (c!128736 acc!372))))))

(assert (= (and d!248184 res!333908) b!757967))

(assert (= (and b!757967 res!333909) b!757968))

(assert (= (and b!757968 res!333910) b!757969))

(declare-fun m!1024257 () Bool)

(assert (=> d!248184 m!1024257))

(declare-fun m!1024259 () Bool)

(assert (=> d!248184 m!1024259))

(assert (=> b!757968 m!1024215))

(assert (=> b!757968 m!1024217))

(assert (=> b!757968 m!1024215))

(assert (=> b!757968 m!1024217))

(declare-fun m!1024261 () Bool)

(assert (=> b!757968 m!1024261))

(assert (=> b!757509 d!248184))

(declare-fun d!248186 () Bool)

(declare-fun c!128815 () Bool)

(assert (=> d!248186 (= c!128815 ((_ is Node!2845) (left!6320 (c!128735 treated!50))))))

(declare-fun e!486831 () Bool)

(assert (=> d!248186 (= (inv!10644 (left!6320 (c!128735 treated!50))) e!486831)))

(declare-fun b!757970 () Bool)

(assert (=> b!757970 (= e!486831 (inv!10654 (left!6320 (c!128735 treated!50))))))

(declare-fun b!757971 () Bool)

(declare-fun e!486832 () Bool)

(assert (=> b!757971 (= e!486831 e!486832)))

(declare-fun res!333911 () Bool)

(assert (=> b!757971 (= res!333911 (not ((_ is Leaf!4177) (left!6320 (c!128735 treated!50)))))))

(assert (=> b!757971 (=> res!333911 e!486832)))

(declare-fun b!757972 () Bool)

(assert (=> b!757972 (= e!486832 (inv!10655 (left!6320 (c!128735 treated!50))))))

(assert (= (and d!248186 c!128815) b!757970))

(assert (= (and d!248186 (not c!128815)) b!757971))

(assert (= (and b!757971 (not res!333911)) b!757972))

(declare-fun m!1024263 () Bool)

(assert (=> b!757970 m!1024263))

(declare-fun m!1024265 () Bool)

(assert (=> b!757972 m!1024265))

(assert (=> b!757727 d!248186))

(declare-fun d!248188 () Bool)

(declare-fun c!128816 () Bool)

(assert (=> d!248188 (= c!128816 ((_ is Node!2845) (right!6650 (c!128735 treated!50))))))

(declare-fun e!486833 () Bool)

(assert (=> d!248188 (= (inv!10644 (right!6650 (c!128735 treated!50))) e!486833)))

(declare-fun b!757973 () Bool)

(assert (=> b!757973 (= e!486833 (inv!10654 (right!6650 (c!128735 treated!50))))))

(declare-fun b!757974 () Bool)

(declare-fun e!486834 () Bool)

(assert (=> b!757974 (= e!486833 e!486834)))

(declare-fun res!333912 () Bool)

(assert (=> b!757974 (= res!333912 (not ((_ is Leaf!4177) (right!6650 (c!128735 treated!50)))))))

(assert (=> b!757974 (=> res!333912 e!486834)))

(declare-fun b!757975 () Bool)

(assert (=> b!757975 (= e!486834 (inv!10655 (right!6650 (c!128735 treated!50))))))

(assert (= (and d!248188 c!128816) b!757973))

(assert (= (and d!248188 (not c!128816)) b!757974))

(assert (= (and b!757974 (not res!333912)) b!757975))

(declare-fun m!1024267 () Bool)

(assert (=> b!757973 m!1024267))

(declare-fun m!1024269 () Bool)

(assert (=> b!757975 m!1024269))

(assert (=> b!757727 d!248188))

(declare-fun bs!161222 () Bool)

(declare-fun d!248190 () Bool)

(assert (= bs!161222 (and d!248190 d!248176)))

(declare-fun lambda!23000 () Int)

(assert (=> bs!161222 (= lambda!23000 lambda!22997)))

(declare-fun bs!161223 () Bool)

(assert (= bs!161223 (and d!248190 d!248122)))

(assert (=> bs!161223 (= lambda!23000 lambda!22986)))

(declare-fun bs!161224 () Bool)

(assert (= bs!161224 (and d!248190 d!248102)))

(assert (=> bs!161224 (= lambda!23000 lambda!22984)))

(declare-fun bs!161225 () Bool)

(assert (= bs!161225 (and d!248190 d!248178)))

(assert (=> bs!161225 (= lambda!23000 lambda!22998)))

(declare-fun bs!161226 () Bool)

(assert (= bs!161226 (and d!248190 d!248148)))

(assert (=> bs!161226 (= lambda!23000 lambda!22991)))

(declare-fun bs!161227 () Bool)

(assert (= bs!161227 (and d!248190 d!248106)))

(assert (=> bs!161227 (= lambda!23000 lambda!22985)))

(declare-fun bs!161228 () Bool)

(assert (= bs!161228 (and d!248190 d!248182)))

(assert (=> bs!161228 (= lambda!23000 lambda!22999)))

(declare-fun bs!161229 () Bool)

(assert (= bs!161229 (and d!248190 d!248166)))

(assert (=> bs!161229 (= lambda!23000 lambda!22995)))

(declare-fun bs!161230 () Bool)

(assert (= bs!161230 (and d!248190 d!248170)))

(assert (=> bs!161230 (= lambda!23000 lambda!22996)))

(declare-fun bs!161231 () Bool)

(assert (= bs!161231 (and d!248190 d!248128)))

(assert (=> bs!161231 (= lambda!23000 lambda!22990)))

(assert (=> d!248190 (= (inv!10657 setElem!6413) (forall!2027 (exprs!859 setElem!6413) lambda!23000))))

(declare-fun bs!161232 () Bool)

(assert (= bs!161232 d!248190))

(declare-fun m!1024271 () Bool)

(assert (=> bs!161232 m!1024271))

(assert (=> setNonEmpty!6412 d!248190))

(declare-fun bs!161233 () Bool)

(declare-fun d!248192 () Bool)

(assert (= bs!161233 (and d!248192 d!248190)))

(declare-fun lambda!23001 () Int)

(assert (=> bs!161233 (= lambda!23001 lambda!23000)))

(declare-fun bs!161234 () Bool)

(assert (= bs!161234 (and d!248192 d!248176)))

(assert (=> bs!161234 (= lambda!23001 lambda!22997)))

(declare-fun bs!161235 () Bool)

(assert (= bs!161235 (and d!248192 d!248122)))

(assert (=> bs!161235 (= lambda!23001 lambda!22986)))

(declare-fun bs!161236 () Bool)

(assert (= bs!161236 (and d!248192 d!248102)))

(assert (=> bs!161236 (= lambda!23001 lambda!22984)))

(declare-fun bs!161237 () Bool)

(assert (= bs!161237 (and d!248192 d!248178)))

(assert (=> bs!161237 (= lambda!23001 lambda!22998)))

(declare-fun bs!161238 () Bool)

(assert (= bs!161238 (and d!248192 d!248148)))

(assert (=> bs!161238 (= lambda!23001 lambda!22991)))

(declare-fun bs!161239 () Bool)

(assert (= bs!161239 (and d!248192 d!248106)))

(assert (=> bs!161239 (= lambda!23001 lambda!22985)))

(declare-fun bs!161240 () Bool)

(assert (= bs!161240 (and d!248192 d!248182)))

(assert (=> bs!161240 (= lambda!23001 lambda!22999)))

(declare-fun bs!161241 () Bool)

(assert (= bs!161241 (and d!248192 d!248166)))

(assert (=> bs!161241 (= lambda!23001 lambda!22995)))

(declare-fun bs!161242 () Bool)

(assert (= bs!161242 (and d!248192 d!248170)))

(assert (=> bs!161242 (= lambda!23001 lambda!22996)))

(declare-fun bs!161243 () Bool)

(assert (= bs!161243 (and d!248192 d!248128)))

(assert (=> bs!161243 (= lambda!23001 lambda!22990)))

(assert (=> d!248192 (= (inv!10657 setElem!6407) (forall!2027 (exprs!859 setElem!6407) lambda!23001))))

(declare-fun bs!161244 () Bool)

(assert (= bs!161244 d!248192))

(declare-fun m!1024273 () Bool)

(assert (=> bs!161244 m!1024273))

(assert (=> setNonEmpty!6407 d!248192))

(declare-fun d!248194 () Bool)

(assert (=> d!248194 (= (list!3387 (_2!5529 lt!308978)) (list!3389 (c!128735 (_2!5529 lt!308978))))))

(declare-fun bs!161245 () Bool)

(assert (= bs!161245 d!248194))

(declare-fun m!1024275 () Bool)

(assert (=> bs!161245 m!1024275))

(assert (=> b!757539 d!248194))

(declare-fun b!757976 () Bool)

(declare-fun e!486837 () tuple2!9638)

(declare-fun lt!309032 () Option!1851)

(declare-fun lt!309033 () tuple2!9638)

(assert (=> b!757976 (= e!486837 (tuple2!9639 (Cons!8375 (_1!5534 (v!18517 lt!309032)) (_1!5533 lt!309033)) (_2!5533 lt!309033)))))

(assert (=> b!757976 (= lt!309033 (lexList!368 thiss!12529 rules!1486 (_2!5534 (v!18517 lt!309032))))))

(declare-fun b!757977 () Bool)

(declare-fun e!486835 () Bool)

(declare-fun lt!309034 () tuple2!9638)

(assert (=> b!757977 (= e!486835 (not (isEmpty!5158 (_1!5533 lt!309034))))))

(declare-fun d!248196 () Bool)

(declare-fun e!486836 () Bool)

(assert (=> d!248196 e!486836))

(declare-fun c!128817 () Bool)

(assert (=> d!248196 (= c!128817 (> (size!6824 (_1!5533 lt!309034)) 0))))

(assert (=> d!248196 (= lt!309034 e!486837)))

(declare-fun c!128818 () Bool)

(assert (=> d!248196 (= c!128818 ((_ is Some!1850) lt!309032))))

(assert (=> d!248196 (= lt!309032 (maxPrefix!910 thiss!12529 rules!1486 (list!3387 totalInput!378)))))

(assert (=> d!248196 (= (lexList!368 thiss!12529 rules!1486 (list!3387 totalInput!378)) lt!309034)))

(declare-fun b!757978 () Bool)

(assert (=> b!757978 (= e!486836 e!486835)))

(declare-fun res!333913 () Bool)

(assert (=> b!757978 (= res!333913 (< (size!6822 (_2!5533 lt!309034)) (size!6822 (list!3387 totalInput!378))))))

(assert (=> b!757978 (=> (not res!333913) (not e!486835))))

(declare-fun b!757979 () Bool)

(assert (=> b!757979 (= e!486837 (tuple2!9639 Nil!8375 (list!3387 totalInput!378)))))

(declare-fun b!757980 () Bool)

(assert (=> b!757980 (= e!486836 (= (_2!5533 lt!309034) (list!3387 totalInput!378)))))

(assert (= (and d!248196 c!128818) b!757976))

(assert (= (and d!248196 (not c!128818)) b!757979))

(assert (= (and d!248196 c!128817) b!757978))

(assert (= (and d!248196 (not c!128817)) b!757980))

(assert (= (and b!757978 res!333913) b!757977))

(declare-fun m!1024277 () Bool)

(assert (=> b!757976 m!1024277))

(declare-fun m!1024279 () Bool)

(assert (=> b!757977 m!1024279))

(declare-fun m!1024281 () Bool)

(assert (=> d!248196 m!1024281))

(assert (=> d!248196 m!1023752))

(declare-fun m!1024283 () Bool)

(assert (=> d!248196 m!1024283))

(declare-fun m!1024285 () Bool)

(assert (=> b!757978 m!1024285))

(assert (=> b!757978 m!1023752))

(declare-fun m!1024287 () Bool)

(assert (=> b!757978 m!1024287))

(assert (=> b!757539 d!248196))

(assert (=> b!757539 d!248086))

(declare-fun bs!161246 () Bool)

(declare-fun d!248198 () Bool)

(assert (= bs!161246 (and d!248198 d!248190)))

(declare-fun lambda!23002 () Int)

(assert (=> bs!161246 (= lambda!23002 lambda!23000)))

(declare-fun bs!161247 () Bool)

(assert (= bs!161247 (and d!248198 d!248192)))

(assert (=> bs!161247 (= lambda!23002 lambda!23001)))

(declare-fun bs!161248 () Bool)

(assert (= bs!161248 (and d!248198 d!248176)))

(assert (=> bs!161248 (= lambda!23002 lambda!22997)))

(declare-fun bs!161249 () Bool)

(assert (= bs!161249 (and d!248198 d!248122)))

(assert (=> bs!161249 (= lambda!23002 lambda!22986)))

(declare-fun bs!161250 () Bool)

(assert (= bs!161250 (and d!248198 d!248102)))

(assert (=> bs!161250 (= lambda!23002 lambda!22984)))

(declare-fun bs!161251 () Bool)

(assert (= bs!161251 (and d!248198 d!248178)))

(assert (=> bs!161251 (= lambda!23002 lambda!22998)))

(declare-fun bs!161252 () Bool)

(assert (= bs!161252 (and d!248198 d!248148)))

(assert (=> bs!161252 (= lambda!23002 lambda!22991)))

(declare-fun bs!161253 () Bool)

(assert (= bs!161253 (and d!248198 d!248106)))

(assert (=> bs!161253 (= lambda!23002 lambda!22985)))

(declare-fun bs!161254 () Bool)

(assert (= bs!161254 (and d!248198 d!248182)))

(assert (=> bs!161254 (= lambda!23002 lambda!22999)))

(declare-fun bs!161255 () Bool)

(assert (= bs!161255 (and d!248198 d!248166)))

(assert (=> bs!161255 (= lambda!23002 lambda!22995)))

(declare-fun bs!161256 () Bool)

(assert (= bs!161256 (and d!248198 d!248170)))

(assert (=> bs!161256 (= lambda!23002 lambda!22996)))

(declare-fun bs!161257 () Bool)

(assert (= bs!161257 (and d!248198 d!248128)))

(assert (=> bs!161257 (= lambda!23002 lambda!22990)))

(assert (=> d!248198 (= (inv!10657 setElem!6416) (forall!2027 (exprs!859 setElem!6416) lambda!23002))))

(declare-fun bs!161258 () Bool)

(assert (= bs!161258 d!248198))

(declare-fun m!1024289 () Bool)

(assert (=> bs!161258 m!1024289))

(assert (=> setNonEmpty!6416 d!248198))

(declare-fun d!248200 () Bool)

(assert (=> d!248200 (= (list!3386 (_1!5529 lt!308984)) (list!3388 (c!128736 (_1!5529 lt!308984))))))

(declare-fun bs!161259 () Bool)

(assert (= bs!161259 d!248200))

(declare-fun m!1024291 () Bool)

(assert (=> bs!161259 m!1024291))

(assert (=> b!757576 d!248200))

(assert (=> b!757576 d!248110))

(assert (=> b!757576 d!248090))

(declare-fun d!248202 () Bool)

(declare-fun lt!309035 () Int)

(assert (=> d!248202 (= lt!309035 (size!6822 (list!3387 (_2!5529 lt!308978))))))

(assert (=> d!248202 (= lt!309035 (size!6823 (c!128735 (_2!5529 lt!308978))))))

(assert (=> d!248202 (= (size!6820 (_2!5529 lt!308978)) lt!309035)))

(declare-fun bs!161260 () Bool)

(assert (= bs!161260 d!248202))

(assert (=> bs!161260 m!1023828))

(assert (=> bs!161260 m!1023828))

(declare-fun m!1024293 () Bool)

(assert (=> bs!161260 m!1024293))

(declare-fun m!1024295 () Bool)

(assert (=> bs!161260 m!1024295))

(assert (=> b!757535 d!248202))

(declare-fun d!248204 () Bool)

(declare-fun lt!309036 () Int)

(assert (=> d!248204 (= lt!309036 (size!6822 (list!3387 totalInput!378)))))

(assert (=> d!248204 (= lt!309036 (size!6823 (c!128735 totalInput!378)))))

(assert (=> d!248204 (= (size!6820 totalInput!378) lt!309036)))

(declare-fun bs!161261 () Bool)

(assert (= bs!161261 d!248204))

(assert (=> bs!161261 m!1023752))

(assert (=> bs!161261 m!1023752))

(assert (=> bs!161261 m!1024287))

(declare-fun m!1024297 () Bool)

(assert (=> bs!161261 m!1024297))

(assert (=> b!757535 d!248204))

(declare-fun d!248206 () Bool)

(declare-fun c!128819 () Bool)

(assert (=> d!248206 (= c!128819 ((_ is Node!2845) (left!6320 (c!128735 (totalInput!2062 cacheFindLongestMatch!74)))))))

(declare-fun e!486838 () Bool)

(assert (=> d!248206 (= (inv!10644 (left!6320 (c!128735 (totalInput!2062 cacheFindLongestMatch!74)))) e!486838)))

(declare-fun b!757981 () Bool)

(assert (=> b!757981 (= e!486838 (inv!10654 (left!6320 (c!128735 (totalInput!2062 cacheFindLongestMatch!74)))))))

(declare-fun b!757982 () Bool)

(declare-fun e!486839 () Bool)

(assert (=> b!757982 (= e!486838 e!486839)))

(declare-fun res!333914 () Bool)

(assert (=> b!757982 (= res!333914 (not ((_ is Leaf!4177) (left!6320 (c!128735 (totalInput!2062 cacheFindLongestMatch!74))))))))

(assert (=> b!757982 (=> res!333914 e!486839)))

(declare-fun b!757983 () Bool)

(assert (=> b!757983 (= e!486839 (inv!10655 (left!6320 (c!128735 (totalInput!2062 cacheFindLongestMatch!74)))))))

(assert (= (and d!248206 c!128819) b!757981))

(assert (= (and d!248206 (not c!128819)) b!757982))

(assert (= (and b!757982 (not res!333914)) b!757983))

(declare-fun m!1024299 () Bool)

(assert (=> b!757981 m!1024299))

(declare-fun m!1024301 () Bool)

(assert (=> b!757983 m!1024301))

(assert (=> b!757663 d!248206))

(declare-fun d!248208 () Bool)

(declare-fun c!128820 () Bool)

(assert (=> d!248208 (= c!128820 ((_ is Node!2845) (right!6650 (c!128735 (totalInput!2062 cacheFindLongestMatch!74)))))))

(declare-fun e!486840 () Bool)

(assert (=> d!248208 (= (inv!10644 (right!6650 (c!128735 (totalInput!2062 cacheFindLongestMatch!74)))) e!486840)))

(declare-fun b!757984 () Bool)

(assert (=> b!757984 (= e!486840 (inv!10654 (right!6650 (c!128735 (totalInput!2062 cacheFindLongestMatch!74)))))))

(declare-fun b!757985 () Bool)

(declare-fun e!486841 () Bool)

(assert (=> b!757985 (= e!486840 e!486841)))

(declare-fun res!333915 () Bool)

(assert (=> b!757985 (= res!333915 (not ((_ is Leaf!4177) (right!6650 (c!128735 (totalInput!2062 cacheFindLongestMatch!74))))))))

(assert (=> b!757985 (=> res!333915 e!486841)))

(declare-fun b!757986 () Bool)

(assert (=> b!757986 (= e!486841 (inv!10655 (right!6650 (c!128735 (totalInput!2062 cacheFindLongestMatch!74)))))))

(assert (= (and d!248208 c!128820) b!757984))

(assert (= (and d!248208 (not c!128820)) b!757985))

(assert (= (and b!757985 (not res!333915)) b!757986))

(declare-fun m!1024303 () Bool)

(assert (=> b!757984 m!1024303))

(declare-fun m!1024305 () Bool)

(assert (=> b!757986 m!1024305))

(assert (=> b!757663 d!248208))

(declare-fun b!757988 () Bool)

(declare-fun e!486842 () List!8389)

(declare-fun e!486843 () List!8389)

(assert (=> b!757988 (= e!486842 e!486843)))

(declare-fun c!128822 () Bool)

(assert (=> b!757988 (= c!128822 ((_ is Leaf!4178) (c!128736 acc!372)))))

(declare-fun b!757989 () Bool)

(assert (=> b!757989 (= e!486843 (list!3391 (xs!5525 (c!128736 acc!372))))))

(declare-fun d!248210 () Bool)

(declare-fun c!128821 () Bool)

(assert (=> d!248210 (= c!128821 ((_ is Empty!2846) (c!128736 acc!372)))))

(assert (=> d!248210 (= (list!3388 (c!128736 acc!372)) e!486842)))

(declare-fun b!757990 () Bool)

(assert (=> b!757990 (= e!486843 (++!2198 (list!3388 (left!6321 (c!128736 acc!372))) (list!3388 (right!6651 (c!128736 acc!372)))))))

(declare-fun b!757987 () Bool)

(assert (=> b!757987 (= e!486842 Nil!8375)))

(assert (= (and d!248210 c!128821) b!757987))

(assert (= (and d!248210 (not c!128821)) b!757988))

(assert (= (and b!757988 c!128822) b!757989))

(assert (= (and b!757988 (not c!128822)) b!757990))

(declare-fun m!1024307 () Bool)

(assert (=> b!757989 m!1024307))

(declare-fun m!1024309 () Bool)

(assert (=> b!757990 m!1024309))

(declare-fun m!1024311 () Bool)

(assert (=> b!757990 m!1024311))

(assert (=> b!757990 m!1024309))

(assert (=> b!757990 m!1024311))

(declare-fun m!1024313 () Bool)

(assert (=> b!757990 m!1024313))

(assert (=> d!248062 d!248210))

(declare-fun d!248212 () Bool)

(declare-fun res!333916 () Bool)

(declare-fun e!486844 () Bool)

(assert (=> d!248212 (=> (not res!333916) (not e!486844))))

(assert (=> d!248212 (= res!333916 (= (csize!5920 (c!128735 (totalInput!2062 cacheFindLongestMatch!74))) (+ (size!6823 (left!6320 (c!128735 (totalInput!2062 cacheFindLongestMatch!74)))) (size!6823 (right!6650 (c!128735 (totalInput!2062 cacheFindLongestMatch!74)))))))))

(assert (=> d!248212 (= (inv!10654 (c!128735 (totalInput!2062 cacheFindLongestMatch!74))) e!486844)))

(declare-fun b!757991 () Bool)

(declare-fun res!333917 () Bool)

(assert (=> b!757991 (=> (not res!333917) (not e!486844))))

(assert (=> b!757991 (= res!333917 (and (not (= (left!6320 (c!128735 (totalInput!2062 cacheFindLongestMatch!74))) Empty!2845)) (not (= (right!6650 (c!128735 (totalInput!2062 cacheFindLongestMatch!74))) Empty!2845))))))

(declare-fun b!757992 () Bool)

(declare-fun res!333918 () Bool)

(assert (=> b!757992 (=> (not res!333918) (not e!486844))))

(assert (=> b!757992 (= res!333918 (= (cheight!3056 (c!128735 (totalInput!2062 cacheFindLongestMatch!74))) (+ (max!0 (height!371 (left!6320 (c!128735 (totalInput!2062 cacheFindLongestMatch!74)))) (height!371 (right!6650 (c!128735 (totalInput!2062 cacheFindLongestMatch!74))))) 1)))))

(declare-fun b!757993 () Bool)

(assert (=> b!757993 (= e!486844 (<= 0 (cheight!3056 (c!128735 (totalInput!2062 cacheFindLongestMatch!74)))))))

(assert (= (and d!248212 res!333916) b!757991))

(assert (= (and b!757991 res!333917) b!757992))

(assert (= (and b!757992 res!333918) b!757993))

(declare-fun m!1024315 () Bool)

(assert (=> d!248212 m!1024315))

(declare-fun m!1024317 () Bool)

(assert (=> d!248212 m!1024317))

(declare-fun m!1024319 () Bool)

(assert (=> b!757992 m!1024319))

(declare-fun m!1024321 () Bool)

(assert (=> b!757992 m!1024321))

(assert (=> b!757992 m!1024319))

(assert (=> b!757992 m!1024321))

(declare-fun m!1024323 () Bool)

(assert (=> b!757992 m!1024323))

(assert (=> b!757570 d!248212))

(declare-fun d!248214 () Bool)

(assert (=> d!248214 (= (list!3386 lt!308981) (list!3388 (c!128736 lt!308981)))))

(declare-fun bs!161262 () Bool)

(assert (= bs!161262 d!248214))

(declare-fun m!1024325 () Bool)

(assert (=> bs!161262 m!1024325))

(assert (=> b!757551 d!248214))

(declare-fun d!248216 () Bool)

(declare-fun e!486850 () Bool)

(assert (=> d!248216 e!486850))

(declare-fun res!333923 () Bool)

(assert (=> d!248216 (=> (not res!333923) (not e!486850))))

(declare-fun lt!309039 () List!8389)

(declare-fun content!1251 (List!8389) (InoxSet Token!2918))

(assert (=> d!248216 (= res!333923 (= (content!1251 lt!309039) ((_ map or) (content!1251 (list!3386 acc!372)) (content!1251 (list!3386 (_1!5529 lt!308963))))))))

(declare-fun e!486849 () List!8389)

(assert (=> d!248216 (= lt!309039 e!486849)))

(declare-fun c!128825 () Bool)

(assert (=> d!248216 (= c!128825 ((_ is Nil!8375) (list!3386 acc!372)))))

(assert (=> d!248216 (= (++!2198 (list!3386 acc!372) (list!3386 (_1!5529 lt!308963))) lt!309039)))

(declare-fun b!758003 () Bool)

(assert (=> b!758003 (= e!486849 (Cons!8375 (h!13776 (list!3386 acc!372)) (++!2198 (t!91119 (list!3386 acc!372)) (list!3386 (_1!5529 lt!308963)))))))

(declare-fun b!758005 () Bool)

(assert (=> b!758005 (= e!486850 (or (not (= (list!3386 (_1!5529 lt!308963)) Nil!8375)) (= lt!309039 (list!3386 acc!372))))))

(declare-fun b!758002 () Bool)

(assert (=> b!758002 (= e!486849 (list!3386 (_1!5529 lt!308963)))))

(declare-fun b!758004 () Bool)

(declare-fun res!333924 () Bool)

(assert (=> b!758004 (=> (not res!333924) (not e!486850))))

(assert (=> b!758004 (= res!333924 (= (size!6824 lt!309039) (+ (size!6824 (list!3386 acc!372)) (size!6824 (list!3386 (_1!5529 lt!308963))))))))

(assert (= (and d!248216 c!128825) b!758002))

(assert (= (and d!248216 (not c!128825)) b!758003))

(assert (= (and d!248216 res!333923) b!758004))

(assert (= (and b!758004 res!333924) b!758005))

(declare-fun m!1024327 () Bool)

(assert (=> d!248216 m!1024327))

(assert (=> d!248216 m!1023768))

(declare-fun m!1024329 () Bool)

(assert (=> d!248216 m!1024329))

(assert (=> d!248216 m!1023836))

(declare-fun m!1024331 () Bool)

(assert (=> d!248216 m!1024331))

(assert (=> b!758003 m!1023836))

(declare-fun m!1024333 () Bool)

(assert (=> b!758003 m!1024333))

(declare-fun m!1024335 () Bool)

(assert (=> b!758004 m!1024335))

(assert (=> b!758004 m!1023768))

(declare-fun m!1024337 () Bool)

(assert (=> b!758004 m!1024337))

(assert (=> b!758004 m!1023836))

(declare-fun m!1024339 () Bool)

(assert (=> b!758004 m!1024339))

(assert (=> b!757551 d!248216))

(assert (=> b!757551 d!248062))

(declare-fun d!248218 () Bool)

(assert (=> d!248218 (= (list!3386 (_1!5529 lt!308963)) (list!3388 (c!128736 (_1!5529 lt!308963))))))

(declare-fun bs!161263 () Bool)

(assert (= bs!161263 d!248218))

(assert (=> bs!161263 m!1024138))

(assert (=> b!757551 d!248218))

(declare-fun bs!161264 () Bool)

(declare-fun d!248220 () Bool)

(assert (= bs!161264 (and d!248220 d!248190)))

(declare-fun lambda!23003 () Int)

(assert (=> bs!161264 (= lambda!23003 lambda!23000)))

(declare-fun bs!161265 () Bool)

(assert (= bs!161265 (and d!248220 d!248192)))

(assert (=> bs!161265 (= lambda!23003 lambda!23001)))

(declare-fun bs!161266 () Bool)

(assert (= bs!161266 (and d!248220 d!248176)))

(assert (=> bs!161266 (= lambda!23003 lambda!22997)))

(declare-fun bs!161267 () Bool)

(assert (= bs!161267 (and d!248220 d!248198)))

(assert (=> bs!161267 (= lambda!23003 lambda!23002)))

(declare-fun bs!161268 () Bool)

(assert (= bs!161268 (and d!248220 d!248122)))

(assert (=> bs!161268 (= lambda!23003 lambda!22986)))

(declare-fun bs!161269 () Bool)

(assert (= bs!161269 (and d!248220 d!248102)))

(assert (=> bs!161269 (= lambda!23003 lambda!22984)))

(declare-fun bs!161270 () Bool)

(assert (= bs!161270 (and d!248220 d!248178)))

(assert (=> bs!161270 (= lambda!23003 lambda!22998)))

(declare-fun bs!161271 () Bool)

(assert (= bs!161271 (and d!248220 d!248148)))

(assert (=> bs!161271 (= lambda!23003 lambda!22991)))

(declare-fun bs!161272 () Bool)

(assert (= bs!161272 (and d!248220 d!248106)))

(assert (=> bs!161272 (= lambda!23003 lambda!22985)))

(declare-fun bs!161273 () Bool)

(assert (= bs!161273 (and d!248220 d!248182)))

(assert (=> bs!161273 (= lambda!23003 lambda!22999)))

(declare-fun bs!161274 () Bool)

(assert (= bs!161274 (and d!248220 d!248166)))

(assert (=> bs!161274 (= lambda!23003 lambda!22995)))

(declare-fun bs!161275 () Bool)

(assert (= bs!161275 (and d!248220 d!248170)))

(assert (=> bs!161275 (= lambda!23003 lambda!22996)))

(declare-fun bs!161276 () Bool)

(assert (= bs!161276 (and d!248220 d!248128)))

(assert (=> bs!161276 (= lambda!23003 lambda!22990)))

(assert (=> d!248220 (= (inv!10657 (_1!5527 (_1!5528 (h!13773 mapValue!5329)))) (forall!2027 (exprs!859 (_1!5527 (_1!5528 (h!13773 mapValue!5329)))) lambda!23003))))

(declare-fun bs!161277 () Bool)

(assert (= bs!161277 d!248220))

(declare-fun m!1024341 () Bool)

(assert (=> bs!161277 m!1024341))

(assert (=> b!757693 d!248220))

(declare-fun d!248222 () Bool)

(declare-fun lt!309042 () Bool)

(assert (=> d!248222 (= lt!309042 (isEmpty!5158 (list!3386 (_1!5529 lt!308975))))))

(assert (=> d!248222 (= lt!309042 (isEmpty!5160 (c!128736 (_1!5529 lt!308975))))))

(assert (=> d!248222 (= (isEmpty!5157 (_1!5529 lt!308975)) lt!309042)))

(declare-fun bs!161278 () Bool)

(assert (= bs!161278 d!248222))

(assert (=> bs!161278 m!1023792))

(assert (=> bs!161278 m!1023792))

(declare-fun m!1024343 () Bool)

(assert (=> bs!161278 m!1024343))

(declare-fun m!1024345 () Bool)

(assert (=> bs!161278 m!1024345))

(assert (=> b!757530 d!248222))

(declare-fun b!758006 () Bool)

(declare-fun e!486852 () List!8388)

(assert (=> b!758006 (= e!486852 (list!3387 input!870))))

(declare-fun lt!309043 () List!8388)

(declare-fun b!758009 () Bool)

(declare-fun e!486851 () Bool)

(assert (=> b!758009 (= e!486851 (or (not (= (list!3387 input!870) Nil!8374)) (= lt!309043 (t!91118 (list!3387 treated!50)))))))

(declare-fun b!758008 () Bool)

(declare-fun res!333926 () Bool)

(assert (=> b!758008 (=> (not res!333926) (not e!486851))))

(assert (=> b!758008 (= res!333926 (= (size!6822 lt!309043) (+ (size!6822 (t!91118 (list!3387 treated!50))) (size!6822 (list!3387 input!870)))))))

(declare-fun d!248224 () Bool)

(assert (=> d!248224 e!486851))

(declare-fun res!333925 () Bool)

(assert (=> d!248224 (=> (not res!333925) (not e!486851))))

(assert (=> d!248224 (= res!333925 (= (content!1250 lt!309043) ((_ map or) (content!1250 (t!91118 (list!3387 treated!50))) (content!1250 (list!3387 input!870)))))))

(assert (=> d!248224 (= lt!309043 e!486852)))

(declare-fun c!128826 () Bool)

(assert (=> d!248224 (= c!128826 ((_ is Nil!8374) (t!91118 (list!3387 treated!50))))))

(assert (=> d!248224 (= (++!2196 (t!91118 (list!3387 treated!50)) (list!3387 input!870)) lt!309043)))

(declare-fun b!758007 () Bool)

(assert (=> b!758007 (= e!486852 (Cons!8374 (h!13775 (t!91118 (list!3387 treated!50))) (++!2196 (t!91118 (t!91118 (list!3387 treated!50))) (list!3387 input!870))))))

(assert (= (and d!248224 c!128826) b!758006))

(assert (= (and d!248224 (not c!128826)) b!758007))

(assert (= (and d!248224 res!333925) b!758008))

(assert (= (and b!758008 res!333926) b!758009))

(declare-fun m!1024347 () Bool)

(assert (=> b!758008 m!1024347))

(declare-fun m!1024349 () Bool)

(assert (=> b!758008 m!1024349))

(assert (=> b!758008 m!1023756))

(assert (=> b!758008 m!1023926))

(declare-fun m!1024351 () Bool)

(assert (=> d!248224 m!1024351))

(declare-fun m!1024353 () Bool)

(assert (=> d!248224 m!1024353))

(assert (=> d!248224 m!1023756))

(assert (=> d!248224 m!1023932))

(assert (=> b!758007 m!1023756))

(declare-fun m!1024355 () Bool)

(assert (=> b!758007 m!1024355))

(assert (=> b!757598 d!248224))

(declare-fun d!248226 () Bool)

(declare-fun lt!309046 () Int)

(assert (=> d!248226 (= lt!309046 (size!6824 (list!3386 (_1!5529 lt!308975))))))

(assert (=> d!248226 (= lt!309046 (size!6825 (c!128736 (_1!5529 lt!308975))))))

(assert (=> d!248226 (= (size!6821 (_1!5529 lt!308975)) lt!309046)))

(declare-fun bs!161279 () Bool)

(assert (= bs!161279 d!248226))

(assert (=> bs!161279 m!1023792))

(assert (=> bs!161279 m!1023792))

(declare-fun m!1024357 () Bool)

(assert (=> bs!161279 m!1024357))

(declare-fun m!1024359 () Bool)

(assert (=> bs!161279 m!1024359))

(assert (=> d!248020 d!248226))

(declare-fun d!248228 () Bool)

(declare-fun e!486868 () Bool)

(assert (=> d!248228 e!486868))

(declare-fun res!333940 () Bool)

(assert (=> d!248228 (=> (not res!333940) (not e!486868))))

(declare-fun lt!309062 () Option!1850)

(declare-fun isDefined!1522 (Option!1850) Bool)

(declare-fun isDefined!1523 (Option!1851) Bool)

(declare-fun maxPrefixZipper!233 (LexerInterface!1412 List!8390 List!8388) Option!1851)

(assert (=> d!248228 (= res!333940 (= (isDefined!1522 lt!309062) (isDefined!1523 (maxPrefixZipper!233 thiss!12529 rules!1486 (list!3387 input!870)))))))

(declare-fun e!486867 () Option!1850)

(assert (=> d!248228 (= lt!309062 e!486867)))

(declare-fun c!128829 () Bool)

(assert (=> d!248228 (= c!128829 (and ((_ is Cons!8376) rules!1486) ((_ is Nil!8376) (t!91120 rules!1486))))))

(declare-datatypes ((Unit!13022 0))(
  ( (Unit!13023) )
))
(declare-fun lt!309065 () Unit!13022)

(declare-fun lt!309067 () Unit!13022)

(assert (=> d!248228 (= lt!309065 lt!309067)))

(declare-fun lt!309066 () List!8388)

(declare-fun lt!309064 () List!8388)

(declare-fun isPrefix!974 (List!8388 List!8388) Bool)

(assert (=> d!248228 (isPrefix!974 lt!309066 lt!309064)))

(declare-fun lemmaIsPrefixRefl!685 (List!8388 List!8388) Unit!13022)

(assert (=> d!248228 (= lt!309067 (lemmaIsPrefixRefl!685 lt!309066 lt!309064))))

(assert (=> d!248228 (= lt!309064 (list!3387 input!870))))

(assert (=> d!248228 (= lt!309066 (list!3387 input!870))))

(assert (=> d!248228 (rulesValidInductive!564 thiss!12529 rules!1486)))

(assert (=> d!248228 (= (maxPrefixZipperSequence!515 thiss!12529 rules!1486 input!870) lt!309062)))

(declare-fun b!758026 () Bool)

(declare-fun e!486865 () Bool)

(declare-fun get!2719 (Option!1850) tuple2!9636)

(declare-fun get!2720 (Option!1851) tuple2!9640)

(assert (=> b!758026 (= e!486865 (= (list!3387 (_2!5532 (get!2719 lt!309062))) (_2!5534 (get!2720 (maxPrefixZipper!233 thiss!12529 rules!1486 (list!3387 input!870))))))))

(declare-fun b!758027 () Bool)

(declare-fun res!333941 () Bool)

(assert (=> b!758027 (=> (not res!333941) (not e!486868))))

(declare-fun e!486869 () Bool)

(assert (=> b!758027 (= res!333941 e!486869)))

(declare-fun res!333943 () Bool)

(assert (=> b!758027 (=> res!333943 e!486869)))

(assert (=> b!758027 (= res!333943 (not (isDefined!1522 lt!309062)))))

(declare-fun b!758028 () Bool)

(declare-fun e!486866 () Bool)

(assert (=> b!758028 (= e!486868 e!486866)))

(declare-fun res!333939 () Bool)

(assert (=> b!758028 (=> res!333939 e!486866)))

(assert (=> b!758028 (= res!333939 (not (isDefined!1522 lt!309062)))))

(declare-fun bm!46317 () Bool)

(declare-fun call!46322 () Option!1850)

(declare-fun maxPrefixOneRuleZipperSequence!251 (LexerInterface!1412 Rule!3020 BalanceConc!5702) Option!1850)

(assert (=> bm!46317 (= call!46322 (maxPrefixOneRuleZipperSequence!251 thiss!12529 (h!13777 rules!1486) input!870))))

(declare-fun b!758029 () Bool)

(declare-fun lt!309063 () Option!1850)

(declare-fun lt!309061 () Option!1850)

(assert (=> b!758029 (= e!486867 (ite (and ((_ is None!1849) lt!309063) ((_ is None!1849) lt!309061)) None!1849 (ite ((_ is None!1849) lt!309061) lt!309063 (ite ((_ is None!1849) lt!309063) lt!309061 (ite (>= (size!6818 (_1!5532 (v!18515 lt!309063))) (size!6818 (_1!5532 (v!18515 lt!309061)))) lt!309063 lt!309061)))))))

(assert (=> b!758029 (= lt!309063 call!46322)))

(assert (=> b!758029 (= lt!309061 (maxPrefixZipperSequence!515 thiss!12529 (t!91120 rules!1486) input!870))))

(declare-fun b!758030 () Bool)

(declare-fun e!486870 () Bool)

(assert (=> b!758030 (= e!486866 e!486870)))

(declare-fun res!333942 () Bool)

(assert (=> b!758030 (=> (not res!333942) (not e!486870))))

(assert (=> b!758030 (= res!333942 (= (_1!5532 (get!2719 lt!309062)) (_1!5534 (get!2720 (maxPrefix!910 thiss!12529 rules!1486 (list!3387 input!870))))))))

(declare-fun b!758031 () Bool)

(assert (=> b!758031 (= e!486869 e!486865)))

(declare-fun res!333944 () Bool)

(assert (=> b!758031 (=> (not res!333944) (not e!486865))))

(assert (=> b!758031 (= res!333944 (= (_1!5532 (get!2719 lt!309062)) (_1!5534 (get!2720 (maxPrefixZipper!233 thiss!12529 rules!1486 (list!3387 input!870))))))))

(declare-fun b!758032 () Bool)

(assert (=> b!758032 (= e!486867 call!46322)))

(declare-fun b!758033 () Bool)

(assert (=> b!758033 (= e!486870 (= (list!3387 (_2!5532 (get!2719 lt!309062))) (_2!5534 (get!2720 (maxPrefix!910 thiss!12529 rules!1486 (list!3387 input!870))))))))

(assert (= (and d!248228 c!128829) b!758032))

(assert (= (and d!248228 (not c!128829)) b!758029))

(assert (= (or b!758032 b!758029) bm!46317))

(assert (= (and d!248228 res!333940) b!758027))

(assert (= (and b!758027 (not res!333943)) b!758031))

(assert (= (and b!758031 res!333944) b!758026))

(assert (= (and b!758027 res!333941) b!758028))

(assert (= (and b!758028 (not res!333939)) b!758030))

(assert (= (and b!758030 res!333942) b!758033))

(declare-fun m!1024361 () Bool)

(assert (=> b!758028 m!1024361))

(declare-fun m!1024363 () Bool)

(assert (=> b!758030 m!1024363))

(assert (=> b!758030 m!1023756))

(assert (=> b!758030 m!1023756))

(assert (=> b!758030 m!1024203))

(assert (=> b!758030 m!1024203))

(declare-fun m!1024365 () Bool)

(assert (=> b!758030 m!1024365))

(assert (=> d!248228 m!1023756))

(declare-fun m!1024367 () Bool)

(assert (=> d!248228 m!1024367))

(assert (=> d!248228 m!1024367))

(declare-fun m!1024369 () Bool)

(assert (=> d!248228 m!1024369))

(assert (=> d!248228 m!1023756))

(declare-fun m!1024371 () Bool)

(assert (=> d!248228 m!1024371))

(assert (=> d!248228 m!1024108))

(declare-fun m!1024373 () Bool)

(assert (=> d!248228 m!1024373))

(assert (=> d!248228 m!1024361))

(assert (=> b!758031 m!1024363))

(assert (=> b!758031 m!1023756))

(assert (=> b!758031 m!1023756))

(assert (=> b!758031 m!1024367))

(assert (=> b!758031 m!1024367))

(declare-fun m!1024375 () Bool)

(assert (=> b!758031 m!1024375))

(assert (=> b!758033 m!1023756))

(assert (=> b!758033 m!1024203))

(assert (=> b!758033 m!1024203))

(assert (=> b!758033 m!1024365))

(assert (=> b!758033 m!1023756))

(assert (=> b!758033 m!1024363))

(declare-fun m!1024377 () Bool)

(assert (=> b!758033 m!1024377))

(declare-fun m!1024379 () Bool)

(assert (=> b!758029 m!1024379))

(assert (=> b!758026 m!1023756))

(assert (=> b!758026 m!1024367))

(assert (=> b!758026 m!1023756))

(assert (=> b!758026 m!1024367))

(assert (=> b!758026 m!1024375))

(assert (=> b!758026 m!1024363))

(assert (=> b!758026 m!1024377))

(declare-fun m!1024381 () Bool)

(assert (=> bm!46317 m!1024381))

(assert (=> b!758027 m!1024361))

(assert (=> d!248020 d!248228))

(declare-fun bs!161280 () Bool)

(declare-fun d!248230 () Bool)

(assert (= bs!161280 (and d!248230 d!248190)))

(declare-fun lambda!23004 () Int)

(assert (=> bs!161280 (= lambda!23004 lambda!23000)))

(declare-fun bs!161281 () Bool)

(assert (= bs!161281 (and d!248230 d!248192)))

(assert (=> bs!161281 (= lambda!23004 lambda!23001)))

(declare-fun bs!161282 () Bool)

(assert (= bs!161282 (and d!248230 d!248176)))

(assert (=> bs!161282 (= lambda!23004 lambda!22997)))

(declare-fun bs!161283 () Bool)

(assert (= bs!161283 (and d!248230 d!248198)))

(assert (=> bs!161283 (= lambda!23004 lambda!23002)))

(declare-fun bs!161284 () Bool)

(assert (= bs!161284 (and d!248230 d!248122)))

(assert (=> bs!161284 (= lambda!23004 lambda!22986)))

(declare-fun bs!161285 () Bool)

(assert (= bs!161285 (and d!248230 d!248220)))

(assert (=> bs!161285 (= lambda!23004 lambda!23003)))

(declare-fun bs!161286 () Bool)

(assert (= bs!161286 (and d!248230 d!248102)))

(assert (=> bs!161286 (= lambda!23004 lambda!22984)))

(declare-fun bs!161287 () Bool)

(assert (= bs!161287 (and d!248230 d!248178)))

(assert (=> bs!161287 (= lambda!23004 lambda!22998)))

(declare-fun bs!161288 () Bool)

(assert (= bs!161288 (and d!248230 d!248148)))

(assert (=> bs!161288 (= lambda!23004 lambda!22991)))

(declare-fun bs!161289 () Bool)

(assert (= bs!161289 (and d!248230 d!248106)))

(assert (=> bs!161289 (= lambda!23004 lambda!22985)))

(declare-fun bs!161290 () Bool)

(assert (= bs!161290 (and d!248230 d!248182)))

(assert (=> bs!161290 (= lambda!23004 lambda!22999)))

(declare-fun bs!161291 () Bool)

(assert (= bs!161291 (and d!248230 d!248166)))

(assert (=> bs!161291 (= lambda!23004 lambda!22995)))

(declare-fun bs!161292 () Bool)

(assert (= bs!161292 (and d!248230 d!248170)))

(assert (=> bs!161292 (= lambda!23004 lambda!22996)))

(declare-fun bs!161293 () Bool)

(assert (= bs!161293 (and d!248230 d!248128)))

(assert (=> bs!161293 (= lambda!23004 lambda!22990)))

(assert (=> d!248230 (= (inv!10657 (_2!5525 (_1!5526 (h!13772 mapValue!5326)))) (forall!2027 (exprs!859 (_2!5525 (_1!5526 (h!13772 mapValue!5326)))) lambda!23004))))

(declare-fun bs!161294 () Bool)

(assert (= bs!161294 d!248230))

(declare-fun m!1024383 () Bool)

(assert (=> bs!161294 m!1024383))

(assert (=> b!757645 d!248230))

(declare-fun d!248232 () Bool)

(assert (=> d!248232 (= (list!3387 (_2!5529 lt!308975)) (list!3389 (c!128735 (_2!5529 lt!308975))))))

(declare-fun bs!161295 () Bool)

(assert (= bs!161295 d!248232))

(declare-fun m!1024385 () Bool)

(assert (=> bs!161295 m!1024385))

(assert (=> b!757526 d!248232))

(assert (=> b!757526 d!248092))

(declare-fun b!758037 () Bool)

(declare-fun e!486872 () List!8388)

(assert (=> b!758037 (= e!486872 (++!2196 (list!3389 (left!6320 (c!128735 (_2!5529 lt!308961)))) (list!3389 (right!6650 (c!128735 (_2!5529 lt!308961))))))))

(declare-fun b!758036 () Bool)

(assert (=> b!758036 (= e!486872 (list!3390 (xs!5524 (c!128735 (_2!5529 lt!308961)))))))

(declare-fun d!248234 () Bool)

(declare-fun c!128830 () Bool)

(assert (=> d!248234 (= c!128830 ((_ is Empty!2845) (c!128735 (_2!5529 lt!308961))))))

(declare-fun e!486871 () List!8388)

(assert (=> d!248234 (= (list!3389 (c!128735 (_2!5529 lt!308961))) e!486871)))

(declare-fun b!758034 () Bool)

(assert (=> b!758034 (= e!486871 Nil!8374)))

(declare-fun b!758035 () Bool)

(assert (=> b!758035 (= e!486871 e!486872)))

(declare-fun c!128831 () Bool)

(assert (=> b!758035 (= c!128831 ((_ is Leaf!4177) (c!128735 (_2!5529 lt!308961))))))

(assert (= (and d!248234 c!128830) b!758034))

(assert (= (and d!248234 (not c!128830)) b!758035))

(assert (= (and b!758035 c!128831) b!758036))

(assert (= (and b!758035 (not c!128831)) b!758037))

(declare-fun m!1024387 () Bool)

(assert (=> b!758037 m!1024387))

(declare-fun m!1024389 () Bool)

(assert (=> b!758037 m!1024389))

(assert (=> b!758037 m!1024387))

(assert (=> b!758037 m!1024389))

(declare-fun m!1024391 () Bool)

(assert (=> b!758037 m!1024391))

(declare-fun m!1024393 () Bool)

(assert (=> b!758036 m!1024393))

(assert (=> d!248080 d!248234))

(declare-fun bs!161296 () Bool)

(declare-fun d!248236 () Bool)

(assert (= bs!161296 (and d!248236 d!248190)))

(declare-fun lambda!23005 () Int)

(assert (=> bs!161296 (= lambda!23005 lambda!23000)))

(declare-fun bs!161297 () Bool)

(assert (= bs!161297 (and d!248236 d!248192)))

(assert (=> bs!161297 (= lambda!23005 lambda!23001)))

(declare-fun bs!161298 () Bool)

(assert (= bs!161298 (and d!248236 d!248176)))

(assert (=> bs!161298 (= lambda!23005 lambda!22997)))

(declare-fun bs!161299 () Bool)

(assert (= bs!161299 (and d!248236 d!248198)))

(assert (=> bs!161299 (= lambda!23005 lambda!23002)))

(declare-fun bs!161300 () Bool)

(assert (= bs!161300 (and d!248236 d!248122)))

(assert (=> bs!161300 (= lambda!23005 lambda!22986)))

(declare-fun bs!161301 () Bool)

(assert (= bs!161301 (and d!248236 d!248220)))

(assert (=> bs!161301 (= lambda!23005 lambda!23003)))

(declare-fun bs!161302 () Bool)

(assert (= bs!161302 (and d!248236 d!248230)))

(assert (=> bs!161302 (= lambda!23005 lambda!23004)))

(declare-fun bs!161303 () Bool)

(assert (= bs!161303 (and d!248236 d!248102)))

(assert (=> bs!161303 (= lambda!23005 lambda!22984)))

(declare-fun bs!161304 () Bool)

(assert (= bs!161304 (and d!248236 d!248178)))

(assert (=> bs!161304 (= lambda!23005 lambda!22998)))

(declare-fun bs!161305 () Bool)

(assert (= bs!161305 (and d!248236 d!248148)))

(assert (=> bs!161305 (= lambda!23005 lambda!22991)))

(declare-fun bs!161306 () Bool)

(assert (= bs!161306 (and d!248236 d!248106)))

(assert (=> bs!161306 (= lambda!23005 lambda!22985)))

(declare-fun bs!161307 () Bool)

(assert (= bs!161307 (and d!248236 d!248182)))

(assert (=> bs!161307 (= lambda!23005 lambda!22999)))

(declare-fun bs!161308 () Bool)

(assert (= bs!161308 (and d!248236 d!248166)))

(assert (=> bs!161308 (= lambda!23005 lambda!22995)))

(declare-fun bs!161309 () Bool)

(assert (= bs!161309 (and d!248236 d!248170)))

(assert (=> bs!161309 (= lambda!23005 lambda!22996)))

(declare-fun bs!161310 () Bool)

(assert (= bs!161310 (and d!248236 d!248128)))

(assert (=> bs!161310 (= lambda!23005 lambda!22990)))

(assert (=> d!248236 (= (inv!10657 setElem!6429) (forall!2027 (exprs!859 setElem!6429) lambda!23005))))

(declare-fun bs!161311 () Bool)

(assert (= bs!161311 d!248236))

(declare-fun m!1024395 () Bool)

(assert (=> bs!161311 m!1024395))

(assert (=> setNonEmpty!6429 d!248236))

(assert (=> b!757481 d!248072))

(declare-fun d!248238 () Bool)

(assert (=> d!248238 (= (inv!10658 (xs!5524 (c!128735 (totalInput!2062 cacheFindLongestMatch!74)))) (<= (size!6822 (innerList!2903 (xs!5524 (c!128735 (totalInput!2062 cacheFindLongestMatch!74))))) 2147483647))))

(declare-fun bs!161312 () Bool)

(assert (= bs!161312 d!248238))

(declare-fun m!1024397 () Bool)

(assert (=> bs!161312 m!1024397))

(assert (=> b!757664 d!248238))

(declare-fun b!758056 () Bool)

(declare-fun e!486897 () Bool)

(declare-fun e!486893 () Bool)

(assert (=> b!758056 (= e!486897 e!486893)))

(declare-fun res!333964 () Bool)

(assert (=> b!758056 (=> res!333964 e!486893)))

(assert (=> b!758056 (= res!333964 (not ((_ is Node!2846) (c!128736 (_1!5529 lt!308963)))))))

(declare-fun b!758057 () Bool)

(declare-fun e!486898 () Bool)

(assert (=> b!758057 (= e!486893 e!486898)))

(declare-fun res!333963 () Bool)

(assert (=> b!758057 (=> (not res!333963) (not e!486898))))

(declare-fun appendAssoc!52 (List!8389 List!8389 List!8389) Bool)

(assert (=> b!758057 (= res!333963 (appendAssoc!52 (list!3388 (c!128736 acc!372)) (list!3388 (left!6321 (c!128736 (_1!5529 lt!308963)))) (list!3388 (right!6651 (c!128736 (_1!5529 lt!308963))))))))

(declare-fun b!758058 () Bool)

(declare-fun e!486899 () Bool)

(declare-fun e!486896 () Bool)

(assert (=> b!758058 (= e!486899 e!486896)))

(declare-fun res!333971 () Bool)

(assert (=> b!758058 (=> (not res!333971) (not e!486896))))

(assert (=> b!758058 (= res!333971 (appendAssoc!52 (list!3388 (left!6321 (c!128736 acc!372))) (list!3388 (right!6651 (c!128736 acc!372))) (list!3388 (c!128736 (_1!5529 lt!308963)))))))

(declare-fun b!758059 () Bool)

(declare-fun e!486895 () Bool)

(declare-fun e!486891 () Bool)

(assert (=> b!758059 (= e!486895 e!486891)))

(declare-fun res!333968 () Bool)

(assert (=> b!758059 (=> (not res!333968) (not e!486891))))

(assert (=> b!758059 (= res!333968 (appendAssoc!52 (list!3388 (c!128736 acc!372)) (list!3388 (left!6321 (left!6321 (c!128736 (_1!5529 lt!308963))))) (list!3388 (right!6651 (left!6321 (c!128736 (_1!5529 lt!308963)))))))))

(declare-fun b!758060 () Bool)

(assert (=> b!758060 (= e!486898 e!486895)))

(declare-fun res!333966 () Bool)

(assert (=> b!758060 (=> res!333966 e!486895)))

(assert (=> b!758060 (= res!333966 (not ((_ is Node!2846) (left!6321 (c!128736 (_1!5529 lt!308963))))))))

(declare-fun b!758061 () Bool)

(assert (=> b!758061 (= e!486891 (appendAssoc!52 (++!2198 (list!3388 (c!128736 acc!372)) (list!3388 (left!6321 (left!6321 (c!128736 (_1!5529 lt!308963)))))) (list!3388 (right!6651 (left!6321 (c!128736 (_1!5529 lt!308963))))) (list!3388 (right!6651 (c!128736 (_1!5529 lt!308963))))))))

(declare-fun b!758062 () Bool)

(declare-fun e!486894 () Bool)

(declare-fun e!486892 () Bool)

(assert (=> b!758062 (= e!486894 e!486892)))

(declare-fun res!333965 () Bool)

(assert (=> b!758062 (=> (not res!333965) (not e!486892))))

(assert (=> b!758062 (= res!333965 (appendAssoc!52 (list!3388 (left!6321 (right!6651 (c!128736 acc!372)))) (list!3388 (right!6651 (right!6651 (c!128736 acc!372)))) (list!3388 (c!128736 (_1!5529 lt!308963)))))))

(declare-fun b!758063 () Bool)

(assert (=> b!758063 (= e!486896 e!486894)))

(declare-fun res!333969 () Bool)

(assert (=> b!758063 (=> res!333969 e!486894)))

(assert (=> b!758063 (= res!333969 (not ((_ is Node!2846) (right!6651 (c!128736 acc!372)))))))

(declare-fun d!248240 () Bool)

(assert (=> d!248240 e!486897))

(declare-fun res!333967 () Bool)

(assert (=> d!248240 (=> (not res!333967) (not e!486897))))

(assert (=> d!248240 (= res!333967 e!486899)))

(declare-fun res!333970 () Bool)

(assert (=> d!248240 (=> res!333970 e!486899)))

(assert (=> d!248240 (= res!333970 (not ((_ is Node!2846) (c!128736 acc!372))))))

(assert (=> d!248240 (= (appendAssocInst!175 (c!128736 acc!372) (c!128736 (_1!5529 lt!308963))) true)))

(declare-fun b!758064 () Bool)

(assert (=> b!758064 (= e!486892 (appendAssoc!52 (list!3388 (left!6321 (c!128736 acc!372))) (list!3388 (left!6321 (right!6651 (c!128736 acc!372)))) (++!2198 (list!3388 (right!6651 (right!6651 (c!128736 acc!372)))) (list!3388 (c!128736 (_1!5529 lt!308963))))))))

(assert (= (and d!248240 (not res!333970)) b!758058))

(assert (= (and b!758058 res!333971) b!758063))

(assert (= (and b!758063 (not res!333969)) b!758062))

(assert (= (and b!758062 res!333965) b!758064))

(assert (= (and d!248240 res!333967) b!758056))

(assert (= (and b!758056 (not res!333964)) b!758057))

(assert (= (and b!758057 res!333963) b!758060))

(assert (= (and b!758060 (not res!333966)) b!758059))

(assert (= (and b!758059 res!333968) b!758061))

(assert (=> b!758061 m!1023880))

(declare-fun m!1024399 () Bool)

(assert (=> b!758061 m!1024399))

(declare-fun m!1024401 () Bool)

(assert (=> b!758061 m!1024401))

(declare-fun m!1024403 () Bool)

(assert (=> b!758061 m!1024403))

(assert (=> b!758061 m!1024399))

(declare-fun m!1024405 () Bool)

(assert (=> b!758061 m!1024405))

(declare-fun m!1024407 () Bool)

(assert (=> b!758061 m!1024407))

(assert (=> b!758061 m!1023880))

(assert (=> b!758061 m!1024407))

(assert (=> b!758061 m!1024401))

(assert (=> b!758061 m!1024403))

(declare-fun m!1024409 () Bool)

(assert (=> b!758062 m!1024409))

(declare-fun m!1024411 () Bool)

(assert (=> b!758062 m!1024411))

(assert (=> b!758062 m!1024138))

(assert (=> b!758062 m!1024409))

(assert (=> b!758062 m!1024411))

(assert (=> b!758062 m!1024138))

(declare-fun m!1024413 () Bool)

(assert (=> b!758062 m!1024413))

(assert (=> b!758064 m!1024409))

(assert (=> b!758064 m!1024411))

(assert (=> b!758064 m!1024309))

(assert (=> b!758064 m!1024409))

(declare-fun m!1024415 () Bool)

(assert (=> b!758064 m!1024415))

(declare-fun m!1024417 () Bool)

(assert (=> b!758064 m!1024417))

(assert (=> b!758064 m!1024411))

(assert (=> b!758064 m!1024138))

(assert (=> b!758064 m!1024415))

(assert (=> b!758064 m!1024138))

(assert (=> b!758064 m!1024309))

(assert (=> b!758059 m!1023880))

(assert (=> b!758059 m!1024407))

(assert (=> b!758059 m!1024403))

(assert (=> b!758059 m!1023880))

(assert (=> b!758059 m!1024407))

(assert (=> b!758059 m!1024403))

(declare-fun m!1024419 () Bool)

(assert (=> b!758059 m!1024419))

(assert (=> b!758057 m!1023880))

(declare-fun m!1024421 () Bool)

(assert (=> b!758057 m!1024421))

(assert (=> b!758057 m!1024399))

(assert (=> b!758057 m!1023880))

(assert (=> b!758057 m!1024421))

(assert (=> b!758057 m!1024399))

(declare-fun m!1024423 () Bool)

(assert (=> b!758057 m!1024423))

(assert (=> b!758058 m!1024309))

(assert (=> b!758058 m!1024311))

(assert (=> b!758058 m!1024138))

(assert (=> b!758058 m!1024309))

(assert (=> b!758058 m!1024311))

(assert (=> b!758058 m!1024138))

(declare-fun m!1024425 () Bool)

(assert (=> b!758058 m!1024425))

(assert (=> d!248028 d!248240))

(assert (=> d!248028 d!248136))

(declare-fun d!248242 () Bool)

(declare-fun lt!309068 () Int)

(assert (=> d!248242 (= lt!309068 (size!6824 (list!3386 (_1!5529 lt!308984))))))

(assert (=> d!248242 (= lt!309068 (size!6825 (c!128736 (_1!5529 lt!308984))))))

(assert (=> d!248242 (= (size!6821 (_1!5529 lt!308984)) lt!309068)))

(declare-fun bs!161313 () Bool)

(assert (= bs!161313 d!248242))

(assert (=> bs!161313 m!1023882))

(assert (=> bs!161313 m!1023882))

(declare-fun m!1024427 () Bool)

(assert (=> bs!161313 m!1024427))

(declare-fun m!1024429 () Bool)

(assert (=> bs!161313 m!1024429))

(assert (=> d!248064 d!248242))

(declare-fun d!248244 () Bool)

(declare-fun e!486903 () Bool)

(assert (=> d!248244 e!486903))

(declare-fun res!333973 () Bool)

(assert (=> d!248244 (=> (not res!333973) (not e!486903))))

(declare-fun lt!309070 () Option!1850)

(assert (=> d!248244 (= res!333973 (= (isDefined!1522 lt!309070) (isDefined!1523 (maxPrefixZipper!233 thiss!12529 rules!1486 (list!3387 treated!50)))))))

(declare-fun e!486902 () Option!1850)

(assert (=> d!248244 (= lt!309070 e!486902)))

(declare-fun c!128832 () Bool)

(assert (=> d!248244 (= c!128832 (and ((_ is Cons!8376) rules!1486) ((_ is Nil!8376) (t!91120 rules!1486))))))

(declare-fun lt!309073 () Unit!13022)

(declare-fun lt!309075 () Unit!13022)

(assert (=> d!248244 (= lt!309073 lt!309075)))

(declare-fun lt!309074 () List!8388)

(declare-fun lt!309072 () List!8388)

(assert (=> d!248244 (isPrefix!974 lt!309074 lt!309072)))

(assert (=> d!248244 (= lt!309075 (lemmaIsPrefixRefl!685 lt!309074 lt!309072))))

(assert (=> d!248244 (= lt!309072 (list!3387 treated!50))))

(assert (=> d!248244 (= lt!309074 (list!3387 treated!50))))

(assert (=> d!248244 (rulesValidInductive!564 thiss!12529 rules!1486)))

(assert (=> d!248244 (= (maxPrefixZipperSequence!515 thiss!12529 rules!1486 treated!50) lt!309070)))

(declare-fun b!758065 () Bool)

(declare-fun e!486900 () Bool)

(assert (=> b!758065 (= e!486900 (= (list!3387 (_2!5532 (get!2719 lt!309070))) (_2!5534 (get!2720 (maxPrefixZipper!233 thiss!12529 rules!1486 (list!3387 treated!50))))))))

(declare-fun b!758066 () Bool)

(declare-fun res!333974 () Bool)

(assert (=> b!758066 (=> (not res!333974) (not e!486903))))

(declare-fun e!486904 () Bool)

(assert (=> b!758066 (= res!333974 e!486904)))

(declare-fun res!333976 () Bool)

(assert (=> b!758066 (=> res!333976 e!486904)))

(assert (=> b!758066 (= res!333976 (not (isDefined!1522 lt!309070)))))

(declare-fun b!758067 () Bool)

(declare-fun e!486901 () Bool)

(assert (=> b!758067 (= e!486903 e!486901)))

(declare-fun res!333972 () Bool)

(assert (=> b!758067 (=> res!333972 e!486901)))

(assert (=> b!758067 (= res!333972 (not (isDefined!1522 lt!309070)))))

(declare-fun bm!46318 () Bool)

(declare-fun call!46323 () Option!1850)

(assert (=> bm!46318 (= call!46323 (maxPrefixOneRuleZipperSequence!251 thiss!12529 (h!13777 rules!1486) treated!50))))

(declare-fun b!758068 () Bool)

(declare-fun lt!309071 () Option!1850)

(declare-fun lt!309069 () Option!1850)

(assert (=> b!758068 (= e!486902 (ite (and ((_ is None!1849) lt!309071) ((_ is None!1849) lt!309069)) None!1849 (ite ((_ is None!1849) lt!309069) lt!309071 (ite ((_ is None!1849) lt!309071) lt!309069 (ite (>= (size!6818 (_1!5532 (v!18515 lt!309071))) (size!6818 (_1!5532 (v!18515 lt!309069)))) lt!309071 lt!309069)))))))

(assert (=> b!758068 (= lt!309071 call!46323)))

(assert (=> b!758068 (= lt!309069 (maxPrefixZipperSequence!515 thiss!12529 (t!91120 rules!1486) treated!50))))

(declare-fun b!758069 () Bool)

(declare-fun e!486905 () Bool)

(assert (=> b!758069 (= e!486901 e!486905)))

(declare-fun res!333975 () Bool)

(assert (=> b!758069 (=> (not res!333975) (not e!486905))))

(assert (=> b!758069 (= res!333975 (= (_1!5532 (get!2719 lt!309070)) (_1!5534 (get!2720 (maxPrefix!910 thiss!12529 rules!1486 (list!3387 treated!50))))))))

(declare-fun b!758070 () Bool)

(assert (=> b!758070 (= e!486904 e!486900)))

(declare-fun res!333977 () Bool)

(assert (=> b!758070 (=> (not res!333977) (not e!486900))))

(assert (=> b!758070 (= res!333977 (= (_1!5532 (get!2719 lt!309070)) (_1!5534 (get!2720 (maxPrefixZipper!233 thiss!12529 rules!1486 (list!3387 treated!50))))))))

(declare-fun b!758071 () Bool)

(assert (=> b!758071 (= e!486902 call!46323)))

(declare-fun b!758072 () Bool)

(assert (=> b!758072 (= e!486905 (= (list!3387 (_2!5532 (get!2719 lt!309070))) (_2!5534 (get!2720 (maxPrefix!910 thiss!12529 rules!1486 (list!3387 treated!50))))))))

(assert (= (and d!248244 c!128832) b!758071))

(assert (= (and d!248244 (not c!128832)) b!758068))

(assert (= (or b!758071 b!758068) bm!46318))

(assert (= (and d!248244 res!333973) b!758066))

(assert (= (and b!758066 (not res!333976)) b!758070))

(assert (= (and b!758070 res!333977) b!758065))

(assert (= (and b!758066 res!333974) b!758067))

(assert (= (and b!758067 (not res!333972)) b!758069))

(assert (= (and b!758069 res!333975) b!758072))

(declare-fun m!1024431 () Bool)

(assert (=> b!758067 m!1024431))

(declare-fun m!1024433 () Bool)

(assert (=> b!758069 m!1024433))

(assert (=> b!758069 m!1023754))

(assert (=> b!758069 m!1023754))

(assert (=> b!758069 m!1024066))

(assert (=> b!758069 m!1024066))

(declare-fun m!1024435 () Bool)

(assert (=> b!758069 m!1024435))

(assert (=> d!248244 m!1023754))

(declare-fun m!1024437 () Bool)

(assert (=> d!248244 m!1024437))

(assert (=> d!248244 m!1024437))

(declare-fun m!1024439 () Bool)

(assert (=> d!248244 m!1024439))

(assert (=> d!248244 m!1023754))

(declare-fun m!1024441 () Bool)

(assert (=> d!248244 m!1024441))

(assert (=> d!248244 m!1024108))

(declare-fun m!1024443 () Bool)

(assert (=> d!248244 m!1024443))

(assert (=> d!248244 m!1024431))

(assert (=> b!758070 m!1024433))

(assert (=> b!758070 m!1023754))

(assert (=> b!758070 m!1023754))

(assert (=> b!758070 m!1024437))

(assert (=> b!758070 m!1024437))

(declare-fun m!1024445 () Bool)

(assert (=> b!758070 m!1024445))

(assert (=> b!758072 m!1023754))

(assert (=> b!758072 m!1024066))

(assert (=> b!758072 m!1024066))

(assert (=> b!758072 m!1024435))

(assert (=> b!758072 m!1023754))

(assert (=> b!758072 m!1024433))

(declare-fun m!1024447 () Bool)

(assert (=> b!758072 m!1024447))

(declare-fun m!1024449 () Bool)

(assert (=> b!758068 m!1024449))

(assert (=> b!758065 m!1023754))

(assert (=> b!758065 m!1024437))

(assert (=> b!758065 m!1023754))

(assert (=> b!758065 m!1024437))

(assert (=> b!758065 m!1024445))

(assert (=> b!758065 m!1024433))

(assert (=> b!758065 m!1024447))

(declare-fun m!1024451 () Bool)

(assert (=> bm!46318 m!1024451))

(assert (=> b!758066 m!1024431))

(assert (=> d!248064 d!248244))

(declare-fun bs!161314 () Bool)

(declare-fun d!248246 () Bool)

(assert (= bs!161314 (and d!248246 d!248190)))

(declare-fun lambda!23006 () Int)

(assert (=> bs!161314 (= lambda!23006 lambda!23000)))

(declare-fun bs!161315 () Bool)

(assert (= bs!161315 (and d!248246 d!248192)))

(assert (=> bs!161315 (= lambda!23006 lambda!23001)))

(declare-fun bs!161316 () Bool)

(assert (= bs!161316 (and d!248246 d!248176)))

(assert (=> bs!161316 (= lambda!23006 lambda!22997)))

(declare-fun bs!161317 () Bool)

(assert (= bs!161317 (and d!248246 d!248198)))

(assert (=> bs!161317 (= lambda!23006 lambda!23002)))

(declare-fun bs!161318 () Bool)

(assert (= bs!161318 (and d!248246 d!248122)))

(assert (=> bs!161318 (= lambda!23006 lambda!22986)))

(declare-fun bs!161319 () Bool)

(assert (= bs!161319 (and d!248246 d!248220)))

(assert (=> bs!161319 (= lambda!23006 lambda!23003)))

(declare-fun bs!161320 () Bool)

(assert (= bs!161320 (and d!248246 d!248236)))

(assert (=> bs!161320 (= lambda!23006 lambda!23005)))

(declare-fun bs!161321 () Bool)

(assert (= bs!161321 (and d!248246 d!248230)))

(assert (=> bs!161321 (= lambda!23006 lambda!23004)))

(declare-fun bs!161322 () Bool)

(assert (= bs!161322 (and d!248246 d!248102)))

(assert (=> bs!161322 (= lambda!23006 lambda!22984)))

(declare-fun bs!161323 () Bool)

(assert (= bs!161323 (and d!248246 d!248178)))

(assert (=> bs!161323 (= lambda!23006 lambda!22998)))

(declare-fun bs!161324 () Bool)

(assert (= bs!161324 (and d!248246 d!248148)))

(assert (=> bs!161324 (= lambda!23006 lambda!22991)))

(declare-fun bs!161325 () Bool)

(assert (= bs!161325 (and d!248246 d!248106)))

(assert (=> bs!161325 (= lambda!23006 lambda!22985)))

(declare-fun bs!161326 () Bool)

(assert (= bs!161326 (and d!248246 d!248182)))

(assert (=> bs!161326 (= lambda!23006 lambda!22999)))

(declare-fun bs!161327 () Bool)

(assert (= bs!161327 (and d!248246 d!248166)))

(assert (=> bs!161327 (= lambda!23006 lambda!22995)))

(declare-fun bs!161328 () Bool)

(assert (= bs!161328 (and d!248246 d!248170)))

(assert (=> bs!161328 (= lambda!23006 lambda!22996)))

(declare-fun bs!161329 () Bool)

(assert (= bs!161329 (and d!248246 d!248128)))

(assert (=> bs!161329 (= lambda!23006 lambda!22990)))

(assert (=> d!248246 (= (inv!10657 (_1!5527 (_1!5528 (h!13773 (minValue!1355 (v!18511 (underlying!2379 (v!18512 (underlying!2380 (cache!1457 cacheUp!502)))))))))) (forall!2027 (exprs!859 (_1!5527 (_1!5528 (h!13773 (minValue!1355 (v!18511 (underlying!2379 (v!18512 (underlying!2380 (cache!1457 cacheUp!502)))))))))) lambda!23006))))

(declare-fun bs!161330 () Bool)

(assert (= bs!161330 d!248246))

(declare-fun m!1024453 () Bool)

(assert (=> bs!161330 m!1024453))

(assert (=> b!757712 d!248246))

(declare-fun b!758076 () Bool)

(declare-fun e!486907 () List!8388)

(assert (=> b!758076 (= e!486907 (++!2196 (list!3389 (left!6320 (c!128735 totalInput!378))) (list!3389 (right!6650 (c!128735 totalInput!378)))))))

(declare-fun b!758075 () Bool)

(assert (=> b!758075 (= e!486907 (list!3390 (xs!5524 (c!128735 totalInput!378))))))

(declare-fun d!248248 () Bool)

(declare-fun c!128833 () Bool)

(assert (=> d!248248 (= c!128833 ((_ is Empty!2845) (c!128735 totalInput!378)))))

(declare-fun e!486906 () List!8388)

(assert (=> d!248248 (= (list!3389 (c!128735 totalInput!378)) e!486906)))

(declare-fun b!758073 () Bool)

(assert (=> b!758073 (= e!486906 Nil!8374)))

(declare-fun b!758074 () Bool)

(assert (=> b!758074 (= e!486906 e!486907)))

(declare-fun c!128834 () Bool)

(assert (=> b!758074 (= c!128834 ((_ is Leaf!4177) (c!128735 totalInput!378)))))

(assert (= (and d!248248 c!128833) b!758073))

(assert (= (and d!248248 (not c!128833)) b!758074))

(assert (= (and b!758074 c!128834) b!758075))

(assert (= (and b!758074 (not c!128834)) b!758076))

(declare-fun m!1024455 () Bool)

(assert (=> b!758076 m!1024455))

(declare-fun m!1024457 () Bool)

(assert (=> b!758076 m!1024457))

(assert (=> b!758076 m!1024455))

(assert (=> b!758076 m!1024457))

(declare-fun m!1024459 () Bool)

(assert (=> b!758076 m!1024459))

(declare-fun m!1024461 () Bool)

(assert (=> b!758075 m!1024461))

(assert (=> d!248086 d!248248))

(declare-fun bs!161331 () Bool)

(declare-fun d!248250 () Bool)

(assert (= bs!161331 (and d!248250 d!248190)))

(declare-fun lambda!23007 () Int)

(assert (=> bs!161331 (= lambda!23007 lambda!23000)))

(declare-fun bs!161332 () Bool)

(assert (= bs!161332 (and d!248250 d!248192)))

(assert (=> bs!161332 (= lambda!23007 lambda!23001)))

(declare-fun bs!161333 () Bool)

(assert (= bs!161333 (and d!248250 d!248176)))

(assert (=> bs!161333 (= lambda!23007 lambda!22997)))

(declare-fun bs!161334 () Bool)

(assert (= bs!161334 (and d!248250 d!248198)))

(assert (=> bs!161334 (= lambda!23007 lambda!23002)))

(declare-fun bs!161335 () Bool)

(assert (= bs!161335 (and d!248250 d!248122)))

(assert (=> bs!161335 (= lambda!23007 lambda!22986)))

(declare-fun bs!161336 () Bool)

(assert (= bs!161336 (and d!248250 d!248220)))

(assert (=> bs!161336 (= lambda!23007 lambda!23003)))

(declare-fun bs!161337 () Bool)

(assert (= bs!161337 (and d!248250 d!248236)))

(assert (=> bs!161337 (= lambda!23007 lambda!23005)))

(declare-fun bs!161338 () Bool)

(assert (= bs!161338 (and d!248250 d!248230)))

(assert (=> bs!161338 (= lambda!23007 lambda!23004)))

(declare-fun bs!161339 () Bool)

(assert (= bs!161339 (and d!248250 d!248102)))

(assert (=> bs!161339 (= lambda!23007 lambda!22984)))

(declare-fun bs!161340 () Bool)

(assert (= bs!161340 (and d!248250 d!248178)))

(assert (=> bs!161340 (= lambda!23007 lambda!22998)))

(declare-fun bs!161341 () Bool)

(assert (= bs!161341 (and d!248250 d!248246)))

(assert (=> bs!161341 (= lambda!23007 lambda!23006)))

(declare-fun bs!161342 () Bool)

(assert (= bs!161342 (and d!248250 d!248148)))

(assert (=> bs!161342 (= lambda!23007 lambda!22991)))

(declare-fun bs!161343 () Bool)

(assert (= bs!161343 (and d!248250 d!248106)))

(assert (=> bs!161343 (= lambda!23007 lambda!22985)))

(declare-fun bs!161344 () Bool)

(assert (= bs!161344 (and d!248250 d!248182)))

(assert (=> bs!161344 (= lambda!23007 lambda!22999)))

(declare-fun bs!161345 () Bool)

(assert (= bs!161345 (and d!248250 d!248166)))

(assert (=> bs!161345 (= lambda!23007 lambda!22995)))

(declare-fun bs!161346 () Bool)

(assert (= bs!161346 (and d!248250 d!248170)))

(assert (=> bs!161346 (= lambda!23007 lambda!22996)))

(declare-fun bs!161347 () Bool)

(assert (= bs!161347 (and d!248250 d!248128)))

(assert (=> bs!161347 (= lambda!23007 lambda!22990)))

(assert (=> d!248250 (= (inv!10657 setElem!6431) (forall!2027 (exprs!859 setElem!6431) lambda!23007))))

(declare-fun bs!161348 () Bool)

(assert (= bs!161348 d!248250))

(declare-fun m!1024463 () Bool)

(assert (=> bs!161348 m!1024463))

(assert (=> setNonEmpty!6431 d!248250))

(declare-fun d!248252 () Bool)

(declare-fun lt!309076 () Bool)

(assert (=> d!248252 (= lt!309076 (isEmpty!5158 (list!3386 (_1!5529 lt!308984))))))

(assert (=> d!248252 (= lt!309076 (isEmpty!5160 (c!128736 (_1!5529 lt!308984))))))

(assert (=> d!248252 (= (isEmpty!5157 (_1!5529 lt!308984)) lt!309076)))

(declare-fun bs!161349 () Bool)

(assert (= bs!161349 d!248252))

(assert (=> bs!161349 m!1023882))

(assert (=> bs!161349 m!1023882))

(declare-fun m!1024465 () Bool)

(assert (=> bs!161349 m!1024465))

(declare-fun m!1024467 () Bool)

(assert (=> bs!161349 m!1024467))

(assert (=> b!757577 d!248252))

(declare-fun d!248254 () Bool)

(assert (=> d!248254 (= (list!3386 (_1!5529 lt!308978)) (list!3388 (c!128736 (_1!5529 lt!308978))))))

(declare-fun bs!161350 () Bool)

(assert (= bs!161350 d!248254))

(declare-fun m!1024469 () Bool)

(assert (=> bs!161350 m!1024469))

(assert (=> b!757536 d!248254))

(assert (=> b!757536 d!248196))

(assert (=> b!757536 d!248086))

(declare-fun d!248256 () Bool)

(assert (=> d!248256 (= (inv!10658 (xs!5524 (c!128735 treated!50))) (<= (size!6822 (innerList!2903 (xs!5524 (c!128735 treated!50)))) 2147483647))))

(declare-fun bs!161351 () Bool)

(assert (= bs!161351 d!248256))

(declare-fun m!1024471 () Bool)

(assert (=> bs!161351 m!1024471))

(assert (=> b!757728 d!248256))

(declare-fun b!758078 () Bool)

(declare-fun e!486908 () List!8389)

(declare-fun e!486909 () List!8389)

(assert (=> b!758078 (= e!486908 e!486909)))

(declare-fun c!128836 () Bool)

(assert (=> b!758078 (= c!128836 ((_ is Leaf!4178) (c!128736 (++!2195 acc!372 (_1!5529 lt!308963)))))))

(declare-fun b!758079 () Bool)

(assert (=> b!758079 (= e!486909 (list!3391 (xs!5525 (c!128736 (++!2195 acc!372 (_1!5529 lt!308963))))))))

(declare-fun d!248258 () Bool)

(declare-fun c!128835 () Bool)

(assert (=> d!248258 (= c!128835 ((_ is Empty!2846) (c!128736 (++!2195 acc!372 (_1!5529 lt!308963)))))))

(assert (=> d!248258 (= (list!3388 (c!128736 (++!2195 acc!372 (_1!5529 lt!308963)))) e!486908)))

(declare-fun b!758080 () Bool)

(assert (=> b!758080 (= e!486909 (++!2198 (list!3388 (left!6321 (c!128736 (++!2195 acc!372 (_1!5529 lt!308963))))) (list!3388 (right!6651 (c!128736 (++!2195 acc!372 (_1!5529 lt!308963)))))))))

(declare-fun b!758077 () Bool)

(assert (=> b!758077 (= e!486908 Nil!8375)))

(assert (= (and d!248258 c!128835) b!758077))

(assert (= (and d!248258 (not c!128835)) b!758078))

(assert (= (and b!758078 c!128836) b!758079))

(assert (= (and b!758078 (not c!128836)) b!758080))

(declare-fun m!1024473 () Bool)

(assert (=> b!758079 m!1024473))

(declare-fun m!1024475 () Bool)

(assert (=> b!758080 m!1024475))

(declare-fun m!1024477 () Bool)

(assert (=> b!758080 m!1024477))

(assert (=> b!758080 m!1024475))

(assert (=> b!758080 m!1024477))

(declare-fun m!1024479 () Bool)

(assert (=> b!758080 m!1024479))

(assert (=> d!248024 d!248258))

(declare-fun bs!161352 () Bool)

(declare-fun d!248260 () Bool)

(assert (= bs!161352 (and d!248260 d!248190)))

(declare-fun lambda!23008 () Int)

(assert (=> bs!161352 (= lambda!23008 lambda!23000)))

(declare-fun bs!161353 () Bool)

(assert (= bs!161353 (and d!248260 d!248192)))

(assert (=> bs!161353 (= lambda!23008 lambda!23001)))

(declare-fun bs!161354 () Bool)

(assert (= bs!161354 (and d!248260 d!248176)))

(assert (=> bs!161354 (= lambda!23008 lambda!22997)))

(declare-fun bs!161355 () Bool)

(assert (= bs!161355 (and d!248260 d!248122)))

(assert (=> bs!161355 (= lambda!23008 lambda!22986)))

(declare-fun bs!161356 () Bool)

(assert (= bs!161356 (and d!248260 d!248220)))

(assert (=> bs!161356 (= lambda!23008 lambda!23003)))

(declare-fun bs!161357 () Bool)

(assert (= bs!161357 (and d!248260 d!248236)))

(assert (=> bs!161357 (= lambda!23008 lambda!23005)))

(declare-fun bs!161358 () Bool)

(assert (= bs!161358 (and d!248260 d!248230)))

(assert (=> bs!161358 (= lambda!23008 lambda!23004)))

(declare-fun bs!161359 () Bool)

(assert (= bs!161359 (and d!248260 d!248102)))

(assert (=> bs!161359 (= lambda!23008 lambda!22984)))

(declare-fun bs!161360 () Bool)

(assert (= bs!161360 (and d!248260 d!248178)))

(assert (=> bs!161360 (= lambda!23008 lambda!22998)))

(declare-fun bs!161361 () Bool)

(assert (= bs!161361 (and d!248260 d!248246)))

(assert (=> bs!161361 (= lambda!23008 lambda!23006)))

(declare-fun bs!161362 () Bool)

(assert (= bs!161362 (and d!248260 d!248148)))

(assert (=> bs!161362 (= lambda!23008 lambda!22991)))

(declare-fun bs!161363 () Bool)

(assert (= bs!161363 (and d!248260 d!248106)))

(assert (=> bs!161363 (= lambda!23008 lambda!22985)))

(declare-fun bs!161364 () Bool)

(assert (= bs!161364 (and d!248260 d!248250)))

(assert (=> bs!161364 (= lambda!23008 lambda!23007)))

(declare-fun bs!161365 () Bool)

(assert (= bs!161365 (and d!248260 d!248198)))

(assert (=> bs!161365 (= lambda!23008 lambda!23002)))

(declare-fun bs!161366 () Bool)

(assert (= bs!161366 (and d!248260 d!248182)))

(assert (=> bs!161366 (= lambda!23008 lambda!22999)))

(declare-fun bs!161367 () Bool)

(assert (= bs!161367 (and d!248260 d!248166)))

(assert (=> bs!161367 (= lambda!23008 lambda!22995)))

(declare-fun bs!161368 () Bool)

(assert (= bs!161368 (and d!248260 d!248170)))

(assert (=> bs!161368 (= lambda!23008 lambda!22996)))

(declare-fun bs!161369 () Bool)

(assert (= bs!161369 (and d!248260 d!248128)))

(assert (=> bs!161369 (= lambda!23008 lambda!22990)))

(assert (=> d!248260 (= (inv!10657 (_2!5525 (_1!5526 (h!13772 mapDefault!5321)))) (forall!2027 (exprs!859 (_2!5525 (_1!5526 (h!13772 mapDefault!5321)))) lambda!23008))))

(declare-fun bs!161370 () Bool)

(assert (= bs!161370 d!248260))

(declare-fun m!1024481 () Bool)

(assert (=> bs!161370 m!1024481))

(assert (=> b!757730 d!248260))

(assert (=> b!757573 d!248108))

(assert (=> b!757573 d!248090))

(declare-fun d!248262 () Bool)

(declare-fun lt!309077 () Int)

(assert (=> d!248262 (>= lt!309077 0)))

(declare-fun e!486910 () Int)

(assert (=> d!248262 (= lt!309077 e!486910)))

(declare-fun c!128837 () Bool)

(assert (=> d!248262 (= c!128837 ((_ is Nil!8374) lt!308987))))

(assert (=> d!248262 (= (size!6822 lt!308987) lt!309077)))

(declare-fun b!758081 () Bool)

(assert (=> b!758081 (= e!486910 0)))

(declare-fun b!758082 () Bool)

(assert (=> b!758082 (= e!486910 (+ 1 (size!6822 (t!91118 lt!308987))))))

(assert (= (and d!248262 c!128837) b!758081))

(assert (= (and d!248262 (not c!128837)) b!758082))

(declare-fun m!1024483 () Bool)

(assert (=> b!758082 m!1024483))

(assert (=> b!757599 d!248262))

(declare-fun d!248264 () Bool)

(declare-fun lt!309078 () Int)

(assert (=> d!248264 (>= lt!309078 0)))

(declare-fun e!486911 () Int)

(assert (=> d!248264 (= lt!309078 e!486911)))

(declare-fun c!128838 () Bool)

(assert (=> d!248264 (= c!128838 ((_ is Nil!8374) (list!3387 treated!50)))))

(assert (=> d!248264 (= (size!6822 (list!3387 treated!50)) lt!309078)))

(declare-fun b!758083 () Bool)

(assert (=> b!758083 (= e!486911 0)))

(declare-fun b!758084 () Bool)

(assert (=> b!758084 (= e!486911 (+ 1 (size!6822 (t!91118 (list!3387 treated!50)))))))

(assert (= (and d!248264 c!128838) b!758083))

(assert (= (and d!248264 (not c!128838)) b!758084))

(assert (=> b!758084 m!1024349))

(assert (=> b!757599 d!248264))

(assert (=> b!757599 d!248118))

(declare-fun d!248266 () Bool)

(declare-fun res!333984 () Bool)

(declare-fun e!486916 () Bool)

(assert (=> d!248266 (=> (not res!333984) (not e!486916))))

(declare-fun valid!894 (MutableMap!1069) Bool)

(assert (=> d!248266 (= res!333984 (valid!894 (cache!1456 cacheDown!515)))))

(assert (=> d!248266 (= (validCacheMapDown!93 (cache!1456 cacheDown!515)) e!486916)))

(declare-fun b!758091 () Bool)

(declare-fun res!333985 () Bool)

(assert (=> b!758091 (=> (not res!333985) (not e!486916))))

(declare-fun invariantList!175 (List!8385) Bool)

(declare-datatypes ((ListMap!399 0))(
  ( (ListMap!400 (toList!540 List!8385)) )
))
(declare-fun map!1752 (MutableMap!1069) ListMap!399)

(assert (=> b!758091 (= res!333985 (invariantList!175 (toList!540 (map!1752 (cache!1456 cacheDown!515)))))))

(declare-fun b!758092 () Bool)

(declare-fun lambda!23011 () Int)

(declare-fun forall!2030 (List!8385 Int) Bool)

(assert (=> b!758092 (= e!486916 (forall!2030 (toList!540 (map!1752 (cache!1456 cacheDown!515))) lambda!23011))))

(assert (= (and d!248266 res!333984) b!758091))

(assert (= (and b!758091 res!333985) b!758092))

(declare-fun m!1024486 () Bool)

(assert (=> d!248266 m!1024486))

(declare-fun m!1024488 () Bool)

(assert (=> b!758091 m!1024488))

(declare-fun m!1024490 () Bool)

(assert (=> b!758091 m!1024490))

(assert (=> b!758092 m!1024488))

(declare-fun m!1024492 () Bool)

(assert (=> b!758092 m!1024492))

(assert (=> d!248082 d!248266))

(declare-fun bs!161371 () Bool)

(declare-fun d!248268 () Bool)

(assert (= bs!161371 (and d!248268 d!248190)))

(declare-fun lambda!23012 () Int)

(assert (=> bs!161371 (= lambda!23012 lambda!23000)))

(declare-fun bs!161372 () Bool)

(assert (= bs!161372 (and d!248268 d!248192)))

(assert (=> bs!161372 (= lambda!23012 lambda!23001)))

(declare-fun bs!161373 () Bool)

(assert (= bs!161373 (and d!248268 d!248176)))

(assert (=> bs!161373 (= lambda!23012 lambda!22997)))

(declare-fun bs!161374 () Bool)

(assert (= bs!161374 (and d!248268 d!248260)))

(assert (=> bs!161374 (= lambda!23012 lambda!23008)))

(declare-fun bs!161375 () Bool)

(assert (= bs!161375 (and d!248268 d!248122)))

(assert (=> bs!161375 (= lambda!23012 lambda!22986)))

(declare-fun bs!161376 () Bool)

(assert (= bs!161376 (and d!248268 d!248220)))

(assert (=> bs!161376 (= lambda!23012 lambda!23003)))

(declare-fun bs!161377 () Bool)

(assert (= bs!161377 (and d!248268 d!248236)))

(assert (=> bs!161377 (= lambda!23012 lambda!23005)))

(declare-fun bs!161378 () Bool)

(assert (= bs!161378 (and d!248268 d!248230)))

(assert (=> bs!161378 (= lambda!23012 lambda!23004)))

(declare-fun bs!161379 () Bool)

(assert (= bs!161379 (and d!248268 d!248102)))

(assert (=> bs!161379 (= lambda!23012 lambda!22984)))

(declare-fun bs!161380 () Bool)

(assert (= bs!161380 (and d!248268 d!248178)))

(assert (=> bs!161380 (= lambda!23012 lambda!22998)))

(declare-fun bs!161381 () Bool)

(assert (= bs!161381 (and d!248268 d!248246)))

(assert (=> bs!161381 (= lambda!23012 lambda!23006)))

(declare-fun bs!161382 () Bool)

(assert (= bs!161382 (and d!248268 d!248148)))

(assert (=> bs!161382 (= lambda!23012 lambda!22991)))

(declare-fun bs!161383 () Bool)

(assert (= bs!161383 (and d!248268 d!248106)))

(assert (=> bs!161383 (= lambda!23012 lambda!22985)))

(declare-fun bs!161384 () Bool)

(assert (= bs!161384 (and d!248268 d!248250)))

(assert (=> bs!161384 (= lambda!23012 lambda!23007)))

(declare-fun bs!161385 () Bool)

(assert (= bs!161385 (and d!248268 d!248198)))

(assert (=> bs!161385 (= lambda!23012 lambda!23002)))

(declare-fun bs!161386 () Bool)

(assert (= bs!161386 (and d!248268 d!248182)))

(assert (=> bs!161386 (= lambda!23012 lambda!22999)))

(declare-fun bs!161387 () Bool)

(assert (= bs!161387 (and d!248268 d!248166)))

(assert (=> bs!161387 (= lambda!23012 lambda!22995)))

(declare-fun bs!161388 () Bool)

(assert (= bs!161388 (and d!248268 d!248170)))

(assert (=> bs!161388 (= lambda!23012 lambda!22996)))

(declare-fun bs!161389 () Bool)

(assert (= bs!161389 (and d!248268 d!248128)))

(assert (=> bs!161389 (= lambda!23012 lambda!22990)))

(assert (=> d!248268 (= (inv!10657 (_2!5525 (_1!5526 (h!13772 mapValue!5322)))) (forall!2027 (exprs!859 (_2!5525 (_1!5526 (h!13772 mapValue!5322)))) lambda!23012))))

(declare-fun bs!161390 () Bool)

(assert (= bs!161390 d!248268))

(declare-fun m!1024494 () Bool)

(assert (=> bs!161390 m!1024494))

(assert (=> b!757649 d!248268))

(declare-fun b!758093 () Bool)

(declare-fun e!486917 () Bool)

(declare-fun e!486918 () Bool)

(assert (=> b!758093 (= e!486917 e!486918)))

(declare-fun res!333986 () Bool)

(assert (=> b!758093 (=> (not res!333986) (not e!486918))))

(assert (=> b!758093 (= res!333986 (<= (- 1) (- (height!370 (left!6321 (++!2197 (c!128736 acc!372) (c!128736 (_1!5529 lt!308963))))) (height!370 (right!6651 (++!2197 (c!128736 acc!372) (c!128736 (_1!5529 lt!308963))))))))))

(declare-fun d!248270 () Bool)

(declare-fun res!333988 () Bool)

(assert (=> d!248270 (=> res!333988 e!486917)))

(assert (=> d!248270 (= res!333988 (not ((_ is Node!2846) (++!2197 (c!128736 acc!372) (c!128736 (_1!5529 lt!308963))))))))

(assert (=> d!248270 (= (isBalanced!760 (++!2197 (c!128736 acc!372) (c!128736 (_1!5529 lt!308963)))) e!486917)))

(declare-fun b!758094 () Bool)

(declare-fun res!333991 () Bool)

(assert (=> b!758094 (=> (not res!333991) (not e!486918))))

(assert (=> b!758094 (= res!333991 (not (isEmpty!5160 (left!6321 (++!2197 (c!128736 acc!372) (c!128736 (_1!5529 lt!308963)))))))))

(declare-fun b!758095 () Bool)

(declare-fun res!333989 () Bool)

(assert (=> b!758095 (=> (not res!333989) (not e!486918))))

(assert (=> b!758095 (= res!333989 (isBalanced!760 (left!6321 (++!2197 (c!128736 acc!372) (c!128736 (_1!5529 lt!308963))))))))

(declare-fun b!758096 () Bool)

(declare-fun res!333987 () Bool)

(assert (=> b!758096 (=> (not res!333987) (not e!486918))))

(assert (=> b!758096 (= res!333987 (<= (- (height!370 (left!6321 (++!2197 (c!128736 acc!372) (c!128736 (_1!5529 lt!308963))))) (height!370 (right!6651 (++!2197 (c!128736 acc!372) (c!128736 (_1!5529 lt!308963)))))) 1))))

(declare-fun b!758097 () Bool)

(declare-fun res!333990 () Bool)

(assert (=> b!758097 (=> (not res!333990) (not e!486918))))

(assert (=> b!758097 (= res!333990 (isBalanced!760 (right!6651 (++!2197 (c!128736 acc!372) (c!128736 (_1!5529 lt!308963))))))))

(declare-fun b!758098 () Bool)

(assert (=> b!758098 (= e!486918 (not (isEmpty!5160 (right!6651 (++!2197 (c!128736 acc!372) (c!128736 (_1!5529 lt!308963)))))))))

(assert (= (and d!248270 (not res!333988)) b!758093))

(assert (= (and b!758093 res!333986) b!758096))

(assert (= (and b!758096 res!333987) b!758095))

(assert (= (and b!758095 res!333989) b!758097))

(assert (= (and b!758097 res!333990) b!758094))

(assert (= (and b!758094 res!333991) b!758098))

(declare-fun m!1024496 () Bool)

(assert (=> b!758093 m!1024496))

(declare-fun m!1024498 () Bool)

(assert (=> b!758093 m!1024498))

(declare-fun m!1024500 () Bool)

(assert (=> b!758097 m!1024500))

(declare-fun m!1024502 () Bool)

(assert (=> b!758098 m!1024502))

(declare-fun m!1024504 () Bool)

(assert (=> b!758095 m!1024504))

(declare-fun m!1024506 () Bool)

(assert (=> b!758094 m!1024506))

(assert (=> b!758096 m!1024496))

(assert (=> b!758096 m!1024498))

(assert (=> b!757548 d!248270))

(assert (=> b!757548 d!248136))

(declare-fun d!248272 () Bool)

(declare-fun res!333996 () Bool)

(declare-fun e!486921 () Bool)

(assert (=> d!248272 (=> (not res!333996) (not e!486921))))

(assert (=> d!248272 (= res!333996 (<= (size!6822 (list!3390 (xs!5524 (c!128735 totalInput!378)))) 512))))

(assert (=> d!248272 (= (inv!10655 (c!128735 totalInput!378)) e!486921)))

(declare-fun b!758103 () Bool)

(declare-fun res!333997 () Bool)

(assert (=> b!758103 (=> (not res!333997) (not e!486921))))

(assert (=> b!758103 (= res!333997 (= (csize!5921 (c!128735 totalInput!378)) (size!6822 (list!3390 (xs!5524 (c!128735 totalInput!378))))))))

(declare-fun b!758104 () Bool)

(assert (=> b!758104 (= e!486921 (and (> (csize!5921 (c!128735 totalInput!378)) 0) (<= (csize!5921 (c!128735 totalInput!378)) 512)))))

(assert (= (and d!248272 res!333996) b!758103))

(assert (= (and b!758103 res!333997) b!758104))

(assert (=> d!248272 m!1024461))

(assert (=> d!248272 m!1024461))

(declare-fun m!1024508 () Bool)

(assert (=> d!248272 m!1024508))

(assert (=> b!758103 m!1024461))

(assert (=> b!758103 m!1024461))

(assert (=> b!758103 m!1024508))

(assert (=> b!757582 d!248272))

(assert (=> b!757502 d!248016))

(declare-fun b!758106 () Bool)

(declare-fun e!486922 () List!8389)

(declare-fun e!486923 () List!8389)

(assert (=> b!758106 (= e!486922 e!486923)))

(declare-fun c!128840 () Bool)

(assert (=> b!758106 (= c!128840 ((_ is Leaf!4178) (c!128736 (_1!5529 lt!308965))))))

(declare-fun b!758107 () Bool)

(assert (=> b!758107 (= e!486923 (list!3391 (xs!5525 (c!128736 (_1!5529 lt!308965)))))))

(declare-fun d!248274 () Bool)

(declare-fun c!128839 () Bool)

(assert (=> d!248274 (= c!128839 ((_ is Empty!2846) (c!128736 (_1!5529 lt!308965))))))

(assert (=> d!248274 (= (list!3388 (c!128736 (_1!5529 lt!308965))) e!486922)))

(declare-fun b!758108 () Bool)

(assert (=> b!758108 (= e!486923 (++!2198 (list!3388 (left!6321 (c!128736 (_1!5529 lt!308965)))) (list!3388 (right!6651 (c!128736 (_1!5529 lt!308965))))))))

(declare-fun b!758105 () Bool)

(assert (=> b!758105 (= e!486922 Nil!8375)))

(assert (= (and d!248274 c!128839) b!758105))

(assert (= (and d!248274 (not c!128839)) b!758106))

(assert (= (and b!758106 c!128840) b!758107))

(assert (= (and b!758106 (not c!128840)) b!758108))

(declare-fun m!1024510 () Bool)

(assert (=> b!758107 m!1024510))

(declare-fun m!1024512 () Bool)

(assert (=> b!758108 m!1024512))

(declare-fun m!1024514 () Bool)

(assert (=> b!758108 m!1024514))

(assert (=> b!758108 m!1024512))

(assert (=> b!758108 m!1024514))

(declare-fun m!1024516 () Bool)

(assert (=> b!758108 m!1024516))

(assert (=> d!248022 d!248274))

(declare-fun d!248276 () Bool)

(declare-fun e!486924 () Bool)

(assert (=> d!248276 e!486924))

(declare-fun res!333998 () Bool)

(assert (=> d!248276 (=> (not res!333998) (not e!486924))))

(assert (=> d!248276 (= res!333998 (isBalanced!760 (prepend!320 (c!128736 (_1!5529 lt!308973)) (_1!5532 (v!18515 lt!308974)))))))

(declare-fun lt!309079 () BalanceConc!5704)

(assert (=> d!248276 (= lt!309079 (BalanceConc!5705 (prepend!320 (c!128736 (_1!5529 lt!308973)) (_1!5532 (v!18515 lt!308974)))))))

(assert (=> d!248276 (= (prepend!319 (_1!5529 lt!308973) (_1!5532 (v!18515 lt!308974))) lt!309079)))

(declare-fun b!758109 () Bool)

(assert (=> b!758109 (= e!486924 (= (list!3386 lt!309079) (Cons!8375 (_1!5532 (v!18515 lt!308974)) (list!3386 (_1!5529 lt!308973)))))))

(assert (= (and d!248276 res!333998) b!758109))

(declare-fun m!1024518 () Bool)

(assert (=> d!248276 m!1024518))

(assert (=> d!248276 m!1024518))

(declare-fun m!1024520 () Bool)

(assert (=> d!248276 m!1024520))

(declare-fun m!1024522 () Bool)

(assert (=> b!758109 m!1024522))

(declare-fun m!1024524 () Bool)

(assert (=> b!758109 m!1024524))

(assert (=> b!757531 d!248276))

(declare-fun b!758110 () Bool)

(declare-fun e!486926 () Bool)

(declare-fun lt!309082 () tuple2!9630)

(assert (=> b!758110 (= e!486926 (= (list!3387 (_2!5529 lt!309082)) (list!3387 (_2!5532 (v!18515 lt!308974)))))))

(declare-fun b!758111 () Bool)

(declare-fun e!486925 () tuple2!9630)

(assert (=> b!758111 (= e!486925 (tuple2!9631 (BalanceConc!5705 Empty!2846) (_2!5532 (v!18515 lt!308974))))))

(declare-fun b!758112 () Bool)

(declare-fun e!486927 () Bool)

(assert (=> b!758112 (= e!486926 e!486927)))

(declare-fun res!334000 () Bool)

(assert (=> b!758112 (= res!334000 (< (size!6820 (_2!5529 lt!309082)) (size!6820 (_2!5532 (v!18515 lt!308974)))))))

(assert (=> b!758112 (=> (not res!334000) (not e!486927))))

(declare-fun b!758114 () Bool)

(assert (=> b!758114 (= e!486927 (not (isEmpty!5157 (_1!5529 lt!309082))))))

(declare-fun b!758115 () Bool)

(declare-fun lt!309080 () tuple2!9630)

(declare-fun lt!309081 () Option!1850)

(assert (=> b!758115 (= e!486925 (tuple2!9631 (prepend!319 (_1!5529 lt!309080) (_1!5532 (v!18515 lt!309081))) (_2!5529 lt!309080)))))

(assert (=> b!758115 (= lt!309080 (lexRec!241 thiss!12529 rules!1486 (_2!5532 (v!18515 lt!309081))))))

(declare-fun b!758116 () Bool)

(declare-fun e!486928 () Bool)

(assert (=> b!758116 (= e!486928 (= (list!3387 (_2!5529 lt!309082)) (_2!5533 (lexList!368 thiss!12529 rules!1486 (list!3387 (_2!5532 (v!18515 lt!308974)))))))))

(declare-fun b!758113 () Bool)

(declare-fun res!333999 () Bool)

(assert (=> b!758113 (=> (not res!333999) (not e!486928))))

(assert (=> b!758113 (= res!333999 (= (list!3386 (_1!5529 lt!309082)) (_1!5533 (lexList!368 thiss!12529 rules!1486 (list!3387 (_2!5532 (v!18515 lt!308974)))))))))

(declare-fun d!248278 () Bool)

(assert (=> d!248278 e!486928))

(declare-fun res!334001 () Bool)

(assert (=> d!248278 (=> (not res!334001) (not e!486928))))

(assert (=> d!248278 (= res!334001 e!486926)))

(declare-fun c!128841 () Bool)

(assert (=> d!248278 (= c!128841 (> (size!6821 (_1!5529 lt!309082)) 0))))

(assert (=> d!248278 (= lt!309082 e!486925)))

(declare-fun c!128842 () Bool)

(assert (=> d!248278 (= c!128842 ((_ is Some!1849) lt!309081))))

(assert (=> d!248278 (= lt!309081 (maxPrefixZipperSequence!515 thiss!12529 rules!1486 (_2!5532 (v!18515 lt!308974))))))

(assert (=> d!248278 (= (lexRec!241 thiss!12529 rules!1486 (_2!5532 (v!18515 lt!308974))) lt!309082)))

(assert (= (and d!248278 c!128842) b!758115))

(assert (= (and d!248278 (not c!128842)) b!758111))

(assert (= (and d!248278 c!128841) b!758112))

(assert (= (and d!248278 (not c!128841)) b!758110))

(assert (= (and b!758112 res!334000) b!758114))

(assert (= (and d!248278 res!334001) b!758113))

(assert (= (and b!758113 res!333999) b!758116))

(declare-fun m!1024526 () Bool)

(assert (=> b!758113 m!1024526))

(declare-fun m!1024528 () Bool)

(assert (=> b!758113 m!1024528))

(assert (=> b!758113 m!1024528))

(declare-fun m!1024530 () Bool)

(assert (=> b!758113 m!1024530))

(declare-fun m!1024532 () Bool)

(assert (=> b!758115 m!1024532))

(declare-fun m!1024534 () Bool)

(assert (=> b!758115 m!1024534))

(declare-fun m!1024536 () Bool)

(assert (=> b!758112 m!1024536))

(declare-fun m!1024538 () Bool)

(assert (=> b!758112 m!1024538))

(declare-fun m!1024540 () Bool)

(assert (=> b!758114 m!1024540))

(declare-fun m!1024542 () Bool)

(assert (=> b!758116 m!1024542))

(assert (=> b!758116 m!1024528))

(assert (=> b!758116 m!1024528))

(assert (=> b!758116 m!1024530))

(assert (=> b!758110 m!1024542))

(assert (=> b!758110 m!1024528))

(declare-fun m!1024544 () Bool)

(assert (=> d!248278 m!1024544))

(declare-fun m!1024546 () Bool)

(assert (=> d!248278 m!1024546))

(assert (=> b!757531 d!248278))

(declare-fun b!758120 () Bool)

(declare-fun e!486930 () List!8388)

(assert (=> b!758120 (= e!486930 (++!2196 (list!3389 (left!6320 (c!128735 treated!50))) (list!3389 (right!6650 (c!128735 treated!50)))))))

(declare-fun b!758119 () Bool)

(assert (=> b!758119 (= e!486930 (list!3390 (xs!5524 (c!128735 treated!50))))))

(declare-fun d!248280 () Bool)

(declare-fun c!128843 () Bool)

(assert (=> d!248280 (= c!128843 ((_ is Empty!2845) (c!128735 treated!50)))))

(declare-fun e!486929 () List!8388)

(assert (=> d!248280 (= (list!3389 (c!128735 treated!50)) e!486929)))

(declare-fun b!758117 () Bool)

(assert (=> b!758117 (= e!486929 Nil!8374)))

(declare-fun b!758118 () Bool)

(assert (=> b!758118 (= e!486929 e!486930)))

(declare-fun c!128844 () Bool)

(assert (=> b!758118 (= c!128844 ((_ is Leaf!4177) (c!128735 treated!50)))))

(assert (= (and d!248280 c!128843) b!758117))

(assert (= (and d!248280 (not c!128843)) b!758118))

(assert (= (and b!758118 c!128844) b!758119))

(assert (= (and b!758118 (not c!128844)) b!758120))

(declare-fun m!1024548 () Bool)

(assert (=> b!758120 m!1024548))

(declare-fun m!1024550 () Bool)

(assert (=> b!758120 m!1024550))

(assert (=> b!758120 m!1024548))

(assert (=> b!758120 m!1024550))

(declare-fun m!1024552 () Bool)

(assert (=> b!758120 m!1024552))

(declare-fun m!1024554 () Bool)

(assert (=> b!758119 m!1024554))

(assert (=> d!248090 d!248280))

(declare-fun b!758126 () Bool)

(assert (=> b!758126 true))

(declare-fun d!248282 () Bool)

(declare-fun res!334006 () Bool)

(declare-fun e!486933 () Bool)

(assert (=> d!248282 (=> (not res!334006) (not e!486933))))

(declare-fun valid!895 (MutableMap!1071) Bool)

(assert (=> d!248282 (= res!334006 (valid!895 (cache!1458 cacheFindLongestMatch!74)))))

(assert (=> d!248282 (= (validCacheMapFindLongestMatch!39 (cache!1458 cacheFindLongestMatch!74) (totalInput!2062 cacheFindLongestMatch!74)) e!486933)))

(declare-fun b!758125 () Bool)

(declare-fun res!334007 () Bool)

(assert (=> b!758125 (=> (not res!334007) (not e!486933))))

(declare-fun invariantList!176 (List!8391) Bool)

(declare-datatypes ((ListMap!401 0))(
  ( (ListMap!402 (toList!541 List!8391)) )
))
(declare-fun map!1753 (MutableMap!1071) ListMap!401)

(assert (=> b!758125 (= res!334007 (invariantList!176 (toList!541 (map!1753 (cache!1458 cacheFindLongestMatch!74)))))))

(declare-fun lambda!23015 () Int)

(declare-fun forall!2031 (List!8391 Int) Bool)

(assert (=> b!758126 (= e!486933 (forall!2031 (toList!541 (map!1753 (cache!1458 cacheFindLongestMatch!74))) lambda!23015))))

(assert (= (and d!248282 res!334006) b!758125))

(assert (= (and b!758125 res!334007) b!758126))

(declare-fun m!1024557 () Bool)

(assert (=> d!248282 m!1024557))

(declare-fun m!1024559 () Bool)

(assert (=> b!758125 m!1024559))

(declare-fun m!1024561 () Bool)

(assert (=> b!758125 m!1024561))

(assert (=> b!758126 m!1024559))

(declare-fun m!1024563 () Bool)

(assert (=> b!758126 m!1024563))

(assert (=> b!757554 d!248282))

(declare-fun d!248284 () Bool)

(declare-fun res!334008 () Bool)

(declare-fun e!486934 () Bool)

(assert (=> d!248284 (=> (not res!334008) (not e!486934))))

(assert (=> d!248284 (= res!334008 (<= (size!6822 (list!3390 (xs!5524 (c!128735 treated!50)))) 512))))

(assert (=> d!248284 (= (inv!10655 (c!128735 treated!50)) e!486934)))

(declare-fun b!758129 () Bool)

(declare-fun res!334009 () Bool)

(assert (=> b!758129 (=> (not res!334009) (not e!486934))))

(assert (=> b!758129 (= res!334009 (= (csize!5921 (c!128735 treated!50)) (size!6822 (list!3390 (xs!5524 (c!128735 treated!50))))))))

(declare-fun b!758130 () Bool)

(assert (=> b!758130 (= e!486934 (and (> (csize!5921 (c!128735 treated!50)) 0) (<= (csize!5921 (c!128735 treated!50)) 512)))))

(assert (= (and d!248284 res!334008) b!758129))

(assert (= (and b!758129 res!334009) b!758130))

(assert (=> d!248284 m!1024554))

(assert (=> d!248284 m!1024554))

(declare-fun m!1024565 () Bool)

(assert (=> d!248284 m!1024565))

(assert (=> b!758129 m!1024554))

(assert (=> b!758129 m!1024554))

(assert (=> b!758129 m!1024565))

(assert (=> b!757585 d!248284))

(declare-fun bs!161391 () Bool)

(declare-fun d!248286 () Bool)

(assert (= bs!161391 (and d!248286 d!248190)))

(declare-fun lambda!23016 () Int)

(assert (=> bs!161391 (= lambda!23016 lambda!23000)))

(declare-fun bs!161392 () Bool)

(assert (= bs!161392 (and d!248286 d!248192)))

(assert (=> bs!161392 (= lambda!23016 lambda!23001)))

(declare-fun bs!161393 () Bool)

(assert (= bs!161393 (and d!248286 d!248176)))

(assert (=> bs!161393 (= lambda!23016 lambda!22997)))

(declare-fun bs!161394 () Bool)

(assert (= bs!161394 (and d!248286 d!248260)))

(assert (=> bs!161394 (= lambda!23016 lambda!23008)))

(declare-fun bs!161395 () Bool)

(assert (= bs!161395 (and d!248286 d!248122)))

(assert (=> bs!161395 (= lambda!23016 lambda!22986)))

(declare-fun bs!161396 () Bool)

(assert (= bs!161396 (and d!248286 d!248220)))

(assert (=> bs!161396 (= lambda!23016 lambda!23003)))

(declare-fun bs!161397 () Bool)

(assert (= bs!161397 (and d!248286 d!248236)))

(assert (=> bs!161397 (= lambda!23016 lambda!23005)))

(declare-fun bs!161398 () Bool)

(assert (= bs!161398 (and d!248286 d!248230)))

(assert (=> bs!161398 (= lambda!23016 lambda!23004)))

(declare-fun bs!161399 () Bool)

(assert (= bs!161399 (and d!248286 d!248178)))

(assert (=> bs!161399 (= lambda!23016 lambda!22998)))

(declare-fun bs!161400 () Bool)

(assert (= bs!161400 (and d!248286 d!248246)))

(assert (=> bs!161400 (= lambda!23016 lambda!23006)))

(declare-fun bs!161401 () Bool)

(assert (= bs!161401 (and d!248286 d!248148)))

(assert (=> bs!161401 (= lambda!23016 lambda!22991)))

(declare-fun bs!161402 () Bool)

(assert (= bs!161402 (and d!248286 d!248106)))

(assert (=> bs!161402 (= lambda!23016 lambda!22985)))

(declare-fun bs!161403 () Bool)

(assert (= bs!161403 (and d!248286 d!248250)))

(assert (=> bs!161403 (= lambda!23016 lambda!23007)))

(declare-fun bs!161404 () Bool)

(assert (= bs!161404 (and d!248286 d!248198)))

(assert (=> bs!161404 (= lambda!23016 lambda!23002)))

(declare-fun bs!161405 () Bool)

(assert (= bs!161405 (and d!248286 d!248182)))

(assert (=> bs!161405 (= lambda!23016 lambda!22999)))

(declare-fun bs!161406 () Bool)

(assert (= bs!161406 (and d!248286 d!248166)))

(assert (=> bs!161406 (= lambda!23016 lambda!22995)))

(declare-fun bs!161407 () Bool)

(assert (= bs!161407 (and d!248286 d!248268)))

(assert (=> bs!161407 (= lambda!23016 lambda!23012)))

(declare-fun bs!161408 () Bool)

(assert (= bs!161408 (and d!248286 d!248102)))

(assert (=> bs!161408 (= lambda!23016 lambda!22984)))

(declare-fun bs!161409 () Bool)

(assert (= bs!161409 (and d!248286 d!248170)))

(assert (=> bs!161409 (= lambda!23016 lambda!22996)))

(declare-fun bs!161410 () Bool)

(assert (= bs!161410 (and d!248286 d!248128)))

(assert (=> bs!161410 (= lambda!23016 lambda!22990)))

(assert (=> d!248286 (= (inv!10657 setElem!6400) (forall!2027 (exprs!859 setElem!6400) lambda!23016))))

(declare-fun bs!161411 () Bool)

(assert (= bs!161411 d!248286))

(declare-fun m!1024567 () Bool)

(assert (=> bs!161411 m!1024567))

(assert (=> setNonEmpty!6400 d!248286))

(declare-fun bs!161412 () Bool)

(declare-fun d!248288 () Bool)

(assert (= bs!161412 (and d!248288 d!248190)))

(declare-fun lambda!23017 () Int)

(assert (=> bs!161412 (= lambda!23017 lambda!23000)))

(declare-fun bs!161413 () Bool)

(assert (= bs!161413 (and d!248288 d!248192)))

(assert (=> bs!161413 (= lambda!23017 lambda!23001)))

(declare-fun bs!161414 () Bool)

(assert (= bs!161414 (and d!248288 d!248176)))

(assert (=> bs!161414 (= lambda!23017 lambda!22997)))

(declare-fun bs!161415 () Bool)

(assert (= bs!161415 (and d!248288 d!248260)))

(assert (=> bs!161415 (= lambda!23017 lambda!23008)))

(declare-fun bs!161416 () Bool)

(assert (= bs!161416 (and d!248288 d!248122)))

(assert (=> bs!161416 (= lambda!23017 lambda!22986)))

(declare-fun bs!161417 () Bool)

(assert (= bs!161417 (and d!248288 d!248220)))

(assert (=> bs!161417 (= lambda!23017 lambda!23003)))

(declare-fun bs!161418 () Bool)

(assert (= bs!161418 (and d!248288 d!248236)))

(assert (=> bs!161418 (= lambda!23017 lambda!23005)))

(declare-fun bs!161419 () Bool)

(assert (= bs!161419 (and d!248288 d!248230)))

(assert (=> bs!161419 (= lambda!23017 lambda!23004)))

(declare-fun bs!161420 () Bool)

(assert (= bs!161420 (and d!248288 d!248178)))

(assert (=> bs!161420 (= lambda!23017 lambda!22998)))

(declare-fun bs!161421 () Bool)

(assert (= bs!161421 (and d!248288 d!248246)))

(assert (=> bs!161421 (= lambda!23017 lambda!23006)))

(declare-fun bs!161422 () Bool)

(assert (= bs!161422 (and d!248288 d!248286)))

(assert (=> bs!161422 (= lambda!23017 lambda!23016)))

(declare-fun bs!161423 () Bool)

(assert (= bs!161423 (and d!248288 d!248148)))

(assert (=> bs!161423 (= lambda!23017 lambda!22991)))

(declare-fun bs!161424 () Bool)

(assert (= bs!161424 (and d!248288 d!248106)))

(assert (=> bs!161424 (= lambda!23017 lambda!22985)))

(declare-fun bs!161425 () Bool)

(assert (= bs!161425 (and d!248288 d!248250)))

(assert (=> bs!161425 (= lambda!23017 lambda!23007)))

(declare-fun bs!161426 () Bool)

(assert (= bs!161426 (and d!248288 d!248198)))

(assert (=> bs!161426 (= lambda!23017 lambda!23002)))

(declare-fun bs!161427 () Bool)

(assert (= bs!161427 (and d!248288 d!248182)))

(assert (=> bs!161427 (= lambda!23017 lambda!22999)))

(declare-fun bs!161428 () Bool)

(assert (= bs!161428 (and d!248288 d!248166)))

(assert (=> bs!161428 (= lambda!23017 lambda!22995)))

(declare-fun bs!161429 () Bool)

(assert (= bs!161429 (and d!248288 d!248268)))

(assert (=> bs!161429 (= lambda!23017 lambda!23012)))

(declare-fun bs!161430 () Bool)

(assert (= bs!161430 (and d!248288 d!248102)))

(assert (=> bs!161430 (= lambda!23017 lambda!22984)))

(declare-fun bs!161431 () Bool)

(assert (= bs!161431 (and d!248288 d!248170)))

(assert (=> bs!161431 (= lambda!23017 lambda!22996)))

(declare-fun bs!161432 () Bool)

(assert (= bs!161432 (and d!248288 d!248128)))

(assert (=> bs!161432 (= lambda!23017 lambda!22990)))

(assert (=> d!248288 (= (inv!10657 setElem!6399) (forall!2027 (exprs!859 setElem!6399) lambda!23017))))

(declare-fun bs!161433 () Bool)

(assert (= bs!161433 d!248288))

(declare-fun m!1024569 () Bool)

(assert (=> bs!161433 m!1024569))

(assert (=> setNonEmpty!6399 d!248288))

(declare-fun d!248290 () Bool)

(declare-fun lt!309083 () Int)

(assert (=> d!248290 (= lt!309083 (size!6824 (list!3386 (_1!5529 lt!308978))))))

(assert (=> d!248290 (= lt!309083 (size!6825 (c!128736 (_1!5529 lt!308978))))))

(assert (=> d!248290 (= (size!6821 (_1!5529 lt!308978)) lt!309083)))

(declare-fun bs!161434 () Bool)

(assert (= bs!161434 d!248290))

(assert (=> bs!161434 m!1023814))

(assert (=> bs!161434 m!1023814))

(declare-fun m!1024571 () Bool)

(assert (=> bs!161434 m!1024571))

(declare-fun m!1024573 () Bool)

(assert (=> bs!161434 m!1024573))

(assert (=> d!248026 d!248290))

(declare-fun d!248292 () Bool)

(declare-fun e!486938 () Bool)

(assert (=> d!248292 e!486938))

(declare-fun res!334011 () Bool)

(assert (=> d!248292 (=> (not res!334011) (not e!486938))))

(declare-fun lt!309085 () Option!1850)

(assert (=> d!248292 (= res!334011 (= (isDefined!1522 lt!309085) (isDefined!1523 (maxPrefixZipper!233 thiss!12529 rules!1486 (list!3387 totalInput!378)))))))

(declare-fun e!486937 () Option!1850)

(assert (=> d!248292 (= lt!309085 e!486937)))

(declare-fun c!128845 () Bool)

(assert (=> d!248292 (= c!128845 (and ((_ is Cons!8376) rules!1486) ((_ is Nil!8376) (t!91120 rules!1486))))))

(declare-fun lt!309088 () Unit!13022)

(declare-fun lt!309090 () Unit!13022)

(assert (=> d!248292 (= lt!309088 lt!309090)))

(declare-fun lt!309089 () List!8388)

(declare-fun lt!309087 () List!8388)

(assert (=> d!248292 (isPrefix!974 lt!309089 lt!309087)))

(assert (=> d!248292 (= lt!309090 (lemmaIsPrefixRefl!685 lt!309089 lt!309087))))

(assert (=> d!248292 (= lt!309087 (list!3387 totalInput!378))))

(assert (=> d!248292 (= lt!309089 (list!3387 totalInput!378))))

(assert (=> d!248292 (rulesValidInductive!564 thiss!12529 rules!1486)))

(assert (=> d!248292 (= (maxPrefixZipperSequence!515 thiss!12529 rules!1486 totalInput!378) lt!309085)))

(declare-fun b!758131 () Bool)

(declare-fun e!486935 () Bool)

(assert (=> b!758131 (= e!486935 (= (list!3387 (_2!5532 (get!2719 lt!309085))) (_2!5534 (get!2720 (maxPrefixZipper!233 thiss!12529 rules!1486 (list!3387 totalInput!378))))))))

(declare-fun b!758132 () Bool)

(declare-fun res!334012 () Bool)

(assert (=> b!758132 (=> (not res!334012) (not e!486938))))

(declare-fun e!486939 () Bool)

(assert (=> b!758132 (= res!334012 e!486939)))

(declare-fun res!334014 () Bool)

(assert (=> b!758132 (=> res!334014 e!486939)))

(assert (=> b!758132 (= res!334014 (not (isDefined!1522 lt!309085)))))

(declare-fun b!758133 () Bool)

(declare-fun e!486936 () Bool)

(assert (=> b!758133 (= e!486938 e!486936)))

(declare-fun res!334010 () Bool)

(assert (=> b!758133 (=> res!334010 e!486936)))

(assert (=> b!758133 (= res!334010 (not (isDefined!1522 lt!309085)))))

(declare-fun call!46324 () Option!1850)

(declare-fun bm!46319 () Bool)

(assert (=> bm!46319 (= call!46324 (maxPrefixOneRuleZipperSequence!251 thiss!12529 (h!13777 rules!1486) totalInput!378))))

(declare-fun b!758134 () Bool)

(declare-fun lt!309086 () Option!1850)

(declare-fun lt!309084 () Option!1850)

(assert (=> b!758134 (= e!486937 (ite (and ((_ is None!1849) lt!309086) ((_ is None!1849) lt!309084)) None!1849 (ite ((_ is None!1849) lt!309084) lt!309086 (ite ((_ is None!1849) lt!309086) lt!309084 (ite (>= (size!6818 (_1!5532 (v!18515 lt!309086))) (size!6818 (_1!5532 (v!18515 lt!309084)))) lt!309086 lt!309084)))))))

(assert (=> b!758134 (= lt!309086 call!46324)))

(assert (=> b!758134 (= lt!309084 (maxPrefixZipperSequence!515 thiss!12529 (t!91120 rules!1486) totalInput!378))))

(declare-fun b!758135 () Bool)

(declare-fun e!486940 () Bool)

(assert (=> b!758135 (= e!486936 e!486940)))

(declare-fun res!334013 () Bool)

(assert (=> b!758135 (=> (not res!334013) (not e!486940))))

(assert (=> b!758135 (= res!334013 (= (_1!5532 (get!2719 lt!309085)) (_1!5534 (get!2720 (maxPrefix!910 thiss!12529 rules!1486 (list!3387 totalInput!378))))))))

(declare-fun b!758136 () Bool)

(assert (=> b!758136 (= e!486939 e!486935)))

(declare-fun res!334015 () Bool)

(assert (=> b!758136 (=> (not res!334015) (not e!486935))))

(assert (=> b!758136 (= res!334015 (= (_1!5532 (get!2719 lt!309085)) (_1!5534 (get!2720 (maxPrefixZipper!233 thiss!12529 rules!1486 (list!3387 totalInput!378))))))))

(declare-fun b!758137 () Bool)

(assert (=> b!758137 (= e!486937 call!46324)))

(declare-fun b!758138 () Bool)

(assert (=> b!758138 (= e!486940 (= (list!3387 (_2!5532 (get!2719 lt!309085))) (_2!5534 (get!2720 (maxPrefix!910 thiss!12529 rules!1486 (list!3387 totalInput!378))))))))

(assert (= (and d!248292 c!128845) b!758137))

(assert (= (and d!248292 (not c!128845)) b!758134))

(assert (= (or b!758137 b!758134) bm!46319))

(assert (= (and d!248292 res!334011) b!758132))

(assert (= (and b!758132 (not res!334014)) b!758136))

(assert (= (and b!758136 res!334015) b!758131))

(assert (= (and b!758132 res!334012) b!758133))

(assert (= (and b!758133 (not res!334010)) b!758135))

(assert (= (and b!758135 res!334013) b!758138))

(declare-fun m!1024575 () Bool)

(assert (=> b!758133 m!1024575))

(declare-fun m!1024577 () Bool)

(assert (=> b!758135 m!1024577))

(assert (=> b!758135 m!1023752))

(assert (=> b!758135 m!1023752))

(assert (=> b!758135 m!1024283))

(assert (=> b!758135 m!1024283))

(declare-fun m!1024579 () Bool)

(assert (=> b!758135 m!1024579))

(assert (=> d!248292 m!1023752))

(declare-fun m!1024581 () Bool)

(assert (=> d!248292 m!1024581))

(assert (=> d!248292 m!1024581))

(declare-fun m!1024583 () Bool)

(assert (=> d!248292 m!1024583))

(assert (=> d!248292 m!1023752))

(declare-fun m!1024585 () Bool)

(assert (=> d!248292 m!1024585))

(assert (=> d!248292 m!1024108))

(declare-fun m!1024587 () Bool)

(assert (=> d!248292 m!1024587))

(assert (=> d!248292 m!1024575))

(assert (=> b!758136 m!1024577))

(assert (=> b!758136 m!1023752))

(assert (=> b!758136 m!1023752))

(assert (=> b!758136 m!1024581))

(assert (=> b!758136 m!1024581))

(declare-fun m!1024589 () Bool)

(assert (=> b!758136 m!1024589))

(assert (=> b!758138 m!1023752))

(assert (=> b!758138 m!1024283))

(assert (=> b!758138 m!1024283))

(assert (=> b!758138 m!1024579))

(assert (=> b!758138 m!1023752))

(assert (=> b!758138 m!1024577))

(declare-fun m!1024591 () Bool)

(assert (=> b!758138 m!1024591))

(declare-fun m!1024593 () Bool)

(assert (=> b!758134 m!1024593))

(assert (=> b!758131 m!1023752))

(assert (=> b!758131 m!1024581))

(assert (=> b!758131 m!1023752))

(assert (=> b!758131 m!1024581))

(assert (=> b!758131 m!1024589))

(assert (=> b!758131 m!1024577))

(assert (=> b!758131 m!1024591))

(declare-fun m!1024595 () Bool)

(assert (=> bm!46319 m!1024595))

(assert (=> b!758132 m!1024575))

(assert (=> d!248026 d!248292))

(declare-fun d!248294 () Bool)

(assert (=> d!248294 true))

(declare-fun lambda!23020 () Int)

(declare-fun order!5533 () Int)

(declare-fun order!5531 () Int)

(declare-fun dynLambda!4020 (Int Int) Int)

(declare-fun dynLambda!4021 (Int Int) Int)

(assert (=> d!248294 (< (dynLambda!4020 order!5531 (toValue!2596 (transformation!1610 (h!13777 rules!1486)))) (dynLambda!4021 order!5533 lambda!23020))))

(declare-fun Forall2!287 (Int) Bool)

(assert (=> d!248294 (= (equivClasses!578 (toChars!2455 (transformation!1610 (h!13777 rules!1486))) (toValue!2596 (transformation!1610 (h!13777 rules!1486)))) (Forall2!287 lambda!23020))))

(declare-fun bs!161435 () Bool)

(assert (= bs!161435 d!248294))

(declare-fun m!1024597 () Bool)

(assert (=> bs!161435 m!1024597))

(assert (=> b!757603 d!248294))

(declare-fun d!248296 () Bool)

(declare-fun res!334018 () Bool)

(declare-fun e!486943 () Bool)

(assert (=> d!248296 (=> (not res!334018) (not e!486943))))

(assert (=> d!248296 (= res!334018 (<= (size!6822 (list!3390 (xs!5524 (c!128735 input!870)))) 512))))

(assert (=> d!248296 (= (inv!10655 (c!128735 input!870)) e!486943)))

(declare-fun b!758143 () Bool)

(declare-fun res!334019 () Bool)

(assert (=> b!758143 (=> (not res!334019) (not e!486943))))

(assert (=> b!758143 (= res!334019 (= (csize!5921 (c!128735 input!870)) (size!6822 (list!3390 (xs!5524 (c!128735 input!870))))))))

(declare-fun b!758144 () Bool)

(assert (=> b!758144 (= e!486943 (and (> (csize!5921 (c!128735 input!870)) 0) (<= (csize!5921 (c!128735 input!870)) 512)))))

(assert (= (and d!248296 res!334018) b!758143))

(assert (= (and b!758143 res!334019) b!758144))

(declare-fun m!1024599 () Bool)

(assert (=> d!248296 m!1024599))

(assert (=> d!248296 m!1024599))

(declare-fun m!1024601 () Bool)

(assert (=> d!248296 m!1024601))

(assert (=> b!758143 m!1024599))

(assert (=> b!758143 m!1024599))

(assert (=> b!758143 m!1024601))

(assert (=> b!757569 d!248296))

(declare-fun d!248298 () Bool)

(declare-fun e!486944 () Bool)

(assert (=> d!248298 e!486944))

(declare-fun res!334020 () Bool)

(assert (=> d!248298 (=> (not res!334020) (not e!486944))))

(assert (=> d!248298 (= res!334020 (isBalanced!760 (prepend!320 (c!128736 (_1!5529 lt!308982)) (_1!5532 (v!18515 lt!308983)))))))

(declare-fun lt!309091 () BalanceConc!5704)

(assert (=> d!248298 (= lt!309091 (BalanceConc!5705 (prepend!320 (c!128736 (_1!5529 lt!308982)) (_1!5532 (v!18515 lt!308983)))))))

(assert (=> d!248298 (= (prepend!319 (_1!5529 lt!308982) (_1!5532 (v!18515 lt!308983))) lt!309091)))

(declare-fun b!758145 () Bool)

(assert (=> b!758145 (= e!486944 (= (list!3386 lt!309091) (Cons!8375 (_1!5532 (v!18515 lt!308983)) (list!3386 (_1!5529 lt!308982)))))))

(assert (= (and d!248298 res!334020) b!758145))

(declare-fun m!1024603 () Bool)

(assert (=> d!248298 m!1024603))

(assert (=> d!248298 m!1024603))

(declare-fun m!1024605 () Bool)

(assert (=> d!248298 m!1024605))

(declare-fun m!1024607 () Bool)

(assert (=> b!758145 m!1024607))

(declare-fun m!1024609 () Bool)

(assert (=> b!758145 m!1024609))

(assert (=> b!757578 d!248298))

(declare-fun b!758146 () Bool)

(declare-fun e!486946 () Bool)

(declare-fun lt!309094 () tuple2!9630)

(assert (=> b!758146 (= e!486946 (= (list!3387 (_2!5529 lt!309094)) (list!3387 (_2!5532 (v!18515 lt!308983)))))))

(declare-fun b!758147 () Bool)

(declare-fun e!486945 () tuple2!9630)

(assert (=> b!758147 (= e!486945 (tuple2!9631 (BalanceConc!5705 Empty!2846) (_2!5532 (v!18515 lt!308983))))))

(declare-fun b!758148 () Bool)

(declare-fun e!486947 () Bool)

(assert (=> b!758148 (= e!486946 e!486947)))

(declare-fun res!334022 () Bool)

(assert (=> b!758148 (= res!334022 (< (size!6820 (_2!5529 lt!309094)) (size!6820 (_2!5532 (v!18515 lt!308983)))))))

(assert (=> b!758148 (=> (not res!334022) (not e!486947))))

(declare-fun b!758150 () Bool)

(assert (=> b!758150 (= e!486947 (not (isEmpty!5157 (_1!5529 lt!309094))))))

(declare-fun b!758151 () Bool)

(declare-fun lt!309092 () tuple2!9630)

(declare-fun lt!309093 () Option!1850)

(assert (=> b!758151 (= e!486945 (tuple2!9631 (prepend!319 (_1!5529 lt!309092) (_1!5532 (v!18515 lt!309093))) (_2!5529 lt!309092)))))

(assert (=> b!758151 (= lt!309092 (lexRec!241 thiss!12529 rules!1486 (_2!5532 (v!18515 lt!309093))))))

(declare-fun e!486948 () Bool)

(declare-fun b!758152 () Bool)

(assert (=> b!758152 (= e!486948 (= (list!3387 (_2!5529 lt!309094)) (_2!5533 (lexList!368 thiss!12529 rules!1486 (list!3387 (_2!5532 (v!18515 lt!308983)))))))))

(declare-fun b!758149 () Bool)

(declare-fun res!334021 () Bool)

(assert (=> b!758149 (=> (not res!334021) (not e!486948))))

(assert (=> b!758149 (= res!334021 (= (list!3386 (_1!5529 lt!309094)) (_1!5533 (lexList!368 thiss!12529 rules!1486 (list!3387 (_2!5532 (v!18515 lt!308983)))))))))

(declare-fun d!248300 () Bool)

(assert (=> d!248300 e!486948))

(declare-fun res!334023 () Bool)

(assert (=> d!248300 (=> (not res!334023) (not e!486948))))

(assert (=> d!248300 (= res!334023 e!486946)))

(declare-fun c!128846 () Bool)

(assert (=> d!248300 (= c!128846 (> (size!6821 (_1!5529 lt!309094)) 0))))

(assert (=> d!248300 (= lt!309094 e!486945)))

(declare-fun c!128847 () Bool)

(assert (=> d!248300 (= c!128847 ((_ is Some!1849) lt!309093))))

(assert (=> d!248300 (= lt!309093 (maxPrefixZipperSequence!515 thiss!12529 rules!1486 (_2!5532 (v!18515 lt!308983))))))

(assert (=> d!248300 (= (lexRec!241 thiss!12529 rules!1486 (_2!5532 (v!18515 lt!308983))) lt!309094)))

(assert (= (and d!248300 c!128847) b!758151))

(assert (= (and d!248300 (not c!128847)) b!758147))

(assert (= (and d!248300 c!128846) b!758148))

(assert (= (and d!248300 (not c!128846)) b!758146))

(assert (= (and b!758148 res!334022) b!758150))

(assert (= (and d!248300 res!334023) b!758149))

(assert (= (and b!758149 res!334021) b!758152))

(declare-fun m!1024611 () Bool)

(assert (=> b!758149 m!1024611))

(declare-fun m!1024613 () Bool)

(assert (=> b!758149 m!1024613))

(assert (=> b!758149 m!1024613))

(declare-fun m!1024615 () Bool)

(assert (=> b!758149 m!1024615))

(declare-fun m!1024617 () Bool)

(assert (=> b!758151 m!1024617))

(declare-fun m!1024619 () Bool)

(assert (=> b!758151 m!1024619))

(declare-fun m!1024621 () Bool)

(assert (=> b!758148 m!1024621))

(declare-fun m!1024623 () Bool)

(assert (=> b!758148 m!1024623))

(declare-fun m!1024625 () Bool)

(assert (=> b!758150 m!1024625))

(declare-fun m!1024627 () Bool)

(assert (=> b!758152 m!1024627))

(assert (=> b!758152 m!1024613))

(assert (=> b!758152 m!1024613))

(assert (=> b!758152 m!1024615))

(assert (=> b!758146 m!1024627))

(assert (=> b!758146 m!1024613))

(declare-fun m!1024629 () Bool)

(assert (=> d!248300 m!1024629))

(declare-fun m!1024631 () Bool)

(assert (=> d!248300 m!1024631))

(assert (=> b!757578 d!248300))

(declare-fun d!248302 () Bool)

(declare-fun lt!309095 () Bool)

(assert (=> d!248302 (= lt!309095 (isEmpty!5158 (list!3386 (_1!5529 lt!308978))))))

(assert (=> d!248302 (= lt!309095 (isEmpty!5160 (c!128736 (_1!5529 lt!308978))))))

(assert (=> d!248302 (= (isEmpty!5157 (_1!5529 lt!308978)) lt!309095)))

(declare-fun bs!161436 () Bool)

(assert (= bs!161436 d!248302))

(assert (=> bs!161436 m!1023814))

(assert (=> bs!161436 m!1023814))

(declare-fun m!1024633 () Bool)

(assert (=> bs!161436 m!1024633))

(declare-fun m!1024635 () Bool)

(assert (=> bs!161436 m!1024635))

(assert (=> b!757537 d!248302))

(declare-fun d!248304 () Bool)

(declare-fun c!128848 () Bool)

(assert (=> d!248304 (= c!128848 ((_ is Node!2846) (left!6321 (c!128736 acc!372))))))

(declare-fun e!486949 () Bool)

(assert (=> d!248304 (= (inv!10647 (left!6321 (c!128736 acc!372))) e!486949)))

(declare-fun b!758153 () Bool)

(assert (=> b!758153 (= e!486949 (inv!10652 (left!6321 (c!128736 acc!372))))))

(declare-fun b!758154 () Bool)

(declare-fun e!486950 () Bool)

(assert (=> b!758154 (= e!486949 e!486950)))

(declare-fun res!334024 () Bool)

(assert (=> b!758154 (= res!334024 (not ((_ is Leaf!4178) (left!6321 (c!128736 acc!372)))))))

(assert (=> b!758154 (=> res!334024 e!486950)))

(declare-fun b!758155 () Bool)

(assert (=> b!758155 (= e!486950 (inv!10653 (left!6321 (c!128736 acc!372))))))

(assert (= (and d!248304 c!128848) b!758153))

(assert (= (and d!248304 (not c!128848)) b!758154))

(assert (= (and b!758154 (not res!334024)) b!758155))

(declare-fun m!1024637 () Bool)

(assert (=> b!758153 m!1024637))

(declare-fun m!1024639 () Bool)

(assert (=> b!758155 m!1024639))

(assert (=> b!757612 d!248304))

(declare-fun d!248306 () Bool)

(declare-fun c!128849 () Bool)

(assert (=> d!248306 (= c!128849 ((_ is Node!2846) (right!6651 (c!128736 acc!372))))))

(declare-fun e!486951 () Bool)

(assert (=> d!248306 (= (inv!10647 (right!6651 (c!128736 acc!372))) e!486951)))

(declare-fun b!758156 () Bool)

(assert (=> b!758156 (= e!486951 (inv!10652 (right!6651 (c!128736 acc!372))))))

(declare-fun b!758157 () Bool)

(declare-fun e!486952 () Bool)

(assert (=> b!758157 (= e!486951 e!486952)))

(declare-fun res!334025 () Bool)

(assert (=> b!758157 (= res!334025 (not ((_ is Leaf!4178) (right!6651 (c!128736 acc!372)))))))

(assert (=> b!758157 (=> res!334025 e!486952)))

(declare-fun b!758158 () Bool)

(assert (=> b!758158 (= e!486952 (inv!10653 (right!6651 (c!128736 acc!372))))))

(assert (= (and d!248306 c!128849) b!758156))

(assert (= (and d!248306 (not c!128849)) b!758157))

(assert (= (and b!758157 (not res!334025)) b!758158))

(declare-fun m!1024641 () Bool)

(assert (=> b!758156 m!1024641))

(declare-fun m!1024643 () Bool)

(assert (=> b!758158 m!1024643))

(assert (=> b!757612 d!248306))

(declare-fun bs!161437 () Bool)

(declare-fun d!248308 () Bool)

(assert (= bs!161437 (and d!248308 d!248190)))

(declare-fun lambda!23021 () Int)

(assert (=> bs!161437 (= lambda!23021 lambda!23000)))

(declare-fun bs!161438 () Bool)

(assert (= bs!161438 (and d!248308 d!248192)))

(assert (=> bs!161438 (= lambda!23021 lambda!23001)))

(declare-fun bs!161439 () Bool)

(assert (= bs!161439 (and d!248308 d!248176)))

(assert (=> bs!161439 (= lambda!23021 lambda!22997)))

(declare-fun bs!161440 () Bool)

(assert (= bs!161440 (and d!248308 d!248260)))

(assert (=> bs!161440 (= lambda!23021 lambda!23008)))

(declare-fun bs!161441 () Bool)

(assert (= bs!161441 (and d!248308 d!248122)))

(assert (=> bs!161441 (= lambda!23021 lambda!22986)))

(declare-fun bs!161442 () Bool)

(assert (= bs!161442 (and d!248308 d!248220)))

(assert (=> bs!161442 (= lambda!23021 lambda!23003)))

(declare-fun bs!161443 () Bool)

(assert (= bs!161443 (and d!248308 d!248236)))

(assert (=> bs!161443 (= lambda!23021 lambda!23005)))

(declare-fun bs!161444 () Bool)

(assert (= bs!161444 (and d!248308 d!248230)))

(assert (=> bs!161444 (= lambda!23021 lambda!23004)))

(declare-fun bs!161445 () Bool)

(assert (= bs!161445 (and d!248308 d!248178)))

(assert (=> bs!161445 (= lambda!23021 lambda!22998)))

(declare-fun bs!161446 () Bool)

(assert (= bs!161446 (and d!248308 d!248246)))

(assert (=> bs!161446 (= lambda!23021 lambda!23006)))

(declare-fun bs!161447 () Bool)

(assert (= bs!161447 (and d!248308 d!248286)))

(assert (=> bs!161447 (= lambda!23021 lambda!23016)))

(declare-fun bs!161448 () Bool)

(assert (= bs!161448 (and d!248308 d!248106)))

(assert (=> bs!161448 (= lambda!23021 lambda!22985)))

(declare-fun bs!161449 () Bool)

(assert (= bs!161449 (and d!248308 d!248250)))

(assert (=> bs!161449 (= lambda!23021 lambda!23007)))

(declare-fun bs!161450 () Bool)

(assert (= bs!161450 (and d!248308 d!248198)))

(assert (=> bs!161450 (= lambda!23021 lambda!23002)))

(declare-fun bs!161451 () Bool)

(assert (= bs!161451 (and d!248308 d!248182)))

(assert (=> bs!161451 (= lambda!23021 lambda!22999)))

(declare-fun bs!161452 () Bool)

(assert (= bs!161452 (and d!248308 d!248166)))

(assert (=> bs!161452 (= lambda!23021 lambda!22995)))

(declare-fun bs!161453 () Bool)

(assert (= bs!161453 (and d!248308 d!248268)))

(assert (=> bs!161453 (= lambda!23021 lambda!23012)))

(declare-fun bs!161454 () Bool)

(assert (= bs!161454 (and d!248308 d!248102)))

(assert (=> bs!161454 (= lambda!23021 lambda!22984)))

(declare-fun bs!161455 () Bool)

(assert (= bs!161455 (and d!248308 d!248170)))

(assert (=> bs!161455 (= lambda!23021 lambda!22996)))

(declare-fun bs!161456 () Bool)

(assert (= bs!161456 (and d!248308 d!248128)))

(assert (=> bs!161456 (= lambda!23021 lambda!22990)))

(declare-fun bs!161457 () Bool)

(assert (= bs!161457 (and d!248308 d!248148)))

(assert (=> bs!161457 (= lambda!23021 lambda!22991)))

(declare-fun bs!161458 () Bool)

(assert (= bs!161458 (and d!248308 d!248288)))

(assert (=> bs!161458 (= lambda!23021 lambda!23017)))

(assert (=> d!248308 (= (inv!10657 (_1!5527 (_1!5528 (h!13773 (zeroValue!1355 (v!18511 (underlying!2379 (v!18512 (underlying!2380 (cache!1457 cacheUp!502)))))))))) (forall!2027 (exprs!859 (_1!5527 (_1!5528 (h!13773 (zeroValue!1355 (v!18511 (underlying!2379 (v!18512 (underlying!2380 (cache!1457 cacheUp!502)))))))))) lambda!23021))))

(declare-fun bs!161459 () Bool)

(assert (= bs!161459 d!248308))

(declare-fun m!1024645 () Bool)

(assert (=> bs!161459 m!1024645))

(assert (=> b!757709 d!248308))

(declare-fun bs!161460 () Bool)

(declare-fun d!248310 () Bool)

(assert (= bs!161460 (and d!248310 d!248190)))

(declare-fun lambda!23022 () Int)

(assert (=> bs!161460 (= lambda!23022 lambda!23000)))

(declare-fun bs!161461 () Bool)

(assert (= bs!161461 (and d!248310 d!248192)))

(assert (=> bs!161461 (= lambda!23022 lambda!23001)))

(declare-fun bs!161462 () Bool)

(assert (= bs!161462 (and d!248310 d!248176)))

(assert (=> bs!161462 (= lambda!23022 lambda!22997)))

(declare-fun bs!161463 () Bool)

(assert (= bs!161463 (and d!248310 d!248308)))

(assert (=> bs!161463 (= lambda!23022 lambda!23021)))

(declare-fun bs!161464 () Bool)

(assert (= bs!161464 (and d!248310 d!248260)))

(assert (=> bs!161464 (= lambda!23022 lambda!23008)))

(declare-fun bs!161465 () Bool)

(assert (= bs!161465 (and d!248310 d!248122)))

(assert (=> bs!161465 (= lambda!23022 lambda!22986)))

(declare-fun bs!161466 () Bool)

(assert (= bs!161466 (and d!248310 d!248220)))

(assert (=> bs!161466 (= lambda!23022 lambda!23003)))

(declare-fun bs!161467 () Bool)

(assert (= bs!161467 (and d!248310 d!248236)))

(assert (=> bs!161467 (= lambda!23022 lambda!23005)))

(declare-fun bs!161468 () Bool)

(assert (= bs!161468 (and d!248310 d!248230)))

(assert (=> bs!161468 (= lambda!23022 lambda!23004)))

(declare-fun bs!161469 () Bool)

(assert (= bs!161469 (and d!248310 d!248178)))

(assert (=> bs!161469 (= lambda!23022 lambda!22998)))

(declare-fun bs!161470 () Bool)

(assert (= bs!161470 (and d!248310 d!248246)))

(assert (=> bs!161470 (= lambda!23022 lambda!23006)))

(declare-fun bs!161471 () Bool)

(assert (= bs!161471 (and d!248310 d!248286)))

(assert (=> bs!161471 (= lambda!23022 lambda!23016)))

(declare-fun bs!161472 () Bool)

(assert (= bs!161472 (and d!248310 d!248106)))

(assert (=> bs!161472 (= lambda!23022 lambda!22985)))

(declare-fun bs!161473 () Bool)

(assert (= bs!161473 (and d!248310 d!248250)))

(assert (=> bs!161473 (= lambda!23022 lambda!23007)))

(declare-fun bs!161474 () Bool)

(assert (= bs!161474 (and d!248310 d!248198)))

(assert (=> bs!161474 (= lambda!23022 lambda!23002)))

(declare-fun bs!161475 () Bool)

(assert (= bs!161475 (and d!248310 d!248182)))

(assert (=> bs!161475 (= lambda!23022 lambda!22999)))

(declare-fun bs!161476 () Bool)

(assert (= bs!161476 (and d!248310 d!248166)))

(assert (=> bs!161476 (= lambda!23022 lambda!22995)))

(declare-fun bs!161477 () Bool)

(assert (= bs!161477 (and d!248310 d!248268)))

(assert (=> bs!161477 (= lambda!23022 lambda!23012)))

(declare-fun bs!161478 () Bool)

(assert (= bs!161478 (and d!248310 d!248102)))

(assert (=> bs!161478 (= lambda!23022 lambda!22984)))

(declare-fun bs!161479 () Bool)

(assert (= bs!161479 (and d!248310 d!248170)))

(assert (=> bs!161479 (= lambda!23022 lambda!22996)))

(declare-fun bs!161480 () Bool)

(assert (= bs!161480 (and d!248310 d!248128)))

(assert (=> bs!161480 (= lambda!23022 lambda!22990)))

(declare-fun bs!161481 () Bool)

(assert (= bs!161481 (and d!248310 d!248148)))

(assert (=> bs!161481 (= lambda!23022 lambda!22991)))

(declare-fun bs!161482 () Bool)

(assert (= bs!161482 (and d!248310 d!248288)))

(assert (=> bs!161482 (= lambda!23022 lambda!23017)))

(assert (=> d!248310 (= (inv!10657 setElem!6422) (forall!2027 (exprs!859 setElem!6422) lambda!23022))))

(declare-fun bs!161483 () Bool)

(assert (= bs!161483 d!248310))

(declare-fun m!1024647 () Bool)

(assert (=> bs!161483 m!1024647))

(assert (=> setNonEmpty!6422 d!248310))

(declare-fun d!248312 () Bool)

(declare-fun res!334030 () Bool)

(declare-fun e!486955 () Bool)

(assert (=> d!248312 (=> (not res!334030) (not e!486955))))

(assert (=> d!248312 (= res!334030 (<= (size!6824 (list!3391 (xs!5525 (c!128736 acc!372)))) 512))))

(assert (=> d!248312 (= (inv!10653 (c!128736 acc!372)) e!486955)))

(declare-fun b!758163 () Bool)

(declare-fun res!334031 () Bool)

(assert (=> b!758163 (=> (not res!334031) (not e!486955))))

(assert (=> b!758163 (= res!334031 (= (csize!5923 (c!128736 acc!372)) (size!6824 (list!3391 (xs!5525 (c!128736 acc!372))))))))

(declare-fun b!758164 () Bool)

(assert (=> b!758164 (= e!486955 (and (> (csize!5923 (c!128736 acc!372)) 0) (<= (csize!5923 (c!128736 acc!372)) 512)))))

(assert (= (and d!248312 res!334030) b!758163))

(assert (= (and b!758163 res!334031) b!758164))

(assert (=> d!248312 m!1024307))

(assert (=> d!248312 m!1024307))

(declare-fun m!1024649 () Bool)

(assert (=> d!248312 m!1024649))

(assert (=> b!758163 m!1024307))

(assert (=> b!758163 m!1024307))

(assert (=> b!758163 m!1024649))

(assert (=> b!757511 d!248312))

(declare-fun d!248314 () Bool)

(declare-fun c!128852 () Bool)

(assert (=> d!248314 (= c!128852 ((_ is Nil!8374) lt!308987))))

(declare-fun e!486958 () (InoxSet C!4516))

(assert (=> d!248314 (= (content!1250 lt!308987) e!486958)))

(declare-fun b!758169 () Bool)

(assert (=> b!758169 (= e!486958 ((as const (Array C!4516 Bool)) false))))

(declare-fun b!758170 () Bool)

(assert (=> b!758170 (= e!486958 ((_ map or) (store ((as const (Array C!4516 Bool)) false) (h!13775 lt!308987) true) (content!1250 (t!91118 lt!308987))))))

(assert (= (and d!248314 c!128852) b!758169))

(assert (= (and d!248314 (not c!128852)) b!758170))

(declare-fun m!1024651 () Bool)

(assert (=> b!758170 m!1024651))

(declare-fun m!1024653 () Bool)

(assert (=> b!758170 m!1024653))

(assert (=> d!248088 d!248314))

(declare-fun d!248316 () Bool)

(declare-fun c!128853 () Bool)

(assert (=> d!248316 (= c!128853 ((_ is Nil!8374) (list!3387 treated!50)))))

(declare-fun e!486959 () (InoxSet C!4516))

(assert (=> d!248316 (= (content!1250 (list!3387 treated!50)) e!486959)))

(declare-fun b!758171 () Bool)

(assert (=> b!758171 (= e!486959 ((as const (Array C!4516 Bool)) false))))

(declare-fun b!758172 () Bool)

(assert (=> b!758172 (= e!486959 ((_ map or) (store ((as const (Array C!4516 Bool)) false) (h!13775 (list!3387 treated!50)) true) (content!1250 (t!91118 (list!3387 treated!50)))))))

(assert (= (and d!248316 c!128853) b!758171))

(assert (= (and d!248316 (not c!128853)) b!758172))

(declare-fun m!1024655 () Bool)

(assert (=> b!758172 m!1024655))

(assert (=> b!758172 m!1024353))

(assert (=> d!248088 d!248316))

(declare-fun d!248318 () Bool)

(declare-fun c!128854 () Bool)

(assert (=> d!248318 (= c!128854 ((_ is Nil!8374) (list!3387 input!870)))))

(declare-fun e!486960 () (InoxSet C!4516))

(assert (=> d!248318 (= (content!1250 (list!3387 input!870)) e!486960)))

(declare-fun b!758173 () Bool)

(assert (=> b!758173 (= e!486960 ((as const (Array C!4516 Bool)) false))))

(declare-fun b!758174 () Bool)

(assert (=> b!758174 (= e!486960 ((_ map or) (store ((as const (Array C!4516 Bool)) false) (h!13775 (list!3387 input!870)) true) (content!1250 (t!91118 (list!3387 input!870)))))))

(assert (= (and d!248318 c!128854) b!758173))

(assert (= (and d!248318 (not c!128854)) b!758174))

(declare-fun m!1024657 () Bool)

(assert (=> b!758174 m!1024657))

(declare-fun m!1024659 () Bool)

(assert (=> b!758174 m!1024659))

(assert (=> d!248088 d!248318))

(declare-fun b!758175 () Bool)

(declare-fun e!486962 () Bool)

(assert (=> b!758175 (= e!486962 (not (isEmpty!5159 (right!6650 (c!128735 totalInput!378)))))))

(declare-fun b!758176 () Bool)

(declare-fun res!334032 () Bool)

(assert (=> b!758176 (=> (not res!334032) (not e!486962))))

(assert (=> b!758176 (= res!334032 (isBalanced!761 (right!6650 (c!128735 totalInput!378))))))

(declare-fun b!758177 () Bool)

(declare-fun res!334036 () Bool)

(assert (=> b!758177 (=> (not res!334036) (not e!486962))))

(assert (=> b!758177 (= res!334036 (<= (- (height!371 (left!6320 (c!128735 totalInput!378))) (height!371 (right!6650 (c!128735 totalInput!378)))) 1))))

(declare-fun d!248320 () Bool)

(declare-fun res!334033 () Bool)

(declare-fun e!486961 () Bool)

(assert (=> d!248320 (=> res!334033 e!486961)))

(assert (=> d!248320 (= res!334033 (not ((_ is Node!2845) (c!128735 totalInput!378))))))

(assert (=> d!248320 (= (isBalanced!761 (c!128735 totalInput!378)) e!486961)))

(declare-fun b!758178 () Bool)

(declare-fun res!334037 () Bool)

(assert (=> b!758178 (=> (not res!334037) (not e!486962))))

(assert (=> b!758178 (= res!334037 (isBalanced!761 (left!6320 (c!128735 totalInput!378))))))

(declare-fun b!758179 () Bool)

(assert (=> b!758179 (= e!486961 e!486962)))

(declare-fun res!334035 () Bool)

(assert (=> b!758179 (=> (not res!334035) (not e!486962))))

(assert (=> b!758179 (= res!334035 (<= (- 1) (- (height!371 (left!6320 (c!128735 totalInput!378))) (height!371 (right!6650 (c!128735 totalInput!378))))))))

(declare-fun b!758180 () Bool)

(declare-fun res!334034 () Bool)

(assert (=> b!758180 (=> (not res!334034) (not e!486962))))

(assert (=> b!758180 (= res!334034 (not (isEmpty!5159 (left!6320 (c!128735 totalInput!378)))))))

(assert (= (and d!248320 (not res!334033)) b!758179))

(assert (= (and b!758179 res!334035) b!758177))

(assert (= (and b!758177 res!334036) b!758178))

(assert (= (and b!758178 res!334037) b!758176))

(assert (= (and b!758176 res!334032) b!758180))

(assert (= (and b!758180 res!334034) b!758175))

(declare-fun m!1024661 () Bool)

(assert (=> b!758175 m!1024661))

(assert (=> b!758177 m!1024170))

(assert (=> b!758177 m!1024172))

(assert (=> b!758179 m!1024170))

(assert (=> b!758179 m!1024172))

(declare-fun m!1024663 () Bool)

(assert (=> b!758178 m!1024663))

(declare-fun m!1024665 () Bool)

(assert (=> b!758176 m!1024665))

(declare-fun m!1024667 () Bool)

(assert (=> b!758180 m!1024667))

(assert (=> d!248048 d!248320))

(declare-fun b!758181 () Bool)

(declare-fun e!486964 () Bool)

(assert (=> b!758181 (= e!486964 (not (isEmpty!5159 (right!6650 (c!128735 treated!50)))))))

(declare-fun b!758182 () Bool)

(declare-fun res!334038 () Bool)

(assert (=> b!758182 (=> (not res!334038) (not e!486964))))

(assert (=> b!758182 (= res!334038 (isBalanced!761 (right!6650 (c!128735 treated!50))))))

(declare-fun b!758183 () Bool)

(declare-fun res!334042 () Bool)

(assert (=> b!758183 (=> (not res!334042) (not e!486964))))

(assert (=> b!758183 (= res!334042 (<= (- (height!371 (left!6320 (c!128735 treated!50))) (height!371 (right!6650 (c!128735 treated!50)))) 1))))

(declare-fun d!248322 () Bool)

(declare-fun res!334039 () Bool)

(declare-fun e!486963 () Bool)

(assert (=> d!248322 (=> res!334039 e!486963)))

(assert (=> d!248322 (= res!334039 (not ((_ is Node!2845) (c!128735 treated!50))))))

(assert (=> d!248322 (= (isBalanced!761 (c!128735 treated!50)) e!486963)))

(declare-fun b!758184 () Bool)

(declare-fun res!334043 () Bool)

(assert (=> b!758184 (=> (not res!334043) (not e!486964))))

(assert (=> b!758184 (= res!334043 (isBalanced!761 (left!6320 (c!128735 treated!50))))))

(declare-fun b!758185 () Bool)

(assert (=> b!758185 (= e!486963 e!486964)))

(declare-fun res!334041 () Bool)

(assert (=> b!758185 (=> (not res!334041) (not e!486964))))

(assert (=> b!758185 (= res!334041 (<= (- 1) (- (height!371 (left!6320 (c!128735 treated!50))) (height!371 (right!6650 (c!128735 treated!50))))))))

(declare-fun b!758186 () Bool)

(declare-fun res!334040 () Bool)

(assert (=> b!758186 (=> (not res!334040) (not e!486964))))

(assert (=> b!758186 (= res!334040 (not (isEmpty!5159 (left!6320 (c!128735 treated!50)))))))

(assert (= (and d!248322 (not res!334039)) b!758185))

(assert (= (and b!758185 res!334041) b!758183))

(assert (= (and b!758183 res!334042) b!758184))

(assert (= (and b!758184 res!334043) b!758182))

(assert (= (and b!758182 res!334038) b!758186))

(assert (= (and b!758186 res!334040) b!758181))

(declare-fun m!1024669 () Bool)

(assert (=> b!758181 m!1024669))

(assert (=> b!758183 m!1024233))

(assert (=> b!758183 m!1024235))

(assert (=> b!758185 m!1024233))

(assert (=> b!758185 m!1024235))

(declare-fun m!1024671 () Bool)

(assert (=> b!758184 m!1024671))

(declare-fun m!1024673 () Bool)

(assert (=> b!758182 m!1024673))

(declare-fun m!1024675 () Bool)

(assert (=> b!758186 m!1024675))

(assert (=> d!248044 d!248322))

(declare-fun bs!161484 () Bool)

(declare-fun d!248324 () Bool)

(assert (= bs!161484 (and d!248324 d!248190)))

(declare-fun lambda!23023 () Int)

(assert (=> bs!161484 (= lambda!23023 lambda!23000)))

(declare-fun bs!161485 () Bool)

(assert (= bs!161485 (and d!248324 d!248192)))

(assert (=> bs!161485 (= lambda!23023 lambda!23001)))

(declare-fun bs!161486 () Bool)

(assert (= bs!161486 (and d!248324 d!248176)))

(assert (=> bs!161486 (= lambda!23023 lambda!22997)))

(declare-fun bs!161487 () Bool)

(assert (= bs!161487 (and d!248324 d!248310)))

(assert (=> bs!161487 (= lambda!23023 lambda!23022)))

(declare-fun bs!161488 () Bool)

(assert (= bs!161488 (and d!248324 d!248308)))

(assert (=> bs!161488 (= lambda!23023 lambda!23021)))

(declare-fun bs!161489 () Bool)

(assert (= bs!161489 (and d!248324 d!248260)))

(assert (=> bs!161489 (= lambda!23023 lambda!23008)))

(declare-fun bs!161490 () Bool)

(assert (= bs!161490 (and d!248324 d!248122)))

(assert (=> bs!161490 (= lambda!23023 lambda!22986)))

(declare-fun bs!161491 () Bool)

(assert (= bs!161491 (and d!248324 d!248220)))

(assert (=> bs!161491 (= lambda!23023 lambda!23003)))

(declare-fun bs!161492 () Bool)

(assert (= bs!161492 (and d!248324 d!248236)))

(assert (=> bs!161492 (= lambda!23023 lambda!23005)))

(declare-fun bs!161493 () Bool)

(assert (= bs!161493 (and d!248324 d!248230)))

(assert (=> bs!161493 (= lambda!23023 lambda!23004)))

(declare-fun bs!161494 () Bool)

(assert (= bs!161494 (and d!248324 d!248178)))

(assert (=> bs!161494 (= lambda!23023 lambda!22998)))

(declare-fun bs!161495 () Bool)

(assert (= bs!161495 (and d!248324 d!248246)))

(assert (=> bs!161495 (= lambda!23023 lambda!23006)))

(declare-fun bs!161496 () Bool)

(assert (= bs!161496 (and d!248324 d!248286)))

(assert (=> bs!161496 (= lambda!23023 lambda!23016)))

(declare-fun bs!161497 () Bool)

(assert (= bs!161497 (and d!248324 d!248106)))

(assert (=> bs!161497 (= lambda!23023 lambda!22985)))

(declare-fun bs!161498 () Bool)

(assert (= bs!161498 (and d!248324 d!248250)))

(assert (=> bs!161498 (= lambda!23023 lambda!23007)))

(declare-fun bs!161499 () Bool)

(assert (= bs!161499 (and d!248324 d!248198)))

(assert (=> bs!161499 (= lambda!23023 lambda!23002)))

(declare-fun bs!161500 () Bool)

(assert (= bs!161500 (and d!248324 d!248182)))

(assert (=> bs!161500 (= lambda!23023 lambda!22999)))

(declare-fun bs!161501 () Bool)

(assert (= bs!161501 (and d!248324 d!248166)))

(assert (=> bs!161501 (= lambda!23023 lambda!22995)))

(declare-fun bs!161502 () Bool)

(assert (= bs!161502 (and d!248324 d!248268)))

(assert (=> bs!161502 (= lambda!23023 lambda!23012)))

(declare-fun bs!161503 () Bool)

(assert (= bs!161503 (and d!248324 d!248102)))

(assert (=> bs!161503 (= lambda!23023 lambda!22984)))

(declare-fun bs!161504 () Bool)

(assert (= bs!161504 (and d!248324 d!248170)))

(assert (=> bs!161504 (= lambda!23023 lambda!22996)))

(declare-fun bs!161505 () Bool)

(assert (= bs!161505 (and d!248324 d!248128)))

(assert (=> bs!161505 (= lambda!23023 lambda!22990)))

(declare-fun bs!161506 () Bool)

(assert (= bs!161506 (and d!248324 d!248148)))

(assert (=> bs!161506 (= lambda!23023 lambda!22991)))

(declare-fun bs!161507 () Bool)

(assert (= bs!161507 (and d!248324 d!248288)))

(assert (=> bs!161507 (= lambda!23023 lambda!23017)))

(assert (=> d!248324 (= (inv!10657 setElem!6412) (forall!2027 (exprs!859 setElem!6412) lambda!23023))))

(declare-fun bs!161508 () Bool)

(assert (= bs!161508 d!248324))

(declare-fun m!1024677 () Bool)

(assert (=> bs!161508 m!1024677))

(assert (=> setNonEmpty!6413 d!248324))

(assert (=> b!757549 d!248130))

(assert (=> b!757549 d!248132))

(assert (=> b!757549 d!248134))

(assert (=> b!757549 d!248136))

(assert (=> b!757549 d!248138))

(declare-fun bs!161509 () Bool)

(declare-fun d!248326 () Bool)

(assert (= bs!161509 (and d!248326 d!248324)))

(declare-fun lambda!23024 () Int)

(assert (=> bs!161509 (= lambda!23024 lambda!23023)))

(declare-fun bs!161510 () Bool)

(assert (= bs!161510 (and d!248326 d!248190)))

(assert (=> bs!161510 (= lambda!23024 lambda!23000)))

(declare-fun bs!161511 () Bool)

(assert (= bs!161511 (and d!248326 d!248192)))

(assert (=> bs!161511 (= lambda!23024 lambda!23001)))

(declare-fun bs!161512 () Bool)

(assert (= bs!161512 (and d!248326 d!248176)))

(assert (=> bs!161512 (= lambda!23024 lambda!22997)))

(declare-fun bs!161513 () Bool)

(assert (= bs!161513 (and d!248326 d!248310)))

(assert (=> bs!161513 (= lambda!23024 lambda!23022)))

(declare-fun bs!161514 () Bool)

(assert (= bs!161514 (and d!248326 d!248308)))

(assert (=> bs!161514 (= lambda!23024 lambda!23021)))

(declare-fun bs!161515 () Bool)

(assert (= bs!161515 (and d!248326 d!248260)))

(assert (=> bs!161515 (= lambda!23024 lambda!23008)))

(declare-fun bs!161516 () Bool)

(assert (= bs!161516 (and d!248326 d!248122)))

(assert (=> bs!161516 (= lambda!23024 lambda!22986)))

(declare-fun bs!161517 () Bool)

(assert (= bs!161517 (and d!248326 d!248220)))

(assert (=> bs!161517 (= lambda!23024 lambda!23003)))

(declare-fun bs!161518 () Bool)

(assert (= bs!161518 (and d!248326 d!248236)))

(assert (=> bs!161518 (= lambda!23024 lambda!23005)))

(declare-fun bs!161519 () Bool)

(assert (= bs!161519 (and d!248326 d!248230)))

(assert (=> bs!161519 (= lambda!23024 lambda!23004)))

(declare-fun bs!161520 () Bool)

(assert (= bs!161520 (and d!248326 d!248178)))

(assert (=> bs!161520 (= lambda!23024 lambda!22998)))

(declare-fun bs!161521 () Bool)

(assert (= bs!161521 (and d!248326 d!248246)))

(assert (=> bs!161521 (= lambda!23024 lambda!23006)))

(declare-fun bs!161522 () Bool)

(assert (= bs!161522 (and d!248326 d!248286)))

(assert (=> bs!161522 (= lambda!23024 lambda!23016)))

(declare-fun bs!161523 () Bool)

(assert (= bs!161523 (and d!248326 d!248106)))

(assert (=> bs!161523 (= lambda!23024 lambda!22985)))

(declare-fun bs!161524 () Bool)

(assert (= bs!161524 (and d!248326 d!248250)))

(assert (=> bs!161524 (= lambda!23024 lambda!23007)))

(declare-fun bs!161525 () Bool)

(assert (= bs!161525 (and d!248326 d!248198)))

(assert (=> bs!161525 (= lambda!23024 lambda!23002)))

(declare-fun bs!161526 () Bool)

(assert (= bs!161526 (and d!248326 d!248182)))

(assert (=> bs!161526 (= lambda!23024 lambda!22999)))

(declare-fun bs!161527 () Bool)

(assert (= bs!161527 (and d!248326 d!248166)))

(assert (=> bs!161527 (= lambda!23024 lambda!22995)))

(declare-fun bs!161528 () Bool)

(assert (= bs!161528 (and d!248326 d!248268)))

(assert (=> bs!161528 (= lambda!23024 lambda!23012)))

(declare-fun bs!161529 () Bool)

(assert (= bs!161529 (and d!248326 d!248102)))

(assert (=> bs!161529 (= lambda!23024 lambda!22984)))

(declare-fun bs!161530 () Bool)

(assert (= bs!161530 (and d!248326 d!248170)))

(assert (=> bs!161530 (= lambda!23024 lambda!22996)))

(declare-fun bs!161531 () Bool)

(assert (= bs!161531 (and d!248326 d!248128)))

(assert (=> bs!161531 (= lambda!23024 lambda!22990)))

(declare-fun bs!161532 () Bool)

(assert (= bs!161532 (and d!248326 d!248148)))

(assert (=> bs!161532 (= lambda!23024 lambda!22991)))

(declare-fun bs!161533 () Bool)

(assert (= bs!161533 (and d!248326 d!248288)))

(assert (=> bs!161533 (= lambda!23024 lambda!23017)))

(assert (=> d!248326 (= (inv!10657 setElem!6432) (forall!2027 (exprs!859 setElem!6432) lambda!23024))))

(declare-fun bs!161534 () Bool)

(assert (= bs!161534 d!248326))

(declare-fun m!1024679 () Bool)

(assert (=> bs!161534 m!1024679))

(assert (=> setNonEmpty!6432 d!248326))

(assert (=> b!757533 d!248194))

(assert (=> b!757533 d!248086))

(declare-fun bs!161535 () Bool)

(declare-fun d!248328 () Bool)

(assert (= bs!161535 (and d!248328 d!248190)))

(declare-fun lambda!23025 () Int)

(assert (=> bs!161535 (= lambda!23025 lambda!23000)))

(declare-fun bs!161536 () Bool)

(assert (= bs!161536 (and d!248328 d!248192)))

(assert (=> bs!161536 (= lambda!23025 lambda!23001)))

(declare-fun bs!161537 () Bool)

(assert (= bs!161537 (and d!248328 d!248176)))

(assert (=> bs!161537 (= lambda!23025 lambda!22997)))

(declare-fun bs!161538 () Bool)

(assert (= bs!161538 (and d!248328 d!248310)))

(assert (=> bs!161538 (= lambda!23025 lambda!23022)))

(declare-fun bs!161539 () Bool)

(assert (= bs!161539 (and d!248328 d!248308)))

(assert (=> bs!161539 (= lambda!23025 lambda!23021)))

(declare-fun bs!161540 () Bool)

(assert (= bs!161540 (and d!248328 d!248260)))

(assert (=> bs!161540 (= lambda!23025 lambda!23008)))

(declare-fun bs!161541 () Bool)

(assert (= bs!161541 (and d!248328 d!248122)))

(assert (=> bs!161541 (= lambda!23025 lambda!22986)))

(declare-fun bs!161542 () Bool)

(assert (= bs!161542 (and d!248328 d!248220)))

(assert (=> bs!161542 (= lambda!23025 lambda!23003)))

(declare-fun bs!161543 () Bool)

(assert (= bs!161543 (and d!248328 d!248236)))

(assert (=> bs!161543 (= lambda!23025 lambda!23005)))

(declare-fun bs!161544 () Bool)

(assert (= bs!161544 (and d!248328 d!248230)))

(assert (=> bs!161544 (= lambda!23025 lambda!23004)))

(declare-fun bs!161545 () Bool)

(assert (= bs!161545 (and d!248328 d!248178)))

(assert (=> bs!161545 (= lambda!23025 lambda!22998)))

(declare-fun bs!161546 () Bool)

(assert (= bs!161546 (and d!248328 d!248246)))

(assert (=> bs!161546 (= lambda!23025 lambda!23006)))

(declare-fun bs!161547 () Bool)

(assert (= bs!161547 (and d!248328 d!248286)))

(assert (=> bs!161547 (= lambda!23025 lambda!23016)))

(declare-fun bs!161548 () Bool)

(assert (= bs!161548 (and d!248328 d!248106)))

(assert (=> bs!161548 (= lambda!23025 lambda!22985)))

(declare-fun bs!161549 () Bool)

(assert (= bs!161549 (and d!248328 d!248324)))

(assert (=> bs!161549 (= lambda!23025 lambda!23023)))

(declare-fun bs!161550 () Bool)

(assert (= bs!161550 (and d!248328 d!248326)))

(assert (=> bs!161550 (= lambda!23025 lambda!23024)))

(declare-fun bs!161551 () Bool)

(assert (= bs!161551 (and d!248328 d!248250)))

(assert (=> bs!161551 (= lambda!23025 lambda!23007)))

(declare-fun bs!161552 () Bool)

(assert (= bs!161552 (and d!248328 d!248198)))

(assert (=> bs!161552 (= lambda!23025 lambda!23002)))

(declare-fun bs!161553 () Bool)

(assert (= bs!161553 (and d!248328 d!248182)))

(assert (=> bs!161553 (= lambda!23025 lambda!22999)))

(declare-fun bs!161554 () Bool)

(assert (= bs!161554 (and d!248328 d!248166)))

(assert (=> bs!161554 (= lambda!23025 lambda!22995)))

(declare-fun bs!161555 () Bool)

(assert (= bs!161555 (and d!248328 d!248268)))

(assert (=> bs!161555 (= lambda!23025 lambda!23012)))

(declare-fun bs!161556 () Bool)

(assert (= bs!161556 (and d!248328 d!248102)))

(assert (=> bs!161556 (= lambda!23025 lambda!22984)))

(declare-fun bs!161557 () Bool)

(assert (= bs!161557 (and d!248328 d!248170)))

(assert (=> bs!161557 (= lambda!23025 lambda!22996)))

(declare-fun bs!161558 () Bool)

(assert (= bs!161558 (and d!248328 d!248128)))

(assert (=> bs!161558 (= lambda!23025 lambda!22990)))

(declare-fun bs!161559 () Bool)

(assert (= bs!161559 (and d!248328 d!248148)))

(assert (=> bs!161559 (= lambda!23025 lambda!22991)))

(declare-fun bs!161560 () Bool)

(assert (= bs!161560 (and d!248328 d!248288)))

(assert (=> bs!161560 (= lambda!23025 lambda!23017)))

(assert (=> d!248328 (= (inv!10657 setElem!6405) (forall!2027 (exprs!859 setElem!6405) lambda!23025))))

(declare-fun bs!161561 () Bool)

(assert (= bs!161561 d!248328))

(declare-fun m!1024681 () Bool)

(assert (=> bs!161561 m!1024681))

(assert (=> setNonEmpty!6406 d!248328))

(declare-fun d!248330 () Bool)

(declare-fun res!334044 () Bool)

(declare-fun e!486965 () Bool)

(assert (=> d!248330 (=> (not res!334044) (not e!486965))))

(assert (=> d!248330 (= res!334044 (<= (size!6822 (list!3390 (xs!5524 (c!128735 (totalInput!2062 cacheFindLongestMatch!74))))) 512))))

(assert (=> d!248330 (= (inv!10655 (c!128735 (totalInput!2062 cacheFindLongestMatch!74))) e!486965)))

(declare-fun b!758187 () Bool)

(declare-fun res!334045 () Bool)

(assert (=> b!758187 (=> (not res!334045) (not e!486965))))

(assert (=> b!758187 (= res!334045 (= (csize!5921 (c!128735 (totalInput!2062 cacheFindLongestMatch!74))) (size!6822 (list!3390 (xs!5524 (c!128735 (totalInput!2062 cacheFindLongestMatch!74)))))))))

(declare-fun b!758188 () Bool)

(assert (=> b!758188 (= e!486965 (and (> (csize!5921 (c!128735 (totalInput!2062 cacheFindLongestMatch!74))) 0) (<= (csize!5921 (c!128735 (totalInput!2062 cacheFindLongestMatch!74))) 512)))))

(assert (= (and d!248330 res!334044) b!758187))

(assert (= (and b!758187 res!334045) b!758188))

(declare-fun m!1024683 () Bool)

(assert (=> d!248330 m!1024683))

(assert (=> d!248330 m!1024683))

(declare-fun m!1024685 () Bool)

(assert (=> d!248330 m!1024685))

(assert (=> b!758187 m!1024683))

(assert (=> b!758187 m!1024683))

(assert (=> b!758187 m!1024685))

(assert (=> b!757572 d!248330))

(assert (=> b!757532 d!248232))

(assert (=> b!757532 d!248156))

(assert (=> b!757532 d!248092))

(declare-fun d!248332 () Bool)

(assert (=> d!248332 true))

(declare-fun order!5537 () Int)

(declare-fun order!5535 () Int)

(declare-fun lambda!23028 () Int)

(declare-fun dynLambda!4022 (Int Int) Int)

(declare-fun dynLambda!4023 (Int Int) Int)

(assert (=> d!248332 (< (dynLambda!4022 order!5535 (toChars!2455 (transformation!1610 (h!13777 rules!1486)))) (dynLambda!4023 order!5537 lambda!23028))))

(assert (=> d!248332 true))

(assert (=> d!248332 (< (dynLambda!4020 order!5531 (toValue!2596 (transformation!1610 (h!13777 rules!1486)))) (dynLambda!4023 order!5537 lambda!23028))))

(declare-fun Forall!369 (Int) Bool)

(assert (=> d!248332 (= (semiInverseModEq!603 (toChars!2455 (transformation!1610 (h!13777 rules!1486))) (toValue!2596 (transformation!1610 (h!13777 rules!1486)))) (Forall!369 lambda!23028))))

(declare-fun bs!161562 () Bool)

(assert (= bs!161562 d!248332))

(declare-fun m!1024687 () Bool)

(assert (=> bs!161562 m!1024687))

(assert (=> d!248098 d!248332))

(declare-fun b!758196 () Bool)

(declare-fun e!486967 () List!8388)

(assert (=> b!758196 (= e!486967 (++!2196 (list!3389 (left!6320 (c!128735 input!870))) (list!3389 (right!6650 (c!128735 input!870)))))))

(declare-fun b!758195 () Bool)

(assert (=> b!758195 (= e!486967 (list!3390 (xs!5524 (c!128735 input!870))))))

(declare-fun d!248334 () Bool)

(declare-fun c!128855 () Bool)

(assert (=> d!248334 (= c!128855 ((_ is Empty!2845) (c!128735 input!870)))))

(declare-fun e!486966 () List!8388)

(assert (=> d!248334 (= (list!3389 (c!128735 input!870)) e!486966)))

(declare-fun b!758193 () Bool)

(assert (=> b!758193 (= e!486966 Nil!8374)))

(declare-fun b!758194 () Bool)

(assert (=> b!758194 (= e!486966 e!486967)))

(declare-fun c!128856 () Bool)

(assert (=> b!758194 (= c!128856 ((_ is Leaf!4177) (c!128735 input!870)))))

(assert (= (and d!248334 c!128855) b!758193))

(assert (= (and d!248334 (not c!128855)) b!758194))

(assert (= (and b!758194 c!128856) b!758195))

(assert (= (and b!758194 (not c!128856)) b!758196))

(declare-fun m!1024689 () Bool)

(assert (=> b!758196 m!1024689))

(declare-fun m!1024691 () Bool)

(assert (=> b!758196 m!1024691))

(assert (=> b!758196 m!1024689))

(assert (=> b!758196 m!1024691))

(declare-fun m!1024693 () Bool)

(assert (=> b!758196 m!1024693))

(assert (=> b!758195 m!1024599))

(assert (=> d!248092 d!248334))

(assert (=> b!757560 d!248152))

(assert (=> b!757557 d!248266))

(declare-fun bs!161563 () Bool)

(declare-fun d!248336 () Bool)

(assert (= bs!161563 (and d!248336 d!248190)))

(declare-fun lambda!23029 () Int)

(assert (=> bs!161563 (= lambda!23029 lambda!23000)))

(declare-fun bs!161564 () Bool)

(assert (= bs!161564 (and d!248336 d!248192)))

(assert (=> bs!161564 (= lambda!23029 lambda!23001)))

(declare-fun bs!161565 () Bool)

(assert (= bs!161565 (and d!248336 d!248176)))

(assert (=> bs!161565 (= lambda!23029 lambda!22997)))

(declare-fun bs!161566 () Bool)

(assert (= bs!161566 (and d!248336 d!248310)))

(assert (=> bs!161566 (= lambda!23029 lambda!23022)))

(declare-fun bs!161567 () Bool)

(assert (= bs!161567 (and d!248336 d!248260)))

(assert (=> bs!161567 (= lambda!23029 lambda!23008)))

(declare-fun bs!161568 () Bool)

(assert (= bs!161568 (and d!248336 d!248122)))

(assert (=> bs!161568 (= lambda!23029 lambda!22986)))

(declare-fun bs!161569 () Bool)

(assert (= bs!161569 (and d!248336 d!248220)))

(assert (=> bs!161569 (= lambda!23029 lambda!23003)))

(declare-fun bs!161570 () Bool)

(assert (= bs!161570 (and d!248336 d!248236)))

(assert (=> bs!161570 (= lambda!23029 lambda!23005)))

(declare-fun bs!161571 () Bool)

(assert (= bs!161571 (and d!248336 d!248230)))

(assert (=> bs!161571 (= lambda!23029 lambda!23004)))

(declare-fun bs!161572 () Bool)

(assert (= bs!161572 (and d!248336 d!248178)))

(assert (=> bs!161572 (= lambda!23029 lambda!22998)))

(declare-fun bs!161573 () Bool)

(assert (= bs!161573 (and d!248336 d!248246)))

(assert (=> bs!161573 (= lambda!23029 lambda!23006)))

(declare-fun bs!161574 () Bool)

(assert (= bs!161574 (and d!248336 d!248286)))

(assert (=> bs!161574 (= lambda!23029 lambda!23016)))

(declare-fun bs!161575 () Bool)

(assert (= bs!161575 (and d!248336 d!248106)))

(assert (=> bs!161575 (= lambda!23029 lambda!22985)))

(declare-fun bs!161576 () Bool)

(assert (= bs!161576 (and d!248336 d!248324)))

(assert (=> bs!161576 (= lambda!23029 lambda!23023)))

(declare-fun bs!161577 () Bool)

(assert (= bs!161577 (and d!248336 d!248326)))

(assert (=> bs!161577 (= lambda!23029 lambda!23024)))

(declare-fun bs!161578 () Bool)

(assert (= bs!161578 (and d!248336 d!248250)))

(assert (=> bs!161578 (= lambda!23029 lambda!23007)))

(declare-fun bs!161579 () Bool)

(assert (= bs!161579 (and d!248336 d!248198)))

(assert (=> bs!161579 (= lambda!23029 lambda!23002)))

(declare-fun bs!161580 () Bool)

(assert (= bs!161580 (and d!248336 d!248328)))

(assert (=> bs!161580 (= lambda!23029 lambda!23025)))

(declare-fun bs!161581 () Bool)

(assert (= bs!161581 (and d!248336 d!248308)))

(assert (=> bs!161581 (= lambda!23029 lambda!23021)))

(declare-fun bs!161582 () Bool)

(assert (= bs!161582 (and d!248336 d!248182)))

(assert (=> bs!161582 (= lambda!23029 lambda!22999)))

(declare-fun bs!161583 () Bool)

(assert (= bs!161583 (and d!248336 d!248166)))

(assert (=> bs!161583 (= lambda!23029 lambda!22995)))

(declare-fun bs!161584 () Bool)

(assert (= bs!161584 (and d!248336 d!248268)))

(assert (=> bs!161584 (= lambda!23029 lambda!23012)))

(declare-fun bs!161585 () Bool)

(assert (= bs!161585 (and d!248336 d!248102)))

(assert (=> bs!161585 (= lambda!23029 lambda!22984)))

(declare-fun bs!161586 () Bool)

(assert (= bs!161586 (and d!248336 d!248170)))

(assert (=> bs!161586 (= lambda!23029 lambda!22996)))

(declare-fun bs!161587 () Bool)

(assert (= bs!161587 (and d!248336 d!248128)))

(assert (=> bs!161587 (= lambda!23029 lambda!22990)))

(declare-fun bs!161588 () Bool)

(assert (= bs!161588 (and d!248336 d!248148)))

(assert (=> bs!161588 (= lambda!23029 lambda!22991)))

(declare-fun bs!161589 () Bool)

(assert (= bs!161589 (and d!248336 d!248288)))

(assert (=> bs!161589 (= lambda!23029 lambda!23017)))

(assert (=> d!248336 (= (inv!10657 setElem!6418) (forall!2027 (exprs!859 setElem!6418) lambda!23029))))

(declare-fun bs!161590 () Bool)

(assert (= bs!161590 d!248336))

(declare-fun m!1024695 () Bool)

(assert (=> bs!161590 m!1024695))

(assert (=> setNonEmpty!6418 d!248336))

(declare-fun bs!161591 () Bool)

(declare-fun d!248338 () Bool)

(assert (= bs!161591 (and d!248338 d!248190)))

(declare-fun lambda!23030 () Int)

(assert (=> bs!161591 (= lambda!23030 lambda!23000)))

(declare-fun bs!161592 () Bool)

(assert (= bs!161592 (and d!248338 d!248192)))

(assert (=> bs!161592 (= lambda!23030 lambda!23001)))

(declare-fun bs!161593 () Bool)

(assert (= bs!161593 (and d!248338 d!248176)))

(assert (=> bs!161593 (= lambda!23030 lambda!22997)))

(declare-fun bs!161594 () Bool)

(assert (= bs!161594 (and d!248338 d!248310)))

(assert (=> bs!161594 (= lambda!23030 lambda!23022)))

(declare-fun bs!161595 () Bool)

(assert (= bs!161595 (and d!248338 d!248260)))

(assert (=> bs!161595 (= lambda!23030 lambda!23008)))

(declare-fun bs!161596 () Bool)

(assert (= bs!161596 (and d!248338 d!248122)))

(assert (=> bs!161596 (= lambda!23030 lambda!22986)))

(declare-fun bs!161597 () Bool)

(assert (= bs!161597 (and d!248338 d!248220)))

(assert (=> bs!161597 (= lambda!23030 lambda!23003)))

(declare-fun bs!161598 () Bool)

(assert (= bs!161598 (and d!248338 d!248236)))

(assert (=> bs!161598 (= lambda!23030 lambda!23005)))

(declare-fun bs!161599 () Bool)

(assert (= bs!161599 (and d!248338 d!248230)))

(assert (=> bs!161599 (= lambda!23030 lambda!23004)))

(declare-fun bs!161600 () Bool)

(assert (= bs!161600 (and d!248338 d!248178)))

(assert (=> bs!161600 (= lambda!23030 lambda!22998)))

(declare-fun bs!161601 () Bool)

(assert (= bs!161601 (and d!248338 d!248246)))

(assert (=> bs!161601 (= lambda!23030 lambda!23006)))

(declare-fun bs!161602 () Bool)

(assert (= bs!161602 (and d!248338 d!248286)))

(assert (=> bs!161602 (= lambda!23030 lambda!23016)))

(declare-fun bs!161603 () Bool)

(assert (= bs!161603 (and d!248338 d!248106)))

(assert (=> bs!161603 (= lambda!23030 lambda!22985)))

(declare-fun bs!161604 () Bool)

(assert (= bs!161604 (and d!248338 d!248324)))

(assert (=> bs!161604 (= lambda!23030 lambda!23023)))

(declare-fun bs!161605 () Bool)

(assert (= bs!161605 (and d!248338 d!248326)))

(assert (=> bs!161605 (= lambda!23030 lambda!23024)))

(declare-fun bs!161606 () Bool)

(assert (= bs!161606 (and d!248338 d!248250)))

(assert (=> bs!161606 (= lambda!23030 lambda!23007)))

(declare-fun bs!161607 () Bool)

(assert (= bs!161607 (and d!248338 d!248198)))

(assert (=> bs!161607 (= lambda!23030 lambda!23002)))

(declare-fun bs!161608 () Bool)

(assert (= bs!161608 (and d!248338 d!248328)))

(assert (=> bs!161608 (= lambda!23030 lambda!23025)))

(declare-fun bs!161609 () Bool)

(assert (= bs!161609 (and d!248338 d!248308)))

(assert (=> bs!161609 (= lambda!23030 lambda!23021)))

(declare-fun bs!161610 () Bool)

(assert (= bs!161610 (and d!248338 d!248182)))

(assert (=> bs!161610 (= lambda!23030 lambda!22999)))

(declare-fun bs!161611 () Bool)

(assert (= bs!161611 (and d!248338 d!248166)))

(assert (=> bs!161611 (= lambda!23030 lambda!22995)))

(declare-fun bs!161612 () Bool)

(assert (= bs!161612 (and d!248338 d!248336)))

(assert (=> bs!161612 (= lambda!23030 lambda!23029)))

(declare-fun bs!161613 () Bool)

(assert (= bs!161613 (and d!248338 d!248268)))

(assert (=> bs!161613 (= lambda!23030 lambda!23012)))

(declare-fun bs!161614 () Bool)

(assert (= bs!161614 (and d!248338 d!248102)))

(assert (=> bs!161614 (= lambda!23030 lambda!22984)))

(declare-fun bs!161615 () Bool)

(assert (= bs!161615 (and d!248338 d!248170)))

(assert (=> bs!161615 (= lambda!23030 lambda!22996)))

(declare-fun bs!161616 () Bool)

(assert (= bs!161616 (and d!248338 d!248128)))

(assert (=> bs!161616 (= lambda!23030 lambda!22990)))

(declare-fun bs!161617 () Bool)

(assert (= bs!161617 (and d!248338 d!248148)))

(assert (=> bs!161617 (= lambda!23030 lambda!22991)))

(declare-fun bs!161618 () Bool)

(assert (= bs!161618 (and d!248338 d!248288)))

(assert (=> bs!161618 (= lambda!23030 lambda!23017)))

(assert (=> d!248338 (= (inv!10657 setElem!6406) (forall!2027 (exprs!859 setElem!6406) lambda!23030))))

(declare-fun bs!161619 () Bool)

(assert (= bs!161619 d!248338))

(declare-fun m!1024697 () Bool)

(assert (=> bs!161619 m!1024697))

(assert (=> setNonEmpty!6405 d!248338))

(declare-fun d!248340 () Bool)

(declare-fun c!128857 () Bool)

(assert (=> d!248340 (= c!128857 ((_ is Node!2845) (left!6320 (c!128735 input!870))))))

(declare-fun e!486968 () Bool)

(assert (=> d!248340 (= (inv!10644 (left!6320 (c!128735 input!870))) e!486968)))

(declare-fun b!758197 () Bool)

(assert (=> b!758197 (= e!486968 (inv!10654 (left!6320 (c!128735 input!870))))))

(declare-fun b!758198 () Bool)

(declare-fun e!486969 () Bool)

(assert (=> b!758198 (= e!486968 e!486969)))

(declare-fun res!334046 () Bool)

(assert (=> b!758198 (= res!334046 (not ((_ is Leaf!4177) (left!6320 (c!128735 input!870)))))))

(assert (=> b!758198 (=> res!334046 e!486969)))

(declare-fun b!758199 () Bool)

(assert (=> b!758199 (= e!486969 (inv!10655 (left!6320 (c!128735 input!870))))))

(assert (= (and d!248340 c!128857) b!758197))

(assert (= (and d!248340 (not c!128857)) b!758198))

(assert (= (and b!758198 (not res!334046)) b!758199))

(declare-fun m!1024699 () Bool)

(assert (=> b!758197 m!1024699))

(declare-fun m!1024701 () Bool)

(assert (=> b!758199 m!1024701))

(assert (=> b!757660 d!248340))

(declare-fun d!248342 () Bool)

(declare-fun c!128858 () Bool)

(assert (=> d!248342 (= c!128858 ((_ is Node!2845) (right!6650 (c!128735 input!870))))))

(declare-fun e!486970 () Bool)

(assert (=> d!248342 (= (inv!10644 (right!6650 (c!128735 input!870))) e!486970)))

(declare-fun b!758200 () Bool)

(assert (=> b!758200 (= e!486970 (inv!10654 (right!6650 (c!128735 input!870))))))

(declare-fun b!758201 () Bool)

(declare-fun e!486971 () Bool)

(assert (=> b!758201 (= e!486970 e!486971)))

(declare-fun res!334047 () Bool)

(assert (=> b!758201 (= res!334047 (not ((_ is Leaf!4177) (right!6650 (c!128735 input!870)))))))

(assert (=> b!758201 (=> res!334047 e!486971)))

(declare-fun b!758202 () Bool)

(assert (=> b!758202 (= e!486971 (inv!10655 (right!6650 (c!128735 input!870))))))

(assert (= (and d!248342 c!128858) b!758200))

(assert (= (and d!248342 (not c!128858)) b!758201))

(assert (= (and b!758201 (not res!334047)) b!758202))

(declare-fun m!1024703 () Bool)

(assert (=> b!758200 m!1024703))

(declare-fun m!1024705 () Bool)

(assert (=> b!758202 m!1024705))

(assert (=> b!757660 d!248342))

(declare-fun bs!161620 () Bool)

(declare-fun d!248344 () Bool)

(assert (= bs!161620 (and d!248344 d!248190)))

(declare-fun lambda!23031 () Int)

(assert (=> bs!161620 (= lambda!23031 lambda!23000)))

(declare-fun bs!161621 () Bool)

(assert (= bs!161621 (and d!248344 d!248192)))

(assert (=> bs!161621 (= lambda!23031 lambda!23001)))

(declare-fun bs!161622 () Bool)

(assert (= bs!161622 (and d!248344 d!248176)))

(assert (=> bs!161622 (= lambda!23031 lambda!22997)))

(declare-fun bs!161623 () Bool)

(assert (= bs!161623 (and d!248344 d!248310)))

(assert (=> bs!161623 (= lambda!23031 lambda!23022)))

(declare-fun bs!161624 () Bool)

(assert (= bs!161624 (and d!248344 d!248260)))

(assert (=> bs!161624 (= lambda!23031 lambda!23008)))

(declare-fun bs!161625 () Bool)

(assert (= bs!161625 (and d!248344 d!248122)))

(assert (=> bs!161625 (= lambda!23031 lambda!22986)))

(declare-fun bs!161626 () Bool)

(assert (= bs!161626 (and d!248344 d!248220)))

(assert (=> bs!161626 (= lambda!23031 lambda!23003)))

(declare-fun bs!161627 () Bool)

(assert (= bs!161627 (and d!248344 d!248236)))

(assert (=> bs!161627 (= lambda!23031 lambda!23005)))

(declare-fun bs!161628 () Bool)

(assert (= bs!161628 (and d!248344 d!248230)))

(assert (=> bs!161628 (= lambda!23031 lambda!23004)))

(declare-fun bs!161629 () Bool)

(assert (= bs!161629 (and d!248344 d!248178)))

(assert (=> bs!161629 (= lambda!23031 lambda!22998)))

(declare-fun bs!161630 () Bool)

(assert (= bs!161630 (and d!248344 d!248246)))

(assert (=> bs!161630 (= lambda!23031 lambda!23006)))

(declare-fun bs!161631 () Bool)

(assert (= bs!161631 (and d!248344 d!248286)))

(assert (=> bs!161631 (= lambda!23031 lambda!23016)))

(declare-fun bs!161632 () Bool)

(assert (= bs!161632 (and d!248344 d!248106)))

(assert (=> bs!161632 (= lambda!23031 lambda!22985)))

(declare-fun bs!161633 () Bool)

(assert (= bs!161633 (and d!248344 d!248324)))

(assert (=> bs!161633 (= lambda!23031 lambda!23023)))

(declare-fun bs!161634 () Bool)

(assert (= bs!161634 (and d!248344 d!248326)))

(assert (=> bs!161634 (= lambda!23031 lambda!23024)))

(declare-fun bs!161635 () Bool)

(assert (= bs!161635 (and d!248344 d!248250)))

(assert (=> bs!161635 (= lambda!23031 lambda!23007)))

(declare-fun bs!161636 () Bool)

(assert (= bs!161636 (and d!248344 d!248198)))

(assert (=> bs!161636 (= lambda!23031 lambda!23002)))

(declare-fun bs!161637 () Bool)

(assert (= bs!161637 (and d!248344 d!248328)))

(assert (=> bs!161637 (= lambda!23031 lambda!23025)))

(declare-fun bs!161638 () Bool)

(assert (= bs!161638 (and d!248344 d!248308)))

(assert (=> bs!161638 (= lambda!23031 lambda!23021)))

(declare-fun bs!161639 () Bool)

(assert (= bs!161639 (and d!248344 d!248182)))

(assert (=> bs!161639 (= lambda!23031 lambda!22999)))

(declare-fun bs!161640 () Bool)

(assert (= bs!161640 (and d!248344 d!248166)))

(assert (=> bs!161640 (= lambda!23031 lambda!22995)))

(declare-fun bs!161641 () Bool)

(assert (= bs!161641 (and d!248344 d!248336)))

(assert (=> bs!161641 (= lambda!23031 lambda!23029)))

(declare-fun bs!161642 () Bool)

(assert (= bs!161642 (and d!248344 d!248268)))

(assert (=> bs!161642 (= lambda!23031 lambda!23012)))

(declare-fun bs!161643 () Bool)

(assert (= bs!161643 (and d!248344 d!248102)))

(assert (=> bs!161643 (= lambda!23031 lambda!22984)))

(declare-fun bs!161644 () Bool)

(assert (= bs!161644 (and d!248344 d!248170)))

(assert (=> bs!161644 (= lambda!23031 lambda!22996)))

(declare-fun bs!161645 () Bool)

(assert (= bs!161645 (and d!248344 d!248128)))

(assert (=> bs!161645 (= lambda!23031 lambda!22990)))

(declare-fun bs!161646 () Bool)

(assert (= bs!161646 (and d!248344 d!248148)))

(assert (=> bs!161646 (= lambda!23031 lambda!22991)))

(declare-fun bs!161647 () Bool)

(assert (= bs!161647 (and d!248344 d!248288)))

(assert (=> bs!161647 (= lambda!23031 lambda!23017)))

(declare-fun bs!161648 () Bool)

(assert (= bs!161648 (and d!248344 d!248338)))

(assert (=> bs!161648 (= lambda!23031 lambda!23030)))

(assert (=> d!248344 (= (inv!10657 setElem!6430) (forall!2027 (exprs!859 setElem!6430) lambda!23031))))

(declare-fun bs!161649 () Bool)

(assert (= bs!161649 d!248344))

(declare-fun m!1024707 () Bool)

(assert (=> bs!161649 m!1024707))

(assert (=> setNonEmpty!6430 d!248344))

(assert (=> b!757467 d!248050))

(assert (=> b!757482 d!248052))

(declare-fun b!758203 () Bool)

(declare-fun e!486973 () Bool)

(assert (=> b!758203 (= e!486973 (not (isEmpty!5159 (right!6650 (c!128735 (totalInput!2062 cacheFindLongestMatch!74))))))))

(declare-fun b!758204 () Bool)

(declare-fun res!334048 () Bool)

(assert (=> b!758204 (=> (not res!334048) (not e!486973))))

(assert (=> b!758204 (= res!334048 (isBalanced!761 (right!6650 (c!128735 (totalInput!2062 cacheFindLongestMatch!74)))))))

(declare-fun b!758205 () Bool)

(declare-fun res!334052 () Bool)

(assert (=> b!758205 (=> (not res!334052) (not e!486973))))

(assert (=> b!758205 (= res!334052 (<= (- (height!371 (left!6320 (c!128735 (totalInput!2062 cacheFindLongestMatch!74)))) (height!371 (right!6650 (c!128735 (totalInput!2062 cacheFindLongestMatch!74))))) 1))))

(declare-fun d!248346 () Bool)

(declare-fun res!334049 () Bool)

(declare-fun e!486972 () Bool)

(assert (=> d!248346 (=> res!334049 e!486972)))

(assert (=> d!248346 (= res!334049 (not ((_ is Node!2845) (c!128735 (totalInput!2062 cacheFindLongestMatch!74)))))))

(assert (=> d!248346 (= (isBalanced!761 (c!128735 (totalInput!2062 cacheFindLongestMatch!74))) e!486972)))

(declare-fun b!758206 () Bool)

(declare-fun res!334053 () Bool)

(assert (=> b!758206 (=> (not res!334053) (not e!486973))))

(assert (=> b!758206 (= res!334053 (isBalanced!761 (left!6320 (c!128735 (totalInput!2062 cacheFindLongestMatch!74)))))))

(declare-fun b!758207 () Bool)

(assert (=> b!758207 (= e!486972 e!486973)))

(declare-fun res!334051 () Bool)

(assert (=> b!758207 (=> (not res!334051) (not e!486973))))

(assert (=> b!758207 (= res!334051 (<= (- 1) (- (height!371 (left!6320 (c!128735 (totalInput!2062 cacheFindLongestMatch!74)))) (height!371 (right!6650 (c!128735 (totalInput!2062 cacheFindLongestMatch!74)))))))))

(declare-fun b!758208 () Bool)

(declare-fun res!334050 () Bool)

(assert (=> b!758208 (=> (not res!334050) (not e!486973))))

(assert (=> b!758208 (= res!334050 (not (isEmpty!5159 (left!6320 (c!128735 (totalInput!2062 cacheFindLongestMatch!74))))))))

(assert (= (and d!248346 (not res!334049)) b!758207))

(assert (= (and b!758207 res!334051) b!758205))

(assert (= (and b!758205 res!334052) b!758206))

(assert (= (and b!758206 res!334053) b!758204))

(assert (= (and b!758204 res!334048) b!758208))

(assert (= (and b!758208 res!334050) b!758203))

(declare-fun m!1024709 () Bool)

(assert (=> b!758203 m!1024709))

(assert (=> b!758205 m!1024319))

(assert (=> b!758205 m!1024321))

(assert (=> b!758207 m!1024319))

(assert (=> b!758207 m!1024321))

(declare-fun m!1024711 () Bool)

(assert (=> b!758206 m!1024711))

(declare-fun m!1024713 () Bool)

(assert (=> b!758204 m!1024713))

(declare-fun m!1024715 () Bool)

(assert (=> b!758208 m!1024715))

(assert (=> d!248058 d!248346))

(declare-fun d!248348 () Bool)

(declare-fun lt!309096 () Int)

(assert (=> d!248348 (= lt!309096 (size!6822 (list!3387 (_2!5529 lt!308975))))))

(assert (=> d!248348 (= lt!309096 (size!6823 (c!128735 (_2!5529 lt!308975))))))

(assert (=> d!248348 (= (size!6820 (_2!5529 lt!308975)) lt!309096)))

(declare-fun bs!161650 () Bool)

(assert (= bs!161650 d!248348))

(assert (=> bs!161650 m!1023804))

(assert (=> bs!161650 m!1023804))

(declare-fun m!1024717 () Bool)

(assert (=> bs!161650 m!1024717))

(declare-fun m!1024719 () Bool)

(assert (=> bs!161650 m!1024719))

(assert (=> b!757528 d!248348))

(assert (=> b!757528 d!248094))

(assert (=> d!248034 d!248282))

(declare-fun d!248350 () Bool)

(declare-fun c!128859 () Bool)

(assert (=> d!248350 (= c!128859 ((_ is Node!2845) (left!6320 (c!128735 totalInput!378))))))

(declare-fun e!486974 () Bool)

(assert (=> d!248350 (= (inv!10644 (left!6320 (c!128735 totalInput!378))) e!486974)))

(declare-fun b!758209 () Bool)

(assert (=> b!758209 (= e!486974 (inv!10654 (left!6320 (c!128735 totalInput!378))))))

(declare-fun b!758210 () Bool)

(declare-fun e!486975 () Bool)

(assert (=> b!758210 (= e!486974 e!486975)))

(declare-fun res!334054 () Bool)

(assert (=> b!758210 (= res!334054 (not ((_ is Leaf!4177) (left!6320 (c!128735 totalInput!378)))))))

(assert (=> b!758210 (=> res!334054 e!486975)))

(declare-fun b!758211 () Bool)

(assert (=> b!758211 (= e!486975 (inv!10655 (left!6320 (c!128735 totalInput!378))))))

(assert (= (and d!248350 c!128859) b!758209))

(assert (= (and d!248350 (not c!128859)) b!758210))

(assert (= (and b!758210 (not res!334054)) b!758211))

(declare-fun m!1024721 () Bool)

(assert (=> b!758209 m!1024721))

(declare-fun m!1024723 () Bool)

(assert (=> b!758211 m!1024723))

(assert (=> b!757724 d!248350))

(declare-fun d!248352 () Bool)

(declare-fun c!128860 () Bool)

(assert (=> d!248352 (= c!128860 ((_ is Node!2845) (right!6650 (c!128735 totalInput!378))))))

(declare-fun e!486976 () Bool)

(assert (=> d!248352 (= (inv!10644 (right!6650 (c!128735 totalInput!378))) e!486976)))

(declare-fun b!758212 () Bool)

(assert (=> b!758212 (= e!486976 (inv!10654 (right!6650 (c!128735 totalInput!378))))))

(declare-fun b!758213 () Bool)

(declare-fun e!486977 () Bool)

(assert (=> b!758213 (= e!486976 e!486977)))

(declare-fun res!334055 () Bool)

(assert (=> b!758213 (= res!334055 (not ((_ is Leaf!4177) (right!6650 (c!128735 totalInput!378)))))))

(assert (=> b!758213 (=> res!334055 e!486977)))

(declare-fun b!758214 () Bool)

(assert (=> b!758214 (= e!486977 (inv!10655 (right!6650 (c!128735 totalInput!378))))))

(assert (= (and d!248352 c!128860) b!758212))

(assert (= (and d!248352 (not c!128860)) b!758213))

(assert (= (and b!758213 (not res!334055)) b!758214))

(declare-fun m!1024725 () Bool)

(assert (=> b!758212 m!1024725))

(declare-fun m!1024727 () Bool)

(assert (=> b!758214 m!1024727))

(assert (=> b!757724 d!248352))

(declare-fun b!758216 () Bool)

(declare-fun e!486978 () Bool)

(declare-fun tp!245192 () Bool)

(declare-fun tp!245193 () Bool)

(assert (=> b!758216 (= e!486978 (and tp!245192 tp!245193))))

(declare-fun b!758217 () Bool)

(declare-fun tp!245195 () Bool)

(assert (=> b!758217 (= e!486978 tp!245195)))

(assert (=> b!757626 (= tp!245012 e!486978)))

(declare-fun b!758218 () Bool)

(declare-fun tp!245194 () Bool)

(declare-fun tp!245196 () Bool)

(assert (=> b!758218 (= e!486978 (and tp!245194 tp!245196))))

(declare-fun b!758215 () Bool)

(assert (=> b!758215 (= e!486978 tp_is_empty!3711)))

(assert (= (and b!757626 ((_ is ElementMatch!1957) (_1!5525 (_1!5526 (h!13772 (minValue!1354 (v!18509 (underlying!2377 (v!18510 (underlying!2378 (cache!1456 cacheDown!515))))))))))) b!758215))

(assert (= (and b!757626 ((_ is Concat!3611) (_1!5525 (_1!5526 (h!13772 (minValue!1354 (v!18509 (underlying!2377 (v!18510 (underlying!2378 (cache!1456 cacheDown!515))))))))))) b!758216))

(assert (= (and b!757626 ((_ is Star!1957) (_1!5525 (_1!5526 (h!13772 (minValue!1354 (v!18509 (underlying!2377 (v!18510 (underlying!2378 (cache!1456 cacheDown!515))))))))))) b!758217))

(assert (= (and b!757626 ((_ is Union!1957) (_1!5525 (_1!5526 (h!13772 (minValue!1354 (v!18509 (underlying!2377 (v!18510 (underlying!2378 (cache!1456 cacheDown!515))))))))))) b!758218))

(declare-fun setIsEmpty!6433 () Bool)

(declare-fun setRes!6433 () Bool)

(assert (=> setIsEmpty!6433 setRes!6433))

(declare-fun b!758220 () Bool)

(declare-fun e!486980 () Bool)

(declare-fun tp!245201 () Bool)

(assert (=> b!758220 (= e!486980 tp!245201)))

(declare-fun b!758221 () Bool)

(declare-fun e!486979 () Bool)

(declare-fun tp!245199 () Bool)

(assert (=> b!758221 (= e!486979 tp!245199)))

(declare-fun setElem!6433 () Context!718)

(declare-fun tp!245198 () Bool)

(declare-fun setNonEmpty!6433 () Bool)

(assert (=> setNonEmpty!6433 (= setRes!6433 (and tp!245198 (inv!10657 setElem!6433) e!486979))))

(declare-fun setRest!6433 () (InoxSet Context!718))

(assert (=> setNonEmpty!6433 (= (_2!5526 (h!13772 (t!91115 (minValue!1354 (v!18509 (underlying!2377 (v!18510 (underlying!2378 (cache!1456 cacheDown!515))))))))) ((_ map or) (store ((as const (Array Context!718 Bool)) false) setElem!6433 true) setRest!6433))))

(declare-fun b!758219 () Bool)

(declare-fun tp!245197 () Bool)

(declare-fun e!486981 () Bool)

(declare-fun tp!245200 () Bool)

(assert (=> b!758219 (= e!486981 (and tp!245200 (inv!10657 (_2!5525 (_1!5526 (h!13772 (t!91115 (minValue!1354 (v!18509 (underlying!2377 (v!18510 (underlying!2378 (cache!1456 cacheDown!515))))))))))) e!486980 tp_is_empty!3711 setRes!6433 tp!245197))))

(declare-fun condSetEmpty!6433 () Bool)

(assert (=> b!758219 (= condSetEmpty!6433 (= (_2!5526 (h!13772 (t!91115 (minValue!1354 (v!18509 (underlying!2377 (v!18510 (underlying!2378 (cache!1456 cacheDown!515))))))))) ((as const (Array Context!718 Bool)) false)))))

(assert (=> b!757626 (= tp!245009 e!486981)))

(assert (= b!758219 b!758220))

(assert (= (and b!758219 condSetEmpty!6433) setIsEmpty!6433))

(assert (= (and b!758219 (not condSetEmpty!6433)) setNonEmpty!6433))

(assert (= setNonEmpty!6433 b!758221))

(assert (= (and b!757626 ((_ is Cons!8371) (t!91115 (minValue!1354 (v!18509 (underlying!2377 (v!18510 (underlying!2378 (cache!1456 cacheDown!515))))))))) b!758219))

(declare-fun m!1024729 () Bool)

(assert (=> setNonEmpty!6433 m!1024729))

(declare-fun m!1024731 () Bool)

(assert (=> b!758219 m!1024731))

(declare-fun setIsEmpty!6434 () Bool)

(declare-fun setRes!6434 () Bool)

(assert (=> setIsEmpty!6434 setRes!6434))

(declare-fun setIsEmpty!6435 () Bool)

(declare-fun setRes!6435 () Bool)

(assert (=> setIsEmpty!6435 setRes!6435))

(declare-fun b!758222 () Bool)

(declare-fun e!486987 () Bool)

(declare-fun tp!245209 () Bool)

(assert (=> b!758222 (= e!486987 tp!245209)))

(declare-fun b!758223 () Bool)

(declare-fun mapDefault!5333 () List!8386)

(declare-fun tp!245202 () Bool)

(declare-fun e!486982 () Bool)

(declare-fun e!486985 () Bool)

(assert (=> b!758223 (= e!486985 (and (inv!10657 (_1!5527 (_1!5528 (h!13773 mapDefault!5333)))) e!486982 tp_is_empty!3711 setRes!6435 tp!245202))))

(declare-fun condSetEmpty!6434 () Bool)

(assert (=> b!758223 (= condSetEmpty!6434 (= (_2!5528 (h!13773 mapDefault!5333)) ((as const (Array Context!718 Bool)) false)))))

(declare-fun b!758224 () Bool)

(declare-fun e!486986 () Bool)

(declare-fun tp!245208 () Bool)

(declare-fun mapValue!5333 () List!8386)

(declare-fun e!486983 () Bool)

(assert (=> b!758224 (= e!486983 (and (inv!10657 (_1!5527 (_1!5528 (h!13773 mapValue!5333)))) e!486986 tp_is_empty!3711 setRes!6434 tp!245208))))

(declare-fun condSetEmpty!6435 () Bool)

(assert (=> b!758224 (= condSetEmpty!6435 (= (_2!5528 (h!13773 mapValue!5333)) ((as const (Array Context!718 Bool)) false)))))

(declare-fun mapIsEmpty!5333 () Bool)

(declare-fun mapRes!5333 () Bool)

(assert (=> mapIsEmpty!5333 mapRes!5333))

(declare-fun b!758225 () Bool)

(declare-fun tp!245203 () Bool)

(assert (=> b!758225 (= e!486982 tp!245203)))

(declare-fun b!758226 () Bool)

(declare-fun tp!245204 () Bool)

(assert (=> b!758226 (= e!486986 tp!245204)))

(declare-fun condMapEmpty!5333 () Bool)

(assert (=> mapNonEmpty!5329 (= condMapEmpty!5333 (= mapRest!5329 ((as const (Array (_ BitVec 32) List!8386)) mapDefault!5333)))))

(assert (=> mapNonEmpty!5329 (= tp!245097 (and e!486985 mapRes!5333))))

(declare-fun setElem!6435 () Context!718)

(declare-fun setNonEmpty!6434 () Bool)

(declare-fun tp!245207 () Bool)

(declare-fun e!486984 () Bool)

(assert (=> setNonEmpty!6434 (= setRes!6435 (and tp!245207 (inv!10657 setElem!6435) e!486984))))

(declare-fun setRest!6434 () (InoxSet Context!718))

(assert (=> setNonEmpty!6434 (= (_2!5528 (h!13773 mapDefault!5333)) ((_ map or) (store ((as const (Array Context!718 Bool)) false) setElem!6435 true) setRest!6434))))

(declare-fun mapNonEmpty!5333 () Bool)

(declare-fun tp!245205 () Bool)

(assert (=> mapNonEmpty!5333 (= mapRes!5333 (and tp!245205 e!486983))))

(declare-fun mapKey!5333 () (_ BitVec 32))

(declare-fun mapRest!5333 () (Array (_ BitVec 32) List!8386))

(assert (=> mapNonEmpty!5333 (= mapRest!5329 (store mapRest!5333 mapKey!5333 mapValue!5333))))

(declare-fun tp!245210 () Bool)

(declare-fun setNonEmpty!6435 () Bool)

(declare-fun setElem!6434 () Context!718)

(assert (=> setNonEmpty!6435 (= setRes!6434 (and tp!245210 (inv!10657 setElem!6434) e!486987))))

(declare-fun setRest!6435 () (InoxSet Context!718))

(assert (=> setNonEmpty!6435 (= (_2!5528 (h!13773 mapValue!5333)) ((_ map or) (store ((as const (Array Context!718 Bool)) false) setElem!6434 true) setRest!6435))))

(declare-fun b!758227 () Bool)

(declare-fun tp!245206 () Bool)

(assert (=> b!758227 (= e!486984 tp!245206)))

(assert (= (and mapNonEmpty!5329 condMapEmpty!5333) mapIsEmpty!5333))

(assert (= (and mapNonEmpty!5329 (not condMapEmpty!5333)) mapNonEmpty!5333))

(assert (= b!758224 b!758226))

(assert (= (and b!758224 condSetEmpty!6435) setIsEmpty!6434))

(assert (= (and b!758224 (not condSetEmpty!6435)) setNonEmpty!6435))

(assert (= setNonEmpty!6435 b!758222))

(assert (= (and mapNonEmpty!5333 ((_ is Cons!8372) mapValue!5333)) b!758224))

(assert (= b!758223 b!758225))

(assert (= (and b!758223 condSetEmpty!6434) setIsEmpty!6435))

(assert (= (and b!758223 (not condSetEmpty!6434)) setNonEmpty!6434))

(assert (= setNonEmpty!6434 b!758227))

(assert (= (and mapNonEmpty!5329 ((_ is Cons!8372) mapDefault!5333)) b!758223))

(declare-fun m!1024733 () Bool)

(assert (=> b!758223 m!1024733))

(declare-fun m!1024735 () Bool)

(assert (=> b!758224 m!1024735))

(declare-fun m!1024737 () Bool)

(assert (=> setNonEmpty!6435 m!1024737))

(declare-fun m!1024739 () Bool)

(assert (=> mapNonEmpty!5333 m!1024739))

(declare-fun m!1024741 () Bool)

(assert (=> setNonEmpty!6434 m!1024741))

(declare-fun b!758229 () Bool)

(declare-fun e!486988 () Bool)

(declare-fun tp!245211 () Bool)

(declare-fun tp!245212 () Bool)

(assert (=> b!758229 (= e!486988 (and tp!245211 tp!245212))))

(declare-fun b!758230 () Bool)

(declare-fun tp!245214 () Bool)

(assert (=> b!758230 (= e!486988 tp!245214)))

(assert (=> b!757623 (= tp!245007 e!486988)))

(declare-fun b!758231 () Bool)

(declare-fun tp!245213 () Bool)

(declare-fun tp!245215 () Bool)

(assert (=> b!758231 (= e!486988 (and tp!245213 tp!245215))))

(declare-fun b!758228 () Bool)

(assert (=> b!758228 (= e!486988 tp_is_empty!3711)))

(assert (= (and b!757623 ((_ is ElementMatch!1957) (_1!5525 (_1!5526 (h!13772 (zeroValue!1354 (v!18509 (underlying!2377 (v!18510 (underlying!2378 (cache!1456 cacheDown!515))))))))))) b!758228))

(assert (= (and b!757623 ((_ is Concat!3611) (_1!5525 (_1!5526 (h!13772 (zeroValue!1354 (v!18509 (underlying!2377 (v!18510 (underlying!2378 (cache!1456 cacheDown!515))))))))))) b!758229))

(assert (= (and b!757623 ((_ is Star!1957) (_1!5525 (_1!5526 (h!13772 (zeroValue!1354 (v!18509 (underlying!2377 (v!18510 (underlying!2378 (cache!1456 cacheDown!515))))))))))) b!758230))

(assert (= (and b!757623 ((_ is Union!1957) (_1!5525 (_1!5526 (h!13772 (zeroValue!1354 (v!18509 (underlying!2377 (v!18510 (underlying!2378 (cache!1456 cacheDown!515))))))))))) b!758231))

(declare-fun setIsEmpty!6436 () Bool)

(declare-fun setRes!6436 () Bool)

(assert (=> setIsEmpty!6436 setRes!6436))

(declare-fun b!758233 () Bool)

(declare-fun e!486990 () Bool)

(declare-fun tp!245220 () Bool)

(assert (=> b!758233 (= e!486990 tp!245220)))

(declare-fun b!758234 () Bool)

(declare-fun e!486989 () Bool)

(declare-fun tp!245218 () Bool)

(assert (=> b!758234 (= e!486989 tp!245218)))

(declare-fun tp!245217 () Bool)

(declare-fun setNonEmpty!6436 () Bool)

(declare-fun setElem!6436 () Context!718)

(assert (=> setNonEmpty!6436 (= setRes!6436 (and tp!245217 (inv!10657 setElem!6436) e!486989))))

(declare-fun setRest!6436 () (InoxSet Context!718))

(assert (=> setNonEmpty!6436 (= (_2!5526 (h!13772 (t!91115 (zeroValue!1354 (v!18509 (underlying!2377 (v!18510 (underlying!2378 (cache!1456 cacheDown!515))))))))) ((_ map or) (store ((as const (Array Context!718 Bool)) false) setElem!6436 true) setRest!6436))))

(declare-fun e!486991 () Bool)

(declare-fun b!758232 () Bool)

(declare-fun tp!245216 () Bool)

(declare-fun tp!245219 () Bool)

(assert (=> b!758232 (= e!486991 (and tp!245219 (inv!10657 (_2!5525 (_1!5526 (h!13772 (t!91115 (zeroValue!1354 (v!18509 (underlying!2377 (v!18510 (underlying!2378 (cache!1456 cacheDown!515))))))))))) e!486990 tp_is_empty!3711 setRes!6436 tp!245216))))

(declare-fun condSetEmpty!6436 () Bool)

(assert (=> b!758232 (= condSetEmpty!6436 (= (_2!5526 (h!13772 (t!91115 (zeroValue!1354 (v!18509 (underlying!2377 (v!18510 (underlying!2378 (cache!1456 cacheDown!515))))))))) ((as const (Array Context!718 Bool)) false)))))

(assert (=> b!757623 (= tp!245004 e!486991)))

(assert (= b!758232 b!758233))

(assert (= (and b!758232 condSetEmpty!6436) setIsEmpty!6436))

(assert (= (and b!758232 (not condSetEmpty!6436)) setNonEmpty!6436))

(assert (= setNonEmpty!6436 b!758234))

(assert (= (and b!757623 ((_ is Cons!8371) (t!91115 (zeroValue!1354 (v!18509 (underlying!2377 (v!18510 (underlying!2378 (cache!1456 cacheDown!515))))))))) b!758232))

(declare-fun m!1024743 () Bool)

(assert (=> setNonEmpty!6436 m!1024743))

(declare-fun m!1024745 () Bool)

(assert (=> b!758232 m!1024745))

(declare-fun b!758239 () Bool)

(declare-fun e!486994 () Bool)

(declare-fun tp!245225 () Bool)

(declare-fun tp!245226 () Bool)

(assert (=> b!758239 (= e!486994 (and tp!245225 tp!245226))))

(assert (=> b!757723 (= tp!245132 e!486994)))

(assert (= (and b!757723 ((_ is Cons!8370) (exprs!859 setElem!6422))) b!758239))

(declare-fun b!758240 () Bool)

(declare-fun e!486995 () Bool)

(declare-fun tp!245227 () Bool)

(declare-fun tp!245228 () Bool)

(assert (=> b!758240 (= e!486995 (and tp!245227 tp!245228))))

(assert (=> b!757708 (= tp!245117 e!486995)))

(assert (= (and b!757708 ((_ is Cons!8370) (exprs!859 (_1!5527 (_1!5528 (h!13773 (zeroValue!1355 (v!18511 (underlying!2379 (v!18512 (underlying!2380 (cache!1457 cacheUp!502)))))))))))) b!758240))

(declare-fun e!486997 () Bool)

(assert (=> b!757712 (= tp!245122 e!486997)))

(declare-fun tp!245230 () Bool)

(declare-fun setNonEmpty!6437 () Bool)

(declare-fun setRes!6437 () Bool)

(declare-fun e!486998 () Bool)

(declare-fun setElem!6437 () Context!718)

(assert (=> setNonEmpty!6437 (= setRes!6437 (and tp!245230 (inv!10657 setElem!6437) e!486998))))

(declare-fun setRest!6437 () (InoxSet Context!718))

(assert (=> setNonEmpty!6437 (= (_2!5528 (h!13773 (t!91116 (minValue!1355 (v!18511 (underlying!2379 (v!18512 (underlying!2380 (cache!1457 cacheUp!502))))))))) ((_ map or) (store ((as const (Array Context!718 Bool)) false) setElem!6437 true) setRest!6437))))

(declare-fun setIsEmpty!6437 () Bool)

(assert (=> setIsEmpty!6437 setRes!6437))

(declare-fun b!758241 () Bool)

(declare-fun e!486996 () Bool)

(declare-fun tp!245231 () Bool)

(assert (=> b!758241 (= e!486996 tp!245231)))

(declare-fun b!758242 () Bool)

(declare-fun tp!245232 () Bool)

(assert (=> b!758242 (= e!486997 (and (inv!10657 (_1!5527 (_1!5528 (h!13773 (t!91116 (minValue!1355 (v!18511 (underlying!2379 (v!18512 (underlying!2380 (cache!1457 cacheUp!502))))))))))) e!486996 tp_is_empty!3711 setRes!6437 tp!245232))))

(declare-fun condSetEmpty!6437 () Bool)

(assert (=> b!758242 (= condSetEmpty!6437 (= (_2!5528 (h!13773 (t!91116 (minValue!1355 (v!18511 (underlying!2379 (v!18512 (underlying!2380 (cache!1457 cacheUp!502))))))))) ((as const (Array Context!718 Bool)) false)))))

(declare-fun b!758243 () Bool)

(declare-fun tp!245229 () Bool)

(assert (=> b!758243 (= e!486998 tp!245229)))

(assert (= b!758242 b!758241))

(assert (= (and b!758242 condSetEmpty!6437) setIsEmpty!6437))

(assert (= (and b!758242 (not condSetEmpty!6437)) setNonEmpty!6437))

(assert (= setNonEmpty!6437 b!758243))

(assert (= (and b!757712 ((_ is Cons!8372) (t!91116 (minValue!1355 (v!18511 (underlying!2379 (v!18512 (underlying!2380 (cache!1457 cacheUp!502))))))))) b!758242))

(declare-fun m!1024747 () Bool)

(assert (=> setNonEmpty!6437 m!1024747))

(declare-fun m!1024749 () Bool)

(assert (=> b!758242 m!1024749))

(declare-fun b!758244 () Bool)

(declare-fun e!486999 () Bool)

(declare-fun tp!245233 () Bool)

(declare-fun tp!245234 () Bool)

(assert (=> b!758244 (= e!486999 (and tp!245233 tp!245234))))

(assert (=> b!757628 (= tp!245011 e!486999)))

(assert (= (and b!757628 ((_ is Cons!8370) (exprs!859 setElem!6400))) b!758244))

(declare-fun b!758245 () Bool)

(declare-fun e!487000 () Bool)

(declare-fun tp!245235 () Bool)

(declare-fun tp!245236 () Bool)

(assert (=> b!758245 (= e!487000 (and tp!245235 tp!245236))))

(assert (=> b!757695 (= tp!245096 e!487000)))

(assert (= (and b!757695 ((_ is Cons!8370) (exprs!859 (_1!5527 (_1!5528 (h!13773 mapValue!5329)))))) b!758245))

(declare-fun b!758246 () Bool)

(declare-fun e!487001 () Bool)

(declare-fun tp!245237 () Bool)

(declare-fun tp!245238 () Bool)

(assert (=> b!758246 (= e!487001 (and tp!245237 tp!245238))))

(assert (=> b!757625 (= tp!245006 e!487001)))

(assert (= (and b!757625 ((_ is Cons!8370) (exprs!859 setElem!6399))) b!758246))

(declare-fun b!758247 () Bool)

(declare-fun e!487002 () Bool)

(declare-fun tp!245239 () Bool)

(declare-fun tp!245240 () Bool)

(assert (=> b!758247 (= e!487002 (and tp!245239 tp!245240))))

(assert (=> b!757651 (= tp!245049 e!487002)))

(assert (= (and b!757651 ((_ is Cons!8370) (exprs!859 setElem!6407))) b!758247))

(declare-fun b!758248 () Bool)

(declare-fun e!487003 () Bool)

(declare-fun tp!245241 () Bool)

(declare-fun tp!245242 () Bool)

(assert (=> b!758248 (= e!487003 (and tp!245241 tp!245242))))

(assert (=> b!757732 (= tp!245143 e!487003)))

(assert (= (and b!757732 ((_ is Cons!8370) (exprs!859 setElem!6423))) b!758248))

(declare-fun condSetEmpty!6440 () Bool)

(assert (=> setNonEmpty!6431 (= condSetEmpty!6440 (= setRest!6431 ((as const (Array Context!718 Bool)) false)))))

(declare-fun setRes!6440 () Bool)

(assert (=> setNonEmpty!6431 (= tp!245171 setRes!6440)))

(declare-fun setIsEmpty!6440 () Bool)

(assert (=> setIsEmpty!6440 setRes!6440))

(declare-fun setElem!6440 () Context!718)

(declare-fun tp!245247 () Bool)

(declare-fun e!487006 () Bool)

(declare-fun setNonEmpty!6440 () Bool)

(assert (=> setNonEmpty!6440 (= setRes!6440 (and tp!245247 (inv!10657 setElem!6440) e!487006))))

(declare-fun setRest!6440 () (InoxSet Context!718))

(assert (=> setNonEmpty!6440 (= setRest!6431 ((_ map or) (store ((as const (Array Context!718 Bool)) false) setElem!6440 true) setRest!6440))))

(declare-fun b!758253 () Bool)

(declare-fun tp!245248 () Bool)

(assert (=> b!758253 (= e!487006 tp!245248)))

(assert (= (and setNonEmpty!6431 condSetEmpty!6440) setIsEmpty!6440))

(assert (= (and setNonEmpty!6431 (not condSetEmpty!6440)) setNonEmpty!6440))

(assert (= setNonEmpty!6440 b!758253))

(declare-fun m!1024751 () Bool)

(assert (=> setNonEmpty!6440 m!1024751))

(declare-fun b!758254 () Bool)

(declare-fun e!487007 () Bool)

(declare-fun tp!245249 () Bool)

(declare-fun tp!245250 () Bool)

(assert (=> b!758254 (= e!487007 (and tp!245249 tp!245250))))

(assert (=> b!757696 (= tp!245098 e!487007)))

(assert (= (and b!757696 ((_ is Cons!8370) (exprs!859 setElem!6413))) b!758254))

(declare-fun b!758256 () Bool)

(declare-fun e!487008 () Bool)

(declare-fun tp!245251 () Bool)

(declare-fun tp!245252 () Bool)

(assert (=> b!758256 (= e!487008 (and tp!245251 tp!245252))))

(declare-fun b!758257 () Bool)

(declare-fun tp!245254 () Bool)

(assert (=> b!758257 (= e!487008 tp!245254)))

(assert (=> b!757763 (= tp!245184 e!487008)))

(declare-fun b!758258 () Bool)

(declare-fun tp!245253 () Bool)

(declare-fun tp!245255 () Bool)

(assert (=> b!758258 (= e!487008 (and tp!245253 tp!245255))))

(declare-fun b!758255 () Bool)

(assert (=> b!758255 (= e!487008 tp_is_empty!3711)))

(assert (= (and b!757763 ((_ is ElementMatch!1957) (regOne!4426 (regex!1610 (h!13777 rules!1486))))) b!758255))

(assert (= (and b!757763 ((_ is Concat!3611) (regOne!4426 (regex!1610 (h!13777 rules!1486))))) b!758256))

(assert (= (and b!757763 ((_ is Star!1957) (regOne!4426 (regex!1610 (h!13777 rules!1486))))) b!758257))

(assert (= (and b!757763 ((_ is Union!1957) (regOne!4426 (regex!1610 (h!13777 rules!1486))))) b!758258))

(declare-fun b!758260 () Bool)

(declare-fun e!487009 () Bool)

(declare-fun tp!245256 () Bool)

(declare-fun tp!245257 () Bool)

(assert (=> b!758260 (= e!487009 (and tp!245256 tp!245257))))

(declare-fun b!758261 () Bool)

(declare-fun tp!245259 () Bool)

(assert (=> b!758261 (= e!487009 tp!245259)))

(assert (=> b!757763 (= tp!245185 e!487009)))

(declare-fun b!758262 () Bool)

(declare-fun tp!245258 () Bool)

(declare-fun tp!245260 () Bool)

(assert (=> b!758262 (= e!487009 (and tp!245258 tp!245260))))

(declare-fun b!758259 () Bool)

(assert (=> b!758259 (= e!487009 tp_is_empty!3711)))

(assert (= (and b!757763 ((_ is ElementMatch!1957) (regTwo!4426 (regex!1610 (h!13777 rules!1486))))) b!758259))

(assert (= (and b!757763 ((_ is Concat!3611) (regTwo!4426 (regex!1610 (h!13777 rules!1486))))) b!758260))

(assert (= (and b!757763 ((_ is Star!1957) (regTwo!4426 (regex!1610 (h!13777 rules!1486))))) b!758261))

(assert (= (and b!757763 ((_ is Union!1957) (regTwo!4426 (regex!1610 (h!13777 rules!1486))))) b!758262))

(declare-fun e!487011 () Bool)

(assert (=> b!757706 (= tp!245114 e!487011)))

(declare-fun e!487012 () Bool)

(declare-fun setNonEmpty!6441 () Bool)

(declare-fun setElem!6441 () Context!718)

(declare-fun setRes!6441 () Bool)

(declare-fun tp!245262 () Bool)

(assert (=> setNonEmpty!6441 (= setRes!6441 (and tp!245262 (inv!10657 setElem!6441) e!487012))))

(declare-fun setRest!6441 () (InoxSet Context!718))

(assert (=> setNonEmpty!6441 (= (_2!5528 (h!13773 (t!91116 mapValue!5323))) ((_ map or) (store ((as const (Array Context!718 Bool)) false) setElem!6441 true) setRest!6441))))

(declare-fun setIsEmpty!6441 () Bool)

(assert (=> setIsEmpty!6441 setRes!6441))

(declare-fun b!758263 () Bool)

(declare-fun e!487010 () Bool)

(declare-fun tp!245263 () Bool)

(assert (=> b!758263 (= e!487010 tp!245263)))

(declare-fun b!758264 () Bool)

(declare-fun tp!245264 () Bool)

(assert (=> b!758264 (= e!487011 (and (inv!10657 (_1!5527 (_1!5528 (h!13773 (t!91116 mapValue!5323))))) e!487010 tp_is_empty!3711 setRes!6441 tp!245264))))

(declare-fun condSetEmpty!6441 () Bool)

(assert (=> b!758264 (= condSetEmpty!6441 (= (_2!5528 (h!13773 (t!91116 mapValue!5323))) ((as const (Array Context!718 Bool)) false)))))

(declare-fun b!758265 () Bool)

(declare-fun tp!245261 () Bool)

(assert (=> b!758265 (= e!487012 tp!245261)))

(assert (= b!758264 b!758263))

(assert (= (and b!758264 condSetEmpty!6441) setIsEmpty!6441))

(assert (= (and b!758264 (not condSetEmpty!6441)) setNonEmpty!6441))

(assert (= setNonEmpty!6441 b!758265))

(assert (= (and b!757706 ((_ is Cons!8372) (t!91116 mapValue!5323))) b!758264))

(declare-fun m!1024753 () Bool)

(assert (=> setNonEmpty!6441 m!1024753))

(declare-fun m!1024755 () Bool)

(assert (=> b!758264 m!1024755))

(declare-fun b!758267 () Bool)

(declare-fun e!487013 () Bool)

(declare-fun tp!245265 () Bool)

(declare-fun tp!245266 () Bool)

(assert (=> b!758267 (= e!487013 (and tp!245265 tp!245266))))

(declare-fun b!758268 () Bool)

(declare-fun tp!245268 () Bool)

(assert (=> b!758268 (= e!487013 tp!245268)))

(assert (=> b!757730 (= tp!245144 e!487013)))

(declare-fun b!758269 () Bool)

(declare-fun tp!245267 () Bool)

(declare-fun tp!245269 () Bool)

(assert (=> b!758269 (= e!487013 (and tp!245267 tp!245269))))

(declare-fun b!758266 () Bool)

(assert (=> b!758266 (= e!487013 tp_is_empty!3711)))

(assert (= (and b!757730 ((_ is ElementMatch!1957) (_1!5525 (_1!5526 (h!13772 mapDefault!5321))))) b!758266))

(assert (= (and b!757730 ((_ is Concat!3611) (_1!5525 (_1!5526 (h!13772 mapDefault!5321))))) b!758267))

(assert (= (and b!757730 ((_ is Star!1957) (_1!5525 (_1!5526 (h!13772 mapDefault!5321))))) b!758268))

(assert (= (and b!757730 ((_ is Union!1957) (_1!5525 (_1!5526 (h!13772 mapDefault!5321))))) b!758269))

(declare-fun setIsEmpty!6442 () Bool)

(declare-fun setRes!6442 () Bool)

(assert (=> setIsEmpty!6442 setRes!6442))

(declare-fun b!758271 () Bool)

(declare-fun e!487015 () Bool)

(declare-fun tp!245274 () Bool)

(assert (=> b!758271 (= e!487015 tp!245274)))

(declare-fun b!758272 () Bool)

(declare-fun e!487014 () Bool)

(declare-fun tp!245272 () Bool)

(assert (=> b!758272 (= e!487014 tp!245272)))

(declare-fun setElem!6442 () Context!718)

(declare-fun tp!245271 () Bool)

(declare-fun setNonEmpty!6442 () Bool)

(assert (=> setNonEmpty!6442 (= setRes!6442 (and tp!245271 (inv!10657 setElem!6442) e!487014))))

(declare-fun setRest!6442 () (InoxSet Context!718))

(assert (=> setNonEmpty!6442 (= (_2!5526 (h!13772 (t!91115 mapDefault!5321))) ((_ map or) (store ((as const (Array Context!718 Bool)) false) setElem!6442 true) setRest!6442))))

(declare-fun tp!245273 () Bool)

(declare-fun b!758270 () Bool)

(declare-fun tp!245270 () Bool)

(declare-fun e!487016 () Bool)

(assert (=> b!758270 (= e!487016 (and tp!245273 (inv!10657 (_2!5525 (_1!5526 (h!13772 (t!91115 mapDefault!5321))))) e!487015 tp_is_empty!3711 setRes!6442 tp!245270))))

(declare-fun condSetEmpty!6442 () Bool)

(assert (=> b!758270 (= condSetEmpty!6442 (= (_2!5526 (h!13772 (t!91115 mapDefault!5321))) ((as const (Array Context!718 Bool)) false)))))

(assert (=> b!757730 (= tp!245141 e!487016)))

(assert (= b!758270 b!758271))

(assert (= (and b!758270 condSetEmpty!6442) setIsEmpty!6442))

(assert (= (and b!758270 (not condSetEmpty!6442)) setNonEmpty!6442))

(assert (= setNonEmpty!6442 b!758272))

(assert (= (and b!757730 ((_ is Cons!8371) (t!91115 mapDefault!5321))) b!758270))

(declare-fun m!1024757 () Bool)

(assert (=> setNonEmpty!6442 m!1024757))

(declare-fun m!1024759 () Bool)

(assert (=> b!758270 m!1024759))

(declare-fun b!758273 () Bool)

(declare-fun e!487017 () Bool)

(declare-fun tp!245275 () Bool)

(declare-fun tp!245276 () Bool)

(assert (=> b!758273 (= e!487017 (and tp!245275 tp!245276))))

(assert (=> b!757710 (= tp!245115 e!487017)))

(assert (= (and b!757710 ((_ is Cons!8370) (exprs!859 setElem!6417))) b!758273))

(declare-fun e!487019 () Bool)

(assert (=> b!757692 (= tp!245094 e!487019)))

(declare-fun tp!245278 () Bool)

(declare-fun setRes!6443 () Bool)

(declare-fun setElem!6443 () Context!718)

(declare-fun e!487020 () Bool)

(declare-fun setNonEmpty!6443 () Bool)

(assert (=> setNonEmpty!6443 (= setRes!6443 (and tp!245278 (inv!10657 setElem!6443) e!487020))))

(declare-fun setRest!6443 () (InoxSet Context!718))

(assert (=> setNonEmpty!6443 (= (_2!5528 (h!13773 (t!91116 mapDefault!5329))) ((_ map or) (store ((as const (Array Context!718 Bool)) false) setElem!6443 true) setRest!6443))))

(declare-fun setIsEmpty!6443 () Bool)

(assert (=> setIsEmpty!6443 setRes!6443))

(declare-fun b!758274 () Bool)

(declare-fun e!487018 () Bool)

(declare-fun tp!245279 () Bool)

(assert (=> b!758274 (= e!487018 tp!245279)))

(declare-fun b!758275 () Bool)

(declare-fun tp!245280 () Bool)

(assert (=> b!758275 (= e!487019 (and (inv!10657 (_1!5527 (_1!5528 (h!13773 (t!91116 mapDefault!5329))))) e!487018 tp_is_empty!3711 setRes!6443 tp!245280))))

(declare-fun condSetEmpty!6443 () Bool)

(assert (=> b!758275 (= condSetEmpty!6443 (= (_2!5528 (h!13773 (t!91116 mapDefault!5329))) ((as const (Array Context!718 Bool)) false)))))

(declare-fun b!758276 () Bool)

(declare-fun tp!245277 () Bool)

(assert (=> b!758276 (= e!487020 tp!245277)))

(assert (= b!758275 b!758274))

(assert (= (and b!758275 condSetEmpty!6443) setIsEmpty!6443))

(assert (= (and b!758275 (not condSetEmpty!6443)) setNonEmpty!6443))

(assert (= setNonEmpty!6443 b!758276))

(assert (= (and b!757692 ((_ is Cons!8372) (t!91116 mapDefault!5329))) b!758275))

(declare-fun m!1024761 () Bool)

(assert (=> setNonEmpty!6443 m!1024761))

(declare-fun m!1024763 () Bool)

(assert (=> b!758275 m!1024763))

(declare-fun condSetEmpty!6444 () Bool)

(assert (=> setNonEmpty!6417 (= condSetEmpty!6444 (= setRest!6417 ((as const (Array Context!718 Bool)) false)))))

(declare-fun setRes!6444 () Bool)

(assert (=> setNonEmpty!6417 (= tp!245116 setRes!6444)))

(declare-fun setIsEmpty!6444 () Bool)

(assert (=> setIsEmpty!6444 setRes!6444))

(declare-fun setNonEmpty!6444 () Bool)

(declare-fun e!487021 () Bool)

(declare-fun tp!245281 () Bool)

(declare-fun setElem!6444 () Context!718)

(assert (=> setNonEmpty!6444 (= setRes!6444 (and tp!245281 (inv!10657 setElem!6444) e!487021))))

(declare-fun setRest!6444 () (InoxSet Context!718))

(assert (=> setNonEmpty!6444 (= setRest!6417 ((_ map or) (store ((as const (Array Context!718 Bool)) false) setElem!6444 true) setRest!6444))))

(declare-fun b!758277 () Bool)

(declare-fun tp!245282 () Bool)

(assert (=> b!758277 (= e!487021 tp!245282)))

(assert (= (and setNonEmpty!6417 condSetEmpty!6444) setIsEmpty!6444))

(assert (= (and setNonEmpty!6417 (not condSetEmpty!6444)) setNonEmpty!6444))

(assert (= setNonEmpty!6444 b!758277))

(declare-fun m!1024765 () Bool)

(assert (=> setNonEmpty!6444 m!1024765))

(declare-fun b!758279 () Bool)

(declare-fun e!487022 () Bool)

(declare-fun tp!245283 () Bool)

(declare-fun tp!245284 () Bool)

(assert (=> b!758279 (= e!487022 (and tp!245283 tp!245284))))

(declare-fun b!758280 () Bool)

(declare-fun tp!245286 () Bool)

(assert (=> b!758280 (= e!487022 tp!245286)))

(assert (=> b!757649 (= tp!245050 e!487022)))

(declare-fun b!758281 () Bool)

(declare-fun tp!245285 () Bool)

(declare-fun tp!245287 () Bool)

(assert (=> b!758281 (= e!487022 (and tp!245285 tp!245287))))

(declare-fun b!758278 () Bool)

(assert (=> b!758278 (= e!487022 tp_is_empty!3711)))

(assert (= (and b!757649 ((_ is ElementMatch!1957) (_1!5525 (_1!5526 (h!13772 mapValue!5322))))) b!758278))

(assert (= (and b!757649 ((_ is Concat!3611) (_1!5525 (_1!5526 (h!13772 mapValue!5322))))) b!758279))

(assert (= (and b!757649 ((_ is Star!1957) (_1!5525 (_1!5526 (h!13772 mapValue!5322))))) b!758280))

(assert (= (and b!757649 ((_ is Union!1957) (_1!5525 (_1!5526 (h!13772 mapValue!5322))))) b!758281))

(declare-fun setIsEmpty!6445 () Bool)

(declare-fun setRes!6445 () Bool)

(assert (=> setIsEmpty!6445 setRes!6445))

(declare-fun b!758283 () Bool)

(declare-fun e!487024 () Bool)

(declare-fun tp!245292 () Bool)

(assert (=> b!758283 (= e!487024 tp!245292)))

(declare-fun b!758284 () Bool)

(declare-fun e!487023 () Bool)

(declare-fun tp!245290 () Bool)

(assert (=> b!758284 (= e!487023 tp!245290)))

(declare-fun tp!245289 () Bool)

(declare-fun setNonEmpty!6445 () Bool)

(declare-fun setElem!6445 () Context!718)

(assert (=> setNonEmpty!6445 (= setRes!6445 (and tp!245289 (inv!10657 setElem!6445) e!487023))))

(declare-fun setRest!6445 () (InoxSet Context!718))

(assert (=> setNonEmpty!6445 (= (_2!5526 (h!13772 (t!91115 mapValue!5322))) ((_ map or) (store ((as const (Array Context!718 Bool)) false) setElem!6445 true) setRest!6445))))

(declare-fun b!758282 () Bool)

(declare-fun tp!245288 () Bool)

(declare-fun e!487025 () Bool)

(declare-fun tp!245291 () Bool)

(assert (=> b!758282 (= e!487025 (and tp!245291 (inv!10657 (_2!5525 (_1!5526 (h!13772 (t!91115 mapValue!5322))))) e!487024 tp_is_empty!3711 setRes!6445 tp!245288))))

(declare-fun condSetEmpty!6445 () Bool)

(assert (=> b!758282 (= condSetEmpty!6445 (= (_2!5526 (h!13772 (t!91115 mapValue!5322))) ((as const (Array Context!718 Bool)) false)))))

(assert (=> b!757649 (= tp!245047 e!487025)))

(assert (= b!758282 b!758283))

(assert (= (and b!758282 condSetEmpty!6445) setIsEmpty!6445))

(assert (= (and b!758282 (not condSetEmpty!6445)) setNonEmpty!6445))

(assert (= setNonEmpty!6445 b!758284))

(assert (= (and b!757649 ((_ is Cons!8371) (t!91115 mapValue!5322))) b!758282))

(declare-fun m!1024767 () Bool)

(assert (=> setNonEmpty!6445 m!1024767))

(declare-fun m!1024769 () Bool)

(assert (=> b!758282 m!1024769))

(declare-fun b!758285 () Bool)

(declare-fun e!487026 () Bool)

(declare-fun tp!245293 () Bool)

(declare-fun tp!245294 () Bool)

(assert (=> b!758285 (= e!487026 (and tp!245293 tp!245294))))

(assert (=> b!757767 (= tp!245189 e!487026)))

(assert (= (and b!757767 ((_ is Cons!8370) (exprs!859 setElem!6432))) b!758285))

(declare-fun b!758286 () Bool)

(declare-fun e!487027 () Bool)

(declare-fun tp!245295 () Bool)

(declare-fun tp!245296 () Bool)

(assert (=> b!758286 (= e!487027 (and tp!245295 tp!245296))))

(assert (=> b!757745 (= tp!245161 e!487027)))

(assert (= (and b!757745 ((_ is Cons!8370) (exprs!859 setElem!6429))) b!758286))

(declare-fun b!758287 () Bool)

(declare-fun e!487028 () Bool)

(declare-fun tp!245297 () Bool)

(declare-fun tp!245298 () Bool)

(assert (=> b!758287 (= e!487028 (and tp!245297 tp!245298))))

(assert (=> b!757748 (= tp!245167 e!487028)))

(assert (= (and b!757748 ((_ is Cons!8370) (exprs!859 setElem!6430))) b!758287))

(declare-fun b!758288 () Bool)

(declare-fun e!487029 () Bool)

(declare-fun tp!245299 () Bool)

(declare-fun tp!245300 () Bool)

(assert (=> b!758288 (= e!487029 (and tp!245299 tp!245300))))

(assert (=> b!757646 (= tp!245045 e!487029)))

(assert (= (and b!757646 ((_ is Cons!8370) (exprs!859 (_2!5525 (_1!5526 (h!13772 mapValue!5326)))))) b!758288))

(declare-fun setIsEmpty!6446 () Bool)

(declare-fun setRes!6446 () Bool)

(assert (=> setIsEmpty!6446 setRes!6446))

(declare-fun mapIsEmpty!5334 () Bool)

(declare-fun mapRes!5334 () Bool)

(assert (=> mapIsEmpty!5334 mapRes!5334))

(declare-fun b!758289 () Bool)

(declare-fun e!487033 () Bool)

(declare-fun tp!245308 () Bool)

(assert (=> b!758289 (= e!487033 tp!245308)))

(declare-fun b!758290 () Bool)

(declare-fun e!487034 () Bool)

(declare-fun tp!245305 () Bool)

(assert (=> b!758290 (= e!487034 tp!245305)))

(declare-fun setIsEmpty!6447 () Bool)

(declare-fun setRes!6447 () Bool)

(assert (=> setIsEmpty!6447 setRes!6447))

(declare-fun b!758291 () Bool)

(declare-fun tp!245311 () Bool)

(declare-fun tp!245302 () Bool)

(declare-fun mapValue!5334 () List!8385)

(declare-fun e!487035 () Bool)

(declare-fun e!487032 () Bool)

(assert (=> b!758291 (= e!487032 (and tp!245311 (inv!10657 (_2!5525 (_1!5526 (h!13772 mapValue!5334)))) e!487035 tp_is_empty!3711 setRes!6447 tp!245302))))

(declare-fun condSetEmpty!6446 () Bool)

(assert (=> b!758291 (= condSetEmpty!6446 (= (_2!5526 (h!13772 mapValue!5334)) ((as const (Array Context!718 Bool)) false)))))

(declare-fun b!758292 () Bool)

(declare-fun tp!245310 () Bool)

(assert (=> b!758292 (= e!487035 tp!245310)))

(declare-fun setNonEmpty!6446 () Bool)

(declare-fun tp!245303 () Bool)

(declare-fun setElem!6447 () Context!718)

(assert (=> setNonEmpty!6446 (= setRes!6446 (and tp!245303 (inv!10657 setElem!6447) e!487033))))

(declare-fun mapDefault!5334 () List!8385)

(declare-fun setRest!6447 () (InoxSet Context!718))

(assert (=> setNonEmpty!6446 (= (_2!5526 (h!13772 mapDefault!5334)) ((_ map or) (store ((as const (Array Context!718 Bool)) false) setElem!6447 true) setRest!6447))))

(declare-fun b!758294 () Bool)

(declare-fun e!487031 () Bool)

(declare-fun tp!245301 () Bool)

(assert (=> b!758294 (= e!487031 tp!245301)))

(declare-fun mapNonEmpty!5334 () Bool)

(declare-fun tp!245306 () Bool)

(assert (=> mapNonEmpty!5334 (= mapRes!5334 (and tp!245306 e!487032))))

(declare-fun mapKey!5334 () (_ BitVec 32))

(declare-fun mapRest!5334 () (Array (_ BitVec 32) List!8385))

(assert (=> mapNonEmpty!5334 (= mapRest!5326 (store mapRest!5334 mapKey!5334 mapValue!5334))))

(declare-fun setNonEmpty!6447 () Bool)

(declare-fun setElem!6446 () Context!718)

(declare-fun tp!245307 () Bool)

(assert (=> setNonEmpty!6447 (= setRes!6447 (and tp!245307 (inv!10657 setElem!6446) e!487031))))

(declare-fun setRest!6446 () (InoxSet Context!718))

(assert (=> setNonEmpty!6447 (= (_2!5526 (h!13772 mapValue!5334)) ((_ map or) (store ((as const (Array Context!718 Bool)) false) setElem!6446 true) setRest!6446))))

(declare-fun b!758293 () Bool)

(declare-fun e!487030 () Bool)

(declare-fun tp!245309 () Bool)

(declare-fun tp!245304 () Bool)

(assert (=> b!758293 (= e!487030 (and tp!245309 (inv!10657 (_2!5525 (_1!5526 (h!13772 mapDefault!5334)))) e!487034 tp_is_empty!3711 setRes!6446 tp!245304))))

(declare-fun condSetEmpty!6447 () Bool)

(assert (=> b!758293 (= condSetEmpty!6447 (= (_2!5526 (h!13772 mapDefault!5334)) ((as const (Array Context!718 Bool)) false)))))

(declare-fun condMapEmpty!5334 () Bool)

(assert (=> mapNonEmpty!5326 (= condMapEmpty!5334 (= mapRest!5326 ((as const (Array (_ BitVec 32) List!8385)) mapDefault!5334)))))

(assert (=> mapNonEmpty!5326 (= tp!245041 (and e!487030 mapRes!5334))))

(assert (= (and mapNonEmpty!5326 condMapEmpty!5334) mapIsEmpty!5334))

(assert (= (and mapNonEmpty!5326 (not condMapEmpty!5334)) mapNonEmpty!5334))

(assert (= b!758291 b!758292))

(assert (= (and b!758291 condSetEmpty!6446) setIsEmpty!6447))

(assert (= (and b!758291 (not condSetEmpty!6446)) setNonEmpty!6447))

(assert (= setNonEmpty!6447 b!758294))

(assert (= (and mapNonEmpty!5334 ((_ is Cons!8371) mapValue!5334)) b!758291))

(assert (= b!758293 b!758290))

(assert (= (and b!758293 condSetEmpty!6447) setIsEmpty!6446))

(assert (= (and b!758293 (not condSetEmpty!6447)) setNonEmpty!6446))

(assert (= setNonEmpty!6446 b!758289))

(assert (= (and mapNonEmpty!5326 ((_ is Cons!8371) mapDefault!5334)) b!758293))

(declare-fun m!1024771 () Bool)

(assert (=> setNonEmpty!6446 m!1024771))

(declare-fun m!1024773 () Bool)

(assert (=> b!758291 m!1024773))

(declare-fun m!1024775 () Bool)

(assert (=> setNonEmpty!6447 m!1024775))

(declare-fun m!1024777 () Bool)

(assert (=> mapNonEmpty!5334 m!1024777))

(declare-fun m!1024779 () Bool)

(assert (=> b!758293 m!1024779))

(declare-fun setIsEmpty!6448 () Bool)

(declare-fun setRes!6448 () Bool)

(assert (=> setIsEmpty!6448 setRes!6448))

(declare-fun e!487037 () Bool)

(assert (=> b!757746 (= tp!245162 e!487037)))

(declare-fun b!758295 () Bool)

(declare-fun tp!245313 () Bool)

(assert (=> b!758295 (= e!487037 (and setRes!6448 tp!245313))))

(declare-fun condSetEmpty!6448 () Bool)

(assert (=> b!758295 (= condSetEmpty!6448 (= (_1!5530 (_1!5531 (h!13778 (t!91121 mapValue!5332)))) ((as const (Array Context!718 Bool)) false)))))

(declare-fun setNonEmpty!6448 () Bool)

(declare-fun tp!245314 () Bool)

(declare-fun setElem!6448 () Context!718)

(declare-fun e!487036 () Bool)

(assert (=> setNonEmpty!6448 (= setRes!6448 (and tp!245314 (inv!10657 setElem!6448) e!487036))))

(declare-fun setRest!6448 () (InoxSet Context!718))

(assert (=> setNonEmpty!6448 (= (_1!5530 (_1!5531 (h!13778 (t!91121 mapValue!5332)))) ((_ map or) (store ((as const (Array Context!718 Bool)) false) setElem!6448 true) setRest!6448))))

(declare-fun b!758296 () Bool)

(declare-fun tp!245312 () Bool)

(assert (=> b!758296 (= e!487036 tp!245312)))

(assert (= (and b!758295 condSetEmpty!6448) setIsEmpty!6448))

(assert (= (and b!758295 (not condSetEmpty!6448)) setNonEmpty!6448))

(assert (= setNonEmpty!6448 b!758296))

(assert (= (and b!757746 ((_ is Cons!8377) (t!91121 mapValue!5332))) b!758295))

(declare-fun m!1024781 () Bool)

(assert (=> setNonEmpty!6448 m!1024781))

(declare-fun b!758298 () Bool)

(declare-fun e!487038 () Bool)

(declare-fun tp!245315 () Bool)

(declare-fun tp!245316 () Bool)

(assert (=> b!758298 (= e!487038 (and tp!245315 tp!245316))))

(declare-fun b!758299 () Bool)

(declare-fun tp!245318 () Bool)

(assert (=> b!758299 (= e!487038 tp!245318)))

(assert (=> b!757647 (= tp!245044 e!487038)))

(declare-fun b!758300 () Bool)

(declare-fun tp!245317 () Bool)

(declare-fun tp!245319 () Bool)

(assert (=> b!758300 (= e!487038 (and tp!245317 tp!245319))))

(declare-fun b!758297 () Bool)

(assert (=> b!758297 (= e!487038 tp_is_empty!3711)))

(assert (= (and b!757647 ((_ is ElementMatch!1957) (_1!5525 (_1!5526 (h!13772 mapDefault!5326))))) b!758297))

(assert (= (and b!757647 ((_ is Concat!3611) (_1!5525 (_1!5526 (h!13772 mapDefault!5326))))) b!758298))

(assert (= (and b!757647 ((_ is Star!1957) (_1!5525 (_1!5526 (h!13772 mapDefault!5326))))) b!758299))

(assert (= (and b!757647 ((_ is Union!1957) (_1!5525 (_1!5526 (h!13772 mapDefault!5326))))) b!758300))

(declare-fun setIsEmpty!6449 () Bool)

(declare-fun setRes!6449 () Bool)

(assert (=> setIsEmpty!6449 setRes!6449))

(declare-fun b!758302 () Bool)

(declare-fun e!487040 () Bool)

(declare-fun tp!245324 () Bool)

(assert (=> b!758302 (= e!487040 tp!245324)))

(declare-fun b!758303 () Bool)

(declare-fun e!487039 () Bool)

(declare-fun tp!245322 () Bool)

(assert (=> b!758303 (= e!487039 tp!245322)))

(declare-fun setElem!6449 () Context!718)

(declare-fun setNonEmpty!6449 () Bool)

(declare-fun tp!245321 () Bool)

(assert (=> setNonEmpty!6449 (= setRes!6449 (and tp!245321 (inv!10657 setElem!6449) e!487039))))

(declare-fun setRest!6449 () (InoxSet Context!718))

(assert (=> setNonEmpty!6449 (= (_2!5526 (h!13772 (t!91115 mapDefault!5326))) ((_ map or) (store ((as const (Array Context!718 Bool)) false) setElem!6449 true) setRest!6449))))

(declare-fun tp!245320 () Bool)

(declare-fun tp!245323 () Bool)

(declare-fun e!487041 () Bool)

(declare-fun b!758301 () Bool)

(assert (=> b!758301 (= e!487041 (and tp!245323 (inv!10657 (_2!5525 (_1!5526 (h!13772 (t!91115 mapDefault!5326))))) e!487040 tp_is_empty!3711 setRes!6449 tp!245320))))

(declare-fun condSetEmpty!6449 () Bool)

(assert (=> b!758301 (= condSetEmpty!6449 (= (_2!5526 (h!13772 (t!91115 mapDefault!5326))) ((as const (Array Context!718 Bool)) false)))))

(assert (=> b!757647 (= tp!245039 e!487041)))

(assert (= b!758301 b!758302))

(assert (= (and b!758301 condSetEmpty!6449) setIsEmpty!6449))

(assert (= (and b!758301 (not condSetEmpty!6449)) setNonEmpty!6449))

(assert (= setNonEmpty!6449 b!758303))

(assert (= (and b!757647 ((_ is Cons!8371) (t!91115 mapDefault!5326))) b!758301))

(declare-fun m!1024783 () Bool)

(assert (=> setNonEmpty!6449 m!1024783))

(declare-fun m!1024785 () Bool)

(assert (=> b!758301 m!1024785))

(declare-fun e!487043 () Bool)

(assert (=> b!757750 (= tp!245173 e!487043)))

(declare-fun e!487044 () Bool)

(declare-fun setRes!6450 () Bool)

(declare-fun setNonEmpty!6450 () Bool)

(declare-fun tp!245326 () Bool)

(declare-fun setElem!6450 () Context!718)

(assert (=> setNonEmpty!6450 (= setRes!6450 (and tp!245326 (inv!10657 setElem!6450) e!487044))))

(declare-fun setRest!6450 () (InoxSet Context!718))

(assert (=> setNonEmpty!6450 (= (_2!5528 (h!13773 (t!91116 mapDefault!5322))) ((_ map or) (store ((as const (Array Context!718 Bool)) false) setElem!6450 true) setRest!6450))))

(declare-fun setIsEmpty!6450 () Bool)

(assert (=> setIsEmpty!6450 setRes!6450))

(declare-fun b!758304 () Bool)

(declare-fun e!487042 () Bool)

(declare-fun tp!245327 () Bool)

(assert (=> b!758304 (= e!487042 tp!245327)))

(declare-fun b!758305 () Bool)

(declare-fun tp!245328 () Bool)

(assert (=> b!758305 (= e!487043 (and (inv!10657 (_1!5527 (_1!5528 (h!13773 (t!91116 mapDefault!5322))))) e!487042 tp_is_empty!3711 setRes!6450 tp!245328))))

(declare-fun condSetEmpty!6450 () Bool)

(assert (=> b!758305 (= condSetEmpty!6450 (= (_2!5528 (h!13773 (t!91116 mapDefault!5322))) ((as const (Array Context!718 Bool)) false)))))

(declare-fun b!758306 () Bool)

(declare-fun tp!245325 () Bool)

(assert (=> b!758306 (= e!487044 tp!245325)))

(assert (= b!758305 b!758304))

(assert (= (and b!758305 condSetEmpty!6450) setIsEmpty!6450))

(assert (= (and b!758305 (not condSetEmpty!6450)) setNonEmpty!6450))

(assert (= setNonEmpty!6450 b!758306))

(assert (= (and b!757750 ((_ is Cons!8372) (t!91116 mapDefault!5322))) b!758305))

(declare-fun m!1024787 () Bool)

(assert (=> setNonEmpty!6450 m!1024787))

(declare-fun m!1024789 () Bool)

(assert (=> b!758305 m!1024789))

(declare-fun b!758308 () Bool)

(declare-fun e!487045 () Bool)

(declare-fun tp!245329 () Bool)

(declare-fun tp!245330 () Bool)

(assert (=> b!758308 (= e!487045 (and tp!245329 tp!245330))))

(declare-fun b!758309 () Bool)

(declare-fun tp!245332 () Bool)

(assert (=> b!758309 (= e!487045 tp!245332)))

(assert (=> b!757675 (= tp!245075 e!487045)))

(declare-fun b!758310 () Bool)

(declare-fun tp!245331 () Bool)

(declare-fun tp!245333 () Bool)

(assert (=> b!758310 (= e!487045 (and tp!245331 tp!245333))))

(declare-fun b!758307 () Bool)

(assert (=> b!758307 (= e!487045 tp_is_empty!3711)))

(assert (= (and b!757675 ((_ is ElementMatch!1957) (regex!1610 (h!13777 (t!91120 rules!1486))))) b!758307))

(assert (= (and b!757675 ((_ is Concat!3611) (regex!1610 (h!13777 (t!91120 rules!1486))))) b!758308))

(assert (= (and b!757675 ((_ is Star!1957) (regex!1610 (h!13777 (t!91120 rules!1486))))) b!758309))

(assert (= (and b!757675 ((_ is Union!1957) (regex!1610 (h!13777 (t!91120 rules!1486))))) b!758310))

(declare-fun b!758311 () Bool)

(declare-fun e!487046 () Bool)

(declare-fun tp!245334 () Bool)

(declare-fun tp!245335 () Bool)

(assert (=> b!758311 (= e!487046 (and tp!245334 tp!245335))))

(assert (=> b!757643 (= tp!245043 e!487046)))

(assert (= (and b!757643 ((_ is Cons!8370) (exprs!859 setElem!6406))) b!758311))

(declare-fun condSetEmpty!6451 () Bool)

(assert (=> setNonEmpty!6421 (= condSetEmpty!6451 (= setRest!6421 ((as const (Array Context!718 Bool)) false)))))

(declare-fun setRes!6451 () Bool)

(assert (=> setNonEmpty!6421 (= tp!245131 setRes!6451)))

(declare-fun setIsEmpty!6451 () Bool)

(assert (=> setIsEmpty!6451 setRes!6451))

(declare-fun tp!245336 () Bool)

(declare-fun setElem!6451 () Context!718)

(declare-fun setNonEmpty!6451 () Bool)

(declare-fun e!487047 () Bool)

(assert (=> setNonEmpty!6451 (= setRes!6451 (and tp!245336 (inv!10657 setElem!6451) e!487047))))

(declare-fun setRest!6451 () (InoxSet Context!718))

(assert (=> setNonEmpty!6451 (= setRest!6421 ((_ map or) (store ((as const (Array Context!718 Bool)) false) setElem!6451 true) setRest!6451))))

(declare-fun b!758312 () Bool)

(declare-fun tp!245337 () Bool)

(assert (=> b!758312 (= e!487047 tp!245337)))

(assert (= (and setNonEmpty!6421 condSetEmpty!6451) setIsEmpty!6451))

(assert (= (and setNonEmpty!6421 (not condSetEmpty!6451)) setNonEmpty!6451))

(assert (= setNonEmpty!6451 b!758312))

(declare-fun m!1024791 () Bool)

(assert (=> setNonEmpty!6451 m!1024791))

(declare-fun b!758317 () Bool)

(declare-fun e!487050 () Bool)

(declare-fun tp!245340 () Bool)

(assert (=> b!758317 (= e!487050 (and tp_is_empty!3711 tp!245340))))

(assert (=> b!757665 (= tp!245061 e!487050)))

(assert (= (and b!757665 ((_ is Cons!8374) (innerList!2903 (xs!5524 (c!128735 (totalInput!2062 cacheFindLongestMatch!74)))))) b!758317))

(declare-fun condSetEmpty!6452 () Bool)

(assert (=> setNonEmpty!6423 (= condSetEmpty!6452 (= setRest!6423 ((as const (Array Context!718 Bool)) false)))))

(declare-fun setRes!6452 () Bool)

(assert (=> setNonEmpty!6423 (= tp!245142 setRes!6452)))

(declare-fun setIsEmpty!6452 () Bool)

(assert (=> setIsEmpty!6452 setRes!6452))

(declare-fun e!487051 () Bool)

(declare-fun setNonEmpty!6452 () Bool)

(declare-fun tp!245341 () Bool)

(declare-fun setElem!6452 () Context!718)

(assert (=> setNonEmpty!6452 (= setRes!6452 (and tp!245341 (inv!10657 setElem!6452) e!487051))))

(declare-fun setRest!6452 () (InoxSet Context!718))

(assert (=> setNonEmpty!6452 (= setRest!6423 ((_ map or) (store ((as const (Array Context!718 Bool)) false) setElem!6452 true) setRest!6452))))

(declare-fun b!758318 () Bool)

(declare-fun tp!245342 () Bool)

(assert (=> b!758318 (= e!487051 tp!245342)))

(assert (= (and setNonEmpty!6423 condSetEmpty!6452) setIsEmpty!6452))

(assert (= (and setNonEmpty!6423 (not condSetEmpty!6452)) setNonEmpty!6452))

(assert (= setNonEmpty!6452 b!758318))

(declare-fun m!1024793 () Bool)

(assert (=> setNonEmpty!6452 m!1024793))

(declare-fun setIsEmpty!6453 () Bool)

(declare-fun setRes!6453 () Bool)

(assert (=> setIsEmpty!6453 setRes!6453))

(declare-fun e!487053 () Bool)

(assert (=> b!757744 (= tp!245164 e!487053)))

(declare-fun b!758319 () Bool)

(declare-fun tp!245344 () Bool)

(assert (=> b!758319 (= e!487053 (and setRes!6453 tp!245344))))

(declare-fun condSetEmpty!6453 () Bool)

(assert (=> b!758319 (= condSetEmpty!6453 (= (_1!5530 (_1!5531 (h!13778 (t!91121 mapDefault!5332)))) ((as const (Array Context!718 Bool)) false)))))

(declare-fun tp!245345 () Bool)

(declare-fun setElem!6453 () Context!718)

(declare-fun e!487052 () Bool)

(declare-fun setNonEmpty!6453 () Bool)

(assert (=> setNonEmpty!6453 (= setRes!6453 (and tp!245345 (inv!10657 setElem!6453) e!487052))))

(declare-fun setRest!6453 () (InoxSet Context!718))

(assert (=> setNonEmpty!6453 (= (_1!5530 (_1!5531 (h!13778 (t!91121 mapDefault!5332)))) ((_ map or) (store ((as const (Array Context!718 Bool)) false) setElem!6453 true) setRest!6453))))

(declare-fun b!758320 () Bool)

(declare-fun tp!245343 () Bool)

(assert (=> b!758320 (= e!487052 tp!245343)))

(assert (= (and b!758319 condSetEmpty!6453) setIsEmpty!6453))

(assert (= (and b!758319 (not condSetEmpty!6453)) setNonEmpty!6453))

(assert (= setNonEmpty!6453 b!758320))

(assert (= (and b!757744 ((_ is Cons!8377) (t!91121 mapDefault!5332))) b!758319))

(declare-fun m!1024795 () Bool)

(assert (=> setNonEmpty!6453 m!1024795))

(declare-fun condSetEmpty!6454 () Bool)

(assert (=> setNonEmpty!6400 (= condSetEmpty!6454 (= setRest!6400 ((as const (Array Context!718 Bool)) false)))))

(declare-fun setRes!6454 () Bool)

(assert (=> setNonEmpty!6400 (= tp!245010 setRes!6454)))

(declare-fun setIsEmpty!6454 () Bool)

(assert (=> setIsEmpty!6454 setRes!6454))

(declare-fun setNonEmpty!6454 () Bool)

(declare-fun tp!245346 () Bool)

(declare-fun e!487054 () Bool)

(declare-fun setElem!6454 () Context!718)

(assert (=> setNonEmpty!6454 (= setRes!6454 (and tp!245346 (inv!10657 setElem!6454) e!487054))))

(declare-fun setRest!6454 () (InoxSet Context!718))

(assert (=> setNonEmpty!6454 (= setRest!6400 ((_ map or) (store ((as const (Array Context!718 Bool)) false) setElem!6454 true) setRest!6454))))

(declare-fun b!758321 () Bool)

(declare-fun tp!245347 () Bool)

(assert (=> b!758321 (= e!487054 tp!245347)))

(assert (= (and setNonEmpty!6400 condSetEmpty!6454) setIsEmpty!6454))

(assert (= (and setNonEmpty!6400 (not condSetEmpty!6454)) setNonEmpty!6454))

(assert (= setNonEmpty!6454 b!758321))

(declare-fun m!1024797 () Bool)

(assert (=> setNonEmpty!6454 m!1024797))

(declare-fun condSetEmpty!6455 () Bool)

(assert (=> setNonEmpty!6399 (= condSetEmpty!6455 (= setRest!6399 ((as const (Array Context!718 Bool)) false)))))

(declare-fun setRes!6455 () Bool)

(assert (=> setNonEmpty!6399 (= tp!245005 setRes!6455)))

(declare-fun setIsEmpty!6455 () Bool)

(assert (=> setIsEmpty!6455 setRes!6455))

(declare-fun setNonEmpty!6455 () Bool)

(declare-fun e!487055 () Bool)

(declare-fun setElem!6455 () Context!718)

(declare-fun tp!245348 () Bool)

(assert (=> setNonEmpty!6455 (= setRes!6455 (and tp!245348 (inv!10657 setElem!6455) e!487055))))

(declare-fun setRest!6455 () (InoxSet Context!718))

(assert (=> setNonEmpty!6455 (= setRest!6399 ((_ map or) (store ((as const (Array Context!718 Bool)) false) setElem!6455 true) setRest!6455))))

(declare-fun b!758322 () Bool)

(declare-fun tp!245349 () Bool)

(assert (=> b!758322 (= e!487055 tp!245349)))

(assert (= (and setNonEmpty!6399 condSetEmpty!6455) setIsEmpty!6455))

(assert (= (and setNonEmpty!6399 (not condSetEmpty!6455)) setNonEmpty!6455))

(assert (= setNonEmpty!6455 b!758322))

(declare-fun m!1024799 () Bool)

(assert (=> setNonEmpty!6455 m!1024799))

(declare-fun condSetEmpty!6456 () Bool)

(assert (=> setNonEmpty!6428 (= condSetEmpty!6456 (= setRest!6429 ((as const (Array Context!718 Bool)) false)))))

(declare-fun setRes!6456 () Bool)

(assert (=> setNonEmpty!6428 (= tp!245163 setRes!6456)))

(declare-fun setIsEmpty!6456 () Bool)

(assert (=> setIsEmpty!6456 setRes!6456))

(declare-fun setNonEmpty!6456 () Bool)

(declare-fun setElem!6456 () Context!718)

(declare-fun tp!245350 () Bool)

(declare-fun e!487056 () Bool)

(assert (=> setNonEmpty!6456 (= setRes!6456 (and tp!245350 (inv!10657 setElem!6456) e!487056))))

(declare-fun setRest!6456 () (InoxSet Context!718))

(assert (=> setNonEmpty!6456 (= setRest!6429 ((_ map or) (store ((as const (Array Context!718 Bool)) false) setElem!6456 true) setRest!6456))))

(declare-fun b!758323 () Bool)

(declare-fun tp!245351 () Bool)

(assert (=> b!758323 (= e!487056 tp!245351)))

(assert (= (and setNonEmpty!6428 condSetEmpty!6456) setIsEmpty!6456))

(assert (= (and setNonEmpty!6428 (not condSetEmpty!6456)) setNonEmpty!6456))

(assert (= setNonEmpty!6456 b!758323))

(declare-fun m!1024801 () Bool)

(assert (=> setNonEmpty!6456 m!1024801))

(declare-fun tp!245353 () Bool)

(declare-fun tp!245354 () Bool)

(declare-fun b!758324 () Bool)

(declare-fun e!487057 () Bool)

(assert (=> b!758324 (= e!487057 (and (inv!10644 (left!6320 (left!6320 (c!128735 treated!50)))) tp!245354 (inv!10644 (right!6650 (left!6320 (c!128735 treated!50)))) tp!245353))))

(declare-fun b!758326 () Bool)

(declare-fun e!487058 () Bool)

(declare-fun tp!245352 () Bool)

(assert (=> b!758326 (= e!487058 tp!245352)))

(declare-fun b!758325 () Bool)

(assert (=> b!758325 (= e!487057 (and (inv!10658 (xs!5524 (left!6320 (c!128735 treated!50)))) e!487058))))

(assert (=> b!757727 (= tp!245140 (and (inv!10644 (left!6320 (c!128735 treated!50))) e!487057))))

(assert (= (and b!757727 ((_ is Node!2845) (left!6320 (c!128735 treated!50)))) b!758324))

(assert (= b!758325 b!758326))

(assert (= (and b!757727 ((_ is Leaf!4177) (left!6320 (c!128735 treated!50)))) b!758325))

(declare-fun m!1024803 () Bool)

(assert (=> b!758324 m!1024803))

(declare-fun m!1024805 () Bool)

(assert (=> b!758324 m!1024805))

(declare-fun m!1024807 () Bool)

(assert (=> b!758325 m!1024807))

(assert (=> b!757727 m!1024022))

(declare-fun b!758327 () Bool)

(declare-fun e!487059 () Bool)

(declare-fun tp!245356 () Bool)

(declare-fun tp!245357 () Bool)

(assert (=> b!758327 (= e!487059 (and (inv!10644 (left!6320 (right!6650 (c!128735 treated!50)))) tp!245357 (inv!10644 (right!6650 (right!6650 (c!128735 treated!50)))) tp!245356))))

(declare-fun b!758329 () Bool)

(declare-fun e!487060 () Bool)

(declare-fun tp!245355 () Bool)

(assert (=> b!758329 (= e!487060 tp!245355)))

(declare-fun b!758328 () Bool)

(assert (=> b!758328 (= e!487059 (and (inv!10658 (xs!5524 (right!6650 (c!128735 treated!50)))) e!487060))))

(assert (=> b!757727 (= tp!245139 (and (inv!10644 (right!6650 (c!128735 treated!50))) e!487059))))

(assert (= (and b!757727 ((_ is Node!2845) (right!6650 (c!128735 treated!50)))) b!758327))

(assert (= b!758328 b!758329))

(assert (= (and b!757727 ((_ is Leaf!4177) (right!6650 (c!128735 treated!50)))) b!758328))

(declare-fun m!1024809 () Bool)

(assert (=> b!758327 m!1024809))

(declare-fun m!1024811 () Bool)

(assert (=> b!758327 m!1024811))

(declare-fun m!1024813 () Bool)

(assert (=> b!758328 m!1024813))

(assert (=> b!757727 m!1024024))

(declare-fun b!758330 () Bool)

(declare-fun e!487061 () Bool)

(declare-fun tp!245358 () Bool)

(declare-fun tp!245359 () Bool)

(assert (=> b!758330 (= e!487061 (and tp!245358 tp!245359))))

(assert (=> b!757705 (= tp!245113 e!487061)))

(assert (= (and b!757705 ((_ is Cons!8370) (exprs!859 (_1!5527 (_1!5528 (h!13773 mapValue!5323)))))) b!758330))

(declare-fun e!487063 () Bool)

(declare-fun tp!245360 () Bool)

(declare-fun b!758331 () Bool)

(declare-fun tp!245361 () Bool)

(assert (=> b!758331 (= e!487063 (and (inv!10647 (left!6321 (left!6321 (c!128736 acc!372)))) tp!245361 (inv!10647 (right!6651 (left!6321 (c!128736 acc!372)))) tp!245360))))

(declare-fun b!758333 () Bool)

(declare-fun e!487062 () Bool)

(declare-fun tp!245362 () Bool)

(assert (=> b!758333 (= e!487062 tp!245362)))

(declare-fun b!758332 () Bool)

(assert (=> b!758332 (= e!487063 (and (inv!10656 (xs!5525 (left!6321 (c!128736 acc!372)))) e!487062))))

(assert (=> b!757612 (= tp!244992 (and (inv!10647 (left!6321 (c!128736 acc!372))) e!487063))))

(assert (= (and b!757612 ((_ is Node!2846) (left!6321 (c!128736 acc!372)))) b!758331))

(assert (= b!758332 b!758333))

(assert (= (and b!757612 ((_ is Leaf!4178) (left!6321 (c!128736 acc!372)))) b!758332))

(declare-fun m!1024815 () Bool)

(assert (=> b!758331 m!1024815))

(declare-fun m!1024817 () Bool)

(assert (=> b!758331 m!1024817))

(declare-fun m!1024819 () Bool)

(assert (=> b!758332 m!1024819))

(assert (=> b!757612 m!1023946))

(declare-fun tp!245363 () Bool)

(declare-fun b!758334 () Bool)

(declare-fun tp!245364 () Bool)

(declare-fun e!487065 () Bool)

(assert (=> b!758334 (= e!487065 (and (inv!10647 (left!6321 (right!6651 (c!128736 acc!372)))) tp!245364 (inv!10647 (right!6651 (right!6651 (c!128736 acc!372)))) tp!245363))))

(declare-fun b!758336 () Bool)

(declare-fun e!487064 () Bool)

(declare-fun tp!245365 () Bool)

(assert (=> b!758336 (= e!487064 tp!245365)))

(declare-fun b!758335 () Bool)

(assert (=> b!758335 (= e!487065 (and (inv!10656 (xs!5525 (right!6651 (c!128736 acc!372)))) e!487064))))

(assert (=> b!757612 (= tp!244991 (and (inv!10647 (right!6651 (c!128736 acc!372))) e!487065))))

(assert (= (and b!757612 ((_ is Node!2846) (right!6651 (c!128736 acc!372)))) b!758334))

(assert (= b!758335 b!758336))

(assert (= (and b!757612 ((_ is Leaf!4178) (right!6651 (c!128736 acc!372)))) b!758335))

(declare-fun m!1024821 () Bool)

(assert (=> b!758334 m!1024821))

(declare-fun m!1024823 () Bool)

(assert (=> b!758334 m!1024823))

(declare-fun m!1024825 () Bool)

(assert (=> b!758335 m!1024825))

(assert (=> b!757612 m!1023948))

(declare-fun e!487067 () Bool)

(assert (=> b!757709 (= tp!245118 e!487067)))

(declare-fun setElem!6457 () Context!718)

(declare-fun setRes!6457 () Bool)

(declare-fun e!487068 () Bool)

(declare-fun setNonEmpty!6457 () Bool)

(declare-fun tp!245367 () Bool)

(assert (=> setNonEmpty!6457 (= setRes!6457 (and tp!245367 (inv!10657 setElem!6457) e!487068))))

(declare-fun setRest!6457 () (InoxSet Context!718))

(assert (=> setNonEmpty!6457 (= (_2!5528 (h!13773 (t!91116 (zeroValue!1355 (v!18511 (underlying!2379 (v!18512 (underlying!2380 (cache!1457 cacheUp!502))))))))) ((_ map or) (store ((as const (Array Context!718 Bool)) false) setElem!6457 true) setRest!6457))))

(declare-fun setIsEmpty!6457 () Bool)

(assert (=> setIsEmpty!6457 setRes!6457))

(declare-fun b!758337 () Bool)

(declare-fun e!487066 () Bool)

(declare-fun tp!245368 () Bool)

(assert (=> b!758337 (= e!487066 tp!245368)))

(declare-fun tp!245369 () Bool)

(declare-fun b!758338 () Bool)

(assert (=> b!758338 (= e!487067 (and (inv!10657 (_1!5527 (_1!5528 (h!13773 (t!91116 (zeroValue!1355 (v!18511 (underlying!2379 (v!18512 (underlying!2380 (cache!1457 cacheUp!502))))))))))) e!487066 tp_is_empty!3711 setRes!6457 tp!245369))))

(declare-fun condSetEmpty!6457 () Bool)

(assert (=> b!758338 (= condSetEmpty!6457 (= (_2!5528 (h!13773 (t!91116 (zeroValue!1355 (v!18511 (underlying!2379 (v!18512 (underlying!2380 (cache!1457 cacheUp!502))))))))) ((as const (Array Context!718 Bool)) false)))))

(declare-fun b!758339 () Bool)

(declare-fun tp!245366 () Bool)

(assert (=> b!758339 (= e!487068 tp!245366)))

(assert (= b!758338 b!758337))

(assert (= (and b!758338 condSetEmpty!6457) setIsEmpty!6457))

(assert (= (and b!758338 (not condSetEmpty!6457)) setNonEmpty!6457))

(assert (= setNonEmpty!6457 b!758339))

(assert (= (and b!757709 ((_ is Cons!8372) (t!91116 (zeroValue!1355 (v!18511 (underlying!2379 (v!18512 (underlying!2380 (cache!1457 cacheUp!502))))))))) b!758338))

(declare-fun m!1024827 () Bool)

(assert (=> setNonEmpty!6457 m!1024827))

(declare-fun m!1024829 () Bool)

(assert (=> b!758338 m!1024829))

(declare-fun b!758340 () Bool)

(declare-fun e!487069 () Bool)

(declare-fun tp!245370 () Bool)

(declare-fun tp!245371 () Bool)

(assert (=> b!758340 (= e!487069 (and tp!245370 tp!245371))))

(assert (=> b!757713 (= tp!245119 e!487069)))

(assert (= (and b!757713 ((_ is Cons!8370) (exprs!859 setElem!6418))) b!758340))

(declare-fun b!758341 () Bool)

(declare-fun e!487070 () Bool)

(declare-fun tp!245372 () Bool)

(declare-fun tp!245373 () Bool)

(assert (=> b!758341 (= e!487070 (and tp!245372 tp!245373))))

(assert (=> b!757627 (= tp!245013 e!487070)))

(assert (= (and b!757627 ((_ is Cons!8370) (exprs!859 (_2!5525 (_1!5526 (h!13772 (minValue!1354 (v!18509 (underlying!2377 (v!18510 (underlying!2378 (cache!1456 cacheDown!515)))))))))))) b!758341))

(declare-fun condSetEmpty!6458 () Bool)

(assert (=> setNonEmpty!6412 (= condSetEmpty!6458 (= setRest!6412 ((as const (Array Context!718 Bool)) false)))))

(declare-fun setRes!6458 () Bool)

(assert (=> setNonEmpty!6412 (= tp!245099 setRes!6458)))

(declare-fun setIsEmpty!6458 () Bool)

(assert (=> setIsEmpty!6458 setRes!6458))

(declare-fun tp!245374 () Bool)

(declare-fun setNonEmpty!6458 () Bool)

(declare-fun e!487071 () Bool)

(declare-fun setElem!6458 () Context!718)

(assert (=> setNonEmpty!6458 (= setRes!6458 (and tp!245374 (inv!10657 setElem!6458) e!487071))))

(declare-fun setRest!6458 () (InoxSet Context!718))

(assert (=> setNonEmpty!6458 (= setRest!6412 ((_ map or) (store ((as const (Array Context!718 Bool)) false) setElem!6458 true) setRest!6458))))

(declare-fun b!758342 () Bool)

(declare-fun tp!245375 () Bool)

(assert (=> b!758342 (= e!487071 tp!245375)))

(assert (= (and setNonEmpty!6412 condSetEmpty!6458) setIsEmpty!6458))

(assert (= (and setNonEmpty!6412 (not condSetEmpty!6458)) setNonEmpty!6458))

(assert (= setNonEmpty!6458 b!758342))

(declare-fun m!1024831 () Bool)

(assert (=> setNonEmpty!6458 m!1024831))

(declare-fun b!758343 () Bool)

(declare-fun e!487072 () Bool)

(declare-fun tp!245376 () Bool)

(declare-fun tp!245377 () Bool)

(assert (=> b!758343 (= e!487072 (and tp!245376 tp!245377))))

(assert (=> b!757624 (= tp!245008 e!487072)))

(assert (= (and b!757624 ((_ is Cons!8370) (exprs!859 (_2!5525 (_1!5526 (h!13772 (zeroValue!1354 (v!18509 (underlying!2377 (v!18510 (underlying!2378 (cache!1456 cacheDown!515)))))))))))) b!758343))

(declare-fun condSetEmpty!6459 () Bool)

(assert (=> setNonEmpty!6407 (= condSetEmpty!6459 (= setRest!6407 ((as const (Array Context!718 Bool)) false)))))

(declare-fun setRes!6459 () Bool)

(assert (=> setNonEmpty!6407 (= tp!245048 setRes!6459)))

(declare-fun setIsEmpty!6459 () Bool)

(assert (=> setIsEmpty!6459 setRes!6459))

(declare-fun setElem!6459 () Context!718)

(declare-fun e!487073 () Bool)

(declare-fun setNonEmpty!6459 () Bool)

(declare-fun tp!245378 () Bool)

(assert (=> setNonEmpty!6459 (= setRes!6459 (and tp!245378 (inv!10657 setElem!6459) e!487073))))

(declare-fun setRest!6459 () (InoxSet Context!718))

(assert (=> setNonEmpty!6459 (= setRest!6407 ((_ map or) (store ((as const (Array Context!718 Bool)) false) setElem!6459 true) setRest!6459))))

(declare-fun b!758344 () Bool)

(declare-fun tp!245379 () Bool)

(assert (=> b!758344 (= e!487073 tp!245379)))

(assert (= (and setNonEmpty!6407 condSetEmpty!6459) setIsEmpty!6459))

(assert (= (and setNonEmpty!6407 (not condSetEmpty!6459)) setNonEmpty!6459))

(assert (= setNonEmpty!6459 b!758344))

(declare-fun m!1024833 () Bool)

(assert (=> setNonEmpty!6459 m!1024833))

(declare-fun condSetEmpty!6460 () Bool)

(assert (=> setNonEmpty!6422 (= condSetEmpty!6460 (= setRest!6422 ((as const (Array Context!718 Bool)) false)))))

(declare-fun setRes!6460 () Bool)

(assert (=> setNonEmpty!6422 (= tp!245134 setRes!6460)))

(declare-fun setIsEmpty!6460 () Bool)

(assert (=> setIsEmpty!6460 setRes!6460))

(declare-fun e!487074 () Bool)

(declare-fun setElem!6460 () Context!718)

(declare-fun setNonEmpty!6460 () Bool)

(declare-fun tp!245380 () Bool)

(assert (=> setNonEmpty!6460 (= setRes!6460 (and tp!245380 (inv!10657 setElem!6460) e!487074))))

(declare-fun setRest!6460 () (InoxSet Context!718))

(assert (=> setNonEmpty!6460 (= setRest!6422 ((_ map or) (store ((as const (Array Context!718 Bool)) false) setElem!6460 true) setRest!6460))))

(declare-fun b!758345 () Bool)

(declare-fun tp!245381 () Bool)

(assert (=> b!758345 (= e!487074 tp!245381)))

(assert (= (and setNonEmpty!6422 condSetEmpty!6460) setIsEmpty!6460))

(assert (= (and setNonEmpty!6422 (not condSetEmpty!6460)) setNonEmpty!6460))

(assert (= setNonEmpty!6460 b!758345))

(declare-fun m!1024835 () Bool)

(assert (=> setNonEmpty!6460 m!1024835))

(declare-fun condSetEmpty!6461 () Bool)

(assert (=> setNonEmpty!6416 (= condSetEmpty!6461 (= setRest!6416 ((as const (Array Context!718 Bool)) false)))))

(declare-fun setRes!6461 () Bool)

(assert (=> setNonEmpty!6416 (= tp!245112 setRes!6461)))

(declare-fun setIsEmpty!6461 () Bool)

(assert (=> setIsEmpty!6461 setRes!6461))

(declare-fun tp!245382 () Bool)

(declare-fun setElem!6461 () Context!718)

(declare-fun e!487075 () Bool)

(declare-fun setNonEmpty!6461 () Bool)

(assert (=> setNonEmpty!6461 (= setRes!6461 (and tp!245382 (inv!10657 setElem!6461) e!487075))))

(declare-fun setRest!6461 () (InoxSet Context!718))

(assert (=> setNonEmpty!6461 (= setRest!6416 ((_ map or) (store ((as const (Array Context!718 Bool)) false) setElem!6461 true) setRest!6461))))

(declare-fun b!758346 () Bool)

(declare-fun tp!245383 () Bool)

(assert (=> b!758346 (= e!487075 tp!245383)))

(assert (= (and setNonEmpty!6416 condSetEmpty!6461) setIsEmpty!6461))

(assert (= (and setNonEmpty!6416 (not condSetEmpty!6461)) setNonEmpty!6461))

(assert (= setNonEmpty!6461 b!758346))

(declare-fun m!1024837 () Bool)

(assert (=> setNonEmpty!6461 m!1024837))

(declare-fun b!758360 () Bool)

(declare-fun b_free!23649 () Bool)

(declare-fun b_next!23713 () Bool)

(assert (=> b!758360 (= b_free!23649 (not b_next!23713))))

(declare-fun tp!245395 () Bool)

(declare-fun b_and!70557 () Bool)

(assert (=> b!758360 (= tp!245395 b_and!70557)))

(declare-fun b_free!23651 () Bool)

(declare-fun b_next!23715 () Bool)

(assert (=> b!758360 (= b_free!23651 (not b_next!23715))))

(declare-fun tp!245398 () Bool)

(declare-fun b_and!70559 () Bool)

(assert (=> b!758360 (= tp!245398 b_and!70559)))

(declare-fun e!487092 () Bool)

(assert (=> b!757614 (= tp!244993 e!487092)))

(declare-fun b!758357 () Bool)

(declare-fun tp!245396 () Bool)

(declare-fun e!487090 () Bool)

(declare-fun inv!10659 (Token!2918) Bool)

(assert (=> b!758357 (= e!487092 (and (inv!10659 (h!13776 (innerList!2904 (xs!5525 (c!128736 acc!372))))) e!487090 tp!245396))))

(declare-fun e!487093 () Bool)

(assert (=> b!758360 (= e!487093 (and tp!245395 tp!245398))))

(declare-fun e!487088 () Bool)

(declare-fun b!758358 () Bool)

(declare-fun tp!245397 () Bool)

(declare-fun inv!21 (TokenValue!1654) Bool)

(assert (=> b!758358 (= e!487090 (and (inv!21 (value!51561 (h!13776 (innerList!2904 (xs!5525 (c!128736 acc!372)))))) e!487088 tp!245397))))

(declare-fun b!758359 () Bool)

(declare-fun tp!245394 () Bool)

(assert (=> b!758359 (= e!487088 (and tp!245394 (inv!10643 (tag!1872 (rule!2731 (h!13776 (innerList!2904 (xs!5525 (c!128736 acc!372))))))) (inv!10645 (transformation!1610 (rule!2731 (h!13776 (innerList!2904 (xs!5525 (c!128736 acc!372))))))) e!487093))))

(assert (= b!758359 b!758360))

(assert (= b!758358 b!758359))

(assert (= b!758357 b!758358))

(assert (= (and b!757614 ((_ is Cons!8375) (innerList!2904 (xs!5525 (c!128736 acc!372))))) b!758357))

(declare-fun m!1024839 () Bool)

(assert (=> b!758357 m!1024839))

(declare-fun m!1024841 () Bool)

(assert (=> b!758358 m!1024841))

(declare-fun m!1024843 () Bool)

(assert (=> b!758359 m!1024843))

(declare-fun m!1024845 () Bool)

(assert (=> b!758359 m!1024845))

(declare-fun b!758362 () Bool)

(declare-fun e!487094 () Bool)

(declare-fun tp!245399 () Bool)

(declare-fun tp!245400 () Bool)

(assert (=> b!758362 (= e!487094 (and tp!245399 tp!245400))))

(declare-fun b!758363 () Bool)

(declare-fun tp!245402 () Bool)

(assert (=> b!758363 (= e!487094 tp!245402)))

(assert (=> b!757764 (= tp!245187 e!487094)))

(declare-fun b!758364 () Bool)

(declare-fun tp!245401 () Bool)

(declare-fun tp!245403 () Bool)

(assert (=> b!758364 (= e!487094 (and tp!245401 tp!245403))))

(declare-fun b!758361 () Bool)

(assert (=> b!758361 (= e!487094 tp_is_empty!3711)))

(assert (= (and b!757764 ((_ is ElementMatch!1957) (reg!2286 (regex!1610 (h!13777 rules!1486))))) b!758361))

(assert (= (and b!757764 ((_ is Concat!3611) (reg!2286 (regex!1610 (h!13777 rules!1486))))) b!758362))

(assert (= (and b!757764 ((_ is Star!1957) (reg!2286 (regex!1610 (h!13777 rules!1486))))) b!758363))

(assert (= (and b!757764 ((_ is Union!1957) (reg!2286 (regex!1610 (h!13777 rules!1486))))) b!758364))

(declare-fun setIsEmpty!6462 () Bool)

(declare-fun setRes!6462 () Bool)

(assert (=> setIsEmpty!6462 setRes!6462))

(declare-fun e!487096 () Bool)

(assert (=> b!757720 (= tp!245130 e!487096)))

(declare-fun b!758365 () Bool)

(declare-fun tp!245405 () Bool)

(assert (=> b!758365 (= e!487096 (and setRes!6462 tp!245405))))

(declare-fun condSetEmpty!6462 () Bool)

(assert (=> b!758365 (= condSetEmpty!6462 (= (_1!5530 (_1!5531 (h!13778 (t!91121 (zeroValue!1356 (v!18513 (underlying!2381 (v!18514 (underlying!2382 (cache!1458 cacheFindLongestMatch!74)))))))))) ((as const (Array Context!718 Bool)) false)))))

(declare-fun setElem!6462 () Context!718)

(declare-fun setNonEmpty!6462 () Bool)

(declare-fun e!487095 () Bool)

(declare-fun tp!245406 () Bool)

(assert (=> setNonEmpty!6462 (= setRes!6462 (and tp!245406 (inv!10657 setElem!6462) e!487095))))

(declare-fun setRest!6462 () (InoxSet Context!718))

(assert (=> setNonEmpty!6462 (= (_1!5530 (_1!5531 (h!13778 (t!91121 (zeroValue!1356 (v!18513 (underlying!2381 (v!18514 (underlying!2382 (cache!1458 cacheFindLongestMatch!74)))))))))) ((_ map or) (store ((as const (Array Context!718 Bool)) false) setElem!6462 true) setRest!6462))))

(declare-fun b!758366 () Bool)

(declare-fun tp!245404 () Bool)

(assert (=> b!758366 (= e!487095 tp!245404)))

(assert (= (and b!758365 condSetEmpty!6462) setIsEmpty!6462))

(assert (= (and b!758365 (not condSetEmpty!6462)) setNonEmpty!6462))

(assert (= setNonEmpty!6462 b!758366))

(assert (= (and b!757720 ((_ is Cons!8377) (t!91121 (zeroValue!1356 (v!18513 (underlying!2381 (v!18514 (underlying!2382 (cache!1458 cacheFindLongestMatch!74))))))))) b!758365))

(declare-fun m!1024847 () Bool)

(assert (=> setNonEmpty!6462 m!1024847))

(declare-fun b!758367 () Bool)

(declare-fun e!487097 () Bool)

(declare-fun tp!245407 () Bool)

(assert (=> b!758367 (= e!487097 (and tp_is_empty!3711 tp!245407))))

(assert (=> b!757729 (= tp!245138 e!487097)))

(assert (= (and b!757729 ((_ is Cons!8374) (innerList!2903 (xs!5524 (c!128735 treated!50))))) b!758367))

(declare-fun b!758368 () Bool)

(declare-fun e!487098 () Bool)

(declare-fun tp!245408 () Bool)

(declare-fun tp!245409 () Bool)

(assert (=> b!758368 (= e!487098 (and tp!245408 tp!245409))))

(assert (=> b!757707 (= tp!245111 e!487098)))

(assert (= (and b!757707 ((_ is Cons!8370) (exprs!859 setElem!6416))) b!758368))

(declare-fun e!487099 () Bool)

(declare-fun tp!245412 () Bool)

(declare-fun tp!245411 () Bool)

(declare-fun b!758369 () Bool)

(assert (=> b!758369 (= e!487099 (and (inv!10644 (left!6320 (left!6320 (c!128735 (totalInput!2062 cacheFindLongestMatch!74))))) tp!245412 (inv!10644 (right!6650 (left!6320 (c!128735 (totalInput!2062 cacheFindLongestMatch!74))))) tp!245411))))

(declare-fun b!758371 () Bool)

(declare-fun e!487100 () Bool)

(declare-fun tp!245410 () Bool)

(assert (=> b!758371 (= e!487100 tp!245410)))

(declare-fun b!758370 () Bool)

(assert (=> b!758370 (= e!487099 (and (inv!10658 (xs!5524 (left!6320 (c!128735 (totalInput!2062 cacheFindLongestMatch!74))))) e!487100))))

(assert (=> b!757663 (= tp!245063 (and (inv!10644 (left!6320 (c!128735 (totalInput!2062 cacheFindLongestMatch!74)))) e!487099))))

(assert (= (and b!757663 ((_ is Node!2845) (left!6320 (c!128735 (totalInput!2062 cacheFindLongestMatch!74))))) b!758369))

(assert (= b!758370 b!758371))

(assert (= (and b!757663 ((_ is Leaf!4177) (left!6320 (c!128735 (totalInput!2062 cacheFindLongestMatch!74))))) b!758370))

(declare-fun m!1024849 () Bool)

(assert (=> b!758369 m!1024849))

(declare-fun m!1024851 () Bool)

(assert (=> b!758369 m!1024851))

(declare-fun m!1024853 () Bool)

(assert (=> b!758370 m!1024853))

(assert (=> b!757663 m!1023980))

(declare-fun tp!245415 () Bool)

(declare-fun e!487101 () Bool)

(declare-fun b!758372 () Bool)

(declare-fun tp!245414 () Bool)

(assert (=> b!758372 (= e!487101 (and (inv!10644 (left!6320 (right!6650 (c!128735 (totalInput!2062 cacheFindLongestMatch!74))))) tp!245415 (inv!10644 (right!6650 (right!6650 (c!128735 (totalInput!2062 cacheFindLongestMatch!74))))) tp!245414))))

(declare-fun b!758374 () Bool)

(declare-fun e!487102 () Bool)

(declare-fun tp!245413 () Bool)

(assert (=> b!758374 (= e!487102 tp!245413)))

(declare-fun b!758373 () Bool)

(assert (=> b!758373 (= e!487101 (and (inv!10658 (xs!5524 (right!6650 (c!128735 (totalInput!2062 cacheFindLongestMatch!74))))) e!487102))))

(assert (=> b!757663 (= tp!245062 (and (inv!10644 (right!6650 (c!128735 (totalInput!2062 cacheFindLongestMatch!74)))) e!487101))))

(assert (= (and b!757663 ((_ is Node!2845) (right!6650 (c!128735 (totalInput!2062 cacheFindLongestMatch!74))))) b!758372))

(assert (= b!758373 b!758374))

(assert (= (and b!757663 ((_ is Leaf!4177) (right!6650 (c!128735 (totalInput!2062 cacheFindLongestMatch!74))))) b!758373))

(declare-fun m!1024855 () Bool)

(assert (=> b!758372 m!1024855))

(declare-fun m!1024857 () Bool)

(assert (=> b!758372 m!1024857))

(declare-fun m!1024859 () Bool)

(assert (=> b!758373 m!1024859))

(assert (=> b!757663 m!1023982))

(declare-fun b!758375 () Bool)

(declare-fun e!487103 () Bool)

(declare-fun tp!245416 () Bool)

(declare-fun tp!245417 () Bool)

(assert (=> b!758375 (= e!487103 (and tp!245416 tp!245417))))

(assert (=> b!757731 (= tp!245145 e!487103)))

(assert (= (and b!757731 ((_ is Cons!8370) (exprs!859 (_2!5525 (_1!5526 (h!13772 mapDefault!5321)))))) b!758375))

(declare-fun condSetEmpty!6463 () Bool)

(assert (=> setNonEmpty!6413 (= condSetEmpty!6463 (= setRest!6413 ((as const (Array Context!718 Bool)) false)))))

(declare-fun setRes!6463 () Bool)

(assert (=> setNonEmpty!6413 (= tp!245102 setRes!6463)))

(declare-fun setIsEmpty!6463 () Bool)

(assert (=> setIsEmpty!6463 setRes!6463))

(declare-fun e!487104 () Bool)

(declare-fun tp!245418 () Bool)

(declare-fun setNonEmpty!6463 () Bool)

(declare-fun setElem!6463 () Context!718)

(assert (=> setNonEmpty!6463 (= setRes!6463 (and tp!245418 (inv!10657 setElem!6463) e!487104))))

(declare-fun setRest!6463 () (InoxSet Context!718))

(assert (=> setNonEmpty!6463 (= setRest!6413 ((_ map or) (store ((as const (Array Context!718 Bool)) false) setElem!6463 true) setRest!6463))))

(declare-fun b!758376 () Bool)

(declare-fun tp!245419 () Bool)

(assert (=> b!758376 (= e!487104 tp!245419)))

(assert (= (and setNonEmpty!6413 condSetEmpty!6463) setIsEmpty!6463))

(assert (= (and setNonEmpty!6413 (not condSetEmpty!6463)) setNonEmpty!6463))

(assert (= setNonEmpty!6463 b!758376))

(declare-fun m!1024861 () Bool)

(assert (=> setNonEmpty!6463 m!1024861))

(declare-fun condSetEmpty!6464 () Bool)

(assert (=> setNonEmpty!6432 (= condSetEmpty!6464 (= setRest!6432 ((as const (Array Context!718 Bool)) false)))))

(declare-fun setRes!6464 () Bool)

(assert (=> setNonEmpty!6432 (= tp!245191 setRes!6464)))

(declare-fun setIsEmpty!6464 () Bool)

(assert (=> setIsEmpty!6464 setRes!6464))

(declare-fun setNonEmpty!6464 () Bool)

(declare-fun tp!245420 () Bool)

(declare-fun e!487105 () Bool)

(declare-fun setElem!6464 () Context!718)

(assert (=> setNonEmpty!6464 (= setRes!6464 (and tp!245420 (inv!10657 setElem!6464) e!487105))))

(declare-fun setRest!6464 () (InoxSet Context!718))

(assert (=> setNonEmpty!6464 (= setRest!6432 ((_ map or) (store ((as const (Array Context!718 Bool)) false) setElem!6464 true) setRest!6464))))

(declare-fun b!758377 () Bool)

(declare-fun tp!245421 () Bool)

(assert (=> b!758377 (= e!487105 tp!245421)))

(assert (= (and setNonEmpty!6432 condSetEmpty!6464) setIsEmpty!6464))

(assert (= (and setNonEmpty!6432 (not condSetEmpty!6464)) setNonEmpty!6464))

(assert (= setNonEmpty!6464 b!758377))

(declare-fun m!1024863 () Bool)

(assert (=> setNonEmpty!6464 m!1024863))

(declare-fun b!758378 () Bool)

(declare-fun e!487106 () Bool)

(declare-fun tp!245422 () Bool)

(declare-fun tp!245423 () Bool)

(assert (=> b!758378 (= e!487106 (and tp!245422 tp!245423))))

(assert (=> b!757691 (= tp!245101 e!487106)))

(assert (= (and b!757691 ((_ is Cons!8370) (exprs!859 setElem!6412))) b!758378))

(declare-fun condSetEmpty!6465 () Bool)

(assert (=> setNonEmpty!6406 (= condSetEmpty!6465 (= setRest!6405 ((as const (Array Context!718 Bool)) false)))))

(declare-fun setRes!6465 () Bool)

(assert (=> setNonEmpty!6406 (= tp!245042 setRes!6465)))

(declare-fun setIsEmpty!6465 () Bool)

(assert (=> setIsEmpty!6465 setRes!6465))

(declare-fun tp!245424 () Bool)

(declare-fun setElem!6465 () Context!718)

(declare-fun setNonEmpty!6465 () Bool)

(declare-fun e!487107 () Bool)

(assert (=> setNonEmpty!6465 (= setRes!6465 (and tp!245424 (inv!10657 setElem!6465) e!487107))))

(declare-fun setRest!6465 () (InoxSet Context!718))

(assert (=> setNonEmpty!6465 (= setRest!6405 ((_ map or) (store ((as const (Array Context!718 Bool)) false) setElem!6465 true) setRest!6465))))

(declare-fun b!758379 () Bool)

(declare-fun tp!245425 () Bool)

(assert (=> b!758379 (= e!487107 tp!245425)))

(assert (= (and setNonEmpty!6406 condSetEmpty!6465) setIsEmpty!6465))

(assert (= (and setNonEmpty!6406 (not condSetEmpty!6465)) setNonEmpty!6465))

(assert (= setNonEmpty!6465 b!758379))

(declare-fun m!1024865 () Bool)

(assert (=> setNonEmpty!6465 m!1024865))

(declare-fun setIsEmpty!6466 () Bool)

(declare-fun setRes!6466 () Bool)

(assert (=> setIsEmpty!6466 setRes!6466))

(declare-fun e!487109 () Bool)

(assert (=> b!757766 (= tp!245190 e!487109)))

(declare-fun b!758380 () Bool)

(declare-fun tp!245427 () Bool)

(assert (=> b!758380 (= e!487109 (and setRes!6466 tp!245427))))

(declare-fun condSetEmpty!6466 () Bool)

(assert (=> b!758380 (= condSetEmpty!6466 (= (_1!5530 (_1!5531 (h!13778 (t!91121 mapDefault!5323)))) ((as const (Array Context!718 Bool)) false)))))

(declare-fun setElem!6466 () Context!718)

(declare-fun setNonEmpty!6466 () Bool)

(declare-fun e!487108 () Bool)

(declare-fun tp!245428 () Bool)

(assert (=> setNonEmpty!6466 (= setRes!6466 (and tp!245428 (inv!10657 setElem!6466) e!487108))))

(declare-fun setRest!6466 () (InoxSet Context!718))

(assert (=> setNonEmpty!6466 (= (_1!5530 (_1!5531 (h!13778 (t!91121 mapDefault!5323)))) ((_ map or) (store ((as const (Array Context!718 Bool)) false) setElem!6466 true) setRest!6466))))

(declare-fun b!758381 () Bool)

(declare-fun tp!245426 () Bool)

(assert (=> b!758381 (= e!487108 tp!245426)))

(assert (= (and b!758380 condSetEmpty!6466) setIsEmpty!6466))

(assert (= (and b!758380 (not condSetEmpty!6466)) setNonEmpty!6466))

(assert (= setNonEmpty!6466 b!758381))

(assert (= (and b!757766 ((_ is Cons!8377) (t!91121 mapDefault!5323))) b!758380))

(declare-fun m!1024867 () Bool)

(assert (=> setNonEmpty!6466 m!1024867))

(declare-fun b!758382 () Bool)

(declare-fun e!487110 () Bool)

(declare-fun tp!245429 () Bool)

(declare-fun tp!245430 () Bool)

(assert (=> b!758382 (= e!487110 (and tp!245429 tp!245430))))

(assert (=> b!757711 (= tp!245121 e!487110)))

(assert (= (and b!757711 ((_ is Cons!8370) (exprs!859 (_1!5527 (_1!5528 (h!13773 (minValue!1355 (v!18511 (underlying!2379 (v!18512 (underlying!2380 (cache!1457 cacheUp!502)))))))))))) b!758382))

(declare-fun b!758383 () Bool)

(declare-fun e!487111 () Bool)

(declare-fun tp!245431 () Bool)

(declare-fun tp!245432 () Bool)

(assert (=> b!758383 (= e!487111 (and tp!245431 tp!245432))))

(assert (=> b!757694 (= tp!245095 e!487111)))

(assert (= (and b!757694 ((_ is Cons!8370) (exprs!859 (_1!5527 (_1!5528 (h!13773 mapDefault!5329)))))) b!758383))

(declare-fun b!758384 () Bool)

(declare-fun e!487112 () Bool)

(declare-fun tp!245433 () Bool)

(declare-fun tp!245434 () Bool)

(assert (=> b!758384 (= e!487112 (and tp!245433 tp!245434))))

(assert (=> b!757650 (= tp!245051 e!487112)))

(assert (= (and b!757650 ((_ is Cons!8370) (exprs!859 (_2!5525 (_1!5526 (h!13772 mapValue!5322)))))) b!758384))

(declare-fun setIsEmpty!6467 () Bool)

(declare-fun setRes!6467 () Bool)

(assert (=> setIsEmpty!6467 setRes!6467))

(declare-fun e!487114 () Bool)

(assert (=> b!757722 (= tp!245133 e!487114)))

(declare-fun b!758385 () Bool)

(declare-fun tp!245436 () Bool)

(assert (=> b!758385 (= e!487114 (and setRes!6467 tp!245436))))

(declare-fun condSetEmpty!6467 () Bool)

(assert (=> b!758385 (= condSetEmpty!6467 (= (_1!5530 (_1!5531 (h!13778 (t!91121 (minValue!1356 (v!18513 (underlying!2381 (v!18514 (underlying!2382 (cache!1458 cacheFindLongestMatch!74)))))))))) ((as const (Array Context!718 Bool)) false)))))

(declare-fun e!487113 () Bool)

(declare-fun setNonEmpty!6467 () Bool)

(declare-fun tp!245437 () Bool)

(declare-fun setElem!6467 () Context!718)

(assert (=> setNonEmpty!6467 (= setRes!6467 (and tp!245437 (inv!10657 setElem!6467) e!487113))))

(declare-fun setRest!6467 () (InoxSet Context!718))

(assert (=> setNonEmpty!6467 (= (_1!5530 (_1!5531 (h!13778 (t!91121 (minValue!1356 (v!18513 (underlying!2381 (v!18514 (underlying!2382 (cache!1458 cacheFindLongestMatch!74)))))))))) ((_ map or) (store ((as const (Array Context!718 Bool)) false) setElem!6467 true) setRest!6467))))

(declare-fun b!758386 () Bool)

(declare-fun tp!245435 () Bool)

(assert (=> b!758386 (= e!487113 tp!245435)))

(assert (= (and b!758385 condSetEmpty!6467) setIsEmpty!6467))

(assert (= (and b!758385 (not condSetEmpty!6467)) setNonEmpty!6467))

(assert (= setNonEmpty!6467 b!758386))

(assert (= (and b!757722 ((_ is Cons!8377) (t!91121 (minValue!1356 (v!18513 (underlying!2381 (v!18514 (underlying!2382 (cache!1458 cacheFindLongestMatch!74))))))))) b!758385))

(declare-fun m!1024869 () Bool)

(assert (=> setNonEmpty!6467 m!1024869))

(declare-fun condSetEmpty!6468 () Bool)

(assert (=> setNonEmpty!6418 (= condSetEmpty!6468 (= setRest!6418 ((as const (Array Context!718 Bool)) false)))))

(declare-fun setRes!6468 () Bool)

(assert (=> setNonEmpty!6418 (= tp!245120 setRes!6468)))

(declare-fun setIsEmpty!6468 () Bool)

(assert (=> setIsEmpty!6468 setRes!6468))

(declare-fun e!487115 () Bool)

(declare-fun tp!245438 () Bool)

(declare-fun setNonEmpty!6468 () Bool)

(declare-fun setElem!6468 () Context!718)

(assert (=> setNonEmpty!6468 (= setRes!6468 (and tp!245438 (inv!10657 setElem!6468) e!487115))))

(declare-fun setRest!6468 () (InoxSet Context!718))

(assert (=> setNonEmpty!6468 (= setRest!6418 ((_ map or) (store ((as const (Array Context!718 Bool)) false) setElem!6468 true) setRest!6468))))

(declare-fun b!758387 () Bool)

(declare-fun tp!245439 () Bool)

(assert (=> b!758387 (= e!487115 tp!245439)))

(assert (= (and setNonEmpty!6418 condSetEmpty!6468) setIsEmpty!6468))

(assert (= (and setNonEmpty!6418 (not condSetEmpty!6468)) setNonEmpty!6468))

(assert (= setNonEmpty!6468 b!758387))

(declare-fun m!1024871 () Bool)

(assert (=> setNonEmpty!6468 m!1024871))

(declare-fun e!487117 () Bool)

(assert (=> b!757693 (= tp!245100 e!487117)))

(declare-fun e!487118 () Bool)

(declare-fun setNonEmpty!6469 () Bool)

(declare-fun tp!245441 () Bool)

(declare-fun setElem!6469 () Context!718)

(declare-fun setRes!6469 () Bool)

(assert (=> setNonEmpty!6469 (= setRes!6469 (and tp!245441 (inv!10657 setElem!6469) e!487118))))

(declare-fun setRest!6469 () (InoxSet Context!718))

(assert (=> setNonEmpty!6469 (= (_2!5528 (h!13773 (t!91116 mapValue!5329))) ((_ map or) (store ((as const (Array Context!718 Bool)) false) setElem!6469 true) setRest!6469))))

(declare-fun setIsEmpty!6469 () Bool)

(assert (=> setIsEmpty!6469 setRes!6469))

(declare-fun b!758388 () Bool)

(declare-fun e!487116 () Bool)

(declare-fun tp!245442 () Bool)

(assert (=> b!758388 (= e!487116 tp!245442)))

(declare-fun b!758389 () Bool)

(declare-fun tp!245443 () Bool)

(assert (=> b!758389 (= e!487117 (and (inv!10657 (_1!5527 (_1!5528 (h!13773 (t!91116 mapValue!5329))))) e!487116 tp_is_empty!3711 setRes!6469 tp!245443))))

(declare-fun condSetEmpty!6469 () Bool)

(assert (=> b!758389 (= condSetEmpty!6469 (= (_2!5528 (h!13773 (t!91116 mapValue!5329))) ((as const (Array Context!718 Bool)) false)))))

(declare-fun b!758390 () Bool)

(declare-fun tp!245440 () Bool)

(assert (=> b!758390 (= e!487118 tp!245440)))

(assert (= b!758389 b!758388))

(assert (= (and b!758389 condSetEmpty!6469) setIsEmpty!6469))

(assert (= (and b!758389 (not condSetEmpty!6469)) setNonEmpty!6469))

(assert (= setNonEmpty!6469 b!758390))

(assert (= (and b!757693 ((_ is Cons!8372) (t!91116 mapValue!5329))) b!758389))

(declare-fun m!1024873 () Bool)

(assert (=> setNonEmpty!6469 m!1024873))

(declare-fun m!1024875 () Bool)

(assert (=> b!758389 m!1024875))

(declare-fun condSetEmpty!6470 () Bool)

(assert (=> setNonEmpty!6405 (= condSetEmpty!6470 (= setRest!6406 ((as const (Array Context!718 Bool)) false)))))

(declare-fun setRes!6470 () Bool)

(assert (=> setNonEmpty!6405 (= tp!245038 setRes!6470)))

(declare-fun setIsEmpty!6470 () Bool)

(assert (=> setIsEmpty!6470 setRes!6470))

(declare-fun setElem!6470 () Context!718)

(declare-fun e!487119 () Bool)

(declare-fun setNonEmpty!6470 () Bool)

(declare-fun tp!245444 () Bool)

(assert (=> setNonEmpty!6470 (= setRes!6470 (and tp!245444 (inv!10657 setElem!6470) e!487119))))

(declare-fun setRest!6470 () (InoxSet Context!718))

(assert (=> setNonEmpty!6470 (= setRest!6406 ((_ map or) (store ((as const (Array Context!718 Bool)) false) setElem!6470 true) setRest!6470))))

(declare-fun b!758391 () Bool)

(declare-fun tp!245445 () Bool)

(assert (=> b!758391 (= e!487119 tp!245445)))

(assert (= (and setNonEmpty!6405 condSetEmpty!6470) setIsEmpty!6470))

(assert (= (and setNonEmpty!6405 (not condSetEmpty!6470)) setNonEmpty!6470))

(assert (= setNonEmpty!6470 b!758391))

(declare-fun m!1024877 () Bool)

(assert (=> setNonEmpty!6470 m!1024877))

(declare-fun b!758392 () Bool)

(declare-fun e!487120 () Bool)

(declare-fun tp!245446 () Bool)

(assert (=> b!758392 (= e!487120 (and tp_is_empty!3711 tp!245446))))

(assert (=> b!757726 (= tp!245135 e!487120)))

(assert (= (and b!757726 ((_ is Cons!8374) (innerList!2903 (xs!5524 (c!128735 totalInput!378))))) b!758392))

(declare-fun e!487121 () Bool)

(declare-fun tp!245448 () Bool)

(declare-fun tp!245449 () Bool)

(declare-fun b!758393 () Bool)

(assert (=> b!758393 (= e!487121 (and (inv!10644 (left!6320 (left!6320 (c!128735 input!870)))) tp!245449 (inv!10644 (right!6650 (left!6320 (c!128735 input!870)))) tp!245448))))

(declare-fun b!758395 () Bool)

(declare-fun e!487122 () Bool)

(declare-fun tp!245447 () Bool)

(assert (=> b!758395 (= e!487122 tp!245447)))

(declare-fun b!758394 () Bool)

(assert (=> b!758394 (= e!487121 (and (inv!10658 (xs!5524 (left!6320 (c!128735 input!870)))) e!487122))))

(assert (=> b!757660 (= tp!245060 (and (inv!10644 (left!6320 (c!128735 input!870))) e!487121))))

(assert (= (and b!757660 ((_ is Node!2845) (left!6320 (c!128735 input!870)))) b!758393))

(assert (= b!758394 b!758395))

(assert (= (and b!757660 ((_ is Leaf!4177) (left!6320 (c!128735 input!870)))) b!758394))

(declare-fun m!1024879 () Bool)

(assert (=> b!758393 m!1024879))

(declare-fun m!1024881 () Bool)

(assert (=> b!758393 m!1024881))

(declare-fun m!1024883 () Bool)

(assert (=> b!758394 m!1024883))

(assert (=> b!757660 m!1023974))

(declare-fun tp!245451 () Bool)

(declare-fun tp!245452 () Bool)

(declare-fun e!487123 () Bool)

(declare-fun b!758396 () Bool)

(assert (=> b!758396 (= e!487123 (and (inv!10644 (left!6320 (right!6650 (c!128735 input!870)))) tp!245452 (inv!10644 (right!6650 (right!6650 (c!128735 input!870)))) tp!245451))))

(declare-fun b!758398 () Bool)

(declare-fun e!487124 () Bool)

(declare-fun tp!245450 () Bool)

(assert (=> b!758398 (= e!487124 tp!245450)))

(declare-fun b!758397 () Bool)

(assert (=> b!758397 (= e!487123 (and (inv!10658 (xs!5524 (right!6650 (c!128735 input!870)))) e!487124))))

(assert (=> b!757660 (= tp!245059 (and (inv!10644 (right!6650 (c!128735 input!870))) e!487123))))

(assert (= (and b!757660 ((_ is Node!2845) (right!6650 (c!128735 input!870)))) b!758396))

(assert (= b!758397 b!758398))

(assert (= (and b!757660 ((_ is Leaf!4177) (right!6650 (c!128735 input!870)))) b!758397))

(declare-fun m!1024885 () Bool)

(assert (=> b!758396 m!1024885))

(declare-fun m!1024887 () Bool)

(assert (=> b!758396 m!1024887))

(declare-fun m!1024889 () Bool)

(assert (=> b!758397 m!1024889))

(assert (=> b!757660 m!1023976))

(declare-fun setIsEmpty!6471 () Bool)

(declare-fun setRes!6472 () Bool)

(assert (=> setIsEmpty!6471 setRes!6472))

(declare-fun mapIsEmpty!5335 () Bool)

(declare-fun mapRes!5335 () Bool)

(assert (=> mapIsEmpty!5335 mapRes!5335))

(declare-fun setIsEmpty!6472 () Bool)

(declare-fun setRes!6471 () Bool)

(assert (=> setIsEmpty!6472 setRes!6471))

(declare-fun tp!245456 () Bool)

(declare-fun e!487128 () Bool)

(declare-fun setNonEmpty!6471 () Bool)

(declare-fun setElem!6471 () Context!718)

(assert (=> setNonEmpty!6471 (= setRes!6472 (and tp!245456 (inv!10657 setElem!6471) e!487128))))

(declare-fun mapValue!5335 () List!8391)

(declare-fun setRest!6472 () (InoxSet Context!718))

(assert (=> setNonEmpty!6471 (= (_1!5530 (_1!5531 (h!13778 mapValue!5335))) ((_ map or) (store ((as const (Array Context!718 Bool)) false) setElem!6471 true) setRest!6472))))

(declare-fun b!758399 () Bool)

(declare-fun tp!245458 () Bool)

(assert (=> b!758399 (= e!487128 tp!245458)))

(declare-fun condMapEmpty!5335 () Bool)

(declare-fun mapDefault!5335 () List!8391)

(assert (=> mapNonEmpty!5332 (= condMapEmpty!5335 (= mapRest!5332 ((as const (Array (_ BitVec 32) List!8391)) mapDefault!5335)))))

(declare-fun e!487127 () Bool)

(assert (=> mapNonEmpty!5332 (= tp!245166 (and e!487127 mapRes!5335))))

(declare-fun b!758400 () Bool)

(declare-fun tp!245457 () Bool)

(assert (=> b!758400 (= e!487127 (and setRes!6471 tp!245457))))

(declare-fun condSetEmpty!6472 () Bool)

(assert (=> b!758400 (= condSetEmpty!6472 (= (_1!5530 (_1!5531 (h!13778 mapDefault!5335))) ((as const (Array Context!718 Bool)) false)))))

(declare-fun mapNonEmpty!5335 () Bool)

(declare-fun tp!245459 () Bool)

(declare-fun e!487125 () Bool)

(assert (=> mapNonEmpty!5335 (= mapRes!5335 (and tp!245459 e!487125))))

(declare-fun mapRest!5335 () (Array (_ BitVec 32) List!8391))

(declare-fun mapKey!5335 () (_ BitVec 32))

(assert (=> mapNonEmpty!5335 (= mapRest!5332 (store mapRest!5335 mapKey!5335 mapValue!5335))))

(declare-fun b!758401 () Bool)

(declare-fun e!487126 () Bool)

(declare-fun tp!245454 () Bool)

(assert (=> b!758401 (= e!487126 tp!245454)))

(declare-fun setElem!6472 () Context!718)

(declare-fun tp!245453 () Bool)

(declare-fun setNonEmpty!6472 () Bool)

(assert (=> setNonEmpty!6472 (= setRes!6471 (and tp!245453 (inv!10657 setElem!6472) e!487126))))

(declare-fun setRest!6471 () (InoxSet Context!718))

(assert (=> setNonEmpty!6472 (= (_1!5530 (_1!5531 (h!13778 mapDefault!5335))) ((_ map or) (store ((as const (Array Context!718 Bool)) false) setElem!6472 true) setRest!6471))))

(declare-fun b!758402 () Bool)

(declare-fun tp!245455 () Bool)

(assert (=> b!758402 (= e!487125 (and setRes!6472 tp!245455))))

(declare-fun condSetEmpty!6471 () Bool)

(assert (=> b!758402 (= condSetEmpty!6471 (= (_1!5530 (_1!5531 (h!13778 mapValue!5335))) ((as const (Array Context!718 Bool)) false)))))

(assert (= (and mapNonEmpty!5332 condMapEmpty!5335) mapIsEmpty!5335))

(assert (= (and mapNonEmpty!5332 (not condMapEmpty!5335)) mapNonEmpty!5335))

(assert (= (and b!758402 condSetEmpty!6471) setIsEmpty!6471))

(assert (= (and b!758402 (not condSetEmpty!6471)) setNonEmpty!6471))

(assert (= setNonEmpty!6471 b!758399))

(assert (= (and mapNonEmpty!5335 ((_ is Cons!8377) mapValue!5335)) b!758402))

(assert (= (and b!758400 condSetEmpty!6472) setIsEmpty!6472))

(assert (= (and b!758400 (not condSetEmpty!6472)) setNonEmpty!6472))

(assert (= setNonEmpty!6472 b!758401))

(assert (= (and mapNonEmpty!5332 ((_ is Cons!8377) mapDefault!5335)) b!758400))

(declare-fun m!1024891 () Bool)

(assert (=> setNonEmpty!6471 m!1024891))

(declare-fun m!1024893 () Bool)

(assert (=> mapNonEmpty!5335 m!1024893))

(declare-fun m!1024895 () Bool)

(assert (=> setNonEmpty!6472 m!1024895))

(declare-fun condSetEmpty!6473 () Bool)

(assert (=> setNonEmpty!6430 (= condSetEmpty!6473 (= setRest!6430 ((as const (Array Context!718 Bool)) false)))))

(declare-fun setRes!6473 () Bool)

(assert (=> setNonEmpty!6430 (= tp!245169 setRes!6473)))

(declare-fun setIsEmpty!6473 () Bool)

(assert (=> setIsEmpty!6473 setRes!6473))

(declare-fun tp!245460 () Bool)

(declare-fun setNonEmpty!6473 () Bool)

(declare-fun setElem!6473 () Context!718)

(declare-fun e!487129 () Bool)

(assert (=> setNonEmpty!6473 (= setRes!6473 (and tp!245460 (inv!10657 setElem!6473) e!487129))))

(declare-fun setRest!6473 () (InoxSet Context!718))

(assert (=> setNonEmpty!6473 (= setRest!6430 ((_ map or) (store ((as const (Array Context!718 Bool)) false) setElem!6473 true) setRest!6473))))

(declare-fun b!758403 () Bool)

(declare-fun tp!245461 () Bool)

(assert (=> b!758403 (= e!487129 tp!245461)))

(assert (= (and setNonEmpty!6430 condSetEmpty!6473) setIsEmpty!6473))

(assert (= (and setNonEmpty!6430 (not condSetEmpty!6473)) setNonEmpty!6473))

(assert (= setNonEmpty!6473 b!758403))

(declare-fun m!1024897 () Bool)

(assert (=> setNonEmpty!6473 m!1024897))

(declare-fun b!758405 () Bool)

(declare-fun e!487130 () Bool)

(declare-fun tp!245462 () Bool)

(declare-fun tp!245463 () Bool)

(assert (=> b!758405 (= e!487130 (and tp!245462 tp!245463))))

(declare-fun b!758406 () Bool)

(declare-fun tp!245465 () Bool)

(assert (=> b!758406 (= e!487130 tp!245465)))

(assert (=> b!757645 (= tp!245046 e!487130)))

(declare-fun b!758407 () Bool)

(declare-fun tp!245464 () Bool)

(declare-fun tp!245466 () Bool)

(assert (=> b!758407 (= e!487130 (and tp!245464 tp!245466))))

(declare-fun b!758404 () Bool)

(assert (=> b!758404 (= e!487130 tp_is_empty!3711)))

(assert (= (and b!757645 ((_ is ElementMatch!1957) (_1!5525 (_1!5526 (h!13772 mapValue!5326))))) b!758404))

(assert (= (and b!757645 ((_ is Concat!3611) (_1!5525 (_1!5526 (h!13772 mapValue!5326))))) b!758405))

(assert (= (and b!757645 ((_ is Star!1957) (_1!5525 (_1!5526 (h!13772 mapValue!5326))))) b!758406))

(assert (= (and b!757645 ((_ is Union!1957) (_1!5525 (_1!5526 (h!13772 mapValue!5326))))) b!758407))

(declare-fun setIsEmpty!6474 () Bool)

(declare-fun setRes!6474 () Bool)

(assert (=> setIsEmpty!6474 setRes!6474))

(declare-fun b!758409 () Bool)

(declare-fun e!487132 () Bool)

(declare-fun tp!245471 () Bool)

(assert (=> b!758409 (= e!487132 tp!245471)))

(declare-fun b!758410 () Bool)

(declare-fun e!487131 () Bool)

(declare-fun tp!245469 () Bool)

(assert (=> b!758410 (= e!487131 tp!245469)))

(declare-fun tp!245468 () Bool)

(declare-fun setElem!6474 () Context!718)

(declare-fun setNonEmpty!6474 () Bool)

(assert (=> setNonEmpty!6474 (= setRes!6474 (and tp!245468 (inv!10657 setElem!6474) e!487131))))

(declare-fun setRest!6474 () (InoxSet Context!718))

(assert (=> setNonEmpty!6474 (= (_2!5526 (h!13772 (t!91115 mapValue!5326))) ((_ map or) (store ((as const (Array Context!718 Bool)) false) setElem!6474 true) setRest!6474))))

(declare-fun e!487133 () Bool)

(declare-fun b!758408 () Bool)

(declare-fun tp!245470 () Bool)

(declare-fun tp!245467 () Bool)

(assert (=> b!758408 (= e!487133 (and tp!245470 (inv!10657 (_2!5525 (_1!5526 (h!13772 (t!91115 mapValue!5326))))) e!487132 tp_is_empty!3711 setRes!6474 tp!245467))))

(declare-fun condSetEmpty!6474 () Bool)

(assert (=> b!758408 (= condSetEmpty!6474 (= (_2!5526 (h!13772 (t!91115 mapValue!5326))) ((as const (Array Context!718 Bool)) false)))))

(assert (=> b!757645 (= tp!245037 e!487133)))

(assert (= b!758408 b!758409))

(assert (= (and b!758408 condSetEmpty!6474) setIsEmpty!6474))

(assert (= (and b!758408 (not condSetEmpty!6474)) setNonEmpty!6474))

(assert (= setNonEmpty!6474 b!758410))

(assert (= (and b!757645 ((_ is Cons!8371) (t!91115 mapValue!5326))) b!758408))

(declare-fun m!1024899 () Bool)

(assert (=> setNonEmpty!6474 m!1024899))

(declare-fun m!1024901 () Bool)

(assert (=> b!758408 m!1024901))

(declare-fun b!758411 () Bool)

(declare-fun e!487134 () Bool)

(declare-fun tp!245472 () Bool)

(declare-fun tp!245473 () Bool)

(assert (=> b!758411 (= e!487134 (and tp!245472 tp!245473))))

(assert (=> b!757648 (= tp!245036 e!487134)))

(assert (= (and b!757648 ((_ is Cons!8370) (exprs!859 setElem!6405))) b!758411))

(declare-fun b!758412 () Bool)

(declare-fun e!487135 () Bool)

(declare-fun tp!245474 () Bool)

(assert (=> b!758412 (= e!487135 (and tp_is_empty!3711 tp!245474))))

(assert (=> b!757662 (= tp!245058 e!487135)))

(assert (= (and b!757662 ((_ is Cons!8374) (innerList!2903 (xs!5524 (c!128735 input!870))))) b!758412))

(declare-fun condSetEmpty!6475 () Bool)

(assert (=> setNonEmpty!6429 (= condSetEmpty!6475 (= setRest!6428 ((as const (Array Context!718 Bool)) false)))))

(declare-fun setRes!6475 () Bool)

(assert (=> setNonEmpty!6429 (= tp!245160 setRes!6475)))

(declare-fun setIsEmpty!6475 () Bool)

(assert (=> setIsEmpty!6475 setRes!6475))

(declare-fun setNonEmpty!6475 () Bool)

(declare-fun e!487136 () Bool)

(declare-fun setElem!6475 () Context!718)

(declare-fun tp!245475 () Bool)

(assert (=> setNonEmpty!6475 (= setRes!6475 (and tp!245475 (inv!10657 setElem!6475) e!487136))))

(declare-fun setRest!6475 () (InoxSet Context!718))

(assert (=> setNonEmpty!6475 (= setRest!6428 ((_ map or) (store ((as const (Array Context!718 Bool)) false) setElem!6475 true) setRest!6475))))

(declare-fun b!758413 () Bool)

(declare-fun tp!245476 () Bool)

(assert (=> b!758413 (= e!487136 tp!245476)))

(assert (= (and setNonEmpty!6429 condSetEmpty!6475) setIsEmpty!6475))

(assert (= (and setNonEmpty!6429 (not condSetEmpty!6475)) setNonEmpty!6475))

(assert (= setNonEmpty!6475 b!758413))

(declare-fun m!1024903 () Bool)

(assert (=> setNonEmpty!6475 m!1024903))

(declare-fun b!758414 () Bool)

(declare-fun e!487137 () Bool)

(declare-fun tp!245477 () Bool)

(declare-fun tp!245478 () Bool)

(assert (=> b!758414 (= e!487137 (and tp!245477 tp!245478))))

(assert (=> b!757749 (= tp!245172 e!487137)))

(assert (= (and b!757749 ((_ is Cons!8370) (exprs!859 (_1!5527 (_1!5528 (h!13773 mapDefault!5322)))))) b!758414))

(declare-fun b!758417 () Bool)

(declare-fun b_free!23653 () Bool)

(declare-fun b_next!23717 () Bool)

(assert (=> b!758417 (= b_free!23653 (not b_next!23717))))

(declare-fun tp!245481 () Bool)

(declare-fun b_and!70561 () Bool)

(assert (=> b!758417 (= tp!245481 b_and!70561)))

(declare-fun b_free!23655 () Bool)

(declare-fun b_next!23719 () Bool)

(assert (=> b!758417 (= b_free!23655 (not b_next!23719))))

(declare-fun tp!245479 () Bool)

(declare-fun b_and!70563 () Bool)

(assert (=> b!758417 (= tp!245479 b_and!70563)))

(declare-fun e!487140 () Bool)

(assert (=> b!758417 (= e!487140 (and tp!245481 tp!245479))))

(declare-fun b!758416 () Bool)

(declare-fun tp!245482 () Bool)

(declare-fun e!487138 () Bool)

(assert (=> b!758416 (= e!487138 (and tp!245482 (inv!10643 (tag!1872 (h!13777 (t!91120 (t!91120 rules!1486))))) (inv!10645 (transformation!1610 (h!13777 (t!91120 (t!91120 rules!1486))))) e!487140))))

(declare-fun b!758415 () Bool)

(declare-fun e!487141 () Bool)

(declare-fun tp!245480 () Bool)

(assert (=> b!758415 (= e!487141 (and e!487138 tp!245480))))

(assert (=> b!757674 (= tp!245073 e!487141)))

(assert (= b!758416 b!758417))

(assert (= b!758415 b!758416))

(assert (= (and b!757674 ((_ is Cons!8376) (t!91120 (t!91120 rules!1486)))) b!758415))

(declare-fun m!1024905 () Bool)

(assert (=> b!758416 m!1024905))

(declare-fun m!1024907 () Bool)

(assert (=> b!758416 m!1024907))

(declare-fun b!758419 () Bool)

(declare-fun e!487142 () Bool)

(declare-fun tp!245483 () Bool)

(declare-fun tp!245484 () Bool)

(assert (=> b!758419 (= e!487142 (and tp!245483 tp!245484))))

(declare-fun b!758420 () Bool)

(declare-fun tp!245486 () Bool)

(assert (=> b!758420 (= e!487142 tp!245486)))

(assert (=> b!757765 (= tp!245186 e!487142)))

(declare-fun b!758421 () Bool)

(declare-fun tp!245485 () Bool)

(declare-fun tp!245487 () Bool)

(assert (=> b!758421 (= e!487142 (and tp!245485 tp!245487))))

(declare-fun b!758418 () Bool)

(assert (=> b!758418 (= e!487142 tp_is_empty!3711)))

(assert (= (and b!757765 ((_ is ElementMatch!1957) (regOne!4427 (regex!1610 (h!13777 rules!1486))))) b!758418))

(assert (= (and b!757765 ((_ is Concat!3611) (regOne!4427 (regex!1610 (h!13777 rules!1486))))) b!758419))

(assert (= (and b!757765 ((_ is Star!1957) (regOne!4427 (regex!1610 (h!13777 rules!1486))))) b!758420))

(assert (= (and b!757765 ((_ is Union!1957) (regOne!4427 (regex!1610 (h!13777 rules!1486))))) b!758421))

(declare-fun b!758423 () Bool)

(declare-fun e!487143 () Bool)

(declare-fun tp!245488 () Bool)

(declare-fun tp!245489 () Bool)

(assert (=> b!758423 (= e!487143 (and tp!245488 tp!245489))))

(declare-fun b!758424 () Bool)

(declare-fun tp!245491 () Bool)

(assert (=> b!758424 (= e!487143 tp!245491)))

(assert (=> b!757765 (= tp!245188 e!487143)))

(declare-fun b!758425 () Bool)

(declare-fun tp!245490 () Bool)

(declare-fun tp!245492 () Bool)

(assert (=> b!758425 (= e!487143 (and tp!245490 tp!245492))))

(declare-fun b!758422 () Bool)

(assert (=> b!758422 (= e!487143 tp_is_empty!3711)))

(assert (= (and b!757765 ((_ is ElementMatch!1957) (regTwo!4427 (regex!1610 (h!13777 rules!1486))))) b!758422))

(assert (= (and b!757765 ((_ is Concat!3611) (regTwo!4427 (regex!1610 (h!13777 rules!1486))))) b!758423))

(assert (= (and b!757765 ((_ is Star!1957) (regTwo!4427 (regex!1610 (h!13777 rules!1486))))) b!758424))

(assert (= (and b!757765 ((_ is Union!1957) (regTwo!4427 (regex!1610 (h!13777 rules!1486))))) b!758425))

(declare-fun tp!245494 () Bool)

(declare-fun e!487144 () Bool)

(declare-fun b!758426 () Bool)

(declare-fun tp!245495 () Bool)

(assert (=> b!758426 (= e!487144 (and (inv!10644 (left!6320 (left!6320 (c!128735 totalInput!378)))) tp!245495 (inv!10644 (right!6650 (left!6320 (c!128735 totalInput!378)))) tp!245494))))

(declare-fun b!758428 () Bool)

(declare-fun e!487145 () Bool)

(declare-fun tp!245493 () Bool)

(assert (=> b!758428 (= e!487145 tp!245493)))

(declare-fun b!758427 () Bool)

(assert (=> b!758427 (= e!487144 (and (inv!10658 (xs!5524 (left!6320 (c!128735 totalInput!378)))) e!487145))))

(assert (=> b!757724 (= tp!245137 (and (inv!10644 (left!6320 (c!128735 totalInput!378))) e!487144))))

(assert (= (and b!757724 ((_ is Node!2845) (left!6320 (c!128735 totalInput!378)))) b!758426))

(assert (= b!758427 b!758428))

(assert (= (and b!757724 ((_ is Leaf!4177) (left!6320 (c!128735 totalInput!378)))) b!758427))

(declare-fun m!1024909 () Bool)

(assert (=> b!758426 m!1024909))

(declare-fun m!1024911 () Bool)

(assert (=> b!758426 m!1024911))

(declare-fun m!1024913 () Bool)

(assert (=> b!758427 m!1024913))

(assert (=> b!757724 m!1024016))

(declare-fun e!487146 () Bool)

(declare-fun tp!245498 () Bool)

(declare-fun tp!245497 () Bool)

(declare-fun b!758429 () Bool)

(assert (=> b!758429 (= e!487146 (and (inv!10644 (left!6320 (right!6650 (c!128735 totalInput!378)))) tp!245498 (inv!10644 (right!6650 (right!6650 (c!128735 totalInput!378)))) tp!245497))))

(declare-fun b!758431 () Bool)

(declare-fun e!487147 () Bool)

(declare-fun tp!245496 () Bool)

(assert (=> b!758431 (= e!487147 tp!245496)))

(declare-fun b!758430 () Bool)

(assert (=> b!758430 (= e!487146 (and (inv!10658 (xs!5524 (right!6650 (c!128735 totalInput!378)))) e!487147))))

(assert (=> b!757724 (= tp!245136 (and (inv!10644 (right!6650 (c!128735 totalInput!378))) e!487146))))

(assert (= (and b!757724 ((_ is Node!2845) (right!6650 (c!128735 totalInput!378)))) b!758429))

(assert (= b!758430 b!758431))

(assert (= (and b!757724 ((_ is Leaf!4177) (right!6650 (c!128735 totalInput!378)))) b!758430))

(declare-fun m!1024915 () Bool)

(assert (=> b!758429 m!1024915))

(declare-fun m!1024917 () Bool)

(assert (=> b!758429 m!1024917))

(declare-fun m!1024919 () Bool)

(assert (=> b!758430 m!1024919))

(assert (=> b!757724 m!1024018))

(declare-fun b!758432 () Bool)

(declare-fun e!487148 () Bool)

(declare-fun tp!245499 () Bool)

(declare-fun tp!245500 () Bool)

(assert (=> b!758432 (= e!487148 (and tp!245499 tp!245500))))

(assert (=> b!757743 (= tp!245165 e!487148)))

(assert (= (and b!757743 ((_ is Cons!8370) (exprs!859 setElem!6428))) b!758432))

(declare-fun setIsEmpty!6476 () Bool)

(declare-fun setRes!6476 () Bool)

(assert (=> setIsEmpty!6476 setRes!6476))

(declare-fun e!487150 () Bool)

(assert (=> b!757747 (= tp!245168 e!487150)))

(declare-fun b!758433 () Bool)

(declare-fun tp!245502 () Bool)

(assert (=> b!758433 (= e!487150 (and setRes!6476 tp!245502))))

(declare-fun condSetEmpty!6476 () Bool)

(assert (=> b!758433 (= condSetEmpty!6476 (= (_1!5530 (_1!5531 (h!13778 (t!91121 mapValue!5321)))) ((as const (Array Context!718 Bool)) false)))))

(declare-fun setNonEmpty!6476 () Bool)

(declare-fun e!487149 () Bool)

(declare-fun setElem!6476 () Context!718)

(declare-fun tp!245503 () Bool)

(assert (=> setNonEmpty!6476 (= setRes!6476 (and tp!245503 (inv!10657 setElem!6476) e!487149))))

(declare-fun setRest!6476 () (InoxSet Context!718))

(assert (=> setNonEmpty!6476 (= (_1!5530 (_1!5531 (h!13778 (t!91121 mapValue!5321)))) ((_ map or) (store ((as const (Array Context!718 Bool)) false) setElem!6476 true) setRest!6476))))

(declare-fun b!758434 () Bool)

(declare-fun tp!245501 () Bool)

(assert (=> b!758434 (= e!487149 tp!245501)))

(assert (= (and b!758433 condSetEmpty!6476) setIsEmpty!6476))

(assert (= (and b!758433 (not condSetEmpty!6476)) setNonEmpty!6476))

(assert (= setNonEmpty!6476 b!758434))

(assert (= (and b!757747 ((_ is Cons!8377) (t!91121 mapValue!5321))) b!758433))

(declare-fun m!1024921 () Bool)

(assert (=> setNonEmpty!6476 m!1024921))

(declare-fun b!758435 () Bool)

(declare-fun e!487151 () Bool)

(declare-fun tp!245504 () Bool)

(declare-fun tp!245505 () Bool)

(assert (=> b!758435 (= e!487151 (and tp!245504 tp!245505))))

(assert (=> b!757751 (= tp!245170 e!487151)))

(assert (= (and b!757751 ((_ is Cons!8370) (exprs!859 setElem!6431))) b!758435))

(declare-fun b!758436 () Bool)

(declare-fun e!487152 () Bool)

(declare-fun tp!245506 () Bool)

(declare-fun tp!245507 () Bool)

(assert (=> b!758436 (= e!487152 (and tp!245506 tp!245507))))

(assert (=> b!757644 (= tp!245040 e!487152)))

(assert (= (and b!757644 ((_ is Cons!8370) (exprs!859 (_2!5525 (_1!5526 (h!13772 mapDefault!5326)))))) b!758436))

(declare-fun b!758437 () Bool)

(declare-fun e!487153 () Bool)

(declare-fun tp!245508 () Bool)

(declare-fun tp!245509 () Bool)

(assert (=> b!758437 (= e!487153 (and tp!245508 tp!245509))))

(assert (=> b!757721 (= tp!245129 e!487153)))

(assert (= (and b!757721 ((_ is Cons!8370) (exprs!859 setElem!6421))) b!758437))

(check-sat (not b!757905) (not bm!46299) (not b!758143) (not bm!46319) (not b!758283) (not b!758146) (not d!248324) (not d!248288) (not b!758271) (not b!757975) (not b!758264) (not b!757792) (not b!758304) (not b!758183) (not b!758325) (not b!757779) (not b!758390) (not b!758026) (not d!248166) (not b!757959) (not b!758377) (not b!757951) (not b!758425) (not b!758398) (not setNonEmpty!6452) (not b!758406) (not b!758289) (not d!248102) (not b!758216) (not b!758247) (not d!248260) (not b!757727) (not b!758182) (not b!758409) (not b!758286) (not b!758392) (not b!757972) (not b!758209) (not b!758412) (not d!248326) (not b!757970) (not b_next!23717) (not b!758263) (not b!758185) (not b!757797) (not b!758155) (not d!248228) (not d!248330) (not b!757989) b_and!70555 (not b!758145) (not setNonEmpty!6456) (not d!248244) (not b!758075) (not b!758369) (not d!248128) (not b!758310) (not b!758067) (not d!248178) (not b!758318) (not b!757923) (not d!248196) (not b!758359) (not b!757917) (not mapNonEmpty!5335) (not d!248192) (not b!757612) (not b!758008) (not b!758217) (not b_next!23705) (not d!248236) (not b!757888) (not d!248282) (not b!757926) (not b!758027) (not b!757897) (not b!758388) (not b!757950) (not b!758379) (not b!758224) (not mapNonEmpty!5333) (not b!757804) (not b!758079) (not b!758138) (not b!757660) (not d!248250) (not b!758397) (not b!758407) (not b!758233) (not b!758207) (not b!758133) (not b!758152) b_and!70557 (not b!758158) (not b!757990) (not b!758175) (not d!248336) (not setNonEmpty!6464) (not d!248180) (not b!757957) (not d!248108) (not b!758178) (not b!758262) (not b!758411) (not b!758170) (not d!248194) (not d!248276) (not setNonEmpty!6448) (not b!758309) (not b!758222) (not b!758376) (not b!757925) (not b!758391) (not b!758134) (not b!758327) (not b!758269) (not d!248176) (not b!758187) (not d!248152) (not b!758333) tp_is_empty!3711 (not b!758292) (not b!758293) b_and!70551 (not d!248266) (not b!758177) (not b!758429) (not d!248268) (not b!758129) (not b!758176) (not b!758225) (not b!757955) (not d!248226) (not b_next!23707) (not b!758096) (not d!248246) (not d!248286) (not b!758365) (not b!758374) b_and!70543 (not b!758214) (not b!758339) (not d!248252) (not b!758394) (not d!248290) (not b!758116) (not b!758291) (not b!758132) (not setNonEmpty!6444) (not b!758080) (not setNonEmpty!6453) (not d!248344) (not b!758135) (not setNonEmpty!6468) (not b!758030) (not b!758370) (not b!758076) (not b!758424) (not d!248106) b_and!70537 (not b!758419) (not setNonEmpty!6473) (not d!248254) (not b!758420) (not b!758150) (not b!758302) (not b!757934) (not b!758344) (not b!758036) (not b!758197) (not b!758364) (not b!758119) (not b!758274) (not b!758149) (not b!758414) (not setNonEmpty!6461) (not b!758156) (not b!757953) (not b!758033) (not b!758227) (not d!248298) (not mapNonEmpty!5334) (not d!248184) (not b!758179) (not b!758341) (not b!757810) (not setNonEmpty!6463) (not b!758246) (not b!758320) (not b!758295) (not b_next!23711) (not b!758199) (not b!758279) (not b!758399) (not d!248328) (not b!758432) (not b!758306) (not b!758326) (not b!758243) (not b!758248) (not d!248122) (not bm!46318) (not b!758298) (not b!758180) (not b!758174) b_and!70559 (not b!758395) (not bm!46312) (not b!758265) (not b!758239) (not d!248338) (not b!758282) (not b!758436) (not b!758430) (not b!758435) (not d!248284) (not b!758114) (not bm!46313) (not b!758267) (not setNonEmpty!6436) (not bm!46303) (not d!248294) (not b_next!23715) (not b!758082) (not b!758163) (not b!758317) (not b!758396) (not d!248332) (not d!248256) (not b!758427) (not d!248170) (not b!757827) (not setNonEmpty!6435) (not setNonEmpty!6449) (not d!248200) (not b!758230) (not b!758220) (not b!758338) (not b!757949) (not setNonEmpty!6475) (not setNonEmpty!6447) (not b_next!23701) (not b!757896) (not d!248218) (not b!758200) (not b!757918) (not b!757825) (not b!758115) (not b!758305) (not b!758345) (not b_next!23697) (not b!758059) (not b!758277) (not d!248198) (not b!757976) (not b!757984) (not b!757830) (not b!758109) (not b!758303) (not d!248158) (not b!757790) (not d!248212) (not setNonEmpty!6455) (not b!758322) (not d!248190) (not b!758244) (not b!758057) (not b!758328) (not setNonEmpty!6441) (not b!758148) (not b!758231) (not setNonEmpty!6437) (not b!757948) (not b!758273) (not setNonEmpty!6443) (not bm!46311) (not b!758204) (not b!758272) (not setNonEmpty!6434) (not setNonEmpty!6474) (not d!248156) (not b!758153) (not setNonEmpty!6469) (not b!758221) (not b!757663) (not b!758007) (not d!248222) (not b!758260) (not b!758332) (not d!248112) (not b!757803) (not d!248154) (not d!248162) (not d!248238) b_and!70541 (not b!758003) (not b!758186) (not b!758113) (not bm!46310) (not d!248348) (not b!758421) (not b!758195) b_and!70547 b_and!70561 (not d!248302) (not setNonEmpty!6451) (not d!248232) (not b!757880) (not b!758331) (not d!248114) (not b!757992) (not b!758312) (not b!758381) (not b!758092) (not b!757924) (not d!248202) (not b!757802) (not setNonEmpty!6476) (not b!758428) (not setNonEmpty!6462) (not b!758387) (not b!758212) (not d!248204) (not d!248136) (not b!758258) (not d!248182) (not b!758110) (not b!758061) (not b!758240) (not b!758206) (not d!248292) (not b!758226) (not b!758323) (not setNonEmpty!6458) (not b!758386) (not b!758393) (not b_next!23699) (not b!758285) (not b!758253) (not b!758308) (not b!758357) (not b!758181) (not setNonEmpty!6472) (not b!757973) (not d!248308) (not b!757968) (not b!758402) (not d!248312) (not b!758091) (not b!758131) (not b!758287) (not b!758004) (not b!758403) (not b!758068) (not b!758205) (not b!758373) (not setNonEmpty!6457) (not b!758375) b_and!70553 (not b!758336) (not b!758112) (not b!758366) (not b!757828) (not b!758218) (not b!758383) (not b!758031) (not b!758136) (not b!758098) (not d!248296) (not b!758232) (not b!758340) (not b!758372) (not b!758070) (not b!758401) (not bm!46309) (not b!758334) (not d!248168) (not b!758371) (not b!758094) (not d!248146) (not setNonEmpty!6459) (not b!758242) (not d!248124) (not b!758058) (not b!758299) (not b!758062) (not b!758064) (not b!758203) (not b!758362) (not b!758437) (not b!757800) (not b!758208) (not b!757935) (not b!758229) (not b!758211) (not b!758097) (not b!758245) (not b!757978) (not b!758434) (not b!757778) (not b!758296) (not b!758433) (not b!758431) (not b!758342) (not b!758095) (not b!757801) (not setNonEmpty!6470) (not b!758300) (not b!757791) (not b_next!23709) (not setNonEmpty!6445) (not b!758416) b_and!70549 (not b!758337) (not b_next!23703) (not bm!46317) (not b!758423) (not b!757983) (not d!248224) (not b_next!23695) (not b!758234) (not b!758384) (not d!248230) (not b!758270) (not b!758311) (not b!758382) b_and!70563 (not b!758415) (not b!758324) (not b!758126) (not d!248120) (not b!758029) (not b!758241) (not b!758335) (not setNonEmpty!6466) (not b!758288) (not b!758066) (not b!758280) (not d!248272) (not b!758346) (not b!758268) (not b!757952) (not d!248110) (not b!758261) b_and!70545 (not setNonEmpty!6467) (not b!758103) (not setNonEmpty!6450) (not b!758108) (not b!757927) (not b!758219) (not setNonEmpty!6433) (not b!758329) (not b!757724) (not d!248278) (not b!758413) (not b!757876) (not b!758202) (not setNonEmpty!6442) (not b!758276) (not b!757887) (not b!758254) (not b!758125) (not b!758400) (not b!758321) (not d!248310) (not b!758294) (not d!248216) (not b!758378) (not d!248242) (not b!758410) (not b!758196) (not setNonEmpty!6471) (not b!758358) (not b!758172) (not d!248140) (not b!757986) (not b!758368) (not setNonEmpty!6454) (not b!758301) (not b!758256) (not b!758065) (not d!248174) (not b!758426) (not b!758380) (not b!758257) (not d!248300) (not setNonEmpty!6440) (not setNonEmpty!6465) (not b!757977) (not b!758319) (not b!757881) (not b!758120) (not b!757829) (not b!758107) (not b!758069) (not b_next!23719) (not b!758385) (not b!758072) (not b!758223) (not b!757891) (not b!758037) b_and!70539 (not b!758084) (not b!758275) (not b!758093) (not d!248220) (not b!757798) (not b!757826) (not d!248142) (not b!758028) (not b!758184) (not b_next!23693) (not b!758151) (not d!248214) (not setNonEmpty!6446) (not setNonEmpty!6460) (not b!758367) (not b!758389) (not d!248116) (not b_next!23713) (not b!758408) (not b!758330) (not b!758290) (not d!248148) (not b!758405) (not b!758363) (not b!757981) (not b!758284) (not b!758281) (not b!758343))
(check-sat (not b_next!23705) b_and!70557 b_and!70537 (not b_next!23711) b_and!70559 (not b_next!23715) (not b_next!23701) (not b_next!23697) b_and!70541 (not b_next!23699) b_and!70553 b_and!70545 (not b_next!23713) b_and!70555 (not b_next!23717) b_and!70551 (not b_next!23707) b_and!70543 b_and!70547 b_and!70561 (not b_next!23709) b_and!70549 (not b_next!23703) b_and!70563 (not b_next!23695) (not b_next!23719) b_and!70539 (not b_next!23693))

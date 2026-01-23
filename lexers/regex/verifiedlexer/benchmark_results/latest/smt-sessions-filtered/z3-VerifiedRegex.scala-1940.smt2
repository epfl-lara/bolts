; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!95510 () Bool)

(assert start!95510)

(declare-fun b!1106453 () Bool)

(declare-fun b_free!26777 () Bool)

(declare-fun b_next!26841 () Bool)

(assert (=> b!1106453 (= b_free!26777 (not b_next!26841))))

(declare-fun tp!327690 () Bool)

(declare-fun b_and!79097 () Bool)

(assert (=> b!1106453 (= tp!327690 b_and!79097)))

(declare-fun b!1106471 () Bool)

(declare-fun b_free!26779 () Bool)

(declare-fun b_next!26843 () Bool)

(assert (=> b!1106471 (= b_free!26779 (not b_next!26843))))

(declare-fun tp!327682 () Bool)

(declare-fun b_and!79099 () Bool)

(assert (=> b!1106471 (= tp!327682 b_and!79099)))

(declare-fun b!1106462 () Bool)

(declare-fun b_free!26781 () Bool)

(declare-fun b_next!26845 () Bool)

(assert (=> b!1106462 (= b_free!26781 (not b_next!26845))))

(declare-fun tp!327693 () Bool)

(declare-fun b_and!79101 () Bool)

(assert (=> b!1106462 (= tp!327693 b_and!79101)))

(declare-fun b!1106470 () Bool)

(declare-fun b_free!26783 () Bool)

(declare-fun b_next!26847 () Bool)

(assert (=> b!1106470 (= b_free!26783 (not b_next!26847))))

(declare-fun tp!327686 () Bool)

(declare-fun b_and!79103 () Bool)

(assert (=> b!1106470 (= tp!327686 b_and!79103)))

(declare-fun b_free!26785 () Bool)

(declare-fun b_next!26849 () Bool)

(assert (=> b!1106470 (= b_free!26785 (not b_next!26849))))

(declare-fun tp!327695 () Bool)

(declare-fun b_and!79105 () Bool)

(assert (=> b!1106470 (= tp!327695 b_and!79105)))

(declare-fun b!1106452 () Bool)

(declare-fun b_free!26787 () Bool)

(declare-fun b_next!26851 () Bool)

(assert (=> b!1106452 (= b_free!26787 (not b_next!26851))))

(declare-fun tp!327678 () Bool)

(declare-fun b_and!79107 () Bool)

(assert (=> b!1106452 (= tp!327678 b_and!79107)))

(declare-datatypes ((C!6652 0))(
  ( (C!6653 (val!3582 Int)) )
))
(declare-datatypes ((Regex!3131 0))(
  ( (ElementMatch!3131 (c!187929 C!6652)) (Concat!5059 (regOne!6774 Regex!3131) (regTwo!6774 Regex!3131)) (EmptyExpr!3131) (Star!3131 (reg!3460 Regex!3131)) (EmptyLang!3131) (Union!3131 (regOne!6775 Regex!3131) (regTwo!6775 Regex!3131)) )
))
(declare-datatypes ((List!10816 0))(
  ( (Nil!10792) (Cons!10792 (h!16193 Regex!3131) (t!105372 List!10816)) )
))
(declare-datatypes ((Context!1034 0))(
  ( (Context!1035 (exprs!1017 List!10816)) )
))
(declare-datatypes ((tuple3!1074 0))(
  ( (tuple3!1075 (_1!6751 Regex!3131) (_2!6751 Context!1034) (_3!828 C!6652)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!11846 0))(
  ( (tuple2!11847 (_1!6752 tuple3!1074) (_2!6752 (InoxSet Context!1034))) )
))
(declare-datatypes ((List!10817 0))(
  ( (Nil!10793) (Cons!10793 (h!16194 tuple2!11846) (t!105373 List!10817)) )
))
(declare-datatypes ((array!4461 0))(
  ( (array!4462 (arr!1991 (Array (_ BitVec 32) (_ BitVec 64))) (size!8387 (_ BitVec 32))) )
))
(declare-datatypes ((array!4463 0))(
  ( (array!4464 (arr!1992 (Array (_ BitVec 32) List!10817)) (size!8388 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2528 0))(
  ( (LongMapFixedSize!2529 (defaultEntry!1624 Int) (mask!3748 (_ BitVec 32)) (extraKeys!1511 (_ BitVec 32)) (zeroValue!1521 List!10817) (minValue!1521 List!10817) (_size!2637 (_ BitVec 32)) (_keys!1558 array!4461) (_values!1543 array!4463) (_vacant!1325 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!4997 0))(
  ( (Cell!4998 (v!20017 LongMapFixedSize!2528)) )
))
(declare-datatypes ((MutLongMap!1264 0))(
  ( (LongMap!1264 (underlying!2721 Cell!4997)) (MutLongMapExt!1263 (__x!7521 Int)) )
))
(declare-datatypes ((Cell!4999 0))(
  ( (Cell!5000 (v!20018 MutLongMap!1264)) )
))
(declare-datatypes ((Hashable!1236 0))(
  ( (HashableExt!1235 (__x!7522 Int)) )
))
(declare-datatypes ((MutableMap!1236 0))(
  ( (MutableMapExt!1235 (__x!7523 Int)) (HashMap!1236 (underlying!2722 Cell!4999) (hashF!3155 Hashable!1236) (_size!2638 (_ BitVec 32)) (defaultValue!1396 Int)) )
))
(declare-datatypes ((CacheDown!708 0))(
  ( (CacheDown!709 (cache!1617 MutableMap!1236)) )
))
(declare-fun cacheDown!397 () CacheDown!708)

(declare-fun e!701338 () Bool)

(declare-fun tp!327684 () Bool)

(declare-fun e!701341 () Bool)

(declare-fun tp!327689 () Bool)

(declare-fun array_inv!1433 (array!4461) Bool)

(declare-fun array_inv!1434 (array!4463) Bool)

(assert (=> b!1106452 (= e!701341 (and tp!327678 tp!327684 tp!327689 (array_inv!1433 (_keys!1558 (v!20017 (underlying!2721 (v!20018 (underlying!2722 (cache!1617 cacheDown!397))))))) (array_inv!1434 (_values!1543 (v!20017 (underlying!2721 (v!20018 (underlying!2722 (cache!1617 cacheDown!397))))))) e!701338))))

(declare-fun e!701330 () Bool)

(declare-fun e!701344 () Bool)

(assert (=> b!1106453 (= e!701330 (and e!701344 tp!327690))))

(declare-fun res!490263 () Bool)

(declare-fun e!701346 () Bool)

(assert (=> start!95510 (=> (not res!490263) (not e!701346))))

(declare-datatypes ((List!10818 0))(
  ( (Nil!10794) (Cons!10794 (h!16195 (_ BitVec 16)) (t!105374 List!10818)) )
))
(declare-datatypes ((TokenValue!1928 0))(
  ( (FloatLiteralValue!3856 (text!13941 List!10818)) (TokenValueExt!1927 (__x!7524 Int)) (Broken!9640 (value!61036 List!10818)) (Object!1951) (End!1928) (Def!1928) (Underscore!1928) (Match!1928) (Else!1928) (Error!1928) (Case!1928) (If!1928) (Extends!1928) (Abstract!1928) (Class!1928) (Val!1928) (DelimiterValue!3856 (del!1988 List!10818)) (KeywordValue!1934 (value!61037 List!10818)) (CommentValue!3856 (value!61038 List!10818)) (WhitespaceValue!3856 (value!61039 List!10818)) (IndentationValue!1928 (value!61040 List!10818)) (String!13225) (Int32!1928) (Broken!9641 (value!61041 List!10818)) (Boolean!1929) (Unit!16460) (OperatorValue!1931 (op!1988 List!10818)) (IdentifierValue!3856 (value!61042 List!10818)) (IdentifierValue!3857 (value!61043 List!10818)) (WhitespaceValue!3857 (value!61044 List!10818)) (True!3856) (False!3856) (Broken!9642 (value!61045 List!10818)) (Broken!9643 (value!61046 List!10818)) (True!3857) (RightBrace!1928) (RightBracket!1928) (Colon!1928) (Null!1928) (Comma!1928) (LeftBracket!1928) (False!3857) (LeftBrace!1928) (ImaginaryLiteralValue!1928 (text!13942 List!10818)) (StringLiteralValue!5784 (value!61047 List!10818)) (EOFValue!1928 (value!61048 List!10818)) (IdentValue!1928 (value!61049 List!10818)) (DelimiterValue!3857 (value!61050 List!10818)) (DedentValue!1928 (value!61051 List!10818)) (NewLineValue!1928 (value!61052 List!10818)) (IntegerValue!5784 (value!61053 (_ BitVec 32)) (text!13943 List!10818)) (IntegerValue!5785 (value!61054 Int) (text!13944 List!10818)) (Times!1928) (Or!1928) (Equal!1928) (Minus!1928) (Broken!9644 (value!61055 List!10818)) (And!1928) (Div!1928) (LessEqual!1928) (Mod!1928) (Concat!5060) (Not!1928) (Plus!1928) (SpaceValue!1928 (value!61056 List!10818)) (IntegerValue!5786 (value!61057 Int) (text!13945 List!10818)) (StringLiteralValue!5785 (text!13946 List!10818)) (FloatLiteralValue!3857 (text!13947 List!10818)) (BytesLiteralValue!1928 (value!61058 List!10818)) (CommentValue!3857 (value!61059 List!10818)) (StringLiteralValue!5786 (value!61060 List!10818)) (ErrorTokenValue!1928 (msg!1989 List!10818)) )
))
(declare-datatypes ((List!10819 0))(
  ( (Nil!10795) (Cons!10795 (h!16196 C!6652) (t!105375 List!10819)) )
))
(declare-datatypes ((IArray!6833 0))(
  ( (IArray!6834 (innerList!3474 List!10819)) )
))
(declare-datatypes ((String!13226 0))(
  ( (String!13227 (value!61061 String)) )
))
(declare-datatypes ((Conc!3414 0))(
  ( (Node!3414 (left!9380 Conc!3414) (right!9710 Conc!3414) (csize!7058 Int) (cheight!3625 Int)) (Leaf!5355 (xs!6107 IArray!6833) (csize!7059 Int)) (Empty!3414) )
))
(declare-datatypes ((BalanceConc!6850 0))(
  ( (BalanceConc!6851 (c!187930 Conc!3414)) )
))
(declare-datatypes ((TokenValueInjection!3556 0))(
  ( (TokenValueInjection!3557 (toValue!2939 Int) (toChars!2798 Int)) )
))
(declare-datatypes ((Rule!3524 0))(
  ( (Rule!3525 (regex!1862 Regex!3131) (tag!2124 String!13226) (isSeparator!1862 Bool) (transformation!1862 TokenValueInjection!3556)) )
))
(declare-datatypes ((List!10820 0))(
  ( (Nil!10796) (Cons!10796 (h!16197 Rule!3524) (t!105376 List!10820)) )
))
(declare-fun rules!859 () List!10820)

(declare-fun isEmpty!6727 (List!10820) Bool)

(assert (=> start!95510 (= res!490263 (not (isEmpty!6727 rules!859)))))

(assert (=> start!95510 e!701346))

(declare-fun e!701326 () Bool)

(assert (=> start!95510 e!701326))

(declare-datatypes ((Token!3386 0))(
  ( (Token!3387 (value!61062 TokenValue!1928) (rule!3283 Rule!3524) (size!8389 Int) (originalCharacters!2416 List!10819)) )
))
(declare-datatypes ((List!10821 0))(
  ( (Nil!10797) (Cons!10797 (h!16198 Token!3386) (t!105377 List!10821)) )
))
(declare-datatypes ((IArray!6835 0))(
  ( (IArray!6836 (innerList!3475 List!10821)) )
))
(declare-datatypes ((Conc!3415 0))(
  ( (Node!3415 (left!9381 Conc!3415) (right!9711 Conc!3415) (csize!7060 Int) (cheight!3626 Int)) (Leaf!5356 (xs!6108 IArray!6835) (csize!7061 Int)) (Empty!3415) )
))
(declare-datatypes ((BalanceConc!6852 0))(
  ( (BalanceConc!6853 (c!187931 Conc!3415)) )
))
(declare-fun tokens!304 () BalanceConc!6852)

(declare-fun e!701329 () Bool)

(declare-fun inv!13866 (BalanceConc!6852) Bool)

(assert (=> start!95510 (and (inv!13866 tokens!304) e!701329)))

(declare-datatypes ((tuple2!11848 0))(
  ( (tuple2!11849 (_1!6753 Context!1034) (_2!6753 C!6652)) )
))
(declare-datatypes ((tuple2!11850 0))(
  ( (tuple2!11851 (_1!6754 tuple2!11848) (_2!6754 (InoxSet Context!1034))) )
))
(declare-datatypes ((List!10822 0))(
  ( (Nil!10798) (Cons!10798 (h!16199 tuple2!11850) (t!105378 List!10822)) )
))
(declare-datatypes ((Hashable!1237 0))(
  ( (HashableExt!1236 (__x!7525 Int)) )
))
(declare-datatypes ((array!4465 0))(
  ( (array!4466 (arr!1993 (Array (_ BitVec 32) List!10822)) (size!8390 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2530 0))(
  ( (LongMapFixedSize!2531 (defaultEntry!1625 Int) (mask!3749 (_ BitVec 32)) (extraKeys!1512 (_ BitVec 32)) (zeroValue!1522 List!10822) (minValue!1522 List!10822) (_size!2639 (_ BitVec 32)) (_keys!1559 array!4461) (_values!1544 array!4465) (_vacant!1326 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!5001 0))(
  ( (Cell!5002 (v!20019 LongMapFixedSize!2530)) )
))
(declare-datatypes ((MutLongMap!1265 0))(
  ( (LongMap!1265 (underlying!2723 Cell!5001)) (MutLongMapExt!1264 (__x!7526 Int)) )
))
(declare-datatypes ((Cell!5003 0))(
  ( (Cell!5004 (v!20020 MutLongMap!1265)) )
))
(declare-datatypes ((MutableMap!1237 0))(
  ( (MutableMapExt!1236 (__x!7527 Int)) (HashMap!1237 (underlying!2724 Cell!5003) (hashF!3156 Hashable!1237) (_size!2640 (_ BitVec 32)) (defaultValue!1397 Int)) )
))
(declare-datatypes ((CacheUp!706 0))(
  ( (CacheUp!707 (cache!1618 MutableMap!1237)) )
))
(declare-fun cacheUp!384 () CacheUp!706)

(declare-fun e!701335 () Bool)

(declare-fun inv!13867 (CacheUp!706) Bool)

(assert (=> start!95510 (and (inv!13867 cacheUp!384) e!701335)))

(declare-fun e!701342 () Bool)

(declare-fun inv!13868 (CacheDown!708) Bool)

(assert (=> start!95510 (and (inv!13868 cacheDown!397) e!701342)))

(declare-fun mapNonEmpty!6104 () Bool)

(declare-fun mapRes!6104 () Bool)

(declare-fun tp!327685 () Bool)

(declare-fun tp!327680 () Bool)

(assert (=> mapNonEmpty!6104 (= mapRes!6104 (and tp!327685 tp!327680))))

(declare-fun mapKey!6104 () (_ BitVec 32))

(declare-fun mapRest!6104 () (Array (_ BitVec 32) List!10817))

(declare-fun mapValue!6105 () List!10817)

(assert (=> mapNonEmpty!6104 (= (arr!1992 (_values!1543 (v!20017 (underlying!2721 (v!20018 (underlying!2722 (cache!1617 cacheDown!397))))))) (store mapRest!6104 mapKey!6104 mapValue!6105))))

(declare-fun b!1106454 () Bool)

(declare-fun e!701336 () Bool)

(assert (=> b!1106454 (= e!701336 e!701341)))

(declare-fun b!1106455 () Bool)

(declare-fun tp!327679 () Bool)

(assert (=> b!1106455 (= e!701338 (and tp!327679 mapRes!6104))))

(declare-fun condMapEmpty!6104 () Bool)

(declare-fun mapDefault!6104 () List!10817)

(assert (=> b!1106455 (= condMapEmpty!6104 (= (arr!1992 (_values!1543 (v!20017 (underlying!2721 (v!20018 (underlying!2722 (cache!1617 cacheDown!397))))))) ((as const (Array (_ BitVec 32) List!10817)) mapDefault!6104)))))

(declare-fun b!1106456 () Bool)

(declare-fun tp!327691 () Bool)

(declare-fun inv!13869 (Conc!3415) Bool)

(assert (=> b!1106456 (= e!701329 (and (inv!13869 (c!187931 tokens!304)) tp!327691))))

(declare-fun b!1106457 () Bool)

(declare-fun e!701327 () Bool)

(declare-fun e!701337 () Bool)

(assert (=> b!1106457 (= e!701327 e!701337)))

(declare-fun b!1106458 () Bool)

(declare-fun res!490260 () Bool)

(assert (=> b!1106458 (=> (not res!490260) (not e!701346))))

(declare-datatypes ((LexerInterface!1574 0))(
  ( (LexerInterfaceExt!1571 (__x!7528 Int)) (Lexer!1572) )
))
(declare-fun rulesProduceEachTokenIndividually!617 (LexerInterface!1574 List!10820 BalanceConc!6852) Bool)

(assert (=> b!1106458 (= res!490260 (rulesProduceEachTokenIndividually!617 Lexer!1572 rules!859 tokens!304))))

(declare-fun b!1106459 () Bool)

(declare-fun lt!375985 () MutLongMap!1265)

(get-info :version)

(assert (=> b!1106459 (= e!701344 (and e!701327 ((_ is LongMap!1265) lt!375985)))))

(assert (=> b!1106459 (= lt!375985 (v!20020 (underlying!2724 (cache!1618 cacheUp!384))))))

(declare-fun b!1106460 () Bool)

(assert (=> b!1106460 (= e!701335 e!701330)))

(declare-fun b!1106461 () Bool)

(declare-fun e!701332 () Bool)

(declare-fun e!701331 () Bool)

(declare-fun lt!375987 () MutLongMap!1264)

(assert (=> b!1106461 (= e!701332 (and e!701331 ((_ is LongMap!1264) lt!375987)))))

(assert (=> b!1106461 (= lt!375987 (v!20018 (underlying!2722 (cache!1617 cacheDown!397))))))

(declare-fun e!701348 () Bool)

(assert (=> b!1106462 (= e!701348 (and e!701332 tp!327693))))

(declare-fun e!701333 () Bool)

(declare-fun b!1106463 () Bool)

(declare-fun e!701345 () Bool)

(declare-fun tp!327696 () Bool)

(declare-fun inv!13864 (String!13226) Bool)

(declare-fun inv!13870 (TokenValueInjection!3556) Bool)

(assert (=> b!1106463 (= e!701345 (and tp!327696 (inv!13864 (tag!2124 (h!16197 rules!859))) (inv!13870 (transformation!1862 (h!16197 rules!859))) e!701333))))

(declare-fun b!1106464 () Bool)

(assert (=> b!1106464 (= e!701342 e!701348)))

(declare-fun b!1106465 () Bool)

(declare-fun tp!327694 () Bool)

(assert (=> b!1106465 (= e!701326 (and e!701345 tp!327694))))

(declare-fun mapIsEmpty!6104 () Bool)

(declare-fun mapRes!6105 () Bool)

(assert (=> mapIsEmpty!6104 mapRes!6105))

(declare-fun b!1106466 () Bool)

(declare-datatypes ((PrintableTokens!432 0))(
  ( (PrintableTokens!433 (rules!9145 List!10820) (tokens!1417 BalanceConc!6852)) )
))
(declare-datatypes ((Option!2462 0))(
  ( (None!2461) (Some!2461 (v!20021 PrintableTokens!432)) )
))
(declare-fun e!701339 () Option!2462)

(assert (=> b!1106466 (= e!701339 None!2461)))

(declare-fun b!1106467 () Bool)

(declare-fun e!701334 () Bool)

(assert (=> b!1106467 (= e!701337 e!701334)))

(declare-fun b!1106468 () Bool)

(assert (=> b!1106468 (= e!701331 e!701336)))

(declare-fun b!1106469 () Bool)

(declare-fun res!490261 () Bool)

(assert (=> b!1106469 (=> (not res!490261) (not e!701346))))

(declare-fun rulesInvariant!1450 (LexerInterface!1574 List!10820) Bool)

(assert (=> b!1106469 (= res!490261 (rulesInvariant!1450 Lexer!1572 rules!859))))

(assert (=> b!1106470 (= e!701333 (and tp!327686 tp!327695))))

(declare-fun tp!327681 () Bool)

(declare-fun tp!327688 () Bool)

(declare-fun e!701328 () Bool)

(declare-fun array_inv!1435 (array!4465) Bool)

(assert (=> b!1106471 (= e!701334 (and tp!327682 tp!327681 tp!327688 (array_inv!1433 (_keys!1559 (v!20019 (underlying!2723 (v!20020 (underlying!2724 (cache!1618 cacheUp!384))))))) (array_inv!1435 (_values!1544 (v!20019 (underlying!2723 (v!20020 (underlying!2724 (cache!1618 cacheUp!384))))))) e!701328))))

(declare-fun mapIsEmpty!6105 () Bool)

(assert (=> mapIsEmpty!6105 mapRes!6104))

(declare-fun b!1106472 () Bool)

(declare-fun tp!327683 () Bool)

(assert (=> b!1106472 (= e!701328 (and tp!327683 mapRes!6105))))

(declare-fun condMapEmpty!6105 () Bool)

(declare-fun mapDefault!6105 () List!10822)

(assert (=> b!1106472 (= condMapEmpty!6105 (= (arr!1993 (_values!1544 (v!20019 (underlying!2723 (v!20020 (underlying!2724 (cache!1618 cacheUp!384))))))) ((as const (Array (_ BitVec 32) List!10822)) mapDefault!6105)))))

(declare-fun b!1106473 () Bool)

(declare-fun e!701347 () Bool)

(declare-fun lt!375986 () Option!2462)

(declare-fun isDefined!2104 (Option!2462) Bool)

(assert (=> b!1106473 (= e!701347 (not (isDefined!2104 lt!375986)))))

(declare-fun b!1106474 () Bool)

(assert (=> b!1106474 (= e!701339 (Some!2461 (PrintableTokens!433 rules!859 tokens!304)))))

(declare-fun b!1106475 () Bool)

(assert (=> b!1106475 (= e!701346 e!701347)))

(declare-fun res!490262 () Bool)

(assert (=> b!1106475 (=> (not res!490262) (not e!701347))))

(declare-fun isEmpty!6728 (Option!2462) Bool)

(assert (=> b!1106475 (= res!490262 (not (isEmpty!6728 lt!375986)))))

(assert (=> b!1106475 (= lt!375986 e!701339)))

(declare-fun c!187928 () Bool)

(declare-datatypes ((tuple3!1076 0))(
  ( (tuple3!1077 (_1!6755 Bool) (_2!6755 CacheUp!706) (_3!829 CacheDown!708)) )
))
(declare-fun separableTokensMem!2 (LexerInterface!1574 BalanceConc!6852 List!10820 CacheUp!706 CacheDown!708) tuple3!1076)

(assert (=> b!1106475 (= c!187928 (_1!6755 (separableTokensMem!2 Lexer!1572 tokens!304 rules!859 cacheUp!384 cacheDown!397)))))

(declare-fun mapNonEmpty!6105 () Bool)

(declare-fun tp!327687 () Bool)

(declare-fun tp!327692 () Bool)

(assert (=> mapNonEmpty!6105 (= mapRes!6105 (and tp!327687 tp!327692))))

(declare-fun mapRest!6105 () (Array (_ BitVec 32) List!10822))

(declare-fun mapValue!6104 () List!10822)

(declare-fun mapKey!6105 () (_ BitVec 32))

(assert (=> mapNonEmpty!6105 (= (arr!1993 (_values!1544 (v!20019 (underlying!2723 (v!20020 (underlying!2724 (cache!1618 cacheUp!384))))))) (store mapRest!6105 mapKey!6105 mapValue!6104))))

(assert (= (and start!95510 res!490263) b!1106469))

(assert (= (and b!1106469 res!490261) b!1106458))

(assert (= (and b!1106458 res!490260) b!1106475))

(assert (= (and b!1106475 c!187928) b!1106474))

(assert (= (and b!1106475 (not c!187928)) b!1106466))

(assert (= (and b!1106475 res!490262) b!1106473))

(assert (= b!1106463 b!1106470))

(assert (= b!1106465 b!1106463))

(assert (= (and start!95510 ((_ is Cons!10796) rules!859)) b!1106465))

(assert (= start!95510 b!1106456))

(assert (= (and b!1106472 condMapEmpty!6105) mapIsEmpty!6104))

(assert (= (and b!1106472 (not condMapEmpty!6105)) mapNonEmpty!6105))

(assert (= b!1106471 b!1106472))

(assert (= b!1106467 b!1106471))

(assert (= b!1106457 b!1106467))

(assert (= (and b!1106459 ((_ is LongMap!1265) (v!20020 (underlying!2724 (cache!1618 cacheUp!384))))) b!1106457))

(assert (= b!1106453 b!1106459))

(assert (= (and b!1106460 ((_ is HashMap!1237) (cache!1618 cacheUp!384))) b!1106453))

(assert (= start!95510 b!1106460))

(assert (= (and b!1106455 condMapEmpty!6104) mapIsEmpty!6105))

(assert (= (and b!1106455 (not condMapEmpty!6104)) mapNonEmpty!6104))

(assert (= b!1106452 b!1106455))

(assert (= b!1106454 b!1106452))

(assert (= b!1106468 b!1106454))

(assert (= (and b!1106461 ((_ is LongMap!1264) (v!20018 (underlying!2722 (cache!1617 cacheDown!397))))) b!1106468))

(assert (= b!1106462 b!1106461))

(assert (= (and b!1106464 ((_ is HashMap!1236) (cache!1617 cacheDown!397))) b!1106462))

(assert (= start!95510 b!1106464))

(declare-fun m!1264071 () Bool)

(assert (=> start!95510 m!1264071))

(declare-fun m!1264073 () Bool)

(assert (=> start!95510 m!1264073))

(declare-fun m!1264075 () Bool)

(assert (=> start!95510 m!1264075))

(declare-fun m!1264077 () Bool)

(assert (=> start!95510 m!1264077))

(declare-fun m!1264079 () Bool)

(assert (=> b!1106469 m!1264079))

(declare-fun m!1264081 () Bool)

(assert (=> mapNonEmpty!6104 m!1264081))

(declare-fun m!1264083 () Bool)

(assert (=> b!1106452 m!1264083))

(declare-fun m!1264085 () Bool)

(assert (=> b!1106452 m!1264085))

(declare-fun m!1264087 () Bool)

(assert (=> b!1106473 m!1264087))

(declare-fun m!1264089 () Bool)

(assert (=> b!1106471 m!1264089))

(declare-fun m!1264091 () Bool)

(assert (=> b!1106471 m!1264091))

(declare-fun m!1264093 () Bool)

(assert (=> mapNonEmpty!6105 m!1264093))

(declare-fun m!1264095 () Bool)

(assert (=> b!1106458 m!1264095))

(declare-fun m!1264097 () Bool)

(assert (=> b!1106463 m!1264097))

(declare-fun m!1264099 () Bool)

(assert (=> b!1106463 m!1264099))

(declare-fun m!1264101 () Bool)

(assert (=> b!1106456 m!1264101))

(declare-fun m!1264103 () Bool)

(assert (=> b!1106475 m!1264103))

(declare-fun m!1264105 () Bool)

(assert (=> b!1106475 m!1264105))

(check-sat (not b!1106455) (not b!1106469) b_and!79099 (not b_next!26851) (not b_next!26843) b_and!79101 (not b!1106452) (not b!1106456) (not b_next!26849) (not b!1106465) (not b_next!26847) b_and!79097 (not b!1106475) (not b!1106471) (not b!1106463) (not mapNonEmpty!6104) (not mapNonEmpty!6105) (not b_next!26841) b_and!79103 (not b!1106458) (not b!1106472) (not b!1106473) b_and!79107 b_and!79105 (not b_next!26845) (not start!95510))
(check-sat b_and!79097 b_and!79099 (not b_next!26841) (not b_next!26851) (not b_next!26843) b_and!79103 b_and!79101 (not b_next!26849) (not b_next!26845) (not b_next!26847) b_and!79107 b_and!79105)
(get-model)

(declare-fun d!313343 () Bool)

(declare-fun res!490266 () Bool)

(declare-fun e!701351 () Bool)

(assert (=> d!313343 (=> (not res!490266) (not e!701351))))

(declare-fun rulesValid!636 (LexerInterface!1574 List!10820) Bool)

(assert (=> d!313343 (= res!490266 (rulesValid!636 Lexer!1572 rules!859))))

(assert (=> d!313343 (= (rulesInvariant!1450 Lexer!1572 rules!859) e!701351)))

(declare-fun b!1106478 () Bool)

(declare-datatypes ((List!10823 0))(
  ( (Nil!10799) (Cons!10799 (h!16200 String!13226) (t!105383 List!10823)) )
))
(declare-fun noDuplicateTag!636 (LexerInterface!1574 List!10820 List!10823) Bool)

(assert (=> b!1106478 (= e!701351 (noDuplicateTag!636 Lexer!1572 rules!859 Nil!10799))))

(assert (= (and d!313343 res!490266) b!1106478))

(declare-fun m!1264107 () Bool)

(assert (=> d!313343 m!1264107))

(declare-fun m!1264109 () Bool)

(assert (=> b!1106478 m!1264109))

(assert (=> b!1106469 d!313343))

(declare-fun d!313345 () Bool)

(assert (=> d!313345 (= (isDefined!2104 lt!375986) (not (isEmpty!6728 lt!375986)))))

(declare-fun bs!260051 () Bool)

(assert (= bs!260051 d!313345))

(assert (=> bs!260051 m!1264103))

(assert (=> b!1106473 d!313345))

(declare-fun d!313347 () Bool)

(assert (=> d!313347 (= (isEmpty!6727 rules!859) ((_ is Nil!10796) rules!859))))

(assert (=> start!95510 d!313347))

(declare-fun d!313349 () Bool)

(declare-fun isBalanced!936 (Conc!3415) Bool)

(assert (=> d!313349 (= (inv!13866 tokens!304) (isBalanced!936 (c!187931 tokens!304)))))

(declare-fun bs!260052 () Bool)

(assert (= bs!260052 d!313349))

(declare-fun m!1264111 () Bool)

(assert (=> bs!260052 m!1264111))

(assert (=> start!95510 d!313349))

(declare-fun d!313351 () Bool)

(declare-fun res!490269 () Bool)

(declare-fun e!701354 () Bool)

(assert (=> d!313351 (=> (not res!490269) (not e!701354))))

(assert (=> d!313351 (= res!490269 ((_ is HashMap!1237) (cache!1618 cacheUp!384)))))

(assert (=> d!313351 (= (inv!13867 cacheUp!384) e!701354)))

(declare-fun b!1106481 () Bool)

(declare-fun validCacheMapUp!113 (MutableMap!1237) Bool)

(assert (=> b!1106481 (= e!701354 (validCacheMapUp!113 (cache!1618 cacheUp!384)))))

(assert (= (and d!313351 res!490269) b!1106481))

(declare-fun m!1264113 () Bool)

(assert (=> b!1106481 m!1264113))

(assert (=> start!95510 d!313351))

(declare-fun d!313353 () Bool)

(declare-fun res!490272 () Bool)

(declare-fun e!701357 () Bool)

(assert (=> d!313353 (=> (not res!490272) (not e!701357))))

(assert (=> d!313353 (= res!490272 ((_ is HashMap!1236) (cache!1617 cacheDown!397)))))

(assert (=> d!313353 (= (inv!13868 cacheDown!397) e!701357)))

(declare-fun b!1106484 () Bool)

(declare-fun validCacheMapDown!113 (MutableMap!1236) Bool)

(assert (=> b!1106484 (= e!701357 (validCacheMapDown!113 (cache!1617 cacheDown!397)))))

(assert (= (and d!313353 res!490272) b!1106484))

(declare-fun m!1264115 () Bool)

(assert (=> b!1106484 m!1264115))

(assert (=> start!95510 d!313353))

(declare-fun d!313355 () Bool)

(assert (=> d!313355 (= (isEmpty!6728 lt!375986) (not ((_ is Some!2461) lt!375986)))))

(assert (=> b!1106475 d!313355))

(declare-fun d!313357 () Bool)

(declare-fun lt!375992 () tuple3!1076)

(declare-fun separableTokens!53 (LexerInterface!1574 BalanceConc!6852 List!10820) Bool)

(assert (=> d!313357 (= (_1!6755 lt!375992) (separableTokens!53 Lexer!1572 tokens!304 rules!859))))

(declare-fun lt!375993 () tuple3!1076)

(assert (=> d!313357 (= lt!375992 (tuple3!1077 (_1!6755 lt!375993) (_2!6755 lt!375993) (_3!829 lt!375993)))))

(declare-fun tokensListTwoByTwoPredicateSeparableMem!1 (LexerInterface!1574 BalanceConc!6852 Int List!10820 CacheUp!706 CacheDown!708) tuple3!1076)

(assert (=> d!313357 (= lt!375993 (tokensListTwoByTwoPredicateSeparableMem!1 Lexer!1572 tokens!304 0 rules!859 cacheUp!384 cacheDown!397))))

(assert (=> d!313357 (not (isEmpty!6727 rules!859))))

(assert (=> d!313357 (= (separableTokensMem!2 Lexer!1572 tokens!304 rules!859 cacheUp!384 cacheDown!397) lt!375992)))

(declare-fun bs!260053 () Bool)

(assert (= bs!260053 d!313357))

(declare-fun m!1264117 () Bool)

(assert (=> bs!260053 m!1264117))

(declare-fun m!1264119 () Bool)

(assert (=> bs!260053 m!1264119))

(assert (=> bs!260053 m!1264071))

(assert (=> b!1106475 d!313357))

(declare-fun d!313359 () Bool)

(assert (=> d!313359 (= (array_inv!1433 (_keys!1559 (v!20019 (underlying!2723 (v!20020 (underlying!2724 (cache!1618 cacheUp!384))))))) (bvsge (size!8387 (_keys!1559 (v!20019 (underlying!2723 (v!20020 (underlying!2724 (cache!1618 cacheUp!384))))))) #b00000000000000000000000000000000))))

(assert (=> b!1106471 d!313359))

(declare-fun d!313361 () Bool)

(assert (=> d!313361 (= (array_inv!1435 (_values!1544 (v!20019 (underlying!2723 (v!20020 (underlying!2724 (cache!1618 cacheUp!384))))))) (bvsge (size!8390 (_values!1544 (v!20019 (underlying!2723 (v!20020 (underlying!2724 (cache!1618 cacheUp!384))))))) #b00000000000000000000000000000000))))

(assert (=> b!1106471 d!313361))

(declare-fun d!313363 () Bool)

(declare-fun c!187934 () Bool)

(assert (=> d!313363 (= c!187934 ((_ is Node!3415) (c!187931 tokens!304)))))

(declare-fun e!701362 () Bool)

(assert (=> d!313363 (= (inv!13869 (c!187931 tokens!304)) e!701362)))

(declare-fun b!1106491 () Bool)

(declare-fun inv!13871 (Conc!3415) Bool)

(assert (=> b!1106491 (= e!701362 (inv!13871 (c!187931 tokens!304)))))

(declare-fun b!1106492 () Bool)

(declare-fun e!701363 () Bool)

(assert (=> b!1106492 (= e!701362 e!701363)))

(declare-fun res!490275 () Bool)

(assert (=> b!1106492 (= res!490275 (not ((_ is Leaf!5356) (c!187931 tokens!304))))))

(assert (=> b!1106492 (=> res!490275 e!701363)))

(declare-fun b!1106493 () Bool)

(declare-fun inv!13872 (Conc!3415) Bool)

(assert (=> b!1106493 (= e!701363 (inv!13872 (c!187931 tokens!304)))))

(assert (= (and d!313363 c!187934) b!1106491))

(assert (= (and d!313363 (not c!187934)) b!1106492))

(assert (= (and b!1106492 (not res!490275)) b!1106493))

(declare-fun m!1264121 () Bool)

(assert (=> b!1106491 m!1264121))

(declare-fun m!1264123 () Bool)

(assert (=> b!1106493 m!1264123))

(assert (=> b!1106456 d!313363))

(declare-fun d!313365 () Bool)

(assert (=> d!313365 (= (array_inv!1433 (_keys!1558 (v!20017 (underlying!2721 (v!20018 (underlying!2722 (cache!1617 cacheDown!397))))))) (bvsge (size!8387 (_keys!1558 (v!20017 (underlying!2721 (v!20018 (underlying!2722 (cache!1617 cacheDown!397))))))) #b00000000000000000000000000000000))))

(assert (=> b!1106452 d!313365))

(declare-fun d!313367 () Bool)

(assert (=> d!313367 (= (array_inv!1434 (_values!1543 (v!20017 (underlying!2721 (v!20018 (underlying!2722 (cache!1617 cacheDown!397))))))) (bvsge (size!8388 (_values!1543 (v!20017 (underlying!2721 (v!20018 (underlying!2722 (cache!1617 cacheDown!397))))))) #b00000000000000000000000000000000))))

(assert (=> b!1106452 d!313367))

(declare-fun b!1106507 () Bool)

(declare-fun e!701375 () Bool)

(assert (=> b!1106507 (= e!701375 true)))

(declare-fun b!1106506 () Bool)

(declare-fun e!701374 () Bool)

(assert (=> b!1106506 (= e!701374 e!701375)))

(declare-fun b!1106505 () Bool)

(declare-fun e!701373 () Bool)

(assert (=> b!1106505 (= e!701373 e!701374)))

(declare-fun d!313369 () Bool)

(assert (=> d!313369 e!701373))

(assert (= b!1106506 b!1106507))

(assert (= b!1106505 b!1106506))

(assert (= (and d!313369 ((_ is Cons!10796) rules!859)) b!1106505))

(declare-fun order!6599 () Int)

(declare-fun lambda!44723 () Int)

(declare-fun order!6597 () Int)

(declare-fun dynLambda!4749 (Int Int) Int)

(declare-fun dynLambda!4750 (Int Int) Int)

(assert (=> b!1106507 (< (dynLambda!4749 order!6597 (toValue!2939 (transformation!1862 (h!16197 rules!859)))) (dynLambda!4750 order!6599 lambda!44723))))

(declare-fun order!6601 () Int)

(declare-fun dynLambda!4751 (Int Int) Int)

(assert (=> b!1106507 (< (dynLambda!4751 order!6601 (toChars!2798 (transformation!1862 (h!16197 rules!859)))) (dynLambda!4750 order!6599 lambda!44723))))

(assert (=> d!313369 true))

(declare-fun e!701366 () Bool)

(assert (=> d!313369 e!701366))

(declare-fun res!490278 () Bool)

(assert (=> d!313369 (=> (not res!490278) (not e!701366))))

(declare-fun lt!375996 () Bool)

(declare-fun forall!2537 (List!10821 Int) Bool)

(declare-fun list!3891 (BalanceConc!6852) List!10821)

(assert (=> d!313369 (= res!490278 (= lt!375996 (forall!2537 (list!3891 tokens!304) lambda!44723)))))

(declare-fun forall!2538 (BalanceConc!6852 Int) Bool)

(assert (=> d!313369 (= lt!375996 (forall!2538 tokens!304 lambda!44723))))

(assert (=> d!313369 (not (isEmpty!6727 rules!859))))

(assert (=> d!313369 (= (rulesProduceEachTokenIndividually!617 Lexer!1572 rules!859 tokens!304) lt!375996)))

(declare-fun b!1106496 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!457 (LexerInterface!1574 List!10820 List!10821) Bool)

(assert (=> b!1106496 (= e!701366 (= lt!375996 (rulesProduceEachTokenIndividuallyList!457 Lexer!1572 rules!859 (list!3891 tokens!304))))))

(assert (= (and d!313369 res!490278) b!1106496))

(declare-fun m!1264125 () Bool)

(assert (=> d!313369 m!1264125))

(assert (=> d!313369 m!1264125))

(declare-fun m!1264127 () Bool)

(assert (=> d!313369 m!1264127))

(declare-fun m!1264129 () Bool)

(assert (=> d!313369 m!1264129))

(assert (=> d!313369 m!1264071))

(assert (=> b!1106496 m!1264125))

(assert (=> b!1106496 m!1264125))

(declare-fun m!1264131 () Bool)

(assert (=> b!1106496 m!1264131))

(assert (=> b!1106458 d!313369))

(declare-fun d!313371 () Bool)

(assert (=> d!313371 (= (inv!13864 (tag!2124 (h!16197 rules!859))) (= (mod (str.len (value!61061 (tag!2124 (h!16197 rules!859)))) 2) 0))))

(assert (=> b!1106463 d!313371))

(declare-fun d!313373 () Bool)

(declare-fun res!490281 () Bool)

(declare-fun e!701378 () Bool)

(assert (=> d!313373 (=> (not res!490281) (not e!701378))))

(declare-fun semiInverseModEq!705 (Int Int) Bool)

(assert (=> d!313373 (= res!490281 (semiInverseModEq!705 (toChars!2798 (transformation!1862 (h!16197 rules!859))) (toValue!2939 (transformation!1862 (h!16197 rules!859)))))))

(assert (=> d!313373 (= (inv!13870 (transformation!1862 (h!16197 rules!859))) e!701378)))

(declare-fun b!1106512 () Bool)

(declare-fun equivClasses!672 (Int Int) Bool)

(assert (=> b!1106512 (= e!701378 (equivClasses!672 (toChars!2798 (transformation!1862 (h!16197 rules!859))) (toValue!2939 (transformation!1862 (h!16197 rules!859)))))))

(assert (= (and d!313373 res!490281) b!1106512))

(declare-fun m!1264133 () Bool)

(assert (=> d!313373 m!1264133))

(declare-fun m!1264135 () Bool)

(assert (=> b!1106512 m!1264135))

(assert (=> b!1106463 d!313373))

(declare-fun b!1106523 () Bool)

(declare-fun b_free!26789 () Bool)

(declare-fun b_next!26853 () Bool)

(assert (=> b!1106523 (= b_free!26789 (not b_next!26853))))

(declare-fun tp!327705 () Bool)

(declare-fun b_and!79109 () Bool)

(assert (=> b!1106523 (= tp!327705 b_and!79109)))

(declare-fun b_free!26791 () Bool)

(declare-fun b_next!26855 () Bool)

(assert (=> b!1106523 (= b_free!26791 (not b_next!26855))))

(declare-fun tp!327706 () Bool)

(declare-fun b_and!79111 () Bool)

(assert (=> b!1106523 (= tp!327706 b_and!79111)))

(declare-fun e!701387 () Bool)

(assert (=> b!1106523 (= e!701387 (and tp!327705 tp!327706))))

(declare-fun e!701390 () Bool)

(declare-fun tp!327707 () Bool)

(declare-fun b!1106522 () Bool)

(assert (=> b!1106522 (= e!701390 (and tp!327707 (inv!13864 (tag!2124 (h!16197 (t!105376 rules!859)))) (inv!13870 (transformation!1862 (h!16197 (t!105376 rules!859)))) e!701387))))

(declare-fun b!1106521 () Bool)

(declare-fun e!701388 () Bool)

(declare-fun tp!327708 () Bool)

(assert (=> b!1106521 (= e!701388 (and e!701390 tp!327708))))

(assert (=> b!1106465 (= tp!327694 e!701388)))

(assert (= b!1106522 b!1106523))

(assert (= b!1106521 b!1106522))

(assert (= (and b!1106465 ((_ is Cons!10796) (t!105376 rules!859))) b!1106521))

(declare-fun m!1264137 () Bool)

(assert (=> b!1106522 m!1264137))

(declare-fun m!1264139 () Bool)

(assert (=> b!1106522 m!1264139))

(declare-fun b!1106532 () Bool)

(declare-fun e!701398 () Bool)

(declare-fun tp!327723 () Bool)

(assert (=> b!1106532 (= e!701398 tp!327723)))

(declare-fun setIsEmpty!7717 () Bool)

(declare-fun setRes!7717 () Bool)

(assert (=> setIsEmpty!7717 setRes!7717))

(declare-fun e!701399 () Bool)

(declare-fun setElem!7717 () Context!1034)

(declare-fun setNonEmpty!7717 () Bool)

(declare-fun tp!327720 () Bool)

(declare-fun inv!13873 (Context!1034) Bool)

(assert (=> setNonEmpty!7717 (= setRes!7717 (and tp!327720 (inv!13873 setElem!7717) e!701399))))

(declare-fun setRest!7717 () (InoxSet Context!1034))

(assert (=> setNonEmpty!7717 (= (_2!6752 (h!16194 mapDefault!6104)) ((_ map or) (store ((as const (Array Context!1034 Bool)) false) setElem!7717 true) setRest!7717))))

(declare-fun tp!327721 () Bool)

(declare-fun tp!327719 () Bool)

(declare-fun b!1106533 () Bool)

(declare-fun tp_is_empty!5711 () Bool)

(declare-fun e!701397 () Bool)

(assert (=> b!1106533 (= e!701397 (and tp!327721 (inv!13873 (_2!6751 (_1!6752 (h!16194 mapDefault!6104)))) e!701398 tp_is_empty!5711 setRes!7717 tp!327719))))

(declare-fun condSetEmpty!7717 () Bool)

(assert (=> b!1106533 (= condSetEmpty!7717 (= (_2!6752 (h!16194 mapDefault!6104)) ((as const (Array Context!1034 Bool)) false)))))

(declare-fun b!1106534 () Bool)

(declare-fun tp!327722 () Bool)

(assert (=> b!1106534 (= e!701399 tp!327722)))

(assert (=> b!1106455 (= tp!327679 e!701397)))

(assert (= b!1106533 b!1106532))

(assert (= (and b!1106533 condSetEmpty!7717) setIsEmpty!7717))

(assert (= (and b!1106533 (not condSetEmpty!7717)) setNonEmpty!7717))

(assert (= setNonEmpty!7717 b!1106534))

(assert (= (and b!1106455 ((_ is Cons!10793) mapDefault!6104)) b!1106533))

(declare-fun m!1264141 () Bool)

(assert (=> setNonEmpty!7717 m!1264141))

(declare-fun m!1264143 () Bool)

(assert (=> b!1106533 m!1264143))

(declare-fun b!1106549 () Bool)

(declare-fun e!701415 () Bool)

(declare-fun tp!327745 () Bool)

(assert (=> b!1106549 (= e!701415 tp!327745)))

(declare-fun setIsEmpty!7722 () Bool)

(declare-fun setRes!7723 () Bool)

(assert (=> setIsEmpty!7722 setRes!7723))

(declare-fun condMapEmpty!6108 () Bool)

(declare-fun mapDefault!6108 () List!10822)

(assert (=> mapNonEmpty!6105 (= condMapEmpty!6108 (= mapRest!6105 ((as const (Array (_ BitVec 32) List!10822)) mapDefault!6108)))))

(declare-fun e!701412 () Bool)

(declare-fun mapRes!6108 () Bool)

(assert (=> mapNonEmpty!6105 (= tp!327687 (and e!701412 mapRes!6108))))

(declare-fun setRes!7722 () Bool)

(declare-fun tp!327742 () Bool)

(declare-fun setNonEmpty!7722 () Bool)

(declare-fun e!701413 () Bool)

(declare-fun setElem!7722 () Context!1034)

(assert (=> setNonEmpty!7722 (= setRes!7722 (and tp!327742 (inv!13873 setElem!7722) e!701413))))

(declare-fun mapValue!6108 () List!10822)

(declare-fun setRest!7723 () (InoxSet Context!1034))

(assert (=> setNonEmpty!7722 (= (_2!6754 (h!16199 mapValue!6108)) ((_ map or) (store ((as const (Array Context!1034 Bool)) false) setElem!7722 true) setRest!7723))))

(declare-fun b!1106550 () Bool)

(declare-fun tp!327746 () Bool)

(assert (=> b!1106550 (= e!701413 tp!327746)))

(declare-fun b!1106551 () Bool)

(declare-fun e!701416 () Bool)

(declare-fun tp!327748 () Bool)

(assert (=> b!1106551 (= e!701416 tp!327748)))

(declare-fun setIsEmpty!7723 () Bool)

(assert (=> setIsEmpty!7723 setRes!7722))

(declare-fun b!1106552 () Bool)

(declare-fun tp!327747 () Bool)

(assert (=> b!1106552 (= e!701412 (and (inv!13873 (_1!6753 (_1!6754 (h!16199 mapDefault!6108)))) e!701416 tp_is_empty!5711 setRes!7723 tp!327747))))

(declare-fun condSetEmpty!7723 () Bool)

(assert (=> b!1106552 (= condSetEmpty!7723 (= (_2!6754 (h!16199 mapDefault!6108)) ((as const (Array Context!1034 Bool)) false)))))

(declare-fun tp!327750 () Bool)

(declare-fun setNonEmpty!7723 () Bool)

(declare-fun setElem!7723 () Context!1034)

(assert (=> setNonEmpty!7723 (= setRes!7723 (and tp!327750 (inv!13873 setElem!7723) e!701415))))

(declare-fun setRest!7722 () (InoxSet Context!1034))

(assert (=> setNonEmpty!7723 (= (_2!6754 (h!16199 mapDefault!6108)) ((_ map or) (store ((as const (Array Context!1034 Bool)) false) setElem!7723 true) setRest!7722))))

(declare-fun mapNonEmpty!6108 () Bool)

(declare-fun tp!327743 () Bool)

(declare-fun e!701414 () Bool)

(assert (=> mapNonEmpty!6108 (= mapRes!6108 (and tp!327743 e!701414))))

(declare-fun mapRest!6108 () (Array (_ BitVec 32) List!10822))

(declare-fun mapKey!6108 () (_ BitVec 32))

(assert (=> mapNonEmpty!6108 (= mapRest!6105 (store mapRest!6108 mapKey!6108 mapValue!6108))))

(declare-fun e!701417 () Bool)

(declare-fun b!1106553 () Bool)

(declare-fun tp!327744 () Bool)

(assert (=> b!1106553 (= e!701414 (and (inv!13873 (_1!6753 (_1!6754 (h!16199 mapValue!6108)))) e!701417 tp_is_empty!5711 setRes!7722 tp!327744))))

(declare-fun condSetEmpty!7722 () Bool)

(assert (=> b!1106553 (= condSetEmpty!7722 (= (_2!6754 (h!16199 mapValue!6108)) ((as const (Array Context!1034 Bool)) false)))))

(declare-fun mapIsEmpty!6108 () Bool)

(assert (=> mapIsEmpty!6108 mapRes!6108))

(declare-fun b!1106554 () Bool)

(declare-fun tp!327749 () Bool)

(assert (=> b!1106554 (= e!701417 tp!327749)))

(assert (= (and mapNonEmpty!6105 condMapEmpty!6108) mapIsEmpty!6108))

(assert (= (and mapNonEmpty!6105 (not condMapEmpty!6108)) mapNonEmpty!6108))

(assert (= b!1106553 b!1106554))

(assert (= (and b!1106553 condSetEmpty!7722) setIsEmpty!7723))

(assert (= (and b!1106553 (not condSetEmpty!7722)) setNonEmpty!7722))

(assert (= setNonEmpty!7722 b!1106550))

(assert (= (and mapNonEmpty!6108 ((_ is Cons!10798) mapValue!6108)) b!1106553))

(assert (= b!1106552 b!1106551))

(assert (= (and b!1106552 condSetEmpty!7723) setIsEmpty!7722))

(assert (= (and b!1106552 (not condSetEmpty!7723)) setNonEmpty!7723))

(assert (= setNonEmpty!7723 b!1106549))

(assert (= (and mapNonEmpty!6105 ((_ is Cons!10798) mapDefault!6108)) b!1106552))

(declare-fun m!1264145 () Bool)

(assert (=> setNonEmpty!7723 m!1264145))

(declare-fun m!1264147 () Bool)

(assert (=> b!1106553 m!1264147))

(declare-fun m!1264149 () Bool)

(assert (=> setNonEmpty!7722 m!1264149))

(declare-fun m!1264151 () Bool)

(assert (=> mapNonEmpty!6108 m!1264151))

(declare-fun m!1264153 () Bool)

(assert (=> b!1106552 m!1264153))

(declare-fun tp!327761 () Bool)

(declare-fun e!701426 () Bool)

(declare-fun setRes!7726 () Bool)

(declare-fun setElem!7726 () Context!1034)

(declare-fun setNonEmpty!7726 () Bool)

(assert (=> setNonEmpty!7726 (= setRes!7726 (and tp!327761 (inv!13873 setElem!7726) e!701426))))

(declare-fun setRest!7726 () (InoxSet Context!1034))

(assert (=> setNonEmpty!7726 (= (_2!6754 (h!16199 mapValue!6104)) ((_ map or) (store ((as const (Array Context!1034 Bool)) false) setElem!7726 true) setRest!7726))))

(declare-fun b!1106563 () Bool)

(declare-fun tp!327762 () Bool)

(assert (=> b!1106563 (= e!701426 tp!327762)))

(declare-fun setIsEmpty!7726 () Bool)

(assert (=> setIsEmpty!7726 setRes!7726))

(declare-fun e!701425 () Bool)

(declare-fun e!701424 () Bool)

(declare-fun tp!327759 () Bool)

(declare-fun b!1106564 () Bool)

(assert (=> b!1106564 (= e!701424 (and (inv!13873 (_1!6753 (_1!6754 (h!16199 mapValue!6104)))) e!701425 tp_is_empty!5711 setRes!7726 tp!327759))))

(declare-fun condSetEmpty!7726 () Bool)

(assert (=> b!1106564 (= condSetEmpty!7726 (= (_2!6754 (h!16199 mapValue!6104)) ((as const (Array Context!1034 Bool)) false)))))

(declare-fun b!1106565 () Bool)

(declare-fun tp!327760 () Bool)

(assert (=> b!1106565 (= e!701425 tp!327760)))

(assert (=> mapNonEmpty!6105 (= tp!327692 e!701424)))

(assert (= b!1106564 b!1106565))

(assert (= (and b!1106564 condSetEmpty!7726) setIsEmpty!7726))

(assert (= (and b!1106564 (not condSetEmpty!7726)) setNonEmpty!7726))

(assert (= setNonEmpty!7726 b!1106563))

(assert (= (and mapNonEmpty!6105 ((_ is Cons!10798) mapValue!6104)) b!1106564))

(declare-fun m!1264155 () Bool)

(assert (=> setNonEmpty!7726 m!1264155))

(declare-fun m!1264157 () Bool)

(assert (=> b!1106564 m!1264157))

(declare-fun setElem!7727 () Context!1034)

(declare-fun setRes!7727 () Bool)

(declare-fun setNonEmpty!7727 () Bool)

(declare-fun e!701429 () Bool)

(declare-fun tp!327765 () Bool)

(assert (=> setNonEmpty!7727 (= setRes!7727 (and tp!327765 (inv!13873 setElem!7727) e!701429))))

(declare-fun setRest!7727 () (InoxSet Context!1034))

(assert (=> setNonEmpty!7727 (= (_2!6754 (h!16199 (zeroValue!1522 (v!20019 (underlying!2723 (v!20020 (underlying!2724 (cache!1618 cacheUp!384)))))))) ((_ map or) (store ((as const (Array Context!1034 Bool)) false) setElem!7727 true) setRest!7727))))

(declare-fun b!1106566 () Bool)

(declare-fun tp!327766 () Bool)

(assert (=> b!1106566 (= e!701429 tp!327766)))

(declare-fun setIsEmpty!7727 () Bool)

(assert (=> setIsEmpty!7727 setRes!7727))

(declare-fun e!701428 () Bool)

(declare-fun e!701427 () Bool)

(declare-fun tp!327763 () Bool)

(declare-fun b!1106567 () Bool)

(assert (=> b!1106567 (= e!701427 (and (inv!13873 (_1!6753 (_1!6754 (h!16199 (zeroValue!1522 (v!20019 (underlying!2723 (v!20020 (underlying!2724 (cache!1618 cacheUp!384)))))))))) e!701428 tp_is_empty!5711 setRes!7727 tp!327763))))

(declare-fun condSetEmpty!7727 () Bool)

(assert (=> b!1106567 (= condSetEmpty!7727 (= (_2!6754 (h!16199 (zeroValue!1522 (v!20019 (underlying!2723 (v!20020 (underlying!2724 (cache!1618 cacheUp!384)))))))) ((as const (Array Context!1034 Bool)) false)))))

(declare-fun b!1106568 () Bool)

(declare-fun tp!327764 () Bool)

(assert (=> b!1106568 (= e!701428 tp!327764)))

(assert (=> b!1106471 (= tp!327681 e!701427)))

(assert (= b!1106567 b!1106568))

(assert (= (and b!1106567 condSetEmpty!7727) setIsEmpty!7727))

(assert (= (and b!1106567 (not condSetEmpty!7727)) setNonEmpty!7727))

(assert (= setNonEmpty!7727 b!1106566))

(assert (= (and b!1106471 ((_ is Cons!10798) (zeroValue!1522 (v!20019 (underlying!2723 (v!20020 (underlying!2724 (cache!1618 cacheUp!384)))))))) b!1106567))

(declare-fun m!1264159 () Bool)

(assert (=> setNonEmpty!7727 m!1264159))

(declare-fun m!1264161 () Bool)

(assert (=> b!1106567 m!1264161))

(declare-fun tp!327769 () Bool)

(declare-fun e!701432 () Bool)

(declare-fun setElem!7728 () Context!1034)

(declare-fun setRes!7728 () Bool)

(declare-fun setNonEmpty!7728 () Bool)

(assert (=> setNonEmpty!7728 (= setRes!7728 (and tp!327769 (inv!13873 setElem!7728) e!701432))))

(declare-fun setRest!7728 () (InoxSet Context!1034))

(assert (=> setNonEmpty!7728 (= (_2!6754 (h!16199 (minValue!1522 (v!20019 (underlying!2723 (v!20020 (underlying!2724 (cache!1618 cacheUp!384)))))))) ((_ map or) (store ((as const (Array Context!1034 Bool)) false) setElem!7728 true) setRest!7728))))

(declare-fun b!1106569 () Bool)

(declare-fun tp!327770 () Bool)

(assert (=> b!1106569 (= e!701432 tp!327770)))

(declare-fun setIsEmpty!7728 () Bool)

(assert (=> setIsEmpty!7728 setRes!7728))

(declare-fun e!701430 () Bool)

(declare-fun tp!327767 () Bool)

(declare-fun e!701431 () Bool)

(declare-fun b!1106570 () Bool)

(assert (=> b!1106570 (= e!701430 (and (inv!13873 (_1!6753 (_1!6754 (h!16199 (minValue!1522 (v!20019 (underlying!2723 (v!20020 (underlying!2724 (cache!1618 cacheUp!384)))))))))) e!701431 tp_is_empty!5711 setRes!7728 tp!327767))))

(declare-fun condSetEmpty!7728 () Bool)

(assert (=> b!1106570 (= condSetEmpty!7728 (= (_2!6754 (h!16199 (minValue!1522 (v!20019 (underlying!2723 (v!20020 (underlying!2724 (cache!1618 cacheUp!384)))))))) ((as const (Array Context!1034 Bool)) false)))))

(declare-fun b!1106571 () Bool)

(declare-fun tp!327768 () Bool)

(assert (=> b!1106571 (= e!701431 tp!327768)))

(assert (=> b!1106471 (= tp!327688 e!701430)))

(assert (= b!1106570 b!1106571))

(assert (= (and b!1106570 condSetEmpty!7728) setIsEmpty!7728))

(assert (= (and b!1106570 (not condSetEmpty!7728)) setNonEmpty!7728))

(assert (= setNonEmpty!7728 b!1106569))

(assert (= (and b!1106471 ((_ is Cons!10798) (minValue!1522 (v!20019 (underlying!2723 (v!20020 (underlying!2724 (cache!1618 cacheUp!384)))))))) b!1106570))

(declare-fun m!1264163 () Bool)

(assert (=> setNonEmpty!7728 m!1264163))

(declare-fun m!1264165 () Bool)

(assert (=> b!1106570 m!1264165))

(declare-fun e!701437 () Bool)

(declare-fun b!1106580 () Bool)

(declare-fun tp!327778 () Bool)

(declare-fun tp!327779 () Bool)

(assert (=> b!1106580 (= e!701437 (and (inv!13869 (left!9381 (c!187931 tokens!304))) tp!327778 (inv!13869 (right!9711 (c!187931 tokens!304))) tp!327779))))

(declare-fun b!1106582 () Bool)

(declare-fun e!701438 () Bool)

(declare-fun tp!327777 () Bool)

(assert (=> b!1106582 (= e!701438 tp!327777)))

(declare-fun b!1106581 () Bool)

(declare-fun inv!13874 (IArray!6835) Bool)

(assert (=> b!1106581 (= e!701437 (and (inv!13874 (xs!6108 (c!187931 tokens!304))) e!701438))))

(assert (=> b!1106456 (= tp!327691 (and (inv!13869 (c!187931 tokens!304)) e!701437))))

(assert (= (and b!1106456 ((_ is Node!3415) (c!187931 tokens!304))) b!1106580))

(assert (= b!1106581 b!1106582))

(assert (= (and b!1106456 ((_ is Leaf!5356) (c!187931 tokens!304))) b!1106581))

(declare-fun m!1264167 () Bool)

(assert (=> b!1106580 m!1264167))

(declare-fun m!1264169 () Bool)

(assert (=> b!1106580 m!1264169))

(declare-fun m!1264171 () Bool)

(assert (=> b!1106581 m!1264171))

(assert (=> b!1106456 m!1264101))

(declare-fun b!1106583 () Bool)

(declare-fun e!701440 () Bool)

(declare-fun tp!327784 () Bool)

(assert (=> b!1106583 (= e!701440 tp!327784)))

(declare-fun setIsEmpty!7729 () Bool)

(declare-fun setRes!7729 () Bool)

(assert (=> setIsEmpty!7729 setRes!7729))

(declare-fun setNonEmpty!7729 () Bool)

(declare-fun e!701441 () Bool)

(declare-fun tp!327781 () Bool)

(declare-fun setElem!7729 () Context!1034)

(assert (=> setNonEmpty!7729 (= setRes!7729 (and tp!327781 (inv!13873 setElem!7729) e!701441))))

(declare-fun setRest!7729 () (InoxSet Context!1034))

(assert (=> setNonEmpty!7729 (= (_2!6752 (h!16194 (zeroValue!1521 (v!20017 (underlying!2721 (v!20018 (underlying!2722 (cache!1617 cacheDown!397)))))))) ((_ map or) (store ((as const (Array Context!1034 Bool)) false) setElem!7729 true) setRest!7729))))

(declare-fun tp!327782 () Bool)

(declare-fun e!701439 () Bool)

(declare-fun b!1106584 () Bool)

(declare-fun tp!327780 () Bool)

(assert (=> b!1106584 (= e!701439 (and tp!327782 (inv!13873 (_2!6751 (_1!6752 (h!16194 (zeroValue!1521 (v!20017 (underlying!2721 (v!20018 (underlying!2722 (cache!1617 cacheDown!397)))))))))) e!701440 tp_is_empty!5711 setRes!7729 tp!327780))))

(declare-fun condSetEmpty!7729 () Bool)

(assert (=> b!1106584 (= condSetEmpty!7729 (= (_2!6752 (h!16194 (zeroValue!1521 (v!20017 (underlying!2721 (v!20018 (underlying!2722 (cache!1617 cacheDown!397)))))))) ((as const (Array Context!1034 Bool)) false)))))

(declare-fun b!1106585 () Bool)

(declare-fun tp!327783 () Bool)

(assert (=> b!1106585 (= e!701441 tp!327783)))

(assert (=> b!1106452 (= tp!327684 e!701439)))

(assert (= b!1106584 b!1106583))

(assert (= (and b!1106584 condSetEmpty!7729) setIsEmpty!7729))

(assert (= (and b!1106584 (not condSetEmpty!7729)) setNonEmpty!7729))

(assert (= setNonEmpty!7729 b!1106585))

(assert (= (and b!1106452 ((_ is Cons!10793) (zeroValue!1521 (v!20017 (underlying!2721 (v!20018 (underlying!2722 (cache!1617 cacheDown!397)))))))) b!1106584))

(declare-fun m!1264173 () Bool)

(assert (=> setNonEmpty!7729 m!1264173))

(declare-fun m!1264175 () Bool)

(assert (=> b!1106584 m!1264175))

(declare-fun b!1106586 () Bool)

(declare-fun e!701443 () Bool)

(declare-fun tp!327789 () Bool)

(assert (=> b!1106586 (= e!701443 tp!327789)))

(declare-fun setIsEmpty!7730 () Bool)

(declare-fun setRes!7730 () Bool)

(assert (=> setIsEmpty!7730 setRes!7730))

(declare-fun e!701444 () Bool)

(declare-fun tp!327786 () Bool)

(declare-fun setNonEmpty!7730 () Bool)

(declare-fun setElem!7730 () Context!1034)

(assert (=> setNonEmpty!7730 (= setRes!7730 (and tp!327786 (inv!13873 setElem!7730) e!701444))))

(declare-fun setRest!7730 () (InoxSet Context!1034))

(assert (=> setNonEmpty!7730 (= (_2!6752 (h!16194 (minValue!1521 (v!20017 (underlying!2721 (v!20018 (underlying!2722 (cache!1617 cacheDown!397)))))))) ((_ map or) (store ((as const (Array Context!1034 Bool)) false) setElem!7730 true) setRest!7730))))

(declare-fun tp!327785 () Bool)

(declare-fun b!1106587 () Bool)

(declare-fun tp!327787 () Bool)

(declare-fun e!701442 () Bool)

(assert (=> b!1106587 (= e!701442 (and tp!327787 (inv!13873 (_2!6751 (_1!6752 (h!16194 (minValue!1521 (v!20017 (underlying!2721 (v!20018 (underlying!2722 (cache!1617 cacheDown!397)))))))))) e!701443 tp_is_empty!5711 setRes!7730 tp!327785))))

(declare-fun condSetEmpty!7730 () Bool)

(assert (=> b!1106587 (= condSetEmpty!7730 (= (_2!6752 (h!16194 (minValue!1521 (v!20017 (underlying!2721 (v!20018 (underlying!2722 (cache!1617 cacheDown!397)))))))) ((as const (Array Context!1034 Bool)) false)))))

(declare-fun b!1106588 () Bool)

(declare-fun tp!327788 () Bool)

(assert (=> b!1106588 (= e!701444 tp!327788)))

(assert (=> b!1106452 (= tp!327689 e!701442)))

(assert (= b!1106587 b!1106586))

(assert (= (and b!1106587 condSetEmpty!7730) setIsEmpty!7730))

(assert (= (and b!1106587 (not condSetEmpty!7730)) setNonEmpty!7730))

(assert (= setNonEmpty!7730 b!1106588))

(assert (= (and b!1106452 ((_ is Cons!10793) (minValue!1521 (v!20017 (underlying!2721 (v!20018 (underlying!2722 (cache!1617 cacheDown!397)))))))) b!1106587))

(declare-fun m!1264177 () Bool)

(assert (=> setNonEmpty!7730 m!1264177))

(declare-fun m!1264179 () Bool)

(assert (=> b!1106587 m!1264179))

(declare-fun setNonEmpty!7731 () Bool)

(declare-fun tp!327792 () Bool)

(declare-fun e!701447 () Bool)

(declare-fun setElem!7731 () Context!1034)

(declare-fun setRes!7731 () Bool)

(assert (=> setNonEmpty!7731 (= setRes!7731 (and tp!327792 (inv!13873 setElem!7731) e!701447))))

(declare-fun setRest!7731 () (InoxSet Context!1034))

(assert (=> setNonEmpty!7731 (= (_2!6754 (h!16199 mapDefault!6105)) ((_ map or) (store ((as const (Array Context!1034 Bool)) false) setElem!7731 true) setRest!7731))))

(declare-fun b!1106589 () Bool)

(declare-fun tp!327793 () Bool)

(assert (=> b!1106589 (= e!701447 tp!327793)))

(declare-fun setIsEmpty!7731 () Bool)

(assert (=> setIsEmpty!7731 setRes!7731))

(declare-fun e!701446 () Bool)

(declare-fun b!1106590 () Bool)

(declare-fun e!701445 () Bool)

(declare-fun tp!327790 () Bool)

(assert (=> b!1106590 (= e!701445 (and (inv!13873 (_1!6753 (_1!6754 (h!16199 mapDefault!6105)))) e!701446 tp_is_empty!5711 setRes!7731 tp!327790))))

(declare-fun condSetEmpty!7731 () Bool)

(assert (=> b!1106590 (= condSetEmpty!7731 (= (_2!6754 (h!16199 mapDefault!6105)) ((as const (Array Context!1034 Bool)) false)))))

(declare-fun b!1106591 () Bool)

(declare-fun tp!327791 () Bool)

(assert (=> b!1106591 (= e!701446 tp!327791)))

(assert (=> b!1106472 (= tp!327683 e!701445)))

(assert (= b!1106590 b!1106591))

(assert (= (and b!1106590 condSetEmpty!7731) setIsEmpty!7731))

(assert (= (and b!1106590 (not condSetEmpty!7731)) setNonEmpty!7731))

(assert (= setNonEmpty!7731 b!1106589))

(assert (= (and b!1106472 ((_ is Cons!10798) mapDefault!6105)) b!1106590))

(declare-fun m!1264181 () Bool)

(assert (=> setNonEmpty!7731 m!1264181))

(declare-fun m!1264183 () Bool)

(assert (=> b!1106590 m!1264183))

(declare-fun b!1106606 () Bool)

(declare-fun e!701464 () Bool)

(declare-fun tp!327820 () Bool)

(assert (=> b!1106606 (= e!701464 tp!327820)))

(declare-fun mapNonEmpty!6111 () Bool)

(declare-fun mapRes!6111 () Bool)

(declare-fun tp!327821 () Bool)

(declare-fun e!701465 () Bool)

(assert (=> mapNonEmpty!6111 (= mapRes!6111 (and tp!327821 e!701465))))

(declare-fun mapKey!6111 () (_ BitVec 32))

(declare-fun mapRest!6111 () (Array (_ BitVec 32) List!10817))

(declare-fun mapValue!6111 () List!10817)

(assert (=> mapNonEmpty!6111 (= mapRest!6104 (store mapRest!6111 mapKey!6111 mapValue!6111))))

(declare-fun setElem!7736 () Context!1034)

(declare-fun tp!327826 () Bool)

(declare-fun setNonEmpty!7736 () Bool)

(declare-fun setRes!7736 () Bool)

(assert (=> setNonEmpty!7736 (= setRes!7736 (and tp!327826 (inv!13873 setElem!7736) e!701464))))

(declare-fun mapDefault!6111 () List!10817)

(declare-fun setRest!7737 () (InoxSet Context!1034))

(assert (=> setNonEmpty!7736 (= (_2!6752 (h!16194 mapDefault!6111)) ((_ map or) (store ((as const (Array Context!1034 Bool)) false) setElem!7736 true) setRest!7737))))

(declare-fun tp!327825 () Bool)

(declare-fun setNonEmpty!7737 () Bool)

(declare-fun e!701462 () Bool)

(declare-fun setRes!7737 () Bool)

(declare-fun setElem!7737 () Context!1034)

(assert (=> setNonEmpty!7737 (= setRes!7737 (and tp!327825 (inv!13873 setElem!7737) e!701462))))

(declare-fun setRest!7736 () (InoxSet Context!1034))

(assert (=> setNonEmpty!7737 (= (_2!6752 (h!16194 mapValue!6111)) ((_ map or) (store ((as const (Array Context!1034 Bool)) false) setElem!7737 true) setRest!7736))))

(declare-fun condMapEmpty!6111 () Bool)

(assert (=> mapNonEmpty!6104 (= condMapEmpty!6111 (= mapRest!6104 ((as const (Array (_ BitVec 32) List!10817)) mapDefault!6111)))))

(declare-fun e!701461 () Bool)

(assert (=> mapNonEmpty!6104 (= tp!327685 (and e!701461 mapRes!6111))))

(declare-fun b!1106607 () Bool)

(declare-fun e!701463 () Bool)

(declare-fun tp!327824 () Bool)

(assert (=> b!1106607 (= e!701463 tp!327824)))

(declare-fun b!1106608 () Bool)

(declare-fun e!701460 () Bool)

(declare-fun tp!327817 () Bool)

(declare-fun tp!327822 () Bool)

(assert (=> b!1106608 (= e!701465 (and tp!327822 (inv!13873 (_2!6751 (_1!6752 (h!16194 mapValue!6111)))) e!701460 tp_is_empty!5711 setRes!7737 tp!327817))))

(declare-fun condSetEmpty!7736 () Bool)

(assert (=> b!1106608 (= condSetEmpty!7736 (= (_2!6752 (h!16194 mapValue!6111)) ((as const (Array Context!1034 Bool)) false)))))

(declare-fun setIsEmpty!7736 () Bool)

(assert (=> setIsEmpty!7736 setRes!7737))

(declare-fun mapIsEmpty!6111 () Bool)

(assert (=> mapIsEmpty!6111 mapRes!6111))

(declare-fun b!1106609 () Bool)

(declare-fun tp!327823 () Bool)

(assert (=> b!1106609 (= e!701460 tp!327823)))

(declare-fun setIsEmpty!7737 () Bool)

(assert (=> setIsEmpty!7737 setRes!7736))

(declare-fun tp!327818 () Bool)

(declare-fun b!1106610 () Bool)

(declare-fun tp!327816 () Bool)

(assert (=> b!1106610 (= e!701461 (and tp!327816 (inv!13873 (_2!6751 (_1!6752 (h!16194 mapDefault!6111)))) e!701463 tp_is_empty!5711 setRes!7736 tp!327818))))

(declare-fun condSetEmpty!7737 () Bool)

(assert (=> b!1106610 (= condSetEmpty!7737 (= (_2!6752 (h!16194 mapDefault!6111)) ((as const (Array Context!1034 Bool)) false)))))

(declare-fun b!1106611 () Bool)

(declare-fun tp!327819 () Bool)

(assert (=> b!1106611 (= e!701462 tp!327819)))

(assert (= (and mapNonEmpty!6104 condMapEmpty!6111) mapIsEmpty!6111))

(assert (= (and mapNonEmpty!6104 (not condMapEmpty!6111)) mapNonEmpty!6111))

(assert (= b!1106608 b!1106609))

(assert (= (and b!1106608 condSetEmpty!7736) setIsEmpty!7736))

(assert (= (and b!1106608 (not condSetEmpty!7736)) setNonEmpty!7737))

(assert (= setNonEmpty!7737 b!1106611))

(assert (= (and mapNonEmpty!6111 ((_ is Cons!10793) mapValue!6111)) b!1106608))

(assert (= b!1106610 b!1106607))

(assert (= (and b!1106610 condSetEmpty!7737) setIsEmpty!7737))

(assert (= (and b!1106610 (not condSetEmpty!7737)) setNonEmpty!7736))

(assert (= setNonEmpty!7736 b!1106606))

(assert (= (and mapNonEmpty!6104 ((_ is Cons!10793) mapDefault!6111)) b!1106610))

(declare-fun m!1264185 () Bool)

(assert (=> setNonEmpty!7736 m!1264185))

(declare-fun m!1264187 () Bool)

(assert (=> b!1106610 m!1264187))

(declare-fun m!1264189 () Bool)

(assert (=> setNonEmpty!7737 m!1264189))

(declare-fun m!1264191 () Bool)

(assert (=> b!1106608 m!1264191))

(declare-fun m!1264193 () Bool)

(assert (=> mapNonEmpty!6111 m!1264193))

(declare-fun b!1106612 () Bool)

(declare-fun e!701467 () Bool)

(declare-fun tp!327831 () Bool)

(assert (=> b!1106612 (= e!701467 tp!327831)))

(declare-fun setIsEmpty!7738 () Bool)

(declare-fun setRes!7738 () Bool)

(assert (=> setIsEmpty!7738 setRes!7738))

(declare-fun setNonEmpty!7738 () Bool)

(declare-fun setElem!7738 () Context!1034)

(declare-fun tp!327828 () Bool)

(declare-fun e!701468 () Bool)

(assert (=> setNonEmpty!7738 (= setRes!7738 (and tp!327828 (inv!13873 setElem!7738) e!701468))))

(declare-fun setRest!7738 () (InoxSet Context!1034))

(assert (=> setNonEmpty!7738 (= (_2!6752 (h!16194 mapValue!6105)) ((_ map or) (store ((as const (Array Context!1034 Bool)) false) setElem!7738 true) setRest!7738))))

(declare-fun tp!327829 () Bool)

(declare-fun e!701466 () Bool)

(declare-fun b!1106613 () Bool)

(declare-fun tp!327827 () Bool)

(assert (=> b!1106613 (= e!701466 (and tp!327829 (inv!13873 (_2!6751 (_1!6752 (h!16194 mapValue!6105)))) e!701467 tp_is_empty!5711 setRes!7738 tp!327827))))

(declare-fun condSetEmpty!7738 () Bool)

(assert (=> b!1106613 (= condSetEmpty!7738 (= (_2!6752 (h!16194 mapValue!6105)) ((as const (Array Context!1034 Bool)) false)))))

(declare-fun b!1106614 () Bool)

(declare-fun tp!327830 () Bool)

(assert (=> b!1106614 (= e!701468 tp!327830)))

(assert (=> mapNonEmpty!6104 (= tp!327680 e!701466)))

(assert (= b!1106613 b!1106612))

(assert (= (and b!1106613 condSetEmpty!7738) setIsEmpty!7738))

(assert (= (and b!1106613 (not condSetEmpty!7738)) setNonEmpty!7738))

(assert (= setNonEmpty!7738 b!1106614))

(assert (= (and mapNonEmpty!6104 ((_ is Cons!10793) mapValue!6105)) b!1106613))

(declare-fun m!1264195 () Bool)

(assert (=> setNonEmpty!7738 m!1264195))

(declare-fun m!1264197 () Bool)

(assert (=> b!1106613 m!1264197))

(declare-fun b!1106627 () Bool)

(declare-fun e!701471 () Bool)

(declare-fun tp!327845 () Bool)

(assert (=> b!1106627 (= e!701471 tp!327845)))

(assert (=> b!1106463 (= tp!327696 e!701471)))

(declare-fun b!1106626 () Bool)

(declare-fun tp!327846 () Bool)

(declare-fun tp!327844 () Bool)

(assert (=> b!1106626 (= e!701471 (and tp!327846 tp!327844))))

(declare-fun b!1106628 () Bool)

(declare-fun tp!327842 () Bool)

(declare-fun tp!327843 () Bool)

(assert (=> b!1106628 (= e!701471 (and tp!327842 tp!327843))))

(declare-fun b!1106625 () Bool)

(assert (=> b!1106625 (= e!701471 tp_is_empty!5711)))

(assert (= (and b!1106463 ((_ is ElementMatch!3131) (regex!1862 (h!16197 rules!859)))) b!1106625))

(assert (= (and b!1106463 ((_ is Concat!5059) (regex!1862 (h!16197 rules!859)))) b!1106626))

(assert (= (and b!1106463 ((_ is Star!3131) (regex!1862 (h!16197 rules!859)))) b!1106627))

(assert (= (and b!1106463 ((_ is Union!3131) (regex!1862 (h!16197 rules!859)))) b!1106628))

(check-sat (not setNonEmpty!7722) (not setNonEmpty!7730) (not b_next!26849) (not b!1106484) (not b!1106554) b_and!79097 (not b!1106582) (not b!1106626) (not b!1106568) (not b!1106522) (not setNonEmpty!7731) (not b!1106581) (not setNonEmpty!7729) (not d!313349) b_and!79111 (not b!1106607) b_and!79099 (not b!1106584) (not b!1106606) (not b!1106589) b_and!79109 (not d!313357) (not d!313345) (not b!1106588) (not b!1106478) (not setNonEmpty!7723) (not b_next!26841) (not b_next!26855) (not mapNonEmpty!6108) (not b!1106533) (not b!1106570) (not b_next!26851) (not b!1106553) (not b!1106609) (not setNonEmpty!7738) (not b!1106590) (not b!1106566) (not b!1106586) (not b_next!26843) (not b!1106512) (not b!1106521) b_and!79103 (not b_next!26853) tp_is_empty!5711 (not b!1106491) (not b!1106611) (not d!313369) (not b!1106628) (not b!1106583) (not setNonEmpty!7728) (not b!1106549) (not d!313373) (not setNonEmpty!7717) (not b!1106550) b_and!79101 (not b!1106534) (not b!1106567) (not b!1106569) (not mapNonEmpty!6111) (not b!1106456) (not b!1106481) (not b!1106612) (not b!1106585) (not setNonEmpty!7737) (not b!1106564) (not b!1106610) (not b!1106580) (not b!1106613) (not b!1106587) (not b!1106532) (not setNonEmpty!7726) b_and!79107 b_and!79105 (not b!1106496) (not b_next!26845) (not b!1106552) (not b!1106608) (not b!1106505) (not setNonEmpty!7736) (not d!313343) (not b!1106563) (not b!1106551) (not b!1106571) (not b!1106493) (not b!1106565) (not b_next!26847) (not b!1106591) (not setNonEmpty!7727) (not b!1106627) (not b!1106614))
(check-sat b_and!79097 b_and!79109 (not b_next!26851) (not b_next!26843) b_and!79101 (not b_next!26849) (not b_next!26845) (not b_next!26847) b_and!79099 b_and!79111 (not b_next!26841) (not b_next!26855) b_and!79103 (not b_next!26853) b_and!79107 b_and!79105)

; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!95544 () Bool)

(assert start!95544)

(declare-fun b!1106773 () Bool)

(declare-fun b_free!26805 () Bool)

(declare-fun b_next!26869 () Bool)

(assert (=> b!1106773 (= b_free!26805 (not b_next!26869))))

(declare-fun tp!327942 () Bool)

(declare-fun b_and!79125 () Bool)

(assert (=> b!1106773 (= tp!327942 b_and!79125)))

(declare-fun b_free!26807 () Bool)

(declare-fun b_next!26871 () Bool)

(assert (=> b!1106773 (= b_free!26807 (not b_next!26871))))

(declare-fun tp!327956 () Bool)

(declare-fun b_and!79127 () Bool)

(assert (=> b!1106773 (= tp!327956 b_and!79127)))

(declare-fun b!1106770 () Bool)

(declare-fun b_free!26809 () Bool)

(declare-fun b_next!26873 () Bool)

(assert (=> b!1106770 (= b_free!26809 (not b_next!26873))))

(declare-fun tp!327943 () Bool)

(declare-fun b_and!79129 () Bool)

(assert (=> b!1106770 (= tp!327943 b_and!79129)))

(declare-fun b!1106759 () Bool)

(declare-fun b_free!26811 () Bool)

(declare-fun b_next!26875 () Bool)

(assert (=> b!1106759 (= b_free!26811 (not b_next!26875))))

(declare-fun tp!327946 () Bool)

(declare-fun b_and!79131 () Bool)

(assert (=> b!1106759 (= tp!327946 b_and!79131)))

(declare-fun b!1106768 () Bool)

(declare-fun b_free!26813 () Bool)

(declare-fun b_next!26877 () Bool)

(assert (=> b!1106768 (= b_free!26813 (not b_next!26877))))

(declare-fun tp!327945 () Bool)

(declare-fun b_and!79133 () Bool)

(assert (=> b!1106768 (= tp!327945 b_and!79133)))

(declare-fun b!1106769 () Bool)

(declare-fun b_free!26815 () Bool)

(declare-fun b_next!26879 () Bool)

(assert (=> b!1106769 (= b_free!26815 (not b_next!26879))))

(declare-fun tp!327952 () Bool)

(declare-fun b_and!79135 () Bool)

(assert (=> b!1106769 (= tp!327952 b_and!79135)))

(declare-fun b!1106754 () Bool)

(declare-fun e!701600 () Bool)

(declare-fun e!701601 () Bool)

(assert (=> b!1106754 (= e!701600 e!701601)))

(declare-fun e!701611 () Bool)

(declare-fun b!1106755 () Bool)

(declare-fun tp!327958 () Bool)

(declare-datatypes ((List!10826 0))(
  ( (Nil!10802) (Cons!10802 (h!16203 (_ BitVec 16)) (t!105386 List!10826)) )
))
(declare-datatypes ((TokenValue!1929 0))(
  ( (FloatLiteralValue!3858 (text!13948 List!10826)) (TokenValueExt!1928 (__x!7532 Int)) (Broken!9645 (value!61066 List!10826)) (Object!1952) (End!1929) (Def!1929) (Underscore!1929) (Match!1929) (Else!1929) (Error!1929) (Case!1929) (If!1929) (Extends!1929) (Abstract!1929) (Class!1929) (Val!1929) (DelimiterValue!3858 (del!1989 List!10826)) (KeywordValue!1935 (value!61067 List!10826)) (CommentValue!3858 (value!61068 List!10826)) (WhitespaceValue!3858 (value!61069 List!10826)) (IndentationValue!1929 (value!61070 List!10826)) (String!13232) (Int32!1929) (Broken!9646 (value!61071 List!10826)) (Boolean!1930) (Unit!16461) (OperatorValue!1932 (op!1989 List!10826)) (IdentifierValue!3858 (value!61072 List!10826)) (IdentifierValue!3859 (value!61073 List!10826)) (WhitespaceValue!3859 (value!61074 List!10826)) (True!3858) (False!3858) (Broken!9647 (value!61075 List!10826)) (Broken!9648 (value!61076 List!10826)) (True!3859) (RightBrace!1929) (RightBracket!1929) (Colon!1929) (Null!1929) (Comma!1929) (LeftBracket!1929) (False!3859) (LeftBrace!1929) (ImaginaryLiteralValue!1929 (text!13949 List!10826)) (StringLiteralValue!5787 (value!61077 List!10826)) (EOFValue!1929 (value!61078 List!10826)) (IdentValue!1929 (value!61079 List!10826)) (DelimiterValue!3859 (value!61080 List!10826)) (DedentValue!1929 (value!61081 List!10826)) (NewLineValue!1929 (value!61082 List!10826)) (IntegerValue!5787 (value!61083 (_ BitVec 32)) (text!13950 List!10826)) (IntegerValue!5788 (value!61084 Int) (text!13951 List!10826)) (Times!1929) (Or!1929) (Equal!1929) (Minus!1929) (Broken!9649 (value!61085 List!10826)) (And!1929) (Div!1929) (LessEqual!1929) (Mod!1929) (Concat!5062) (Not!1929) (Plus!1929) (SpaceValue!1929 (value!61086 List!10826)) (IntegerValue!5789 (value!61087 Int) (text!13952 List!10826)) (StringLiteralValue!5788 (text!13953 List!10826)) (FloatLiteralValue!3859 (text!13954 List!10826)) (BytesLiteralValue!1929 (value!61088 List!10826)) (CommentValue!3859 (value!61089 List!10826)) (StringLiteralValue!5789 (value!61090 List!10826)) (ErrorTokenValue!1929 (msg!1990 List!10826)) )
))
(declare-datatypes ((C!6656 0))(
  ( (C!6657 (val!3584 Int)) )
))
(declare-datatypes ((List!10827 0))(
  ( (Nil!10803) (Cons!10803 (h!16204 C!6656) (t!105387 List!10827)) )
))
(declare-datatypes ((IArray!6837 0))(
  ( (IArray!6838 (innerList!3476 List!10827)) )
))
(declare-datatypes ((Regex!3133 0))(
  ( (ElementMatch!3133 (c!187942 C!6656)) (Concat!5063 (regOne!6778 Regex!3133) (regTwo!6778 Regex!3133)) (EmptyExpr!3133) (Star!3133 (reg!3462 Regex!3133)) (EmptyLang!3133) (Union!3133 (regOne!6779 Regex!3133) (regTwo!6779 Regex!3133)) )
))
(declare-datatypes ((String!13233 0))(
  ( (String!13234 (value!61091 String)) )
))
(declare-datatypes ((Conc!3416 0))(
  ( (Node!3416 (left!9385 Conc!3416) (right!9715 Conc!3416) (csize!7062 Int) (cheight!3627 Int)) (Leaf!5358 (xs!6109 IArray!6837) (csize!7063 Int)) (Empty!3416) )
))
(declare-datatypes ((BalanceConc!6854 0))(
  ( (BalanceConc!6855 (c!187943 Conc!3416)) )
))
(declare-datatypes ((TokenValueInjection!3558 0))(
  ( (TokenValueInjection!3559 (toValue!2940 Int) (toChars!2799 Int)) )
))
(declare-datatypes ((Rule!3526 0))(
  ( (Rule!3527 (regex!1863 Regex!3133) (tag!2125 String!13233) (isSeparator!1863 Bool) (transformation!1863 TokenValueInjection!3558)) )
))
(declare-datatypes ((List!10828 0))(
  ( (Nil!10804) (Cons!10804 (h!16205 Rule!3526) (t!105388 List!10828)) )
))
(declare-fun rules!859 () List!10828)

(declare-fun e!701610 () Bool)

(declare-fun inv!13877 (String!13233) Bool)

(declare-fun inv!13878 (TokenValueInjection!3558) Bool)

(assert (=> b!1106755 (= e!701611 (and tp!327958 (inv!13877 (tag!2125 (h!16205 rules!859))) (inv!13878 (transformation!1863 (h!16205 rules!859))) e!701610))))

(declare-fun mapIsEmpty!6122 () Bool)

(declare-fun mapRes!6123 () Bool)

(assert (=> mapIsEmpty!6122 mapRes!6123))

(declare-fun b!1106756 () Bool)

(declare-fun e!701615 () Bool)

(declare-fun e!701614 () Bool)

(assert (=> b!1106756 (= e!701615 e!701614)))

(declare-fun b!1106757 () Bool)

(declare-fun e!701596 () Bool)

(declare-datatypes ((Token!3388 0))(
  ( (Token!3389 (value!61092 TokenValue!1929) (rule!3284 Rule!3526) (size!8393 Int) (originalCharacters!2417 List!10827)) )
))
(declare-datatypes ((List!10829 0))(
  ( (Nil!10805) (Cons!10805 (h!16206 Token!3388) (t!105389 List!10829)) )
))
(declare-datatypes ((IArray!6839 0))(
  ( (IArray!6840 (innerList!3477 List!10829)) )
))
(declare-datatypes ((Conc!3417 0))(
  ( (Node!3417 (left!9386 Conc!3417) (right!9716 Conc!3417) (csize!7064 Int) (cheight!3628 Int)) (Leaf!5359 (xs!6110 IArray!6839) (csize!7065 Int)) (Empty!3417) )
))
(declare-datatypes ((BalanceConc!6856 0))(
  ( (BalanceConc!6857 (c!187944 Conc!3417)) )
))
(declare-fun tokens!304 () BalanceConc!6856)

(declare-fun tp!327948 () Bool)

(declare-fun inv!13879 (Conc!3417) Bool)

(assert (=> b!1106757 (= e!701596 (and (inv!13879 (c!187944 tokens!304)) tp!327948))))

(declare-fun b!1106758 () Bool)

(declare-fun res!490311 () Bool)

(declare-fun e!701602 () Bool)

(assert (=> b!1106758 (=> (not res!490311) (not e!701602))))

(declare-datatypes ((LexerInterface!1575 0))(
  ( (LexerInterfaceExt!1572 (__x!7533 Int)) (Lexer!1573) )
))
(declare-fun rulesInvariant!1451 (LexerInterface!1575 List!10828) Bool)

(assert (=> b!1106758 (= res!490311 (rulesInvariant!1451 Lexer!1573 rules!859))))

(declare-fun tp!327954 () Bool)

(declare-fun e!701613 () Bool)

(declare-datatypes ((List!10830 0))(
  ( (Nil!10806) (Cons!10806 (h!16207 Regex!3133) (t!105390 List!10830)) )
))
(declare-datatypes ((Context!1038 0))(
  ( (Context!1039 (exprs!1019 List!10830)) )
))
(declare-datatypes ((tuple3!1080 0))(
  ( (tuple3!1081 (_1!6758 Regex!3133) (_2!6758 Context!1038) (_3!831 C!6656)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!11854 0))(
  ( (tuple2!11855 (_1!6759 tuple3!1080) (_2!6759 (InoxSet Context!1038))) )
))
(declare-datatypes ((List!10831 0))(
  ( (Nil!10807) (Cons!10807 (h!16208 tuple2!11854) (t!105391 List!10831)) )
))
(declare-datatypes ((array!4474 0))(
  ( (array!4475 (arr!1996 (Array (_ BitVec 32) (_ BitVec 64))) (size!8394 (_ BitVec 32))) )
))
(declare-datatypes ((array!4476 0))(
  ( (array!4477 (arr!1997 (Array (_ BitVec 32) List!10831)) (size!8395 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2534 0))(
  ( (LongMapFixedSize!2535 (defaultEntry!1627 Int) (mask!3752 (_ BitVec 32)) (extraKeys!1514 (_ BitVec 32)) (zeroValue!1524 List!10831) (minValue!1524 List!10831) (_size!2643 (_ BitVec 32)) (_keys!1561 array!4474) (_values!1546 array!4476) (_vacant!1328 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!5009 0))(
  ( (Cell!5010 (v!20024 LongMapFixedSize!2534)) )
))
(declare-datatypes ((MutLongMap!1267 0))(
  ( (LongMap!1267 (underlying!2727 Cell!5009)) (MutLongMapExt!1266 (__x!7534 Int)) )
))
(declare-datatypes ((Cell!5011 0))(
  ( (Cell!5012 (v!20025 MutLongMap!1267)) )
))
(declare-datatypes ((Hashable!1239 0))(
  ( (HashableExt!1238 (__x!7535 Int)) )
))
(declare-datatypes ((MutableMap!1239 0))(
  ( (MutableMapExt!1238 (__x!7536 Int)) (HashMap!1239 (underlying!2728 Cell!5011) (hashF!3158 Hashable!1239) (_size!2644 (_ BitVec 32)) (defaultValue!1399 Int)) )
))
(declare-datatypes ((CacheDown!712 0))(
  ( (CacheDown!713 (cache!1620 MutableMap!1239)) )
))
(declare-fun cacheDown!397 () CacheDown!712)

(declare-fun tp!327949 () Bool)

(declare-fun array_inv!1436 (array!4474) Bool)

(declare-fun array_inv!1437 (array!4476) Bool)

(assert (=> b!1106759 (= e!701614 (and tp!327946 tp!327949 tp!327954 (array_inv!1436 (_keys!1561 (v!20024 (underlying!2727 (v!20025 (underlying!2728 (cache!1620 cacheDown!397))))))) (array_inv!1437 (_values!1546 (v!20024 (underlying!2727 (v!20025 (underlying!2728 (cache!1620 cacheDown!397))))))) e!701613))))

(declare-fun b!1106760 () Bool)

(declare-fun e!701599 () Bool)

(assert (=> b!1106760 (= e!701599 e!701615)))

(declare-fun b!1106761 () Bool)

(declare-datatypes ((PrintableTokens!434 0))(
  ( (PrintableTokens!435 (rules!9148 List!10828) (tokens!1419 BalanceConc!6856)) )
))
(declare-datatypes ((Option!2463 0))(
  ( (None!2462) (Some!2462 (v!20026 PrintableTokens!434)) )
))
(declare-fun e!701597 () Option!2463)

(assert (=> b!1106761 (= e!701597 (Some!2462 (PrintableTokens!435 rules!859 tokens!304)))))

(declare-fun b!1106762 () Bool)

(declare-fun e!701603 () Bool)

(declare-fun lt!376014 () Option!2463)

(declare-fun isDefined!2105 (Option!2463) Bool)

(assert (=> b!1106762 (= e!701603 (not (isDefined!2105 lt!376014)))))

(declare-fun b!1106763 () Bool)

(assert (=> b!1106763 (= e!701602 e!701603)))

(declare-fun res!490307 () Bool)

(assert (=> b!1106763 (=> (not res!490307) (not e!701603))))

(declare-fun isEmpty!6729 (Option!2463) Bool)

(assert (=> b!1106763 (= res!490307 (not (isEmpty!6729 lt!376014)))))

(assert (=> b!1106763 (= lt!376014 e!701597)))

(declare-datatypes ((tuple2!11856 0))(
  ( (tuple2!11857 (_1!6760 Context!1038) (_2!6760 C!6656)) )
))
(declare-datatypes ((tuple2!11858 0))(
  ( (tuple2!11859 (_1!6761 tuple2!11856) (_2!6761 (InoxSet Context!1038))) )
))
(declare-datatypes ((List!10832 0))(
  ( (Nil!10808) (Cons!10808 (h!16209 tuple2!11858) (t!105392 List!10832)) )
))
(declare-datatypes ((Hashable!1240 0))(
  ( (HashableExt!1239 (__x!7537 Int)) )
))
(declare-datatypes ((array!4478 0))(
  ( (array!4479 (arr!1998 (Array (_ BitVec 32) List!10832)) (size!8396 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2536 0))(
  ( (LongMapFixedSize!2537 (defaultEntry!1628 Int) (mask!3753 (_ BitVec 32)) (extraKeys!1515 (_ BitVec 32)) (zeroValue!1525 List!10832) (minValue!1525 List!10832) (_size!2645 (_ BitVec 32)) (_keys!1562 array!4474) (_values!1547 array!4478) (_vacant!1329 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!5013 0))(
  ( (Cell!5014 (v!20027 LongMapFixedSize!2536)) )
))
(declare-datatypes ((MutLongMap!1268 0))(
  ( (LongMap!1268 (underlying!2729 Cell!5013)) (MutLongMapExt!1267 (__x!7538 Int)) )
))
(declare-datatypes ((Cell!5015 0))(
  ( (Cell!5016 (v!20028 MutLongMap!1268)) )
))
(declare-datatypes ((MutableMap!1240 0))(
  ( (MutableMapExt!1239 (__x!7539 Int)) (HashMap!1240 (underlying!2730 Cell!5015) (hashF!3159 Hashable!1240) (_size!2646 (_ BitVec 32)) (defaultValue!1400 Int)) )
))
(declare-datatypes ((CacheUp!708 0))(
  ( (CacheUp!709 (cache!1621 MutableMap!1240)) )
))
(declare-fun cacheUp!384 () CacheUp!708)

(declare-fun c!187941 () Bool)

(declare-datatypes ((tuple3!1082 0))(
  ( (tuple3!1083 (_1!6762 Bool) (_2!6762 CacheUp!708) (_3!832 CacheDown!712)) )
))
(declare-fun separableTokensMem!3 (LexerInterface!1575 BalanceConc!6856 List!10828 CacheUp!708 CacheDown!712) tuple3!1082)

(assert (=> b!1106763 (= c!187941 (_1!6762 (separableTokensMem!3 Lexer!1573 tokens!304 rules!859 cacheUp!384 cacheDown!397)))))

(declare-fun b!1106764 () Bool)

(declare-fun e!701605 () Bool)

(declare-fun tp!327955 () Bool)

(assert (=> b!1106764 (= e!701605 (and e!701611 tp!327955))))

(declare-fun mapIsEmpty!6123 () Bool)

(declare-fun mapRes!6122 () Bool)

(assert (=> mapIsEmpty!6123 mapRes!6122))

(declare-fun b!1106765 () Bool)

(declare-fun e!701607 () Bool)

(declare-fun e!701612 () Bool)

(assert (=> b!1106765 (= e!701607 e!701612)))

(declare-fun b!1106766 () Bool)

(assert (=> b!1106766 (= e!701597 None!2462)))

(declare-fun b!1106767 () Bool)

(declare-fun res!490309 () Bool)

(assert (=> b!1106767 (=> (not res!490309) (not e!701602))))

(declare-fun rulesProduceEachTokenIndividually!618 (LexerInterface!1575 List!10828 BalanceConc!6856) Bool)

(assert (=> b!1106767 (= res!490309 (rulesProduceEachTokenIndividually!618 Lexer!1573 rules!859 tokens!304))))

(declare-fun e!701604 () Bool)

(assert (=> b!1106768 (= e!701601 (and e!701604 tp!327945))))

(declare-fun mapNonEmpty!6122 () Bool)

(declare-fun tp!327947 () Bool)

(declare-fun tp!327953 () Bool)

(assert (=> mapNonEmpty!6122 (= mapRes!6123 (and tp!327947 tp!327953))))

(declare-fun mapValue!6123 () List!10831)

(declare-fun mapRest!6123 () (Array (_ BitVec 32) List!10831))

(declare-fun mapKey!6123 () (_ BitVec 32))

(assert (=> mapNonEmpty!6122 (= (arr!1997 (_values!1546 (v!20024 (underlying!2727 (v!20025 (underlying!2728 (cache!1620 cacheDown!397))))))) (store mapRest!6123 mapKey!6123 mapValue!6123))))

(declare-fun e!701608 () Bool)

(declare-fun e!701593 () Bool)

(assert (=> b!1106769 (= e!701608 (and e!701593 tp!327952))))

(declare-fun e!701592 () Bool)

(declare-fun e!701595 () Bool)

(declare-fun tp!327950 () Bool)

(declare-fun tp!327951 () Bool)

(declare-fun array_inv!1438 (array!4478) Bool)

(assert (=> b!1106770 (= e!701595 (and tp!327943 tp!327950 tp!327951 (array_inv!1436 (_keys!1562 (v!20027 (underlying!2729 (v!20028 (underlying!2730 (cache!1621 cacheUp!384))))))) (array_inv!1438 (_values!1547 (v!20027 (underlying!2729 (v!20028 (underlying!2730 (cache!1621 cacheUp!384))))))) e!701592))))

(declare-fun res!490310 () Bool)

(assert (=> start!95544 (=> (not res!490310) (not e!701602))))

(declare-fun isEmpty!6730 (List!10828) Bool)

(assert (=> start!95544 (= res!490310 (not (isEmpty!6730 rules!859)))))

(assert (=> start!95544 e!701602))

(assert (=> start!95544 e!701605))

(declare-fun inv!13880 (BalanceConc!6856) Bool)

(assert (=> start!95544 (and (inv!13880 tokens!304) e!701596)))

(declare-fun inv!13881 (CacheUp!708) Bool)

(assert (=> start!95544 (and (inv!13881 cacheUp!384) e!701600)))

(declare-fun e!701606 () Bool)

(declare-fun inv!13882 (CacheDown!712) Bool)

(assert (=> start!95544 (and (inv!13882 cacheDown!397) e!701606)))

(declare-fun mapNonEmpty!6123 () Bool)

(declare-fun tp!327959 () Bool)

(declare-fun tp!327960 () Bool)

(assert (=> mapNonEmpty!6123 (= mapRes!6122 (and tp!327959 tp!327960))))

(declare-fun mapValue!6122 () List!10832)

(declare-fun mapKey!6122 () (_ BitVec 32))

(declare-fun mapRest!6122 () (Array (_ BitVec 32) List!10832))

(assert (=> mapNonEmpty!6123 (= (arr!1998 (_values!1547 (v!20027 (underlying!2729 (v!20028 (underlying!2730 (cache!1621 cacheUp!384))))))) (store mapRest!6122 mapKey!6122 mapValue!6122))))

(declare-fun b!1106771 () Bool)

(declare-fun tp!327944 () Bool)

(assert (=> b!1106771 (= e!701613 (and tp!327944 mapRes!6123))))

(declare-fun condMapEmpty!6123 () Bool)

(declare-fun mapDefault!6122 () List!10831)

(assert (=> b!1106771 (= condMapEmpty!6123 (= (arr!1997 (_values!1546 (v!20024 (underlying!2727 (v!20025 (underlying!2728 (cache!1620 cacheDown!397))))))) ((as const (Array (_ BitVec 32) List!10831)) mapDefault!6122)))))

(declare-fun b!1106772 () Bool)

(assert (=> b!1106772 (= e!701612 e!701595)))

(assert (=> b!1106773 (= e!701610 (and tp!327942 tp!327956))))

(declare-fun b!1106774 () Bool)

(declare-fun tp!327957 () Bool)

(assert (=> b!1106774 (= e!701592 (and tp!327957 mapRes!6122))))

(declare-fun condMapEmpty!6122 () Bool)

(declare-fun mapDefault!6123 () List!10832)

(assert (=> b!1106774 (= condMapEmpty!6122 (= (arr!1998 (_values!1547 (v!20027 (underlying!2729 (v!20028 (underlying!2730 (cache!1621 cacheUp!384))))))) ((as const (Array (_ BitVec 32) List!10832)) mapDefault!6123)))))

(declare-fun b!1106775 () Bool)

(assert (=> b!1106775 (= e!701606 e!701608)))

(declare-fun b!1106776 () Bool)

(declare-fun lt!376013 () MutLongMap!1267)

(get-info :version)

(assert (=> b!1106776 (= e!701593 (and e!701599 ((_ is LongMap!1267) lt!376013)))))

(assert (=> b!1106776 (= lt!376013 (v!20025 (underlying!2728 (cache!1620 cacheDown!397))))))

(declare-fun b!1106777 () Bool)

(declare-fun lt!376012 () MutLongMap!1268)

(assert (=> b!1106777 (= e!701604 (and e!701607 ((_ is LongMap!1268) lt!376012)))))

(assert (=> b!1106777 (= lt!376012 (v!20028 (underlying!2730 (cache!1621 cacheUp!384))))))

(declare-fun b!1106778 () Bool)

(declare-fun res!490308 () Bool)

(assert (=> b!1106778 (=> (not res!490308) (not e!701603))))

(declare-fun get!3779 (Option!2463) PrintableTokens!434)

(assert (=> b!1106778 (= res!490308 (= (rules!9148 (get!3779 lt!376014)) rules!859))))

(assert (= (and start!95544 res!490310) b!1106758))

(assert (= (and b!1106758 res!490311) b!1106767))

(assert (= (and b!1106767 res!490309) b!1106763))

(assert (= (and b!1106763 c!187941) b!1106761))

(assert (= (and b!1106763 (not c!187941)) b!1106766))

(assert (= (and b!1106763 res!490307) b!1106778))

(assert (= (and b!1106778 res!490308) b!1106762))

(assert (= b!1106755 b!1106773))

(assert (= b!1106764 b!1106755))

(assert (= (and start!95544 ((_ is Cons!10804) rules!859)) b!1106764))

(assert (= start!95544 b!1106757))

(assert (= (and b!1106774 condMapEmpty!6122) mapIsEmpty!6123))

(assert (= (and b!1106774 (not condMapEmpty!6122)) mapNonEmpty!6123))

(assert (= b!1106770 b!1106774))

(assert (= b!1106772 b!1106770))

(assert (= b!1106765 b!1106772))

(assert (= (and b!1106777 ((_ is LongMap!1268) (v!20028 (underlying!2730 (cache!1621 cacheUp!384))))) b!1106765))

(assert (= b!1106768 b!1106777))

(assert (= (and b!1106754 ((_ is HashMap!1240) (cache!1621 cacheUp!384))) b!1106768))

(assert (= start!95544 b!1106754))

(assert (= (and b!1106771 condMapEmpty!6123) mapIsEmpty!6122))

(assert (= (and b!1106771 (not condMapEmpty!6123)) mapNonEmpty!6122))

(assert (= b!1106759 b!1106771))

(assert (= b!1106756 b!1106759))

(assert (= b!1106760 b!1106756))

(assert (= (and b!1106776 ((_ is LongMap!1267) (v!20025 (underlying!2728 (cache!1620 cacheDown!397))))) b!1106760))

(assert (= b!1106769 b!1106776))

(assert (= (and b!1106775 ((_ is HashMap!1239) (cache!1620 cacheDown!397))) b!1106769))

(assert (= start!95544 b!1106775))

(declare-fun m!1264237 () Bool)

(assert (=> mapNonEmpty!6123 m!1264237))

(declare-fun m!1264239 () Bool)

(assert (=> b!1106758 m!1264239))

(declare-fun m!1264241 () Bool)

(assert (=> start!95544 m!1264241))

(declare-fun m!1264243 () Bool)

(assert (=> start!95544 m!1264243))

(declare-fun m!1264245 () Bool)

(assert (=> start!95544 m!1264245))

(declare-fun m!1264247 () Bool)

(assert (=> start!95544 m!1264247))

(declare-fun m!1264249 () Bool)

(assert (=> b!1106763 m!1264249))

(declare-fun m!1264251 () Bool)

(assert (=> b!1106763 m!1264251))

(declare-fun m!1264253 () Bool)

(assert (=> mapNonEmpty!6122 m!1264253))

(declare-fun m!1264255 () Bool)

(assert (=> b!1106759 m!1264255))

(declare-fun m!1264257 () Bool)

(assert (=> b!1106759 m!1264257))

(declare-fun m!1264259 () Bool)

(assert (=> b!1106778 m!1264259))

(declare-fun m!1264261 () Bool)

(assert (=> b!1106755 m!1264261))

(declare-fun m!1264263 () Bool)

(assert (=> b!1106755 m!1264263))

(declare-fun m!1264265 () Bool)

(assert (=> b!1106762 m!1264265))

(declare-fun m!1264267 () Bool)

(assert (=> b!1106767 m!1264267))

(declare-fun m!1264269 () Bool)

(assert (=> b!1106770 m!1264269))

(declare-fun m!1264271 () Bool)

(assert (=> b!1106770 m!1264271))

(declare-fun m!1264273 () Bool)

(assert (=> b!1106757 m!1264273))

(check-sat (not b!1106774) (not b_next!26869) (not mapNonEmpty!6122) (not b_next!26873) b_and!79135 (not b!1106771) (not b_next!26871) (not start!95544) b_and!79131 (not b!1106755) (not b_next!26875) (not b!1106762) (not b!1106778) (not b_next!26877) (not b!1106758) b_and!79129 (not b!1106763) (not b!1106767) (not mapNonEmpty!6123) b_and!79127 (not b_next!26879) b_and!79125 b_and!79133 (not b!1106757) (not b!1106770) (not b!1106764) (not b!1106759))
(check-sat (not b_next!26869) (not b_next!26877) (not b_next!26873) b_and!79129 b_and!79127 b_and!79135 (not b_next!26871) b_and!79131 (not b_next!26875) (not b_next!26879) b_and!79125 b_and!79133)
(get-model)

(declare-fun d!313376 () Bool)

(declare-fun c!187947 () Bool)

(assert (=> d!313376 (= c!187947 ((_ is Node!3417) (c!187944 tokens!304)))))

(declare-fun e!701620 () Bool)

(assert (=> d!313376 (= (inv!13879 (c!187944 tokens!304)) e!701620)))

(declare-fun b!1106785 () Bool)

(declare-fun inv!13883 (Conc!3417) Bool)

(assert (=> b!1106785 (= e!701620 (inv!13883 (c!187944 tokens!304)))))

(declare-fun b!1106786 () Bool)

(declare-fun e!701621 () Bool)

(assert (=> b!1106786 (= e!701620 e!701621)))

(declare-fun res!490314 () Bool)

(assert (=> b!1106786 (= res!490314 (not ((_ is Leaf!5359) (c!187944 tokens!304))))))

(assert (=> b!1106786 (=> res!490314 e!701621)))

(declare-fun b!1106787 () Bool)

(declare-fun inv!13884 (Conc!3417) Bool)

(assert (=> b!1106787 (= e!701621 (inv!13884 (c!187944 tokens!304)))))

(assert (= (and d!313376 c!187947) b!1106785))

(assert (= (and d!313376 (not c!187947)) b!1106786))

(assert (= (and b!1106786 (not res!490314)) b!1106787))

(declare-fun m!1264275 () Bool)

(assert (=> b!1106785 m!1264275))

(declare-fun m!1264277 () Bool)

(assert (=> b!1106787 m!1264277))

(assert (=> b!1106757 d!313376))

(declare-fun b!1106801 () Bool)

(declare-fun e!701633 () Bool)

(assert (=> b!1106801 (= e!701633 true)))

(declare-fun b!1106800 () Bool)

(declare-fun e!701632 () Bool)

(assert (=> b!1106800 (= e!701632 e!701633)))

(declare-fun b!1106799 () Bool)

(declare-fun e!701631 () Bool)

(assert (=> b!1106799 (= e!701631 e!701632)))

(declare-fun d!313378 () Bool)

(assert (=> d!313378 e!701631))

(assert (= b!1106800 b!1106801))

(assert (= b!1106799 b!1106800))

(assert (= (and d!313378 ((_ is Cons!10804) rules!859)) b!1106799))

(declare-fun lambda!44728 () Int)

(declare-fun order!6605 () Int)

(declare-fun order!6603 () Int)

(declare-fun dynLambda!4752 (Int Int) Int)

(declare-fun dynLambda!4753 (Int Int) Int)

(assert (=> b!1106801 (< (dynLambda!4752 order!6603 (toValue!2940 (transformation!1863 (h!16205 rules!859)))) (dynLambda!4753 order!6605 lambda!44728))))

(declare-fun order!6607 () Int)

(declare-fun dynLambda!4754 (Int Int) Int)

(assert (=> b!1106801 (< (dynLambda!4754 order!6607 (toChars!2799 (transformation!1863 (h!16205 rules!859)))) (dynLambda!4753 order!6605 lambda!44728))))

(assert (=> d!313378 true))

(declare-fun e!701624 () Bool)

(assert (=> d!313378 e!701624))

(declare-fun res!490317 () Bool)

(assert (=> d!313378 (=> (not res!490317) (not e!701624))))

(declare-fun lt!376017 () Bool)

(declare-fun forall!2539 (List!10829 Int) Bool)

(declare-fun list!3892 (BalanceConc!6856) List!10829)

(assert (=> d!313378 (= res!490317 (= lt!376017 (forall!2539 (list!3892 tokens!304) lambda!44728)))))

(declare-fun forall!2540 (BalanceConc!6856 Int) Bool)

(assert (=> d!313378 (= lt!376017 (forall!2540 tokens!304 lambda!44728))))

(assert (=> d!313378 (not (isEmpty!6730 rules!859))))

(assert (=> d!313378 (= (rulesProduceEachTokenIndividually!618 Lexer!1573 rules!859 tokens!304) lt!376017)))

(declare-fun b!1106790 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!458 (LexerInterface!1575 List!10828 List!10829) Bool)

(assert (=> b!1106790 (= e!701624 (= lt!376017 (rulesProduceEachTokenIndividuallyList!458 Lexer!1573 rules!859 (list!3892 tokens!304))))))

(assert (= (and d!313378 res!490317) b!1106790))

(declare-fun m!1264279 () Bool)

(assert (=> d!313378 m!1264279))

(assert (=> d!313378 m!1264279))

(declare-fun m!1264281 () Bool)

(assert (=> d!313378 m!1264281))

(declare-fun m!1264283 () Bool)

(assert (=> d!313378 m!1264283))

(assert (=> d!313378 m!1264241))

(assert (=> b!1106790 m!1264279))

(assert (=> b!1106790 m!1264279))

(declare-fun m!1264285 () Bool)

(assert (=> b!1106790 m!1264285))

(assert (=> b!1106767 d!313378))

(declare-fun d!313380 () Bool)

(assert (=> d!313380 (= (isEmpty!6729 lt!376014) (not ((_ is Some!2462) lt!376014)))))

(assert (=> b!1106763 d!313380))

(declare-fun d!313382 () Bool)

(declare-fun lt!376022 () tuple3!1082)

(declare-fun separableTokens!54 (LexerInterface!1575 BalanceConc!6856 List!10828) Bool)

(assert (=> d!313382 (= (_1!6762 lt!376022) (separableTokens!54 Lexer!1573 tokens!304 rules!859))))

(declare-fun lt!376023 () tuple3!1082)

(assert (=> d!313382 (= lt!376022 (tuple3!1083 (_1!6762 lt!376023) (_2!6762 lt!376023) (_3!832 lt!376023)))))

(declare-fun tokensListTwoByTwoPredicateSeparableMem!2 (LexerInterface!1575 BalanceConc!6856 Int List!10828 CacheUp!708 CacheDown!712) tuple3!1082)

(assert (=> d!313382 (= lt!376023 (tokensListTwoByTwoPredicateSeparableMem!2 Lexer!1573 tokens!304 0 rules!859 cacheUp!384 cacheDown!397))))

(assert (=> d!313382 (not (isEmpty!6730 rules!859))))

(assert (=> d!313382 (= (separableTokensMem!3 Lexer!1573 tokens!304 rules!859 cacheUp!384 cacheDown!397) lt!376022)))

(declare-fun bs!260056 () Bool)

(assert (= bs!260056 d!313382))

(declare-fun m!1264287 () Bool)

(assert (=> bs!260056 m!1264287))

(declare-fun m!1264289 () Bool)

(assert (=> bs!260056 m!1264289))

(assert (=> bs!260056 m!1264241))

(assert (=> b!1106763 d!313382))

(declare-fun d!313384 () Bool)

(assert (=> d!313384 (= (isEmpty!6730 rules!859) ((_ is Nil!10804) rules!859))))

(assert (=> start!95544 d!313384))

(declare-fun d!313386 () Bool)

(declare-fun isBalanced!937 (Conc!3417) Bool)

(assert (=> d!313386 (= (inv!13880 tokens!304) (isBalanced!937 (c!187944 tokens!304)))))

(declare-fun bs!260057 () Bool)

(assert (= bs!260057 d!313386))

(declare-fun m!1264291 () Bool)

(assert (=> bs!260057 m!1264291))

(assert (=> start!95544 d!313386))

(declare-fun d!313388 () Bool)

(declare-fun res!490320 () Bool)

(declare-fun e!701636 () Bool)

(assert (=> d!313388 (=> (not res!490320) (not e!701636))))

(assert (=> d!313388 (= res!490320 ((_ is HashMap!1240) (cache!1621 cacheUp!384)))))

(assert (=> d!313388 (= (inv!13881 cacheUp!384) e!701636)))

(declare-fun b!1106806 () Bool)

(declare-fun validCacheMapUp!114 (MutableMap!1240) Bool)

(assert (=> b!1106806 (= e!701636 (validCacheMapUp!114 (cache!1621 cacheUp!384)))))

(assert (= (and d!313388 res!490320) b!1106806))

(declare-fun m!1264293 () Bool)

(assert (=> b!1106806 m!1264293))

(assert (=> start!95544 d!313388))

(declare-fun d!313390 () Bool)

(declare-fun res!490323 () Bool)

(declare-fun e!701639 () Bool)

(assert (=> d!313390 (=> (not res!490323) (not e!701639))))

(assert (=> d!313390 (= res!490323 ((_ is HashMap!1239) (cache!1620 cacheDown!397)))))

(assert (=> d!313390 (= (inv!13882 cacheDown!397) e!701639)))

(declare-fun b!1106809 () Bool)

(declare-fun validCacheMapDown!114 (MutableMap!1239) Bool)

(assert (=> b!1106809 (= e!701639 (validCacheMapDown!114 (cache!1620 cacheDown!397)))))

(assert (= (and d!313390 res!490323) b!1106809))

(declare-fun m!1264295 () Bool)

(assert (=> b!1106809 m!1264295))

(assert (=> start!95544 d!313390))

(declare-fun d!313392 () Bool)

(declare-fun res!490326 () Bool)

(declare-fun e!701642 () Bool)

(assert (=> d!313392 (=> (not res!490326) (not e!701642))))

(declare-fun rulesValid!637 (LexerInterface!1575 List!10828) Bool)

(assert (=> d!313392 (= res!490326 (rulesValid!637 Lexer!1573 rules!859))))

(assert (=> d!313392 (= (rulesInvariant!1451 Lexer!1573 rules!859) e!701642)))

(declare-fun b!1106812 () Bool)

(declare-datatypes ((List!10833 0))(
  ( (Nil!10809) (Cons!10809 (h!16210 String!13233) (t!105397 List!10833)) )
))
(declare-fun noDuplicateTag!637 (LexerInterface!1575 List!10828 List!10833) Bool)

(assert (=> b!1106812 (= e!701642 (noDuplicateTag!637 Lexer!1573 rules!859 Nil!10809))))

(assert (= (and d!313392 res!490326) b!1106812))

(declare-fun m!1264297 () Bool)

(assert (=> d!313392 m!1264297))

(declare-fun m!1264299 () Bool)

(assert (=> b!1106812 m!1264299))

(assert (=> b!1106758 d!313392))

(declare-fun d!313394 () Bool)

(assert (=> d!313394 (= (array_inv!1436 (_keys!1561 (v!20024 (underlying!2727 (v!20025 (underlying!2728 (cache!1620 cacheDown!397))))))) (bvsge (size!8394 (_keys!1561 (v!20024 (underlying!2727 (v!20025 (underlying!2728 (cache!1620 cacheDown!397))))))) #b00000000000000000000000000000000))))

(assert (=> b!1106759 d!313394))

(declare-fun d!313396 () Bool)

(assert (=> d!313396 (= (array_inv!1437 (_values!1546 (v!20024 (underlying!2727 (v!20025 (underlying!2728 (cache!1620 cacheDown!397))))))) (bvsge (size!8395 (_values!1546 (v!20024 (underlying!2727 (v!20025 (underlying!2728 (cache!1620 cacheDown!397))))))) #b00000000000000000000000000000000))))

(assert (=> b!1106759 d!313396))

(declare-fun d!313398 () Bool)

(assert (=> d!313398 (= (inv!13877 (tag!2125 (h!16205 rules!859))) (= (mod (str.len (value!61091 (tag!2125 (h!16205 rules!859)))) 2) 0))))

(assert (=> b!1106755 d!313398))

(declare-fun d!313400 () Bool)

(declare-fun res!490329 () Bool)

(declare-fun e!701645 () Bool)

(assert (=> d!313400 (=> (not res!490329) (not e!701645))))

(declare-fun semiInverseModEq!706 (Int Int) Bool)

(assert (=> d!313400 (= res!490329 (semiInverseModEq!706 (toChars!2799 (transformation!1863 (h!16205 rules!859))) (toValue!2940 (transformation!1863 (h!16205 rules!859)))))))

(assert (=> d!313400 (= (inv!13878 (transformation!1863 (h!16205 rules!859))) e!701645)))

(declare-fun b!1106815 () Bool)

(declare-fun equivClasses!673 (Int Int) Bool)

(assert (=> b!1106815 (= e!701645 (equivClasses!673 (toChars!2799 (transformation!1863 (h!16205 rules!859))) (toValue!2940 (transformation!1863 (h!16205 rules!859)))))))

(assert (= (and d!313400 res!490329) b!1106815))

(declare-fun m!1264301 () Bool)

(assert (=> d!313400 m!1264301))

(declare-fun m!1264303 () Bool)

(assert (=> b!1106815 m!1264303))

(assert (=> b!1106755 d!313400))

(declare-fun d!313402 () Bool)

(assert (=> d!313402 (= (get!3779 lt!376014) (v!20026 lt!376014))))

(assert (=> b!1106778 d!313402))

(declare-fun d!313404 () Bool)

(assert (=> d!313404 (= (array_inv!1436 (_keys!1562 (v!20027 (underlying!2729 (v!20028 (underlying!2730 (cache!1621 cacheUp!384))))))) (bvsge (size!8394 (_keys!1562 (v!20027 (underlying!2729 (v!20028 (underlying!2730 (cache!1621 cacheUp!384))))))) #b00000000000000000000000000000000))))

(assert (=> b!1106770 d!313404))

(declare-fun d!313406 () Bool)

(assert (=> d!313406 (= (array_inv!1438 (_values!1547 (v!20027 (underlying!2729 (v!20028 (underlying!2730 (cache!1621 cacheUp!384))))))) (bvsge (size!8396 (_values!1547 (v!20027 (underlying!2729 (v!20028 (underlying!2730 (cache!1621 cacheUp!384))))))) #b00000000000000000000000000000000))))

(assert (=> b!1106770 d!313406))

(declare-fun d!313408 () Bool)

(assert (=> d!313408 (= (isDefined!2105 lt!376014) (not (isEmpty!6729 lt!376014)))))

(declare-fun bs!260058 () Bool)

(assert (= bs!260058 d!313408))

(assert (=> bs!260058 m!1264249))

(assert (=> b!1106762 d!313408))

(declare-fun b!1106831 () Bool)

(declare-fun e!701662 () Bool)

(declare-fun tp!327980 () Bool)

(assert (=> b!1106831 (= e!701662 tp!327980)))

(declare-fun setRes!7743 () Bool)

(declare-fun e!701661 () Bool)

(declare-fun tp!327979 () Bool)

(declare-fun e!701658 () Bool)

(declare-fun mapValue!6126 () List!10832)

(declare-fun b!1106832 () Bool)

(declare-fun tp_is_empty!5713 () Bool)

(declare-fun inv!13885 (Context!1038) Bool)

(assert (=> b!1106832 (= e!701661 (and (inv!13885 (_1!6760 (_1!6761 (h!16209 mapValue!6126)))) e!701658 tp_is_empty!5713 setRes!7743 tp!327979))))

(declare-fun condSetEmpty!7744 () Bool)

(assert (=> b!1106832 (= condSetEmpty!7744 (= (_2!6761 (h!16209 mapValue!6126)) ((as const (Array Context!1038 Bool)) false)))))

(declare-fun setIsEmpty!7743 () Bool)

(declare-fun setRes!7744 () Bool)

(assert (=> setIsEmpty!7743 setRes!7744))

(declare-fun mapDefault!6126 () List!10832)

(declare-fun tp!327983 () Bool)

(declare-fun b!1106833 () Bool)

(declare-fun e!701663 () Bool)

(assert (=> b!1106833 (= e!701663 (and (inv!13885 (_1!6760 (_1!6761 (h!16209 mapDefault!6126)))) e!701662 tp_is_empty!5713 setRes!7744 tp!327983))))

(declare-fun condSetEmpty!7743 () Bool)

(assert (=> b!1106833 (= condSetEmpty!7743 (= (_2!6761 (h!16209 mapDefault!6126)) ((as const (Array Context!1038 Bool)) false)))))

(declare-fun b!1106834 () Bool)

(declare-fun tp!327985 () Bool)

(assert (=> b!1106834 (= e!701658 tp!327985)))

(declare-fun mapNonEmpty!6126 () Bool)

(declare-fun mapRes!6126 () Bool)

(declare-fun tp!327982 () Bool)

(assert (=> mapNonEmpty!6126 (= mapRes!6126 (and tp!327982 e!701661))))

(declare-fun mapRest!6126 () (Array (_ BitVec 32) List!10832))

(declare-fun mapKey!6126 () (_ BitVec 32))

(assert (=> mapNonEmpty!6126 (= mapRest!6122 (store mapRest!6126 mapKey!6126 mapValue!6126))))

(declare-fun e!701659 () Bool)

(declare-fun setNonEmpty!7743 () Bool)

(declare-fun setElem!7744 () Context!1038)

(declare-fun tp!327981 () Bool)

(assert (=> setNonEmpty!7743 (= setRes!7743 (and tp!327981 (inv!13885 setElem!7744) e!701659))))

(declare-fun setRest!7744 () (InoxSet Context!1038))

(assert (=> setNonEmpty!7743 (= (_2!6761 (h!16209 mapValue!6126)) ((_ map or) (store ((as const (Array Context!1038 Bool)) false) setElem!7744 true) setRest!7744))))

(declare-fun mapIsEmpty!6126 () Bool)

(assert (=> mapIsEmpty!6126 mapRes!6126))

(declare-fun setIsEmpty!7744 () Bool)

(assert (=> setIsEmpty!7744 setRes!7743))

(declare-fun condMapEmpty!6126 () Bool)

(assert (=> mapNonEmpty!6123 (= condMapEmpty!6126 (= mapRest!6122 ((as const (Array (_ BitVec 32) List!10832)) mapDefault!6126)))))

(assert (=> mapNonEmpty!6123 (= tp!327959 (and e!701663 mapRes!6126))))

(declare-fun b!1106830 () Bool)

(declare-fun tp!327987 () Bool)

(assert (=> b!1106830 (= e!701659 tp!327987)))

(declare-fun b!1106835 () Bool)

(declare-fun e!701660 () Bool)

(declare-fun tp!327984 () Bool)

(assert (=> b!1106835 (= e!701660 tp!327984)))

(declare-fun setElem!7743 () Context!1038)

(declare-fun setNonEmpty!7744 () Bool)

(declare-fun tp!327986 () Bool)

(assert (=> setNonEmpty!7744 (= setRes!7744 (and tp!327986 (inv!13885 setElem!7743) e!701660))))

(declare-fun setRest!7743 () (InoxSet Context!1038))

(assert (=> setNonEmpty!7744 (= (_2!6761 (h!16209 mapDefault!6126)) ((_ map or) (store ((as const (Array Context!1038 Bool)) false) setElem!7743 true) setRest!7743))))

(assert (= (and mapNonEmpty!6123 condMapEmpty!6126) mapIsEmpty!6126))

(assert (= (and mapNonEmpty!6123 (not condMapEmpty!6126)) mapNonEmpty!6126))

(assert (= b!1106832 b!1106834))

(assert (= (and b!1106832 condSetEmpty!7744) setIsEmpty!7744))

(assert (= (and b!1106832 (not condSetEmpty!7744)) setNonEmpty!7743))

(assert (= setNonEmpty!7743 b!1106830))

(assert (= (and mapNonEmpty!6126 ((_ is Cons!10808) mapValue!6126)) b!1106832))

(assert (= b!1106833 b!1106831))

(assert (= (and b!1106833 condSetEmpty!7743) setIsEmpty!7743))

(assert (= (and b!1106833 (not condSetEmpty!7743)) setNonEmpty!7744))

(assert (= setNonEmpty!7744 b!1106835))

(assert (= (and mapNonEmpty!6123 ((_ is Cons!10808) mapDefault!6126)) b!1106833))

(declare-fun m!1264305 () Bool)

(assert (=> setNonEmpty!7744 m!1264305))

(declare-fun m!1264307 () Bool)

(assert (=> mapNonEmpty!6126 m!1264307))

(declare-fun m!1264309 () Bool)

(assert (=> setNonEmpty!7743 m!1264309))

(declare-fun m!1264311 () Bool)

(assert (=> b!1106832 m!1264311))

(declare-fun m!1264313 () Bool)

(assert (=> b!1106833 m!1264313))

(declare-fun e!701671 () Bool)

(declare-fun tp!327999 () Bool)

(declare-fun setRes!7747 () Bool)

(declare-fun e!701672 () Bool)

(declare-fun b!1106844 () Bool)

(assert (=> b!1106844 (= e!701671 (and (inv!13885 (_1!6760 (_1!6761 (h!16209 mapValue!6122)))) e!701672 tp_is_empty!5713 setRes!7747 tp!327999))))

(declare-fun condSetEmpty!7747 () Bool)

(assert (=> b!1106844 (= condSetEmpty!7747 (= (_2!6761 (h!16209 mapValue!6122)) ((as const (Array Context!1038 Bool)) false)))))

(declare-fun b!1106845 () Bool)

(declare-fun tp!327997 () Bool)

(assert (=> b!1106845 (= e!701672 tp!327997)))

(declare-fun b!1106846 () Bool)

(declare-fun e!701670 () Bool)

(declare-fun tp!327998 () Bool)

(assert (=> b!1106846 (= e!701670 tp!327998)))

(declare-fun setNonEmpty!7747 () Bool)

(declare-fun setElem!7747 () Context!1038)

(declare-fun tp!327996 () Bool)

(assert (=> setNonEmpty!7747 (= setRes!7747 (and tp!327996 (inv!13885 setElem!7747) e!701670))))

(declare-fun setRest!7747 () (InoxSet Context!1038))

(assert (=> setNonEmpty!7747 (= (_2!6761 (h!16209 mapValue!6122)) ((_ map or) (store ((as const (Array Context!1038 Bool)) false) setElem!7747 true) setRest!7747))))

(declare-fun setIsEmpty!7747 () Bool)

(assert (=> setIsEmpty!7747 setRes!7747))

(assert (=> mapNonEmpty!6123 (= tp!327960 e!701671)))

(assert (= b!1106844 b!1106845))

(assert (= (and b!1106844 condSetEmpty!7747) setIsEmpty!7747))

(assert (= (and b!1106844 (not condSetEmpty!7747)) setNonEmpty!7747))

(assert (= setNonEmpty!7747 b!1106846))

(assert (= (and mapNonEmpty!6123 ((_ is Cons!10808) mapValue!6122)) b!1106844))

(declare-fun m!1264315 () Bool)

(assert (=> b!1106844 m!1264315))

(declare-fun m!1264317 () Bool)

(assert (=> setNonEmpty!7747 m!1264317))

(declare-fun e!701677 () Bool)

(declare-fun b!1106855 () Bool)

(declare-fun tp!328008 () Bool)

(declare-fun tp!328006 () Bool)

(assert (=> b!1106855 (= e!701677 (and (inv!13879 (left!9386 (c!187944 tokens!304))) tp!328006 (inv!13879 (right!9716 (c!187944 tokens!304))) tp!328008))))

(declare-fun b!1106857 () Bool)

(declare-fun e!701678 () Bool)

(declare-fun tp!328007 () Bool)

(assert (=> b!1106857 (= e!701678 tp!328007)))

(declare-fun b!1106856 () Bool)

(declare-fun inv!13886 (IArray!6839) Bool)

(assert (=> b!1106856 (= e!701677 (and (inv!13886 (xs!6110 (c!187944 tokens!304))) e!701678))))

(assert (=> b!1106757 (= tp!327948 (and (inv!13879 (c!187944 tokens!304)) e!701677))))

(assert (= (and b!1106757 ((_ is Node!3417) (c!187944 tokens!304))) b!1106855))

(assert (= b!1106856 b!1106857))

(assert (= (and b!1106757 ((_ is Leaf!5359) (c!187944 tokens!304))) b!1106856))

(declare-fun m!1264319 () Bool)

(assert (=> b!1106855 m!1264319))

(declare-fun m!1264321 () Bool)

(assert (=> b!1106855 m!1264321))

(declare-fun m!1264323 () Bool)

(assert (=> b!1106856 m!1264323))

(assert (=> b!1106757 m!1264273))

(declare-fun e!701686 () Bool)

(assert (=> b!1106771 (= tp!327944 e!701686)))

(declare-fun setIsEmpty!7750 () Bool)

(declare-fun setRes!7750 () Bool)

(assert (=> setIsEmpty!7750 setRes!7750))

(declare-fun b!1106866 () Bool)

(declare-fun e!701687 () Bool)

(declare-fun tp!328021 () Bool)

(assert (=> b!1106866 (= e!701687 tp!328021)))

(declare-fun e!701685 () Bool)

(declare-fun b!1106867 () Bool)

(declare-fun tp!328019 () Bool)

(declare-fun tp!328020 () Bool)

(assert (=> b!1106867 (= e!701686 (and tp!328020 (inv!13885 (_2!6758 (_1!6759 (h!16208 mapDefault!6122)))) e!701685 tp_is_empty!5713 setRes!7750 tp!328019))))

(declare-fun condSetEmpty!7750 () Bool)

(assert (=> b!1106867 (= condSetEmpty!7750 (= (_2!6759 (h!16208 mapDefault!6122)) ((as const (Array Context!1038 Bool)) false)))))

(declare-fun b!1106868 () Bool)

(declare-fun tp!328023 () Bool)

(assert (=> b!1106868 (= e!701685 tp!328023)))

(declare-fun setElem!7750 () Context!1038)

(declare-fun tp!328022 () Bool)

(declare-fun setNonEmpty!7750 () Bool)

(assert (=> setNonEmpty!7750 (= setRes!7750 (and tp!328022 (inv!13885 setElem!7750) e!701687))))

(declare-fun setRest!7750 () (InoxSet Context!1038))

(assert (=> setNonEmpty!7750 (= (_2!6759 (h!16208 mapDefault!6122)) ((_ map or) (store ((as const (Array Context!1038 Bool)) false) setElem!7750 true) setRest!7750))))

(assert (= b!1106867 b!1106868))

(assert (= (and b!1106867 condSetEmpty!7750) setIsEmpty!7750))

(assert (= (and b!1106867 (not condSetEmpty!7750)) setNonEmpty!7750))

(assert (= setNonEmpty!7750 b!1106866))

(assert (= (and b!1106771 ((_ is Cons!10807) mapDefault!6122)) b!1106867))

(declare-fun m!1264325 () Bool)

(assert (=> b!1106867 m!1264325))

(declare-fun m!1264327 () Bool)

(assert (=> setNonEmpty!7750 m!1264327))

(declare-fun b!1106879 () Bool)

(declare-fun b_free!26817 () Bool)

(declare-fun b_next!26881 () Bool)

(assert (=> b!1106879 (= b_free!26817 (not b_next!26881))))

(declare-fun tp!328035 () Bool)

(declare-fun b_and!79137 () Bool)

(assert (=> b!1106879 (= tp!328035 b_and!79137)))

(declare-fun b_free!26819 () Bool)

(declare-fun b_next!26883 () Bool)

(assert (=> b!1106879 (= b_free!26819 (not b_next!26883))))

(declare-fun tp!328032 () Bool)

(declare-fun b_and!79139 () Bool)

(assert (=> b!1106879 (= tp!328032 b_and!79139)))

(declare-fun e!701696 () Bool)

(assert (=> b!1106879 (= e!701696 (and tp!328035 tp!328032))))

(declare-fun e!701699 () Bool)

(declare-fun tp!328033 () Bool)

(declare-fun b!1106878 () Bool)

(assert (=> b!1106878 (= e!701699 (and tp!328033 (inv!13877 (tag!2125 (h!16205 (t!105388 rules!859)))) (inv!13878 (transformation!1863 (h!16205 (t!105388 rules!859)))) e!701696))))

(declare-fun b!1106877 () Bool)

(declare-fun e!701698 () Bool)

(declare-fun tp!328034 () Bool)

(assert (=> b!1106877 (= e!701698 (and e!701699 tp!328034))))

(assert (=> b!1106764 (= tp!327955 e!701698)))

(assert (= b!1106878 b!1106879))

(assert (= b!1106877 b!1106878))

(assert (= (and b!1106764 ((_ is Cons!10804) (t!105388 rules!859))) b!1106877))

(declare-fun m!1264329 () Bool)

(assert (=> b!1106878 m!1264329))

(declare-fun m!1264331 () Bool)

(assert (=> b!1106878 m!1264331))

(declare-fun e!701701 () Bool)

(assert (=> b!1106759 (= tp!327949 e!701701)))

(declare-fun setIsEmpty!7751 () Bool)

(declare-fun setRes!7751 () Bool)

(assert (=> setIsEmpty!7751 setRes!7751))

(declare-fun b!1106880 () Bool)

(declare-fun e!701702 () Bool)

(declare-fun tp!328038 () Bool)

(assert (=> b!1106880 (= e!701702 tp!328038)))

(declare-fun tp!328037 () Bool)

(declare-fun b!1106881 () Bool)

(declare-fun e!701700 () Bool)

(declare-fun tp!328036 () Bool)

(assert (=> b!1106881 (= e!701701 (and tp!328037 (inv!13885 (_2!6758 (_1!6759 (h!16208 (zeroValue!1524 (v!20024 (underlying!2727 (v!20025 (underlying!2728 (cache!1620 cacheDown!397)))))))))) e!701700 tp_is_empty!5713 setRes!7751 tp!328036))))

(declare-fun condSetEmpty!7751 () Bool)

(assert (=> b!1106881 (= condSetEmpty!7751 (= (_2!6759 (h!16208 (zeroValue!1524 (v!20024 (underlying!2727 (v!20025 (underlying!2728 (cache!1620 cacheDown!397)))))))) ((as const (Array Context!1038 Bool)) false)))))

(declare-fun b!1106882 () Bool)

(declare-fun tp!328040 () Bool)

(assert (=> b!1106882 (= e!701700 tp!328040)))

(declare-fun setElem!7751 () Context!1038)

(declare-fun setNonEmpty!7751 () Bool)

(declare-fun tp!328039 () Bool)

(assert (=> setNonEmpty!7751 (= setRes!7751 (and tp!328039 (inv!13885 setElem!7751) e!701702))))

(declare-fun setRest!7751 () (InoxSet Context!1038))

(assert (=> setNonEmpty!7751 (= (_2!6759 (h!16208 (zeroValue!1524 (v!20024 (underlying!2727 (v!20025 (underlying!2728 (cache!1620 cacheDown!397)))))))) ((_ map or) (store ((as const (Array Context!1038 Bool)) false) setElem!7751 true) setRest!7751))))

(assert (= b!1106881 b!1106882))

(assert (= (and b!1106881 condSetEmpty!7751) setIsEmpty!7751))

(assert (= (and b!1106881 (not condSetEmpty!7751)) setNonEmpty!7751))

(assert (= setNonEmpty!7751 b!1106880))

(assert (= (and b!1106759 ((_ is Cons!10807) (zeroValue!1524 (v!20024 (underlying!2727 (v!20025 (underlying!2728 (cache!1620 cacheDown!397)))))))) b!1106881))

(declare-fun m!1264333 () Bool)

(assert (=> b!1106881 m!1264333))

(declare-fun m!1264335 () Bool)

(assert (=> setNonEmpty!7751 m!1264335))

(declare-fun e!701704 () Bool)

(assert (=> b!1106759 (= tp!327954 e!701704)))

(declare-fun setIsEmpty!7752 () Bool)

(declare-fun setRes!7752 () Bool)

(assert (=> setIsEmpty!7752 setRes!7752))

(declare-fun b!1106883 () Bool)

(declare-fun e!701705 () Bool)

(declare-fun tp!328043 () Bool)

(assert (=> b!1106883 (= e!701705 tp!328043)))

(declare-fun b!1106884 () Bool)

(declare-fun tp!328041 () Bool)

(declare-fun tp!328042 () Bool)

(declare-fun e!701703 () Bool)

(assert (=> b!1106884 (= e!701704 (and tp!328042 (inv!13885 (_2!6758 (_1!6759 (h!16208 (minValue!1524 (v!20024 (underlying!2727 (v!20025 (underlying!2728 (cache!1620 cacheDown!397)))))))))) e!701703 tp_is_empty!5713 setRes!7752 tp!328041))))

(declare-fun condSetEmpty!7752 () Bool)

(assert (=> b!1106884 (= condSetEmpty!7752 (= (_2!6759 (h!16208 (minValue!1524 (v!20024 (underlying!2727 (v!20025 (underlying!2728 (cache!1620 cacheDown!397)))))))) ((as const (Array Context!1038 Bool)) false)))))

(declare-fun b!1106885 () Bool)

(declare-fun tp!328045 () Bool)

(assert (=> b!1106885 (= e!701703 tp!328045)))

(declare-fun setNonEmpty!7752 () Bool)

(declare-fun tp!328044 () Bool)

(declare-fun setElem!7752 () Context!1038)

(assert (=> setNonEmpty!7752 (= setRes!7752 (and tp!328044 (inv!13885 setElem!7752) e!701705))))

(declare-fun setRest!7752 () (InoxSet Context!1038))

(assert (=> setNonEmpty!7752 (= (_2!6759 (h!16208 (minValue!1524 (v!20024 (underlying!2727 (v!20025 (underlying!2728 (cache!1620 cacheDown!397)))))))) ((_ map or) (store ((as const (Array Context!1038 Bool)) false) setElem!7752 true) setRest!7752))))

(assert (= b!1106884 b!1106885))

(assert (= (and b!1106884 condSetEmpty!7752) setIsEmpty!7752))

(assert (= (and b!1106884 (not condSetEmpty!7752)) setNonEmpty!7752))

(assert (= setNonEmpty!7752 b!1106883))

(assert (= (and b!1106759 ((_ is Cons!10807) (minValue!1524 (v!20024 (underlying!2727 (v!20025 (underlying!2728 (cache!1620 cacheDown!397)))))))) b!1106884))

(declare-fun m!1264337 () Bool)

(assert (=> b!1106884 m!1264337))

(declare-fun m!1264339 () Bool)

(assert (=> setNonEmpty!7752 m!1264339))

(declare-fun mapNonEmpty!6129 () Bool)

(declare-fun mapRes!6129 () Bool)

(declare-fun tp!328078 () Bool)

(declare-fun e!701720 () Bool)

(assert (=> mapNonEmpty!6129 (= mapRes!6129 (and tp!328078 e!701720))))

(declare-fun mapRest!6129 () (Array (_ BitVec 32) List!10831))

(declare-fun mapKey!6129 () (_ BitVec 32))

(declare-fun mapValue!6129 () List!10831)

(assert (=> mapNonEmpty!6129 (= mapRest!6123 (store mapRest!6129 mapKey!6129 mapValue!6129))))

(declare-fun e!701721 () Bool)

(declare-fun tp!328077 () Bool)

(declare-fun setRes!7758 () Bool)

(declare-fun setNonEmpty!7757 () Bool)

(declare-fun setElem!7757 () Context!1038)

(assert (=> setNonEmpty!7757 (= setRes!7758 (and tp!328077 (inv!13885 setElem!7757) e!701721))))

(declare-fun mapDefault!6129 () List!10831)

(declare-fun setRest!7758 () (InoxSet Context!1038))

(assert (=> setNonEmpty!7757 (= (_2!6759 (h!16208 mapDefault!6129)) ((_ map or) (store ((as const (Array Context!1038 Bool)) false) setElem!7757 true) setRest!7758))))

(declare-fun b!1106900 () Bool)

(declare-fun e!701722 () Bool)

(declare-fun tp!328072 () Bool)

(assert (=> b!1106900 (= e!701722 tp!328072)))

(declare-fun b!1106902 () Bool)

(declare-fun e!701718 () Bool)

(declare-fun tp!328075 () Bool)

(assert (=> b!1106902 (= e!701718 tp!328075)))

(declare-fun b!1106903 () Bool)

(declare-fun tp!328069 () Bool)

(assert (=> b!1106903 (= e!701721 tp!328069)))

(declare-fun setIsEmpty!7757 () Bool)

(declare-fun setRes!7757 () Bool)

(assert (=> setIsEmpty!7757 setRes!7757))

(declare-fun b!1106904 () Bool)

(declare-fun tp!328073 () Bool)

(declare-fun tp!328071 () Bool)

(declare-fun e!701723 () Bool)

(assert (=> b!1106904 (= e!701723 (and tp!328071 (inv!13885 (_2!6758 (_1!6759 (h!16208 mapDefault!6129)))) e!701718 tp_is_empty!5713 setRes!7758 tp!328073))))

(declare-fun condSetEmpty!7757 () Bool)

(assert (=> b!1106904 (= condSetEmpty!7757 (= (_2!6759 (h!16208 mapDefault!6129)) ((as const (Array Context!1038 Bool)) false)))))

(declare-fun b!1106905 () Bool)

(declare-fun e!701719 () Bool)

(declare-fun tp!328074 () Bool)

(assert (=> b!1106905 (= e!701719 tp!328074)))

(declare-fun tp!328076 () Bool)

(declare-fun setNonEmpty!7758 () Bool)

(declare-fun setElem!7758 () Context!1038)

(assert (=> setNonEmpty!7758 (= setRes!7757 (and tp!328076 (inv!13885 setElem!7758) e!701719))))

(declare-fun setRest!7757 () (InoxSet Context!1038))

(assert (=> setNonEmpty!7758 (= (_2!6759 (h!16208 mapValue!6129)) ((_ map or) (store ((as const (Array Context!1038 Bool)) false) setElem!7758 true) setRest!7757))))

(declare-fun tp!328068 () Bool)

(declare-fun tp!328070 () Bool)

(declare-fun b!1106901 () Bool)

(assert (=> b!1106901 (= e!701720 (and tp!328070 (inv!13885 (_2!6758 (_1!6759 (h!16208 mapValue!6129)))) e!701722 tp_is_empty!5713 setRes!7757 tp!328068))))

(declare-fun condSetEmpty!7758 () Bool)

(assert (=> b!1106901 (= condSetEmpty!7758 (= (_2!6759 (h!16208 mapValue!6129)) ((as const (Array Context!1038 Bool)) false)))))

(declare-fun condMapEmpty!6129 () Bool)

(assert (=> mapNonEmpty!6122 (= condMapEmpty!6129 (= mapRest!6123 ((as const (Array (_ BitVec 32) List!10831)) mapDefault!6129)))))

(assert (=> mapNonEmpty!6122 (= tp!327947 (and e!701723 mapRes!6129))))

(declare-fun mapIsEmpty!6129 () Bool)

(assert (=> mapIsEmpty!6129 mapRes!6129))

(declare-fun setIsEmpty!7758 () Bool)

(assert (=> setIsEmpty!7758 setRes!7758))

(assert (= (and mapNonEmpty!6122 condMapEmpty!6129) mapIsEmpty!6129))

(assert (= (and mapNonEmpty!6122 (not condMapEmpty!6129)) mapNonEmpty!6129))

(assert (= b!1106901 b!1106900))

(assert (= (and b!1106901 condSetEmpty!7758) setIsEmpty!7757))

(assert (= (and b!1106901 (not condSetEmpty!7758)) setNonEmpty!7758))

(assert (= setNonEmpty!7758 b!1106905))

(assert (= (and mapNonEmpty!6129 ((_ is Cons!10807) mapValue!6129)) b!1106901))

(assert (= b!1106904 b!1106902))

(assert (= (and b!1106904 condSetEmpty!7757) setIsEmpty!7758))

(assert (= (and b!1106904 (not condSetEmpty!7757)) setNonEmpty!7757))

(assert (= setNonEmpty!7757 b!1106903))

(assert (= (and mapNonEmpty!6122 ((_ is Cons!10807) mapDefault!6129)) b!1106904))

(declare-fun m!1264341 () Bool)

(assert (=> mapNonEmpty!6129 m!1264341))

(declare-fun m!1264343 () Bool)

(assert (=> b!1106901 m!1264343))

(declare-fun m!1264345 () Bool)

(assert (=> b!1106904 m!1264345))

(declare-fun m!1264347 () Bool)

(assert (=> setNonEmpty!7758 m!1264347))

(declare-fun m!1264349 () Bool)

(assert (=> setNonEmpty!7757 m!1264349))

(declare-fun e!701725 () Bool)

(assert (=> mapNonEmpty!6122 (= tp!327953 e!701725)))

(declare-fun setIsEmpty!7759 () Bool)

(declare-fun setRes!7759 () Bool)

(assert (=> setIsEmpty!7759 setRes!7759))

(declare-fun b!1106906 () Bool)

(declare-fun e!701726 () Bool)

(declare-fun tp!328081 () Bool)

(assert (=> b!1106906 (= e!701726 tp!328081)))

(declare-fun tp!328080 () Bool)

(declare-fun e!701724 () Bool)

(declare-fun b!1106907 () Bool)

(declare-fun tp!328079 () Bool)

(assert (=> b!1106907 (= e!701725 (and tp!328080 (inv!13885 (_2!6758 (_1!6759 (h!16208 mapValue!6123)))) e!701724 tp_is_empty!5713 setRes!7759 tp!328079))))

(declare-fun condSetEmpty!7759 () Bool)

(assert (=> b!1106907 (= condSetEmpty!7759 (= (_2!6759 (h!16208 mapValue!6123)) ((as const (Array Context!1038 Bool)) false)))))

(declare-fun b!1106908 () Bool)

(declare-fun tp!328083 () Bool)

(assert (=> b!1106908 (= e!701724 tp!328083)))

(declare-fun setElem!7759 () Context!1038)

(declare-fun tp!328082 () Bool)

(declare-fun setNonEmpty!7759 () Bool)

(assert (=> setNonEmpty!7759 (= setRes!7759 (and tp!328082 (inv!13885 setElem!7759) e!701726))))

(declare-fun setRest!7759 () (InoxSet Context!1038))

(assert (=> setNonEmpty!7759 (= (_2!6759 (h!16208 mapValue!6123)) ((_ map or) (store ((as const (Array Context!1038 Bool)) false) setElem!7759 true) setRest!7759))))

(assert (= b!1106907 b!1106908))

(assert (= (and b!1106907 condSetEmpty!7759) setIsEmpty!7759))

(assert (= (and b!1106907 (not condSetEmpty!7759)) setNonEmpty!7759))

(assert (= setNonEmpty!7759 b!1106906))

(assert (= (and mapNonEmpty!6122 ((_ is Cons!10807) mapValue!6123)) b!1106907))

(declare-fun m!1264351 () Bool)

(assert (=> b!1106907 m!1264351))

(declare-fun m!1264353 () Bool)

(assert (=> setNonEmpty!7759 m!1264353))

(declare-fun b!1106922 () Bool)

(declare-fun e!701729 () Bool)

(declare-fun tp!328097 () Bool)

(declare-fun tp!328095 () Bool)

(assert (=> b!1106922 (= e!701729 (and tp!328097 tp!328095))))

(declare-fun b!1106920 () Bool)

(declare-fun tp!328098 () Bool)

(declare-fun tp!328094 () Bool)

(assert (=> b!1106920 (= e!701729 (and tp!328098 tp!328094))))

(assert (=> b!1106755 (= tp!327958 e!701729)))

(declare-fun b!1106919 () Bool)

(assert (=> b!1106919 (= e!701729 tp_is_empty!5713)))

(declare-fun b!1106921 () Bool)

(declare-fun tp!328096 () Bool)

(assert (=> b!1106921 (= e!701729 tp!328096)))

(assert (= (and b!1106755 ((_ is ElementMatch!3133) (regex!1863 (h!16205 rules!859)))) b!1106919))

(assert (= (and b!1106755 ((_ is Concat!5063) (regex!1863 (h!16205 rules!859)))) b!1106920))

(assert (= (and b!1106755 ((_ is Star!3133) (regex!1863 (h!16205 rules!859)))) b!1106921))

(assert (= (and b!1106755 ((_ is Union!3133) (regex!1863 (h!16205 rules!859)))) b!1106922))

(declare-fun setRes!7760 () Bool)

(declare-fun e!701731 () Bool)

(declare-fun b!1106923 () Bool)

(declare-fun tp!328102 () Bool)

(declare-fun e!701732 () Bool)

(assert (=> b!1106923 (= e!701731 (and (inv!13885 (_1!6760 (_1!6761 (h!16209 mapDefault!6123)))) e!701732 tp_is_empty!5713 setRes!7760 tp!328102))))

(declare-fun condSetEmpty!7760 () Bool)

(assert (=> b!1106923 (= condSetEmpty!7760 (= (_2!6761 (h!16209 mapDefault!6123)) ((as const (Array Context!1038 Bool)) false)))))

(declare-fun b!1106924 () Bool)

(declare-fun tp!328100 () Bool)

(assert (=> b!1106924 (= e!701732 tp!328100)))

(declare-fun b!1106925 () Bool)

(declare-fun e!701730 () Bool)

(declare-fun tp!328101 () Bool)

(assert (=> b!1106925 (= e!701730 tp!328101)))

(declare-fun tp!328099 () Bool)

(declare-fun setElem!7760 () Context!1038)

(declare-fun setNonEmpty!7760 () Bool)

(assert (=> setNonEmpty!7760 (= setRes!7760 (and tp!328099 (inv!13885 setElem!7760) e!701730))))

(declare-fun setRest!7760 () (InoxSet Context!1038))

(assert (=> setNonEmpty!7760 (= (_2!6761 (h!16209 mapDefault!6123)) ((_ map or) (store ((as const (Array Context!1038 Bool)) false) setElem!7760 true) setRest!7760))))

(declare-fun setIsEmpty!7760 () Bool)

(assert (=> setIsEmpty!7760 setRes!7760))

(assert (=> b!1106774 (= tp!327957 e!701731)))

(assert (= b!1106923 b!1106924))

(assert (= (and b!1106923 condSetEmpty!7760) setIsEmpty!7760))

(assert (= (and b!1106923 (not condSetEmpty!7760)) setNonEmpty!7760))

(assert (= setNonEmpty!7760 b!1106925))

(assert (= (and b!1106774 ((_ is Cons!10808) mapDefault!6123)) b!1106923))

(declare-fun m!1264355 () Bool)

(assert (=> b!1106923 m!1264355))

(declare-fun m!1264357 () Bool)

(assert (=> setNonEmpty!7760 m!1264357))

(declare-fun e!701735 () Bool)

(declare-fun b!1106926 () Bool)

(declare-fun tp!328106 () Bool)

(declare-fun setRes!7761 () Bool)

(declare-fun e!701734 () Bool)

(assert (=> b!1106926 (= e!701734 (and (inv!13885 (_1!6760 (_1!6761 (h!16209 (zeroValue!1525 (v!20027 (underlying!2729 (v!20028 (underlying!2730 (cache!1621 cacheUp!384)))))))))) e!701735 tp_is_empty!5713 setRes!7761 tp!328106))))

(declare-fun condSetEmpty!7761 () Bool)

(assert (=> b!1106926 (= condSetEmpty!7761 (= (_2!6761 (h!16209 (zeroValue!1525 (v!20027 (underlying!2729 (v!20028 (underlying!2730 (cache!1621 cacheUp!384)))))))) ((as const (Array Context!1038 Bool)) false)))))

(declare-fun b!1106927 () Bool)

(declare-fun tp!328104 () Bool)

(assert (=> b!1106927 (= e!701735 tp!328104)))

(declare-fun b!1106928 () Bool)

(declare-fun e!701733 () Bool)

(declare-fun tp!328105 () Bool)

(assert (=> b!1106928 (= e!701733 tp!328105)))

(declare-fun tp!328103 () Bool)

(declare-fun setNonEmpty!7761 () Bool)

(declare-fun setElem!7761 () Context!1038)

(assert (=> setNonEmpty!7761 (= setRes!7761 (and tp!328103 (inv!13885 setElem!7761) e!701733))))

(declare-fun setRest!7761 () (InoxSet Context!1038))

(assert (=> setNonEmpty!7761 (= (_2!6761 (h!16209 (zeroValue!1525 (v!20027 (underlying!2729 (v!20028 (underlying!2730 (cache!1621 cacheUp!384)))))))) ((_ map or) (store ((as const (Array Context!1038 Bool)) false) setElem!7761 true) setRest!7761))))

(declare-fun setIsEmpty!7761 () Bool)

(assert (=> setIsEmpty!7761 setRes!7761))

(assert (=> b!1106770 (= tp!327950 e!701734)))

(assert (= b!1106926 b!1106927))

(assert (= (and b!1106926 condSetEmpty!7761) setIsEmpty!7761))

(assert (= (and b!1106926 (not condSetEmpty!7761)) setNonEmpty!7761))

(assert (= setNonEmpty!7761 b!1106928))

(assert (= (and b!1106770 ((_ is Cons!10808) (zeroValue!1525 (v!20027 (underlying!2729 (v!20028 (underlying!2730 (cache!1621 cacheUp!384)))))))) b!1106926))

(declare-fun m!1264359 () Bool)

(assert (=> b!1106926 m!1264359))

(declare-fun m!1264361 () Bool)

(assert (=> setNonEmpty!7761 m!1264361))

(declare-fun e!701737 () Bool)

(declare-fun e!701738 () Bool)

(declare-fun setRes!7762 () Bool)

(declare-fun tp!328110 () Bool)

(declare-fun b!1106929 () Bool)

(assert (=> b!1106929 (= e!701737 (and (inv!13885 (_1!6760 (_1!6761 (h!16209 (minValue!1525 (v!20027 (underlying!2729 (v!20028 (underlying!2730 (cache!1621 cacheUp!384)))))))))) e!701738 tp_is_empty!5713 setRes!7762 tp!328110))))

(declare-fun condSetEmpty!7762 () Bool)

(assert (=> b!1106929 (= condSetEmpty!7762 (= (_2!6761 (h!16209 (minValue!1525 (v!20027 (underlying!2729 (v!20028 (underlying!2730 (cache!1621 cacheUp!384)))))))) ((as const (Array Context!1038 Bool)) false)))))

(declare-fun b!1106930 () Bool)

(declare-fun tp!328108 () Bool)

(assert (=> b!1106930 (= e!701738 tp!328108)))

(declare-fun b!1106931 () Bool)

(declare-fun e!701736 () Bool)

(declare-fun tp!328109 () Bool)

(assert (=> b!1106931 (= e!701736 tp!328109)))

(declare-fun setElem!7762 () Context!1038)

(declare-fun setNonEmpty!7762 () Bool)

(declare-fun tp!328107 () Bool)

(assert (=> setNonEmpty!7762 (= setRes!7762 (and tp!328107 (inv!13885 setElem!7762) e!701736))))

(declare-fun setRest!7762 () (InoxSet Context!1038))

(assert (=> setNonEmpty!7762 (= (_2!6761 (h!16209 (minValue!1525 (v!20027 (underlying!2729 (v!20028 (underlying!2730 (cache!1621 cacheUp!384)))))))) ((_ map or) (store ((as const (Array Context!1038 Bool)) false) setElem!7762 true) setRest!7762))))

(declare-fun setIsEmpty!7762 () Bool)

(assert (=> setIsEmpty!7762 setRes!7762))

(assert (=> b!1106770 (= tp!327951 e!701737)))

(assert (= b!1106929 b!1106930))

(assert (= (and b!1106929 condSetEmpty!7762) setIsEmpty!7762))

(assert (= (and b!1106929 (not condSetEmpty!7762)) setNonEmpty!7762))

(assert (= setNonEmpty!7762 b!1106931))

(assert (= (and b!1106770 ((_ is Cons!10808) (minValue!1525 (v!20027 (underlying!2729 (v!20028 (underlying!2730 (cache!1621 cacheUp!384)))))))) b!1106929))

(declare-fun m!1264363 () Bool)

(assert (=> b!1106929 m!1264363))

(declare-fun m!1264365 () Bool)

(assert (=> setNonEmpty!7762 m!1264365))

(check-sat (not setNonEmpty!7743) (not b!1106866) b_and!79129 (not b!1106812) (not b!1106884) (not b!1106882) (not b!1106867) (not b!1106799) (not b!1106906) b_and!79137 (not b!1106845) (not setNonEmpty!7759) (not setNonEmpty!7758) (not d!313408) (not d!313382) (not b_next!26869) (not b!1106904) (not b!1106925) (not b!1106922) (not b_next!26877) (not b!1106903) (not b!1106920) (not b_next!26873) (not b!1106878) (not b!1106790) (not b!1106830) (not b!1106930) (not b!1106883) (not d!313386) b_and!79127 (not setNonEmpty!7750) (not setNonEmpty!7752) (not setNonEmpty!7757) (not mapNonEmpty!6126) (not b!1106844) (not b_next!26883) (not b!1106831) (not setNonEmpty!7747) (not b!1106907) (not b!1106908) (not setNonEmpty!7762) (not b!1106835) b_and!79139 (not b!1106881) b_and!79135 (not b!1106931) (not b_next!26879) b_and!79125 b_and!79133 (not b_next!26881) (not b!1106880) (not b!1106846) (not b!1106902) (not b!1106809) (not b!1106757) (not b!1106926) (not b!1106785) (not d!313392) (not b!1106929) (not b!1106855) (not b!1106928) (not b!1106885) (not b_next!26871) (not b!1106901) (not b!1106856) (not b!1106833) (not b!1106877) (not b!1106815) (not setNonEmpty!7751) (not b!1106787) (not d!313400) (not setNonEmpty!7760) (not b!1106868) b_and!79131 tp_is_empty!5713 (not b!1106921) (not mapNonEmpty!6129) (not b!1106832) (not b!1106905) (not b!1106924) (not d!313378) (not setNonEmpty!7761) (not b!1106806) (not b!1106857) (not b_next!26875) (not b!1106834) (not b!1106900) (not setNonEmpty!7744) (not b!1106927) (not b!1106923))
(check-sat b_and!79137 (not b_next!26869) (not b_next!26877) (not b_next!26873) b_and!79129 b_and!79127 (not b_next!26883) (not b_next!26871) b_and!79131 (not b_next!26875) b_and!79139 b_and!79135 (not b_next!26879) b_and!79125 b_and!79133 (not b_next!26881))

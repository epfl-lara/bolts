; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!95746 () Bool)

(assert start!95746)

(declare-fun b!1108159 () Bool)

(declare-fun b_free!26937 () Bool)

(declare-fun b_next!27001 () Bool)

(assert (=> b!1108159 (= b_free!26937 (not b_next!27001))))

(declare-fun tp!329017 () Bool)

(declare-fun b_and!79257 () Bool)

(assert (=> b!1108159 (= tp!329017 b_and!79257)))

(declare-fun b!1108164 () Bool)

(declare-fun b_free!26939 () Bool)

(declare-fun b_next!27003 () Bool)

(assert (=> b!1108164 (= b_free!26939 (not b_next!27003))))

(declare-fun tp!329023 () Bool)

(declare-fun b_and!79259 () Bool)

(assert (=> b!1108164 (= tp!329023 b_and!79259)))

(declare-fun b_free!26941 () Bool)

(declare-fun b_next!27005 () Bool)

(assert (=> b!1108164 (= b_free!26941 (not b_next!27005))))

(declare-fun tp!329014 () Bool)

(declare-fun b_and!79261 () Bool)

(assert (=> b!1108164 (= tp!329014 b_and!79261)))

(declare-fun b!1108160 () Bool)

(declare-fun b_free!26943 () Bool)

(declare-fun b_next!27007 () Bool)

(assert (=> b!1108160 (= b_free!26943 (not b_next!27007))))

(declare-fun tp!329009 () Bool)

(declare-fun b_and!79263 () Bool)

(assert (=> b!1108160 (= tp!329009 b_and!79263)))

(declare-fun b!1108167 () Bool)

(declare-fun b_free!26945 () Bool)

(declare-fun b_next!27009 () Bool)

(assert (=> b!1108167 (= b_free!26945 (not b_next!27009))))

(declare-fun tp!329011 () Bool)

(declare-fun b_and!79265 () Bool)

(assert (=> b!1108167 (= tp!329011 b_and!79265)))

(declare-fun b!1108162 () Bool)

(declare-fun b_free!26947 () Bool)

(declare-fun b_next!27011 () Bool)

(assert (=> b!1108162 (= b_free!26947 (not b_next!27011))))

(declare-fun tp!329016 () Bool)

(declare-fun b_and!79267 () Bool)

(assert (=> b!1108162 (= tp!329016 b_and!79267)))

(declare-fun e!702728 () Bool)

(declare-fun e!702743 () Bool)

(assert (=> b!1108159 (= e!702728 (and e!702743 tp!329017))))

(declare-fun tp!329022 () Bool)

(declare-datatypes ((C!6680 0))(
  ( (C!6681 (val!3596 Int)) )
))
(declare-datatypes ((Regex!3145 0))(
  ( (ElementMatch!3145 (c!188009 C!6680)) (Concat!5086 (regOne!6802 Regex!3145) (regTwo!6802 Regex!3145)) (EmptyExpr!3145) (Star!3145 (reg!3474 Regex!3145)) (EmptyLang!3145) (Union!3145 (regOne!6803 Regex!3145) (regTwo!6803 Regex!3145)) )
))
(declare-datatypes ((List!10897 0))(
  ( (Nil!10873) (Cons!10873 (h!16274 Regex!3145) (t!105485 List!10897)) )
))
(declare-datatypes ((Context!1050 0))(
  ( (Context!1051 (exprs!1025 List!10897)) )
))
(declare-datatypes ((tuple3!1102 0))(
  ( (tuple3!1103 (_1!6787 Regex!3145) (_2!6787 Context!1050) (_3!842 C!6680)) )
))
(declare-datatypes ((array!4519 0))(
  ( (array!4520 (arr!2014 (Array (_ BitVec 32) (_ BitVec 64))) (size!8431 (_ BitVec 32))) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!11890 0))(
  ( (tuple2!11891 (_1!6788 tuple3!1102) (_2!6788 (InoxSet Context!1050))) )
))
(declare-datatypes ((List!10898 0))(
  ( (Nil!10874) (Cons!10874 (h!16275 tuple2!11890) (t!105486 List!10898)) )
))
(declare-datatypes ((array!4521 0))(
  ( (array!4522 (arr!2015 (Array (_ BitVec 32) List!10898)) (size!8432 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2558 0))(
  ( (LongMapFixedSize!2559 (defaultEntry!1639 Int) (mask!3770 (_ BitVec 32)) (extraKeys!1526 (_ BitVec 32)) (zeroValue!1536 List!10898) (minValue!1536 List!10898) (_size!2667 (_ BitVec 32)) (_keys!1573 array!4519) (_values!1558 array!4521) (_vacant!1340 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!5057 0))(
  ( (Cell!5058 (v!20051 LongMapFixedSize!2558)) )
))
(declare-datatypes ((MutLongMap!1279 0))(
  ( (LongMap!1279 (underlying!2751 Cell!5057)) (MutLongMapExt!1278 (__x!7591 Int)) )
))
(declare-datatypes ((Cell!5059 0))(
  ( (Cell!5060 (v!20052 MutLongMap!1279)) )
))
(declare-datatypes ((Hashable!1251 0))(
  ( (HashableExt!1250 (__x!7592 Int)) )
))
(declare-datatypes ((MutableMap!1251 0))(
  ( (MutableMapExt!1250 (__x!7593 Int)) (HashMap!1251 (underlying!2752 Cell!5059) (hashF!3170 Hashable!1251) (_size!2668 (_ BitVec 32)) (defaultValue!1411 Int)) )
))
(declare-datatypes ((CacheDown!724 0))(
  ( (CacheDown!725 (cache!1632 MutableMap!1251)) )
))
(declare-fun cacheDown!425 () CacheDown!724)

(declare-fun tp!329012 () Bool)

(declare-fun e!702736 () Bool)

(declare-fun e!702730 () Bool)

(declare-fun array_inv!1454 (array!4519) Bool)

(declare-fun array_inv!1455 (array!4521) Bool)

(assert (=> b!1108160 (= e!702730 (and tp!329009 tp!329012 tp!329022 (array_inv!1454 (_keys!1573 (v!20051 (underlying!2751 (v!20052 (underlying!2752 (cache!1632 cacheDown!425))))))) (array_inv!1455 (_values!1558 (v!20051 (underlying!2751 (v!20052 (underlying!2752 (cache!1632 cacheDown!425))))))) e!702736))))

(declare-fun mapIsEmpty!6176 () Bool)

(declare-fun mapRes!6177 () Bool)

(assert (=> mapIsEmpty!6176 mapRes!6177))

(declare-fun b!1108161 () Bool)

(declare-fun e!702749 () Bool)

(declare-datatypes ((List!10899 0))(
  ( (Nil!10875) (Cons!10875 (h!16276 (_ BitVec 16)) (t!105487 List!10899)) )
))
(declare-datatypes ((TokenValue!1941 0))(
  ( (FloatLiteralValue!3882 (text!14032 List!10899)) (TokenValueExt!1940 (__x!7594 Int)) (Broken!9705 (value!61408 List!10899)) (Object!1964) (End!1941) (Def!1941) (Underscore!1941) (Match!1941) (Else!1941) (Error!1941) (Case!1941) (If!1941) (Extends!1941) (Abstract!1941) (Class!1941) (Val!1941) (DelimiterValue!3882 (del!2001 List!10899)) (KeywordValue!1947 (value!61409 List!10899)) (CommentValue!3882 (value!61410 List!10899)) (WhitespaceValue!3882 (value!61411 List!10899)) (IndentationValue!1941 (value!61412 List!10899)) (String!13292) (Int32!1941) (Broken!9706 (value!61413 List!10899)) (Boolean!1942) (Unit!16473) (OperatorValue!1944 (op!2001 List!10899)) (IdentifierValue!3882 (value!61414 List!10899)) (IdentifierValue!3883 (value!61415 List!10899)) (WhitespaceValue!3883 (value!61416 List!10899)) (True!3882) (False!3882) (Broken!9707 (value!61417 List!10899)) (Broken!9708 (value!61418 List!10899)) (True!3883) (RightBrace!1941) (RightBracket!1941) (Colon!1941) (Null!1941) (Comma!1941) (LeftBracket!1941) (False!3883) (LeftBrace!1941) (ImaginaryLiteralValue!1941 (text!14033 List!10899)) (StringLiteralValue!5823 (value!61419 List!10899)) (EOFValue!1941 (value!61420 List!10899)) (IdentValue!1941 (value!61421 List!10899)) (DelimiterValue!3883 (value!61422 List!10899)) (DedentValue!1941 (value!61423 List!10899)) (NewLineValue!1941 (value!61424 List!10899)) (IntegerValue!5823 (value!61425 (_ BitVec 32)) (text!14034 List!10899)) (IntegerValue!5824 (value!61426 Int) (text!14035 List!10899)) (Times!1941) (Or!1941) (Equal!1941) (Minus!1941) (Broken!9709 (value!61427 List!10899)) (And!1941) (Div!1941) (LessEqual!1941) (Mod!1941) (Concat!5087) (Not!1941) (Plus!1941) (SpaceValue!1941 (value!61428 List!10899)) (IntegerValue!5825 (value!61429 Int) (text!14036 List!10899)) (StringLiteralValue!5824 (text!14037 List!10899)) (FloatLiteralValue!3883 (text!14038 List!10899)) (BytesLiteralValue!1941 (value!61430 List!10899)) (CommentValue!3883 (value!61431 List!10899)) (StringLiteralValue!5825 (value!61432 List!10899)) (ErrorTokenValue!1941 (msg!2002 List!10899)) )
))
(declare-datatypes ((List!10900 0))(
  ( (Nil!10876) (Cons!10876 (h!16277 C!6680) (t!105488 List!10900)) )
))
(declare-datatypes ((IArray!6885 0))(
  ( (IArray!6886 (innerList!3500 List!10900)) )
))
(declare-datatypes ((Conc!3440 0))(
  ( (Node!3440 (left!9425 Conc!3440) (right!9755 Conc!3440) (csize!7110 Int) (cheight!3651 Int)) (Leaf!5388 (xs!6133 IArray!6885) (csize!7111 Int)) (Empty!3440) )
))
(declare-datatypes ((BalanceConc!6902 0))(
  ( (BalanceConc!6903 (c!188010 Conc!3440)) )
))
(declare-datatypes ((TokenValueInjection!3582 0))(
  ( (TokenValueInjection!3583 (toValue!2956 Int) (toChars!2815 Int)) )
))
(declare-datatypes ((String!13293 0))(
  ( (String!13294 (value!61433 String)) )
))
(declare-datatypes ((Rule!3550 0))(
  ( (Rule!3551 (regex!1875 Regex!3145) (tag!2137 String!13293) (isSeparator!1875 Bool) (transformation!1875 TokenValueInjection!3582)) )
))
(declare-datatypes ((Token!3412 0))(
  ( (Token!3413 (value!61434 TokenValue!1941) (rule!3296 Rule!3550) (size!8433 Int) (originalCharacters!2429 List!10900)) )
))
(declare-datatypes ((List!10901 0))(
  ( (Nil!10877) (Cons!10877 (h!16278 Token!3412) (t!105489 List!10901)) )
))
(declare-datatypes ((IArray!6887 0))(
  ( (IArray!6888 (innerList!3501 List!10901)) )
))
(declare-datatypes ((Conc!3441 0))(
  ( (Node!3441 (left!9426 Conc!3441) (right!9756 Conc!3441) (csize!7112 Int) (cheight!3652 Int)) (Leaf!5389 (xs!6134 IArray!6887) (csize!7113 Int)) (Empty!3441) )
))
(declare-datatypes ((BalanceConc!6904 0))(
  ( (BalanceConc!6905 (c!188011 Conc!3441)) )
))
(declare-fun tokens!410 () BalanceConc!6904)

(declare-fun tp!329019 () Bool)

(declare-fun inv!13962 (Conc!3441) Bool)

(assert (=> b!1108161 (= e!702749 (and (inv!13962 (c!188011 tokens!410)) tp!329019))))

(declare-fun tp!329021 () Bool)

(declare-datatypes ((tuple2!11892 0))(
  ( (tuple2!11893 (_1!6789 Context!1050) (_2!6789 C!6680)) )
))
(declare-datatypes ((tuple2!11894 0))(
  ( (tuple2!11895 (_1!6790 tuple2!11892) (_2!6790 (InoxSet Context!1050))) )
))
(declare-datatypes ((List!10902 0))(
  ( (Nil!10878) (Cons!10878 (h!16279 tuple2!11894) (t!105490 List!10902)) )
))
(declare-datatypes ((array!4523 0))(
  ( (array!4524 (arr!2016 (Array (_ BitVec 32) List!10902)) (size!8434 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2560 0))(
  ( (LongMapFixedSize!2561 (defaultEntry!1640 Int) (mask!3771 (_ BitVec 32)) (extraKeys!1527 (_ BitVec 32)) (zeroValue!1537 List!10902) (minValue!1537 List!10902) (_size!2669 (_ BitVec 32)) (_keys!1574 array!4519) (_values!1559 array!4523) (_vacant!1341 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!5061 0))(
  ( (Cell!5062 (v!20053 LongMapFixedSize!2560)) )
))
(declare-datatypes ((MutLongMap!1280 0))(
  ( (LongMap!1280 (underlying!2753 Cell!5061)) (MutLongMapExt!1279 (__x!7595 Int)) )
))
(declare-datatypes ((Hashable!1252 0))(
  ( (HashableExt!1251 (__x!7596 Int)) )
))
(declare-datatypes ((Cell!5063 0))(
  ( (Cell!5064 (v!20054 MutLongMap!1280)) )
))
(declare-datatypes ((MutableMap!1252 0))(
  ( (MutableMapExt!1251 (__x!7597 Int)) (HashMap!1252 (underlying!2754 Cell!5063) (hashF!3171 Hashable!1252) (_size!2670 (_ BitVec 32)) (defaultValue!1412 Int)) )
))
(declare-datatypes ((CacheUp!720 0))(
  ( (CacheUp!721 (cache!1633 MutableMap!1252)) )
))
(declare-fun cacheUp!412 () CacheUp!720)

(declare-fun e!702748 () Bool)

(declare-fun tp!329006 () Bool)

(declare-fun e!702747 () Bool)

(declare-fun array_inv!1456 (array!4523) Bool)

(assert (=> b!1108162 (= e!702748 (and tp!329016 tp!329006 tp!329021 (array_inv!1454 (_keys!1574 (v!20053 (underlying!2753 (v!20054 (underlying!2754 (cache!1633 cacheUp!412))))))) (array_inv!1456 (_values!1559 (v!20053 (underlying!2753 (v!20054 (underlying!2754 (cache!1633 cacheUp!412))))))) e!702747))))

(declare-fun b!1108163 () Bool)

(declare-fun e!702732 () Bool)

(assert (=> b!1108163 (= e!702732 e!702730)))

(declare-fun e!702746 () Bool)

(assert (=> b!1108164 (= e!702746 (and tp!329023 tp!329014))))

(declare-fun b!1108165 () Bool)

(declare-fun e!702734 () Bool)

(assert (=> b!1108165 (= e!702734 e!702728)))

(declare-fun b!1108166 () Bool)

(declare-fun e!702745 () Bool)

(declare-fun e!702740 () Bool)

(declare-fun tp!329024 () Bool)

(assert (=> b!1108166 (= e!702745 (and e!702740 tp!329024))))

(declare-fun e!702744 () Bool)

(declare-fun e!702737 () Bool)

(assert (=> b!1108167 (= e!702744 (and e!702737 tp!329011))))

(declare-fun tp!329008 () Bool)

(declare-datatypes ((List!10903 0))(
  ( (Nil!10879) (Cons!10879 (h!16280 Rule!3550) (t!105491 List!10903)) )
))
(declare-fun rules!1093 () List!10903)

(declare-fun b!1108168 () Bool)

(declare-fun inv!13956 (String!13293) Bool)

(declare-fun inv!13963 (TokenValueInjection!3582) Bool)

(assert (=> b!1108168 (= e!702740 (and tp!329008 (inv!13956 (tag!2137 (h!16280 rules!1093))) (inv!13963 (transformation!1875 (h!16280 rules!1093))) e!702746))))

(declare-fun b!1108169 () Bool)

(declare-fun e!702739 () Bool)

(declare-fun e!702738 () Bool)

(assert (=> b!1108169 (= e!702739 e!702738)))

(declare-fun b!1108170 () Bool)

(declare-fun e!702742 () Bool)

(assert (=> b!1108170 (= e!702742 false)))

(declare-datatypes ((tuple3!1104 0))(
  ( (tuple3!1105 (_1!6791 Bool) (_2!6791 CacheUp!720) (_3!843 CacheDown!724)) )
))
(declare-fun lt!376148 () tuple3!1104)

(declare-datatypes ((LexerInterface!1586 0))(
  ( (LexerInterfaceExt!1583 (__x!7598 Int)) (Lexer!1584) )
))
(declare-fun thiss!11199 () LexerInterface!1586)

(declare-fun tokensListTwoByTwoPredicateSeparableMem!6 (LexerInterface!1586 BalanceConc!6904 Int List!10903 CacheUp!720 CacheDown!724) tuple3!1104)

(assert (=> b!1108170 (= lt!376148 (tokensListTwoByTwoPredicateSeparableMem!6 thiss!11199 tokens!410 0 rules!1093 cacheUp!412 cacheDown!425))))

(declare-fun mapNonEmpty!6176 () Bool)

(declare-fun tp!329013 () Bool)

(declare-fun tp!329015 () Bool)

(assert (=> mapNonEmpty!6176 (= mapRes!6177 (and tp!329013 tp!329015))))

(declare-fun mapValue!6177 () List!10902)

(declare-fun mapRest!6176 () (Array (_ BitVec 32) List!10902))

(declare-fun mapKey!6177 () (_ BitVec 32))

(assert (=> mapNonEmpty!6176 (= (arr!2016 (_values!1559 (v!20053 (underlying!2753 (v!20054 (underlying!2754 (cache!1633 cacheUp!412))))))) (store mapRest!6176 mapKey!6177 mapValue!6177))))

(declare-fun b!1108171 () Bool)

(declare-fun res!490653 () Bool)

(assert (=> b!1108171 (=> (not res!490653) (not e!702742))))

(declare-fun rulesProduceEachTokenIndividually!629 (LexerInterface!1586 List!10903 BalanceConc!6904) Bool)

(assert (=> b!1108171 (= res!490653 (rulesProduceEachTokenIndividually!629 thiss!11199 rules!1093 tokens!410))))

(declare-fun mapNonEmpty!6177 () Bool)

(declare-fun mapRes!6176 () Bool)

(declare-fun tp!329020 () Bool)

(declare-fun tp!329018 () Bool)

(assert (=> mapNonEmpty!6177 (= mapRes!6176 (and tp!329020 tp!329018))))

(declare-fun mapRest!6177 () (Array (_ BitVec 32) List!10898))

(declare-fun mapKey!6176 () (_ BitVec 32))

(declare-fun mapValue!6176 () List!10898)

(assert (=> mapNonEmpty!6177 (= (arr!2015 (_values!1558 (v!20051 (underlying!2751 (v!20052 (underlying!2752 (cache!1632 cacheDown!425))))))) (store mapRest!6177 mapKey!6176 mapValue!6176))))

(declare-fun b!1108172 () Bool)

(declare-fun e!702735 () Bool)

(assert (=> b!1108172 (= e!702735 e!702744)))

(declare-fun b!1108173 () Bool)

(declare-fun res!490651 () Bool)

(assert (=> b!1108173 (=> (not res!490651) (not e!702742))))

(declare-fun isEmpty!6744 (List!10903) Bool)

(assert (=> b!1108173 (= res!490651 (not (isEmpty!6744 rules!1093)))))

(declare-fun b!1108174 () Bool)

(declare-fun tp!329007 () Bool)

(assert (=> b!1108174 (= e!702736 (and tp!329007 mapRes!6176))))

(declare-fun condMapEmpty!6177 () Bool)

(declare-fun mapDefault!6176 () List!10898)

(assert (=> b!1108174 (= condMapEmpty!6177 (= (arr!2015 (_values!1558 (v!20051 (underlying!2751 (v!20052 (underlying!2752 (cache!1632 cacheDown!425))))))) ((as const (Array (_ BitVec 32) List!10898)) mapDefault!6176)))))

(declare-fun b!1108175 () Bool)

(assert (=> b!1108175 (= e!702738 e!702748)))

(declare-fun b!1108176 () Bool)

(declare-fun e!702741 () Bool)

(assert (=> b!1108176 (= e!702741 e!702732)))

(declare-fun res!490652 () Bool)

(assert (=> start!95746 (=> (not res!490652) (not e!702742))))

(get-info :version)

(assert (=> start!95746 (= res!490652 ((_ is Lexer!1584) thiss!11199))))

(assert (=> start!95746 e!702742))

(declare-fun inv!13964 (CacheUp!720) Bool)

(assert (=> start!95746 (and (inv!13964 cacheUp!412) e!702734)))

(declare-fun inv!13965 (CacheDown!724) Bool)

(assert (=> start!95746 (and (inv!13965 cacheDown!425) e!702735)))

(assert (=> start!95746 true))

(declare-fun inv!13966 (BalanceConc!6904) Bool)

(assert (=> start!95746 (and (inv!13966 tokens!410) e!702749)))

(assert (=> start!95746 e!702745))

(declare-fun b!1108177 () Bool)

(declare-fun lt!376149 () MutLongMap!1280)

(assert (=> b!1108177 (= e!702743 (and e!702739 ((_ is LongMap!1280) lt!376149)))))

(assert (=> b!1108177 (= lt!376149 (v!20054 (underlying!2754 (cache!1633 cacheUp!412))))))

(declare-fun b!1108178 () Bool)

(declare-fun res!490654 () Bool)

(assert (=> b!1108178 (=> (not res!490654) (not e!702742))))

(declare-fun rulesInvariant!1461 (LexerInterface!1586 List!10903) Bool)

(assert (=> b!1108178 (= res!490654 (rulesInvariant!1461 thiss!11199 rules!1093))))

(declare-fun b!1108179 () Bool)

(declare-fun lt!376147 () MutLongMap!1279)

(assert (=> b!1108179 (= e!702737 (and e!702741 ((_ is LongMap!1279) lt!376147)))))

(assert (=> b!1108179 (= lt!376147 (v!20052 (underlying!2752 (cache!1632 cacheDown!425))))))

(declare-fun mapIsEmpty!6177 () Bool)

(assert (=> mapIsEmpty!6177 mapRes!6176))

(declare-fun b!1108180 () Bool)

(declare-fun tp!329010 () Bool)

(assert (=> b!1108180 (= e!702747 (and tp!329010 mapRes!6177))))

(declare-fun condMapEmpty!6176 () Bool)

(declare-fun mapDefault!6177 () List!10902)

(assert (=> b!1108180 (= condMapEmpty!6176 (= (arr!2016 (_values!1559 (v!20053 (underlying!2753 (v!20054 (underlying!2754 (cache!1633 cacheUp!412))))))) ((as const (Array (_ BitVec 32) List!10902)) mapDefault!6177)))))

(assert (= (and start!95746 res!490652) b!1108173))

(assert (= (and b!1108173 res!490651) b!1108178))

(assert (= (and b!1108178 res!490654) b!1108171))

(assert (= (and b!1108171 res!490653) b!1108170))

(assert (= (and b!1108180 condMapEmpty!6176) mapIsEmpty!6176))

(assert (= (and b!1108180 (not condMapEmpty!6176)) mapNonEmpty!6176))

(assert (= b!1108162 b!1108180))

(assert (= b!1108175 b!1108162))

(assert (= b!1108169 b!1108175))

(assert (= (and b!1108177 ((_ is LongMap!1280) (v!20054 (underlying!2754 (cache!1633 cacheUp!412))))) b!1108169))

(assert (= b!1108159 b!1108177))

(assert (= (and b!1108165 ((_ is HashMap!1252) (cache!1633 cacheUp!412))) b!1108159))

(assert (= start!95746 b!1108165))

(assert (= (and b!1108174 condMapEmpty!6177) mapIsEmpty!6177))

(assert (= (and b!1108174 (not condMapEmpty!6177)) mapNonEmpty!6177))

(assert (= b!1108160 b!1108174))

(assert (= b!1108163 b!1108160))

(assert (= b!1108176 b!1108163))

(assert (= (and b!1108179 ((_ is LongMap!1279) (v!20052 (underlying!2752 (cache!1632 cacheDown!425))))) b!1108176))

(assert (= b!1108167 b!1108179))

(assert (= (and b!1108172 ((_ is HashMap!1251) (cache!1632 cacheDown!425))) b!1108167))

(assert (= start!95746 b!1108172))

(assert (= start!95746 b!1108161))

(assert (= b!1108168 b!1108164))

(assert (= b!1108166 b!1108168))

(assert (= (and start!95746 ((_ is Cons!10879) rules!1093)) b!1108166))

(declare-fun m!1265075 () Bool)

(assert (=> b!1108161 m!1265075))

(declare-fun m!1265077 () Bool)

(assert (=> b!1108162 m!1265077))

(declare-fun m!1265079 () Bool)

(assert (=> b!1108162 m!1265079))

(declare-fun m!1265081 () Bool)

(assert (=> b!1108178 m!1265081))

(declare-fun m!1265083 () Bool)

(assert (=> b!1108160 m!1265083))

(declare-fun m!1265085 () Bool)

(assert (=> b!1108160 m!1265085))

(declare-fun m!1265087 () Bool)

(assert (=> mapNonEmpty!6176 m!1265087))

(declare-fun m!1265089 () Bool)

(assert (=> b!1108170 m!1265089))

(declare-fun m!1265091 () Bool)

(assert (=> start!95746 m!1265091))

(declare-fun m!1265093 () Bool)

(assert (=> start!95746 m!1265093))

(declare-fun m!1265095 () Bool)

(assert (=> start!95746 m!1265095))

(declare-fun m!1265097 () Bool)

(assert (=> b!1108168 m!1265097))

(declare-fun m!1265099 () Bool)

(assert (=> b!1108168 m!1265099))

(declare-fun m!1265101 () Bool)

(assert (=> mapNonEmpty!6177 m!1265101))

(declare-fun m!1265103 () Bool)

(assert (=> b!1108173 m!1265103))

(declare-fun m!1265105 () Bool)

(assert (=> b!1108171 m!1265105))

(check-sat b_and!79263 b_and!79265 (not b_next!27011) (not b_next!27009) (not b!1108168) b_and!79259 (not mapNonEmpty!6177) b_and!79267 (not b!1108161) (not start!95746) b_and!79261 (not b!1108178) b_and!79257 (not b_next!27001) (not b!1108160) (not mapNonEmpty!6176) (not b!1108180) (not b_next!27005) (not b!1108173) (not b!1108174) (not b_next!27007) (not b!1108166) (not b!1108162) (not b_next!27003) (not b!1108170) (not b!1108171))
(check-sat b_and!79263 b_and!79265 (not b_next!27011) (not b_next!27009) (not b_next!27005) b_and!79259 b_and!79267 b_and!79261 b_and!79257 (not b_next!27007) (not b_next!27003) (not b_next!27001))

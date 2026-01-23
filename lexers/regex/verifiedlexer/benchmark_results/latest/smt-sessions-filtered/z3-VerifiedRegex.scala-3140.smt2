; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!184700 () Bool)

(assert start!184700)

(declare-fun b!1850827 () Bool)

(declare-fun b_free!51747 () Bool)

(declare-fun b_next!52451 () Bool)

(assert (=> b!1850827 (= b_free!51747 (not b_next!52451))))

(declare-fun tp!523914 () Bool)

(declare-fun b_and!143977 () Bool)

(assert (=> b!1850827 (= tp!523914 b_and!143977)))

(declare-fun b_free!51749 () Bool)

(declare-fun b_next!52453 () Bool)

(assert (=> b!1850827 (= b_free!51749 (not b_next!52453))))

(declare-fun tp!523893 () Bool)

(declare-fun b_and!143979 () Bool)

(assert (=> b!1850827 (= tp!523893 b_and!143979)))

(declare-fun b!1850831 () Bool)

(declare-fun b_free!51751 () Bool)

(declare-fun b_next!52455 () Bool)

(assert (=> b!1850831 (= b_free!51751 (not b_next!52455))))

(declare-fun tp!523899 () Bool)

(declare-fun b_and!143981 () Bool)

(assert (=> b!1850831 (= tp!523899 b_and!143981)))

(declare-fun b!1850826 () Bool)

(declare-fun b_free!51753 () Bool)

(declare-fun b_next!52457 () Bool)

(assert (=> b!1850826 (= b_free!51753 (not b_next!52457))))

(declare-fun tp!523905 () Bool)

(declare-fun b_and!143983 () Bool)

(assert (=> b!1850826 (= tp!523905 b_and!143983)))

(declare-fun b!1850841 () Bool)

(declare-fun b_free!51755 () Bool)

(declare-fun b_next!52459 () Bool)

(assert (=> b!1850841 (= b_free!51755 (not b_next!52459))))

(declare-fun tp!523908 () Bool)

(declare-fun b_and!143985 () Bool)

(assert (=> b!1850841 (= tp!523908 b_and!143985)))

(declare-fun b_free!51757 () Bool)

(declare-fun b_next!52461 () Bool)

(assert (=> b!1850841 (= b_free!51757 (not b_next!52461))))

(declare-fun tp!523913 () Bool)

(declare-fun b_and!143987 () Bool)

(assert (=> b!1850841 (= tp!523913 b_and!143987)))

(declare-fun b!1850829 () Bool)

(declare-fun b_free!51759 () Bool)

(declare-fun b_next!52463 () Bool)

(assert (=> b!1850829 (= b_free!51759 (not b_next!52463))))

(declare-fun tp!523897 () Bool)

(declare-fun b_and!143989 () Bool)

(assert (=> b!1850829 (= tp!523897 b_and!143989)))

(declare-fun b!1850836 () Bool)

(declare-fun b_free!51761 () Bool)

(declare-fun b_next!52465 () Bool)

(assert (=> b!1850836 (= b_free!51761 (not b_next!52465))))

(declare-fun tp!523900 () Bool)

(declare-fun b_and!143991 () Bool)

(assert (=> b!1850836 (= tp!523900 b_and!143991)))

(declare-fun tp!523903 () Bool)

(declare-datatypes ((List!20559 0))(
  ( (Nil!20487) (Cons!20487 (h!25888 (_ BitVec 16)) (t!172346 List!20559)) )
))
(declare-datatypes ((TokenValue!3787 0))(
  ( (FloatLiteralValue!7574 (text!26954 List!20559)) (TokenValueExt!3786 (__x!12885 Int)) (Broken!18935 (value!115177 List!20559)) (Object!3858) (End!3787) (Def!3787) (Underscore!3787) (Match!3787) (Else!3787) (Error!3787) (Case!3787) (If!3787) (Extends!3787) (Abstract!3787) (Class!3787) (Val!3787) (DelimiterValue!7574 (del!3847 List!20559)) (KeywordValue!3793 (value!115178 List!20559)) (CommentValue!7574 (value!115179 List!20559)) (WhitespaceValue!7574 (value!115180 List!20559)) (IndentationValue!3787 (value!115181 List!20559)) (String!23502) (Int32!3787) (Broken!18936 (value!115182 List!20559)) (Boolean!3788) (Unit!35128) (OperatorValue!3790 (op!3847 List!20559)) (IdentifierValue!7574 (value!115183 List!20559)) (IdentifierValue!7575 (value!115184 List!20559)) (WhitespaceValue!7575 (value!115185 List!20559)) (True!7574) (False!7574) (Broken!18937 (value!115186 List!20559)) (Broken!18938 (value!115187 List!20559)) (True!7575) (RightBrace!3787) (RightBracket!3787) (Colon!3787) (Null!3787) (Comma!3787) (LeftBracket!3787) (False!7575) (LeftBrace!3787) (ImaginaryLiteralValue!3787 (text!26955 List!20559)) (StringLiteralValue!11361 (value!115188 List!20559)) (EOFValue!3787 (value!115189 List!20559)) (IdentValue!3787 (value!115190 List!20559)) (DelimiterValue!7575 (value!115191 List!20559)) (DedentValue!3787 (value!115192 List!20559)) (NewLineValue!3787 (value!115193 List!20559)) (IntegerValue!11361 (value!115194 (_ BitVec 32)) (text!26956 List!20559)) (IntegerValue!11362 (value!115195 Int) (text!26957 List!20559)) (Times!3787) (Or!3787) (Equal!3787) (Minus!3787) (Broken!18939 (value!115196 List!20559)) (And!3787) (Div!3787) (LessEqual!3787) (Mod!3787) (Concat!8820) (Not!3787) (Plus!3787) (SpaceValue!3787 (value!115197 List!20559)) (IntegerValue!11363 (value!115198 Int) (text!26958 List!20559)) (StringLiteralValue!11362 (text!26959 List!20559)) (FloatLiteralValue!7575 (text!26960 List!20559)) (BytesLiteralValue!3787 (value!115199 List!20559)) (CommentValue!7575 (value!115200 List!20559)) (StringLiteralValue!11363 (value!115201 List!20559)) (ErrorTokenValue!3787 (msg!3848 List!20559)) )
))
(declare-datatypes ((C!10216 0))(
  ( (C!10217 (val!5834 Int)) )
))
(declare-datatypes ((Regex!5033 0))(
  ( (ElementMatch!5033 (c!302020 C!10216)) (Concat!8821 (regOne!10578 Regex!5033) (regTwo!10578 Regex!5033)) (EmptyExpr!5033) (Star!5033 (reg!5362 Regex!5033)) (EmptyLang!5033) (Union!5033 (regOne!10579 Regex!5033) (regTwo!10579 Regex!5033)) )
))
(declare-datatypes ((String!23503 0))(
  ( (String!23504 (value!115202 String)) )
))
(declare-datatypes ((List!20560 0))(
  ( (Nil!20488) (Cons!20488 (h!25889 C!10216) (t!172347 List!20560)) )
))
(declare-datatypes ((IArray!13565 0))(
  ( (IArray!13566 (innerList!6840 List!20560)) )
))
(declare-datatypes ((Conc!6780 0))(
  ( (Node!6780 (left!16458 Conc!6780) (right!16788 Conc!6780) (csize!13790 Int) (cheight!6991 Int)) (Leaf!9921 (xs!9656 IArray!13565) (csize!13791 Int)) (Empty!6780) )
))
(declare-datatypes ((BalanceConc!13482 0))(
  ( (BalanceConc!13483 (c!302021 Conc!6780)) )
))
(declare-datatypes ((TokenValueInjection!7190 0))(
  ( (TokenValueInjection!7191 (toValue!5242 Int) (toChars!5101 Int)) )
))
(declare-datatypes ((Rule!7142 0))(
  ( (Rule!7143 (regex!3671 Regex!5033) (tag!4085 String!23503) (isSeparator!3671 Bool) (transformation!3671 TokenValueInjection!7190)) )
))
(declare-datatypes ((Token!6896 0))(
  ( (Token!6897 (value!115203 TokenValue!3787) (rule!5865 Rule!7142) (size!16179 Int) (originalCharacters!4479 List!20560)) )
))
(declare-fun t!6207 () Token!6896)

(declare-fun e!1182748 () Bool)

(declare-fun e!1182755 () Bool)

(declare-fun b!1850817 () Bool)

(declare-fun inv!26871 (String!23503) Bool)

(declare-fun inv!26872 (TokenValueInjection!7190) Bool)

(assert (=> b!1850817 (= e!1182748 (and tp!523903 (inv!26871 (tag!4085 (rule!5865 t!6207))) (inv!26872 (transformation!3671 (rule!5865 t!6207))) e!1182755))))

(declare-fun b!1850818 () Bool)

(declare-fun res!830787 () Bool)

(declare-fun e!1182751 () Bool)

(assert (=> b!1850818 (=> (not res!830787) (not e!1182751))))

(declare-datatypes ((LexerInterface!3293 0))(
  ( (LexerInterfaceExt!3290 (__x!12886 Int)) (Lexer!3291) )
))
(declare-fun thiss!10908 () LexerInterface!3293)

(declare-datatypes ((List!20561 0))(
  ( (Nil!20489) (Cons!20489 (h!25890 Rule!7142) (t!172348 List!20561)) )
))
(declare-fun rs!164 () List!20561)

(declare-fun rulesInvariant!2961 (LexerInterface!3293 List!20561) Bool)

(assert (=> b!1850818 (= res!830787 (rulesInvariant!2961 thiss!10908 rs!164))))

(declare-fun mapIsEmpty!8758 () Bool)

(declare-fun mapRes!8758 () Bool)

(assert (=> mapIsEmpty!8758 mapRes!8758))

(declare-fun b!1850819 () Bool)

(declare-fun e!1182765 () Bool)

(declare-fun e!1182768 () Bool)

(assert (=> b!1850819 (= e!1182765 e!1182768)))

(declare-fun res!830791 () Bool)

(assert (=> start!184700 (=> (not res!830791) (not e!1182751))))

(get-info :version)

(assert (=> start!184700 (= res!830791 ((_ is Lexer!3291) thiss!10908))))

(assert (=> start!184700 e!1182751))

(declare-fun e!1182757 () Bool)

(assert (=> start!184700 e!1182757))

(declare-fun e!1182766 () Bool)

(declare-fun inv!26873 (Token!6896) Bool)

(assert (=> start!184700 (and (inv!26873 t!6207) e!1182766)))

(assert (=> start!184700 true))

(declare-datatypes ((array!6445 0))(
  ( (array!6446 (arr!2862 (Array (_ BitVec 32) (_ BitVec 64))) (size!16180 (_ BitVec 32))) )
))
(declare-datatypes ((List!20562 0))(
  ( (Nil!20490) (Cons!20490 (h!25891 Regex!5033) (t!172349 List!20562)) )
))
(declare-datatypes ((Context!1886 0))(
  ( (Context!1887 (exprs!1443 List!20562)) )
))
(declare-datatypes ((tuple3!1892 0))(
  ( (tuple3!1893 (_1!11284 Regex!5033) (_2!11284 Context!1886) (_3!1410 C!10216)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!19748 0))(
  ( (tuple2!19749 (_1!11285 tuple3!1892) (_2!11285 (InoxSet Context!1886))) )
))
(declare-datatypes ((List!20563 0))(
  ( (Nil!20491) (Cons!20491 (h!25892 tuple2!19748) (t!172350 List!20563)) )
))
(declare-datatypes ((array!6447 0))(
  ( (array!6448 (arr!2863 (Array (_ BitVec 32) List!20563)) (size!16181 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3756 0))(
  ( (LongMapFixedSize!3757 (defaultEntry!2238 Int) (mask!5562 (_ BitVec 32)) (extraKeys!2125 (_ BitVec 32)) (zeroValue!2135 List!20563) (minValue!2135 List!20563) (_size!3837 (_ BitVec 32)) (_keys!2172 array!6445) (_values!2157 array!6447) (_vacant!1939 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!7397 0))(
  ( (Cell!7398 (v!25988 LongMapFixedSize!3756)) )
))
(declare-datatypes ((MutLongMap!1878 0))(
  ( (LongMap!1878 (underlying!3969 Cell!7397)) (MutLongMapExt!1877 (__x!12887 Int)) )
))
(declare-datatypes ((Cell!7399 0))(
  ( (Cell!7400 (v!25989 MutLongMap!1878)) )
))
(declare-datatypes ((Hashable!1822 0))(
  ( (HashableExt!1821 (__x!12888 Int)) )
))
(declare-datatypes ((MutableMap!1822 0))(
  ( (MutableMapExt!1821 (__x!12889 Int)) (HashMap!1822 (underlying!3970 Cell!7399) (hashF!3741 Hashable!1822) (_size!3838 (_ BitVec 32)) (defaultValue!1982 Int)) )
))
(declare-datatypes ((CacheDown!1120 0))(
  ( (CacheDown!1121 (cache!2203 MutableMap!1822)) )
))
(declare-fun cacheDown!404 () CacheDown!1120)

(declare-fun e!1182754 () Bool)

(declare-fun inv!26874 (CacheDown!1120) Bool)

(assert (=> start!184700 (and (inv!26874 cacheDown!404) e!1182754)))

(declare-datatypes ((Hashable!1823 0))(
  ( (HashableExt!1822 (__x!12890 Int)) )
))
(declare-datatypes ((tuple2!19750 0))(
  ( (tuple2!19751 (_1!11286 Context!1886) (_2!11286 C!10216)) )
))
(declare-datatypes ((tuple2!19752 0))(
  ( (tuple2!19753 (_1!11287 tuple2!19750) (_2!11287 (InoxSet Context!1886))) )
))
(declare-datatypes ((List!20564 0))(
  ( (Nil!20492) (Cons!20492 (h!25893 tuple2!19752) (t!172351 List!20564)) )
))
(declare-datatypes ((array!6449 0))(
  ( (array!6450 (arr!2864 (Array (_ BitVec 32) List!20564)) (size!16182 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3758 0))(
  ( (LongMapFixedSize!3759 (defaultEntry!2239 Int) (mask!5563 (_ BitVec 32)) (extraKeys!2126 (_ BitVec 32)) (zeroValue!2136 List!20564) (minValue!2136 List!20564) (_size!3839 (_ BitVec 32)) (_keys!2173 array!6445) (_values!2158 array!6449) (_vacant!1940 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!7401 0))(
  ( (Cell!7402 (v!25990 LongMapFixedSize!3758)) )
))
(declare-datatypes ((MutLongMap!1879 0))(
  ( (LongMap!1879 (underlying!3971 Cell!7401)) (MutLongMapExt!1878 (__x!12891 Int)) )
))
(declare-datatypes ((Cell!7403 0))(
  ( (Cell!7404 (v!25991 MutLongMap!1879)) )
))
(declare-datatypes ((MutableMap!1823 0))(
  ( (MutableMapExt!1822 (__x!12892 Int)) (HashMap!1823 (underlying!3972 Cell!7403) (hashF!3742 Hashable!1823) (_size!3840 (_ BitVec 32)) (defaultValue!1983 Int)) )
))
(declare-datatypes ((CacheUp!1122 0))(
  ( (CacheUp!1123 (cache!2204 MutableMap!1823)) )
))
(declare-fun cacheUp!391 () CacheUp!1122)

(declare-fun e!1182749 () Bool)

(declare-fun inv!26875 (CacheUp!1122) Bool)

(assert (=> start!184700 (and (inv!26875 cacheUp!391) e!1182749)))

(declare-fun e!1182770 () Bool)

(declare-fun tp!523910 () Bool)

(declare-fun e!1182763 () Bool)

(declare-fun b!1850820 () Bool)

(assert (=> b!1850820 (= e!1182770 (and tp!523910 (inv!26871 (tag!4085 (h!25890 rs!164))) (inv!26872 (transformation!3671 (h!25890 rs!164))) e!1182763))))

(declare-fun b!1850821 () Bool)

(declare-fun tp!523896 () Bool)

(assert (=> b!1850821 (= e!1182757 (and e!1182770 tp!523896))))

(declare-fun mapIsEmpty!8759 () Bool)

(declare-fun mapRes!8759 () Bool)

(assert (=> mapIsEmpty!8759 mapRes!8759))

(declare-fun b!1850822 () Bool)

(declare-fun e!1182772 () Bool)

(declare-fun e!1182753 () Bool)

(declare-fun lt!715522 () MutLongMap!1879)

(assert (=> b!1850822 (= e!1182772 (and e!1182753 ((_ is LongMap!1879) lt!715522)))))

(assert (=> b!1850822 (= lt!715522 (v!25991 (underlying!3972 (cache!2204 cacheUp!391))))))

(declare-fun b!1850823 () Bool)

(declare-fun res!830789 () Bool)

(declare-fun e!1182759 () Bool)

(assert (=> b!1850823 (=> res!830789 e!1182759)))

(declare-datatypes ((List!20565 0))(
  ( (Nil!20493) (Cons!20493 (h!25894 Token!6896) (t!172352 List!20565)) )
))
(declare-datatypes ((IArray!13567 0))(
  ( (IArray!13568 (innerList!6841 List!20565)) )
))
(declare-datatypes ((Conc!6781 0))(
  ( (Node!6781 (left!16459 Conc!6781) (right!16789 Conc!6781) (csize!13792 Int) (cheight!6992 Int)) (Leaf!9922 (xs!9657 IArray!13567) (csize!13793 Int)) (Empty!6781) )
))
(declare-datatypes ((BalanceConc!13484 0))(
  ( (BalanceConc!13485 (c!302022 Conc!6781)) )
))
(declare-datatypes ((tuple2!19754 0))(
  ( (tuple2!19755 (_1!11288 BalanceConc!13484) (_2!11288 BalanceConc!13482)) )
))
(declare-datatypes ((tuple3!1894 0))(
  ( (tuple3!1895 (_1!11289 tuple2!19754) (_2!11289 CacheUp!1122) (_3!1411 CacheDown!1120)) )
))
(declare-fun lt!715519 () tuple3!1894)

(declare-fun apply!5450 (BalanceConc!13484 Int) Token!6896)

(assert (=> b!1850823 (= res!830789 (not (= (apply!5450 (_1!11288 (_1!11289 lt!715519)) 0) t!6207)))))

(declare-fun mapNonEmpty!8758 () Bool)

(declare-fun tp!523909 () Bool)

(declare-fun tp!523898 () Bool)

(assert (=> mapNonEmpty!8758 (= mapRes!8759 (and tp!523909 tp!523898))))

(declare-fun mapValue!8759 () List!20564)

(declare-fun mapKey!8759 () (_ BitVec 32))

(declare-fun mapRest!8758 () (Array (_ BitVec 32) List!20564))

(assert (=> mapNonEmpty!8758 (= (arr!2864 (_values!2158 (v!25990 (underlying!3971 (v!25991 (underlying!3972 (cache!2204 cacheUp!391))))))) (store mapRest!8758 mapKey!8759 mapValue!8759))))

(declare-fun b!1850824 () Bool)

(declare-fun tp!523907 () Bool)

(declare-fun inv!21 (TokenValue!3787) Bool)

(assert (=> b!1850824 (= e!1182766 (and (inv!21 (value!115203 t!6207)) e!1182748 tp!523907))))

(declare-fun b!1850825 () Bool)

(declare-fun e!1182767 () Bool)

(declare-fun e!1182762 () Bool)

(assert (=> b!1850825 (= e!1182767 e!1182762)))

(declare-fun mapNonEmpty!8759 () Bool)

(declare-fun tp!523902 () Bool)

(declare-fun tp!523911 () Bool)

(assert (=> mapNonEmpty!8759 (= mapRes!8758 (and tp!523902 tp!523911))))

(declare-fun mapKey!8758 () (_ BitVec 32))

(declare-fun mapValue!8758 () List!20563)

(declare-fun mapRest!8759 () (Array (_ BitVec 32) List!20563))

(assert (=> mapNonEmpty!8759 (= (arr!2863 (_values!2157 (v!25988 (underlying!3969 (v!25989 (underlying!3970 (cache!2203 cacheDown!404))))))) (store mapRest!8759 mapKey!8758 mapValue!8758))))

(declare-fun tp!523894 () Bool)

(declare-fun tp!523904 () Bool)

(declare-fun e!1182761 () Bool)

(declare-fun array_inv!2060 (array!6445) Bool)

(declare-fun array_inv!2061 (array!6449) Bool)

(assert (=> b!1850826 (= e!1182768 (and tp!523905 tp!523904 tp!523894 (array_inv!2060 (_keys!2173 (v!25990 (underlying!3971 (v!25991 (underlying!3972 (cache!2204 cacheUp!391))))))) (array_inv!2061 (_values!2158 (v!25990 (underlying!3971 (v!25991 (underlying!3972 (cache!2204 cacheUp!391))))))) e!1182761))))

(assert (=> b!1850827 (= e!1182755 (and tp!523914 tp!523893))))

(declare-fun b!1850828 () Bool)

(declare-fun e!1182760 () Bool)

(assert (=> b!1850828 (= e!1182749 e!1182760)))

(declare-fun tp!523912 () Bool)

(declare-fun tp!523895 () Bool)

(declare-fun e!1182752 () Bool)

(declare-fun e!1182746 () Bool)

(declare-fun array_inv!2062 (array!6447) Bool)

(assert (=> b!1850829 (= e!1182752 (and tp!523897 tp!523912 tp!523895 (array_inv!2060 (_keys!2172 (v!25988 (underlying!3969 (v!25989 (underlying!3970 (cache!2203 cacheDown!404))))))) (array_inv!2062 (_values!2157 (v!25988 (underlying!3969 (v!25989 (underlying!3970 (cache!2203 cacheDown!404))))))) e!1182746))))

(declare-fun b!1850830 () Bool)

(assert (=> b!1850830 (= e!1182753 e!1182765)))

(declare-fun e!1182758 () Bool)

(declare-fun e!1182747 () Bool)

(assert (=> b!1850831 (= e!1182758 (and e!1182747 tp!523899))))

(declare-fun b!1850832 () Bool)

(assert (=> b!1850832 (= e!1182762 e!1182752)))

(declare-fun b!1850833 () Bool)

(declare-fun lt!715520 () MutLongMap!1878)

(assert (=> b!1850833 (= e!1182747 (and e!1182767 ((_ is LongMap!1878) lt!715520)))))

(assert (=> b!1850833 (= lt!715520 (v!25989 (underlying!3970 (cache!2203 cacheDown!404))))))

(declare-fun b!1850834 () Bool)

(declare-fun tp!523901 () Bool)

(assert (=> b!1850834 (= e!1182746 (and tp!523901 mapRes!8758))))

(declare-fun condMapEmpty!8758 () Bool)

(declare-fun mapDefault!8758 () List!20563)

(assert (=> b!1850834 (= condMapEmpty!8758 (= (arr!2863 (_values!2157 (v!25988 (underlying!3969 (v!25989 (underlying!3970 (cache!2203 cacheDown!404))))))) ((as const (Array (_ BitVec 32) List!20563)) mapDefault!8758)))))

(declare-fun b!1850835 () Bool)

(assert (=> b!1850835 (= e!1182751 false)))

(declare-fun lt!715521 () Bool)

(assert (=> b!1850835 (= lt!715521 e!1182759)))

(declare-fun res!830788 () Bool)

(assert (=> b!1850835 (=> res!830788 e!1182759)))

(declare-fun size!16183 (BalanceConc!13484) Int)

(assert (=> b!1850835 (= res!830788 (not (= (size!16183 (_1!11288 (_1!11289 lt!715519))) 1)))))

(declare-fun lexV1Mem!8 (LexerInterface!3293 List!20561 BalanceConc!13482 CacheUp!1122 CacheDown!1120) tuple3!1894)

(declare-fun print!1428 (LexerInterface!3293 BalanceConc!13484) BalanceConc!13482)

(declare-fun singletonSeq!1800 (Token!6896) BalanceConc!13484)

(assert (=> b!1850835 (= lt!715519 (lexV1Mem!8 thiss!10908 rs!164 (print!1428 thiss!10908 (singletonSeq!1800 t!6207)) cacheUp!391 cacheDown!404))))

(assert (=> b!1850836 (= e!1182760 (and e!1182772 tp!523900))))

(declare-fun b!1850837 () Bool)

(declare-fun res!830790 () Bool)

(assert (=> b!1850837 (=> (not res!830790) (not e!1182751))))

(declare-fun isEmpty!12791 (List!20561) Bool)

(assert (=> b!1850837 (= res!830790 (not (isEmpty!12791 rs!164)))))

(declare-fun b!1850838 () Bool)

(declare-fun isEmpty!12792 (BalanceConc!13482) Bool)

(assert (=> b!1850838 (= e!1182759 (not (isEmpty!12792 (_2!11288 (_1!11289 lt!715519)))))))

(declare-fun b!1850839 () Bool)

(assert (=> b!1850839 (= e!1182754 e!1182758)))

(declare-fun b!1850840 () Bool)

(declare-fun tp!523906 () Bool)

(assert (=> b!1850840 (= e!1182761 (and tp!523906 mapRes!8759))))

(declare-fun condMapEmpty!8759 () Bool)

(declare-fun mapDefault!8759 () List!20564)

(assert (=> b!1850840 (= condMapEmpty!8759 (= (arr!2864 (_values!2158 (v!25990 (underlying!3971 (v!25991 (underlying!3972 (cache!2204 cacheUp!391))))))) ((as const (Array (_ BitVec 32) List!20564)) mapDefault!8759)))))

(assert (=> b!1850841 (= e!1182763 (and tp!523908 tp!523913))))

(assert (= (and start!184700 res!830791) b!1850837))

(assert (= (and b!1850837 res!830790) b!1850818))

(assert (= (and b!1850818 res!830787) b!1850835))

(assert (= (and b!1850835 (not res!830788)) b!1850823))

(assert (= (and b!1850823 (not res!830789)) b!1850838))

(assert (= b!1850820 b!1850841))

(assert (= b!1850821 b!1850820))

(assert (= (and start!184700 ((_ is Cons!20489) rs!164)) b!1850821))

(assert (= b!1850817 b!1850827))

(assert (= b!1850824 b!1850817))

(assert (= start!184700 b!1850824))

(assert (= (and b!1850834 condMapEmpty!8758) mapIsEmpty!8758))

(assert (= (and b!1850834 (not condMapEmpty!8758)) mapNonEmpty!8759))

(assert (= b!1850829 b!1850834))

(assert (= b!1850832 b!1850829))

(assert (= b!1850825 b!1850832))

(assert (= (and b!1850833 ((_ is LongMap!1878) (v!25989 (underlying!3970 (cache!2203 cacheDown!404))))) b!1850825))

(assert (= b!1850831 b!1850833))

(assert (= (and b!1850839 ((_ is HashMap!1822) (cache!2203 cacheDown!404))) b!1850831))

(assert (= start!184700 b!1850839))

(assert (= (and b!1850840 condMapEmpty!8759) mapIsEmpty!8759))

(assert (= (and b!1850840 (not condMapEmpty!8759)) mapNonEmpty!8758))

(assert (= b!1850826 b!1850840))

(assert (= b!1850819 b!1850826))

(assert (= b!1850830 b!1850819))

(assert (= (and b!1850822 ((_ is LongMap!1879) (v!25991 (underlying!3972 (cache!2204 cacheUp!391))))) b!1850830))

(assert (= b!1850836 b!1850822))

(assert (= (and b!1850828 ((_ is HashMap!1823) (cache!2204 cacheUp!391))) b!1850836))

(assert (= start!184700 b!1850828))

(declare-fun m!2277389 () Bool)

(assert (=> b!1850838 m!2277389))

(declare-fun m!2277391 () Bool)

(assert (=> b!1850829 m!2277391))

(declare-fun m!2277393 () Bool)

(assert (=> b!1850829 m!2277393))

(declare-fun m!2277395 () Bool)

(assert (=> mapNonEmpty!8758 m!2277395))

(declare-fun m!2277397 () Bool)

(assert (=> b!1850824 m!2277397))

(declare-fun m!2277399 () Bool)

(assert (=> mapNonEmpty!8759 m!2277399))

(declare-fun m!2277401 () Bool)

(assert (=> start!184700 m!2277401))

(declare-fun m!2277403 () Bool)

(assert (=> start!184700 m!2277403))

(declare-fun m!2277405 () Bool)

(assert (=> start!184700 m!2277405))

(declare-fun m!2277407 () Bool)

(assert (=> b!1850817 m!2277407))

(declare-fun m!2277409 () Bool)

(assert (=> b!1850817 m!2277409))

(declare-fun m!2277411 () Bool)

(assert (=> b!1850820 m!2277411))

(declare-fun m!2277413 () Bool)

(assert (=> b!1850820 m!2277413))

(declare-fun m!2277415 () Bool)

(assert (=> b!1850818 m!2277415))

(declare-fun m!2277417 () Bool)

(assert (=> b!1850823 m!2277417))

(declare-fun m!2277419 () Bool)

(assert (=> b!1850835 m!2277419))

(declare-fun m!2277421 () Bool)

(assert (=> b!1850835 m!2277421))

(assert (=> b!1850835 m!2277421))

(declare-fun m!2277423 () Bool)

(assert (=> b!1850835 m!2277423))

(assert (=> b!1850835 m!2277423))

(declare-fun m!2277425 () Bool)

(assert (=> b!1850835 m!2277425))

(declare-fun m!2277427 () Bool)

(assert (=> b!1850826 m!2277427))

(declare-fun m!2277429 () Bool)

(assert (=> b!1850826 m!2277429))

(declare-fun m!2277431 () Bool)

(assert (=> b!1850837 m!2277431))

(check-sat (not b_next!52453) b_and!143991 (not b!1850824) (not b!1850823) (not b_next!52459) b_and!143989 (not b!1850840) (not mapNonEmpty!8758) (not start!184700) (not b!1850837) (not b_next!52451) (not b!1850838) (not b!1850817) (not b!1850829) b_and!143983 (not b_next!52461) (not b!1850821) (not b!1850835) b_and!143977 (not b!1850826) b_and!143981 b_and!143987 (not b_next!52463) (not b_next!52465) (not mapNonEmpty!8759) (not b!1850834) (not b!1850818) (not b_next!52457) (not b!1850820) b_and!143985 (not b_next!52455) b_and!143979)
(check-sat (not b_next!52453) b_and!143991 (not b_next!52457) (not b_next!52459) b_and!143989 b_and!143985 (not b_next!52451) b_and!143983 (not b_next!52461) b_and!143977 b_and!143981 b_and!143987 (not b_next!52463) (not b_next!52465) (not b_next!52455) b_and!143979)

; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!144942 () Bool)

(assert start!144942)

(declare-fun b!1561390 () Bool)

(declare-fun b_free!41703 () Bool)

(declare-fun b_next!42407 () Bool)

(assert (=> b!1561390 (= b_free!41703 (not b_next!42407))))

(declare-fun tp!459506 () Bool)

(declare-fun b_and!108995 () Bool)

(assert (=> b!1561390 (= tp!459506 b_and!108995)))

(declare-fun b!1561384 () Bool)

(declare-fun b_free!41705 () Bool)

(declare-fun b_next!42409 () Bool)

(assert (=> b!1561384 (= b_free!41705 (not b_next!42409))))

(declare-fun tp!459530 () Bool)

(declare-fun b_and!108997 () Bool)

(assert (=> b!1561384 (= tp!459530 b_and!108997)))

(declare-fun b_free!41707 () Bool)

(declare-fun b_next!42411 () Bool)

(assert (=> b!1561384 (= b_free!41707 (not b_next!42411))))

(declare-fun tp!459521 () Bool)

(declare-fun b_and!108999 () Bool)

(assert (=> b!1561384 (= tp!459521 b_and!108999)))

(declare-fun b!1561398 () Bool)

(declare-fun b_free!41709 () Bool)

(declare-fun b_next!42413 () Bool)

(assert (=> b!1561398 (= b_free!41709 (not b_next!42413))))

(declare-fun tp!459507 () Bool)

(declare-fun b_and!109001 () Bool)

(assert (=> b!1561398 (= tp!459507 b_and!109001)))

(declare-fun b!1561403 () Bool)

(declare-fun b_free!41711 () Bool)

(declare-fun b_next!42415 () Bool)

(assert (=> b!1561403 (= b_free!41711 (not b_next!42415))))

(declare-fun tp!459528 () Bool)

(declare-fun b_and!109003 () Bool)

(assert (=> b!1561403 (= tp!459528 b_and!109003)))

(declare-fun b!1561392 () Bool)

(declare-fun b_free!41713 () Bool)

(declare-fun b_next!42417 () Bool)

(assert (=> b!1561392 (= b_free!41713 (not b_next!42417))))

(declare-fun tp!459525 () Bool)

(declare-fun b_and!109005 () Bool)

(assert (=> b!1561392 (= tp!459525 b_and!109005)))

(declare-fun b!1561375 () Bool)

(declare-fun b_free!41715 () Bool)

(declare-fun b_next!42419 () Bool)

(assert (=> b!1561375 (= b_free!41715 (not b_next!42419))))

(declare-fun tp!459514 () Bool)

(declare-fun b_and!109007 () Bool)

(assert (=> b!1561375 (= tp!459514 b_and!109007)))

(declare-fun b!1561372 () Bool)

(declare-fun b_free!41717 () Bool)

(declare-fun b_next!42421 () Bool)

(assert (=> b!1561372 (= b_free!41717 (not b_next!42421))))

(declare-fun tp!459526 () Bool)

(declare-fun b_and!109009 () Bool)

(assert (=> b!1561372 (= tp!459526 b_and!109009)))

(declare-fun b!1561414 () Bool)

(declare-fun e!1002644 () Bool)

(assert (=> b!1561414 (= e!1002644 true)))

(declare-fun b!1561413 () Bool)

(declare-fun e!1002643 () Bool)

(assert (=> b!1561413 (= e!1002643 e!1002644)))

(declare-fun b!1561382 () Bool)

(assert (=> b!1561382 e!1002643))

(assert (= b!1561413 b!1561414))

(assert (= b!1561382 b!1561413))

(declare-datatypes ((List!17006 0))(
  ( (Nil!16938) (Cons!16938 (h!22339 (_ BitVec 16)) (t!141545 List!17006)) )
))
(declare-datatypes ((TokenValue!3059 0))(
  ( (FloatLiteralValue!6118 (text!21858 List!17006)) (TokenValueExt!3058 (__x!11395 Int)) (Broken!15295 (value!94222 List!17006)) (Object!3126) (End!3059) (Def!3059) (Underscore!3059) (Match!3059) (Else!3059) (Error!3059) (Case!3059) (If!3059) (Extends!3059) (Abstract!3059) (Class!3059) (Val!3059) (DelimiterValue!6118 (del!3119 List!17006)) (KeywordValue!3065 (value!94223 List!17006)) (CommentValue!6118 (value!94224 List!17006)) (WhitespaceValue!6118 (value!94225 List!17006)) (IndentationValue!3059 (value!94226 List!17006)) (String!19582) (Int32!3059) (Broken!15296 (value!94227 List!17006)) (Boolean!3060) (Unit!26149) (OperatorValue!3062 (op!3119 List!17006)) (IdentifierValue!6118 (value!94228 List!17006)) (IdentifierValue!6119 (value!94229 List!17006)) (WhitespaceValue!6119 (value!94230 List!17006)) (True!6118) (False!6118) (Broken!15297 (value!94231 List!17006)) (Broken!15298 (value!94232 List!17006)) (True!6119) (RightBrace!3059) (RightBracket!3059) (Colon!3059) (Null!3059) (Comma!3059) (LeftBracket!3059) (False!6119) (LeftBrace!3059) (ImaginaryLiteralValue!3059 (text!21859 List!17006)) (StringLiteralValue!9177 (value!94233 List!17006)) (EOFValue!3059 (value!94234 List!17006)) (IdentValue!3059 (value!94235 List!17006)) (DelimiterValue!6119 (value!94236 List!17006)) (DedentValue!3059 (value!94237 List!17006)) (NewLineValue!3059 (value!94238 List!17006)) (IntegerValue!9177 (value!94239 (_ BitVec 32)) (text!21860 List!17006)) (IntegerValue!9178 (value!94240 Int) (text!21861 List!17006)) (Times!3059) (Or!3059) (Equal!3059) (Minus!3059) (Broken!15299 (value!94241 List!17006)) (And!3059) (Div!3059) (LessEqual!3059) (Mod!3059) (Concat!7356) (Not!3059) (Plus!3059) (SpaceValue!3059 (value!94242 List!17006)) (IntegerValue!9179 (value!94243 Int) (text!21862 List!17006)) (StringLiteralValue!9178 (text!21863 List!17006)) (FloatLiteralValue!6119 (text!21864 List!17006)) (BytesLiteralValue!3059 (value!94244 List!17006)) (CommentValue!6119 (value!94245 List!17006)) (StringLiteralValue!9179 (value!94246 List!17006)) (ErrorTokenValue!3059 (msg!3120 List!17006)) )
))
(declare-datatypes ((C!8772 0))(
  ( (C!8773 (val!4958 Int)) )
))
(declare-datatypes ((List!17007 0))(
  ( (Nil!16939) (Cons!16939 (h!22340 C!8772) (t!141546 List!17007)) )
))
(declare-datatypes ((IArray!11179 0))(
  ( (IArray!11180 (innerList!5647 List!17007)) )
))
(declare-datatypes ((Conc!5587 0))(
  ( (Node!5587 (left!13742 Conc!5587) (right!14072 Conc!5587) (csize!11404 Int) (cheight!5798 Int)) (Leaf!8281 (xs!8387 IArray!11179) (csize!11405 Int)) (Empty!5587) )
))
(declare-datatypes ((BalanceConc!11116 0))(
  ( (BalanceConc!11117 (c!253184 Conc!5587)) )
))
(declare-datatypes ((String!19583 0))(
  ( (String!19584 (value!94247 String)) )
))
(declare-datatypes ((Regex!4297 0))(
  ( (ElementMatch!4297 (c!253185 C!8772)) (Concat!7357 (regOne!9106 Regex!4297) (regTwo!9106 Regex!4297)) (EmptyExpr!4297) (Star!4297 (reg!4626 Regex!4297)) (EmptyLang!4297) (Union!4297 (regOne!9107 Regex!4297) (regTwo!9107 Regex!4297)) )
))
(declare-datatypes ((TokenValueInjection!5778 0))(
  ( (TokenValueInjection!5779 (toValue!4349 Int) (toChars!4208 Int)) )
))
(declare-datatypes ((Rule!5738 0))(
  ( (Rule!5739 (regex!2969 Regex!4297) (tag!3233 String!19583) (isSeparator!2969 Bool) (transformation!2969 TokenValueInjection!5778)) )
))
(declare-fun rule!240 () Rule!5738)

(declare-fun order!10031 () Int)

(declare-fun order!10033 () Int)

(declare-fun lambda!66052 () Int)

(declare-fun dynLambda!7546 (Int Int) Int)

(declare-fun dynLambda!7547 (Int Int) Int)

(assert (=> b!1561414 (< (dynLambda!7546 order!10031 (toValue!4349 (transformation!2969 rule!240))) (dynLambda!7547 order!10033 lambda!66052))))

(declare-fun order!10035 () Int)

(declare-fun dynLambda!7548 (Int Int) Int)

(assert (=> b!1561414 (< (dynLambda!7548 order!10035 (toChars!4208 (transformation!2969 rule!240))) (dynLambda!7547 order!10033 lambda!66052))))

(declare-fun b!1561363 () Bool)

(declare-fun e!1002625 () Bool)

(declare-fun e!1002631 () Bool)

(assert (=> b!1561363 (= e!1002625 e!1002631)))

(declare-fun res!696196 () Bool)

(assert (=> b!1561363 (=> res!696196 e!1002631)))

(declare-datatypes ((Token!5504 0))(
  ( (Token!5505 (value!94248 TokenValue!3059) (rule!4753 Rule!5738) (size!13744 Int) (originalCharacters!3783 List!17007)) )
))
(declare-datatypes ((tuple2!16542 0))(
  ( (tuple2!16543 (_1!9665 Token!5504) (_2!9665 BalanceConc!11116)) )
))
(declare-fun lt!540797 () tuple2!16542)

(declare-datatypes ((tuple2!16544 0))(
  ( (tuple2!16545 (_1!9666 Token!5504) (_2!9666 List!17007)) )
))
(declare-fun lt!540800 () tuple2!16544)

(assert (=> b!1561363 (= res!696196 (not (= (_1!9665 lt!540797) (_1!9666 lt!540800))))))

(declare-datatypes ((Option!3061 0))(
  ( (None!3060) (Some!3060 (v!23801 tuple2!16542)) )
))
(declare-fun lt!540809 () Option!3061)

(declare-fun get!4873 (Option!3061) tuple2!16542)

(assert (=> b!1561363 (= lt!540797 (get!4873 lt!540809))))

(declare-fun res!696203 () Bool)

(declare-fun e!1002605 () Bool)

(assert (=> start!144942 (=> (not res!696203) (not e!1002605))))

(declare-datatypes ((LexerInterface!2600 0))(
  ( (LexerInterfaceExt!2597 (__x!11396 Int)) (Lexer!2598) )
))
(declare-fun thiss!16438 () LexerInterface!2600)

(get-info :version)

(assert (=> start!144942 (= res!696203 ((_ is Lexer!2598) thiss!16438))))

(assert (=> start!144942 e!1002605))

(declare-fun totalInput!568 () BalanceConc!11116)

(declare-fun e!1002601 () Bool)

(declare-fun inv!22245 (BalanceConc!11116) Bool)

(assert (=> start!144942 (and (inv!22245 totalInput!568) e!1002601)))

(declare-datatypes ((List!17008 0))(
  ( (Nil!16940) (Cons!16940 (h!22341 Regex!4297) (t!141547 List!17008)) )
))
(declare-datatypes ((Context!1630 0))(
  ( (Context!1631 (exprs!1315 List!17008)) )
))
(declare-datatypes ((tuple2!16546 0))(
  ( (tuple2!16547 (_1!9667 Context!1630) (_2!9667 C!8772)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!16548 0))(
  ( (tuple2!16549 (_1!9668 tuple2!16546) (_2!9668 (InoxSet Context!1630))) )
))
(declare-datatypes ((List!17009 0))(
  ( (Nil!16941) (Cons!16941 (h!22342 tuple2!16548) (t!141548 List!17009)) )
))
(declare-datatypes ((array!6360 0))(
  ( (array!6361 (arr!2827 (Array (_ BitVec 32) List!17009)) (size!13745 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!1799 0))(
  ( (HashableExt!1798 (__x!11397 Int)) )
))
(declare-datatypes ((array!6362 0))(
  ( (array!6363 (arr!2828 (Array (_ BitVec 32) (_ BitVec 64))) (size!13746 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3710 0))(
  ( (LongMapFixedSize!3711 (defaultEntry!2215 Int) (mask!5092 (_ BitVec 32)) (extraKeys!2102 (_ BitVec 32)) (zeroValue!2112 List!17009) (minValue!2112 List!17009) (_size!3791 (_ BitVec 32)) (_keys!2149 array!6362) (_values!2134 array!6360) (_vacant!1916 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!7305 0))(
  ( (Cell!7306 (v!23802 LongMapFixedSize!3710)) )
))
(declare-datatypes ((MutLongMap!1855 0))(
  ( (LongMap!1855 (underlying!3919 Cell!7305)) (MutLongMapExt!1854 (__x!11398 Int)) )
))
(declare-datatypes ((Cell!7307 0))(
  ( (Cell!7308 (v!23803 MutLongMap!1855)) )
))
(declare-datatypes ((MutableMap!1799 0))(
  ( (MutableMapExt!1798 (__x!11399 Int)) (HashMap!1799 (underlying!3920 Cell!7307) (hashF!3718 Hashable!1799) (_size!3792 (_ BitVec 32)) (defaultValue!1959 Int)) )
))
(declare-datatypes ((CacheUp!1098 0))(
  ( (CacheUp!1099 (cache!2180 MutableMap!1799)) )
))
(declare-fun cacheUp!755 () CacheUp!1098)

(declare-fun e!1002610 () Bool)

(declare-fun inv!22246 (CacheUp!1098) Bool)

(assert (=> start!144942 (and (inv!22246 cacheUp!755) e!1002610)))

(declare-datatypes ((tuple3!1864 0))(
  ( (tuple3!1865 (_1!9669 (InoxSet Context!1630)) (_2!9669 Int) (_3!1394 Int)) )
))
(declare-datatypes ((tuple2!16550 0))(
  ( (tuple2!16551 (_1!9670 tuple3!1864) (_2!9670 Int)) )
))
(declare-datatypes ((List!17010 0))(
  ( (Nil!16942) (Cons!16942 (h!22343 tuple2!16550) (t!141549 List!17010)) )
))
(declare-datatypes ((array!6364 0))(
  ( (array!6365 (arr!2829 (Array (_ BitVec 32) List!17010)) (size!13747 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3712 0))(
  ( (LongMapFixedSize!3713 (defaultEntry!2216 Int) (mask!5093 (_ BitVec 32)) (extraKeys!2103 (_ BitVec 32)) (zeroValue!2113 List!17010) (minValue!2113 List!17010) (_size!3793 (_ BitVec 32)) (_keys!2150 array!6362) (_values!2135 array!6364) (_vacant!1917 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!7309 0))(
  ( (Cell!7310 (v!23804 LongMapFixedSize!3712)) )
))
(declare-datatypes ((Hashable!1800 0))(
  ( (HashableExt!1799 (__x!11400 Int)) )
))
(declare-datatypes ((MutLongMap!1856 0))(
  ( (LongMap!1856 (underlying!3921 Cell!7309)) (MutLongMapExt!1855 (__x!11401 Int)) )
))
(declare-datatypes ((Cell!7311 0))(
  ( (Cell!7312 (v!23805 MutLongMap!1856)) )
))
(declare-datatypes ((MutableMap!1800 0))(
  ( (MutableMapExt!1799 (__x!11402 Int)) (HashMap!1800 (underlying!3922 Cell!7311) (hashF!3719 Hashable!1800) (_size!3794 (_ BitVec 32)) (defaultValue!1960 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!524 0))(
  ( (CacheFurthestNullable!525 (cache!2181 MutableMap!1800) (totalInput!2500 BalanceConc!11116)) )
))
(declare-fun cacheFurthestNullable!103 () CacheFurthestNullable!524)

(declare-fun e!1002613 () Bool)

(declare-fun inv!22247 (CacheFurthestNullable!524) Bool)

(assert (=> start!144942 (and (inv!22247 cacheFurthestNullable!103) e!1002613)))

(declare-fun input!1676 () BalanceConc!11116)

(declare-fun e!1002638 () Bool)

(assert (=> start!144942 (and (inv!22245 input!1676) e!1002638)))

(declare-fun e!1002629 () Bool)

(assert (=> start!144942 e!1002629))

(declare-datatypes ((tuple3!1866 0))(
  ( (tuple3!1867 (_1!9671 Regex!4297) (_2!9671 Context!1630) (_3!1395 C!8772)) )
))
(declare-datatypes ((tuple2!16552 0))(
  ( (tuple2!16553 (_1!9672 tuple3!1866) (_2!9672 (InoxSet Context!1630))) )
))
(declare-datatypes ((List!17011 0))(
  ( (Nil!16943) (Cons!16943 (h!22344 tuple2!16552) (t!141550 List!17011)) )
))
(declare-datatypes ((array!6366 0))(
  ( (array!6367 (arr!2830 (Array (_ BitVec 32) List!17011)) (size!13748 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3714 0))(
  ( (LongMapFixedSize!3715 (defaultEntry!2217 Int) (mask!5094 (_ BitVec 32)) (extraKeys!2104 (_ BitVec 32)) (zeroValue!2114 List!17011) (minValue!2114 List!17011) (_size!3795 (_ BitVec 32)) (_keys!2151 array!6362) (_values!2136 array!6366) (_vacant!1918 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!7313 0))(
  ( (Cell!7314 (v!23806 LongMapFixedSize!3714)) )
))
(declare-datatypes ((MutLongMap!1857 0))(
  ( (LongMap!1857 (underlying!3923 Cell!7313)) (MutLongMapExt!1856 (__x!11403 Int)) )
))
(declare-datatypes ((Cell!7315 0))(
  ( (Cell!7316 (v!23807 MutLongMap!1857)) )
))
(declare-datatypes ((Hashable!1801 0))(
  ( (HashableExt!1800 (__x!11404 Int)) )
))
(declare-datatypes ((MutableMap!1801 0))(
  ( (MutableMapExt!1800 (__x!11405 Int)) (HashMap!1801 (underlying!3924 Cell!7315) (hashF!3720 Hashable!1801) (_size!3796 (_ BitVec 32)) (defaultValue!1961 Int)) )
))
(declare-datatypes ((CacheDown!1104 0))(
  ( (CacheDown!1105 (cache!2182 MutableMap!1801)) )
))
(declare-fun cacheDown!768 () CacheDown!1104)

(declare-fun e!1002624 () Bool)

(declare-fun inv!22248 (CacheDown!1104) Bool)

(assert (=> start!144942 (and (inv!22248 cacheDown!768) e!1002624)))

(assert (=> start!144942 true))

(declare-fun b!1561364 () Bool)

(declare-fun res!696208 () Bool)

(assert (=> b!1561364 (=> (not res!696208) (not e!1002605))))

(declare-fun valid!1486 (CacheUp!1098) Bool)

(assert (=> b!1561364 (= res!696208 (valid!1486 cacheUp!755))))

(declare-fun b!1561365 () Bool)

(declare-fun e!1002636 () Bool)

(declare-fun e!1002612 () Bool)

(assert (=> b!1561365 (= e!1002636 (not e!1002612))))

(declare-fun res!696199 () Bool)

(assert (=> b!1561365 (=> res!696199 e!1002612)))

(declare-fun semiInverseModEq!1125 (Int Int) Bool)

(assert (=> b!1561365 (= res!696199 (not (semiInverseModEq!1125 (toChars!4208 (transformation!2969 rule!240)) (toValue!4349 (transformation!2969 rule!240)))))))

(declare-datatypes ((Unit!26150 0))(
  ( (Unit!26151) )
))
(declare-fun lt!540802 () Unit!26150)

(declare-fun lemmaInv!438 (TokenValueInjection!5778) Unit!26150)

(assert (=> b!1561365 (= lt!540802 (lemmaInv!438 (transformation!2969 rule!240)))))

(declare-fun e!1002630 () Bool)

(assert (=> b!1561365 e!1002630))

(declare-fun res!696201 () Bool)

(assert (=> b!1561365 (=> res!696201 e!1002630)))

(declare-datatypes ((tuple2!16554 0))(
  ( (tuple2!16555 (_1!9673 List!17007) (_2!9673 List!17007)) )
))
(declare-fun lt!540812 () tuple2!16554)

(declare-fun isEmpty!10165 (List!17007) Bool)

(assert (=> b!1561365 (= res!696201 (isEmpty!10165 (_1!9673 lt!540812)))))

(declare-fun lt!540806 () List!17007)

(declare-fun findLongestMatchInner!344 (Regex!4297 List!17007 Int List!17007 List!17007 Int) tuple2!16554)

(declare-fun size!13749 (List!17007) Int)

(assert (=> b!1561365 (= lt!540812 (findLongestMatchInner!344 (regex!2969 rule!240) Nil!16939 (size!13749 Nil!16939) lt!540806 lt!540806 (size!13749 lt!540806)))))

(declare-fun lt!540804 () Unit!26150)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!328 (Regex!4297 List!17007) Unit!26150)

(assert (=> b!1561365 (= lt!540804 (longestMatchIsAcceptedByMatchOrIsEmpty!328 (regex!2969 rule!240) lt!540806))))

(declare-fun b!1561366 () Bool)

(declare-fun res!696206 () Bool)

(declare-fun e!1002633 () Bool)

(assert (=> b!1561366 (=> res!696206 e!1002633)))

(declare-fun lt!540808 () Bool)

(assert (=> b!1561366 (= res!696206 (not lt!540808))))

(declare-fun b!1561367 () Bool)

(declare-fun e!1002603 () Bool)

(declare-fun tp!459510 () Bool)

(declare-fun mapRes!8651 () Bool)

(assert (=> b!1561367 (= e!1002603 (and tp!459510 mapRes!8651))))

(declare-fun condMapEmpty!8650 () Bool)

(declare-fun mapDefault!8651 () List!17010)

(assert (=> b!1561367 (= condMapEmpty!8650 (= (arr!2829 (_values!2135 (v!23804 (underlying!3921 (v!23805 (underlying!3922 (cache!2181 cacheFurthestNullable!103))))))) ((as const (Array (_ BitVec 32) List!17010)) mapDefault!8651)))))

(declare-fun b!1561368 () Bool)

(declare-fun res!696198 () Bool)

(declare-fun e!1002619 () Bool)

(assert (=> b!1561368 (=> (not res!696198) (not e!1002619))))

(assert (=> b!1561368 (= res!696198 (= (totalInput!2500 cacheFurthestNullable!103) totalInput!568))))

(declare-fun b!1561369 () Bool)

(declare-fun e!1002611 () Bool)

(declare-fun tp!459505 () Bool)

(declare-fun inv!22249 (Conc!5587) Bool)

(assert (=> b!1561369 (= e!1002611 (and (inv!22249 (c!253184 (totalInput!2500 cacheFurthestNullable!103))) tp!459505))))

(declare-fun b!1561370 () Bool)

(declare-fun e!1002635 () Bool)

(assert (=> b!1561370 (= e!1002624 e!1002635)))

(declare-fun b!1561371 () Bool)

(declare-fun matchR!1889 (Regex!4297 List!17007) Bool)

(assert (=> b!1561371 (= e!1002630 (matchR!1889 (regex!2969 rule!240) (_1!9673 lt!540812)))))

(declare-fun tp!459523 () Bool)

(declare-fun e!1002623 () Bool)

(declare-fun tp!459518 () Bool)

(declare-fun array_inv!2035 (array!6362) Bool)

(declare-fun array_inv!2036 (array!6364) Bool)

(assert (=> b!1561372 (= e!1002623 (and tp!459526 tp!459518 tp!459523 (array_inv!2035 (_keys!2150 (v!23804 (underlying!3921 (v!23805 (underlying!3922 (cache!2181 cacheFurthestNullable!103))))))) (array_inv!2036 (_values!2135 (v!23804 (underlying!3921 (v!23805 (underlying!3922 (cache!2181 cacheFurthestNullable!103))))))) e!1002603))))

(declare-fun b!1561373 () Bool)

(assert (=> b!1561373 (= e!1002619 e!1002636)))

(declare-fun res!696192 () Bool)

(assert (=> b!1561373 (=> (not res!696192) (not e!1002636))))

(declare-datatypes ((tuple2!16556 0))(
  ( (tuple2!16557 (_1!9674 BalanceConc!11116) (_2!9674 BalanceConc!11116)) )
))
(declare-datatypes ((tuple4!924 0))(
  ( (tuple4!925 (_1!9675 tuple2!16556) (_2!9675 CacheUp!1098) (_3!1396 CacheDown!1104) (_4!462 CacheFurthestNullable!524)) )
))
(declare-fun lt!540813 () tuple4!924)

(declare-fun isEmpty!10166 (BalanceConc!11116) Bool)

(assert (=> b!1561373 (= res!696192 (not (isEmpty!10166 (_1!9674 (_1!9675 lt!540813)))))))

(declare-fun findLongestMatchWithZipperSequenceV3Mem!63 (Regex!4297 BalanceConc!11116 BalanceConc!11116 CacheUp!1098 CacheDown!1104 CacheFurthestNullable!524) tuple4!924)

(assert (=> b!1561373 (= lt!540813 (findLongestMatchWithZipperSequenceV3Mem!63 (regex!2969 rule!240) input!1676 totalInput!568 cacheUp!755 cacheDown!768 cacheFurthestNullable!103))))

(declare-fun b!1561374 () Bool)

(declare-fun e!1002617 () Bool)

(declare-fun e!1002632 () Bool)

(declare-fun lt!540793 () MutLongMap!1855)

(assert (=> b!1561374 (= e!1002617 (and e!1002632 ((_ is LongMap!1855) lt!540793)))))

(assert (=> b!1561374 (= lt!540793 (v!23803 (underlying!3920 (cache!2180 cacheUp!755))))))

(declare-fun mapNonEmpty!8649 () Bool)

(declare-fun mapRes!8650 () Bool)

(declare-fun tp!459529 () Bool)

(declare-fun tp!459511 () Bool)

(assert (=> mapNonEmpty!8649 (= mapRes!8650 (and tp!459529 tp!459511))))

(declare-fun mapValue!8650 () List!17009)

(declare-fun mapKey!8650 () (_ BitVec 32))

(declare-fun mapRest!8651 () (Array (_ BitVec 32) List!17009))

(assert (=> mapNonEmpty!8649 (= (arr!2827 (_values!2134 (v!23802 (underlying!3919 (v!23803 (underlying!3920 (cache!2180 cacheUp!755))))))) (store mapRest!8651 mapKey!8650 mapValue!8650))))

(declare-fun tp!459527 () Bool)

(declare-fun tp!459519 () Bool)

(declare-fun e!1002602 () Bool)

(declare-fun e!1002607 () Bool)

(declare-fun array_inv!2037 (array!6360) Bool)

(assert (=> b!1561375 (= e!1002607 (and tp!459514 tp!459519 tp!459527 (array_inv!2035 (_keys!2149 (v!23802 (underlying!3919 (v!23803 (underlying!3920 (cache!2180 cacheUp!755))))))) (array_inv!2037 (_values!2134 (v!23802 (underlying!3919 (v!23803 (underlying!3920 (cache!2180 cacheUp!755))))))) e!1002602))))

(declare-fun b!1561376 () Bool)

(declare-fun e!1002614 () Bool)

(assert (=> b!1561376 (= e!1002610 e!1002614)))

(declare-fun b!1561377 () Bool)

(declare-fun res!696202 () Bool)

(assert (=> b!1561377 (=> res!696202 e!1002633)))

(declare-fun lt!540801 () BalanceConc!11116)

(declare-fun lt!540810 () List!17007)

(declare-fun list!6518 (BalanceConc!11116) List!17007)

(assert (=> b!1561377 (= res!696202 (not (= (list!6518 lt!540801) lt!540810)))))

(declare-fun b!1561378 () Bool)

(declare-fun tp!459515 () Bool)

(assert (=> b!1561378 (= e!1002638 (and (inv!22249 (c!253184 input!1676)) tp!459515))))

(declare-fun b!1561379 () Bool)

(declare-fun e!1002600 () Bool)

(assert (=> b!1561379 (= e!1002633 e!1002600)))

(declare-fun res!696204 () Bool)

(assert (=> b!1561379 (=> res!696204 e!1002600)))

(declare-fun lt!540796 () TokenValue!3059)

(declare-fun apply!4122 (TokenValueInjection!5778 BalanceConc!11116) TokenValue!3059)

(assert (=> b!1561379 (= res!696204 (not (= (apply!4122 (transformation!2969 rule!240) lt!540801) lt!540796)))))

(declare-fun lt!540795 () Unit!26150)

(declare-fun lemmaEqSameImage!158 (TokenValueInjection!5778 BalanceConc!11116 BalanceConc!11116) Unit!26150)

(assert (=> b!1561379 (= lt!540795 (lemmaEqSameImage!158 (transformation!2969 rule!240) (_1!9674 (_1!9675 lt!540813)) lt!540801))))

(declare-fun b!1561380 () Bool)

(declare-fun e!1002634 () Bool)

(declare-fun tp!459517 () Bool)

(declare-fun mapRes!8649 () Bool)

(assert (=> b!1561380 (= e!1002634 (and tp!459517 mapRes!8649))))

(declare-fun condMapEmpty!8651 () Bool)

(declare-fun mapDefault!8650 () List!17011)

(assert (=> b!1561380 (= condMapEmpty!8651 (= (arr!2830 (_values!2136 (v!23806 (underlying!3923 (v!23807 (underlying!3924 (cache!2182 cacheDown!768))))))) ((as const (Array (_ BitVec 32) List!17011)) mapDefault!8650)))))

(declare-fun b!1561381 () Bool)

(declare-fun lt!540811 () Token!5504)

(declare-fun inv!22250 (Token!5504) Bool)

(assert (=> b!1561381 (= e!1002631 (inv!22250 lt!540811))))

(declare-fun res!696195 () Bool)

(assert (=> b!1561382 (=> res!696195 e!1002612)))

(declare-fun Forall!620 (Int) Bool)

(assert (=> b!1561382 (= res!696195 (not (Forall!620 lambda!66052)))))

(declare-fun b!1561383 () Bool)

(declare-fun e!1002616 () Bool)

(declare-fun e!1002637 () Bool)

(assert (=> b!1561383 (= e!1002616 e!1002637)))

(declare-fun e!1002604 () Bool)

(assert (=> b!1561384 (= e!1002604 (and tp!459530 tp!459521))))

(declare-fun b!1561385 () Bool)

(assert (=> b!1561385 (= e!1002605 e!1002619)))

(declare-fun res!696193 () Bool)

(assert (=> b!1561385 (=> (not res!696193) (not e!1002619))))

(declare-fun isSuffix!388 (List!17007 List!17007) Bool)

(assert (=> b!1561385 (= res!696193 (isSuffix!388 lt!540806 (list!6518 totalInput!568)))))

(assert (=> b!1561385 (= lt!540806 (list!6518 input!1676))))

(declare-fun mapIsEmpty!8649 () Bool)

(assert (=> mapIsEmpty!8649 mapRes!8650))

(declare-fun b!1561386 () Bool)

(declare-fun res!696205 () Bool)

(assert (=> b!1561386 (=> (not res!696205) (not e!1002605))))

(declare-fun valid!1487 (CacheDown!1104) Bool)

(assert (=> b!1561386 (= res!696205 (valid!1487 cacheDown!768))))

(declare-fun b!1561387 () Bool)

(assert (=> b!1561387 (= e!1002612 e!1002633)))

(declare-fun res!696207 () Bool)

(assert (=> b!1561387 (=> res!696207 e!1002633)))

(declare-datatypes ((Option!3062 0))(
  ( (None!3061) (Some!3061 (v!23808 tuple2!16544)) )
))
(declare-fun lt!540807 () Option!3062)

(declare-fun isDefined!2461 (Option!3062) Bool)

(assert (=> b!1561387 (= res!696207 (not (= lt!540808 (isDefined!2461 lt!540807))))))

(declare-fun isDefined!2462 (Option!3061) Bool)

(assert (=> b!1561387 (= lt!540808 (isDefined!2462 lt!540809))))

(declare-fun maxPrefixOneRule!714 (LexerInterface!2600 Rule!5738 List!17007) Option!3062)

(assert (=> b!1561387 (= lt!540807 (maxPrefixOneRule!714 thiss!16438 rule!240 lt!540806))))

(assert (=> b!1561387 (= lt!540809 (Some!3060 (tuple2!16543 lt!540811 (_2!9674 (_1!9675 lt!540813)))))))

(declare-fun lt!540794 () Int)

(assert (=> b!1561387 (= lt!540811 (Token!5505 lt!540796 rule!240 lt!540794 lt!540810))))

(declare-fun size!13750 (BalanceConc!11116) Int)

(assert (=> b!1561387 (= lt!540794 (size!13750 (_1!9674 (_1!9675 lt!540813))))))

(assert (=> b!1561387 (= lt!540796 (apply!4122 (transformation!2969 rule!240) (_1!9674 (_1!9675 lt!540813))))))

(declare-fun lt!540798 () Unit!26150)

(declare-fun ForallOf!223 (Int BalanceConc!11116) Unit!26150)

(assert (=> b!1561387 (= lt!540798 (ForallOf!223 lambda!66052 lt!540801))))

(declare-fun seqFromList!1786 (List!17007) BalanceConc!11116)

(assert (=> b!1561387 (= lt!540801 (seqFromList!1786 lt!540810))))

(assert (=> b!1561387 (= lt!540810 (list!6518 (_1!9674 (_1!9675 lt!540813))))))

(declare-fun lt!540805 () Unit!26150)

(assert (=> b!1561387 (= lt!540805 (ForallOf!223 lambda!66052 (_1!9674 (_1!9675 lt!540813))))))

(declare-fun b!1561388 () Bool)

(declare-fun res!696197 () Bool)

(assert (=> b!1561388 (=> (not res!696197) (not e!1002605))))

(declare-fun valid!1488 (CacheFurthestNullable!524) Bool)

(assert (=> b!1561388 (= res!696197 (valid!1488 cacheFurthestNullable!103))))

(declare-fun b!1561389 () Bool)

(declare-fun e!1002622 () Bool)

(declare-fun e!1002620 () Bool)

(declare-fun lt!540799 () MutLongMap!1857)

(assert (=> b!1561389 (= e!1002622 (and e!1002620 ((_ is LongMap!1857) lt!540799)))))

(assert (=> b!1561389 (= lt!540799 (v!23807 (underlying!3924 (cache!2182 cacheDown!768))))))

(declare-fun tp!459504 () Bool)

(declare-fun tp!459524 () Bool)

(declare-fun array_inv!2038 (array!6366) Bool)

(assert (=> b!1561390 (= e!1002637 (and tp!459506 tp!459524 tp!459504 (array_inv!2035 (_keys!2151 (v!23806 (underlying!3923 (v!23807 (underlying!3924 (cache!2182 cacheDown!768))))))) (array_inv!2038 (_values!2136 (v!23806 (underlying!3923 (v!23807 (underlying!3924 (cache!2182 cacheDown!768))))))) e!1002634))))

(declare-fun b!1561391 () Bool)

(declare-fun res!696200 () Bool)

(assert (=> b!1561391 (=> res!696200 e!1002631)))

(assert (=> b!1561391 (= res!696200 (not (= (list!6518 (_2!9665 lt!540797)) (_2!9666 lt!540800))))))

(assert (=> b!1561392 (= e!1002635 (and e!1002622 tp!459525))))

(declare-fun b!1561393 () Bool)

(declare-fun e!1002606 () Bool)

(assert (=> b!1561393 (= e!1002606 e!1002623)))

(declare-fun mapIsEmpty!8650 () Bool)

(assert (=> mapIsEmpty!8650 mapRes!8651))

(declare-fun b!1561394 () Bool)

(declare-fun e!1002618 () Bool)

(assert (=> b!1561394 (= e!1002618 e!1002607)))

(declare-fun tp!459520 () Bool)

(declare-fun b!1561395 () Bool)

(declare-fun inv!22244 (String!19583) Bool)

(declare-fun inv!22251 (TokenValueInjection!5778) Bool)

(assert (=> b!1561395 (= e!1002629 (and tp!459520 (inv!22244 (tag!3233 rule!240)) (inv!22251 (transformation!2969 rule!240)) e!1002604))))

(declare-fun b!1561396 () Bool)

(declare-fun e!1002626 () Bool)

(assert (=> b!1561396 (= e!1002626 e!1002606)))

(declare-fun b!1561397 () Bool)

(assert (=> b!1561397 (= e!1002632 e!1002618)))

(declare-fun e!1002615 () Bool)

(declare-fun e!1002609 () Bool)

(assert (=> b!1561398 (= e!1002615 (and e!1002609 tp!459507))))

(declare-fun mapNonEmpty!8650 () Bool)

(declare-fun tp!459512 () Bool)

(declare-fun tp!459522 () Bool)

(assert (=> mapNonEmpty!8650 (= mapRes!8649 (and tp!459512 tp!459522))))

(declare-fun mapRest!8650 () (Array (_ BitVec 32) List!17011))

(declare-fun mapKey!8651 () (_ BitVec 32))

(declare-fun mapValue!8649 () List!17011)

(assert (=> mapNonEmpty!8650 (= (arr!2830 (_values!2136 (v!23806 (underlying!3923 (v!23807 (underlying!3924 (cache!2182 cacheDown!768))))))) (store mapRest!8650 mapKey!8651 mapValue!8649))))

(declare-fun b!1561399 () Bool)

(assert (=> b!1561399 (= e!1002600 e!1002625)))

(declare-fun res!696194 () Bool)

(assert (=> b!1561399 (=> res!696194 e!1002625)))

(assert (=> b!1561399 (= res!696194 (or (not (= (value!94248 (_1!9666 lt!540800)) lt!540796)) (not (= (rule!4753 (_1!9666 lt!540800)) rule!240)) (not (= (size!13744 (_1!9666 lt!540800)) lt!540794)) (not (= (originalCharacters!3783 (_1!9666 lt!540800)) lt!540810)) (not (= lt!540811 (_1!9666 lt!540800)))))))

(declare-fun get!4874 (Option!3062) tuple2!16544)

(assert (=> b!1561399 (= lt!540800 (get!4874 lt!540807))))

(declare-fun mapIsEmpty!8651 () Bool)

(assert (=> mapIsEmpty!8651 mapRes!8649))

(declare-fun b!1561400 () Bool)

(declare-fun tp!459508 () Bool)

(assert (=> b!1561400 (= e!1002601 (and (inv!22249 (c!253184 totalInput!568)) tp!459508))))

(declare-fun b!1561401 () Bool)

(declare-fun tp!459516 () Bool)

(assert (=> b!1561401 (= e!1002602 (and tp!459516 mapRes!8650))))

(declare-fun condMapEmpty!8649 () Bool)

(declare-fun mapDefault!8649 () List!17009)

(assert (=> b!1561401 (= condMapEmpty!8649 (= (arr!2827 (_values!2134 (v!23802 (underlying!3919 (v!23803 (underlying!3920 (cache!2180 cacheUp!755))))))) ((as const (Array (_ BitVec 32) List!17009)) mapDefault!8649)))))

(declare-fun b!1561402 () Bool)

(declare-fun lt!540803 () MutLongMap!1856)

(assert (=> b!1561402 (= e!1002609 (and e!1002626 ((_ is LongMap!1856) lt!540803)))))

(assert (=> b!1561402 (= lt!540803 (v!23805 (underlying!3922 (cache!2181 cacheFurthestNullable!103))))))

(assert (=> b!1561403 (= e!1002614 (and e!1002617 tp!459528))))

(declare-fun b!1561404 () Bool)

(assert (=> b!1561404 (= e!1002620 e!1002616)))

(declare-fun mapNonEmpty!8651 () Bool)

(declare-fun tp!459513 () Bool)

(declare-fun tp!459509 () Bool)

(assert (=> mapNonEmpty!8651 (= mapRes!8651 (and tp!459513 tp!459509))))

(declare-fun mapRest!8649 () (Array (_ BitVec 32) List!17010))

(declare-fun mapKey!8649 () (_ BitVec 32))

(declare-fun mapValue!8651 () List!17010)

(assert (=> mapNonEmpty!8651 (= (arr!2829 (_values!2135 (v!23804 (underlying!3921 (v!23805 (underlying!3922 (cache!2181 cacheFurthestNullable!103))))))) (store mapRest!8649 mapKey!8649 mapValue!8651))))

(declare-fun b!1561405 () Bool)

(assert (=> b!1561405 (= e!1002613 (and e!1002615 (inv!22245 (totalInput!2500 cacheFurthestNullable!103)) e!1002611))))

(declare-fun b!1561406 () Bool)

(declare-fun res!696191 () Bool)

(assert (=> b!1561406 (=> (not res!696191) (not e!1002605))))

(declare-fun ruleValid!697 (LexerInterface!2600 Rule!5738) Bool)

(assert (=> b!1561406 (= res!696191 (ruleValid!697 thiss!16438 rule!240))))

(assert (= (and start!144942 res!696203) b!1561406))

(assert (= (and b!1561406 res!696191) b!1561364))

(assert (= (and b!1561364 res!696208) b!1561386))

(assert (= (and b!1561386 res!696205) b!1561388))

(assert (= (and b!1561388 res!696197) b!1561385))

(assert (= (and b!1561385 res!696193) b!1561368))

(assert (= (and b!1561368 res!696198) b!1561373))

(assert (= (and b!1561373 res!696192) b!1561365))

(assert (= (and b!1561365 (not res!696201)) b!1561371))

(assert (= (and b!1561365 (not res!696199)) b!1561382))

(assert (= (and b!1561382 (not res!696195)) b!1561387))

(assert (= (and b!1561387 (not res!696207)) b!1561366))

(assert (= (and b!1561366 (not res!696206)) b!1561377))

(assert (= (and b!1561377 (not res!696202)) b!1561379))

(assert (= (and b!1561379 (not res!696204)) b!1561399))

(assert (= (and b!1561399 (not res!696194)) b!1561363))

(assert (= (and b!1561363 (not res!696196)) b!1561391))

(assert (= (and b!1561391 (not res!696200)) b!1561381))

(assert (= start!144942 b!1561400))

(assert (= (and b!1561401 condMapEmpty!8649) mapIsEmpty!8649))

(assert (= (and b!1561401 (not condMapEmpty!8649)) mapNonEmpty!8649))

(assert (= b!1561375 b!1561401))

(assert (= b!1561394 b!1561375))

(assert (= b!1561397 b!1561394))

(assert (= (and b!1561374 ((_ is LongMap!1855) (v!23803 (underlying!3920 (cache!2180 cacheUp!755))))) b!1561397))

(assert (= b!1561403 b!1561374))

(assert (= (and b!1561376 ((_ is HashMap!1799) (cache!2180 cacheUp!755))) b!1561403))

(assert (= start!144942 b!1561376))

(assert (= (and b!1561367 condMapEmpty!8650) mapIsEmpty!8650))

(assert (= (and b!1561367 (not condMapEmpty!8650)) mapNonEmpty!8651))

(assert (= b!1561372 b!1561367))

(assert (= b!1561393 b!1561372))

(assert (= b!1561396 b!1561393))

(assert (= (and b!1561402 ((_ is LongMap!1856) (v!23805 (underlying!3922 (cache!2181 cacheFurthestNullable!103))))) b!1561396))

(assert (= b!1561398 b!1561402))

(assert (= (and b!1561405 ((_ is HashMap!1800) (cache!2181 cacheFurthestNullable!103))) b!1561398))

(assert (= b!1561405 b!1561369))

(assert (= start!144942 b!1561405))

(assert (= start!144942 b!1561378))

(assert (= b!1561395 b!1561384))

(assert (= start!144942 b!1561395))

(assert (= (and b!1561380 condMapEmpty!8651) mapIsEmpty!8651))

(assert (= (and b!1561380 (not condMapEmpty!8651)) mapNonEmpty!8650))

(assert (= b!1561390 b!1561380))

(assert (= b!1561383 b!1561390))

(assert (= b!1561404 b!1561383))

(assert (= (and b!1561389 ((_ is LongMap!1857) (v!23807 (underlying!3924 (cache!2182 cacheDown!768))))) b!1561404))

(assert (= b!1561392 b!1561389))

(assert (= (and b!1561370 ((_ is HashMap!1801) (cache!2182 cacheDown!768))) b!1561392))

(assert (= start!144942 b!1561370))

(declare-fun m!1832808 () Bool)

(assert (=> b!1561375 m!1832808))

(declare-fun m!1832810 () Bool)

(assert (=> b!1561375 m!1832810))

(declare-fun m!1832812 () Bool)

(assert (=> b!1561400 m!1832812))

(declare-fun m!1832814 () Bool)

(assert (=> b!1561379 m!1832814))

(declare-fun m!1832816 () Bool)

(assert (=> b!1561379 m!1832816))

(declare-fun m!1832818 () Bool)

(assert (=> b!1561406 m!1832818))

(declare-fun m!1832820 () Bool)

(assert (=> b!1561381 m!1832820))

(declare-fun m!1832822 () Bool)

(assert (=> b!1561372 m!1832822))

(declare-fun m!1832824 () Bool)

(assert (=> b!1561372 m!1832824))

(declare-fun m!1832826 () Bool)

(assert (=> b!1561391 m!1832826))

(declare-fun m!1832828 () Bool)

(assert (=> b!1561363 m!1832828))

(declare-fun m!1832830 () Bool)

(assert (=> mapNonEmpty!8651 m!1832830))

(declare-fun m!1832832 () Bool)

(assert (=> b!1561388 m!1832832))

(declare-fun m!1832834 () Bool)

(assert (=> b!1561364 m!1832834))

(declare-fun m!1832836 () Bool)

(assert (=> b!1561390 m!1832836))

(declare-fun m!1832838 () Bool)

(assert (=> b!1561390 m!1832838))

(declare-fun m!1832840 () Bool)

(assert (=> b!1561405 m!1832840))

(declare-fun m!1832842 () Bool)

(assert (=> b!1561373 m!1832842))

(declare-fun m!1832844 () Bool)

(assert (=> b!1561373 m!1832844))

(declare-fun m!1832846 () Bool)

(assert (=> b!1561378 m!1832846))

(declare-fun m!1832848 () Bool)

(assert (=> b!1561365 m!1832848))

(declare-fun m!1832850 () Bool)

(assert (=> b!1561365 m!1832850))

(declare-fun m!1832852 () Bool)

(assert (=> b!1561365 m!1832852))

(declare-fun m!1832854 () Bool)

(assert (=> b!1561365 m!1832854))

(declare-fun m!1832856 () Bool)

(assert (=> b!1561365 m!1832856))

(declare-fun m!1832858 () Bool)

(assert (=> b!1561365 m!1832858))

(assert (=> b!1561365 m!1832850))

(assert (=> b!1561365 m!1832852))

(declare-fun m!1832860 () Bool)

(assert (=> b!1561365 m!1832860))

(declare-fun m!1832862 () Bool)

(assert (=> b!1561371 m!1832862))

(declare-fun m!1832864 () Bool)

(assert (=> b!1561386 m!1832864))

(declare-fun m!1832866 () Bool)

(assert (=> b!1561382 m!1832866))

(declare-fun m!1832868 () Bool)

(assert (=> b!1561369 m!1832868))

(declare-fun m!1832870 () Bool)

(assert (=> b!1561387 m!1832870))

(declare-fun m!1832872 () Bool)

(assert (=> b!1561387 m!1832872))

(declare-fun m!1832874 () Bool)

(assert (=> b!1561387 m!1832874))

(declare-fun m!1832876 () Bool)

(assert (=> b!1561387 m!1832876))

(declare-fun m!1832878 () Bool)

(assert (=> b!1561387 m!1832878))

(declare-fun m!1832880 () Bool)

(assert (=> b!1561387 m!1832880))

(declare-fun m!1832882 () Bool)

(assert (=> b!1561387 m!1832882))

(declare-fun m!1832884 () Bool)

(assert (=> b!1561387 m!1832884))

(declare-fun m!1832886 () Bool)

(assert (=> b!1561387 m!1832886))

(declare-fun m!1832888 () Bool)

(assert (=> b!1561377 m!1832888))

(declare-fun m!1832890 () Bool)

(assert (=> b!1561395 m!1832890))

(declare-fun m!1832892 () Bool)

(assert (=> b!1561395 m!1832892))

(declare-fun m!1832894 () Bool)

(assert (=> b!1561399 m!1832894))

(declare-fun m!1832896 () Bool)

(assert (=> b!1561385 m!1832896))

(assert (=> b!1561385 m!1832896))

(declare-fun m!1832898 () Bool)

(assert (=> b!1561385 m!1832898))

(declare-fun m!1832900 () Bool)

(assert (=> b!1561385 m!1832900))

(declare-fun m!1832902 () Bool)

(assert (=> mapNonEmpty!8649 m!1832902))

(declare-fun m!1832904 () Bool)

(assert (=> start!144942 m!1832904))

(declare-fun m!1832906 () Bool)

(assert (=> start!144942 m!1832906))

(declare-fun m!1832908 () Bool)

(assert (=> start!144942 m!1832908))

(declare-fun m!1832910 () Bool)

(assert (=> start!144942 m!1832910))

(declare-fun m!1832912 () Bool)

(assert (=> start!144942 m!1832912))

(declare-fun m!1832914 () Bool)

(assert (=> mapNonEmpty!8650 m!1832914))

(check-sat (not mapNonEmpty!8649) (not b_next!42419) (not b_next!42417) (not b!1561388) (not b_next!42409) b_and!108999 (not b!1561371) (not b!1561405) (not b!1561401) (not b!1561372) b_and!109007 (not b!1561390) (not mapNonEmpty!8651) (not b!1561378) (not b!1561381) (not b!1561387) (not b!1561406) (not b!1561391) (not b!1561367) (not b_next!42421) b_and!108995 (not b_next!42413) (not b_next!42411) (not b!1561369) (not b!1561395) (not b!1561364) b_and!109001 b_and!109009 (not b!1561363) (not start!144942) (not b!1561382) (not b!1561380) (not b!1561400) (not b_next!42415) b_and!108997 (not b!1561399) (not b!1561379) (not b!1561373) (not b!1561377) (not b!1561375) (not b!1561365) (not mapNonEmpty!8650) (not b!1561385) (not b_next!42407) (not b!1561386) b_and!109005 b_and!109003)
(check-sat b_and!109007 (not b_next!42419) (not b_next!42421) (not b_next!42417) (not b_next!42411) (not b_next!42409) b_and!108999 (not b_next!42407) b_and!108995 (not b_next!42413) b_and!109001 b_and!109009 (not b_next!42415) b_and!108997 b_and!109005 b_and!109003)
(get-model)

(declare-fun d!462382 () Bool)

(declare-fun validCacheMapDown!171 (MutableMap!1801) Bool)

(assert (=> d!462382 (= (valid!1487 cacheDown!768) (validCacheMapDown!171 (cache!2182 cacheDown!768)))))

(declare-fun bs!388906 () Bool)

(assert (= bs!388906 d!462382))

(declare-fun m!1832916 () Bool)

(assert (=> bs!388906 m!1832916))

(assert (=> b!1561386 d!462382))

(declare-fun d!462384 () Bool)

(declare-fun dynLambda!7549 (Int BalanceConc!11116) TokenValue!3059)

(assert (=> d!462384 (= (apply!4122 (transformation!2969 rule!240) (_1!9674 (_1!9675 lt!540813))) (dynLambda!7549 (toValue!4349 (transformation!2969 rule!240)) (_1!9674 (_1!9675 lt!540813))))))

(declare-fun b_lambda!49103 () Bool)

(assert (=> (not b_lambda!49103) (not d!462384)))

(declare-fun t!141552 () Bool)

(declare-fun tb!87389 () Bool)

(assert (=> (and b!1561384 (= (toValue!4349 (transformation!2969 rule!240)) (toValue!4349 (transformation!2969 rule!240))) t!141552) tb!87389))

(declare-fun result!105680 () Bool)

(declare-fun inv!21 (TokenValue!3059) Bool)

(assert (=> tb!87389 (= result!105680 (inv!21 (dynLambda!7549 (toValue!4349 (transformation!2969 rule!240)) (_1!9674 (_1!9675 lt!540813)))))))

(declare-fun m!1832918 () Bool)

(assert (=> tb!87389 m!1832918))

(assert (=> d!462384 t!141552))

(declare-fun b_and!109011 () Bool)

(assert (= b_and!108997 (and (=> t!141552 result!105680) b_and!109011)))

(declare-fun m!1832920 () Bool)

(assert (=> d!462384 m!1832920))

(assert (=> b!1561387 d!462384))

(declare-fun d!462386 () Bool)

(declare-fun dynLambda!7550 (Int BalanceConc!11116) Bool)

(assert (=> d!462386 (dynLambda!7550 lambda!66052 lt!540801)))

(declare-fun lt!540816 () Unit!26150)

(declare-fun choose!9318 (Int BalanceConc!11116) Unit!26150)

(assert (=> d!462386 (= lt!540816 (choose!9318 lambda!66052 lt!540801))))

(assert (=> d!462386 (Forall!620 lambda!66052)))

(assert (=> d!462386 (= (ForallOf!223 lambda!66052 lt!540801) lt!540816)))

(declare-fun b_lambda!49105 () Bool)

(assert (=> (not b_lambda!49105) (not d!462386)))

(declare-fun bs!388907 () Bool)

(assert (= bs!388907 d!462386))

(declare-fun m!1832922 () Bool)

(assert (=> bs!388907 m!1832922))

(declare-fun m!1832924 () Bool)

(assert (=> bs!388907 m!1832924))

(assert (=> bs!388907 m!1832866))

(assert (=> b!1561387 d!462386))

(declare-fun d!462388 () Bool)

(assert (=> d!462388 (dynLambda!7550 lambda!66052 (_1!9674 (_1!9675 lt!540813)))))

(declare-fun lt!540817 () Unit!26150)

(assert (=> d!462388 (= lt!540817 (choose!9318 lambda!66052 (_1!9674 (_1!9675 lt!540813))))))

(assert (=> d!462388 (Forall!620 lambda!66052)))

(assert (=> d!462388 (= (ForallOf!223 lambda!66052 (_1!9674 (_1!9675 lt!540813))) lt!540817)))

(declare-fun b_lambda!49107 () Bool)

(assert (=> (not b_lambda!49107) (not d!462388)))

(declare-fun bs!388908 () Bool)

(assert (= bs!388908 d!462388))

(declare-fun m!1832926 () Bool)

(assert (=> bs!388908 m!1832926))

(declare-fun m!1832928 () Bool)

(assert (=> bs!388908 m!1832928))

(assert (=> bs!388908 m!1832866))

(assert (=> b!1561387 d!462388))

(declare-fun d!462390 () Bool)

(declare-fun list!6519 (Conc!5587) List!17007)

(assert (=> d!462390 (= (list!6518 (_1!9674 (_1!9675 lt!540813))) (list!6519 (c!253184 (_1!9674 (_1!9675 lt!540813)))))))

(declare-fun bs!388909 () Bool)

(assert (= bs!388909 d!462390))

(declare-fun m!1832930 () Bool)

(assert (=> bs!388909 m!1832930))

(assert (=> b!1561387 d!462390))

(declare-fun d!462392 () Bool)

(declare-fun fromListB!770 (List!17007) BalanceConc!11116)

(assert (=> d!462392 (= (seqFromList!1786 lt!540810) (fromListB!770 lt!540810))))

(declare-fun bs!388910 () Bool)

(assert (= bs!388910 d!462392))

(declare-fun m!1832932 () Bool)

(assert (=> bs!388910 m!1832932))

(assert (=> b!1561387 d!462392))

(declare-fun d!462394 () Bool)

(declare-fun lt!540820 () Int)

(assert (=> d!462394 (= lt!540820 (size!13749 (list!6518 (_1!9674 (_1!9675 lt!540813)))))))

(declare-fun size!13751 (Conc!5587) Int)

(assert (=> d!462394 (= lt!540820 (size!13751 (c!253184 (_1!9674 (_1!9675 lt!540813)))))))

(assert (=> d!462394 (= (size!13750 (_1!9674 (_1!9675 lt!540813))) lt!540820)))

(declare-fun bs!388911 () Bool)

(assert (= bs!388911 d!462394))

(assert (=> bs!388911 m!1832872))

(assert (=> bs!388911 m!1832872))

(declare-fun m!1832934 () Bool)

(assert (=> bs!388911 m!1832934))

(declare-fun m!1832936 () Bool)

(assert (=> bs!388911 m!1832936))

(assert (=> b!1561387 d!462394))

(declare-fun d!462396 () Bool)

(declare-fun isEmpty!10167 (Option!3061) Bool)

(assert (=> d!462396 (= (isDefined!2462 lt!540809) (not (isEmpty!10167 lt!540809)))))

(declare-fun bs!388912 () Bool)

(assert (= bs!388912 d!462396))

(declare-fun m!1832938 () Bool)

(assert (=> bs!388912 m!1832938))

(assert (=> b!1561387 d!462396))

(declare-fun d!462398 () Bool)

(declare-fun isEmpty!10168 (Option!3062) Bool)

(assert (=> d!462398 (= (isDefined!2461 lt!540807) (not (isEmpty!10168 lt!540807)))))

(declare-fun bs!388913 () Bool)

(assert (= bs!388913 d!462398))

(declare-fun m!1832940 () Bool)

(assert (=> bs!388913 m!1832940))

(assert (=> b!1561387 d!462398))

(declare-fun b!1561435 () Bool)

(declare-fun res!696229 () Bool)

(declare-fun e!1002659 () Bool)

(assert (=> b!1561435 (=> (not res!696229) (not e!1002659))))

(declare-fun lt!540833 () Option!3062)

(assert (=> b!1561435 (= res!696229 (< (size!13749 (_2!9666 (get!4874 lt!540833))) (size!13749 lt!540806)))))

(declare-fun b!1561436 () Bool)

(assert (=> b!1561436 (= e!1002659 (= (size!13744 (_1!9666 (get!4874 lt!540833))) (size!13749 (originalCharacters!3783 (_1!9666 (get!4874 lt!540833))))))))

(declare-fun b!1561437 () Bool)

(declare-fun e!1002656 () Option!3062)

(declare-fun lt!540831 () tuple2!16554)

(assert (=> b!1561437 (= e!1002656 (Some!3061 (tuple2!16545 (Token!5505 (apply!4122 (transformation!2969 rule!240) (seqFromList!1786 (_1!9673 lt!540831))) rule!240 (size!13750 (seqFromList!1786 (_1!9673 lt!540831))) (_1!9673 lt!540831)) (_2!9673 lt!540831))))))

(declare-fun lt!540835 () Unit!26150)

(assert (=> b!1561437 (= lt!540835 (longestMatchIsAcceptedByMatchOrIsEmpty!328 (regex!2969 rule!240) lt!540806))))

(declare-fun res!696228 () Bool)

(assert (=> b!1561437 (= res!696228 (isEmpty!10165 (_1!9673 (findLongestMatchInner!344 (regex!2969 rule!240) Nil!16939 (size!13749 Nil!16939) lt!540806 lt!540806 (size!13749 lt!540806)))))))

(declare-fun e!1002657 () Bool)

(assert (=> b!1561437 (=> res!696228 e!1002657)))

(assert (=> b!1561437 e!1002657))

(declare-fun lt!540832 () Unit!26150)

(assert (=> b!1561437 (= lt!540832 lt!540835)))

(declare-fun lt!540834 () Unit!26150)

(declare-fun lemmaSemiInverse!373 (TokenValueInjection!5778 BalanceConc!11116) Unit!26150)

(assert (=> b!1561437 (= lt!540834 (lemmaSemiInverse!373 (transformation!2969 rule!240) (seqFromList!1786 (_1!9673 lt!540831))))))

(declare-fun d!462400 () Bool)

(declare-fun e!1002658 () Bool)

(assert (=> d!462400 e!1002658))

(declare-fun res!696231 () Bool)

(assert (=> d!462400 (=> res!696231 e!1002658)))

(assert (=> d!462400 (= res!696231 (isEmpty!10168 lt!540833))))

(assert (=> d!462400 (= lt!540833 e!1002656)))

(declare-fun c!253188 () Bool)

(assert (=> d!462400 (= c!253188 (isEmpty!10165 (_1!9673 lt!540831)))))

(declare-fun findLongestMatch!271 (Regex!4297 List!17007) tuple2!16554)

(assert (=> d!462400 (= lt!540831 (findLongestMatch!271 (regex!2969 rule!240) lt!540806))))

(assert (=> d!462400 (ruleValid!697 thiss!16438 rule!240)))

(assert (=> d!462400 (= (maxPrefixOneRule!714 thiss!16438 rule!240 lt!540806) lt!540833)))

(declare-fun b!1561438 () Bool)

(declare-fun res!696226 () Bool)

(assert (=> b!1561438 (=> (not res!696226) (not e!1002659))))

(assert (=> b!1561438 (= res!696226 (= (value!94248 (_1!9666 (get!4874 lt!540833))) (apply!4122 (transformation!2969 (rule!4753 (_1!9666 (get!4874 lt!540833)))) (seqFromList!1786 (originalCharacters!3783 (_1!9666 (get!4874 lt!540833)))))))))

(declare-fun b!1561439 () Bool)

(assert (=> b!1561439 (= e!1002656 None!3061)))

(declare-fun b!1561440 () Bool)

(declare-fun res!696225 () Bool)

(assert (=> b!1561440 (=> (not res!696225) (not e!1002659))))

(assert (=> b!1561440 (= res!696225 (= (rule!4753 (_1!9666 (get!4874 lt!540833))) rule!240))))

(declare-fun b!1561441 () Bool)

(assert (=> b!1561441 (= e!1002657 (matchR!1889 (regex!2969 rule!240) (_1!9673 (findLongestMatchInner!344 (regex!2969 rule!240) Nil!16939 (size!13749 Nil!16939) lt!540806 lt!540806 (size!13749 lt!540806)))))))

(declare-fun b!1561442 () Bool)

(assert (=> b!1561442 (= e!1002658 e!1002659)))

(declare-fun res!696230 () Bool)

(assert (=> b!1561442 (=> (not res!696230) (not e!1002659))))

(declare-fun charsOf!1654 (Token!5504) BalanceConc!11116)

(assert (=> b!1561442 (= res!696230 (matchR!1889 (regex!2969 rule!240) (list!6518 (charsOf!1654 (_1!9666 (get!4874 lt!540833))))))))

(declare-fun b!1561443 () Bool)

(declare-fun res!696227 () Bool)

(assert (=> b!1561443 (=> (not res!696227) (not e!1002659))))

(declare-fun ++!4423 (List!17007 List!17007) List!17007)

(assert (=> b!1561443 (= res!696227 (= (++!4423 (list!6518 (charsOf!1654 (_1!9666 (get!4874 lt!540833)))) (_2!9666 (get!4874 lt!540833))) lt!540806))))

(assert (= (and d!462400 c!253188) b!1561439))

(assert (= (and d!462400 (not c!253188)) b!1561437))

(assert (= (and b!1561437 (not res!696228)) b!1561441))

(assert (= (and d!462400 (not res!696231)) b!1561442))

(assert (= (and b!1561442 res!696230) b!1561443))

(assert (= (and b!1561443 res!696227) b!1561435))

(assert (= (and b!1561435 res!696229) b!1561440))

(assert (= (and b!1561440 res!696225) b!1561438))

(assert (= (and b!1561438 res!696226) b!1561436))

(declare-fun m!1832942 () Bool)

(assert (=> b!1561443 m!1832942))

(declare-fun m!1832944 () Bool)

(assert (=> b!1561443 m!1832944))

(assert (=> b!1561443 m!1832944))

(declare-fun m!1832946 () Bool)

(assert (=> b!1561443 m!1832946))

(assert (=> b!1561443 m!1832946))

(declare-fun m!1832948 () Bool)

(assert (=> b!1561443 m!1832948))

(assert (=> b!1561435 m!1832942))

(declare-fun m!1832950 () Bool)

(assert (=> b!1561435 m!1832950))

(assert (=> b!1561435 m!1832852))

(assert (=> b!1561438 m!1832942))

(declare-fun m!1832952 () Bool)

(assert (=> b!1561438 m!1832952))

(assert (=> b!1561438 m!1832952))

(declare-fun m!1832954 () Bool)

(assert (=> b!1561438 m!1832954))

(assert (=> b!1561442 m!1832942))

(assert (=> b!1561442 m!1832944))

(assert (=> b!1561442 m!1832944))

(assert (=> b!1561442 m!1832946))

(assert (=> b!1561442 m!1832946))

(declare-fun m!1832956 () Bool)

(assert (=> b!1561442 m!1832956))

(declare-fun m!1832958 () Bool)

(assert (=> b!1561437 m!1832958))

(declare-fun m!1832960 () Bool)

(assert (=> b!1561437 m!1832960))

(declare-fun m!1832962 () Bool)

(assert (=> b!1561437 m!1832962))

(assert (=> b!1561437 m!1832958))

(declare-fun m!1832964 () Bool)

(assert (=> b!1561437 m!1832964))

(assert (=> b!1561437 m!1832958))

(assert (=> b!1561437 m!1832850))

(assert (=> b!1561437 m!1832958))

(declare-fun m!1832966 () Bool)

(assert (=> b!1561437 m!1832966))

(assert (=> b!1561437 m!1832852))

(assert (=> b!1561437 m!1832850))

(assert (=> b!1561437 m!1832852))

(assert (=> b!1561437 m!1832854))

(assert (=> b!1561437 m!1832860))

(declare-fun m!1832968 () Bool)

(assert (=> d!462400 m!1832968))

(declare-fun m!1832970 () Bool)

(assert (=> d!462400 m!1832970))

(declare-fun m!1832972 () Bool)

(assert (=> d!462400 m!1832972))

(assert (=> d!462400 m!1832818))

(assert (=> b!1561441 m!1832850))

(assert (=> b!1561441 m!1832852))

(assert (=> b!1561441 m!1832850))

(assert (=> b!1561441 m!1832852))

(assert (=> b!1561441 m!1832854))

(declare-fun m!1832974 () Bool)

(assert (=> b!1561441 m!1832974))

(assert (=> b!1561436 m!1832942))

(declare-fun m!1832976 () Bool)

(assert (=> b!1561436 m!1832976))

(assert (=> b!1561440 m!1832942))

(assert (=> b!1561387 d!462400))

(declare-fun d!462402 () Bool)

(declare-fun isBalanced!1653 (Conc!5587) Bool)

(assert (=> d!462402 (= (inv!22245 (totalInput!2500 cacheFurthestNullable!103)) (isBalanced!1653 (c!253184 (totalInput!2500 cacheFurthestNullable!103))))))

(declare-fun bs!388914 () Bool)

(assert (= bs!388914 d!462402))

(declare-fun m!1832978 () Bool)

(assert (=> bs!388914 m!1832978))

(assert (=> b!1561405 d!462402))

(declare-fun d!462404 () Bool)

(declare-fun validCacheMapFurthestNullable!84 (MutableMap!1800 BalanceConc!11116) Bool)

(assert (=> d!462404 (= (valid!1488 cacheFurthestNullable!103) (validCacheMapFurthestNullable!84 (cache!2181 cacheFurthestNullable!103) (totalInput!2500 cacheFurthestNullable!103)))))

(declare-fun bs!388915 () Bool)

(assert (= bs!388915 d!462404))

(declare-fun m!1832980 () Bool)

(assert (=> bs!388915 m!1832980))

(assert (=> b!1561388 d!462404))

(declare-fun d!462406 () Bool)

(declare-fun c!253191 () Bool)

(assert (=> d!462406 (= c!253191 ((_ is Node!5587) (c!253184 (totalInput!2500 cacheFurthestNullable!103))))))

(declare-fun e!1002664 () Bool)

(assert (=> d!462406 (= (inv!22249 (c!253184 (totalInput!2500 cacheFurthestNullable!103))) e!1002664)))

(declare-fun b!1561450 () Bool)

(declare-fun inv!22252 (Conc!5587) Bool)

(assert (=> b!1561450 (= e!1002664 (inv!22252 (c!253184 (totalInput!2500 cacheFurthestNullable!103))))))

(declare-fun b!1561451 () Bool)

(declare-fun e!1002665 () Bool)

(assert (=> b!1561451 (= e!1002664 e!1002665)))

(declare-fun res!696234 () Bool)

(assert (=> b!1561451 (= res!696234 (not ((_ is Leaf!8281) (c!253184 (totalInput!2500 cacheFurthestNullable!103)))))))

(assert (=> b!1561451 (=> res!696234 e!1002665)))

(declare-fun b!1561452 () Bool)

(declare-fun inv!22253 (Conc!5587) Bool)

(assert (=> b!1561452 (= e!1002665 (inv!22253 (c!253184 (totalInput!2500 cacheFurthestNullable!103))))))

(assert (= (and d!462406 c!253191) b!1561450))

(assert (= (and d!462406 (not c!253191)) b!1561451))

(assert (= (and b!1561451 (not res!696234)) b!1561452))

(declare-fun m!1832982 () Bool)

(assert (=> b!1561450 m!1832982))

(declare-fun m!1832984 () Bool)

(assert (=> b!1561452 m!1832984))

(assert (=> b!1561369 d!462406))

(declare-fun d!462408 () Bool)

(declare-fun res!696239 () Bool)

(declare-fun e!1002668 () Bool)

(assert (=> d!462408 (=> (not res!696239) (not e!1002668))))

(declare-fun validRegex!1721 (Regex!4297) Bool)

(assert (=> d!462408 (= res!696239 (validRegex!1721 (regex!2969 rule!240)))))

(assert (=> d!462408 (= (ruleValid!697 thiss!16438 rule!240) e!1002668)))

(declare-fun b!1561457 () Bool)

(declare-fun res!696240 () Bool)

(assert (=> b!1561457 (=> (not res!696240) (not e!1002668))))

(declare-fun nullable!1280 (Regex!4297) Bool)

(assert (=> b!1561457 (= res!696240 (not (nullable!1280 (regex!2969 rule!240))))))

(declare-fun b!1561458 () Bool)

(assert (=> b!1561458 (= e!1002668 (not (= (tag!3233 rule!240) (String!19584 ""))))))

(assert (= (and d!462408 res!696239) b!1561457))

(assert (= (and b!1561457 res!696240) b!1561458))

(declare-fun m!1832986 () Bool)

(assert (=> d!462408 m!1832986))

(declare-fun m!1832988 () Bool)

(assert (=> b!1561457 m!1832988))

(assert (=> b!1561406 d!462408))

(declare-fun d!462410 () Bool)

(assert (=> d!462410 (= (array_inv!2035 (_keys!2151 (v!23806 (underlying!3923 (v!23807 (underlying!3924 (cache!2182 cacheDown!768))))))) (bvsge (size!13746 (_keys!2151 (v!23806 (underlying!3923 (v!23807 (underlying!3924 (cache!2182 cacheDown!768))))))) #b00000000000000000000000000000000))))

(assert (=> b!1561390 d!462410))

(declare-fun d!462412 () Bool)

(assert (=> d!462412 (= (array_inv!2038 (_values!2136 (v!23806 (underlying!3923 (v!23807 (underlying!3924 (cache!2182 cacheDown!768))))))) (bvsge (size!13748 (_values!2136 (v!23806 (underlying!3923 (v!23807 (underlying!3924 (cache!2182 cacheDown!768))))))) #b00000000000000000000000000000000))))

(assert (=> b!1561390 d!462412))

(declare-fun b!1561487 () Bool)

(declare-fun res!696261 () Bool)

(declare-fun e!1002689 () Bool)

(assert (=> b!1561487 (=> (not res!696261) (not e!1002689))))

(declare-fun tail!2217 (List!17007) List!17007)

(assert (=> b!1561487 (= res!696261 (isEmpty!10165 (tail!2217 (_1!9673 lt!540812))))))

(declare-fun b!1561488 () Bool)

(declare-fun e!1002686 () Bool)

(declare-fun lt!540838 () Bool)

(declare-fun call!102264 () Bool)

(assert (=> b!1561488 (= e!1002686 (= lt!540838 call!102264))))

(declare-fun b!1561489 () Bool)

(declare-fun e!1002685 () Bool)

(assert (=> b!1561489 (= e!1002685 (not lt!540838))))

(declare-fun b!1561490 () Bool)

(declare-fun head!3122 (List!17007) C!8772)

(assert (=> b!1561490 (= e!1002689 (= (head!3122 (_1!9673 lt!540812)) (c!253185 (regex!2969 rule!240))))))

(declare-fun b!1561491 () Bool)

(assert (=> b!1561491 (= e!1002686 e!1002685)))

(declare-fun c!253200 () Bool)

(assert (=> b!1561491 (= c!253200 ((_ is EmptyLang!4297) (regex!2969 rule!240)))))

(declare-fun b!1561492 () Bool)

(declare-fun e!1002687 () Bool)

(declare-fun e!1002683 () Bool)

(assert (=> b!1561492 (= e!1002687 e!1002683)))

(declare-fun res!696260 () Bool)

(assert (=> b!1561492 (=> res!696260 e!1002683)))

(assert (=> b!1561492 (= res!696260 call!102264)))

(declare-fun b!1561494 () Bool)

(assert (=> b!1561494 (= e!1002683 (not (= (head!3122 (_1!9673 lt!540812)) (c!253185 (regex!2969 rule!240)))))))

(declare-fun b!1561495 () Bool)

(declare-fun res!696262 () Bool)

(assert (=> b!1561495 (=> (not res!696262) (not e!1002689))))

(assert (=> b!1561495 (= res!696262 (not call!102264))))

(declare-fun b!1561496 () Bool)

(declare-fun res!696258 () Bool)

(assert (=> b!1561496 (=> res!696258 e!1002683)))

(assert (=> b!1561496 (= res!696258 (not (isEmpty!10165 (tail!2217 (_1!9673 lt!540812)))))))

(declare-fun b!1561497 () Bool)

(declare-fun e!1002684 () Bool)

(assert (=> b!1561497 (= e!1002684 e!1002687)))

(declare-fun res!696257 () Bool)

(assert (=> b!1561497 (=> (not res!696257) (not e!1002687))))

(assert (=> b!1561497 (= res!696257 (not lt!540838))))

(declare-fun b!1561498 () Bool)

(declare-fun e!1002688 () Bool)

(assert (=> b!1561498 (= e!1002688 (nullable!1280 (regex!2969 rule!240)))))

(declare-fun b!1561499 () Bool)

(declare-fun res!696264 () Bool)

(assert (=> b!1561499 (=> res!696264 e!1002684)))

(assert (=> b!1561499 (= res!696264 e!1002689)))

(declare-fun res!696259 () Bool)

(assert (=> b!1561499 (=> (not res!696259) (not e!1002689))))

(assert (=> b!1561499 (= res!696259 lt!540838)))

(declare-fun b!1561493 () Bool)

(declare-fun res!696263 () Bool)

(assert (=> b!1561493 (=> res!696263 e!1002684)))

(assert (=> b!1561493 (= res!696263 (not ((_ is ElementMatch!4297) (regex!2969 rule!240))))))

(assert (=> b!1561493 (= e!1002685 e!1002684)))

(declare-fun d!462414 () Bool)

(assert (=> d!462414 e!1002686))

(declare-fun c!253198 () Bool)

(assert (=> d!462414 (= c!253198 ((_ is EmptyExpr!4297) (regex!2969 rule!240)))))

(assert (=> d!462414 (= lt!540838 e!1002688)))

(declare-fun c!253199 () Bool)

(assert (=> d!462414 (= c!253199 (isEmpty!10165 (_1!9673 lt!540812)))))

(assert (=> d!462414 (validRegex!1721 (regex!2969 rule!240))))

(assert (=> d!462414 (= (matchR!1889 (regex!2969 rule!240) (_1!9673 lt!540812)) lt!540838)))

(declare-fun bm!102259 () Bool)

(assert (=> bm!102259 (= call!102264 (isEmpty!10165 (_1!9673 lt!540812)))))

(declare-fun b!1561500 () Bool)

(declare-fun derivativeStep!1031 (Regex!4297 C!8772) Regex!4297)

(assert (=> b!1561500 (= e!1002688 (matchR!1889 (derivativeStep!1031 (regex!2969 rule!240) (head!3122 (_1!9673 lt!540812))) (tail!2217 (_1!9673 lt!540812))))))

(assert (= (and d!462414 c!253199) b!1561498))

(assert (= (and d!462414 (not c!253199)) b!1561500))

(assert (= (and d!462414 c!253198) b!1561488))

(assert (= (and d!462414 (not c!253198)) b!1561491))

(assert (= (and b!1561491 c!253200) b!1561489))

(assert (= (and b!1561491 (not c!253200)) b!1561493))

(assert (= (and b!1561493 (not res!696263)) b!1561499))

(assert (= (and b!1561499 res!696259) b!1561495))

(assert (= (and b!1561495 res!696262) b!1561487))

(assert (= (and b!1561487 res!696261) b!1561490))

(assert (= (and b!1561499 (not res!696264)) b!1561497))

(assert (= (and b!1561497 res!696257) b!1561492))

(assert (= (and b!1561492 (not res!696260)) b!1561496))

(assert (= (and b!1561496 (not res!696258)) b!1561494))

(assert (= (or b!1561488 b!1561492 b!1561495) bm!102259))

(declare-fun m!1832990 () Bool)

(assert (=> b!1561490 m!1832990))

(declare-fun m!1832992 () Bool)

(assert (=> b!1561487 m!1832992))

(assert (=> b!1561487 m!1832992))

(declare-fun m!1832994 () Bool)

(assert (=> b!1561487 m!1832994))

(assert (=> d!462414 m!1832858))

(assert (=> d!462414 m!1832986))

(assert (=> bm!102259 m!1832858))

(assert (=> b!1561496 m!1832992))

(assert (=> b!1561496 m!1832992))

(assert (=> b!1561496 m!1832994))

(assert (=> b!1561498 m!1832988))

(assert (=> b!1561494 m!1832990))

(assert (=> b!1561500 m!1832990))

(assert (=> b!1561500 m!1832990))

(declare-fun m!1832996 () Bool)

(assert (=> b!1561500 m!1832996))

(assert (=> b!1561500 m!1832992))

(assert (=> b!1561500 m!1832996))

(assert (=> b!1561500 m!1832992))

(declare-fun m!1832998 () Bool)

(assert (=> b!1561500 m!1832998))

(assert (=> b!1561371 d!462414))

(declare-fun d!462416 () Bool)

(assert (=> d!462416 (= (list!6518 (_2!9665 lt!540797)) (list!6519 (c!253184 (_2!9665 lt!540797))))))

(declare-fun bs!388916 () Bool)

(assert (= bs!388916 d!462416))

(declare-fun m!1833000 () Bool)

(assert (=> bs!388916 m!1833000))

(assert (=> b!1561391 d!462416))

(declare-fun d!462418 () Bool)

(assert (=> d!462418 (= (array_inv!2035 (_keys!2150 (v!23804 (underlying!3921 (v!23805 (underlying!3922 (cache!2181 cacheFurthestNullable!103))))))) (bvsge (size!13746 (_keys!2150 (v!23804 (underlying!3921 (v!23805 (underlying!3922 (cache!2181 cacheFurthestNullable!103))))))) #b00000000000000000000000000000000))))

(assert (=> b!1561372 d!462418))

(declare-fun d!462420 () Bool)

(assert (=> d!462420 (= (array_inv!2036 (_values!2135 (v!23804 (underlying!3921 (v!23805 (underlying!3922 (cache!2181 cacheFurthestNullable!103))))))) (bvsge (size!13747 (_values!2135 (v!23804 (underlying!3921 (v!23805 (underlying!3922 (cache!2181 cacheFurthestNullable!103))))))) #b00000000000000000000000000000000))))

(assert (=> b!1561372 d!462420))

(declare-fun d!462422 () Bool)

(declare-fun lt!540841 () Bool)

(assert (=> d!462422 (= lt!540841 (isEmpty!10165 (list!6518 (_1!9674 (_1!9675 lt!540813)))))))

(declare-fun isEmpty!10169 (Conc!5587) Bool)

(assert (=> d!462422 (= lt!540841 (isEmpty!10169 (c!253184 (_1!9674 (_1!9675 lt!540813)))))))

(assert (=> d!462422 (= (isEmpty!10166 (_1!9674 (_1!9675 lt!540813))) lt!540841)))

(declare-fun bs!388917 () Bool)

(assert (= bs!388917 d!462422))

(assert (=> bs!388917 m!1832872))

(assert (=> bs!388917 m!1832872))

(declare-fun m!1833002 () Bool)

(assert (=> bs!388917 m!1833002))

(declare-fun m!1833004 () Bool)

(assert (=> bs!388917 m!1833004))

(assert (=> b!1561373 d!462422))

(declare-fun b!1561509 () Bool)

(declare-fun res!696273 () Bool)

(declare-fun e!1002692 () Bool)

(assert (=> b!1561509 (=> (not res!696273) (not e!1002692))))

(declare-fun lt!540844 () tuple4!924)

(assert (=> b!1561509 (= res!696273 (valid!1487 (_3!1396 lt!540844)))))

(declare-fun d!462424 () Bool)

(assert (=> d!462424 e!1002692))

(declare-fun res!696274 () Bool)

(assert (=> d!462424 (=> (not res!696274) (not e!1002692))))

(assert (=> d!462424 (= res!696274 (= (tuple2!16555 (list!6518 (_1!9674 (_1!9675 lt!540844))) (list!6518 (_2!9674 (_1!9675 lt!540844)))) (findLongestMatch!271 (regex!2969 rule!240) (list!6518 input!1676))))))

(declare-fun choose!9319 (Regex!4297 BalanceConc!11116 BalanceConc!11116 CacheUp!1098 CacheDown!1104 CacheFurthestNullable!524) tuple4!924)

(assert (=> d!462424 (= lt!540844 (choose!9319 (regex!2969 rule!240) input!1676 totalInput!568 cacheUp!755 cacheDown!768 cacheFurthestNullable!103))))

(assert (=> d!462424 (validRegex!1721 (regex!2969 rule!240))))

(assert (=> d!462424 (= (findLongestMatchWithZipperSequenceV3Mem!63 (regex!2969 rule!240) input!1676 totalInput!568 cacheUp!755 cacheDown!768 cacheFurthestNullable!103) lt!540844)))

(declare-fun b!1561511 () Bool)

(declare-fun res!696275 () Bool)

(assert (=> b!1561511 (=> (not res!696275) (not e!1002692))))

(assert (=> b!1561511 (= res!696275 (valid!1488 (_4!462 lt!540844)))))

(declare-fun b!1561510 () Bool)

(declare-fun res!696276 () Bool)

(assert (=> b!1561510 (=> (not res!696276) (not e!1002692))))

(assert (=> b!1561510 (= res!696276 (valid!1486 (_2!9675 lt!540844)))))

(declare-fun b!1561512 () Bool)

(assert (=> b!1561512 (= e!1002692 (= (totalInput!2500 (_4!462 lt!540844)) totalInput!568))))

(assert (= (and d!462424 res!696274) b!1561509))

(assert (= (and b!1561509 res!696273) b!1561510))

(assert (= (and b!1561510 res!696276) b!1561511))

(assert (= (and b!1561511 res!696275) b!1561512))

(declare-fun m!1833006 () Bool)

(assert (=> b!1561509 m!1833006))

(declare-fun m!1833008 () Bool)

(assert (=> d!462424 m!1833008))

(assert (=> d!462424 m!1832986))

(assert (=> d!462424 m!1832900))

(declare-fun m!1833010 () Bool)

(assert (=> d!462424 m!1833010))

(declare-fun m!1833012 () Bool)

(assert (=> d!462424 m!1833012))

(declare-fun m!1833014 () Bool)

(assert (=> d!462424 m!1833014))

(assert (=> d!462424 m!1832900))

(declare-fun m!1833016 () Bool)

(assert (=> b!1561511 m!1833016))

(declare-fun m!1833018 () Bool)

(assert (=> b!1561510 m!1833018))

(assert (=> b!1561373 d!462424))

(declare-fun d!462426 () Bool)

(assert (=> d!462426 (= (array_inv!2035 (_keys!2149 (v!23802 (underlying!3919 (v!23803 (underlying!3920 (cache!2180 cacheUp!755))))))) (bvsge (size!13746 (_keys!2149 (v!23802 (underlying!3919 (v!23803 (underlying!3920 (cache!2180 cacheUp!755))))))) #b00000000000000000000000000000000))))

(assert (=> b!1561375 d!462426))

(declare-fun d!462428 () Bool)

(assert (=> d!462428 (= (array_inv!2037 (_values!2134 (v!23802 (underlying!3919 (v!23803 (underlying!3920 (cache!2180 cacheUp!755))))))) (bvsge (size!13745 (_values!2134 (v!23802 (underlying!3919 (v!23803 (underlying!3920 (cache!2180 cacheUp!755))))))) #b00000000000000000000000000000000))))

(assert (=> b!1561375 d!462428))

(declare-fun d!462430 () Bool)

(assert (=> d!462430 (= (inv!22244 (tag!3233 rule!240)) (= (mod (str.len (value!94247 (tag!3233 rule!240))) 2) 0))))

(assert (=> b!1561395 d!462430))

(declare-fun d!462432 () Bool)

(declare-fun res!696279 () Bool)

(declare-fun e!1002695 () Bool)

(assert (=> d!462432 (=> (not res!696279) (not e!1002695))))

(assert (=> d!462432 (= res!696279 (semiInverseModEq!1125 (toChars!4208 (transformation!2969 rule!240)) (toValue!4349 (transformation!2969 rule!240))))))

(assert (=> d!462432 (= (inv!22251 (transformation!2969 rule!240)) e!1002695)))

(declare-fun b!1561515 () Bool)

(declare-fun equivClasses!1066 (Int Int) Bool)

(assert (=> b!1561515 (= e!1002695 (equivClasses!1066 (toChars!4208 (transformation!2969 rule!240)) (toValue!4349 (transformation!2969 rule!240))))))

(assert (= (and d!462432 res!696279) b!1561515))

(assert (=> d!462432 m!1832848))

(declare-fun m!1833020 () Bool)

(assert (=> b!1561515 m!1833020))

(assert (=> b!1561395 d!462432))

(declare-fun d!462434 () Bool)

(assert (=> d!462434 (= (list!6518 lt!540801) (list!6519 (c!253184 lt!540801)))))

(declare-fun bs!388918 () Bool)

(assert (= bs!388918 d!462434))

(declare-fun m!1833022 () Bool)

(assert (=> bs!388918 m!1833022))

(assert (=> b!1561377 d!462434))

(declare-fun d!462436 () Bool)

(declare-fun c!253201 () Bool)

(assert (=> d!462436 (= c!253201 ((_ is Node!5587) (c!253184 input!1676)))))

(declare-fun e!1002696 () Bool)

(assert (=> d!462436 (= (inv!22249 (c!253184 input!1676)) e!1002696)))

(declare-fun b!1561516 () Bool)

(assert (=> b!1561516 (= e!1002696 (inv!22252 (c!253184 input!1676)))))

(declare-fun b!1561517 () Bool)

(declare-fun e!1002697 () Bool)

(assert (=> b!1561517 (= e!1002696 e!1002697)))

(declare-fun res!696280 () Bool)

(assert (=> b!1561517 (= res!696280 (not ((_ is Leaf!8281) (c!253184 input!1676))))))

(assert (=> b!1561517 (=> res!696280 e!1002697)))

(declare-fun b!1561518 () Bool)

(assert (=> b!1561518 (= e!1002697 (inv!22253 (c!253184 input!1676)))))

(assert (= (and d!462436 c!253201) b!1561516))

(assert (= (and d!462436 (not c!253201)) b!1561517))

(assert (= (and b!1561517 (not res!696280)) b!1561518))

(declare-fun m!1833024 () Bool)

(assert (=> b!1561516 m!1833024))

(declare-fun m!1833026 () Bool)

(assert (=> b!1561518 m!1833026))

(assert (=> b!1561378 d!462436))

(declare-fun d!462438 () Bool)

(assert (=> d!462438 (= (apply!4122 (transformation!2969 rule!240) lt!540801) (dynLambda!7549 (toValue!4349 (transformation!2969 rule!240)) lt!540801))))

(declare-fun b_lambda!49109 () Bool)

(assert (=> (not b_lambda!49109) (not d!462438)))

(declare-fun t!141554 () Bool)

(declare-fun tb!87391 () Bool)

(assert (=> (and b!1561384 (= (toValue!4349 (transformation!2969 rule!240)) (toValue!4349 (transformation!2969 rule!240))) t!141554) tb!87391))

(declare-fun result!105684 () Bool)

(assert (=> tb!87391 (= result!105684 (inv!21 (dynLambda!7549 (toValue!4349 (transformation!2969 rule!240)) lt!540801)))))

(declare-fun m!1833028 () Bool)

(assert (=> tb!87391 m!1833028))

(assert (=> d!462438 t!141554))

(declare-fun b_and!109013 () Bool)

(assert (= b_and!109011 (and (=> t!141554 result!105684) b_and!109013)))

(declare-fun m!1833030 () Bool)

(assert (=> d!462438 m!1833030))

(assert (=> b!1561379 d!462438))

(declare-fun b!1561525 () Bool)

(declare-fun e!1002703 () Bool)

(assert (=> b!1561525 (= e!1002703 true)))

(declare-fun d!462440 () Bool)

(assert (=> d!462440 e!1002703))

(assert (= d!462440 b!1561525))

(declare-fun order!10037 () Int)

(declare-fun lambda!66055 () Int)

(declare-fun dynLambda!7551 (Int Int) Int)

(assert (=> b!1561525 (< (dynLambda!7546 order!10031 (toValue!4349 (transformation!2969 rule!240))) (dynLambda!7551 order!10037 lambda!66055))))

(assert (=> b!1561525 (< (dynLambda!7548 order!10035 (toChars!4208 (transformation!2969 rule!240))) (dynLambda!7551 order!10037 lambda!66055))))

(assert (=> d!462440 (= (dynLambda!7549 (toValue!4349 (transformation!2969 rule!240)) (_1!9674 (_1!9675 lt!540813))) (dynLambda!7549 (toValue!4349 (transformation!2969 rule!240)) lt!540801))))

(declare-fun lt!540847 () Unit!26150)

(declare-fun Forall2of!49 (Int BalanceConc!11116 BalanceConc!11116) Unit!26150)

(assert (=> d!462440 (= lt!540847 (Forall2of!49 lambda!66055 (_1!9674 (_1!9675 lt!540813)) lt!540801))))

(assert (=> d!462440 (= (list!6518 (_1!9674 (_1!9675 lt!540813))) (list!6518 lt!540801))))

(assert (=> d!462440 (= (lemmaEqSameImage!158 (transformation!2969 rule!240) (_1!9674 (_1!9675 lt!540813)) lt!540801) lt!540847)))

(declare-fun b_lambda!49111 () Bool)

(assert (=> (not b_lambda!49111) (not d!462440)))

(assert (=> d!462440 t!141552))

(declare-fun b_and!109015 () Bool)

(assert (= b_and!109013 (and (=> t!141552 result!105680) b_and!109015)))

(declare-fun b_lambda!49113 () Bool)

(assert (=> (not b_lambda!49113) (not d!462440)))

(assert (=> d!462440 t!141554))

(declare-fun b_and!109017 () Bool)

(assert (= b_and!109015 (and (=> t!141554 result!105684) b_and!109017)))

(assert (=> d!462440 m!1832920))

(assert (=> d!462440 m!1832888))

(declare-fun m!1833032 () Bool)

(assert (=> d!462440 m!1833032))

(assert (=> d!462440 m!1832872))

(assert (=> d!462440 m!1833030))

(assert (=> b!1561379 d!462440))

(declare-fun d!462442 () Bool)

(assert (=> d!462442 (= (get!4874 lt!540807) (v!23808 lt!540807))))

(assert (=> b!1561399 d!462442))

(declare-fun d!462444 () Bool)

(assert (=> d!462444 (= (inv!22245 totalInput!568) (isBalanced!1653 (c!253184 totalInput!568)))))

(declare-fun bs!388919 () Bool)

(assert (= bs!388919 d!462444))

(declare-fun m!1833034 () Bool)

(assert (=> bs!388919 m!1833034))

(assert (=> start!144942 d!462444))

(declare-fun d!462446 () Bool)

(declare-fun res!696285 () Bool)

(declare-fun e!1002706 () Bool)

(assert (=> d!462446 (=> (not res!696285) (not e!1002706))))

(assert (=> d!462446 (= res!696285 ((_ is HashMap!1801) (cache!2182 cacheDown!768)))))

(assert (=> d!462446 (= (inv!22248 cacheDown!768) e!1002706)))

(declare-fun b!1561528 () Bool)

(assert (=> b!1561528 (= e!1002706 (validCacheMapDown!171 (cache!2182 cacheDown!768)))))

(assert (= (and d!462446 res!696285) b!1561528))

(assert (=> b!1561528 m!1832916))

(assert (=> start!144942 d!462446))

(declare-fun d!462448 () Bool)

(declare-fun res!696288 () Bool)

(declare-fun e!1002709 () Bool)

(assert (=> d!462448 (=> (not res!696288) (not e!1002709))))

(assert (=> d!462448 (= res!696288 ((_ is HashMap!1799) (cache!2180 cacheUp!755)))))

(assert (=> d!462448 (= (inv!22246 cacheUp!755) e!1002709)))

(declare-fun b!1561531 () Bool)

(declare-fun validCacheMapUp!171 (MutableMap!1799) Bool)

(assert (=> b!1561531 (= e!1002709 (validCacheMapUp!171 (cache!2180 cacheUp!755)))))

(assert (= (and d!462448 res!696288) b!1561531))

(declare-fun m!1833036 () Bool)

(assert (=> b!1561531 m!1833036))

(assert (=> start!144942 d!462448))

(declare-fun d!462450 () Bool)

(assert (=> d!462450 (= (inv!22245 input!1676) (isBalanced!1653 (c!253184 input!1676)))))

(declare-fun bs!388920 () Bool)

(assert (= bs!388920 d!462450))

(declare-fun m!1833038 () Bool)

(assert (=> bs!388920 m!1833038))

(assert (=> start!144942 d!462450))

(declare-fun d!462452 () Bool)

(declare-fun res!696291 () Bool)

(declare-fun e!1002712 () Bool)

(assert (=> d!462452 (=> (not res!696291) (not e!1002712))))

(assert (=> d!462452 (= res!696291 ((_ is HashMap!1800) (cache!2181 cacheFurthestNullable!103)))))

(assert (=> d!462452 (= (inv!22247 cacheFurthestNullable!103) e!1002712)))

(declare-fun b!1561534 () Bool)

(assert (=> b!1561534 (= e!1002712 (validCacheMapFurthestNullable!84 (cache!2181 cacheFurthestNullable!103) (totalInput!2500 cacheFurthestNullable!103)))))

(assert (= (and d!462452 res!696291) b!1561534))

(assert (=> b!1561534 m!1832980))

(assert (=> start!144942 d!462452))

(declare-fun d!462454 () Bool)

(declare-fun res!696296 () Bool)

(declare-fun e!1002715 () Bool)

(assert (=> d!462454 (=> (not res!696296) (not e!1002715))))

(assert (=> d!462454 (= res!696296 (not (isEmpty!10165 (originalCharacters!3783 lt!540811))))))

(assert (=> d!462454 (= (inv!22250 lt!540811) e!1002715)))

(declare-fun b!1561539 () Bool)

(declare-fun res!696297 () Bool)

(assert (=> b!1561539 (=> (not res!696297) (not e!1002715))))

(declare-fun dynLambda!7552 (Int TokenValue!3059) BalanceConc!11116)

(assert (=> b!1561539 (= res!696297 (= (originalCharacters!3783 lt!540811) (list!6518 (dynLambda!7552 (toChars!4208 (transformation!2969 (rule!4753 lt!540811))) (value!94248 lt!540811)))))))

(declare-fun b!1561540 () Bool)

(assert (=> b!1561540 (= e!1002715 (= (size!13744 lt!540811) (size!13749 (originalCharacters!3783 lt!540811))))))

(assert (= (and d!462454 res!696296) b!1561539))

(assert (= (and b!1561539 res!696297) b!1561540))

(declare-fun b_lambda!49115 () Bool)

(assert (=> (not b_lambda!49115) (not b!1561539)))

(declare-fun t!141556 () Bool)

(declare-fun tb!87393 () Bool)

(assert (=> (and b!1561384 (= (toChars!4208 (transformation!2969 rule!240)) (toChars!4208 (transformation!2969 (rule!4753 lt!540811)))) t!141556) tb!87393))

(declare-fun b!1561545 () Bool)

(declare-fun e!1002718 () Bool)

(declare-fun tp!459533 () Bool)

(assert (=> b!1561545 (= e!1002718 (and (inv!22249 (c!253184 (dynLambda!7552 (toChars!4208 (transformation!2969 (rule!4753 lt!540811))) (value!94248 lt!540811)))) tp!459533))))

(declare-fun result!105686 () Bool)

(assert (=> tb!87393 (= result!105686 (and (inv!22245 (dynLambda!7552 (toChars!4208 (transformation!2969 (rule!4753 lt!540811))) (value!94248 lt!540811))) e!1002718))))

(assert (= tb!87393 b!1561545))

(declare-fun m!1833040 () Bool)

(assert (=> b!1561545 m!1833040))

(declare-fun m!1833042 () Bool)

(assert (=> tb!87393 m!1833042))

(assert (=> b!1561539 t!141556))

(declare-fun b_and!109019 () Bool)

(assert (= b_and!108999 (and (=> t!141556 result!105686) b_and!109019)))

(declare-fun m!1833044 () Bool)

(assert (=> d!462454 m!1833044))

(declare-fun m!1833046 () Bool)

(assert (=> b!1561539 m!1833046))

(assert (=> b!1561539 m!1833046))

(declare-fun m!1833048 () Bool)

(assert (=> b!1561539 m!1833048))

(declare-fun m!1833050 () Bool)

(assert (=> b!1561540 m!1833050))

(assert (=> b!1561381 d!462454))

(declare-fun d!462456 () Bool)

(declare-fun choose!9320 (Int) Bool)

(assert (=> d!462456 (= (Forall!620 lambda!66052) (choose!9320 lambda!66052))))

(declare-fun bs!388921 () Bool)

(assert (= bs!388921 d!462456))

(declare-fun m!1833052 () Bool)

(assert (=> bs!388921 m!1833052))

(assert (=> b!1561382 d!462456))

(declare-fun d!462458 () Bool)

(declare-fun c!253202 () Bool)

(assert (=> d!462458 (= c!253202 ((_ is Node!5587) (c!253184 totalInput!568)))))

(declare-fun e!1002719 () Bool)

(assert (=> d!462458 (= (inv!22249 (c!253184 totalInput!568)) e!1002719)))

(declare-fun b!1561546 () Bool)

(assert (=> b!1561546 (= e!1002719 (inv!22252 (c!253184 totalInput!568)))))

(declare-fun b!1561547 () Bool)

(declare-fun e!1002720 () Bool)

(assert (=> b!1561547 (= e!1002719 e!1002720)))

(declare-fun res!696298 () Bool)

(assert (=> b!1561547 (= res!696298 (not ((_ is Leaf!8281) (c!253184 totalInput!568))))))

(assert (=> b!1561547 (=> res!696298 e!1002720)))

(declare-fun b!1561548 () Bool)

(assert (=> b!1561548 (= e!1002720 (inv!22253 (c!253184 totalInput!568)))))

(assert (= (and d!462458 c!253202) b!1561546))

(assert (= (and d!462458 (not c!253202)) b!1561547))

(assert (= (and b!1561547 (not res!696298)) b!1561548))

(declare-fun m!1833054 () Bool)

(assert (=> b!1561546 m!1833054))

(declare-fun m!1833056 () Bool)

(assert (=> b!1561548 m!1833056))

(assert (=> b!1561400 d!462458))

(declare-fun d!462460 () Bool)

(assert (=> d!462460 (= (get!4873 lt!540809) (v!23801 lt!540809))))

(assert (=> b!1561363 d!462460))

(declare-fun d!462462 () Bool)

(assert (=> d!462462 (= (valid!1486 cacheUp!755) (validCacheMapUp!171 (cache!2180 cacheUp!755)))))

(declare-fun bs!388922 () Bool)

(assert (= bs!388922 d!462462))

(assert (=> bs!388922 m!1833036))

(assert (=> b!1561364 d!462462))

(declare-fun d!462464 () Bool)

(declare-fun e!1002723 () Bool)

(assert (=> d!462464 e!1002723))

(declare-fun res!696301 () Bool)

(assert (=> d!462464 (=> res!696301 e!1002723)))

(declare-fun lt!540850 () Bool)

(assert (=> d!462464 (= res!696301 (not lt!540850))))

(declare-fun drop!795 (List!17007 Int) List!17007)

(assert (=> d!462464 (= lt!540850 (= lt!540806 (drop!795 (list!6518 totalInput!568) (- (size!13749 (list!6518 totalInput!568)) (size!13749 lt!540806)))))))

(assert (=> d!462464 (= (isSuffix!388 lt!540806 (list!6518 totalInput!568)) lt!540850)))

(declare-fun b!1561551 () Bool)

(assert (=> b!1561551 (= e!1002723 (>= (size!13749 (list!6518 totalInput!568)) (size!13749 lt!540806)))))

(assert (= (and d!462464 (not res!696301)) b!1561551))

(assert (=> d!462464 m!1832896))

(declare-fun m!1833058 () Bool)

(assert (=> d!462464 m!1833058))

(assert (=> d!462464 m!1832852))

(assert (=> d!462464 m!1832896))

(declare-fun m!1833060 () Bool)

(assert (=> d!462464 m!1833060))

(assert (=> b!1561551 m!1832896))

(assert (=> b!1561551 m!1833058))

(assert (=> b!1561551 m!1832852))

(assert (=> b!1561385 d!462464))

(declare-fun d!462466 () Bool)

(assert (=> d!462466 (= (list!6518 totalInput!568) (list!6519 (c!253184 totalInput!568)))))

(declare-fun bs!388923 () Bool)

(assert (= bs!388923 d!462466))

(declare-fun m!1833062 () Bool)

(assert (=> bs!388923 m!1833062))

(assert (=> b!1561385 d!462466))

(declare-fun d!462468 () Bool)

(assert (=> d!462468 (= (list!6518 input!1676) (list!6519 (c!253184 input!1676)))))

(declare-fun bs!388924 () Bool)

(assert (= bs!388924 d!462468))

(declare-fun m!1833064 () Bool)

(assert (=> bs!388924 m!1833064))

(assert (=> b!1561385 d!462468))

(declare-fun d!462470 () Bool)

(assert (=> d!462470 (= (isEmpty!10165 (_1!9673 lt!540812)) ((_ is Nil!16939) (_1!9673 lt!540812)))))

(assert (=> b!1561365 d!462470))

(declare-fun bs!388925 () Bool)

(declare-fun d!462472 () Bool)

(assert (= bs!388925 (and d!462472 b!1561382)))

(declare-fun lambda!66058 () Int)

(assert (=> bs!388925 (= lambda!66058 lambda!66052)))

(assert (=> d!462472 true))

(assert (=> d!462472 (< (dynLambda!7548 order!10035 (toChars!4208 (transformation!2969 rule!240))) (dynLambda!7547 order!10033 lambda!66058))))

(assert (=> d!462472 true))

(assert (=> d!462472 (< (dynLambda!7546 order!10031 (toValue!4349 (transformation!2969 rule!240))) (dynLambda!7547 order!10033 lambda!66058))))

(assert (=> d!462472 (= (semiInverseModEq!1125 (toChars!4208 (transformation!2969 rule!240)) (toValue!4349 (transformation!2969 rule!240))) (Forall!620 lambda!66058))))

(declare-fun bs!388926 () Bool)

(assert (= bs!388926 d!462472))

(declare-fun m!1833066 () Bool)

(assert (=> bs!388926 m!1833066))

(assert (=> b!1561365 d!462472))

(declare-fun bm!102276 () Bool)

(declare-fun call!102287 () Bool)

(assert (=> bm!102276 (= call!102287 (nullable!1280 (regex!2969 rule!240)))))

(declare-fun b!1561584 () Bool)

(declare-fun c!253220 () Bool)

(assert (=> b!1561584 (= c!253220 call!102287)))

(declare-fun lt!540916 () Unit!26150)

(declare-fun lt!540907 () Unit!26150)

(assert (=> b!1561584 (= lt!540916 lt!540907)))

(assert (=> b!1561584 (= lt!540806 Nil!16939)))

(declare-fun call!102286 () Unit!26150)

(assert (=> b!1561584 (= lt!540907 call!102286)))

(declare-fun lt!540915 () Unit!26150)

(declare-fun lt!540923 () Unit!26150)

(assert (=> b!1561584 (= lt!540915 lt!540923)))

(declare-fun call!102283 () Bool)

(assert (=> b!1561584 call!102283))

(declare-fun call!102288 () Unit!26150)

(assert (=> b!1561584 (= lt!540923 call!102288)))

(declare-fun e!1002744 () tuple2!16554)

(declare-fun e!1002741 () tuple2!16554)

(assert (=> b!1561584 (= e!1002744 e!1002741)))

(declare-fun b!1561585 () Bool)

(declare-fun e!1002740 () Bool)

(declare-fun lt!540926 () tuple2!16554)

(assert (=> b!1561585 (= e!1002740 (>= (size!13749 (_1!9673 lt!540926)) (size!13749 Nil!16939)))))

(declare-fun b!1561586 () Bool)

(declare-fun e!1002742 () tuple2!16554)

(declare-fun call!102285 () tuple2!16554)

(assert (=> b!1561586 (= e!1002742 call!102285)))

(declare-fun b!1561587 () Bool)

(assert (=> b!1561587 (= e!1002741 (tuple2!16555 Nil!16939 Nil!16939))))

(declare-fun b!1561588 () Bool)

(declare-fun e!1002745 () Unit!26150)

(declare-fun Unit!26152 () Unit!26150)

(assert (=> b!1561588 (= e!1002745 Unit!26152)))

(declare-fun bm!102277 () Bool)

(declare-fun lemmaIsPrefixSameLengthThenSameList!133 (List!17007 List!17007 List!17007) Unit!26150)

(assert (=> bm!102277 (= call!102286 (lemmaIsPrefixSameLengthThenSameList!133 lt!540806 Nil!16939 lt!540806))))

(declare-fun b!1561589 () Bool)

(declare-fun e!1002743 () tuple2!16554)

(declare-fun lt!540925 () tuple2!16554)

(assert (=> b!1561589 (= e!1002743 lt!540925)))

(declare-fun b!1561590 () Bool)

(assert (=> b!1561590 (= e!1002742 e!1002743)))

(assert (=> b!1561590 (= lt!540925 call!102285)))

(declare-fun c!253218 () Bool)

(assert (=> b!1561590 (= c!253218 (isEmpty!10165 (_1!9673 lt!540925)))))

(declare-fun bm!102278 () Bool)

(declare-fun lemmaIsPrefixRefl!899 (List!17007 List!17007) Unit!26150)

(assert (=> bm!102278 (= call!102288 (lemmaIsPrefixRefl!899 lt!540806 lt!540806))))

(declare-fun b!1561591 () Bool)

(declare-fun e!1002746 () tuple2!16554)

(assert (=> b!1561591 (= e!1002746 (tuple2!16555 Nil!16939 lt!540806))))

(declare-fun b!1561592 () Bool)

(assert (=> b!1561592 (= e!1002743 (tuple2!16555 Nil!16939 lt!540806))))

(declare-fun lt!540933 () List!17007)

(declare-fun call!102284 () List!17007)

(declare-fun bm!102279 () Bool)

(declare-fun call!102282 () Regex!4297)

(assert (=> bm!102279 (= call!102285 (findLongestMatchInner!344 call!102282 lt!540933 (+ (size!13749 Nil!16939) 1) call!102284 lt!540806 (size!13749 lt!540806)))))

(declare-fun b!1561594 () Bool)

(declare-fun e!1002747 () Bool)

(assert (=> b!1561594 (= e!1002747 e!1002740)))

(declare-fun res!696306 () Bool)

(assert (=> b!1561594 (=> res!696306 e!1002740)))

(assert (=> b!1561594 (= res!696306 (isEmpty!10165 (_1!9673 lt!540926)))))

(declare-fun b!1561595 () Bool)

(declare-fun Unit!26153 () Unit!26150)

(assert (=> b!1561595 (= e!1002745 Unit!26153)))

(declare-fun lt!540912 () Unit!26150)

(assert (=> b!1561595 (= lt!540912 call!102288)))

(assert (=> b!1561595 call!102283))

(declare-fun lt!540917 () Unit!26150)

(assert (=> b!1561595 (= lt!540917 lt!540912)))

(declare-fun lt!540932 () Unit!26150)

(assert (=> b!1561595 (= lt!540932 call!102286)))

(assert (=> b!1561595 (= lt!540806 Nil!16939)))

(declare-fun lt!540927 () Unit!26150)

(assert (=> b!1561595 (= lt!540927 lt!540932)))

(assert (=> b!1561595 false))

(declare-fun bm!102280 () Bool)

(assert (=> bm!102280 (= call!102284 (tail!2217 lt!540806))))

(declare-fun bm!102281 () Bool)

(declare-fun call!102281 () C!8772)

(assert (=> bm!102281 (= call!102282 (derivativeStep!1031 (regex!2969 rule!240) call!102281))))

(declare-fun b!1561596 () Bool)

(declare-fun c!253219 () Bool)

(assert (=> b!1561596 (= c!253219 call!102287)))

(declare-fun lt!540924 () Unit!26150)

(declare-fun lt!540929 () Unit!26150)

(assert (=> b!1561596 (= lt!540924 lt!540929)))

(declare-fun lt!540918 () C!8772)

(declare-fun lt!540911 () List!17007)

(assert (=> b!1561596 (= (++!4423 (++!4423 Nil!16939 (Cons!16939 lt!540918 Nil!16939)) lt!540911) lt!540806)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!448 (List!17007 C!8772 List!17007 List!17007) Unit!26150)

(assert (=> b!1561596 (= lt!540929 (lemmaMoveElementToOtherListKeepsConcatEq!448 Nil!16939 lt!540918 lt!540911 lt!540806))))

(assert (=> b!1561596 (= lt!540911 (tail!2217 lt!540806))))

(assert (=> b!1561596 (= lt!540918 (head!3122 lt!540806))))

(declare-fun lt!540931 () Unit!26150)

(declare-fun lt!540914 () Unit!26150)

(assert (=> b!1561596 (= lt!540931 lt!540914)))

(declare-fun isPrefix!1269 (List!17007 List!17007) Bool)

(declare-fun getSuffix!679 (List!17007 List!17007) List!17007)

(assert (=> b!1561596 (isPrefix!1269 (++!4423 Nil!16939 (Cons!16939 (head!3122 (getSuffix!679 lt!540806 Nil!16939)) Nil!16939)) lt!540806)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!122 (List!17007 List!17007) Unit!26150)

(assert (=> b!1561596 (= lt!540914 (lemmaAddHeadSuffixToPrefixStillPrefix!122 Nil!16939 lt!540806))))

(declare-fun lt!540908 () Unit!26150)

(declare-fun lt!540930 () Unit!26150)

(assert (=> b!1561596 (= lt!540908 lt!540930)))

(assert (=> b!1561596 (= lt!540930 (lemmaAddHeadSuffixToPrefixStillPrefix!122 Nil!16939 lt!540806))))

(assert (=> b!1561596 (= lt!540933 (++!4423 Nil!16939 (Cons!16939 (head!3122 lt!540806) Nil!16939)))))

(declare-fun lt!540922 () Unit!26150)

(assert (=> b!1561596 (= lt!540922 e!1002745)))

(declare-fun c!253216 () Bool)

(assert (=> b!1561596 (= c!253216 (= (size!13749 Nil!16939) (size!13749 lt!540806)))))

(declare-fun lt!540928 () Unit!26150)

(declare-fun lt!540909 () Unit!26150)

(assert (=> b!1561596 (= lt!540928 lt!540909)))

(assert (=> b!1561596 (<= (size!13749 Nil!16939) (size!13749 lt!540806))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!123 (List!17007 List!17007) Unit!26150)

(assert (=> b!1561596 (= lt!540909 (lemmaIsPrefixThenSmallerEqSize!123 Nil!16939 lt!540806))))

(assert (=> b!1561596 (= e!1002744 e!1002742)))

(declare-fun bm!102282 () Bool)

(assert (=> bm!102282 (= call!102281 (head!3122 lt!540806))))

(declare-fun bm!102283 () Bool)

(assert (=> bm!102283 (= call!102283 (isPrefix!1269 lt!540806 lt!540806))))

(declare-fun b!1561597 () Bool)

(assert (=> b!1561597 (= e!1002741 (tuple2!16555 Nil!16939 lt!540806))))

(declare-fun b!1561593 () Bool)

(assert (=> b!1561593 (= e!1002746 e!1002744)))

(declare-fun c!253215 () Bool)

(assert (=> b!1561593 (= c!253215 (= (size!13749 Nil!16939) (size!13749 lt!540806)))))

(declare-fun d!462474 () Bool)

(assert (=> d!462474 e!1002747))

(declare-fun res!696307 () Bool)

(assert (=> d!462474 (=> (not res!696307) (not e!1002747))))

(assert (=> d!462474 (= res!696307 (= (++!4423 (_1!9673 lt!540926) (_2!9673 lt!540926)) lt!540806))))

(assert (=> d!462474 (= lt!540926 e!1002746)))

(declare-fun c!253217 () Bool)

(declare-fun lostCause!397 (Regex!4297) Bool)

(assert (=> d!462474 (= c!253217 (lostCause!397 (regex!2969 rule!240)))))

(declare-fun lt!540934 () Unit!26150)

(declare-fun Unit!26154 () Unit!26150)

(assert (=> d!462474 (= lt!540934 Unit!26154)))

(assert (=> d!462474 (= (getSuffix!679 lt!540806 Nil!16939) lt!540806)))

(declare-fun lt!540921 () Unit!26150)

(declare-fun lt!540920 () Unit!26150)

(assert (=> d!462474 (= lt!540921 lt!540920)))

(declare-fun lt!540919 () List!17007)

(assert (=> d!462474 (= lt!540806 lt!540919)))

(declare-fun lemmaSamePrefixThenSameSuffix!631 (List!17007 List!17007 List!17007 List!17007 List!17007) Unit!26150)

(assert (=> d!462474 (= lt!540920 (lemmaSamePrefixThenSameSuffix!631 Nil!16939 lt!540806 Nil!16939 lt!540919 lt!540806))))

(assert (=> d!462474 (= lt!540919 (getSuffix!679 lt!540806 Nil!16939))))

(declare-fun lt!540910 () Unit!26150)

(declare-fun lt!540913 () Unit!26150)

(assert (=> d!462474 (= lt!540910 lt!540913)))

(assert (=> d!462474 (isPrefix!1269 Nil!16939 (++!4423 Nil!16939 lt!540806))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!794 (List!17007 List!17007) Unit!26150)

(assert (=> d!462474 (= lt!540913 (lemmaConcatTwoListThenFirstIsPrefix!794 Nil!16939 lt!540806))))

(assert (=> d!462474 (validRegex!1721 (regex!2969 rule!240))))

(assert (=> d!462474 (= (findLongestMatchInner!344 (regex!2969 rule!240) Nil!16939 (size!13749 Nil!16939) lt!540806 lt!540806 (size!13749 lt!540806)) lt!540926)))

(assert (= (and d!462474 c!253217) b!1561591))

(assert (= (and d!462474 (not c!253217)) b!1561593))

(assert (= (and b!1561593 c!253215) b!1561584))

(assert (= (and b!1561593 (not c!253215)) b!1561596))

(assert (= (and b!1561584 c!253220) b!1561587))

(assert (= (and b!1561584 (not c!253220)) b!1561597))

(assert (= (and b!1561596 c!253216) b!1561595))

(assert (= (and b!1561596 (not c!253216)) b!1561588))

(assert (= (and b!1561596 c!253219) b!1561590))

(assert (= (and b!1561596 (not c!253219)) b!1561586))

(assert (= (and b!1561590 c!253218) b!1561592))

(assert (= (and b!1561590 (not c!253218)) b!1561589))

(assert (= (or b!1561590 b!1561586) bm!102280))

(assert (= (or b!1561590 b!1561586) bm!102282))

(assert (= (or b!1561590 b!1561586) bm!102281))

(assert (= (or b!1561590 b!1561586) bm!102279))

(assert (= (or b!1561584 b!1561595) bm!102277))

(assert (= (or b!1561584 b!1561595) bm!102278))

(assert (= (or b!1561584 b!1561596) bm!102276))

(assert (= (or b!1561584 b!1561595) bm!102283))

(assert (= (and d!462474 res!696307) b!1561594))

(assert (= (and b!1561594 (not res!696306)) b!1561585))

(assert (=> b!1561596 m!1832852))

(declare-fun m!1833068 () Bool)

(assert (=> b!1561596 m!1833068))

(declare-fun m!1833070 () Bool)

(assert (=> b!1561596 m!1833070))

(assert (=> b!1561596 m!1832850))

(declare-fun m!1833072 () Bool)

(assert (=> b!1561596 m!1833072))

(declare-fun m!1833074 () Bool)

(assert (=> b!1561596 m!1833074))

(declare-fun m!1833076 () Bool)

(assert (=> b!1561596 m!1833076))

(declare-fun m!1833078 () Bool)

(assert (=> b!1561596 m!1833078))

(declare-fun m!1833080 () Bool)

(assert (=> b!1561596 m!1833080))

(declare-fun m!1833082 () Bool)

(assert (=> b!1561596 m!1833082))

(assert (=> b!1561596 m!1833076))

(declare-fun m!1833084 () Bool)

(assert (=> b!1561596 m!1833084))

(declare-fun m!1833086 () Bool)

(assert (=> b!1561596 m!1833086))

(declare-fun m!1833088 () Bool)

(assert (=> b!1561596 m!1833088))

(assert (=> b!1561596 m!1833084))

(declare-fun m!1833090 () Bool)

(assert (=> b!1561596 m!1833090))

(assert (=> b!1561596 m!1833072))

(declare-fun m!1833092 () Bool)

(assert (=> bm!102277 m!1833092))

(assert (=> bm!102282 m!1833088))

(declare-fun m!1833094 () Bool)

(assert (=> b!1561594 m!1833094))

(declare-fun m!1833096 () Bool)

(assert (=> b!1561585 m!1833096))

(assert (=> b!1561585 m!1832850))

(declare-fun m!1833098 () Bool)

(assert (=> d!462474 m!1833098))

(declare-fun m!1833100 () Bool)

(assert (=> d!462474 m!1833100))

(declare-fun m!1833102 () Bool)

(assert (=> d!462474 m!1833102))

(assert (=> d!462474 m!1833100))

(declare-fun m!1833104 () Bool)

(assert (=> d!462474 m!1833104))

(declare-fun m!1833106 () Bool)

(assert (=> d!462474 m!1833106))

(assert (=> d!462474 m!1832986))

(assert (=> d!462474 m!1833072))

(declare-fun m!1833108 () Bool)

(assert (=> d!462474 m!1833108))

(assert (=> bm!102276 m!1832988))

(declare-fun m!1833110 () Bool)

(assert (=> b!1561590 m!1833110))

(assert (=> bm!102280 m!1833080))

(declare-fun m!1833112 () Bool)

(assert (=> bm!102283 m!1833112))

(assert (=> bm!102279 m!1832852))

(declare-fun m!1833114 () Bool)

(assert (=> bm!102279 m!1833114))

(declare-fun m!1833116 () Bool)

(assert (=> bm!102278 m!1833116))

(declare-fun m!1833118 () Bool)

(assert (=> bm!102281 m!1833118))

(assert (=> b!1561365 d!462474))

(declare-fun d!462476 () Bool)

(declare-fun e!1002750 () Bool)

(assert (=> d!462476 e!1002750))

(declare-fun res!696310 () Bool)

(assert (=> d!462476 (=> res!696310 e!1002750)))

(assert (=> d!462476 (= res!696310 (isEmpty!10165 (_1!9673 (findLongestMatchInner!344 (regex!2969 rule!240) Nil!16939 (size!13749 Nil!16939) lt!540806 lt!540806 (size!13749 lt!540806)))))))

(declare-fun lt!540937 () Unit!26150)

(declare-fun choose!9321 (Regex!4297 List!17007) Unit!26150)

(assert (=> d!462476 (= lt!540937 (choose!9321 (regex!2969 rule!240) lt!540806))))

(assert (=> d!462476 (validRegex!1721 (regex!2969 rule!240))))

(assert (=> d!462476 (= (longestMatchIsAcceptedByMatchOrIsEmpty!328 (regex!2969 rule!240) lt!540806) lt!540937)))

(declare-fun b!1561600 () Bool)

(assert (=> b!1561600 (= e!1002750 (matchR!1889 (regex!2969 rule!240) (_1!9673 (findLongestMatchInner!344 (regex!2969 rule!240) Nil!16939 (size!13749 Nil!16939) lt!540806 lt!540806 (size!13749 lt!540806)))))))

(assert (= (and d!462476 (not res!696310)) b!1561600))

(assert (=> d!462476 m!1832850))

(assert (=> d!462476 m!1832852))

(assert (=> d!462476 m!1832854))

(declare-fun m!1833120 () Bool)

(assert (=> d!462476 m!1833120))

(assert (=> d!462476 m!1832852))

(assert (=> d!462476 m!1832986))

(assert (=> d!462476 m!1832850))

(assert (=> d!462476 m!1832962))

(assert (=> b!1561600 m!1832850))

(assert (=> b!1561600 m!1832852))

(assert (=> b!1561600 m!1832850))

(assert (=> b!1561600 m!1832852))

(assert (=> b!1561600 m!1832854))

(assert (=> b!1561600 m!1832974))

(assert (=> b!1561365 d!462476))

(declare-fun d!462478 () Bool)

(declare-fun e!1002753 () Bool)

(assert (=> d!462478 e!1002753))

(declare-fun res!696313 () Bool)

(assert (=> d!462478 (=> (not res!696313) (not e!1002753))))

(assert (=> d!462478 (= res!696313 (semiInverseModEq!1125 (toChars!4208 (transformation!2969 rule!240)) (toValue!4349 (transformation!2969 rule!240))))))

(declare-fun Unit!26155 () Unit!26150)

(assert (=> d!462478 (= (lemmaInv!438 (transformation!2969 rule!240)) Unit!26155)))

(declare-fun b!1561603 () Bool)

(assert (=> b!1561603 (= e!1002753 (equivClasses!1066 (toChars!4208 (transformation!2969 rule!240)) (toValue!4349 (transformation!2969 rule!240))))))

(assert (= (and d!462478 res!696313) b!1561603))

(assert (=> d!462478 m!1832848))

(assert (=> b!1561603 m!1833020))

(assert (=> b!1561365 d!462478))

(declare-fun d!462480 () Bool)

(declare-fun lt!540940 () Int)

(assert (=> d!462480 (>= lt!540940 0)))

(declare-fun e!1002756 () Int)

(assert (=> d!462480 (= lt!540940 e!1002756)))

(declare-fun c!253223 () Bool)

(assert (=> d!462480 (= c!253223 ((_ is Nil!16939) Nil!16939))))

(assert (=> d!462480 (= (size!13749 Nil!16939) lt!540940)))

(declare-fun b!1561608 () Bool)

(assert (=> b!1561608 (= e!1002756 0)))

(declare-fun b!1561609 () Bool)

(assert (=> b!1561609 (= e!1002756 (+ 1 (size!13749 (t!141546 Nil!16939))))))

(assert (= (and d!462480 c!253223) b!1561608))

(assert (= (and d!462480 (not c!253223)) b!1561609))

(declare-fun m!1833122 () Bool)

(assert (=> b!1561609 m!1833122))

(assert (=> b!1561365 d!462480))

(declare-fun d!462482 () Bool)

(declare-fun lt!540941 () Int)

(assert (=> d!462482 (>= lt!540941 0)))

(declare-fun e!1002757 () Int)

(assert (=> d!462482 (= lt!540941 e!1002757)))

(declare-fun c!253224 () Bool)

(assert (=> d!462482 (= c!253224 ((_ is Nil!16939) lt!540806))))

(assert (=> d!462482 (= (size!13749 lt!540806) lt!540941)))

(declare-fun b!1561610 () Bool)

(assert (=> b!1561610 (= e!1002757 0)))

(declare-fun b!1561611 () Bool)

(assert (=> b!1561611 (= e!1002757 (+ 1 (size!13749 (t!141546 lt!540806))))))

(assert (= (and d!462482 c!253224) b!1561610))

(assert (= (and d!462482 (not c!253224)) b!1561611))

(declare-fun m!1833124 () Bool)

(assert (=> b!1561611 m!1833124))

(assert (=> b!1561365 d!462482))

(declare-fun e!1002763 () Bool)

(declare-fun tp!459541 () Bool)

(declare-fun setElem!11204 () Context!1630)

(declare-fun setNonEmpty!11204 () Bool)

(declare-fun setRes!11204 () Bool)

(declare-fun inv!22254 (Context!1630) Bool)

(assert (=> setNonEmpty!11204 (= setRes!11204 (and tp!459541 (inv!22254 setElem!11204) e!1002763))))

(declare-fun setRest!11204 () (InoxSet Context!1630))

(assert (=> setNonEmpty!11204 (= (_1!9669 (_1!9670 (h!22343 mapDefault!8651))) ((_ map or) (store ((as const (Array Context!1630 Bool)) false) setElem!11204 true) setRest!11204))))

(declare-fun b!1561618 () Bool)

(declare-fun e!1002762 () Bool)

(declare-fun tp!459542 () Bool)

(assert (=> b!1561618 (= e!1002762 (and setRes!11204 tp!459542))))

(declare-fun condSetEmpty!11204 () Bool)

(assert (=> b!1561618 (= condSetEmpty!11204 (= (_1!9669 (_1!9670 (h!22343 mapDefault!8651))) ((as const (Array Context!1630 Bool)) false)))))

(declare-fun setIsEmpty!11204 () Bool)

(assert (=> setIsEmpty!11204 setRes!11204))

(assert (=> b!1561367 (= tp!459510 e!1002762)))

(declare-fun b!1561619 () Bool)

(declare-fun tp!459540 () Bool)

(assert (=> b!1561619 (= e!1002763 tp!459540)))

(assert (= (and b!1561618 condSetEmpty!11204) setIsEmpty!11204))

(assert (= (and b!1561618 (not condSetEmpty!11204)) setNonEmpty!11204))

(assert (= setNonEmpty!11204 b!1561619))

(assert (= (and b!1561367 ((_ is Cons!16942) mapDefault!8651)) b!1561618))

(declare-fun m!1833126 () Bool)

(assert (=> setNonEmpty!11204 m!1833126))

(declare-fun setIsEmpty!11209 () Bool)

(declare-fun setRes!11209 () Bool)

(assert (=> setIsEmpty!11209 setRes!11209))

(declare-fun mapNonEmpty!8654 () Bool)

(declare-fun mapRes!8654 () Bool)

(declare-fun tp!459561 () Bool)

(declare-fun e!1002775 () Bool)

(assert (=> mapNonEmpty!8654 (= mapRes!8654 (and tp!459561 e!1002775))))

(declare-fun mapRest!8654 () (Array (_ BitVec 32) List!17010))

(declare-fun mapKey!8654 () (_ BitVec 32))

(declare-fun mapValue!8654 () List!17010)

(assert (=> mapNonEmpty!8654 (= mapRest!8649 (store mapRest!8654 mapKey!8654 mapValue!8654))))

(declare-fun b!1561630 () Bool)

(declare-fun e!1002772 () Bool)

(declare-fun tp!459557 () Bool)

(assert (=> b!1561630 (= e!1002772 tp!459557)))

(declare-fun b!1561631 () Bool)

(declare-fun tp!459560 () Bool)

(assert (=> b!1561631 (= e!1002775 (and setRes!11209 tp!459560))))

(declare-fun condSetEmpty!11209 () Bool)

(assert (=> b!1561631 (= condSetEmpty!11209 (= (_1!9669 (_1!9670 (h!22343 mapValue!8654))) ((as const (Array Context!1630 Bool)) false)))))

(declare-fun e!1002774 () Bool)

(declare-fun setNonEmpty!11209 () Bool)

(declare-fun tp!459563 () Bool)

(declare-fun setElem!11210 () Context!1630)

(assert (=> setNonEmpty!11209 (= setRes!11209 (and tp!459563 (inv!22254 setElem!11210) e!1002774))))

(declare-fun setRest!11209 () (InoxSet Context!1630))

(assert (=> setNonEmpty!11209 (= (_1!9669 (_1!9670 (h!22343 mapValue!8654))) ((_ map or) (store ((as const (Array Context!1630 Bool)) false) setElem!11210 true) setRest!11209))))

(declare-fun b!1561632 () Bool)

(declare-fun e!1002773 () Bool)

(declare-fun setRes!11210 () Bool)

(declare-fun tp!459562 () Bool)

(assert (=> b!1561632 (= e!1002773 (and setRes!11210 tp!459562))))

(declare-fun condSetEmpty!11210 () Bool)

(declare-fun mapDefault!8654 () List!17010)

(assert (=> b!1561632 (= condSetEmpty!11210 (= (_1!9669 (_1!9670 (h!22343 mapDefault!8654))) ((as const (Array Context!1630 Bool)) false)))))

(declare-fun mapIsEmpty!8654 () Bool)

(assert (=> mapIsEmpty!8654 mapRes!8654))

(declare-fun condMapEmpty!8654 () Bool)

(assert (=> mapNonEmpty!8651 (= condMapEmpty!8654 (= mapRest!8649 ((as const (Array (_ BitVec 32) List!17010)) mapDefault!8654)))))

(assert (=> mapNonEmpty!8651 (= tp!459513 (and e!1002773 mapRes!8654))))

(declare-fun setIsEmpty!11210 () Bool)

(assert (=> setIsEmpty!11210 setRes!11210))

(declare-fun b!1561633 () Bool)

(declare-fun tp!459559 () Bool)

(assert (=> b!1561633 (= e!1002774 tp!459559)))

(declare-fun tp!459558 () Bool)

(declare-fun setNonEmpty!11210 () Bool)

(declare-fun setElem!11209 () Context!1630)

(assert (=> setNonEmpty!11210 (= setRes!11210 (and tp!459558 (inv!22254 setElem!11209) e!1002772))))

(declare-fun setRest!11210 () (InoxSet Context!1630))

(assert (=> setNonEmpty!11210 (= (_1!9669 (_1!9670 (h!22343 mapDefault!8654))) ((_ map or) (store ((as const (Array Context!1630 Bool)) false) setElem!11209 true) setRest!11210))))

(assert (= (and mapNonEmpty!8651 condMapEmpty!8654) mapIsEmpty!8654))

(assert (= (and mapNonEmpty!8651 (not condMapEmpty!8654)) mapNonEmpty!8654))

(assert (= (and b!1561631 condSetEmpty!11209) setIsEmpty!11209))

(assert (= (and b!1561631 (not condSetEmpty!11209)) setNonEmpty!11209))

(assert (= setNonEmpty!11209 b!1561633))

(assert (= (and mapNonEmpty!8654 ((_ is Cons!16942) mapValue!8654)) b!1561631))

(assert (= (and b!1561632 condSetEmpty!11210) setIsEmpty!11210))

(assert (= (and b!1561632 (not condSetEmpty!11210)) setNonEmpty!11210))

(assert (= setNonEmpty!11210 b!1561630))

(assert (= (and mapNonEmpty!8651 ((_ is Cons!16942) mapDefault!8654)) b!1561632))

(declare-fun m!1833128 () Bool)

(assert (=> mapNonEmpty!8654 m!1833128))

(declare-fun m!1833130 () Bool)

(assert (=> setNonEmpty!11209 m!1833130))

(declare-fun m!1833132 () Bool)

(assert (=> setNonEmpty!11210 m!1833132))

(declare-fun e!1002777 () Bool)

(declare-fun setNonEmpty!11211 () Bool)

(declare-fun tp!459565 () Bool)

(declare-fun setRes!11211 () Bool)

(declare-fun setElem!11211 () Context!1630)

(assert (=> setNonEmpty!11211 (= setRes!11211 (and tp!459565 (inv!22254 setElem!11211) e!1002777))))

(declare-fun setRest!11211 () (InoxSet Context!1630))

(assert (=> setNonEmpty!11211 (= (_1!9669 (_1!9670 (h!22343 mapValue!8651))) ((_ map or) (store ((as const (Array Context!1630 Bool)) false) setElem!11211 true) setRest!11211))))

(declare-fun b!1561634 () Bool)

(declare-fun e!1002776 () Bool)

(declare-fun tp!459566 () Bool)

(assert (=> b!1561634 (= e!1002776 (and setRes!11211 tp!459566))))

(declare-fun condSetEmpty!11211 () Bool)

(assert (=> b!1561634 (= condSetEmpty!11211 (= (_1!9669 (_1!9670 (h!22343 mapValue!8651))) ((as const (Array Context!1630 Bool)) false)))))

(declare-fun setIsEmpty!11211 () Bool)

(assert (=> setIsEmpty!11211 setRes!11211))

(assert (=> mapNonEmpty!8651 (= tp!459509 e!1002776)))

(declare-fun b!1561635 () Bool)

(declare-fun tp!459564 () Bool)

(assert (=> b!1561635 (= e!1002777 tp!459564)))

(assert (= (and b!1561634 condSetEmpty!11211) setIsEmpty!11211))

(assert (= (and b!1561634 (not condSetEmpty!11211)) setNonEmpty!11211))

(assert (= setNonEmpty!11211 b!1561635))

(assert (= (and mapNonEmpty!8651 ((_ is Cons!16942) mapValue!8651)) b!1561634))

(declare-fun m!1833134 () Bool)

(assert (=> setNonEmpty!11211 m!1833134))

(declare-fun tp!459573 () Bool)

(declare-fun b!1561644 () Bool)

(declare-fun e!1002783 () Bool)

(declare-fun tp!459574 () Bool)

(assert (=> b!1561644 (= e!1002783 (and (inv!22249 (left!13742 (c!253184 input!1676))) tp!459573 (inv!22249 (right!14072 (c!253184 input!1676))) tp!459574))))

(declare-fun b!1561646 () Bool)

(declare-fun e!1002782 () Bool)

(declare-fun tp!459575 () Bool)

(assert (=> b!1561646 (= e!1002782 tp!459575)))

(declare-fun b!1561645 () Bool)

(declare-fun inv!22255 (IArray!11179) Bool)

(assert (=> b!1561645 (= e!1002783 (and (inv!22255 (xs!8387 (c!253184 input!1676))) e!1002782))))

(assert (=> b!1561378 (= tp!459515 (and (inv!22249 (c!253184 input!1676)) e!1002783))))

(assert (= (and b!1561378 ((_ is Node!5587) (c!253184 input!1676))) b!1561644))

(assert (= b!1561645 b!1561646))

(assert (= (and b!1561378 ((_ is Leaf!8281) (c!253184 input!1676))) b!1561645))

(declare-fun m!1833136 () Bool)

(assert (=> b!1561644 m!1833136))

(declare-fun m!1833138 () Bool)

(assert (=> b!1561644 m!1833138))

(declare-fun m!1833140 () Bool)

(assert (=> b!1561645 m!1833140))

(assert (=> b!1561378 m!1832846))

(declare-fun e!1002785 () Bool)

(declare-fun tp!459576 () Bool)

(declare-fun tp!459577 () Bool)

(declare-fun b!1561647 () Bool)

(assert (=> b!1561647 (= e!1002785 (and (inv!22249 (left!13742 (c!253184 (totalInput!2500 cacheFurthestNullable!103)))) tp!459576 (inv!22249 (right!14072 (c!253184 (totalInput!2500 cacheFurthestNullable!103)))) tp!459577))))

(declare-fun b!1561649 () Bool)

(declare-fun e!1002784 () Bool)

(declare-fun tp!459578 () Bool)

(assert (=> b!1561649 (= e!1002784 tp!459578)))

(declare-fun b!1561648 () Bool)

(assert (=> b!1561648 (= e!1002785 (and (inv!22255 (xs!8387 (c!253184 (totalInput!2500 cacheFurthestNullable!103)))) e!1002784))))

(assert (=> b!1561369 (= tp!459505 (and (inv!22249 (c!253184 (totalInput!2500 cacheFurthestNullable!103))) e!1002785))))

(assert (= (and b!1561369 ((_ is Node!5587) (c!253184 (totalInput!2500 cacheFurthestNullable!103)))) b!1561647))

(assert (= b!1561648 b!1561649))

(assert (= (and b!1561369 ((_ is Leaf!8281) (c!253184 (totalInput!2500 cacheFurthestNullable!103)))) b!1561648))

(declare-fun m!1833142 () Bool)

(assert (=> b!1561647 m!1833142))

(declare-fun m!1833144 () Bool)

(assert (=> b!1561647 m!1833144))

(declare-fun m!1833146 () Bool)

(assert (=> b!1561648 m!1833146))

(assert (=> b!1561369 m!1832868))

(declare-fun b!1561664 () Bool)

(declare-fun e!1002798 () Bool)

(declare-fun tp!459605 () Bool)

(assert (=> b!1561664 (= e!1002798 tp!459605)))

(declare-fun condMapEmpty!8657 () Bool)

(declare-fun mapDefault!8657 () List!17011)

(assert (=> mapNonEmpty!8650 (= condMapEmpty!8657 (= mapRest!8650 ((as const (Array (_ BitVec 32) List!17011)) mapDefault!8657)))))

(declare-fun e!1002803 () Bool)

(declare-fun mapRes!8657 () Bool)

(assert (=> mapNonEmpty!8650 (= tp!459512 (and e!1002803 mapRes!8657))))

(declare-fun tp!459606 () Bool)

(declare-fun setElem!11216 () Context!1630)

(declare-fun e!1002800 () Bool)

(declare-fun setNonEmpty!11216 () Bool)

(declare-fun setRes!11217 () Bool)

(assert (=> setNonEmpty!11216 (= setRes!11217 (and tp!459606 (inv!22254 setElem!11216) e!1002800))))

(declare-fun setRest!11216 () (InoxSet Context!1630))

(assert (=> setNonEmpty!11216 (= (_2!9672 (h!22344 mapDefault!8657)) ((_ map or) (store ((as const (Array Context!1630 Bool)) false) setElem!11216 true) setRest!11216))))

(declare-fun setIsEmpty!11216 () Bool)

(assert (=> setIsEmpty!11216 setRes!11217))

(declare-fun b!1561665 () Bool)

(declare-fun setRes!11216 () Bool)

(declare-fun mapValue!8657 () List!17011)

(declare-fun e!1002802 () Bool)

(declare-fun tp_is_empty!7087 () Bool)

(declare-fun tp!459610 () Bool)

(declare-fun tp!459604 () Bool)

(assert (=> b!1561665 (= e!1002802 (and tp!459610 (inv!22254 (_2!9671 (_1!9672 (h!22344 mapValue!8657)))) e!1002798 tp_is_empty!7087 setRes!11216 tp!459604))))

(declare-fun condSetEmpty!11216 () Bool)

(assert (=> b!1561665 (= condSetEmpty!11216 (= (_2!9672 (h!22344 mapValue!8657)) ((as const (Array Context!1630 Bool)) false)))))

(declare-fun b!1561666 () Bool)

(declare-fun e!1002801 () Bool)

(declare-fun tp!459601 () Bool)

(assert (=> b!1561666 (= e!1002801 tp!459601)))

(declare-fun mapNonEmpty!8657 () Bool)

(declare-fun tp!459609 () Bool)

(assert (=> mapNonEmpty!8657 (= mapRes!8657 (and tp!459609 e!1002802))))

(declare-fun mapRest!8657 () (Array (_ BitVec 32) List!17011))

(declare-fun mapKey!8657 () (_ BitVec 32))

(assert (=> mapNonEmpty!8657 (= mapRest!8650 (store mapRest!8657 mapKey!8657 mapValue!8657))))

(declare-fun setElem!11217 () Context!1630)

(declare-fun tp!459608 () Bool)

(declare-fun setNonEmpty!11217 () Bool)

(assert (=> setNonEmpty!11217 (= setRes!11216 (and tp!459608 (inv!22254 setElem!11217) e!1002801))))

(declare-fun setRest!11217 () (InoxSet Context!1630))

(assert (=> setNonEmpty!11217 (= (_2!9672 (h!22344 mapValue!8657)) ((_ map or) (store ((as const (Array Context!1630 Bool)) false) setElem!11217 true) setRest!11217))))

(declare-fun mapIsEmpty!8657 () Bool)

(assert (=> mapIsEmpty!8657 mapRes!8657))

(declare-fun b!1561667 () Bool)

(declare-fun tp!459603 () Bool)

(assert (=> b!1561667 (= e!1002800 tp!459603)))

(declare-fun e!1002799 () Bool)

(declare-fun tp!459611 () Bool)

(declare-fun b!1561668 () Bool)

(declare-fun tp!459607 () Bool)

(assert (=> b!1561668 (= e!1002803 (and tp!459607 (inv!22254 (_2!9671 (_1!9672 (h!22344 mapDefault!8657)))) e!1002799 tp_is_empty!7087 setRes!11217 tp!459611))))

(declare-fun condSetEmpty!11217 () Bool)

(assert (=> b!1561668 (= condSetEmpty!11217 (= (_2!9672 (h!22344 mapDefault!8657)) ((as const (Array Context!1630 Bool)) false)))))

(declare-fun setIsEmpty!11217 () Bool)

(assert (=> setIsEmpty!11217 setRes!11216))

(declare-fun b!1561669 () Bool)

(declare-fun tp!459602 () Bool)

(assert (=> b!1561669 (= e!1002799 tp!459602)))

(assert (= (and mapNonEmpty!8650 condMapEmpty!8657) mapIsEmpty!8657))

(assert (= (and mapNonEmpty!8650 (not condMapEmpty!8657)) mapNonEmpty!8657))

(assert (= b!1561665 b!1561664))

(assert (= (and b!1561665 condSetEmpty!11216) setIsEmpty!11217))

(assert (= (and b!1561665 (not condSetEmpty!11216)) setNonEmpty!11217))

(assert (= setNonEmpty!11217 b!1561666))

(assert (= (and mapNonEmpty!8657 ((_ is Cons!16943) mapValue!8657)) b!1561665))

(assert (= b!1561668 b!1561669))

(assert (= (and b!1561668 condSetEmpty!11217) setIsEmpty!11216))

(assert (= (and b!1561668 (not condSetEmpty!11217)) setNonEmpty!11216))

(assert (= setNonEmpty!11216 b!1561667))

(assert (= (and mapNonEmpty!8650 ((_ is Cons!16943) mapDefault!8657)) b!1561668))

(declare-fun m!1833148 () Bool)

(assert (=> setNonEmpty!11216 m!1833148))

(declare-fun m!1833150 () Bool)

(assert (=> mapNonEmpty!8657 m!1833150))

(declare-fun m!1833152 () Bool)

(assert (=> setNonEmpty!11217 m!1833152))

(declare-fun m!1833154 () Bool)

(assert (=> b!1561668 m!1833154))

(declare-fun m!1833156 () Bool)

(assert (=> b!1561665 m!1833156))

(declare-fun setIsEmpty!11220 () Bool)

(declare-fun setRes!11220 () Bool)

(assert (=> setIsEmpty!11220 setRes!11220))

(declare-fun e!1002812 () Bool)

(declare-fun tp!459624 () Bool)

(declare-fun e!1002810 () Bool)

(declare-fun b!1561678 () Bool)

(declare-fun tp!459623 () Bool)

(assert (=> b!1561678 (= e!1002812 (and tp!459623 (inv!22254 (_2!9671 (_1!9672 (h!22344 mapValue!8649)))) e!1002810 tp_is_empty!7087 setRes!11220 tp!459624))))

(declare-fun condSetEmpty!11220 () Bool)

(assert (=> b!1561678 (= condSetEmpty!11220 (= (_2!9672 (h!22344 mapValue!8649)) ((as const (Array Context!1630 Bool)) false)))))

(assert (=> mapNonEmpty!8650 (= tp!459522 e!1002812)))

(declare-fun b!1561679 () Bool)

(declare-fun tp!459622 () Bool)

(assert (=> b!1561679 (= e!1002810 tp!459622)))

(declare-fun e!1002811 () Bool)

(declare-fun setNonEmpty!11220 () Bool)

(declare-fun tp!459626 () Bool)

(declare-fun setElem!11220 () Context!1630)

(assert (=> setNonEmpty!11220 (= setRes!11220 (and tp!459626 (inv!22254 setElem!11220) e!1002811))))

(declare-fun setRest!11220 () (InoxSet Context!1630))

(assert (=> setNonEmpty!11220 (= (_2!9672 (h!22344 mapValue!8649)) ((_ map or) (store ((as const (Array Context!1630 Bool)) false) setElem!11220 true) setRest!11220))))

(declare-fun b!1561680 () Bool)

(declare-fun tp!459625 () Bool)

(assert (=> b!1561680 (= e!1002811 tp!459625)))

(assert (= b!1561678 b!1561679))

(assert (= (and b!1561678 condSetEmpty!11220) setIsEmpty!11220))

(assert (= (and b!1561678 (not condSetEmpty!11220)) setNonEmpty!11220))

(assert (= setNonEmpty!11220 b!1561680))

(assert (= (and mapNonEmpty!8650 ((_ is Cons!16943) mapValue!8649)) b!1561678))

(declare-fun m!1833158 () Bool)

(assert (=> b!1561678 m!1833158))

(declare-fun m!1833160 () Bool)

(assert (=> setNonEmpty!11220 m!1833160))

(declare-fun setIsEmpty!11221 () Bool)

(declare-fun setRes!11221 () Bool)

(assert (=> setIsEmpty!11221 setRes!11221))

(declare-fun b!1561681 () Bool)

(declare-fun e!1002813 () Bool)

(declare-fun tp!459628 () Bool)

(declare-fun tp!459629 () Bool)

(declare-fun e!1002815 () Bool)

(assert (=> b!1561681 (= e!1002815 (and tp!459628 (inv!22254 (_2!9671 (_1!9672 (h!22344 mapDefault!8650)))) e!1002813 tp_is_empty!7087 setRes!11221 tp!459629))))

(declare-fun condSetEmpty!11221 () Bool)

(assert (=> b!1561681 (= condSetEmpty!11221 (= (_2!9672 (h!22344 mapDefault!8650)) ((as const (Array Context!1630 Bool)) false)))))

(assert (=> b!1561380 (= tp!459517 e!1002815)))

(declare-fun b!1561682 () Bool)

(declare-fun tp!459627 () Bool)

(assert (=> b!1561682 (= e!1002813 tp!459627)))

(declare-fun tp!459631 () Bool)

(declare-fun e!1002814 () Bool)

(declare-fun setElem!11221 () Context!1630)

(declare-fun setNonEmpty!11221 () Bool)

(assert (=> setNonEmpty!11221 (= setRes!11221 (and tp!459631 (inv!22254 setElem!11221) e!1002814))))

(declare-fun setRest!11221 () (InoxSet Context!1630))

(assert (=> setNonEmpty!11221 (= (_2!9672 (h!22344 mapDefault!8650)) ((_ map or) (store ((as const (Array Context!1630 Bool)) false) setElem!11221 true) setRest!11221))))

(declare-fun b!1561683 () Bool)

(declare-fun tp!459630 () Bool)

(assert (=> b!1561683 (= e!1002814 tp!459630)))

(assert (= b!1561681 b!1561682))

(assert (= (and b!1561681 condSetEmpty!11221) setIsEmpty!11221))

(assert (= (and b!1561681 (not condSetEmpty!11221)) setNonEmpty!11221))

(assert (= setNonEmpty!11221 b!1561683))

(assert (= (and b!1561380 ((_ is Cons!16943) mapDefault!8650)) b!1561681))

(declare-fun m!1833162 () Bool)

(assert (=> b!1561681 m!1833162))

(declare-fun m!1833164 () Bool)

(assert (=> setNonEmpty!11221 m!1833164))

(declare-fun setIsEmpty!11222 () Bool)

(declare-fun setRes!11222 () Bool)

(assert (=> setIsEmpty!11222 setRes!11222))

(declare-fun b!1561684 () Bool)

(declare-fun e!1002816 () Bool)

(declare-fun tp!459634 () Bool)

(declare-fun e!1002818 () Bool)

(declare-fun tp!459633 () Bool)

(assert (=> b!1561684 (= e!1002818 (and tp!459633 (inv!22254 (_2!9671 (_1!9672 (h!22344 (zeroValue!2114 (v!23806 (underlying!3923 (v!23807 (underlying!3924 (cache!2182 cacheDown!768)))))))))) e!1002816 tp_is_empty!7087 setRes!11222 tp!459634))))

(declare-fun condSetEmpty!11222 () Bool)

(assert (=> b!1561684 (= condSetEmpty!11222 (= (_2!9672 (h!22344 (zeroValue!2114 (v!23806 (underlying!3923 (v!23807 (underlying!3924 (cache!2182 cacheDown!768)))))))) ((as const (Array Context!1630 Bool)) false)))))

(assert (=> b!1561390 (= tp!459524 e!1002818)))

(declare-fun b!1561685 () Bool)

(declare-fun tp!459632 () Bool)

(assert (=> b!1561685 (= e!1002816 tp!459632)))

(declare-fun setElem!11222 () Context!1630)

(declare-fun e!1002817 () Bool)

(declare-fun tp!459636 () Bool)

(declare-fun setNonEmpty!11222 () Bool)

(assert (=> setNonEmpty!11222 (= setRes!11222 (and tp!459636 (inv!22254 setElem!11222) e!1002817))))

(declare-fun setRest!11222 () (InoxSet Context!1630))

(assert (=> setNonEmpty!11222 (= (_2!9672 (h!22344 (zeroValue!2114 (v!23806 (underlying!3923 (v!23807 (underlying!3924 (cache!2182 cacheDown!768)))))))) ((_ map or) (store ((as const (Array Context!1630 Bool)) false) setElem!11222 true) setRest!11222))))

(declare-fun b!1561686 () Bool)

(declare-fun tp!459635 () Bool)

(assert (=> b!1561686 (= e!1002817 tp!459635)))

(assert (= b!1561684 b!1561685))

(assert (= (and b!1561684 condSetEmpty!11222) setIsEmpty!11222))

(assert (= (and b!1561684 (not condSetEmpty!11222)) setNonEmpty!11222))

(assert (= setNonEmpty!11222 b!1561686))

(assert (= (and b!1561390 ((_ is Cons!16943) (zeroValue!2114 (v!23806 (underlying!3923 (v!23807 (underlying!3924 (cache!2182 cacheDown!768)))))))) b!1561684))

(declare-fun m!1833166 () Bool)

(assert (=> b!1561684 m!1833166))

(declare-fun m!1833168 () Bool)

(assert (=> setNonEmpty!11222 m!1833168))

(declare-fun setIsEmpty!11223 () Bool)

(declare-fun setRes!11223 () Bool)

(assert (=> setIsEmpty!11223 setRes!11223))

(declare-fun e!1002819 () Bool)

(declare-fun e!1002821 () Bool)

(declare-fun tp!459639 () Bool)

(declare-fun b!1561687 () Bool)

(declare-fun tp!459638 () Bool)

(assert (=> b!1561687 (= e!1002821 (and tp!459638 (inv!22254 (_2!9671 (_1!9672 (h!22344 (minValue!2114 (v!23806 (underlying!3923 (v!23807 (underlying!3924 (cache!2182 cacheDown!768)))))))))) e!1002819 tp_is_empty!7087 setRes!11223 tp!459639))))

(declare-fun condSetEmpty!11223 () Bool)

(assert (=> b!1561687 (= condSetEmpty!11223 (= (_2!9672 (h!22344 (minValue!2114 (v!23806 (underlying!3923 (v!23807 (underlying!3924 (cache!2182 cacheDown!768)))))))) ((as const (Array Context!1630 Bool)) false)))))

(assert (=> b!1561390 (= tp!459504 e!1002821)))

(declare-fun b!1561688 () Bool)

(declare-fun tp!459637 () Bool)

(assert (=> b!1561688 (= e!1002819 tp!459637)))

(declare-fun setElem!11223 () Context!1630)

(declare-fun setNonEmpty!11223 () Bool)

(declare-fun tp!459641 () Bool)

(declare-fun e!1002820 () Bool)

(assert (=> setNonEmpty!11223 (= setRes!11223 (and tp!459641 (inv!22254 setElem!11223) e!1002820))))

(declare-fun setRest!11223 () (InoxSet Context!1630))

(assert (=> setNonEmpty!11223 (= (_2!9672 (h!22344 (minValue!2114 (v!23806 (underlying!3923 (v!23807 (underlying!3924 (cache!2182 cacheDown!768)))))))) ((_ map or) (store ((as const (Array Context!1630 Bool)) false) setElem!11223 true) setRest!11223))))

(declare-fun b!1561689 () Bool)

(declare-fun tp!459640 () Bool)

(assert (=> b!1561689 (= e!1002820 tp!459640)))

(assert (= b!1561687 b!1561688))

(assert (= (and b!1561687 condSetEmpty!11223) setIsEmpty!11223))

(assert (= (and b!1561687 (not condSetEmpty!11223)) setNonEmpty!11223))

(assert (= setNonEmpty!11223 b!1561689))

(assert (= (and b!1561390 ((_ is Cons!16943) (minValue!2114 (v!23806 (underlying!3923 (v!23807 (underlying!3924 (cache!2182 cacheDown!768)))))))) b!1561687))

(declare-fun m!1833170 () Bool)

(assert (=> b!1561687 m!1833170))

(declare-fun m!1833172 () Bool)

(assert (=> setNonEmpty!11223 m!1833172))

(declare-fun setRes!11224 () Bool)

(declare-fun tp!459643 () Bool)

(declare-fun setElem!11224 () Context!1630)

(declare-fun setNonEmpty!11224 () Bool)

(declare-fun e!1002823 () Bool)

(assert (=> setNonEmpty!11224 (= setRes!11224 (and tp!459643 (inv!22254 setElem!11224) e!1002823))))

(declare-fun setRest!11224 () (InoxSet Context!1630))

(assert (=> setNonEmpty!11224 (= (_1!9669 (_1!9670 (h!22343 (zeroValue!2113 (v!23804 (underlying!3921 (v!23805 (underlying!3922 (cache!2181 cacheFurthestNullable!103))))))))) ((_ map or) (store ((as const (Array Context!1630 Bool)) false) setElem!11224 true) setRest!11224))))

(declare-fun b!1561690 () Bool)

(declare-fun e!1002822 () Bool)

(declare-fun tp!459644 () Bool)

(assert (=> b!1561690 (= e!1002822 (and setRes!11224 tp!459644))))

(declare-fun condSetEmpty!11224 () Bool)

(assert (=> b!1561690 (= condSetEmpty!11224 (= (_1!9669 (_1!9670 (h!22343 (zeroValue!2113 (v!23804 (underlying!3921 (v!23805 (underlying!3922 (cache!2181 cacheFurthestNullable!103))))))))) ((as const (Array Context!1630 Bool)) false)))))

(declare-fun setIsEmpty!11224 () Bool)

(assert (=> setIsEmpty!11224 setRes!11224))

(assert (=> b!1561372 (= tp!459518 e!1002822)))

(declare-fun b!1561691 () Bool)

(declare-fun tp!459642 () Bool)

(assert (=> b!1561691 (= e!1002823 tp!459642)))

(assert (= (and b!1561690 condSetEmpty!11224) setIsEmpty!11224))

(assert (= (and b!1561690 (not condSetEmpty!11224)) setNonEmpty!11224))

(assert (= setNonEmpty!11224 b!1561691))

(assert (= (and b!1561372 ((_ is Cons!16942) (zeroValue!2113 (v!23804 (underlying!3921 (v!23805 (underlying!3922 (cache!2181 cacheFurthestNullable!103)))))))) b!1561690))

(declare-fun m!1833174 () Bool)

(assert (=> setNonEmpty!11224 m!1833174))

(declare-fun setElem!11225 () Context!1630)

(declare-fun e!1002825 () Bool)

(declare-fun setNonEmpty!11225 () Bool)

(declare-fun setRes!11225 () Bool)

(declare-fun tp!459646 () Bool)

(assert (=> setNonEmpty!11225 (= setRes!11225 (and tp!459646 (inv!22254 setElem!11225) e!1002825))))

(declare-fun setRest!11225 () (InoxSet Context!1630))

(assert (=> setNonEmpty!11225 (= (_1!9669 (_1!9670 (h!22343 (minValue!2113 (v!23804 (underlying!3921 (v!23805 (underlying!3922 (cache!2181 cacheFurthestNullable!103))))))))) ((_ map or) (store ((as const (Array Context!1630 Bool)) false) setElem!11225 true) setRest!11225))))

(declare-fun b!1561692 () Bool)

(declare-fun e!1002824 () Bool)

(declare-fun tp!459647 () Bool)

(assert (=> b!1561692 (= e!1002824 (and setRes!11225 tp!459647))))

(declare-fun condSetEmpty!11225 () Bool)

(assert (=> b!1561692 (= condSetEmpty!11225 (= (_1!9669 (_1!9670 (h!22343 (minValue!2113 (v!23804 (underlying!3921 (v!23805 (underlying!3922 (cache!2181 cacheFurthestNullable!103))))))))) ((as const (Array Context!1630 Bool)) false)))))

(declare-fun setIsEmpty!11225 () Bool)

(assert (=> setIsEmpty!11225 setRes!11225))

(assert (=> b!1561372 (= tp!459523 e!1002824)))

(declare-fun b!1561693 () Bool)

(declare-fun tp!459645 () Bool)

(assert (=> b!1561693 (= e!1002825 tp!459645)))

(assert (= (and b!1561692 condSetEmpty!11225) setIsEmpty!11225))

(assert (= (and b!1561692 (not condSetEmpty!11225)) setNonEmpty!11225))

(assert (= setNonEmpty!11225 b!1561693))

(assert (= (and b!1561372 ((_ is Cons!16942) (minValue!2113 (v!23804 (underlying!3921 (v!23805 (underlying!3922 (cache!2181 cacheFurthestNullable!103)))))))) b!1561692))

(declare-fun m!1833176 () Bool)

(assert (=> setNonEmpty!11225 m!1833176))

(declare-fun b!1561694 () Bool)

(declare-fun tp!459648 () Bool)

(declare-fun e!1002827 () Bool)

(declare-fun tp!459649 () Bool)

(assert (=> b!1561694 (= e!1002827 (and (inv!22249 (left!13742 (c!253184 totalInput!568))) tp!459648 (inv!22249 (right!14072 (c!253184 totalInput!568))) tp!459649))))

(declare-fun b!1561696 () Bool)

(declare-fun e!1002826 () Bool)

(declare-fun tp!459650 () Bool)

(assert (=> b!1561696 (= e!1002826 tp!459650)))

(declare-fun b!1561695 () Bool)

(assert (=> b!1561695 (= e!1002827 (and (inv!22255 (xs!8387 (c!253184 totalInput!568))) e!1002826))))

(assert (=> b!1561400 (= tp!459508 (and (inv!22249 (c!253184 totalInput!568)) e!1002827))))

(assert (= (and b!1561400 ((_ is Node!5587) (c!253184 totalInput!568))) b!1561694))

(assert (= b!1561695 b!1561696))

(assert (= (and b!1561400 ((_ is Leaf!8281) (c!253184 totalInput!568))) b!1561695))

(declare-fun m!1833178 () Bool)

(assert (=> b!1561694 m!1833178))

(declare-fun m!1833180 () Bool)

(assert (=> b!1561694 m!1833180))

(declare-fun m!1833182 () Bool)

(assert (=> b!1561695 m!1833182))

(assert (=> b!1561400 m!1832812))

(declare-fun setIsEmpty!11228 () Bool)

(declare-fun setRes!11228 () Bool)

(assert (=> setIsEmpty!11228 setRes!11228))

(declare-fun b!1561705 () Bool)

(declare-fun e!1002834 () Bool)

(declare-fun tp!459661 () Bool)

(assert (=> b!1561705 (= e!1002834 tp!459661)))

(declare-fun b!1561706 () Bool)

(declare-fun e!1002836 () Bool)

(declare-fun tp!459662 () Bool)

(assert (=> b!1561706 (= e!1002836 tp!459662)))

(declare-fun b!1561707 () Bool)

(declare-fun tp!459659 () Bool)

(declare-fun e!1002835 () Bool)

(assert (=> b!1561707 (= e!1002835 (and (inv!22254 (_1!9667 (_1!9668 (h!22342 mapDefault!8649)))) e!1002834 tp_is_empty!7087 setRes!11228 tp!459659))))

(declare-fun condSetEmpty!11228 () Bool)

(assert (=> b!1561707 (= condSetEmpty!11228 (= (_2!9668 (h!22342 mapDefault!8649)) ((as const (Array Context!1630 Bool)) false)))))

(declare-fun setElem!11228 () Context!1630)

(declare-fun setNonEmpty!11228 () Bool)

(declare-fun tp!459660 () Bool)

(assert (=> setNonEmpty!11228 (= setRes!11228 (and tp!459660 (inv!22254 setElem!11228) e!1002836))))

(declare-fun setRest!11228 () (InoxSet Context!1630))

(assert (=> setNonEmpty!11228 (= (_2!9668 (h!22342 mapDefault!8649)) ((_ map or) (store ((as const (Array Context!1630 Bool)) false) setElem!11228 true) setRest!11228))))

(assert (=> b!1561401 (= tp!459516 e!1002835)))

(assert (= b!1561707 b!1561705))

(assert (= (and b!1561707 condSetEmpty!11228) setIsEmpty!11228))

(assert (= (and b!1561707 (not condSetEmpty!11228)) setNonEmpty!11228))

(assert (= setNonEmpty!11228 b!1561706))

(assert (= (and b!1561401 ((_ is Cons!16941) mapDefault!8649)) b!1561707))

(declare-fun m!1833184 () Bool)

(assert (=> b!1561707 m!1833184))

(declare-fun m!1833186 () Bool)

(assert (=> setNonEmpty!11228 m!1833186))

(declare-fun mapIsEmpty!8660 () Bool)

(declare-fun mapRes!8660 () Bool)

(assert (=> mapIsEmpty!8660 mapRes!8660))

(declare-fun setIsEmpty!11233 () Bool)

(declare-fun setRes!11234 () Bool)

(assert (=> setIsEmpty!11233 setRes!11234))

(declare-fun setIsEmpty!11234 () Bool)

(declare-fun setRes!11233 () Bool)

(assert (=> setIsEmpty!11234 setRes!11233))

(declare-fun mapNonEmpty!8660 () Bool)

(declare-fun tp!459683 () Bool)

(declare-fun e!1002852 () Bool)

(assert (=> mapNonEmpty!8660 (= mapRes!8660 (and tp!459683 e!1002852))))

(declare-fun mapRest!8660 () (Array (_ BitVec 32) List!17009))

(declare-fun mapValue!8660 () List!17009)

(declare-fun mapKey!8660 () (_ BitVec 32))

(assert (=> mapNonEmpty!8660 (= mapRest!8651 (store mapRest!8660 mapKey!8660 mapValue!8660))))

(declare-fun condMapEmpty!8660 () Bool)

(declare-fun mapDefault!8660 () List!17009)

(assert (=> mapNonEmpty!8649 (= condMapEmpty!8660 (= mapRest!8651 ((as const (Array (_ BitVec 32) List!17009)) mapDefault!8660)))))

(declare-fun e!1002851 () Bool)

(assert (=> mapNonEmpty!8649 (= tp!459529 (and e!1002851 mapRes!8660))))

(declare-fun e!1002850 () Bool)

(declare-fun setElem!11233 () Context!1630)

(declare-fun setNonEmpty!11233 () Bool)

(declare-fun tp!459682 () Bool)

(assert (=> setNonEmpty!11233 (= setRes!11234 (and tp!459682 (inv!22254 setElem!11233) e!1002850))))

(declare-fun setRest!11233 () (InoxSet Context!1630))

(assert (=> setNonEmpty!11233 (= (_2!9668 (h!22342 mapDefault!8660)) ((_ map or) (store ((as const (Array Context!1630 Bool)) false) setElem!11233 true) setRest!11233))))

(declare-fun b!1561722 () Bool)

(declare-fun e!1002854 () Bool)

(declare-fun tp!459686 () Bool)

(assert (=> b!1561722 (= e!1002854 tp!459686)))

(declare-fun b!1561723 () Bool)

(declare-fun e!1002849 () Bool)

(declare-fun tp!459681 () Bool)

(assert (=> b!1561723 (= e!1002849 tp!459681)))

(declare-fun b!1561724 () Bool)

(declare-fun tp!459687 () Bool)

(assert (=> b!1561724 (= e!1002850 tp!459687)))

(declare-fun b!1561725 () Bool)

(declare-fun e!1002853 () Bool)

(declare-fun tp!459688 () Bool)

(assert (=> b!1561725 (= e!1002853 tp!459688)))

(declare-fun tp!459689 () Bool)

(declare-fun b!1561726 () Bool)

(assert (=> b!1561726 (= e!1002852 (and (inv!22254 (_1!9667 (_1!9668 (h!22342 mapValue!8660)))) e!1002854 tp_is_empty!7087 setRes!11233 tp!459689))))

(declare-fun condSetEmpty!11234 () Bool)

(assert (=> b!1561726 (= condSetEmpty!11234 (= (_2!9668 (h!22342 mapValue!8660)) ((as const (Array Context!1630 Bool)) false)))))

(declare-fun tp!459684 () Bool)

(declare-fun b!1561727 () Bool)

(assert (=> b!1561727 (= e!1002851 (and (inv!22254 (_1!9667 (_1!9668 (h!22342 mapDefault!8660)))) e!1002849 tp_is_empty!7087 setRes!11234 tp!459684))))

(declare-fun condSetEmpty!11233 () Bool)

(assert (=> b!1561727 (= condSetEmpty!11233 (= (_2!9668 (h!22342 mapDefault!8660)) ((as const (Array Context!1630 Bool)) false)))))

(declare-fun setElem!11234 () Context!1630)

(declare-fun tp!459685 () Bool)

(declare-fun setNonEmpty!11234 () Bool)

(assert (=> setNonEmpty!11234 (= setRes!11233 (and tp!459685 (inv!22254 setElem!11234) e!1002853))))

(declare-fun setRest!11234 () (InoxSet Context!1630))

(assert (=> setNonEmpty!11234 (= (_2!9668 (h!22342 mapValue!8660)) ((_ map or) (store ((as const (Array Context!1630 Bool)) false) setElem!11234 true) setRest!11234))))

(assert (= (and mapNonEmpty!8649 condMapEmpty!8660) mapIsEmpty!8660))

(assert (= (and mapNonEmpty!8649 (not condMapEmpty!8660)) mapNonEmpty!8660))

(assert (= b!1561726 b!1561722))

(assert (= (and b!1561726 condSetEmpty!11234) setIsEmpty!11234))

(assert (= (and b!1561726 (not condSetEmpty!11234)) setNonEmpty!11234))

(assert (= setNonEmpty!11234 b!1561725))

(assert (= (and mapNonEmpty!8660 ((_ is Cons!16941) mapValue!8660)) b!1561726))

(assert (= b!1561727 b!1561723))

(assert (= (and b!1561727 condSetEmpty!11233) setIsEmpty!11233))

(assert (= (and b!1561727 (not condSetEmpty!11233)) setNonEmpty!11233))

(assert (= setNonEmpty!11233 b!1561724))

(assert (= (and mapNonEmpty!8649 ((_ is Cons!16941) mapDefault!8660)) b!1561727))

(declare-fun m!1833188 () Bool)

(assert (=> b!1561726 m!1833188))

(declare-fun m!1833190 () Bool)

(assert (=> setNonEmpty!11234 m!1833190))

(declare-fun m!1833192 () Bool)

(assert (=> b!1561727 m!1833192))

(declare-fun m!1833194 () Bool)

(assert (=> mapNonEmpty!8660 m!1833194))

(declare-fun m!1833196 () Bool)

(assert (=> setNonEmpty!11233 m!1833196))

(declare-fun setIsEmpty!11235 () Bool)

(declare-fun setRes!11235 () Bool)

(assert (=> setIsEmpty!11235 setRes!11235))

(declare-fun b!1561728 () Bool)

(declare-fun e!1002855 () Bool)

(declare-fun tp!459692 () Bool)

(assert (=> b!1561728 (= e!1002855 tp!459692)))

(declare-fun b!1561729 () Bool)

(declare-fun e!1002857 () Bool)

(declare-fun tp!459693 () Bool)

(assert (=> b!1561729 (= e!1002857 tp!459693)))

(declare-fun b!1561730 () Bool)

(declare-fun tp!459690 () Bool)

(declare-fun e!1002856 () Bool)

(assert (=> b!1561730 (= e!1002856 (and (inv!22254 (_1!9667 (_1!9668 (h!22342 mapValue!8650)))) e!1002855 tp_is_empty!7087 setRes!11235 tp!459690))))

(declare-fun condSetEmpty!11235 () Bool)

(assert (=> b!1561730 (= condSetEmpty!11235 (= (_2!9668 (h!22342 mapValue!8650)) ((as const (Array Context!1630 Bool)) false)))))

(declare-fun tp!459691 () Bool)

(declare-fun setNonEmpty!11235 () Bool)

(declare-fun setElem!11235 () Context!1630)

(assert (=> setNonEmpty!11235 (= setRes!11235 (and tp!459691 (inv!22254 setElem!11235) e!1002857))))

(declare-fun setRest!11235 () (InoxSet Context!1630))

(assert (=> setNonEmpty!11235 (= (_2!9668 (h!22342 mapValue!8650)) ((_ map or) (store ((as const (Array Context!1630 Bool)) false) setElem!11235 true) setRest!11235))))

(assert (=> mapNonEmpty!8649 (= tp!459511 e!1002856)))

(assert (= b!1561730 b!1561728))

(assert (= (and b!1561730 condSetEmpty!11235) setIsEmpty!11235))

(assert (= (and b!1561730 (not condSetEmpty!11235)) setNonEmpty!11235))

(assert (= setNonEmpty!11235 b!1561729))

(assert (= (and mapNonEmpty!8649 ((_ is Cons!16941) mapValue!8650)) b!1561730))

(declare-fun m!1833198 () Bool)

(assert (=> b!1561730 m!1833198))

(declare-fun m!1833200 () Bool)

(assert (=> setNonEmpty!11235 m!1833200))

(declare-fun setIsEmpty!11236 () Bool)

(declare-fun setRes!11236 () Bool)

(assert (=> setIsEmpty!11236 setRes!11236))

(declare-fun b!1561731 () Bool)

(declare-fun e!1002858 () Bool)

(declare-fun tp!459696 () Bool)

(assert (=> b!1561731 (= e!1002858 tp!459696)))

(declare-fun b!1561732 () Bool)

(declare-fun e!1002860 () Bool)

(declare-fun tp!459697 () Bool)

(assert (=> b!1561732 (= e!1002860 tp!459697)))

(declare-fun b!1561733 () Bool)

(declare-fun e!1002859 () Bool)

(declare-fun tp!459694 () Bool)

(assert (=> b!1561733 (= e!1002859 (and (inv!22254 (_1!9667 (_1!9668 (h!22342 (zeroValue!2112 (v!23802 (underlying!3919 (v!23803 (underlying!3920 (cache!2180 cacheUp!755)))))))))) e!1002858 tp_is_empty!7087 setRes!11236 tp!459694))))

(declare-fun condSetEmpty!11236 () Bool)

(assert (=> b!1561733 (= condSetEmpty!11236 (= (_2!9668 (h!22342 (zeroValue!2112 (v!23802 (underlying!3919 (v!23803 (underlying!3920 (cache!2180 cacheUp!755)))))))) ((as const (Array Context!1630 Bool)) false)))))

(declare-fun tp!459695 () Bool)

(declare-fun setElem!11236 () Context!1630)

(declare-fun setNonEmpty!11236 () Bool)

(assert (=> setNonEmpty!11236 (= setRes!11236 (and tp!459695 (inv!22254 setElem!11236) e!1002860))))

(declare-fun setRest!11236 () (InoxSet Context!1630))

(assert (=> setNonEmpty!11236 (= (_2!9668 (h!22342 (zeroValue!2112 (v!23802 (underlying!3919 (v!23803 (underlying!3920 (cache!2180 cacheUp!755)))))))) ((_ map or) (store ((as const (Array Context!1630 Bool)) false) setElem!11236 true) setRest!11236))))

(assert (=> b!1561375 (= tp!459519 e!1002859)))

(assert (= b!1561733 b!1561731))

(assert (= (and b!1561733 condSetEmpty!11236) setIsEmpty!11236))

(assert (= (and b!1561733 (not condSetEmpty!11236)) setNonEmpty!11236))

(assert (= setNonEmpty!11236 b!1561732))

(assert (= (and b!1561375 ((_ is Cons!16941) (zeroValue!2112 (v!23802 (underlying!3919 (v!23803 (underlying!3920 (cache!2180 cacheUp!755)))))))) b!1561733))

(declare-fun m!1833202 () Bool)

(assert (=> b!1561733 m!1833202))

(declare-fun m!1833204 () Bool)

(assert (=> setNonEmpty!11236 m!1833204))

(declare-fun setIsEmpty!11237 () Bool)

(declare-fun setRes!11237 () Bool)

(assert (=> setIsEmpty!11237 setRes!11237))

(declare-fun b!1561734 () Bool)

(declare-fun e!1002861 () Bool)

(declare-fun tp!459700 () Bool)

(assert (=> b!1561734 (= e!1002861 tp!459700)))

(declare-fun b!1561735 () Bool)

(declare-fun e!1002863 () Bool)

(declare-fun tp!459701 () Bool)

(assert (=> b!1561735 (= e!1002863 tp!459701)))

(declare-fun e!1002862 () Bool)

(declare-fun b!1561736 () Bool)

(declare-fun tp!459698 () Bool)

(assert (=> b!1561736 (= e!1002862 (and (inv!22254 (_1!9667 (_1!9668 (h!22342 (minValue!2112 (v!23802 (underlying!3919 (v!23803 (underlying!3920 (cache!2180 cacheUp!755)))))))))) e!1002861 tp_is_empty!7087 setRes!11237 tp!459698))))

(declare-fun condSetEmpty!11237 () Bool)

(assert (=> b!1561736 (= condSetEmpty!11237 (= (_2!9668 (h!22342 (minValue!2112 (v!23802 (underlying!3919 (v!23803 (underlying!3920 (cache!2180 cacheUp!755)))))))) ((as const (Array Context!1630 Bool)) false)))))

(declare-fun tp!459699 () Bool)

(declare-fun setNonEmpty!11237 () Bool)

(declare-fun setElem!11237 () Context!1630)

(assert (=> setNonEmpty!11237 (= setRes!11237 (and tp!459699 (inv!22254 setElem!11237) e!1002863))))

(declare-fun setRest!11237 () (InoxSet Context!1630))

(assert (=> setNonEmpty!11237 (= (_2!9668 (h!22342 (minValue!2112 (v!23802 (underlying!3919 (v!23803 (underlying!3920 (cache!2180 cacheUp!755)))))))) ((_ map or) (store ((as const (Array Context!1630 Bool)) false) setElem!11237 true) setRest!11237))))

(assert (=> b!1561375 (= tp!459527 e!1002862)))

(assert (= b!1561736 b!1561734))

(assert (= (and b!1561736 condSetEmpty!11237) setIsEmpty!11237))

(assert (= (and b!1561736 (not condSetEmpty!11237)) setNonEmpty!11237))

(assert (= setNonEmpty!11237 b!1561735))

(assert (= (and b!1561375 ((_ is Cons!16941) (minValue!2112 (v!23802 (underlying!3919 (v!23803 (underlying!3920 (cache!2180 cacheUp!755)))))))) b!1561736))

(declare-fun m!1833206 () Bool)

(assert (=> b!1561736 m!1833206))

(declare-fun m!1833208 () Bool)

(assert (=> setNonEmpty!11237 m!1833208))

(declare-fun b!1561748 () Bool)

(declare-fun e!1002866 () Bool)

(declare-fun tp!459714 () Bool)

(declare-fun tp!459713 () Bool)

(assert (=> b!1561748 (= e!1002866 (and tp!459714 tp!459713))))

(declare-fun b!1561750 () Bool)

(declare-fun tp!459716 () Bool)

(declare-fun tp!459715 () Bool)

(assert (=> b!1561750 (= e!1002866 (and tp!459716 tp!459715))))

(assert (=> b!1561395 (= tp!459520 e!1002866)))

(declare-fun b!1561749 () Bool)

(declare-fun tp!459712 () Bool)

(assert (=> b!1561749 (= e!1002866 tp!459712)))

(declare-fun b!1561747 () Bool)

(assert (=> b!1561747 (= e!1002866 tp_is_empty!7087)))

(assert (= (and b!1561395 ((_ is ElementMatch!4297) (regex!2969 rule!240))) b!1561747))

(assert (= (and b!1561395 ((_ is Concat!7357) (regex!2969 rule!240))) b!1561748))

(assert (= (and b!1561395 ((_ is Star!4297) (regex!2969 rule!240))) b!1561749))

(assert (= (and b!1561395 ((_ is Union!4297) (regex!2969 rule!240))) b!1561750))

(declare-fun b_lambda!49117 () Bool)

(assert (= b_lambda!49105 (or b!1561382 b_lambda!49117)))

(declare-fun bs!388927 () Bool)

(declare-fun d!462484 () Bool)

(assert (= bs!388927 (and d!462484 b!1561382)))

(assert (=> bs!388927 (= (dynLambda!7550 lambda!66052 lt!540801) (= (list!6518 (dynLambda!7552 (toChars!4208 (transformation!2969 rule!240)) (dynLambda!7549 (toValue!4349 (transformation!2969 rule!240)) lt!540801))) (list!6518 lt!540801)))))

(declare-fun b_lambda!49129 () Bool)

(assert (=> (not b_lambda!49129) (not bs!388927)))

(declare-fun t!141558 () Bool)

(declare-fun tb!87395 () Bool)

(assert (=> (and b!1561384 (= (toChars!4208 (transformation!2969 rule!240)) (toChars!4208 (transformation!2969 rule!240))) t!141558) tb!87395))

(declare-fun e!1002867 () Bool)

(declare-fun b!1561751 () Bool)

(declare-fun tp!459717 () Bool)

(assert (=> b!1561751 (= e!1002867 (and (inv!22249 (c!253184 (dynLambda!7552 (toChars!4208 (transformation!2969 rule!240)) (dynLambda!7549 (toValue!4349 (transformation!2969 rule!240)) lt!540801)))) tp!459717))))

(declare-fun result!105706 () Bool)

(assert (=> tb!87395 (= result!105706 (and (inv!22245 (dynLambda!7552 (toChars!4208 (transformation!2969 rule!240)) (dynLambda!7549 (toValue!4349 (transformation!2969 rule!240)) lt!540801))) e!1002867))))

(assert (= tb!87395 b!1561751))

(declare-fun m!1833210 () Bool)

(assert (=> b!1561751 m!1833210))

(declare-fun m!1833212 () Bool)

(assert (=> tb!87395 m!1833212))

(assert (=> bs!388927 t!141558))

(declare-fun b_and!109021 () Bool)

(assert (= b_and!109019 (and (=> t!141558 result!105706) b_and!109021)))

(declare-fun b_lambda!49131 () Bool)

(assert (=> (not b_lambda!49131) (not bs!388927)))

(assert (=> bs!388927 t!141554))

(declare-fun b_and!109023 () Bool)

(assert (= b_and!109017 (and (=> t!141554 result!105684) b_and!109023)))

(assert (=> bs!388927 m!1833030))

(declare-fun m!1833214 () Bool)

(assert (=> bs!388927 m!1833214))

(assert (=> bs!388927 m!1833214))

(declare-fun m!1833216 () Bool)

(assert (=> bs!388927 m!1833216))

(assert (=> bs!388927 m!1833030))

(assert (=> bs!388927 m!1832888))

(assert (=> d!462386 d!462484))

(declare-fun b_lambda!49119 () Bool)

(assert (= b_lambda!49111 (or (and b!1561384 b_free!41705) b_lambda!49119)))

(declare-fun b_lambda!49121 () Bool)

(assert (= b_lambda!49113 (or (and b!1561384 b_free!41705) b_lambda!49121)))

(declare-fun b_lambda!49123 () Bool)

(assert (= b_lambda!49107 (or b!1561382 b_lambda!49123)))

(declare-fun bs!388928 () Bool)

(declare-fun d!462486 () Bool)

(assert (= bs!388928 (and d!462486 b!1561382)))

(assert (=> bs!388928 (= (dynLambda!7550 lambda!66052 (_1!9674 (_1!9675 lt!540813))) (= (list!6518 (dynLambda!7552 (toChars!4208 (transformation!2969 rule!240)) (dynLambda!7549 (toValue!4349 (transformation!2969 rule!240)) (_1!9674 (_1!9675 lt!540813))))) (list!6518 (_1!9674 (_1!9675 lt!540813)))))))

(declare-fun b_lambda!49133 () Bool)

(assert (=> (not b_lambda!49133) (not bs!388928)))

(declare-fun t!141560 () Bool)

(declare-fun tb!87397 () Bool)

(assert (=> (and b!1561384 (= (toChars!4208 (transformation!2969 rule!240)) (toChars!4208 (transformation!2969 rule!240))) t!141560) tb!87397))

(declare-fun e!1002868 () Bool)

(declare-fun b!1561752 () Bool)

(declare-fun tp!459718 () Bool)

(assert (=> b!1561752 (= e!1002868 (and (inv!22249 (c!253184 (dynLambda!7552 (toChars!4208 (transformation!2969 rule!240)) (dynLambda!7549 (toValue!4349 (transformation!2969 rule!240)) (_1!9674 (_1!9675 lt!540813)))))) tp!459718))))

(declare-fun result!105708 () Bool)

(assert (=> tb!87397 (= result!105708 (and (inv!22245 (dynLambda!7552 (toChars!4208 (transformation!2969 rule!240)) (dynLambda!7549 (toValue!4349 (transformation!2969 rule!240)) (_1!9674 (_1!9675 lt!540813))))) e!1002868))))

(assert (= tb!87397 b!1561752))

(declare-fun m!1833218 () Bool)

(assert (=> b!1561752 m!1833218))

(declare-fun m!1833220 () Bool)

(assert (=> tb!87397 m!1833220))

(assert (=> bs!388928 t!141560))

(declare-fun b_and!109025 () Bool)

(assert (= b_and!109021 (and (=> t!141560 result!105708) b_and!109025)))

(declare-fun b_lambda!49135 () Bool)

(assert (=> (not b_lambda!49135) (not bs!388928)))

(assert (=> bs!388928 t!141552))

(declare-fun b_and!109027 () Bool)

(assert (= b_and!109023 (and (=> t!141552 result!105680) b_and!109027)))

(assert (=> bs!388928 m!1832920))

(declare-fun m!1833222 () Bool)

(assert (=> bs!388928 m!1833222))

(assert (=> bs!388928 m!1833222))

(declare-fun m!1833224 () Bool)

(assert (=> bs!388928 m!1833224))

(assert (=> bs!388928 m!1832920))

(assert (=> bs!388928 m!1832872))

(assert (=> d!462388 d!462486))

(declare-fun b_lambda!49125 () Bool)

(assert (= b_lambda!49103 (or (and b!1561384 b_free!41705) b_lambda!49125)))

(declare-fun b_lambda!49127 () Bool)

(assert (= b_lambda!49109 (or (and b!1561384 b_free!41705) b_lambda!49127)))

(check-sat (not setNonEmpty!11204) (not d!462396) (not d!462392) (not b!1561596) (not d!462404) (not b!1561452) (not d!462408) b_and!109007 (not d!462414) (not d!462468) (not bm!102279) (not b!1561692) (not b!1561750) (not b!1561631) (not b_next!42419) (not b!1561691) (not b!1561487) (not b!1561511) (not b!1561696) (not setNonEmpty!11222) (not b!1561600) (not b!1561378) (not b!1561540) (not d!462474) (not tb!87397) (not b!1561688) (not d!462386) (not d!462394) (not b!1561515) (not mapNonEmpty!8657) (not b!1561611) (not b!1561731) (not b!1561734) (not b_next!42421) (not b!1561726) (not b!1561749) b_and!108995 (not b!1561619) (not b_next!42413) b_and!109025 (not d!462440) (not b!1561509) (not b!1561440) (not b!1561667) (not b!1561668) (not b!1561648) (not b!1561545) (not b!1561680) (not b!1561681) (not b_next!42417) (not b!1561646) (not b_lambda!49121) (not b_next!42411) (not b!1561500) (not d!462454) (not b!1561682) (not b!1561369) (not d!462456) (not b_lambda!49117) (not b!1561690) (not b!1561685) (not bs!388928) (not b!1561683) (not d!462388) (not setNonEmpty!11223) (not b!1561603) (not b!1561441) tp_is_empty!7087 (not d!462450) b_and!109001 b_and!109009 (not setNonEmpty!11217) (not bm!102283) b_and!109027 (not tb!87393) (not b!1561722) (not b!1561729) (not b!1561546) (not bm!102259) (not b!1561437) (not b!1561400) (not setNonEmpty!11224) (not b!1561687) (not b!1561736) (not setNonEmpty!11233) (not setNonEmpty!11235) (not b!1561733) (not b!1561725) (not b_next!42409) (not b!1561679) (not b!1561442) (not b!1561516) (not b!1561539) (not b!1561435) (not b!1561510) (not b!1561635) (not b!1561438) (not d!462434) (not b!1561531) (not b!1561748) (not d!462476) (not b!1561618) (not setNonEmpty!11216) (not b!1561666) (not mapNonEmpty!8660) (not d!462422) (not b!1561594) (not b!1561694) (not bm!102281) (not d!462472) (not b!1561518) (not b_next!42415) (not b!1561443) (not bs!388927) (not d!462390) (not b!1561645) (not b!1561752) (not d!462402) (not b_lambda!49129) (not setNonEmpty!11210) (not setNonEmpty!11225) (not b!1561649) (not d!462464) (not setNonEmpty!11209) (not b_lambda!49133) (not b!1561706) (not b!1561695) (not b!1561498) (not d!462466) (not b_lambda!49119) (not d!462416) (not b!1561551) (not b!1561728) (not b!1561496) (not setNonEmpty!11236) (not b!1561665) (not b!1561689) (not bm!102282) (not bm!102280) (not b!1561630) (not d!462444) (not b!1561705) (not setNonEmpty!11220) (not setNonEmpty!11228) (not b!1561751) (not b_lambda!49125) (not b!1561723) (not mapNonEmpty!8654) (not b!1561693) (not b!1561494) (not b!1561490) (not b!1561730) (not b!1561664) (not setNonEmpty!11221) (not b!1561632) (not b!1561585) (not b!1561732) (not b!1561684) (not b!1561634) (not tb!87391) (not b!1561686) (not b_lambda!49127) (not d!462400) (not b!1561727) (not b_lambda!49131) (not b!1561647) (not tb!87395) (not b!1561590) (not b!1561534) (not b!1561678) (not b!1561609) (not b!1561450) (not bm!102277) (not d!462462) (not b!1561528) (not b_lambda!49115) (not b_lambda!49123) (not b!1561707) (not b!1561548) (not d!462382) (not b!1561436) (not d!462398) (not tb!87389) (not d!462432) (not d!462424) (not b!1561724) (not b_next!42407) (not b!1561457) (not setNonEmpty!11237) (not b!1561644) (not d!462478) (not bm!102276) (not b!1561669) (not b!1561735) (not b!1561633) (not setNonEmpty!11234) (not b_lambda!49135) b_and!109005 (not bm!102278) b_and!109003 (not setNonEmpty!11211))
(check-sat b_and!109007 (not b_next!42419) (not b_next!42421) (not b_next!42417) (not b_next!42411) b_and!109027 (not b_next!42409) (not b_next!42415) (not b_next!42407) b_and!108995 (not b_next!42413) b_and!109025 b_and!109001 b_and!109009 b_and!109005 b_and!109003)

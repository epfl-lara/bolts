; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!61974 () Bool)

(assert start!61974)

(declare-fun b!632922 () Bool)

(declare-fun b_free!18557 () Bool)

(declare-fun b_next!18573 () Bool)

(assert (=> b!632922 (= b_free!18557 (not b_next!18573))))

(declare-fun tp!197280 () Bool)

(declare-fun b_and!62351 () Bool)

(assert (=> b!632922 (= tp!197280 b_and!62351)))

(declare-fun b!632926 () Bool)

(declare-fun b_free!18559 () Bool)

(declare-fun b_next!18575 () Bool)

(assert (=> b!632926 (= b_free!18559 (not b_next!18575))))

(declare-fun tp!197271 () Bool)

(declare-fun b_and!62353 () Bool)

(assert (=> b!632926 (= tp!197271 b_and!62353)))

(declare-fun b!632933 () Bool)

(declare-fun b_free!18561 () Bool)

(declare-fun b_next!18577 () Bool)

(assert (=> b!632933 (= b_free!18561 (not b_next!18577))))

(declare-fun tp!197277 () Bool)

(declare-fun b_and!62355 () Bool)

(assert (=> b!632933 (= tp!197277 b_and!62355)))

(declare-fun b!632916 () Bool)

(declare-fun b_free!18563 () Bool)

(declare-fun b_next!18579 () Bool)

(assert (=> b!632916 (= b_free!18563 (not b_next!18579))))

(declare-fun tp!197273 () Bool)

(declare-fun b_and!62357 () Bool)

(assert (=> b!632916 (= tp!197273 b_and!62357)))

(declare-fun b!632912 () Bool)

(declare-fun res!274447 () Bool)

(declare-fun e!384465 () Bool)

(assert (=> b!632912 (=> res!274447 e!384465)))

(declare-datatypes ((Regex!1689 0))(
  ( (ElementMatch!1689 (c!116197 (_ BitVec 16))) (Concat!3078 (regOne!3890 Regex!1689) (regTwo!3890 Regex!1689)) (EmptyExpr!1689) (Star!1689 (reg!2018 Regex!1689)) (EmptyLang!1689) (Union!1689 (regOne!3891 Regex!1689) (regTwo!3891 Regex!1689)) )
))
(declare-datatypes ((String!8680 0))(
  ( (String!8681 (value!43742 String)) )
))
(declare-datatypes ((List!6689 0))(
  ( (Nil!6675) (Cons!6675 (h!12076 (_ BitVec 16)) (t!83706 List!6689)) )
))
(declare-datatypes ((TokenValue!1389 0))(
  ( (FloatLiteralValue!2778 (text!10168 List!6689)) (TokenValueExt!1388 (__x!4714 Int)) (Broken!6945 (value!43743 List!6689)) (Object!1402) (End!1389) (Def!1389) (Underscore!1389) (Match!1389) (Else!1389) (Error!1389) (Case!1389) (If!1389) (Extends!1389) (Abstract!1389) (Class!1389) (Val!1389) (DelimiterValue!2778 (del!1449 List!6689)) (KeywordValue!1395 (value!43744 List!6689)) (CommentValue!2778 (value!43745 List!6689)) (WhitespaceValue!2778 (value!43746 List!6689)) (IndentationValue!1389 (value!43747 List!6689)) (String!8682) (Int32!1389) (Broken!6946 (value!43748 List!6689)) (Boolean!1390) (Unit!11709) (OperatorValue!1392 (op!1449 List!6689)) (IdentifierValue!2778 (value!43749 List!6689)) (IdentifierValue!2779 (value!43750 List!6689)) (WhitespaceValue!2779 (value!43751 List!6689)) (True!2778) (False!2778) (Broken!6947 (value!43752 List!6689)) (Broken!6948 (value!43753 List!6689)) (True!2779) (RightBrace!1389) (RightBracket!1389) (Colon!1389) (Null!1389) (Comma!1389) (LeftBracket!1389) (False!2779) (LeftBrace!1389) (ImaginaryLiteralValue!1389 (text!10169 List!6689)) (StringLiteralValue!4167 (value!43754 List!6689)) (EOFValue!1389 (value!43755 List!6689)) (IdentValue!1389 (value!43756 List!6689)) (DelimiterValue!2779 (value!43757 List!6689)) (DedentValue!1389 (value!43758 List!6689)) (NewLineValue!1389 (value!43759 List!6689)) (IntegerValue!4167 (value!43760 (_ BitVec 32)) (text!10170 List!6689)) (IntegerValue!4168 (value!43761 Int) (text!10171 List!6689)) (Times!1389) (Or!1389) (Equal!1389) (Minus!1389) (Broken!6949 (value!43762 List!6689)) (And!1389) (Div!1389) (LessEqual!1389) (Mod!1389) (Concat!3079) (Not!1389) (Plus!1389) (SpaceValue!1389 (value!43763 List!6689)) (IntegerValue!4169 (value!43764 Int) (text!10172 List!6689)) (StringLiteralValue!4168 (text!10173 List!6689)) (FloatLiteralValue!2779 (text!10174 List!6689)) (BytesLiteralValue!1389 (value!43765 List!6689)) (CommentValue!2779 (value!43766 List!6689)) (StringLiteralValue!4169 (value!43767 List!6689)) (ErrorTokenValue!1389 (msg!1450 List!6689)) )
))
(declare-datatypes ((IArray!4455 0))(
  ( (IArray!4456 (innerList!2285 List!6689)) )
))
(declare-datatypes ((Conc!2227 0))(
  ( (Node!2227 (left!5349 Conc!2227) (right!5679 Conc!2227) (csize!4684 Int) (cheight!2438 Int)) (Leaf!3420 (xs!4868 IArray!4455) (csize!4685 Int)) (Empty!2227) )
))
(declare-datatypes ((BalanceConc!4466 0))(
  ( (BalanceConc!4467 (c!116198 Conc!2227)) )
))
(declare-datatypes ((TokenValueInjection!2530 0))(
  ( (TokenValueInjection!2531 (toValue!2296 Int) (toChars!2155 Int)) )
))
(declare-datatypes ((Rule!2510 0))(
  ( (Rule!2511 (regex!1355 Regex!1689) (tag!1617 String!8680) (isSeparator!1355 Bool) (transformation!1355 TokenValueInjection!2530)) )
))
(declare-datatypes ((List!6690 0))(
  ( (Nil!6676) (Cons!6676 (h!12077 Regex!1689) (t!83707 List!6690)) )
))
(declare-datatypes ((Context!350 0))(
  ( (Context!351 (exprs!675 List!6690)) )
))
(declare-datatypes ((tuple2!7252 0))(
  ( (tuple2!7253 (_1!3905 Context!350) (_2!3905 (_ BitVec 16))) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!7254 0))(
  ( (tuple2!7255 (_1!3906 tuple2!7252) (_2!3906 (InoxSet Context!350))) )
))
(declare-datatypes ((List!6691 0))(
  ( (Nil!6677) (Cons!6677 (h!12078 tuple2!7254) (t!83708 List!6691)) )
))
(declare-datatypes ((Token!2434 0))(
  ( (Token!2435 (value!43768 TokenValue!1389) (rule!2151 Rule!2510) (size!5241 Int) (originalCharacters!1388 List!6689)) )
))
(declare-datatypes ((List!6692 0))(
  ( (Nil!6678) (Cons!6678 (h!12079 Rule!2510) (t!83709 List!6692)) )
))
(declare-datatypes ((List!6693 0))(
  ( (Nil!6679) (Cons!6679 (h!12080 Token!2434) (t!83710 List!6693)) )
))
(declare-datatypes ((IArray!4457 0))(
  ( (IArray!4458 (innerList!2286 List!6693)) )
))
(declare-datatypes ((Conc!2228 0))(
  ( (Node!2228 (left!5350 Conc!2228) (right!5680 Conc!2228) (csize!4686 Int) (cheight!2439 Int)) (Leaf!3421 (xs!4869 IArray!4457) (csize!4687 Int)) (Empty!2228) )
))
(declare-datatypes ((BalanceConc!4468 0))(
  ( (BalanceConc!4469 (c!116199 Conc!2228)) )
))
(declare-datatypes ((PrintableTokens!92 0))(
  ( (PrintableTokens!93 (rules!8165 List!6692) (tokens!1178 BalanceConc!4468)) )
))
(declare-datatypes ((Hashable!592 0))(
  ( (HashableExt!591 (__x!4715 Int)) )
))
(declare-datatypes ((array!2375 0))(
  ( (array!2376 (arr!1081 (Array (_ BitVec 32) List!6691)) (size!5242 (_ BitVec 32))) )
))
(declare-datatypes ((array!2377 0))(
  ( (array!2378 (arr!1082 (Array (_ BitVec 32) (_ BitVec 64))) (size!5243 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1240 0))(
  ( (LongMapFixedSize!1241 (defaultEntry!976 Int) (mask!2344 (_ BitVec 32)) (extraKeys!867 (_ BitVec 32)) (zeroValue!877 List!6691) (minValue!877 List!6691) (_size!1349 (_ BitVec 32)) (_keys!914 array!2377) (_values!899 array!2375) (_vacant!681 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!2421 0))(
  ( (Cell!2422 (v!16734 LongMapFixedSize!1240)) )
))
(declare-datatypes ((MutLongMap!620 0))(
  ( (LongMap!620 (underlying!1423 Cell!2421)) (MutLongMapExt!619 (__x!4716 Int)) )
))
(declare-datatypes ((Cell!2423 0))(
  ( (Cell!2424 (v!16735 MutLongMap!620)) )
))
(declare-datatypes ((MutableMap!592 0))(
  ( (MutableMapExt!591 (__x!4717 Int)) (HashMap!592 (underlying!1424 Cell!2423) (hashF!2500 Hashable!592) (_size!1350 (_ BitVec 32)) (defaultValue!743 Int)) )
))
(declare-datatypes ((CacheUp!254 0))(
  ( (CacheUp!255 (cache!979 MutableMap!592)) )
))
(declare-datatypes ((tuple3!456 0))(
  ( (tuple3!457 (_1!3907 Regex!1689) (_2!3907 Context!350) (_3!279 (_ BitVec 16))) )
))
(declare-datatypes ((tuple2!7256 0))(
  ( (tuple2!7257 (_1!3908 tuple3!456) (_2!3908 (InoxSet Context!350))) )
))
(declare-datatypes ((List!6694 0))(
  ( (Nil!6680) (Cons!6680 (h!12081 tuple2!7256) (t!83711 List!6694)) )
))
(declare-datatypes ((array!2379 0))(
  ( (array!2380 (arr!1083 (Array (_ BitVec 32) List!6694)) (size!5244 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1242 0))(
  ( (LongMapFixedSize!1243 (defaultEntry!977 Int) (mask!2345 (_ BitVec 32)) (extraKeys!868 (_ BitVec 32)) (zeroValue!878 List!6694) (minValue!878 List!6694) (_size!1351 (_ BitVec 32)) (_keys!915 array!2377) (_values!900 array!2379) (_vacant!682 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!2425 0))(
  ( (Cell!2426 (v!16736 LongMapFixedSize!1242)) )
))
(declare-datatypes ((MutLongMap!621 0))(
  ( (LongMap!621 (underlying!1425 Cell!2425)) (MutLongMapExt!620 (__x!4718 Int)) )
))
(declare-datatypes ((Cell!2427 0))(
  ( (Cell!2428 (v!16737 MutLongMap!621)) )
))
(declare-datatypes ((Hashable!593 0))(
  ( (HashableExt!592 (__x!4719 Int)) )
))
(declare-datatypes ((MutableMap!593 0))(
  ( (MutableMapExt!592 (__x!4720 Int)) (HashMap!593 (underlying!1426 Cell!2427) (hashF!2501 Hashable!593) (_size!1352 (_ BitVec 32)) (defaultValue!744 Int)) )
))
(declare-datatypes ((CacheDown!252 0))(
  ( (CacheDown!253 (cache!980 MutableMap!593)) )
))
(declare-datatypes ((Option!1640 0))(
  ( (None!1639) (Some!1639 (v!16738 PrintableTokens!92)) )
))
(declare-datatypes ((tuple3!458 0))(
  ( (tuple3!459 (_1!3909 Option!1640) (_2!3909 CacheUp!254) (_3!280 CacheDown!252)) )
))
(declare-fun lt!270179 () tuple3!458)

(declare-fun usesJsonRules!0 (PrintableTokens!92) Bool)

(assert (=> b!632912 (= res!274447 (not (usesJsonRules!0 (v!16738 (_1!3909 lt!270179)))))))

(declare-fun b!632913 () Bool)

(declare-fun res!274444 () Bool)

(assert (=> b!632913 (=> res!274444 e!384465)))

(declare-fun lt!270178 () tuple3!458)

(assert (=> b!632913 (= res!274444 (not (usesJsonRules!0 (v!16738 (_1!3909 lt!270178)))))))

(declare-fun b!632914 () Bool)

(declare-fun e!384448 () Bool)

(declare-fun e!384458 () Bool)

(assert (=> b!632914 (= e!384448 e!384458)))

(declare-fun b!632915 () Bool)

(declare-fun e!384464 () Bool)

(declare-fun e!384456 () Bool)

(assert (=> b!632915 (= e!384464 e!384456)))

(declare-fun res!274441 () Bool)

(assert (=> b!632915 (=> (not res!274441) (not e!384456))))

(declare-fun lt!270171 () List!6692)

(declare-fun isEmpty!4640 (List!6692) Bool)

(assert (=> b!632915 (= res!274441 (not (isEmpty!4640 lt!270171)))))

(declare-datatypes ((JsonLexer!160 0))(
  ( (JsonLexer!161) )
))
(declare-fun rules!109 (JsonLexer!160) List!6692)

(assert (=> b!632915 (= lt!270171 (rules!109 JsonLexer!161))))

(declare-fun mapNonEmpty!2440 () Bool)

(declare-fun mapRes!2441 () Bool)

(declare-fun tp!197275 () Bool)

(declare-fun tp!197269 () Bool)

(assert (=> mapNonEmpty!2440 (= mapRes!2441 (and tp!197275 tp!197269))))

(declare-fun mapValue!2440 () List!6694)

(declare-fun cacheDown!364 () CacheDown!252)

(declare-fun mapRest!2441 () (Array (_ BitVec 32) List!6694))

(declare-fun mapKey!2441 () (_ BitVec 32))

(assert (=> mapNonEmpty!2440 (= (arr!1083 (_values!900 (v!16736 (underlying!1425 (v!16737 (underlying!1426 (cache!980 cacheDown!364))))))) (store mapRest!2441 mapKey!2441 mapValue!2440))))

(declare-fun e!384449 () Bool)

(assert (=> b!632916 (= e!384458 (and e!384449 tp!197273))))

(declare-fun mapIsEmpty!2440 () Bool)

(assert (=> mapIsEmpty!2440 mapRes!2441))

(declare-fun b!632917 () Bool)

(declare-fun res!274445 () Bool)

(assert (=> b!632917 (=> res!274445 e!384465)))

(declare-fun lt!270183 () tuple3!458)

(assert (=> b!632917 (= res!274445 (not (usesJsonRules!0 (v!16738 (_1!3909 lt!270183)))))))

(declare-fun b!632918 () Bool)

(declare-fun e!384459 () Bool)

(declare-fun tp!197268 () Bool)

(assert (=> b!632918 (= e!384459 (and tp!197268 mapRes!2441))))

(declare-fun condMapEmpty!2440 () Bool)

(declare-fun mapDefault!2441 () List!6694)

(assert (=> b!632918 (= condMapEmpty!2440 (= (arr!1083 (_values!900 (v!16736 (underlying!1425 (v!16737 (underlying!1426 (cache!980 cacheDown!364))))))) ((as const (Array (_ BitVec 32) List!6694)) mapDefault!2441)))))

(declare-fun b!632919 () Bool)

(declare-fun e!384452 () Bool)

(declare-fun tp!197270 () Bool)

(declare-fun mapRes!2440 () Bool)

(assert (=> b!632919 (= e!384452 (and tp!197270 mapRes!2440))))

(declare-fun condMapEmpty!2441 () Bool)

(declare-fun cacheUp!351 () CacheUp!254)

(declare-fun mapDefault!2440 () List!6691)

(assert (=> b!632919 (= condMapEmpty!2441 (= (arr!1081 (_values!899 (v!16734 (underlying!1423 (v!16735 (underlying!1424 (cache!979 cacheUp!351))))))) ((as const (Array (_ BitVec 32) List!6691)) mapDefault!2440)))))

(declare-fun b!632920 () Bool)

(declare-fun e!384457 () Bool)

(declare-fun e!384451 () Bool)

(assert (=> b!632920 (= e!384457 e!384451)))

(declare-fun b!632921 () Bool)

(declare-fun e!384460 () Bool)

(declare-fun e!384453 () Bool)

(declare-fun lt!270168 () MutLongMap!621)

(get-info :version)

(assert (=> b!632921 (= e!384460 (and e!384453 ((_ is LongMap!621) lt!270168)))))

(assert (=> b!632921 (= lt!270168 (v!16737 (underlying!1426 (cache!980 cacheDown!364))))))

(declare-fun tp!197272 () Bool)

(declare-fun tp!197278 () Bool)

(declare-fun array_inv!789 (array!2377) Bool)

(declare-fun array_inv!790 (array!2375) Bool)

(assert (=> b!632922 (= e!384451 (and tp!197280 tp!197272 tp!197278 (array_inv!789 (_keys!914 (v!16734 (underlying!1423 (v!16735 (underlying!1424 (cache!979 cacheUp!351))))))) (array_inv!790 (_values!899 (v!16734 (underlying!1423 (v!16735 (underlying!1424 (cache!979 cacheUp!351))))))) e!384452))))

(declare-fun b!632924 () Bool)

(declare-fun e!384454 () Bool)

(declare-fun printableTokens!2 () PrintableTokens!92)

(declare-fun tp!197266 () Bool)

(declare-fun inv!8547 (Conc!2228) Bool)

(assert (=> b!632924 (= e!384454 (and (inv!8547 (c!116199 (tokens!1178 printableTokens!2))) tp!197266))))

(declare-fun b!632925 () Bool)

(declare-fun res!274448 () Bool)

(assert (=> b!632925 (=> (not res!274448) (not e!384456))))

(declare-datatypes ((LexerInterface!1238 0))(
  ( (LexerInterfaceExt!1235 (__x!4721 Int)) (Lexer!1236) )
))
(declare-fun rulesInvariant!1173 (LexerInterface!1238 List!6692) Bool)

(assert (=> b!632925 (= res!274448 (rulesInvariant!1173 Lexer!1236 lt!270171))))

(declare-fun tp!197281 () Bool)

(declare-fun tp!197274 () Bool)

(declare-fun e!384450 () Bool)

(declare-fun array_inv!791 (array!2379) Bool)

(assert (=> b!632926 (= e!384450 (and tp!197271 tp!197274 tp!197281 (array_inv!789 (_keys!915 (v!16736 (underlying!1425 (v!16737 (underlying!1426 (cache!980 cacheDown!364))))))) (array_inv!791 (_values!900 (v!16736 (underlying!1425 (v!16737 (underlying!1426 (cache!980 cacheDown!364))))))) e!384459))))

(declare-fun b!632927 () Bool)

(declare-fun e!384462 () Bool)

(declare-fun e!384461 () Bool)

(assert (=> b!632927 (= e!384462 e!384461)))

(declare-fun b!632928 () Bool)

(declare-fun e!384447 () Bool)

(assert (=> b!632928 (= e!384465 e!384447)))

(declare-fun res!274443 () Bool)

(assert (=> b!632928 (=> res!274443 e!384447)))

(declare-datatypes ((List!6695 0))(
  ( (Nil!6681) (Cons!6681 (h!12082 PrintableTokens!92) (t!83712 List!6695)) )
))
(declare-datatypes ((IArray!4459 0))(
  ( (IArray!4460 (innerList!2287 List!6695)) )
))
(declare-datatypes ((Conc!2229 0))(
  ( (Node!2229 (left!5351 Conc!2229) (right!5681 Conc!2229) (csize!4688 Int) (cheight!2440 Int)) (Leaf!3422 (xs!4870 IArray!4459) (csize!4689 Int)) (Empty!2229) )
))
(declare-datatypes ((BalanceConc!4470 0))(
  ( (BalanceConc!4471 (c!116200 Conc!2229)) )
))
(declare-fun lt!270172 () BalanceConc!4470)

(declare-fun lambda!17530 () Int)

(declare-fun forall!1682 (BalanceConc!4470 Int) Bool)

(assert (=> b!632928 (= res!274443 (not (forall!1682 lt!270172 lambda!17530)))))

(declare-fun lt!270173 () PrintableTokens!92)

(declare-fun emptyPrintableTokens!2 (List!6692) PrintableTokens!92)

(assert (=> b!632928 (= lt!270173 (emptyPrintableTokens!2 lt!270171))))

(declare-datatypes ((tuple2!7258 0))(
  ( (tuple2!7259 (_1!3910 Int) (_2!3910 PrintableTokens!92)) )
))
(declare-datatypes ((List!6696 0))(
  ( (Nil!6682) (Cons!6682 (h!12083 tuple2!7258) (t!83713 List!6696)) )
))
(declare-datatypes ((IArray!4461 0))(
  ( (IArray!4462 (innerList!2288 List!6696)) )
))
(declare-datatypes ((Conc!2230 0))(
  ( (Node!2230 (left!5352 Conc!2230) (right!5682 Conc!2230) (csize!4690 Int) (cheight!2441 Int)) (Leaf!3423 (xs!4871 IArray!4461) (csize!4691 Int)) (Empty!2230) )
))
(declare-datatypes ((BalanceConc!4472 0))(
  ( (BalanceConc!4473 (c!116201 Conc!2230)) )
))
(declare-fun lt!270174 () BalanceConc!4472)

(declare-fun lambda!17529 () Int)

(declare-fun map!1422 (BalanceConc!4472 Int) BalanceConc!4470)

(assert (=> b!632928 (= lt!270172 (map!1422 lt!270174 lambda!17529))))

(declare-fun b!632929 () Bool)

(assert (=> b!632929 (= e!384456 (not e!384465))))

(declare-fun res!274446 () Bool)

(assert (=> b!632929 (=> res!274446 e!384465)))

(assert (=> b!632929 (= res!274446 (or (not ((_ is Some!1639) (_1!3909 lt!270179))) (not ((_ is Some!1639) (_1!3909 lt!270183))) (not ((_ is Some!1639) (_1!3909 lt!270178)))))))

(declare-fun createRightBracketSeparator!0 (CacheUp!254 CacheDown!252) tuple3!458)

(assert (=> b!632929 (= lt!270178 (createRightBracketSeparator!0 (_2!3909 lt!270183) (_3!280 lt!270183)))))

(declare-fun createLeftBracketSeparator!0 (CacheUp!254 CacheDown!252) tuple3!458)

(assert (=> b!632929 (= lt!270183 (createLeftBracketSeparator!0 (_2!3909 lt!270179) (_3!280 lt!270179)))))

(declare-fun createCommaNewLineSeparator!0 (CacheUp!254 CacheDown!252) tuple3!458)

(assert (=> b!632929 (= lt!270179 (createCommaNewLineSeparator!0 cacheUp!351 cacheDown!364))))

(assert (=> b!632929 (forall!1682 (map!1422 lt!270174 lambda!17529) lambda!17530)))

(declare-fun lt!270181 () List!6696)

(declare-datatypes ((Unit!11710 0))(
  ( (Unit!11711) )
))
(declare-fun lt!270169 () Unit!11710)

(declare-fun mapPred!23 (List!6696 Int Int) Unit!11710)

(assert (=> b!632929 (= lt!270169 (mapPred!23 lt!270181 lambda!17529 lambda!17530))))

(declare-fun lt!270184 () Unit!11710)

(declare-fun lemmaRemoveIdsPreservesRules!0 (List!6696) Unit!11710)

(assert (=> b!632929 (= lt!270184 (lemmaRemoveIdsPreservesRules!0 lt!270181))))

(declare-fun list!2835 (BalanceConc!4472) List!6696)

(assert (=> b!632929 (= lt!270181 (list!2835 lt!270174))))

(declare-fun lt!270182 () BalanceConc!4470)

(declare-fun lambda!17527 () Int)

(declare-fun sortObjectsByID!0 (BalanceConc!4472) BalanceConc!4472)

(declare-fun map!1423 (BalanceConc!4470 Int) BalanceConc!4472)

(assert (=> b!632929 (= lt!270174 (sortObjectsByID!0 (map!1423 lt!270182 lambda!17527)))))

(declare-fun lambda!17528 () Int)

(declare-fun lt!270170 () List!6695)

(declare-fun lt!270177 () Unit!11710)

(declare-fun mapPred!24 (List!6695 Int Int) Unit!11710)

(assert (=> b!632929 (= lt!270177 (mapPred!24 lt!270170 lambda!17527 lambda!17528))))

(declare-fun lt!270176 () Unit!11710)

(declare-fun lemmaAddIdsPreservesRules!0 (List!6695) Unit!11710)

(assert (=> b!632929 (= lt!270176 (lemmaAddIdsPreservesRules!0 lt!270170))))

(declare-fun list!2836 (BalanceConc!4470) List!6695)

(assert (=> b!632929 (= lt!270170 (list!2836 lt!270182))))

(declare-fun lt!270180 () Int)

(declare-datatypes ((List!6697 0))(
  ( (Nil!6683) (Cons!6683 (h!12084 Int) (t!83714 List!6697)) )
))
(declare-datatypes ((IArray!4463 0))(
  ( (IArray!4464 (innerList!2289 List!6697)) )
))
(declare-datatypes ((Conc!2231 0))(
  ( (Node!2231 (left!5353 Conc!2231) (right!5683 Conc!2231) (csize!4692 Int) (cheight!2442 Int)) (Leaf!3424 (xs!4872 IArray!4463) (csize!4693 Int)) (Empty!2231) )
))
(declare-datatypes ((BalanceConc!4474 0))(
  ( (BalanceConc!4475 (c!116202 Conc!2231)) )
))
(declare-fun slicesMulti!0 (PrintableTokens!92 Int BalanceConc!4474 BalanceConc!4470) BalanceConc!4470)

(declare-fun indicesOfOpenBraces!0 (BalanceConc!4468 Int Int BalanceConc!4474) BalanceConc!4474)

(assert (=> b!632929 (= lt!270182 (slicesMulti!0 printableTokens!2 lt!270180 (indicesOfOpenBraces!0 (tokens!1178 printableTokens!2) lt!270180 0 (BalanceConc!4475 Empty!2231)) (BalanceConc!4471 Empty!2229)))))

(declare-fun e!384468 () Bool)

(declare-fun tp!197276 () Bool)

(declare-fun b!632930 () Bool)

(declare-fun inv!8548 (BalanceConc!4468) Bool)

(assert (=> b!632930 (= e!384468 (and tp!197276 (inv!8548 (tokens!1178 printableTokens!2)) e!384454))))

(declare-fun b!632931 () Bool)

(declare-fun e!384466 () Bool)

(assert (=> b!632931 (= e!384466 e!384457)))

(declare-fun b!632932 () Bool)

(declare-fun e!384463 () Bool)

(assert (=> b!632932 (= e!384463 e!384450)))

(declare-fun mapNonEmpty!2441 () Bool)

(declare-fun tp!197267 () Bool)

(declare-fun tp!197279 () Bool)

(assert (=> mapNonEmpty!2441 (= mapRes!2440 (and tp!197267 tp!197279))))

(declare-fun mapValue!2441 () List!6691)

(declare-fun mapRest!2440 () (Array (_ BitVec 32) List!6691))

(declare-fun mapKey!2440 () (_ BitVec 32))

(assert (=> mapNonEmpty!2441 (= (arr!1081 (_values!899 (v!16734 (underlying!1423 (v!16735 (underlying!1424 (cache!979 cacheUp!351))))))) (store mapRest!2440 mapKey!2440 mapValue!2441))))

(assert (=> b!632933 (= e!384461 (and e!384460 tp!197277))))

(declare-fun b!632934 () Bool)

(assert (=> b!632934 (= e!384447 (usesJsonRules!0 lt!270173))))

(declare-fun b!632935 () Bool)

(assert (=> b!632935 (= e!384453 e!384463)))

(declare-fun b!632923 () Bool)

(declare-fun lt!270175 () MutLongMap!620)

(assert (=> b!632923 (= e!384449 (and e!384466 ((_ is LongMap!620) lt!270175)))))

(assert (=> b!632923 (= lt!270175 (v!16735 (underlying!1424 (cache!979 cacheUp!351))))))

(declare-fun res!274442 () Bool)

(assert (=> start!61974 (=> (not res!274442) (not e!384464))))

(assert (=> start!61974 (= res!274442 (> lt!270180 0))))

(declare-fun size!5245 (PrintableTokens!92) Int)

(assert (=> start!61974 (= lt!270180 (size!5245 printableTokens!2))))

(assert (=> start!61974 e!384464))

(declare-fun inv!8549 (PrintableTokens!92) Bool)

(assert (=> start!61974 (and (inv!8549 printableTokens!2) e!384468)))

(declare-fun inv!8550 (CacheDown!252) Bool)

(assert (=> start!61974 (and (inv!8550 cacheDown!364) e!384462)))

(declare-fun inv!8551 (CacheUp!254) Bool)

(assert (=> start!61974 (and (inv!8551 cacheUp!351) e!384448)))

(declare-fun mapIsEmpty!2441 () Bool)

(assert (=> mapIsEmpty!2441 mapRes!2440))

(declare-fun b!632936 () Bool)

(declare-fun res!274449 () Bool)

(assert (=> b!632936 (=> (not res!274449) (not e!384456))))

(assert (=> b!632936 (= res!274449 (usesJsonRules!0 printableTokens!2))))

(assert (= (and start!61974 res!274442) b!632915))

(assert (= (and b!632915 res!274441) b!632925))

(assert (= (and b!632925 res!274448) b!632936))

(assert (= (and b!632936 res!274449) b!632929))

(assert (= (and b!632929 (not res!274446)) b!632912))

(assert (= (and b!632912 (not res!274447)) b!632917))

(assert (= (and b!632917 (not res!274445)) b!632913))

(assert (= (and b!632913 (not res!274444)) b!632928))

(assert (= (and b!632928 (not res!274443)) b!632934))

(assert (= b!632930 b!632924))

(assert (= start!61974 b!632930))

(assert (= (and b!632918 condMapEmpty!2440) mapIsEmpty!2440))

(assert (= (and b!632918 (not condMapEmpty!2440)) mapNonEmpty!2440))

(assert (= b!632926 b!632918))

(assert (= b!632932 b!632926))

(assert (= b!632935 b!632932))

(assert (= (and b!632921 ((_ is LongMap!621) (v!16737 (underlying!1426 (cache!980 cacheDown!364))))) b!632935))

(assert (= b!632933 b!632921))

(assert (= (and b!632927 ((_ is HashMap!593) (cache!980 cacheDown!364))) b!632933))

(assert (= start!61974 b!632927))

(assert (= (and b!632919 condMapEmpty!2441) mapIsEmpty!2441))

(assert (= (and b!632919 (not condMapEmpty!2441)) mapNonEmpty!2441))

(assert (= b!632922 b!632919))

(assert (= b!632920 b!632922))

(assert (= b!632931 b!632920))

(assert (= (and b!632923 ((_ is LongMap!620) (v!16735 (underlying!1424 (cache!979 cacheUp!351))))) b!632931))

(assert (= b!632916 b!632923))

(assert (= (and b!632914 ((_ is HashMap!592) (cache!979 cacheUp!351))) b!632916))

(assert (= start!61974 b!632914))

(declare-fun m!903577 () Bool)

(assert (=> b!632915 m!903577))

(declare-fun m!903579 () Bool)

(assert (=> b!632915 m!903579))

(declare-fun m!903581 () Bool)

(assert (=> b!632929 m!903581))

(declare-fun m!903583 () Bool)

(assert (=> b!632929 m!903583))

(declare-fun m!903585 () Bool)

(assert (=> b!632929 m!903585))

(declare-fun m!903587 () Bool)

(assert (=> b!632929 m!903587))

(declare-fun m!903589 () Bool)

(assert (=> b!632929 m!903589))

(declare-fun m!903591 () Bool)

(assert (=> b!632929 m!903591))

(assert (=> b!632929 m!903587))

(declare-fun m!903593 () Bool)

(assert (=> b!632929 m!903593))

(declare-fun m!903595 () Bool)

(assert (=> b!632929 m!903595))

(assert (=> b!632929 m!903591))

(declare-fun m!903597 () Bool)

(assert (=> b!632929 m!903597))

(declare-fun m!903599 () Bool)

(assert (=> b!632929 m!903599))

(assert (=> b!632929 m!903585))

(declare-fun m!903601 () Bool)

(assert (=> b!632929 m!903601))

(declare-fun m!903603 () Bool)

(assert (=> b!632929 m!903603))

(declare-fun m!903605 () Bool)

(assert (=> b!632929 m!903605))

(declare-fun m!903607 () Bool)

(assert (=> b!632929 m!903607))

(declare-fun m!903609 () Bool)

(assert (=> b!632929 m!903609))

(declare-fun m!903611 () Bool)

(assert (=> start!61974 m!903611))

(declare-fun m!903613 () Bool)

(assert (=> start!61974 m!903613))

(declare-fun m!903615 () Bool)

(assert (=> start!61974 m!903615))

(declare-fun m!903617 () Bool)

(assert (=> start!61974 m!903617))

(declare-fun m!903619 () Bool)

(assert (=> b!632930 m!903619))

(declare-fun m!903621 () Bool)

(assert (=> b!632924 m!903621))

(declare-fun m!903623 () Bool)

(assert (=> b!632934 m!903623))

(declare-fun m!903625 () Bool)

(assert (=> b!632913 m!903625))

(declare-fun m!903627 () Bool)

(assert (=> b!632928 m!903627))

(declare-fun m!903629 () Bool)

(assert (=> b!632928 m!903629))

(assert (=> b!632928 m!903585))

(declare-fun m!903631 () Bool)

(assert (=> mapNonEmpty!2440 m!903631))

(declare-fun m!903633 () Bool)

(assert (=> b!632936 m!903633))

(declare-fun m!903635 () Bool)

(assert (=> mapNonEmpty!2441 m!903635))

(declare-fun m!903637 () Bool)

(assert (=> b!632917 m!903637))

(declare-fun m!903639 () Bool)

(assert (=> b!632926 m!903639))

(declare-fun m!903641 () Bool)

(assert (=> b!632926 m!903641))

(declare-fun m!903643 () Bool)

(assert (=> b!632912 m!903643))

(declare-fun m!903645 () Bool)

(assert (=> b!632922 m!903645))

(declare-fun m!903647 () Bool)

(assert (=> b!632922 m!903647))

(declare-fun m!903649 () Bool)

(assert (=> b!632925 m!903649))

(check-sat (not b!632917) (not b!632930) (not b!632918) (not b_next!18577) (not b_next!18579) (not mapNonEmpty!2440) (not b!632919) b_and!62353 (not b!632936) (not b!632929) (not b!632928) (not start!61974) b_and!62351 (not b!632924) (not b!632934) b_and!62355 (not b!632912) (not b!632922) (not b!632925) (not b!632915) (not b!632926) (not b_next!18575) (not b_next!18573) (not mapNonEmpty!2441) b_and!62357 (not b!632913))
(check-sat b_and!62351 b_and!62355 (not b_next!18577) (not b_next!18579) b_and!62353 b_and!62357 (not b_next!18575) (not b_next!18573))
(get-model)

(declare-fun d!221415 () Bool)

(assert (=> d!221415 (= (isEmpty!4640 lt!270171) ((_ is Nil!6678) lt!270171))))

(assert (=> b!632915 d!221415))

(declare-fun d!221417 () Bool)

(declare-fun whitespaceRule!0 (JsonLexer!160) Rule!2510)

(declare-fun integerLiteralRule!0 (JsonLexer!160) Rule!2510)

(declare-fun floatLiteralRule!0 (JsonLexer!160) Rule!2510)

(declare-fun trueRule!0 (JsonLexer!160) Rule!2510)

(declare-fun falseRule!0 (JsonLexer!160) Rule!2510)

(declare-fun nullRule!0 (JsonLexer!160) Rule!2510)

(declare-fun jsonstringRule!0 (JsonLexer!160) Rule!2510)

(declare-fun lBraceRule!0 (JsonLexer!160) Rule!2510)

(declare-fun rBraceRule!0 (JsonLexer!160) Rule!2510)

(declare-fun lBracketRule!0 (JsonLexer!160) Rule!2510)

(declare-fun rBracketRule!0 (JsonLexer!160) Rule!2510)

(declare-fun colonRule!0 (JsonLexer!160) Rule!2510)

(declare-fun commaRule!0 (JsonLexer!160) Rule!2510)

(declare-fun eofRule!0 (JsonLexer!160) Rule!2510)

(assert (=> d!221417 (= (rules!109 JsonLexer!161) (Cons!6678 (whitespaceRule!0 JsonLexer!161) (Cons!6678 (integerLiteralRule!0 JsonLexer!161) (Cons!6678 (floatLiteralRule!0 JsonLexer!161) (Cons!6678 (trueRule!0 JsonLexer!161) (Cons!6678 (falseRule!0 JsonLexer!161) (Cons!6678 (nullRule!0 JsonLexer!161) (Cons!6678 (jsonstringRule!0 JsonLexer!161) (Cons!6678 (lBraceRule!0 JsonLexer!161) (Cons!6678 (rBraceRule!0 JsonLexer!161) (Cons!6678 (lBracketRule!0 JsonLexer!161) (Cons!6678 (rBracketRule!0 JsonLexer!161) (Cons!6678 (colonRule!0 JsonLexer!161) (Cons!6678 (commaRule!0 JsonLexer!161) (Cons!6678 (eofRule!0 JsonLexer!161) Nil!6678)))))))))))))))))

(declare-fun bs!73364 () Bool)

(assert (= bs!73364 d!221417))

(declare-fun m!903651 () Bool)

(assert (=> bs!73364 m!903651))

(declare-fun m!903653 () Bool)

(assert (=> bs!73364 m!903653))

(declare-fun m!903655 () Bool)

(assert (=> bs!73364 m!903655))

(declare-fun m!903657 () Bool)

(assert (=> bs!73364 m!903657))

(declare-fun m!903659 () Bool)

(assert (=> bs!73364 m!903659))

(declare-fun m!903661 () Bool)

(assert (=> bs!73364 m!903661))

(declare-fun m!903663 () Bool)

(assert (=> bs!73364 m!903663))

(declare-fun m!903665 () Bool)

(assert (=> bs!73364 m!903665))

(declare-fun m!903667 () Bool)

(assert (=> bs!73364 m!903667))

(declare-fun m!903669 () Bool)

(assert (=> bs!73364 m!903669))

(declare-fun m!903671 () Bool)

(assert (=> bs!73364 m!903671))

(declare-fun m!903673 () Bool)

(assert (=> bs!73364 m!903673))

(declare-fun m!903675 () Bool)

(assert (=> bs!73364 m!903675))

(declare-fun m!903677 () Bool)

(assert (=> bs!73364 m!903677))

(assert (=> b!632915 d!221417))

(declare-fun d!221419 () Bool)

(declare-fun c!116205 () Bool)

(assert (=> d!221419 (= c!116205 ((_ is Node!2228) (c!116199 (tokens!1178 printableTokens!2))))))

(declare-fun e!384473 () Bool)

(assert (=> d!221419 (= (inv!8547 (c!116199 (tokens!1178 printableTokens!2))) e!384473)))

(declare-fun b!632943 () Bool)

(declare-fun inv!8552 (Conc!2228) Bool)

(assert (=> b!632943 (= e!384473 (inv!8552 (c!116199 (tokens!1178 printableTokens!2))))))

(declare-fun b!632944 () Bool)

(declare-fun e!384474 () Bool)

(assert (=> b!632944 (= e!384473 e!384474)))

(declare-fun res!274456 () Bool)

(assert (=> b!632944 (= res!274456 (not ((_ is Leaf!3421) (c!116199 (tokens!1178 printableTokens!2)))))))

(assert (=> b!632944 (=> res!274456 e!384474)))

(declare-fun b!632945 () Bool)

(declare-fun inv!8553 (Conc!2228) Bool)

(assert (=> b!632945 (= e!384474 (inv!8553 (c!116199 (tokens!1178 printableTokens!2))))))

(assert (= (and d!221419 c!116205) b!632943))

(assert (= (and d!221419 (not c!116205)) b!632944))

(assert (= (and b!632944 (not res!274456)) b!632945))

(declare-fun m!903679 () Bool)

(assert (=> b!632943 m!903679))

(declare-fun m!903681 () Bool)

(assert (=> b!632945 m!903681))

(assert (=> b!632924 d!221419))

(declare-fun d!221421 () Bool)

(assert (=> d!221421 (= (usesJsonRules!0 (v!16738 (_1!3909 lt!270178))) (= (rules!8165 (v!16738 (_1!3909 lt!270178))) (rules!109 JsonLexer!161)))))

(declare-fun bs!73365 () Bool)

(assert (= bs!73365 d!221421))

(assert (=> bs!73365 m!903579))

(assert (=> b!632913 d!221421))

(declare-fun d!221423 () Bool)

(assert (=> d!221423 (= (array_inv!789 (_keys!914 (v!16734 (underlying!1423 (v!16735 (underlying!1424 (cache!979 cacheUp!351))))))) (bvsge (size!5243 (_keys!914 (v!16734 (underlying!1423 (v!16735 (underlying!1424 (cache!979 cacheUp!351))))))) #b00000000000000000000000000000000))))

(assert (=> b!632922 d!221423))

(declare-fun d!221425 () Bool)

(assert (=> d!221425 (= (array_inv!790 (_values!899 (v!16734 (underlying!1423 (v!16735 (underlying!1424 (cache!979 cacheUp!351))))))) (bvsge (size!5242 (_values!899 (v!16734 (underlying!1423 (v!16735 (underlying!1424 (cache!979 cacheUp!351))))))) #b00000000000000000000000000000000))))

(assert (=> b!632922 d!221425))

(declare-fun d!221427 () Bool)

(assert (=> d!221427 (= (array_inv!789 (_keys!915 (v!16736 (underlying!1425 (v!16737 (underlying!1426 (cache!980 cacheDown!364))))))) (bvsge (size!5243 (_keys!915 (v!16736 (underlying!1425 (v!16737 (underlying!1426 (cache!980 cacheDown!364))))))) #b00000000000000000000000000000000))))

(assert (=> b!632926 d!221427))

(declare-fun d!221429 () Bool)

(assert (=> d!221429 (= (array_inv!791 (_values!900 (v!16736 (underlying!1425 (v!16737 (underlying!1426 (cache!980 cacheDown!364))))))) (bvsge (size!5244 (_values!900 (v!16736 (underlying!1425 (v!16737 (underlying!1426 (cache!980 cacheDown!364))))))) #b00000000000000000000000000000000))))

(assert (=> b!632926 d!221429))

(declare-fun d!221431 () Bool)

(declare-fun res!274459 () Bool)

(declare-fun e!384477 () Bool)

(assert (=> d!221431 (=> (not res!274459) (not e!384477))))

(declare-fun rulesValid!501 (LexerInterface!1238 List!6692) Bool)

(assert (=> d!221431 (= res!274459 (rulesValid!501 Lexer!1236 lt!270171))))

(assert (=> d!221431 (= (rulesInvariant!1173 Lexer!1236 lt!270171) e!384477)))

(declare-fun b!632948 () Bool)

(declare-datatypes ((List!6698 0))(
  ( (Nil!6684) (Cons!6684 (h!12085 String!8680) (t!83761 List!6698)) )
))
(declare-fun noDuplicateTag!501 (LexerInterface!1238 List!6692 List!6698) Bool)

(assert (=> b!632948 (= e!384477 (noDuplicateTag!501 Lexer!1236 lt!270171 Nil!6684))))

(assert (= (and d!221431 res!274459) b!632948))

(declare-fun m!903683 () Bool)

(assert (=> d!221431 m!903683))

(declare-fun m!903685 () Bool)

(assert (=> b!632948 m!903685))

(assert (=> b!632925 d!221431))

(declare-fun d!221433 () Bool)

(declare-fun size!5248 (BalanceConc!4468) Int)

(assert (=> d!221433 (= (size!5245 printableTokens!2) (size!5248 (tokens!1178 printableTokens!2)))))

(declare-fun bs!73366 () Bool)

(assert (= bs!73366 d!221433))

(declare-fun m!903687 () Bool)

(assert (=> bs!73366 m!903687))

(assert (=> start!61974 d!221433))

(declare-fun d!221435 () Bool)

(declare-fun res!274466 () Bool)

(declare-fun e!384480 () Bool)

(assert (=> d!221435 (=> (not res!274466) (not e!384480))))

(assert (=> d!221435 (= res!274466 (not (isEmpty!4640 (rules!8165 printableTokens!2))))))

(assert (=> d!221435 (= (inv!8549 printableTokens!2) e!384480)))

(declare-fun b!632955 () Bool)

(declare-fun res!274467 () Bool)

(assert (=> b!632955 (=> (not res!274467) (not e!384480))))

(assert (=> b!632955 (= res!274467 (rulesInvariant!1173 Lexer!1236 (rules!8165 printableTokens!2)))))

(declare-fun b!632956 () Bool)

(declare-fun res!274468 () Bool)

(assert (=> b!632956 (=> (not res!274468) (not e!384480))))

(declare-fun rulesProduceEachTokenIndividually!572 (LexerInterface!1238 List!6692 BalanceConc!4468) Bool)

(assert (=> b!632956 (= res!274468 (rulesProduceEachTokenIndividually!572 Lexer!1236 (rules!8165 printableTokens!2) (tokens!1178 printableTokens!2)))))

(declare-fun b!632957 () Bool)

(declare-fun separableTokens!22 (LexerInterface!1238 BalanceConc!4468 List!6692) Bool)

(assert (=> b!632957 (= e!384480 (separableTokens!22 Lexer!1236 (tokens!1178 printableTokens!2) (rules!8165 printableTokens!2)))))

(assert (= (and d!221435 res!274466) b!632955))

(assert (= (and b!632955 res!274467) b!632956))

(assert (= (and b!632956 res!274468) b!632957))

(declare-fun m!903689 () Bool)

(assert (=> d!221435 m!903689))

(declare-fun m!903691 () Bool)

(assert (=> b!632955 m!903691))

(declare-fun m!903693 () Bool)

(assert (=> b!632956 m!903693))

(declare-fun m!903695 () Bool)

(assert (=> b!632957 m!903695))

(assert (=> start!61974 d!221435))

(declare-fun d!221437 () Bool)

(declare-fun res!274471 () Bool)

(declare-fun e!384483 () Bool)

(assert (=> d!221437 (=> (not res!274471) (not e!384483))))

(assert (=> d!221437 (= res!274471 ((_ is HashMap!593) (cache!980 cacheDown!364)))))

(assert (=> d!221437 (= (inv!8550 cacheDown!364) e!384483)))

(declare-fun b!632960 () Bool)

(declare-fun validCacheMapDown!39 (MutableMap!593) Bool)

(assert (=> b!632960 (= e!384483 (validCacheMapDown!39 (cache!980 cacheDown!364)))))

(assert (= (and d!221437 res!274471) b!632960))

(declare-fun m!903697 () Bool)

(assert (=> b!632960 m!903697))

(assert (=> start!61974 d!221437))

(declare-fun d!221439 () Bool)

(declare-fun res!274474 () Bool)

(declare-fun e!384486 () Bool)

(assert (=> d!221439 (=> (not res!274474) (not e!384486))))

(assert (=> d!221439 (= res!274474 ((_ is HashMap!592) (cache!979 cacheUp!351)))))

(assert (=> d!221439 (= (inv!8551 cacheUp!351) e!384486)))

(declare-fun b!632963 () Bool)

(declare-fun validCacheMapUp!39 (MutableMap!592) Bool)

(assert (=> b!632963 (= e!384486 (validCacheMapUp!39 (cache!979 cacheUp!351)))))

(assert (= (and d!221439 res!274474) b!632963))

(declare-fun m!903699 () Bool)

(assert (=> b!632963 m!903699))

(assert (=> start!61974 d!221439))

(declare-fun d!221441 () Bool)

(assert (=> d!221441 (= (usesJsonRules!0 lt!270173) (= (rules!8165 lt!270173) (rules!109 JsonLexer!161)))))

(declare-fun bs!73367 () Bool)

(assert (= bs!73367 d!221441))

(assert (=> bs!73367 m!903579))

(assert (=> b!632934 d!221441))

(declare-fun d!221443 () Bool)

(declare-fun e!384489 () Bool)

(assert (=> d!221443 e!384489))

(declare-fun res!274477 () Bool)

(assert (=> d!221443 (=> (not res!274477) (not e!384489))))

(declare-fun lt!270187 () BalanceConc!4470)

(declare-fun map!1424 (List!6696 Int) List!6695)

(assert (=> d!221443 (= res!274477 (= (list!2836 lt!270187) (map!1424 (list!2835 lt!270174) lambda!17529)))))

(declare-fun map!1425 (Conc!2230 Int) Conc!2229)

(assert (=> d!221443 (= lt!270187 (BalanceConc!4471 (map!1425 (c!116201 lt!270174) lambda!17529)))))

(assert (=> d!221443 (= (map!1422 lt!270174 lambda!17529) lt!270187)))

(declare-fun b!632966 () Bool)

(declare-fun isBalanced!588 (Conc!2229) Bool)

(assert (=> b!632966 (= e!384489 (isBalanced!588 (map!1425 (c!116201 lt!270174) lambda!17529)))))

(assert (= (and d!221443 res!274477) b!632966))

(declare-fun m!903701 () Bool)

(assert (=> d!221443 m!903701))

(assert (=> d!221443 m!903603))

(assert (=> d!221443 m!903603))

(declare-fun m!903703 () Bool)

(assert (=> d!221443 m!903703))

(declare-fun m!903705 () Bool)

(assert (=> d!221443 m!903705))

(assert (=> b!632966 m!903705))

(assert (=> b!632966 m!903705))

(declare-fun m!903707 () Bool)

(assert (=> b!632966 m!903707))

(assert (=> b!632929 d!221443))

(declare-fun d!221445 () Bool)

(declare-fun list!2837 (Conc!2230) List!6696)

(assert (=> d!221445 (= (list!2835 lt!270174) (list!2837 (c!116201 lt!270174)))))

(declare-fun bs!73368 () Bool)

(assert (= bs!73368 d!221445))

(declare-fun m!903709 () Bool)

(assert (=> bs!73368 m!903709))

(assert (=> b!632929 d!221445))

(declare-fun lt!270190 () Bool)

(declare-fun d!221447 () Bool)

(declare-fun forall!1683 (List!6695 Int) Bool)

(assert (=> d!221447 (= lt!270190 (forall!1683 (list!2836 (map!1422 lt!270174 lambda!17529)) lambda!17530))))

(declare-fun forall!1684 (Conc!2229 Int) Bool)

(assert (=> d!221447 (= lt!270190 (forall!1684 (c!116200 (map!1422 lt!270174 lambda!17529)) lambda!17530))))

(assert (=> d!221447 (= (forall!1682 (map!1422 lt!270174 lambda!17529) lambda!17530) lt!270190)))

(declare-fun bs!73369 () Bool)

(assert (= bs!73369 d!221447))

(assert (=> bs!73369 m!903585))

(declare-fun m!903711 () Bool)

(assert (=> bs!73369 m!903711))

(assert (=> bs!73369 m!903711))

(declare-fun m!903713 () Bool)

(assert (=> bs!73369 m!903713))

(declare-fun m!903715 () Bool)

(assert (=> bs!73369 m!903715))

(assert (=> b!632929 d!221447))

(declare-fun bs!73370 () Bool)

(declare-fun d!221449 () Bool)

(assert (= bs!73370 (and d!221449 b!632929)))

(declare-fun lambda!17535 () Int)

(assert (=> bs!73370 (= lambda!17535 lambda!17528)))

(declare-fun lambda!17536 () Int)

(assert (=> bs!73370 (not (= lambda!17536 lambda!17528))))

(assert (=> d!221449 (not (= lambda!17536 lambda!17535))))

(declare-fun forall!1685 (List!6696 Int) Bool)

(assert (=> d!221449 (forall!1685 lt!270181 lambda!17536)))

(declare-fun lt!270195 () Unit!11710)

(declare-fun e!384492 () Unit!11710)

(assert (=> d!221449 (= lt!270195 e!384492)))

(declare-fun c!116209 () Bool)

(assert (=> d!221449 (= c!116209 ((_ is Nil!6682) lt!270181))))

(assert (=> d!221449 (forall!1685 lt!270181 lambda!17535)))

(assert (=> d!221449 (= (lemmaRemoveIdsPreservesRules!0 lt!270181) lt!270195)))

(declare-fun b!632971 () Bool)

(declare-fun Unit!11712 () Unit!11710)

(assert (=> b!632971 (= e!384492 Unit!11712)))

(declare-fun b!632972 () Bool)

(declare-fun Unit!11713 () Unit!11710)

(assert (=> b!632972 (= e!384492 Unit!11713)))

(declare-fun lt!270196 () Unit!11710)

(assert (=> b!632972 (= lt!270196 (lemmaRemoveIdsPreservesRules!0 (t!83713 lt!270181)))))

(assert (= (and d!221449 c!116209) b!632971))

(assert (= (and d!221449 (not c!116209)) b!632972))

(declare-fun m!903717 () Bool)

(assert (=> d!221449 m!903717))

(declare-fun m!903719 () Bool)

(assert (=> d!221449 m!903719))

(declare-fun m!903721 () Bool)

(assert (=> b!632972 m!903721))

(assert (=> b!632929 d!221449))

(declare-fun d!221451 () Bool)

(declare-fun e!384498 () Bool)

(assert (=> d!221451 e!384498))

(declare-fun res!274480 () Bool)

(assert (=> d!221451 (=> res!274480 e!384498)))

(declare-fun lt!270205 () tuple3!458)

(declare-fun isEmpty!4641 (Option!1640) Bool)

(assert (=> d!221451 (= res!274480 (isEmpty!4641 (_1!3909 lt!270205)))))

(declare-fun e!384497 () Option!1640)

(declare-datatypes ((tuple3!460 0))(
  ( (tuple3!461 (_1!3911 Bool) (_2!3911 CacheUp!254) (_3!281 CacheDown!252)) )
))
(declare-fun lt!270203 () tuple3!460)

(assert (=> d!221451 (= lt!270205 (tuple3!459 e!384497 (_2!3911 lt!270203) (_3!281 lt!270203)))))

(declare-fun c!116212 () Bool)

(assert (=> d!221451 (= c!116212 (not (_1!3911 lt!270203)))))

(declare-fun lt!270204 () BalanceConc!4468)

(declare-fun rulesProduceEachTokenIndividuallyMem!1 (LexerInterface!1238 List!6692 BalanceConc!4468 CacheUp!254 CacheDown!252) tuple3!460)

(assert (=> d!221451 (= lt!270203 (rulesProduceEachTokenIndividuallyMem!1 Lexer!1236 (rules!109 JsonLexer!161) lt!270204 (_2!3909 lt!270179) (_3!280 lt!270179)))))

(declare-fun singletonSeq!424 (Token!2434) BalanceConc!4468)

(declare-fun apply!1589 (TokenValueInjection!2530 BalanceConc!4466) TokenValue!1389)

(declare-datatypes ((KeywordValueInjection!30 0))(
  ( (KeywordValueInjection!31) )
))
(declare-fun injection!9 (KeywordValueInjection!30) TokenValueInjection!2530)

(declare-fun singletonSeq!425 ((_ BitVec 16)) BalanceConc!4466)

(assert (=> d!221451 (= lt!270204 (singletonSeq!424 (Token!2435 (apply!1589 (injection!9 KeywordValueInjection!31) (singletonSeq!425 #x005B)) (lBracketRule!0 JsonLexer!161) 1 (Cons!6675 #x005B Nil!6675))))))

(assert (=> d!221451 (not (isEmpty!4640 (rules!109 JsonLexer!161)))))

(assert (=> d!221451 (= (createLeftBracketSeparator!0 (_2!3909 lt!270179) (_3!280 lt!270179)) lt!270205)))

(declare-fun b!632979 () Bool)

(assert (=> b!632979 (= e!384497 None!1639)))

(declare-fun b!632980 () Bool)

(declare-fun printableTokensFromTokens!4 (List!6692 BalanceConc!4468) Option!1640)

(assert (=> b!632980 (= e!384497 (printableTokensFromTokens!4 (rules!109 JsonLexer!161) lt!270204))))

(declare-fun b!632981 () Bool)

(declare-fun get!2463 (Option!1640) PrintableTokens!92)

(assert (=> b!632981 (= e!384498 (usesJsonRules!0 (get!2463 (_1!3909 lt!270205))))))

(assert (= (and d!221451 c!116212) b!632979))

(assert (= (and d!221451 (not c!116212)) b!632980))

(assert (= (and d!221451 (not res!274480)) b!632981))

(declare-fun m!903723 () Bool)

(assert (=> d!221451 m!903723))

(assert (=> d!221451 m!903723))

(declare-fun m!903725 () Bool)

(assert (=> d!221451 m!903725))

(declare-fun m!903727 () Bool)

(assert (=> d!221451 m!903727))

(assert (=> d!221451 m!903579))

(declare-fun m!903729 () Bool)

(assert (=> d!221451 m!903729))

(assert (=> d!221451 m!903725))

(assert (=> d!221451 m!903579))

(declare-fun m!903731 () Bool)

(assert (=> d!221451 m!903731))

(assert (=> d!221451 m!903677))

(declare-fun m!903733 () Bool)

(assert (=> d!221451 m!903733))

(assert (=> d!221451 m!903579))

(declare-fun m!903735 () Bool)

(assert (=> d!221451 m!903735))

(assert (=> b!632980 m!903579))

(assert (=> b!632980 m!903579))

(declare-fun m!903737 () Bool)

(assert (=> b!632980 m!903737))

(declare-fun m!903739 () Bool)

(assert (=> b!632981 m!903739))

(assert (=> b!632981 m!903739))

(declare-fun m!903741 () Bool)

(assert (=> b!632981 m!903741))

(assert (=> b!632929 d!221451))

(declare-fun d!221453 () Bool)

(declare-fun e!384504 () Bool)

(assert (=> d!221453 e!384504))

(declare-fun res!274483 () Bool)

(assert (=> d!221453 (=> res!274483 e!384504)))

(declare-fun lt!270212 () tuple3!458)

(assert (=> d!221453 (= res!274483 (isEmpty!4641 (_1!3909 lt!270212)))))

(declare-fun e!384503 () Option!1640)

(declare-fun lt!270214 () tuple3!460)

(assert (=> d!221453 (= lt!270212 (tuple3!459 e!384503 (_2!3911 lt!270214) (_3!281 lt!270214)))))

(declare-fun c!116215 () Bool)

(assert (=> d!221453 (= c!116215 (not (_1!3911 lt!270214)))))

(declare-fun lt!270213 () BalanceConc!4468)

(assert (=> d!221453 (= lt!270214 (rulesProduceEachTokenIndividuallyMem!1 Lexer!1236 (rules!109 JsonLexer!161) lt!270213 cacheUp!351 cacheDown!364))))

(declare-fun ++!1805 (BalanceConc!4468 BalanceConc!4468) BalanceConc!4468)

(declare-datatypes ((WhitespaceValueInjection!26 0))(
  ( (WhitespaceValueInjection!27) )
))
(declare-fun injection!7 (WhitespaceValueInjection!26) TokenValueInjection!2530)

(assert (=> d!221453 (= lt!270213 (++!1805 (singletonSeq!424 (Token!2435 (apply!1589 (injection!9 KeywordValueInjection!31) (singletonSeq!425 #x002C)) (commaRule!0 JsonLexer!161) 1 (Cons!6675 #x002C Nil!6675))) (singletonSeq!424 (Token!2435 (apply!1589 (injection!7 WhitespaceValueInjection!27) (singletonSeq!425 #x000A)) (whitespaceRule!0 JsonLexer!161) 1 (Cons!6675 #x000A Nil!6675)))))))

(assert (=> d!221453 (not (isEmpty!4640 (rules!109 JsonLexer!161)))))

(assert (=> d!221453 (= (createCommaNewLineSeparator!0 cacheUp!351 cacheDown!364) lt!270212)))

(declare-fun b!632988 () Bool)

(assert (=> b!632988 (= e!384503 None!1639)))

(declare-fun b!632989 () Bool)

(assert (=> b!632989 (= e!384503 (printableTokensFromTokens!4 (rules!109 JsonLexer!161) lt!270213))))

(declare-fun b!632990 () Bool)

(assert (=> b!632990 (= e!384504 (usesJsonRules!0 (get!2463 (_1!3909 lt!270212))))))

(assert (= (and d!221453 c!116215) b!632988))

(assert (= (and d!221453 (not c!116215)) b!632989))

(assert (= (and d!221453 (not res!274483)) b!632990))

(assert (=> d!221453 m!903723))

(declare-fun m!903743 () Bool)

(assert (=> d!221453 m!903743))

(declare-fun m!903745 () Bool)

(assert (=> d!221453 m!903745))

(declare-fun m!903747 () Bool)

(assert (=> d!221453 m!903747))

(declare-fun m!903749 () Bool)

(assert (=> d!221453 m!903749))

(assert (=> d!221453 m!903743))

(assert (=> d!221453 m!903579))

(declare-fun m!903751 () Bool)

(assert (=> d!221453 m!903751))

(declare-fun m!903753 () Bool)

(assert (=> d!221453 m!903753))

(declare-fun m!903755 () Bool)

(assert (=> d!221453 m!903755))

(assert (=> d!221453 m!903749))

(declare-fun m!903757 () Bool)

(assert (=> d!221453 m!903757))

(assert (=> d!221453 m!903579))

(assert (=> d!221453 m!903735))

(declare-fun m!903759 () Bool)

(assert (=> d!221453 m!903759))

(assert (=> d!221453 m!903651))

(assert (=> d!221453 m!903745))

(assert (=> d!221453 m!903579))

(assert (=> d!221453 m!903675))

(assert (=> d!221453 m!903755))

(assert (=> d!221453 m!903723))

(assert (=> d!221453 m!903753))

(declare-fun m!903761 () Bool)

(assert (=> d!221453 m!903761))

(assert (=> b!632989 m!903579))

(assert (=> b!632989 m!903579))

(declare-fun m!903763 () Bool)

(assert (=> b!632989 m!903763))

(declare-fun m!903765 () Bool)

(assert (=> b!632990 m!903765))

(assert (=> b!632990 m!903765))

(declare-fun m!903767 () Bool)

(assert (=> b!632990 m!903767))

(assert (=> b!632929 d!221453))

(declare-fun bs!73371 () Bool)

(declare-fun b!633000 () Bool)

(assert (= bs!73371 (and b!633000 b!632929)))

(declare-fun lambda!17541 () Int)

(assert (=> bs!73371 (= lambda!17541 lambda!17530)))

(declare-fun bs!73372 () Bool)

(declare-fun d!221455 () Bool)

(assert (= bs!73372 (and d!221455 b!632929)))

(declare-fun lambda!17542 () Int)

(assert (=> bs!73372 (= lambda!17542 lambda!17530)))

(declare-fun bs!73373 () Bool)

(assert (= bs!73373 (and d!221455 b!633000)))

(assert (=> bs!73373 (= lambda!17542 lambda!17541)))

(declare-fun b!632999 () Bool)

(declare-fun e!384510 () BalanceConc!4470)

(assert (=> b!632999 (= e!384510 (BalanceConc!4471 Empty!2229))))

(declare-fun lt!270225 () PrintableTokens!92)

(declare-fun tail!881 (BalanceConc!4474) BalanceConc!4474)

(declare-fun append!195 (BalanceConc!4470 PrintableTokens!92) BalanceConc!4470)

(assert (=> b!633000 (= e!384510 (slicesMulti!0 printableTokens!2 lt!270180 (tail!881 (tail!881 (indicesOfOpenBraces!0 (tokens!1178 printableTokens!2) lt!270180 0 (BalanceConc!4475 Empty!2231)))) (append!195 (BalanceConc!4471 Empty!2229) lt!270225)))))

(declare-fun lt!270227 () Int)

(declare-fun apply!1590 (BalanceConc!4474 Int) Int)

(assert (=> b!633000 (= lt!270227 (apply!1590 (indicesOfOpenBraces!0 (tokens!1178 printableTokens!2) lt!270180 0 (BalanceConc!4475 Empty!2231)) 0))))

(declare-fun lt!270226 () Int)

(assert (=> b!633000 (= lt!270226 (apply!1590 (indicesOfOpenBraces!0 (tokens!1178 printableTokens!2) lt!270180 0 (BalanceConc!4475 Empty!2231)) 1))))

(declare-fun c!116221 () Bool)

(assert (=> b!633000 (= c!116221 (<= lt!270227 lt!270226))))

(declare-fun e!384509 () PrintableTokens!92)

(assert (=> b!633000 (= lt!270225 e!384509)))

(declare-fun lt!270228 () Unit!11710)

(declare-fun lemmaConcatPreservesForall!27 (List!6695 List!6695 Int) Unit!11710)

(assert (=> b!633000 (= lt!270228 (lemmaConcatPreservesForall!27 (list!2836 (BalanceConc!4471 Empty!2229)) (Cons!6681 lt!270225 Nil!6681) lambda!17541))))

(declare-fun b!633001 () Bool)

(declare-fun call!41416 () PrintableTokens!92)

(assert (=> b!633001 (= e!384509 call!41416)))

(declare-fun b!633002 () Bool)

(assert (=> b!633002 (= e!384509 call!41416)))

(declare-fun bm!41411 () Bool)

(declare-fun slice!28 (PrintableTokens!92 Int Int) PrintableTokens!92)

(assert (=> bm!41411 (= call!41416 (slice!28 printableTokens!2 (ite c!116221 lt!270227 lt!270226) (ite c!116221 (+ lt!270226 1) (+ lt!270227 1))))))

(declare-fun lt!270229 () BalanceConc!4470)

(assert (=> d!221455 (forall!1682 lt!270229 lambda!17542)))

(assert (=> d!221455 (= lt!270229 e!384510)))

(declare-fun c!116220 () Bool)

(declare-fun size!5249 (BalanceConc!4474) Int)

(assert (=> d!221455 (= c!116220 (>= (size!5249 (indicesOfOpenBraces!0 (tokens!1178 printableTokens!2) lt!270180 0 (BalanceConc!4475 Empty!2231))) 2))))

(assert (=> d!221455 (= (size!5245 printableTokens!2) lt!270180)))

(assert (=> d!221455 (= (slicesMulti!0 printableTokens!2 lt!270180 (indicesOfOpenBraces!0 (tokens!1178 printableTokens!2) lt!270180 0 (BalanceConc!4475 Empty!2231)) (BalanceConc!4471 Empty!2229)) lt!270229)))

(assert (= (and d!221455 c!116220) b!633000))

(assert (= (and d!221455 (not c!116220)) b!632999))

(assert (= (and b!633000 c!116221) b!633002))

(assert (= (and b!633000 (not c!116221)) b!633001))

(assert (= (or b!633002 b!633001) bm!41411))

(declare-fun m!903769 () Bool)

(assert (=> b!633000 m!903769))

(declare-fun m!903771 () Bool)

(assert (=> b!633000 m!903771))

(declare-fun m!903773 () Bool)

(assert (=> b!633000 m!903773))

(declare-fun m!903775 () Bool)

(assert (=> b!633000 m!903775))

(assert (=> b!633000 m!903771))

(declare-fun m!903777 () Bool)

(assert (=> b!633000 m!903777))

(declare-fun m!903779 () Bool)

(assert (=> b!633000 m!903779))

(assert (=> b!633000 m!903591))

(declare-fun m!903781 () Bool)

(assert (=> b!633000 m!903781))

(assert (=> b!633000 m!903591))

(assert (=> b!633000 m!903769))

(assert (=> b!633000 m!903773))

(assert (=> b!633000 m!903777))

(assert (=> b!633000 m!903591))

(declare-fun m!903783 () Bool)

(assert (=> b!633000 m!903783))

(declare-fun m!903785 () Bool)

(assert (=> bm!41411 m!903785))

(declare-fun m!903787 () Bool)

(assert (=> d!221455 m!903787))

(assert (=> d!221455 m!903591))

(declare-fun m!903789 () Bool)

(assert (=> d!221455 m!903789))

(assert (=> d!221455 m!903611))

(assert (=> b!632929 d!221455))

(declare-fun d!221457 () Bool)

(declare-fun e!384515 () Bool)

(assert (=> d!221457 e!384515))

(declare-fun res!274486 () Bool)

(assert (=> d!221457 (=> res!274486 e!384515)))

(declare-fun lt!270237 () tuple3!458)

(assert (=> d!221457 (= res!274486 (isEmpty!4641 (_1!3909 lt!270237)))))

(declare-fun e!384516 () Option!1640)

(declare-fun lt!270236 () tuple3!460)

(assert (=> d!221457 (= lt!270237 (tuple3!459 e!384516 (_2!3911 lt!270236) (_3!281 lt!270236)))))

(declare-fun c!116224 () Bool)

(assert (=> d!221457 (= c!116224 (not (_1!3911 lt!270236)))))

(declare-fun lt!270238 () BalanceConc!4468)

(assert (=> d!221457 (= lt!270236 (rulesProduceEachTokenIndividuallyMem!1 Lexer!1236 (rules!109 JsonLexer!161) lt!270238 (_2!3909 lt!270183) (_3!280 lt!270183)))))

(assert (=> d!221457 (= lt!270238 (singletonSeq!424 (Token!2435 (apply!1589 (injection!9 KeywordValueInjection!31) (singletonSeq!425 #x005D)) (rBracketRule!0 JsonLexer!161) 1 (Cons!6675 #x005D Nil!6675))))))

(assert (=> d!221457 (not (isEmpty!4640 (rules!109 JsonLexer!161)))))

(assert (=> d!221457 (= (createRightBracketSeparator!0 (_2!3909 lt!270183) (_3!280 lt!270183)) lt!270237)))

(declare-fun b!633009 () Bool)

(assert (=> b!633009 (= e!384516 None!1639)))

(declare-fun b!633010 () Bool)

(assert (=> b!633010 (= e!384516 (printableTokensFromTokens!4 (rules!109 JsonLexer!161) lt!270238))))

(declare-fun b!633011 () Bool)

(assert (=> b!633011 (= e!384515 (usesJsonRules!0 (get!2463 (_1!3909 lt!270237))))))

(assert (= (and d!221457 c!116224) b!633009))

(assert (= (and d!221457 (not c!116224)) b!633010))

(assert (= (and d!221457 (not res!274486)) b!633011))

(assert (=> d!221457 m!903723))

(assert (=> d!221457 m!903579))

(declare-fun m!903791 () Bool)

(assert (=> d!221457 m!903791))

(assert (=> d!221457 m!903723))

(declare-fun m!903793 () Bool)

(assert (=> d!221457 m!903793))

(declare-fun m!903795 () Bool)

(assert (=> d!221457 m!903795))

(declare-fun m!903797 () Bool)

(assert (=> d!221457 m!903797))

(assert (=> d!221457 m!903793))

(declare-fun m!903799 () Bool)

(assert (=> d!221457 m!903799))

(assert (=> d!221457 m!903579))

(assert (=> d!221457 m!903735))

(assert (=> d!221457 m!903665))

(assert (=> d!221457 m!903579))

(assert (=> b!633010 m!903579))

(assert (=> b!633010 m!903579))

(declare-fun m!903801 () Bool)

(assert (=> b!633010 m!903801))

(declare-fun m!903803 () Bool)

(assert (=> b!633011 m!903803))

(assert (=> b!633011 m!903803))

(declare-fun m!903805 () Bool)

(assert (=> b!633011 m!903805))

(assert (=> b!632929 d!221457))

(declare-fun bs!73374 () Bool)

(declare-fun d!221459 () Bool)

(assert (= bs!73374 (and d!221459 b!632929)))

(declare-fun lambda!17545 () Int)

(assert (=> bs!73374 (not (= lambda!17545 lambda!17528))))

(declare-fun bs!73375 () Bool)

(assert (= bs!73375 (and d!221459 d!221449)))

(assert (=> bs!73375 (not (= lambda!17545 lambda!17535))))

(assert (=> bs!73375 (not (= lambda!17545 lambda!17536))))

(assert (=> d!221459 true))

(declare-fun order!5099 () Int)

(declare-fun order!5101 () Int)

(declare-fun dynLambda!3700 (Int Int) Int)

(declare-fun dynLambda!3701 (Int Int) Int)

(assert (=> d!221459 (< (dynLambda!3700 order!5099 lambda!17529) (dynLambda!3701 order!5101 lambda!17545))))

(assert (=> d!221459 true))

(declare-fun order!5103 () Int)

(declare-fun dynLambda!3702 (Int Int) Int)

(assert (=> d!221459 (< (dynLambda!3702 order!5103 lambda!17530) (dynLambda!3701 order!5101 lambda!17545))))

(assert (=> d!221459 (forall!1683 (map!1424 lt!270181 lambda!17529) lambda!17530)))

(declare-fun lt!270241 () Unit!11710)

(declare-fun choose!4599 (List!6696 Int Int) Unit!11710)

(assert (=> d!221459 (= lt!270241 (choose!4599 lt!270181 lambda!17529 lambda!17530))))

(assert (=> d!221459 (forall!1685 lt!270181 lambda!17545)))

(assert (=> d!221459 (= (mapPred!23 lt!270181 lambda!17529 lambda!17530) lt!270241)))

(declare-fun bs!73376 () Bool)

(assert (= bs!73376 d!221459))

(declare-fun m!903807 () Bool)

(assert (=> bs!73376 m!903807))

(assert (=> bs!73376 m!903807))

(declare-fun m!903809 () Bool)

(assert (=> bs!73376 m!903809))

(declare-fun m!903811 () Bool)

(assert (=> bs!73376 m!903811))

(declare-fun m!903813 () Bool)

(assert (=> bs!73376 m!903813))

(assert (=> b!632929 d!221459))

(declare-fun d!221461 () Bool)

(declare-fun list!2838 (Conc!2229) List!6695)

(assert (=> d!221461 (= (list!2836 lt!270182) (list!2838 (c!116200 lt!270182)))))

(declare-fun bs!73377 () Bool)

(assert (= bs!73377 d!221461))

(declare-fun m!903815 () Bool)

(assert (=> bs!73377 m!903815))

(assert (=> b!632929 d!221461))

(declare-fun d!221463 () Bool)

(declare-fun e!384519 () Bool)

(assert (=> d!221463 e!384519))

(declare-fun res!274489 () Bool)

(assert (=> d!221463 (=> (not res!274489) (not e!384519))))

(declare-fun lt!270244 () BalanceConc!4472)

(declare-fun map!1426 (List!6695 Int) List!6696)

(assert (=> d!221463 (= res!274489 (= (list!2835 lt!270244) (map!1426 (list!2836 lt!270182) lambda!17527)))))

(declare-fun map!1427 (Conc!2229 Int) Conc!2230)

(assert (=> d!221463 (= lt!270244 (BalanceConc!4473 (map!1427 (c!116200 lt!270182) lambda!17527)))))

(assert (=> d!221463 (= (map!1423 lt!270182 lambda!17527) lt!270244)))

(declare-fun b!633018 () Bool)

(declare-fun isBalanced!589 (Conc!2230) Bool)

(assert (=> b!633018 (= e!384519 (isBalanced!589 (map!1427 (c!116200 lt!270182) lambda!17527)))))

(assert (= (and d!221463 res!274489) b!633018))

(declare-fun m!903817 () Bool)

(assert (=> d!221463 m!903817))

(assert (=> d!221463 m!903605))

(assert (=> d!221463 m!903605))

(declare-fun m!903819 () Bool)

(assert (=> d!221463 m!903819))

(declare-fun m!903821 () Bool)

(assert (=> d!221463 m!903821))

(assert (=> b!633018 m!903821))

(assert (=> b!633018 m!903821))

(declare-fun m!903823 () Bool)

(assert (=> b!633018 m!903823))

(assert (=> b!632929 d!221463))

(declare-fun b!633039 () Bool)

(assert (=> b!633039 true))

(declare-fun bs!73378 () Bool)

(declare-fun d!221465 () Bool)

(assert (= bs!73378 (and d!221465 b!633039)))

(declare-fun lambda!17551 () Int)

(declare-fun lambda!17550 () Int)

(assert (=> bs!73378 (= lambda!17551 lambda!17550)))

(assert (=> d!221465 true))

(declare-fun lt!270252 () BalanceConc!4474)

(declare-fun forall!1686 (BalanceConc!4474 Int) Bool)

(assert (=> d!221465 (forall!1686 lt!270252 lambda!17551)))

(declare-fun e!384531 () BalanceConc!4474)

(assert (=> d!221465 (= lt!270252 e!384531)))

(declare-fun c!116234 () Bool)

(assert (=> d!221465 (= c!116234 (>= 0 (size!5248 (tokens!1178 printableTokens!2))))))

(declare-fun e!384532 () Bool)

(assert (=> d!221465 e!384532))

(declare-fun res!274495 () Bool)

(assert (=> d!221465 (=> (not res!274495) (not e!384532))))

(assert (=> d!221465 (= res!274495 (>= 0 0))))

(assert (=> d!221465 (= (indicesOfOpenBraces!0 (tokens!1178 printableTokens!2) lt!270180 0 (BalanceConc!4475 Empty!2231)) lt!270252)))

(declare-fun b!633035 () Bool)

(declare-fun e!384534 () BalanceConc!4474)

(assert (=> b!633035 (= e!384531 e!384534)))

(declare-fun lt!270251 () Token!2434)

(declare-fun apply!1591 (BalanceConc!4468 Int) Token!2434)

(assert (=> b!633035 (= lt!270251 (apply!1591 (tokens!1178 printableTokens!2) 0))))

(declare-fun res!274494 () Bool)

(declare-fun isKeywordValue!0 (Token!2434 TokenValue!1389) Bool)

(assert (=> b!633035 (= res!274494 (isKeywordValue!0 lt!270251 LeftBrace!1389))))

(declare-fun e!384530 () Bool)

(assert (=> b!633035 (=> res!274494 e!384530)))

(declare-fun c!116232 () Bool)

(assert (=> b!633035 (= c!116232 e!384530)))

(declare-fun bm!41414 () Bool)

(declare-fun c!116233 () Bool)

(assert (=> bm!41414 (= c!116233 c!116232)))

(declare-fun e!384533 () BalanceConc!4474)

(declare-fun call!41419 () BalanceConc!4474)

(assert (=> bm!41414 (= call!41419 (indicesOfOpenBraces!0 (tokens!1178 printableTokens!2) lt!270180 (+ 0 1) e!384533))))

(declare-fun b!633036 () Bool)

(assert (=> b!633036 (= e!384534 call!41419)))

(declare-fun b!633037 () Bool)

(assert (=> b!633037 (= e!384532 (<= 0 (size!5248 (tokens!1178 printableTokens!2))))))

(declare-fun b!633038 () Bool)

(assert (=> b!633038 (= e!384533 (BalanceConc!4475 Empty!2231))))

(declare-fun lt!270253 () Unit!11710)

(declare-fun lemmaConcatPreservesForall!28 (List!6697 List!6697 Int) Unit!11710)

(declare-fun list!2839 (BalanceConc!4474) List!6697)

(assert (=> b!633039 (= lt!270253 (lemmaConcatPreservesForall!28 (list!2839 (BalanceConc!4475 Empty!2231)) (Cons!6683 0 Nil!6683) lambda!17550))))

(assert (=> b!633039 (= e!384534 call!41419)))

(declare-fun b!633040 () Bool)

(assert (=> b!633040 (= e!384530 (isKeywordValue!0 lt!270251 RightBrace!1389))))

(declare-fun b!633041 () Bool)

(declare-fun append!196 (BalanceConc!4474 Int) BalanceConc!4474)

(assert (=> b!633041 (= e!384533 (append!196 (BalanceConc!4475 Empty!2231) 0))))

(declare-fun b!633042 () Bool)

(assert (=> b!633042 (= e!384531 (BalanceConc!4475 Empty!2231))))

(assert (= (and d!221465 res!274495) b!633037))

(assert (= (and d!221465 c!116234) b!633042))

(assert (= (and d!221465 (not c!116234)) b!633035))

(assert (= (and b!633035 (not res!274494)) b!633040))

(assert (= (and b!633035 c!116232) b!633039))

(assert (= (and b!633035 (not c!116232)) b!633036))

(assert (= (or b!633039 b!633036) bm!41414))

(assert (= (and bm!41414 c!116233) b!633041))

(assert (= (and bm!41414 (not c!116233)) b!633038))

(declare-fun m!903825 () Bool)

(assert (=> bm!41414 m!903825))

(assert (=> b!633037 m!903687))

(declare-fun m!903827 () Bool)

(assert (=> d!221465 m!903827))

(assert (=> d!221465 m!903687))

(declare-fun m!903829 () Bool)

(assert (=> b!633035 m!903829))

(declare-fun m!903831 () Bool)

(assert (=> b!633035 m!903831))

(declare-fun m!903833 () Bool)

(assert (=> b!633041 m!903833))

(declare-fun m!903835 () Bool)

(assert (=> b!633040 m!903835))

(declare-fun m!903837 () Bool)

(assert (=> b!633039 m!903837))

(assert (=> b!633039 m!903837))

(declare-fun m!903839 () Bool)

(assert (=> b!633039 m!903839))

(assert (=> b!632929 d!221465))

(declare-fun bs!73379 () Bool)

(declare-fun d!221467 () Bool)

(assert (= bs!73379 (and d!221467 b!632929)))

(declare-fun lambda!17556 () Int)

(assert (=> bs!73379 (= lambda!17556 lambda!17530)))

(declare-fun bs!73380 () Bool)

(assert (= bs!73380 (and d!221467 b!633000)))

(assert (=> bs!73380 (= lambda!17556 lambda!17541)))

(declare-fun bs!73381 () Bool)

(assert (= bs!73381 (and d!221467 d!221455)))

(assert (=> bs!73381 (= lambda!17556 lambda!17542)))

(declare-fun lambda!17557 () Int)

(assert (=> bs!73379 (not (= lambda!17557 lambda!17530))))

(assert (=> bs!73380 (not (= lambda!17557 lambda!17541))))

(assert (=> bs!73381 (not (= lambda!17557 lambda!17542))))

(assert (=> d!221467 (not (= lambda!17557 lambda!17556))))

(assert (=> d!221467 (forall!1683 lt!270170 lambda!17557)))

(declare-fun lt!270258 () Unit!11710)

(declare-fun e!384537 () Unit!11710)

(assert (=> d!221467 (= lt!270258 e!384537)))

(declare-fun c!116237 () Bool)

(assert (=> d!221467 (= c!116237 ((_ is Nil!6681) lt!270170))))

(assert (=> d!221467 (forall!1683 lt!270170 lambda!17556)))

(assert (=> d!221467 (= (lemmaAddIdsPreservesRules!0 lt!270170) lt!270258)))

(declare-fun b!633049 () Bool)

(declare-fun Unit!11714 () Unit!11710)

(assert (=> b!633049 (= e!384537 Unit!11714)))

(declare-fun b!633050 () Bool)

(declare-fun Unit!11715 () Unit!11710)

(assert (=> b!633050 (= e!384537 Unit!11715)))

(declare-fun lt!270259 () Unit!11710)

(assert (=> b!633050 (= lt!270259 (lemmaAddIdsPreservesRules!0 (t!83712 lt!270170)))))

(assert (= (and d!221467 c!116237) b!633049))

(assert (= (and d!221467 (not c!116237)) b!633050))

(declare-fun m!903841 () Bool)

(assert (=> d!221467 m!903841))

(declare-fun m!903843 () Bool)

(assert (=> d!221467 m!903843))

(declare-fun m!903845 () Bool)

(assert (=> b!633050 m!903845))

(assert (=> b!632929 d!221467))

(declare-fun bs!73382 () Bool)

(declare-fun d!221469 () Bool)

(assert (= bs!73382 (and d!221469 b!633000)))

(declare-fun lambda!17560 () Int)

(assert (=> bs!73382 (not (= lambda!17560 lambda!17541))))

(declare-fun bs!73383 () Bool)

(assert (= bs!73383 (and d!221469 d!221467)))

(assert (=> bs!73383 (not (= lambda!17560 lambda!17557))))

(declare-fun bs!73384 () Bool)

(assert (= bs!73384 (and d!221469 d!221455)))

(assert (=> bs!73384 (not (= lambda!17560 lambda!17542))))

(declare-fun bs!73385 () Bool)

(assert (= bs!73385 (and d!221469 b!632929)))

(assert (=> bs!73385 (not (= lambda!17560 lambda!17530))))

(assert (=> bs!73383 (not (= lambda!17560 lambda!17556))))

(assert (=> d!221469 true))

(declare-fun order!5105 () Int)

(declare-fun dynLambda!3703 (Int Int) Int)

(assert (=> d!221469 (< (dynLambda!3703 order!5105 lambda!17527) (dynLambda!3702 order!5103 lambda!17560))))

(assert (=> d!221469 true))

(assert (=> d!221469 (< (dynLambda!3701 order!5101 lambda!17528) (dynLambda!3702 order!5103 lambda!17560))))

(assert (=> d!221469 (forall!1685 (map!1426 lt!270170 lambda!17527) lambda!17528)))

(declare-fun lt!270262 () Unit!11710)

(declare-fun choose!4600 (List!6695 Int Int) Unit!11710)

(assert (=> d!221469 (= lt!270262 (choose!4600 lt!270170 lambda!17527 lambda!17528))))

(assert (=> d!221469 (forall!1683 lt!270170 lambda!17560)))

(assert (=> d!221469 (= (mapPred!24 lt!270170 lambda!17527 lambda!17528) lt!270262)))

(declare-fun bs!73386 () Bool)

(assert (= bs!73386 d!221469))

(declare-fun m!903847 () Bool)

(assert (=> bs!73386 m!903847))

(assert (=> bs!73386 m!903847))

(declare-fun m!903849 () Bool)

(assert (=> bs!73386 m!903849))

(declare-fun m!903851 () Bool)

(assert (=> bs!73386 m!903851))

(declare-fun m!903853 () Bool)

(assert (=> bs!73386 m!903853))

(assert (=> b!632929 d!221469))

(declare-fun bs!73387 () Bool)

(declare-fun b!633083 () Bool)

(assert (= bs!73387 (and b!633083 b!632929)))

(declare-fun lambda!17607 () Int)

(assert (=> bs!73387 (not (= lambda!17607 lambda!17528))))

(declare-fun bs!73388 () Bool)

(assert (= bs!73388 (and b!633083 d!221449)))

(assert (=> bs!73388 (not (= lambda!17607 lambda!17535))))

(assert (=> bs!73388 (not (= lambda!17607 lambda!17536))))

(declare-fun bs!73389 () Bool)

(assert (= bs!73389 (and b!633083 d!221459)))

(assert (=> bs!73389 (not (= lambda!17607 lambda!17545))))

(declare-fun b!633098 () Bool)

(declare-fun e!384564 () Bool)

(assert (=> b!633098 (= e!384564 true)))

(declare-fun b!633097 () Bool)

(declare-fun e!384563 () Bool)

(assert (=> b!633097 (= e!384563 e!384564)))

(assert (=> b!633083 e!384563))

(assert (= b!633097 b!633098))

(assert (= b!633083 b!633097))

(declare-fun lambda!17608 () Int)

(assert (=> bs!73387 (not (= lambda!17608 lambda!17528))))

(assert (=> bs!73388 (not (= lambda!17608 lambda!17536))))

(assert (=> bs!73389 (not (= lambda!17608 lambda!17545))))

(assert (=> bs!73388 (not (= lambda!17608 lambda!17535))))

(assert (=> b!633083 (not (= lambda!17608 lambda!17607))))

(declare-fun b!633100 () Bool)

(declare-fun e!384566 () Bool)

(assert (=> b!633100 (= e!384566 true)))

(declare-fun b!633099 () Bool)

(declare-fun e!384565 () Bool)

(assert (=> b!633099 (= e!384565 e!384566)))

(assert (=> b!633083 e!384565))

(assert (= b!633099 b!633100))

(assert (= b!633083 b!633099))

(declare-fun lambda!17609 () Int)

(assert (=> bs!73387 (not (= lambda!17609 lambda!17528))))

(assert (=> b!633083 (not (= lambda!17609 lambda!17608))))

(assert (=> bs!73388 (not (= lambda!17609 lambda!17536))))

(assert (=> bs!73389 (not (= lambda!17609 lambda!17545))))

(assert (=> bs!73388 (not (= lambda!17609 lambda!17535))))

(assert (=> b!633083 (not (= lambda!17609 lambda!17607))))

(declare-fun b!633102 () Bool)

(declare-fun e!384568 () Bool)

(assert (=> b!633102 (= e!384568 true)))

(declare-fun b!633101 () Bool)

(declare-fun e!384567 () Bool)

(assert (=> b!633101 (= e!384567 e!384568)))

(assert (=> b!633083 e!384567))

(assert (= b!633101 b!633102))

(assert (= b!633083 b!633101))

(declare-fun lambda!17610 () Int)

(assert (=> bs!73387 (= lambda!17610 lambda!17528)))

(assert (=> b!633083 (not (= lambda!17610 lambda!17608))))

(assert (=> b!633083 (not (= lambda!17610 lambda!17609))))

(assert (=> bs!73388 (not (= lambda!17610 lambda!17536))))

(assert (=> bs!73389 (not (= lambda!17610 lambda!17545))))

(assert (=> bs!73388 (= lambda!17610 lambda!17535)))

(assert (=> b!633083 (not (= lambda!17610 lambda!17607))))

(declare-fun bs!73390 () Bool)

(declare-fun d!221471 () Bool)

(assert (= bs!73390 (and d!221471 b!632929)))

(declare-fun lambda!17611 () Int)

(assert (=> bs!73390 (= lambda!17611 lambda!17528)))

(declare-fun bs!73391 () Bool)

(assert (= bs!73391 (and d!221471 b!633083)))

(assert (=> bs!73391 (not (= lambda!17611 lambda!17608))))

(assert (=> bs!73391 (not (= lambda!17611 lambda!17609))))

(declare-fun bs!73392 () Bool)

(assert (= bs!73392 (and d!221471 d!221449)))

(assert (=> bs!73392 (not (= lambda!17611 lambda!17536))))

(declare-fun bs!73393 () Bool)

(assert (= bs!73393 (and d!221471 d!221459)))

(assert (=> bs!73393 (not (= lambda!17611 lambda!17545))))

(assert (=> bs!73391 (= lambda!17611 lambda!17610)))

(assert (=> bs!73392 (= lambda!17611 lambda!17535)))

(assert (=> bs!73391 (not (= lambda!17611 lambda!17607))))

(declare-fun b!633079 () Bool)

(declare-fun e!384554 () BalanceConc!4472)

(assert (=> b!633079 (= e!384554 (map!1423 lt!270182 lambda!17527))))

(declare-fun b!633080 () Bool)

(declare-fun e!384555 () Unit!11710)

(declare-fun Unit!11716 () Unit!11710)

(assert (=> b!633080 (= e!384555 Unit!11716)))

(declare-fun b!633081 () Bool)

(declare-fun e!384553 () Unit!11710)

(declare-fun Unit!11717 () Unit!11710)

(assert (=> b!633081 (= e!384553 Unit!11717)))

(declare-fun b!633082 () Bool)

(assert (=> b!633082 true))

(declare-fun lt!270351 () tuple2!7258)

(declare-fun lt!270346 () Unit!11710)

(declare-fun forallContained!457 (List!6696 Int tuple2!7258) Unit!11710)

(assert (=> b!633082 (= lt!270346 (forallContained!457 (list!2835 (map!1423 lt!270182 lambda!17527)) lambda!17609 lt!270351))))

(declare-fun e!384552 () Unit!11710)

(declare-fun err!546 () Unit!11710)

(assert (=> b!633082 (= e!384552 err!546)))

(declare-fun lt!270345 () BalanceConc!4472)

(declare-fun lt!270365 () BalanceConc!4472)

(declare-fun lt!270369 () BalanceConc!4472)

(declare-fun ++!1806 (BalanceConc!4472 BalanceConc!4472) BalanceConc!4472)

(assert (=> b!633083 (= e!384554 (++!1806 (++!1806 (sortObjectsByID!0 lt!270365) lt!270369) (sortObjectsByID!0 lt!270345)))))

(declare-fun apply!1592 (BalanceConc!4472 Int) tuple2!7258)

(declare-fun size!5250 (BalanceConc!4472) Int)

(assert (=> b!633083 (= lt!270351 (apply!1592 (map!1423 lt!270182 lambda!17527) (ite (>= (size!5250 (map!1423 lt!270182 lambda!17527)) 0) (div (size!5250 (map!1423 lt!270182 lambda!17527)) 2) (- (div (- (size!5250 (map!1423 lt!270182 lambda!17527))) 2)))))))

(declare-fun filter!116 (BalanceConc!4472 Int) BalanceConc!4472)

(assert (=> b!633083 (= lt!270365 (filter!116 (map!1423 lt!270182 lambda!17527) lambda!17607))))

(assert (=> b!633083 (= lt!270369 (filter!116 (map!1423 lt!270182 lambda!17527) lambda!17608))))

(assert (=> b!633083 (= lt!270345 (filter!116 (map!1423 lt!270182 lambda!17527) lambda!17609))))

(declare-fun c!116248 () Bool)

(declare-fun contains!1520 (BalanceConc!4472 tuple2!7258) Bool)

(assert (=> b!633083 (= c!116248 (contains!1520 lt!270365 lt!270351))))

(declare-fun lt!270361 () Unit!11710)

(declare-fun e!384558 () Unit!11710)

(assert (=> b!633083 (= lt!270361 e!384558)))

(declare-fun c!116249 () Bool)

(declare-fun forall!1687 (BalanceConc!4472 Int) Bool)

(assert (=> b!633083 (= c!116249 (forall!1687 (map!1423 lt!270182 lambda!17527) lambda!17607))))

(declare-fun lt!270355 () Unit!11710)

(assert (=> b!633083 (= lt!270355 e!384555)))

(declare-fun lt!270359 () List!6696)

(assert (=> b!633083 (= lt!270359 (list!2835 (map!1423 lt!270182 lambda!17527)))))

(declare-fun lt!270360 () Unit!11710)

(declare-fun lemmaNotForallFilterShorter!5 (List!6696 Int) Unit!11710)

(assert (=> b!633083 (= lt!270360 (lemmaNotForallFilterShorter!5 lt!270359 lambda!17607))))

(declare-fun res!274501 () Bool)

(declare-fun isEmpty!4642 (List!6696) Bool)

(assert (=> b!633083 (= res!274501 (isEmpty!4642 lt!270359))))

(declare-fun e!384556 () Bool)

(assert (=> b!633083 (=> res!274501 e!384556)))

(assert (=> b!633083 e!384556))

(declare-fun lt!270341 () Unit!11710)

(assert (=> b!633083 (= lt!270341 lt!270360)))

(declare-fun c!116250 () Bool)

(assert (=> b!633083 (= c!116250 (contains!1520 lt!270345 lt!270351))))

(declare-fun lt!270367 () Unit!11710)

(assert (=> b!633083 (= lt!270367 e!384553)))

(declare-fun c!116251 () Bool)

(assert (=> b!633083 (= c!116251 (forall!1687 (map!1423 lt!270182 lambda!17527) lambda!17609))))

(declare-fun lt!270343 () Unit!11710)

(assert (=> b!633083 (= lt!270343 e!384552)))

(declare-fun lt!270358 () List!6696)

(assert (=> b!633083 (= lt!270358 (list!2835 (map!1423 lt!270182 lambda!17527)))))

(declare-fun lt!270352 () Unit!11710)

(assert (=> b!633083 (= lt!270352 (lemmaNotForallFilterShorter!5 lt!270358 lambda!17609))))

(declare-fun res!274500 () Bool)

(assert (=> b!633083 (= res!274500 (isEmpty!4642 lt!270358))))

(declare-fun e!384557 () Bool)

(assert (=> b!633083 (=> res!274500 e!384557)))

(assert (=> b!633083 e!384557))

(declare-fun lt!270354 () Unit!11710)

(assert (=> b!633083 (= lt!270354 lt!270352)))

(declare-fun lt!270344 () Unit!11710)

(declare-fun filterSubseq!5 (List!6696 Int) Unit!11710)

(assert (=> b!633083 (= lt!270344 (filterSubseq!5 (list!2835 (map!1423 lt!270182 lambda!17527)) lambda!17607))))

(declare-fun lt!270336 () Unit!11710)

(assert (=> b!633083 (= lt!270336 (filterSubseq!5 (list!2835 (map!1423 lt!270182 lambda!17527)) lambda!17608))))

(declare-fun lt!270363 () Unit!11710)

(assert (=> b!633083 (= lt!270363 (filterSubseq!5 (list!2835 (map!1423 lt!270182 lambda!17527)) lambda!17609))))

(declare-fun lt!270353 () List!6696)

(assert (=> b!633083 (= lt!270353 (list!2835 (filter!116 (map!1423 lt!270182 lambda!17527) lambda!17607)))))

(declare-fun lt!270337 () List!6696)

(assert (=> b!633083 (= lt!270337 (list!2835 (map!1423 lt!270182 lambda!17527)))))

(declare-fun lt!270335 () Unit!11710)

(declare-fun lemmaForallSubseq!9 (List!6696 List!6696 Int) Unit!11710)

(assert (=> b!633083 (= lt!270335 (lemmaForallSubseq!9 lt!270353 lt!270337 lambda!17610))))

(assert (=> b!633083 (forall!1685 lt!270353 lambda!17610)))

(declare-fun lt!270366 () Unit!11710)

(assert (=> b!633083 (= lt!270366 lt!270335)))

(declare-fun lt!270342 () List!6696)

(assert (=> b!633083 (= lt!270342 (list!2835 (filter!116 (map!1423 lt!270182 lambda!17527) lambda!17608)))))

(declare-fun lt!270350 () List!6696)

(assert (=> b!633083 (= lt!270350 (list!2835 (map!1423 lt!270182 lambda!17527)))))

(declare-fun lt!270339 () Unit!11710)

(assert (=> b!633083 (= lt!270339 (lemmaForallSubseq!9 lt!270342 lt!270350 lambda!17610))))

(assert (=> b!633083 (forall!1685 lt!270342 lambda!17610)))

(declare-fun lt!270347 () Unit!11710)

(assert (=> b!633083 (= lt!270347 lt!270339)))

(declare-fun lt!270368 () List!6696)

(assert (=> b!633083 (= lt!270368 (list!2835 (filter!116 (map!1423 lt!270182 lambda!17527) lambda!17609)))))

(declare-fun lt!270340 () List!6696)

(assert (=> b!633083 (= lt!270340 (list!2835 (map!1423 lt!270182 lambda!17527)))))

(declare-fun lt!270357 () Unit!11710)

(assert (=> b!633083 (= lt!270357 (lemmaForallSubseq!9 lt!270368 lt!270340 lambda!17610))))

(assert (=> b!633083 (forall!1685 lt!270368 lambda!17610)))

(declare-fun lt!270349 () Unit!11710)

(assert (=> b!633083 (= lt!270349 lt!270357)))

(declare-fun lt!270362 () Unit!11710)

(declare-fun lemmaConcatPreservesForall!29 (List!6696 List!6696 Int) Unit!11710)

(assert (=> b!633083 (= lt!270362 (lemmaConcatPreservesForall!29 (list!2835 (sortObjectsByID!0 lt!270365)) (list!2835 lt!270369) lambda!17610))))

(declare-fun lt!270364 () Unit!11710)

(declare-fun ++!1807 (List!6696 List!6696) List!6696)

(assert (=> b!633083 (= lt!270364 (lemmaConcatPreservesForall!29 (++!1807 (list!2835 (sortObjectsByID!0 lt!270365)) (list!2835 lt!270369)) (list!2835 (sortObjectsByID!0 lt!270345)) lambda!17610))))

(declare-fun b!633084 () Bool)

(assert (=> b!633084 true))

(declare-fun lt!270338 () Unit!11710)

(assert (=> b!633084 (= lt!270338 (forallContained!457 (list!2835 lt!270365) lambda!17607 lt!270351))))

(declare-fun err!549 () Unit!11710)

(assert (=> b!633084 (= e!384558 err!549)))

(declare-fun lt!270348 () BalanceConc!4472)

(assert (=> d!221471 (forall!1687 lt!270348 lambda!17611)))

(assert (=> d!221471 (= lt!270348 e!384554)))

(declare-fun c!116252 () Bool)

(assert (=> d!221471 (= c!116252 (<= (size!5250 (map!1423 lt!270182 lambda!17527)) 1))))

(assert (=> d!221471 (= (sortObjectsByID!0 (map!1423 lt!270182 lambda!17527)) lt!270348)))

(declare-fun b!633085 () Bool)

(declare-fun Unit!11718 () Unit!11710)

(assert (=> b!633085 (= e!384558 Unit!11718)))

(declare-fun b!633086 () Bool)

(assert (=> b!633086 true))

(declare-fun lt!270370 () Unit!11710)

(assert (=> b!633086 (= lt!270370 (forallContained!457 (list!2835 (map!1423 lt!270182 lambda!17527)) lambda!17607 lt!270351))))

(declare-fun err!547 () Unit!11710)

(assert (=> b!633086 (= e!384555 err!547)))

(declare-fun b!633087 () Bool)

(declare-fun Unit!11719 () Unit!11710)

(assert (=> b!633087 (= e!384552 Unit!11719)))

(declare-fun b!633088 () Bool)

(declare-fun size!5251 (List!6696) Int)

(declare-fun filter!117 (List!6696 Int) List!6696)

(assert (=> b!633088 (= e!384557 (< (size!5251 (filter!117 lt!270358 lambda!17609)) (size!5251 lt!270358)))))

(declare-fun b!633089 () Bool)

(assert (=> b!633089 (= e!384556 (< (size!5251 (filter!117 lt!270359 lambda!17607)) (size!5251 lt!270359)))))

(declare-fun b!633090 () Bool)

(assert (=> b!633090 true))

(declare-fun lt!270356 () Unit!11710)

(assert (=> b!633090 (= lt!270356 (forallContained!457 (list!2835 lt!270345) lambda!17609 lt!270351))))

(declare-fun err!548 () Unit!11710)

(assert (=> b!633090 (= e!384553 err!548)))

(assert (= (and d!221471 c!116252) b!633079))

(assert (= (and d!221471 (not c!116252)) b!633083))

(assert (= (and b!633083 c!116248) b!633084))

(assert (= (and b!633083 (not c!116248)) b!633085))

(assert (= (and b!633083 c!116249) b!633086))

(assert (= (and b!633083 (not c!116249)) b!633080))

(assert (= (and b!633083 (not res!274501)) b!633089))

(assert (= (and b!633083 c!116250) b!633090))

(assert (= (and b!633083 (not c!116250)) b!633081))

(assert (= (and b!633083 c!116251) b!633082))

(assert (= (and b!633083 (not c!116251)) b!633087))

(assert (= (and b!633083 (not res!274500)) b!633088))

(declare-fun m!903855 () Bool)

(assert (=> b!633084 m!903855))

(assert (=> b!633084 m!903855))

(declare-fun m!903857 () Bool)

(assert (=> b!633084 m!903857))

(declare-fun m!903859 () Bool)

(assert (=> b!633089 m!903859))

(assert (=> b!633089 m!903859))

(declare-fun m!903861 () Bool)

(assert (=> b!633089 m!903861))

(declare-fun m!903863 () Bool)

(assert (=> b!633089 m!903863))

(declare-fun m!903865 () Bool)

(assert (=> b!633090 m!903865))

(assert (=> b!633090 m!903865))

(declare-fun m!903867 () Bool)

(assert (=> b!633090 m!903867))

(declare-fun m!903869 () Bool)

(assert (=> b!633088 m!903869))

(assert (=> b!633088 m!903869))

(declare-fun m!903871 () Bool)

(assert (=> b!633088 m!903871))

(declare-fun m!903873 () Bool)

(assert (=> b!633088 m!903873))

(assert (=> b!633082 m!903587))

(declare-fun m!903875 () Bool)

(assert (=> b!633082 m!903875))

(assert (=> b!633082 m!903875))

(declare-fun m!903877 () Bool)

(assert (=> b!633082 m!903877))

(assert (=> b!633086 m!903587))

(assert (=> b!633086 m!903875))

(assert (=> b!633086 m!903875))

(declare-fun m!903879 () Bool)

(assert (=> b!633086 m!903879))

(declare-fun m!903881 () Bool)

(assert (=> d!221471 m!903881))

(assert (=> d!221471 m!903587))

(declare-fun m!903883 () Bool)

(assert (=> d!221471 m!903883))

(declare-fun m!903885 () Bool)

(assert (=> b!633083 m!903885))

(assert (=> b!633083 m!903587))

(declare-fun m!903887 () Bool)

(assert (=> b!633083 m!903887))

(declare-fun m!903889 () Bool)

(assert (=> b!633083 m!903889))

(assert (=> b!633083 m!903587))

(declare-fun m!903891 () Bool)

(assert (=> b!633083 m!903891))

(assert (=> b!633083 m!903587))

(assert (=> b!633083 m!903883))

(assert (=> b!633083 m!903587))

(assert (=> b!633083 m!903875))

(declare-fun m!903893 () Bool)

(assert (=> b!633083 m!903893))

(assert (=> b!633083 m!903885))

(declare-fun m!903895 () Bool)

(assert (=> b!633083 m!903895))

(declare-fun m!903897 () Bool)

(assert (=> b!633083 m!903897))

(declare-fun m!903899 () Bool)

(assert (=> b!633083 m!903899))

(declare-fun m!903901 () Bool)

(assert (=> b!633083 m!903901))

(declare-fun m!903903 () Bool)

(assert (=> b!633083 m!903903))

(assert (=> b!633083 m!903587))

(declare-fun m!903905 () Bool)

(assert (=> b!633083 m!903905))

(declare-fun m!903907 () Bool)

(assert (=> b!633083 m!903907))

(assert (=> b!633083 m!903875))

(declare-fun m!903909 () Bool)

(assert (=> b!633083 m!903909))

(assert (=> b!633083 m!903587))

(declare-fun m!903911 () Bool)

(assert (=> b!633083 m!903911))

(declare-fun m!903913 () Bool)

(assert (=> b!633083 m!903913))

(assert (=> b!633083 m!903893))

(assert (=> b!633083 m!903885))

(assert (=> b!633083 m!903901))

(assert (=> b!633083 m!903587))

(declare-fun m!903915 () Bool)

(assert (=> b!633083 m!903915))

(declare-fun m!903917 () Bool)

(assert (=> b!633083 m!903917))

(declare-fun m!903919 () Bool)

(assert (=> b!633083 m!903919))

(declare-fun m!903921 () Bool)

(assert (=> b!633083 m!903921))

(assert (=> b!633083 m!903887))

(declare-fun m!903923 () Bool)

(assert (=> b!633083 m!903923))

(declare-fun m!903925 () Bool)

(assert (=> b!633083 m!903925))

(assert (=> b!633083 m!903587))

(assert (=> b!633083 m!903887))

(assert (=> b!633083 m!903587))

(assert (=> b!633083 m!903891))

(declare-fun m!903927 () Bool)

(assert (=> b!633083 m!903927))

(declare-fun m!903929 () Bool)

(assert (=> b!633083 m!903929))

(assert (=> b!633083 m!903875))

(declare-fun m!903931 () Bool)

(assert (=> b!633083 m!903931))

(declare-fun m!903933 () Bool)

(assert (=> b!633083 m!903933))

(assert (=> b!633083 m!903875))

(declare-fun m!903935 () Bool)

(assert (=> b!633083 m!903935))

(declare-fun m!903937 () Bool)

(assert (=> b!633083 m!903937))

(assert (=> b!633083 m!903587))

(declare-fun m!903939 () Bool)

(assert (=> b!633083 m!903939))

(declare-fun m!903941 () Bool)

(assert (=> b!633083 m!903941))

(assert (=> b!633083 m!903937))

(assert (=> b!633083 m!903899))

(assert (=> b!633083 m!903939))

(declare-fun m!903943 () Bool)

(assert (=> b!633083 m!903943))

(assert (=> b!633083 m!903913))

(assert (=> b!633083 m!903941))

(declare-fun m!903945 () Bool)

(assert (=> b!633083 m!903945))

(declare-fun m!903947 () Bool)

(assert (=> b!633083 m!903947))

(assert (=> b!633083 m!903587))

(assert (=> b!633083 m!903939))

(assert (=> b!633083 m!903891))

(declare-fun m!903949 () Bool)

(assert (=> b!633083 m!903949))

(assert (=> b!633083 m!903941))

(assert (=> b!633083 m!903937))

(declare-fun m!903951 () Bool)

(assert (=> b!633083 m!903951))

(assert (=> b!633083 m!903913))

(assert (=> b!632929 d!221471))

(declare-fun d!221473 () Bool)

(assert (=> d!221473 (= (usesJsonRules!0 (v!16738 (_1!3909 lt!270183))) (= (rules!8165 (v!16738 (_1!3909 lt!270183))) (rules!109 JsonLexer!161)))))

(declare-fun bs!73394 () Bool)

(assert (= bs!73394 d!221473))

(assert (=> bs!73394 m!903579))

(assert (=> b!632917 d!221473))

(declare-fun d!221475 () Bool)

(declare-fun lt!270371 () Bool)

(assert (=> d!221475 (= lt!270371 (forall!1683 (list!2836 lt!270172) lambda!17530))))

(assert (=> d!221475 (= lt!270371 (forall!1684 (c!116200 lt!270172) lambda!17530))))

(assert (=> d!221475 (= (forall!1682 lt!270172 lambda!17530) lt!270371)))

(declare-fun bs!73395 () Bool)

(assert (= bs!73395 d!221475))

(declare-fun m!903953 () Bool)

(assert (=> bs!73395 m!903953))

(assert (=> bs!73395 m!903953))

(declare-fun m!903955 () Bool)

(assert (=> bs!73395 m!903955))

(declare-fun m!903957 () Bool)

(assert (=> bs!73395 m!903957))

(assert (=> b!632928 d!221475))

(declare-fun d!221477 () Bool)

(declare-fun isEmpty!4643 (BalanceConc!4468) Bool)

(assert (=> d!221477 (isEmpty!4643 (BalanceConc!4469 Empty!2228))))

(assert (=> d!221477 (not (isEmpty!4640 lt!270171))))

(assert (=> d!221477 (= (emptyPrintableTokens!2 lt!270171) (PrintableTokens!93 lt!270171 (BalanceConc!4469 Empty!2228)))))

(declare-fun bs!73396 () Bool)

(assert (= bs!73396 d!221477))

(declare-fun m!903959 () Bool)

(assert (=> bs!73396 m!903959))

(assert (=> bs!73396 m!903577))

(assert (=> b!632928 d!221477))

(assert (=> b!632928 d!221443))

(declare-fun d!221479 () Bool)

(assert (=> d!221479 (= (usesJsonRules!0 printableTokens!2) (= (rules!8165 printableTokens!2) (rules!109 JsonLexer!161)))))

(declare-fun bs!73397 () Bool)

(assert (= bs!73397 d!221479))

(assert (=> bs!73397 m!903579))

(assert (=> b!632936 d!221479))

(declare-fun d!221481 () Bool)

(assert (=> d!221481 (= (usesJsonRules!0 (v!16738 (_1!3909 lt!270179))) (= (rules!8165 (v!16738 (_1!3909 lt!270179))) (rules!109 JsonLexer!161)))))

(declare-fun bs!73398 () Bool)

(assert (= bs!73398 d!221481))

(assert (=> bs!73398 m!903579))

(assert (=> b!632912 d!221481))

(declare-fun d!221483 () Bool)

(declare-fun isBalanced!590 (Conc!2228) Bool)

(assert (=> d!221483 (= (inv!8548 (tokens!1178 printableTokens!2)) (isBalanced!590 (c!116199 (tokens!1178 printableTokens!2))))))

(declare-fun bs!73399 () Bool)

(assert (= bs!73399 d!221483))

(declare-fun m!903961 () Bool)

(assert (=> bs!73399 m!903961))

(assert (=> b!632930 d!221483))

(declare-fun b!633111 () Bool)

(declare-fun e!384574 () Bool)

(declare-fun tp!197288 () Bool)

(declare-fun tp!197289 () Bool)

(assert (=> b!633111 (= e!384574 (and (inv!8547 (left!5350 (c!116199 (tokens!1178 printableTokens!2)))) tp!197289 (inv!8547 (right!5680 (c!116199 (tokens!1178 printableTokens!2)))) tp!197288))))

(declare-fun b!633113 () Bool)

(declare-fun e!384573 () Bool)

(declare-fun tp!197290 () Bool)

(assert (=> b!633113 (= e!384573 tp!197290)))

(declare-fun b!633112 () Bool)

(declare-fun inv!8554 (IArray!4457) Bool)

(assert (=> b!633112 (= e!384574 (and (inv!8554 (xs!4869 (c!116199 (tokens!1178 printableTokens!2)))) e!384573))))

(assert (=> b!632924 (= tp!197266 (and (inv!8547 (c!116199 (tokens!1178 printableTokens!2))) e!384574))))

(assert (= (and b!632924 ((_ is Node!2228) (c!116199 (tokens!1178 printableTokens!2)))) b!633111))

(assert (= b!633112 b!633113))

(assert (= (and b!632924 ((_ is Leaf!3421) (c!116199 (tokens!1178 printableTokens!2)))) b!633112))

(declare-fun m!903963 () Bool)

(assert (=> b!633111 m!903963))

(declare-fun m!903965 () Bool)

(assert (=> b!633111 m!903965))

(declare-fun m!903967 () Bool)

(assert (=> b!633112 m!903967))

(assert (=> b!632924 m!903621))

(declare-fun tp!197302 () Bool)

(declare-fun setRes!2708 () Bool)

(declare-fun e!384587 () Bool)

(declare-fun b!633120 () Bool)

(declare-fun mapValue!2444 () List!6691)

(declare-fun inv!8555 (Context!350) Bool)

(assert (=> b!633120 (= e!384587 (and (inv!8555 (_1!3905 (_1!3906 (h!12078 mapValue!2444)))) setRes!2708 tp!197302))))

(declare-fun condSetEmpty!2708 () Bool)

(assert (=> b!633120 (= condSetEmpty!2708 (= (_2!3906 (h!12078 mapValue!2444)) ((as const (Array Context!350 Bool)) false)))))

(declare-fun setNonEmpty!2707 () Bool)

(declare-fun tp!197305 () Bool)

(declare-fun setElem!2708 () Context!350)

(assert (=> setNonEmpty!2707 (= setRes!2708 (and tp!197305 (inv!8555 setElem!2708)))))

(declare-fun setRest!2707 () (InoxSet Context!350))

(assert (=> setNonEmpty!2707 (= (_2!3906 (h!12078 mapValue!2444)) ((_ map or) (store ((as const (Array Context!350 Bool)) false) setElem!2708 true) setRest!2707))))

(declare-fun e!384592 () Bool)

(declare-fun mapDefault!2444 () List!6691)

(declare-fun b!633121 () Bool)

(declare-fun setRes!2707 () Bool)

(declare-fun tp!197301 () Bool)

(assert (=> b!633121 (= e!384592 (and (inv!8555 (_1!3905 (_1!3906 (h!12078 mapDefault!2444)))) setRes!2707 tp!197301))))

(declare-fun condSetEmpty!2707 () Bool)

(assert (=> b!633121 (= condSetEmpty!2707 (= (_2!3906 (h!12078 mapDefault!2444)) ((as const (Array Context!350 Bool)) false)))))

(declare-fun mapIsEmpty!2444 () Bool)

(declare-fun mapRes!2444 () Bool)

(assert (=> mapIsEmpty!2444 mapRes!2444))

(declare-fun setNonEmpty!2708 () Bool)

(declare-fun tp!197303 () Bool)

(declare-fun setElem!2707 () Context!350)

(assert (=> setNonEmpty!2708 (= setRes!2707 (and tp!197303 (inv!8555 setElem!2707)))))

(declare-fun setRest!2708 () (InoxSet Context!350))

(assert (=> setNonEmpty!2708 (= (_2!3906 (h!12078 mapDefault!2444)) ((_ map or) (store ((as const (Array Context!350 Bool)) false) setElem!2707 true) setRest!2708))))

(declare-fun mapNonEmpty!2444 () Bool)

(declare-fun tp!197304 () Bool)

(assert (=> mapNonEmpty!2444 (= mapRes!2444 (and tp!197304 e!384587))))

(declare-fun mapRest!2444 () (Array (_ BitVec 32) List!6691))

(declare-fun mapKey!2444 () (_ BitVec 32))

(assert (=> mapNonEmpty!2444 (= mapRest!2440 (store mapRest!2444 mapKey!2444 mapValue!2444))))

(declare-fun condMapEmpty!2444 () Bool)

(assert (=> mapNonEmpty!2441 (= condMapEmpty!2444 (= mapRest!2440 ((as const (Array (_ BitVec 32) List!6691)) mapDefault!2444)))))

(assert (=> mapNonEmpty!2441 (= tp!197267 (and e!384592 mapRes!2444))))

(declare-fun setIsEmpty!2707 () Bool)

(assert (=> setIsEmpty!2707 setRes!2707))

(declare-fun setIsEmpty!2708 () Bool)

(assert (=> setIsEmpty!2708 setRes!2708))

(assert (= (and mapNonEmpty!2441 condMapEmpty!2444) mapIsEmpty!2444))

(assert (= (and mapNonEmpty!2441 (not condMapEmpty!2444)) mapNonEmpty!2444))

(assert (= (and b!633120 condSetEmpty!2708) setIsEmpty!2708))

(assert (= (and b!633120 (not condSetEmpty!2708)) setNonEmpty!2707))

(assert (= (and mapNonEmpty!2444 ((_ is Cons!6677) mapValue!2444)) b!633120))

(assert (= (and b!633121 condSetEmpty!2707) setIsEmpty!2707))

(assert (= (and b!633121 (not condSetEmpty!2707)) setNonEmpty!2708))

(assert (= (and mapNonEmpty!2441 ((_ is Cons!6677) mapDefault!2444)) b!633121))

(declare-fun m!903969 () Bool)

(assert (=> b!633121 m!903969))

(declare-fun m!903971 () Bool)

(assert (=> setNonEmpty!2707 m!903971))

(declare-fun m!903973 () Bool)

(assert (=> b!633120 m!903973))

(declare-fun m!903975 () Bool)

(assert (=> mapNonEmpty!2444 m!903975))

(declare-fun m!903977 () Bool)

(assert (=> setNonEmpty!2708 m!903977))

(declare-fun tp!197311 () Bool)

(declare-fun b!633126 () Bool)

(declare-fun e!384601 () Bool)

(declare-fun setRes!2711 () Bool)

(assert (=> b!633126 (= e!384601 (and (inv!8555 (_1!3905 (_1!3906 (h!12078 mapValue!2441)))) setRes!2711 tp!197311))))

(declare-fun condSetEmpty!2711 () Bool)

(assert (=> b!633126 (= condSetEmpty!2711 (= (_2!3906 (h!12078 mapValue!2441)) ((as const (Array Context!350 Bool)) false)))))

(declare-fun setIsEmpty!2711 () Bool)

(assert (=> setIsEmpty!2711 setRes!2711))

(declare-fun setNonEmpty!2711 () Bool)

(declare-fun tp!197310 () Bool)

(declare-fun setElem!2711 () Context!350)

(assert (=> setNonEmpty!2711 (= setRes!2711 (and tp!197310 (inv!8555 setElem!2711)))))

(declare-fun setRest!2711 () (InoxSet Context!350))

(assert (=> setNonEmpty!2711 (= (_2!3906 (h!12078 mapValue!2441)) ((_ map or) (store ((as const (Array Context!350 Bool)) false) setElem!2711 true) setRest!2711))))

(assert (=> mapNonEmpty!2441 (= tp!197279 e!384601)))

(assert (= (and b!633126 condSetEmpty!2711) setIsEmpty!2711))

(assert (= (and b!633126 (not condSetEmpty!2711)) setNonEmpty!2711))

(assert (= (and mapNonEmpty!2441 ((_ is Cons!6677) mapValue!2441)) b!633126))

(declare-fun m!903979 () Bool)

(assert (=> b!633126 m!903979))

(declare-fun m!903981 () Bool)

(assert (=> setNonEmpty!2711 m!903981))

(declare-fun e!384604 () Bool)

(declare-fun b!633127 () Bool)

(declare-fun tp!197313 () Bool)

(declare-fun setRes!2712 () Bool)

(assert (=> b!633127 (= e!384604 (and (inv!8555 (_1!3905 (_1!3906 (h!12078 (zeroValue!877 (v!16734 (underlying!1423 (v!16735 (underlying!1424 (cache!979 cacheUp!351)))))))))) setRes!2712 tp!197313))))

(declare-fun condSetEmpty!2712 () Bool)

(assert (=> b!633127 (= condSetEmpty!2712 (= (_2!3906 (h!12078 (zeroValue!877 (v!16734 (underlying!1423 (v!16735 (underlying!1424 (cache!979 cacheUp!351)))))))) ((as const (Array Context!350 Bool)) false)))))

(declare-fun setIsEmpty!2712 () Bool)

(assert (=> setIsEmpty!2712 setRes!2712))

(declare-fun setNonEmpty!2712 () Bool)

(declare-fun tp!197312 () Bool)

(declare-fun setElem!2712 () Context!350)

(assert (=> setNonEmpty!2712 (= setRes!2712 (and tp!197312 (inv!8555 setElem!2712)))))

(declare-fun setRest!2712 () (InoxSet Context!350))

(assert (=> setNonEmpty!2712 (= (_2!3906 (h!12078 (zeroValue!877 (v!16734 (underlying!1423 (v!16735 (underlying!1424 (cache!979 cacheUp!351)))))))) ((_ map or) (store ((as const (Array Context!350 Bool)) false) setElem!2712 true) setRest!2712))))

(assert (=> b!632922 (= tp!197272 e!384604)))

(assert (= (and b!633127 condSetEmpty!2712) setIsEmpty!2712))

(assert (= (and b!633127 (not condSetEmpty!2712)) setNonEmpty!2712))

(assert (= (and b!632922 ((_ is Cons!6677) (zeroValue!877 (v!16734 (underlying!1423 (v!16735 (underlying!1424 (cache!979 cacheUp!351)))))))) b!633127))

(declare-fun m!903983 () Bool)

(assert (=> b!633127 m!903983))

(declare-fun m!903985 () Bool)

(assert (=> setNonEmpty!2712 m!903985))

(declare-fun setRes!2713 () Bool)

(declare-fun b!633128 () Bool)

(declare-fun tp!197315 () Bool)

(declare-fun e!384607 () Bool)

(assert (=> b!633128 (= e!384607 (and (inv!8555 (_1!3905 (_1!3906 (h!12078 (minValue!877 (v!16734 (underlying!1423 (v!16735 (underlying!1424 (cache!979 cacheUp!351)))))))))) setRes!2713 tp!197315))))

(declare-fun condSetEmpty!2713 () Bool)

(assert (=> b!633128 (= condSetEmpty!2713 (= (_2!3906 (h!12078 (minValue!877 (v!16734 (underlying!1423 (v!16735 (underlying!1424 (cache!979 cacheUp!351)))))))) ((as const (Array Context!350 Bool)) false)))))

(declare-fun setIsEmpty!2713 () Bool)

(assert (=> setIsEmpty!2713 setRes!2713))

(declare-fun setNonEmpty!2713 () Bool)

(declare-fun tp!197314 () Bool)

(declare-fun setElem!2713 () Context!350)

(assert (=> setNonEmpty!2713 (= setRes!2713 (and tp!197314 (inv!8555 setElem!2713)))))

(declare-fun setRest!2713 () (InoxSet Context!350))

(assert (=> setNonEmpty!2713 (= (_2!3906 (h!12078 (minValue!877 (v!16734 (underlying!1423 (v!16735 (underlying!1424 (cache!979 cacheUp!351)))))))) ((_ map or) (store ((as const (Array Context!350 Bool)) false) setElem!2713 true) setRest!2713))))

(assert (=> b!632922 (= tp!197278 e!384607)))

(assert (= (and b!633128 condSetEmpty!2713) setIsEmpty!2713))

(assert (= (and b!633128 (not condSetEmpty!2713)) setNonEmpty!2713))

(assert (= (and b!632922 ((_ is Cons!6677) (minValue!877 (v!16734 (underlying!1423 (v!16735 (underlying!1424 (cache!979 cacheUp!351)))))))) b!633128))

(declare-fun m!903987 () Bool)

(assert (=> b!633128 m!903987))

(declare-fun m!903989 () Bool)

(assert (=> setNonEmpty!2713 m!903989))

(declare-fun tp!197321 () Bool)

(declare-fun setRes!2716 () Bool)

(declare-fun e!384615 () Bool)

(declare-fun b!633133 () Bool)

(assert (=> b!633133 (= e!384615 (and (inv!8555 (_2!3907 (_1!3908 (h!12081 (zeroValue!878 (v!16736 (underlying!1425 (v!16737 (underlying!1426 (cache!980 cacheDown!364)))))))))) setRes!2716 tp!197321))))

(declare-fun condSetEmpty!2716 () Bool)

(assert (=> b!633133 (= condSetEmpty!2716 (= (_2!3908 (h!12081 (zeroValue!878 (v!16736 (underlying!1425 (v!16737 (underlying!1426 (cache!980 cacheDown!364)))))))) ((as const (Array Context!350 Bool)) false)))))

(declare-fun setIsEmpty!2716 () Bool)

(assert (=> setIsEmpty!2716 setRes!2716))

(declare-fun setNonEmpty!2716 () Bool)

(declare-fun tp!197320 () Bool)

(declare-fun setElem!2716 () Context!350)

(assert (=> setNonEmpty!2716 (= setRes!2716 (and tp!197320 (inv!8555 setElem!2716)))))

(declare-fun setRest!2716 () (InoxSet Context!350))

(assert (=> setNonEmpty!2716 (= (_2!3908 (h!12081 (zeroValue!878 (v!16736 (underlying!1425 (v!16737 (underlying!1426 (cache!980 cacheDown!364)))))))) ((_ map or) (store ((as const (Array Context!350 Bool)) false) setElem!2716 true) setRest!2716))))

(assert (=> b!632926 (= tp!197274 e!384615)))

(assert (= (and b!633133 condSetEmpty!2716) setIsEmpty!2716))

(assert (= (and b!633133 (not condSetEmpty!2716)) setNonEmpty!2716))

(assert (= (and b!632926 ((_ is Cons!6680) (zeroValue!878 (v!16736 (underlying!1425 (v!16737 (underlying!1426 (cache!980 cacheDown!364)))))))) b!633133))

(declare-fun m!903991 () Bool)

(assert (=> b!633133 m!903991))

(declare-fun m!903993 () Bool)

(assert (=> setNonEmpty!2716 m!903993))

(declare-fun b!633134 () Bool)

(declare-fun setRes!2717 () Bool)

(declare-fun tp!197323 () Bool)

(declare-fun e!384618 () Bool)

(assert (=> b!633134 (= e!384618 (and (inv!8555 (_2!3907 (_1!3908 (h!12081 (minValue!878 (v!16736 (underlying!1425 (v!16737 (underlying!1426 (cache!980 cacheDown!364)))))))))) setRes!2717 tp!197323))))

(declare-fun condSetEmpty!2717 () Bool)

(assert (=> b!633134 (= condSetEmpty!2717 (= (_2!3908 (h!12081 (minValue!878 (v!16736 (underlying!1425 (v!16737 (underlying!1426 (cache!980 cacheDown!364)))))))) ((as const (Array Context!350 Bool)) false)))))

(declare-fun setIsEmpty!2717 () Bool)

(assert (=> setIsEmpty!2717 setRes!2717))

(declare-fun setNonEmpty!2717 () Bool)

(declare-fun tp!197322 () Bool)

(declare-fun setElem!2717 () Context!350)

(assert (=> setNonEmpty!2717 (= setRes!2717 (and tp!197322 (inv!8555 setElem!2717)))))

(declare-fun setRest!2717 () (InoxSet Context!350))

(assert (=> setNonEmpty!2717 (= (_2!3908 (h!12081 (minValue!878 (v!16736 (underlying!1425 (v!16737 (underlying!1426 (cache!980 cacheDown!364)))))))) ((_ map or) (store ((as const (Array Context!350 Bool)) false) setElem!2717 true) setRest!2717))))

(assert (=> b!632926 (= tp!197281 e!384618)))

(assert (= (and b!633134 condSetEmpty!2717) setIsEmpty!2717))

(assert (= (and b!633134 (not condSetEmpty!2717)) setNonEmpty!2717))

(assert (= (and b!632926 ((_ is Cons!6680) (minValue!878 (v!16736 (underlying!1425 (v!16737 (underlying!1426 (cache!980 cacheDown!364)))))))) b!633134))

(declare-fun m!903995 () Bool)

(assert (=> b!633134 m!903995))

(declare-fun m!903997 () Bool)

(assert (=> setNonEmpty!2717 m!903997))

(declare-fun setIsEmpty!2722 () Bool)

(declare-fun setRes!2722 () Bool)

(assert (=> setIsEmpty!2722 setRes!2722))

(declare-fun b!633141 () Bool)

(declare-fun mapDefault!2447 () List!6694)

(declare-fun e!384636 () Bool)

(declare-fun tp!197338 () Bool)

(assert (=> b!633141 (= e!384636 (and (inv!8555 (_2!3907 (_1!3908 (h!12081 mapDefault!2447)))) setRes!2722 tp!197338))))

(declare-fun condSetEmpty!2723 () Bool)

(assert (=> b!633141 (= condSetEmpty!2723 (= (_2!3908 (h!12081 mapDefault!2447)) ((as const (Array Context!350 Bool)) false)))))

(declare-fun setNonEmpty!2722 () Bool)

(declare-fun setRes!2723 () Bool)

(declare-fun tp!197337 () Bool)

(declare-fun setElem!2722 () Context!350)

(assert (=> setNonEmpty!2722 (= setRes!2723 (and tp!197337 (inv!8555 setElem!2722)))))

(declare-fun mapValue!2447 () List!6694)

(declare-fun setRest!2723 () (InoxSet Context!350))

(assert (=> setNonEmpty!2722 (= (_2!3908 (h!12081 mapValue!2447)) ((_ map or) (store ((as const (Array Context!350 Bool)) false) setElem!2722 true) setRest!2723))))

(declare-fun tp!197335 () Bool)

(declare-fun e!384634 () Bool)

(declare-fun b!633142 () Bool)

(assert (=> b!633142 (= e!384634 (and (inv!8555 (_2!3907 (_1!3908 (h!12081 mapValue!2447)))) setRes!2723 tp!197335))))

(declare-fun condSetEmpty!2722 () Bool)

(assert (=> b!633142 (= condSetEmpty!2722 (= (_2!3908 (h!12081 mapValue!2447)) ((as const (Array Context!350 Bool)) false)))))

(declare-fun setIsEmpty!2723 () Bool)

(assert (=> setIsEmpty!2723 setRes!2723))

(declare-fun condMapEmpty!2447 () Bool)

(assert (=> mapNonEmpty!2440 (= condMapEmpty!2447 (= mapRest!2441 ((as const (Array (_ BitVec 32) List!6694)) mapDefault!2447)))))

(declare-fun mapRes!2447 () Bool)

(assert (=> mapNonEmpty!2440 (= tp!197275 (and e!384636 mapRes!2447))))

(declare-fun mapIsEmpty!2447 () Bool)

(assert (=> mapIsEmpty!2447 mapRes!2447))

(declare-fun mapNonEmpty!2447 () Bool)

(declare-fun tp!197336 () Bool)

(assert (=> mapNonEmpty!2447 (= mapRes!2447 (and tp!197336 e!384634))))

(declare-fun mapRest!2447 () (Array (_ BitVec 32) List!6694))

(declare-fun mapKey!2447 () (_ BitVec 32))

(assert (=> mapNonEmpty!2447 (= mapRest!2441 (store mapRest!2447 mapKey!2447 mapValue!2447))))

(declare-fun setNonEmpty!2723 () Bool)

(declare-fun tp!197334 () Bool)

(declare-fun setElem!2723 () Context!350)

(assert (=> setNonEmpty!2723 (= setRes!2722 (and tp!197334 (inv!8555 setElem!2723)))))

(declare-fun setRest!2722 () (InoxSet Context!350))

(assert (=> setNonEmpty!2723 (= (_2!3908 (h!12081 mapDefault!2447)) ((_ map or) (store ((as const (Array Context!350 Bool)) false) setElem!2723 true) setRest!2722))))

(assert (= (and mapNonEmpty!2440 condMapEmpty!2447) mapIsEmpty!2447))

(assert (= (and mapNonEmpty!2440 (not condMapEmpty!2447)) mapNonEmpty!2447))

(assert (= (and b!633142 condSetEmpty!2722) setIsEmpty!2723))

(assert (= (and b!633142 (not condSetEmpty!2722)) setNonEmpty!2722))

(assert (= (and mapNonEmpty!2447 ((_ is Cons!6680) mapValue!2447)) b!633142))

(assert (= (and b!633141 condSetEmpty!2723) setIsEmpty!2722))

(assert (= (and b!633141 (not condSetEmpty!2723)) setNonEmpty!2723))

(assert (= (and mapNonEmpty!2440 ((_ is Cons!6680) mapDefault!2447)) b!633141))

(declare-fun m!903999 () Bool)

(assert (=> mapNonEmpty!2447 m!903999))

(declare-fun m!904001 () Bool)

(assert (=> setNonEmpty!2723 m!904001))

(declare-fun m!904003 () Bool)

(assert (=> b!633142 m!904003))

(declare-fun m!904005 () Bool)

(assert (=> setNonEmpty!2722 m!904005))

(declare-fun m!904007 () Bool)

(assert (=> b!633141 m!904007))

(declare-fun b!633143 () Bool)

(declare-fun tp!197340 () Bool)

(declare-fun e!384639 () Bool)

(declare-fun setRes!2724 () Bool)

(assert (=> b!633143 (= e!384639 (and (inv!8555 (_2!3907 (_1!3908 (h!12081 mapValue!2440)))) setRes!2724 tp!197340))))

(declare-fun condSetEmpty!2724 () Bool)

(assert (=> b!633143 (= condSetEmpty!2724 (= (_2!3908 (h!12081 mapValue!2440)) ((as const (Array Context!350 Bool)) false)))))

(declare-fun setIsEmpty!2724 () Bool)

(assert (=> setIsEmpty!2724 setRes!2724))

(declare-fun setNonEmpty!2724 () Bool)

(declare-fun tp!197339 () Bool)

(declare-fun setElem!2724 () Context!350)

(assert (=> setNonEmpty!2724 (= setRes!2724 (and tp!197339 (inv!8555 setElem!2724)))))

(declare-fun setRest!2724 () (InoxSet Context!350))

(assert (=> setNonEmpty!2724 (= (_2!3908 (h!12081 mapValue!2440)) ((_ map or) (store ((as const (Array Context!350 Bool)) false) setElem!2724 true) setRest!2724))))

(assert (=> mapNonEmpty!2440 (= tp!197269 e!384639)))

(assert (= (and b!633143 condSetEmpty!2724) setIsEmpty!2724))

(assert (= (and b!633143 (not condSetEmpty!2724)) setNonEmpty!2724))

(assert (= (and mapNonEmpty!2440 ((_ is Cons!6680) mapValue!2440)) b!633143))

(declare-fun m!904009 () Bool)

(assert (=> b!633143 m!904009))

(declare-fun m!904011 () Bool)

(assert (=> setNonEmpty!2724 m!904011))

(declare-fun tp!197342 () Bool)

(declare-fun b!633144 () Bool)

(declare-fun e!384642 () Bool)

(declare-fun setRes!2725 () Bool)

(assert (=> b!633144 (= e!384642 (and (inv!8555 (_2!3907 (_1!3908 (h!12081 mapDefault!2441)))) setRes!2725 tp!197342))))

(declare-fun condSetEmpty!2725 () Bool)

(assert (=> b!633144 (= condSetEmpty!2725 (= (_2!3908 (h!12081 mapDefault!2441)) ((as const (Array Context!350 Bool)) false)))))

(declare-fun setIsEmpty!2725 () Bool)

(assert (=> setIsEmpty!2725 setRes!2725))

(declare-fun setNonEmpty!2725 () Bool)

(declare-fun tp!197341 () Bool)

(declare-fun setElem!2725 () Context!350)

(assert (=> setNonEmpty!2725 (= setRes!2725 (and tp!197341 (inv!8555 setElem!2725)))))

(declare-fun setRest!2725 () (InoxSet Context!350))

(assert (=> setNonEmpty!2725 (= (_2!3908 (h!12081 mapDefault!2441)) ((_ map or) (store ((as const (Array Context!350 Bool)) false) setElem!2725 true) setRest!2725))))

(assert (=> b!632918 (= tp!197268 e!384642)))

(assert (= (and b!633144 condSetEmpty!2725) setIsEmpty!2725))

(assert (= (and b!633144 (not condSetEmpty!2725)) setNonEmpty!2725))

(assert (= (and b!632918 ((_ is Cons!6680) mapDefault!2441)) b!633144))

(declare-fun m!904013 () Bool)

(assert (=> b!633144 m!904013))

(declare-fun m!904015 () Bool)

(assert (=> setNonEmpty!2725 m!904015))

(declare-fun tp!197344 () Bool)

(declare-fun e!384646 () Bool)

(declare-fun b!633145 () Bool)

(declare-fun setRes!2726 () Bool)

(assert (=> b!633145 (= e!384646 (and (inv!8555 (_1!3905 (_1!3906 (h!12078 mapDefault!2440)))) setRes!2726 tp!197344))))

(declare-fun condSetEmpty!2726 () Bool)

(assert (=> b!633145 (= condSetEmpty!2726 (= (_2!3906 (h!12078 mapDefault!2440)) ((as const (Array Context!350 Bool)) false)))))

(declare-fun setIsEmpty!2726 () Bool)

(assert (=> setIsEmpty!2726 setRes!2726))

(declare-fun setNonEmpty!2726 () Bool)

(declare-fun tp!197343 () Bool)

(declare-fun setElem!2726 () Context!350)

(assert (=> setNonEmpty!2726 (= setRes!2726 (and tp!197343 (inv!8555 setElem!2726)))))

(declare-fun setRest!2726 () (InoxSet Context!350))

(assert (=> setNonEmpty!2726 (= (_2!3906 (h!12078 mapDefault!2440)) ((_ map or) (store ((as const (Array Context!350 Bool)) false) setElem!2726 true) setRest!2726))))

(assert (=> b!632919 (= tp!197270 e!384646)))

(assert (= (and b!633145 condSetEmpty!2726) setIsEmpty!2726))

(assert (= (and b!633145 (not condSetEmpty!2726)) setNonEmpty!2726))

(assert (= (and b!632919 ((_ is Cons!6677) mapDefault!2440)) b!633145))

(declare-fun m!904017 () Bool)

(assert (=> b!633145 m!904017))

(declare-fun m!904019 () Bool)

(assert (=> setNonEmpty!2726 m!904019))

(declare-fun b!633156 () Bool)

(declare-fun b_free!18565 () Bool)

(declare-fun b_next!18581 () Bool)

(assert (=> b!633156 (= b_free!18565 (not b_next!18581))))

(declare-fun tp!197353 () Bool)

(declare-fun b_and!62359 () Bool)

(assert (=> b!633156 (= tp!197353 b_and!62359)))

(declare-fun b_free!18567 () Bool)

(declare-fun b_next!18583 () Bool)

(assert (=> b!633156 (= b_free!18567 (not b_next!18583))))

(declare-fun tp!197351 () Bool)

(declare-fun b_and!62361 () Bool)

(assert (=> b!633156 (= tp!197351 b_and!62361)))

(declare-fun e!384655 () Bool)

(assert (=> b!633156 (= e!384655 (and tp!197353 tp!197351))))

(declare-fun b!633155 () Bool)

(declare-fun e!384656 () Bool)

(declare-fun inv!8546 (String!8680) Bool)

(declare-fun inv!8556 (TokenValueInjection!2530) Bool)

(assert (=> b!633155 (= e!384656 (and (inv!8546 (tag!1617 (h!12079 (rules!8165 printableTokens!2)))) (inv!8556 (transformation!1355 (h!12079 (rules!8165 printableTokens!2)))) e!384655))))

(declare-fun b!633154 () Bool)

(declare-fun e!384658 () Bool)

(declare-fun tp!197352 () Bool)

(assert (=> b!633154 (= e!384658 (and e!384656 tp!197352))))

(assert (=> b!632930 (= tp!197276 e!384658)))

(assert (= b!633155 b!633156))

(assert (= b!633154 b!633155))

(assert (= (and b!632930 ((_ is Cons!6678) (rules!8165 printableTokens!2))) b!633154))

(declare-fun m!904021 () Bool)

(assert (=> b!633155 m!904021))

(declare-fun m!904023 () Bool)

(assert (=> b!633155 m!904023))

(check-sat (not setNonEmpty!2713) (not d!221479) (not b_next!18579) (not b!633098) (not setNonEmpty!2726) (not d!221445) (not b!633155) (not b!633126) (not b!633039) (not b!633100) (not d!221455) (not b!632980) (not d!221475) (not d!221469) (not d!221451) (not b!633144) (not b!632955) (not d!221459) (not b!633134) (not b!633089) (not mapNonEmpty!2444) (not b!632963) (not b!633083) (not b!632972) (not d!221461) (not d!221447) (not d!221421) (not d!221433) (not b!633011) (not setNonEmpty!2708) (not d!221435) (not mapNonEmpty!2447) (not b!633037) b_and!62351 (not b!633097) (not b!632948) (not b!633050) (not setNonEmpty!2707) (not b!632924) (not d!221467) b_and!62355 (not b!633142) (not b!633133) (not b!633086) (not b!633040) (not b!633082) (not setNonEmpty!2725) (not b!632945) (not b!633041) (not setNonEmpty!2716) (not d!221465) (not b!633084) (not b!633018) (not setNonEmpty!2717) (not b!633010) (not d!221463) (not b!633120) (not d!221473) (not d!221483) (not d!221417) (not b_next!18581) (not d!221453) (not d!221481) (not b!632966) (not b!633113) (not b!632990) (not d!221471) (not b!633102) (not b!633145) (not b!633154) (not b!633127) (not setNonEmpty!2722) (not b_next!18577) (not b!633000) b_and!62359 (not b!633035) (not b!632956) (not b!632981) (not d!221443) (not b!633090) (not b!633128) (not b_next!18583) (not b!633099) (not b!632989) (not b!632943) (not d!221457) (not b!633121) b_and!62353 (not bm!41414) b_and!62361 (not b_next!18575) (not b_next!18573) (not b!632960) (not d!221431) (not setNonEmpty!2724) (not b!633101) (not setNonEmpty!2711) b_and!62357 (not b!632957) (not setNonEmpty!2712) (not b!633111) (not b!633112) (not d!221441) (not b!633141) (not b!633143) (not d!221449) (not d!221477) (not bm!41411) (not b!633088) (not setNonEmpty!2723))
(check-sat b_and!62351 b_and!62355 (not b_next!18581) (not b_next!18577) b_and!62359 (not b_next!18579) (not b_next!18583) b_and!62353 b_and!62357 b_and!62361 (not b_next!18575) (not b_next!18573))

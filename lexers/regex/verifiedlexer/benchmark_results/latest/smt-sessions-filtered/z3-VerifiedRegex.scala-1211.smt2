; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!63636 () Bool)

(assert start!63636)

(declare-fun b!648242 () Bool)

(declare-fun b_free!18933 () Bool)

(declare-fun b_next!18989 () Bool)

(assert (=> b!648242 (= b_free!18933 (not b_next!18989))))

(declare-fun tp!200259 () Bool)

(declare-fun b_and!62727 () Bool)

(assert (=> b!648242 (= tp!200259 b_and!62727)))

(declare-fun b!648259 () Bool)

(declare-fun b_free!18935 () Bool)

(declare-fun b_next!18991 () Bool)

(assert (=> b!648259 (= b_free!18935 (not b_next!18991))))

(declare-fun tp!200255 () Bool)

(declare-fun b_and!62729 () Bool)

(assert (=> b!648259 (= tp!200255 b_and!62729)))

(declare-fun b!648264 () Bool)

(declare-fun b_free!18937 () Bool)

(declare-fun b_next!18993 () Bool)

(assert (=> b!648264 (= b_free!18937 (not b_next!18993))))

(declare-fun tp!200265 () Bool)

(declare-fun b_and!62731 () Bool)

(assert (=> b!648264 (= tp!200265 b_and!62731)))

(declare-fun b!648244 () Bool)

(declare-fun b_free!18939 () Bool)

(declare-fun b_next!18995 () Bool)

(assert (=> b!648244 (= b_free!18939 (not b_next!18995))))

(declare-fun tp!200263 () Bool)

(declare-fun b_and!62733 () Bool)

(assert (=> b!648244 (= tp!200263 b_and!62733)))

(declare-fun e!398096 () Bool)

(declare-fun e!398107 () Bool)

(assert (=> b!648242 (= e!398096 (and e!398107 tp!200259))))

(declare-fun mapNonEmpty!2732 () Bool)

(declare-fun mapRes!2733 () Bool)

(declare-fun tp!200262 () Bool)

(declare-fun tp!200256 () Bool)

(assert (=> mapNonEmpty!2732 (= mapRes!2733 (and tp!200262 tp!200256))))

(declare-datatypes ((Regex!1727 0))(
  ( (ElementMatch!1727 (c!117844 (_ BitVec 16))) (Concat!3153 (regOne!3966 Regex!1727) (regTwo!3966 Regex!1727)) (EmptyExpr!1727) (Star!1727 (reg!2056 Regex!1727)) (EmptyLang!1727) (Union!1727 (regOne!3967 Regex!1727) (regTwo!3967 Regex!1727)) )
))
(declare-datatypes ((List!6993 0))(
  ( (Nil!6979) (Cons!6979 (h!12380 Regex!1727) (t!85761 List!6993)) )
))
(declare-datatypes ((Context!422 0))(
  ( (Context!423 (exprs!711 List!6993)) )
))
(declare-datatypes ((tuple2!7536 0))(
  ( (tuple2!7537 (_1!4130 Context!422) (_2!4130 (_ BitVec 16))) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!7538 0))(
  ( (tuple2!7539 (_1!4131 tuple2!7536) (_2!4131 (InoxSet Context!422))) )
))
(declare-datatypes ((List!6994 0))(
  ( (Nil!6980) (Cons!6980 (h!12381 tuple2!7538) (t!85762 List!6994)) )
))
(declare-fun mapRest!2732 () (Array (_ BitVec 32) List!6994))

(declare-datatypes ((Hashable!660 0))(
  ( (HashableExt!659 (__x!4981 Int)) )
))
(declare-datatypes ((array!2616 0))(
  ( (array!2617 (arr!1185 (Array (_ BitVec 32) List!6994)) (size!5527 (_ BitVec 32))) )
))
(declare-datatypes ((array!2618 0))(
  ( (array!2619 (arr!1186 (Array (_ BitVec 32) (_ BitVec 64))) (size!5528 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1376 0))(
  ( (LongMapFixedSize!1377 (defaultEntry!1044 Int) (mask!2431 (_ BitVec 32)) (extraKeys!935 (_ BitVec 32)) (zeroValue!945 List!6994) (minValue!945 List!6994) (_size!1485 (_ BitVec 32)) (_keys!982 array!2618) (_values!967 array!2616) (_vacant!749 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!2693 0))(
  ( (Cell!2694 (v!17170 LongMapFixedSize!1376)) )
))
(declare-datatypes ((MutLongMap!688 0))(
  ( (LongMap!688 (underlying!1559 Cell!2693)) (MutLongMapExt!687 (__x!4982 Int)) )
))
(declare-datatypes ((Cell!2695 0))(
  ( (Cell!2696 (v!17171 MutLongMap!688)) )
))
(declare-datatypes ((MutableMap!660 0))(
  ( (MutableMapExt!659 (__x!4983 Int)) (HashMap!660 (underlying!1560 Cell!2695) (hashF!2568 Hashable!660) (_size!1486 (_ BitVec 32)) (defaultValue!811 Int)) )
))
(declare-datatypes ((CacheUp!320 0))(
  ( (CacheUp!321 (cache!1047 MutableMap!660)) )
))
(declare-fun cacheUp!351 () CacheUp!320)

(declare-fun mapValue!2732 () List!6994)

(declare-fun mapKey!2733 () (_ BitVec 32))

(assert (=> mapNonEmpty!2732 (= (arr!1185 (_values!967 (v!17170 (underlying!1559 (v!17171 (underlying!1560 (cache!1047 cacheUp!351))))))) (store mapRest!2732 mapKey!2733 mapValue!2732))))

(declare-fun b!648243 () Bool)

(declare-fun e!398104 () Bool)

(declare-fun e!398094 () Bool)

(assert (=> b!648243 (= e!398104 e!398094)))

(declare-fun e!398109 () Bool)

(declare-fun tp!200269 () Bool)

(declare-fun e!398106 () Bool)

(declare-fun tp!200258 () Bool)

(declare-fun array_inv!865 (array!2618) Bool)

(declare-fun array_inv!866 (array!2616) Bool)

(assert (=> b!648244 (= e!398106 (and tp!200263 tp!200269 tp!200258 (array_inv!865 (_keys!982 (v!17170 (underlying!1559 (v!17171 (underlying!1560 (cache!1047 cacheUp!351))))))) (array_inv!866 (_values!967 (v!17170 (underlying!1559 (v!17171 (underlying!1560 (cache!1047 cacheUp!351))))))) e!398109))))

(declare-fun b!648245 () Bool)

(declare-fun e!398111 () Bool)

(declare-datatypes ((List!6995 0))(
  ( (Nil!6981) (Cons!6981 (h!12382 (_ BitVec 16)) (t!85763 List!6995)) )
))
(declare-datatypes ((TokenValue!1426 0))(
  ( (FloatLiteralValue!2852 (text!10427 List!6995)) (TokenValueExt!1425 (__x!4984 Int)) (Broken!7130 (value!44797 List!6995)) (Object!1439) (End!1426) (Def!1426) (Underscore!1426) (Match!1426) (Else!1426) (Error!1426) (Case!1426) (If!1426) (Extends!1426) (Abstract!1426) (Class!1426) (Val!1426) (DelimiterValue!2852 (del!1486 List!6995)) (KeywordValue!1432 (value!44798 List!6995)) (CommentValue!2852 (value!44799 List!6995)) (WhitespaceValue!2852 (value!44800 List!6995)) (IndentationValue!1426 (value!44801 List!6995)) (String!8867) (Int32!1426) (Broken!7131 (value!44802 List!6995)) (Boolean!1427) (Unit!12131) (OperatorValue!1429 (op!1486 List!6995)) (IdentifierValue!2852 (value!44803 List!6995)) (IdentifierValue!2853 (value!44804 List!6995)) (WhitespaceValue!2853 (value!44805 List!6995)) (True!2852) (False!2852) (Broken!7132 (value!44806 List!6995)) (Broken!7133 (value!44807 List!6995)) (True!2853) (RightBrace!1426) (RightBracket!1426) (Colon!1426) (Null!1426) (Comma!1426) (LeftBracket!1426) (False!2853) (LeftBrace!1426) (ImaginaryLiteralValue!1426 (text!10428 List!6995)) (StringLiteralValue!4278 (value!44808 List!6995)) (EOFValue!1426 (value!44809 List!6995)) (IdentValue!1426 (value!44810 List!6995)) (DelimiterValue!2853 (value!44811 List!6995)) (DedentValue!1426 (value!44812 List!6995)) (NewLineValue!1426 (value!44813 List!6995)) (IntegerValue!4278 (value!44814 (_ BitVec 32)) (text!10429 List!6995)) (IntegerValue!4279 (value!44815 Int) (text!10430 List!6995)) (Times!1426) (Or!1426) (Equal!1426) (Minus!1426) (Broken!7134 (value!44816 List!6995)) (And!1426) (Div!1426) (LessEqual!1426) (Mod!1426) (Concat!3154) (Not!1426) (Plus!1426) (SpaceValue!1426 (value!44817 List!6995)) (IntegerValue!4280 (value!44818 Int) (text!10431 List!6995)) (StringLiteralValue!4279 (text!10432 List!6995)) (FloatLiteralValue!2853 (text!10433 List!6995)) (BytesLiteralValue!1426 (value!44819 List!6995)) (CommentValue!2853 (value!44820 List!6995)) (StringLiteralValue!4280 (value!44821 List!6995)) (ErrorTokenValue!1426 (msg!1487 List!6995)) )
))
(declare-datatypes ((String!8868 0))(
  ( (String!8869 (value!44822 String)) )
))
(declare-datatypes ((IArray!4757 0))(
  ( (IArray!4758 (innerList!2436 List!6995)) )
))
(declare-datatypes ((Conc!2378 0))(
  ( (Node!2378 (left!5545 Conc!2378) (right!5875 Conc!2378) (csize!4986 Int) (cheight!2589 Int)) (Leaf!3590 (xs!5019 IArray!4757) (csize!4987 Int)) (Empty!2378) )
))
(declare-datatypes ((BalanceConc!4768 0))(
  ( (BalanceConc!4769 (c!117845 Conc!2378)) )
))
(declare-datatypes ((TokenValueInjection!2604 0))(
  ( (TokenValueInjection!2605 (toValue!2333 Int) (toChars!2192 Int)) )
))
(declare-datatypes ((Rule!2584 0))(
  ( (Rule!2585 (regex!1392 Regex!1727) (tag!1654 String!8868) (isSeparator!1392 Bool) (transformation!1392 TokenValueInjection!2604)) )
))
(declare-datatypes ((Token!2506 0))(
  ( (Token!2507 (value!44823 TokenValue!1426) (rule!2187 Rule!2584) (size!5529 Int) (originalCharacters!1424 List!6995)) )
))
(declare-datatypes ((List!6996 0))(
  ( (Nil!6982) (Cons!6982 (h!12383 Token!2506) (t!85764 List!6996)) )
))
(declare-datatypes ((IArray!4759 0))(
  ( (IArray!4760 (innerList!2437 List!6996)) )
))
(declare-datatypes ((Conc!2379 0))(
  ( (Node!2379 (left!5546 Conc!2379) (right!5876 Conc!2379) (csize!4988 Int) (cheight!2590 Int)) (Leaf!3591 (xs!5020 IArray!4759) (csize!4989 Int)) (Empty!2379) )
))
(declare-datatypes ((List!6997 0))(
  ( (Nil!6983) (Cons!6983 (h!12384 Rule!2584) (t!85765 List!6997)) )
))
(declare-datatypes ((BalanceConc!4770 0))(
  ( (BalanceConc!4771 (c!117846 Conc!2379)) )
))
(declare-datatypes ((PrintableTokens!164 0))(
  ( (PrintableTokens!165 (rules!8247 List!6997) (tokens!1231 BalanceConc!4770)) )
))
(declare-fun printableTokens!2 () PrintableTokens!164)

(declare-fun tp!200257 () Bool)

(declare-fun inv!8804 (Conc!2379) Bool)

(assert (=> b!648245 (= e!398111 (and (inv!8804 (c!117846 (tokens!1231 printableTokens!2))) tp!200257))))

(declare-fun b!648246 () Bool)

(declare-fun res!283778 () Bool)

(declare-fun e!398097 () Bool)

(assert (=> b!648246 (=> (not res!283778) (not e!398097))))

(declare-fun usesJsonRules!0 (PrintableTokens!164) Bool)

(assert (=> b!648246 (= res!283778 (usesJsonRules!0 printableTokens!2))))

(declare-fun b!648247 () Bool)

(declare-fun e!398093 () Bool)

(declare-fun e!398095 () Bool)

(assert (=> b!648247 (= e!398093 e!398095)))

(declare-fun mapIsEmpty!2732 () Bool)

(assert (=> mapIsEmpty!2732 mapRes!2733))

(declare-fun b!648248 () Bool)

(declare-fun tp!200266 () Bool)

(assert (=> b!648248 (= e!398109 (and tp!200266 mapRes!2733))))

(declare-fun condMapEmpty!2732 () Bool)

(declare-fun mapDefault!2732 () List!6994)

(assert (=> b!648248 (= condMapEmpty!2732 (= (arr!1185 (_values!967 (v!17170 (underlying!1559 (v!17171 (underlying!1560 (cache!1047 cacheUp!351))))))) ((as const (Array (_ BitVec 32) List!6994)) mapDefault!2732)))))

(declare-fun b!648249 () Bool)

(declare-fun res!283780 () Bool)

(assert (=> b!648249 (=> (not res!283780) (not e!398097))))

(declare-fun lt!278241 () List!6997)

(declare-datatypes ((LexerInterface!1264 0))(
  ( (LexerInterfaceExt!1261 (__x!4985 Int)) (Lexer!1262) )
))
(declare-fun rulesInvariant!1199 (LexerInterface!1264 List!6997) Bool)

(assert (=> b!648249 (= res!283780 (rulesInvariant!1199 Lexer!1262 lt!278241))))

(declare-fun b!648250 () Bool)

(declare-fun res!283785 () Bool)

(declare-fun e!398103 () Bool)

(assert (=> b!648250 (=> res!283785 e!398103)))

(declare-datatypes ((tuple3!622 0))(
  ( (tuple3!623 (_1!4132 Regex!1727) (_2!4132 Context!422) (_3!362 (_ BitVec 16))) )
))
(declare-datatypes ((tuple2!7540 0))(
  ( (tuple2!7541 (_1!4133 tuple3!622) (_2!4133 (InoxSet Context!422))) )
))
(declare-datatypes ((List!6998 0))(
  ( (Nil!6984) (Cons!6984 (h!12385 tuple2!7540) (t!85766 List!6998)) )
))
(declare-datatypes ((array!2620 0))(
  ( (array!2621 (arr!1187 (Array (_ BitVec 32) List!6998)) (size!5530 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1378 0))(
  ( (LongMapFixedSize!1379 (defaultEntry!1045 Int) (mask!2432 (_ BitVec 32)) (extraKeys!936 (_ BitVec 32)) (zeroValue!946 List!6998) (minValue!946 List!6998) (_size!1487 (_ BitVec 32)) (_keys!983 array!2618) (_values!968 array!2620) (_vacant!750 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!2697 0))(
  ( (Cell!2698 (v!17172 LongMapFixedSize!1378)) )
))
(declare-datatypes ((MutLongMap!689 0))(
  ( (LongMap!689 (underlying!1561 Cell!2697)) (MutLongMapExt!688 (__x!4986 Int)) )
))
(declare-datatypes ((Cell!2699 0))(
  ( (Cell!2700 (v!17173 MutLongMap!689)) )
))
(declare-datatypes ((Hashable!661 0))(
  ( (HashableExt!660 (__x!4987 Int)) )
))
(declare-datatypes ((MutableMap!661 0))(
  ( (MutableMapExt!660 (__x!4988 Int)) (HashMap!661 (underlying!1562 Cell!2699) (hashF!2569 Hashable!661) (_size!1488 (_ BitVec 32)) (defaultValue!812 Int)) )
))
(declare-datatypes ((CacheDown!322 0))(
  ( (CacheDown!323 (cache!1048 MutableMap!661)) )
))
(declare-datatypes ((Option!1673 0))(
  ( (None!1672) (Some!1672 (v!17174 PrintableTokens!164)) )
))
(declare-datatypes ((tuple3!624 0))(
  ( (tuple3!625 (_1!4134 Option!1673) (_2!4134 CacheUp!320) (_3!363 CacheDown!322)) )
))
(declare-fun lt!278245 () tuple3!624)

(assert (=> b!648250 (= res!283785 (not (usesJsonRules!0 (v!17174 (_1!4134 lt!278245)))))))

(declare-fun b!648251 () Bool)

(declare-fun res!283784 () Bool)

(assert (=> b!648251 (=> res!283784 e!398103)))

(declare-fun lt!278244 () tuple3!624)

(assert (=> b!648251 (= res!283784 (not (usesJsonRules!0 (v!17174 (_1!4134 lt!278244)))))))

(declare-fun mapNonEmpty!2733 () Bool)

(declare-fun mapRes!2732 () Bool)

(declare-fun tp!200260 () Bool)

(declare-fun tp!200264 () Bool)

(assert (=> mapNonEmpty!2733 (= mapRes!2732 (and tp!200260 tp!200264))))

(declare-fun cacheDown!364 () CacheDown!322)

(declare-fun mapKey!2732 () (_ BitVec 32))

(declare-fun mapValue!2733 () List!6998)

(declare-fun mapRest!2733 () (Array (_ BitVec 32) List!6998))

(assert (=> mapNonEmpty!2733 (= (arr!1187 (_values!968 (v!17172 (underlying!1561 (v!17173 (underlying!1562 (cache!1048 cacheDown!364))))))) (store mapRest!2733 mapKey!2732 mapValue!2733))))

(declare-fun b!648252 () Bool)

(declare-fun e!398101 () Bool)

(declare-fun e!398105 () Bool)

(assert (=> b!648252 (= e!398101 e!398105)))

(declare-fun b!648253 () Bool)

(assert (=> b!648253 (= e!398094 e!398106)))

(declare-fun b!648254 () Bool)

(assert (=> b!648254 (= e!398097 (not e!398103))))

(declare-fun res!283783 () Bool)

(assert (=> b!648254 (=> res!283783 e!398103)))

(declare-fun lt!278255 () tuple3!624)

(get-info :version)

(assert (=> b!648254 (= res!283783 (or (not ((_ is Some!1672) (_1!4134 lt!278244))) (not ((_ is Some!1672) (_1!4134 lt!278255))) (not ((_ is Some!1672) (_1!4134 lt!278245)))))))

(declare-fun createRightBracketSeparator!0 (CacheUp!320 CacheDown!322) tuple3!624)

(assert (=> b!648254 (= lt!278245 (createRightBracketSeparator!0 (_2!4134 lt!278255) (_3!363 lt!278255)))))

(declare-fun createLeftBracketSeparator!0 (CacheUp!320 CacheDown!322) tuple3!624)

(assert (=> b!648254 (= lt!278255 (createLeftBracketSeparator!0 (_2!4134 lt!278244) (_3!363 lt!278244)))))

(declare-fun createCommaNewLineSeparator!0 (CacheUp!320 CacheDown!322) tuple3!624)

(assert (=> b!648254 (= lt!278244 (createCommaNewLineSeparator!0 cacheUp!351 cacheDown!364))))

(declare-datatypes ((tuple2!7542 0))(
  ( (tuple2!7543 (_1!4135 Int) (_2!4135 PrintableTokens!164)) )
))
(declare-datatypes ((List!6999 0))(
  ( (Nil!6985) (Cons!6985 (h!12386 tuple2!7542) (t!85767 List!6999)) )
))
(declare-datatypes ((IArray!4761 0))(
  ( (IArray!4762 (innerList!2438 List!6999)) )
))
(declare-datatypes ((Conc!2380 0))(
  ( (Node!2380 (left!5547 Conc!2380) (right!5877 Conc!2380) (csize!4990 Int) (cheight!2591 Int)) (Leaf!3592 (xs!5021 IArray!4761) (csize!4991 Int)) (Empty!2380) )
))
(declare-datatypes ((BalanceConc!4772 0))(
  ( (BalanceConc!4773 (c!117847 Conc!2380)) )
))
(declare-fun lt!278253 () BalanceConc!4772)

(declare-fun lambda!19973 () Int)

(declare-fun lambda!19974 () Int)

(declare-datatypes ((List!7000 0))(
  ( (Nil!6986) (Cons!6986 (h!12387 PrintableTokens!164) (t!85768 List!7000)) )
))
(declare-datatypes ((IArray!4763 0))(
  ( (IArray!4764 (innerList!2439 List!7000)) )
))
(declare-datatypes ((Conc!2381 0))(
  ( (Node!2381 (left!5548 Conc!2381) (right!5878 Conc!2381) (csize!4992 Int) (cheight!2592 Int)) (Leaf!3593 (xs!5022 IArray!4763) (csize!4993 Int)) (Empty!2381) )
))
(declare-datatypes ((BalanceConc!4774 0))(
  ( (BalanceConc!4775 (c!117848 Conc!2381)) )
))
(declare-fun forall!1818 (BalanceConc!4774 Int) Bool)

(declare-fun map!1561 (BalanceConc!4772 Int) BalanceConc!4774)

(assert (=> b!648254 (forall!1818 (map!1561 lt!278253 lambda!19973) lambda!19974)))

(declare-datatypes ((Unit!12132 0))(
  ( (Unit!12133) )
))
(declare-fun lt!278252 () Unit!12132)

(declare-fun lt!278254 () List!6999)

(declare-fun mapPred!75 (List!6999 Int Int) Unit!12132)

(assert (=> b!648254 (= lt!278252 (mapPred!75 lt!278254 lambda!19973 lambda!19974))))

(declare-fun lt!278243 () Unit!12132)

(declare-fun lemmaRemoveIdsPreservesRules!0 (List!6999) Unit!12132)

(assert (=> b!648254 (= lt!278243 (lemmaRemoveIdsPreservesRules!0 lt!278254))))

(declare-fun list!2971 (BalanceConc!4772) List!6999)

(assert (=> b!648254 (= lt!278254 (list!2971 lt!278253))))

(declare-fun lt!278249 () BalanceConc!4774)

(declare-fun lambda!19971 () Int)

(declare-fun sortObjectsByID!0 (BalanceConc!4772) BalanceConc!4772)

(declare-fun map!1562 (BalanceConc!4774 Int) BalanceConc!4772)

(assert (=> b!648254 (= lt!278253 (sortObjectsByID!0 (map!1562 lt!278249 lambda!19971)))))

(declare-fun lt!278256 () List!7000)

(declare-fun lt!278251 () Unit!12132)

(declare-fun lambda!19972 () Int)

(declare-fun mapPred!76 (List!7000 Int Int) Unit!12132)

(assert (=> b!648254 (= lt!278251 (mapPred!76 lt!278256 lambda!19971 lambda!19972))))

(declare-fun lt!278242 () Unit!12132)

(declare-fun lemmaAddIdsPreservesRules!0 (List!7000) Unit!12132)

(assert (=> b!648254 (= lt!278242 (lemmaAddIdsPreservesRules!0 lt!278256))))

(declare-fun list!2972 (BalanceConc!4774) List!7000)

(assert (=> b!648254 (= lt!278256 (list!2972 lt!278249))))

(declare-fun lt!278247 () Int)

(declare-datatypes ((List!7001 0))(
  ( (Nil!6987) (Cons!6987 (h!12388 Int) (t!85769 List!7001)) )
))
(declare-datatypes ((IArray!4765 0))(
  ( (IArray!4766 (innerList!2440 List!7001)) )
))
(declare-datatypes ((Conc!2382 0))(
  ( (Node!2382 (left!5549 Conc!2382) (right!5879 Conc!2382) (csize!4994 Int) (cheight!2593 Int)) (Leaf!3594 (xs!5023 IArray!4765) (csize!4995 Int)) (Empty!2382) )
))
(declare-datatypes ((BalanceConc!4776 0))(
  ( (BalanceConc!4777 (c!117849 Conc!2382)) )
))
(declare-fun slicesMulti!0 (PrintableTokens!164 Int BalanceConc!4776 BalanceConc!4774) BalanceConc!4774)

(declare-fun indicesOfOpenBraces!0 (BalanceConc!4770 Int Int BalanceConc!4776) BalanceConc!4776)

(assert (=> b!648254 (= lt!278249 (slicesMulti!0 printableTokens!2 lt!278247 (indicesOfOpenBraces!0 (tokens!1231 printableTokens!2) lt!278247 0 (BalanceConc!4777 Empty!2382)) (BalanceConc!4775 Empty!2381)))))

(declare-fun b!648255 () Bool)

(declare-fun e!398092 () Bool)

(declare-fun tp!200268 () Bool)

(assert (=> b!648255 (= e!398092 (and tp!200268 mapRes!2732))))

(declare-fun condMapEmpty!2733 () Bool)

(declare-fun mapDefault!2733 () List!6998)

(assert (=> b!648255 (= condMapEmpty!2733 (= (arr!1187 (_values!968 (v!17172 (underlying!1561 (v!17173 (underlying!1562 (cache!1048 cacheDown!364))))))) ((as const (Array (_ BitVec 32) List!6998)) mapDefault!2733)))))

(declare-fun b!648256 () Bool)

(declare-fun e!398099 () Bool)

(assert (=> b!648256 (= e!398095 e!398099)))

(declare-fun b!648257 () Bool)

(declare-fun e!398108 () Bool)

(assert (=> b!648257 (= e!398108 e!398097)))

(declare-fun res!283781 () Bool)

(assert (=> b!648257 (=> (not res!283781) (not e!398097))))

(declare-fun isEmpty!4746 (List!6997) Bool)

(assert (=> b!648257 (= res!283781 (not (isEmpty!4746 lt!278241)))))

(declare-datatypes ((JsonLexer!214 0))(
  ( (JsonLexer!215) )
))
(declare-fun rules!109 (JsonLexer!214) List!6997)

(assert (=> b!648257 (= lt!278241 (rules!109 JsonLexer!215))))

(declare-fun e!398110 () Bool)

(declare-fun tp!200267 () Bool)

(declare-fun b!648258 () Bool)

(declare-fun inv!8805 (BalanceConc!4770) Bool)

(assert (=> b!648258 (= e!398110 (and tp!200267 (inv!8805 (tokens!1231 printableTokens!2)) e!398111))))

(declare-fun mapIsEmpty!2733 () Bool)

(assert (=> mapIsEmpty!2733 mapRes!2732))

(declare-fun res!283782 () Bool)

(assert (=> start!63636 (=> (not res!283782) (not e!398108))))

(assert (=> start!63636 (= res!283782 (> lt!278247 0))))

(declare-fun size!5531 (PrintableTokens!164) Int)

(assert (=> start!63636 (= lt!278247 (size!5531 printableTokens!2))))

(assert (=> start!63636 e!398108))

(declare-fun inv!8806 (PrintableTokens!164) Bool)

(assert (=> start!63636 (and (inv!8806 printableTokens!2) e!398110)))

(declare-fun e!398102 () Bool)

(declare-fun inv!8807 (CacheDown!322) Bool)

(assert (=> start!63636 (and (inv!8807 cacheDown!364) e!398102)))

(declare-fun inv!8808 (CacheUp!320) Bool)

(assert (=> start!63636 (and (inv!8808 cacheUp!351) e!398101)))

(declare-fun e!398112 () Bool)

(assert (=> b!648259 (= e!398105 (and e!398112 tp!200255))))

(declare-fun b!648260 () Bool)

(declare-fun res!283779 () Bool)

(assert (=> b!648260 (=> res!283779 e!398103)))

(assert (=> b!648260 (= res!283779 (not (usesJsonRules!0 (v!17174 (_1!4134 lt!278255)))))))

(declare-fun b!648261 () Bool)

(assert (=> b!648261 (= e!398103 true)))

(declare-fun lt!278250 () Option!1673)

(declare-fun recombineSlicesWithSep!0 (BalanceConc!4774 PrintableTokens!164 PrintableTokens!164) Option!1673)

(declare-fun emptyPrintableTokens!19 (List!6997) PrintableTokens!164)

(assert (=> b!648261 (= lt!278250 (recombineSlicesWithSep!0 (map!1561 lt!278253 lambda!19973) (v!17174 (_1!4134 lt!278244)) (emptyPrintableTokens!19 lt!278241)))))

(declare-fun b!648262 () Bool)

(declare-fun lt!278246 () MutLongMap!688)

(assert (=> b!648262 (= e!398112 (and e!398104 ((_ is LongMap!688) lt!278246)))))

(assert (=> b!648262 (= lt!278246 (v!17171 (underlying!1560 (cache!1047 cacheUp!351))))))

(declare-fun b!648263 () Bool)

(assert (=> b!648263 (= e!398102 e!398096)))

(declare-fun tp!200261 () Bool)

(declare-fun tp!200254 () Bool)

(declare-fun array_inv!867 (array!2620) Bool)

(assert (=> b!648264 (= e!398099 (and tp!200265 tp!200261 tp!200254 (array_inv!865 (_keys!983 (v!17172 (underlying!1561 (v!17173 (underlying!1562 (cache!1048 cacheDown!364))))))) (array_inv!867 (_values!968 (v!17172 (underlying!1561 (v!17173 (underlying!1562 (cache!1048 cacheDown!364))))))) e!398092))))

(declare-fun b!648265 () Bool)

(declare-fun lt!278248 () MutLongMap!689)

(assert (=> b!648265 (= e!398107 (and e!398093 ((_ is LongMap!689) lt!278248)))))

(assert (=> b!648265 (= lt!278248 (v!17173 (underlying!1562 (cache!1048 cacheDown!364))))))

(assert (= (and start!63636 res!283782) b!648257))

(assert (= (and b!648257 res!283781) b!648249))

(assert (= (and b!648249 res!283780) b!648246))

(assert (= (and b!648246 res!283778) b!648254))

(assert (= (and b!648254 (not res!283783)) b!648251))

(assert (= (and b!648251 (not res!283784)) b!648260))

(assert (= (and b!648260 (not res!283779)) b!648250))

(assert (= (and b!648250 (not res!283785)) b!648261))

(assert (= b!648258 b!648245))

(assert (= start!63636 b!648258))

(assert (= (and b!648255 condMapEmpty!2733) mapIsEmpty!2733))

(assert (= (and b!648255 (not condMapEmpty!2733)) mapNonEmpty!2733))

(assert (= b!648264 b!648255))

(assert (= b!648256 b!648264))

(assert (= b!648247 b!648256))

(assert (= (and b!648265 ((_ is LongMap!689) (v!17173 (underlying!1562 (cache!1048 cacheDown!364))))) b!648247))

(assert (= b!648242 b!648265))

(assert (= (and b!648263 ((_ is HashMap!661) (cache!1048 cacheDown!364))) b!648242))

(assert (= start!63636 b!648263))

(assert (= (and b!648248 condMapEmpty!2732) mapIsEmpty!2732))

(assert (= (and b!648248 (not condMapEmpty!2732)) mapNonEmpty!2732))

(assert (= b!648244 b!648248))

(assert (= b!648253 b!648244))

(assert (= b!648243 b!648253))

(assert (= (and b!648262 ((_ is LongMap!688) (v!17171 (underlying!1560 (cache!1047 cacheUp!351))))) b!648243))

(assert (= b!648259 b!648262))

(assert (= (and b!648252 ((_ is HashMap!660) (cache!1047 cacheUp!351))) b!648259))

(assert (= start!63636 b!648252))

(declare-fun m!919191 () Bool)

(assert (=> b!648258 m!919191))

(declare-fun m!919193 () Bool)

(assert (=> mapNonEmpty!2732 m!919193))

(declare-fun m!919195 () Bool)

(assert (=> b!648250 m!919195))

(declare-fun m!919197 () Bool)

(assert (=> start!63636 m!919197))

(declare-fun m!919199 () Bool)

(assert (=> start!63636 m!919199))

(declare-fun m!919201 () Bool)

(assert (=> start!63636 m!919201))

(declare-fun m!919203 () Bool)

(assert (=> start!63636 m!919203))

(declare-fun m!919205 () Bool)

(assert (=> b!648260 m!919205))

(declare-fun m!919207 () Bool)

(assert (=> b!648249 m!919207))

(declare-fun m!919209 () Bool)

(assert (=> b!648254 m!919209))

(declare-fun m!919211 () Bool)

(assert (=> b!648254 m!919211))

(assert (=> b!648254 m!919209))

(declare-fun m!919213 () Bool)

(assert (=> b!648254 m!919213))

(declare-fun m!919215 () Bool)

(assert (=> b!648254 m!919215))

(declare-fun m!919217 () Bool)

(assert (=> b!648254 m!919217))

(declare-fun m!919219 () Bool)

(assert (=> b!648254 m!919219))

(declare-fun m!919221 () Bool)

(assert (=> b!648254 m!919221))

(declare-fun m!919223 () Bool)

(assert (=> b!648254 m!919223))

(declare-fun m!919225 () Bool)

(assert (=> b!648254 m!919225))

(declare-fun m!919227 () Bool)

(assert (=> b!648254 m!919227))

(assert (=> b!648254 m!919225))

(declare-fun m!919229 () Bool)

(assert (=> b!648254 m!919229))

(declare-fun m!919231 () Bool)

(assert (=> b!648254 m!919231))

(assert (=> b!648254 m!919217))

(declare-fun m!919233 () Bool)

(assert (=> b!648254 m!919233))

(declare-fun m!919235 () Bool)

(assert (=> b!648254 m!919235))

(declare-fun m!919237 () Bool)

(assert (=> b!648254 m!919237))

(declare-fun m!919239 () Bool)

(assert (=> b!648244 m!919239))

(declare-fun m!919241 () Bool)

(assert (=> b!648244 m!919241))

(declare-fun m!919243 () Bool)

(assert (=> b!648246 m!919243))

(declare-fun m!919245 () Bool)

(assert (=> mapNonEmpty!2733 m!919245))

(declare-fun m!919247 () Bool)

(assert (=> b!648245 m!919247))

(assert (=> b!648261 m!919209))

(declare-fun m!919249 () Bool)

(assert (=> b!648261 m!919249))

(assert (=> b!648261 m!919209))

(assert (=> b!648261 m!919249))

(declare-fun m!919251 () Bool)

(assert (=> b!648261 m!919251))

(declare-fun m!919253 () Bool)

(assert (=> b!648257 m!919253))

(declare-fun m!919255 () Bool)

(assert (=> b!648257 m!919255))

(declare-fun m!919257 () Bool)

(assert (=> b!648264 m!919257))

(declare-fun m!919259 () Bool)

(assert (=> b!648264 m!919259))

(declare-fun m!919261 () Bool)

(assert (=> b!648251 m!919261))

(check-sat (not b!648254) b_and!62733 (not b!648245) (not b!648258) (not b!648251) (not b!648264) (not b!648257) (not start!63636) (not b_next!18991) (not mapNonEmpty!2732) (not b_next!18989) b_and!62731 b_and!62729 (not b_next!18993) (not b!648246) (not mapNonEmpty!2733) (not b!648255) (not b!648248) (not b_next!18995) (not b!648260) (not b!648244) (not b!648261) b_and!62727 (not b!648249) (not b!648250))
(check-sat b_and!62733 (not b_next!18995) (not b_next!18991) b_and!62727 (not b_next!18989) b_and!62731 b_and!62729 (not b_next!18993))

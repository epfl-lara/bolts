; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!265890 () Bool)

(assert start!265890)

(declare-fun b!2742911 () Bool)

(declare-fun b_free!77029 () Bool)

(declare-fun b_next!77733 () Bool)

(assert (=> b!2742911 (= b_free!77029 (not b_next!77733))))

(declare-fun tp!862387 () Bool)

(declare-fun b_and!201749 () Bool)

(assert (=> b!2742911 (= tp!862387 b_and!201749)))

(declare-fun b!2742916 () Bool)

(declare-fun b_free!77031 () Bool)

(declare-fun b_next!77735 () Bool)

(assert (=> b!2742916 (= b_free!77031 (not b_next!77735))))

(declare-fun tp!862377 () Bool)

(declare-fun b_and!201751 () Bool)

(assert (=> b!2742916 (= tp!862377 b_and!201751)))

(declare-fun b!2742923 () Bool)

(declare-fun b_free!77033 () Bool)

(declare-fun b_next!77737 () Bool)

(assert (=> b!2742923 (= b_free!77033 (not b_next!77737))))

(declare-fun tp!862389 () Bool)

(declare-fun b_and!201753 () Bool)

(assert (=> b!2742923 (= tp!862389 b_and!201753)))

(declare-fun b!2742922 () Bool)

(declare-fun b_free!77035 () Bool)

(declare-fun b_next!77739 () Bool)

(assert (=> b!2742922 (= b_free!77035 (not b_next!77739))))

(declare-fun tp!862384 () Bool)

(declare-fun b_and!201755 () Bool)

(assert (=> b!2742922 (= tp!862384 b_and!201755)))

(declare-fun b_free!77037 () Bool)

(declare-fun b_next!77741 () Bool)

(assert (=> b!2742922 (= b_free!77037 (not b_next!77741))))

(declare-fun tp!862391 () Bool)

(declare-fun b_and!201757 () Bool)

(assert (=> b!2742922 (= tp!862391 b_and!201757)))

(declare-fun b!2742917 () Bool)

(declare-fun b_free!77039 () Bool)

(declare-fun b_next!77743 () Bool)

(assert (=> b!2742917 (= b_free!77039 (not b_next!77743))))

(declare-fun tp!862385 () Bool)

(declare-fun b_and!201759 () Bool)

(assert (=> b!2742917 (= tp!862385 b_and!201759)))

(declare-fun b!2742906 () Bool)

(declare-fun e!1727287 () Bool)

(assert (=> b!2742906 (= e!1727287 true)))

(declare-datatypes ((C!16112 0))(
  ( (C!16113 (val!9990 Int)) )
))
(declare-datatypes ((Regex!7977 0))(
  ( (ElementMatch!7977 (c!444758 C!16112)) (Concat!13023 (regOne!16466 Regex!7977) (regTwo!16466 Regex!7977)) (EmptyExpr!7977) (Star!7977 (reg!8306 Regex!7977)) (EmptyLang!7977) (Union!7977 (regOne!16467 Regex!7977) (regTwo!16467 Regex!7977)) )
))
(declare-datatypes ((List!31595 0))(
  ( (Nil!31495) (Cons!31495 (h!36915 Regex!7977) (t!227683 List!31595)) )
))
(declare-datatypes ((Context!4390 0))(
  ( (Context!4391 (exprs!2695 List!31595)) )
))
(declare-datatypes ((tuple3!4344 0))(
  ( (tuple3!4345 (_1!18278 Regex!7977) (_2!18278 Context!4390) (_3!2642 C!16112)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!31272 0))(
  ( (tuple2!31273 (_1!18279 tuple3!4344) (_2!18279 (InoxSet Context!4390))) )
))
(declare-datatypes ((List!31596 0))(
  ( (Nil!31496) (Cons!31496 (h!36916 tuple2!31272) (t!227684 List!31596)) )
))
(declare-datatypes ((array!12714 0))(
  ( (array!12715 (arr!5679 (Array (_ BitVec 32) List!31596)) (size!24325 (_ BitVec 32))) )
))
(declare-datatypes ((array!12716 0))(
  ( (array!12717 (arr!5680 (Array (_ BitVec 32) (_ BitVec 64))) (size!24326 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7138 0))(
  ( (LongMapFixedSize!7139 (defaultEntry!3954 Int) (mask!9294 (_ BitVec 32)) (extraKeys!3818 (_ BitVec 32)) (zeroValue!3828 List!31596) (minValue!3828 List!31596) (_size!7181 (_ BitVec 32)) (_keys!3869 array!12716) (_values!3850 array!12714) (_vacant!3630 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!14085 0))(
  ( (Cell!14086 (v!33156 LongMapFixedSize!7138)) )
))
(declare-datatypes ((MutLongMap!3569 0))(
  ( (LongMap!3569 (underlying!7341 Cell!14085)) (MutLongMapExt!3568 (__x!20277 Int)) )
))
(declare-datatypes ((Cell!14087 0))(
  ( (Cell!14088 (v!33157 MutLongMap!3569)) )
))
(declare-datatypes ((Hashable!3485 0))(
  ( (HashableExt!3484 (__x!20278 Int)) )
))
(declare-datatypes ((MutableMap!3475 0))(
  ( (MutableMapExt!3474 (__x!20279 Int)) (HashMap!3475 (underlying!7342 Cell!14087) (hashF!5517 Hashable!3485) (_size!7182 (_ BitVec 32)) (defaultValue!3646 Int)) )
))
(declare-datatypes ((CacheDown!2298 0))(
  ( (CacheDown!2299 (cache!3618 MutableMap!3475)) )
))
(declare-fun cacheDown!646 () CacheDown!2298)

(declare-datatypes ((tuple2!31274 0))(
  ( (tuple2!31275 (_1!18280 Context!4390) (_2!18280 C!16112)) )
))
(declare-datatypes ((tuple2!31276 0))(
  ( (tuple2!31277 (_1!18281 tuple2!31274) (_2!18281 (InoxSet Context!4390))) )
))
(declare-datatypes ((List!31597 0))(
  ( (Nil!31497) (Cons!31497 (h!36917 tuple2!31276) (t!227685 List!31597)) )
))
(declare-datatypes ((array!12718 0))(
  ( (array!12719 (arr!5681 (Array (_ BitVec 32) List!31597)) (size!24327 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7140 0))(
  ( (LongMapFixedSize!7141 (defaultEntry!3955 Int) (mask!9295 (_ BitVec 32)) (extraKeys!3819 (_ BitVec 32)) (zeroValue!3829 List!31597) (minValue!3829 List!31597) (_size!7183 (_ BitVec 32)) (_keys!3870 array!12716) (_values!3851 array!12718) (_vacant!3631 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!14089 0))(
  ( (Cell!14090 (v!33158 LongMapFixedSize!7140)) )
))
(declare-datatypes ((MutLongMap!3570 0))(
  ( (LongMap!3570 (underlying!7343 Cell!14089)) (MutLongMapExt!3569 (__x!20280 Int)) )
))
(declare-datatypes ((Cell!14091 0))(
  ( (Cell!14092 (v!33159 MutLongMap!3570)) )
))
(declare-datatypes ((Hashable!3486 0))(
  ( (HashableExt!3485 (__x!20281 Int)) )
))
(declare-datatypes ((MutableMap!3476 0))(
  ( (MutableMapExt!3475 (__x!20282 Int)) (HashMap!3476 (underlying!7344 Cell!14091) (hashF!5518 Hashable!3486) (_size!7184 (_ BitVec 32)) (defaultValue!3647 Int)) )
))
(declare-datatypes ((CacheUp!2184 0))(
  ( (CacheUp!2185 (cache!3619 MutableMap!3476)) )
))
(declare-fun cacheUp!633 () CacheUp!2184)

(declare-datatypes ((LexerInterface!4419 0))(
  ( (LexerInterfaceExt!4416 (__x!20283 Int)) (Lexer!4417) )
))
(declare-fun thiss!15207 () LexerInterface!4419)

(declare-datatypes ((List!31598 0))(
  ( (Nil!31498) (Cons!31498 (h!36918 (_ BitVec 16)) (t!227686 List!31598)) )
))
(declare-datatypes ((TokenValue!5046 0))(
  ( (FloatLiteralValue!10092 (text!35767 List!31598)) (TokenValueExt!5045 (__x!20284 Int)) (Broken!25230 (value!155065 List!31598)) (Object!5145) (End!5046) (Def!5046) (Underscore!5046) (Match!5046) (Else!5046) (Error!5046) (Case!5046) (If!5046) (Extends!5046) (Abstract!5046) (Class!5046) (Val!5046) (DelimiterValue!10092 (del!5106 List!31598)) (KeywordValue!5052 (value!155066 List!31598)) (CommentValue!10092 (value!155067 List!31598)) (WhitespaceValue!10092 (value!155068 List!31598)) (IndentationValue!5046 (value!155069 List!31598)) (String!35131) (Int32!5046) (Broken!25231 (value!155070 List!31598)) (Boolean!5047) (Unit!45480) (OperatorValue!5049 (op!5106 List!31598)) (IdentifierValue!10092 (value!155071 List!31598)) (IdentifierValue!10093 (value!155072 List!31598)) (WhitespaceValue!10093 (value!155073 List!31598)) (True!10092) (False!10092) (Broken!25232 (value!155074 List!31598)) (Broken!25233 (value!155075 List!31598)) (True!10093) (RightBrace!5046) (RightBracket!5046) (Colon!5046) (Null!5046) (Comma!5046) (LeftBracket!5046) (False!10093) (LeftBrace!5046) (ImaginaryLiteralValue!5046 (text!35768 List!31598)) (StringLiteralValue!15138 (value!155076 List!31598)) (EOFValue!5046 (value!155077 List!31598)) (IdentValue!5046 (value!155078 List!31598)) (DelimiterValue!10093 (value!155079 List!31598)) (DedentValue!5046 (value!155080 List!31598)) (NewLineValue!5046 (value!155081 List!31598)) (IntegerValue!15138 (value!155082 (_ BitVec 32)) (text!35769 List!31598)) (IntegerValue!15139 (value!155083 Int) (text!35770 List!31598)) (Times!5046) (Or!5046) (Equal!5046) (Minus!5046) (Broken!25234 (value!155084 List!31598)) (And!5046) (Div!5046) (LessEqual!5046) (Mod!5046) (Concat!13024) (Not!5046) (Plus!5046) (SpaceValue!5046 (value!155085 List!31598)) (IntegerValue!15140 (value!155086 Int) (text!35771 List!31598)) (StringLiteralValue!15139 (text!35772 List!31598)) (FloatLiteralValue!10093 (text!35773 List!31598)) (BytesLiteralValue!5046 (value!155087 List!31598)) (CommentValue!10093 (value!155088 List!31598)) (StringLiteralValue!15140 (value!155089 List!31598)) (ErrorTokenValue!5046 (msg!5107 List!31598)) )
))
(declare-datatypes ((List!31599 0))(
  ( (Nil!31499) (Cons!31499 (h!36919 C!16112) (t!227687 List!31599)) )
))
(declare-datatypes ((IArray!19739 0))(
  ( (IArray!19740 (innerList!9927 List!31599)) )
))
(declare-datatypes ((Conc!9867 0))(
  ( (Node!9867 (left!24191 Conc!9867) (right!24521 Conc!9867) (csize!19964 Int) (cheight!10078 Int)) (Leaf!15024 (xs!12974 IArray!19739) (csize!19965 Int)) (Empty!9867) )
))
(declare-datatypes ((BalanceConc!19348 0))(
  ( (BalanceConc!19349 (c!444759 Conc!9867)) )
))
(declare-datatypes ((String!35132 0))(
  ( (String!35133 (value!155090 String)) )
))
(declare-datatypes ((TokenValueInjection!9532 0))(
  ( (TokenValueInjection!9533 (toValue!6822 Int) (toChars!6681 Int)) )
))
(declare-datatypes ((Rule!9448 0))(
  ( (Rule!9449 (regex!4824 Regex!7977) (tag!5328 String!35132) (isSeparator!4824 Bool) (transformation!4824 TokenValueInjection!9532)) )
))
(declare-datatypes ((Token!9096 0))(
  ( (Token!9097 (value!155091 TokenValue!5046) (rule!7267 Rule!9448) (size!24328 Int) (originalCharacters!5579 List!31599)) )
))
(declare-datatypes ((tuple2!31278 0))(
  ( (tuple2!31279 (_1!18282 Token!9096) (_2!18282 BalanceConc!19348)) )
))
(declare-datatypes ((Option!6227 0))(
  ( (None!6226) (Some!6226 (v!33160 tuple2!31278)) )
))
(declare-datatypes ((tuple3!4346 0))(
  ( (tuple3!4347 (_1!18283 Option!6227) (_2!18283 CacheUp!2184) (_3!2643 CacheDown!2298)) )
))
(declare-fun lt!971123 () tuple3!4346)

(declare-fun input!1326 () BalanceConc!19348)

(declare-datatypes ((List!31600 0))(
  ( (Nil!31500) (Cons!31500 (h!36920 Rule!9448) (t!227688 List!31600)) )
))
(declare-fun rulesArg!249 () List!31600)

(declare-fun maxPrefixOneRuleZipperSequenceMem!13 (LexerInterface!4419 Rule!9448 BalanceConc!19348 CacheUp!2184 CacheDown!2298) tuple3!4346)

(assert (=> b!2742906 (= lt!971123 (maxPrefixOneRuleZipperSequenceMem!13 thiss!15207 (h!36920 rulesArg!249) input!1326 cacheUp!633 cacheDown!646))))

(declare-fun b!2742907 () Bool)

(declare-fun e!1727280 () Bool)

(declare-fun e!1727294 () Bool)

(assert (=> b!2742907 (= e!1727280 e!1727294)))

(declare-fun b!2742908 () Bool)

(declare-fun res!1151531 () Bool)

(declare-fun e!1727289 () Bool)

(assert (=> b!2742908 (=> (not res!1151531) (not e!1727289))))

(declare-fun isEmpty!18013 (List!31600) Bool)

(assert (=> b!2742908 (= res!1151531 (not (isEmpty!18013 rulesArg!249)))))

(declare-fun b!2742909 () Bool)

(declare-fun e!1727295 () Bool)

(declare-fun e!1727290 () Bool)

(declare-fun lt!971120 () MutLongMap!3569)

(get-info :version)

(assert (=> b!2742909 (= e!1727295 (and e!1727290 ((_ is LongMap!3569) lt!971120)))))

(assert (=> b!2742909 (= lt!971120 (v!33157 (underlying!7342 (cache!3618 cacheDown!646))))))

(declare-fun b!2742910 () Bool)

(declare-fun e!1727282 () Bool)

(declare-fun e!1727293 () Bool)

(assert (=> b!2742910 (= e!1727282 e!1727293)))

(declare-fun b!2742912 () Bool)

(declare-fun e!1727276 () Bool)

(declare-fun e!1727273 () Bool)

(assert (=> b!2742912 (= e!1727276 e!1727273)))

(declare-fun b!2742913 () Bool)

(declare-fun e!1727274 () Bool)

(declare-fun e!1727292 () Bool)

(assert (=> b!2742913 (= e!1727274 e!1727292)))

(declare-fun b!2742914 () Bool)

(declare-fun res!1151528 () Bool)

(assert (=> b!2742914 (=> (not res!1151528) (not e!1727289))))

(declare-fun rulesValidInductive!1690 (LexerInterface!4419 List!31600) Bool)

(assert (=> b!2742914 (= res!1151528 (rulesValidInductive!1690 thiss!15207 rulesArg!249))))

(declare-fun b!2742915 () Bool)

(declare-fun e!1727279 () Bool)

(declare-fun tp!862380 () Bool)

(declare-fun inv!42840 (Conc!9867) Bool)

(assert (=> b!2742915 (= e!1727279 (and (inv!42840 (c!444759 input!1326)) tp!862380))))

(declare-fun tp!862379 () Bool)

(declare-fun tp!862388 () Bool)

(declare-fun e!1727286 () Bool)

(declare-fun array_inv!4057 (array!12716) Bool)

(declare-fun array_inv!4058 (array!12714) Bool)

(assert (=> b!2742916 (= e!1727273 (and tp!862377 tp!862379 tp!862388 (array_inv!4057 (_keys!3869 (v!33156 (underlying!7341 (v!33157 (underlying!7342 (cache!3618 cacheDown!646))))))) (array_inv!4058 (_values!3850 (v!33156 (underlying!7341 (v!33157 (underlying!7342 (cache!3618 cacheDown!646))))))) e!1727286))))

(declare-fun mapIsEmpty!16295 () Bool)

(declare-fun mapRes!16295 () Bool)

(assert (=> mapIsEmpty!16295 mapRes!16295))

(declare-fun mapNonEmpty!16295 () Bool)

(declare-fun tp!862378 () Bool)

(declare-fun tp!862381 () Bool)

(assert (=> mapNonEmpty!16295 (= mapRes!16295 (and tp!862378 tp!862381))))

(declare-fun mapRest!16295 () (Array (_ BitVec 32) List!31596))

(declare-fun mapValue!16296 () List!31596)

(declare-fun mapKey!16296 () (_ BitVec 32))

(assert (=> mapNonEmpty!16295 (= (arr!5679 (_values!3850 (v!33156 (underlying!7341 (v!33157 (underlying!7342 (cache!3618 cacheDown!646))))))) (store mapRest!16295 mapKey!16296 mapValue!16296))))

(declare-fun e!1727285 () Bool)

(declare-fun tp!862375 () Bool)

(declare-fun e!1727281 () Bool)

(declare-fun tp!862383 () Bool)

(declare-fun array_inv!4059 (array!12718) Bool)

(assert (=> b!2742917 (= e!1727285 (and tp!862385 tp!862383 tp!862375 (array_inv!4057 (_keys!3870 (v!33158 (underlying!7343 (v!33159 (underlying!7344 (cache!3619 cacheUp!633))))))) (array_inv!4059 (_values!3851 (v!33158 (underlying!7343 (v!33159 (underlying!7344 (cache!3619 cacheUp!633))))))) e!1727281))))

(declare-fun b!2742918 () Bool)

(declare-fun tp!862374 () Bool)

(assert (=> b!2742918 (= e!1727286 (and tp!862374 mapRes!16295))))

(declare-fun condMapEmpty!16295 () Bool)

(declare-fun mapDefault!16296 () List!31596)

(assert (=> b!2742918 (= condMapEmpty!16295 (= (arr!5679 (_values!3850 (v!33156 (underlying!7341 (v!33157 (underlying!7342 (cache!3618 cacheDown!646))))))) ((as const (Array (_ BitVec 32) List!31596)) mapDefault!16296)))))

(declare-fun b!2742919 () Bool)

(declare-fun res!1151532 () Bool)

(assert (=> b!2742919 (=> (not res!1151532) (not e!1727289))))

(declare-fun valid!2770 (CacheUp!2184) Bool)

(assert (=> b!2742919 (= res!1151532 (valid!2770 cacheUp!633))))

(declare-fun b!2742920 () Bool)

(assert (=> b!2742920 (= e!1727289 (not e!1727287))))

(declare-fun res!1151529 () Bool)

(assert (=> b!2742920 (=> res!1151529 e!1727287)))

(assert (=> b!2742920 (= res!1151529 (or (not ((_ is Cons!31500) rulesArg!249)) (not ((_ is Nil!31500) (t!227688 rulesArg!249)))))))

(declare-fun lt!971121 () List!31599)

(declare-fun isPrefix!2504 (List!31599 List!31599) Bool)

(assert (=> b!2742920 (isPrefix!2504 lt!971121 lt!971121)))

(declare-datatypes ((Unit!45481 0))(
  ( (Unit!45482) )
))
(declare-fun lt!971122 () Unit!45481)

(declare-fun lemmaIsPrefixRefl!1630 (List!31599 List!31599) Unit!45481)

(assert (=> b!2742920 (= lt!971122 (lemmaIsPrefixRefl!1630 lt!971121 lt!971121))))

(declare-fun list!11976 (BalanceConc!19348) List!31599)

(assert (=> b!2742920 (= lt!971121 (list!11976 input!1326))))

(declare-fun b!2742921 () Bool)

(assert (=> b!2742921 (= e!1727292 e!1727285)))

(declare-fun e!1727275 () Bool)

(assert (=> b!2742922 (= e!1727275 (and tp!862384 tp!862391))))

(declare-fun res!1151530 () Bool)

(assert (=> start!265890 (=> (not res!1151530) (not e!1727289))))

(assert (=> start!265890 (= res!1151530 ((_ is Lexer!4417) thiss!15207))))

(assert (=> start!265890 e!1727289))

(declare-fun inv!42841 (CacheDown!2298) Bool)

(assert (=> start!265890 (and (inv!42841 cacheDown!646) e!1727282)))

(declare-fun inv!42842 (BalanceConc!19348) Bool)

(assert (=> start!265890 (and (inv!42842 input!1326) e!1727279)))

(declare-fun e!1727288 () Bool)

(assert (=> start!265890 e!1727288))

(declare-fun inv!42843 (CacheUp!2184) Bool)

(assert (=> start!265890 (and (inv!42843 cacheUp!633) e!1727280)))

(assert (=> start!265890 true))

(assert (=> b!2742911 (= e!1727293 (and e!1727295 tp!862387))))

(declare-fun e!1727278 () Bool)

(assert (=> b!2742923 (= e!1727294 (and e!1727278 tp!862389))))

(declare-fun mapIsEmpty!16296 () Bool)

(declare-fun mapRes!16296 () Bool)

(assert (=> mapIsEmpty!16296 mapRes!16296))

(declare-fun tp!862376 () Bool)

(declare-fun b!2742924 () Bool)

(declare-fun e!1727291 () Bool)

(declare-fun inv!42836 (String!35132) Bool)

(declare-fun inv!42844 (TokenValueInjection!9532) Bool)

(assert (=> b!2742924 (= e!1727291 (and tp!862376 (inv!42836 (tag!5328 (h!36920 rulesArg!249))) (inv!42844 (transformation!4824 (h!36920 rulesArg!249))) e!1727275))))

(declare-fun b!2742925 () Bool)

(declare-fun res!1151533 () Bool)

(assert (=> b!2742925 (=> (not res!1151533) (not e!1727289))))

(declare-fun valid!2771 (CacheDown!2298) Bool)

(assert (=> b!2742925 (= res!1151533 (valid!2771 cacheDown!646))))

(declare-fun b!2742926 () Bool)

(declare-fun tp!862382 () Bool)

(assert (=> b!2742926 (= e!1727288 (and e!1727291 tp!862382))))

(declare-fun mapNonEmpty!16296 () Bool)

(declare-fun tp!862386 () Bool)

(declare-fun tp!862373 () Bool)

(assert (=> mapNonEmpty!16296 (= mapRes!16296 (and tp!862386 tp!862373))))

(declare-fun mapValue!16295 () List!31597)

(declare-fun mapRest!16296 () (Array (_ BitVec 32) List!31597))

(declare-fun mapKey!16295 () (_ BitVec 32))

(assert (=> mapNonEmpty!16296 (= (arr!5681 (_values!3851 (v!33158 (underlying!7343 (v!33159 (underlying!7344 (cache!3619 cacheUp!633))))))) (store mapRest!16296 mapKey!16295 mapValue!16295))))

(declare-fun b!2742927 () Bool)

(declare-fun lt!971119 () MutLongMap!3570)

(assert (=> b!2742927 (= e!1727278 (and e!1727274 ((_ is LongMap!3570) lt!971119)))))

(assert (=> b!2742927 (= lt!971119 (v!33159 (underlying!7344 (cache!3619 cacheUp!633))))))

(declare-fun b!2742928 () Bool)

(declare-fun tp!862390 () Bool)

(assert (=> b!2742928 (= e!1727281 (and tp!862390 mapRes!16296))))

(declare-fun condMapEmpty!16296 () Bool)

(declare-fun mapDefault!16295 () List!31597)

(assert (=> b!2742928 (= condMapEmpty!16296 (= (arr!5681 (_values!3851 (v!33158 (underlying!7343 (v!33159 (underlying!7344 (cache!3619 cacheUp!633))))))) ((as const (Array (_ BitVec 32) List!31597)) mapDefault!16295)))))

(declare-fun b!2742929 () Bool)

(assert (=> b!2742929 (= e!1727290 e!1727276)))

(assert (= (and start!265890 res!1151530) b!2742914))

(assert (= (and b!2742914 res!1151528) b!2742908))

(assert (= (and b!2742908 res!1151531) b!2742919))

(assert (= (and b!2742919 res!1151532) b!2742925))

(assert (= (and b!2742925 res!1151533) b!2742920))

(assert (= (and b!2742920 (not res!1151529)) b!2742906))

(assert (= (and b!2742918 condMapEmpty!16295) mapIsEmpty!16295))

(assert (= (and b!2742918 (not condMapEmpty!16295)) mapNonEmpty!16295))

(assert (= b!2742916 b!2742918))

(assert (= b!2742912 b!2742916))

(assert (= b!2742929 b!2742912))

(assert (= (and b!2742909 ((_ is LongMap!3569) (v!33157 (underlying!7342 (cache!3618 cacheDown!646))))) b!2742929))

(assert (= b!2742911 b!2742909))

(assert (= (and b!2742910 ((_ is HashMap!3475) (cache!3618 cacheDown!646))) b!2742911))

(assert (= start!265890 b!2742910))

(assert (= start!265890 b!2742915))

(assert (= b!2742924 b!2742922))

(assert (= b!2742926 b!2742924))

(assert (= (and start!265890 ((_ is Cons!31500) rulesArg!249)) b!2742926))

(assert (= (and b!2742928 condMapEmpty!16296) mapIsEmpty!16296))

(assert (= (and b!2742928 (not condMapEmpty!16296)) mapNonEmpty!16296))

(assert (= b!2742917 b!2742928))

(assert (= b!2742921 b!2742917))

(assert (= b!2742913 b!2742921))

(assert (= (and b!2742927 ((_ is LongMap!3570) (v!33159 (underlying!7344 (cache!3619 cacheUp!633))))) b!2742913))

(assert (= b!2742923 b!2742927))

(assert (= (and b!2742907 ((_ is HashMap!3476) (cache!3619 cacheUp!633))) b!2742923))

(assert (= start!265890 b!2742907))

(declare-fun m!3160647 () Bool)

(assert (=> mapNonEmpty!16295 m!3160647))

(declare-fun m!3160649 () Bool)

(assert (=> b!2742915 m!3160649))

(declare-fun m!3160651 () Bool)

(assert (=> b!2742919 m!3160651))

(declare-fun m!3160653 () Bool)

(assert (=> b!2742906 m!3160653))

(declare-fun m!3160655 () Bool)

(assert (=> b!2742914 m!3160655))

(declare-fun m!3160657 () Bool)

(assert (=> mapNonEmpty!16296 m!3160657))

(declare-fun m!3160659 () Bool)

(assert (=> b!2742916 m!3160659))

(declare-fun m!3160661 () Bool)

(assert (=> b!2742916 m!3160661))

(declare-fun m!3160663 () Bool)

(assert (=> b!2742917 m!3160663))

(declare-fun m!3160665 () Bool)

(assert (=> b!2742917 m!3160665))

(declare-fun m!3160667 () Bool)

(assert (=> b!2742920 m!3160667))

(declare-fun m!3160669 () Bool)

(assert (=> b!2742920 m!3160669))

(declare-fun m!3160671 () Bool)

(assert (=> b!2742920 m!3160671))

(declare-fun m!3160673 () Bool)

(assert (=> start!265890 m!3160673))

(declare-fun m!3160675 () Bool)

(assert (=> start!265890 m!3160675))

(declare-fun m!3160677 () Bool)

(assert (=> start!265890 m!3160677))

(declare-fun m!3160679 () Bool)

(assert (=> b!2742908 m!3160679))

(declare-fun m!3160681 () Bool)

(assert (=> b!2742925 m!3160681))

(declare-fun m!3160683 () Bool)

(assert (=> b!2742924 m!3160683))

(declare-fun m!3160685 () Bool)

(assert (=> b!2742924 m!3160685))

(check-sat (not b_next!77741) (not b_next!77739) b_and!201749 b_and!201751 (not start!265890) (not b!2742924) (not b_next!77743) (not b!2742906) b_and!201757 (not b!2742914) (not b_next!77735) (not b!2742919) (not b!2742920) (not b!2742928) (not b!2742918) (not b!2742925) (not b!2742917) b_and!201759 b_and!201755 (not b_next!77737) (not b!2742908) (not b!2742926) b_and!201753 (not b!2742916) (not mapNonEmpty!16295) (not b_next!77733) (not mapNonEmpty!16296) (not b!2742915))
(check-sat (not b_next!77741) (not b_next!77739) (not b_next!77743) b_and!201757 (not b_next!77735) b_and!201749 b_and!201751 (not b_next!77737) b_and!201753 (not b_next!77733) b_and!201759 b_and!201755)

; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!197188 () Bool)

(assert start!197188)

(declare-fun b!2006989 () Bool)

(declare-fun b_free!55945 () Bool)

(declare-fun b_next!56649 () Bool)

(assert (=> b!2006989 (= b_free!55945 (not b_next!56649))))

(declare-fun tp!598932 () Bool)

(declare-fun b_and!158337 () Bool)

(assert (=> b!2006989 (= tp!598932 b_and!158337)))

(declare-fun b_free!55947 () Bool)

(declare-fun b_next!56651 () Bool)

(assert (=> b!2006989 (= b_free!55947 (not b_next!56651))))

(declare-fun tp!598937 () Bool)

(declare-fun b_and!158339 () Bool)

(assert (=> b!2006989 (= tp!598937 b_and!158339)))

(declare-fun b!2006984 () Bool)

(declare-fun b_free!55949 () Bool)

(declare-fun b_next!56653 () Bool)

(assert (=> b!2006984 (= b_free!55949 (not b_next!56653))))

(declare-fun tp!598931 () Bool)

(declare-fun b_and!158341 () Bool)

(assert (=> b!2006984 (= tp!598931 b_and!158341)))

(declare-fun b_free!55951 () Bool)

(declare-fun b_next!56655 () Bool)

(assert (=> b!2006984 (= b_free!55951 (not b_next!56655))))

(declare-fun tp!598936 () Bool)

(declare-fun b_and!158343 () Bool)

(assert (=> b!2006984 (= tp!598936 b_and!158343)))

(declare-fun b!2006981 () Bool)

(declare-fun b_free!55953 () Bool)

(declare-fun b_next!56657 () Bool)

(assert (=> b!2006981 (= b_free!55953 (not b_next!56657))))

(declare-fun tp!598933 () Bool)

(declare-fun b_and!158345 () Bool)

(assert (=> b!2006981 (= tp!598933 b_and!158345)))

(declare-fun b_free!55955 () Bool)

(declare-fun b_next!56659 () Bool)

(assert (=> b!2006981 (= b_free!55955 (not b_next!56659))))

(declare-fun tp!598935 () Bool)

(declare-fun b_and!158347 () Bool)

(assert (=> b!2006981 (= tp!598935 b_and!158347)))

(declare-fun b!2006975 () Bool)

(declare-fun e!1268100 () Bool)

(declare-datatypes ((List!22132 0))(
  ( (Nil!22050) (Cons!22050 (h!27451 (_ BitVec 16)) (t!187199 List!22132)) )
))
(declare-datatypes ((TokenValue!4094 0))(
  ( (FloatLiteralValue!8188 (text!29103 List!22132)) (TokenValueExt!4093 (__x!13686 Int)) (Broken!20470 (value!124368 List!22132)) (Object!4175) (End!4094) (Def!4094) (Underscore!4094) (Match!4094) (Else!4094) (Error!4094) (Case!4094) (If!4094) (Extends!4094) (Abstract!4094) (Class!4094) (Val!4094) (DelimiterValue!8188 (del!4154 List!22132)) (KeywordValue!4100 (value!124369 List!22132)) (CommentValue!8188 (value!124370 List!22132)) (WhitespaceValue!8188 (value!124371 List!22132)) (IndentationValue!4094 (value!124372 List!22132)) (String!25587) (Int32!4094) (Broken!20471 (value!124373 List!22132)) (Boolean!4095) (Unit!36609) (OperatorValue!4097 (op!4154 List!22132)) (IdentifierValue!8188 (value!124374 List!22132)) (IdentifierValue!8189 (value!124375 List!22132)) (WhitespaceValue!8189 (value!124376 List!22132)) (True!8188) (False!8188) (Broken!20472 (value!124377 List!22132)) (Broken!20473 (value!124378 List!22132)) (True!8189) (RightBrace!4094) (RightBracket!4094) (Colon!4094) (Null!4094) (Comma!4094) (LeftBracket!4094) (False!8189) (LeftBrace!4094) (ImaginaryLiteralValue!4094 (text!29104 List!22132)) (StringLiteralValue!12282 (value!124379 List!22132)) (EOFValue!4094 (value!124380 List!22132)) (IdentValue!4094 (value!124381 List!22132)) (DelimiterValue!8189 (value!124382 List!22132)) (DedentValue!4094 (value!124383 List!22132)) (NewLineValue!4094 (value!124384 List!22132)) (IntegerValue!12282 (value!124385 (_ BitVec 32)) (text!29105 List!22132)) (IntegerValue!12283 (value!124386 Int) (text!29106 List!22132)) (Times!4094) (Or!4094) (Equal!4094) (Minus!4094) (Broken!20474 (value!124387 List!22132)) (And!4094) (Div!4094) (LessEqual!4094) (Mod!4094) (Concat!9477) (Not!4094) (Plus!4094) (SpaceValue!4094 (value!124388 List!22132)) (IntegerValue!12284 (value!124389 Int) (text!29107 List!22132)) (StringLiteralValue!12283 (text!29108 List!22132)) (FloatLiteralValue!8189 (text!29109 List!22132)) (BytesLiteralValue!4094 (value!124390 List!22132)) (CommentValue!8189 (value!124391 List!22132)) (StringLiteralValue!12284 (value!124392 List!22132)) (ErrorTokenValue!4094 (msg!4155 List!22132)) )
))
(declare-datatypes ((C!10912 0))(
  ( (C!10913 (val!6408 Int)) )
))
(declare-datatypes ((Regex!5383 0))(
  ( (ElementMatch!5383 (c!324153 C!10912)) (Concat!9478 (regOne!11278 Regex!5383) (regTwo!11278 Regex!5383)) (EmptyExpr!5383) (Star!5383 (reg!5712 Regex!5383)) (EmptyLang!5383) (Union!5383 (regOne!11279 Regex!5383) (regTwo!11279 Regex!5383)) )
))
(declare-datatypes ((String!25588 0))(
  ( (String!25589 (value!124393 String)) )
))
(declare-datatypes ((List!22133 0))(
  ( (Nil!22051) (Cons!22051 (h!27452 C!10912) (t!187200 List!22133)) )
))
(declare-datatypes ((IArray!14739 0))(
  ( (IArray!14740 (innerList!7427 List!22133)) )
))
(declare-datatypes ((Conc!7367 0))(
  ( (Node!7367 (left!17544 Conc!7367) (right!17874 Conc!7367) (csize!14964 Int) (cheight!7578 Int)) (Leaf!10809 (xs!10265 IArray!14739) (csize!14965 Int)) (Empty!7367) )
))
(declare-datatypes ((BalanceConc!14550 0))(
  ( (BalanceConc!14551 (c!324154 Conc!7367)) )
))
(declare-datatypes ((TokenValueInjection!7772 0))(
  ( (TokenValueInjection!7773 (toValue!5623 Int) (toChars!5482 Int)) )
))
(declare-datatypes ((Rule!7716 0))(
  ( (Rule!7717 (regex!3958 Regex!5383) (tag!4420 String!25588) (isSeparator!3958 Bool) (transformation!3958 TokenValueInjection!7772)) )
))
(declare-datatypes ((Token!7468 0))(
  ( (Token!7469 (value!124394 TokenValue!4094) (rule!6183 Rule!7716) (size!17240 Int) (originalCharacters!4765 List!22133)) )
))
(declare-datatypes ((tuple2!20722 0))(
  ( (tuple2!20723 (_1!11830 Token!7468) (_2!11830 List!22133)) )
))
(declare-datatypes ((Option!4597 0))(
  ( (None!4596) (Some!4596 (v!26831 tuple2!20722)) )
))
(declare-fun lt!753745 () Option!4597)

(declare-datatypes ((List!22134 0))(
  ( (Nil!22052) (Cons!22052 (h!27453 Token!7468) (t!187201 List!22134)) )
))
(declare-fun tokens!598 () List!22134)

(declare-fun get!6967 (Option!4597) tuple2!20722)

(assert (=> b!2006975 (= e!1268100 (= (_1!11830 (get!6967 lt!753745)) (h!27453 tokens!598)))))

(declare-fun e!1268103 () Bool)

(declare-fun b!2006976 () Bool)

(declare-fun e!1268098 () Bool)

(declare-fun tp!598938 () Bool)

(declare-fun inv!29205 (String!25588) Bool)

(declare-fun inv!29208 (TokenValueInjection!7772) Bool)

(assert (=> b!2006976 (= e!1268098 (and tp!598938 (inv!29205 (tag!4420 (rule!6183 (h!27453 tokens!598)))) (inv!29208 (transformation!3958 (rule!6183 (h!27453 tokens!598)))) e!1268103))))

(declare-fun e!1268091 () Bool)

(declare-fun tp!598941 () Bool)

(declare-fun b!2006977 () Bool)

(declare-fun inv!21 (TokenValue!4094) Bool)

(assert (=> b!2006977 (= e!1268091 (and (inv!21 (value!124394 (h!27453 tokens!598))) e!1268098 tp!598941))))

(declare-fun b!2006978 () Bool)

(declare-fun e!1268094 () Bool)

(declare-fun e!1268086 () Bool)

(assert (=> b!2006978 (= e!1268094 e!1268086)))

(declare-fun res!880182 () Bool)

(assert (=> b!2006978 (=> res!880182 e!1268086)))

(declare-fun separatorToken!354 () Token!7468)

(declare-fun lt!753746 () List!22133)

(declare-fun contains!4026 (List!22133 C!10912) Bool)

(declare-fun usedCharacters!396 (Regex!5383) List!22133)

(declare-fun head!4534 (List!22133) C!10912)

(assert (=> b!2006978 (= res!880182 (contains!4026 (usedCharacters!396 (regex!3958 (rule!6183 separatorToken!354))) (head!4534 lt!753746)))))

(declare-fun lt!753753 () List!22133)

(declare-fun lt!753756 () List!22133)

(declare-fun ++!5951 (List!22133 List!22133) List!22133)

(assert (=> b!2006978 (= (++!5951 (++!5951 lt!753753 lt!753746) lt!753756) (++!5951 lt!753753 (++!5951 lt!753746 lt!753756)))))

(declare-datatypes ((Unit!36610 0))(
  ( (Unit!36611) )
))
(declare-fun lt!753744 () Unit!36610)

(declare-fun lemmaConcatAssociativity!1221 (List!22133 List!22133 List!22133) Unit!36610)

(assert (=> b!2006978 (= lt!753744 (lemmaConcatAssociativity!1221 lt!753753 lt!753746 lt!753756))))

(declare-fun e!1268102 () Bool)

(declare-fun e!1268085 () Bool)

(declare-fun tp!598942 () Bool)

(declare-fun b!2006979 () Bool)

(assert (=> b!2006979 (= e!1268102 (and (inv!21 (value!124394 separatorToken!354)) e!1268085 tp!598942))))

(declare-fun b!2006980 () Bool)

(declare-fun res!880191 () Bool)

(declare-fun e!1268084 () Bool)

(assert (=> b!2006980 (=> (not res!880191) (not e!1268084))))

(declare-datatypes ((List!22135 0))(
  ( (Nil!22053) (Cons!22053 (h!27454 Rule!7716) (t!187202 List!22135)) )
))
(declare-fun rules!3198 () List!22135)

(declare-fun isEmpty!13670 (List!22135) Bool)

(assert (=> b!2006980 (= res!880191 (not (isEmpty!13670 rules!3198)))))

(assert (=> b!2006981 (= e!1268103 (and tp!598933 tp!598935))))

(declare-fun b!2006982 () Bool)

(declare-fun res!880176 () Bool)

(assert (=> b!2006982 (=> (not res!880176) (not e!1268084))))

(assert (=> b!2006982 (= res!880176 (isSeparator!3958 (rule!6183 separatorToken!354)))))

(declare-fun b!2006983 () Bool)

(declare-fun e!1268096 () Bool)

(declare-fun e!1268095 () Bool)

(assert (=> b!2006983 (= e!1268096 e!1268095)))

(declare-fun res!880190 () Bool)

(assert (=> b!2006983 (=> (not res!880190) (not e!1268095))))

(declare-fun lt!753747 () Rule!7716)

(declare-fun matchR!2649 (Regex!5383 List!22133) Bool)

(assert (=> b!2006983 (= res!880190 (matchR!2649 (regex!3958 lt!753747) lt!753746))))

(declare-datatypes ((Option!4598 0))(
  ( (None!4597) (Some!4597 (v!26832 Rule!7716)) )
))
(declare-fun lt!753755 () Option!4598)

(declare-fun get!6968 (Option!4598) Rule!7716)

(assert (=> b!2006983 (= lt!753747 (get!6968 lt!753755))))

(declare-fun e!1268105 () Bool)

(assert (=> b!2006984 (= e!1268105 (and tp!598931 tp!598936))))

(declare-fun b!2006985 () Bool)

(declare-fun res!880183 () Bool)

(assert (=> b!2006985 (=> (not res!880183) (not e!1268084))))

(declare-fun sepAndNonSepRulesDisjointChars!1056 (List!22135 List!22135) Bool)

(assert (=> b!2006985 (= res!880183 (sepAndNonSepRulesDisjointChars!1056 rules!3198 rules!3198))))

(declare-fun b!2006987 () Bool)

(declare-fun e!1268089 () Bool)

(declare-fun e!1268088 () Bool)

(declare-fun tp!598934 () Bool)

(assert (=> b!2006987 (= e!1268089 (and e!1268088 tp!598934))))

(declare-fun b!2006988 () Bool)

(declare-fun res!880188 () Bool)

(assert (=> b!2006988 (=> (not res!880188) (not e!1268084))))

(declare-datatypes ((LexerInterface!3571 0))(
  ( (LexerInterfaceExt!3568 (__x!13687 Int)) (Lexer!3569) )
))
(declare-fun thiss!23328 () LexerInterface!3571)

(declare-fun rulesProduceEachTokenIndividuallyList!1302 (LexerInterface!3571 List!22135 List!22134) Bool)

(assert (=> b!2006988 (= res!880188 (rulesProduceEachTokenIndividuallyList!1302 thiss!23328 rules!3198 tokens!598))))

(declare-fun e!1268092 () Bool)

(assert (=> b!2006989 (= e!1268092 (and tp!598932 tp!598937))))

(declare-fun b!2006990 () Bool)

(assert (=> b!2006990 (= e!1268095 (= (rule!6183 separatorToken!354) lt!753747))))

(declare-fun b!2006991 () Bool)

(declare-fun e!1268104 () Bool)

(declare-fun e!1268101 () Bool)

(assert (=> b!2006991 (= e!1268104 e!1268101)))

(declare-fun res!880185 () Bool)

(assert (=> b!2006991 (=> (not res!880185) (not e!1268101))))

(declare-fun lt!753743 () Rule!7716)

(assert (=> b!2006991 (= res!880185 (matchR!2649 (regex!3958 lt!753743) lt!753753))))

(declare-fun lt!753749 () Option!4598)

(assert (=> b!2006991 (= lt!753743 (get!6968 lt!753749))))

(declare-fun b!2006992 () Bool)

(assert (=> b!2006992 (= e!1268101 (= (rule!6183 (h!27453 tokens!598)) lt!753743))))

(declare-fun b!2006993 () Bool)

(declare-fun res!880186 () Bool)

(assert (=> b!2006993 (=> (not res!880186) (not e!1268084))))

(get-info :version)

(assert (=> b!2006993 (= res!880186 ((_ is Cons!22052) tokens!598))))

(declare-fun tp!598930 () Bool)

(declare-fun b!2006994 () Bool)

(assert (=> b!2006994 (= e!1268085 (and tp!598930 (inv!29205 (tag!4420 (rule!6183 separatorToken!354))) (inv!29208 (transformation!3958 (rule!6183 separatorToken!354))) e!1268092))))

(declare-fun tp!598939 () Bool)

(declare-fun b!2006995 () Bool)

(declare-fun e!1268093 () Bool)

(declare-fun inv!29209 (Token!7468) Bool)

(assert (=> b!2006995 (= e!1268093 (and (inv!29209 (h!27453 tokens!598)) e!1268091 tp!598939))))

(declare-fun b!2006996 () Bool)

(declare-fun res!880177 () Bool)

(assert (=> b!2006996 (=> (not res!880177) (not e!1268084))))

(declare-fun rulesProduceIndividualToken!1743 (LexerInterface!3571 List!22135 Token!7468) Bool)

(assert (=> b!2006996 (= res!880177 (rulesProduceIndividualToken!1743 thiss!23328 rules!3198 separatorToken!354))))

(declare-fun b!2006997 () Bool)

(declare-fun res!880184 () Bool)

(assert (=> b!2006997 (=> (not res!880184) (not e!1268084))))

(declare-fun rulesInvariant!3178 (LexerInterface!3571 List!22135) Bool)

(assert (=> b!2006997 (= res!880184 (rulesInvariant!3178 thiss!23328 rules!3198))))

(declare-fun tp!598940 () Bool)

(declare-fun b!2006998 () Bool)

(assert (=> b!2006998 (= e!1268088 (and tp!598940 (inv!29205 (tag!4420 (h!27454 rules!3198))) (inv!29208 (transformation!3958 (h!27454 rules!3198))) e!1268105))))

(declare-fun b!2006999 () Bool)

(declare-fun res!880187 () Bool)

(assert (=> b!2006999 (=> (not res!880187) (not e!1268084))))

(declare-fun lambda!75991 () Int)

(declare-fun forall!4684 (List!22134 Int) Bool)

(assert (=> b!2006999 (= res!880187 (forall!4684 tokens!598 lambda!75991))))

(declare-fun b!2007000 () Bool)

(assert (=> b!2007000 (= e!1268084 (not e!1268094))))

(declare-fun res!880180 () Bool)

(assert (=> b!2007000 (=> res!880180 e!1268094)))

(declare-fun lt!753751 () Bool)

(declare-fun lt!753741 () Option!4597)

(assert (=> b!2007000 (= res!880180 (or (and (not lt!753751) (= (_1!11830 (v!26831 lt!753741)) (h!27453 tokens!598))) lt!753751 (= (_1!11830 (v!26831 lt!753741)) (h!27453 tokens!598))))))

(assert (=> b!2007000 (= lt!753751 (not ((_ is Some!4596) lt!753741)))))

(declare-fun maxPrefix!2007 (LexerInterface!3571 List!22135 List!22133) Option!4597)

(assert (=> b!2007000 (= lt!753741 (maxPrefix!2007 thiss!23328 rules!3198 (++!5951 lt!753753 lt!753756)))))

(declare-fun printWithSeparatorTokenWhenNeededList!600 (LexerInterface!3571 List!22135 List!22134 Token!7468) List!22133)

(assert (=> b!2007000 (= lt!753756 (printWithSeparatorTokenWhenNeededList!600 thiss!23328 rules!3198 (t!187201 tokens!598) separatorToken!354))))

(assert (=> b!2007000 e!1268104))

(declare-fun res!880178 () Bool)

(assert (=> b!2007000 (=> (not res!880178) (not e!1268104))))

(declare-fun isDefined!3885 (Option!4598) Bool)

(assert (=> b!2007000 (= res!880178 (isDefined!3885 lt!753749))))

(declare-fun getRuleFromTag!773 (LexerInterface!3571 List!22135 String!25588) Option!4598)

(assert (=> b!2007000 (= lt!753749 (getRuleFromTag!773 thiss!23328 rules!3198 (tag!4420 (rule!6183 (h!27453 tokens!598)))))))

(declare-fun lt!753750 () Unit!36610)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!773 (LexerInterface!3571 List!22135 List!22133 Token!7468) Unit!36610)

(assert (=> b!2007000 (= lt!753750 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!773 thiss!23328 rules!3198 lt!753753 (h!27453 tokens!598)))))

(assert (=> b!2007000 e!1268100))

(declare-fun res!880179 () Bool)

(assert (=> b!2007000 (=> (not res!880179) (not e!1268100))))

(declare-fun isDefined!3886 (Option!4597) Bool)

(assert (=> b!2007000 (= res!880179 (isDefined!3886 lt!753745))))

(assert (=> b!2007000 (= lt!753745 (maxPrefix!2007 thiss!23328 rules!3198 lt!753753))))

(declare-fun lt!753748 () BalanceConc!14550)

(declare-fun list!8975 (BalanceConc!14550) List!22133)

(assert (=> b!2007000 (= lt!753753 (list!8975 lt!753748))))

(assert (=> b!2007000 e!1268096))

(declare-fun res!880181 () Bool)

(assert (=> b!2007000 (=> (not res!880181) (not e!1268096))))

(assert (=> b!2007000 (= res!880181 (isDefined!3885 lt!753755))))

(assert (=> b!2007000 (= lt!753755 (getRuleFromTag!773 thiss!23328 rules!3198 (tag!4420 (rule!6183 separatorToken!354))))))

(declare-fun lt!753754 () Unit!36610)

(assert (=> b!2007000 (= lt!753754 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!773 thiss!23328 rules!3198 lt!753746 separatorToken!354))))

(declare-fun charsOf!2498 (Token!7468) BalanceConc!14550)

(assert (=> b!2007000 (= lt!753746 (list!8975 (charsOf!2498 separatorToken!354)))))

(declare-fun lt!753752 () Unit!36610)

(declare-fun lemmaEqSameImage!644 (TokenValueInjection!7772 BalanceConc!14550 BalanceConc!14550) Unit!36610)

(declare-fun seqFromList!2812 (List!22133) BalanceConc!14550)

(assert (=> b!2007000 (= lt!753752 (lemmaEqSameImage!644 (transformation!3958 (rule!6183 (h!27453 tokens!598))) lt!753748 (seqFromList!2812 (originalCharacters!4765 (h!27453 tokens!598)))))))

(declare-fun lt!753742 () Unit!36610)

(declare-fun lemmaSemiInverse!915 (TokenValueInjection!7772 BalanceConc!14550) Unit!36610)

(assert (=> b!2007000 (= lt!753742 (lemmaSemiInverse!915 (transformation!3958 (rule!6183 (h!27453 tokens!598))) lt!753748))))

(assert (=> b!2007000 (= lt!753748 (charsOf!2498 (h!27453 tokens!598)))))

(declare-fun b!2006986 () Bool)

(declare-fun validRegex!2155 (Regex!5383) Bool)

(assert (=> b!2006986 (= e!1268086 (validRegex!2155 (regex!3958 (rule!6183 separatorToken!354))))))

(declare-fun res!880189 () Bool)

(assert (=> start!197188 (=> (not res!880189) (not e!1268084))))

(assert (=> start!197188 (= res!880189 ((_ is Lexer!3569) thiss!23328))))

(assert (=> start!197188 e!1268084))

(assert (=> start!197188 true))

(assert (=> start!197188 e!1268089))

(assert (=> start!197188 e!1268093))

(assert (=> start!197188 (and (inv!29209 separatorToken!354) e!1268102)))

(assert (= (and start!197188 res!880189) b!2006980))

(assert (= (and b!2006980 res!880191) b!2006997))

(assert (= (and b!2006997 res!880184) b!2006988))

(assert (= (and b!2006988 res!880188) b!2006996))

(assert (= (and b!2006996 res!880177) b!2006982))

(assert (= (and b!2006982 res!880176) b!2006999))

(assert (= (and b!2006999 res!880187) b!2006985))

(assert (= (and b!2006985 res!880183) b!2006993))

(assert (= (and b!2006993 res!880186) b!2007000))

(assert (= (and b!2007000 res!880181) b!2006983))

(assert (= (and b!2006983 res!880190) b!2006990))

(assert (= (and b!2007000 res!880179) b!2006975))

(assert (= (and b!2007000 res!880178) b!2006991))

(assert (= (and b!2006991 res!880185) b!2006992))

(assert (= (and b!2007000 (not res!880180)) b!2006978))

(assert (= (and b!2006978 (not res!880182)) b!2006986))

(assert (= b!2006998 b!2006984))

(assert (= b!2006987 b!2006998))

(assert (= (and start!197188 ((_ is Cons!22053) rules!3198)) b!2006987))

(assert (= b!2006976 b!2006981))

(assert (= b!2006977 b!2006976))

(assert (= b!2006995 b!2006977))

(assert (= (and start!197188 ((_ is Cons!22052) tokens!598)) b!2006995))

(assert (= b!2006994 b!2006989))

(assert (= b!2006979 b!2006994))

(assert (= start!197188 b!2006979))

(declare-fun m!2439059 () Bool)

(assert (=> b!2006999 m!2439059))

(declare-fun m!2439061 () Bool)

(assert (=> b!2006986 m!2439061))

(declare-fun m!2439063 () Bool)

(assert (=> b!2006976 m!2439063))

(declare-fun m!2439065 () Bool)

(assert (=> b!2006976 m!2439065))

(declare-fun m!2439067 () Bool)

(assert (=> b!2006977 m!2439067))

(declare-fun m!2439069 () Bool)

(assert (=> b!2006991 m!2439069))

(declare-fun m!2439071 () Bool)

(assert (=> b!2006991 m!2439071))

(declare-fun m!2439073 () Bool)

(assert (=> start!197188 m!2439073))

(declare-fun m!2439075 () Bool)

(assert (=> b!2006979 m!2439075))

(declare-fun m!2439077 () Bool)

(assert (=> b!2006985 m!2439077))

(declare-fun m!2439079 () Bool)

(assert (=> b!2006978 m!2439079))

(declare-fun m!2439081 () Bool)

(assert (=> b!2006978 m!2439081))

(assert (=> b!2006978 m!2439081))

(declare-fun m!2439083 () Bool)

(assert (=> b!2006978 m!2439083))

(declare-fun m!2439085 () Bool)

(assert (=> b!2006978 m!2439085))

(declare-fun m!2439087 () Bool)

(assert (=> b!2006978 m!2439087))

(declare-fun m!2439089 () Bool)

(assert (=> b!2006978 m!2439089))

(assert (=> b!2006978 m!2439083))

(assert (=> b!2006978 m!2439089))

(declare-fun m!2439091 () Bool)

(assert (=> b!2006978 m!2439091))

(assert (=> b!2006978 m!2439087))

(declare-fun m!2439093 () Bool)

(assert (=> b!2006978 m!2439093))

(declare-fun m!2439095 () Bool)

(assert (=> b!2006983 m!2439095))

(declare-fun m!2439097 () Bool)

(assert (=> b!2006983 m!2439097))

(declare-fun m!2439099 () Bool)

(assert (=> b!2006988 m!2439099))

(declare-fun m!2439101 () Bool)

(assert (=> b!2006994 m!2439101))

(declare-fun m!2439103 () Bool)

(assert (=> b!2006994 m!2439103))

(declare-fun m!2439105 () Bool)

(assert (=> b!2006998 m!2439105))

(declare-fun m!2439107 () Bool)

(assert (=> b!2006998 m!2439107))

(declare-fun m!2439109 () Bool)

(assert (=> b!2006996 m!2439109))

(declare-fun m!2439111 () Bool)

(assert (=> b!2006995 m!2439111))

(declare-fun m!2439113 () Bool)

(assert (=> b!2006980 m!2439113))

(declare-fun m!2439115 () Bool)

(assert (=> b!2006975 m!2439115))

(declare-fun m!2439117 () Bool)

(assert (=> b!2007000 m!2439117))

(declare-fun m!2439119 () Bool)

(assert (=> b!2007000 m!2439119))

(declare-fun m!2439121 () Bool)

(assert (=> b!2007000 m!2439121))

(assert (=> b!2007000 m!2439119))

(declare-fun m!2439123 () Bool)

(assert (=> b!2007000 m!2439123))

(declare-fun m!2439125 () Bool)

(assert (=> b!2007000 m!2439125))

(declare-fun m!2439127 () Bool)

(assert (=> b!2007000 m!2439127))

(declare-fun m!2439129 () Bool)

(assert (=> b!2007000 m!2439129))

(declare-fun m!2439131 () Bool)

(assert (=> b!2007000 m!2439131))

(declare-fun m!2439133 () Bool)

(assert (=> b!2007000 m!2439133))

(declare-fun m!2439135 () Bool)

(assert (=> b!2007000 m!2439135))

(declare-fun m!2439137 () Bool)

(assert (=> b!2007000 m!2439137))

(declare-fun m!2439139 () Bool)

(assert (=> b!2007000 m!2439139))

(declare-fun m!2439141 () Bool)

(assert (=> b!2007000 m!2439141))

(declare-fun m!2439143 () Bool)

(assert (=> b!2007000 m!2439143))

(declare-fun m!2439145 () Bool)

(assert (=> b!2007000 m!2439145))

(declare-fun m!2439147 () Bool)

(assert (=> b!2007000 m!2439147))

(assert (=> b!2007000 m!2439139))

(declare-fun m!2439149 () Bool)

(assert (=> b!2007000 m!2439149))

(assert (=> b!2007000 m!2439117))

(declare-fun m!2439151 () Bool)

(assert (=> b!2007000 m!2439151))

(declare-fun m!2439153 () Bool)

(assert (=> b!2006997 m!2439153))

(check-sat (not b!2007000) (not b!2006987) (not b!2006979) b_and!158339 b_and!158345 (not b!2006978) (not b!2006988) (not b!2006983) (not b!2006977) (not b!2006998) (not b!2006999) b_and!158341 (not b_next!56649) (not b_next!56653) (not b!2006994) (not start!197188) (not b!2006985) (not b!2006980) (not b!2006975) b_and!158337 (not b!2006996) (not b!2006976) (not b_next!56651) (not b_next!56655) (not b!2006997) (not b_next!56659) (not b_next!56657) (not b!2006995) (not b!2006986) (not b!2006991) b_and!158347 b_and!158343)
(check-sat (not b_next!56653) b_and!158337 b_and!158339 (not b_next!56651) b_and!158345 (not b_next!56655) b_and!158341 (not b_next!56649) (not b_next!56659) (not b_next!56657) b_and!158347 b_and!158343)
(get-model)

(declare-fun b!2007065 () Bool)

(declare-fun res!880249 () Bool)

(declare-fun e!1268151 () Bool)

(assert (=> b!2007065 (=> res!880249 e!1268151)))

(declare-fun e!1268154 () Bool)

(assert (=> b!2007065 (= res!880249 e!1268154)))

(declare-fun res!880244 () Bool)

(assert (=> b!2007065 (=> (not res!880244) (not e!1268154))))

(declare-fun lt!753759 () Bool)

(assert (=> b!2007065 (= res!880244 lt!753759)))

(declare-fun b!2007067 () Bool)

(declare-fun e!1268152 () Bool)

(declare-fun call!122668 () Bool)

(assert (=> b!2007067 (= e!1268152 (= lt!753759 call!122668))))

(declare-fun bm!122663 () Bool)

(declare-fun isEmpty!13675 (List!22133) Bool)

(assert (=> bm!122663 (= call!122668 (isEmpty!13675 lt!753753))))

(declare-fun b!2007068 () Bool)

(declare-fun e!1268153 () Bool)

(assert (=> b!2007068 (= e!1268152 e!1268153)))

(declare-fun c!324169 () Bool)

(assert (=> b!2007068 (= c!324169 ((_ is EmptyLang!5383) (regex!3958 lt!753743)))))

(declare-fun b!2007069 () Bool)

(declare-fun res!880248 () Bool)

(assert (=> b!2007069 (=> res!880248 e!1268151)))

(assert (=> b!2007069 (= res!880248 (not ((_ is ElementMatch!5383) (regex!3958 lt!753743))))))

(assert (=> b!2007069 (= e!1268153 e!1268151)))

(declare-fun b!2007070 () Bool)

(declare-fun res!880245 () Bool)

(declare-fun e!1268156 () Bool)

(assert (=> b!2007070 (=> res!880245 e!1268156)))

(declare-fun tail!3019 (List!22133) List!22133)

(assert (=> b!2007070 (= res!880245 (not (isEmpty!13675 (tail!3019 lt!753753))))))

(declare-fun b!2007071 () Bool)

(assert (=> b!2007071 (= e!1268154 (= (head!4534 lt!753753) (c!324153 (regex!3958 lt!753743))))))

(declare-fun b!2007072 () Bool)

(assert (=> b!2007072 (= e!1268156 (not (= (head!4534 lt!753753) (c!324153 (regex!3958 lt!753743)))))))

(declare-fun b!2007073 () Bool)

(declare-fun res!880242 () Bool)

(assert (=> b!2007073 (=> (not res!880242) (not e!1268154))))

(assert (=> b!2007073 (= res!880242 (not call!122668))))

(declare-fun b!2007074 () Bool)

(declare-fun e!1268155 () Bool)

(declare-fun nullable!1629 (Regex!5383) Bool)

(assert (=> b!2007074 (= e!1268155 (nullable!1629 (regex!3958 lt!753743)))))

(declare-fun b!2007066 () Bool)

(declare-fun e!1268157 () Bool)

(assert (=> b!2007066 (= e!1268151 e!1268157)))

(declare-fun res!880247 () Bool)

(assert (=> b!2007066 (=> (not res!880247) (not e!1268157))))

(assert (=> b!2007066 (= res!880247 (not lt!753759))))

(declare-fun d!612880 () Bool)

(assert (=> d!612880 e!1268152))

(declare-fun c!324168 () Bool)

(assert (=> d!612880 (= c!324168 ((_ is EmptyExpr!5383) (regex!3958 lt!753743)))))

(assert (=> d!612880 (= lt!753759 e!1268155)))

(declare-fun c!324167 () Bool)

(assert (=> d!612880 (= c!324167 (isEmpty!13675 lt!753753))))

(assert (=> d!612880 (validRegex!2155 (regex!3958 lt!753743))))

(assert (=> d!612880 (= (matchR!2649 (regex!3958 lt!753743) lt!753753) lt!753759)))

(declare-fun b!2007075 () Bool)

(declare-fun derivativeStep!1387 (Regex!5383 C!10912) Regex!5383)

(assert (=> b!2007075 (= e!1268155 (matchR!2649 (derivativeStep!1387 (regex!3958 lt!753743) (head!4534 lt!753753)) (tail!3019 lt!753753)))))

(declare-fun b!2007076 () Bool)

(declare-fun res!880243 () Bool)

(assert (=> b!2007076 (=> (not res!880243) (not e!1268154))))

(assert (=> b!2007076 (= res!880243 (isEmpty!13675 (tail!3019 lt!753753)))))

(declare-fun b!2007077 () Bool)

(assert (=> b!2007077 (= e!1268157 e!1268156)))

(declare-fun res!880246 () Bool)

(assert (=> b!2007077 (=> res!880246 e!1268156)))

(assert (=> b!2007077 (= res!880246 call!122668)))

(declare-fun b!2007078 () Bool)

(assert (=> b!2007078 (= e!1268153 (not lt!753759))))

(assert (= (and d!612880 c!324167) b!2007074))

(assert (= (and d!612880 (not c!324167)) b!2007075))

(assert (= (and d!612880 c!324168) b!2007067))

(assert (= (and d!612880 (not c!324168)) b!2007068))

(assert (= (and b!2007068 c!324169) b!2007078))

(assert (= (and b!2007068 (not c!324169)) b!2007069))

(assert (= (and b!2007069 (not res!880248)) b!2007065))

(assert (= (and b!2007065 res!880244) b!2007073))

(assert (= (and b!2007073 res!880242) b!2007076))

(assert (= (and b!2007076 res!880243) b!2007071))

(assert (= (and b!2007065 (not res!880249)) b!2007066))

(assert (= (and b!2007066 res!880247) b!2007077))

(assert (= (and b!2007077 (not res!880246)) b!2007070))

(assert (= (and b!2007070 (not res!880245)) b!2007072))

(assert (= (or b!2007067 b!2007073 b!2007077) bm!122663))

(declare-fun m!2439169 () Bool)

(assert (=> b!2007070 m!2439169))

(assert (=> b!2007070 m!2439169))

(declare-fun m!2439171 () Bool)

(assert (=> b!2007070 m!2439171))

(assert (=> b!2007076 m!2439169))

(assert (=> b!2007076 m!2439169))

(assert (=> b!2007076 m!2439171))

(declare-fun m!2439173 () Bool)

(assert (=> d!612880 m!2439173))

(declare-fun m!2439175 () Bool)

(assert (=> d!612880 m!2439175))

(declare-fun m!2439177 () Bool)

(assert (=> b!2007074 m!2439177))

(declare-fun m!2439179 () Bool)

(assert (=> b!2007071 m!2439179))

(assert (=> b!2007072 m!2439179))

(assert (=> b!2007075 m!2439179))

(assert (=> b!2007075 m!2439179))

(declare-fun m!2439181 () Bool)

(assert (=> b!2007075 m!2439181))

(assert (=> b!2007075 m!2439169))

(assert (=> b!2007075 m!2439181))

(assert (=> b!2007075 m!2439169))

(declare-fun m!2439183 () Bool)

(assert (=> b!2007075 m!2439183))

(assert (=> bm!122663 m!2439173))

(assert (=> b!2006991 d!612880))

(declare-fun d!612882 () Bool)

(assert (=> d!612882 (= (get!6968 lt!753749) (v!26832 lt!753749))))

(assert (=> b!2006991 d!612882))

(declare-fun d!612884 () Bool)

(assert (=> d!612884 (= (isEmpty!13670 rules!3198) ((_ is Nil!22053) rules!3198))))

(assert (=> b!2006980 d!612884))

(declare-fun d!612886 () Bool)

(declare-fun res!880254 () Bool)

(declare-fun e!1268160 () Bool)

(assert (=> d!612886 (=> (not res!880254) (not e!1268160))))

(assert (=> d!612886 (= res!880254 (not (isEmpty!13675 (originalCharacters!4765 (h!27453 tokens!598)))))))

(assert (=> d!612886 (= (inv!29209 (h!27453 tokens!598)) e!1268160)))

(declare-fun b!2007083 () Bool)

(declare-fun res!880255 () Bool)

(assert (=> b!2007083 (=> (not res!880255) (not e!1268160))))

(declare-fun dynLambda!10840 (Int TokenValue!4094) BalanceConc!14550)

(assert (=> b!2007083 (= res!880255 (= (originalCharacters!4765 (h!27453 tokens!598)) (list!8975 (dynLambda!10840 (toChars!5482 (transformation!3958 (rule!6183 (h!27453 tokens!598)))) (value!124394 (h!27453 tokens!598))))))))

(declare-fun b!2007084 () Bool)

(declare-fun size!17243 (List!22133) Int)

(assert (=> b!2007084 (= e!1268160 (= (size!17240 (h!27453 tokens!598)) (size!17243 (originalCharacters!4765 (h!27453 tokens!598)))))))

(assert (= (and d!612886 res!880254) b!2007083))

(assert (= (and b!2007083 res!880255) b!2007084))

(declare-fun b_lambda!66897 () Bool)

(assert (=> (not b_lambda!66897) (not b!2007083)))

(declare-fun t!187204 () Bool)

(declare-fun tb!125237 () Bool)

(assert (=> (and b!2006989 (= (toChars!5482 (transformation!3958 (rule!6183 separatorToken!354))) (toChars!5482 (transformation!3958 (rule!6183 (h!27453 tokens!598))))) t!187204) tb!125237))

(declare-fun b!2007095 () Bool)

(declare-fun e!1268167 () Bool)

(declare-fun tp!598945 () Bool)

(declare-fun inv!29212 (Conc!7367) Bool)

(assert (=> b!2007095 (= e!1268167 (and (inv!29212 (c!324154 (dynLambda!10840 (toChars!5482 (transformation!3958 (rule!6183 (h!27453 tokens!598)))) (value!124394 (h!27453 tokens!598))))) tp!598945))))

(declare-fun result!150080 () Bool)

(declare-fun inv!29213 (BalanceConc!14550) Bool)

(assert (=> tb!125237 (= result!150080 (and (inv!29213 (dynLambda!10840 (toChars!5482 (transformation!3958 (rule!6183 (h!27453 tokens!598)))) (value!124394 (h!27453 tokens!598)))) e!1268167))))

(assert (= tb!125237 b!2007095))

(declare-fun m!2439185 () Bool)

(assert (=> b!2007095 m!2439185))

(declare-fun m!2439187 () Bool)

(assert (=> tb!125237 m!2439187))

(assert (=> b!2007083 t!187204))

(declare-fun b_and!158349 () Bool)

(assert (= b_and!158339 (and (=> t!187204 result!150080) b_and!158349)))

(declare-fun t!187207 () Bool)

(declare-fun tb!125239 () Bool)

(assert (=> (and b!2006984 (= (toChars!5482 (transformation!3958 (h!27454 rules!3198))) (toChars!5482 (transformation!3958 (rule!6183 (h!27453 tokens!598))))) t!187207) tb!125239))

(declare-fun result!150084 () Bool)

(assert (= result!150084 result!150080))

(assert (=> b!2007083 t!187207))

(declare-fun b_and!158351 () Bool)

(assert (= b_and!158343 (and (=> t!187207 result!150084) b_and!158351)))

(declare-fun t!187209 () Bool)

(declare-fun tb!125241 () Bool)

(assert (=> (and b!2006981 (= (toChars!5482 (transformation!3958 (rule!6183 (h!27453 tokens!598)))) (toChars!5482 (transformation!3958 (rule!6183 (h!27453 tokens!598))))) t!187209) tb!125241))

(declare-fun result!150086 () Bool)

(assert (= result!150086 result!150080))

(assert (=> b!2007083 t!187209))

(declare-fun b_and!158353 () Bool)

(assert (= b_and!158347 (and (=> t!187209 result!150086) b_and!158353)))

(declare-fun m!2439189 () Bool)

(assert (=> d!612886 m!2439189))

(declare-fun m!2439191 () Bool)

(assert (=> b!2007083 m!2439191))

(assert (=> b!2007083 m!2439191))

(declare-fun m!2439193 () Bool)

(assert (=> b!2007083 m!2439193))

(declare-fun m!2439195 () Bool)

(assert (=> b!2007084 m!2439195))

(assert (=> b!2006995 d!612886))

(declare-fun d!612888 () Bool)

(assert (=> d!612888 (= (inv!29205 (tag!4420 (rule!6183 separatorToken!354))) (= (mod (str.len (value!124393 (tag!4420 (rule!6183 separatorToken!354)))) 2) 0))))

(assert (=> b!2006994 d!612888))

(declare-fun d!612892 () Bool)

(declare-fun res!880273 () Bool)

(declare-fun e!1268178 () Bool)

(assert (=> d!612892 (=> (not res!880273) (not e!1268178))))

(declare-fun semiInverseModEq!1585 (Int Int) Bool)

(assert (=> d!612892 (= res!880273 (semiInverseModEq!1585 (toChars!5482 (transformation!3958 (rule!6183 separatorToken!354))) (toValue!5623 (transformation!3958 (rule!6183 separatorToken!354)))))))

(assert (=> d!612892 (= (inv!29208 (transformation!3958 (rule!6183 separatorToken!354))) e!1268178)))

(declare-fun b!2007112 () Bool)

(declare-fun equivClasses!1512 (Int Int) Bool)

(assert (=> b!2007112 (= e!1268178 (equivClasses!1512 (toChars!5482 (transformation!3958 (rule!6183 separatorToken!354))) (toValue!5623 (transformation!3958 (rule!6183 separatorToken!354)))))))

(assert (= (and d!612892 res!880273) b!2007112))

(declare-fun m!2439227 () Bool)

(assert (=> d!612892 m!2439227))

(declare-fun m!2439229 () Bool)

(assert (=> b!2007112 m!2439229))

(assert (=> b!2006994 d!612892))

(declare-fun b!2007113 () Bool)

(declare-fun res!880281 () Bool)

(declare-fun e!1268179 () Bool)

(assert (=> b!2007113 (=> res!880281 e!1268179)))

(declare-fun e!1268182 () Bool)

(assert (=> b!2007113 (= res!880281 e!1268182)))

(declare-fun res!880276 () Bool)

(assert (=> b!2007113 (=> (not res!880276) (not e!1268182))))

(declare-fun lt!753766 () Bool)

(assert (=> b!2007113 (= res!880276 lt!753766)))

(declare-fun b!2007115 () Bool)

(declare-fun e!1268180 () Bool)

(declare-fun call!122669 () Bool)

(assert (=> b!2007115 (= e!1268180 (= lt!753766 call!122669))))

(declare-fun bm!122664 () Bool)

(assert (=> bm!122664 (= call!122669 (isEmpty!13675 lt!753746))))

(declare-fun b!2007116 () Bool)

(declare-fun e!1268181 () Bool)

(assert (=> b!2007116 (= e!1268180 e!1268181)))

(declare-fun c!324172 () Bool)

(assert (=> b!2007116 (= c!324172 ((_ is EmptyLang!5383) (regex!3958 lt!753747)))))

(declare-fun b!2007117 () Bool)

(declare-fun res!880280 () Bool)

(assert (=> b!2007117 (=> res!880280 e!1268179)))

(assert (=> b!2007117 (= res!880280 (not ((_ is ElementMatch!5383) (regex!3958 lt!753747))))))

(assert (=> b!2007117 (= e!1268181 e!1268179)))

(declare-fun b!2007118 () Bool)

(declare-fun res!880277 () Bool)

(declare-fun e!1268184 () Bool)

(assert (=> b!2007118 (=> res!880277 e!1268184)))

(assert (=> b!2007118 (= res!880277 (not (isEmpty!13675 (tail!3019 lt!753746))))))

(declare-fun b!2007119 () Bool)

(assert (=> b!2007119 (= e!1268182 (= (head!4534 lt!753746) (c!324153 (regex!3958 lt!753747))))))

(declare-fun b!2007120 () Bool)

(assert (=> b!2007120 (= e!1268184 (not (= (head!4534 lt!753746) (c!324153 (regex!3958 lt!753747)))))))

(declare-fun b!2007121 () Bool)

(declare-fun res!880274 () Bool)

(assert (=> b!2007121 (=> (not res!880274) (not e!1268182))))

(assert (=> b!2007121 (= res!880274 (not call!122669))))

(declare-fun b!2007122 () Bool)

(declare-fun e!1268183 () Bool)

(assert (=> b!2007122 (= e!1268183 (nullable!1629 (regex!3958 lt!753747)))))

(declare-fun b!2007114 () Bool)

(declare-fun e!1268185 () Bool)

(assert (=> b!2007114 (= e!1268179 e!1268185)))

(declare-fun res!880279 () Bool)

(assert (=> b!2007114 (=> (not res!880279) (not e!1268185))))

(assert (=> b!2007114 (= res!880279 (not lt!753766))))

(declare-fun d!612900 () Bool)

(assert (=> d!612900 e!1268180))

(declare-fun c!324171 () Bool)

(assert (=> d!612900 (= c!324171 ((_ is EmptyExpr!5383) (regex!3958 lt!753747)))))

(assert (=> d!612900 (= lt!753766 e!1268183)))

(declare-fun c!324170 () Bool)

(assert (=> d!612900 (= c!324170 (isEmpty!13675 lt!753746))))

(assert (=> d!612900 (validRegex!2155 (regex!3958 lt!753747))))

(assert (=> d!612900 (= (matchR!2649 (regex!3958 lt!753747) lt!753746) lt!753766)))

(declare-fun b!2007123 () Bool)

(assert (=> b!2007123 (= e!1268183 (matchR!2649 (derivativeStep!1387 (regex!3958 lt!753747) (head!4534 lt!753746)) (tail!3019 lt!753746)))))

(declare-fun b!2007124 () Bool)

(declare-fun res!880275 () Bool)

(assert (=> b!2007124 (=> (not res!880275) (not e!1268182))))

(assert (=> b!2007124 (= res!880275 (isEmpty!13675 (tail!3019 lt!753746)))))

(declare-fun b!2007125 () Bool)

(assert (=> b!2007125 (= e!1268185 e!1268184)))

(declare-fun res!880278 () Bool)

(assert (=> b!2007125 (=> res!880278 e!1268184)))

(assert (=> b!2007125 (= res!880278 call!122669)))

(declare-fun b!2007126 () Bool)

(assert (=> b!2007126 (= e!1268181 (not lt!753766))))

(assert (= (and d!612900 c!324170) b!2007122))

(assert (= (and d!612900 (not c!324170)) b!2007123))

(assert (= (and d!612900 c!324171) b!2007115))

(assert (= (and d!612900 (not c!324171)) b!2007116))

(assert (= (and b!2007116 c!324172) b!2007126))

(assert (= (and b!2007116 (not c!324172)) b!2007117))

(assert (= (and b!2007117 (not res!880280)) b!2007113))

(assert (= (and b!2007113 res!880276) b!2007121))

(assert (= (and b!2007121 res!880274) b!2007124))

(assert (= (and b!2007124 res!880275) b!2007119))

(assert (= (and b!2007113 (not res!880281)) b!2007114))

(assert (= (and b!2007114 res!880279) b!2007125))

(assert (= (and b!2007125 (not res!880278)) b!2007118))

(assert (= (and b!2007118 (not res!880277)) b!2007120))

(assert (= (or b!2007115 b!2007121 b!2007125) bm!122664))

(declare-fun m!2439231 () Bool)

(assert (=> b!2007118 m!2439231))

(assert (=> b!2007118 m!2439231))

(declare-fun m!2439233 () Bool)

(assert (=> b!2007118 m!2439233))

(assert (=> b!2007124 m!2439231))

(assert (=> b!2007124 m!2439231))

(assert (=> b!2007124 m!2439233))

(declare-fun m!2439235 () Bool)

(assert (=> d!612900 m!2439235))

(declare-fun m!2439237 () Bool)

(assert (=> d!612900 m!2439237))

(declare-fun m!2439239 () Bool)

(assert (=> b!2007122 m!2439239))

(assert (=> b!2007119 m!2439083))

(assert (=> b!2007120 m!2439083))

(assert (=> b!2007123 m!2439083))

(assert (=> b!2007123 m!2439083))

(declare-fun m!2439241 () Bool)

(assert (=> b!2007123 m!2439241))

(assert (=> b!2007123 m!2439231))

(assert (=> b!2007123 m!2439241))

(assert (=> b!2007123 m!2439231))

(declare-fun m!2439243 () Bool)

(assert (=> b!2007123 m!2439243))

(assert (=> bm!122664 m!2439235))

(assert (=> b!2006983 d!612900))

(declare-fun d!612902 () Bool)

(assert (=> d!612902 (= (get!6968 lt!753755) (v!26832 lt!753755))))

(assert (=> b!2006983 d!612902))

(declare-fun d!612904 () Bool)

(assert (=> d!612904 (= (inv!29205 (tag!4420 (h!27454 rules!3198))) (= (mod (str.len (value!124393 (tag!4420 (h!27454 rules!3198)))) 2) 0))))

(assert (=> b!2006998 d!612904))

(declare-fun d!612906 () Bool)

(declare-fun res!880282 () Bool)

(declare-fun e!1268186 () Bool)

(assert (=> d!612906 (=> (not res!880282) (not e!1268186))))

(assert (=> d!612906 (= res!880282 (semiInverseModEq!1585 (toChars!5482 (transformation!3958 (h!27454 rules!3198))) (toValue!5623 (transformation!3958 (h!27454 rules!3198)))))))

(assert (=> d!612906 (= (inv!29208 (transformation!3958 (h!27454 rules!3198))) e!1268186)))

(declare-fun b!2007127 () Bool)

(assert (=> b!2007127 (= e!1268186 (equivClasses!1512 (toChars!5482 (transformation!3958 (h!27454 rules!3198))) (toValue!5623 (transformation!3958 (h!27454 rules!3198)))))))

(assert (= (and d!612906 res!880282) b!2007127))

(declare-fun m!2439245 () Bool)

(assert (=> d!612906 m!2439245))

(declare-fun m!2439247 () Bool)

(assert (=> b!2007127 m!2439247))

(assert (=> b!2006998 d!612906))

(declare-fun d!612908 () Bool)

(assert (=> d!612908 (= (inv!29205 (tag!4420 (rule!6183 (h!27453 tokens!598)))) (= (mod (str.len (value!124393 (tag!4420 (rule!6183 (h!27453 tokens!598))))) 2) 0))))

(assert (=> b!2006976 d!612908))

(declare-fun d!612910 () Bool)

(declare-fun res!880283 () Bool)

(declare-fun e!1268187 () Bool)

(assert (=> d!612910 (=> (not res!880283) (not e!1268187))))

(assert (=> d!612910 (= res!880283 (semiInverseModEq!1585 (toChars!5482 (transformation!3958 (rule!6183 (h!27453 tokens!598)))) (toValue!5623 (transformation!3958 (rule!6183 (h!27453 tokens!598))))))))

(assert (=> d!612910 (= (inv!29208 (transformation!3958 (rule!6183 (h!27453 tokens!598)))) e!1268187)))

(declare-fun b!2007128 () Bool)

(assert (=> b!2007128 (= e!1268187 (equivClasses!1512 (toChars!5482 (transformation!3958 (rule!6183 (h!27453 tokens!598)))) (toValue!5623 (transformation!3958 (rule!6183 (h!27453 tokens!598))))))))

(assert (= (and d!612910 res!880283) b!2007128))

(declare-fun m!2439249 () Bool)

(assert (=> d!612910 m!2439249))

(declare-fun m!2439251 () Bool)

(assert (=> b!2007128 m!2439251))

(assert (=> b!2006976 d!612910))

(declare-fun d!612912 () Bool)

(declare-fun res!880284 () Bool)

(declare-fun e!1268188 () Bool)

(assert (=> d!612912 (=> (not res!880284) (not e!1268188))))

(assert (=> d!612912 (= res!880284 (not (isEmpty!13675 (originalCharacters!4765 separatorToken!354))))))

(assert (=> d!612912 (= (inv!29209 separatorToken!354) e!1268188)))

(declare-fun b!2007129 () Bool)

(declare-fun res!880285 () Bool)

(assert (=> b!2007129 (=> (not res!880285) (not e!1268188))))

(assert (=> b!2007129 (= res!880285 (= (originalCharacters!4765 separatorToken!354) (list!8975 (dynLambda!10840 (toChars!5482 (transformation!3958 (rule!6183 separatorToken!354))) (value!124394 separatorToken!354)))))))

(declare-fun b!2007130 () Bool)

(assert (=> b!2007130 (= e!1268188 (= (size!17240 separatorToken!354) (size!17243 (originalCharacters!4765 separatorToken!354))))))

(assert (= (and d!612912 res!880284) b!2007129))

(assert (= (and b!2007129 res!880285) b!2007130))

(declare-fun b_lambda!66901 () Bool)

(assert (=> (not b_lambda!66901) (not b!2007129)))

(declare-fun t!187217 () Bool)

(declare-fun tb!125249 () Bool)

(assert (=> (and b!2006989 (= (toChars!5482 (transformation!3958 (rule!6183 separatorToken!354))) (toChars!5482 (transformation!3958 (rule!6183 separatorToken!354)))) t!187217) tb!125249))

(declare-fun b!2007131 () Bool)

(declare-fun e!1268189 () Bool)

(declare-fun tp!598949 () Bool)

(assert (=> b!2007131 (= e!1268189 (and (inv!29212 (c!324154 (dynLambda!10840 (toChars!5482 (transformation!3958 (rule!6183 separatorToken!354))) (value!124394 separatorToken!354)))) tp!598949))))

(declare-fun result!150096 () Bool)

(assert (=> tb!125249 (= result!150096 (and (inv!29213 (dynLambda!10840 (toChars!5482 (transformation!3958 (rule!6183 separatorToken!354))) (value!124394 separatorToken!354))) e!1268189))))

(assert (= tb!125249 b!2007131))

(declare-fun m!2439253 () Bool)

(assert (=> b!2007131 m!2439253))

(declare-fun m!2439255 () Bool)

(assert (=> tb!125249 m!2439255))

(assert (=> b!2007129 t!187217))

(declare-fun b_and!158361 () Bool)

(assert (= b_and!158349 (and (=> t!187217 result!150096) b_and!158361)))

(declare-fun tb!125251 () Bool)

(declare-fun t!187219 () Bool)

(assert (=> (and b!2006984 (= (toChars!5482 (transformation!3958 (h!27454 rules!3198))) (toChars!5482 (transformation!3958 (rule!6183 separatorToken!354)))) t!187219) tb!125251))

(declare-fun result!150098 () Bool)

(assert (= result!150098 result!150096))

(assert (=> b!2007129 t!187219))

(declare-fun b_and!158363 () Bool)

(assert (= b_and!158351 (and (=> t!187219 result!150098) b_and!158363)))

(declare-fun t!187221 () Bool)

(declare-fun tb!125253 () Bool)

(assert (=> (and b!2006981 (= (toChars!5482 (transformation!3958 (rule!6183 (h!27453 tokens!598)))) (toChars!5482 (transformation!3958 (rule!6183 separatorToken!354)))) t!187221) tb!125253))

(declare-fun result!150100 () Bool)

(assert (= result!150100 result!150096))

(assert (=> b!2007129 t!187221))

(declare-fun b_and!158365 () Bool)

(assert (= b_and!158353 (and (=> t!187221 result!150100) b_and!158365)))

(declare-fun m!2439257 () Bool)

(assert (=> d!612912 m!2439257))

(declare-fun m!2439259 () Bool)

(assert (=> b!2007129 m!2439259))

(assert (=> b!2007129 m!2439259))

(declare-fun m!2439261 () Bool)

(assert (=> b!2007129 m!2439261))

(declare-fun m!2439263 () Bool)

(assert (=> b!2007130 m!2439263))

(assert (=> start!197188 d!612912))

(declare-fun d!612914 () Bool)

(declare-fun res!880288 () Bool)

(declare-fun e!1268192 () Bool)

(assert (=> d!612914 (=> (not res!880288) (not e!1268192))))

(declare-fun rulesValid!1471 (LexerInterface!3571 List!22135) Bool)

(assert (=> d!612914 (= res!880288 (rulesValid!1471 thiss!23328 rules!3198))))

(assert (=> d!612914 (= (rulesInvariant!3178 thiss!23328 rules!3198) e!1268192)))

(declare-fun b!2007134 () Bool)

(declare-datatypes ((List!22136 0))(
  ( (Nil!22054) (Cons!22054 (h!27455 String!25588) (t!187313 List!22136)) )
))
(declare-fun noDuplicateTag!1469 (LexerInterface!3571 List!22135 List!22136) Bool)

(assert (=> b!2007134 (= e!1268192 (noDuplicateTag!1469 thiss!23328 rules!3198 Nil!22054))))

(assert (= (and d!612914 res!880288) b!2007134))

(declare-fun m!2439265 () Bool)

(assert (=> d!612914 m!2439265))

(declare-fun m!2439267 () Bool)

(assert (=> b!2007134 m!2439267))

(assert (=> b!2006997 d!612914))

(declare-fun c!324178 () Bool)

(declare-fun bm!122671 () Bool)

(declare-fun c!324177 () Bool)

(declare-fun call!122677 () Bool)

(assert (=> bm!122671 (= call!122677 (validRegex!2155 (ite c!324177 (reg!5712 (regex!3958 (rule!6183 separatorToken!354))) (ite c!324178 (regOne!11279 (regex!3958 (rule!6183 separatorToken!354))) (regOne!11278 (regex!3958 (rule!6183 separatorToken!354)))))))))

(declare-fun b!2007153 () Bool)

(declare-fun e!1268209 () Bool)

(declare-fun call!122678 () Bool)

(assert (=> b!2007153 (= e!1268209 call!122678)))

(declare-fun bm!122672 () Bool)

(declare-fun call!122676 () Bool)

(assert (=> bm!122672 (= call!122676 call!122677)))

(declare-fun b!2007154 () Bool)

(declare-fun e!1268213 () Bool)

(declare-fun e!1268208 () Bool)

(assert (=> b!2007154 (= e!1268213 e!1268208)))

(assert (=> b!2007154 (= c!324177 ((_ is Star!5383) (regex!3958 (rule!6183 separatorToken!354))))))

(declare-fun b!2007155 () Bool)

(declare-fun e!1268211 () Bool)

(declare-fun e!1268212 () Bool)

(assert (=> b!2007155 (= e!1268211 e!1268212)))

(declare-fun res!880300 () Bool)

(assert (=> b!2007155 (=> (not res!880300) (not e!1268212))))

(assert (=> b!2007155 (= res!880300 call!122676)))

(declare-fun b!2007157 () Bool)

(assert (=> b!2007157 (= e!1268212 call!122678)))

(declare-fun b!2007158 () Bool)

(declare-fun e!1268207 () Bool)

(assert (=> b!2007158 (= e!1268207 call!122677)))

(declare-fun b!2007159 () Bool)

(declare-fun res!880301 () Bool)

(assert (=> b!2007159 (=> res!880301 e!1268211)))

(assert (=> b!2007159 (= res!880301 (not ((_ is Concat!9478) (regex!3958 (rule!6183 separatorToken!354)))))))

(declare-fun e!1268210 () Bool)

(assert (=> b!2007159 (= e!1268210 e!1268211)))

(declare-fun b!2007160 () Bool)

(assert (=> b!2007160 (= e!1268208 e!1268210)))

(assert (=> b!2007160 (= c!324178 ((_ is Union!5383) (regex!3958 (rule!6183 separatorToken!354))))))

(declare-fun b!2007161 () Bool)

(assert (=> b!2007161 (= e!1268208 e!1268207)))

(declare-fun res!880303 () Bool)

(assert (=> b!2007161 (= res!880303 (not (nullable!1629 (reg!5712 (regex!3958 (rule!6183 separatorToken!354))))))))

(assert (=> b!2007161 (=> (not res!880303) (not e!1268207))))

(declare-fun bm!122673 () Bool)

(assert (=> bm!122673 (= call!122678 (validRegex!2155 (ite c!324178 (regTwo!11279 (regex!3958 (rule!6183 separatorToken!354))) (regTwo!11278 (regex!3958 (rule!6183 separatorToken!354))))))))

(declare-fun b!2007156 () Bool)

(declare-fun res!880299 () Bool)

(assert (=> b!2007156 (=> (not res!880299) (not e!1268209))))

(assert (=> b!2007156 (= res!880299 call!122676)))

(assert (=> b!2007156 (= e!1268210 e!1268209)))

(declare-fun d!612916 () Bool)

(declare-fun res!880302 () Bool)

(assert (=> d!612916 (=> res!880302 e!1268213)))

(assert (=> d!612916 (= res!880302 ((_ is ElementMatch!5383) (regex!3958 (rule!6183 separatorToken!354))))))

(assert (=> d!612916 (= (validRegex!2155 (regex!3958 (rule!6183 separatorToken!354))) e!1268213)))

(assert (= (and d!612916 (not res!880302)) b!2007154))

(assert (= (and b!2007154 c!324177) b!2007161))

(assert (= (and b!2007154 (not c!324177)) b!2007160))

(assert (= (and b!2007161 res!880303) b!2007158))

(assert (= (and b!2007160 c!324178) b!2007156))

(assert (= (and b!2007160 (not c!324178)) b!2007159))

(assert (= (and b!2007156 res!880299) b!2007153))

(assert (= (and b!2007159 (not res!880301)) b!2007155))

(assert (= (and b!2007155 res!880300) b!2007157))

(assert (= (or b!2007156 b!2007155) bm!122672))

(assert (= (or b!2007153 b!2007157) bm!122673))

(assert (= (or b!2007158 bm!122672) bm!122671))

(declare-fun m!2439269 () Bool)

(assert (=> bm!122671 m!2439269))

(declare-fun m!2439271 () Bool)

(assert (=> b!2007161 m!2439271))

(declare-fun m!2439273 () Bool)

(assert (=> bm!122673 m!2439273))

(assert (=> b!2006986 d!612916))

(declare-fun d!612918 () Bool)

(assert (=> d!612918 (= (get!6967 lt!753745) (v!26831 lt!753745))))

(assert (=> b!2006975 d!612918))

(declare-fun d!612920 () Bool)

(declare-fun lt!753774 () Bool)

(declare-fun e!1268218 () Bool)

(assert (=> d!612920 (= lt!753774 e!1268218)))

(declare-fun res!880311 () Bool)

(assert (=> d!612920 (=> (not res!880311) (not e!1268218))))

(declare-datatypes ((IArray!14743 0))(
  ( (IArray!14744 (innerList!7429 List!22134)) )
))
(declare-datatypes ((Conc!7369 0))(
  ( (Node!7369 (left!17550 Conc!7369) (right!17880 Conc!7369) (csize!14968 Int) (cheight!7580 Int)) (Leaf!10811 (xs!10267 IArray!14743) (csize!14969 Int)) (Empty!7369) )
))
(declare-datatypes ((BalanceConc!14554 0))(
  ( (BalanceConc!14555 (c!324296 Conc!7369)) )
))
(declare-fun list!8978 (BalanceConc!14554) List!22134)

(declare-datatypes ((tuple2!20726 0))(
  ( (tuple2!20727 (_1!11832 BalanceConc!14554) (_2!11832 BalanceConc!14550)) )
))
(declare-fun lex!1593 (LexerInterface!3571 List!22135 BalanceConc!14550) tuple2!20726)

(declare-fun print!1539 (LexerInterface!3571 BalanceConc!14554) BalanceConc!14550)

(declare-fun singletonSeq!1940 (Token!7468) BalanceConc!14554)

(assert (=> d!612920 (= res!880311 (= (list!8978 (_1!11832 (lex!1593 thiss!23328 rules!3198 (print!1539 thiss!23328 (singletonSeq!1940 separatorToken!354))))) (list!8978 (singletonSeq!1940 separatorToken!354))))))

(declare-fun e!1268219 () Bool)

(assert (=> d!612920 (= lt!753774 e!1268219)))

(declare-fun res!880310 () Bool)

(assert (=> d!612920 (=> (not res!880310) (not e!1268219))))

(declare-fun lt!753773 () tuple2!20726)

(declare-fun size!17244 (BalanceConc!14554) Int)

(assert (=> d!612920 (= res!880310 (= (size!17244 (_1!11832 lt!753773)) 1))))

(assert (=> d!612920 (= lt!753773 (lex!1593 thiss!23328 rules!3198 (print!1539 thiss!23328 (singletonSeq!1940 separatorToken!354))))))

(assert (=> d!612920 (not (isEmpty!13670 rules!3198))))

(assert (=> d!612920 (= (rulesProduceIndividualToken!1743 thiss!23328 rules!3198 separatorToken!354) lt!753774)))

(declare-fun b!2007168 () Bool)

(declare-fun res!880312 () Bool)

(assert (=> b!2007168 (=> (not res!880312) (not e!1268219))))

(declare-fun apply!5778 (BalanceConc!14554 Int) Token!7468)

(assert (=> b!2007168 (= res!880312 (= (apply!5778 (_1!11832 lt!753773) 0) separatorToken!354))))

(declare-fun b!2007169 () Bool)

(declare-fun isEmpty!13676 (BalanceConc!14550) Bool)

(assert (=> b!2007169 (= e!1268219 (isEmpty!13676 (_2!11832 lt!753773)))))

(declare-fun b!2007170 () Bool)

(assert (=> b!2007170 (= e!1268218 (isEmpty!13676 (_2!11832 (lex!1593 thiss!23328 rules!3198 (print!1539 thiss!23328 (singletonSeq!1940 separatorToken!354))))))))

(assert (= (and d!612920 res!880310) b!2007168))

(assert (= (and b!2007168 res!880312) b!2007169))

(assert (= (and d!612920 res!880311) b!2007170))

(declare-fun m!2439275 () Bool)

(assert (=> d!612920 m!2439275))

(declare-fun m!2439277 () Bool)

(assert (=> d!612920 m!2439277))

(assert (=> d!612920 m!2439277))

(declare-fun m!2439279 () Bool)

(assert (=> d!612920 m!2439279))

(assert (=> d!612920 m!2439277))

(declare-fun m!2439281 () Bool)

(assert (=> d!612920 m!2439281))

(assert (=> d!612920 m!2439113))

(declare-fun m!2439283 () Bool)

(assert (=> d!612920 m!2439283))

(assert (=> d!612920 m!2439279))

(declare-fun m!2439285 () Bool)

(assert (=> d!612920 m!2439285))

(declare-fun m!2439287 () Bool)

(assert (=> b!2007168 m!2439287))

(declare-fun m!2439289 () Bool)

(assert (=> b!2007169 m!2439289))

(assert (=> b!2007170 m!2439277))

(assert (=> b!2007170 m!2439277))

(assert (=> b!2007170 m!2439279))

(assert (=> b!2007170 m!2439279))

(assert (=> b!2007170 m!2439285))

(declare-fun m!2439291 () Bool)

(assert (=> b!2007170 m!2439291))

(assert (=> b!2006996 d!612920))

(declare-fun d!612922 () Bool)

(declare-fun res!880317 () Bool)

(declare-fun e!1268224 () Bool)

(assert (=> d!612922 (=> res!880317 e!1268224)))

(assert (=> d!612922 (= res!880317 (not ((_ is Cons!22053) rules!3198)))))

(assert (=> d!612922 (= (sepAndNonSepRulesDisjointChars!1056 rules!3198 rules!3198) e!1268224)))

(declare-fun b!2007175 () Bool)

(declare-fun e!1268225 () Bool)

(assert (=> b!2007175 (= e!1268224 e!1268225)))

(declare-fun res!880318 () Bool)

(assert (=> b!2007175 (=> (not res!880318) (not e!1268225))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!469 (Rule!7716 List!22135) Bool)

(assert (=> b!2007175 (= res!880318 (ruleDisjointCharsFromAllFromOtherType!469 (h!27454 rules!3198) rules!3198))))

(declare-fun b!2007176 () Bool)

(assert (=> b!2007176 (= e!1268225 (sepAndNonSepRulesDisjointChars!1056 rules!3198 (t!187202 rules!3198)))))

(assert (= (and d!612922 (not res!880317)) b!2007175))

(assert (= (and b!2007175 res!880318) b!2007176))

(declare-fun m!2439293 () Bool)

(assert (=> b!2007175 m!2439293))

(declare-fun m!2439295 () Bool)

(assert (=> b!2007176 m!2439295))

(assert (=> b!2006985 d!612922))

(declare-fun d!612924 () Bool)

(declare-fun c!324184 () Bool)

(assert (=> d!612924 (= c!324184 ((_ is IntegerValue!12282) (value!124394 separatorToken!354)))))

(declare-fun e!1268233 () Bool)

(assert (=> d!612924 (= (inv!21 (value!124394 separatorToken!354)) e!1268233)))

(declare-fun b!2007187 () Bool)

(declare-fun res!880321 () Bool)

(declare-fun e!1268234 () Bool)

(assert (=> b!2007187 (=> res!880321 e!1268234)))

(assert (=> b!2007187 (= res!880321 (not ((_ is IntegerValue!12284) (value!124394 separatorToken!354))))))

(declare-fun e!1268232 () Bool)

(assert (=> b!2007187 (= e!1268232 e!1268234)))

(declare-fun b!2007188 () Bool)

(declare-fun inv!17 (TokenValue!4094) Bool)

(assert (=> b!2007188 (= e!1268232 (inv!17 (value!124394 separatorToken!354)))))

(declare-fun b!2007189 () Bool)

(assert (=> b!2007189 (= e!1268233 e!1268232)))

(declare-fun c!324183 () Bool)

(assert (=> b!2007189 (= c!324183 ((_ is IntegerValue!12283) (value!124394 separatorToken!354)))))

(declare-fun b!2007190 () Bool)

(declare-fun inv!15 (TokenValue!4094) Bool)

(assert (=> b!2007190 (= e!1268234 (inv!15 (value!124394 separatorToken!354)))))

(declare-fun b!2007191 () Bool)

(declare-fun inv!16 (TokenValue!4094) Bool)

(assert (=> b!2007191 (= e!1268233 (inv!16 (value!124394 separatorToken!354)))))

(assert (= (and d!612924 c!324184) b!2007191))

(assert (= (and d!612924 (not c!324184)) b!2007189))

(assert (= (and b!2007189 c!324183) b!2007188))

(assert (= (and b!2007189 (not c!324183)) b!2007187))

(assert (= (and b!2007187 (not res!880321)) b!2007190))

(declare-fun m!2439297 () Bool)

(assert (=> b!2007188 m!2439297))

(declare-fun m!2439299 () Bool)

(assert (=> b!2007190 m!2439299))

(declare-fun m!2439301 () Bool)

(assert (=> b!2007191 m!2439301))

(assert (=> b!2006979 d!612924))

(declare-fun b!2007250 () Bool)

(declare-fun e!1268266 () Bool)

(assert (=> b!2007250 (= e!1268266 true)))

(declare-fun d!612926 () Bool)

(assert (=> d!612926 e!1268266))

(assert (= d!612926 b!2007250))

(declare-fun order!13983 () Int)

(declare-fun lambda!76000 () Int)

(declare-fun order!13981 () Int)

(declare-fun dynLambda!10841 (Int Int) Int)

(declare-fun dynLambda!10842 (Int Int) Int)

(assert (=> b!2007250 (< (dynLambda!10841 order!13981 (toValue!5623 (transformation!3958 (rule!6183 (h!27453 tokens!598))))) (dynLambda!10842 order!13983 lambda!76000))))

(declare-fun order!13985 () Int)

(declare-fun dynLambda!10843 (Int Int) Int)

(assert (=> b!2007250 (< (dynLambda!10843 order!13985 (toChars!5482 (transformation!3958 (rule!6183 (h!27453 tokens!598))))) (dynLambda!10842 order!13983 lambda!76000))))

(declare-fun dynLambda!10844 (Int BalanceConc!14550) TokenValue!4094)

(assert (=> d!612926 (= (dynLambda!10844 (toValue!5623 (transformation!3958 (rule!6183 (h!27453 tokens!598)))) lt!753748) (dynLambda!10844 (toValue!5623 (transformation!3958 (rule!6183 (h!27453 tokens!598)))) (seqFromList!2812 (originalCharacters!4765 (h!27453 tokens!598)))))))

(declare-fun lt!753801 () Unit!36610)

(declare-fun Forall2of!221 (Int BalanceConc!14550 BalanceConc!14550) Unit!36610)

(assert (=> d!612926 (= lt!753801 (Forall2of!221 lambda!76000 lt!753748 (seqFromList!2812 (originalCharacters!4765 (h!27453 tokens!598)))))))

(assert (=> d!612926 (= (list!8975 lt!753748) (list!8975 (seqFromList!2812 (originalCharacters!4765 (h!27453 tokens!598)))))))

(assert (=> d!612926 (= (lemmaEqSameImage!644 (transformation!3958 (rule!6183 (h!27453 tokens!598))) lt!753748 (seqFromList!2812 (originalCharacters!4765 (h!27453 tokens!598)))) lt!753801)))

(declare-fun b_lambda!66911 () Bool)

(assert (=> (not b_lambda!66911) (not d!612926)))

(declare-fun t!187244 () Bool)

(declare-fun tb!125273 () Bool)

(assert (=> (and b!2006989 (= (toValue!5623 (transformation!3958 (rule!6183 separatorToken!354))) (toValue!5623 (transformation!3958 (rule!6183 (h!27453 tokens!598))))) t!187244) tb!125273))

(declare-fun result!150122 () Bool)

(assert (=> tb!125273 (= result!150122 (inv!21 (dynLambda!10844 (toValue!5623 (transformation!3958 (rule!6183 (h!27453 tokens!598)))) lt!753748)))))

(declare-fun m!2439371 () Bool)

(assert (=> tb!125273 m!2439371))

(assert (=> d!612926 t!187244))

(declare-fun b_and!158391 () Bool)

(assert (= b_and!158337 (and (=> t!187244 result!150122) b_and!158391)))

(declare-fun tb!125275 () Bool)

(declare-fun t!187246 () Bool)

(assert (=> (and b!2006984 (= (toValue!5623 (transformation!3958 (h!27454 rules!3198))) (toValue!5623 (transformation!3958 (rule!6183 (h!27453 tokens!598))))) t!187246) tb!125275))

(declare-fun result!150126 () Bool)

(assert (= result!150126 result!150122))

(assert (=> d!612926 t!187246))

(declare-fun b_and!158393 () Bool)

(assert (= b_and!158341 (and (=> t!187246 result!150126) b_and!158393)))

(declare-fun t!187248 () Bool)

(declare-fun tb!125277 () Bool)

(assert (=> (and b!2006981 (= (toValue!5623 (transformation!3958 (rule!6183 (h!27453 tokens!598)))) (toValue!5623 (transformation!3958 (rule!6183 (h!27453 tokens!598))))) t!187248) tb!125277))

(declare-fun result!150128 () Bool)

(assert (= result!150128 result!150122))

(assert (=> d!612926 t!187248))

(declare-fun b_and!158395 () Bool)

(assert (= b_and!158345 (and (=> t!187248 result!150128) b_and!158395)))

(declare-fun b_lambda!66913 () Bool)

(assert (=> (not b_lambda!66913) (not d!612926)))

(declare-fun tb!125279 () Bool)

(declare-fun t!187250 () Bool)

(assert (=> (and b!2006989 (= (toValue!5623 (transformation!3958 (rule!6183 separatorToken!354))) (toValue!5623 (transformation!3958 (rule!6183 (h!27453 tokens!598))))) t!187250) tb!125279))

(declare-fun result!150130 () Bool)

(assert (=> tb!125279 (= result!150130 (inv!21 (dynLambda!10844 (toValue!5623 (transformation!3958 (rule!6183 (h!27453 tokens!598)))) (seqFromList!2812 (originalCharacters!4765 (h!27453 tokens!598))))))))

(declare-fun m!2439373 () Bool)

(assert (=> tb!125279 m!2439373))

(assert (=> d!612926 t!187250))

(declare-fun b_and!158397 () Bool)

(assert (= b_and!158391 (and (=> t!187250 result!150130) b_and!158397)))

(declare-fun t!187252 () Bool)

(declare-fun tb!125281 () Bool)

(assert (=> (and b!2006984 (= (toValue!5623 (transformation!3958 (h!27454 rules!3198))) (toValue!5623 (transformation!3958 (rule!6183 (h!27453 tokens!598))))) t!187252) tb!125281))

(declare-fun result!150132 () Bool)

(assert (= result!150132 result!150130))

(assert (=> d!612926 t!187252))

(declare-fun b_and!158399 () Bool)

(assert (= b_and!158393 (and (=> t!187252 result!150132) b_and!158399)))

(declare-fun t!187254 () Bool)

(declare-fun tb!125283 () Bool)

(assert (=> (and b!2006981 (= (toValue!5623 (transformation!3958 (rule!6183 (h!27453 tokens!598)))) (toValue!5623 (transformation!3958 (rule!6183 (h!27453 tokens!598))))) t!187254) tb!125283))

(declare-fun result!150134 () Bool)

(assert (= result!150134 result!150130))

(assert (=> d!612926 t!187254))

(declare-fun b_and!158401 () Bool)

(assert (= b_and!158395 (and (=> t!187254 result!150134) b_and!158401)))

(assert (=> d!612926 m!2439121))

(assert (=> d!612926 m!2439119))

(declare-fun m!2439375 () Bool)

(assert (=> d!612926 m!2439375))

(declare-fun m!2439377 () Bool)

(assert (=> d!612926 m!2439377))

(assert (=> d!612926 m!2439119))

(declare-fun m!2439379 () Bool)

(assert (=> d!612926 m!2439379))

(assert (=> d!612926 m!2439119))

(declare-fun m!2439381 () Bool)

(assert (=> d!612926 m!2439381))

(assert (=> b!2007000 d!612926))

(declare-fun b!2007334 () Bool)

(declare-fun res!880386 () Bool)

(declare-fun e!1268315 () Bool)

(assert (=> b!2007334 (=> (not res!880386) (not e!1268315))))

(declare-fun lt!753848 () Option!4597)

(assert (=> b!2007334 (= res!880386 (= (list!8975 (charsOf!2498 (_1!11830 (get!6967 lt!753848)))) (originalCharacters!4765 (_1!11830 (get!6967 lt!753848)))))))

(declare-fun b!2007335 () Bool)

(declare-fun e!1268313 () Option!4597)

(declare-fun lt!753851 () Option!4597)

(declare-fun lt!753850 () Option!4597)

(assert (=> b!2007335 (= e!1268313 (ite (and ((_ is None!4596) lt!753851) ((_ is None!4596) lt!753850)) None!4596 (ite ((_ is None!4596) lt!753850) lt!753851 (ite ((_ is None!4596) lt!753851) lt!753850 (ite (>= (size!17240 (_1!11830 (v!26831 lt!753851))) (size!17240 (_1!11830 (v!26831 lt!753850)))) lt!753851 lt!753850)))))))

(declare-fun call!122700 () Option!4597)

(assert (=> b!2007335 (= lt!753851 call!122700)))

(assert (=> b!2007335 (= lt!753850 (maxPrefix!2007 thiss!23328 (t!187202 rules!3198) (++!5951 lt!753753 lt!753756)))))

(declare-fun b!2007336 () Bool)

(declare-fun contains!4028 (List!22135 Rule!7716) Bool)

(assert (=> b!2007336 (= e!1268315 (contains!4028 rules!3198 (rule!6183 (_1!11830 (get!6967 lt!753848)))))))

(declare-fun b!2007337 () Bool)

(assert (=> b!2007337 (= e!1268313 call!122700)))

(declare-fun b!2007338 () Bool)

(declare-fun res!880384 () Bool)

(assert (=> b!2007338 (=> (not res!880384) (not e!1268315))))

(assert (=> b!2007338 (= res!880384 (matchR!2649 (regex!3958 (rule!6183 (_1!11830 (get!6967 lt!753848)))) (list!8975 (charsOf!2498 (_1!11830 (get!6967 lt!753848))))))))

(declare-fun d!612938 () Bool)

(declare-fun e!1268314 () Bool)

(assert (=> d!612938 e!1268314))

(declare-fun res!880383 () Bool)

(assert (=> d!612938 (=> res!880383 e!1268314)))

(declare-fun isEmpty!13677 (Option!4597) Bool)

(assert (=> d!612938 (= res!880383 (isEmpty!13677 lt!753848))))

(assert (=> d!612938 (= lt!753848 e!1268313)))

(declare-fun c!324210 () Bool)

(assert (=> d!612938 (= c!324210 (and ((_ is Cons!22053) rules!3198) ((_ is Nil!22053) (t!187202 rules!3198))))))

(declare-fun lt!753849 () Unit!36610)

(declare-fun lt!753847 () Unit!36610)

(assert (=> d!612938 (= lt!753849 lt!753847)))

(declare-fun isPrefix!1961 (List!22133 List!22133) Bool)

(assert (=> d!612938 (isPrefix!1961 (++!5951 lt!753753 lt!753756) (++!5951 lt!753753 lt!753756))))

(declare-fun lemmaIsPrefixRefl!1279 (List!22133 List!22133) Unit!36610)

(assert (=> d!612938 (= lt!753847 (lemmaIsPrefixRefl!1279 (++!5951 lt!753753 lt!753756) (++!5951 lt!753753 lt!753756)))))

(declare-fun rulesValidInductive!1360 (LexerInterface!3571 List!22135) Bool)

(assert (=> d!612938 (rulesValidInductive!1360 thiss!23328 rules!3198)))

(assert (=> d!612938 (= (maxPrefix!2007 thiss!23328 rules!3198 (++!5951 lt!753753 lt!753756)) lt!753848)))

(declare-fun b!2007339 () Bool)

(declare-fun res!880385 () Bool)

(assert (=> b!2007339 (=> (not res!880385) (not e!1268315))))

(assert (=> b!2007339 (= res!880385 (< (size!17243 (_2!11830 (get!6967 lt!753848))) (size!17243 (++!5951 lt!753753 lt!753756))))))

(declare-fun bm!122695 () Bool)

(declare-fun maxPrefixOneRule!1243 (LexerInterface!3571 Rule!7716 List!22133) Option!4597)

(assert (=> bm!122695 (= call!122700 (maxPrefixOneRule!1243 thiss!23328 (h!27454 rules!3198) (++!5951 lt!753753 lt!753756)))))

(declare-fun b!2007340 () Bool)

(declare-fun res!880387 () Bool)

(assert (=> b!2007340 (=> (not res!880387) (not e!1268315))))

(assert (=> b!2007340 (= res!880387 (= (++!5951 (list!8975 (charsOf!2498 (_1!11830 (get!6967 lt!753848)))) (_2!11830 (get!6967 lt!753848))) (++!5951 lt!753753 lt!753756)))))

(declare-fun b!2007341 () Bool)

(assert (=> b!2007341 (= e!1268314 e!1268315)))

(declare-fun res!880382 () Bool)

(assert (=> b!2007341 (=> (not res!880382) (not e!1268315))))

(assert (=> b!2007341 (= res!880382 (isDefined!3886 lt!753848))))

(declare-fun b!2007342 () Bool)

(declare-fun res!880388 () Bool)

(assert (=> b!2007342 (=> (not res!880388) (not e!1268315))))

(declare-fun apply!5779 (TokenValueInjection!7772 BalanceConc!14550) TokenValue!4094)

(assert (=> b!2007342 (= res!880388 (= (value!124394 (_1!11830 (get!6967 lt!753848))) (apply!5779 (transformation!3958 (rule!6183 (_1!11830 (get!6967 lt!753848)))) (seqFromList!2812 (originalCharacters!4765 (_1!11830 (get!6967 lt!753848)))))))))

(assert (= (and d!612938 c!324210) b!2007337))

(assert (= (and d!612938 (not c!324210)) b!2007335))

(assert (= (or b!2007337 b!2007335) bm!122695))

(assert (= (and d!612938 (not res!880383)) b!2007341))

(assert (= (and b!2007341 res!880382) b!2007334))

(assert (= (and b!2007334 res!880386) b!2007339))

(assert (= (and b!2007339 res!880385) b!2007340))

(assert (= (and b!2007340 res!880387) b!2007342))

(assert (= (and b!2007342 res!880388) b!2007338))

(assert (= (and b!2007338 res!880384) b!2007336))

(declare-fun m!2439485 () Bool)

(assert (=> b!2007341 m!2439485))

(assert (=> bm!122695 m!2439117))

(declare-fun m!2439489 () Bool)

(assert (=> bm!122695 m!2439489))

(declare-fun m!2439491 () Bool)

(assert (=> b!2007336 m!2439491))

(declare-fun m!2439495 () Bool)

(assert (=> b!2007336 m!2439495))

(assert (=> b!2007335 m!2439117))

(declare-fun m!2439497 () Bool)

(assert (=> b!2007335 m!2439497))

(assert (=> b!2007339 m!2439491))

(declare-fun m!2439499 () Bool)

(assert (=> b!2007339 m!2439499))

(assert (=> b!2007339 m!2439117))

(declare-fun m!2439501 () Bool)

(assert (=> b!2007339 m!2439501))

(assert (=> b!2007338 m!2439491))

(declare-fun m!2439503 () Bool)

(assert (=> b!2007338 m!2439503))

(assert (=> b!2007338 m!2439503))

(declare-fun m!2439505 () Bool)

(assert (=> b!2007338 m!2439505))

(assert (=> b!2007338 m!2439505))

(declare-fun m!2439507 () Bool)

(assert (=> b!2007338 m!2439507))

(declare-fun m!2439509 () Bool)

(assert (=> d!612938 m!2439509))

(assert (=> d!612938 m!2439117))

(assert (=> d!612938 m!2439117))

(declare-fun m!2439511 () Bool)

(assert (=> d!612938 m!2439511))

(assert (=> d!612938 m!2439117))

(assert (=> d!612938 m!2439117))

(declare-fun m!2439513 () Bool)

(assert (=> d!612938 m!2439513))

(declare-fun m!2439515 () Bool)

(assert (=> d!612938 m!2439515))

(assert (=> b!2007340 m!2439491))

(assert (=> b!2007340 m!2439503))

(assert (=> b!2007340 m!2439503))

(assert (=> b!2007340 m!2439505))

(assert (=> b!2007340 m!2439505))

(declare-fun m!2439517 () Bool)

(assert (=> b!2007340 m!2439517))

(assert (=> b!2007334 m!2439491))

(assert (=> b!2007334 m!2439503))

(assert (=> b!2007334 m!2439503))

(assert (=> b!2007334 m!2439505))

(assert (=> b!2007342 m!2439491))

(declare-fun m!2439519 () Bool)

(assert (=> b!2007342 m!2439519))

(assert (=> b!2007342 m!2439519))

(declare-fun m!2439521 () Bool)

(assert (=> b!2007342 m!2439521))

(assert (=> b!2007000 d!612938))

(declare-fun bs!419599 () Bool)

(declare-fun b!2007517 () Bool)

(assert (= bs!419599 (and b!2007517 b!2006999)))

(declare-fun lambda!76006 () Int)

(assert (=> bs!419599 (not (= lambda!76006 lambda!75991))))

(declare-fun b!2007533 () Bool)

(declare-fun e!1268427 () Bool)

(assert (=> b!2007533 (= e!1268427 true)))

(declare-fun b!2007532 () Bool)

(declare-fun e!1268426 () Bool)

(assert (=> b!2007532 (= e!1268426 e!1268427)))

(declare-fun b!2007531 () Bool)

(declare-fun e!1268425 () Bool)

(assert (=> b!2007531 (= e!1268425 e!1268426)))

(assert (=> b!2007517 e!1268425))

(assert (= b!2007532 b!2007533))

(assert (= b!2007531 b!2007532))

(assert (= (and b!2007517 ((_ is Cons!22053) rules!3198)) b!2007531))

(declare-fun order!13989 () Int)

(declare-fun dynLambda!10846 (Int Int) Int)

(assert (=> b!2007533 (< (dynLambda!10841 order!13981 (toValue!5623 (transformation!3958 (h!27454 rules!3198)))) (dynLambda!10846 order!13989 lambda!76006))))

(assert (=> b!2007533 (< (dynLambda!10843 order!13985 (toChars!5482 (transformation!3958 (h!27454 rules!3198)))) (dynLambda!10846 order!13989 lambda!76006))))

(assert (=> b!2007517 true))

(declare-fun bm!122722 () Bool)

(declare-fun call!122727 () BalanceConc!14550)

(declare-fun call!122729 () BalanceConc!14550)

(assert (=> bm!122722 (= call!122727 call!122729)))

(declare-fun bm!122723 () Bool)

(declare-fun c!324263 () Bool)

(declare-fun c!324262 () Bool)

(assert (=> bm!122723 (= c!324263 c!324262)))

(declare-fun e!1268418 () List!22133)

(declare-fun lt!753890 () List!22133)

(declare-fun call!122731 () List!22133)

(declare-fun call!122728 () List!22133)

(assert (=> bm!122723 (= call!122728 (++!5951 e!1268418 (ite c!324262 lt!753890 call!122731)))))

(declare-fun d!612962 () Bool)

(declare-fun c!324261 () Bool)

(assert (=> d!612962 (= c!324261 ((_ is Cons!22052) (t!187201 tokens!598)))))

(declare-fun e!1268417 () List!22133)

(assert (=> d!612962 (= (printWithSeparatorTokenWhenNeededList!600 thiss!23328 rules!3198 (t!187201 tokens!598) separatorToken!354) e!1268417)))

(declare-fun b!2007515 () Bool)

(declare-fun e!1268416 () List!22133)

(assert (=> b!2007515 (= e!1268416 call!122728)))

(declare-fun bm!122724 () Bool)

(declare-fun call!122730 () List!22133)

(assert (=> bm!122724 (= call!122731 call!122730)))

(declare-fun b!2007516 () Bool)

(assert (=> b!2007516 (= e!1268418 (list!8975 (charsOf!2498 (h!27453 (t!187201 tokens!598)))))))

(assert (=> b!2007517 (= e!1268417 e!1268416)))

(declare-fun lt!753889 () Unit!36610)

(declare-fun forallContained!724 (List!22134 Int Token!7468) Unit!36610)

(assert (=> b!2007517 (= lt!753889 (forallContained!724 (t!187201 tokens!598) lambda!76006 (h!27453 (t!187201 tokens!598))))))

(assert (=> b!2007517 (= lt!753890 (printWithSeparatorTokenWhenNeededList!600 thiss!23328 rules!3198 (t!187201 (t!187201 tokens!598)) separatorToken!354))))

(declare-fun lt!753887 () Option!4597)

(assert (=> b!2007517 (= lt!753887 (maxPrefix!2007 thiss!23328 rules!3198 (++!5951 (list!8975 (charsOf!2498 (h!27453 (t!187201 tokens!598)))) lt!753890)))))

(assert (=> b!2007517 (= c!324262 (and ((_ is Some!4596) lt!753887) (= (_1!11830 (v!26831 lt!753887)) (h!27453 (t!187201 tokens!598)))))))

(declare-fun b!2007518 () Bool)

(declare-fun c!324260 () Bool)

(assert (=> b!2007518 (= c!324260 (and ((_ is Some!4596) lt!753887) (not (= (_1!11830 (v!26831 lt!753887)) (h!27453 (t!187201 tokens!598))))))))

(declare-fun e!1268415 () List!22133)

(assert (=> b!2007518 (= e!1268416 e!1268415)))

(declare-fun b!2007519 () Bool)

(assert (=> b!2007519 (= e!1268417 Nil!22051)))

(declare-fun bm!122725 () Bool)

(assert (=> bm!122725 (= call!122729 (charsOf!2498 (ite c!324262 (h!27453 (t!187201 tokens!598)) (ite c!324260 separatorToken!354 (h!27453 (t!187201 tokens!598))))))))

(declare-fun b!2007520 () Bool)

(assert (=> b!2007520 (= e!1268415 (++!5951 call!122728 lt!753890))))

(declare-fun bm!122726 () Bool)

(assert (=> bm!122726 (= call!122730 (list!8975 (ite c!324262 call!122729 call!122727)))))

(declare-fun b!2007521 () Bool)

(assert (=> b!2007521 (= e!1268415 Nil!22051)))

(declare-fun printTailRec!1045 (LexerInterface!3571 BalanceConc!14554 Int BalanceConc!14550) BalanceConc!14550)

(assert (=> b!2007521 (= (print!1539 thiss!23328 (singletonSeq!1940 (h!27453 (t!187201 tokens!598)))) (printTailRec!1045 thiss!23328 (singletonSeq!1940 (h!27453 (t!187201 tokens!598))) 0 (BalanceConc!14551 Empty!7367)))))

(declare-fun lt!753891 () Unit!36610)

(declare-fun Unit!36614 () Unit!36610)

(assert (=> b!2007521 (= lt!753891 Unit!36614)))

(declare-fun lt!753886 () Unit!36610)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!755 (LexerInterface!3571 List!22135 List!22133 List!22133) Unit!36610)

(assert (=> b!2007521 (= lt!753886 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!755 thiss!23328 rules!3198 call!122731 lt!753890))))

(assert (=> b!2007521 false))

(declare-fun lt!753888 () Unit!36610)

(declare-fun Unit!36615 () Unit!36610)

(assert (=> b!2007521 (= lt!753888 Unit!36615)))

(declare-fun b!2007522 () Bool)

(assert (=> b!2007522 (= e!1268418 call!122730)))

(assert (= (and d!612962 c!324261) b!2007517))

(assert (= (and d!612962 (not c!324261)) b!2007519))

(assert (= (and b!2007517 c!324262) b!2007515))

(assert (= (and b!2007517 (not c!324262)) b!2007518))

(assert (= (and b!2007518 c!324260) b!2007520))

(assert (= (and b!2007518 (not c!324260)) b!2007521))

(assert (= (or b!2007520 b!2007521) bm!122722))

(assert (= (or b!2007520 b!2007521) bm!122724))

(assert (= (or b!2007515 bm!122722) bm!122725))

(assert (= (or b!2007515 bm!122724) bm!122726))

(assert (= (or b!2007515 b!2007520) bm!122723))

(assert (= (and bm!122723 c!324263) b!2007522))

(assert (= (and bm!122723 (not c!324263)) b!2007516))

(declare-fun m!2439647 () Bool)

(assert (=> b!2007521 m!2439647))

(assert (=> b!2007521 m!2439647))

(declare-fun m!2439649 () Bool)

(assert (=> b!2007521 m!2439649))

(assert (=> b!2007521 m!2439647))

(declare-fun m!2439651 () Bool)

(assert (=> b!2007521 m!2439651))

(declare-fun m!2439653 () Bool)

(assert (=> b!2007521 m!2439653))

(declare-fun m!2439655 () Bool)

(assert (=> bm!122726 m!2439655))

(declare-fun m!2439657 () Bool)

(assert (=> bm!122725 m!2439657))

(declare-fun m!2439659 () Bool)

(assert (=> bm!122723 m!2439659))

(declare-fun m!2439661 () Bool)

(assert (=> b!2007520 m!2439661))

(declare-fun m!2439663 () Bool)

(assert (=> b!2007517 m!2439663))

(declare-fun m!2439665 () Bool)

(assert (=> b!2007517 m!2439665))

(declare-fun m!2439667 () Bool)

(assert (=> b!2007517 m!2439667))

(declare-fun m!2439669 () Bool)

(assert (=> b!2007517 m!2439669))

(declare-fun m!2439671 () Bool)

(assert (=> b!2007517 m!2439671))

(declare-fun m!2439673 () Bool)

(assert (=> b!2007517 m!2439673))

(assert (=> b!2007517 m!2439673))

(assert (=> b!2007517 m!2439663))

(assert (=> b!2007517 m!2439671))

(assert (=> b!2007516 m!2439671))

(assert (=> b!2007516 m!2439671))

(assert (=> b!2007516 m!2439673))

(assert (=> b!2007000 d!612962))

(declare-fun d!613006 () Bool)

(declare-fun list!8979 (Conc!7367) List!22133)

(assert (=> d!613006 (= (list!8975 lt!753748) (list!8979 (c!324154 lt!753748)))))

(declare-fun bs!419602 () Bool)

(assert (= bs!419602 d!613006))

(declare-fun m!2439685 () Bool)

(assert (=> bs!419602 m!2439685))

(assert (=> b!2007000 d!613006))

(declare-fun d!613012 () Bool)

(declare-fun e!1268484 () Bool)

(assert (=> d!613012 e!1268484))

(declare-fun res!880471 () Bool)

(assert (=> d!613012 (=> res!880471 e!1268484)))

(declare-fun lt!753899 () Option!4598)

(declare-fun isEmpty!13678 (Option!4598) Bool)

(assert (=> d!613012 (= res!880471 (isEmpty!13678 lt!753899))))

(declare-fun e!1268481 () Option!4598)

(assert (=> d!613012 (= lt!753899 e!1268481)))

(declare-fun c!324268 () Bool)

(assert (=> d!613012 (= c!324268 (and ((_ is Cons!22053) rules!3198) (= (tag!4420 (h!27454 rules!3198)) (tag!4420 (rule!6183 separatorToken!354)))))))

(assert (=> d!613012 (rulesInvariant!3178 thiss!23328 rules!3198)))

(assert (=> d!613012 (= (getRuleFromTag!773 thiss!23328 rules!3198 (tag!4420 (rule!6183 separatorToken!354))) lt!753899)))

(declare-fun b!2007607 () Bool)

(assert (=> b!2007607 (= e!1268481 (Some!4597 (h!27454 rules!3198)))))

(declare-fun b!2007608 () Bool)

(declare-fun e!1268482 () Bool)

(assert (=> b!2007608 (= e!1268484 e!1268482)))

(declare-fun res!880470 () Bool)

(assert (=> b!2007608 (=> (not res!880470) (not e!1268482))))

(assert (=> b!2007608 (= res!880470 (contains!4028 rules!3198 (get!6968 lt!753899)))))

(declare-fun b!2007609 () Bool)

(assert (=> b!2007609 (= e!1268482 (= (tag!4420 (get!6968 lt!753899)) (tag!4420 (rule!6183 separatorToken!354))))))

(declare-fun b!2007610 () Bool)

(declare-fun e!1268483 () Option!4598)

(assert (=> b!2007610 (= e!1268481 e!1268483)))

(declare-fun c!324269 () Bool)

(assert (=> b!2007610 (= c!324269 (and ((_ is Cons!22053) rules!3198) (not (= (tag!4420 (h!27454 rules!3198)) (tag!4420 (rule!6183 separatorToken!354))))))))

(declare-fun b!2007611 () Bool)

(declare-fun lt!753901 () Unit!36610)

(declare-fun lt!753900 () Unit!36610)

(assert (=> b!2007611 (= lt!753901 lt!753900)))

(assert (=> b!2007611 (rulesInvariant!3178 thiss!23328 (t!187202 rules!3198))))

(declare-fun lemmaInvariantOnRulesThenOnTail!286 (LexerInterface!3571 Rule!7716 List!22135) Unit!36610)

(assert (=> b!2007611 (= lt!753900 (lemmaInvariantOnRulesThenOnTail!286 thiss!23328 (h!27454 rules!3198) (t!187202 rules!3198)))))

(assert (=> b!2007611 (= e!1268483 (getRuleFromTag!773 thiss!23328 (t!187202 rules!3198) (tag!4420 (rule!6183 separatorToken!354))))))

(declare-fun b!2007612 () Bool)

(assert (=> b!2007612 (= e!1268483 None!4597)))

(assert (= (and d!613012 c!324268) b!2007607))

(assert (= (and d!613012 (not c!324268)) b!2007610))

(assert (= (and b!2007610 c!324269) b!2007611))

(assert (= (and b!2007610 (not c!324269)) b!2007612))

(assert (= (and d!613012 (not res!880471)) b!2007608))

(assert (= (and b!2007608 res!880470) b!2007609))

(declare-fun m!2439699 () Bool)

(assert (=> d!613012 m!2439699))

(assert (=> d!613012 m!2439153))

(declare-fun m!2439701 () Bool)

(assert (=> b!2007608 m!2439701))

(assert (=> b!2007608 m!2439701))

(declare-fun m!2439703 () Bool)

(assert (=> b!2007608 m!2439703))

(assert (=> b!2007609 m!2439701))

(declare-fun m!2439705 () Bool)

(assert (=> b!2007611 m!2439705))

(declare-fun m!2439707 () Bool)

(assert (=> b!2007611 m!2439707))

(declare-fun m!2439709 () Bool)

(assert (=> b!2007611 m!2439709))

(assert (=> b!2007000 d!613012))

(declare-fun d!613016 () Bool)

(declare-fun e!1268488 () Bool)

(assert (=> d!613016 e!1268488))

(declare-fun res!880473 () Bool)

(assert (=> d!613016 (=> res!880473 e!1268488)))

(declare-fun lt!753902 () Option!4598)

(assert (=> d!613016 (= res!880473 (isEmpty!13678 lt!753902))))

(declare-fun e!1268485 () Option!4598)

(assert (=> d!613016 (= lt!753902 e!1268485)))

(declare-fun c!324270 () Bool)

(assert (=> d!613016 (= c!324270 (and ((_ is Cons!22053) rules!3198) (= (tag!4420 (h!27454 rules!3198)) (tag!4420 (rule!6183 (h!27453 tokens!598))))))))

(assert (=> d!613016 (rulesInvariant!3178 thiss!23328 rules!3198)))

(assert (=> d!613016 (= (getRuleFromTag!773 thiss!23328 rules!3198 (tag!4420 (rule!6183 (h!27453 tokens!598)))) lt!753902)))

(declare-fun b!2007613 () Bool)

(assert (=> b!2007613 (= e!1268485 (Some!4597 (h!27454 rules!3198)))))

(declare-fun b!2007614 () Bool)

(declare-fun e!1268486 () Bool)

(assert (=> b!2007614 (= e!1268488 e!1268486)))

(declare-fun res!880472 () Bool)

(assert (=> b!2007614 (=> (not res!880472) (not e!1268486))))

(assert (=> b!2007614 (= res!880472 (contains!4028 rules!3198 (get!6968 lt!753902)))))

(declare-fun b!2007615 () Bool)

(assert (=> b!2007615 (= e!1268486 (= (tag!4420 (get!6968 lt!753902)) (tag!4420 (rule!6183 (h!27453 tokens!598)))))))

(declare-fun b!2007616 () Bool)

(declare-fun e!1268487 () Option!4598)

(assert (=> b!2007616 (= e!1268485 e!1268487)))

(declare-fun c!324271 () Bool)

(assert (=> b!2007616 (= c!324271 (and ((_ is Cons!22053) rules!3198) (not (= (tag!4420 (h!27454 rules!3198)) (tag!4420 (rule!6183 (h!27453 tokens!598)))))))))

(declare-fun b!2007617 () Bool)

(declare-fun lt!753904 () Unit!36610)

(declare-fun lt!753903 () Unit!36610)

(assert (=> b!2007617 (= lt!753904 lt!753903)))

(assert (=> b!2007617 (rulesInvariant!3178 thiss!23328 (t!187202 rules!3198))))

(assert (=> b!2007617 (= lt!753903 (lemmaInvariantOnRulesThenOnTail!286 thiss!23328 (h!27454 rules!3198) (t!187202 rules!3198)))))

(assert (=> b!2007617 (= e!1268487 (getRuleFromTag!773 thiss!23328 (t!187202 rules!3198) (tag!4420 (rule!6183 (h!27453 tokens!598)))))))

(declare-fun b!2007618 () Bool)

(assert (=> b!2007618 (= e!1268487 None!4597)))

(assert (= (and d!613016 c!324270) b!2007613))

(assert (= (and d!613016 (not c!324270)) b!2007616))

(assert (= (and b!2007616 c!324271) b!2007617))

(assert (= (and b!2007616 (not c!324271)) b!2007618))

(assert (= (and d!613016 (not res!880473)) b!2007614))

(assert (= (and b!2007614 res!880472) b!2007615))

(declare-fun m!2439711 () Bool)

(assert (=> d!613016 m!2439711))

(assert (=> d!613016 m!2439153))

(declare-fun m!2439713 () Bool)

(assert (=> b!2007614 m!2439713))

(assert (=> b!2007614 m!2439713))

(declare-fun m!2439715 () Bool)

(assert (=> b!2007614 m!2439715))

(assert (=> b!2007615 m!2439713))

(assert (=> b!2007617 m!2439705))

(assert (=> b!2007617 m!2439707))

(declare-fun m!2439717 () Bool)

(assert (=> b!2007617 m!2439717))

(assert (=> b!2007000 d!613016))

(declare-fun b!2007628 () Bool)

(declare-fun e!1268494 () List!22133)

(assert (=> b!2007628 (= e!1268494 (Cons!22051 (h!27452 lt!753753) (++!5951 (t!187200 lt!753753) lt!753756)))))

(declare-fun lt!753907 () List!22133)

(declare-fun e!1268493 () Bool)

(declare-fun b!2007630 () Bool)

(assert (=> b!2007630 (= e!1268493 (or (not (= lt!753756 Nil!22051)) (= lt!753907 lt!753753)))))

(declare-fun d!613018 () Bool)

(assert (=> d!613018 e!1268493))

(declare-fun res!880479 () Bool)

(assert (=> d!613018 (=> (not res!880479) (not e!1268493))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3229 (List!22133) (InoxSet C!10912))

(assert (=> d!613018 (= res!880479 (= (content!3229 lt!753907) ((_ map or) (content!3229 lt!753753) (content!3229 lt!753756))))))

(assert (=> d!613018 (= lt!753907 e!1268494)))

(declare-fun c!324274 () Bool)

(assert (=> d!613018 (= c!324274 ((_ is Nil!22051) lt!753753))))

(assert (=> d!613018 (= (++!5951 lt!753753 lt!753756) lt!753907)))

(declare-fun b!2007629 () Bool)

(declare-fun res!880478 () Bool)

(assert (=> b!2007629 (=> (not res!880478) (not e!1268493))))

(assert (=> b!2007629 (= res!880478 (= (size!17243 lt!753907) (+ (size!17243 lt!753753) (size!17243 lt!753756))))))

(declare-fun b!2007627 () Bool)

(assert (=> b!2007627 (= e!1268494 lt!753756)))

(assert (= (and d!613018 c!324274) b!2007627))

(assert (= (and d!613018 (not c!324274)) b!2007628))

(assert (= (and d!613018 res!880479) b!2007629))

(assert (= (and b!2007629 res!880478) b!2007630))

(declare-fun m!2439719 () Bool)

(assert (=> b!2007628 m!2439719))

(declare-fun m!2439721 () Bool)

(assert (=> d!613018 m!2439721))

(declare-fun m!2439723 () Bool)

(assert (=> d!613018 m!2439723))

(declare-fun m!2439725 () Bool)

(assert (=> d!613018 m!2439725))

(declare-fun m!2439727 () Bool)

(assert (=> b!2007629 m!2439727))

(declare-fun m!2439729 () Bool)

(assert (=> b!2007629 m!2439729))

(declare-fun m!2439731 () Bool)

(assert (=> b!2007629 m!2439731))

(assert (=> b!2007000 d!613018))

(declare-fun b!2007631 () Bool)

(declare-fun res!880484 () Bool)

(declare-fun e!1268497 () Bool)

(assert (=> b!2007631 (=> (not res!880484) (not e!1268497))))

(declare-fun lt!753909 () Option!4597)

(assert (=> b!2007631 (= res!880484 (= (list!8975 (charsOf!2498 (_1!11830 (get!6967 lt!753909)))) (originalCharacters!4765 (_1!11830 (get!6967 lt!753909)))))))

(declare-fun b!2007632 () Bool)

(declare-fun e!1268495 () Option!4597)

(declare-fun lt!753912 () Option!4597)

(declare-fun lt!753911 () Option!4597)

(assert (=> b!2007632 (= e!1268495 (ite (and ((_ is None!4596) lt!753912) ((_ is None!4596) lt!753911)) None!4596 (ite ((_ is None!4596) lt!753911) lt!753912 (ite ((_ is None!4596) lt!753912) lt!753911 (ite (>= (size!17240 (_1!11830 (v!26831 lt!753912))) (size!17240 (_1!11830 (v!26831 lt!753911)))) lt!753912 lt!753911)))))))

(declare-fun call!122732 () Option!4597)

(assert (=> b!2007632 (= lt!753912 call!122732)))

(assert (=> b!2007632 (= lt!753911 (maxPrefix!2007 thiss!23328 (t!187202 rules!3198) lt!753753))))

(declare-fun b!2007633 () Bool)

(assert (=> b!2007633 (= e!1268497 (contains!4028 rules!3198 (rule!6183 (_1!11830 (get!6967 lt!753909)))))))

(declare-fun b!2007634 () Bool)

(assert (=> b!2007634 (= e!1268495 call!122732)))

(declare-fun b!2007635 () Bool)

(declare-fun res!880482 () Bool)

(assert (=> b!2007635 (=> (not res!880482) (not e!1268497))))

(assert (=> b!2007635 (= res!880482 (matchR!2649 (regex!3958 (rule!6183 (_1!11830 (get!6967 lt!753909)))) (list!8975 (charsOf!2498 (_1!11830 (get!6967 lt!753909))))))))

(declare-fun d!613020 () Bool)

(declare-fun e!1268496 () Bool)

(assert (=> d!613020 e!1268496))

(declare-fun res!880481 () Bool)

(assert (=> d!613020 (=> res!880481 e!1268496)))

(assert (=> d!613020 (= res!880481 (isEmpty!13677 lt!753909))))

(assert (=> d!613020 (= lt!753909 e!1268495)))

(declare-fun c!324275 () Bool)

(assert (=> d!613020 (= c!324275 (and ((_ is Cons!22053) rules!3198) ((_ is Nil!22053) (t!187202 rules!3198))))))

(declare-fun lt!753910 () Unit!36610)

(declare-fun lt!753908 () Unit!36610)

(assert (=> d!613020 (= lt!753910 lt!753908)))

(assert (=> d!613020 (isPrefix!1961 lt!753753 lt!753753)))

(assert (=> d!613020 (= lt!753908 (lemmaIsPrefixRefl!1279 lt!753753 lt!753753))))

(assert (=> d!613020 (rulesValidInductive!1360 thiss!23328 rules!3198)))

(assert (=> d!613020 (= (maxPrefix!2007 thiss!23328 rules!3198 lt!753753) lt!753909)))

(declare-fun b!2007636 () Bool)

(declare-fun res!880483 () Bool)

(assert (=> b!2007636 (=> (not res!880483) (not e!1268497))))

(assert (=> b!2007636 (= res!880483 (< (size!17243 (_2!11830 (get!6967 lt!753909))) (size!17243 lt!753753)))))

(declare-fun bm!122727 () Bool)

(assert (=> bm!122727 (= call!122732 (maxPrefixOneRule!1243 thiss!23328 (h!27454 rules!3198) lt!753753))))

(declare-fun b!2007637 () Bool)

(declare-fun res!880485 () Bool)

(assert (=> b!2007637 (=> (not res!880485) (not e!1268497))))

(assert (=> b!2007637 (= res!880485 (= (++!5951 (list!8975 (charsOf!2498 (_1!11830 (get!6967 lt!753909)))) (_2!11830 (get!6967 lt!753909))) lt!753753))))

(declare-fun b!2007638 () Bool)

(assert (=> b!2007638 (= e!1268496 e!1268497)))

(declare-fun res!880480 () Bool)

(assert (=> b!2007638 (=> (not res!880480) (not e!1268497))))

(assert (=> b!2007638 (= res!880480 (isDefined!3886 lt!753909))))

(declare-fun b!2007639 () Bool)

(declare-fun res!880486 () Bool)

(assert (=> b!2007639 (=> (not res!880486) (not e!1268497))))

(assert (=> b!2007639 (= res!880486 (= (value!124394 (_1!11830 (get!6967 lt!753909))) (apply!5779 (transformation!3958 (rule!6183 (_1!11830 (get!6967 lt!753909)))) (seqFromList!2812 (originalCharacters!4765 (_1!11830 (get!6967 lt!753909)))))))))

(assert (= (and d!613020 c!324275) b!2007634))

(assert (= (and d!613020 (not c!324275)) b!2007632))

(assert (= (or b!2007634 b!2007632) bm!122727))

(assert (= (and d!613020 (not res!880481)) b!2007638))

(assert (= (and b!2007638 res!880480) b!2007631))

(assert (= (and b!2007631 res!880484) b!2007636))

(assert (= (and b!2007636 res!880483) b!2007637))

(assert (= (and b!2007637 res!880485) b!2007639))

(assert (= (and b!2007639 res!880486) b!2007635))

(assert (= (and b!2007635 res!880482) b!2007633))

(declare-fun m!2439733 () Bool)

(assert (=> b!2007638 m!2439733))

(declare-fun m!2439735 () Bool)

(assert (=> bm!122727 m!2439735))

(declare-fun m!2439737 () Bool)

(assert (=> b!2007633 m!2439737))

(declare-fun m!2439739 () Bool)

(assert (=> b!2007633 m!2439739))

(declare-fun m!2439741 () Bool)

(assert (=> b!2007632 m!2439741))

(assert (=> b!2007636 m!2439737))

(declare-fun m!2439743 () Bool)

(assert (=> b!2007636 m!2439743))

(assert (=> b!2007636 m!2439729))

(assert (=> b!2007635 m!2439737))

(declare-fun m!2439745 () Bool)

(assert (=> b!2007635 m!2439745))

(assert (=> b!2007635 m!2439745))

(declare-fun m!2439747 () Bool)

(assert (=> b!2007635 m!2439747))

(assert (=> b!2007635 m!2439747))

(declare-fun m!2439749 () Bool)

(assert (=> b!2007635 m!2439749))

(declare-fun m!2439751 () Bool)

(assert (=> d!613020 m!2439751))

(declare-fun m!2439753 () Bool)

(assert (=> d!613020 m!2439753))

(declare-fun m!2439755 () Bool)

(assert (=> d!613020 m!2439755))

(assert (=> d!613020 m!2439515))

(assert (=> b!2007637 m!2439737))

(assert (=> b!2007637 m!2439745))

(assert (=> b!2007637 m!2439745))

(assert (=> b!2007637 m!2439747))

(assert (=> b!2007637 m!2439747))

(declare-fun m!2439757 () Bool)

(assert (=> b!2007637 m!2439757))

(assert (=> b!2007631 m!2439737))

(assert (=> b!2007631 m!2439745))

(assert (=> b!2007631 m!2439745))

(assert (=> b!2007631 m!2439747))

(assert (=> b!2007639 m!2439737))

(declare-fun m!2439759 () Bool)

(assert (=> b!2007639 m!2439759))

(assert (=> b!2007639 m!2439759))

(declare-fun m!2439761 () Bool)

(assert (=> b!2007639 m!2439761))

(assert (=> b!2007000 d!613020))

(declare-fun d!613022 () Bool)

(assert (=> d!613022 (= (isDefined!3885 lt!753749) (not (isEmpty!13678 lt!753749)))))

(declare-fun bs!419604 () Bool)

(assert (= bs!419604 d!613022))

(declare-fun m!2439763 () Bool)

(assert (=> bs!419604 m!2439763))

(assert (=> b!2007000 d!613022))

(declare-fun d!613024 () Bool)

(declare-fun e!1268500 () Bool)

(assert (=> d!613024 e!1268500))

(declare-fun res!880491 () Bool)

(assert (=> d!613024 (=> (not res!880491) (not e!1268500))))

(assert (=> d!613024 (= res!880491 (isDefined!3885 (getRuleFromTag!773 thiss!23328 rules!3198 (tag!4420 (rule!6183 separatorToken!354)))))))

(declare-fun lt!753915 () Unit!36610)

(declare-fun choose!12229 (LexerInterface!3571 List!22135 List!22133 Token!7468) Unit!36610)

(assert (=> d!613024 (= lt!753915 (choose!12229 thiss!23328 rules!3198 lt!753746 separatorToken!354))))

(assert (=> d!613024 (rulesInvariant!3178 thiss!23328 rules!3198)))

(assert (=> d!613024 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!773 thiss!23328 rules!3198 lt!753746 separatorToken!354) lt!753915)))

(declare-fun b!2007644 () Bool)

(declare-fun res!880492 () Bool)

(assert (=> b!2007644 (=> (not res!880492) (not e!1268500))))

(assert (=> b!2007644 (= res!880492 (matchR!2649 (regex!3958 (get!6968 (getRuleFromTag!773 thiss!23328 rules!3198 (tag!4420 (rule!6183 separatorToken!354))))) (list!8975 (charsOf!2498 separatorToken!354))))))

(declare-fun b!2007645 () Bool)

(assert (=> b!2007645 (= e!1268500 (= (rule!6183 separatorToken!354) (get!6968 (getRuleFromTag!773 thiss!23328 rules!3198 (tag!4420 (rule!6183 separatorToken!354))))))))

(assert (= (and d!613024 res!880491) b!2007644))

(assert (= (and b!2007644 res!880492) b!2007645))

(assert (=> d!613024 m!2439131))

(assert (=> d!613024 m!2439131))

(declare-fun m!2439765 () Bool)

(assert (=> d!613024 m!2439765))

(declare-fun m!2439767 () Bool)

(assert (=> d!613024 m!2439767))

(assert (=> d!613024 m!2439153))

(assert (=> b!2007644 m!2439139))

(assert (=> b!2007644 m!2439141))

(assert (=> b!2007644 m!2439131))

(assert (=> b!2007644 m!2439131))

(declare-fun m!2439769 () Bool)

(assert (=> b!2007644 m!2439769))

(assert (=> b!2007644 m!2439139))

(assert (=> b!2007644 m!2439141))

(declare-fun m!2439771 () Bool)

(assert (=> b!2007644 m!2439771))

(assert (=> b!2007645 m!2439131))

(assert (=> b!2007645 m!2439131))

(assert (=> b!2007645 m!2439769))

(assert (=> b!2007000 d!613024))

(declare-fun d!613026 () Bool)

(declare-fun e!1268501 () Bool)

(assert (=> d!613026 e!1268501))

(declare-fun res!880493 () Bool)

(assert (=> d!613026 (=> (not res!880493) (not e!1268501))))

(assert (=> d!613026 (= res!880493 (isDefined!3885 (getRuleFromTag!773 thiss!23328 rules!3198 (tag!4420 (rule!6183 (h!27453 tokens!598))))))))

(declare-fun lt!753916 () Unit!36610)

(assert (=> d!613026 (= lt!753916 (choose!12229 thiss!23328 rules!3198 lt!753753 (h!27453 tokens!598)))))

(assert (=> d!613026 (rulesInvariant!3178 thiss!23328 rules!3198)))

(assert (=> d!613026 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!773 thiss!23328 rules!3198 lt!753753 (h!27453 tokens!598)) lt!753916)))

(declare-fun b!2007646 () Bool)

(declare-fun res!880494 () Bool)

(assert (=> b!2007646 (=> (not res!880494) (not e!1268501))))

(assert (=> b!2007646 (= res!880494 (matchR!2649 (regex!3958 (get!6968 (getRuleFromTag!773 thiss!23328 rules!3198 (tag!4420 (rule!6183 (h!27453 tokens!598)))))) (list!8975 (charsOf!2498 (h!27453 tokens!598)))))))

(declare-fun b!2007647 () Bool)

(assert (=> b!2007647 (= e!1268501 (= (rule!6183 (h!27453 tokens!598)) (get!6968 (getRuleFromTag!773 thiss!23328 rules!3198 (tag!4420 (rule!6183 (h!27453 tokens!598)))))))))

(assert (= (and d!613026 res!880493) b!2007646))

(assert (= (and b!2007646 res!880494) b!2007647))

(assert (=> d!613026 m!2439143))

(assert (=> d!613026 m!2439143))

(declare-fun m!2439773 () Bool)

(assert (=> d!613026 m!2439773))

(declare-fun m!2439775 () Bool)

(assert (=> d!613026 m!2439775))

(assert (=> d!613026 m!2439153))

(assert (=> b!2007646 m!2439137))

(declare-fun m!2439777 () Bool)

(assert (=> b!2007646 m!2439777))

(assert (=> b!2007646 m!2439143))

(assert (=> b!2007646 m!2439143))

(declare-fun m!2439779 () Bool)

(assert (=> b!2007646 m!2439779))

(assert (=> b!2007646 m!2439137))

(assert (=> b!2007646 m!2439777))

(declare-fun m!2439781 () Bool)

(assert (=> b!2007646 m!2439781))

(assert (=> b!2007647 m!2439143))

(assert (=> b!2007647 m!2439143))

(assert (=> b!2007647 m!2439779))

(assert (=> b!2007000 d!613026))

(declare-fun d!613028 () Bool)

(assert (=> d!613028 (= (list!8975 (charsOf!2498 separatorToken!354)) (list!8979 (c!324154 (charsOf!2498 separatorToken!354))))))

(declare-fun bs!419605 () Bool)

(assert (= bs!419605 d!613028))

(declare-fun m!2439783 () Bool)

(assert (=> bs!419605 m!2439783))

(assert (=> b!2007000 d!613028))

(declare-fun d!613030 () Bool)

(declare-fun lt!753919 () BalanceConc!14550)

(assert (=> d!613030 (= (list!8975 lt!753919) (originalCharacters!4765 (h!27453 tokens!598)))))

(assert (=> d!613030 (= lt!753919 (dynLambda!10840 (toChars!5482 (transformation!3958 (rule!6183 (h!27453 tokens!598)))) (value!124394 (h!27453 tokens!598))))))

(assert (=> d!613030 (= (charsOf!2498 (h!27453 tokens!598)) lt!753919)))

(declare-fun b_lambda!66941 () Bool)

(assert (=> (not b_lambda!66941) (not d!613030)))

(assert (=> d!613030 t!187204))

(declare-fun b_and!158429 () Bool)

(assert (= b_and!158361 (and (=> t!187204 result!150080) b_and!158429)))

(assert (=> d!613030 t!187207))

(declare-fun b_and!158431 () Bool)

(assert (= b_and!158363 (and (=> t!187207 result!150084) b_and!158431)))

(assert (=> d!613030 t!187209))

(declare-fun b_and!158433 () Bool)

(assert (= b_and!158365 (and (=> t!187209 result!150086) b_and!158433)))

(declare-fun m!2439785 () Bool)

(assert (=> d!613030 m!2439785))

(assert (=> d!613030 m!2439191))

(assert (=> b!2007000 d!613030))

(declare-fun d!613032 () Bool)

(declare-fun fromListB!1258 (List!22133) BalanceConc!14550)

(assert (=> d!613032 (= (seqFromList!2812 (originalCharacters!4765 (h!27453 tokens!598))) (fromListB!1258 (originalCharacters!4765 (h!27453 tokens!598))))))

(declare-fun bs!419606 () Bool)

(assert (= bs!419606 d!613032))

(declare-fun m!2439787 () Bool)

(assert (=> bs!419606 m!2439787))

(assert (=> b!2007000 d!613032))

(declare-fun d!613034 () Bool)

(assert (=> d!613034 (= (isDefined!3885 lt!753755) (not (isEmpty!13678 lt!753755)))))

(declare-fun bs!419607 () Bool)

(assert (= bs!419607 d!613034))

(declare-fun m!2439789 () Bool)

(assert (=> bs!419607 m!2439789))

(assert (=> b!2007000 d!613034))

(declare-fun d!613036 () Bool)

(declare-fun lt!753920 () BalanceConc!14550)

(assert (=> d!613036 (= (list!8975 lt!753920) (originalCharacters!4765 separatorToken!354))))

(assert (=> d!613036 (= lt!753920 (dynLambda!10840 (toChars!5482 (transformation!3958 (rule!6183 separatorToken!354))) (value!124394 separatorToken!354)))))

(assert (=> d!613036 (= (charsOf!2498 separatorToken!354) lt!753920)))

(declare-fun b_lambda!66943 () Bool)

(assert (=> (not b_lambda!66943) (not d!613036)))

(assert (=> d!613036 t!187217))

(declare-fun b_and!158435 () Bool)

(assert (= b_and!158429 (and (=> t!187217 result!150096) b_and!158435)))

(assert (=> d!613036 t!187219))

(declare-fun b_and!158437 () Bool)

(assert (= b_and!158431 (and (=> t!187219 result!150098) b_and!158437)))

(assert (=> d!613036 t!187221))

(declare-fun b_and!158439 () Bool)

(assert (= b_and!158433 (and (=> t!187221 result!150100) b_and!158439)))

(declare-fun m!2439791 () Bool)

(assert (=> d!613036 m!2439791))

(assert (=> d!613036 m!2439259))

(assert (=> b!2007000 d!613036))

(declare-fun b!2007652 () Bool)

(declare-fun e!1268504 () Bool)

(assert (=> b!2007652 (= e!1268504 true)))

(declare-fun d!613038 () Bool)

(assert (=> d!613038 e!1268504))

(assert (= d!613038 b!2007652))

(declare-fun lambda!76012 () Int)

(declare-fun order!13991 () Int)

(declare-fun dynLambda!10847 (Int Int) Int)

(assert (=> b!2007652 (< (dynLambda!10841 order!13981 (toValue!5623 (transformation!3958 (rule!6183 (h!27453 tokens!598))))) (dynLambda!10847 order!13991 lambda!76012))))

(assert (=> b!2007652 (< (dynLambda!10843 order!13985 (toChars!5482 (transformation!3958 (rule!6183 (h!27453 tokens!598))))) (dynLambda!10847 order!13991 lambda!76012))))

(assert (=> d!613038 (= (list!8975 (dynLambda!10840 (toChars!5482 (transformation!3958 (rule!6183 (h!27453 tokens!598)))) (dynLambda!10844 (toValue!5623 (transformation!3958 (rule!6183 (h!27453 tokens!598)))) lt!753748))) (list!8975 lt!753748))))

(declare-fun lt!753923 () Unit!36610)

(declare-fun ForallOf!425 (Int BalanceConc!14550) Unit!36610)

(assert (=> d!613038 (= lt!753923 (ForallOf!425 lambda!76012 lt!753748))))

(assert (=> d!613038 (= (lemmaSemiInverse!915 (transformation!3958 (rule!6183 (h!27453 tokens!598))) lt!753748) lt!753923)))

(declare-fun b_lambda!66945 () Bool)

(assert (=> (not b_lambda!66945) (not d!613038)))

(declare-fun t!187286 () Bool)

(declare-fun tb!125311 () Bool)

(assert (=> (and b!2006989 (= (toChars!5482 (transformation!3958 (rule!6183 separatorToken!354))) (toChars!5482 (transformation!3958 (rule!6183 (h!27453 tokens!598))))) t!187286) tb!125311))

(declare-fun tp!599008 () Bool)

(declare-fun e!1268505 () Bool)

(declare-fun b!2007653 () Bool)

(assert (=> b!2007653 (= e!1268505 (and (inv!29212 (c!324154 (dynLambda!10840 (toChars!5482 (transformation!3958 (rule!6183 (h!27453 tokens!598)))) (dynLambda!10844 (toValue!5623 (transformation!3958 (rule!6183 (h!27453 tokens!598)))) lt!753748)))) tp!599008))))

(declare-fun result!150170 () Bool)

(assert (=> tb!125311 (= result!150170 (and (inv!29213 (dynLambda!10840 (toChars!5482 (transformation!3958 (rule!6183 (h!27453 tokens!598)))) (dynLambda!10844 (toValue!5623 (transformation!3958 (rule!6183 (h!27453 tokens!598)))) lt!753748))) e!1268505))))

(assert (= tb!125311 b!2007653))

(declare-fun m!2439793 () Bool)

(assert (=> b!2007653 m!2439793))

(declare-fun m!2439795 () Bool)

(assert (=> tb!125311 m!2439795))

(assert (=> d!613038 t!187286))

(declare-fun b_and!158441 () Bool)

(assert (= b_and!158435 (and (=> t!187286 result!150170) b_and!158441)))

(declare-fun t!187288 () Bool)

(declare-fun tb!125313 () Bool)

(assert (=> (and b!2006984 (= (toChars!5482 (transformation!3958 (h!27454 rules!3198))) (toChars!5482 (transformation!3958 (rule!6183 (h!27453 tokens!598))))) t!187288) tb!125313))

(declare-fun result!150172 () Bool)

(assert (= result!150172 result!150170))

(assert (=> d!613038 t!187288))

(declare-fun b_and!158443 () Bool)

(assert (= b_and!158437 (and (=> t!187288 result!150172) b_and!158443)))

(declare-fun t!187290 () Bool)

(declare-fun tb!125315 () Bool)

(assert (=> (and b!2006981 (= (toChars!5482 (transformation!3958 (rule!6183 (h!27453 tokens!598)))) (toChars!5482 (transformation!3958 (rule!6183 (h!27453 tokens!598))))) t!187290) tb!125315))

(declare-fun result!150174 () Bool)

(assert (= result!150174 result!150170))

(assert (=> d!613038 t!187290))

(declare-fun b_and!158445 () Bool)

(assert (= b_and!158439 (and (=> t!187290 result!150174) b_and!158445)))

(declare-fun b_lambda!66947 () Bool)

(assert (=> (not b_lambda!66947) (not d!613038)))

(assert (=> d!613038 t!187244))

(declare-fun b_and!158447 () Bool)

(assert (= b_and!158397 (and (=> t!187244 result!150122) b_and!158447)))

(assert (=> d!613038 t!187246))

(declare-fun b_and!158449 () Bool)

(assert (= b_and!158399 (and (=> t!187246 result!150126) b_and!158449)))

(assert (=> d!613038 t!187248))

(declare-fun b_and!158451 () Bool)

(assert (= b_and!158401 (and (=> t!187248 result!150128) b_and!158451)))

(assert (=> d!613038 m!2439377))

(declare-fun m!2439797 () Bool)

(assert (=> d!613038 m!2439797))

(assert (=> d!613038 m!2439797))

(declare-fun m!2439799 () Bool)

(assert (=> d!613038 m!2439799))

(assert (=> d!613038 m!2439121))

(declare-fun m!2439801 () Bool)

(assert (=> d!613038 m!2439801))

(assert (=> d!613038 m!2439377))

(assert (=> b!2007000 d!613038))

(declare-fun d!613040 () Bool)

(assert (=> d!613040 (= (isDefined!3886 lt!753745) (not (isEmpty!13677 lt!753745)))))

(declare-fun bs!419608 () Bool)

(assert (= bs!419608 d!613040))

(declare-fun m!2439803 () Bool)

(assert (=> bs!419608 m!2439803))

(assert (=> b!2007000 d!613040))

(declare-fun d!613042 () Bool)

(declare-fun lt!753926 () Bool)

(assert (=> d!613042 (= lt!753926 (select (content!3229 (usedCharacters!396 (regex!3958 (rule!6183 separatorToken!354)))) (head!4534 lt!753746)))))

(declare-fun e!1268511 () Bool)

(assert (=> d!613042 (= lt!753926 e!1268511)))

(declare-fun res!880499 () Bool)

(assert (=> d!613042 (=> (not res!880499) (not e!1268511))))

(assert (=> d!613042 (= res!880499 ((_ is Cons!22051) (usedCharacters!396 (regex!3958 (rule!6183 separatorToken!354)))))))

(assert (=> d!613042 (= (contains!4026 (usedCharacters!396 (regex!3958 (rule!6183 separatorToken!354))) (head!4534 lt!753746)) lt!753926)))

(declare-fun b!2007658 () Bool)

(declare-fun e!1268510 () Bool)

(assert (=> b!2007658 (= e!1268511 e!1268510)))

(declare-fun res!880500 () Bool)

(assert (=> b!2007658 (=> res!880500 e!1268510)))

(assert (=> b!2007658 (= res!880500 (= (h!27452 (usedCharacters!396 (regex!3958 (rule!6183 separatorToken!354)))) (head!4534 lt!753746)))))

(declare-fun b!2007659 () Bool)

(assert (=> b!2007659 (= e!1268510 (contains!4026 (t!187200 (usedCharacters!396 (regex!3958 (rule!6183 separatorToken!354)))) (head!4534 lt!753746)))))

(assert (= (and d!613042 res!880499) b!2007658))

(assert (= (and b!2007658 (not res!880500)) b!2007659))

(assert (=> d!613042 m!2439081))

(declare-fun m!2439805 () Bool)

(assert (=> d!613042 m!2439805))

(assert (=> d!613042 m!2439083))

(declare-fun m!2439807 () Bool)

(assert (=> d!613042 m!2439807))

(assert (=> b!2007659 m!2439083))

(declare-fun m!2439809 () Bool)

(assert (=> b!2007659 m!2439809))

(assert (=> b!2006978 d!613042))

(declare-fun d!613044 () Bool)

(assert (=> d!613044 (= (head!4534 lt!753746) (h!27452 lt!753746))))

(assert (=> b!2006978 d!613044))

(declare-fun b!2007661 () Bool)

(declare-fun e!1268513 () List!22133)

(assert (=> b!2007661 (= e!1268513 (Cons!22051 (h!27452 lt!753753) (++!5951 (t!187200 lt!753753) lt!753746)))))

(declare-fun b!2007663 () Bool)

(declare-fun e!1268512 () Bool)

(declare-fun lt!753927 () List!22133)

(assert (=> b!2007663 (= e!1268512 (or (not (= lt!753746 Nil!22051)) (= lt!753927 lt!753753)))))

(declare-fun d!613046 () Bool)

(assert (=> d!613046 e!1268512))

(declare-fun res!880502 () Bool)

(assert (=> d!613046 (=> (not res!880502) (not e!1268512))))

(assert (=> d!613046 (= res!880502 (= (content!3229 lt!753927) ((_ map or) (content!3229 lt!753753) (content!3229 lt!753746))))))

(assert (=> d!613046 (= lt!753927 e!1268513)))

(declare-fun c!324278 () Bool)

(assert (=> d!613046 (= c!324278 ((_ is Nil!22051) lt!753753))))

(assert (=> d!613046 (= (++!5951 lt!753753 lt!753746) lt!753927)))

(declare-fun b!2007662 () Bool)

(declare-fun res!880501 () Bool)

(assert (=> b!2007662 (=> (not res!880501) (not e!1268512))))

(assert (=> b!2007662 (= res!880501 (= (size!17243 lt!753927) (+ (size!17243 lt!753753) (size!17243 lt!753746))))))

(declare-fun b!2007660 () Bool)

(assert (=> b!2007660 (= e!1268513 lt!753746)))

(assert (= (and d!613046 c!324278) b!2007660))

(assert (= (and d!613046 (not c!324278)) b!2007661))

(assert (= (and d!613046 res!880502) b!2007662))

(assert (= (and b!2007662 res!880501) b!2007663))

(declare-fun m!2439811 () Bool)

(assert (=> b!2007661 m!2439811))

(declare-fun m!2439813 () Bool)

(assert (=> d!613046 m!2439813))

(assert (=> d!613046 m!2439723))

(declare-fun m!2439815 () Bool)

(assert (=> d!613046 m!2439815))

(declare-fun m!2439817 () Bool)

(assert (=> b!2007662 m!2439817))

(assert (=> b!2007662 m!2439729))

(declare-fun m!2439819 () Bool)

(assert (=> b!2007662 m!2439819))

(assert (=> b!2006978 d!613046))

(declare-fun b!2007665 () Bool)

(declare-fun e!1268515 () List!22133)

(assert (=> b!2007665 (= e!1268515 (Cons!22051 (h!27452 lt!753746) (++!5951 (t!187200 lt!753746) lt!753756)))))

(declare-fun lt!753928 () List!22133)

(declare-fun b!2007667 () Bool)

(declare-fun e!1268514 () Bool)

(assert (=> b!2007667 (= e!1268514 (or (not (= lt!753756 Nil!22051)) (= lt!753928 lt!753746)))))

(declare-fun d!613048 () Bool)

(assert (=> d!613048 e!1268514))

(declare-fun res!880504 () Bool)

(assert (=> d!613048 (=> (not res!880504) (not e!1268514))))

(assert (=> d!613048 (= res!880504 (= (content!3229 lt!753928) ((_ map or) (content!3229 lt!753746) (content!3229 lt!753756))))))

(assert (=> d!613048 (= lt!753928 e!1268515)))

(declare-fun c!324279 () Bool)

(assert (=> d!613048 (= c!324279 ((_ is Nil!22051) lt!753746))))

(assert (=> d!613048 (= (++!5951 lt!753746 lt!753756) lt!753928)))

(declare-fun b!2007666 () Bool)

(declare-fun res!880503 () Bool)

(assert (=> b!2007666 (=> (not res!880503) (not e!1268514))))

(assert (=> b!2007666 (= res!880503 (= (size!17243 lt!753928) (+ (size!17243 lt!753746) (size!17243 lt!753756))))))

(declare-fun b!2007664 () Bool)

(assert (=> b!2007664 (= e!1268515 lt!753756)))

(assert (= (and d!613048 c!324279) b!2007664))

(assert (= (and d!613048 (not c!324279)) b!2007665))

(assert (= (and d!613048 res!880504) b!2007666))

(assert (= (and b!2007666 res!880503) b!2007667))

(declare-fun m!2439821 () Bool)

(assert (=> b!2007665 m!2439821))

(declare-fun m!2439823 () Bool)

(assert (=> d!613048 m!2439823))

(assert (=> d!613048 m!2439815))

(assert (=> d!613048 m!2439725))

(declare-fun m!2439825 () Bool)

(assert (=> b!2007666 m!2439825))

(assert (=> b!2007666 m!2439819))

(assert (=> b!2007666 m!2439731))

(assert (=> b!2006978 d!613048))

(declare-fun d!613050 () Bool)

(assert (=> d!613050 (= (++!5951 (++!5951 lt!753753 lt!753746) lt!753756) (++!5951 lt!753753 (++!5951 lt!753746 lt!753756)))))

(declare-fun lt!753931 () Unit!36610)

(declare-fun choose!12230 (List!22133 List!22133 List!22133) Unit!36610)

(assert (=> d!613050 (= lt!753931 (choose!12230 lt!753753 lt!753746 lt!753756))))

(assert (=> d!613050 (= (lemmaConcatAssociativity!1221 lt!753753 lt!753746 lt!753756) lt!753931)))

(declare-fun bs!419609 () Bool)

(assert (= bs!419609 d!613050))

(assert (=> bs!419609 m!2439089))

(assert (=> bs!419609 m!2439087))

(assert (=> bs!419609 m!2439093))

(declare-fun m!2439827 () Bool)

(assert (=> bs!419609 m!2439827))

(assert (=> bs!419609 m!2439087))

(assert (=> bs!419609 m!2439089))

(assert (=> bs!419609 m!2439091))

(assert (=> b!2006978 d!613050))

(declare-fun d!613052 () Bool)

(declare-fun c!324291 () Bool)

(assert (=> d!613052 (= c!324291 (or ((_ is EmptyExpr!5383) (regex!3958 (rule!6183 separatorToken!354))) ((_ is EmptyLang!5383) (regex!3958 (rule!6183 separatorToken!354)))))))

(declare-fun e!1268526 () List!22133)

(assert (=> d!613052 (= (usedCharacters!396 (regex!3958 (rule!6183 separatorToken!354))) e!1268526)))

(declare-fun b!2007684 () Bool)

(declare-fun e!1268525 () List!22133)

(declare-fun call!122743 () List!22133)

(assert (=> b!2007684 (= e!1268525 call!122743)))

(declare-fun b!2007685 () Bool)

(declare-fun e!1268524 () List!22133)

(assert (=> b!2007685 (= e!1268524 e!1268525)))

(declare-fun c!324288 () Bool)

(assert (=> b!2007685 (= c!324288 ((_ is Union!5383) (regex!3958 (rule!6183 separatorToken!354))))))

(declare-fun c!324290 () Bool)

(declare-fun bm!122736 () Bool)

(declare-fun call!122742 () List!22133)

(assert (=> bm!122736 (= call!122742 (usedCharacters!396 (ite c!324290 (reg!5712 (regex!3958 (rule!6183 separatorToken!354))) (ite c!324288 (regTwo!11279 (regex!3958 (rule!6183 separatorToken!354))) (regOne!11278 (regex!3958 (rule!6183 separatorToken!354)))))))))

(declare-fun b!2007686 () Bool)

(declare-fun e!1268527 () List!22133)

(assert (=> b!2007686 (= e!1268526 e!1268527)))

(declare-fun c!324289 () Bool)

(assert (=> b!2007686 (= c!324289 ((_ is ElementMatch!5383) (regex!3958 (rule!6183 separatorToken!354))))))

(declare-fun bm!122737 () Bool)

(declare-fun call!122744 () List!22133)

(declare-fun call!122741 () List!22133)

(assert (=> bm!122737 (= call!122743 (++!5951 (ite c!324288 call!122741 call!122744) (ite c!324288 call!122744 call!122741)))))

(declare-fun bm!122738 () Bool)

(assert (=> bm!122738 (= call!122744 call!122742)))

(declare-fun b!2007687 () Bool)

(assert (=> b!2007687 (= e!1268527 (Cons!22051 (c!324153 (regex!3958 (rule!6183 separatorToken!354))) Nil!22051))))

(declare-fun bm!122739 () Bool)

(assert (=> bm!122739 (= call!122741 (usedCharacters!396 (ite c!324288 (regOne!11279 (regex!3958 (rule!6183 separatorToken!354))) (regTwo!11278 (regex!3958 (rule!6183 separatorToken!354))))))))

(declare-fun b!2007688 () Bool)

(assert (=> b!2007688 (= e!1268525 call!122743)))

(declare-fun b!2007689 () Bool)

(assert (=> b!2007689 (= c!324290 ((_ is Star!5383) (regex!3958 (rule!6183 separatorToken!354))))))

(assert (=> b!2007689 (= e!1268527 e!1268524)))

(declare-fun b!2007690 () Bool)

(assert (=> b!2007690 (= e!1268526 Nil!22051)))

(declare-fun b!2007691 () Bool)

(assert (=> b!2007691 (= e!1268524 call!122742)))

(assert (= (and d!613052 c!324291) b!2007690))

(assert (= (and d!613052 (not c!324291)) b!2007686))

(assert (= (and b!2007686 c!324289) b!2007687))

(assert (= (and b!2007686 (not c!324289)) b!2007689))

(assert (= (and b!2007689 c!324290) b!2007691))

(assert (= (and b!2007689 (not c!324290)) b!2007685))

(assert (= (and b!2007685 c!324288) b!2007684))

(assert (= (and b!2007685 (not c!324288)) b!2007688))

(assert (= (or b!2007684 b!2007688) bm!122739))

(assert (= (or b!2007684 b!2007688) bm!122738))

(assert (= (or b!2007684 b!2007688) bm!122737))

(assert (= (or b!2007691 bm!122738) bm!122736))

(declare-fun m!2439829 () Bool)

(assert (=> bm!122736 m!2439829))

(declare-fun m!2439831 () Bool)

(assert (=> bm!122737 m!2439831))

(declare-fun m!2439833 () Bool)

(assert (=> bm!122739 m!2439833))

(assert (=> b!2006978 d!613052))

(declare-fun b!2007693 () Bool)

(declare-fun e!1268529 () List!22133)

(assert (=> b!2007693 (= e!1268529 (Cons!22051 (h!27452 lt!753753) (++!5951 (t!187200 lt!753753) (++!5951 lt!753746 lt!753756))))))

(declare-fun lt!753932 () List!22133)

(declare-fun e!1268528 () Bool)

(declare-fun b!2007695 () Bool)

(assert (=> b!2007695 (= e!1268528 (or (not (= (++!5951 lt!753746 lt!753756) Nil!22051)) (= lt!753932 lt!753753)))))

(declare-fun d!613054 () Bool)

(assert (=> d!613054 e!1268528))

(declare-fun res!880506 () Bool)

(assert (=> d!613054 (=> (not res!880506) (not e!1268528))))

(assert (=> d!613054 (= res!880506 (= (content!3229 lt!753932) ((_ map or) (content!3229 lt!753753) (content!3229 (++!5951 lt!753746 lt!753756)))))))

(assert (=> d!613054 (= lt!753932 e!1268529)))

(declare-fun c!324292 () Bool)

(assert (=> d!613054 (= c!324292 ((_ is Nil!22051) lt!753753))))

(assert (=> d!613054 (= (++!5951 lt!753753 (++!5951 lt!753746 lt!753756)) lt!753932)))

(declare-fun b!2007694 () Bool)

(declare-fun res!880505 () Bool)

(assert (=> b!2007694 (=> (not res!880505) (not e!1268528))))

(assert (=> b!2007694 (= res!880505 (= (size!17243 lt!753932) (+ (size!17243 lt!753753) (size!17243 (++!5951 lt!753746 lt!753756)))))))

(declare-fun b!2007692 () Bool)

(assert (=> b!2007692 (= e!1268529 (++!5951 lt!753746 lt!753756))))

(assert (= (and d!613054 c!324292) b!2007692))

(assert (= (and d!613054 (not c!324292)) b!2007693))

(assert (= (and d!613054 res!880506) b!2007694))

(assert (= (and b!2007694 res!880505) b!2007695))

(assert (=> b!2007693 m!2439089))

(declare-fun m!2439835 () Bool)

(assert (=> b!2007693 m!2439835))

(declare-fun m!2439837 () Bool)

(assert (=> d!613054 m!2439837))

(assert (=> d!613054 m!2439723))

(assert (=> d!613054 m!2439089))

(declare-fun m!2439839 () Bool)

(assert (=> d!613054 m!2439839))

(declare-fun m!2439841 () Bool)

(assert (=> b!2007694 m!2439841))

(assert (=> b!2007694 m!2439729))

(assert (=> b!2007694 m!2439089))

(declare-fun m!2439843 () Bool)

(assert (=> b!2007694 m!2439843))

(assert (=> b!2006978 d!613054))

(declare-fun e!1268531 () List!22133)

(declare-fun b!2007697 () Bool)

(assert (=> b!2007697 (= e!1268531 (Cons!22051 (h!27452 (++!5951 lt!753753 lt!753746)) (++!5951 (t!187200 (++!5951 lt!753753 lt!753746)) lt!753756)))))

(declare-fun b!2007699 () Bool)

(declare-fun e!1268530 () Bool)

(declare-fun lt!753933 () List!22133)

(assert (=> b!2007699 (= e!1268530 (or (not (= lt!753756 Nil!22051)) (= lt!753933 (++!5951 lt!753753 lt!753746))))))

(declare-fun d!613056 () Bool)

(assert (=> d!613056 e!1268530))

(declare-fun res!880508 () Bool)

(assert (=> d!613056 (=> (not res!880508) (not e!1268530))))

(assert (=> d!613056 (= res!880508 (= (content!3229 lt!753933) ((_ map or) (content!3229 (++!5951 lt!753753 lt!753746)) (content!3229 lt!753756))))))

(assert (=> d!613056 (= lt!753933 e!1268531)))

(declare-fun c!324293 () Bool)

(assert (=> d!613056 (= c!324293 ((_ is Nil!22051) (++!5951 lt!753753 lt!753746)))))

(assert (=> d!613056 (= (++!5951 (++!5951 lt!753753 lt!753746) lt!753756) lt!753933)))

(declare-fun b!2007698 () Bool)

(declare-fun res!880507 () Bool)

(assert (=> b!2007698 (=> (not res!880507) (not e!1268530))))

(assert (=> b!2007698 (= res!880507 (= (size!17243 lt!753933) (+ (size!17243 (++!5951 lt!753753 lt!753746)) (size!17243 lt!753756))))))

(declare-fun b!2007696 () Bool)

(assert (=> b!2007696 (= e!1268531 lt!753756)))

(assert (= (and d!613056 c!324293) b!2007696))

(assert (= (and d!613056 (not c!324293)) b!2007697))

(assert (= (and d!613056 res!880508) b!2007698))

(assert (= (and b!2007698 res!880507) b!2007699))

(declare-fun m!2439845 () Bool)

(assert (=> b!2007697 m!2439845))

(declare-fun m!2439847 () Bool)

(assert (=> d!613056 m!2439847))

(assert (=> d!613056 m!2439087))

(declare-fun m!2439849 () Bool)

(assert (=> d!613056 m!2439849))

(assert (=> d!613056 m!2439725))

(declare-fun m!2439851 () Bool)

(assert (=> b!2007698 m!2439851))

(assert (=> b!2007698 m!2439087))

(declare-fun m!2439853 () Bool)

(assert (=> b!2007698 m!2439853))

(assert (=> b!2007698 m!2439731))

(assert (=> b!2006978 d!613056))

(declare-fun d!613058 () Bool)

(declare-fun res!880513 () Bool)

(declare-fun e!1268536 () Bool)

(assert (=> d!613058 (=> res!880513 e!1268536)))

(assert (=> d!613058 (= res!880513 ((_ is Nil!22052) tokens!598))))

(assert (=> d!613058 (= (forall!4684 tokens!598 lambda!75991) e!1268536)))

(declare-fun b!2007704 () Bool)

(declare-fun e!1268537 () Bool)

(assert (=> b!2007704 (= e!1268536 e!1268537)))

(declare-fun res!880514 () Bool)

(assert (=> b!2007704 (=> (not res!880514) (not e!1268537))))

(declare-fun dynLambda!10848 (Int Token!7468) Bool)

(assert (=> b!2007704 (= res!880514 (dynLambda!10848 lambda!75991 (h!27453 tokens!598)))))

(declare-fun b!2007705 () Bool)

(assert (=> b!2007705 (= e!1268537 (forall!4684 (t!187201 tokens!598) lambda!75991))))

(assert (= (and d!613058 (not res!880513)) b!2007704))

(assert (= (and b!2007704 res!880514) b!2007705))

(declare-fun b_lambda!66949 () Bool)

(assert (=> (not b_lambda!66949) (not b!2007704)))

(declare-fun m!2439855 () Bool)

(assert (=> b!2007704 m!2439855))

(declare-fun m!2439857 () Bool)

(assert (=> b!2007705 m!2439857))

(assert (=> b!2006999 d!613058))

(declare-fun bs!419610 () Bool)

(declare-fun d!613060 () Bool)

(assert (= bs!419610 (and d!613060 b!2006999)))

(declare-fun lambda!76015 () Int)

(assert (=> bs!419610 (not (= lambda!76015 lambda!75991))))

(declare-fun bs!419611 () Bool)

(assert (= bs!419611 (and d!613060 b!2007517)))

(assert (=> bs!419611 (= lambda!76015 lambda!76006)))

(declare-fun b!2007714 () Bool)

(declare-fun e!1268546 () Bool)

(assert (=> b!2007714 (= e!1268546 true)))

(declare-fun b!2007713 () Bool)

(declare-fun e!1268545 () Bool)

(assert (=> b!2007713 (= e!1268545 e!1268546)))

(declare-fun b!2007712 () Bool)

(declare-fun e!1268544 () Bool)

(assert (=> b!2007712 (= e!1268544 e!1268545)))

(assert (=> d!613060 e!1268544))

(assert (= b!2007713 b!2007714))

(assert (= b!2007712 b!2007713))

(assert (= (and d!613060 ((_ is Cons!22053) rules!3198)) b!2007712))

(assert (=> b!2007714 (< (dynLambda!10841 order!13981 (toValue!5623 (transformation!3958 (h!27454 rules!3198)))) (dynLambda!10846 order!13989 lambda!76015))))

(assert (=> b!2007714 (< (dynLambda!10843 order!13985 (toChars!5482 (transformation!3958 (h!27454 rules!3198)))) (dynLambda!10846 order!13989 lambda!76015))))

(assert (=> d!613060 true))

(declare-fun lt!753936 () Bool)

(assert (=> d!613060 (= lt!753936 (forall!4684 tokens!598 lambda!76015))))

(declare-fun e!1268542 () Bool)

(assert (=> d!613060 (= lt!753936 e!1268542)))

(declare-fun res!880519 () Bool)

(assert (=> d!613060 (=> res!880519 e!1268542)))

(assert (=> d!613060 (= res!880519 (not ((_ is Cons!22052) tokens!598)))))

(assert (=> d!613060 (not (isEmpty!13670 rules!3198))))

(assert (=> d!613060 (= (rulesProduceEachTokenIndividuallyList!1302 thiss!23328 rules!3198 tokens!598) lt!753936)))

(declare-fun b!2007710 () Bool)

(declare-fun e!1268543 () Bool)

(assert (=> b!2007710 (= e!1268542 e!1268543)))

(declare-fun res!880520 () Bool)

(assert (=> b!2007710 (=> (not res!880520) (not e!1268543))))

(assert (=> b!2007710 (= res!880520 (rulesProduceIndividualToken!1743 thiss!23328 rules!3198 (h!27453 tokens!598)))))

(declare-fun b!2007711 () Bool)

(assert (=> b!2007711 (= e!1268543 (rulesProduceEachTokenIndividuallyList!1302 thiss!23328 rules!3198 (t!187201 tokens!598)))))

(assert (= (and d!613060 (not res!880519)) b!2007710))

(assert (= (and b!2007710 res!880520) b!2007711))

(declare-fun m!2439859 () Bool)

(assert (=> d!613060 m!2439859))

(assert (=> d!613060 m!2439113))

(declare-fun m!2439861 () Bool)

(assert (=> b!2007710 m!2439861))

(declare-fun m!2439863 () Bool)

(assert (=> b!2007711 m!2439863))

(assert (=> b!2006988 d!613060))

(declare-fun d!613062 () Bool)

(declare-fun c!324295 () Bool)

(assert (=> d!613062 (= c!324295 ((_ is IntegerValue!12282) (value!124394 (h!27453 tokens!598))))))

(declare-fun e!1268548 () Bool)

(assert (=> d!613062 (= (inv!21 (value!124394 (h!27453 tokens!598))) e!1268548)))

(declare-fun b!2007715 () Bool)

(declare-fun res!880521 () Bool)

(declare-fun e!1268549 () Bool)

(assert (=> b!2007715 (=> res!880521 e!1268549)))

(assert (=> b!2007715 (= res!880521 (not ((_ is IntegerValue!12284) (value!124394 (h!27453 tokens!598)))))))

(declare-fun e!1268547 () Bool)

(assert (=> b!2007715 (= e!1268547 e!1268549)))

(declare-fun b!2007716 () Bool)

(assert (=> b!2007716 (= e!1268547 (inv!17 (value!124394 (h!27453 tokens!598))))))

(declare-fun b!2007717 () Bool)

(assert (=> b!2007717 (= e!1268548 e!1268547)))

(declare-fun c!324294 () Bool)

(assert (=> b!2007717 (= c!324294 ((_ is IntegerValue!12283) (value!124394 (h!27453 tokens!598))))))

(declare-fun b!2007718 () Bool)

(assert (=> b!2007718 (= e!1268549 (inv!15 (value!124394 (h!27453 tokens!598))))))

(declare-fun b!2007719 () Bool)

(assert (=> b!2007719 (= e!1268548 (inv!16 (value!124394 (h!27453 tokens!598))))))

(assert (= (and d!613062 c!324295) b!2007719))

(assert (= (and d!613062 (not c!324295)) b!2007717))

(assert (= (and b!2007717 c!324294) b!2007716))

(assert (= (and b!2007717 (not c!324294)) b!2007715))

(assert (= (and b!2007715 (not res!880521)) b!2007718))

(declare-fun m!2439865 () Bool)

(assert (=> b!2007716 m!2439865))

(declare-fun m!2439867 () Bool)

(assert (=> b!2007718 m!2439867))

(declare-fun m!2439869 () Bool)

(assert (=> b!2007719 m!2439869))

(assert (=> b!2006977 d!613062))

(declare-fun b!2007733 () Bool)

(declare-fun b_free!55965 () Bool)

(declare-fun b_next!56669 () Bool)

(assert (=> b!2007733 (= b_free!55965 (not b_next!56669))))

(declare-fun t!187294 () Bool)

(declare-fun tb!125317 () Bool)

(assert (=> (and b!2007733 (= (toValue!5623 (transformation!3958 (rule!6183 (h!27453 (t!187201 tokens!598))))) (toValue!5623 (transformation!3958 (rule!6183 (h!27453 tokens!598))))) t!187294) tb!125317))

(declare-fun result!150178 () Bool)

(assert (= result!150178 result!150122))

(assert (=> d!612926 t!187294))

(declare-fun t!187296 () Bool)

(declare-fun tb!125319 () Bool)

(assert (=> (and b!2007733 (= (toValue!5623 (transformation!3958 (rule!6183 (h!27453 (t!187201 tokens!598))))) (toValue!5623 (transformation!3958 (rule!6183 (h!27453 tokens!598))))) t!187296) tb!125319))

(declare-fun result!150180 () Bool)

(assert (= result!150180 result!150130))

(assert (=> d!612926 t!187296))

(assert (=> d!613038 t!187294))

(declare-fun tp!599023 () Bool)

(declare-fun b_and!158453 () Bool)

(assert (=> b!2007733 (= tp!599023 (and (=> t!187294 result!150178) (=> t!187296 result!150180) b_and!158453))))

(declare-fun b_free!55967 () Bool)

(declare-fun b_next!56671 () Bool)

(assert (=> b!2007733 (= b_free!55967 (not b_next!56671))))

(declare-fun t!187298 () Bool)

(declare-fun tb!125321 () Bool)

(assert (=> (and b!2007733 (= (toChars!5482 (transformation!3958 (rule!6183 (h!27453 (t!187201 tokens!598))))) (toChars!5482 (transformation!3958 (rule!6183 (h!27453 tokens!598))))) t!187298) tb!125321))

(declare-fun result!150182 () Bool)

(assert (= result!150182 result!150080))

(assert (=> b!2007083 t!187298))

(declare-fun tb!125323 () Bool)

(declare-fun t!187300 () Bool)

(assert (=> (and b!2007733 (= (toChars!5482 (transformation!3958 (rule!6183 (h!27453 (t!187201 tokens!598))))) (toChars!5482 (transformation!3958 (rule!6183 separatorToken!354)))) t!187300) tb!125323))

(declare-fun result!150184 () Bool)

(assert (= result!150184 result!150096))

(assert (=> d!613036 t!187300))

(assert (=> d!613030 t!187298))

(declare-fun t!187302 () Bool)

(declare-fun tb!125325 () Bool)

(assert (=> (and b!2007733 (= (toChars!5482 (transformation!3958 (rule!6183 (h!27453 (t!187201 tokens!598))))) (toChars!5482 (transformation!3958 (rule!6183 (h!27453 tokens!598))))) t!187302) tb!125325))

(declare-fun result!150186 () Bool)

(assert (= result!150186 result!150170))

(assert (=> d!613038 t!187302))

(assert (=> b!2007129 t!187300))

(declare-fun b_and!158455 () Bool)

(declare-fun tp!599022 () Bool)

(assert (=> b!2007733 (= tp!599022 (and (=> t!187298 result!150182) (=> t!187302 result!150186) (=> t!187300 result!150184) b_and!158455))))

(declare-fun e!1268562 () Bool)

(assert (=> b!2007733 (= e!1268562 (and tp!599023 tp!599022))))

(declare-fun e!1268566 () Bool)

(declare-fun b!2007732 () Bool)

(declare-fun tp!599019 () Bool)

(assert (=> b!2007732 (= e!1268566 (and tp!599019 (inv!29205 (tag!4420 (rule!6183 (h!27453 (t!187201 tokens!598))))) (inv!29208 (transformation!3958 (rule!6183 (h!27453 (t!187201 tokens!598))))) e!1268562))))

(declare-fun e!1268567 () Bool)

(assert (=> b!2006995 (= tp!598939 e!1268567)))

(declare-fun tp!599021 () Bool)

(declare-fun b!2007731 () Bool)

(declare-fun e!1268564 () Bool)

(assert (=> b!2007731 (= e!1268564 (and (inv!21 (value!124394 (h!27453 (t!187201 tokens!598)))) e!1268566 tp!599021))))

(declare-fun tp!599020 () Bool)

(declare-fun b!2007730 () Bool)

(assert (=> b!2007730 (= e!1268567 (and (inv!29209 (h!27453 (t!187201 tokens!598))) e!1268564 tp!599020))))

(assert (= b!2007732 b!2007733))

(assert (= b!2007731 b!2007732))

(assert (= b!2007730 b!2007731))

(assert (= (and b!2006995 ((_ is Cons!22052) (t!187201 tokens!598))) b!2007730))

(declare-fun m!2439871 () Bool)

(assert (=> b!2007732 m!2439871))

(declare-fun m!2439873 () Bool)

(assert (=> b!2007732 m!2439873))

(declare-fun m!2439875 () Bool)

(assert (=> b!2007731 m!2439875))

(declare-fun m!2439877 () Bool)

(assert (=> b!2007730 m!2439877))

(declare-fun b!2007745 () Bool)

(declare-fun e!1268570 () Bool)

(declare-fun tp!599034 () Bool)

(declare-fun tp!599036 () Bool)

(assert (=> b!2007745 (= e!1268570 (and tp!599034 tp!599036))))

(declare-fun b!2007747 () Bool)

(declare-fun tp!599038 () Bool)

(declare-fun tp!599035 () Bool)

(assert (=> b!2007747 (= e!1268570 (and tp!599038 tp!599035))))

(declare-fun b!2007744 () Bool)

(declare-fun tp_is_empty!9177 () Bool)

(assert (=> b!2007744 (= e!1268570 tp_is_empty!9177)))

(assert (=> b!2006994 (= tp!598930 e!1268570)))

(declare-fun b!2007746 () Bool)

(declare-fun tp!599037 () Bool)

(assert (=> b!2007746 (= e!1268570 tp!599037)))

(assert (= (and b!2006994 ((_ is ElementMatch!5383) (regex!3958 (rule!6183 separatorToken!354)))) b!2007744))

(assert (= (and b!2006994 ((_ is Concat!9478) (regex!3958 (rule!6183 separatorToken!354)))) b!2007745))

(assert (= (and b!2006994 ((_ is Star!5383) (regex!3958 (rule!6183 separatorToken!354)))) b!2007746))

(assert (= (and b!2006994 ((_ is Union!5383) (regex!3958 (rule!6183 separatorToken!354)))) b!2007747))

(declare-fun b!2007749 () Bool)

(declare-fun e!1268571 () Bool)

(declare-fun tp!599039 () Bool)

(declare-fun tp!599041 () Bool)

(assert (=> b!2007749 (= e!1268571 (and tp!599039 tp!599041))))

(declare-fun b!2007751 () Bool)

(declare-fun tp!599043 () Bool)

(declare-fun tp!599040 () Bool)

(assert (=> b!2007751 (= e!1268571 (and tp!599043 tp!599040))))

(declare-fun b!2007748 () Bool)

(assert (=> b!2007748 (= e!1268571 tp_is_empty!9177)))

(assert (=> b!2006998 (= tp!598940 e!1268571)))

(declare-fun b!2007750 () Bool)

(declare-fun tp!599042 () Bool)

(assert (=> b!2007750 (= e!1268571 tp!599042)))

(assert (= (and b!2006998 ((_ is ElementMatch!5383) (regex!3958 (h!27454 rules!3198)))) b!2007748))

(assert (= (and b!2006998 ((_ is Concat!9478) (regex!3958 (h!27454 rules!3198)))) b!2007749))

(assert (= (and b!2006998 ((_ is Star!5383) (regex!3958 (h!27454 rules!3198)))) b!2007750))

(assert (= (and b!2006998 ((_ is Union!5383) (regex!3958 (h!27454 rules!3198)))) b!2007751))

(declare-fun b!2007762 () Bool)

(declare-fun b_free!55969 () Bool)

(declare-fun b_next!56673 () Bool)

(assert (=> b!2007762 (= b_free!55969 (not b_next!56673))))

(declare-fun t!187304 () Bool)

(declare-fun tb!125327 () Bool)

(assert (=> (and b!2007762 (= (toValue!5623 (transformation!3958 (h!27454 (t!187202 rules!3198)))) (toValue!5623 (transformation!3958 (rule!6183 (h!27453 tokens!598))))) t!187304) tb!125327))

(declare-fun result!150192 () Bool)

(assert (= result!150192 result!150122))

(assert (=> d!612926 t!187304))

(declare-fun t!187306 () Bool)

(declare-fun tb!125329 () Bool)

(assert (=> (and b!2007762 (= (toValue!5623 (transformation!3958 (h!27454 (t!187202 rules!3198)))) (toValue!5623 (transformation!3958 (rule!6183 (h!27453 tokens!598))))) t!187306) tb!125329))

(declare-fun result!150194 () Bool)

(assert (= result!150194 result!150130))

(assert (=> d!612926 t!187306))

(assert (=> d!613038 t!187304))

(declare-fun b_and!158457 () Bool)

(declare-fun tp!599054 () Bool)

(assert (=> b!2007762 (= tp!599054 (and (=> t!187304 result!150192) (=> t!187306 result!150194) b_and!158457))))

(declare-fun b_free!55971 () Bool)

(declare-fun b_next!56675 () Bool)

(assert (=> b!2007762 (= b_free!55971 (not b_next!56675))))

(declare-fun tb!125331 () Bool)

(declare-fun t!187308 () Bool)

(assert (=> (and b!2007762 (= (toChars!5482 (transformation!3958 (h!27454 (t!187202 rules!3198)))) (toChars!5482 (transformation!3958 (rule!6183 (h!27453 tokens!598))))) t!187308) tb!125331))

(declare-fun result!150196 () Bool)

(assert (= result!150196 result!150080))

(assert (=> b!2007083 t!187308))

(declare-fun t!187310 () Bool)

(declare-fun tb!125333 () Bool)

(assert (=> (and b!2007762 (= (toChars!5482 (transformation!3958 (h!27454 (t!187202 rules!3198)))) (toChars!5482 (transformation!3958 (rule!6183 separatorToken!354)))) t!187310) tb!125333))

(declare-fun result!150198 () Bool)

(assert (= result!150198 result!150096))

(assert (=> d!613036 t!187310))

(assert (=> d!613030 t!187308))

(declare-fun tb!125335 () Bool)

(declare-fun t!187312 () Bool)

(assert (=> (and b!2007762 (= (toChars!5482 (transformation!3958 (h!27454 (t!187202 rules!3198)))) (toChars!5482 (transformation!3958 (rule!6183 (h!27453 tokens!598))))) t!187312) tb!125335))

(declare-fun result!150200 () Bool)

(assert (= result!150200 result!150170))

(assert (=> d!613038 t!187312))

(assert (=> b!2007129 t!187310))

(declare-fun b_and!158459 () Bool)

(declare-fun tp!599052 () Bool)

(assert (=> b!2007762 (= tp!599052 (and (=> t!187312 result!150200) (=> t!187310 result!150198) (=> t!187308 result!150196) b_and!158459))))

(declare-fun e!1268582 () Bool)

(assert (=> b!2007762 (= e!1268582 (and tp!599054 tp!599052))))

(declare-fun tp!599053 () Bool)

(declare-fun e!1268581 () Bool)

(declare-fun b!2007761 () Bool)

(assert (=> b!2007761 (= e!1268581 (and tp!599053 (inv!29205 (tag!4420 (h!27454 (t!187202 rules!3198)))) (inv!29208 (transformation!3958 (h!27454 (t!187202 rules!3198)))) e!1268582))))

(declare-fun b!2007760 () Bool)

(declare-fun e!1268580 () Bool)

(declare-fun tp!599055 () Bool)

(assert (=> b!2007760 (= e!1268580 (and e!1268581 tp!599055))))

(assert (=> b!2006987 (= tp!598934 e!1268580)))

(assert (= b!2007761 b!2007762))

(assert (= b!2007760 b!2007761))

(assert (= (and b!2006987 ((_ is Cons!22053) (t!187202 rules!3198))) b!2007760))

(declare-fun m!2439879 () Bool)

(assert (=> b!2007761 m!2439879))

(declare-fun m!2439881 () Bool)

(assert (=> b!2007761 m!2439881))

(declare-fun b!2007764 () Bool)

(declare-fun e!1268584 () Bool)

(declare-fun tp!599056 () Bool)

(declare-fun tp!599058 () Bool)

(assert (=> b!2007764 (= e!1268584 (and tp!599056 tp!599058))))

(declare-fun b!2007766 () Bool)

(declare-fun tp!599060 () Bool)

(declare-fun tp!599057 () Bool)

(assert (=> b!2007766 (= e!1268584 (and tp!599060 tp!599057))))

(declare-fun b!2007763 () Bool)

(assert (=> b!2007763 (= e!1268584 tp_is_empty!9177)))

(assert (=> b!2006976 (= tp!598938 e!1268584)))

(declare-fun b!2007765 () Bool)

(declare-fun tp!599059 () Bool)

(assert (=> b!2007765 (= e!1268584 tp!599059)))

(assert (= (and b!2006976 ((_ is ElementMatch!5383) (regex!3958 (rule!6183 (h!27453 tokens!598))))) b!2007763))

(assert (= (and b!2006976 ((_ is Concat!9478) (regex!3958 (rule!6183 (h!27453 tokens!598))))) b!2007764))

(assert (= (and b!2006976 ((_ is Star!5383) (regex!3958 (rule!6183 (h!27453 tokens!598))))) b!2007765))

(assert (= (and b!2006976 ((_ is Union!5383) (regex!3958 (rule!6183 (h!27453 tokens!598))))) b!2007766))

(declare-fun b!2007771 () Bool)

(declare-fun e!1268587 () Bool)

(declare-fun tp!599063 () Bool)

(assert (=> b!2007771 (= e!1268587 (and tp_is_empty!9177 tp!599063))))

(assert (=> b!2006979 (= tp!598942 e!1268587)))

(assert (= (and b!2006979 ((_ is Cons!22051) (originalCharacters!4765 separatorToken!354))) b!2007771))

(declare-fun b!2007772 () Bool)

(declare-fun e!1268588 () Bool)

(declare-fun tp!599064 () Bool)

(assert (=> b!2007772 (= e!1268588 (and tp_is_empty!9177 tp!599064))))

(assert (=> b!2006977 (= tp!598941 e!1268588)))

(assert (= (and b!2006977 ((_ is Cons!22051) (originalCharacters!4765 (h!27453 tokens!598)))) b!2007772))

(declare-fun b_lambda!66951 () Bool)

(assert (= b_lambda!66901 (or (and b!2007733 b_free!55967 (= (toChars!5482 (transformation!3958 (rule!6183 (h!27453 (t!187201 tokens!598))))) (toChars!5482 (transformation!3958 (rule!6183 separatorToken!354))))) (and b!2006989 b_free!55947) (and b!2006984 b_free!55951 (= (toChars!5482 (transformation!3958 (h!27454 rules!3198))) (toChars!5482 (transformation!3958 (rule!6183 separatorToken!354))))) (and b!2007762 b_free!55971 (= (toChars!5482 (transformation!3958 (h!27454 (t!187202 rules!3198)))) (toChars!5482 (transformation!3958 (rule!6183 separatorToken!354))))) (and b!2006981 b_free!55955 (= (toChars!5482 (transformation!3958 (rule!6183 (h!27453 tokens!598)))) (toChars!5482 (transformation!3958 (rule!6183 separatorToken!354))))) b_lambda!66951)))

(declare-fun b_lambda!66953 () Bool)

(assert (= b_lambda!66943 (or (and b!2007733 b_free!55967 (= (toChars!5482 (transformation!3958 (rule!6183 (h!27453 (t!187201 tokens!598))))) (toChars!5482 (transformation!3958 (rule!6183 separatorToken!354))))) (and b!2006989 b_free!55947) (and b!2006984 b_free!55951 (= (toChars!5482 (transformation!3958 (h!27454 rules!3198))) (toChars!5482 (transformation!3958 (rule!6183 separatorToken!354))))) (and b!2007762 b_free!55971 (= (toChars!5482 (transformation!3958 (h!27454 (t!187202 rules!3198)))) (toChars!5482 (transformation!3958 (rule!6183 separatorToken!354))))) (and b!2006981 b_free!55955 (= (toChars!5482 (transformation!3958 (rule!6183 (h!27453 tokens!598)))) (toChars!5482 (transformation!3958 (rule!6183 separatorToken!354))))) b_lambda!66953)))

(declare-fun b_lambda!66955 () Bool)

(assert (= b_lambda!66941 (or (and b!2006984 b_free!55951 (= (toChars!5482 (transformation!3958 (h!27454 rules!3198))) (toChars!5482 (transformation!3958 (rule!6183 (h!27453 tokens!598)))))) (and b!2007762 b_free!55971 (= (toChars!5482 (transformation!3958 (h!27454 (t!187202 rules!3198)))) (toChars!5482 (transformation!3958 (rule!6183 (h!27453 tokens!598)))))) (and b!2007733 b_free!55967 (= (toChars!5482 (transformation!3958 (rule!6183 (h!27453 (t!187201 tokens!598))))) (toChars!5482 (transformation!3958 (rule!6183 (h!27453 tokens!598)))))) (and b!2006989 b_free!55947 (= (toChars!5482 (transformation!3958 (rule!6183 separatorToken!354))) (toChars!5482 (transformation!3958 (rule!6183 (h!27453 tokens!598)))))) (and b!2006981 b_free!55955) b_lambda!66955)))

(declare-fun b_lambda!66957 () Bool)

(assert (= b_lambda!66913 (or (and b!2006984 b_free!55949 (= (toValue!5623 (transformation!3958 (h!27454 rules!3198))) (toValue!5623 (transformation!3958 (rule!6183 (h!27453 tokens!598)))))) (and b!2007762 b_free!55969 (= (toValue!5623 (transformation!3958 (h!27454 (t!187202 rules!3198)))) (toValue!5623 (transformation!3958 (rule!6183 (h!27453 tokens!598)))))) (and b!2006981 b_free!55953) (and b!2006989 b_free!55945 (= (toValue!5623 (transformation!3958 (rule!6183 separatorToken!354))) (toValue!5623 (transformation!3958 (rule!6183 (h!27453 tokens!598)))))) (and b!2007733 b_free!55965 (= (toValue!5623 (transformation!3958 (rule!6183 (h!27453 (t!187201 tokens!598))))) (toValue!5623 (transformation!3958 (rule!6183 (h!27453 tokens!598)))))) b_lambda!66957)))

(declare-fun b_lambda!66959 () Bool)

(assert (= b_lambda!66911 (or (and b!2006984 b_free!55949 (= (toValue!5623 (transformation!3958 (h!27454 rules!3198))) (toValue!5623 (transformation!3958 (rule!6183 (h!27453 tokens!598)))))) (and b!2007762 b_free!55969 (= (toValue!5623 (transformation!3958 (h!27454 (t!187202 rules!3198)))) (toValue!5623 (transformation!3958 (rule!6183 (h!27453 tokens!598)))))) (and b!2006981 b_free!55953) (and b!2006989 b_free!55945 (= (toValue!5623 (transformation!3958 (rule!6183 separatorToken!354))) (toValue!5623 (transformation!3958 (rule!6183 (h!27453 tokens!598)))))) (and b!2007733 b_free!55965 (= (toValue!5623 (transformation!3958 (rule!6183 (h!27453 (t!187201 tokens!598))))) (toValue!5623 (transformation!3958 (rule!6183 (h!27453 tokens!598)))))) b_lambda!66959)))

(declare-fun b_lambda!66961 () Bool)

(assert (= b_lambda!66945 (or (and b!2006984 b_free!55951 (= (toChars!5482 (transformation!3958 (h!27454 rules!3198))) (toChars!5482 (transformation!3958 (rule!6183 (h!27453 tokens!598)))))) (and b!2007762 b_free!55971 (= (toChars!5482 (transformation!3958 (h!27454 (t!187202 rules!3198)))) (toChars!5482 (transformation!3958 (rule!6183 (h!27453 tokens!598)))))) (and b!2007733 b_free!55967 (= (toChars!5482 (transformation!3958 (rule!6183 (h!27453 (t!187201 tokens!598))))) (toChars!5482 (transformation!3958 (rule!6183 (h!27453 tokens!598)))))) (and b!2006989 b_free!55947 (= (toChars!5482 (transformation!3958 (rule!6183 separatorToken!354))) (toChars!5482 (transformation!3958 (rule!6183 (h!27453 tokens!598)))))) (and b!2006981 b_free!55955) b_lambda!66961)))

(declare-fun b_lambda!66963 () Bool)

(assert (= b_lambda!66947 (or (and b!2006984 b_free!55949 (= (toValue!5623 (transformation!3958 (h!27454 rules!3198))) (toValue!5623 (transformation!3958 (rule!6183 (h!27453 tokens!598)))))) (and b!2007762 b_free!55969 (= (toValue!5623 (transformation!3958 (h!27454 (t!187202 rules!3198)))) (toValue!5623 (transformation!3958 (rule!6183 (h!27453 tokens!598)))))) (and b!2006981 b_free!55953) (and b!2006989 b_free!55945 (= (toValue!5623 (transformation!3958 (rule!6183 separatorToken!354))) (toValue!5623 (transformation!3958 (rule!6183 (h!27453 tokens!598)))))) (and b!2007733 b_free!55965 (= (toValue!5623 (transformation!3958 (rule!6183 (h!27453 (t!187201 tokens!598))))) (toValue!5623 (transformation!3958 (rule!6183 (h!27453 tokens!598)))))) b_lambda!66963)))

(declare-fun b_lambda!66965 () Bool)

(assert (= b_lambda!66897 (or (and b!2006984 b_free!55951 (= (toChars!5482 (transformation!3958 (h!27454 rules!3198))) (toChars!5482 (transformation!3958 (rule!6183 (h!27453 tokens!598)))))) (and b!2007762 b_free!55971 (= (toChars!5482 (transformation!3958 (h!27454 (t!187202 rules!3198)))) (toChars!5482 (transformation!3958 (rule!6183 (h!27453 tokens!598)))))) (and b!2007733 b_free!55967 (= (toChars!5482 (transformation!3958 (rule!6183 (h!27453 (t!187201 tokens!598))))) (toChars!5482 (transformation!3958 (rule!6183 (h!27453 tokens!598)))))) (and b!2006989 b_free!55947 (= (toChars!5482 (transformation!3958 (rule!6183 separatorToken!354))) (toChars!5482 (transformation!3958 (rule!6183 (h!27453 tokens!598)))))) (and b!2006981 b_free!55955) b_lambda!66965)))

(declare-fun b_lambda!66967 () Bool)

(assert (= b_lambda!66949 (or b!2006999 b_lambda!66967)))

(declare-fun bs!419612 () Bool)

(declare-fun d!613064 () Bool)

(assert (= bs!419612 (and d!613064 b!2006999)))

(assert (=> bs!419612 (= (dynLambda!10848 lambda!75991 (h!27453 tokens!598)) (not (isSeparator!3958 (rule!6183 (h!27453 tokens!598)))))))

(assert (=> b!2007704 d!613064))

(check-sat (not d!613028) (not b!2007638) (not b!2007760) (not b!2007112) (not b!2007076) (not b!2007749) (not b!2007662) (not b!2007609) (not d!613036) (not b!2007339) (not d!613060) (not b!2007617) (not b!2007170) (not bm!122725) (not b_lambda!66963) (not b!2007190) (not bm!122727) (not d!613040) (not b_next!56673) (not b!2007636) (not b!2007637) (not b_next!56649) (not b!2007615) (not b!2007130) (not bm!122671) (not b_lambda!66957) (not b!2007118) (not b_next!56675) (not b!2007646) (not d!613056) (not b!2007653) (not d!612926) b_and!158445 (not b!2007608) (not b_lambda!66961) (not b!2007614) (not d!612912) (not b!2007340) (not b!2007694) (not b!2007334) (not d!613012) (not b!2007730) (not b!2007131) (not tb!125273) (not bm!122663) (not bm!122737) (not d!613018) (not d!613034) (not b_next!56653) (not b!2007520) (not b!2007719) (not b!2007336) (not bm!122723) (not d!613016) (not b!2007531) (not d!613022) (not b!2007335) b_and!158459 b_and!158451 (not d!612892) (not b!2007635) (not b!2007731) (not d!613046) (not b!2007647) (not b!2007169) (not d!612886) (not b!2007639) (not tb!125249) (not b_lambda!66955) (not b!2007342) (not b!2007124) (not b!2007628) (not b!2007122) (not b!2007765) (not b!2007764) (not b!2007644) (not b_next!56669) (not d!613054) (not b_lambda!66959) (not b!2007074) (not b!2007134) (not d!613006) (not b_lambda!66953) (not b!2007516) (not d!612900) (not b!2007751) (not b!2007611) (not b!2007766) b_and!158449 (not b!2007084) (not b!2007176) (not tb!125279) (not d!612910) b_and!158455 (not d!613030) (not bm!122664) (not b!2007168) (not b!2007746) (not b_next!56651) (not b!2007661) (not b!2007697) (not bm!122726) (not b!2007645) (not b_lambda!66967) b_and!158447 (not b!2007129) (not b!2007710) (not b!2007761) (not b!2007705) b_and!158457 (not bm!122736) (not d!613032) (not b!2007698) (not d!613050) (not b!2007075) (not b!2007175) (not bm!122673) (not bm!122695) (not d!612880) b_and!158443 (not b!2007718) (not b_next!56655) (not b!2007666) (not b!2007517) tp_is_empty!9177 (not b_next!56659) (not b!2007341) (not d!613024) (not b!2007072) (not d!613038) (not b_next!56657) (not b!2007338) (not b!2007071) (not b!2007128) (not b!2007632) (not b!2007095) (not d!612920) (not b!2007191) (not b!2007659) (not tb!125237) (not b!2007716) (not b!2007127) (not d!613026) b_and!158453 (not b!2007120) (not b_lambda!66965) (not b_next!56671) (not b_lambda!66951) (not b!2007693) (not b!2007119) (not b!2007750) (not bm!122739) (not b!2007083) (not d!613042) (not d!613020) (not b!2007070) (not d!613048) (not b!2007665) (not b!2007712) (not b!2007161) (not b!2007123) (not b!2007711) (not d!612914) (not b!2007747) (not b!2007633) (not b!2007745) (not b!2007771) (not b!2007521) (not b!2007629) (not d!612938) (not tb!125311) b_and!158441 (not b!2007631) (not b!2007188) (not d!612906) (not b!2007772) (not b!2007732))
(check-sat (not b_next!56675) b_and!158445 (not b_next!56653) (not b_next!56669) b_and!158449 b_and!158443 (not b_next!56655) b_and!158441 (not b_next!56673) (not b_next!56649) b_and!158459 b_and!158451 b_and!158455 (not b_next!56651) b_and!158447 b_and!158457 (not b_next!56659) (not b_next!56657) (not b_next!56671) b_and!158453)

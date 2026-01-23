; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!192224 () Bool)

(assert start!192224)

(declare-fun b!1917220 () Bool)

(declare-fun b_free!54385 () Bool)

(declare-fun b_next!55089 () Bool)

(assert (=> b!1917220 (= b_free!54385 (not b_next!55089))))

(declare-fun tp!547144 () Bool)

(declare-fun b_and!149591 () Bool)

(assert (=> b!1917220 (= tp!547144 b_and!149591)))

(declare-fun b_free!54387 () Bool)

(declare-fun b_next!55091 () Bool)

(assert (=> b!1917220 (= b_free!54387 (not b_next!55091))))

(declare-fun tp!547149 () Bool)

(declare-fun b_and!149593 () Bool)

(assert (=> b!1917220 (= tp!547149 b_and!149593)))

(declare-fun b!1917218 () Bool)

(declare-fun b_free!54389 () Bool)

(declare-fun b_next!55093 () Bool)

(assert (=> b!1917218 (= b_free!54389 (not b_next!55093))))

(declare-fun tp!547146 () Bool)

(declare-fun b_and!149595 () Bool)

(assert (=> b!1917218 (= tp!547146 b_and!149595)))

(declare-fun b_free!54391 () Bool)

(declare-fun b_next!55095 () Bool)

(assert (=> b!1917218 (= b_free!54391 (not b_next!55095))))

(declare-fun tp!547148 () Bool)

(declare-fun b_and!149597 () Bool)

(assert (=> b!1917218 (= tp!547148 b_and!149597)))

(declare-fun b!1917232 () Bool)

(declare-fun b_free!54393 () Bool)

(declare-fun b_next!55097 () Bool)

(assert (=> b!1917232 (= b_free!54393 (not b_next!55097))))

(declare-fun tp!547142 () Bool)

(declare-fun b_and!149599 () Bool)

(assert (=> b!1917232 (= tp!547142 b_and!149599)))

(declare-fun b_free!54395 () Bool)

(declare-fun b_next!55099 () Bool)

(assert (=> b!1917232 (= b_free!54395 (not b_next!55099))))

(declare-fun tp!547143 () Bool)

(declare-fun b_and!149601 () Bool)

(assert (=> b!1917232 (= tp!547143 b_and!149601)))

(declare-fun b!1917212 () Bool)

(declare-fun tp!547140 () Bool)

(declare-fun e!1224929 () Bool)

(declare-fun e!1224926 () Bool)

(declare-datatypes ((List!21764 0))(
  ( (Nil!21682) (Cons!21682 (h!27083 (_ BitVec 16)) (t!178557 List!21764)) )
))
(declare-datatypes ((TokenValue!4010 0))(
  ( (FloatLiteralValue!8020 (text!28515 List!21764)) (TokenValueExt!4009 (__x!13518 Int)) (Broken!20050 (value!121974 List!21764)) (Object!4091) (End!4010) (Def!4010) (Underscore!4010) (Match!4010) (Else!4010) (Error!4010) (Case!4010) (If!4010) (Extends!4010) (Abstract!4010) (Class!4010) (Val!4010) (DelimiterValue!8020 (del!4070 List!21764)) (KeywordValue!4016 (value!121975 List!21764)) (CommentValue!8020 (value!121976 List!21764)) (WhitespaceValue!8020 (value!121977 List!21764)) (IndentationValue!4010 (value!121978 List!21764)) (String!25167) (Int32!4010) (Broken!20051 (value!121979 List!21764)) (Boolean!4011) (Unit!36081) (OperatorValue!4013 (op!4070 List!21764)) (IdentifierValue!8020 (value!121980 List!21764)) (IdentifierValue!8021 (value!121981 List!21764)) (WhitespaceValue!8021 (value!121982 List!21764)) (True!8020) (False!8020) (Broken!20052 (value!121983 List!21764)) (Broken!20053 (value!121984 List!21764)) (True!8021) (RightBrace!4010) (RightBracket!4010) (Colon!4010) (Null!4010) (Comma!4010) (LeftBracket!4010) (False!8021) (LeftBrace!4010) (ImaginaryLiteralValue!4010 (text!28516 List!21764)) (StringLiteralValue!12030 (value!121985 List!21764)) (EOFValue!4010 (value!121986 List!21764)) (IdentValue!4010 (value!121987 List!21764)) (DelimiterValue!8021 (value!121988 List!21764)) (DedentValue!4010 (value!121989 List!21764)) (NewLineValue!4010 (value!121990 List!21764)) (IntegerValue!12030 (value!121991 (_ BitVec 32)) (text!28517 List!21764)) (IntegerValue!12031 (value!121992 Int) (text!28518 List!21764)) (Times!4010) (Or!4010) (Equal!4010) (Minus!4010) (Broken!20054 (value!121993 List!21764)) (And!4010) (Div!4010) (LessEqual!4010) (Mod!4010) (Concat!9309) (Not!4010) (Plus!4010) (SpaceValue!4010 (value!121994 List!21764)) (IntegerValue!12032 (value!121995 Int) (text!28519 List!21764)) (StringLiteralValue!12031 (text!28520 List!21764)) (FloatLiteralValue!8021 (text!28521 List!21764)) (BytesLiteralValue!4010 (value!121996 List!21764)) (CommentValue!8021 (value!121997 List!21764)) (StringLiteralValue!12032 (value!121998 List!21764)) (ErrorTokenValue!4010 (msg!4071 List!21764)) )
))
(declare-datatypes ((C!10744 0))(
  ( (C!10745 (val!6324 Int)) )
))
(declare-datatypes ((List!21765 0))(
  ( (Nil!21683) (Cons!21683 (h!27084 C!10744) (t!178558 List!21765)) )
))
(declare-datatypes ((Regex!5299 0))(
  ( (ElementMatch!5299 (c!312040 C!10744)) (Concat!9310 (regOne!11110 Regex!5299) (regTwo!11110 Regex!5299)) (EmptyExpr!5299) (Star!5299 (reg!5628 Regex!5299)) (EmptyLang!5299) (Union!5299 (regOne!11111 Regex!5299) (regTwo!11111 Regex!5299)) )
))
(declare-datatypes ((String!25168 0))(
  ( (String!25169 (value!121999 String)) )
))
(declare-datatypes ((IArray!14485 0))(
  ( (IArray!14486 (innerList!7300 List!21765)) )
))
(declare-datatypes ((Conc!7240 0))(
  ( (Node!7240 (left!17311 Conc!7240) (right!17641 Conc!7240) (csize!14710 Int) (cheight!7451 Int)) (Leaf!10640 (xs!10134 IArray!14485) (csize!14711 Int)) (Empty!7240) )
))
(declare-datatypes ((BalanceConc!14296 0))(
  ( (BalanceConc!14297 (c!312041 Conc!7240)) )
))
(declare-datatypes ((TokenValueInjection!7604 0))(
  ( (TokenValueInjection!7605 (toValue!5503 Int) (toChars!5362 Int)) )
))
(declare-datatypes ((Rule!7548 0))(
  ( (Rule!7549 (regex!3874 Regex!5299) (tag!4314 String!25168) (isSeparator!3874 Bool) (transformation!3874 TokenValueInjection!7604)) )
))
(declare-datatypes ((Token!7300 0))(
  ( (Token!7301 (value!122000 TokenValue!4010) (rule!6077 Rule!7548) (size!17020 Int) (originalCharacters!4681 List!21765)) )
))
(declare-datatypes ((List!21766 0))(
  ( (Nil!21684) (Cons!21684 (h!27085 Token!7300) (t!178559 List!21766)) )
))
(declare-fun tokens!598 () List!21766)

(declare-fun inv!28774 (String!25168) Bool)

(declare-fun inv!28777 (TokenValueInjection!7604) Bool)

(assert (=> b!1917212 (= e!1224929 (and tp!547140 (inv!28774 (tag!4314 (rule!6077 (h!27085 tokens!598)))) (inv!28777 (transformation!3874 (rule!6077 (h!27085 tokens!598)))) e!1224926))))

(declare-fun b!1917213 () Bool)

(declare-fun e!1224916 () Bool)

(declare-fun e!1224932 () Bool)

(assert (=> b!1917213 (= e!1224916 (not e!1224932))))

(declare-fun res!857008 () Bool)

(assert (=> b!1917213 (=> res!857008 e!1224932)))

(declare-datatypes ((tuple2!20404 0))(
  ( (tuple2!20405 (_1!11671 Token!7300) (_2!11671 List!21765)) )
))
(declare-datatypes ((Option!4453 0))(
  ( (None!4452) (Some!4452 (v!26525 tuple2!20404)) )
))
(declare-fun lt!734953 () Option!4453)

(declare-fun lt!734960 () Bool)

(get-info :version)

(assert (=> b!1917213 (= res!857008 (or (and (not lt!734960) (= (_1!11671 (v!26525 lt!734953)) (h!27085 tokens!598))) (and (not lt!734960) (not (= (_1!11671 (v!26525 lt!734953)) (h!27085 tokens!598)))) (not ((_ is None!4452) lt!734953))))))

(assert (=> b!1917213 (= lt!734960 (not ((_ is Some!4452) lt!734953)))))

(declare-fun separatorToken!354 () Token!7300)

(declare-datatypes ((LexerInterface!3487 0))(
  ( (LexerInterfaceExt!3484 (__x!13519 Int)) (Lexer!3485) )
))
(declare-fun thiss!23328 () LexerInterface!3487)

(declare-fun lt!734955 () List!21765)

(declare-datatypes ((List!21767 0))(
  ( (Nil!21685) (Cons!21685 (h!27086 Rule!7548) (t!178560 List!21767)) )
))
(declare-fun rules!3198 () List!21767)

(declare-fun maxPrefix!1933 (LexerInterface!3487 List!21767 List!21765) Option!4453)

(declare-fun ++!5829 (List!21765 List!21765) List!21765)

(declare-fun printWithSeparatorTokenWhenNeededList!530 (LexerInterface!3487 List!21767 List!21766 Token!7300) List!21765)

(assert (=> b!1917213 (= lt!734953 (maxPrefix!1933 thiss!23328 rules!3198 (++!5829 lt!734955 (printWithSeparatorTokenWhenNeededList!530 thiss!23328 rules!3198 (t!178559 tokens!598) separatorToken!354))))))

(declare-fun e!1224920 () Bool)

(assert (=> b!1917213 e!1224920))

(declare-fun res!856997 () Bool)

(assert (=> b!1917213 (=> (not res!856997) (not e!1224920))))

(declare-datatypes ((Option!4454 0))(
  ( (None!4453) (Some!4453 (v!26526 Rule!7548)) )
))
(declare-fun lt!734962 () Option!4454)

(declare-fun isDefined!3751 (Option!4454) Bool)

(assert (=> b!1917213 (= res!856997 (isDefined!3751 lt!734962))))

(declare-fun getRuleFromTag!717 (LexerInterface!3487 List!21767 String!25168) Option!4454)

(assert (=> b!1917213 (= lt!734962 (getRuleFromTag!717 thiss!23328 rules!3198 (tag!4314 (rule!6077 (h!27085 tokens!598)))))))

(declare-datatypes ((Unit!36082 0))(
  ( (Unit!36083) )
))
(declare-fun lt!734961 () Unit!36082)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!717 (LexerInterface!3487 List!21767 List!21765 Token!7300) Unit!36082)

(assert (=> b!1917213 (= lt!734961 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!717 thiss!23328 rules!3198 lt!734955 (h!27085 tokens!598)))))

(declare-fun e!1224917 () Bool)

(assert (=> b!1917213 e!1224917))

(declare-fun res!856996 () Bool)

(assert (=> b!1917213 (=> (not res!856996) (not e!1224917))))

(declare-fun lt!734948 () Option!4453)

(declare-fun isDefined!3752 (Option!4453) Bool)

(assert (=> b!1917213 (= res!856996 (isDefined!3752 lt!734948))))

(assert (=> b!1917213 (= lt!734948 (maxPrefix!1933 thiss!23328 rules!3198 lt!734955))))

(declare-fun lt!734959 () BalanceConc!14296)

(declare-fun list!8806 (BalanceConc!14296) List!21765)

(assert (=> b!1917213 (= lt!734955 (list!8806 lt!734959))))

(declare-fun e!1224924 () Bool)

(assert (=> b!1917213 e!1224924))

(declare-fun res!857007 () Bool)

(assert (=> b!1917213 (=> (not res!857007) (not e!1224924))))

(declare-fun lt!734957 () Option!4454)

(assert (=> b!1917213 (= res!857007 (isDefined!3751 lt!734957))))

(assert (=> b!1917213 (= lt!734957 (getRuleFromTag!717 thiss!23328 rules!3198 (tag!4314 (rule!6077 separatorToken!354))))))

(declare-fun lt!734950 () List!21765)

(declare-fun lt!734963 () Unit!36082)

(assert (=> b!1917213 (= lt!734963 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!717 thiss!23328 rules!3198 lt!734950 separatorToken!354))))

(declare-fun charsOf!2430 (Token!7300) BalanceConc!14296)

(assert (=> b!1917213 (= lt!734950 (list!8806 (charsOf!2430 separatorToken!354)))))

(declare-fun lt!734958 () Unit!36082)

(declare-fun lemmaEqSameImage!582 (TokenValueInjection!7604 BalanceConc!14296 BalanceConc!14296) Unit!36082)

(declare-fun seqFromList!2746 (List!21765) BalanceConc!14296)

(assert (=> b!1917213 (= lt!734958 (lemmaEqSameImage!582 (transformation!3874 (rule!6077 (h!27085 tokens!598))) lt!734959 (seqFromList!2746 (originalCharacters!4681 (h!27085 tokens!598)))))))

(declare-fun lt!734949 () Unit!36082)

(declare-fun lemmaSemiInverse!853 (TokenValueInjection!7604 BalanceConc!14296) Unit!36082)

(assert (=> b!1917213 (= lt!734949 (lemmaSemiInverse!853 (transformation!3874 (rule!6077 (h!27085 tokens!598))) lt!734959))))

(assert (=> b!1917213 (= lt!734959 (charsOf!2430 (h!27085 tokens!598)))))

(declare-fun b!1917214 () Bool)

(declare-fun e!1224925 () Bool)

(declare-fun lt!734947 () Rule!7548)

(assert (=> b!1917214 (= e!1224925 (= (rule!6077 separatorToken!354) lt!734947))))

(declare-fun b!1917215 () Bool)

(declare-fun res!857006 () Bool)

(assert (=> b!1917215 (=> (not res!857006) (not e!1224916))))

(declare-fun rulesProduceEachTokenIndividuallyList!1218 (LexerInterface!3487 List!21767 List!21766) Bool)

(assert (=> b!1917215 (= res!857006 (rulesProduceEachTokenIndividuallyList!1218 thiss!23328 rules!3198 tokens!598))))

(declare-fun e!1224922 () Bool)

(declare-fun b!1917216 () Bool)

(declare-fun e!1224918 () Bool)

(declare-fun tp!547145 () Bool)

(assert (=> b!1917216 (= e!1224918 (and tp!547145 (inv!28774 (tag!4314 (h!27086 rules!3198))) (inv!28777 (transformation!3874 (h!27086 rules!3198))) e!1224922))))

(declare-fun b!1917217 () Bool)

(declare-fun res!857004 () Bool)

(assert (=> b!1917217 (=> (not res!857004) (not e!1224916))))

(assert (=> b!1917217 (= res!857004 (isSeparator!3874 (rule!6077 separatorToken!354)))))

(assert (=> b!1917218 (= e!1224922 (and tp!547146 tp!547148))))

(declare-fun b!1917219 () Bool)

(assert (=> b!1917219 (= e!1224932 true)))

(declare-fun lt!734952 () List!21765)

(declare-fun printList!1066 (LexerInterface!3487 List!21766) List!21765)

(assert (=> b!1917219 (= lt!734952 (printList!1066 thiss!23328 (Cons!21684 (h!27085 tokens!598) Nil!21684)))))

(declare-fun lt!734964 () List!21765)

(declare-fun lt!734951 () BalanceConc!14296)

(assert (=> b!1917219 (= lt!734964 (list!8806 lt!734951))))

(declare-datatypes ((IArray!14487 0))(
  ( (IArray!14488 (innerList!7301 List!21766)) )
))
(declare-datatypes ((Conc!7241 0))(
  ( (Node!7241 (left!17312 Conc!7241) (right!17642 Conc!7241) (csize!14712 Int) (cheight!7452 Int)) (Leaf!10641 (xs!10135 IArray!14487) (csize!14713 Int)) (Empty!7241) )
))
(declare-datatypes ((BalanceConc!14298 0))(
  ( (BalanceConc!14299 (c!312042 Conc!7241)) )
))
(declare-fun lt!734954 () BalanceConc!14298)

(declare-fun printTailRec!1002 (LexerInterface!3487 BalanceConc!14298 Int BalanceConc!14296) BalanceConc!14296)

(assert (=> b!1917219 (= lt!734951 (printTailRec!1002 thiss!23328 lt!734954 0 (BalanceConc!14297 Empty!7240)))))

(declare-fun print!1495 (LexerInterface!3487 BalanceConc!14298) BalanceConc!14296)

(assert (=> b!1917219 (= lt!734951 (print!1495 thiss!23328 lt!734954))))

(declare-fun singletonSeq!1897 (Token!7300) BalanceConc!14298)

(assert (=> b!1917219 (= lt!734954 (singletonSeq!1897 (h!27085 tokens!598)))))

(declare-fun b!1917221 () Bool)

(declare-fun res!857000 () Bool)

(assert (=> b!1917221 (=> (not res!857000) (not e!1224916))))

(declare-fun rulesInvariant!3094 (LexerInterface!3487 List!21767) Bool)

(assert (=> b!1917221 (= res!857000 (rulesInvariant!3094 thiss!23328 rules!3198))))

(declare-fun b!1917222 () Bool)

(declare-fun e!1224919 () Bool)

(declare-fun tp!547147 () Bool)

(assert (=> b!1917222 (= e!1224919 (and e!1224918 tp!547147))))

(declare-fun b!1917223 () Bool)

(declare-fun get!6797 (Option!4453) tuple2!20404)

(assert (=> b!1917223 (= e!1224917 (= (_1!11671 (get!6797 lt!734948)) (h!27085 tokens!598)))))

(declare-fun e!1224934 () Bool)

(declare-fun e!1224913 () Bool)

(declare-fun b!1917224 () Bool)

(declare-fun tp!547141 () Bool)

(declare-fun inv!21 (TokenValue!4010) Bool)

(assert (=> b!1917224 (= e!1224913 (and (inv!21 (value!122000 separatorToken!354)) e!1224934 tp!547141))))

(declare-fun tp!547150 () Bool)

(declare-fun e!1224914 () Bool)

(declare-fun b!1917225 () Bool)

(assert (=> b!1917225 (= e!1224914 (and (inv!21 (value!122000 (h!27085 tokens!598))) e!1224929 tp!547150))))

(declare-fun b!1917226 () Bool)

(declare-fun res!857003 () Bool)

(assert (=> b!1917226 (=> (not res!857003) (not e!1224916))))

(declare-fun lambda!74821 () Int)

(declare-fun forall!4570 (List!21766 Int) Bool)

(assert (=> b!1917226 (= res!857003 (forall!4570 tokens!598 lambda!74821))))

(declare-fun tp!547151 () Bool)

(declare-fun e!1224921 () Bool)

(declare-fun b!1917227 () Bool)

(assert (=> b!1917227 (= e!1224934 (and tp!547151 (inv!28774 (tag!4314 (rule!6077 separatorToken!354))) (inv!28777 (transformation!3874 (rule!6077 separatorToken!354))) e!1224921))))

(declare-fun b!1917228 () Bool)

(declare-fun e!1224927 () Bool)

(assert (=> b!1917228 (= e!1224920 e!1224927)))

(declare-fun res!857010 () Bool)

(assert (=> b!1917228 (=> (not res!857010) (not e!1224927))))

(declare-fun lt!734956 () Rule!7548)

(declare-fun matchR!2585 (Regex!5299 List!21765) Bool)

(assert (=> b!1917228 (= res!857010 (matchR!2585 (regex!3874 lt!734956) lt!734955))))

(declare-fun get!6798 (Option!4454) Rule!7548)

(assert (=> b!1917228 (= lt!734956 (get!6798 lt!734962))))

(declare-fun b!1917229 () Bool)

(declare-fun res!856999 () Bool)

(assert (=> b!1917229 (=> (not res!856999) (not e!1224916))))

(declare-fun sepAndNonSepRulesDisjointChars!972 (List!21767 List!21767) Bool)

(assert (=> b!1917229 (= res!856999 (sepAndNonSepRulesDisjointChars!972 rules!3198 rules!3198))))

(declare-fun b!1917230 () Bool)

(assert (=> b!1917230 (= e!1224927 (= (rule!6077 (h!27085 tokens!598)) lt!734956))))

(declare-fun b!1917231 () Bool)

(declare-fun tp!547152 () Bool)

(declare-fun e!1224928 () Bool)

(declare-fun inv!28778 (Token!7300) Bool)

(assert (=> b!1917231 (= e!1224928 (and (inv!28778 (h!27085 tokens!598)) e!1224914 tp!547152))))

(assert (=> b!1917232 (= e!1224921 (and tp!547142 tp!547143))))

(declare-fun b!1917233 () Bool)

(declare-fun res!857009 () Bool)

(assert (=> b!1917233 (=> (not res!857009) (not e!1224916))))

(declare-fun isEmpty!13358 (List!21767) Bool)

(assert (=> b!1917233 (= res!857009 (not (isEmpty!13358 rules!3198)))))

(declare-fun res!857001 () Bool)

(assert (=> start!192224 (=> (not res!857001) (not e!1224916))))

(assert (=> start!192224 (= res!857001 ((_ is Lexer!3485) thiss!23328))))

(assert (=> start!192224 e!1224916))

(assert (=> start!192224 true))

(assert (=> start!192224 e!1224919))

(assert (=> start!192224 e!1224928))

(assert (=> start!192224 (and (inv!28778 separatorToken!354) e!1224913)))

(assert (=> b!1917220 (= e!1224926 (and tp!547144 tp!547149))))

(declare-fun b!1917234 () Bool)

(declare-fun res!857002 () Bool)

(assert (=> b!1917234 (=> (not res!857002) (not e!1224916))))

(declare-fun rulesProduceIndividualToken!1659 (LexerInterface!3487 List!21767 Token!7300) Bool)

(assert (=> b!1917234 (= res!857002 (rulesProduceIndividualToken!1659 thiss!23328 rules!3198 separatorToken!354))))

(declare-fun b!1917235 () Bool)

(assert (=> b!1917235 (= e!1224924 e!1224925)))

(declare-fun res!856998 () Bool)

(assert (=> b!1917235 (=> (not res!856998) (not e!1224925))))

(assert (=> b!1917235 (= res!856998 (matchR!2585 (regex!3874 lt!734947) lt!734950))))

(assert (=> b!1917235 (= lt!734947 (get!6798 lt!734957))))

(declare-fun b!1917236 () Bool)

(declare-fun res!857005 () Bool)

(assert (=> b!1917236 (=> (not res!857005) (not e!1224916))))

(assert (=> b!1917236 (= res!857005 ((_ is Cons!21684) tokens!598))))

(assert (= (and start!192224 res!857001) b!1917233))

(assert (= (and b!1917233 res!857009) b!1917221))

(assert (= (and b!1917221 res!857000) b!1917215))

(assert (= (and b!1917215 res!857006) b!1917234))

(assert (= (and b!1917234 res!857002) b!1917217))

(assert (= (and b!1917217 res!857004) b!1917226))

(assert (= (and b!1917226 res!857003) b!1917229))

(assert (= (and b!1917229 res!856999) b!1917236))

(assert (= (and b!1917236 res!857005) b!1917213))

(assert (= (and b!1917213 res!857007) b!1917235))

(assert (= (and b!1917235 res!856998) b!1917214))

(assert (= (and b!1917213 res!856996) b!1917223))

(assert (= (and b!1917213 res!856997) b!1917228))

(assert (= (and b!1917228 res!857010) b!1917230))

(assert (= (and b!1917213 (not res!857008)) b!1917219))

(assert (= b!1917216 b!1917218))

(assert (= b!1917222 b!1917216))

(assert (= (and start!192224 ((_ is Cons!21685) rules!3198)) b!1917222))

(assert (= b!1917212 b!1917220))

(assert (= b!1917225 b!1917212))

(assert (= b!1917231 b!1917225))

(assert (= (and start!192224 ((_ is Cons!21684) tokens!598)) b!1917231))

(assert (= b!1917227 b!1917232))

(assert (= b!1917224 b!1917227))

(assert (= start!192224 b!1917224))

(declare-fun m!2352479 () Bool)

(assert (=> b!1917216 m!2352479))

(declare-fun m!2352481 () Bool)

(assert (=> b!1917216 m!2352481))

(declare-fun m!2352483 () Bool)

(assert (=> start!192224 m!2352483))

(declare-fun m!2352485 () Bool)

(assert (=> b!1917213 m!2352485))

(declare-fun m!2352487 () Bool)

(assert (=> b!1917213 m!2352487))

(declare-fun m!2352489 () Bool)

(assert (=> b!1917213 m!2352489))

(assert (=> b!1917213 m!2352485))

(declare-fun m!2352491 () Bool)

(assert (=> b!1917213 m!2352491))

(declare-fun m!2352493 () Bool)

(assert (=> b!1917213 m!2352493))

(declare-fun m!2352495 () Bool)

(assert (=> b!1917213 m!2352495))

(declare-fun m!2352497 () Bool)

(assert (=> b!1917213 m!2352497))

(declare-fun m!2352499 () Bool)

(assert (=> b!1917213 m!2352499))

(declare-fun m!2352501 () Bool)

(assert (=> b!1917213 m!2352501))

(declare-fun m!2352503 () Bool)

(assert (=> b!1917213 m!2352503))

(declare-fun m!2352505 () Bool)

(assert (=> b!1917213 m!2352505))

(declare-fun m!2352507 () Bool)

(assert (=> b!1917213 m!2352507))

(declare-fun m!2352509 () Bool)

(assert (=> b!1917213 m!2352509))

(declare-fun m!2352511 () Bool)

(assert (=> b!1917213 m!2352511))

(declare-fun m!2352513 () Bool)

(assert (=> b!1917213 m!2352513))

(declare-fun m!2352515 () Bool)

(assert (=> b!1917213 m!2352515))

(assert (=> b!1917213 m!2352499))

(assert (=> b!1917213 m!2352511))

(declare-fun m!2352517 () Bool)

(assert (=> b!1917213 m!2352517))

(assert (=> b!1917213 m!2352515))

(declare-fun m!2352519 () Bool)

(assert (=> b!1917213 m!2352519))

(declare-fun m!2352521 () Bool)

(assert (=> b!1917221 m!2352521))

(declare-fun m!2352523 () Bool)

(assert (=> b!1917229 m!2352523))

(declare-fun m!2352525 () Bool)

(assert (=> b!1917231 m!2352525))

(declare-fun m!2352527 () Bool)

(assert (=> b!1917212 m!2352527))

(declare-fun m!2352529 () Bool)

(assert (=> b!1917212 m!2352529))

(declare-fun m!2352531 () Bool)

(assert (=> b!1917234 m!2352531))

(declare-fun m!2352533 () Bool)

(assert (=> b!1917228 m!2352533))

(declare-fun m!2352535 () Bool)

(assert (=> b!1917228 m!2352535))

(declare-fun m!2352537 () Bool)

(assert (=> b!1917226 m!2352537))

(declare-fun m!2352539 () Bool)

(assert (=> b!1917235 m!2352539))

(declare-fun m!2352541 () Bool)

(assert (=> b!1917235 m!2352541))

(declare-fun m!2352543 () Bool)

(assert (=> b!1917219 m!2352543))

(declare-fun m!2352545 () Bool)

(assert (=> b!1917219 m!2352545))

(declare-fun m!2352547 () Bool)

(assert (=> b!1917219 m!2352547))

(declare-fun m!2352549 () Bool)

(assert (=> b!1917219 m!2352549))

(declare-fun m!2352551 () Bool)

(assert (=> b!1917219 m!2352551))

(declare-fun m!2352553 () Bool)

(assert (=> b!1917225 m!2352553))

(declare-fun m!2352555 () Bool)

(assert (=> b!1917223 m!2352555))

(declare-fun m!2352557 () Bool)

(assert (=> b!1917227 m!2352557))

(declare-fun m!2352559 () Bool)

(assert (=> b!1917227 m!2352559))

(declare-fun m!2352561 () Bool)

(assert (=> b!1917215 m!2352561))

(declare-fun m!2352563 () Bool)

(assert (=> b!1917233 m!2352563))

(declare-fun m!2352565 () Bool)

(assert (=> b!1917224 m!2352565))

(check-sat (not b!1917215) b_and!149599 (not b!1917234) (not b!1917229) (not b!1917235) (not b_next!55099) (not b!1917212) (not b!1917224) (not b_next!55089) (not b!1917221) (not b!1917228) (not b!1917216) (not b!1917219) b_and!149591 (not b!1917226) (not b!1917213) (not b!1917233) b_and!149601 (not b_next!55095) (not b_next!55091) (not b_next!55097) (not b!1917225) b_and!149593 (not b!1917231) b_and!149595 (not start!192224) (not b!1917227) b_and!149597 (not b_next!55093) (not b!1917222) (not b!1917223))
(check-sat (not b_next!55089) b_and!149599 b_and!149591 b_and!149601 (not b_next!55097) b_and!149593 b_and!149595 (not b_next!55099) b_and!149597 (not b_next!55093) (not b_next!55095) (not b_next!55091))

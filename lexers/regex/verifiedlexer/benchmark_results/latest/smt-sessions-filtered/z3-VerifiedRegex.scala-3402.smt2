; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!192236 () Bool)

(assert start!192236)

(declare-fun b!1917717 () Bool)

(declare-fun b_free!54457 () Bool)

(declare-fun b_next!55161 () Bool)

(assert (=> b!1917717 (= b_free!54457 (not b_next!55161))))

(declare-fun tp!547385 () Bool)

(declare-fun b_and!149663 () Bool)

(assert (=> b!1917717 (= tp!547385 b_and!149663)))

(declare-fun b_free!54459 () Bool)

(declare-fun b_next!55163 () Bool)

(assert (=> b!1917717 (= b_free!54459 (not b_next!55163))))

(declare-fun tp!547382 () Bool)

(declare-fun b_and!149665 () Bool)

(assert (=> b!1917717 (= tp!547382 b_and!149665)))

(declare-fun b!1917703 () Bool)

(declare-fun b_free!54461 () Bool)

(declare-fun b_next!55165 () Bool)

(assert (=> b!1917703 (= b_free!54461 (not b_next!55165))))

(declare-fun tp!547381 () Bool)

(declare-fun b_and!149667 () Bool)

(assert (=> b!1917703 (= tp!547381 b_and!149667)))

(declare-fun b_free!54463 () Bool)

(declare-fun b_next!55167 () Bool)

(assert (=> b!1917703 (= b_free!54463 (not b_next!55167))))

(declare-fun tp!547377 () Bool)

(declare-fun b_and!149669 () Bool)

(assert (=> b!1917703 (= tp!547377 b_and!149669)))

(declare-fun b!1917726 () Bool)

(declare-fun b_free!54465 () Bool)

(declare-fun b_next!55169 () Bool)

(assert (=> b!1917726 (= b_free!54465 (not b_next!55169))))

(declare-fun tp!547376 () Bool)

(declare-fun b_and!149671 () Bool)

(assert (=> b!1917726 (= tp!547376 b_and!149671)))

(declare-fun b_free!54467 () Bool)

(declare-fun b_next!55171 () Bool)

(assert (=> b!1917726 (= b_free!54467 (not b_next!55171))))

(declare-fun tp!547386 () Bool)

(declare-fun b_and!149673 () Bool)

(assert (=> b!1917726 (= tp!547386 b_and!149673)))

(declare-fun b!1917701 () Bool)

(declare-fun res!857322 () Bool)

(declare-fun e!1225329 () Bool)

(assert (=> b!1917701 (=> (not res!857322) (not e!1225329))))

(declare-datatypes ((LexerInterface!3493 0))(
  ( (LexerInterfaceExt!3490 (__x!13530 Int)) (Lexer!3491) )
))
(declare-fun thiss!23328 () LexerInterface!3493)

(declare-datatypes ((List!21788 0))(
  ( (Nil!21706) (Cons!21706 (h!27107 (_ BitVec 16)) (t!178581 List!21788)) )
))
(declare-datatypes ((TokenValue!4016 0))(
  ( (FloatLiteralValue!8032 (text!28557 List!21788)) (TokenValueExt!4015 (__x!13531 Int)) (Broken!20080 (value!122145 List!21788)) (Object!4097) (End!4016) (Def!4016) (Underscore!4016) (Match!4016) (Else!4016) (Error!4016) (Case!4016) (If!4016) (Extends!4016) (Abstract!4016) (Class!4016) (Val!4016) (DelimiterValue!8032 (del!4076 List!21788)) (KeywordValue!4022 (value!122146 List!21788)) (CommentValue!8032 (value!122147 List!21788)) (WhitespaceValue!8032 (value!122148 List!21788)) (IndentationValue!4016 (value!122149 List!21788)) (String!25197) (Int32!4016) (Broken!20081 (value!122150 List!21788)) (Boolean!4017) (Unit!36099) (OperatorValue!4019 (op!4076 List!21788)) (IdentifierValue!8032 (value!122151 List!21788)) (IdentifierValue!8033 (value!122152 List!21788)) (WhitespaceValue!8033 (value!122153 List!21788)) (True!8032) (False!8032) (Broken!20082 (value!122154 List!21788)) (Broken!20083 (value!122155 List!21788)) (True!8033) (RightBrace!4016) (RightBracket!4016) (Colon!4016) (Null!4016) (Comma!4016) (LeftBracket!4016) (False!8033) (LeftBrace!4016) (ImaginaryLiteralValue!4016 (text!28558 List!21788)) (StringLiteralValue!12048 (value!122156 List!21788)) (EOFValue!4016 (value!122157 List!21788)) (IdentValue!4016 (value!122158 List!21788)) (DelimiterValue!8033 (value!122159 List!21788)) (DedentValue!4016 (value!122160 List!21788)) (NewLineValue!4016 (value!122161 List!21788)) (IntegerValue!12048 (value!122162 (_ BitVec 32)) (text!28559 List!21788)) (IntegerValue!12049 (value!122163 Int) (text!28560 List!21788)) (Times!4016) (Or!4016) (Equal!4016) (Minus!4016) (Broken!20084 (value!122164 List!21788)) (And!4016) (Div!4016) (LessEqual!4016) (Mod!4016) (Concat!9321) (Not!4016) (Plus!4016) (SpaceValue!4016 (value!122165 List!21788)) (IntegerValue!12050 (value!122166 Int) (text!28561 List!21788)) (StringLiteralValue!12049 (text!28562 List!21788)) (FloatLiteralValue!8033 (text!28563 List!21788)) (BytesLiteralValue!4016 (value!122167 List!21788)) (CommentValue!8033 (value!122168 List!21788)) (StringLiteralValue!12050 (value!122169 List!21788)) (ErrorTokenValue!4016 (msg!4077 List!21788)) )
))
(declare-datatypes ((C!10756 0))(
  ( (C!10757 (val!6330 Int)) )
))
(declare-datatypes ((List!21789 0))(
  ( (Nil!21707) (Cons!21707 (h!27108 C!10756) (t!178582 List!21789)) )
))
(declare-datatypes ((IArray!14509 0))(
  ( (IArray!14510 (innerList!7312 List!21789)) )
))
(declare-datatypes ((Conc!7252 0))(
  ( (Node!7252 (left!17326 Conc!7252) (right!17656 Conc!7252) (csize!14734 Int) (cheight!7463 Int)) (Leaf!10655 (xs!10146 IArray!14509) (csize!14735 Int)) (Empty!7252) )
))
(declare-datatypes ((BalanceConc!14320 0))(
  ( (BalanceConc!14321 (c!312064 Conc!7252)) )
))
(declare-datatypes ((TokenValueInjection!7616 0))(
  ( (TokenValueInjection!7617 (toValue!5509 Int) (toChars!5368 Int)) )
))
(declare-datatypes ((Regex!5305 0))(
  ( (ElementMatch!5305 (c!312065 C!10756)) (Concat!9322 (regOne!11122 Regex!5305) (regTwo!11122 Regex!5305)) (EmptyExpr!5305) (Star!5305 (reg!5634 Regex!5305)) (EmptyLang!5305) (Union!5305 (regOne!11123 Regex!5305) (regTwo!11123 Regex!5305)) )
))
(declare-datatypes ((String!25198 0))(
  ( (String!25199 (value!122170 String)) )
))
(declare-datatypes ((Rule!7560 0))(
  ( (Rule!7561 (regex!3880 Regex!5305) (tag!4320 String!25198) (isSeparator!3880 Bool) (transformation!3880 TokenValueInjection!7616)) )
))
(declare-datatypes ((List!21790 0))(
  ( (Nil!21708) (Cons!21708 (h!27109 Rule!7560) (t!178583 List!21790)) )
))
(declare-fun rules!3198 () List!21790)

(declare-datatypes ((Token!7312 0))(
  ( (Token!7313 (value!122171 TokenValue!4016) (rule!6083 Rule!7560) (size!17026 Int) (originalCharacters!4687 List!21789)) )
))
(declare-datatypes ((List!21791 0))(
  ( (Nil!21709) (Cons!21709 (h!27110 Token!7312) (t!178584 List!21791)) )
))
(declare-fun tokens!598 () List!21791)

(declare-fun rulesProduceEachTokenIndividuallyList!1224 (LexerInterface!3493 List!21790 List!21791) Bool)

(assert (=> b!1917701 (= res!857322 (rulesProduceEachTokenIndividuallyList!1224 thiss!23328 rules!3198 tokens!598))))

(declare-fun b!1917702 () Bool)

(declare-fun res!857310 () Bool)

(assert (=> b!1917702 (=> (not res!857310) (not e!1225329))))

(get-info :version)

(assert (=> b!1917702 (= res!857310 ((_ is Cons!21709) tokens!598))))

(declare-fun e!1225346 () Bool)

(assert (=> b!1917703 (= e!1225346 (and tp!547381 tp!547377))))

(declare-fun b!1917704 () Bool)

(declare-fun e!1225342 () Bool)

(declare-fun e!1225331 () Bool)

(assert (=> b!1917704 (= e!1225342 e!1225331)))

(declare-fun res!857321 () Bool)

(assert (=> b!1917704 (=> res!857321 e!1225331)))

(declare-fun lt!735297 () List!21789)

(declare-fun lt!735303 () List!21789)

(declare-fun lt!735307 () List!21789)

(assert (=> b!1917704 (= res!857321 (or (not (= lt!735307 lt!735297)) (not (= lt!735297 lt!735303)) (not (= lt!735307 lt!735303))))))

(declare-fun printList!1072 (LexerInterface!3493 List!21791) List!21789)

(assert (=> b!1917704 (= lt!735297 (printList!1072 thiss!23328 (Cons!21709 (h!27110 tokens!598) Nil!21709)))))

(declare-fun lt!735301 () BalanceConc!14320)

(declare-fun list!8812 (BalanceConc!14320) List!21789)

(assert (=> b!1917704 (= lt!735307 (list!8812 lt!735301))))

(declare-datatypes ((IArray!14511 0))(
  ( (IArray!14512 (innerList!7313 List!21791)) )
))
(declare-datatypes ((Conc!7253 0))(
  ( (Node!7253 (left!17327 Conc!7253) (right!17657 Conc!7253) (csize!14736 Int) (cheight!7464 Int)) (Leaf!10656 (xs!10147 IArray!14511) (csize!14737 Int)) (Empty!7253) )
))
(declare-datatypes ((BalanceConc!14322 0))(
  ( (BalanceConc!14323 (c!312066 Conc!7253)) )
))
(declare-fun lt!735293 () BalanceConc!14322)

(declare-fun printTailRec!1008 (LexerInterface!3493 BalanceConc!14322 Int BalanceConc!14320) BalanceConc!14320)

(assert (=> b!1917704 (= lt!735301 (printTailRec!1008 thiss!23328 lt!735293 0 (BalanceConc!14321 Empty!7252)))))

(declare-fun print!1501 (LexerInterface!3493 BalanceConc!14322) BalanceConc!14320)

(assert (=> b!1917704 (= lt!735301 (print!1501 thiss!23328 lt!735293))))

(declare-fun singletonSeq!1903 (Token!7312) BalanceConc!14322)

(assert (=> b!1917704 (= lt!735293 (singletonSeq!1903 (h!27110 tokens!598)))))

(declare-fun tp!547380 () Bool)

(declare-fun e!1225347 () Bool)

(declare-fun b!1917705 () Bool)

(declare-fun separatorToken!354 () Token!7312)

(declare-fun e!1225332 () Bool)

(declare-fun inv!21 (TokenValue!4016) Bool)

(assert (=> b!1917705 (= e!1225332 (and (inv!21 (value!122171 separatorToken!354)) e!1225347 tp!547380))))

(declare-fun b!1917706 () Bool)

(declare-fun e!1225341 () Bool)

(declare-fun e!1225326 () Bool)

(declare-fun tp!547379 () Bool)

(declare-fun inv!28795 (String!25198) Bool)

(declare-fun inv!28798 (TokenValueInjection!7616) Bool)

(assert (=> b!1917706 (= e!1225341 (and tp!547379 (inv!28795 (tag!4320 (h!27109 rules!3198))) (inv!28798 (transformation!3880 (h!27109 rules!3198))) e!1225326))))

(declare-fun tp!547378 () Bool)

(declare-fun e!1225335 () Bool)

(declare-fun e!1225339 () Bool)

(declare-fun b!1917707 () Bool)

(assert (=> b!1917707 (= e!1225339 (and tp!547378 (inv!28795 (tag!4320 (rule!6083 (h!27110 tokens!598)))) (inv!28798 (transformation!3880 (rule!6083 (h!27110 tokens!598)))) e!1225335))))

(declare-fun b!1917708 () Bool)

(declare-fun res!857311 () Bool)

(assert (=> b!1917708 (=> (not res!857311) (not e!1225329))))

(declare-fun isEmpty!13367 (List!21790) Bool)

(assert (=> b!1917708 (= res!857311 (not (isEmpty!13367 rules!3198)))))

(declare-fun tp!547374 () Bool)

(declare-fun e!1225340 () Bool)

(declare-fun b!1917709 () Bool)

(assert (=> b!1917709 (= e!1225340 (and (inv!21 (value!122171 (h!27110 tokens!598))) e!1225339 tp!547374))))

(declare-fun b!1917710 () Bool)

(declare-fun res!857318 () Bool)

(assert (=> b!1917710 (=> res!857318 e!1225331)))

(declare-fun isEmpty!13368 (BalanceConc!14322) Bool)

(declare-datatypes ((tuple2!20422 0))(
  ( (tuple2!20423 (_1!11680 BalanceConc!14322) (_2!11680 BalanceConc!14320)) )
))
(declare-fun lex!1560 (LexerInterface!3493 List!21790 BalanceConc!14320) tuple2!20422)

(declare-fun seqFromList!2752 (List!21789) BalanceConc!14320)

(assert (=> b!1917710 (= res!857318 (isEmpty!13368 (_1!11680 (lex!1560 thiss!23328 rules!3198 (seqFromList!2752 lt!735303)))))))

(declare-fun b!1917711 () Bool)

(declare-fun e!1225337 () Bool)

(declare-fun e!1225344 () Bool)

(assert (=> b!1917711 (= e!1225337 e!1225344)))

(declare-fun res!857309 () Bool)

(assert (=> b!1917711 (=> (not res!857309) (not e!1225344))))

(declare-fun lt!735308 () Rule!7560)

(declare-fun lt!735300 () List!21789)

(declare-fun matchR!2591 (Regex!5305 List!21789) Bool)

(assert (=> b!1917711 (= res!857309 (matchR!2591 (regex!3880 lt!735308) lt!735300))))

(declare-datatypes ((Option!4465 0))(
  ( (None!4464) (Some!4464 (v!26537 Rule!7560)) )
))
(declare-fun lt!735312 () Option!4465)

(declare-fun get!6812 (Option!4465) Rule!7560)

(assert (=> b!1917711 (= lt!735308 (get!6812 lt!735312))))

(declare-fun b!1917712 () Bool)

(declare-fun res!857312 () Bool)

(assert (=> b!1917712 (=> (not res!857312) (not e!1225329))))

(declare-fun sepAndNonSepRulesDisjointChars!978 (List!21790 List!21790) Bool)

(assert (=> b!1917712 (= res!857312 (sepAndNonSepRulesDisjointChars!978 rules!3198 rules!3198))))

(declare-fun b!1917713 () Bool)

(declare-fun res!857316 () Bool)

(assert (=> b!1917713 (=> (not res!857316) (not e!1225329))))

(declare-fun rulesProduceIndividualToken!1665 (LexerInterface!3493 List!21790 Token!7312) Bool)

(assert (=> b!1917713 (= res!857316 (rulesProduceIndividualToken!1665 thiss!23328 rules!3198 separatorToken!354))))

(declare-fun b!1917714 () Bool)

(declare-fun e!1225343 () Bool)

(declare-datatypes ((tuple2!20424 0))(
  ( (tuple2!20425 (_1!11681 Token!7312) (_2!11681 List!21789)) )
))
(declare-datatypes ((Option!4466 0))(
  ( (None!4465) (Some!4465 (v!26538 tuple2!20424)) )
))
(declare-fun lt!735298 () Option!4466)

(declare-fun get!6813 (Option!4466) tuple2!20424)

(assert (=> b!1917714 (= e!1225343 (= (_1!11681 (get!6813 lt!735298)) (h!27110 tokens!598)))))

(declare-fun b!1917715 () Bool)

(declare-fun res!857313 () Bool)

(assert (=> b!1917715 (=> (not res!857313) (not e!1225329))))

(declare-fun lambda!74839 () Int)

(declare-fun forall!4576 (List!21791 Int) Bool)

(assert (=> b!1917715 (= res!857313 (forall!4576 tokens!598 lambda!74839))))

(declare-fun b!1917716 () Bool)

(assert (=> b!1917716 (= e!1225331 true)))

(declare-datatypes ((Unit!36100 0))(
  ( (Unit!36101) )
))
(declare-fun lt!735299 () Unit!36100)

(declare-fun lt!735304 () List!21789)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!730 (LexerInterface!3493 List!21790 List!21789 List!21789) Unit!36100)

(assert (=> b!1917716 (= lt!735299 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!730 thiss!23328 rules!3198 lt!735303 lt!735304))))

(assert (=> b!1917717 (= e!1225335 (and tp!547385 tp!547382))))

(declare-fun b!1917718 () Bool)

(declare-fun res!857315 () Bool)

(assert (=> b!1917718 (=> (not res!857315) (not e!1225329))))

(assert (=> b!1917718 (= res!857315 (isSeparator!3880 (rule!6083 separatorToken!354)))))

(declare-fun tp!547375 () Bool)

(declare-fun b!1917719 () Bool)

(assert (=> b!1917719 (= e!1225347 (and tp!547375 (inv!28795 (tag!4320 (rule!6083 separatorToken!354))) (inv!28798 (transformation!3880 (rule!6083 separatorToken!354))) e!1225346))))

(declare-fun res!857305 () Bool)

(assert (=> start!192236 (=> (not res!857305) (not e!1225329))))

(assert (=> start!192236 (= res!857305 ((_ is Lexer!3491) thiss!23328))))

(assert (=> start!192236 e!1225329))

(assert (=> start!192236 true))

(declare-fun e!1225334 () Bool)

(assert (=> start!192236 e!1225334))

(declare-fun e!1225348 () Bool)

(assert (=> start!192236 e!1225348))

(declare-fun inv!28799 (Token!7312) Bool)

(assert (=> start!192236 (and (inv!28799 separatorToken!354) e!1225332)))

(declare-fun b!1917720 () Bool)

(assert (=> b!1917720 (= e!1225329 (not e!1225342))))

(declare-fun res!857308 () Bool)

(assert (=> b!1917720 (=> res!857308 e!1225342)))

(declare-fun lt!735310 () Bool)

(declare-fun lt!735311 () Option!4466)

(assert (=> b!1917720 (= res!857308 (or (and (not lt!735310) (= (_1!11681 (v!26538 lt!735311)) (h!27110 tokens!598))) (and (not lt!735310) (not (= (_1!11681 (v!26538 lt!735311)) (h!27110 tokens!598)))) (not ((_ is None!4465) lt!735311))))))

(assert (=> b!1917720 (= lt!735310 (not ((_ is Some!4465) lt!735311)))))

(declare-fun maxPrefix!1939 (LexerInterface!3493 List!21790 List!21789) Option!4466)

(declare-fun ++!5835 (List!21789 List!21789) List!21789)

(assert (=> b!1917720 (= lt!735311 (maxPrefix!1939 thiss!23328 rules!3198 (++!5835 lt!735303 lt!735304)))))

(declare-fun printWithSeparatorTokenWhenNeededList!536 (LexerInterface!3493 List!21790 List!21791 Token!7312) List!21789)

(assert (=> b!1917720 (= lt!735304 (printWithSeparatorTokenWhenNeededList!536 thiss!23328 rules!3198 (t!178584 tokens!598) separatorToken!354))))

(declare-fun e!1225336 () Bool)

(assert (=> b!1917720 e!1225336))

(declare-fun res!857314 () Bool)

(assert (=> b!1917720 (=> (not res!857314) (not e!1225336))))

(declare-fun lt!735302 () Option!4465)

(declare-fun isDefined!3763 (Option!4465) Bool)

(assert (=> b!1917720 (= res!857314 (isDefined!3763 lt!735302))))

(declare-fun getRuleFromTag!723 (LexerInterface!3493 List!21790 String!25198) Option!4465)

(assert (=> b!1917720 (= lt!735302 (getRuleFromTag!723 thiss!23328 rules!3198 (tag!4320 (rule!6083 (h!27110 tokens!598)))))))

(declare-fun lt!735305 () Unit!36100)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!723 (LexerInterface!3493 List!21790 List!21789 Token!7312) Unit!36100)

(assert (=> b!1917720 (= lt!735305 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!723 thiss!23328 rules!3198 lt!735303 (h!27110 tokens!598)))))

(assert (=> b!1917720 e!1225343))

(declare-fun res!857307 () Bool)

(assert (=> b!1917720 (=> (not res!857307) (not e!1225343))))

(declare-fun isDefined!3764 (Option!4466) Bool)

(assert (=> b!1917720 (= res!857307 (isDefined!3764 lt!735298))))

(assert (=> b!1917720 (= lt!735298 (maxPrefix!1939 thiss!23328 rules!3198 lt!735303))))

(declare-fun lt!735306 () BalanceConc!14320)

(assert (=> b!1917720 (= lt!735303 (list!8812 lt!735306))))

(assert (=> b!1917720 e!1225337))

(declare-fun res!857306 () Bool)

(assert (=> b!1917720 (=> (not res!857306) (not e!1225337))))

(assert (=> b!1917720 (= res!857306 (isDefined!3763 lt!735312))))

(assert (=> b!1917720 (= lt!735312 (getRuleFromTag!723 thiss!23328 rules!3198 (tag!4320 (rule!6083 separatorToken!354))))))

(declare-fun lt!735309 () Unit!36100)

(assert (=> b!1917720 (= lt!735309 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!723 thiss!23328 rules!3198 lt!735300 separatorToken!354))))

(declare-fun charsOf!2436 (Token!7312) BalanceConc!14320)

(assert (=> b!1917720 (= lt!735300 (list!8812 (charsOf!2436 separatorToken!354)))))

(declare-fun lt!735294 () Unit!36100)

(declare-fun lemmaEqSameImage!588 (TokenValueInjection!7616 BalanceConc!14320 BalanceConc!14320) Unit!36100)

(assert (=> b!1917720 (= lt!735294 (lemmaEqSameImage!588 (transformation!3880 (rule!6083 (h!27110 tokens!598))) lt!735306 (seqFromList!2752 (originalCharacters!4687 (h!27110 tokens!598)))))))

(declare-fun lt!735296 () Unit!36100)

(declare-fun lemmaSemiInverse!859 (TokenValueInjection!7616 BalanceConc!14320) Unit!36100)

(assert (=> b!1917720 (= lt!735296 (lemmaSemiInverse!859 (transformation!3880 (rule!6083 (h!27110 tokens!598))) lt!735306))))

(assert (=> b!1917720 (= lt!735306 (charsOf!2436 (h!27110 tokens!598)))))

(declare-fun b!1917721 () Bool)

(declare-fun res!857317 () Bool)

(assert (=> b!1917721 (=> (not res!857317) (not e!1225329))))

(declare-fun rulesInvariant!3100 (LexerInterface!3493 List!21790) Bool)

(assert (=> b!1917721 (= res!857317 (rulesInvariant!3100 thiss!23328 rules!3198))))

(declare-fun b!1917722 () Bool)

(declare-fun e!1225328 () Bool)

(declare-fun lt!735295 () Rule!7560)

(assert (=> b!1917722 (= e!1225328 (= (rule!6083 (h!27110 tokens!598)) lt!735295))))

(declare-fun b!1917723 () Bool)

(declare-fun tp!547384 () Bool)

(assert (=> b!1917723 (= e!1225334 (and e!1225341 tp!547384))))

(declare-fun tp!547383 () Bool)

(declare-fun b!1917724 () Bool)

(assert (=> b!1917724 (= e!1225348 (and (inv!28799 (h!27110 tokens!598)) e!1225340 tp!547383))))

(declare-fun b!1917725 () Bool)

(declare-fun res!857319 () Bool)

(assert (=> b!1917725 (=> res!857319 e!1225331)))

(assert (=> b!1917725 (= res!857319 (not (rulesProduceIndividualToken!1665 thiss!23328 rules!3198 (h!27110 tokens!598))))))

(assert (=> b!1917726 (= e!1225326 (and tp!547376 tp!547386))))

(declare-fun b!1917727 () Bool)

(assert (=> b!1917727 (= e!1225344 (= (rule!6083 separatorToken!354) lt!735308))))

(declare-fun b!1917728 () Bool)

(assert (=> b!1917728 (= e!1225336 e!1225328)))

(declare-fun res!857320 () Bool)

(assert (=> b!1917728 (=> (not res!857320) (not e!1225328))))

(assert (=> b!1917728 (= res!857320 (matchR!2591 (regex!3880 lt!735295) lt!735303))))

(assert (=> b!1917728 (= lt!735295 (get!6812 lt!735302))))

(assert (= (and start!192236 res!857305) b!1917708))

(assert (= (and b!1917708 res!857311) b!1917721))

(assert (= (and b!1917721 res!857317) b!1917701))

(assert (= (and b!1917701 res!857322) b!1917713))

(assert (= (and b!1917713 res!857316) b!1917718))

(assert (= (and b!1917718 res!857315) b!1917715))

(assert (= (and b!1917715 res!857313) b!1917712))

(assert (= (and b!1917712 res!857312) b!1917702))

(assert (= (and b!1917702 res!857310) b!1917720))

(assert (= (and b!1917720 res!857306) b!1917711))

(assert (= (and b!1917711 res!857309) b!1917727))

(assert (= (and b!1917720 res!857307) b!1917714))

(assert (= (and b!1917720 res!857314) b!1917728))

(assert (= (and b!1917728 res!857320) b!1917722))

(assert (= (and b!1917720 (not res!857308)) b!1917704))

(assert (= (and b!1917704 (not res!857321)) b!1917725))

(assert (= (and b!1917725 (not res!857319)) b!1917710))

(assert (= (and b!1917710 (not res!857318)) b!1917716))

(assert (= b!1917706 b!1917726))

(assert (= b!1917723 b!1917706))

(assert (= (and start!192236 ((_ is Cons!21708) rules!3198)) b!1917723))

(assert (= b!1917707 b!1917717))

(assert (= b!1917709 b!1917707))

(assert (= b!1917724 b!1917709))

(assert (= (and start!192236 ((_ is Cons!21709) tokens!598)) b!1917724))

(assert (= b!1917719 b!1917703))

(assert (= b!1917705 b!1917719))

(assert (= start!192236 b!1917705))

(declare-fun m!2353041 () Bool)

(assert (=> b!1917724 m!2353041))

(declare-fun m!2353043 () Bool)

(assert (=> b!1917701 m!2353043))

(declare-fun m!2353045 () Bool)

(assert (=> b!1917716 m!2353045))

(declare-fun m!2353047 () Bool)

(assert (=> b!1917715 m!2353047))

(declare-fun m!2353049 () Bool)

(assert (=> b!1917725 m!2353049))

(declare-fun m!2353051 () Bool)

(assert (=> b!1917706 m!2353051))

(declare-fun m!2353053 () Bool)

(assert (=> b!1917706 m!2353053))

(declare-fun m!2353055 () Bool)

(assert (=> b!1917713 m!2353055))

(declare-fun m!2353057 () Bool)

(assert (=> b!1917719 m!2353057))

(declare-fun m!2353059 () Bool)

(assert (=> b!1917719 m!2353059))

(declare-fun m!2353061 () Bool)

(assert (=> b!1917709 m!2353061))

(declare-fun m!2353063 () Bool)

(assert (=> b!1917714 m!2353063))

(declare-fun m!2353065 () Bool)

(assert (=> b!1917704 m!2353065))

(declare-fun m!2353067 () Bool)

(assert (=> b!1917704 m!2353067))

(declare-fun m!2353069 () Bool)

(assert (=> b!1917704 m!2353069))

(declare-fun m!2353071 () Bool)

(assert (=> b!1917704 m!2353071))

(declare-fun m!2353073 () Bool)

(assert (=> b!1917704 m!2353073))

(declare-fun m!2353075 () Bool)

(assert (=> b!1917721 m!2353075))

(declare-fun m!2353077 () Bool)

(assert (=> b!1917710 m!2353077))

(assert (=> b!1917710 m!2353077))

(declare-fun m!2353079 () Bool)

(assert (=> b!1917710 m!2353079))

(declare-fun m!2353081 () Bool)

(assert (=> b!1917710 m!2353081))

(declare-fun m!2353083 () Bool)

(assert (=> b!1917728 m!2353083))

(declare-fun m!2353085 () Bool)

(assert (=> b!1917728 m!2353085))

(declare-fun m!2353087 () Bool)

(assert (=> b!1917711 m!2353087))

(declare-fun m!2353089 () Bool)

(assert (=> b!1917711 m!2353089))

(declare-fun m!2353091 () Bool)

(assert (=> b!1917707 m!2353091))

(declare-fun m!2353093 () Bool)

(assert (=> b!1917707 m!2353093))

(declare-fun m!2353095 () Bool)

(assert (=> b!1917708 m!2353095))

(declare-fun m!2353097 () Bool)

(assert (=> b!1917720 m!2353097))

(assert (=> b!1917720 m!2353097))

(declare-fun m!2353099 () Bool)

(assert (=> b!1917720 m!2353099))

(declare-fun m!2353101 () Bool)

(assert (=> b!1917720 m!2353101))

(declare-fun m!2353103 () Bool)

(assert (=> b!1917720 m!2353103))

(declare-fun m!2353105 () Bool)

(assert (=> b!1917720 m!2353105))

(declare-fun m!2353107 () Bool)

(assert (=> b!1917720 m!2353107))

(assert (=> b!1917720 m!2353103))

(declare-fun m!2353109 () Bool)

(assert (=> b!1917720 m!2353109))

(declare-fun m!2353111 () Bool)

(assert (=> b!1917720 m!2353111))

(declare-fun m!2353113 () Bool)

(assert (=> b!1917720 m!2353113))

(declare-fun m!2353115 () Bool)

(assert (=> b!1917720 m!2353115))

(assert (=> b!1917720 m!2353115))

(declare-fun m!2353117 () Bool)

(assert (=> b!1917720 m!2353117))

(declare-fun m!2353119 () Bool)

(assert (=> b!1917720 m!2353119))

(declare-fun m!2353121 () Bool)

(assert (=> b!1917720 m!2353121))

(declare-fun m!2353123 () Bool)

(assert (=> b!1917720 m!2353123))

(declare-fun m!2353125 () Bool)

(assert (=> b!1917720 m!2353125))

(declare-fun m!2353127 () Bool)

(assert (=> b!1917720 m!2353127))

(declare-fun m!2353129 () Bool)

(assert (=> b!1917720 m!2353129))

(declare-fun m!2353131 () Bool)

(assert (=> b!1917720 m!2353131))

(declare-fun m!2353133 () Bool)

(assert (=> start!192236 m!2353133))

(declare-fun m!2353135 () Bool)

(assert (=> b!1917712 m!2353135))

(declare-fun m!2353137 () Bool)

(assert (=> b!1917705 m!2353137))

(check-sat b_and!149667 (not b!1917705) b_and!149669 (not b_next!55165) (not b_next!55163) b_and!149673 (not b!1917714) (not b!1917708) (not b!1917723) (not b!1917707) (not b!1917728) b_and!149663 (not b!1917720) (not b!1917724) (not b!1917721) (not b!1917716) (not b!1917719) (not b!1917701) (not b!1917709) (not b!1917711) (not b!1917715) b_and!149671 b_and!149665 (not start!192236) (not b!1917713) (not b_next!55169) (not b_next!55161) (not b!1917710) (not b_next!55167) (not b!1917706) (not b!1917725) (not b!1917704) (not b!1917712) (not b_next!55171))
(check-sat b_and!149667 b_and!149663 b_and!149671 b_and!149669 (not b_next!55165) (not b_next!55163) b_and!149673 b_and!149665 (not b_next!55167) (not b_next!55171) (not b_next!55169) (not b_next!55161))

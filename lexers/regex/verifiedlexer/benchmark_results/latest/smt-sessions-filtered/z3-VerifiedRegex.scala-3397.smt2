; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!192216 () Bool)

(assert start!192216)

(declare-fun b!1916936 () Bool)

(declare-fun b_free!54337 () Bool)

(declare-fun b_next!55041 () Bool)

(assert (=> b!1916936 (= b_free!54337 (not b_next!55041))))

(declare-fun tp!546988 () Bool)

(declare-fun b_and!149543 () Bool)

(assert (=> b!1916936 (= tp!546988 b_and!149543)))

(declare-fun b_free!54339 () Bool)

(declare-fun b_next!55043 () Bool)

(assert (=> b!1916936 (= b_free!54339 (not b_next!55043))))

(declare-fun tp!546996 () Bool)

(declare-fun b_and!149545 () Bool)

(assert (=> b!1916936 (= tp!546996 b_and!149545)))

(declare-fun b!1916925 () Bool)

(declare-fun b_free!54341 () Bool)

(declare-fun b_next!55045 () Bool)

(assert (=> b!1916925 (= b_free!54341 (not b_next!55045))))

(declare-fun tp!546984 () Bool)

(declare-fun b_and!149547 () Bool)

(assert (=> b!1916925 (= tp!546984 b_and!149547)))

(declare-fun b_free!54343 () Bool)

(declare-fun b_next!55047 () Bool)

(assert (=> b!1916925 (= b_free!54343 (not b_next!55047))))

(declare-fun tp!546985 () Bool)

(declare-fun b_and!149549 () Bool)

(assert (=> b!1916925 (= tp!546985 b_and!149549)))

(declare-fun b!1916915 () Bool)

(declare-fun b_free!54345 () Bool)

(declare-fun b_next!55049 () Bool)

(assert (=> b!1916915 (= b_free!54345 (not b_next!55049))))

(declare-fun tp!546991 () Bool)

(declare-fun b_and!149551 () Bool)

(assert (=> b!1916915 (= tp!546991 b_and!149551)))

(declare-fun b_free!54347 () Bool)

(declare-fun b_next!55051 () Bool)

(assert (=> b!1916915 (= b_free!54347 (not b_next!55051))))

(declare-fun tp!546987 () Bool)

(declare-fun b_and!149553 () Bool)

(assert (=> b!1916915 (= tp!546987 b_and!149553)))

(declare-fun tp!546993 () Bool)

(declare-fun b!1916913 () Bool)

(declare-fun e!1224662 () Bool)

(declare-fun e!1224660 () Bool)

(declare-datatypes ((List!21748 0))(
  ( (Nil!21666) (Cons!21666 (h!27067 (_ BitVec 16)) (t!178541 List!21748)) )
))
(declare-datatypes ((TokenValue!4006 0))(
  ( (FloatLiteralValue!8012 (text!28487 List!21748)) (TokenValueExt!4005 (__x!13510 Int)) (Broken!20030 (value!121860 List!21748)) (Object!4087) (End!4006) (Def!4006) (Underscore!4006) (Match!4006) (Else!4006) (Error!4006) (Case!4006) (If!4006) (Extends!4006) (Abstract!4006) (Class!4006) (Val!4006) (DelimiterValue!8012 (del!4066 List!21748)) (KeywordValue!4012 (value!121861 List!21748)) (CommentValue!8012 (value!121862 List!21748)) (WhitespaceValue!8012 (value!121863 List!21748)) (IndentationValue!4006 (value!121864 List!21748)) (String!25147) (Int32!4006) (Broken!20031 (value!121865 List!21748)) (Boolean!4007) (Unit!36069) (OperatorValue!4009 (op!4066 List!21748)) (IdentifierValue!8012 (value!121866 List!21748)) (IdentifierValue!8013 (value!121867 List!21748)) (WhitespaceValue!8013 (value!121868 List!21748)) (True!8012) (False!8012) (Broken!20032 (value!121869 List!21748)) (Broken!20033 (value!121870 List!21748)) (True!8013) (RightBrace!4006) (RightBracket!4006) (Colon!4006) (Null!4006) (Comma!4006) (LeftBracket!4006) (False!8013) (LeftBrace!4006) (ImaginaryLiteralValue!4006 (text!28488 List!21748)) (StringLiteralValue!12018 (value!121871 List!21748)) (EOFValue!4006 (value!121872 List!21748)) (IdentValue!4006 (value!121873 List!21748)) (DelimiterValue!8013 (value!121874 List!21748)) (DedentValue!4006 (value!121875 List!21748)) (NewLineValue!4006 (value!121876 List!21748)) (IntegerValue!12018 (value!121877 (_ BitVec 32)) (text!28489 List!21748)) (IntegerValue!12019 (value!121878 Int) (text!28490 List!21748)) (Times!4006) (Or!4006) (Equal!4006) (Minus!4006) (Broken!20034 (value!121879 List!21748)) (And!4006) (Div!4006) (LessEqual!4006) (Mod!4006) (Concat!9301) (Not!4006) (Plus!4006) (SpaceValue!4006 (value!121880 List!21748)) (IntegerValue!12020 (value!121881 Int) (text!28491 List!21748)) (StringLiteralValue!12019 (text!28492 List!21748)) (FloatLiteralValue!8013 (text!28493 List!21748)) (BytesLiteralValue!4006 (value!121882 List!21748)) (CommentValue!8013 (value!121883 List!21748)) (StringLiteralValue!12020 (value!121884 List!21748)) (ErrorTokenValue!4006 (msg!4067 List!21748)) )
))
(declare-datatypes ((C!10736 0))(
  ( (C!10737 (val!6320 Int)) )
))
(declare-datatypes ((List!21749 0))(
  ( (Nil!21667) (Cons!21667 (h!27068 C!10736) (t!178542 List!21749)) )
))
(declare-datatypes ((Regex!5295 0))(
  ( (ElementMatch!5295 (c!312024 C!10736)) (Concat!9302 (regOne!11102 Regex!5295) (regTwo!11102 Regex!5295)) (EmptyExpr!5295) (Star!5295 (reg!5624 Regex!5295)) (EmptyLang!5295) (Union!5295 (regOne!11103 Regex!5295) (regTwo!11103 Regex!5295)) )
))
(declare-datatypes ((String!25148 0))(
  ( (String!25149 (value!121885 String)) )
))
(declare-datatypes ((IArray!14469 0))(
  ( (IArray!14470 (innerList!7292 List!21749)) )
))
(declare-datatypes ((Conc!7232 0))(
  ( (Node!7232 (left!17301 Conc!7232) (right!17631 Conc!7232) (csize!14694 Int) (cheight!7443 Int)) (Leaf!10630 (xs!10126 IArray!14469) (csize!14695 Int)) (Empty!7232) )
))
(declare-datatypes ((BalanceConc!14280 0))(
  ( (BalanceConc!14281 (c!312025 Conc!7232)) )
))
(declare-datatypes ((TokenValueInjection!7596 0))(
  ( (TokenValueInjection!7597 (toValue!5499 Int) (toChars!5358 Int)) )
))
(declare-datatypes ((Rule!7540 0))(
  ( (Rule!7541 (regex!3870 Regex!5295) (tag!4310 String!25148) (isSeparator!3870 Bool) (transformation!3870 TokenValueInjection!7596)) )
))
(declare-datatypes ((Token!7292 0))(
  ( (Token!7293 (value!121886 TokenValue!4006) (rule!6073 Rule!7540) (size!17016 Int) (originalCharacters!4677 List!21749)) )
))
(declare-datatypes ((List!21750 0))(
  ( (Nil!21668) (Cons!21668 (h!27069 Token!7292) (t!178543 List!21750)) )
))
(declare-fun tokens!598 () List!21750)

(declare-fun inv!28760 (String!25148) Bool)

(declare-fun inv!28763 (TokenValueInjection!7596) Bool)

(assert (=> b!1916913 (= e!1224662 (and tp!546993 (inv!28760 (tag!4310 (rule!6073 (h!27069 tokens!598)))) (inv!28763 (transformation!3870 (rule!6073 (h!27069 tokens!598)))) e!1224660))))

(declare-fun b!1916914 () Bool)

(declare-fun separatorToken!354 () Token!7292)

(declare-fun e!1224663 () Bool)

(declare-fun e!1224656 () Bool)

(declare-fun tp!546994 () Bool)

(assert (=> b!1916914 (= e!1224656 (and tp!546994 (inv!28760 (tag!4310 (rule!6073 separatorToken!354))) (inv!28763 (transformation!3870 (rule!6073 separatorToken!354))) e!1224663))))

(assert (=> b!1916915 (= e!1224660 (and tp!546991 tp!546987))))

(declare-datatypes ((List!21751 0))(
  ( (Nil!21669) (Cons!21669 (h!27070 Rule!7540) (t!178544 List!21751)) )
))
(declare-fun rules!3198 () List!21751)

(declare-fun b!1916916 () Bool)

(declare-fun e!1224664 () Bool)

(declare-fun e!1224668 () Bool)

(declare-fun tp!546990 () Bool)

(assert (=> b!1916916 (= e!1224668 (and tp!546990 (inv!28760 (tag!4310 (h!27070 rules!3198))) (inv!28763 (transformation!3870 (h!27070 rules!3198))) e!1224664))))

(declare-fun b!1916917 () Bool)

(declare-fun res!856830 () Bool)

(declare-fun e!1224667 () Bool)

(assert (=> b!1916917 (=> (not res!856830) (not e!1224667))))

(declare-datatypes ((LexerInterface!3483 0))(
  ( (LexerInterfaceExt!3480 (__x!13511 Int)) (Lexer!3481) )
))
(declare-fun thiss!23328 () LexerInterface!3483)

(declare-fun rulesProduceEachTokenIndividuallyList!1214 (LexerInterface!3483 List!21751 List!21750) Bool)

(assert (=> b!1916917 (= res!856830 (rulesProduceEachTokenIndividuallyList!1214 thiss!23328 rules!3198 tokens!598))))

(declare-fun b!1916918 () Bool)

(declare-fun res!856829 () Bool)

(assert (=> b!1916918 (=> (not res!856829) (not e!1224667))))

(declare-fun lambda!74809 () Int)

(declare-fun forall!4566 (List!21750 Int) Bool)

(assert (=> b!1916918 (= res!856829 (forall!4566 tokens!598 lambda!74809))))

(declare-fun tp!546995 () Bool)

(declare-fun e!1224653 () Bool)

(declare-fun b!1916919 () Bool)

(declare-fun e!1224669 () Bool)

(declare-fun inv!28764 (Token!7292) Bool)

(assert (=> b!1916919 (= e!1224653 (and (inv!28764 (h!27069 tokens!598)) e!1224669 tp!546995))))

(declare-fun b!1916920 () Bool)

(declare-fun e!1224649 () Bool)

(declare-fun lt!734753 () Rule!7540)

(assert (=> b!1916920 (= e!1224649 (= (rule!6073 separatorToken!354) lt!734753))))

(declare-fun b!1916921 () Bool)

(declare-fun res!856824 () Bool)

(assert (=> b!1916921 (=> (not res!856824) (not e!1224667))))

(get-info :version)

(assert (=> b!1916921 (= res!856824 ((_ is Cons!21668) tokens!598))))

(declare-fun b!1916922 () Bool)

(declare-fun res!856826 () Bool)

(assert (=> b!1916922 (=> (not res!856826) (not e!1224667))))

(declare-fun rulesInvariant!3090 (LexerInterface!3483 List!21751) Bool)

(assert (=> b!1916922 (= res!856826 (rulesInvariant!3090 thiss!23328 rules!3198))))

(declare-fun b!1916923 () Bool)

(declare-fun e!1224652 () Bool)

(declare-fun e!1224665 () Bool)

(assert (=> b!1916923 (= e!1224652 e!1224665)))

(declare-fun res!856823 () Bool)

(assert (=> b!1916923 (=> (not res!856823) (not e!1224665))))

(declare-fun lt!734752 () Rule!7540)

(declare-fun lt!734762 () List!21749)

(declare-fun matchR!2581 (Regex!5295 List!21749) Bool)

(assert (=> b!1916923 (= res!856823 (matchR!2581 (regex!3870 lt!734752) lt!734762))))

(declare-datatypes ((Option!4445 0))(
  ( (None!4444) (Some!4444 (v!26517 Rule!7540)) )
))
(declare-fun lt!734757 () Option!4445)

(declare-fun get!6787 (Option!4445) Rule!7540)

(assert (=> b!1916923 (= lt!734752 (get!6787 lt!734757))))

(declare-fun b!1916924 () Bool)

(declare-fun e!1224666 () Bool)

(assert (=> b!1916924 (= e!1224666 true)))

(declare-datatypes ((IArray!14471 0))(
  ( (IArray!14472 (innerList!7293 List!21750)) )
))
(declare-datatypes ((Conc!7233 0))(
  ( (Node!7233 (left!17302 Conc!7233) (right!17632 Conc!7233) (csize!14696 Int) (cheight!7444 Int)) (Leaf!10631 (xs!10127 IArray!14471) (csize!14697 Int)) (Empty!7233) )
))
(declare-datatypes ((BalanceConc!14282 0))(
  ( (BalanceConc!14283 (c!312026 Conc!7233)) )
))
(declare-fun lt!734763 () BalanceConc!14282)

(declare-fun singletonSeq!1893 (Token!7292) BalanceConc!14282)

(assert (=> b!1916924 (= lt!734763 (singletonSeq!1893 (h!27069 tokens!598)))))

(assert (=> b!1916925 (= e!1224663 (and tp!546984 tp!546985))))

(declare-fun b!1916926 () Bool)

(declare-fun e!1224651 () Bool)

(declare-fun tp!546989 () Bool)

(declare-fun inv!21 (TokenValue!4006) Bool)

(assert (=> b!1916926 (= e!1224651 (and (inv!21 (value!121886 separatorToken!354)) e!1224656 tp!546989))))

(declare-fun b!1916927 () Bool)

(assert (=> b!1916927 (= e!1224667 (not e!1224666))))

(declare-fun res!856817 () Bool)

(assert (=> b!1916927 (=> res!856817 e!1224666)))

(declare-datatypes ((tuple2!20396 0))(
  ( (tuple2!20397 (_1!11667 Token!7292) (_2!11667 List!21749)) )
))
(declare-datatypes ((Option!4446 0))(
  ( (None!4445) (Some!4445 (v!26518 tuple2!20396)) )
))
(declare-fun lt!734761 () Option!4446)

(declare-fun lt!734765 () Bool)

(assert (=> b!1916927 (= res!856817 (or (and (not lt!734765) (= (_1!11667 (v!26518 lt!734761)) (h!27069 tokens!598))) (and (not lt!734765) (not (= (_1!11667 (v!26518 lt!734761)) (h!27069 tokens!598)))) (not ((_ is None!4445) lt!734761))))))

(assert (=> b!1916927 (= lt!734765 (not ((_ is Some!4445) lt!734761)))))

(declare-fun maxPrefix!1929 (LexerInterface!3483 List!21751 List!21749) Option!4446)

(declare-fun ++!5825 (List!21749 List!21749) List!21749)

(declare-fun printWithSeparatorTokenWhenNeededList!526 (LexerInterface!3483 List!21751 List!21750 Token!7292) List!21749)

(assert (=> b!1916927 (= lt!734761 (maxPrefix!1929 thiss!23328 rules!3198 (++!5825 lt!734762 (printWithSeparatorTokenWhenNeededList!526 thiss!23328 rules!3198 (t!178543 tokens!598) separatorToken!354))))))

(assert (=> b!1916927 e!1224652))

(declare-fun res!856818 () Bool)

(assert (=> b!1916927 (=> (not res!856818) (not e!1224652))))

(declare-fun isDefined!3743 (Option!4445) Bool)

(assert (=> b!1916927 (= res!856818 (isDefined!3743 lt!734757))))

(declare-fun getRuleFromTag!713 (LexerInterface!3483 List!21751 String!25148) Option!4445)

(assert (=> b!1916927 (= lt!734757 (getRuleFromTag!713 thiss!23328 rules!3198 (tag!4310 (rule!6073 (h!27069 tokens!598)))))))

(declare-datatypes ((Unit!36070 0))(
  ( (Unit!36071) )
))
(declare-fun lt!734759 () Unit!36070)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!713 (LexerInterface!3483 List!21751 List!21749 Token!7292) Unit!36070)

(assert (=> b!1916927 (= lt!734759 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!713 thiss!23328 rules!3198 lt!734762 (h!27069 tokens!598)))))

(declare-fun e!1224655 () Bool)

(assert (=> b!1916927 e!1224655))

(declare-fun res!856828 () Bool)

(assert (=> b!1916927 (=> (not res!856828) (not e!1224655))))

(declare-fun lt!734755 () Option!4446)

(declare-fun isDefined!3744 (Option!4446) Bool)

(assert (=> b!1916927 (= res!856828 (isDefined!3744 lt!734755))))

(assert (=> b!1916927 (= lt!734755 (maxPrefix!1929 thiss!23328 rules!3198 lt!734762))))

(declare-fun lt!734754 () BalanceConc!14280)

(declare-fun list!8802 (BalanceConc!14280) List!21749)

(assert (=> b!1916927 (= lt!734762 (list!8802 lt!734754))))

(declare-fun e!1224650 () Bool)

(assert (=> b!1916927 e!1224650))

(declare-fun res!856816 () Bool)

(assert (=> b!1916927 (=> (not res!856816) (not e!1224650))))

(declare-fun lt!734766 () Option!4445)

(assert (=> b!1916927 (= res!856816 (isDefined!3743 lt!734766))))

(assert (=> b!1916927 (= lt!734766 (getRuleFromTag!713 thiss!23328 rules!3198 (tag!4310 (rule!6073 separatorToken!354))))))

(declare-fun lt!734758 () List!21749)

(declare-fun lt!734760 () Unit!36070)

(assert (=> b!1916927 (= lt!734760 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!713 thiss!23328 rules!3198 lt!734758 separatorToken!354))))

(declare-fun charsOf!2426 (Token!7292) BalanceConc!14280)

(assert (=> b!1916927 (= lt!734758 (list!8802 (charsOf!2426 separatorToken!354)))))

(declare-fun lt!734764 () Unit!36070)

(declare-fun lemmaEqSameImage!578 (TokenValueInjection!7596 BalanceConc!14280 BalanceConc!14280) Unit!36070)

(declare-fun seqFromList!2742 (List!21749) BalanceConc!14280)

(assert (=> b!1916927 (= lt!734764 (lemmaEqSameImage!578 (transformation!3870 (rule!6073 (h!27069 tokens!598))) lt!734754 (seqFromList!2742 (originalCharacters!4677 (h!27069 tokens!598)))))))

(declare-fun lt!734756 () Unit!36070)

(declare-fun lemmaSemiInverse!849 (TokenValueInjection!7596 BalanceConc!14280) Unit!36070)

(assert (=> b!1916927 (= lt!734756 (lemmaSemiInverse!849 (transformation!3870 (rule!6073 (h!27069 tokens!598))) lt!734754))))

(assert (=> b!1916927 (= lt!734754 (charsOf!2426 (h!27069 tokens!598)))))

(declare-fun res!856827 () Bool)

(assert (=> start!192216 (=> (not res!856827) (not e!1224667))))

(assert (=> start!192216 (= res!856827 ((_ is Lexer!3481) thiss!23328))))

(assert (=> start!192216 e!1224667))

(assert (=> start!192216 true))

(declare-fun e!1224661 () Bool)

(assert (=> start!192216 e!1224661))

(assert (=> start!192216 e!1224653))

(assert (=> start!192216 (and (inv!28764 separatorToken!354) e!1224651)))

(declare-fun b!1916912 () Bool)

(declare-fun res!856822 () Bool)

(assert (=> b!1916912 (=> (not res!856822) (not e!1224667))))

(declare-fun rulesProduceIndividualToken!1655 (LexerInterface!3483 List!21751 Token!7292) Bool)

(assert (=> b!1916912 (= res!856822 (rulesProduceIndividualToken!1655 thiss!23328 rules!3198 separatorToken!354))))

(declare-fun b!1916928 () Bool)

(declare-fun tp!546986 () Bool)

(assert (=> b!1916928 (= e!1224661 (and e!1224668 tp!546986))))

(declare-fun b!1916929 () Bool)

(declare-fun res!856821 () Bool)

(assert (=> b!1916929 (=> (not res!856821) (not e!1224667))))

(assert (=> b!1916929 (= res!856821 (isSeparator!3870 (rule!6073 separatorToken!354)))))

(declare-fun b!1916930 () Bool)

(assert (=> b!1916930 (= e!1224665 (= (rule!6073 (h!27069 tokens!598)) lt!734752))))

(declare-fun b!1916931 () Bool)

(declare-fun res!856819 () Bool)

(assert (=> b!1916931 (=> (not res!856819) (not e!1224667))))

(declare-fun sepAndNonSepRulesDisjointChars!968 (List!21751 List!21751) Bool)

(assert (=> b!1916931 (= res!856819 (sepAndNonSepRulesDisjointChars!968 rules!3198 rules!3198))))

(declare-fun b!1916932 () Bool)

(declare-fun get!6788 (Option!4446) tuple2!20396)

(assert (=> b!1916932 (= e!1224655 (= (_1!11667 (get!6788 lt!734755)) (h!27069 tokens!598)))))

(declare-fun b!1916933 () Bool)

(assert (=> b!1916933 (= e!1224650 e!1224649)))

(declare-fun res!856825 () Bool)

(assert (=> b!1916933 (=> (not res!856825) (not e!1224649))))

(assert (=> b!1916933 (= res!856825 (matchR!2581 (regex!3870 lt!734753) lt!734758))))

(assert (=> b!1916933 (= lt!734753 (get!6787 lt!734766))))

(declare-fun tp!546992 () Bool)

(declare-fun b!1916934 () Bool)

(assert (=> b!1916934 (= e!1224669 (and (inv!21 (value!121886 (h!27069 tokens!598))) e!1224662 tp!546992))))

(declare-fun b!1916935 () Bool)

(declare-fun res!856820 () Bool)

(assert (=> b!1916935 (=> (not res!856820) (not e!1224667))))

(declare-fun isEmpty!13354 (List!21751) Bool)

(assert (=> b!1916935 (= res!856820 (not (isEmpty!13354 rules!3198)))))

(assert (=> b!1916936 (= e!1224664 (and tp!546988 tp!546996))))

(assert (= (and start!192216 res!856827) b!1916935))

(assert (= (and b!1916935 res!856820) b!1916922))

(assert (= (and b!1916922 res!856826) b!1916917))

(assert (= (and b!1916917 res!856830) b!1916912))

(assert (= (and b!1916912 res!856822) b!1916929))

(assert (= (and b!1916929 res!856821) b!1916918))

(assert (= (and b!1916918 res!856829) b!1916931))

(assert (= (and b!1916931 res!856819) b!1916921))

(assert (= (and b!1916921 res!856824) b!1916927))

(assert (= (and b!1916927 res!856816) b!1916933))

(assert (= (and b!1916933 res!856825) b!1916920))

(assert (= (and b!1916927 res!856828) b!1916932))

(assert (= (and b!1916927 res!856818) b!1916923))

(assert (= (and b!1916923 res!856823) b!1916930))

(assert (= (and b!1916927 (not res!856817)) b!1916924))

(assert (= b!1916916 b!1916936))

(assert (= b!1916928 b!1916916))

(assert (= (and start!192216 ((_ is Cons!21669) rules!3198)) b!1916928))

(assert (= b!1916913 b!1916915))

(assert (= b!1916934 b!1916913))

(assert (= b!1916919 b!1916934))

(assert (= (and start!192216 ((_ is Cons!21668) tokens!598)) b!1916919))

(assert (= b!1916914 b!1916925))

(assert (= b!1916926 b!1916914))

(assert (= start!192216 b!1916926))

(declare-fun m!2352143 () Bool)

(assert (=> b!1916922 m!2352143))

(declare-fun m!2352145 () Bool)

(assert (=> start!192216 m!2352145))

(declare-fun m!2352147 () Bool)

(assert (=> b!1916933 m!2352147))

(declare-fun m!2352149 () Bool)

(assert (=> b!1916933 m!2352149))

(declare-fun m!2352151 () Bool)

(assert (=> b!1916926 m!2352151))

(declare-fun m!2352153 () Bool)

(assert (=> b!1916931 m!2352153))

(declare-fun m!2352155 () Bool)

(assert (=> b!1916917 m!2352155))

(declare-fun m!2352157 () Bool)

(assert (=> b!1916927 m!2352157))

(declare-fun m!2352159 () Bool)

(assert (=> b!1916927 m!2352159))

(declare-fun m!2352161 () Bool)

(assert (=> b!1916927 m!2352161))

(declare-fun m!2352163 () Bool)

(assert (=> b!1916927 m!2352163))

(assert (=> b!1916927 m!2352161))

(declare-fun m!2352165 () Bool)

(assert (=> b!1916927 m!2352165))

(declare-fun m!2352167 () Bool)

(assert (=> b!1916927 m!2352167))

(declare-fun m!2352169 () Bool)

(assert (=> b!1916927 m!2352169))

(declare-fun m!2352171 () Bool)

(assert (=> b!1916927 m!2352171))

(declare-fun m!2352173 () Bool)

(assert (=> b!1916927 m!2352173))

(declare-fun m!2352175 () Bool)

(assert (=> b!1916927 m!2352175))

(assert (=> b!1916927 m!2352175))

(declare-fun m!2352177 () Bool)

(assert (=> b!1916927 m!2352177))

(declare-fun m!2352179 () Bool)

(assert (=> b!1916927 m!2352179))

(declare-fun m!2352181 () Bool)

(assert (=> b!1916927 m!2352181))

(declare-fun m!2352183 () Bool)

(assert (=> b!1916927 m!2352183))

(declare-fun m!2352185 () Bool)

(assert (=> b!1916927 m!2352185))

(declare-fun m!2352187 () Bool)

(assert (=> b!1916927 m!2352187))

(declare-fun m!2352189 () Bool)

(assert (=> b!1916927 m!2352189))

(assert (=> b!1916927 m!2352173))

(assert (=> b!1916927 m!2352183))

(declare-fun m!2352191 () Bool)

(assert (=> b!1916927 m!2352191))

(declare-fun m!2352193 () Bool)

(assert (=> b!1916916 m!2352193))

(declare-fun m!2352195 () Bool)

(assert (=> b!1916916 m!2352195))

(declare-fun m!2352197 () Bool)

(assert (=> b!1916923 m!2352197))

(declare-fun m!2352199 () Bool)

(assert (=> b!1916923 m!2352199))

(declare-fun m!2352201 () Bool)

(assert (=> b!1916935 m!2352201))

(declare-fun m!2352203 () Bool)

(assert (=> b!1916932 m!2352203))

(declare-fun m!2352205 () Bool)

(assert (=> b!1916919 m!2352205))

(declare-fun m!2352207 () Bool)

(assert (=> b!1916912 m!2352207))

(declare-fun m!2352209 () Bool)

(assert (=> b!1916914 m!2352209))

(declare-fun m!2352211 () Bool)

(assert (=> b!1916914 m!2352211))

(declare-fun m!2352213 () Bool)

(assert (=> b!1916913 m!2352213))

(declare-fun m!2352215 () Bool)

(assert (=> b!1916913 m!2352215))

(declare-fun m!2352217 () Bool)

(assert (=> b!1916934 m!2352217))

(declare-fun m!2352219 () Bool)

(assert (=> b!1916924 m!2352219))

(declare-fun m!2352221 () Bool)

(assert (=> b!1916918 m!2352221))

(check-sat (not b!1916935) (not b!1916933) (not b_next!55043) (not start!192216) (not b!1916912) b_and!149547 (not b!1916918) (not b!1916922) (not b!1916924) (not b!1916923) (not b!1916932) b_and!149551 b_and!149553 b_and!149545 (not b!1916926) b_and!149549 (not b!1916913) (not b!1916927) b_and!149543 (not b!1916914) (not b_next!55051) (not b!1916916) (not b!1916934) (not b_next!55045) (not b!1916917) (not b_next!55047) (not b!1916928) (not b!1916919) (not b_next!55041) (not b_next!55049) (not b!1916931))
(check-sat (not b_next!55043) (not b_next!55051) b_and!149547 (not b_next!55045) (not b_next!55047) b_and!149551 b_and!149553 b_and!149545 b_and!149549 b_and!149543 (not b_next!55041) (not b_next!55049))

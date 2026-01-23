; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!192356 () Bool)

(assert start!192356)

(declare-fun b!1920496 () Bool)

(declare-fun b_free!54881 () Bool)

(declare-fun b_next!55585 () Bool)

(assert (=> b!1920496 (= b_free!54881 (not b_next!55585))))

(declare-fun tp!548831 () Bool)

(declare-fun b_and!150111 () Bool)

(assert (=> b!1920496 (= tp!548831 b_and!150111)))

(declare-fun b_free!54883 () Bool)

(declare-fun b_next!55587 () Bool)

(assert (=> b!1920496 (= b_free!54883 (not b_next!55587))))

(declare-fun tp!548823 () Bool)

(declare-fun b_and!150113 () Bool)

(assert (=> b!1920496 (= tp!548823 b_and!150113)))

(declare-fun b!1920493 () Bool)

(declare-fun b_free!54885 () Bool)

(declare-fun b_next!55589 () Bool)

(assert (=> b!1920493 (= b_free!54885 (not b_next!55589))))

(declare-fun tp!548829 () Bool)

(declare-fun b_and!150115 () Bool)

(assert (=> b!1920493 (= tp!548829 b_and!150115)))

(declare-fun b_free!54887 () Bool)

(declare-fun b_next!55591 () Bool)

(assert (=> b!1920493 (= b_free!54887 (not b_next!55591))))

(declare-fun tp!548822 () Bool)

(declare-fun b_and!150117 () Bool)

(assert (=> b!1920493 (= tp!548822 b_and!150117)))

(declare-fun b!1920494 () Bool)

(declare-fun b_free!54889 () Bool)

(declare-fun b_next!55593 () Bool)

(assert (=> b!1920494 (= b_free!54889 (not b_next!55593))))

(declare-fun tp!548832 () Bool)

(declare-fun b_and!150119 () Bool)

(assert (=> b!1920494 (= tp!548832 b_and!150119)))

(declare-fun b_free!54891 () Bool)

(declare-fun b_next!55595 () Bool)

(assert (=> b!1920494 (= b_free!54891 (not b_next!55595))))

(declare-fun tp!548820 () Bool)

(declare-fun b_and!150121 () Bool)

(assert (=> b!1920494 (= tp!548820 b_and!150121)))

(declare-datatypes ((List!21926 0))(
  ( (Nil!21844) (Cons!21844 (h!27245 (_ BitVec 16)) (t!178769 List!21926)) )
))
(declare-datatypes ((TokenValue!4050 0))(
  ( (FloatLiteralValue!8100 (text!28795 List!21926)) (TokenValueExt!4049 (__x!13598 Int)) (Broken!20250 (value!123114 List!21926)) (Object!4131) (End!4050) (Def!4050) (Underscore!4050) (Match!4050) (Else!4050) (Error!4050) (Case!4050) (If!4050) (Extends!4050) (Abstract!4050) (Class!4050) (Val!4050) (DelimiterValue!8100 (del!4110 List!21926)) (KeywordValue!4056 (value!123115 List!21926)) (CommentValue!8100 (value!123116 List!21926)) (WhitespaceValue!8100 (value!123117 List!21926)) (IndentationValue!4050 (value!123118 List!21926)) (String!25367) (Int32!4050) (Broken!20251 (value!123119 List!21926)) (Boolean!4051) (Unit!36185) (OperatorValue!4053 (op!4110 List!21926)) (IdentifierValue!8100 (value!123120 List!21926)) (IdentifierValue!8101 (value!123121 List!21926)) (WhitespaceValue!8101 (value!123122 List!21926)) (True!8100) (False!8100) (Broken!20252 (value!123123 List!21926)) (Broken!20253 (value!123124 List!21926)) (True!8101) (RightBrace!4050) (RightBracket!4050) (Colon!4050) (Null!4050) (Comma!4050) (LeftBracket!4050) (False!8101) (LeftBrace!4050) (ImaginaryLiteralValue!4050 (text!28796 List!21926)) (StringLiteralValue!12150 (value!123125 List!21926)) (EOFValue!4050 (value!123126 List!21926)) (IdentValue!4050 (value!123127 List!21926)) (DelimiterValue!8101 (value!123128 List!21926)) (DedentValue!4050 (value!123129 List!21926)) (NewLineValue!4050 (value!123130 List!21926)) (IntegerValue!12150 (value!123131 (_ BitVec 32)) (text!28797 List!21926)) (IntegerValue!12151 (value!123132 Int) (text!28798 List!21926)) (Times!4050) (Or!4050) (Equal!4050) (Minus!4050) (Broken!20254 (value!123133 List!21926)) (And!4050) (Div!4050) (LessEqual!4050) (Mod!4050) (Concat!9389) (Not!4050) (Plus!4050) (SpaceValue!4050 (value!123134 List!21926)) (IntegerValue!12152 (value!123135 Int) (text!28799 List!21926)) (StringLiteralValue!12151 (text!28800 List!21926)) (FloatLiteralValue!8101 (text!28801 List!21926)) (BytesLiteralValue!4050 (value!123136 List!21926)) (CommentValue!8101 (value!123137 List!21926)) (StringLiteralValue!12152 (value!123138 List!21926)) (ErrorTokenValue!4050 (msg!4111 List!21926)) )
))
(declare-datatypes ((C!10824 0))(
  ( (C!10825 (val!6364 Int)) )
))
(declare-datatypes ((List!21927 0))(
  ( (Nil!21845) (Cons!21845 (h!27246 C!10824) (t!178770 List!21927)) )
))
(declare-datatypes ((Regex!5339 0))(
  ( (ElementMatch!5339 (c!312201 C!10824)) (Concat!9390 (regOne!11190 Regex!5339) (regTwo!11190 Regex!5339)) (EmptyExpr!5339) (Star!5339 (reg!5668 Regex!5339)) (EmptyLang!5339) (Union!5339 (regOne!11191 Regex!5339) (regTwo!11191 Regex!5339)) )
))
(declare-datatypes ((String!25368 0))(
  ( (String!25369 (value!123139 String)) )
))
(declare-datatypes ((IArray!14583 0))(
  ( (IArray!14584 (innerList!7349 List!21927)) )
))
(declare-datatypes ((Conc!7289 0))(
  ( (Node!7289 (left!17384 Conc!7289) (right!17714 Conc!7289) (csize!14808 Int) (cheight!7500 Int)) (Leaf!10709 (xs!10183 IArray!14583) (csize!14809 Int)) (Empty!7289) )
))
(declare-datatypes ((BalanceConc!14394 0))(
  ( (BalanceConc!14395 (c!312202 Conc!7289)) )
))
(declare-datatypes ((TokenValueInjection!7684 0))(
  ( (TokenValueInjection!7685 (toValue!5543 Int) (toChars!5402 Int)) )
))
(declare-datatypes ((Rule!7628 0))(
  ( (Rule!7629 (regex!3914 Regex!5339) (tag!4354 String!25368) (isSeparator!3914 Bool) (transformation!3914 TokenValueInjection!7684)) )
))
(declare-datatypes ((Token!7380 0))(
  ( (Token!7381 (value!123140 TokenValue!4050) (rule!6117 Rule!7628) (size!17062 Int) (originalCharacters!4721 List!21927)) )
))
(declare-fun separatorToken!354 () Token!7380)

(declare-fun b!1920491 () Bool)

(declare-fun e!1227605 () Bool)

(declare-fun e!1227599 () Bool)

(declare-fun tp!548830 () Bool)

(declare-fun inv!28916 (String!25368) Bool)

(declare-fun inv!28919 (TokenValueInjection!7684) Bool)

(assert (=> b!1920491 (= e!1227605 (and tp!548830 (inv!28916 (tag!4354 (rule!6117 separatorToken!354))) (inv!28919 (transformation!3914 (rule!6117 separatorToken!354))) e!1227599))))

(declare-fun b!1920492 () Bool)

(declare-fun e!1227603 () Bool)

(declare-fun e!1227598 () Bool)

(declare-fun tp!548821 () Bool)

(assert (=> b!1920492 (= e!1227603 (and e!1227598 tp!548821))))

(declare-fun e!1227600 () Bool)

(assert (=> b!1920493 (= e!1227600 (and tp!548829 tp!548822))))

(declare-fun e!1227597 () Bool)

(assert (=> b!1920494 (= e!1227597 (and tp!548832 tp!548820))))

(declare-fun b!1920495 () Bool)

(declare-fun res!858851 () Bool)

(declare-fun e!1227606 () Bool)

(assert (=> b!1920495 (=> (not res!858851) (not e!1227606))))

(declare-datatypes ((LexerInterface!3527 0))(
  ( (LexerInterfaceExt!3524 (__x!13599 Int)) (Lexer!3525) )
))
(declare-fun thiss!23328 () LexerInterface!3527)

(declare-datatypes ((List!21928 0))(
  ( (Nil!21846) (Cons!21846 (h!27247 Rule!7628) (t!178771 List!21928)) )
))
(declare-fun rules!3198 () List!21928)

(declare-fun rulesProduceIndividualToken!1699 (LexerInterface!3527 List!21928 Token!7380) Bool)

(assert (=> b!1920495 (= res!858851 (rulesProduceIndividualToken!1699 thiss!23328 rules!3198 separatorToken!354))))

(assert (=> b!1920496 (= e!1227599 (and tp!548831 tp!548823))))

(declare-fun b!1920497 () Bool)

(declare-fun res!858849 () Bool)

(assert (=> b!1920497 (=> (not res!858849) (not e!1227606))))

(declare-datatypes ((List!21929 0))(
  ( (Nil!21847) (Cons!21847 (h!27248 Token!7380) (t!178772 List!21929)) )
))
(declare-fun tokens!598 () List!21929)

(declare-fun lambda!74971 () Int)

(declare-fun forall!4612 (List!21929 Int) Bool)

(assert (=> b!1920497 (= res!858849 (forall!4612 tokens!598 lambda!74971))))

(declare-fun b!1920498 () Bool)

(declare-fun res!858853 () Bool)

(assert (=> b!1920498 (=> (not res!858853) (not e!1227606))))

(declare-fun isEmpty!13433 (List!21928) Bool)

(assert (=> b!1920498 (= res!858853 (not (isEmpty!13433 rules!3198)))))

(declare-fun b!1920500 () Bool)

(declare-fun res!858845 () Bool)

(assert (=> b!1920500 (=> (not res!858845) (not e!1227606))))

(declare-fun rulesProduceEachTokenIndividuallyList!1258 (LexerInterface!3527 List!21928 List!21929) Bool)

(assert (=> b!1920500 (= res!858845 (rulesProduceEachTokenIndividuallyList!1258 thiss!23328 rules!3198 tokens!598))))

(declare-fun b!1920501 () Bool)

(declare-fun res!858847 () Bool)

(assert (=> b!1920501 (=> (not res!858847) (not e!1227606))))

(declare-fun isEmpty!13434 (List!21929) Bool)

(assert (=> b!1920501 (= res!858847 (not (isEmpty!13434 tokens!598)))))

(declare-fun e!1227607 () Bool)

(declare-fun tp!548824 () Bool)

(declare-fun b!1920502 () Bool)

(declare-fun inv!21 (TokenValue!4050) Bool)

(assert (=> b!1920502 (= e!1227607 (and (inv!21 (value!123140 separatorToken!354)) e!1227605 tp!548824))))

(declare-fun e!1227601 () Bool)

(declare-fun tp!548826 () Bool)

(declare-fun b!1920503 () Bool)

(assert (=> b!1920503 (= e!1227601 (and tp!548826 (inv!28916 (tag!4354 (rule!6117 (h!27248 tokens!598)))) (inv!28919 (transformation!3914 (rule!6117 (h!27248 tokens!598)))) e!1227597))))

(declare-fun b!1920504 () Bool)

(declare-fun res!858850 () Bool)

(assert (=> b!1920504 (=> (not res!858850) (not e!1227606))))

(declare-fun rulesInvariant!3134 (LexerInterface!3527 List!21928) Bool)

(assert (=> b!1920504 (= res!858850 (rulesInvariant!3134 thiss!23328 rules!3198))))

(declare-fun tp!548825 () Bool)

(declare-fun b!1920505 () Bool)

(assert (=> b!1920505 (= e!1227598 (and tp!548825 (inv!28916 (tag!4354 (h!27247 rules!3198))) (inv!28919 (transformation!3914 (h!27247 rules!3198))) e!1227600))))

(declare-fun res!858846 () Bool)

(assert (=> start!192356 (=> (not res!858846) (not e!1227606))))

(get-info :version)

(assert (=> start!192356 (= res!858846 ((_ is Lexer!3525) thiss!23328))))

(assert (=> start!192356 e!1227606))

(assert (=> start!192356 true))

(assert (=> start!192356 e!1227603))

(declare-fun e!1227611 () Bool)

(assert (=> start!192356 e!1227611))

(declare-fun inv!28920 (Token!7380) Bool)

(assert (=> start!192356 (and (inv!28920 separatorToken!354) e!1227607)))

(declare-fun b!1920499 () Bool)

(declare-fun res!858848 () Bool)

(assert (=> b!1920499 (=> (not res!858848) (not e!1227606))))

(assert (=> b!1920499 (= res!858848 (isSeparator!3914 (rule!6117 separatorToken!354)))))

(declare-fun tp!548828 () Bool)

(declare-fun e!1227608 () Bool)

(declare-fun b!1920506 () Bool)

(assert (=> b!1920506 (= e!1227611 (and (inv!28920 (h!27248 tokens!598)) e!1227608 tp!548828))))

(declare-fun b!1920507 () Bool)

(declare-fun res!858854 () Bool)

(assert (=> b!1920507 (=> (not res!858854) (not e!1227606))))

(declare-fun sepAndNonSepRulesDisjointChars!1012 (List!21928 List!21928) Bool)

(assert (=> b!1920507 (= res!858854 (sepAndNonSepRulesDisjointChars!1012 rules!3198 rules!3198))))

(declare-fun b!1920508 () Bool)

(assert (=> b!1920508 (= e!1227606 false)))

(declare-datatypes ((tuple2!20478 0))(
  ( (tuple2!20479 (_1!11708 Token!7380) (_2!11708 List!21927)) )
))
(declare-datatypes ((Option!4514 0))(
  ( (None!4513) (Some!4513 (v!26586 tuple2!20478)) )
))
(declare-fun lt!736356 () Option!4514)

(declare-fun maxPrefix!1965 (LexerInterface!3527 List!21928 List!21927) Option!4514)

(declare-fun printWithSeparatorTokenWhenNeededList!566 (LexerInterface!3527 List!21928 List!21929 Token!7380) List!21927)

(assert (=> b!1920508 (= lt!736356 (maxPrefix!1965 thiss!23328 rules!3198 (printWithSeparatorTokenWhenNeededList!566 thiss!23328 rules!3198 tokens!598 separatorToken!354)))))

(declare-fun b!1920509 () Bool)

(declare-fun res!858852 () Bool)

(assert (=> b!1920509 (=> (not res!858852) (not e!1227606))))

(assert (=> b!1920509 (= res!858852 (not ((_ is Cons!21847) tokens!598)))))

(declare-fun b!1920510 () Bool)

(declare-fun tp!548827 () Bool)

(assert (=> b!1920510 (= e!1227608 (and (inv!21 (value!123140 (h!27248 tokens!598))) e!1227601 tp!548827))))

(assert (= (and start!192356 res!858846) b!1920498))

(assert (= (and b!1920498 res!858853) b!1920504))

(assert (= (and b!1920504 res!858850) b!1920500))

(assert (= (and b!1920500 res!858845) b!1920495))

(assert (= (and b!1920495 res!858851) b!1920499))

(assert (= (and b!1920499 res!858848) b!1920497))

(assert (= (and b!1920497 res!858849) b!1920507))

(assert (= (and b!1920507 res!858854) b!1920509))

(assert (= (and b!1920509 res!858852) b!1920501))

(assert (= (and b!1920501 res!858847) b!1920508))

(assert (= b!1920505 b!1920493))

(assert (= b!1920492 b!1920505))

(assert (= (and start!192356 ((_ is Cons!21846) rules!3198)) b!1920492))

(assert (= b!1920503 b!1920494))

(assert (= b!1920510 b!1920503))

(assert (= b!1920506 b!1920510))

(assert (= (and start!192356 ((_ is Cons!21847) tokens!598)) b!1920506))

(assert (= b!1920491 b!1920496))

(assert (= b!1920502 b!1920491))

(assert (= start!192356 b!1920502))

(declare-fun m!2355645 () Bool)

(assert (=> b!1920502 m!2355645))

(declare-fun m!2355647 () Bool)

(assert (=> b!1920497 m!2355647))

(declare-fun m!2355649 () Bool)

(assert (=> b!1920500 m!2355649))

(declare-fun m!2355651 () Bool)

(assert (=> b!1920495 m!2355651))

(declare-fun m!2355653 () Bool)

(assert (=> b!1920498 m!2355653))

(declare-fun m!2355655 () Bool)

(assert (=> b!1920501 m!2355655))

(declare-fun m!2355657 () Bool)

(assert (=> b!1920507 m!2355657))

(declare-fun m!2355659 () Bool)

(assert (=> b!1920504 m!2355659))

(declare-fun m!2355661 () Bool)

(assert (=> b!1920510 m!2355661))

(declare-fun m!2355663 () Bool)

(assert (=> b!1920503 m!2355663))

(declare-fun m!2355665 () Bool)

(assert (=> b!1920503 m!2355665))

(declare-fun m!2355667 () Bool)

(assert (=> b!1920505 m!2355667))

(declare-fun m!2355669 () Bool)

(assert (=> b!1920505 m!2355669))

(declare-fun m!2355671 () Bool)

(assert (=> b!1920508 m!2355671))

(assert (=> b!1920508 m!2355671))

(declare-fun m!2355673 () Bool)

(assert (=> b!1920508 m!2355673))

(declare-fun m!2355675 () Bool)

(assert (=> b!1920506 m!2355675))

(declare-fun m!2355677 () Bool)

(assert (=> start!192356 m!2355677))

(declare-fun m!2355679 () Bool)

(assert (=> b!1920491 m!2355679))

(declare-fun m!2355681 () Bool)

(assert (=> b!1920491 m!2355681))

(check-sat (not b_next!55591) (not b_next!55587) b_and!150111 (not b!1920498) b_and!150121 (not b!1920491) (not b!1920510) (not b!1920507) (not b!1920501) b_and!150115 (not b!1920503) (not b!1920497) (not b!1920502) (not b!1920505) (not start!192356) (not b!1920495) (not b_next!55585) b_and!150113 (not b!1920504) (not b!1920492) (not b!1920506) (not b_next!55593) (not b!1920500) b_and!150117 (not b_next!55589) (not b!1920508) b_and!150119 (not b_next!55595))
(check-sat (not b_next!55591) (not b_next!55587) b_and!150111 b_and!150121 (not b_next!55593) b_and!150117 b_and!150115 (not b_next!55585) b_and!150113 (not b_next!55589) b_and!150119 (not b_next!55595))

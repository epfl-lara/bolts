; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!191824 () Bool)

(assert start!191824)

(declare-fun b!1912705 () Bool)

(declare-fun b_free!54065 () Bool)

(declare-fun b_next!54769 () Bool)

(assert (=> b!1912705 (= b_free!54065 (not b_next!54769))))

(declare-fun tp!545966 () Bool)

(declare-fun b_and!149079 () Bool)

(assert (=> b!1912705 (= tp!545966 b_and!149079)))

(declare-fun b_free!54067 () Bool)

(declare-fun b_next!54771 () Bool)

(assert (=> b!1912705 (= b_free!54067 (not b_next!54771))))

(declare-fun tp!545961 () Bool)

(declare-fun b_and!149081 () Bool)

(assert (=> b!1912705 (= tp!545961 b_and!149081)))

(declare-fun b!1912715 () Bool)

(declare-fun b_free!54069 () Bool)

(declare-fun b_next!54773 () Bool)

(assert (=> b!1912715 (= b_free!54069 (not b_next!54773))))

(declare-fun tp!545967 () Bool)

(declare-fun b_and!149083 () Bool)

(assert (=> b!1912715 (= tp!545967 b_and!149083)))

(declare-fun b_free!54071 () Bool)

(declare-fun b_next!54775 () Bool)

(assert (=> b!1912715 (= b_free!54071 (not b_next!54775))))

(declare-fun tp!545972 () Bool)

(declare-fun b_and!149085 () Bool)

(assert (=> b!1912715 (= tp!545972 b_and!149085)))

(declare-fun b!1912693 () Bool)

(declare-fun b_free!54073 () Bool)

(declare-fun b_next!54777 () Bool)

(assert (=> b!1912693 (= b_free!54073 (not b_next!54777))))

(declare-fun tp!545962 () Bool)

(declare-fun b_and!149087 () Bool)

(assert (=> b!1912693 (= tp!545962 b_and!149087)))

(declare-fun b_free!54075 () Bool)

(declare-fun b_next!54779 () Bool)

(assert (=> b!1912693 (= b_free!54075 (not b_next!54779))))

(declare-fun tp!545969 () Bool)

(declare-fun b_and!149089 () Bool)

(assert (=> b!1912693 (= tp!545969 b_and!149089)))

(declare-fun b!1912679 () Bool)

(declare-fun res!854366 () Bool)

(declare-fun e!1221889 () Bool)

(assert (=> b!1912679 (=> res!854366 e!1221889)))

(declare-datatypes ((LexerInterface!3463 0))(
  ( (LexerInterfaceExt!3460 (__x!13470 Int)) (Lexer!3461) )
))
(declare-fun thiss!23328 () LexerInterface!3463)

(declare-datatypes ((List!21664 0))(
  ( (Nil!21582) (Cons!21582 (h!26983 (_ BitVec 16)) (t!178233 List!21664)) )
))
(declare-datatypes ((TokenValue!3986 0))(
  ( (FloatLiteralValue!7972 (text!28347 List!21664)) (TokenValueExt!3985 (__x!13471 Int)) (Broken!19930 (value!121290 List!21664)) (Object!4067) (End!3986) (Def!3986) (Underscore!3986) (Match!3986) (Else!3986) (Error!3986) (Case!3986) (If!3986) (Extends!3986) (Abstract!3986) (Class!3986) (Val!3986) (DelimiterValue!7972 (del!4046 List!21664)) (KeywordValue!3992 (value!121291 List!21664)) (CommentValue!7972 (value!121292 List!21664)) (WhitespaceValue!7972 (value!121293 List!21664)) (IndentationValue!3986 (value!121294 List!21664)) (String!25047) (Int32!3986) (Broken!19931 (value!121295 List!21664)) (Boolean!3987) (Unit!35955) (OperatorValue!3989 (op!4046 List!21664)) (IdentifierValue!7972 (value!121296 List!21664)) (IdentifierValue!7973 (value!121297 List!21664)) (WhitespaceValue!7973 (value!121298 List!21664)) (True!7972) (False!7972) (Broken!19932 (value!121299 List!21664)) (Broken!19933 (value!121300 List!21664)) (True!7973) (RightBrace!3986) (RightBracket!3986) (Colon!3986) (Null!3986) (Comma!3986) (LeftBracket!3986) (False!7973) (LeftBrace!3986) (ImaginaryLiteralValue!3986 (text!28348 List!21664)) (StringLiteralValue!11958 (value!121301 List!21664)) (EOFValue!3986 (value!121302 List!21664)) (IdentValue!3986 (value!121303 List!21664)) (DelimiterValue!7973 (value!121304 List!21664)) (DedentValue!3986 (value!121305 List!21664)) (NewLineValue!3986 (value!121306 List!21664)) (IntegerValue!11958 (value!121307 (_ BitVec 32)) (text!28349 List!21664)) (IntegerValue!11959 (value!121308 Int) (text!28350 List!21664)) (Times!3986) (Or!3986) (Equal!3986) (Minus!3986) (Broken!19934 (value!121309 List!21664)) (And!3986) (Div!3986) (LessEqual!3986) (Mod!3986) (Concat!9261) (Not!3986) (Plus!3986) (SpaceValue!3986 (value!121310 List!21664)) (IntegerValue!11960 (value!121311 Int) (text!28351 List!21664)) (StringLiteralValue!11959 (text!28352 List!21664)) (FloatLiteralValue!7973 (text!28353 List!21664)) (BytesLiteralValue!3986 (value!121312 List!21664)) (CommentValue!7973 (value!121313 List!21664)) (StringLiteralValue!11960 (value!121314 List!21664)) (ErrorTokenValue!3986 (msg!4047 List!21664)) )
))
(declare-datatypes ((C!10696 0))(
  ( (C!10697 (val!6300 Int)) )
))
(declare-datatypes ((List!21665 0))(
  ( (Nil!21583) (Cons!21583 (h!26984 C!10696) (t!178234 List!21665)) )
))
(declare-datatypes ((String!25048 0))(
  ( (String!25049 (value!121315 String)) )
))
(declare-datatypes ((IArray!14389 0))(
  ( (IArray!14390 (innerList!7252 List!21665)) )
))
(declare-datatypes ((Conc!7192 0))(
  ( (Node!7192 (left!17243 Conc!7192) (right!17573 Conc!7192) (csize!14614 Int) (cheight!7403 Int)) (Leaf!10580 (xs!10086 IArray!14389) (csize!14615 Int)) (Empty!7192) )
))
(declare-datatypes ((BalanceConc!14200 0))(
  ( (BalanceConc!14201 (c!311528 Conc!7192)) )
))
(declare-datatypes ((TokenValueInjection!7556 0))(
  ( (TokenValueInjection!7557 (toValue!5479 Int) (toChars!5338 Int)) )
))
(declare-datatypes ((Regex!5275 0))(
  ( (ElementMatch!5275 (c!311529 C!10696)) (Concat!9262 (regOne!11062 Regex!5275) (regTwo!11062 Regex!5275)) (EmptyExpr!5275) (Star!5275 (reg!5604 Regex!5275)) (EmptyLang!5275) (Union!5275 (regOne!11063 Regex!5275) (regTwo!11063 Regex!5275)) )
))
(declare-datatypes ((Rule!7500 0))(
  ( (Rule!7501 (regex!3850 Regex!5275) (tag!4286 String!25048) (isSeparator!3850 Bool) (transformation!3850 TokenValueInjection!7556)) )
))
(declare-datatypes ((List!21666 0))(
  ( (Nil!21584) (Cons!21584 (h!26985 Rule!7500) (t!178235 List!21666)) )
))
(declare-fun rules!3198 () List!21666)

(declare-datatypes ((Token!7252 0))(
  ( (Token!7253 (value!121316 TokenValue!3986) (rule!6049 Rule!7500) (size!16984 Int) (originalCharacters!4657 List!21665)) )
))
(declare-datatypes ((List!21667 0))(
  ( (Nil!21585) (Cons!21585 (h!26986 Token!7252) (t!178236 List!21667)) )
))
(declare-fun tokens!598 () List!21667)

(declare-fun rulesProduceIndividualToken!1635 (LexerInterface!3463 List!21666 Token!7252) Bool)

(assert (=> b!1912679 (= res!854366 (not (rulesProduceIndividualToken!1635 thiss!23328 rules!3198 (h!26986 tokens!598))))))

(declare-fun res!854346 () Bool)

(declare-fun e!1221895 () Bool)

(assert (=> start!191824 (=> (not res!854346) (not e!1221895))))

(get-info :version)

(assert (=> start!191824 (= res!854346 ((_ is Lexer!3461) thiss!23328))))

(assert (=> start!191824 e!1221895))

(assert (=> start!191824 true))

(declare-fun e!1221877 () Bool)

(assert (=> start!191824 e!1221877))

(declare-fun e!1221892 () Bool)

(assert (=> start!191824 e!1221892))

(declare-fun separatorToken!354 () Token!7252)

(declare-fun e!1221888 () Bool)

(declare-fun inv!28685 (Token!7252) Bool)

(assert (=> start!191824 (and (inv!28685 separatorToken!354) e!1221888)))

(declare-fun b!1912680 () Bool)

(declare-fun e!1221894 () Bool)

(declare-fun e!1221897 () Bool)

(declare-fun tp!545964 () Bool)

(declare-fun inv!28682 (String!25048) Bool)

(declare-fun inv!28686 (TokenValueInjection!7556) Bool)

(assert (=> b!1912680 (= e!1221897 (and tp!545964 (inv!28682 (tag!4286 (h!26985 rules!3198))) (inv!28686 (transformation!3850 (h!26985 rules!3198))) e!1221894))))

(declare-fun b!1912681 () Bool)

(declare-fun res!854345 () Bool)

(assert (=> b!1912681 (=> (not res!854345) (not e!1221895))))

(declare-fun rulesInvariant!3070 (LexerInterface!3463 List!21666) Bool)

(assert (=> b!1912681 (= res!854345 (rulesInvariant!3070 thiss!23328 rules!3198))))

(declare-fun b!1912682 () Bool)

(declare-datatypes ((Unit!35956 0))(
  ( (Unit!35957) )
))
(declare-fun e!1221885 () Unit!35956)

(declare-fun Unit!35958 () Unit!35956)

(assert (=> b!1912682 (= e!1221885 Unit!35958)))

(declare-fun lt!732148 () List!21665)

(declare-fun lt!732142 () Unit!35956)

(declare-fun lt!732141 () C!10696)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!258 (Regex!5275 List!21665 C!10696) Unit!35956)

(assert (=> b!1912682 (= lt!732142 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!258 (regex!3850 (rule!6049 separatorToken!354)) lt!732148 lt!732141))))

(declare-fun res!854358 () Bool)

(declare-fun matchR!2561 (Regex!5275 List!21665) Bool)

(assert (=> b!1912682 (= res!854358 (not (matchR!2561 (regex!3850 (rule!6049 separatorToken!354)) lt!732148)))))

(declare-fun e!1221876 () Bool)

(assert (=> b!1912682 (=> (not res!854358) (not e!1221876))))

(assert (=> b!1912682 e!1221876))

(declare-fun b!1912683 () Bool)

(declare-fun e!1221898 () Bool)

(assert (=> b!1912683 (= e!1221895 (not e!1221898))))

(declare-fun res!854349 () Bool)

(assert (=> b!1912683 (=> res!854349 e!1221898)))

(declare-fun lt!732145 () Bool)

(declare-datatypes ((tuple2!20310 0))(
  ( (tuple2!20311 (_1!11624 Token!7252) (_2!11624 List!21665)) )
))
(declare-datatypes ((Option!4405 0))(
  ( (None!4404) (Some!4404 (v!26461 tuple2!20310)) )
))
(declare-fun lt!732134 () Option!4405)

(assert (=> b!1912683 (= res!854349 (or (and (not lt!732145) (= (_1!11624 (v!26461 lt!732134)) (h!26986 tokens!598))) lt!732145 (= (_1!11624 (v!26461 lt!732134)) (h!26986 tokens!598))))))

(assert (=> b!1912683 (= lt!732145 (not ((_ is Some!4404) lt!732134)))))

(declare-fun lt!732130 () List!21665)

(declare-fun lt!732150 () List!21665)

(declare-fun maxPrefix!1909 (LexerInterface!3463 List!21666 List!21665) Option!4405)

(declare-fun ++!5801 (List!21665 List!21665) List!21665)

(assert (=> b!1912683 (= lt!732134 (maxPrefix!1909 thiss!23328 rules!3198 (++!5801 lt!732150 lt!732130)))))

(declare-fun printWithSeparatorTokenWhenNeededList!506 (LexerInterface!3463 List!21666 List!21667 Token!7252) List!21665)

(assert (=> b!1912683 (= lt!732130 (printWithSeparatorTokenWhenNeededList!506 thiss!23328 rules!3198 (t!178236 tokens!598) separatorToken!354))))

(declare-fun e!1221881 () Bool)

(assert (=> b!1912683 e!1221881))

(declare-fun res!854353 () Bool)

(assert (=> b!1912683 (=> (not res!854353) (not e!1221881))))

(declare-datatypes ((Option!4406 0))(
  ( (None!4405) (Some!4405 (v!26462 Rule!7500)) )
))
(declare-fun lt!732140 () Option!4406)

(declare-fun isDefined!3703 (Option!4406) Bool)

(assert (=> b!1912683 (= res!854353 (isDefined!3703 lt!732140))))

(declare-fun getRuleFromTag!693 (LexerInterface!3463 List!21666 String!25048) Option!4406)

(assert (=> b!1912683 (= lt!732140 (getRuleFromTag!693 thiss!23328 rules!3198 (tag!4286 (rule!6049 (h!26986 tokens!598)))))))

(declare-fun lt!732122 () Unit!35956)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!693 (LexerInterface!3463 List!21666 List!21665 Token!7252) Unit!35956)

(assert (=> b!1912683 (= lt!732122 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!693 thiss!23328 rules!3198 lt!732150 (h!26986 tokens!598)))))

(declare-fun lt!732136 () tuple2!20310)

(assert (=> b!1912683 (= (_1!11624 lt!732136) (h!26986 tokens!598))))

(declare-fun lt!732154 () Option!4405)

(declare-fun get!6737 (Option!4405) tuple2!20310)

(assert (=> b!1912683 (= lt!732136 (get!6737 lt!732154))))

(declare-fun isDefined!3704 (Option!4405) Bool)

(assert (=> b!1912683 (isDefined!3704 lt!732154)))

(assert (=> b!1912683 (= lt!732154 (maxPrefix!1909 thiss!23328 rules!3198 lt!732150))))

(declare-fun lt!732127 () BalanceConc!14200)

(declare-fun list!8774 (BalanceConc!14200) List!21665)

(assert (=> b!1912683 (= lt!732150 (list!8774 lt!732127))))

(declare-fun e!1221883 () Bool)

(assert (=> b!1912683 e!1221883))

(declare-fun res!854348 () Bool)

(assert (=> b!1912683 (=> (not res!854348) (not e!1221883))))

(declare-fun lt!732124 () Option!4406)

(assert (=> b!1912683 (= res!854348 (isDefined!3703 lt!732124))))

(assert (=> b!1912683 (= lt!732124 (getRuleFromTag!693 thiss!23328 rules!3198 (tag!4286 (rule!6049 separatorToken!354))))))

(declare-fun lt!732132 () Unit!35956)

(assert (=> b!1912683 (= lt!732132 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!693 thiss!23328 rules!3198 lt!732148 separatorToken!354))))

(declare-fun charsOf!2406 (Token!7252) BalanceConc!14200)

(assert (=> b!1912683 (= lt!732148 (list!8774 (charsOf!2406 separatorToken!354)))))

(declare-fun lt!732131 () Unit!35956)

(declare-fun lemmaEqSameImage!558 (TokenValueInjection!7556 BalanceConc!14200 BalanceConc!14200) Unit!35956)

(declare-fun seqFromList!2722 (List!21665) BalanceConc!14200)

(assert (=> b!1912683 (= lt!732131 (lemmaEqSameImage!558 (transformation!3850 (rule!6049 (h!26986 tokens!598))) lt!732127 (seqFromList!2722 (originalCharacters!4657 (h!26986 tokens!598)))))))

(declare-fun lt!732135 () Unit!35956)

(declare-fun lemmaSemiInverse!829 (TokenValueInjection!7556 BalanceConc!14200) Unit!35956)

(assert (=> b!1912683 (= lt!732135 (lemmaSemiInverse!829 (transformation!3850 (rule!6049 (h!26986 tokens!598))) lt!732127))))

(assert (=> b!1912683 (= lt!732127 (charsOf!2406 (h!26986 tokens!598)))))

(declare-fun b!1912684 () Bool)

(assert (=> b!1912684 (= e!1221876 false)))

(declare-fun b!1912685 () Bool)

(declare-fun res!854350 () Bool)

(assert (=> b!1912685 (=> res!854350 e!1221889)))

(assert (=> b!1912685 (= res!854350 (isSeparator!3850 (rule!6049 (h!26986 tokens!598))))))

(declare-fun b!1912686 () Bool)

(declare-fun e!1221886 () Bool)

(assert (=> b!1912686 (= e!1221883 e!1221886)))

(declare-fun res!854359 () Bool)

(assert (=> b!1912686 (=> (not res!854359) (not e!1221886))))

(declare-fun lt!732121 () Rule!7500)

(assert (=> b!1912686 (= res!854359 (matchR!2561 (regex!3850 lt!732121) lt!732148))))

(declare-fun get!6738 (Option!4406) Rule!7500)

(assert (=> b!1912686 (= lt!732121 (get!6738 lt!732124))))

(declare-fun b!1912687 () Bool)

(declare-fun res!854365 () Bool)

(declare-fun e!1221879 () Bool)

(assert (=> b!1912687 (=> res!854365 e!1221879)))

(declare-fun lt!732139 () List!21665)

(declare-fun isEmpty!13262 (List!21665) Bool)

(assert (=> b!1912687 (= res!854365 (isEmpty!13262 lt!732139))))

(declare-fun b!1912688 () Bool)

(declare-fun res!854351 () Bool)

(assert (=> b!1912688 (=> (not res!854351) (not e!1221895))))

(assert (=> b!1912688 (= res!854351 ((_ is Cons!21585) tokens!598))))

(declare-fun b!1912689 () Bool)

(declare-fun res!854360 () Bool)

(declare-fun e!1221882 () Bool)

(assert (=> b!1912689 (=> res!854360 e!1221882)))

(declare-fun lt!732123 () List!21665)

(declare-fun lt!732152 () C!10696)

(declare-fun contains!3904 (List!21665 C!10696) Bool)

(assert (=> b!1912689 (= res!854360 (not (contains!3904 lt!732123 lt!732152)))))

(declare-fun b!1912690 () Bool)

(declare-fun res!854354 () Bool)

(assert (=> b!1912690 (=> (not res!854354) (not e!1221895))))

(declare-fun rulesProduceEachTokenIndividuallyList!1194 (LexerInterface!3463 List!21666 List!21667) Bool)

(assert (=> b!1912690 (= res!854354 (rulesProduceEachTokenIndividuallyList!1194 thiss!23328 rules!3198 tokens!598))))

(declare-fun b!1912691 () Bool)

(assert (=> b!1912691 (= e!1221882 true)))

(declare-fun lt!732146 () List!21665)

(assert (=> b!1912691 (= (maxPrefix!1909 thiss!23328 rules!3198 lt!732146) (Some!4404 (tuple2!20311 (h!26986 tokens!598) lt!732139)))))

(declare-fun lt!732149 () Unit!35956)

(declare-fun lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!86 (LexerInterface!3463 List!21666 Token!7252 Rule!7500 List!21665 Rule!7500) Unit!35956)

(assert (=> b!1912691 (= lt!732149 (lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!86 thiss!23328 rules!3198 (h!26986 tokens!598) (rule!6049 (h!26986 tokens!598)) lt!732139 (rule!6049 separatorToken!354)))))

(declare-fun tp!545970 () Bool)

(declare-fun e!1221884 () Bool)

(declare-fun b!1912692 () Bool)

(declare-fun inv!21 (TokenValue!3986) Bool)

(assert (=> b!1912692 (= e!1221888 (and (inv!21 (value!121316 separatorToken!354)) e!1221884 tp!545970))))

(declare-fun e!1221874 () Bool)

(assert (=> b!1912693 (= e!1221874 (and tp!545962 tp!545969))))

(declare-fun b!1912694 () Bool)

(declare-fun res!854367 () Bool)

(assert (=> b!1912694 (=> res!854367 e!1221889)))

(declare-datatypes ((IArray!14391 0))(
  ( (IArray!14392 (innerList!7253 List!21667)) )
))
(declare-datatypes ((Conc!7193 0))(
  ( (Node!7193 (left!17244 Conc!7193) (right!17574 Conc!7193) (csize!14616 Int) (cheight!7404 Int)) (Leaf!10581 (xs!10087 IArray!14391) (csize!14617 Int)) (Empty!7193) )
))
(declare-datatypes ((BalanceConc!14202 0))(
  ( (BalanceConc!14203 (c!311530 Conc!7193)) )
))
(declare-fun isEmpty!13263 (BalanceConc!14202) Bool)

(declare-datatypes ((tuple2!20312 0))(
  ( (tuple2!20313 (_1!11625 BalanceConc!14202) (_2!11625 BalanceConc!14200)) )
))
(declare-fun lex!1538 (LexerInterface!3463 List!21666 BalanceConc!14200) tuple2!20312)

(assert (=> b!1912694 (= res!854367 (isEmpty!13263 (_1!11625 (lex!1538 thiss!23328 rules!3198 (seqFromList!2722 lt!732150)))))))

(declare-fun b!1912695 () Bool)

(assert (=> b!1912695 (= e!1221898 e!1221889)))

(declare-fun res!854369 () Bool)

(assert (=> b!1912695 (=> res!854369 e!1221889)))

(declare-fun lt!732129 () List!21665)

(declare-fun lt!732153 () List!21665)

(assert (=> b!1912695 (= res!854369 (or (not (= lt!732153 lt!732129)) (not (= lt!732129 lt!732150)) (not (= lt!732153 lt!732150))))))

(declare-fun printList!1046 (LexerInterface!3463 List!21667) List!21665)

(assert (=> b!1912695 (= lt!732129 (printList!1046 thiss!23328 (Cons!21585 (h!26986 tokens!598) Nil!21585)))))

(declare-fun lt!732143 () BalanceConc!14200)

(assert (=> b!1912695 (= lt!732153 (list!8774 lt!732143))))

(declare-fun lt!732151 () BalanceConc!14202)

(declare-fun printTailRec!980 (LexerInterface!3463 BalanceConc!14202 Int BalanceConc!14200) BalanceConc!14200)

(assert (=> b!1912695 (= lt!732143 (printTailRec!980 thiss!23328 lt!732151 0 (BalanceConc!14201 Empty!7192)))))

(declare-fun print!1473 (LexerInterface!3463 BalanceConc!14202) BalanceConc!14200)

(assert (=> b!1912695 (= lt!732143 (print!1473 thiss!23328 lt!732151))))

(declare-fun singletonSeq!1873 (Token!7252) BalanceConc!14202)

(assert (=> b!1912695 (= lt!732151 (singletonSeq!1873 (h!26986 tokens!598)))))

(declare-fun lt!732137 () List!21665)

(assert (=> b!1912695 (not (contains!3904 lt!732137 lt!732141))))

(declare-fun usedCharacters!358 (Regex!5275) List!21665)

(assert (=> b!1912695 (= lt!732137 (usedCharacters!358 (regex!3850 (rule!6049 (h!26986 tokens!598)))))))

(declare-fun lt!732138 () Unit!35956)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!54 (LexerInterface!3463 List!21666 List!21666 Rule!7500 Rule!7500 C!10696) Unit!35956)

(assert (=> b!1912695 (= lt!732138 (lemmaNonSepRuleNotContainsCharContainedInASepRule!54 thiss!23328 rules!3198 rules!3198 (rule!6049 (h!26986 tokens!598)) (rule!6049 separatorToken!354) lt!732141))))

(declare-fun lt!732128 () Unit!35956)

(assert (=> b!1912695 (= lt!732128 e!1221885)))

(declare-fun c!311527 () Bool)

(assert (=> b!1912695 (= c!311527 (not (contains!3904 lt!732123 lt!732141)))))

(declare-fun head!4456 (List!21665) C!10696)

(assert (=> b!1912695 (= lt!732141 (head!4456 lt!732148))))

(assert (=> b!1912695 (= lt!732123 (usedCharacters!358 (regex!3850 (rule!6049 separatorToken!354))))))

(declare-fun lt!732125 () List!21665)

(assert (=> b!1912695 (= lt!732125 lt!732146)))

(assert (=> b!1912695 (= lt!732146 (++!5801 lt!732150 lt!732139))))

(declare-fun lt!732133 () List!21665)

(assert (=> b!1912695 (= lt!732125 (++!5801 lt!732133 lt!732130))))

(assert (=> b!1912695 (= lt!732139 (++!5801 lt!732148 lt!732130))))

(assert (=> b!1912695 (= lt!732133 (++!5801 lt!732150 lt!732148))))

(declare-fun lt!732144 () Unit!35956)

(declare-fun lemmaConcatAssociativity!1165 (List!21665 List!21665 List!21665) Unit!35956)

(assert (=> b!1912695 (= lt!732144 (lemmaConcatAssociativity!1165 lt!732150 lt!732148 lt!732130))))

(declare-fun e!1221873 () Bool)

(declare-fun tp!545968 () Bool)

(declare-fun e!1221891 () Bool)

(declare-fun b!1912696 () Bool)

(assert (=> b!1912696 (= e!1221891 (and (inv!21 (value!121316 (h!26986 tokens!598))) e!1221873 tp!545968))))

(declare-fun b!1912697 () Bool)

(assert (=> b!1912697 (= e!1221879 e!1221882)))

(declare-fun res!854363 () Bool)

(assert (=> b!1912697 (=> res!854363 e!1221882)))

(assert (=> b!1912697 (= res!854363 (contains!3904 lt!732137 lt!732152))))

(assert (=> b!1912697 (= lt!732152 (head!4456 lt!732139))))

(declare-fun b!1912698 () Bool)

(declare-fun res!854347 () Bool)

(assert (=> b!1912698 (=> res!854347 e!1221889)))

(declare-fun contains!3905 (List!21666 Rule!7500) Bool)

(assert (=> b!1912698 (= res!854347 (not (contains!3905 rules!3198 (rule!6049 separatorToken!354))))))

(declare-fun b!1912699 () Bool)

(declare-fun tp!545971 () Bool)

(assert (=> b!1912699 (= e!1221892 (and (inv!28685 (h!26986 tokens!598)) e!1221891 tp!545971))))

(declare-fun b!1912700 () Bool)

(declare-fun tp!545965 () Bool)

(assert (=> b!1912700 (= e!1221873 (and tp!545965 (inv!28682 (tag!4286 (rule!6049 (h!26986 tokens!598)))) (inv!28686 (transformation!3850 (rule!6049 (h!26986 tokens!598)))) e!1221874))))

(declare-fun b!1912701 () Bool)

(declare-fun res!854364 () Bool)

(assert (=> b!1912701 (=> (not res!854364) (not e!1221895))))

(declare-fun isEmpty!13264 (List!21666) Bool)

(assert (=> b!1912701 (= res!854364 (not (isEmpty!13264 rules!3198)))))

(declare-fun b!1912702 () Bool)

(declare-fun res!854361 () Bool)

(assert (=> b!1912702 (=> (not res!854361) (not e!1221895))))

(assert (=> b!1912702 (= res!854361 (isSeparator!3850 (rule!6049 separatorToken!354)))))

(declare-fun b!1912703 () Bool)

(declare-fun res!854362 () Bool)

(assert (=> b!1912703 (=> res!854362 e!1221889)))

(assert (=> b!1912703 (= res!854362 (not (isEmpty!13262 (_2!11624 lt!732136))))))

(declare-fun b!1912704 () Bool)

(declare-fun tp!545960 () Bool)

(assert (=> b!1912704 (= e!1221877 (and e!1221897 tp!545960))))

(assert (=> b!1912705 (= e!1221894 (and tp!545966 tp!545961))))

(declare-fun b!1912706 () Bool)

(declare-fun e!1221890 () Bool)

(assert (=> b!1912706 (= e!1221881 e!1221890)))

(declare-fun res!854356 () Bool)

(assert (=> b!1912706 (=> (not res!854356) (not e!1221890))))

(declare-fun lt!732126 () Rule!7500)

(assert (=> b!1912706 (= res!854356 (matchR!2561 (regex!3850 lt!732126) lt!732150))))

(assert (=> b!1912706 (= lt!732126 (get!6738 lt!732140))))

(declare-fun b!1912707 () Bool)

(assert (=> b!1912707 (= e!1221886 (= (rule!6049 separatorToken!354) lt!732121))))

(declare-fun b!1912708 () Bool)

(declare-fun res!854357 () Bool)

(assert (=> b!1912708 (=> (not res!854357) (not e!1221895))))

(declare-fun lambda!74681 () Int)

(declare-fun forall!4542 (List!21667 Int) Bool)

(assert (=> b!1912708 (= res!854357 (forall!4542 tokens!598 lambda!74681))))

(declare-fun b!1912709 () Bool)

(declare-fun res!854368 () Bool)

(assert (=> b!1912709 (=> res!854368 e!1221889)))

(assert (=> b!1912709 (= res!854368 (not (contains!3905 rules!3198 (rule!6049 (h!26986 tokens!598)))))))

(declare-fun b!1912710 () Bool)

(declare-fun res!854352 () Bool)

(assert (=> b!1912710 (=> (not res!854352) (not e!1221895))))

(assert (=> b!1912710 (= res!854352 (rulesProduceIndividualToken!1635 thiss!23328 rules!3198 separatorToken!354))))

(declare-fun b!1912711 () Bool)

(assert (=> b!1912711 (= e!1221890 (= (rule!6049 (h!26986 tokens!598)) lt!732126))))

(declare-fun b!1912712 () Bool)

(declare-fun e!1221896 () Bool)

(declare-fun tp!545963 () Bool)

(assert (=> b!1912712 (= e!1221884 (and tp!545963 (inv!28682 (tag!4286 (rule!6049 separatorToken!354))) (inv!28686 (transformation!3850 (rule!6049 separatorToken!354))) e!1221896))))

(declare-fun b!1912713 () Bool)

(assert (=> b!1912713 (= e!1221889 e!1221879)))

(declare-fun res!854355 () Bool)

(assert (=> b!1912713 (=> res!854355 e!1221879)))

(assert (=> b!1912713 (= res!854355 (not (matchR!2561 (regex!3850 (rule!6049 (h!26986 tokens!598))) lt!732150)))))

(declare-fun ruleValid!1169 (LexerInterface!3463 Rule!7500) Bool)

(assert (=> b!1912713 (ruleValid!1169 thiss!23328 (rule!6049 (h!26986 tokens!598)))))

(declare-fun lt!732147 () Unit!35956)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!666 (LexerInterface!3463 Rule!7500 List!21666) Unit!35956)

(assert (=> b!1912713 (= lt!732147 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!666 thiss!23328 (rule!6049 (h!26986 tokens!598)) rules!3198))))

(declare-fun b!1912714 () Bool)

(declare-fun Unit!35959 () Unit!35956)

(assert (=> b!1912714 (= e!1221885 Unit!35959)))

(assert (=> b!1912715 (= e!1221896 (and tp!545967 tp!545972))))

(declare-fun b!1912716 () Bool)

(declare-fun res!854370 () Bool)

(assert (=> b!1912716 (=> (not res!854370) (not e!1221895))))

(declare-fun sepAndNonSepRulesDisjointChars!948 (List!21666 List!21666) Bool)

(assert (=> b!1912716 (= res!854370 (sepAndNonSepRulesDisjointChars!948 rules!3198 rules!3198))))

(assert (= (and start!191824 res!854346) b!1912701))

(assert (= (and b!1912701 res!854364) b!1912681))

(assert (= (and b!1912681 res!854345) b!1912690))

(assert (= (and b!1912690 res!854354) b!1912710))

(assert (= (and b!1912710 res!854352) b!1912702))

(assert (= (and b!1912702 res!854361) b!1912708))

(assert (= (and b!1912708 res!854357) b!1912716))

(assert (= (and b!1912716 res!854370) b!1912688))

(assert (= (and b!1912688 res!854351) b!1912683))

(assert (= (and b!1912683 res!854348) b!1912686))

(assert (= (and b!1912686 res!854359) b!1912707))

(assert (= (and b!1912683 res!854353) b!1912706))

(assert (= (and b!1912706 res!854356) b!1912711))

(assert (= (and b!1912683 (not res!854349)) b!1912695))

(assert (= (and b!1912695 c!311527) b!1912682))

(assert (= (and b!1912695 (not c!311527)) b!1912714))

(assert (= (and b!1912682 res!854358) b!1912684))

(assert (= (and b!1912695 (not res!854369)) b!1912679))

(assert (= (and b!1912679 (not res!854366)) b!1912694))

(assert (= (and b!1912694 (not res!854367)) b!1912709))

(assert (= (and b!1912709 (not res!854368)) b!1912698))

(assert (= (and b!1912698 (not res!854347)) b!1912685))

(assert (= (and b!1912685 (not res!854350)) b!1912703))

(assert (= (and b!1912703 (not res!854362)) b!1912713))

(assert (= (and b!1912713 (not res!854355)) b!1912687))

(assert (= (and b!1912687 (not res!854365)) b!1912697))

(assert (= (and b!1912697 (not res!854363)) b!1912689))

(assert (= (and b!1912689 (not res!854360)) b!1912691))

(assert (= b!1912680 b!1912705))

(assert (= b!1912704 b!1912680))

(assert (= (and start!191824 ((_ is Cons!21584) rules!3198)) b!1912704))

(assert (= b!1912700 b!1912693))

(assert (= b!1912696 b!1912700))

(assert (= b!1912699 b!1912696))

(assert (= (and start!191824 ((_ is Cons!21585) tokens!598)) b!1912699))

(assert (= b!1912712 b!1912715))

(assert (= b!1912692 b!1912712))

(assert (= start!191824 b!1912692))

(declare-fun m!2346793 () Bool)

(assert (=> b!1912698 m!2346793))

(declare-fun m!2346795 () Bool)

(assert (=> b!1912706 m!2346795))

(declare-fun m!2346797 () Bool)

(assert (=> b!1912706 m!2346797))

(declare-fun m!2346799 () Bool)

(assert (=> b!1912709 m!2346799))

(declare-fun m!2346801 () Bool)

(assert (=> b!1912697 m!2346801))

(declare-fun m!2346803 () Bool)

(assert (=> b!1912697 m!2346803))

(declare-fun m!2346805 () Bool)

(assert (=> b!1912696 m!2346805))

(declare-fun m!2346807 () Bool)

(assert (=> b!1912713 m!2346807))

(declare-fun m!2346809 () Bool)

(assert (=> b!1912713 m!2346809))

(declare-fun m!2346811 () Bool)

(assert (=> b!1912713 m!2346811))

(declare-fun m!2346813 () Bool)

(assert (=> b!1912679 m!2346813))

(declare-fun m!2346815 () Bool)

(assert (=> b!1912710 m!2346815))

(declare-fun m!2346817 () Bool)

(assert (=> b!1912691 m!2346817))

(declare-fun m!2346819 () Bool)

(assert (=> b!1912691 m!2346819))

(declare-fun m!2346821 () Bool)

(assert (=> b!1912703 m!2346821))

(declare-fun m!2346823 () Bool)

(assert (=> b!1912695 m!2346823))

(declare-fun m!2346825 () Bool)

(assert (=> b!1912695 m!2346825))

(declare-fun m!2346827 () Bool)

(assert (=> b!1912695 m!2346827))

(declare-fun m!2346829 () Bool)

(assert (=> b!1912695 m!2346829))

(declare-fun m!2346831 () Bool)

(assert (=> b!1912695 m!2346831))

(declare-fun m!2346833 () Bool)

(assert (=> b!1912695 m!2346833))

(declare-fun m!2346835 () Bool)

(assert (=> b!1912695 m!2346835))

(declare-fun m!2346837 () Bool)

(assert (=> b!1912695 m!2346837))

(declare-fun m!2346839 () Bool)

(assert (=> b!1912695 m!2346839))

(declare-fun m!2346841 () Bool)

(assert (=> b!1912695 m!2346841))

(declare-fun m!2346843 () Bool)

(assert (=> b!1912695 m!2346843))

(declare-fun m!2346845 () Bool)

(assert (=> b!1912695 m!2346845))

(declare-fun m!2346847 () Bool)

(assert (=> b!1912695 m!2346847))

(declare-fun m!2346849 () Bool)

(assert (=> b!1912695 m!2346849))

(declare-fun m!2346851 () Bool)

(assert (=> b!1912695 m!2346851))

(declare-fun m!2346853 () Bool)

(assert (=> b!1912695 m!2346853))

(declare-fun m!2346855 () Bool)

(assert (=> b!1912716 m!2346855))

(declare-fun m!2346857 () Bool)

(assert (=> b!1912689 m!2346857))

(declare-fun m!2346859 () Bool)

(assert (=> b!1912686 m!2346859))

(declare-fun m!2346861 () Bool)

(assert (=> b!1912686 m!2346861))

(declare-fun m!2346863 () Bool)

(assert (=> b!1912690 m!2346863))

(declare-fun m!2346865 () Bool)

(assert (=> b!1912712 m!2346865))

(declare-fun m!2346867 () Bool)

(assert (=> b!1912712 m!2346867))

(declare-fun m!2346869 () Bool)

(assert (=> b!1912699 m!2346869))

(declare-fun m!2346871 () Bool)

(assert (=> b!1912680 m!2346871))

(declare-fun m!2346873 () Bool)

(assert (=> b!1912680 m!2346873))

(declare-fun m!2346875 () Bool)

(assert (=> b!1912700 m!2346875))

(declare-fun m!2346877 () Bool)

(assert (=> b!1912700 m!2346877))

(declare-fun m!2346879 () Bool)

(assert (=> start!191824 m!2346879))

(declare-fun m!2346881 () Bool)

(assert (=> b!1912682 m!2346881))

(declare-fun m!2346883 () Bool)

(assert (=> b!1912682 m!2346883))

(declare-fun m!2346885 () Bool)

(assert (=> b!1912694 m!2346885))

(assert (=> b!1912694 m!2346885))

(declare-fun m!2346887 () Bool)

(assert (=> b!1912694 m!2346887))

(declare-fun m!2346889 () Bool)

(assert (=> b!1912694 m!2346889))

(declare-fun m!2346891 () Bool)

(assert (=> b!1912692 m!2346891))

(declare-fun m!2346893 () Bool)

(assert (=> b!1912687 m!2346893))

(declare-fun m!2346895 () Bool)

(assert (=> b!1912708 m!2346895))

(declare-fun m!2346897 () Bool)

(assert (=> b!1912681 m!2346897))

(declare-fun m!2346899 () Bool)

(assert (=> b!1912683 m!2346899))

(declare-fun m!2346901 () Bool)

(assert (=> b!1912683 m!2346901))

(declare-fun m!2346903 () Bool)

(assert (=> b!1912683 m!2346903))

(declare-fun m!2346905 () Bool)

(assert (=> b!1912683 m!2346905))

(declare-fun m!2346907 () Bool)

(assert (=> b!1912683 m!2346907))

(assert (=> b!1912683 m!2346899))

(declare-fun m!2346909 () Bool)

(assert (=> b!1912683 m!2346909))

(declare-fun m!2346911 () Bool)

(assert (=> b!1912683 m!2346911))

(declare-fun m!2346913 () Bool)

(assert (=> b!1912683 m!2346913))

(declare-fun m!2346915 () Bool)

(assert (=> b!1912683 m!2346915))

(declare-fun m!2346917 () Bool)

(assert (=> b!1912683 m!2346917))

(declare-fun m!2346919 () Bool)

(assert (=> b!1912683 m!2346919))

(declare-fun m!2346921 () Bool)

(assert (=> b!1912683 m!2346921))

(declare-fun m!2346923 () Bool)

(assert (=> b!1912683 m!2346923))

(declare-fun m!2346925 () Bool)

(assert (=> b!1912683 m!2346925))

(declare-fun m!2346927 () Bool)

(assert (=> b!1912683 m!2346927))

(declare-fun m!2346929 () Bool)

(assert (=> b!1912683 m!2346929))

(assert (=> b!1912683 m!2346927))

(declare-fun m!2346931 () Bool)

(assert (=> b!1912683 m!2346931))

(declare-fun m!2346933 () Bool)

(assert (=> b!1912683 m!2346933))

(assert (=> b!1912683 m!2346913))

(declare-fun m!2346935 () Bool)

(assert (=> b!1912683 m!2346935))

(declare-fun m!2346937 () Bool)

(assert (=> b!1912701 m!2346937))

(check-sat (not b_next!54777) (not b_next!54771) (not b!1912701) (not b!1912716) (not b!1912713) b_and!149085 (not b!1912686) (not b!1912687) (not b!1912710) b_and!149087 (not b!1912696) (not b_next!54773) (not b!1912708) (not b!1912698) (not b!1912681) (not b!1912692) (not start!191824) (not b_next!54779) (not b!1912695) (not b!1912699) (not b!1912679) (not b!1912703) (not b!1912682) (not b!1912691) (not b!1912694) b_and!149081 (not b!1912712) (not b!1912709) (not b!1912697) b_and!149089 b_and!149083 (not b!1912683) (not b_next!54769) (not b!1912704) (not b!1912680) (not b!1912690) (not b!1912700) (not b!1912706) (not b!1912689) b_and!149079 (not b_next!54775))
(check-sat (not b_next!54777) (not b_next!54771) (not b_next!54779) b_and!149085 b_and!149081 b_and!149087 (not b_next!54773) (not b_next!54769) b_and!149089 b_and!149083 b_and!149079 (not b_next!54775))

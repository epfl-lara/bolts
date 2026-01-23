; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!191808 () Bool)

(assert start!191808)

(declare-fun b!1911784 () Bool)

(declare-fun b_free!53969 () Bool)

(declare-fun b_next!54673 () Bool)

(assert (=> b!1911784 (= b_free!53969 (not b_next!54673))))

(declare-fun tp!545658 () Bool)

(declare-fun b_and!148983 () Bool)

(assert (=> b!1911784 (= tp!545658 b_and!148983)))

(declare-fun b_free!53971 () Bool)

(declare-fun b_next!54675 () Bool)

(assert (=> b!1911784 (= b_free!53971 (not b_next!54675))))

(declare-fun tp!545653 () Bool)

(declare-fun b_and!148985 () Bool)

(assert (=> b!1911784 (= tp!545653 b_and!148985)))

(declare-fun b!1911779 () Bool)

(declare-fun b_free!53973 () Bool)

(declare-fun b_next!54677 () Bool)

(assert (=> b!1911779 (= b_free!53973 (not b_next!54677))))

(declare-fun tp!545654 () Bool)

(declare-fun b_and!148987 () Bool)

(assert (=> b!1911779 (= tp!545654 b_and!148987)))

(declare-fun b_free!53975 () Bool)

(declare-fun b_next!54679 () Bool)

(assert (=> b!1911779 (= b_free!53975 (not b_next!54679))))

(declare-fun tp!545659 () Bool)

(declare-fun b_and!148989 () Bool)

(assert (=> b!1911779 (= tp!545659 b_and!148989)))

(declare-fun b!1911803 () Bool)

(declare-fun b_free!53977 () Bool)

(declare-fun b_next!54681 () Bool)

(assert (=> b!1911803 (= b_free!53977 (not b_next!54681))))

(declare-fun tp!545660 () Bool)

(declare-fun b_and!148991 () Bool)

(assert (=> b!1911803 (= tp!545660 b_and!148991)))

(declare-fun b_free!53979 () Bool)

(declare-fun b_next!54683 () Bool)

(assert (=> b!1911803 (= b_free!53979 (not b_next!54683))))

(declare-fun tp!545651 () Bool)

(declare-fun b_and!148993 () Bool)

(assert (=> b!1911803 (= tp!545651 b_and!148993)))

(declare-fun e!1221255 () Bool)

(declare-fun e!1221247 () Bool)

(declare-datatypes ((List!21632 0))(
  ( (Nil!21550) (Cons!21550 (h!26951 (_ BitVec 16)) (t!178201 List!21632)) )
))
(declare-datatypes ((TokenValue!3978 0))(
  ( (FloatLiteralValue!7956 (text!28291 List!21632)) (TokenValueExt!3977 (__x!13454 Int)) (Broken!19890 (value!121062 List!21632)) (Object!4059) (End!3978) (Def!3978) (Underscore!3978) (Match!3978) (Else!3978) (Error!3978) (Case!3978) (If!3978) (Extends!3978) (Abstract!3978) (Class!3978) (Val!3978) (DelimiterValue!7956 (del!4038 List!21632)) (KeywordValue!3984 (value!121063 List!21632)) (CommentValue!7956 (value!121064 List!21632)) (WhitespaceValue!7956 (value!121065 List!21632)) (IndentationValue!3978 (value!121066 List!21632)) (String!25007) (Int32!3978) (Broken!19891 (value!121067 List!21632)) (Boolean!3979) (Unit!35915) (OperatorValue!3981 (op!4038 List!21632)) (IdentifierValue!7956 (value!121068 List!21632)) (IdentifierValue!7957 (value!121069 List!21632)) (WhitespaceValue!7957 (value!121070 List!21632)) (True!7956) (False!7956) (Broken!19892 (value!121071 List!21632)) (Broken!19893 (value!121072 List!21632)) (True!7957) (RightBrace!3978) (RightBracket!3978) (Colon!3978) (Null!3978) (Comma!3978) (LeftBracket!3978) (False!7957) (LeftBrace!3978) (ImaginaryLiteralValue!3978 (text!28292 List!21632)) (StringLiteralValue!11934 (value!121073 List!21632)) (EOFValue!3978 (value!121074 List!21632)) (IdentValue!3978 (value!121075 List!21632)) (DelimiterValue!7957 (value!121076 List!21632)) (DedentValue!3978 (value!121077 List!21632)) (NewLineValue!3978 (value!121078 List!21632)) (IntegerValue!11934 (value!121079 (_ BitVec 32)) (text!28293 List!21632)) (IntegerValue!11935 (value!121080 Int) (text!28294 List!21632)) (Times!3978) (Or!3978) (Equal!3978) (Minus!3978) (Broken!19894 (value!121081 List!21632)) (And!3978) (Div!3978) (LessEqual!3978) (Mod!3978) (Concat!9245) (Not!3978) (Plus!3978) (SpaceValue!3978 (value!121082 List!21632)) (IntegerValue!11936 (value!121083 Int) (text!28295 List!21632)) (StringLiteralValue!11935 (text!28296 List!21632)) (FloatLiteralValue!7957 (text!28297 List!21632)) (BytesLiteralValue!3978 (value!121084 List!21632)) (CommentValue!7957 (value!121085 List!21632)) (StringLiteralValue!11936 (value!121086 List!21632)) (ErrorTokenValue!3978 (msg!4039 List!21632)) )
))
(declare-datatypes ((String!25008 0))(
  ( (String!25009 (value!121087 String)) )
))
(declare-datatypes ((C!10680 0))(
  ( (C!10681 (val!6292 Int)) )
))
(declare-datatypes ((List!21633 0))(
  ( (Nil!21551) (Cons!21551 (h!26952 C!10680) (t!178202 List!21633)) )
))
(declare-datatypes ((Regex!5267 0))(
  ( (ElementMatch!5267 (c!311472 C!10680)) (Concat!9246 (regOne!11046 Regex!5267) (regTwo!11046 Regex!5267)) (EmptyExpr!5267) (Star!5267 (reg!5596 Regex!5267)) (EmptyLang!5267) (Union!5267 (regOne!11047 Regex!5267) (regTwo!11047 Regex!5267)) )
))
(declare-datatypes ((IArray!14357 0))(
  ( (IArray!14358 (innerList!7236 List!21633)) )
))
(declare-datatypes ((Conc!7176 0))(
  ( (Node!7176 (left!17223 Conc!7176) (right!17553 Conc!7176) (csize!14582 Int) (cheight!7387 Int)) (Leaf!10560 (xs!10070 IArray!14357) (csize!14583 Int)) (Empty!7176) )
))
(declare-datatypes ((BalanceConc!14168 0))(
  ( (BalanceConc!14169 (c!311473 Conc!7176)) )
))
(declare-datatypes ((TokenValueInjection!7540 0))(
  ( (TokenValueInjection!7541 (toValue!5471 Int) (toChars!5330 Int)) )
))
(declare-datatypes ((Rule!7484 0))(
  ( (Rule!7485 (regex!3842 Regex!5267) (tag!4278 String!25008) (isSeparator!3842 Bool) (transformation!3842 TokenValueInjection!7540)) )
))
(declare-datatypes ((Token!7236 0))(
  ( (Token!7237 (value!121088 TokenValue!3978) (rule!6041 Rule!7484) (size!16976 Int) (originalCharacters!4649 List!21633)) )
))
(declare-datatypes ((List!21634 0))(
  ( (Nil!21552) (Cons!21552 (h!26953 Token!7236) (t!178203 List!21634)) )
))
(declare-fun tokens!598 () List!21634)

(declare-fun tp!545650 () Bool)

(declare-fun b!1911774 () Bool)

(declare-fun inv!28657 (Token!7236) Bool)

(assert (=> b!1911774 (= e!1221247 (and (inv!28657 (h!26953 tokens!598)) e!1221255 tp!545650))))

(declare-fun e!1221256 () Bool)

(declare-fun separatorToken!354 () Token!7236)

(declare-fun tp!545648 () Bool)

(declare-fun e!1221266 () Bool)

(declare-fun b!1911775 () Bool)

(declare-fun inv!21 (TokenValue!3978) Bool)

(assert (=> b!1911775 (= e!1221266 (and (inv!21 (value!121088 separatorToken!354)) e!1221256 tp!545648))))

(declare-fun b!1911776 () Bool)

(declare-fun res!853731 () Bool)

(declare-fun e!1221257 () Bool)

(assert (=> b!1911776 (=> (not res!853731) (not e!1221257))))

(assert (=> b!1911776 (= res!853731 (isSeparator!3842 (rule!6041 separatorToken!354)))))

(declare-fun b!1911777 () Bool)

(declare-fun res!853730 () Bool)

(assert (=> b!1911777 (=> (not res!853730) (not e!1221257))))

(declare-datatypes ((List!21635 0))(
  ( (Nil!21553) (Cons!21553 (h!26954 Rule!7484) (t!178204 List!21635)) )
))
(declare-fun rules!3198 () List!21635)

(declare-fun isEmpty!13237 (List!21635) Bool)

(assert (=> b!1911777 (= res!853730 (not (isEmpty!13237 rules!3198)))))

(declare-fun b!1911778 () Bool)

(declare-fun res!853740 () Bool)

(assert (=> b!1911778 (=> (not res!853740) (not e!1221257))))

(declare-datatypes ((LexerInterface!3455 0))(
  ( (LexerInterfaceExt!3452 (__x!13455 Int)) (Lexer!3453) )
))
(declare-fun thiss!23328 () LexerInterface!3455)

(declare-fun rulesProduceEachTokenIndividuallyList!1186 (LexerInterface!3455 List!21635 List!21634) Bool)

(assert (=> b!1911778 (= res!853740 (rulesProduceEachTokenIndividuallyList!1186 thiss!23328 rules!3198 tokens!598))))

(declare-fun e!1221264 () Bool)

(assert (=> b!1911779 (= e!1221264 (and tp!545654 tp!545659))))

(declare-fun b!1911780 () Bool)

(declare-fun e!1221260 () Bool)

(declare-fun e!1221263 () Bool)

(declare-fun tp!545652 () Bool)

(assert (=> b!1911780 (= e!1221260 (and e!1221263 tp!545652))))

(declare-fun tp!545655 () Bool)

(declare-fun b!1911781 () Bool)

(declare-fun inv!28654 (String!25008) Bool)

(declare-fun inv!28658 (TokenValueInjection!7540) Bool)

(assert (=> b!1911781 (= e!1221263 (and tp!545655 (inv!28654 (tag!4278 (h!26954 rules!3198))) (inv!28658 (transformation!3842 (h!26954 rules!3198))) e!1221264))))

(declare-fun b!1911782 () Bool)

(declare-fun res!853736 () Bool)

(assert (=> b!1911782 (=> (not res!853736) (not e!1221257))))

(declare-fun sepAndNonSepRulesDisjointChars!940 (List!21635 List!21635) Bool)

(assert (=> b!1911782 (= res!853736 (sepAndNonSepRulesDisjointChars!940 rules!3198 rules!3198))))

(declare-fun e!1221245 () Bool)

(declare-fun b!1911783 () Bool)

(declare-fun tp!545657 () Bool)

(assert (=> b!1911783 (= e!1221255 (and (inv!21 (value!121088 (h!26953 tokens!598))) e!1221245 tp!545657))))

(declare-fun e!1221268 () Bool)

(assert (=> b!1911784 (= e!1221268 (and tp!545658 tp!545653))))

(declare-fun b!1911785 () Bool)

(declare-fun res!853734 () Bool)

(declare-fun e!1221244 () Bool)

(assert (=> b!1911785 (=> res!853734 e!1221244)))

(declare-fun lt!731336 () List!21633)

(declare-datatypes ((IArray!14359 0))(
  ( (IArray!14360 (innerList!7237 List!21634)) )
))
(declare-datatypes ((Conc!7177 0))(
  ( (Node!7177 (left!17224 Conc!7177) (right!17554 Conc!7177) (csize!14584 Int) (cheight!7388 Int)) (Leaf!10561 (xs!10071 IArray!14359) (csize!14585 Int)) (Empty!7177) )
))
(declare-datatypes ((BalanceConc!14170 0))(
  ( (BalanceConc!14171 (c!311474 Conc!7177)) )
))
(declare-fun isEmpty!13238 (BalanceConc!14170) Bool)

(declare-datatypes ((tuple2!20278 0))(
  ( (tuple2!20279 (_1!11608 BalanceConc!14170) (_2!11608 BalanceConc!14168)) )
))
(declare-fun lex!1530 (LexerInterface!3455 List!21635 BalanceConc!14168) tuple2!20278)

(declare-fun seqFromList!2714 (List!21633) BalanceConc!14168)

(assert (=> b!1911785 (= res!853734 (isEmpty!13238 (_1!11608 (lex!1530 thiss!23328 rules!3198 (seqFromList!2714 lt!731336)))))))

(declare-fun res!853745 () Bool)

(assert (=> start!191808 (=> (not res!853745) (not e!1221257))))

(get-info :version)

(assert (=> start!191808 (= res!853745 ((_ is Lexer!3453) thiss!23328))))

(assert (=> start!191808 e!1221257))

(assert (=> start!191808 true))

(assert (=> start!191808 e!1221260))

(assert (=> start!191808 e!1221247))

(assert (=> start!191808 (and (inv!28657 separatorToken!354) e!1221266)))

(declare-fun b!1911786 () Bool)

(declare-fun e!1221265 () Bool)

(assert (=> b!1911786 (= e!1221265 e!1221244)))

(declare-fun res!853735 () Bool)

(assert (=> b!1911786 (=> res!853735 e!1221244)))

(declare-fun lt!731340 () List!21633)

(declare-fun lt!731345 () List!21633)

(assert (=> b!1911786 (= res!853735 (or (not (= lt!731345 lt!731340)) (not (= lt!731340 lt!731336)) (not (= lt!731345 lt!731336))))))

(declare-fun printList!1038 (LexerInterface!3455 List!21634) List!21633)

(assert (=> b!1911786 (= lt!731340 (printList!1038 thiss!23328 (Cons!21552 (h!26953 tokens!598) Nil!21552)))))

(declare-fun lt!731343 () BalanceConc!14168)

(declare-fun list!8766 (BalanceConc!14168) List!21633)

(assert (=> b!1911786 (= lt!731345 (list!8766 lt!731343))))

(declare-fun lt!731349 () BalanceConc!14170)

(declare-fun printTailRec!972 (LexerInterface!3455 BalanceConc!14170 Int BalanceConc!14168) BalanceConc!14168)

(assert (=> b!1911786 (= lt!731343 (printTailRec!972 thiss!23328 lt!731349 0 (BalanceConc!14169 Empty!7176)))))

(declare-fun print!1465 (LexerInterface!3455 BalanceConc!14170) BalanceConc!14168)

(assert (=> b!1911786 (= lt!731343 (print!1465 thiss!23328 lt!731349))))

(declare-fun singletonSeq!1865 (Token!7236) BalanceConc!14170)

(assert (=> b!1911786 (= lt!731349 (singletonSeq!1865 (h!26953 tokens!598)))))

(declare-fun lt!731328 () C!10680)

(declare-fun contains!3889 (List!21633 C!10680) Bool)

(declare-fun usedCharacters!350 (Regex!5267) List!21633)

(assert (=> b!1911786 (not (contains!3889 (usedCharacters!350 (regex!3842 (rule!6041 (h!26953 tokens!598)))) lt!731328))))

(declare-datatypes ((Unit!35916 0))(
  ( (Unit!35917) )
))
(declare-fun lt!731329 () Unit!35916)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!46 (LexerInterface!3455 List!21635 List!21635 Rule!7484 Rule!7484 C!10680) Unit!35916)

(assert (=> b!1911786 (= lt!731329 (lemmaNonSepRuleNotContainsCharContainedInASepRule!46 thiss!23328 rules!3198 rules!3198 (rule!6041 (h!26953 tokens!598)) (rule!6041 separatorToken!354) lt!731328))))

(declare-fun lt!731346 () Unit!35916)

(declare-fun e!1221250 () Unit!35916)

(assert (=> b!1911786 (= lt!731346 e!1221250)))

(declare-fun c!311471 () Bool)

(assert (=> b!1911786 (= c!311471 (not (contains!3889 (usedCharacters!350 (regex!3842 (rule!6041 separatorToken!354))) lt!731328)))))

(declare-fun lt!731337 () List!21633)

(declare-fun head!4448 (List!21633) C!10680)

(assert (=> b!1911786 (= lt!731328 (head!4448 lt!731337))))

(declare-fun lt!731339 () List!21633)

(declare-fun ++!5793 (List!21633 List!21633) List!21633)

(assert (=> b!1911786 (= (++!5793 (++!5793 lt!731336 lt!731337) lt!731339) (++!5793 lt!731336 (++!5793 lt!731337 lt!731339)))))

(declare-fun lt!731342 () Unit!35916)

(declare-fun lemmaConcatAssociativity!1157 (List!21633 List!21633 List!21633) Unit!35916)

(assert (=> b!1911786 (= lt!731342 (lemmaConcatAssociativity!1157 lt!731336 lt!731337 lt!731339))))

(declare-fun b!1911787 () Bool)

(declare-fun e!1221254 () Bool)

(assert (=> b!1911787 (= e!1221254 false)))

(declare-fun b!1911788 () Bool)

(declare-fun res!853737 () Bool)

(assert (=> b!1911788 (=> (not res!853737) (not e!1221257))))

(declare-fun rulesInvariant!3062 (LexerInterface!3455 List!21635) Bool)

(assert (=> b!1911788 (= res!853737 (rulesInvariant!3062 thiss!23328 rules!3198))))

(declare-fun b!1911789 () Bool)

(declare-fun Unit!35918 () Unit!35916)

(assert (=> b!1911789 (= e!1221250 Unit!35918)))

(declare-fun b!1911790 () Bool)

(declare-fun Unit!35919 () Unit!35916)

(assert (=> b!1911790 (= e!1221250 Unit!35919)))

(declare-fun lt!731338 () Unit!35916)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!250 (Regex!5267 List!21633 C!10680) Unit!35916)

(assert (=> b!1911790 (= lt!731338 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!250 (regex!3842 (rule!6041 separatorToken!354)) lt!731337 lt!731328))))

(declare-fun res!853728 () Bool)

(declare-fun matchR!2553 (Regex!5267 List!21633) Bool)

(assert (=> b!1911790 (= res!853728 (not (matchR!2553 (regex!3842 (rule!6041 separatorToken!354)) lt!731337)))))

(assert (=> b!1911790 (=> (not res!853728) (not e!1221254))))

(assert (=> b!1911790 e!1221254))

(declare-fun b!1911791 () Bool)

(declare-fun res!853732 () Bool)

(assert (=> b!1911791 (=> (not res!853732) (not e!1221257))))

(assert (=> b!1911791 (= res!853732 ((_ is Cons!21552) tokens!598))))

(declare-fun b!1911792 () Bool)

(declare-fun e!1221258 () Bool)

(declare-fun lt!731330 () Rule!7484)

(assert (=> b!1911792 (= e!1221258 (= (rule!6041 (h!26953 tokens!598)) lt!731330))))

(declare-fun b!1911793 () Bool)

(declare-fun e!1221248 () Bool)

(declare-datatypes ((tuple2!20280 0))(
  ( (tuple2!20281 (_1!11609 Token!7236) (_2!11609 List!21633)) )
))
(declare-datatypes ((Option!4389 0))(
  ( (None!4388) (Some!4388 (v!26445 tuple2!20280)) )
))
(declare-fun lt!731350 () Option!4389)

(declare-fun get!6717 (Option!4389) tuple2!20280)

(assert (=> b!1911793 (= e!1221248 (= (_1!11609 (get!6717 lt!731350)) (h!26953 tokens!598)))))

(declare-fun e!1221249 () Bool)

(declare-fun tp!545656 () Bool)

(declare-fun b!1911794 () Bool)

(assert (=> b!1911794 (= e!1221256 (and tp!545656 (inv!28654 (tag!4278 (rule!6041 separatorToken!354))) (inv!28658 (transformation!3842 (rule!6041 separatorToken!354))) e!1221249))))

(declare-fun b!1911795 () Bool)

(declare-fun res!853741 () Bool)

(assert (=> b!1911795 (=> res!853741 e!1221244)))

(declare-fun rulesProduceIndividualToken!1627 (LexerInterface!3455 List!21635 Token!7236) Bool)

(assert (=> b!1911795 (= res!853741 (not (rulesProduceIndividualToken!1627 thiss!23328 rules!3198 (h!26953 tokens!598))))))

(declare-fun b!1911796 () Bool)

(declare-fun e!1221259 () Bool)

(assert (=> b!1911796 (= e!1221259 e!1221258)))

(declare-fun res!853733 () Bool)

(assert (=> b!1911796 (=> (not res!853733) (not e!1221258))))

(assert (=> b!1911796 (= res!853733 (matchR!2553 (regex!3842 lt!731330) lt!731336))))

(declare-datatypes ((Option!4390 0))(
  ( (None!4389) (Some!4389 (v!26446 Rule!7484)) )
))
(declare-fun lt!731347 () Option!4390)

(declare-fun get!6718 (Option!4390) Rule!7484)

(assert (=> b!1911796 (= lt!731330 (get!6718 lt!731347))))

(declare-fun b!1911797 () Bool)

(declare-fun res!853739 () Bool)

(assert (=> b!1911797 (=> (not res!853739) (not e!1221257))))

(declare-fun lambda!74653 () Int)

(declare-fun forall!4534 (List!21634 Int) Bool)

(assert (=> b!1911797 (= res!853739 (forall!4534 tokens!598 lambda!74653))))

(declare-fun b!1911798 () Bool)

(declare-fun e!1221253 () Bool)

(declare-fun e!1221267 () Bool)

(assert (=> b!1911798 (= e!1221253 e!1221267)))

(declare-fun res!853729 () Bool)

(assert (=> b!1911798 (=> (not res!853729) (not e!1221267))))

(declare-fun lt!731348 () Rule!7484)

(assert (=> b!1911798 (= res!853729 (matchR!2553 (regex!3842 lt!731348) lt!731337))))

(declare-fun lt!731335 () Option!4390)

(assert (=> b!1911798 (= lt!731348 (get!6718 lt!731335))))

(declare-fun b!1911799 () Bool)

(assert (=> b!1911799 (= e!1221244 true)))

(declare-fun lt!731331 () Bool)

(declare-fun rulesValidInductive!1306 (LexerInterface!3455 List!21635) Bool)

(assert (=> b!1911799 (= lt!731331 (rulesValidInductive!1306 thiss!23328 rules!3198))))

(declare-fun b!1911800 () Bool)

(assert (=> b!1911800 (= e!1221257 (not e!1221265))))

(declare-fun res!853746 () Bool)

(assert (=> b!1911800 (=> res!853746 e!1221265)))

(declare-fun lt!731332 () Bool)

(declare-fun lt!731341 () Option!4389)

(assert (=> b!1911800 (= res!853746 (or (and (not lt!731332) (= (_1!11609 (v!26445 lt!731341)) (h!26953 tokens!598))) lt!731332 (= (_1!11609 (v!26445 lt!731341)) (h!26953 tokens!598))))))

(assert (=> b!1911800 (= lt!731332 (not ((_ is Some!4388) lt!731341)))))

(declare-fun maxPrefix!1901 (LexerInterface!3455 List!21635 List!21633) Option!4389)

(assert (=> b!1911800 (= lt!731341 (maxPrefix!1901 thiss!23328 rules!3198 (++!5793 lt!731336 lt!731339)))))

(declare-fun printWithSeparatorTokenWhenNeededList!498 (LexerInterface!3455 List!21635 List!21634 Token!7236) List!21633)

(assert (=> b!1911800 (= lt!731339 (printWithSeparatorTokenWhenNeededList!498 thiss!23328 rules!3198 (t!178203 tokens!598) separatorToken!354))))

(assert (=> b!1911800 e!1221259))

(declare-fun res!853742 () Bool)

(assert (=> b!1911800 (=> (not res!853742) (not e!1221259))))

(declare-fun isDefined!3687 (Option!4390) Bool)

(assert (=> b!1911800 (= res!853742 (isDefined!3687 lt!731347))))

(declare-fun getRuleFromTag!685 (LexerInterface!3455 List!21635 String!25008) Option!4390)

(assert (=> b!1911800 (= lt!731347 (getRuleFromTag!685 thiss!23328 rules!3198 (tag!4278 (rule!6041 (h!26953 tokens!598)))))))

(declare-fun lt!731334 () Unit!35916)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!685 (LexerInterface!3455 List!21635 List!21633 Token!7236) Unit!35916)

(assert (=> b!1911800 (= lt!731334 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!685 thiss!23328 rules!3198 lt!731336 (h!26953 tokens!598)))))

(assert (=> b!1911800 e!1221248))

(declare-fun res!853743 () Bool)

(assert (=> b!1911800 (=> (not res!853743) (not e!1221248))))

(declare-fun isDefined!3688 (Option!4389) Bool)

(assert (=> b!1911800 (= res!853743 (isDefined!3688 lt!731350))))

(assert (=> b!1911800 (= lt!731350 (maxPrefix!1901 thiss!23328 rules!3198 lt!731336))))

(declare-fun lt!731344 () BalanceConc!14168)

(assert (=> b!1911800 (= lt!731336 (list!8766 lt!731344))))

(assert (=> b!1911800 e!1221253))

(declare-fun res!853744 () Bool)

(assert (=> b!1911800 (=> (not res!853744) (not e!1221253))))

(assert (=> b!1911800 (= res!853744 (isDefined!3687 lt!731335))))

(assert (=> b!1911800 (= lt!731335 (getRuleFromTag!685 thiss!23328 rules!3198 (tag!4278 (rule!6041 separatorToken!354))))))

(declare-fun lt!731327 () Unit!35916)

(assert (=> b!1911800 (= lt!731327 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!685 thiss!23328 rules!3198 lt!731337 separatorToken!354))))

(declare-fun charsOf!2398 (Token!7236) BalanceConc!14168)

(assert (=> b!1911800 (= lt!731337 (list!8766 (charsOf!2398 separatorToken!354)))))

(declare-fun lt!731326 () Unit!35916)

(declare-fun lemmaEqSameImage!550 (TokenValueInjection!7540 BalanceConc!14168 BalanceConc!14168) Unit!35916)

(assert (=> b!1911800 (= lt!731326 (lemmaEqSameImage!550 (transformation!3842 (rule!6041 (h!26953 tokens!598))) lt!731344 (seqFromList!2714 (originalCharacters!4649 (h!26953 tokens!598)))))))

(declare-fun lt!731333 () Unit!35916)

(declare-fun lemmaSemiInverse!821 (TokenValueInjection!7540 BalanceConc!14168) Unit!35916)

(assert (=> b!1911800 (= lt!731333 (lemmaSemiInverse!821 (transformation!3842 (rule!6041 (h!26953 tokens!598))) lt!731344))))

(assert (=> b!1911800 (= lt!731344 (charsOf!2398 (h!26953 tokens!598)))))

(declare-fun b!1911801 () Bool)

(declare-fun res!853738 () Bool)

(assert (=> b!1911801 (=> (not res!853738) (not e!1221257))))

(assert (=> b!1911801 (= res!853738 (rulesProduceIndividualToken!1627 thiss!23328 rules!3198 separatorToken!354))))

(declare-fun b!1911802 () Bool)

(assert (=> b!1911802 (= e!1221267 (= (rule!6041 separatorToken!354) lt!731348))))

(assert (=> b!1911803 (= e!1221249 (and tp!545660 tp!545651))))

(declare-fun tp!545649 () Bool)

(declare-fun b!1911804 () Bool)

(assert (=> b!1911804 (= e!1221245 (and tp!545649 (inv!28654 (tag!4278 (rule!6041 (h!26953 tokens!598)))) (inv!28658 (transformation!3842 (rule!6041 (h!26953 tokens!598)))) e!1221268))))

(assert (= (and start!191808 res!853745) b!1911777))

(assert (= (and b!1911777 res!853730) b!1911788))

(assert (= (and b!1911788 res!853737) b!1911778))

(assert (= (and b!1911778 res!853740) b!1911801))

(assert (= (and b!1911801 res!853738) b!1911776))

(assert (= (and b!1911776 res!853731) b!1911797))

(assert (= (and b!1911797 res!853739) b!1911782))

(assert (= (and b!1911782 res!853736) b!1911791))

(assert (= (and b!1911791 res!853732) b!1911800))

(assert (= (and b!1911800 res!853744) b!1911798))

(assert (= (and b!1911798 res!853729) b!1911802))

(assert (= (and b!1911800 res!853743) b!1911793))

(assert (= (and b!1911800 res!853742) b!1911796))

(assert (= (and b!1911796 res!853733) b!1911792))

(assert (= (and b!1911800 (not res!853746)) b!1911786))

(assert (= (and b!1911786 c!311471) b!1911790))

(assert (= (and b!1911786 (not c!311471)) b!1911789))

(assert (= (and b!1911790 res!853728) b!1911787))

(assert (= (and b!1911786 (not res!853735)) b!1911795))

(assert (= (and b!1911795 (not res!853741)) b!1911785))

(assert (= (and b!1911785 (not res!853734)) b!1911799))

(assert (= b!1911781 b!1911779))

(assert (= b!1911780 b!1911781))

(assert (= (and start!191808 ((_ is Cons!21553) rules!3198)) b!1911780))

(assert (= b!1911804 b!1911784))

(assert (= b!1911783 b!1911804))

(assert (= b!1911774 b!1911783))

(assert (= (and start!191808 ((_ is Cons!21552) tokens!598)) b!1911774))

(assert (= b!1911794 b!1911803))

(assert (= b!1911775 b!1911794))

(assert (= start!191808 b!1911775))

(declare-fun m!2345651 () Bool)

(assert (=> b!1911782 m!2345651))

(declare-fun m!2345653 () Bool)

(assert (=> b!1911801 m!2345653))

(declare-fun m!2345655 () Bool)

(assert (=> b!1911798 m!2345655))

(declare-fun m!2345657 () Bool)

(assert (=> b!1911798 m!2345657))

(declare-fun m!2345659 () Bool)

(assert (=> b!1911781 m!2345659))

(declare-fun m!2345661 () Bool)

(assert (=> b!1911781 m!2345661))

(declare-fun m!2345663 () Bool)

(assert (=> b!1911774 m!2345663))

(declare-fun m!2345665 () Bool)

(assert (=> b!1911778 m!2345665))

(declare-fun m!2345667 () Bool)

(assert (=> b!1911800 m!2345667))

(declare-fun m!2345669 () Bool)

(assert (=> b!1911800 m!2345669))

(declare-fun m!2345671 () Bool)

(assert (=> b!1911800 m!2345671))

(assert (=> b!1911800 m!2345669))

(declare-fun m!2345673 () Bool)

(assert (=> b!1911800 m!2345673))

(declare-fun m!2345675 () Bool)

(assert (=> b!1911800 m!2345675))

(declare-fun m!2345677 () Bool)

(assert (=> b!1911800 m!2345677))

(declare-fun m!2345679 () Bool)

(assert (=> b!1911800 m!2345679))

(declare-fun m!2345681 () Bool)

(assert (=> b!1911800 m!2345681))

(declare-fun m!2345683 () Bool)

(assert (=> b!1911800 m!2345683))

(declare-fun m!2345685 () Bool)

(assert (=> b!1911800 m!2345685))

(declare-fun m!2345687 () Bool)

(assert (=> b!1911800 m!2345687))

(declare-fun m!2345689 () Bool)

(assert (=> b!1911800 m!2345689))

(declare-fun m!2345691 () Bool)

(assert (=> b!1911800 m!2345691))

(declare-fun m!2345693 () Bool)

(assert (=> b!1911800 m!2345693))

(assert (=> b!1911800 m!2345689))

(declare-fun m!2345695 () Bool)

(assert (=> b!1911800 m!2345695))

(declare-fun m!2345697 () Bool)

(assert (=> b!1911800 m!2345697))

(assert (=> b!1911800 m!2345685))

(declare-fun m!2345699 () Bool)

(assert (=> b!1911800 m!2345699))

(declare-fun m!2345701 () Bool)

(assert (=> b!1911800 m!2345701))

(declare-fun m!2345703 () Bool)

(assert (=> b!1911775 m!2345703))

(declare-fun m!2345705 () Bool)

(assert (=> b!1911785 m!2345705))

(assert (=> b!1911785 m!2345705))

(declare-fun m!2345707 () Bool)

(assert (=> b!1911785 m!2345707))

(declare-fun m!2345709 () Bool)

(assert (=> b!1911785 m!2345709))

(declare-fun m!2345711 () Bool)

(assert (=> b!1911796 m!2345711))

(declare-fun m!2345713 () Bool)

(assert (=> b!1911796 m!2345713))

(declare-fun m!2345715 () Bool)

(assert (=> b!1911783 m!2345715))

(declare-fun m!2345717 () Bool)

(assert (=> b!1911790 m!2345717))

(declare-fun m!2345719 () Bool)

(assert (=> b!1911790 m!2345719))

(declare-fun m!2345721 () Bool)

(assert (=> b!1911777 m!2345721))

(declare-fun m!2345723 () Bool)

(assert (=> b!1911786 m!2345723))

(declare-fun m!2345725 () Bool)

(assert (=> b!1911786 m!2345725))

(declare-fun m!2345727 () Bool)

(assert (=> b!1911786 m!2345727))

(declare-fun m!2345729 () Bool)

(assert (=> b!1911786 m!2345729))

(declare-fun m!2345731 () Bool)

(assert (=> b!1911786 m!2345731))

(declare-fun m!2345733 () Bool)

(assert (=> b!1911786 m!2345733))

(declare-fun m!2345735 () Bool)

(assert (=> b!1911786 m!2345735))

(declare-fun m!2345737 () Bool)

(assert (=> b!1911786 m!2345737))

(declare-fun m!2345739 () Bool)

(assert (=> b!1911786 m!2345739))

(declare-fun m!2345741 () Bool)

(assert (=> b!1911786 m!2345741))

(declare-fun m!2345743 () Bool)

(assert (=> b!1911786 m!2345743))

(declare-fun m!2345745 () Bool)

(assert (=> b!1911786 m!2345745))

(declare-fun m!2345747 () Bool)

(assert (=> b!1911786 m!2345747))

(assert (=> b!1911786 m!2345729))

(declare-fun m!2345749 () Bool)

(assert (=> b!1911786 m!2345749))

(assert (=> b!1911786 m!2345745))

(declare-fun m!2345751 () Bool)

(assert (=> b!1911786 m!2345751))

(assert (=> b!1911786 m!2345741))

(declare-fun m!2345753 () Bool)

(assert (=> b!1911786 m!2345753))

(assert (=> b!1911786 m!2345735))

(declare-fun m!2345755 () Bool)

(assert (=> b!1911794 m!2345755))

(declare-fun m!2345757 () Bool)

(assert (=> b!1911794 m!2345757))

(declare-fun m!2345759 () Bool)

(assert (=> b!1911797 m!2345759))

(declare-fun m!2345761 () Bool)

(assert (=> b!1911795 m!2345761))

(declare-fun m!2345763 () Bool)

(assert (=> b!1911793 m!2345763))

(declare-fun m!2345765 () Bool)

(assert (=> b!1911804 m!2345765))

(declare-fun m!2345767 () Bool)

(assert (=> b!1911804 m!2345767))

(declare-fun m!2345769 () Bool)

(assert (=> b!1911799 m!2345769))

(declare-fun m!2345771 () Bool)

(assert (=> b!1911788 m!2345771))

(declare-fun m!2345773 () Bool)

(assert (=> start!191808 m!2345773))

(check-sat (not b!1911790) (not b!1911795) (not b!1911781) (not b_next!54677) (not b_next!54673) (not b!1911783) (not start!191808) (not b!1911782) (not b!1911799) (not b_next!54675) b_and!148987 (not b!1911796) (not b!1911777) (not b_next!54683) b_and!148989 (not b!1911797) (not b!1911801) (not b!1911804) (not b!1911800) b_and!148983 (not b!1911774) (not b!1911786) (not b!1911785) b_and!148993 b_and!148991 (not b!1911788) (not b_next!54679) b_and!148985 (not b!1911778) (not b!1911775) (not b!1911794) (not b!1911780) (not b_next!54681) (not b!1911798) (not b!1911793))
(check-sat (not b_next!54683) b_and!148989 (not b_next!54677) b_and!148983 b_and!148985 (not b_next!54681) (not b_next!54673) (not b_next!54675) b_and!148987 b_and!148993 b_and!148991 (not b_next!54679))
